Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EBE36BD5FB
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 17:38:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2B4810E250;
	Thu, 16 Mar 2023 16:38:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2B8810E250
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 16:38:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678984732; x=1710520732;
 h=message-id:date:mime-version:from:subject:to:references:
 in-reply-to:content-transfer-encoding;
 bh=nDhUE9Ucrt3o4COG0qvMxxDssrPqovgSZtYFZKgfvUU=;
 b=EKr/0QXcRQR0pYFjc5rcRPAavB3b6z90mF1SauE7P82wBYuaj+t0Otct
 OrOXtVwA5CDCIu+2CGATjT7Eareg9AF2M00X7sntlCf4nKDS4G8adS+7Y
 +Yu60ldQ3dMej61bRfCc1NguU0AyFUA/qYHKMosw3vCg7fdrpjOBCvWJI
 nLAYy5Gg7kDR+EzkwObh9FS1fcYzrnHFqJ7qCNmWDO4EPR7UAuhY04Oi6
 S5vl3oBG1+aHug2XFrAjacj73S9SORT26aFivpZdBUGx5wUULECF1wOyP
 NX2ofRcWwuNNm8QYqx8Ps+4oX6jWLfza/vQRXX9O1JSwmGTNTby+AisC8 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="424319260"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="424319260"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 09:38:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="679970551"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="679970551"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.34.106])
 ([10.252.34.106])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 09:38:51 -0700
Message-ID: <72de05c2-68ad-72aa-23a2-4ef220f51a12@linux.intel.com>
Date: Thu, 16 Mar 2023 17:38:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1678973282.git.jani.nikula@intel.com>
Content-Language: en-US
In-Reply-To: <cover.1678973282.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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


On 3/16/2023 2:29 PM, Jani Nikula wrote:
> Shave off 1.2k lines from i915_reg.h.
>
> Jani Nikula (7):
>    drm/i915/pps: split out PPS regs to a separate file
>    drm/i915/tv: split out TV regs to a separate file
>    drm/i915/aux: split out DP AUX regs to a separate file
>    drm/i915/fdi: split out FDI regs to a separate file
>    drm/i915/wm: split out SKL+ watermark regs to a separate file
>    drm/i915/psr: split out PSR regs to a separate file
>    drm/i915/dsb: split out DSB regs to a separate file

Some of the files are new to me but haven't seen any functional changes 
so I am confident say the series is

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>


Thanks,

Nirmoy

>   drivers/gpu/drm/i915/display/intel_crt.c      |    1 +
>   .../drm/i915/display/intel_display_debugfs.c  |    1 +
>   .../drm/i915/display/intel_display_power.c    |    2 +
>   .../i915/display/intel_display_power_well.c   |    1 +
>   drivers/gpu/drm/i915/display/intel_dp_aux.c   |    1 +
>   .../gpu/drm/i915/display/intel_dp_aux_regs.h  |   84 ++
>   drivers/gpu/drm/i915/display/intel_dsb.c      |    1 +
>   drivers/gpu/drm/i915/display/intel_dsb_regs.h |   67 +
>   drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |    1 +
>   drivers/gpu/drm/i915/display/intel_fdi.c      |    1 +
>   drivers/gpu/drm/i915/display/intel_fdi_regs.h |  151 ++
>   drivers/gpu/drm/i915/display/intel_lvds.c     |    1 +
>   .../gpu/drm/i915/display/intel_pch_display.c  |    1 +
>   drivers/gpu/drm/i915/display/intel_pps.c      |    1 +
>   drivers/gpu/drm/i915/display/intel_pps_regs.h |   78 ++
>   drivers/gpu/drm/i915/display/intel_psr.c      |    1 +
>   drivers/gpu/drm/i915/display/intel_psr_regs.h |  260 ++++
>   drivers/gpu/drm/i915/display/intel_tv.c       |    3 +-
>   drivers/gpu/drm/i915/display/intel_tv_regs.h  |  490 +++++++
>   drivers/gpu/drm/i915/display/skl_watermark.c  |    1 +
>   .../gpu/drm/i915/display/skl_watermark_regs.h |  165 +++
>   drivers/gpu/drm/i915/gvt/edid.c               |    1 +
>   drivers/gpu/drm/i915/gvt/handlers.c           |    5 +
>   drivers/gpu/drm/i915/i915_irq.c               |    2 +
>   drivers/gpu/drm/i915/i915_reg.h               | 1219 -----------------
>   drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |    4 +
>   26 files changed, 1323 insertions(+), 1220 deletions(-)
>   create mode 100644 drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
>   create mode 100644 drivers/gpu/drm/i915/display/intel_dsb_regs.h
>   create mode 100644 drivers/gpu/drm/i915/display/intel_fdi_regs.h
>   create mode 100644 drivers/gpu/drm/i915/display/intel_pps_regs.h
>   create mode 100644 drivers/gpu/drm/i915/display/intel_psr_regs.h
>   create mode 100644 drivers/gpu/drm/i915/display/intel_tv_regs.h
>   create mode 100644 drivers/gpu/drm/i915/display/skl_watermark_regs.h
>
