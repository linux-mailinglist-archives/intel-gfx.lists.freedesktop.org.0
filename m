Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D4E5A9218
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 10:30:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BBB310E653;
	Thu,  1 Sep 2022 08:30:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 80BC110E652;
 Thu,  1 Sep 2022 08:30:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7938AAADD1;
 Thu,  1 Sep 2022 08:30:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tian, Kevin" <kevin.tian@intel.com>
Date: Thu, 01 Sep 2022 08:30:18 -0000
Message-ID: <166202101846.11919.1435164107016225801@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220901143747.32858-1-kevin.tian@intel.com>
In-Reply-To: <20220901143747.32858-1-kevin.tian@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Tidy_up_vfio=5Fdevice_life_cycle_=28rev4=29?=
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

Series: Tidy up vfio_device life cycle (rev4)
URL   : https://patchwork.freedesktop.org/series/107838/
State : warning

== Summary ==

Error: dim checkpatch failed
69f04751cb9f vfio: Add helpers for unifying vfio_device life cycle
-:191: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_struct' - possible side-effects?
#191: FILE: include/linux/vfio.h:147:
+#define vfio_alloc_device(dev_struct, member, dev, ops)				\
+	container_of(_vfio_alloc_device(sizeof(struct dev_struct) +		\
+					BUILD_BUG_ON_ZERO(offsetof(		\
+						struct dev_struct, member)),	\
+					dev, ops),				\
+		     struct dev_struct, member)

-:191: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'member' - possible side-effects?
#191: FILE: include/linux/vfio.h:147:
+#define vfio_alloc_device(dev_struct, member, dev, ops)				\
+	container_of(_vfio_alloc_device(sizeof(struct dev_struct) +		\
+					BUILD_BUG_ON_ZERO(offsetof(		\
+						struct dev_struct, member)),	\
+					dev, ops),				\
+		     struct dev_struct, member)

total: 0 errors, 0 warnings, 2 checks, 147 lines checked
454c80c11196 vfio/pci: Use the new device life cycle helpers
2a501df4cdfb vfio/mlx5: Use the new device life cycle helpers
-:34: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#34: FILE: drivers/vfio/pci/mlx5/main.c:596:
+
+}

total: 0 errors, 0 warnings, 1 checks, 74 lines checked
359763e0636f vfio/hisi_acc: Use the new device life cycle helpers
f87178b07741 vfio/mdpy: Use the new device life cycle helpers
daa5e1a8779f vfio/mtty: Use the new device life cycle helpers
51d4907e6a8b vfio/mbochs: Use the new device life cycle helpers
a9f5191838e3 drm/i915/gvt: Use the new device life cycle helpers
5edafbf3ceb0 vfio/ap: Use the new device life cycle helpers
502467c1dbb5 vfio/fsl-mc: Use the new device life cycle helpers
09fb3e4a6bcd vfio/platform: Use the new device life cycle helpers
5ad1f032315b vfio/amba: Use the new device life cycle helpers
-:112: ERROR:SPACING: spaces required around that '=' (ctx:VxW)
#112: FILE: drivers/vfio/platform/vfio_amba.c:110:
+static const struct vfio_device_ops vfio_amba_ops= {
                                                  ^

total: 1 errors, 0 warnings, 0 checks, 188 lines checked
2bb573d97f4b vfio/ccw: Use the new device life cycle helpers
974b5c230dcf vfio: Rename vfio_device_put() and vfio_device_try_get()
960c3def41e8 vfio: Add struct device to vfio_device
-:45: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 0 warnings, 0 checks, 7 lines checked


