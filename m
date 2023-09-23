Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 623A77ABD86
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Sep 2023 05:16:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F4B810E71D;
	Sat, 23 Sep 2023 03:16:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9ECB410E1A7;
 Sat, 23 Sep 2023 03:16:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 19F44AADD8;
 Sat, 23 Sep 2023 03:16:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kees Cook" <keescook@chromium.org>
Date: Sat, 23 Sep 2023 03:16:17 -0000
Message-ID: <169543897707.3504.15098795242142848043@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230922173110.work.084-kees@kernel.org>
In-Reply-To: <20230922173110.work.084-kees@kernel.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Annotate_structs_with_=5F=5Fcounted=5Fby?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm: Annotate structs with __counted_by
URL   : https://patchwork.freedesktop.org/series/124132/
State : warning

== Summary ==

Error: dim checkpatch failed
9f6367f6bba6 drm/amd/pm: Annotate struct smu10_voltage_dependency_table with __counted_by
-:16: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#16: 
As found with Coccinelle[1], add __counted_by for struct smu10_voltage_dependency_table.

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
9ec02f5f04c1 drm/amdgpu/discovery: Annotate struct ip_hw_instance with __counted_by
-:18: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#18: 
[1] https://github.com/kees/kernel-tools/blob/trunk/coccinelle/examples/counted_by.cocci

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
d07140c4994e drm/i915/selftests: Annotate struct perf_series with __counted_by
-:15: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#15: 
[1] https://github.com/kees/kernel-tools/blob/trunk/coccinelle/examples/counted_by.cocci

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
664da6fca719 drm/msm/dpu: Annotate struct dpu_hw_intr with __counted_by
-:14: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#14: 
[1] https://github.com/kees/kernel-tools/blob/trunk/coccinelle/examples/counted_by.cocci

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
d2b05410610a drm/nouveau/pm: Annotate struct nvkm_perfdom with __counted_by
-:15: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#15: 
[1] https://github.com/kees/kernel-tools/blob/trunk/coccinelle/examples/counted_by.cocci

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
514d463e24c8 drm/vc4: Annotate struct vc4_perfmon with __counted_by
-:14: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#14: 
[1] https://github.com/kees/kernel-tools/blob/trunk/coccinelle/examples/counted_by.cocci

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
a737e3fe4537 drm/virtio: Annotate struct virtio_gpu_object_array with __counted_by
-:13: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#13: 
As found with Coccinelle[1], add __counted_by for struct virtio_gpu_object_array.

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
70be431674a5 drm/vmwgfx: Annotate struct vmw_surface_dirty with __counted_by
-:15: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#15: 
[1] https://github.com/kees/kernel-tools/blob/trunk/coccinelle/examples/counted_by.cocci

-:34: CHECK:CAMELCASE: Avoid CamelCase: <SVGA3dBox>
#34: FILE: drivers/gpu/drm/vmwgfx/vmwgfx_surface.c:80:
+	SVGA3dBox boxes[] __counted_by(num_subres);

total: 0 errors, 1 warnings, 1 checks, 8 lines checked
9d9b14d43eb2 drm/v3d: Annotate struct v3d_perfmon with __counted_by
-:14: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#14: 
[1] https://github.com/kees/kernel-tools/blob/trunk/coccinelle/examples/counted_by.cocci

total: 0 errors, 1 warnings, 0 checks, 8 lines checked


