Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FCEEAB458F
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 22:40:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8CA410E16A;
	Mon, 12 May 2025 20:40:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 2396 seconds by postgrey-1.36 at gabe;
 Mon, 12 May 2025 20:40:34 UTC
Received: from 12.mo550.mail-out.ovh.net (12.mo550.mail-out.ovh.net
 [87.98.162.229])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D092810E16A
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 May 2025 20:40:32 +0000 (UTC)
Received: from director11.ghost.mail-out.ovh.net (unknown [10.108.2.251])
 by mo550.mail-out.ovh.net (Postfix) with ESMTP id 4Zx8d66J77z1b7w
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 May 2025 19:22:34 +0000 (UTC)
Received: from ghost-submission-5b5ff79f4f-8v99w (unknown [10.110.164.42])
 by director11.ghost.mail-out.ovh.net (Postfix) with ESMTPS id DE2871FE9A;
 Mon, 12 May 2025 19:22:33 +0000 (UTC)
Received: from etezian.org ([37.59.142.108])
 by ghost-submission-5b5ff79f4f-8v99w with ESMTPSA
 id DLNMLXlKImgRLQAAIHRFsQ
 (envelope-from <andi@etezian.org>); Mon, 12 May 2025 19:22:33 +0000
Authentication-Results: garm.ovh; auth=pass
 (GARM-108S0028f83296d-93b1-4d8f-ab2d-aaa2faa00a08,
 F6DEC4A513DBFAA389B5B2A47D79B90F74CE2D55) smtp.auth=andi@etezian.org
X-OVh-ClientIp: 178.39.90.92
From: Andi Shyti <andi.shyti@kernel.org>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Andi Shyti <andi.shyti@kernel.org>,
 Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: [CI 1/2] drm/i915/gem: Allow EXEC_CAPTURE on recoverable contexts on
 DG1
Date: Mon, 12 May 2025 21:22:15 +0200
Message-ID: <20250512192216.301771-2-andi.shyti@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250512192216.301771-1-andi.shyti@kernel.org>
References: <20250512192216.301771-1-andi.shyti@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 5366601907206687305
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdeftddvtdekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhephffvvefufffkofgjfhggtgfgsehtkeertdertdejnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihdrshhhhihtiheskhgvrhhnvghlrdhorhhgqeenucggtffrrghtthgvrhhnpedtieevleeufeeiueffvdejudevfeekveeiteetgffgveefgefhteeggeffteetgfenucffohhmrghinhepghhithhhuhgsrdgtohhmpdhkvghrnhgvlhdrohhrghenucfkphepuddvjedrtddrtddruddpudejkedrfeelrdeltddrledvpdefjedrheelrddugedvrddutdeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdpnhgspghrtghpthhtohepuddprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhgpdfovfetjfhoshhtpehmohehhedtmgdpmhhouggvpehsmhhtphhouhht
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The intel-media-driver is currently broken on DG1 because
it uses EXEC_CAPTURE with recovarable contexts. Relax the
check to allow that.

I've also submitted a fix for the intel-media-driver:
https://github.com/intel/media-driver/pull/1920

Cc: stable@vger.kernel.org
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Testcase: igt/gem_exec_capture/capture-invisible
Fixes: 71b1669ea9bd ("drm/i915/uapi: tweak error capture on recoverable contexts")
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Link: https://lore.kernel.org/r/20250411144313.11660-2-ville.syrjala@linux.intel.com
Signed-off-by: Andi Shyti <andi.shyti@kernel.org>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 02c59808cbe4..7d44aadcd5a5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2013,7 +2013,7 @@ static int eb_capture_stage(struct i915_execbuffer *eb)
 			continue;
 
 		if (i915_gem_context_is_recoverable(eb->gem_context) &&
-		    (IS_DGFX(eb->i915) || GRAPHICS_VER_FULL(eb->i915) > IP_VER(12, 0)))
+		    GRAPHICS_VER_FULL(eb->i915) > IP_VER(12, 10))
 			return -EINVAL;
 
 		for_each_batch_create_order(eb, j) {
-- 
2.49.0

