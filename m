Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE4C7E29EA
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 17:37:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4874D10E356;
	Mon,  6 Nov 2023 16:37:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D14E10E356
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Nov 2023 16:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699288631; x=1730824631;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=lkFYKjRWlxwZmj7DMBN1tcd5xuHn/Jd2MiopPVF11hM=;
 b=gDtsXjzIfeHj5SghszC91qZByfP7LazYbQ0rxOhIfUY8366Zo4RrA/Gb
 eZbStZSyf9KSDDvyINYYPOLvVsG/QypFrKcNi0gdLlmpGTr27LZuuqFeo
 4wcCLxdIf81yLlMIDuXOnqdvEPxPuEdJDSf91aY7o9eStUMuhY9WmwthC
 wkuicTaa+LSTiwqd/iZualNBNSbo9KZaBObVnDyWCc2cdhcvsqiIWoRFD
 /uUSikTRE4FC8j8wTa114aVHRIfBWGeOkEDfS1UxNaI3RIFMGE5q9g/aV
 H1oSgVP/kcSFh5paIIBO45QTbYEPO6fxr5sytbQqFTyVGerdod/9lLIDl w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="379706109"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="379706109"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 08:37:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="828277852"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="828277852"
Received: from astrano-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.249.43.34])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 08:37:07 -0800
Date: Mon, 6 Nov 2023 17:37:05 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Message-ID: <ZUkWMUtLEozSdISF@ashyti-mobl2.lan>
References: <20231102175831.872763-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231102175831.872763-1-jonathan.cavitt@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Temporarily disable CPU
 caching into DMA for MTL
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
Cc: saurabhg.gupta@intel.com, intel-gfx@lists.freedesktop.org,
 chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jonathan,

On Thu, Nov 02, 2023 at 10:58:31AM -0700, Jonathan Cavitt wrote:
> FIXME: It is suspected that some Address Translation Service (ATS)
> issue on IOMMU is causing CAT errors to occur on some MTL workloads.
> Applying a write barrier to the ppgtt set entry functions appeared
> to have no effect, so we must temporarily use I915_MAP_WC in the
> map_pt_dma class of functions on MTL until a proper ATS solution is
> found.
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> CC: Chris Wilson <chris.p.wilson@linux.intel.com>

acked and pushed!

Thanks!
Andi
