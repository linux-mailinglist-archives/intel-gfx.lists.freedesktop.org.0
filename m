Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DAA11948C
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 22:16:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FB886E95C;
	Tue, 10 Dec 2019 21:16:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 426 seconds by postgrey-1.36 at gabe;
 Tue, 10 Dec 2019 21:16:28 UTC
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44C2A6E95C
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 21:16:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 13:09:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,300,1571727600"; d="scan'208";a="244990512"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga002.fm.intel.com with ESMTP; 10 Dec 2019 13:09:21 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Dec 2019 13:09:14 -0800
Message-Id: <20191210210919.30846-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/5] Simplify GuC communication handling
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since H2G communication will be in the hot path of GuC submission,
the main aim of this series is to get rid of the function pointers to
speed things up and avoid retpolines (in case the compiler decides
they're required). While at it, simplify the general communication
enabling/disabling by removing support for multiple channels since
it is extremely unlikely that we'll ever use more than one.

Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>

Daniele Ceraolo Spurio (5):
  drm/i915/guc: Merge communication_stop and communication_disable
  drm/i915/guc/ct: stop expecting multiple CT channels
  drm/i915/guc: remove function pointers for send/receive calls
  drm/i915/guc: unify notify() functions
  HAX: force enable_guc=2 and WA i915#571

 drivers/gpu/drm/i915/gt/intel_gt_irq.c        |   2 +-
 drivers/gpu/drm/i915/gt/selftest_gt_pm.c      |   9 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  43 +--
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  41 +--
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     | 298 +++++++-----------
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h     |  55 ++--
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    |   6 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   1 -
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  36 +--
 drivers/gpu/drm/i915/i915_params.h            |   2 +-
 10 files changed, 186 insertions(+), 307 deletions(-)

-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
