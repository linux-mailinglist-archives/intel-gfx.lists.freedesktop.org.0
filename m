Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C5C4C1F37
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 00:01:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CC5710E3D0;
	Wed, 23 Feb 2022 23:01:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2662710E3D0;
 Wed, 23 Feb 2022 23:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645657303; x=1677193303;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2OzZ/AWpiqrvqNPKt7fTCXLXn1pgnVaOm3u6Y6z8dgE=;
 b=lVWhWEL9MvFGiIba6vK/t4nqMfhCJdL84rbG6KHTaqetU4fua6/unlOQ
 8Ll/RaO5xKStQ4X7UyNSTMswYjjX1BL4fXZ4X1qFOwwGxA2PxxMi34MTa
 K+jJTLq/SCwI6TUy4gO67FsfUcKFTly+eytBCDYk7ua3Yz8tFo3xIh1fV
 lqQJ0K12yD7wMmVj3u3lZomGyLqksV8P5Y5/xES0iNpgfFnAWdV7f9wwH
 dxjA56lDNFAOXBl9PPvFFK4i50dQUSFpp6DuF/5w4sHgmzaCsNg7hoX9d
 hm5k2ZixydUKeYMI5VR0KvJuLgoBMZSZX5xnhB5T7cRc5A2smEP2NWUYF g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="239495263"
X-IronPort-AV: E=Sophos;i="5.88,392,1635231600"; d="scan'208";a="239495263"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 15:01:42 -0800
X-IronPort-AV: E=Sophos;i="5.88,392,1635231600"; d="scan'208";a="707225537"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 15:01:42 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 23 Feb 2022 14:45:21 -0800
Message-Id: <20220223224523.1121224-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 0/2] drm/mm: Add an iterator to optimally walk over
 holes suitable for an allocation
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

v4: (Tvrtko)
- Dropped the patch added in v2 as it was deemed unnecessary.

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
Cc: Christian König <christian.koenig@amd.com>

Vivek Kasireddy (2):
  drm/mm: Add an iterator to optimally walk over holes for an allocation
    (v4)
  drm/i915/gem: Don't try to map and fence large scanout buffers (v9)

 drivers/gpu/drm/drm_mm.c        |  32 ++++----
 drivers/gpu/drm/i915/i915_gem.c | 128 +++++++++++++++++++++++---------
 include/drm/drm_mm.h            |  36 +++++++++
 3 files changed, 145 insertions(+), 51 deletions(-)

-- 
2.34.1

