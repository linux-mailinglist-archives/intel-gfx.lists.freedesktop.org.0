Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9783E2DC36F
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Dec 2020 16:52:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F9A76E1D2;
	Wed, 16 Dec 2020 15:52:05 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 872736E1D2;
 Wed, 16 Dec 2020 15:52:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23345776-1500050 for multiple; Wed, 16 Dec 2020 15:51:58 +0000
MIME-Version: 1.0
In-Reply-To: <20201216152809.706094-2-tvrtko.ursulin@linux.intel.com>
References: <20201216152809.706094-1-tvrtko.ursulin@linux.intel.com>
 <20201216152809.706094-2-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
Date: Wed, 16 Dec 2020 15:51:59 +0000
Message-ID: <160813391912.9127.16376546917210365956@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 2/2] intel_gpu_top:
 Aggregate engine busyness per class
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-12-16 15:28:09)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Similarly to how top(1) handles SMP, we can default to showing engines of
> a same class as a single bar graph entry.
> 
> To achieve this a little bit of hackery is employed. PMU sampling is left
> as is and only at the presentation layer we create a fake set of engines,
> one for each class, summing and normalizing the load respectively.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  man/intel_gpu_top.rst |   1 +
>  tools/intel_gpu_top.c | 192 +++++++++++++++++++++++++++++++++++++++---
>  2 files changed, 180 insertions(+), 13 deletions(-)
> 
> diff --git a/man/intel_gpu_top.rst b/man/intel_gpu_top.rst
> index 2e0c3a05acc1..35ab10da9bb4 100644
> --- a/man/intel_gpu_top.rst
> +++ b/man/intel_gpu_top.rst
> @@ -54,6 +54,7 @@ RUNTIME CONTROL
>  Supported keys:
>  
>      'q'    Exit from the tool.
> +    '1'    Toggle between aggregated engine class and physical engine mode.
>  
>  DEVICE SELECTION
>  ================
> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> index 68911940f1d0..8c4280aa19b9 100644
> --- a/tools/intel_gpu_top.c
> +++ b/tools/intel_gpu_top.c
> @@ -76,8 +76,16 @@ struct engine {
>         struct pmu_counter sema;
>  };
>  
> +struct engine_class {
> +       unsigned int class;
> +       const char *name;
> +       unsigned int num_engines;
> +};
> +
>  struct engines {
>         unsigned int num_engines;
> +       unsigned int num_classes;
> +       struct engine_class *class;
>         unsigned int num_counters;
>         DIR *root;
>         int fd;
> @@ -1118,6 +1126,8 @@ print_imc(struct engines *engines, double t, int lines, int con_w, int con_h)
>         return lines;
>  }
>  
> +static bool class_view;
> +
>  static int
>  print_engines_header(struct engines *engines, double t,
>                      int lines, int con_w, int con_h)
> @@ -1133,8 +1143,13 @@ print_engines_header(struct engines *engines, double t,
>                 pops->open_struct("engines");
>  
>                 if (output_mode == INTERACTIVE) {
> -                       const char *a = "          ENGINE      BUSY ";
>                         const char *b = " MI_SEMA MI_WAIT";
> +                       const char *a;
> +
> +                       if (class_view)
> +                               a = "         ENGINES     BUSY  ";
> +                       else
> +                               a = "          ENGINE     BUSY  ";
>  
>                         printf("\033[7m%s%*s%s\033[0m\n",
>                                a, (int)(con_w - 1 - strlen(a) - strlen(b)),
> @@ -1214,6 +1229,164 @@ print_engines_footer(struct engines *engines, double t,
>         return lines;
>  }
>  
> +static int class_cmp(const void *_a, const void *_b)
> +{
> +       const struct engine_class *a = _a;
> +       const struct engine_class *b = _b;
> +
> +       return a->class - b->class;
> +}
> +
> +static void init_engine_classes(struct engines *engines)
> +{
> +       struct engine_class *classes;
> +       unsigned int i, num;
> +       int max = -1;
> +
> +       for (i = 0; i < engines->num_engines; i++) {
> +               struct engine *engine = engine_ptr(engines, i);
> +
> +               if ((int)engine->class > max)
> +                       max = engine->class;
> +       }
> +       assert(max >= 0);
> +
> +       num = max + 1;
> +
> +       classes = calloc(num, sizeof(*classes));
> +       assert(classes);
> +
> +       for (i = 0; i < engines->num_engines; i++) {
> +               struct engine *engine = engine_ptr(engines, i);
> +
> +               classes[engine->class].num_engines++;
> +       }
> +
> +       for (i = 0; i < num; i++) {
> +               classes[i].class = i;
> +               classes[i].name = class_display_name(i);
> +       }

Do you want to remove empty classes at this point?

> +
> +       qsort(classes, num, sizeof(*classes), class_cmp);
> +
> +       engines->num_classes = num;
> +       engines->class = classes;
> +}
> +
> +static void __pmu_sum(struct pmu_pair *dst, struct pmu_pair *src)
> +{
> +       dst->prev += src->prev;
> +       dst->cur += src->cur;
> +}
> +
> +static void __pmu_normalize(struct pmu_pair *val, unsigned int n)
> +{
> +       val->prev /= n;
> +       val->cur /= n;

I was expecting just the delta to be normalized. This works as well.

> +}
> +
> +static struct engines *init_classes(struct engines *engines)
> +{
> +       struct engines *classes;
> +       unsigned int i, j;
> +
> +       init_engine_classes(engines);
> +
> +       classes = calloc(1, sizeof(struct engines) +
> +                           engines->num_classes * sizeof(struct engine));
> +       assert(classes);
> +
> +       classes->num_engines = engines->num_classes;
> +       classes->num_classes = engines->num_classes;
> +       classes->class = engines->class;
> +
> +       for (i = 0; i < engines->num_classes; i++) {
> +               struct engine *engine = engine_ptr(classes, i);
> +
> +               engine->class = i;
> +               engine->instance = -1;
> +
> +               if (!engines->class[i].num_engines)
> +                       continue;
> +
> +               engine->display_name = strdup(class_display_name(i));
> +               assert(engine->display_name);
> +               engine->short_name = strdup(class_short_name(i));
> +               assert(engine->short_name);
> +
> +               for (j = 0; j < engines->num_engines; j++) {
> +                       struct engine *e = engine_ptr(engines, j);
> +
> +                       if (e->class == i) {
> +                               engine->num_counters = e->num_counters;
> +                               engine->busy = e->busy;
> +                               engine->sema = e->sema;
> +                               engine->wait = e->wait;
> +                       }
> +               }
> +       }
> +
> +       return classes;
> +}
> +
> +static struct engines *
> +update_classes(struct engines *classes, struct engines *engines)
> +{
> +       unsigned int i, j;
> +
> +       if (!classes)
> +               classes = init_classes(engines);
> +
> +       for (i = 0; i < classes->num_engines; i++) {
> +               unsigned int num_engines = classes->class[i].num_engines;
> +               struct engine *engine = engine_ptr(classes, i);
> +
> +               if (!num_engines)
> +                       continue;
> +
> +               memset(&engine->busy.val, 0, sizeof(engine->busy.val));
> +               memset(&engine->sema.val, 0, sizeof(engine->sema.val));
> +               memset(&engine->wait.val, 0, sizeof(engine->wait.val));
> +
> +               for (j = 0; j < engines->num_engines; j++) {
> +                       struct engine *e = engine_ptr(engines, j);
> +
> +                       if (e->class == i) {
> +                               __pmu_sum(&engine->busy.val, &e->busy.val);
> +                               __pmu_sum(&engine->sema.val, &e->sema.val);
> +                               __pmu_sum(&engine->wait.val, &e->wait.val);
> +                       }
> +               }
> +
> +               __pmu_normalize(&engine->busy.val, num_engines);
> +               __pmu_normalize(&engine->sema.val, num_engines);
> +               __pmu_normalize(&engine->wait.val, num_engines);

Ok. So you wrap the normal engines with class_view, where each engine in
that class_view is an average of all engines within it.

> +       }
> +
> +       return classes;
> +}
> +
> +static int
> +print_engines(struct engines *engines, double t, int lines, int w, int h)
> +{
> +       static struct engines *classes;
> +       struct engines *show;
> +
> +       if (class_view)
> +               classes = show = update_classes(classes, engines);

Something is not right here. Oh static, nvm.

> +       else
> +               show = engines;
> +
> +       lines = print_engines_header(show, t, lines, w,  h);
> +
> +       for (unsigned int i = 0; i < show->num_engines && lines < h; i++)
> +               lines = print_engine(show, i, t, lines, w, h);
> +
> +       lines = print_engines_footer(show, t, lines, w, h);
> +
> +       return lines;
> +}
> +
>  static bool stop_top;
>  
>  static void sigint_handler(int  sig)
> @@ -1292,6 +1465,9 @@ static void process_stdin(unsigned int timeout_us)
>                 case 'q':
>                         stop_top = true;
>                         break;
> +               case '1':
> +                       class_view ^= true;
> +                       break;
>                 };
>         }
>  }
> @@ -1302,7 +1478,6 @@ int main(int argc, char **argv)
>         int con_w = -1, con_h = -1;
>         char *output_path = NULL;
>         struct engines *engines;
> -       unsigned int i;
>         int ret = 0, ch;
>         bool list_device = false;
>         char *pmu_device, *opt_device = NULL;
> @@ -1366,6 +1541,7 @@ int main(int argc, char **argv)
>         case INTERACTIVE:
>                 pops = &term_pops;
>                 interactive_stdin();
> +               class_view = true;
>                 break;
>         case STDOUT:
>                 pops = &stdout_pops;
> @@ -1462,17 +1638,7 @@ int main(int argc, char **argv)
>  
>                         lines = print_imc(engines, t, lines, con_w, con_h);
>  
> -                       lines = print_engines_header(engines, t, lines, con_w,
> -                                                    con_h);
> -
> -                       for (i = 0;
> -                            i < engines->num_engines && lines < con_h;
> -                            i++)
> -                               lines = print_engine(engines, i, t, lines,
> -                                                    con_w, con_h);
> -
> -                       lines = print_engines_footer(engines, t, lines, con_w,
> -                                                    con_h);
> +                       lines = print_engines(engines, t, lines, con_w, con_h);
>                 }
>  
>                 if (stop_top)
> -- 
> 2.25.1
> 
> _______________________________________________
> igt-dev mailing list
> igt-dev@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/igt-dev
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
