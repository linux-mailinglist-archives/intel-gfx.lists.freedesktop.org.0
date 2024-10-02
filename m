Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E01998D20D
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2024 13:11:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABE2F10E6F2;
	Wed,  2 Oct 2024 11:11:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WMLjENTG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA90010E6F2
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2024 11:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727867486; x=1759403486;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=oUvsYY+7Nm9C3lxMB1EYJijB5yF87p+QeexU0ZzioNU=;
 b=WMLjENTGfcpTIsziq+G6zQri3EVUP9cVbXjFV2JM9GR4hlZ6dn/2TdCa
 ZwKMw515c+6V/9RAccaCT/BoC1yHI3quEl2y+me4g6vueCYtwDXuq0hMy
 3KbP1tlTfF0OPBDnOuJPZ5L21z05BkjTYjqNdnB9cQdxKKoUr5g8o+Vom
 T7E+POjHT71zg/qay93X/3d6XdnTxWQmA59cXcdTCNehUMOTMdP+FO6tF
 gDX33vEUGDkgPPGq3JFFpKmJlROumsJtT104uMLhO62QvIKorgZUZClFu
 VrcjjhiqhdCmGJSwD2QDoZz08MAxZ8voJLYfid9WU2sCAe0uti1uPZD9C g==;
X-CSE-ConnectionGUID: XggChnNgRbuoXddUoUETtA==
X-CSE-MsgGUID: HVYWtCAIQZKU1FJl3RhonA==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="27159179"
X-IronPort-AV: E=Sophos;i="6.11,171,1725346800"; d="scan'208";a="27159179"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 04:11:26 -0700
X-CSE-ConnectionGUID: 0Nw0n/XURESZgpqwTK7dtA==
X-CSE-MsgGUID: m3npNSFwTcGz32gy8myH3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,171,1725346800"; d="scan'208";a="78497777"
Received: from lbogdanm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.49])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 04:11:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 arun.r.murthy@intel.com, ankit.k.nautiyal@intel.com,
 mitulkumar.ajitkumar.golani@intel.com, Animesh Manna
 <animesh.manna@intel.com>
Subject: Re: [PATCH v12 3/3] drm/i915/display: Introduve intel_vrr_possible
In-Reply-To: <20240927042509.4081753-4-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240927042509.4081753-1-animesh.manna@intel.com>
 <20240927042509.4081753-4-animesh.manna@intel.com>
Date: Wed, 02 Oct 2024 14:11:18 +0300
Message-ID: <87frpeu5d5.fsf@intel.com>
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

On Fri, 27 Sep 2024, Animesh Manna <animesh.manna@intel.com> wrote:
> @@ -246,7 +251,8 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>  
> -	if (!crtc_state->vrr.flipline)
> +	//if (!crtc_state->vrr.flipline)
> +	if (!intel_vrr_possible(crtc_state))
>  		return;
>  
>  	if (DISPLAY_VER(display) >= 13) {
> @@ -286,7 +292,8 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>  		intel_de_rmw(display, CHICKEN_TRANS(cpu_transcoder),
>  			     0, PIPE_VBLANK_WITH_DELAY);
>  
> -	if (!crtc_state->vrr.flipline) {
> +	//if (!crtc_state->vrr.flipline) {
> +	if (!intel_vrr_possible(crtc_state)) {
>  		intel_de_write(display,
>  			       TRANS_VRR_CTL(display, cpu_transcoder), 0);
>  		return;

What's the point of even sending this? What am I supposed to do with
this? The series is at v12. We should aim at converging to merge at
maybe v3 or v5 or so, at the latest. There are legitimate cases where v1
or v2 are RFC-like, figuring out the direction etc., but the goal for
every single version after that should be that it's the last.

BR,
Jani.


-- 
Jani Nikula, Intel
