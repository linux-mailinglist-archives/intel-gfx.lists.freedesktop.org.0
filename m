Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8CB251C593
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 19:00:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4CD710EA8F;
	Thu,  5 May 2022 17:00:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18B7510EA8F
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 May 2022 17:00:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651770049; x=1683306049;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=s3bvzzVbF776Ek4PEcH3UBqBvtXDBpQpiNpyaXDZp3o=;
 b=S86LucmQ+v+tt5DnhExvpxU8TtgTSEloLSDUoKzzIy5nutDaFa3iF9N9
 aZjUBlbXrMK5n7YTY3snY/qQ+0Mbf4P0sUUIbiVux5k8hs3TY3RZSImcZ
 YqtUEOkihtkTVsb2ledONrDYBc8NaZZFpKC8xzgSngmbhH9nDr0yIaKLr
 jMnGp+QoIuqogU5s4zvkfAFQ0DqvJEB00IDsHDFQhnNtVwm/k+2DGsZ3W
 6zzKRgm1IDBVtcH9hoGJPLEpO+LltGHcPcS0L1XCc78koE/vlKWF5GLHf
 72EOzG5028ZzSdiDI4zJeRwsVNK0oQp+97ZAOehQqxl/bCDQnavmfwJty w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="328723782"
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="328723782"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 10:00:47 -0700
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="632523205"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 10:00:47 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 May 2022 09:57:05 -0700
Message-Id: <20220505165707.813926-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] DG2 DMC Support
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

While DG2 supports DC5 and DC9, some of the tests in
fast-feedback blew up DG2 when the tests forced transition
from dc5->dc9 on suspend and dc9->dc5 on resume. Some local
experiments performed with Rodrigo on a RIL system  showed promising
results when dc5 was completely diabled and i915 took only dc9 paths.

Sending this so we can check the CI results to confirm the
findings from local testing which will hopefully help narrow
down the root cause of MMIO BAR lost issue

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Imre Deak <imre.deak@intel.com>

Anusha Srivatsa (1):
  drm/i915/dmc: Load DMC on DG2

 drivers/gpu/drm/i915/display/intel_display_power.c |  4 +++-
 drivers/gpu/drm/i915/display/intel_dmc.c           | 10 +++++++++-
 2 files changed, 12 insertions(+), 2 deletions(-)

-- 
2.25.1

