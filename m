Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 317354A5AFB
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Feb 2022 12:15:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0659910E52D;
	Tue,  1 Feb 2022 11:15:50 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 793B910E50A
 for <Intel-gfx@lists.freedesktop.org>; Tue,  1 Feb 2022 11:15:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643714148; x=1675250148;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TOuSVOiplhiB/odWE/iJ0gXmvKNfk3NGC5pcuXcbEBo=;
 b=g+whrHSsfI76EhRfJiM2130UR8ciBkiSs/iwHXRA4WaLARQU3eFCE7kN
 nxWDbpn7+KtxfHiJe3HgP8vYI5jI7nhKXCJ2d2JnOcnPLaU32Dn7y5WQJ
 jO2GtMhU7ynp59zA6MDaNMiiWa/2QOzInQgvPj6+OLGC6KBQxslVgY/Pg
 u5UY8Hhe8L4tcfdqQFZ16FkaHtamD+f1kBu07YwcMfuQZWvjIBOEiV3TC
 omNtN9hL7XzyFrXmNK71pg+tFkRh/hIimMLJkUxodyzmHlGfTpb2H/H2h
 3MDAxAFbWlS8Dpq4k09lR+BZZS2zv9OYDBiAMNi8atWFYiGCR3RiWYZWG A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="235062446"
X-IronPort-AV: E=Sophos;i="5.88,333,1635231600"; d="scan'208";a="235062446"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 03:15:48 -0800
X-IronPort-AV: E=Sophos;i="5.88,333,1635231600"; d="scan'208";a="698370289"
Received: from bconlan-mobl1.ger.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.213.212.46])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 03:15:46 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue,  1 Feb 2022 11:15:31 +0000
Message-Id: <20220201111533.250242-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 0/2] Compile out integrated
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Michael Cheng <michael.cheng@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Quicky and dirty hack based on some old ideas. Thought maybe the approach might
interest the Arm port guys. But with IS_GEN_RANGE removed easy gains are not so
big so meh.. Maybe some more easy wins with IS_DISPLAY_VER but I haven't looked
into that side.

 3884664  449681    6720 4341065  423d49 i915.ko.tip
 3599989  429034    6688 4035711  3d947f i915.ko.noigp

Note debug kconfig so everything is inflated. Whether or not the relative gain
would change with production kconfig I am not sure.

P.S.
I was a bit curious there were no build errors around functions no longer used
so either there were none (would mean patch is not really that effective), or
something changed with compiler warnings/smarts. Haven't looked into it.

Tvrtko Ursulin (2):
  igp kconfig
  jsl/ehl

 drivers/gpu/drm/i915/Kconfig                  |   5 +
 drivers/gpu/drm/i915/Kconfig.platforms        |   7 +
 .../drm/i915/display/intel_ddi_buf_trans.c    |   4 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   2 +-
 drivers/gpu/drm/i915/i915_drv.h               | 128 +++++++++++-------
 drivers/gpu/drm/i915/i915_pci.c               |  44 +++++-
 6 files changed, 134 insertions(+), 56 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/Kconfig.platforms

-- 
2.32.0

