Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0192188C3
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 15:18:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3581F89CD9;
	Wed,  8 Jul 2020 13:18:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3054C89139
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 13:18:14 +0000 (UTC)
IronPort-SDR: 8CCJYbFb9OUFvyDiTSXXNcBv+pdNLhAeargaMigC9uehPXgkncjI6uqNbqspdh01b/MwX/e/93
 pkV81n+clIGw==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="165865802"
X-IronPort-AV: E=Sophos;i="5.75,327,1589266800"; d="scan'208";a="165865802"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2020 06:17:57 -0700
IronPort-SDR: Vm6Ksm/4UFa5HTjCfRTZCD2t4l4QRRdvcY7N1iZfGWCz++jOC8oXuZcR6c2uf50v2c7yWR/qz6
 nzEHlwcsM3ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,327,1589266800"; d="scan'208";a="268470596"
Received: from apientak-mobl.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.252.53.198])
 by fmsmga008.fm.intel.com with ESMTP; 08 Jul 2020 06:17:56 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jul 2020 16:17:48 +0300
Message-Id: <20200708131751.334457-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v12 0/3] drm/i915: timeline semaphore support
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

This is resuming the work on trying to get timeline semaphore support
for i915 upstream, now that some selftests have been added to
dma-fence-chain.

There are a few fix from the last iteration and a rebase following the
changes in the upstream execbuf code.

Cheers,

Lionel Landwerlin (3):
  drm/i915: introduce a mechanism to extend execbuf2
  drm/i915: add syncobj timeline support
  drm/i915: peel dma-fence-chains wait fences

 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 333 +++++++++++++++---
 drivers/gpu/drm/i915/i915_drv.c               |   3 +-
 drivers/gpu/drm/i915/i915_getparam.c          |   1 +
 include/uapi/drm/i915_drm.h                   |  65 +++-
 4 files changed, 342 insertions(+), 60 deletions(-)

--
2.27.0
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
