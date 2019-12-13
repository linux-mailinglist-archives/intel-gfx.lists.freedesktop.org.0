Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D58111E3F9
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 13:55:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E7886E7DD;
	Fri, 13 Dec 2019 12:55:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 53622 seconds by postgrey-1.36 at gabe;
 Fri, 13 Dec 2019 12:55:13 UTC
Received: from 7.mo69.mail-out.ovh.net (7.mo69.mail-out.ovh.net [46.105.50.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11F736E7DD
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 12:55:13 +0000 (UTC)
Received: from player759.ha.ovh.net (unknown [10.108.16.204])
 by mo69.mail-out.ovh.net (Postfix) with ESMTP id 82FC772B89
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 13:45:35 +0100 (CET)
Received: from etezian.org (net-37-116-49-191.cust.vodafonedsl.it
 [37.116.49.191]) (Authenticated sender: andi@etezian.org)
 by player759.ha.ovh.net (Postfix) with ESMTPSA id 56A62D49F3CC;
 Fri, 13 Dec 2019 12:45:30 +0000 (UTC)
From: Andi Shyti <andi@etezian.org>
To: Intel GFX <intel-gfx@lists.freedesktop.org>
Date: Fri, 13 Dec 2019 14:45:47 +0200
Message-Id: <20191213124549.28412-1-andi@etezian.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Ovh-Tracer-Id: 9794766243507389021
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrudelledggeehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecuffhomhgrihhnpehfrhgvvgguvghskhhtohhprdhorhhgnecukfhppedtrddtrddtrddtpdefjedrudduiedrgeelrdduledunecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejheelrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrghenucevlhhushhtvghrufhiiigvpedt
Subject: [Intel-gfx] [PATCH v3 0/2] Some debugfs enhancements
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

From: Andi Shyti <andi.shyti@intel.com>

Hi,

this two patches are few debugfs improvements. The first adds
some helpers for reading the GT frequency, while the second patch
moves all the power management debufs functions into gt/

Thanks Chris for the reviews.

Thanks,
Andi

Changelog:
==========
v2-v3: (v2: https://lists.freedesktop.org/archives/intel-gfx/2019-December/223277.html)
Fixed the three reviews from Chris
 - removed the 'i915' prefix from the gt pm debugfs files
 - fixed my laziness and made the debugfs pm files more gt
   oriented. Now the only dependency remaining from the
   'drm_i915_private' structure is for platform generation check.
 - restored the 'node_to_i915' to its original position, as it's
   not needed anymore.

v1-v2: (v1: https://lists.freedesktop.org/archives/intel-gfx/2019-December/222758.html)
 - renamed functions from
	intel_cagf_freq_read to intel_rps_read_actual_frequency
	intel_cagf_read to intel_rps_read_cagf
 - created an independent gt/ directory in debugfs

Andi Shyti (2):
  drm/i915/rps: Add frequency translation helpers
  drm/i915/gt: Move power management debug files into a gt aware debugfs

 drivers/gpu/drm/i915/Makefile            |   2 +
 drivers/gpu/drm/i915/gt/debugfs_gt.c     |  19 +
 drivers/gpu/drm/i915/gt/debugfs_gt.h     |  26 +
 drivers/gpu/drm/i915/gt/debugfs_pm.c     | 626 +++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/debugfs_pm.h     |  16 +
 drivers/gpu/drm/i915/gt/intel_gt_types.h |   3 +
 drivers/gpu/drm/i915/gt/intel_rps.c      |  22 +
 drivers/gpu/drm/i915/gt/intel_rps.h      |   2 +
 drivers/gpu/drm/i915/i915_debugfs.c      | 590 +--------------------
 drivers/gpu/drm/i915/i915_sysfs.c        |  14 +-
 10 files changed, 727 insertions(+), 593 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/debugfs_gt.c
 create mode 100644 drivers/gpu/drm/i915/gt/debugfs_gt.h
 create mode 100644 drivers/gpu/drm/i915/gt/debugfs_pm.c
 create mode 100644 drivers/gpu/drm/i915/gt/debugfs_pm.h

-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
