Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1B44451F0
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Nov 2021 12:07:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AE736EDA3;
	Thu,  4 Nov 2021 11:07:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D297C6EDA2
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Nov 2021 11:07:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="292518097"
X-IronPort-AV: E=Sophos;i="5.87,208,1631602800"; d="scan'208";a="292518097"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 04:07:34 -0700
X-IronPort-AV: E=Sophos;i="5.87,208,1631602800"; d="scan'208";a="542050091"
Received: from fnygreen-mobl1.ger.corp.intel.com (HELO
 thellstr-mobl1.intel.com) ([10.249.254.164])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 04:07:33 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Nov 2021 12:07:16 +0100
Message-Id: <20211104110718.688420-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 0/2] drm/i915: Failsafe migration blits
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch series introduces failsafe migration blits.
The reason for this seemingly strange concept is that if the initial
clearing or readback of LMEM fails for some reason[1], and we then set up
either GPU- or CPU ptes to the allocated LMEM, we can expose old
contents from other clients.

So after each migration blit to LMEM, attach a dma-fence callback that
checks the migration fence error value and if it's an error,
performs a memcpy blit, instead.

Patch 1 splits out the TTM move code into separate files
Patch 2 implements the failsafe blits and related self-tests

[1] There are at least two ways we could trigger exposure of uninitialized
LMEM assuming the migration blits themselves never trigger a gpu hang.

a) A gpu operation preceding a pipelined eviction blit resets and sets the
error fence to -EIO, and the error is propagated across the TTM manager to
the clear / swapin blit of a newly allocated TTM resource. It aborts and
leaves the memory uninitialized.

b) Something wedges the GT while a migration blit is submitted. It ends up
never executed and TTM can fault user-space cpu-ptes into uninitialized
memory.

v3:
- Style fixes in second patch (Matthew Auld)
v4:
- More style fixes in second patch (Matthew Auld)
v5:
- Fix an issue where we might end up waiting for a fence that would
  never signal.
v6:
- Fix a missing call to i915_ttm_memcpy_release() (Matthew Auld)

Thomas Hellström (2):
  drm/i915/ttm: Reorganize the ttm move code
  drm/i915/ttm: Failsafe migration blits

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c       | 328 ++---------
 drivers/gpu/drm/i915/gem/i915_gem_ttm.h       |  35 ++
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c  | 523 ++++++++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.h  |  43 ++
 .../drm/i915/gem/selftests/i915_gem_migrate.c |  24 +-
 6 files changed, 673 insertions(+), 281 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.h

-- 
2.31.1

