Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B48D5F7068
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Oct 2022 23:37:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B00D610E4FF;
	Thu,  6 Oct 2022 21:37:12 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CD0110E4FF;
 Thu,  6 Oct 2022 21:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665092228; x=1696628228;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gkrJc2tHHR00aP1HbIKEoxOr5izkb9pNlt5VJ4cVMzE=;
 b=VHh20LtDR1ZzyHr7yo0AE2VlWJEh06mvBzOthpagfRc799kxQSoiUNZ2
 9z/6z849W5RZxbYURdoYqt/YRJNz4c3GvQ7Qrhgd2dAeMSbJ0oeRAc/Us
 AnESkb8ZlLoIi0eGbtlcm/1wra16UIktfO6yegXp6X3IeQg3wNp5W57Sp
 0rdGn6zcODcCuzQoirhcaUlYX3CeRIWCeLqGOhrqEV70QOJ8b8Ff5HDNa
 O9UtgkgdG35foipooIxKlPcUbAo8jMpqFSEma0bItrOizCtbAII34sLeZ
 1tfKGOgQ0pYnNIzGNOW9YsMC6u0uR2mpkJwj/PiLo/rz0+IGi5uCcR0n0 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="283945768"
X-IronPort-AV: E=Sophos;i="5.95,164,1661842800"; d="scan'208";a="283945768"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2022 14:37:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="627176751"
X-IronPort-AV: E=Sophos;i="5.95,164,1661842800"; d="scan'208";a="627176751"
Received: from relo-linux-5.jf.intel.com ([10.165.21.188])
 by fmsmga007.fm.intel.com with ESMTP; 06 Oct 2022 14:37:07 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Thu,  6 Oct 2022 14:38:09 -0700
Message-Id: <20221006213813.1563435-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 0/4] Improve anti-pre-emption w/a for compute
 workloads
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

Compute workloads are inherently not pre-emptible on current hardware.
Thus the pre-emption timeout was disabled as a workaround to prevent
unwanted resets. Instead, the hang detection was left to the heartbeat
and its (longer) timeout. This is undesirable with GuC submission as
the heartbeat is a full GT reset rather than a per engine reset and so
is much more destructive. Instead, just bump the pre-emption timeout
to a big value. Also, update the heartbeat to allow such a long
pre-emption delay in the final heartbeat period.

v2: Add clamping helpers.
v3: Remove long timeout algorithm and replace with hard coded value
(review feedback from Tvrtko). Also, fix execlist selftest failure and
fix bug in compute enabling patch related to pre-emption timeouts.
v4: Add multiple BUG_ONs to re-check already range checked values (Tvrtko)
v5: Add FIXMEs and drm_notices about setting non-default heartbeat
periods (Tvrtko)

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>


John Harrison (4):
  drm/i915/guc: Limit scheduling properties to avoid overflow
  drm/i915: Fix compute pre-emption w/a to apply to compute engines
  drm/i915: Make the heartbeat play nice with long pre-emption timeouts
  drm/i915: Improve long running compute w/a for GuC submission

 drivers/gpu/drm/i915/Kconfig.profile          |  26 ++++-
 drivers/gpu/drm/i915/gt/intel_engine.h        |   6 ++
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 102 +++++++++++++++---
 .../gpu/drm/i915/gt/intel_engine_heartbeat.c  |  39 +++++++
 drivers/gpu/drm/i915/gt/sysfs_engines.c       |  25 +++--
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  21 ++++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   8 ++
 7 files changed, 199 insertions(+), 28 deletions(-)

-- 
2.37.3

