Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2FDD4942F3
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jan 2022 23:21:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 202CE10E4B3;
	Wed, 19 Jan 2022 22:21:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D849710E479
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jan 2022 22:21:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642630873; x=1674166873;
 h=date:from:to:subject:message-id:references:mime-version:
 content-transfer-encoding:in-reply-to;
 bh=Su4HZYM74bYQLtMYrabYTeBfMOOtLohBZ4njllHxSEo=;
 b=MiZe9Qfau5rT8dLYIe8CEBaCOi/j44qGuZMaBPBLj9Q8S0YT77aEA0rd
 foHFse/X3IP4axOJ+iPInjr5rByOI5K1aYonI8Zr2RgDzmt8wdN9NlOTP
 Xf/4MZzKMHZkoD0GL27Torq6EJIzZZ/jeijFmscCBV0resMiT4GCt/9vk
 PhUXMwQaxgJC4w4YPpXi3l2msro2bi7k/+p3Ks5W2/Hvd6nayoSf0v65j
 nye9KQiorrsTjczblhxd/j24vwOjPxn9JKqTFZnCLGtkwwu7YxCagMfdB
 rNlUKyOB4fpu4hLRPKPLvpIVgvdfj4NIghZ46NvbuvPd8NPzvrrt3SsJc A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="308546680"
X-IronPort-AV: E=Sophos;i="5.88,300,1635231600"; d="scan'208";a="308546680"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2022 14:21:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,300,1635231600"; d="scan'208";a="615869267"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by FMSMGA003.fm.intel.com with SMTP; 19 Jan 2022 14:21:09 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 20 Jan 2022 00:21:07 +0200
Date: Thu, 20 Jan 2022 00:21:07 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YeiO005743p9zOeQ@intel.com>
References: <20211217155403.31477-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211217155403.31477-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 0/6] drm/i915: Extend parse_ddi_port() to
 all g4x+ platforms
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

On Fri, Dec 17, 2021 at 05:53:57PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Quick attempt at unifying the VBT DDI parsing to all g4x+
> platforms.
> 
> Note that we'll still use the hardware straps as the primary 
> source of port presence information on old platforms since the
> device type bits in VBT tend to be often a bit wrong (for DP++
> ports at least). Hopefully the rest of the information (mainly
> aux_ch/ddc_pin) are correct.
> 
> Only very slightly smoke tested on SNB so far.

Smoked this a bit more on a set of ctg,ilk,snb,ivb and all seems
good so far.

Pushed to drm-intel-next with fingers and toes crossed.
Thanks for the review.

> 
> Ville Syrjälä (6):
>   drm/i915/bios: Introduce has_ddi_port_info()
>   drm/i915/bios: Use i915->vbt.ports[] on CHV
>   drm/i915/bios: Use i915->vbt.ports[] for all g4x+
>   drm/i915/bios: Throw out the !has_ddi_port_info() codepaths
>   drm/i915/bios: Nuke DEVICE_TYPE_DP_DUAL_MODE_BITS
>   drm/i915/hdmi: Ignore DP++ TMDS clock limit for native HDMI ports
> 
>  drivers/gpu/drm/i915/display/intel_bios.c     | 117 +++---------------
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |   8 ++
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h |  26 ----
>  3 files changed, 28 insertions(+), 123 deletions(-)
> 
> -- 
> 2.32.0

-- 
Ville Syrjälä
Intel
