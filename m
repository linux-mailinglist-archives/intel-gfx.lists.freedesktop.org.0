Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BAF6436F6C
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 03:34:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B408489ABE;
	Fri, 22 Oct 2021 01:34:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0774689ABE;
 Fri, 22 Oct 2021 01:34:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10144"; a="290035870"
X-IronPort-AV: E=Sophos;i="5.87,171,1631602800"; d="scan'208";a="290035870"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 18:34:21 -0700
X-IronPort-AV: E=Sophos;i="5.87,171,1631602800"; d="scan'208";a="527754464"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 18:34:21 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Cc: <daniele.ceraolospurio@intel.com>,
	<john.c.harrison@intel.com>
Date: Thu, 21 Oct 2021 18:29:36 -0700
Message-Id: <20211022012939.22363-1-matthew.brost@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] Do error capture async,
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
v3: Rebase, resend for CI

Signed-off-by: Matthew Brost <matthew.brost@intel.com>

[1] https://patchwork.freedesktop.org/patch/451415/?series=93704&rev=5

Matthew Brost (2):
  drm/i915/guc: Do error capture asynchronously
  drm/i915/guc: Flush G2H work queue during reset

 drivers/gpu/drm/i915/gt/intel_context.c       |  2 +
 drivers/gpu/drm/i915/gt/intel_context_types.h |  7 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        | 10 ++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 97 ++++++++++++++-----
 4 files changed, 91 insertions(+), 25 deletions(-)

-- 
2.32.0

