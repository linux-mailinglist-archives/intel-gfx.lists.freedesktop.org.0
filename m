Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 861A8872499
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 17:44:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 000B8112760;
	Tue,  5 Mar 2024 16:44:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y2B0BxYV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 110D910F82E;
 Tue,  5 Mar 2024 16:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709657082; x=1741193082;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=4FBVKe0YiVqVNnzXCJFye0unjt4SMcXkWaNXg8w8QIU=;
 b=Y2B0BxYVwFeqfRpC/w4Vw9MZcqGLNG55ijLu9NQvPdB1P2YlM2Yz98aE
 o4Gz4RRLnDf7TNKZj0Ab8koG5GNS7CPltS6DHzEcMnrn1L61/dAjGeilY
 PU4OeDZ5szyyJR6NH+78CMLZQK+0el+GHLLvK75Mos6+gQ4khAgOkIukc
 FtV8bosy2clkP9wWtW9M5VAXPAvcKMciFzeRvhjME2zVk0/jRok4hYiEd
 8plKQqUkn2YPN5dykjaru3nK46d9mqSsZt8G4wiuzlgBGpm7+aeLkWzlX
 cIGT3z73yIlTH50ZVSvivZ9VImVRmF6DlD4xxBs0tfF9d74Okwic7bKSa g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="14937241"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="14937241"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 08:44:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="32612098"
Received: from omakhlou-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.252.51.143])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 08:44:38 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>, "Souza, Jose"
 <jose.souza@intel.com>
Subject: Re: [PATCH] drm/i915/display: Disable AuxCCS framebuffers if built
 for Xe
In-Reply-To: <20240228140225.858145-1-juhapekka.heikkila@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240228140225.858145-1-juhapekka.heikkila@gmail.com>
Date: Tue, 05 Mar 2024 18:44:35 +0200
Message-ID: <875xy01vd8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 28 Feb 2024, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> wrote:
> AuxCCS framebuffers don't work on Xe driver hence disable them
> from plane capabilities until they are fixed. FlatCCS framebuffers
> work and they are left enabled. CCS is left untouched for i915
> driver.
>
> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/933
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index e941e2e4fd14..860574d04f88 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2295,6 +2295,9 @@ static u8 skl_get_plane_caps(struct drm_i915_private *i915,
>  	if (HAS_4TILE(i915))
>  		caps |= INTEL_PLANE_CAP_TILING_4;
>  
> +	if (!IS_ENABLED(I915) && !HAS_FLAT_CCS(i915))
> +		return caps;
> +
>  	if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
>  		caps |= INTEL_PLANE_CAP_CCS_RC;
>  		if (DISPLAY_VER(i915) >= 12)

-- 
Jani Nikula, Intel
