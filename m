Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B7C30419B
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 16:09:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16A896E453;
	Tue, 26 Jan 2021 15:09:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44B906E453
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 15:09:48 +0000 (UTC)
IronPort-SDR: Z0JhMpbCUDmdnArO4Qoq9GkksPQfcqAu/3pVTnv6fTk+DMiSI5NobuwEahcAIDyl9QMWfGgFBl
 Teva61WrEm2w==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="179993906"
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="179993906"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 07:09:47 -0800
IronPort-SDR: JEdQDPYvBS3ghtjFoKqS0/Kx/vQ15wa6+8PtO4fj9HdUR67Tn1tJWrsX686MhtGbgGr/pt6B9M
 YWVDvcOrs95w==
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="362013364"
Received: from egraha2x-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.111.78])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 07:09:44 -0800
Date: Tue, 26 Jan 2021 07:09:40 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20210126150940.4isqevzgifoseb63@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210125140753.347998-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210125140753.347998-1-aditya.swarup@intel.com>
Subject: Re: [Intel-gfx] [PATCH 00/10] Alderlake-S platform enabling patches
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I fixed a few checkpatch issues in the commit messages and pushed to
drm-intel topic/adl-s-enabling branch.

Thanks
Lucas De Marchi

On Mon, Jan 25, 2021 at 06:07:43AM -0800, Aditya Swarup wrote:
>This patch revises all the changes suggested in rev 3 of
>Introduce Alderlake-S series for first 10 patches.
>https://patchwork.freedesktop.org/patch/405772/?series=82917&rev=3
>
>Most of the patches have already been reviewed and are good for merge.
>I will resend rest of the series once we have focussed reviews on the
>pending patches.
>
>Please ignore the patch:
>x86/gpu: Add Alderlake-S stolen memory support
>as it was picked up to prevent compilation issues and maintaining
>sequence of patches.
>The correct location for picking the latest revision of that patch is
>here:
>https://patchwork.freedesktop.org/series/86239/
>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
>
>Aditya Swarup (5):
>  drm/i915/adl_s: Configure DPLL for ADL-S
>  drm/i915/adl_s: Configure Port clock registers for ADL-S
>  drm/i915/adl_s: Initialize display for ADL-S
>  drm/i915/adl_s: Add adl-s ddc pin mapping
>  drm/i915/adl_s: Add vbt port and aux channel settings for adls
>
>Anusha Srivatsa (3):
>  drm/i915/adl_s: Add PCH support
>  drm/i915/adl_s: Add Interrupt Support
>  drm/i915/adl_s: Add PHYs for Alderlake S
>
>Caz Yokoyama (1):
>  x86/gpu: Add Alderlake-S stolen memory support
>
>Matt Roper (1):
>  drm/i915/adl_s: Update combo PHY master/slave relationships
>
> arch/x86/kernel/early-quirks.c                |  1 +
> drivers/gpu/drm/i915/display/intel_bios.c     | 70 +++++++++++++++----
> .../gpu/drm/i915/display/intel_combo_phy.c    | 11 ++-
> drivers/gpu/drm/i915/display/intel_ddi.c      | 62 ++++++++++------
> drivers/gpu/drm/i915/display/intel_display.c  | 31 +++++---
> drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 38 ++++++++--
> drivers/gpu/drm/i915/display/intel_hdmi.c     | 20 +++++-
> drivers/gpu/drm/i915/display/intel_vbt_defs.h |  4 ++
> drivers/gpu/drm/i915/i915_irq.c               |  3 +-
> drivers/gpu/drm/i915/i915_reg.h               | 50 +++++++++++--
> drivers/gpu/drm/i915/intel_pch.c              |  8 ++-
> drivers/gpu/drm/i915/intel_pch.h              |  3 +
> 12 files changed, 246 insertions(+), 55 deletions(-)
>
>-- 
>2.27.0
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
