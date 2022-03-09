Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9579D4D34FD
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 18:00:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7EBC10E2C1;
	Wed,  9 Mar 2022 17:00:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F14E110E3F1
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 17:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646845222; x=1678381222;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=B+hzn35PW33Kkf9mBefeTGDU9lwjZ1U/m9XEaMgZH8M=;
 b=NaAUi6ICS/Vsay/iuUsSLTaz8K0Sf1IGKqkiQkCQtj4h1GiQCqTiMqlp
 /VWliI2AtbC+T6aqOIMvA2t/SwKpCycto1zM60JU5W/1ti7AurZlqQd1l
 TX9iI0q9DPe2lEjw+OaqQWy33d1q1XQAvH0bhEDCxVhjL8T+TtOM9TMVn
 ALRdw/LJ83+GjLUKWDgBmIywgcvifMCgae0BIkCYPMaPsjeTsl2lClQYH
 X0KbrqVQdicKqA4Ul1zKIv9OUe7Kl7+nvf2BZihtmaIVdmucReHZezjM6
 dm7NiU4lHtQ5AcL9VT2ZKAt00TnrBMka1S6clXZWFdTnjDqXgSu0HC4Cb w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="237195132"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="237195132"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 08:49:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="688349819"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga001.fm.intel.com with SMTP; 09 Mar 2022 08:49:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Mar 2022 18:49:48 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Mar 2022 18:49:40 +0200
Message-Id: <20220309164948.10671-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/8] drm/i915: SAGV block time fixes
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

Try to fix SAGV block time handling:
- zero means no SAGV
- avoid integer overflows
- slightly better debug logs
- assorted cleanups

v2: reorder to allow stable backport of the zero->no SAGV patch
    Fix/clean some PSF GV stuff as well that caught my eye

Ville Syrjälä (8):
  drm/i915: Treat SAGV block time 0 as SAGV disabled
  drm/i915: Rework SAGV block time probing
  drm/i915: Probe whether SAGV works on pre-icl
  drm/i915: Reject excessive SAGV block time
  drm/i915: Rename pre-icl SAGV enable/disable functions
  drm/i915: Fix PSF GV point mask when SAGV is not possible
  drm/i915: Unconfuses QGV vs. PSF point masks
  drm/i915: Rename QGV request/response bits

 drivers/gpu/drm/i915/display/intel_bw.c | 39 ++++++-----
 drivers/gpu/drm/i915/i915_reg.h         | 17 +++--
 drivers/gpu/drm/i915/intel_pm.c         | 92 ++++++++++++++++---------
 3 files changed, 90 insertions(+), 58 deletions(-)

-- 
2.34.1

