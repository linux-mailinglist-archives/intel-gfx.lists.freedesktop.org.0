Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4689F2477D0
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Aug 2020 22:01:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD15989DFA;
	Mon, 17 Aug 2020 20:01:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F73C89DFA
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Aug 2020 20:01:29 +0000 (UTC)
IronPort-SDR: g49HK3BJz3FTx8AMbslNaYlCp/KK/jT2AlRaByBbiXLYz7mrpzyRkw5xh19zP1T1xgiJwv8gHT
 dkm8JCfMN1tQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9716"; a="152190968"
X-IronPort-AV: E=Sophos;i="5.76,324,1592895600"; d="scan'208";a="152190968"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2020 13:01:27 -0700
IronPort-SDR: cKsF1hgHdM/oACttzBrcLFFu81Wj+5eyZLTtcM8RGuCB4ml/e5ur46czOPVnHNXSqilMMm12o7
 HFI9TJ2Ia8MQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,324,1592895600"; d="scan'208";a="440980630"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga004.jf.intel.com with ESMTP; 17 Aug 2020 13:01:25 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 0A0758404BB; Mon, 17 Aug 2020 22:59:36 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Aug 2020 22:59:26 +0300
Message-Id: <20200817195926.12671-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <159766836466.667.7312583547693920058@build.alporthouse.com>
References: <159766836466.667.7312583547693920058@build.alporthouse.com>
Subject: [Intel-gfx] [PATCH] drm/i915: Fix cmd parser desc matching with
 masks
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
Cc: Takashi Iwai <tiwai@suse.de>, stable@vger.kernel.org,
 Tyler Hicks <tyhicks@canonical.com>, Chris Wilson <chris.p.wilson@intel.com>,
 Miroslav Benes <mbenes@suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Our variety of defined gpu commands have the actual
command id field and possibly length and flags applied.

We did start to apply the mask during initialization of
the cmd descriptors but forgot to also apply it on comparisons.

Fix comparisons in order to properly deny access with
associated commands.

v2: fix lri with correct mask (Chris)

References: 926abff21a8f ("drm/i915/cmdparser: Ignore Length operands during command matching")
Reported-by: Nicolai Stange <nstange@suse.de>
Cc: stable@vger.kernel.org # v5.4+
Cc: Miroslav Benes <mbenes@suse.cz>
Cc: Takashi Iwai <tiwai@suse.de>
Cc: Tyler Hicks <tyhicks@canonical.com>
Cc: Jon Bloomfield <jon.bloomfield@intel.com>
Cc: Chris Wilson <chris.p.wilson@intel.com>
Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_cmd_parser.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index 372354d33f55..5ac4a999f05a 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -1204,6 +1204,12 @@ static u32 *copy_batch(struct drm_i915_gem_object *dst_obj,
 	return dst;
 }
 
+static inline bool cmd_desc_is(const struct drm_i915_cmd_descriptor * const desc,
+			       const u32 cmd)
+{
+	return desc->cmd.value == (cmd & desc->cmd.mask);
+}
+
 static bool check_cmd(const struct intel_engine_cs *engine,
 		      const struct drm_i915_cmd_descriptor *desc,
 		      const u32 *cmd, u32 length)
@@ -1242,19 +1248,19 @@ static bool check_cmd(const struct intel_engine_cs *engine,
 			 * allowed mask/value pair given in the whitelist entry.
 			 */
 			if (reg->mask) {
-				if (desc->cmd.value == MI_LOAD_REGISTER_MEM) {
+				if (cmd_desc_is(desc, MI_LOAD_REGISTER_MEM)) {
 					DRM_DEBUG("CMD: Rejected LRM to masked register 0x%08X\n",
 						  reg_addr);
 					return false;
 				}
 
-				if (desc->cmd.value == MI_LOAD_REGISTER_REG) {
+				if (cmd_desc_is(desc, MI_LOAD_REGISTER_REG)) {
 					DRM_DEBUG("CMD: Rejected LRR to masked register 0x%08X\n",
 						  reg_addr);
 					return false;
 				}
 
-				if (desc->cmd.value == MI_LOAD_REGISTER_IMM(1) &&
+				if (cmd_desc_is(desc, MI_LOAD_REGISTER_IMM(1)) &&
 				    (offset + 2 > length ||
 				     (cmd[offset + 1] & reg->mask) != reg->value)) {
 					DRM_DEBUG("CMD: Rejected LRI to masked register 0x%08X\n",
@@ -1478,7 +1484,7 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 			break;
 		}
 
-		if (desc->cmd.value == MI_BATCH_BUFFER_START) {
+		if (cmd_desc_is(desc, MI_BATCH_BUFFER_START)) {
 			ret = check_bbstart(cmd, offset, length, batch_length,
 					    batch_addr, shadow_addr,
 					    jump_whitelist);
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
