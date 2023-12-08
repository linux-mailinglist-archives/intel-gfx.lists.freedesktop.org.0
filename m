Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA89180A00D
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Dec 2023 10:56:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15B6210EA31;
	Fri,  8 Dec 2023 09:55:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BFF310EA31
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Dec 2023 09:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702029356; x=1733565356;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=YteYEXJBoD/IagsUlkC3mMjiDogYTmIYVK6cxK1GwvA=;
 b=h2DY238C8/8NMZ3HR2Sk1AxKEzfVdnkCsl92ZeN39qvqvTCfDAmGRn3/
 IOp+M/M1MXrjozAn67pZ4E0vo1bJJj/36EVh0gNMa0NclrhxruPIumx2v
 bKACthtdL3h5hXoiwqxRClp4rsC8US58vdjLdyaKvIk3C0yJi5tR9xeUz
 b83WBhdSmFMsbhrG1S4NHxpN/FasytKYJW8FRk/nbC24RVcKZbmxCWFAP
 brn0hIsHlKwlb9/GRPwqNzkbCiMADhJmyQbU/pXJpIS7i4WWIbp0uOYs1
 c+os+TbzAGWd025R9lebzNFao7p2HX5qHIuVwGmjoUA95B0qa9PohpXZX g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="1243611"
X-IronPort-AV: E=Sophos;i="6.04,260,1695711600"; 
   d="scan'208";a="1243611"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2023 01:55:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="945366728"
X-IronPort-AV: E=Sophos;i="6.04,260,1695711600"; d="scan'208";a="945366728"
Received: from mvafin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.63.236])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2023 01:55:54 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 0/8] drm/i915: Drop pointless null checks and fix a
 scaler bug
In-Reply-To: <20231207193441.20206-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231207193441.20206-1-ville.syrjala@linux.intel.com>
Date: Fri, 08 Dec 2023 11:55:51 +0200
Message-ID: <87plzhyq54.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Thu, 07 Dec 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Mostly just dropping a bunch of redundant null checks that I ran
> into while playing around with __attribute__((nonnull)).
>
> And I also ended up discovering an actual bug in the scaler code.

Series is

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Ville Syrj=C3=A4l=C3=A4 (8):
>   drm/i915: Fix intel_atomic_setup_scalers() plane_state handling
>   drm/i915: Streamline intel_dsc_pps_read()
>   drm/i915: Drop redundant NULL check
>   drm/i915: Drop crtc NULL check from intel_crtc_active()
>   drm/i915: Drop NULL fb check from intel_fb_uses_dpt()
>   drm/i915: Clean up intel_get_frame_time_us()
>   drm/i915: s/cstate/crtc_state/ in intel_get_frame_time_us()
>   drm/i915/tv: Drop redundant null checks
>
>  drivers/gpu/drm/i915/display/i9xx_wm.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_bios.c |  3 +--
>  drivers/gpu/drm/i915/display/intel_fb.c   |  2 +-
>  drivers/gpu/drm/i915/display/intel_psr.c  |  6 +++---
>  drivers/gpu/drm/i915/display/intel_tv.c   |  6 ------
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 21 +++++++--------------
>  drivers/gpu/drm/i915/display/skl_scaler.c |  2 +-
>  7 files changed, 14 insertions(+), 28 deletions(-)

--=20
Jani Nikula, Intel
