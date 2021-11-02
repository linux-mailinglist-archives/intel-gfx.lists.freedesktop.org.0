Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91CC044386C
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Nov 2021 23:25:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58C14738E9;
	Tue,  2 Nov 2021 22:25:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74D90738E0;
 Tue,  2 Nov 2021 22:25:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="231633862"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="231633862"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 15:25:23 -0700
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="599673050"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 15:25:23 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Nov 2021 15:25:08 -0700
Message-Id: <20211102222511.534310-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] i915: Initial workarounds for Xe_HP SDV and
 DG2
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is the initial batch of workarounds for these two platforms.  There
are still more workarounds to come in the future (e.g., related to other
functionality that hasn't landed yet like compute engines, multi-tile,
etc.).


Matt Roper (2):
  drm/i915/dg2: Add initial gt/ctx/engine workarounds
  drm/i915/dg2: Program recommended HW settings

Stuart Summers (1):
  drm/i915/xehpsdv: Add initial workarounds

 drivers/gpu/drm/i915/gt/intel_workarounds.c | 392 +++++++++++++++++++-
 drivers/gpu/drm/i915/i915_reg.h             | 154 +++++++-
 drivers/gpu/drm/i915/intel_pm.c             |  31 +-
 3 files changed, 547 insertions(+), 30 deletions(-)

-- 
2.33.0

