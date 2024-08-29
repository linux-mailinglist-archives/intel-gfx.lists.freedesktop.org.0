Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26903964992
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2024 17:13:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99FA610E6FD;
	Thu, 29 Aug 2024 15:13:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S0sI3232";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A867710E6FD;
 Thu, 29 Aug 2024 15:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724944392; x=1756480392;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=zrISFXa8AQXMMBiDmogcZ+tqx/Xruf3jWfRwNe2Eca4=;
 b=S0sI3232v8K7MGAP7cpWgSJVaw3BRKmfZqKhWeDp02A46IyQo6QZjqcY
 fgONJEgnUjRztFUdH6sh87TeGzI6hUd+Cm12l8i07gPAiJrEq41ZI/2fV
 7EWYY0IFiTOaiZYpFNmFbmeyYphHJgj3a9wa2gSGR5EppxmCkUoKMvnIE
 6uXA9jDamY7ykzJqq9cD/0vxOWjqX0LHDMnPKdMup9Dd4a/J5InwB5SQo
 aOIkIECJL+VehfmJR2XEwh+H2OsDMAde32twgR2lprWPHq7M1Vaz6VV3x
 JyNrM8BkIEP7cSgCUdPGKWWVAEx9Do+HHHQ6qIpODYvGjMgBQ+3uJsn1N A==;
X-CSE-ConnectionGUID: Iv/dEyDsR+WnZnP4DqA9KQ==
X-CSE-MsgGUID: dVYzuHVoSdWxCzm2kDOj5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23066280"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="23066280"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 08:13:12 -0700
X-CSE-ConnectionGUID: rOLJgOm3RpOAKRR1EznyyA==
X-CSE-MsgGUID: jE1S5qfKTVSD9JWj5NYByg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="63936260"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 08:13:10 -0700
Date: Thu, 29 Aug 2024 18:13:31 +0300
From: Imre Deak <imre.deak@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: Fix BMG CCS modifiers
Message-ID: <ZtCQG4EOrYdUGDLX@ideak-desk.fi.intel.com>
References: <20240829122928.423456-1-juhapekka.heikkila@gmail.com>
 <ZtCFnopiRIDSbtJp@intel.com>
 <62a324e0-a52d-4c84-acda-9ef6c45e777e@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <62a324e0-a52d-4c84-acda-9ef6c45e777e@linux.intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 29, 2024 at 04:36:52PM +0200, Maarten Lankhorst wrote:
> 
> 
> Den 2024-08-29 kl. 16:29, skrev Rodrigo Vivi:
> > On Thu, Aug 29, 2024 at 03:29:28PM +0300, Juha-Pekka Heikkila wrote:
> >> Let I915_FORMAT_MOD_4_TILED_BMG_CCS show up as supported modifier
> >>
> > 
> > doh! I just did the pull-request with that... I guess this is one extra
> > pull request next week or the first patch of -next-fixes :/
> > 
> > Fixes: 97c6efb36497 ("drm/i915/display: Plane capability for 64k phys alignment")
> > 
> >> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 3 +++
> >>  1 file changed, 3 insertions(+)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> >> index 9452cad41d07..d28b98e7cbd7 100644
> >> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> >> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> >> @@ -2453,6 +2453,9 @@ static u8 skl_get_plane_caps(struct drm_i915_private *i915,
> >>  	if (gen12_plane_has_mc_ccs(i915, plane_id))
> >>  		caps |= INTEL_PLANE_CAP_CCS_MC;
> >>  
> >> +	if (GRAPHICS_VER(i915) >= 20 && IS_DGFX(i915))
> > 
> > we should be using display version here, no?!
> > 
> >> +		caps |= INTEL_PLANE_CAP_NEED64K_PHYS;
>
> Just set it unconditionally if you want to change it IMO, it's a
> workaround not an actual capability, rest should filter...

I think it should be set only on platforms that actually require 64K
pages. So IIUC simply
   IS_BATTLEMAGE()
or if it's known that future DGFX has this restriction too
   IS_BATTLEMAGE() || (DISPLAY_VER() >= 20 && IS_DGFX())
? Then the BMG and LNL checks in plane_has_modifier() wouldn't be
needed either.

--Imre
