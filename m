Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A14763DB1
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jul 2023 19:32:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E46510E063;
	Wed, 26 Jul 2023 17:32:29 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A60C910E045;
 Wed, 26 Jul 2023 17:32:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690392747; x=1721928747;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=uVXQV2YAUzG/oZtgPiMvongcOR68GFX+Mb7VKLf9TeY=;
 b=cSSFy26nCkyg6p0UblCONM6Q2q1SWtjy36uznuGr4s1bSQ7/cOdBnGEY
 mSFQ7Ac/f02wOgB5pcHYqFrr/ocr0Y359QYatEcoMAxaNqrDMuhtfTUBu
 v7p1TJxEJnOcuLMkgB85DT/JE5zuITShsTLhM0nHkErfd08XSKMVnTv9+
 56f1XKJcdZthscnWqWEkXO5jLWxojMJcgS+5D5qlk6nYg/2e+O4fb+HVH
 3mtwj/p8KgbrpO4/TOgTqYm00JgA8Ms4gMfVb08RmK0LkCUeH62Ms6YAk
 LF4wDpAbqw5nXa8RVI1kK77glN/ZilugrzxIm3RDCW2DjbFhjPmtax4H/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="434352526"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="434352526"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 10:32:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="816768610"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="816768610"
Received: from amuszyns-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.213.13.179])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 10:32:07 -0700
Date: Wed, 26 Jul 2023 19:32:05 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20230726173205.qzfle72ipv35bkae@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>
References: <20230705163105.3804677-1-tvrtko.ursulin@linux.intel.com>
 <20230705163105.3804677-4-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230705163105.3804677-4-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 3/3] gputop: Add memory information
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
Cc: Rob Clark <robdclark@chromium.org>, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tvrtko,

On 2023-07-05 at 17:31:05 +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Show total and resident memory usage for clients which support it.
> 
> For simplicity all memory regions are summed up and shown under a single
> heading.
> 
> Co-developed-by: Rob Clark <robdclark@chromium.org>
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  tools/gputop.c | 34 +++++++++++++++++++++++++++++++++-
>  1 file changed, 33 insertions(+), 1 deletion(-)
> 
> diff --git a/tools/gputop.c b/tools/gputop.c
> index 681f0a6bb748..b5b360cbb063 100644
> --- a/tools/gputop.c
> +++ b/tools/gputop.c
> @@ -28,6 +28,7 @@
>  
>  #include "igt_drm_clients.h"
>  #include "igt_drm_fdinfo.h"
> +#include "drmtest.h"
>  
>  static const char *bars[] = { " ", "▏", "▎", "▍", "▌", "▋", "▊", "▉", "█" };
>  
> @@ -80,7 +81,11 @@ print_client_header(struct igt_drm_client *c, int lines, int con_w, int con_h,
>  		return lines;
>  
>  	putchar('\n');
> -	len = printf("%*s ", c->clients->max_pid_len, "PID");
> +	if (c->regions->num_regions)
> +		len = printf("%*s      MEM      RSS ",
> +			     c->clients->max_pid_len, "PID");
> +	else
> +		len = printf("%*s ", c->clients->max_pid_len, "PID");
>  
>  	if (c->engines->num_engines) {
>  		unsigned int i;
> @@ -121,12 +126,28 @@ newheader(const struct igt_drm_client *c, const struct igt_drm_client *pc)
>  	return !pc || c->drm_minor != pc->drm_minor;
>  }
>  
> +static int
> +print_size(uint64_t sz)
> +{
> +	char units[] = {'B', 'K', 'M', 'G'};
> +	unsigned u;
------- ^
Better:
	unsigned int u;

With that add my r-b tag,

Regards,
Kamil

> +
> +	for (u = 0; u < ARRAY_SIZE(units) - 1; u++) {
> +		if (sz < 1024)
> +			break;
> +		sz /= 1024;
> +	}
> +
> +	return printf("%7"PRIu64"%c ", sz, units[u]);
> +}
> +
>  static int
>  print_client(struct igt_drm_client *c, struct igt_drm_client **prevc,
>  	     double t, int lines, int con_w, int con_h,
>  	     unsigned int period_us, int *engine_w)
>  {
>  	unsigned int i;
> +	uint64_t sz;
>  	int len;
>  
>  	/* Filter out idle clients. */
> @@ -143,6 +164,17 @@ print_client(struct igt_drm_client *c, struct igt_drm_client **prevc,
>  	*prevc = c;
>  
>  	len = printf("%*s ", c->clients->max_pid_len, c->pid_str);
> +
> +	if (c->regions->num_regions) {
> +		for (sz = 0, i = 0; i < c->regions->max_region_id; i++)
> +			sz += c->memory[i].total;
> +		len += print_size(sz);
> +
> +		for (sz = 0, i = 0; i < c->regions->max_region_id; i++)
> +			sz += c->memory[i].resident;
> +		len += print_size(sz);
> +	}
> +
>  	lines++;
>  
>  	for (i = 0; c->samples > 1 && i <= c->engines->max_engine_id; i++) {
> -- 
> 2.39.2
> 
