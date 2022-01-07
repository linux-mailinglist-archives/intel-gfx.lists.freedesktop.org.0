Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA0C487B12
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jan 2022 18:11:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 070AA11A52E;
	Fri,  7 Jan 2022 17:11:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF71B11A52E
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jan 2022 17:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641575464; x=1673111464;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=hZGs1fuj1CvN61Qw5pdvQLIOdoNwRvqcWsTSTqRIaZw=;
 b=AXCN/l6jAu+FBpQK9F11XXFhdhVgaGYpReDnUg2LympnPsVm63/L0ca6
 j2tpFuALH4mBGyih5s/eFSwAbXnzApxfAsbkOghNsIoUa8PpErkb//G2d
 LkeFo1Jn8vYC45dMfPMC2HekICv4FQFQdr0h71PhCWanELl5RnkAXnDyQ
 6QvG9GCy/C6/9irhpFEqaAxdmahv/XuIWjOoJHYI1s3uclGfAowFsaz1Q
 O3lj4g4JG3Owqrsy0XrXKn/1wf4yBr/ZLR0cUoTx6Y1FdLCZ0y3D1muIW
 2auILzYC+39y5USesMcJE9GuqCsxLveEBOTmqKozjhTBSdR666X/Masq7 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10219"; a="243099059"
X-IronPort-AV: E=Sophos;i="5.88,270,1635231600"; d="scan'208";a="243099059"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 09:10:32 -0800
X-IronPort-AV: E=Sophos;i="5.88,270,1635231600"; d="scan'208";a="591763409"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 09:10:32 -0800
Date: Fri, 7 Jan 2022 09:10:31 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Ydh0B45uYhxMmznT@mdroper-desk1.amr.corp.intel.com>
References: <20220107094951.96181-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220107094951.96181-1-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: split out PCI config space
 registers from i915_reg.h
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

On Fri, Jan 07, 2022 at 11:49:49AM +0200, Jani Nikula wrote:
> The PCI config space registers don't really belong next to the MMIO
> register definitions.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
...
> diff --git a/drivers/gpu/drm/i915/intel_pci_config.h b/drivers/gpu/drm/i915/intel_pci_config.h
> new file mode 100644
> index 000000000000..db35b91d36e0
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/intel_pci_config.h
> @@ -0,0 +1,85 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2021 Intel Corporation

It's 2022 now!

Otherwise,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
