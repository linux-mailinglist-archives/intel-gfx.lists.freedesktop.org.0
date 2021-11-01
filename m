Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E43114423E2
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Nov 2021 00:21:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 851656EB83;
	Mon,  1 Nov 2021 23:21:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EF9C6EB7F;
 Mon,  1 Nov 2021 23:21:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="231402604"
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="231402604"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 16:21:16 -0700
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="500256737"
Received: from ebijkerk-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.251.215.48])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 16:21:13 -0700
Date: Tue, 2 Nov 2021 00:21:11 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <YYB2Z3QT7Dru1w+c@intel.intel>
References: <20211029032817.3747750-1-matthew.d.roper@intel.com>
 <20211029032817.3747750-4-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211029032817.3747750-4-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 03/10] drm/i915: Restructure probe to
 handle multi-tile platforms
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 dri-devel@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matt,

> +static int
> +intel_gt_tile_setup(struct intel_gt *gt, unsigned int id, phys_addr_t phys_addr)

I have already r-b this, but, as I commented in patch 5, 'id' is
redundant. Can we remove it?

Andi

> +{
> +	int ret;
> +
> +	intel_uncore_init_early(gt->uncore, gt->i915);
> +
> +	ret = intel_uncore_setup_mmio(gt->uncore, phys_addr);
> +	if (ret)
> +		return ret;
> +
> +	gt->phys_addr = phys_addr;
> +
> +	return 0;
> +}

[...]

> +	/* We always have at least one primary GT on any device */
> +	ret = intel_gt_tile_setup(&i915->gt, 0, phys_addr);
> +	if (ret)
> +		return ret;
> +
> +	/* TODO: add more tiles */
> +	return 0;
> +}
