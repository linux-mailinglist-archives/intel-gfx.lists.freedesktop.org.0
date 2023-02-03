Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 434FA689F80
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 17:42:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF0AC10E206;
	Fri,  3 Feb 2023 16:42:31 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68A5610E206;
 Fri,  3 Feb 2023 16:42:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675442550; x=1706978550;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=bIjxM8C5prfSqLggyFpPn9pgULyoZWw1aupgcq6v2yA=;
 b=buzfog5R1j45O7g3q8qJZTKG4ib95T8XjGvZHbRyZ/K3UZGyJEp4luXB
 kaECvZ1ULYOpDWmhpOmbKZVv773vg1HspKjHQ1wLckZDvt7rSPIdbSsNa
 OCMCWX9TxNetBSi2fVn5u0Ii0FgoLrA9UvYQCGFxPQ98leJjYdE6adyHP
 Yx7MupZgnhyj+8qt98Nh9EEwaV7i190aF/SAps0Yr0jdvcKVgi8TDH6Zw
 gNJuZ6y+8SZaqJlvEWFEFsGP6JU+Ija3RA2aQb8ZOgZicJGv2Cqct93fq
 vlmBiBHJUKomkDXAnQpZbroDVDRKSfUyiUDRrK3JkLf2YloDepqzEsssN w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10610"; a="393380684"
X-IronPort-AV: E=Sophos;i="5.97,271,1669104000"; d="scan'208";a="393380684"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 08:42:28 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10610"; a="911215339"
X-IronPort-AV: E=Sophos;i="5.97,271,1669104000"; d="scan'208";a="911215339"
Received: from khaidaro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.35.126])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 08:42:26 -0800
Date: Fri, 3 Feb 2023 17:42:24 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20230203164224.6y3qx4yztt7hd5cu@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Rob Clark <robdclark@chromium.org>,
 Christian =?utf-8?B?S8O2bmln?= <ckoenig.leichtzumerken@gmail.com>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
References: <20230131113237.3707217-1-tvrtko.ursulin@linux.intel.com>
 <20230131113237.3707217-9-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230131113237.3707217-9-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 8/8] gputop: Basic vendor
 agnostic GPU top tool
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
Cc: Rob Clark <robdclark@chromium.org>,
 Christian =?utf-8?B?S8O2bmln?= <ckoenig.leichtzumerken@gmail.com>,
 Intel-gfx@lists.freedesktop.org,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tvrtko,

On 2023-01-31 at 11:32:37 +0000, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Rudimentary vendor agnostic example of how lib_igt_drm_clients can be used
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
> Cc: Christian König <ckoenig.leichtzumerken@gmail.com>
> Acked-by: Christian König <christian.koenig@amd.com>

I run it with:
# ./gputop

but it do not work on my Skylake card, I see no output,
kernel 5.19.0-29-generic, ubuntu 22.10

# ./lsgpu
card0                    Intel Skylake (Gen9)              drm:/dev/dri/card0
└─renderD128                                               drm:/dev/dri/renderD128

Please add some options like debug, version, debug with high
verbose level, help. It seems like q or Q do not exit.

Regards,
Kamil

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
> + * Copyright © 2022 Intel Corporation
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
> +static const char *bars[] = { " ", "▏", "▎", "▍", "▌", "▋", "▊", "▉", "█" };
> +
> +static void n_spaces(const unsigned int n)
> +{
> +	unsigned int i;
> +
> +	for (i = 0; i < n; i++)
> +		putchar(' ');
> +}
> +
> +static void print_percentage_bar(double percent, int max_len)
> +{
> +	int bar_len, i, len = max_len - 2;
> +	const int w = 8;
> +
> +	assert(max_len > 0);
> +
> +	bar_len = ceil(w * percent * len / 100.0);
> +	if (bar_len > w * len)
> +		bar_len = w * len;
> +
> +	putchar('|');
> +
> +	for (i = bar_len; i >= w; i -= w)
> +		printf("%s", bars[w]);
> +	if (i)
> +		printf("%s", bars[i]);
> +
> +	len -= (bar_len + (w - 1)) / w;
> +	n_spaces(len);
> +
> +	putchar('|');
> +}
> +
> +static int
> +print_client_header(struct igt_drm_client *c, int lines, int con_w, int con_h,
> +		    int *engine_w)
> +{
> +	const char *pidname = "    PID               NAME ";
> +	int ret, len = strlen(pidname);
> +
> +	if (lines++ >= con_h || len >= con_w)
> +		return lines;
> +	printf("\033[7m");
> +	ret = printf("DRM minor %u", c->drm_minor);
> +	n_spaces(con_w - ret);
> +
> +	if (lines++ >= con_h)
> +		return lines;
> +	printf("\n%s", pidname);
> +
> +	if (c->engines->num_engines) {
> +		unsigned int i;
> +		int width;
> +
> +		*engine_w = width = (con_w - len) / c->engines->num_engines;
> +
> +		for (i = 0; i <= c->engines->max_engine_id; i++) {
> +			const char *name = c->engines->names[i];
> +			int name_len = strlen(name);
> +			int pad = (width - name_len) / 2;
> +			int spaces = width - pad - name_len;
> +
> +			if (!name)
> +				continue;
> +
> +			if (pad < 0 || spaces < 0)
> +				continue;
> +
> +			n_spaces(pad);
> +			printf("%s", name);
> +			n_spaces(spaces);
> +			len += pad + name_len + spaces;
> +		}
> +	}
> +
> +	n_spaces(con_w - len);
> +	printf("\033[0m\n");
> +
> +	return lines;
> +}
> +
> +
> +static bool
> +newheader(const struct igt_drm_client *c, const struct igt_drm_client *pc)
> +{
> +	return !pc || c->drm_minor != pc->drm_minor;
> +}
> +
> +static int
> +print_client(struct igt_drm_client *c, struct igt_drm_client **prevc,
> +	     double t, int lines, int con_w, int con_h,
> +	     unsigned int period_us, int *engine_w)
> +{
> +	unsigned int i;
> +
> +	/* Filter out idle clients. */
> +	if (!c->total_runtime || c->samples < 2)
> +		return lines;
> +
> +	/* Print header when moving to a different DRM card. */
> +	if (newheader(c, *prevc)) {
> +		lines = print_client_header(c, lines, con_w, con_h, engine_w);
> +		if (lines >= con_h)
> +			return lines;
> +	}
> +
> +	*prevc = c;
> +
> +	printf("%8u %17s ", c->pid, c->print_name);
> +	lines++;
> +
> +	for (i = 0; c->samples > 1 && i <= c->engines->max_engine_id; i++) {
> +		double pct;
> +
> +		if (!c->engines->capacity[i])
> +			continue;
> +
> +		pct = (double)c->val[i] / period_us / 1e3 * 100 /
> +		      c->engines->capacity[i];
> +
> +		/*
> +		 * Guard against fluctuations between our scanning period and
> +		 * GPU times as exported by the kernel in fdinfo.
> +		 */
> +		if (pct > 100.0)
> +			pct = 100.0;
> +
> +		print_percentage_bar(pct, *engine_w);
> +	}
> +
> +	putchar('\n');
> +
> +	return lines;
> +}
> +
> +static int
> +__client_id_cmp(const struct igt_drm_client *a,
> +		const struct igt_drm_client *b)
> +{
> +	if (a->id > b->id)
> +		return 1;
> +	else if (a->id < b->id)
> +		return -1;
> +	else
> +		return 0;
> +}
> +
> +static int client_cmp(const void *_a, const void *_b, void *unused)
> +{
> +	const struct igt_drm_client *a = _a;
> +	const struct igt_drm_client *b = _b;
> +	long val_a, val_b;
> +
> +	/* DRM cards into consecutive buckets first. */
> +	val_a = a->drm_minor;
> +	val_b = b->drm_minor;
> +	if (val_a > val_b)
> +		return 1;
> +	else if (val_b > val_a)
> +		return -1;
> +
> +	/*
> +	 * Within buckets sort by last sampling period aggregated runtime, with
> +	 * client id as a tie-breaker.
> +	 */
> +	val_a = a->last_runtime;
> +	val_b = b->last_runtime;
> +	if (val_a == val_b)
> +		return __client_id_cmp(a, b);
> +	else if (val_b > val_a)
> +		return 1;
> +	else
> +		return -1;
> +
> +}
> +
> +int main(int argc, char **argv)
> +{
> +	unsigned int period_us = 2e6;
> +	struct igt_drm_clients *clients = NULL;
> +	int con_w = -1, con_h = -1;
> +
> +	clients = igt_drm_clients_init(NULL);
> +	if (!clients)
> +		exit(1);
> +
> +	igt_drm_clients_scan(clients, NULL, NULL, 0);
> +
> +	for (;;) {
> +		struct igt_drm_client *c, *prevc = NULL;
> +		int i, engine_w = 0, lines = 0;
> +		struct winsize ws;
> +
> +		if (ioctl(0, TIOCGWINSZ, &ws) != -1) {
> +			con_w = ws.ws_col;
> +			con_h = ws.ws_row;
> +			if (con_w == 0 && con_h == 0) {
> +				/* Serial console. */
> +				con_w = 80;
> +				con_h = 24;
> +			}
> +		}
> +
> +		igt_drm_clients_scan(clients, NULL, NULL, 0);
> +		igt_drm_clients_sort(clients, client_cmp);
> +
> +		printf("\033[H\033[J");
> +
> +		igt_for_each_drm_client(clients, c, i) {
> +			assert(c->status != IGT_DRM_CLIENT_PROBE);
> +			if (c->status != IGT_DRM_CLIENT_ALIVE)
> +				break; /* Active clients are first in the array. */
> +
> +			lines = print_client(c, &prevc, (double)period_us / 1e6,
> +					     lines, con_w, con_h, period_us,
> +					     &engine_w);
> +			if (lines >= con_h)
> +				break;
> +		}
> +
> +		if (lines++ < con_h)
> +			printf("\n");
> +
> +		usleep(period_us);
> +	}
> +
> +	return 0;
> +}
> diff --git a/tools/meson.build b/tools/meson.build
> index c6194fd15daa..0a3973dee90d 100644
> --- a/tools/meson.build
> +++ b/tools/meson.build
> @@ -65,6 +65,11 @@ if libudev.found()
>  		   install : true)
>  endif
>  
> +executable('gputop', 'gputop.c',
> +           install : true,
> +           install_rpath : bindir_rpathdir,
> +           dependencies : [lib_igt_drm_clients,lib_igt_drm_fdinfo,math])
> +
>  intel_l3_parity_src = [ 'intel_l3_parity.c', 'intel_l3_udev_listener.c' ]
>  executable('intel_l3_parity', sources : intel_l3_parity_src,
>  	   dependencies : tool_deps,
> -- 
> 2.34.1
> 
