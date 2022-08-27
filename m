Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 246B95A36EA
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Aug 2022 12:09:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4C6710E431;
	Sat, 27 Aug 2022 10:09:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 87FB910E431;
 Sat, 27 Aug 2022 10:09:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 80CD6A73C7;
 Sat, 27 Aug 2022 10:09:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tian, Kevin" <kevin.tian@intel.com>
Date: Sat, 27 Aug 2022 10:09:26 -0000
Message-ID: <166159496652.5228.11861814674876499148@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220827171037.30297-1-kevin.tian@intel.com>
In-Reply-To: <20220827171037.30297-1-kevin.tian@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Tidy_up_vfio=5Fdevice_life_cycle?=
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

Series: Tidy up vfio_device life cycle
URL   : https://patchwork.freedesktop.org/series/107838/
State : warning

== Summary ==

Error: dim checkpatch failed
8a1028a5948f vfio: Add helpers for unifying vfio_device life cycle
-:69: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#69: FILE: drivers/vfio/vfio_main.c:512:
+struct vfio_device *_vfio_alloc_device(size_t size, struct device *dev,
+		const struct vfio_device_ops *ops)

-:189: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_struct' - possible side-effects?
#189: FILE: include/linux/vfio.h:147:
+#define vfio_alloc_device(dev_struct, member, dev, ops)				\
+	container_of(_vfio_alloc_device(sizeof(struct dev_struct) +		\
+					BUILD_BUG_ON_ZERO(offsetof(		\
+						struct dev_struct, member)),	\
+					dev, ops),				\
+		     struct dev_struct, member)

-:189: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'member' - possible side-effects?
#189: FILE: include/linux/vfio.h:147:
+#define vfio_alloc_device(dev_struct, member, dev, ops)				\
+	container_of(_vfio_alloc_device(sizeof(struct dev_struct) +		\
+					BUILD_BUG_ON_ZERO(offsetof(		\
+						struct dev_struct, member)),	\
+					dev, ops),				\
+		     struct dev_struct, member)

total: 0 errors, 0 warnings, 3 checks, 147 lines checked
5315c6737f05 vfio/pci: Use the new device life cycle helpers
486b799f50e9 vfio/mlx5: Use the new device life cycle helpers
-:21: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#21: FILE: drivers/vfio/pci/mlx5/main.c:584:
+	struct mlx5vf_pci_core_device *mvdev = container_of(

-:33: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#33: FILE: drivers/vfio/pci/mlx5/main.c:596:
+
+}

-:37: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#37: FILE: drivers/vfio/pci/mlx5/main.c:600:
+	struct mlx5vf_pci_core_device *mvdev = container_of(

total: 0 errors, 0 warnings, 3 checks, 74 lines checked
103f55371608 vfio/hisi_acc: Use the new device life cycle helpers
71193d922843 vfio/mdpy: Use the new device life cycle helpers
9867aedc9b38 vfio/mtty: Use the new device life cycle helpers
9a91cbc63479 vfio/mbochs: Use the new device life cycle helpers
a36d82a06c9a drm/i915/gvt: Use the new device life cycle helpers
-:155: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#155: FILE: drivers/gpu/drm/i915/gvt/vgpu.c:365:
+static int __intel_gvt_create_vgpu(struct intel_vgpu *vgpu,
 		struct intel_vgpu_creation_params *param)

total: 0 errors, 0 warnings, 1 checks, 197 lines checked
2c461084ea76 vfio/ap: Use the new device life cycle helpers
d8360becd50d vfio/fsl-mc: Use the new device life cycle helpers
1d06981a9366 vfio/platform: Use the new device life cycle helpers
dab41427a2dd vfio/amba: Use the new device life cycle helpers
070d8222740d vfio/ccw: Use the new device life cycle helpers
1798a073b3c7 vfio: Rename vfio_device_put() and vfio_device_try_get()
33612e35e449 vfio: Add struct device to vfio_device


