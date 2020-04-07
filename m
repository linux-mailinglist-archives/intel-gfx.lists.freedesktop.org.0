Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3181A17AC
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 00:04:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A31716E915;
	Tue,  7 Apr 2020 22:04:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 19.mo7.mail-out.ovh.net (19.mo7.mail-out.ovh.net
 [178.33.251.118])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CFD96E91A
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 22:04:35 +0000 (UTC)
Received: from player755.ha.ovh.net (unknown [10.110.115.223])
 by mo7.mail-out.ovh.net (Postfix) with ESMTP id B01B415D882
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 23:45:17 +0200 (CEST)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player755.ha.ovh.net (Postfix) with ESMTPSA id 2D36F1149CFC2;
 Tue,  7 Apr 2020 21:45:10 +0000 (UTC)
From: Andi Shyti <andi@etezian.org>
To: Intel GFX <intel-gfx@lists.freedesktop.org>
Date: Wed,  8 Apr 2020 00:45:00 +0300
Message-Id: <20200407214502.217567-1-andi@etezian.org>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Ovh-Tracer-Id: 17612733718370697821
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrudeigddtudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpvddufedrvdegfedrudeguddrieegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeehhedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: [Intel-gfx] [PATCH v7 0/2] debugfs cleanup and gt depenencies.
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Andi Shyti <andi.shyti@intel.com>

Hi,

In this 7th version I removed in a separate patch the sseu
interface which is broken and therefore useless.

Thanks Tvrtko and Chris for the review,
Andi

Changelog
=========
v7:
 - add a preliminary patch that removes completely the
   i915_sseu_status interface.
v6:
 - i915_forcewake_user left intact in in the top level directory
 - improved commit log
v5:
 - renamed from debugfs_gt_sseu.[ch] to debugfs_sseu.[ch]
 - moved i915_rcs_topology from i915_debugfs.c to
   gt/debugfs_sseu.c
 - added Tvrtko's and Chris r-b.
v4:
 - interrupt and sseu debugfs interface are moved to their own
   "debugfs_gt_irq" and "debugfs_gt_sseu" files
 - reset functions are renamed to reset_show/store
v3:
 - better arrangement of what should stay in i915_debugfs and
   what needs to be moved under gt/
 - more use of the local "uncore" and "i915" variables to improve
   readability
v2:
 - dropped changes on "drop_caches", they were indeed irrelevant
 - improved interrupt info function

Andi Shyti (2):
  drm/i915: remove broken i915_sseu_status interface
  drm/i915/gt: move remaining debugfs interfaces into gt

 drivers/gpu/drm/i915/Makefile            |   1 +
 drivers/gpu/drm/i915/gt/debugfs_gt.c     |  48 +++-
 drivers/gpu/drm/i915/gt/debugfs_gt_irq.c | 162 +++++++++++
 drivers/gpu/drm/i915/gt/debugfs_gt_irq.h |  15 +
 drivers/gpu/drm/i915/gt/debugfs_gt_pm.c  |  32 +++
 drivers/gpu/drm/i915/i915_debugfs.c      | 339 +----------------------
 6 files changed, 258 insertions(+), 339 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/debugfs_gt_irq.c
 create mode 100644 drivers/gpu/drm/i915/gt/debugfs_gt_irq.h

-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
