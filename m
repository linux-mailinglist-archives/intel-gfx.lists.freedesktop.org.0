Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 766282419BE
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Aug 2020 12:29:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDACC6E4EC;
	Tue, 11 Aug 2020 10:29:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 16CDB6E4DD;
 Tue, 11 Aug 2020 10:29:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1405DA47EA;
 Tue, 11 Aug 2020 10:29:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 11 Aug 2020 10:29:25 -0000
Message-ID: <159714176507.3768.602448425941641231@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200811030209.21058-1-yan.y.zhao@intel.com>
In-Reply-To: <20200811030209.21058-1-yan.y.zhao@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gt=3Afix_raw-wakeref_not_held_calltrace_in_vGPU_?=
 =?utf-8?b?KHJldjIp?=
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

Series: drm/i915/gt:fix raw-wakeref not held calltrace in vGPU (rev2)
URL   : https://patchwork.freedesktop.org/series/80497/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ecbbc5815c0f drm/i915: Drop runtime-pm assert from vgpu io accessors
-:16: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#16: 
References: 3be0bf5acca6 ("drm/i915: Create vGPU specific MMIO operations to reduce traps")

-:16: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 3be0bf5acca6 ("drm/i915: Create vGPU specific MMIO operations to reduce traps")'
#16: 
References: 3be0bf5acca6 ("drm/i915: Create vGPU specific MMIO operations to reduce traps")

-:29: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#29: FILE: drivers/gpu/drm/i915/intel_uncore.c:1212:
+#define __vgpu_read(x) \
+static u##x \
+vgpu_read##x(struct intel_uncore *uncore, i915_reg_t reg, bool trace) { \
+	u##x val = __raw_uncore_read##x(uncore, reg); \
+	trace_i915_reg_rw(false, reg, val, sizeof(val), trace); \
+	return val; \
+}

-:36: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#36: FILE: drivers/gpu/drm/i915/intel_uncore.c:1219:
+}
+__vgpu_read(8)

-:54: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#54: FILE: drivers/gpu/drm/i915/intel_uncore.c:1435:
+}
+__vgpu_write(8)

total: 2 errors, 1 warnings, 2 checks, 45 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
