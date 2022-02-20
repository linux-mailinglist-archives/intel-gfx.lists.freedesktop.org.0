Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA52C4BCB92
	for <lists+intel-gfx@lfdr.de>; Sun, 20 Feb 2022 02:48:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04EEE10E1DF;
	Sun, 20 Feb 2022 01:48:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CDE910E1DF;
 Sun, 20 Feb 2022 01:48:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645321684; x=1676857684;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JjnYCWylTa6AOEdn4Hy6NgxquQXB22bJbux7LJ5Odec=;
 b=Bw+gauvU6uj7cAQ/8K3EDh/SgSYemuoEc10DyYh7RtdtooJKf12nfQqe
 N1w3zcg9HII49CnWy88HrQKfP34ZcXwDncbBOnUbuTuccNAB171bjhp3l
 W4rEBru79zf5gwM8B1LHVEcT2nphY97UkqziFB6kEs8Ca2byZfs7QdTP9
 IV7OJZmme2ajyiPJ47j/UfYWuiktUc2uA4eA1+5ZJ755J2eOs3jGL8byP
 vwN9shvuEQbsLtl3kfOQtOw58KHKwywm8mKCbi8sfh+1BzC2DsO7POU/S
 qwitWqDLH2IAV5y12b+rju2NIp290NxUolbrk+RRYpZfcBBCrWcg/HzCk g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10263"; a="231306876"
X-IronPort-AV: E=Sophos;i="5.88,382,1635231600"; d="scan'208";a="231306876"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2022 17:48:01 -0800
X-IronPort-AV: E=Sophos;i="5.88,382,1635231600"; d="scan'208";a="531392484"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2022 17:48:01 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Sat, 19 Feb 2022 17:31:24 -0800
Message-Id: <20220220013127.962336-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/3] drm/mm: Add an iterator to optimally
 walk over holes suitable for an allocation
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
Cc: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The first patch is a drm core patch that replaces the for loop in
drm_mm_insert_node_in_range() with the iterator and would not
cause any functional changes. The second patch is a i915 driver
specific patch that also uses the iterator but solves a different
problem.

v2:
- Added a new patch to this series to fix a potential NULL
  dereference.
- Fixed a typo associated with the iterator introduced in the
  drm core patch.
- Added locking around the snippet in the i915 patch that
  traverses the GGTT hole nodes.

v3: (Tvrtko)
- Replaced mutex_lock with mutex_lock_interruptible_nested() in
  the i915 patch.

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
Cc: Christian König <christian.koenig@amd.com>

Vivek Kasireddy (3):
  drm/mm: Ensure that the entry is not NULL before extracting rb_node
  drm/mm: Add an iterator to optimally walk over holes for an allocation
    (v4)
  drm/i915/gem: Don't try to map and fence large scanout buffers (v9)

 drivers/gpu/drm/drm_mm.c        |  37 +++++----
 drivers/gpu/drm/i915/i915_gem.c | 128 +++++++++++++++++++++++---------
 include/drm/drm_mm.h            |  36 +++++++++
 3 files changed, 148 insertions(+), 53 deletions(-)

-- 
2.34.1

