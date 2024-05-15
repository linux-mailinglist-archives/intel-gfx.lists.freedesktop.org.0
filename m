Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 377958C6616
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 14:06:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F4D310E812;
	Wed, 15 May 2024 12:06:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gmPwqSzd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A448F10E8C5
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 12:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715774761; x=1747310761;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6iuRFTlrpT6wCcyGF5aSFdmYuOEEkHWoxLPWB3NSHcU=;
 b=gmPwqSzdcT+JNhEPHQjTJtG4B8UaRCaodfRyyi/BauRwyOMKE/wymrBT
 uAleOn0tzkwV0aU0yT0+AwC3YhdHmvqoqjvvvadV+C7UDdw4KY11CBt5Y
 L7qYH+qYDq6APYP3TXGC09T1T+H7ZKmTcuEoPKwhZtf9pQ5hZg79FHS2P
 Fm2S+E6hsy2tbUUBo1msrOnJGBomSjCwty0kEVhn27yuQzDHwqG8ZcjhH
 wPTnGIo0FUudZBkjOfvytI+p6K6oEeNg+wTz00RHWsdsXellarryYo2mx
 DGEOhr5u/A+8Q30hgHu8DAP7gEDHd/oEikE11b3zQK8/4Ss81nhbhuwbY w==;
X-CSE-ConnectionGUID: eCszmnnCQASeQpUCOsCGpg==
X-CSE-MsgGUID: NXJRZoBrReSOyzogwwIC6Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="12034279"
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="12034279"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 05:05:56 -0700
X-CSE-ConnectionGUID: WossJjy5S5yBc9WGtrQrpg==
X-CSE-MsgGUID: KqEKg0leSEOO6ojYKti1mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="31034728"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 15 May 2024 05:05:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 May 2024 15:05:53 +0300
Date: Wed, 15 May 2024 15:05:53 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 0/8] drm/i915: pass dev_priv explicitly to CUR* registers
Message-ID: <ZkSlIYIfVescQxto@intel.com>
References: <cover.1715774156.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1715774156.git.jani.nikula@intel.com>
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

On Wed, May 15, 2024 at 02:56:40PM +0300, Jani Nikula wrote:
> Update all the register macros in the intel_cursor_regs.h file.
> 
> Jani Nikula (8):
>   drm/i915: pass dev_priv explicitly to CURCNTR
>   drm/i915: pass dev_priv explicitly to CURBASE
>   drm/i915: pass dev_priv explicitly to CURPOS
>   drm/i915: pass dev_priv explicitly to CURPOS_ERLY_TPT
>   drm/i915: pass dev_priv explicitly to CURSIZE
>   drm/i915: pass dev_priv explicitly to CUR_FBC_CTL
>   drm/i915: pass dev_priv explicitly to CUR_CHICKEN
>   drm/i915: pass dev_priv explicitly to CURSURFLIVE

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
>  drivers/gpu/drm/i915/display/intel_cursor.c   | 33 ++++++++++---------
>  .../gpu/drm/i915/display/intel_cursor_regs.h  | 16 ++++-----
>  drivers/gpu/drm/i915/display/intel_display.c  |  4 +--
>  drivers/gpu/drm/i915/display/intel_psr.c      | 13 +++++---
>  drivers/gpu/drm/i915/gvt/display.c            |  8 ++---
>  drivers/gpu/drm/i915/gvt/fb_decoder.c         |  6 ++--
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c   | 24 +++++++-------
>  7 files changed, 56 insertions(+), 48 deletions(-)
> 
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
