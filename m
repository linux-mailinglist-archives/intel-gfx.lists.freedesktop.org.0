Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC627D8878
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 20:40:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6521210E855;
	Thu, 26 Oct 2023 18:40:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C1A210E851
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 18:40:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698345614; x=1729881614;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CEOSDmnmCFAe+K8smfO8XvxS52MO5rna6gHV/dmc3XU=;
 b=M5Rp+bWp6ukhvcRW33alHF5jJnawi1qPBVQYgI6LTdiD+NdmrLbeKupp
 G6M5ZLMRb5Qq4MtXLQw9UP3nFtiY5aevMuRV6bWVJAyjH9EYJpjqTtLwm
 DrHNKI5qsXwgg5b40XPCbHO5kh0IdzW1rsj86sDlB60PEXSbkFXXkuuvP
 y5m1ho7eOCt9fXTXZdiMWne2SPrOozaDFc8Qi1pg+6IDZuy0UlnHQ8GzN
 DN3wEoZW2mRKkx3L0QE9+Vx1KOfPbpZ0cQJcvpzab3SusCUnzSgzwlKtj
 OOUjPDm2jnQakob7H54wNWSwFYVOeKSZpN33AESq7oRPFJC9h3wEZF2t+ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="431866"
X-IronPort-AV: E=Sophos;i="6.03,254,1694761200"; 
   d="scan'208";a="431866"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 11:40:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="788597398"
X-IronPort-AV: E=Sophos;i="6.03,254,1694761200"; d="scan'208";a="788597398"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 11:40:12 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Oct 2023 11:40:43 -0700
Message-Id: <20231026184045.1015655-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/2] drm/i915/lnl: Assign correct phys
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For this series to work, we still need a separate patch on the xe side
so it defines the LNL platform macro to be used by display.

One thing missing for LNL during the previous patches was the
port <-> phy assignment. With the bspec now clarified, this is the
minimum changes needed for LNL.  As the commit messages say and after
looking at the history of the code, it seems we were thinking to go one
direction abstraction-wise with DG2, but reverted course with MTL. The
end result right now is a very confusing mix of port/phy/tc_port.
I was hoping to do a cleanup now, but we probably need some consensus on
the approach as it'd be an intrusive change.

Here are some thoughts after looking again at the current state of the
code:

1) What is the port -> phy conversion for? AFAIR this was because from
the display engine side we want, some registers have bit offsets based
on the port and others are based on the PHY. I think now we can

	a) Remove enum tc_port and have only `enum port` and `enum phy`.
	   Those should be sufficient for all platform needs afaics

	b) Add phy to intel_encoder (or intel_digital_port). It's
	   appalling number of places we convert from port to phy. That
	   would just be initialized during init.

2) It looks we need to better abstract the phy handling. Right now it's
very confusing with dkl, c10/c20 (that leak the abstraction from
intel_cx0_phy.c to everywhere in the driver), snps and the older
combo/tc being a superset of them.  I'm still not sure what to do here.
One thing that we can probably do is to remove the dg2-special case and
let the "is tc" be about the **port being connected to a TC-capable phy**.
Bspec always refer to those as TC<N> / USBC<N>. Then dkl, c10, c20, snps
would all be in the same abstraction layer.


Lucas De Marchi (2):
  drm/i915/lnl: Extend C10/C20 phy
  Subject: [PATCH] drm/i915/lnl: Fix check for TC phy

 drivers/gpu/drm/i915/display/intel_cx0_phy.c |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c | 28 ++++++++++----------
 drivers/gpu/drm/i915/i915_drv.h              |  1 +
 3 files changed, 16 insertions(+), 15 deletions(-)

-- 
2.40.1

