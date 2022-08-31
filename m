Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4465A76BA
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Aug 2022 08:36:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A596110E1E5;
	Wed, 31 Aug 2022 06:36:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0CF5A10E1E5;
 Wed, 31 Aug 2022 06:36:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E8FAAA363D;
 Wed, 31 Aug 2022 06:36:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tian, Kevin" <kevin.tian@intel.com>
Date: Wed, 31 Aug 2022 06:36:10 -0000
Message-ID: <166192777092.4260.13461840022399509007@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220827171037.30297-1-kevin.tian@intel.com>
In-Reply-To: <20220827171037.30297-1-kevin.tian@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Tidy_up_vfio=5Fdevice_life_cycle_=28rev2=29?=
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

Series: Tidy up vfio_device life cycle (rev2)
URL   : https://patchwork.freedesktop.org/series/107838/
State : warning

== Summary ==

Error: dim checkpatch failed
405257a130f0 vfio: Add helpers for unifying vfio_device life cycle
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
df0991d343cd vfio/pci: Use the new device life cycle helpers
43ddd4b3b4eb vfio/mlx5: Use the new device life cycle helpers
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
e4bb5c47eaf7 vfio/hisi_acc: Use the new device life cycle helpers
f5c7d76e8b8f vfio/mdpy: Use the new device life cycle helpers
ac90d6a82ba1 vfio/mtty: Use the new device life cycle helpers
c3540147339d vfio/mbochs: Use the new device life cycle helpers
73067e42b2dd drm/i915/gvt: Use the new device life cycle helpers
-:155: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#155: FILE: drivers/gpu/drm/i915/gvt/vgpu.c:365:
+static int __intel_gvt_create_vgpu(struct intel_vgpu *vgpu,
 		struct intel_vgpu_creation_params *param)

total: 0 errors, 0 warnings, 1 checks, 197 lines checked
dd517d04b701 vfio/ap: Use the new device life cycle helpers
291765af61e2 vfio/fsl-mc: Use the new device life cycle helpers
910cf1cc7e4e vfio/platform: Use the new device life cycle helpers
1e4453d1c194 vfio/amba: Use the new device life cycle helpers
ce8562ac714a vfio/ccw: Use the new device life cycle helpers
45939f17c91c vfio: Rename vfio_device_put() and vfio_device_try_get()
212d729dc851 vfio: Add struct device to vfio_device
-:15: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#15: 
> > > and replace kref. With it a 'vfio-dev/vfioX' node is created under the

-:48: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#48: 
new file mode 100644

-:60: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 2 warnings, 0 checks, 8 lines checked


