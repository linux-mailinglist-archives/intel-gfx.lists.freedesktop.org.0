Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 427B24B947C
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 00:28:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CC6810E628;
	Wed, 16 Feb 2022 23:28:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E245210E628
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 23:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645054089; x=1676590089;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/JM54WG1LuhlbXYowwQYTNC1L5dpfSrmnwXvT7OQ1d4=;
 b=iJt2jJeMuUeAokxTQz0Ue/H5vUXjEYPnt8hyCBUnEdQ0I7PoJsnnPpo1
 uO/gB8nno6DI6zUYukMrYED0VLbvh8lgZ0+sPY7mX6Ip8s9n07g+MW/KX
 lDG76+9XsqFpfoHsPV93QFVsWGTCoh3xFJEhj6nzHSxtCAac50O6iVFHs
 qGVoZ/1wVGd7ywnbX/ZHVqC9FCmKPiOWdgh9LAc5Qd1b/3s81wLdbh4Ay
 94hLAqnJxJW7In4vLEPhQ5QHxRlkSQbWKWajGaxpeft/MB3Br03eI5VOm
 kay8scPtORPhmpJIGqjW5Oc4yKAv9E7SeGo2UA9zptzQvCjfdYmhoce1J Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="250481814"
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="250481814"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 15:28:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="571516568"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga001.jf.intel.com with SMTP; 16 Feb 2022 15:28:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Feb 2022 01:28:06 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Feb 2022 01:28:03 +0200
Message-Id: <20220216232806.6194-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/3] drm/i915: Plane/wm cleanups
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

Leftovers from the earlier series. Addressed Jani's review
comments to some degree and dealt with intel_mchbar_regs.h
appearing in the tree.

Ville Syrjälä (3):
  drm/i915: Introduce intel_crtc_planes_update_arm()
  drm/i915: Clean up SSKPD/MLTR defines
  drm/i915: Polish ilk+ wm register bits

 .../gpu/drm/i915/display/intel_atomic_plane.c | 23 +++--
 .../gpu/drm/i915/display/intel_atomic_plane.h | 10 +--
 drivers/gpu/drm/i915/display/intel_display.c  |  8 +-
 .../drm/i915/display/intel_display_debugfs.c  |  2 +-
 drivers/gpu/drm/i915/i915_reg.h               | 49 +++++------
 drivers/gpu/drm/i915/intel_mchbar_regs.h      | 17 ++--
 drivers/gpu/drm/i915/intel_pm.c               | 83 +++++++++----------
 7 files changed, 97 insertions(+), 95 deletions(-)

-- 
2.34.1

