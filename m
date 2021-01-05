Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF74F2EB60D
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 00:21:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6277D6E0EC;
	Tue,  5 Jan 2021 23:21:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D6C46E0EC
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jan 2021 23:21:15 +0000 (UTC)
IronPort-SDR: 3xC1HrfTgRJog+LA1acDBppyJerYjdoZJyPIyvCDbv0BwYPdaws15d9SLyA1snsUORSbUlM9yU
 74hpRBJChSAw==
X-IronPort-AV: E=McAfee;i="6000,8403,9855"; a="177296706"
X-IronPort-AV: E=Sophos;i="5.78,478,1599548400"; d="scan'208";a="177296706"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2021 15:21:14 -0800
IronPort-SDR: hDk0StZddgN1sNm1qw3QSRSK6h4K9fVX4B3nGP7thcbLbprFftyx5LIAW0ZRG5+N4H6LbOs5Px
 yqlnbLvxtYCw==
X-IronPort-AV: E=Sophos;i="5.78,478,1599548400"; d="scan'208";a="565617171"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2021 15:21:14 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Jan 2021 15:19:42 -0800
Message-Id: <20210105231947.31235-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/5] Split GuC submission from execlists
 submission
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

While doing this split I've noticed that it is not very clear which
settings belong in the engine setup and which ones in the
set_default_submission() call. I believe most of it can be moved from
the latter to the former, but, given that this impacts the execlists
backend as well, I plan to tackle it separately.

Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>

Daniele Ceraolo Spurio (4):
  drm/i915/guc: do not dump execlists state with GuC submission
  drm/i915/guc: init engine directly in GuC submission mode
  drm/i915/guc: stop calling execlists_set_default_submission
  drm/i915/guc: enable only the user interrupt when using GuC submission

Matthew Brost (1):
  drm/i915/guc: Delete GuC code unused in future patches

 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   9 +-
 .../drm/i915/gt/intel_execlists_submission.c  |   6 +-
 .../drm/i915/gt/intel_execlists_submission.h  |   2 -
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        |  18 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  16 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   7 -
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 477 ++++++++++--------
 .../gpu/drm/i915/gt/uc/intel_guc_submission.h |   1 +
 8 files changed, 291 insertions(+), 245 deletions(-)

-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
