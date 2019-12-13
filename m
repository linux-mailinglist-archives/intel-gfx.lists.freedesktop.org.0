Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A91511EC64
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 22:00:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7062F6EAF6;
	Fri, 13 Dec 2019 21:00:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 16.mo6.mail-out.ovh.net (16.mo6.mail-out.ovh.net
 [87.98.139.208])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E11FE6EAF6
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 21:00:53 +0000 (UTC)
Received: from player787.ha.ovh.net (unknown [10.109.146.106])
 by mo6.mail-out.ovh.net (Postfix) with ESMTP id 9593B1F4C7A
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 22:00:52 +0100 (CET)
Received: from etezian.org (net-37-116-49-191.cust.vodafonedsl.it
 [37.116.49.191]) (Authenticated sender: andi@etezian.org)
 by player787.ha.ovh.net (Postfix) with ESMTPSA id DFAE6D6122CF;
 Fri, 13 Dec 2019 21:00:47 +0000 (UTC)
From: Andi Shyti <andi@etezian.org>
To: Intel GFX <intel-gfx@lists.freedesktop.org>
Date: Fri, 13 Dec 2019 23:00:48 +0200
Message-Id: <20191213210050.33611-1-andi@etezian.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Ovh-Tracer-Id: 18159639597858144861
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrudelledgudeggecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucffohhmrghinhepfhhrvggvuggvshhkthhophdrohhrghenucfkpheptddrtddrtddrtddpfeejrdduudeirdegledrudeludenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeekjedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
Subject: [Intel-gfx] [PATCH v5 0/2] Some debugfs enhancements
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

Thanks Chris and Michal for the reviews.

Thanks,
Andi

Changelog:
==========
v4-v5: (v4: https://lists.freedesktop.org/archives/intel-gfx/2019-December/223431.html)
 - renamed files:
        renamed:    drivers/gpu/drm/i915/gt/debugfs_gt.c -> drivers/gpu/drm/i915/gt/intel_debugfs_gt.c
        renamed:    drivers/gpu/drm/i915/gt/debugfs_gt.h -> drivers/gpu/drm/i915/gt/intel_debugfs_gt.h
        renamed:    drivers/gpu/drm/i915/gt/debugfs_pm.c -> drivers/gpu/drm/i915/gt/intel_debugfs_pm.c
        renamed:    drivers/gpu/drm/i915/gt/debugfs_pm.h -> drivers/gpu/drm/i915/gt/intel_debugfs_pm.h
 - change the spdx identifier's comment from the /* */ to the // style.

v3-v4: (v3: https://lists.freedesktop.org/archives/intel-gfx/2019-December/223368.html)
 - added wakeref in frequency reading (patch 1)
 - added Chris reviewed-by in patch 1
 - sorted in alphabetical order the debugfs functions
 - removed dentry reference in the gt structure, because it's useless.

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

 drivers/gpu/drm/i915/Makefile              |   2 +
 drivers/gpu/drm/i915/gt/intel_debugfs_gt.c |  23 +
 drivers/gpu/drm/i915/gt/intel_debugfs_gt.h |  27 +
 drivers/gpu/drm/i915/gt/intel_debugfs_pm.c | 623 +++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_debugfs_pm.h |  16 +
 drivers/gpu/drm/i915/gt/intel_rps.c        |  30 +
 drivers/gpu/drm/i915/gt/intel_rps.h        |   2 +
 drivers/gpu/drm/i915/i915_debugfs.c        | 590 +------------------
 drivers/gpu/drm/i915/i915_sysfs.c          |  14 +-
 9 files changed, 734 insertions(+), 593 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/intel_debugfs_gt.c
 create mode 100644 drivers/gpu/drm/i915/gt/intel_debugfs_gt.h
 create mode 100644 drivers/gpu/drm/i915/gt/intel_debugfs_pm.c
 create mode 100644 drivers/gpu/drm/i915/gt/intel_debugfs_pm.h

-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
