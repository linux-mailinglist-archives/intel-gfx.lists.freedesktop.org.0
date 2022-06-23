Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C40558779
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 20:28:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A825B10E7BE;
	Thu, 23 Jun 2022 18:27:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1148310E7BE
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jun 2022 18:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656008878; x=1687544878;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Q2OGSa5KTlt3CfOtuEXI3mR1C0Sp6q/fD8HPZvb/WKA=;
 b=CU6YrA/Tu41hnUDMFaKIu1th5AskzSq2PSaHFiQ3fLOozu7jZykCoP7j
 RkxPAMyac1nXPnsO+pa4eI+JBI00S5Z+Oc5299fcPeiu2mW4wiavZaLId
 pKuL6SkWbmK08i90pFIA64pbGQ+eog4io7b57m1pNG1GKw4iUex63OYjo
 1jhZjnDliy7Y4XTbWc71UPWX3CfQn2y9IRUBrsAQpyueZhP11FCmXvbkV
 rokHy868uix7D5EdxbXTmLkknMHWxeP34y7Pj3acNcL2doBIH3MUGGWfr
 SgPCN5A4ViMBHAq5DRjFlR3wbvsjQrLk/pOOvu+7ZoRGBjuexWiPOaRGS w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10387"; a="281881835"
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="281881835"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 11:27:57 -0700
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="834757137"
Received: from anefedov-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.38.20])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 11:27:55 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220623130900.26078-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220623130900.26078-1-ville.syrjala@linux.intel.com>
Date: Thu, 23 Jun 2022 21:27:47 +0300
Message-ID: <87pmizmdzw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 0/9] drm/i915: Display info cleanup
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

On Thu, 23 Jun 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Collect more stuff under INTEL_INFO->display, and clean up
> some messy stuff in the related register macros.

Makes me wonder if we should have DISPLAY_INFO(i915) macro that returns
a pointer to the display sub-struct.

Anyway, the series is

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Ville Syrj=C3=A4l=C3=A4 (9):
>   drm/i915: Move dbuf details to INTEL_INFO->display
>   drm/i195: Move pipe_offsets[] & co. to INTEL_INFO->display
>   drm/i915: Move display_mmio_offset under INTEL_INFO->display
>   drm/i915: Make pipe_offsets[] & co. u32
>   drm/i915: s/_CURSOR2/_MMIO_CURSOR2//
>   drm/i915: Use _MMIO_TRANS2() where appropriate
>   drm/i915: Use _MMIO_PIPE2() where appropriate
>   drm/i915: Get rid of XE_LPD_CURSOR_OFFSETS
>   drm/i915: Move the color stuff under INTEL_INFO->display
>
>  drivers/gpu/drm/i915/display/intel_color.c    |  28 ++---
>  drivers/gpu/drm/i915/display/intel_display.h  |   2 +-
>  .../drm/i915/display/intel_display_power.c    |   2 +-
>  drivers/gpu/drm/i915/i915_pci.c               | 112 +++++++++---------
>  drivers/gpu/drm/i915/i915_reg.h               |  47 ++++----
>  drivers/gpu/drm/i915/intel_device_info.h      |  39 +++---
>  drivers/gpu/drm/i915/intel_pm.c               |   8 +-
>  7 files changed, 117 insertions(+), 121 deletions(-)

--=20
Jani Nikula, Intel Open Source Graphics Center
