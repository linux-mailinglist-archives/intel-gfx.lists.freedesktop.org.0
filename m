Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73CE06D8562
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 19:57:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBF7510E25B;
	Wed,  5 Apr 2023 17:57:37 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-il1-x12f.google.com (mail-il1-x12f.google.com
 [IPv6:2607:f8b0:4864:20::12f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9A4E10E087
 for <Intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 17:57:35 +0000 (UTC)
Received: by mail-il1-x12f.google.com with SMTP id t5so7862562ilu.5
 for <Intel-gfx@lists.freedesktop.org>; Wed, 05 Apr 2023 10:57:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1680717455; x=1683309455;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=4C6EUOM3dMiYltREZIGKQdPNmg2oQ+OppDvyWFTirdg=;
 b=C8KNEWJLjyMmHk8+/AznCDUMsNuXElNnECQIz1zA5WoAYlxidlRlZwY46rsNS78HVS
 OR7U4uGKYNodSGrQ3k5dvs6nhHlcqZ7e+r7txkGDiW41xBdwAuT+M78tHzvPXSm888GB
 zFGLqfJ7tHTiQAKyMXSGx0rdlR9+rUBPKDv9M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680717455; x=1683309455;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=4C6EUOM3dMiYltREZIGKQdPNmg2oQ+OppDvyWFTirdg=;
 b=HJ1gEStVDyPEX5TB1MMfSj8+xmaJfR1fL/cuW+i6/bpu/orIejK08BhTiXkXJEdvwt
 Nb01F1Awvcwdlr2S/DXpVGYmb5atnsZXGif01LrhyPbQt8Io0fIVrsCjdu5JLW5DebcG
 /jI5woafwKs9wM/3NvOdrMo9KNK6LhrhYnuYcyfBN4kkdm1Q9zstNG1Ca6ElfxT4fA0Z
 nZFGY9N6r5dLahxy+0oNbqXwJYr0LnA5lBbIIDOjzLUXzLGoLBOBL+iuWDJfWgFIxuOZ
 ZhXKTZ4dVGIcXiOYDZVOeRuztP4uOp2zZKuqcXqcoAqOroMo+veYm/TLc3Nnl8dFh+MB
 sC5Q==
X-Gm-Message-State: AAQBX9dXk0BQ+c/N6oyJ6gqyscEVb1/cgTLVN3IJgthgHIJ0cEUF1diO
 GdeUeaGrTcA5h7Q5qg7/480Ks7aWElW8/evzxZaDgQ==
X-Google-Smtp-Source: AKy350aVxuMU4FRTVmFU0BYsAykKUbYwJhhHYPxJi11+hjO/ofFM3SjkVPUNaBwseucS0ZZCprZ9N2RkCCucWM5NLeM=
X-Received: by 2002:a05:6e02:10c4:b0:316:ff39:6bbf with SMTP id
 s4-20020a056e0210c400b00316ff396bbfmr4249975ilj.6.1680717454829; Wed, 05 Apr
 2023 10:57:34 -0700 (PDT)
MIME-Version: 1.0
References: <20230131113237.3707217-1-tvrtko.ursulin@linux.intel.com>
 <20230131113237.3707217-9-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20230131113237.3707217-9-tvrtko.ursulin@linux.intel.com>
From: Rob Clark <robdclark@chromium.org>
Date: Wed, 5 Apr 2023 10:57:23 -0700
Message-ID: <CAJs_Fx6viBKQwoRofup8z4ZBcGC6dabvLarzT8aoevBEjQe8Ew@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH i-g-t 8/8] gputop: Basic vendor agnostic GPU
 top tool
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
Cc: igt-dev@lists.freedesktop.org,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Intel-gfx@lists.freedesktop.org,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 31, 2023 at 3:33=E2=80=AFAM Tvrtko Ursulin
<tvrtko.ursulin@linux.intel.com> wrote:
>
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
> Rudimentary vendor agnostic example of how lib_igt_drm_clients can be use=
d
> to display a sorted by card and usage list of processes using GPUs.
>
> Borrows a bit of code from intel_gpu_top but for now omits the fancy
> features like interactive functionality, card selection, client
> aggregation, sort modes, JSON output  and pretty engine names. Also no
> support for global GPU or system metrics.
>
> On the other hand it shows clients from all DRM cards which
> intel_gpu_top does not do.
>
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Rob Clark <robdclark@chromium.org>
> Cc: Christian K=C3=B6nig <ckoenig.leichtzumerken@gmail.com>
> Acked-by: Christian K=C3=B6nig <christian.koenig@amd.com>

Reviewed-by: Rob Clark <robdclark@chromium.org>

> ---
>  tools/gputop.c    | 260 ++++++++++++++++++++++++++++++++++++++++++++++
>  tools/meson.build |   5 +
>  2 files changed, 265 insertions(+)
>  create mode 100644 tools/gputop.c
>
> diff --git a/tools/gputop.c b/tools/gputop.c
> new file mode 100644
> index 000000000000..d259cac1ab17
> --- /dev/null
> +++ b/tools/gputop.c
> @@ -0,0 +1,260 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2022 Intel Corporation
> + */
> +
> +#include <assert.h>
> +#include <ctype.h>
> +#include <dirent.h>
> +#include <errno.h>
> +#include <fcntl.h>
> +#include <inttypes.h>
> +#include <limits.h>
> +#include <locale.h>
> +#include <math.h>
> +#include <poll.h>
> +#include <signal.h>
> +#include <stdint.h>
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <string.h>
> +#include <sys/ioctl.h>
> +#include <sys/stat.h>
> +#include <sys/types.h>
> +#include <unistd.h>
> +#include <termios.h>
> +#include <sys/sysmacros.h>
> +#include <stdbool.h>
> +
> +#include "igt_drm_clients.h"
> +#include "igt_drm_fdinfo.h"
> +
> +static const char *bars[] =3D { " ", "=E2=96=8F", "=E2=96=8E", "=E2=96=
=8D", "=E2=96=8C", "=E2=96=8B", "=E2=96=8A", "=E2=96=89", "=E2=96=88" };
> +
> +static void n_spaces(const unsigned int n)
> +{
> +       unsigned int i;
> +
> +       for (i =3D 0; i < n; i++)
> +               putchar(' ');
> +}
> +
> +static void print_percentage_bar(double percent, int max_len)
> +{
> +       int bar_len, i, len =3D max_len - 2;
> +       const int w =3D 8;
> +
> +       assert(max_len > 0);
> +
> +       bar_len =3D ceil(w * percent * len / 100.0);
> +       if (bar_len > w * len)
> +               bar_len =3D w * len;
> +
> +       putchar('|');
> +
> +       for (i =3D bar_len; i >=3D w; i -=3D w)
> +               printf("%s", bars[w]);
> +       if (i)
> +               printf("%s", bars[i]);
> +
> +       len -=3D (bar_len + (w - 1)) / w;
> +       n_spaces(len);
> +
> +       putchar('|');
> +}
> +
> +static int
> +print_client_header(struct igt_drm_client *c, int lines, int con_w, int =
con_h,
> +                   int *engine_w)
> +{
> +       const char *pidname =3D "    PID               NAME ";
> +       int ret, len =3D strlen(pidname);
> +
> +       if (lines++ >=3D con_h || len >=3D con_w)
> +               return lines;
> +       printf("\033[7m");
> +       ret =3D printf("DRM minor %u", c->drm_minor);
> +       n_spaces(con_w - ret);
> +
> +       if (lines++ >=3D con_h)
> +               return lines;
> +       printf("\n%s", pidname);
> +
> +       if (c->engines->num_engines) {
> +               unsigned int i;
> +               int width;
> +
> +               *engine_w =3D width =3D (con_w - len) / c->engines->num_e=
ngines;
> +
> +               for (i =3D 0; i <=3D c->engines->max_engine_id; i++) {
> +                       const char *name =3D c->engines->names[i];
> +                       int name_len =3D strlen(name);
> +                       int pad =3D (width - name_len) / 2;
> +                       int spaces =3D width - pad - name_len;
> +
> +                       if (!name)
> +                               continue;
> +
> +                       if (pad < 0 || spaces < 0)
> +                               continue;
> +
> +                       n_spaces(pad);
> +                       printf("%s", name);
> +                       n_spaces(spaces);
> +                       len +=3D pad + name_len + spaces;
> +               }
> +       }
> +
> +       n_spaces(con_w - len);
> +       printf("\033[0m\n");
> +
> +       return lines;
> +}
> +
> +
> +static bool
> +newheader(const struct igt_drm_client *c, const struct igt_drm_client *p=
c)
> +{
> +       return !pc || c->drm_minor !=3D pc->drm_minor;
> +}
> +
> +static int
> +print_client(struct igt_drm_client *c, struct igt_drm_client **prevc,
> +            double t, int lines, int con_w, int con_h,
> +            unsigned int period_us, int *engine_w)
> +{
> +       unsigned int i;
> +
> +       /* Filter out idle clients. */
> +       if (!c->total_runtime || c->samples < 2)
> +               return lines;
> +
> +       /* Print header when moving to a different DRM card. */
> +       if (newheader(c, *prevc)) {
> +               lines =3D print_client_header(c, lines, con_w, con_h, eng=
ine_w);
> +               if (lines >=3D con_h)
> +                       return lines;
> +       }
> +
> +       *prevc =3D c;
> +
> +       printf("%8u %17s ", c->pid, c->print_name);
> +       lines++;
> +
> +       for (i =3D 0; c->samples > 1 && i <=3D c->engines->max_engine_id;=
 i++) {
> +               double pct;
> +
> +               if (!c->engines->capacity[i])
> +                       continue;
> +
> +               pct =3D (double)c->val[i] / period_us / 1e3 * 100 /
> +                     c->engines->capacity[i];
> +
> +               /*
> +                * Guard against fluctuations between our scanning period=
 and
> +                * GPU times as exported by the kernel in fdinfo.
> +                */
> +               if (pct > 100.0)
> +                       pct =3D 100.0;
> +
> +               print_percentage_bar(pct, *engine_w);
> +       }
> +
> +       putchar('\n');
> +
> +       return lines;
> +}
> +
> +static int
> +__client_id_cmp(const struct igt_drm_client *a,
> +               const struct igt_drm_client *b)
> +{
> +       if (a->id > b->id)
> +               return 1;
> +       else if (a->id < b->id)
> +               return -1;
> +       else
> +               return 0;
> +}
> +
> +static int client_cmp(const void *_a, const void *_b, void *unused)
> +{
> +       const struct igt_drm_client *a =3D _a;
> +       const struct igt_drm_client *b =3D _b;
> +       long val_a, val_b;
> +
> +       /* DRM cards into consecutive buckets first. */
> +       val_a =3D a->drm_minor;
> +       val_b =3D b->drm_minor;
> +       if (val_a > val_b)
> +               return 1;
> +       else if (val_b > val_a)
> +               return -1;
> +
> +       /*
> +        * Within buckets sort by last sampling period aggregated runtime=
, with
> +        * client id as a tie-breaker.
> +        */
> +       val_a =3D a->last_runtime;
> +       val_b =3D b->last_runtime;
> +       if (val_a =3D=3D val_b)
> +               return __client_id_cmp(a, b);
> +       else if (val_b > val_a)
> +               return 1;
> +       else
> +               return -1;
> +
> +}
> +
> +int main(int argc, char **argv)
> +{
> +       unsigned int period_us =3D 2e6;
> +       struct igt_drm_clients *clients =3D NULL;
> +       int con_w =3D -1, con_h =3D -1;
> +
> +       clients =3D igt_drm_clients_init(NULL);
> +       if (!clients)
> +               exit(1);
> +
> +       igt_drm_clients_scan(clients, NULL, NULL, 0);
> +
> +       for (;;) {
> +               struct igt_drm_client *c, *prevc =3D NULL;
> +               int i, engine_w =3D 0, lines =3D 0;
> +               struct winsize ws;
> +
> +               if (ioctl(0, TIOCGWINSZ, &ws) !=3D -1) {
> +                       con_w =3D ws.ws_col;
> +                       con_h =3D ws.ws_row;
> +                       if (con_w =3D=3D 0 && con_h =3D=3D 0) {
> +                               /* Serial console. */
> +                               con_w =3D 80;
> +                               con_h =3D 24;
> +                       }
> +               }
> +
> +               igt_drm_clients_scan(clients, NULL, NULL, 0);
> +               igt_drm_clients_sort(clients, client_cmp);
> +
> +               printf("\033[H\033[J");
> +
> +               igt_for_each_drm_client(clients, c, i) {
> +                       assert(c->status !=3D IGT_DRM_CLIENT_PROBE);
> +                       if (c->status !=3D IGT_DRM_CLIENT_ALIVE)
> +                               break; /* Active clients are first in the=
 array. */
> +
> +                       lines =3D print_client(c, &prevc, (double)period_=
us / 1e6,
> +                                            lines, con_w, con_h, period_=
us,
> +                                            &engine_w);
> +                       if (lines >=3D con_h)
> +                               break;
> +               }
> +
> +               if (lines++ < con_h)
> +                       printf("\n");
> +
> +               usleep(period_us);
> +       }
> +
> +       return 0;
> +}
> diff --git a/tools/meson.build b/tools/meson.build
> index c6194fd15daa..0a3973dee90d 100644
> --- a/tools/meson.build
> +++ b/tools/meson.build
> @@ -65,6 +65,11 @@ if libudev.found()
>                    install : true)
>  endif
>
> +executable('gputop', 'gputop.c',
> +           install : true,
> +           install_rpath : bindir_rpathdir,
> +           dependencies : [lib_igt_drm_clients,lib_igt_drm_fdinfo,math])
> +
>  intel_l3_parity_src =3D [ 'intel_l3_parity.c', 'intel_l3_udev_listener.c=
' ]
>  executable('intel_l3_parity', sources : intel_l3_parity_src,
>            dependencies : tool_deps,
> --
> 2.34.1
>
