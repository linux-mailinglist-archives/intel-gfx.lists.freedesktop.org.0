Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C205EDA50
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 12:45:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A35C510E413;
	Wed, 28 Sep 2022 10:44:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1819710E408
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 10:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664361892; x=1695897892;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NJ41/D5AnqzmYpqL05CMjlG7/LL2tMAPxwQBBnDsIqU=;
 b=X28TI3ucM1Vyq/pKVm3GShOg32SJandAGGxIXnT2KDbBDG2XGloKpDS8
 PRr7zwew0G8CX/Z2O1cRDQGisiAYU82FwRPMVBvfgRzzbl3yrOgr7WhVt
 FbnU8rm0A45lNQom8RpaTLRUM6fpJnLSfOkBviuiCq8TeqrPwOj3gTVg2
 oEv+1vu3tz//KfN/QTPekJki8DR7QWXQaon45P6b71Vdv+62n73+oANqv
 luYALNm5uQvwGteByDr3JFIMlUoFGilwNbefEE5wm0MToje9qAX+sTCGx
 eb0mzmwgBdaEyLoLGJnx4GlQhi3ir5wXJOQKrjoSzOippNIaflPLhm1Ha Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="387851398"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200"; d="scan'208";a="387851398"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 03:44:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="624106465"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200"; d="scan'208";a="624106465"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 28 Sep 2022 03:44:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 28 Sep 2022 13:44:34 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Sep 2022 13:44:30 +0300
Message-Id: <20220928104434.29586-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] drm/i915: Per-crtc/connector DRRS debugfs
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Chang DRRS debugfs to be per-crtc/connector.

Test-with: 20220928060601.12941-2-ville.syrjala@linux.intel.com

Ville Syrjälä (4):
  drm/i915: Move DRRS debugfs next to the implementation
  drm/i915: Make the DRRS debugfs contents more consistent
  drm/i915: Make DRRS debugfs per-crtc/connector
  drm/i915: Fix locking in DRRS debugfs

 .../drm/i915/display/intel_display_debugfs.c  |  98 +---------------
 drivers/gpu/drm/i915/display/intel_drrs.c     | 108 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_drrs.h     |   2 +
 3 files changed, 113 insertions(+), 95 deletions(-)

-- 
2.35.1

