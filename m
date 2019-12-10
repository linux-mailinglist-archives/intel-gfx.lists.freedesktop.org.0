Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4197C119F9C
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 00:42:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D83646EA1D;
	Tue, 10 Dec 2019 23:42:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 427 seconds by postgrey-1.36 at gabe;
 Tue, 10 Dec 2019 23:42:09 UTC
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EF396EA1D
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 23:42:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 15:35:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,301,1571727600"; d="scan'208";a="238341563"
Received: from ahirstiu-mobl1.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.252.49.210])
 by fmsmga004.fm.intel.com with ESMTP; 10 Dec 2019 15:35:01 -0800
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Dec 2019 01:34:50 +0200
Message-Id: <20191210233453.183910-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 0/3] drm/i915: timeline semaphore support
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

Hi all,

Following the last set of IGT tests on the mailing list, Chris made an
interesting comment about engine to engine synchronization.

Indeed with dma-fence-chain, i915 is unable to detect i915 fences
given as wait dependencies to the execbuf, because those are now
wrapped into a dma-fence-chain.

Our submission code has an interesting optimization where it uses HW
semaphores to create a dependency between 2 requests, thus doing away
with the need for the host to submit a request once its dependencies
have completed.

This v6 tries to work around this performance degration due to
dma-fence-chains by peeling them when adding fences waits to a
request.

It is still possible that a dma-fence-chain wraps another
dma-fence-chain but I think those cases will be rare enough we don't
want to care about them.

Cheers,

Lionel Landwerlin (3):
  drm/i915: introduce a mechanism to extend execbuf2
  drm/i915: add syncobj timeline support
  drm/i915: peel dma-fence-chains wait fences

 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 379 +++++++++++++++---
 drivers/gpu/drm/i915/i915_drv.c               |   3 +-
 drivers/gpu/drm/i915/i915_getparam.c          |   1 +
 include/uapi/drm/i915_drm.h                   |  64 ++-
 4 files changed, 385 insertions(+), 62 deletions(-)

--
2.24.0
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
