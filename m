Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC165F1E93
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Oct 2022 20:25:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB13310E4C0;
	Sat,  1 Oct 2022 18:25:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6340910E4C0
 for <intel-gfx@lists.freedesktop.org>; Sat,  1 Oct 2022 18:25:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664648709; x=1696184709;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7hVcSU7PzC2BdyLbwG/NHif/DIMj1uwcFRK82ponTXI=;
 b=NWoPcoPFXZwBehPjT09EgDcwKlnEi25IrRw6zmCYDHBTf1NLWtvdNW+1
 O3RfmVqviK3An3NbBXY0u5XjzKO6IgHgBUWFJim6mUaRsO91AfRMzrArj
 M9wqAHGQZeQGADFzXGgObky3qOfTInI4JhBypJiXEexPBf9xfQBidoTpf
 uIk5AZIUQgf22ePj6vILmVoXJBWBZBPJ+/35Um79cbkDALEUlNz5ndRSV
 wCm8Emi9pGozzq6F+MEHW/n+HRNIFnAr9LFHHjt/1171Llh5/8nN0Az7b
 rwyrUC0gb97ppahH+T7r9KSSU65doDKjwlosB6ChZJwY2gpMWgMELIZau w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10487"; a="303893428"
X-IronPort-AV: E=Sophos;i="5.93,361,1654585200"; d="scan'208";a="303893428"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2022 11:25:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10487"; a="685655010"
X-IronPort-AV: E=Sophos;i="5.93,361,1654585200"; d="scan'208";a="685655010"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 01 Oct 2022 11:25:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 01 Oct 2022 21:25:05 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  1 Oct 2022 21:25:01 +0300
Message-Id: <20221001182505.3675-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/4] drm/i915: Per-crtc/connector DRRS debugfs
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

v2: for ci to actually run the drrs tests...

Test-with: 20220929032642.16556-1-ville.syrjala@linux.intel.com

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

