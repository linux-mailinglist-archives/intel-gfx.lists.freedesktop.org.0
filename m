Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7517F2FE8
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Nov 2023 14:55:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D18710E4B0;
	Tue, 21 Nov 2023 13:54:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3BCC10E0C7;
 Tue, 21 Nov 2023 13:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700574895; x=1732110895;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=2bD+Ccm3m05w6tvwgulYcUxARR8S8upx+BQa3lMbuyU=;
 b=FvMm4IppZlR6YENp4+m6JV1NHscQPQjhaPvbE645EtZviqw0nYROPXhF
 pwuw8sGwglB1DY14oxZeWj17dIDJaa+avNnmSshksbFw7TcaAHYKUFIUQ
 Xeaqu7Zh+eeDsetC7QEbjS5mknbcaxkvogIZaPd1M/ibd2gDgFGWSLR9v
 U05L4iJjAcnhdzAxtS73cAKhGBBo66QAAJK79jWQVsI12i5TwtsCev8jg
 YZjEArbVIa64SLB64o/rgA35vCJvkcDMn9P0PmTzTsK2ZHeWbjrlq1mYe
 IYU0yPehlsjyLP8SuofCEStLAuiY8pPHl0bmpX8Ll1JCB1BxNX5XoqQ1k Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="395766182"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="395766182"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 05:54:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="14909936"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 05:54:52 -0800
Date: Tue, 21 Nov 2023 15:54:52 +0200
From: Imre Deak <imre.deak@intel.com>
To: Wayne Lin <wayne.lin@amd.com>, Alex Deucher <alexander.deucher@amd.com>,
 Jani Nikula <jani.nikula@intel.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <ZVy2rGFvp2cXaCoc@ideak-desk.fi.intel.com>
References: <20231116131841.1588781-1-imre.deak@intel.com>
 <20231116131841.1588781-2-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231116131841.1588781-2-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 01/11] drm/dp_mst: Store the MST PBN
 divider value in fixed point format
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 16, 2023 at 03:18:31PM +0200, Imre Deak wrote:
[...]
> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_helpers.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_helpers.c
> index ed784cf27d396..63024393b516e 100644
> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_helpers.c
> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_helpers.c
> @@ -31,6 +31,7 @@
>  #include <drm/drm_probe_helper.h>
>  #include <drm/amdgpu_drm.h>
>  #include <drm/drm_edid.h>
> +#include <drm/drm_fixed.h>
>  
>  #include "dm_services.h"
>  #include "amdgpu.h"
> @@ -210,7 +211,7 @@ static void dm_helpers_construct_old_payload(
>  			struct drm_dp_mst_atomic_payload *old_payload)
>  {
>  	struct drm_dp_mst_atomic_payload *pos;
> -	int pbn_per_slot = mst_state->pbn_div;
> +	int pbn_per_slot = dfixed_trunc(mst_state->pbn_div);
>  	u8 next_payload_vc_start = mgr->next_start_slot;
>  	u8 payload_vc_start = new_payload->vc_start_slot;
>  	u8 allocated_time_slots;

I'm planning to merge this patchset today via drm-intel-next and for
that I'll need to rebase the above change to:

@@ -205,13 +206,14 @@ void dm_helpers_dp_update_branch_info(

 static void dm_helpers_construct_old_payload(
                        struct dc_link *link,
-                       int pbn_per_slot,
+                       fixed20_12 pbn_per_slot_fp,
                        struct drm_dp_mst_atomic_payload *new_payload,
                        struct drm_dp_mst_atomic_payload *old_payload)
 {
        struct link_mst_stream_allocation_table current_link_table =
                                                                        link->mst_stream_alloc_table;
        struct link_mst_stream_allocation *dc_alloc;
+       int pbn_per_slot = dfixed_trunc(pbn_per_slot_fp);
        int i;

        *old_payload = *new_payload;

and then apply the original changes in the patch above while merging
drm-intel-next to drm-tip. This is required due to

commit 9031e0013f819c ("drm/amd/display: Fix mst hub unplug warning")

being only in drm-misc-next, but not yet in drm-intel-next.

Let me know if you have a concern with this.

--Imre
