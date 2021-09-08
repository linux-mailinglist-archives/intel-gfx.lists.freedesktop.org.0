Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BA24039A4
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 14:21:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C0E76E19A;
	Wed,  8 Sep 2021 12:21:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4B426E19A
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 12:21:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="220497909"
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="220497909"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 05:21:20 -0700
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="538620336"
Received: from mdoerbec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.33.106])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 05:21:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>, intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, vandita.kulkarni@intel.com,
 cooper.chiou@intel.com, william.tseng@intel.com,
 Lee Shawn C <shawn.c.lee@intel.com>
In-Reply-To: <20210908115607.9633-1-shawn.c.lee@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210908115607.9633-1-shawn.c.lee@intel.com>
Date: Wed, 08 Sep 2021 15:21:10 +0300
Message-ID: <87ilzb45s9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [v4 0/5] DSI driver improvement
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

On Wed, 08 Sep 2021, Lee Shawn C <shawn.c.lee@intel.com> wrote:
> v2: Get data length of brightness value more easily while driver try to
>     read/write MIPI_DCS_DISPLAY_BRIGHTNESS command.
> v3: fix checkpatch warning.

The series is v4, what's new here?

BR,
Jani.


>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>
> Lee Shawn C (5):
>   drm/i915/dsi: wait for header and payload credit available
>   drm/i915/dsi: refine send MIPI DCS command sequence
>   drm/i915: Get proper min cdclk if vDSC enabled
>   drm/i915/dsi: Retrieve max brightness level from VBT
>   drm/i915/dsi: Read/write proper brightness value via MIPI DCS command
>
>  drivers/gpu/drm/i915/display/icl_dsi.c        | 50 +++++++++----------
>  drivers/gpu/drm/i915/display/intel_bios.c     |  3 ++
>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 10 ++++
>  .../i915/display/intel_dsi_dcs_backlight.c    | 33 ++++++++----
>  drivers/gpu/drm/i915/i915_drv.h               |  1 +
>  5 files changed, 62 insertions(+), 35 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
