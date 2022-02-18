Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7704BB5F6
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 10:53:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A232E10F210;
	Fri, 18 Feb 2022 09:53:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4A4D10F20B
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Feb 2022 09:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645178023; x=1676714023;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DPaQ9LCeeonQj/4OGAghXBzs0cNz1ibQcVHZDpgk8ik=;
 b=QxK7nP/DWp1z6DamROZPiuWalhRh9V8IxKhKR7vBOAPIdhsbDCDw5j5x
 VJ614697/MTX9sJLRzgd6qLuif9Py9/YMG4fO6u9l8TGYDKjsDgWkLovm
 H/jPeRgMaTf6G96/BwSqi8Fp1Sm4DP0JkDs6VPyNBDxEAjSsdYvIUSJ7C
 Ul+AxKio2oOltB8OI2yyLM50A9dCGnh2w3UOV7Aa2BUZF/DcUioepcOCl
 seiGCXk4n59HAO5D02xXCGtDu57B3PO0OFujjF+rpZUKQi4PJ+RNiHklL
 AYE9SGQSSnyhFcC4MEshQt23z0JYS8tEVBsQj7bAnK4b/nPt+Hco55wYB Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="248691405"
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="248691405"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 01:53:43 -0800
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="637693770"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 01:53:43 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Feb 2022 01:54:36 -0800
Message-Id: <20220218095438.451576-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] drm/i915/dg2: Do not use phy E
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

This is an alternative to
https://patchwork.freedesktop.org/series/100151/
("drm/i915/dg2: 5th Display output").

We tried to enable the 5th port in order to get rid of
the unclaimed register access, but even after the basic plumbing, we
are still getting and error that the phy failed to calibrate.

So, rather than enabling it and needing another fix on top later, let's
just fix the immediate issue: we are initializing only 4 ports/phys, but
intel_phy_is_snps() returns we have 5, so we access registers we
shouldn't.

I'm still bringing "drm/i915/dg2: Drop 38.4 MHz MPLLB tables", as that
is just eliminating dead code.

Lucas De Marchi (1):
  drm/i915/dg2: Do not use phy E

Matt Roper (1):
  drm/i915/dg2: Drop 38.4 MHz MPLLB tables

 drivers/gpu/drm/i915/display/intel_display.c  |   5 +-
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 208 +-----------------
 2 files changed, 4 insertions(+), 209 deletions(-)

-- 
2.35.1

