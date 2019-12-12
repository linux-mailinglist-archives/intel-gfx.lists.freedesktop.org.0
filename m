Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98FAB11D90E
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 23:10:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73F7589C21;
	Thu, 12 Dec 2019 22:10:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 9.mo69.mail-out.ovh.net (9.mo69.mail-out.ovh.net [46.105.56.78])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BA5E89C21
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 22:10:06 +0000 (UTC)
Received: from player773.ha.ovh.net (unknown [10.108.35.210])
 by mo69.mail-out.ovh.net (Postfix) with ESMTP id 2D93B74E3C
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 23:01:29 +0100 (CET)
Received: from etezian.org (net-37-116-49-191.cust.vodafonedsl.it
 [37.116.49.191]) (Authenticated sender: andi@etezian.org)
 by player773.ha.ovh.net (Postfix) with ESMTPSA id 4299DD3BAFC6;
 Thu, 12 Dec 2019 22:01:25 +0000 (UTC)
From: Andi Shyti <andi@etezian.org>
To: Intel GFX <intel-gfx@lists.freedesktop.org>
Date: Fri, 13 Dec 2019 00:01:19 +0200
Message-Id: <20191212220121.17852-1-andi@etezian.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Ovh-Tracer-Id: 13310388700099166813
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrudeljedgudehiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpfeejrdduudeirdegledrudeludenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeejfedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
Subject: [Intel-gfx] [PATCH v2 0/2] Some debugfs enhancements
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

Thanks,
Andi

Changelog:
==========
v1-v2:
 - renamed functions from
	intel_cagf_freq_read to intel_rps_read_actual_frequency
	intel_cagf_read to intel_rps_read_cagf
 - created an independent gt/ directory in debugfs
(Thanks Chris!)

Andi Shyti (2):
  drm/i915/rps: Add frequency translation helpers
  drm/i915/gt: Move power management debug files into a gt aware debugfs

 drivers/gpu/drm/i915/Makefile            |   2 +
 drivers/gpu/drm/i915/gt/debugfs_gt.c     |  19 +
 drivers/gpu/drm/i915/gt/debugfs_gt.h     |  13 +
 drivers/gpu/drm/i915/gt/debugfs_pm.c     | 593 ++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/debugfs_pm.h     |  16 +
 drivers/gpu/drm/i915/gt/intel_gt_types.h |   3 +
 drivers/gpu/drm/i915/gt/intel_rps.c      |  22 +
 drivers/gpu/drm/i915/gt/intel_rps.h      |   2 +
 drivers/gpu/drm/i915/i915_debugfs.c      | 596 +----------------------
 drivers/gpu/drm/i915/i915_debugfs.h      |   9 +
 drivers/gpu/drm/i915/i915_sysfs.c        |  14 +-
 11 files changed, 690 insertions(+), 599 deletions(-)
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
