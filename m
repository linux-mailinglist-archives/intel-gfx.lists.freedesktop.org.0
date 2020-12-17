Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9986B2DCF96
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Dec 2020 11:38:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB6AE6E28B;
	Thu, 17 Dec 2020 10:38:30 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 751E06E25B;
 Thu, 17 Dec 2020 10:38:26 +0000 (UTC)
IronPort-SDR: b5WCNryenhTbFaHHMGLetRGh0S88JAn3GMpxTDuQQrcg1ZNXERDdHOMgt4E1yYOI5x8bz8kDCP
 nKLFESzDsJyg==
X-IronPort-AV: E=McAfee;i="6000,8403,9837"; a="171725563"
X-IronPort-AV: E=Sophos;i="5.78,426,1599548400"; d="scan'208";a="171725563"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2020 02:38:26 -0800
IronPort-SDR: i5Msx/fy1+lm7BmPfxOvRVUMdJ0Zprn+8r77C2huB6iArN3rdRakIneZPh1Oyc+OJRN5hwPUA4
 Va06jHLCHANQ==
X-IronPort-AV: E=Sophos;i="5.78,426,1599548400"; d="scan'208";a="339243373"
Received: from acherneg-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.214.210.48])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2020 02:38:24 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 17 Dec 2020 10:38:11 +0000
Message-Id: <20201217103812.1174024-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201217103812.1174024-1-tvrtko.ursulin@linux.intel.com>
References: <20201217103812.1174024-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/3] intel_gpu_top: Aggregate engine
 busyness per class
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Similarly to how top(1) handles SMP, we can default to showing engines of
a same class as a single bar graph entry.

To achieve this a little bit of hackery is employed. PMU sampling is left
as is and only at the presentation layer we create a fake set of engines,
one for each class, summing and normalizing the load respectively.

v2:
 * Fix building the aggregated engines.
 * Tidy static variable handling.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 man/intel_gpu_top.rst |   1 +
 tools/intel_gpu_top.c | 209 +++++++++++++++++++++++++++++++++++++++---
 2 files changed, 197 insertions(+), 13 deletions(-)

diff --git a/man/intel_gpu_top.rst b/man/intel_gpu_top.rst
index 2e0c3a05acc1..35ab10da9bb4 100644
--- a/man/intel_gpu_top.rst
+++ b/man/intel_gpu_top.rst
@@ -54,6 +54,7 @@ RUNTIME CONTROL
 Supported keys:
 
     'q'    Exit from the tool.
+    '1'    Toggle between aggregated engine class and physical engine mode.
 
 DEVICE SELECTION
 ================
diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 46221c9543eb..d1149eb8e14d 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -76,8 +76,16 @@ struct engine {
 	struct pmu_counter sema;
 };
 
+struct engine_class {
+	unsigned int class;
+	const char *name;
+	unsigned int num_engines;
+};
+
 struct engines {
 	unsigned int num_engines;
+	unsigned int num_classes;
+	struct engine_class *class;
 	unsigned int num_counters;
 	DIR *root;
 	int fd;
@@ -1118,6 +1126,8 @@ print_imc(struct engines *engines, double t, int lines, int con_w, int con_h)
 	return lines;
 }
 
+static bool class_view;
+
 static int
 print_engines_header(struct engines *engines, double t,
 		     int lines, int con_w, int con_h)
@@ -1133,8 +1143,13 @@ print_engines_header(struct engines *engines, double t,
 		pops->open_struct("engines");
 
 		if (output_mode == INTERACTIVE) {
-			const char *a = "          ENGINE      BUSY ";
 			const char *b = " MI_SEMA MI_WAIT";
+			const char *a;
+
+			if (class_view)
+				a = "         ENGINES     BUSY  ";
+			else
+				a = "          ENGINE     BUSY  ";
 
 			printf("\033[7m%s%*s%s\033[0m\n",
 			       a, (int)(con_w - 1 - strlen(a) - strlen(b)),
@@ -1214,6 +1229,181 @@ print_engines_footer(struct engines *engines, double t,
 	return lines;
 }
 
+static int class_cmp(const void *_a, const void *_b)
+{
+	const struct engine_class *a = _a;
+	const struct engine_class *b = _b;
+
+	return a->class - b->class;
+}
+
+static void init_engine_classes(struct engines *engines)
+{
+	struct engine_class *classes;
+	unsigned int i, num;
+	int max = -1;
+
+	for (i = 0; i < engines->num_engines; i++) {
+		struct engine *engine = engine_ptr(engines, i);
+
+		if ((int)engine->class > max)
+			max = engine->class;
+	}
+	assert(max >= 0);
+
+	num = max + 1;
+
+	classes = calloc(num, sizeof(*classes));
+	assert(classes);
+
+	for (i = 0; i < engines->num_engines; i++) {
+		struct engine *engine = engine_ptr(engines, i);
+
+		classes[engine->class].num_engines++;
+	}
+
+	for (i = 0; i < num; i++) {
+		classes[i].class = i;
+		classes[i].name = class_display_name(i);
+	}
+
+	qsort(classes, num, sizeof(*classes), class_cmp);
+
+	engines->num_classes = num;
+	engines->class = classes;
+}
+
+static void __pmu_sum(struct pmu_pair *dst, struct pmu_pair *src)
+{
+	dst->prev += src->prev;
+	dst->cur += src->cur;
+}
+
+static void __pmu_normalize(struct pmu_pair *val, unsigned int n)
+{
+	val->prev /= n;
+	val->cur /= n;
+}
+
+static struct engines *init_class_engines(struct engines *engines)
+{
+	unsigned int num_present;
+	struct engines *classes;
+	unsigned int i, j, k;
+
+	init_engine_classes(engines);
+
+	num_present = 0; /* Classes with engines. */
+	for (i = 0; i < engines->num_classes; i++) {
+		if (engines->class[i].num_engines)
+			num_present++;
+	}
+
+	classes = calloc(1, sizeof(struct engines) +
+			    num_present * sizeof(struct engine));
+	assert(classes);
+
+	classes->num_engines = num_present;
+	classes->num_classes = engines->num_classes;
+	classes->class = engines->class;
+
+	j = 0;
+	for (i = 0; i < engines->num_classes; i++) {
+		struct engine *engine = engine_ptr(classes, j);
+
+		/* Skip classes with no engines. */
+		if (!engines->class[i].num_engines)
+			continue;
+
+		assert(j < num_present);
+
+		engine->class = i;
+		engine->instance = -1;
+
+		engine->display_name = strdup(class_display_name(i));
+		assert(engine->display_name);
+		engine->short_name = strdup(class_short_name(i));
+		assert(engine->short_name);
+
+		/*
+		 * Copy over pmu metadata from one real engine of the same
+		 * class.
+		 */
+		for (k = 0; k < engines->num_engines; k++) {
+			struct engine *e = engine_ptr(engines, k);
+
+			if (e->class == i) {
+				engine->num_counters = e->num_counters;
+				engine->busy = e->busy;
+				engine->sema = e->sema;
+				engine->wait = e->wait;
+				break;
+			}
+		}
+
+		j++; /* Next "class engine" to populate. */
+	}
+
+	return classes;
+}
+
+static struct engines *update_class_engines(struct engines *engines)
+{
+	static struct engines *classes;
+	unsigned int i, j;
+
+	if (!classes)
+		classes = init_class_engines(engines);
+
+	for (i = 0; i < classes->num_engines; i++) {
+		struct engine *engine = engine_ptr(classes, i);
+		unsigned int num_engines =
+			classes->class[engine->class].num_engines;
+
+		assert(num_engines);
+
+		memset(&engine->busy.val, 0, sizeof(engine->busy.val));
+		memset(&engine->sema.val, 0, sizeof(engine->sema.val));
+		memset(&engine->wait.val, 0, sizeof(engine->wait.val));
+
+		for (j = 0; j < engines->num_engines; j++) {
+			struct engine *e = engine_ptr(engines, j);
+
+			if (e->class == engine->class) {
+				__pmu_sum(&engine->busy.val, &e->busy.val);
+				__pmu_sum(&engine->sema.val, &e->sema.val);
+				__pmu_sum(&engine->wait.val, &e->wait.val);
+			}
+		}
+
+		__pmu_normalize(&engine->busy.val, num_engines);
+		__pmu_normalize(&engine->sema.val, num_engines);
+		__pmu_normalize(&engine->wait.val, num_engines);
+	}
+
+	return classes;
+}
+
+static int
+print_engines(struct engines *engines, double t, int lines, int w, int h)
+{
+	struct engines *show;
+
+	if (class_view)
+		show = update_class_engines(engines);
+	else
+		show = engines;
+
+	lines = print_engines_header(show, t, lines, w,  h);
+
+	for (unsigned int i = 0; i < show->num_engines && lines < h; i++)
+		lines = print_engine(show, i, t, lines, w, h);
+
+	lines = print_engines_footer(show, t, lines, w, h);
+
+	return lines;
+}
+
 static bool stop_top;
 
 static void sigint_handler(int  sig)
@@ -1292,6 +1482,9 @@ static void process_stdin(unsigned int timeout_us)
 		case 'q':
 			stop_top = true;
 			break;
+		case '1':
+			class_view ^= true;
+			break;
 		};
 	}
 }
@@ -1302,7 +1495,6 @@ int main(int argc, char **argv)
 	int con_w = -1, con_h = -1;
 	char *output_path = NULL;
 	struct engines *engines;
-	unsigned int i;
 	int ret = 0, ch;
 	bool list_device = false;
 	char *pmu_device, *opt_device = NULL;
@@ -1366,6 +1558,7 @@ int main(int argc, char **argv)
 	case INTERACTIVE:
 		pops = &term_pops;
 		interactive_stdin();
+		class_view = true;
 		break;
 	case STDOUT:
 		pops = &stdout_pops;
@@ -1462,17 +1655,7 @@ int main(int argc, char **argv)
 
 			lines = print_imc(engines, t, lines, con_w, con_h);
 
-			lines = print_engines_header(engines, t, lines, con_w,
-						     con_h);
-
-			for (i = 0;
-			     i < engines->num_engines && lines < con_h;
-			     i++)
-				lines = print_engine(engines, i, t, lines,
-						     con_w, con_h);
-
-			lines = print_engines_footer(engines, t, lines, con_w,
-						     con_h);
+			lines = print_engines(engines, t, lines, con_w, con_h);
 		}
 
 		if (stop_top)
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
