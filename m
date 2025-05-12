Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE6FAB454A
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 22:00:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2F9310E1E7;
	Mon, 12 May 2025 20:00:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1199 seconds by postgrey-1.36 at gabe;
 Mon, 12 May 2025 20:00:04 UTC
Received: from 1.mo584.mail-out.ovh.net (1.mo584.mail-out.ovh.net
 [178.33.248.196])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A765D10E1E7
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 May 2025 20:00:02 +0000 (UTC)
Received: from director11.ghost.mail-out.ovh.net (unknown [10.109.176.14])
 by mo584.mail-out.ovh.net (Postfix) with ESMTP id 4Zx8d41dYhz1VHm
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 May 2025 19:22:32 +0000 (UTC)
Received: from ghost-submission-5b5ff79f4f-f72cs (unknown [10.110.178.153])
 by director11.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 4C7881FE51;
 Mon, 12 May 2025 19:22:31 +0000 (UTC)
Received: from etezian.org ([37.59.142.114])
 by ghost-submission-5b5ff79f4f-f72cs with ESMTPSA
 id un+eOHZKImg5pz4AV7ttDA
 (envelope-from <andi@etezian.org>); Mon, 12 May 2025 19:22:31 +0000
Authentication-Results: garm.ovh; auth=pass
 (GARM-114S008fac40180-39ae-457f-bf5f-abf8db4927c3,
 F6DEC4A513DBFAA389B5B2A47D79B90F74CE2D55) smtp.auth=andi@etezian.org
X-OVh-ClientIp: 178.39.90.92
From: Andi Shyti <andi.shyti@kernel.org>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Andi Shyti <andi.shyti@kernel.org>,
 Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: [CI 0/2] drm/i915: DG1 fixes
Date: Mon, 12 May 2025 21:22:14 +0200
Message-ID: <20250512192216.301771-1-andi.shyti@kernel.org>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 5366038959345437257
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdeftddvtdelucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhephffvvefufffkofggtgfgsehtkeertdertdejnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihdrshhhhihtiheskhgvrhhnvghlrdhorhhgqeenucggtffrrghtthgvrhhnpedvhefgveffteekueefgeehleekueegieeivdeiuedvhfeifeevieffgffhgfektdenucfkphepuddvjedrtddrtddruddpudejkedrfeelrdeltddrledvpdefjedrheelrddugedvrdduudegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdpnhgspghrtghpthhtohepuddprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhgpdfovfetjfhoshhtpehmohehkeegmgdpmhhouggvpehsmhhtphhouhht
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

Because I'm not able to get results from CI, I'm resending the
series from Ville.

Andi
 
Fix a couple of problems on DG1, and remove the long overdue
force_probe requirement.
 
v2: just the uapi behaviour revert and force probe removal
    left, test the uapi change against updated igt

Ville Syrjälä (2):
  drm/i915/gem: Allow EXEC_CAPTURE on recoverable contexts on DG1
  drm/i915/pci: Remove force_probe requirement for DG1

 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
 drivers/gpu/drm/i915/i915_pci.c                | 1 -
 2 files changed, 1 insertion(+), 2 deletions(-)

-- 
2.49.0

