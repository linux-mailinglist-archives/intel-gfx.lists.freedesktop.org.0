Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B9E3FED04
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 13:31:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 322A56E4F3;
	Thu,  2 Sep 2021 11:31:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C349C6E4F3
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 11:31:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="198630909"
X-IronPort-AV: E=Sophos;i="5.84,372,1620716400"; d="scan'208";a="198630909"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 04:31:42 -0700
X-IronPort-AV: E=Sophos;i="5.84,372,1620716400"; d="scan'208";a="533040200"
Received: from jcalzada-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.249.47.103])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 04:31:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>,
 Lee Shawn C <shawn.c.lee@intel.com>
Cc: intel-gfx@lists.freedesktop.org
In-Reply-To: <163057819255.29441.9315391801916633319@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210902100851.21719-1-shawn.c.lee@intel.com>
 <163057819255.29441.9315391801916633319@emeril.freedesktop.org>
Date: Thu, 02 Sep 2021 14:31:37 +0300
Message-ID: <87a6kv9pt2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_DSI_driver_improvement_=28rev2=29?=
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

On Thu, 02 Sep 2021, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: DSI driver improvement (rev2)
> URL   : https://patchwork.freedesktop.org/series/94237/
> State : warning
>
> == Summary ==
>
> $ dim checkpatch origin/drm-tip
> 91a7056b2b41 drm/i915/dsi: wait for header and payload credit available
> c7f311aa2adf drm/i915/dsi: refine send MIPI DCS command sequence
> 50a0fc3f6c05 drm/i915: Get proper min cdclk if vDSC enabled
> 8a70756904f4 drm/i915/dsi: Retrieve max brightness level from VBT
> -:52: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
> #52: FILE: drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c:154:
> +	panel->backlight.max = (dev_priv->vbt.backlight.brightness_precision_bits > 8) \

This is a valid warning.

BR,
Jani.

>
> total: 0 errors, 1 warnings, 0 checks, 32 lines checked
> d2500f03aee8 drm/i915/dsi: Read/write proper brightness value via MIPI DCS command
>
>

-- 
Jani Nikula, Intel Open Source Graphics Center
