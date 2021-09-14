Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1877E40A5D3
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Sep 2021 07:15:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1F296E3F9;
	Tue, 14 Sep 2021 05:15:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5158B6E3F0;
 Tue, 14 Sep 2021 05:15:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10106"; a="208976886"
X-IronPort-AV: E=Sophos;i="5.85,291,1624345200"; d="scan'208";a="208976886"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 22:14:59 -0700
X-IronPort-AV: E=Sophos;i="5.85,291,1624345200"; d="scan'208";a="697404476"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 22:14:59 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Cc: <daniele.ceraolospurio@intel.com>,
	<john.c.harrison@intel.com>
Date: Mon, 13 Sep 2021 22:09:52 -0700
Message-Id: <20210914050956.30685-1-matthew.brost@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] Do error capture async,
 flush G2H processing on reset
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

Rather allocating an error capture in nowait context to break a lockdep
splat [1], do the error capture async compared to the G2H processing.

v2: Fix Docs warning

Signed-off-by: Matthew Brost <matthew.brost@intel.com>

[1] https://patchwork.freedesktop.org/patch/451415/?series=93704&rev=5

John Harrison (1):
  drm/i915/guc: Refcount context during error capture

Matthew Brost (3):
  drm/i915/guc: Move guc_ids under submission_state sub-structure
  drm/i915/guc: Do error capture asynchronously
  drm/i915/guc: Flush G2H work queue during reset

 drivers/gpu/drm/i915/gt/intel_context.c       |   2 +
 drivers/gpu/drm/i915/gt/intel_context_types.h |  16 ++-
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  36 +++--
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 133 ++++++++++++------
 4 files changed, 130 insertions(+), 57 deletions(-)

-- 
2.32.0

