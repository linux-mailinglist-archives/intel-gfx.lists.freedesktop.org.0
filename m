Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 780CE6D0B65
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 18:34:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A74E410E198;
	Thu, 30 Mar 2023 16:34:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B37510E198
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 16:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680194083; x=1711730083;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=HwcAuV5dSwQwTqbKue6kD4ddg6bJbIdCZr2fesnm+UM=;
 b=KGGTosHIFCoNDPQVhddleh+TWPVt00pMb6EQCSOUIOutf5usqQ5J40uA
 mo2tsimohgFYnSJglMseZPIupukHnXO1gvSQGEQAc8BGc+WaKjetLPtS7
 BA4NARcB8UrYxOObgwxU6/YdZSfZ1hbzyrB+NeQRAeviUjlhluivPyuje
 kjwRjO4OGEhLVhtQzqooVu9nHx9Rq4rad6CZSrC/YnasGxKJXFMEGfrTb
 Z9YWzcjdd0UaQrH5TJAI/PU5qpGw4lI/d/6U/jyFmLG6g52nV93G+PKC8
 29mvoXVPMhZueXLTnPgsR69mjU8TEdX3omFcFFAldb0VMXNM2puTgtaKk g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="406214620"
X-IronPort-AV: E=Sophos;i="5.98,305,1673942400"; d="scan'208";a="406214620"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 09:34:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="749267373"
X-IronPort-AV: E=Sophos;i="5.98,305,1673942400"; d="scan'208";a="749267373"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 09:34:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Das, Nirmoy" <nirmoy.das@linux.intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <72de05c2-68ad-72aa-23a2-4ef220f51a12@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1678973282.git.jani.nikula@intel.com>
 <72de05c2-68ad-72aa-23a2-4ef220f51a12@linux.intel.com>
Date: Thu, 30 Mar 2023 19:34:38 +0300
Message-ID: <87leje2o69.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 0/7] drm/i915/regs: split display regs by
 function
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

On Thu, 16 Mar 2023, "Das, Nirmoy" <nirmoy.das@linux.intel.com> wrote:
> On 3/16/2023 2:29 PM, Jani Nikula wrote:
>> Shave off 1.2k lines from i915_reg.h.
>>
>> Jani Nikula (7):
>>    drm/i915/pps: split out PPS regs to a separate file
>>    drm/i915/tv: split out TV regs to a separate file
>>    drm/i915/aux: split out DP AUX regs to a separate file
>>    drm/i915/fdi: split out FDI regs to a separate file
>>    drm/i915/wm: split out SKL+ watermark regs to a separate file
>>    drm/i915/psr: split out PSR regs to a separate file
>>    drm/i915/dsb: split out DSB regs to a separate file
>
> Some of the files are new to me but haven't seen any functional changes 
> so I am confident say the series is
>
> Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

Thanks, pushed everything except the wm and psr patches that conflicted.

BR,
Jani.


>
>
> Thanks,
>
> Nirmoy
>
>>   drivers/gpu/drm/i915/display/intel_crt.c      |    1 +
>>   .../drm/i915/display/intel_display_debugfs.c  |    1 +
>>   .../drm/i915/display/intel_display_power.c    |    2 +
>>   .../i915/display/intel_display_power_well.c   |    1 +
>>   drivers/gpu/drm/i915/display/intel_dp_aux.c   |    1 +
>>   .../gpu/drm/i915/display/intel_dp_aux_regs.h  |   84 ++
>>   drivers/gpu/drm/i915/display/intel_dsb.c      |    1 +
>>   drivers/gpu/drm/i915/display/intel_dsb_regs.h |   67 +
>>   drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |    1 +
>>   drivers/gpu/drm/i915/display/intel_fdi.c      |    1 +
>>   drivers/gpu/drm/i915/display/intel_fdi_regs.h |  151 ++
>>   drivers/gpu/drm/i915/display/intel_lvds.c     |    1 +
>>   .../gpu/drm/i915/display/intel_pch_display.c  |    1 +
>>   drivers/gpu/drm/i915/display/intel_pps.c      |    1 +
>>   drivers/gpu/drm/i915/display/intel_pps_regs.h |   78 ++
>>   drivers/gpu/drm/i915/display/intel_psr.c      |    1 +
>>   drivers/gpu/drm/i915/display/intel_psr_regs.h |  260 ++++
>>   drivers/gpu/drm/i915/display/intel_tv.c       |    3 +-
>>   drivers/gpu/drm/i915/display/intel_tv_regs.h  |  490 +++++++
>>   drivers/gpu/drm/i915/display/skl_watermark.c  |    1 +
>>   .../gpu/drm/i915/display/skl_watermark_regs.h |  165 +++
>>   drivers/gpu/drm/i915/gvt/edid.c               |    1 +
>>   drivers/gpu/drm/i915/gvt/handlers.c           |    5 +
>>   drivers/gpu/drm/i915/i915_irq.c               |    2 +
>>   drivers/gpu/drm/i915/i915_reg.h               | 1219 -----------------
>>   drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |    4 +
>>   26 files changed, 1323 insertions(+), 1220 deletions(-)
>>   create mode 100644 drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
>>   create mode 100644 drivers/gpu/drm/i915/display/intel_dsb_regs.h
>>   create mode 100644 drivers/gpu/drm/i915/display/intel_fdi_regs.h
>>   create mode 100644 drivers/gpu/drm/i915/display/intel_pps_regs.h
>>   create mode 100644 drivers/gpu/drm/i915/display/intel_psr_regs.h
>>   create mode 100644 drivers/gpu/drm/i915/display/intel_tv_regs.h
>>   create mode 100644 drivers/gpu/drm/i915/display/skl_watermark_regs.h
>>

-- 
Jani Nikula, Intel Open Source Graphics Center
