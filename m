Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD1B6C4D65
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 15:21:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06BFE10E38A;
	Wed, 22 Mar 2023 14:21:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42A9510E38A
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 14:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679494865; x=1711030865;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XtKN9zz96Bfr/WiwLNDr/kzlHx+olBzcuiniiTv4yLw=;
 b=OfEkq+9MkBtf5MRgbNvy3m2/CnOFTw53nEKs5BDcvOCB17nxpv/97LO7
 /kAF66UgLQvH24wnhX3nhraywbqk7irEmdFABMlkBdwoIwPYYWHoSV479
 kbD9eSWVdE01KzO9lO0ID3erIYjGOZXCHHDfN1ipNxbQJtL8FdQaMxJp1
 dcrqScTIuq1a/x0325Nt/QQ1c7ZuPp1ItpAheD1q30q5qT6ycEDozAXr3
 ZzmMBHCR66wGT/ZbGU3hjDVy14OAaJ9FrMNcF76OWTksRybMdj7F8KgNc
 LwD7XnthMUIpnVOlL80gcaMuE+NQzwlhTLnTdXwX9BR4oIcXWakHE0Yjw Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="318868386"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="318868386"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 07:21:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="825417059"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="825417059"
Received: from unknown (HELO vgovind2-mobl3.tm.intel.com) ([10.237.50.35])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 07:21:02 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Mar 2023 16:20:49 +0200
Message-Id: <20230322142051.714161-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/2] Correction to QGV related register
 addresses
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Wrong offsets are calculated to read QGV points from mem ss. Also
a wrong register address is used to get the dagv block time. Fix
these two issues.

Vinod Govindapillai (2):
  drm/i915/reg: fix QGV points register access offsets
  drm/i915/reg: use the correct register to access SAGV block time

 drivers/gpu/drm/i915/i915_reg.h | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

-- 
2.34.1

