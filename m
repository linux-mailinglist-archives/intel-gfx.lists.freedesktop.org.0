Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 376322422B9
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Aug 2020 01:06:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E24B89C6C;
	Tue, 11 Aug 2020 23:05:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A1E1789C2A;
 Tue, 11 Aug 2020 23:05:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9AEB0A66C9;
 Tue, 11 Aug 2020 23:05:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Tue, 11 Aug 2020 23:05:56 -0000
Message-ID: <159718715660.3768.10561917395383761656@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200811200457.134743-1-lyude@redhat.com>
In-Reply-To: <20200811200457.134743-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/dp=2C_i915=2C_nouveau=3A_Cleanup_nouveau_HPD_and_add_DP?=
 =?utf-8?q?_features_from_i915_=28rev3=29?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/dp, i915, nouveau: Cleanup nouveau HPD and add DP features from i915 (rev3)
URL   : https://patchwork.freedesktop.org/series/80542/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5adc3389c2b0 drm/nouveau/kms: Fix some indenting in nouveau_dp_detect()
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 21 lines checked
ae886f3a2062 drm/nouveau/kms/nv50-: Remove open-coded drm_dp_read_desc()
-:102: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct nouveau_connector *' should also have an identifier name
#102: FILE: drivers/gpu/drm/nouveau/nouveau_encoder.h:109:
+int nouveau_dp_detect(struct nouveau_connector *, struct nouveau_encoder *);

-:102: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct nouveau_encoder *' should also have an identifier name
#102: FILE: drivers/gpu/drm/nouveau/nouveau_encoder.h:109:
+int nouveau_dp_detect(struct nouveau_connector *, struct nouveau_encoder *);

total: 0 errors, 2 warnings, 0 checks, 74 lines checked
e834aa0734fa drm/nouveau/kms/nv50-: Just use drm_dp_dpcd_read() in nouveau_dp.c
96b996024188 drm/nouveau/kms/nv50-: Use macros for DP registers in nouveau_dp.c
00132185a7c0 drm/nouveau/kms: Don't clear DP_MST_CTRL DPCD in nv50_mstm_new()
-:7: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit fa3cdf8d0b09 ("drm/nouveau: Reset MST branching unit before enabling")'
#7: 
Since fa3cdf8d0b09 ("drm/nouveau: Reset MST branching unit before

total: 1 errors, 0 warnings, 0 checks, 17 lines checked
223a1959699d drm/nouveau/kms: Search for encoders' connectors properly
b4d058c3a429 drm/nouveau/kms/nv50-: Use drm_dp_dpcd_(readb|writeb)() in nv50_sor_disable()
fbbb79a73f98 drm/nouveau/kms/nv50-: Refactor and cleanup DP HPD handling
-:53: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#53: 
* Enabling bits in MSTM_CTRL before calling drm_dp_mst_topology_mgr_set_mst().

-:460: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct drm_device *' should also have an identifier name
#460: FILE: drivers/gpu/drm/nouveau/nouveau_display.h:21:
+	void (*fini)(struct drm_device *, bool suspend, bool runtime);

-:598: CHECK:LINE_SPACING: Please don't use multiple blank lines
#598: FILE: drivers/gpu/drm/nouveau/nouveau_dp.c:161:
 
+

total: 0 errors, 2 warnings, 1 checks, 577 lines checked
23246d54e2a5 drm/i915/dp: Extract drm_dp_has_mst()
2ae86c1846c4 drm/nouveau/kms: Use new drm_dp_has_mst() helper for checking MST caps
-:8: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 29 lines checked
e8fd2098ebf2 drm/nouveau/kms: Move drm_dp_cec_unset_edid() into nouveau_connector_detect()
8f6bf106c8e0 drm/nouveau/kms: Only use hpd_work for reprobing in HPD paths
-:279: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#279: FILE: drivers/gpu/drm/nouveau/nouveau_drv.h:201:
+	struct mutex hpd_lock;

total: 0 errors, 0 warnings, 1 checks, 219 lines checked
88b6a5c54da8 drm/i915/dp: Extract drm_dp_downstream_read_info()
53794a3106fc drm/nouveau/kms/nv50-: Use downstream DP clock limits for mode validation
-:63: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#63: FILE: drivers/gpu/drm/nouveau/nouveau_dp.c:196:
+	unsigned max_clock, ds_clock, clock;

total: 0 errors, 1 warnings, 0 checks, 57 lines checked
05fc5494bddf drm/i915/dp: Extract drm_dp_has_sink_count()
bb400868ffda drm/i915/dp: Extract drm_dp_get_sink_count()
04191d71051e drm/nouveau/kms/nv50-: Add support for DP_SINK_COUNT
-:11: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#11: 
plugged into it currently results in a bogus EDID retrieval error in the kernel log.

total: 0 errors, 1 warnings, 0 checks, 108 lines checked
b0cb2299e48e drm/nouveau/kms: Don't change EDID when it hasn't actually changed
e95ee5cca2ce drm/i915/dp: Extract drm_dp_read_dpcd_caps()
e7be9e2b63a8 drm/nouveau/kms: Start using drm_dp_read_dpcd_caps()


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
