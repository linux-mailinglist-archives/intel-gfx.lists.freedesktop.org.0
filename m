Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF6D495B8B
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 09:06:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F89D10E8F7;
	Fri, 21 Jan 2022 08:06:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B93910E8F7
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 08:06:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642752370; x=1674288370;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zQGfWjy4hx7X96WhTbToYlCVgxE+HG5mTIvIPmsekO4=;
 b=PPVGxTQrs2rQj+r5hiqHAQwajjpRrThhkuQML2qrzkVChmXhZGzQvgyb
 p2uKOY8VwYUvcisUWrLzBkAOCG9IEZQTb/Yh5t0TTKMUu6PnWYt6QW7G2
 tBacLK7cal1nhOlZ68mFB+vuEhl/62gYP3ls+4neia12MSH2weQldvLih
 OqT/8f34DYv1jvwWpnVz9DlXpprusFmp9LUOsnl4tNO/FtOmh2DGe/9hZ
 m5JpVksrQL/fY+Mg/TkICm+0YkfdIzuppKHdccZvHtFgVp8WItZG2pwlg
 YaTZ4wQwkevHTcrmxOG12mtjFJsazfuQOuOaqwG3UsSsjBconGK0u9rgK g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="270015039"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="270015039"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 00:06:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="561783854"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga001.jf.intel.com with ESMTP; 21 Jan 2022 00:06:08 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jan 2022 10:06:11 +0200
Message-Id: <20220121080615.9936-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] Async flip optimization for DG2
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

Limitting the WM levels to 0 for DG2 during async flips,
allows to slightly increase the performance, as recommended
by HW team.

Stanislav Lisovskiy (4):
  drm/i915: Pass plane to watermark calculation functions
  drm/i915: Introduce do_async_flip flag to intel_plane_state
  drm/i915: Use wm0 only during async flips for DG2
  drm/i915: Don't allocate extra ddb during async flip for DG2

 .../gpu/drm/i915/display/intel_atomic_plane.c |  5 +-
 .../gpu/drm/i915/display/intel_atomic_plane.h |  3 ++
 drivers/gpu/drm/i915/display/intel_display.c  | 31 +++++++++++-
 .../drm/i915/display/intel_display_types.h    |  3 ++
 drivers/gpu/drm/i915/intel_pm.c               | 49 ++++++++++++++++---
 5 files changed, 80 insertions(+), 11 deletions(-)

-- 
2.24.1.485.gad05a3d8e5

