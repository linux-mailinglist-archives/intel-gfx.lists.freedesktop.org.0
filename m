Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 997842F4187
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 03:14:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5BE489B78;
	Wed, 13 Jan 2021 02:13:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E92AF89B78
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 02:13:58 +0000 (UTC)
IronPort-SDR: MM7i25Am/gIswC1OvC9VyYQ51Hpu15NZja25iEIRvoBCNLsDDFgYdg4oJPSbpWOhX5RTPT1j3W
 OBHbG0rDOW2A==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="165815284"
X-IronPort-AV: E=Sophos;i="5.79,343,1602572400"; d="scan'208";a="165815284"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 18:13:58 -0800
IronPort-SDR: 4kX/BeNc6L9twzkFRsLrtiODHOkFKW61SM2snEuSxxzDfSqcv4CnnlkcPfq2FEJF9SLbM2Bw7V
 my3ahANHqMvQ==
X-IronPort-AV: E=Sophos;i="5.79,343,1602572400"; d="scan'208";a="464739718"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 18:13:57 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Jan 2021 18:12:32 -0800
Message-Id: <20210113021236.8164-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/4]
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now that we have a common set of function for general lrc management,
the only remaining dependency the guc submission code has towards the
execlists submission is the engine setup. This series gets rid of that
by copying the required execlists setup function in the GuC submission
file; the copied functions have been further simplified by removing all
the parts that are specific to the execlists submission back-end.

To make the work easier, a bunch of GuC code that is not applicable to
the latest GuC submission flow (which should be posted soon-ish) is
removed as part of the series.

v2: address comments from Chris. I've also removed the interrupt
patch from teh series; I'm playing with a couple of possible
alternatives and will send the patch on its own later. There is no issue
in not including the patch yet since GuC submission can't be turned on.

Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>

Daniele Ceraolo Spurio (3):
  drm/i915/guc: do not dump execlists state with GuC submission
  drm/i915/guc: init engine directly in GuC submission mode
  drm/i915/guc: stop calling execlists_set_default_submission

Matthew Brost (1):
  drm/i915/guc: Delete GuC code unused in future patches

 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  12 +-
 .../drm/i915/gt/intel_execlists_submission.c  |   9 +-
 .../drm/i915/gt/intel_execlists_submission.h  |   2 -
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  16 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   7 -
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 442 ++++++++++--------
 .../gpu/drm/i915/gt/uc/intel_guc_submission.h |   1 +
 7 files changed, 267 insertions(+), 222 deletions(-)

-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
