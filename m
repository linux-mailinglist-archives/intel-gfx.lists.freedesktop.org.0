Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D67536D049A
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 14:23:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4770410EDF2;
	Thu, 30 Mar 2023 12:23:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F1D510EDF2
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 12:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680179020; x=1711715020;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=VEdjMxMjBpV8t+L/+/Wa6AH+bZAccViHyo67TlXfSIc=;
 b=TIB3JOb40Gt3w5ZA6CqJQujCzOnMCKOc7wDZIV0I6wogddxf1IEFdBT7
 ysf9NypRl97/+5PMrvSTSvZwSyEm07cO0/t63c2wmXjmdelFkL++jI6i6
 zrqX6XKWCnY18E3Q6ukjn1F0FH+kUjOkA76iNh5PWUhpbX173gPtERsBV
 xZ1YBLxGBp26z1s6KfTnTy6kWlFwOLjkZGrhuUcKJRDy2jxjP2I9GrAOH
 /c5cDdGcBAnHBazbq/F5zrjV3tB9Hf48pN5xaNLd8MN/QcqMQtRf800zB
 knEavZAKiOf7v5GqmRYoa5lI8dRGoDHdRIN67t6cdIcnUzICSAPfxwFi2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="403802884"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="403802884"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 05:23:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="828309913"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="828309913"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 30 Mar 2023 05:23:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 30 Mar 2023 15:23:36 +0300
Date: Thu, 30 Mar 2023 15:23:36 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <ZCV/SMnOWfpDf9IC@intel.com>
References: <20230329150703.432072-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230329150703.432072-1-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v7 0/6]  High refresh rate PSR fixes
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 29, 2023 at 06:06:57PM +0300, Jouni Högander wrote:
> Fix/adjust Wa_16013835468 and implement Wa_14015648006. Implement Wa_1136 and
> check for vblank being long enough for psr2.
> 
> v7:
>  - Apply  Wa_14015648006 for display version 12 only
>  - Disable WM optimization in pre plane hook allow in post plane hook
> v6:
>  - Handle mode change in psr enable/disable
>  - Handle wm_level_disable changes separately in pre plane hook
>  - Handle WA #1136 in pre/post plane hooks
> v5:
>  - Add missing patch
> v4:
>  - Keep/fix Wa_16013835468
>  - Use calculated block count number instead of fixed 12
> v3:
>  - apply Wa_16013835468 for icl as well
>  - set/clear chicken bit in post plane update
>  - Unify pre/post hooks
> v2: Implement Wa_1136
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Cc: Mika Kahola <mika.kahola@intel.com>
> 
> Jouni Högander (6):
>   drm/i915/psr: Unify pre/post hooks
>   drm/i915/psr: Modify/Fix Wa_16013835468 and prepare for Wa_14015648006
>   drm/i915/psr: Implement Wa_14015648006
>   drm/i915/psr: Add helpers for block count number handling
>   drm/i915/psr: Check that vblank is long enough for psr2
>   drm/i915/psr: Implement Display WA #1136

For the series
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_psr.c      | 90 +++++++++++++++----
>  drivers/gpu/drm/i915/display/skl_watermark.c  |  6 +-
>  3 files changed, 74 insertions(+), 23 deletions(-)
> 
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
