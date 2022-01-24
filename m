Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77240497B00
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 10:06:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 865C610E764;
	Mon, 24 Jan 2022 09:06:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7454410E74A
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jan 2022 09:06:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643015207; x=1674551207;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZlKdlEofURFXxCkq/nObqXquG3kNpKQfRFakcPGddm8=;
 b=QKi7B8Al/YblE0TKLIg9Por/485Hyp5Rq9SzOfhC40jVq6qyWOgUud4y
 KkKCGHyLygi3OFSFoqLLh35TyTkc5Q7ibzPbzOSD3k3wX2L2E2cXxrOiM
 fAJarYGbxkzP9qJGhC7dFuN7UlJ2FJxMiZBuoeecVz+cSRwo8JH7uWIem
 m+h2c4/T1eryRoAbQCdVUmGLZqYfXruU6JvGUJcbyrbjIeaPuKBos7j65
 R+BNG9WWBUiV2jauDR+t0Sk2T1FyL/5Rz6Lp2HsuZAb9iWvKUMAbwCrzy
 FGYeXaNebds3PMjULbbVkXaRCnK0nJR1Hs8cOvNIRy+JpPX1rMcOVev7b g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10236"; a="245782519"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="245782519"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 01:06:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="627424638"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga004.jf.intel.com with ESMTP; 24 Jan 2022 01:06:45 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jan 2022 11:06:49 +0200
Message-Id: <20220124090653.14547-1-stanislav.lisovskiy@intel.com>
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
 .../gpu/drm/i915/display/intel_atomic_plane.h |  4 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 31 ++++++-
 .../drm/i915/display/intel_display_types.h    |  3 +
 drivers/gpu/drm/i915/intel_pm.c               | 83 ++++++++++++++-----
 5 files changed, 102 insertions(+), 24 deletions(-)

-- 
2.24.1.485.gad05a3d8e5

