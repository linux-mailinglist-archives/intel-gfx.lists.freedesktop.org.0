Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 136317CEB25
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Oct 2023 00:26:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDF3310E45E;
	Wed, 18 Oct 2023 22:26:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7DEE10E42D
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 22:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697667984; x=1729203984;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9Zsc3UwO/537EUVHr9Q1PmWSVWnZPC5p2Q/wPNE1SkE=;
 b=RItM3ZxAVG70Iivl7ApXQzXOjHDAdHd2BRFWJg6XgM+iLC6yXk6azr/g
 72XRXtJEAbhuiLSAVeVAn/VY3vO+KCy6slHnS5bvAZ55PP0z/vCS10egG
 iHoX9dwBa0eKJyCAqRwl8YoByFneeFEVFMPvjmgw4Bh/IuIWtbYUiMSuV
 icO/4CPXr9GmtTupMp9sGWDqrk6iS+kYodjVhK+uuaScY9YKfTyH9l97n
 It+wtjvWyPaUXdDMzpohtauLnSBC3U0NvSNWmqcD/zvdnKxZmSecKoMne
 ch5Tj7/c4cF5hr4LlDcMZDm4SHAnfF30vHE+GsGUevg11kiETWyOmqCR+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="452598204"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; d="scan'208";a="452598204"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 15:24:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="750272578"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; d="scan'208";a="750272578"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 15:24:51 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Oct 2023 15:24:39 -0700
Message-Id: <20231018222441.4131237-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] drm/i915/lnl: Assign correct phys
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
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
would all be in the same abstraction layer. Any thoughts?

Lucas De Marchi (2):
  drm/i915/lnl: Extend C10/C20 phy
  drm/i915/lnl: Fix check for TC phy

 drivers/gpu/drm/i915/display/intel_cx0_phy.c |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c | 29 ++++++++++----------
 drivers/gpu/drm/i915/i915_drv.h              |  1 +
 3 files changed, 17 insertions(+), 15 deletions(-)

-- 
2.40.1

