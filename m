Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC607E088A
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 19:56:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36CD010EA51;
	Fri,  3 Nov 2023 18:56:15 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7526C10E195;
 Fri,  3 Nov 2023 18:56:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699037773; x=1730573773;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ZRjxvQbtTZRUCXq8jDJ0ZXlT3k4cYcGsWNgC5Ig6jyw=;
 b=etBHh20KanP941QPI62RrwYBfMIK5Sd3Djn02Z/g4jEaZQ3BZVBCf8VQ
 MPfHKa4oPzsfEBbKL8fUGrPNWhxdXEp4NQ6VYp+vthn1FCqPpJA/ymx3w
 EEbbuMP0FaFFITJFa5zcR7ukdXF2sZT02KvP3afW1UM52XB2LWXYILwKg
 nzg0Cj8ySemehJenyDMJQoe7ybZX69cUfcwUCBKDxlxn2IciFh+DE/sN2
 bKbbLTBHyCHTFuSYAEgxCYW/86xZBRq8/+ulzR+bwVoebnEYbM/UNsihQ
 FxxLiz/NV7HRbF1kDHDC2Qk2qgAssCdRDbrHjah1zQt3z7OZgJGmczvGz g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="10537736"
X-IronPort-AV: E=Sophos;i="6.03,275,1694761200"; d="scan'208";a="10537736"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 11:56:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="761707991"
X-IronPort-AV: E=Sophos;i="6.03,275,1694761200"; d="scan'208";a="761707991"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by orsmga002-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Nov 2023 11:56:10 -0700
Date: Fri, 3 Nov 2023 19:56:08 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20231103185608.r2ufhy7samn6lshy@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
References: <20231012081547.852052-1-tvrtko.ursulin@linux.intel.com>
 <20231012081547.852052-5-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231012081547.852052-5-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 4/9] lib/igt_drm_fdinfo:
 Copy over region map name on match
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
Cc: Intel-gfx@lists.freedesktop.org, Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tvrtko,
On 2023-10-12 at 09:15:42 +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> I will need some record of which regions were found for intel_gpu_top so
> lets just copy over the region name from the map on the first match.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  lib/igt_drm_fdinfo.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/lib/igt_drm_fdinfo.c b/lib/igt_drm_fdinfo.c
> index b72822894782..222ccbfb1fd6 100644
> --- a/lib/igt_drm_fdinfo.c
> +++ b/lib/igt_drm_fdinfo.c
> @@ -148,6 +148,10 @@ static int parse_region(char *line, struct drm_client_fdinfo *info,
>  		for (i = 0; i < region_entries; i++) {
>  			if (!strncmp(name, region_map[i], name_len)) {
>  				found = i;
> +				if (!info->region_names[info->num_regions][0]) {
> +					assert(name_len < sizeof(info->region_names[i]));
> +					strncpy(info->region_names[i], name, name_len);
> +				}
>  				break;
>  			}
>  		}
> -- 
> 2.39.2
> 
