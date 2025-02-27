Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B96DA48866
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 19:59:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D6F310E090;
	Thu, 27 Feb 2025 18:59:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ct6K/Jzz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E1F410E00B;
 Thu, 27 Feb 2025 18:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740682756; x=1772218756;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=DcpoojT48b8a9rhIudW8cJRFRw4Kyg0HNNwgdIG44lQ=;
 b=ct6K/Jzzn29UTeTr7t+3r0C6VQT0mB3VF9/kOQXKFDCEDC40y+HGCU3N
 /kb645I/eTIRbXreJ3zdgFFL3uaXeoz+j0Cv9QeF5nj4sEKdwZ6jE+khk
 LMT/sy77fAxBDwDrWZWVbkGV4QsKI0MnZZrIgVsNl+Pd3SrNQg5Iqy8zU
 MG+oERgbh2LCKjhd3d1OHXvUeaHkwVsr55d4aFVm8XXzSG/RallBaHqfo
 1emPsd+6b7v49fFrWxPl8AQQsJh1QZWvedTkB7kci48Cki1kYxWw/0Lwi
 hkztKX+xpIKfjLDTNcB+hLDzo5xV86WLBHlNf6zB51UwFw6yYp/srUC3r A==;
X-CSE-ConnectionGUID: xB4BcepZTnmuK5JUuA3Wjw==
X-CSE-MsgGUID: M6IUWZzNRk69U5iM75JzvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="52231846"
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="52231846"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 10:59:10 -0800
X-CSE-ConnectionGUID: DJJu3/KySryAkAWB8Au0XA==
X-CSE-MsgGUID: Q4g9T2N2TweHqRfivEJKCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="116917021"
Received: from monicael-mobl3 (HELO localhost) ([10.245.246.236])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 10:59:09 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 0/5] drm/i915/pfit: panel fitter refactors
In-Reply-To: <Z78O5ibtHlh5Qbp4@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1740564009.git.jani.nikula@intel.com>
 <Z78O5ibtHlh5Qbp4@intel.com>
Date: Thu, 27 Feb 2025 20:59:05 +0200
Message-ID: <87frjz2ozq.fsf@intel.com>
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

On Wed, 26 Feb 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Feb 26, 2025 at 12:01:06PM +0200, Jani Nikula wrote:
>> Move pfit code to intel_pfit.c, convert to struct intel_display, split
>> out pfit registers to a separate file, etc.
>>=20
>> Jani Nikula (5):
>>   drm/i915/pfit: rename intel_panel_fitting() to
>>     intel_pfit_compute_config()
>>   drm/i915/pfit: move ilk and i9xx pfit code to intel_pfit.[ch]
>>   drm/i915/pfit: fix comment style for moved comments
>>   drm/i915/pfit: convert moved code to struct intel_display
>>   drm/i915/pfit: split out intel_pfit_regs.h
>
> Series is=20
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to din.

BR,
Jani.

>
>>=20
>>  drivers/gpu/drm/i915/display/icl_dsi.c        |   2 +-
>>  drivers/gpu/drm/i915/display/intel_crt.c      |   1 +
>>  drivers/gpu/drm/i915/display/intel_ddi.c      |   1 +
>>  drivers/gpu/drm/i915/display/intel_display.c  | 165 +----------------
>>  drivers/gpu/drm/i915/display/intel_display.h  |   2 -
>>  drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
>>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |   1 +
>>  drivers/gpu/drm/i915/display/intel_hdmi.c     |   2 +-
>>  drivers/gpu/drm/i915/display/intel_lvds.c     |   3 +-
>>  drivers/gpu/drm/i915/display/intel_overlay.c  |   1 +
>>  drivers/gpu/drm/i915/display/intel_pfit.c     | 168 +++++++++++++++++-
>>  drivers/gpu/drm/i915/display/intel_pfit.h     |  10 +-
>>  .../gpu/drm/i915/display/intel_pfit_regs.h    |  79 ++++++++
>>  drivers/gpu/drm/i915/display/vlv_dsi.c        |   2 +-
>>  drivers/gpu/drm/i915/i915_reg.h               |  70 --------
>>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   1 +
>>  16 files changed, 268 insertions(+), 242 deletions(-)
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_pfit_regs.h
>>=20
>> --=20
>> 2.39.5

--=20
Jani Nikula, Intel
