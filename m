Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E73F4629275
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Nov 2022 08:29:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D76A110E36C;
	Tue, 15 Nov 2022 07:29:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B4A710E0F8;
 Tue, 15 Nov 2022 07:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668497352; x=1700033352;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+zNbLDxDBzygDXih4DW37Lu1AXC3gmKEaXD2Fg6nhdg=;
 b=AKdPREDReLqbpKcW9aefr1bJy/pPvun2P4ePmg3Wh9D56jpvPK8VUzA8
 ao7hdFCbVx5g2vYz6z/dAOCQ2iPzP0ACyrD0NMnkqVhzokENU3ARTGVDC
 +0fsNA73tEubx6KSOOjGKMaREIZRdSTJ5E/nzcseVv0Q7RIRe23b8pGC4
 UV/htOEpNvjDI2r7f7TphYZPByjxqJufcGUV0HMnFb+rFkdE84NC7bTvZ
 45mFO3vXekwBcI+88e1TY3fEklmhUexZAg1KFQZmiWuzNV9aCY+EeBhr0
 +QMT13hOwB3kanIeTQAbp07UxQYI80n/nv1SG19nU7sVZqN8kKkImZ9Xy w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="291896719"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="291896719"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 23:29:07 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="633140074"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="633140074"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 23:29:05 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: igt-dev@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 15 Nov 2022 08:28:34 +0100
Message-Id: <20221115072834.2115985-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [i-g-t] tests/kms_plane: skip memory demanding modes in
 test_plane_panning
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
Cc: Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

test_plane_panning requires about 10 times bigger amount of memory than
memory required by framebuffer in default display mode. In case of some
configurations it can exceed available memory (4k modes on small-bar
systems), causing test aborts.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6824
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 tests/kms_plane.c | 28 +++++++++++++++++++++++++---
 1 file changed, 25 insertions(+), 3 deletions(-)

diff --git a/tests/kms_plane.c b/tests/kms_plane.c
index 8a54ba6645c..fc530d2cfd3 100644
--- a/tests/kms_plane.c
+++ b/tests/kms_plane.c
@@ -342,14 +342,14 @@ test_plane_panning_with_output(data_t *data,
 	drmModeModeInfo *mode;
 	igt_crc_t crc;
 
-	igt_info("Testing connector %s using pipe %s\n",
-		 igt_output_name(output), kmstest_pipe_name(pipe));
-
 	igt_output_set_pipe(output, pipe);
 
 	mode = igt_output_get_mode(output);
 	primary = igt_output_get_plane(output, 0);
 
+	igt_info("Testing connector %s using pipe %s, mode %s\n",
+		 igt_output_name(output), kmstest_pipe_name(pipe), mode->name);
+
 	create_fb_for_mode_panning(data, mode, &primary_fb);
 	igt_plane_set_fb(primary, &primary_fb);
 
@@ -381,6 +381,8 @@ test_plane_panning_with_output(data_t *data,
 static void
 test_plane_panning(data_t *data, enum pipe pipe)
 {
+	bool mode_found = false;
+	uint64_t mem_size = 0;
 	igt_output_t *output;
 	igt_crc_t ref_crc;
 
@@ -389,6 +391,26 @@ test_plane_panning(data_t *data, enum pipe pipe)
 
 	test_init(data, pipe);
 
+	for_each_memory_region(r, data->drm_fd)
+		if (r->ci.memory_class == I915_MEMORY_CLASS_DEVICE)
+			mem_size = r->cpu_size;
+
+	for_each_connector_mode(output) {
+		drmModeModeInfo *m = &output->config.connector->modes[j__];
+		uint32_t fb_size = m->hdisplay * m->vdisplay * 4;
+
+		/* test allocates 2 double-dim fbs, add one more, to be safe */
+		if (mem_size && 3 * 4 * fb_size > mem_size) {
+			igt_debug("Skipping mode %s due to low memory\n", m->name);
+			continue;
+		}
+
+		igt_output_override_mode(output, m);
+		mode_found = true;
+		break;
+	}
+	igt_require(mode_found);
+
 	if (data->flags & TEST_PANNING_TOP_LEFT)
 		test_grab_crc(data, output, pipe, &red, data->flags, &ref_crc);
 	else
-- 
2.34.1

