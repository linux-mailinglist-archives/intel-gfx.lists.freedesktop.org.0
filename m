Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F6C8A6B87
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 14:55:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9AFE112C4F;
	Tue, 16 Apr 2024 12:55:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CZ3dK1Sk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC44F112C4C;
 Tue, 16 Apr 2024 12:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713272136; x=1744808136;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=SSP4IUMHeAOrSCKxyN1fgUH1iSpSSw1KscG+9zHtSM8=;
 b=CZ3dK1SkHwLtrXxUnNeaYGkVhdDfXQscN7jt4HZayvEbLsQ35bOU20aY
 C5WyubpFgYxbVo96LBMXwkv84kjmBKuk4npWRvUtG7r+ylRkMAcJiQfCn
 2/jmMJgHRW33owtjPz8KD/Z084K+/Xv6xgmD0Tmqz5HF0h+swtTmrehv+
 kocKPEVfwGfYv4g5PCaJH8s4NKqwku8+EJaybRgXBZ8w1aud34U3T21u7
 xA8GcdDZlUXFSV1iyIs/GhTJwDp1wCiZThIJprtx0P67X1EFnKBtvplf5
 4jp7xkUzDdDrPAuotOj0kvp6wW6cXyjq5iCkV9HQzANtGEMpm9UOfRXZK g==;
X-CSE-ConnectionGUID: 0fiL/veSRzyfbriVYwGyYA==
X-CSE-MsgGUID: ZGPmZ85qRYWdFsJFQ78x0A==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8871255"
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; 
   d="scan'208";a="8871255"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 05:55:36 -0700
X-CSE-ConnectionGUID: oozAjcDWTYORzL6WMg0OmQ==
X-CSE-MsgGUID: nBSIV5TLRACnik78NDO8qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; d="scan'208";a="22319282"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Apr 2024 05:55:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 16 Apr 2024 15:55:33 +0300
Date: Tue, 16 Apr 2024 15:55:33 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 ville.syrjala@intel.com, matthew.d.roper@intel.com
Subject: Re: [PATCH v1] drm/xe: no need to call fixup_initial_plane_config in
 XE
Message-ID: <Zh51RV89rS4xJ7uv@intel.com>
References: <20240412213342.181465-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240412213342.181465-1-vinod.govindapillai@intel.com>
X-Patchwork-Hint: comment
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Apr 13, 2024 at 12:33:42AM +0300, Vinod Govindapillai wrote:
> In XE, the updated fb mapping is already done and updated as
> part of intel_find_initial_plane_obj(). So no need to invoke
> fixup_initial_plane_config() again as it would basically write
> the same data to "PLAN_SURF" again.
> 
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/xe/display/xe_plane_initial.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> index 9693c56d386b..51eb80729cfb 100644
> --- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
> +++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> @@ -297,9 +297,6 @@ void intel_initial_plane_config(struct drm_i915_private *i915)
>  		 */
>  		intel_find_initial_plane_obj(crtc, plane_configs);
>  
> -		if (i915->display.funcs.display->fixup_initial_plane_config(crtc, plane_config))
> -			intel_crtc_wait_for_next_vblank(crtc);
> -

We want to do the opposite. ie. get rid rid of the async flip abuse in
xe.

>  		plane_config_fini(plane_config);
>  	}
>  }
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
