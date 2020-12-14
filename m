Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F14E2D9F70
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 19:45:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9315A6E0C9;
	Mon, 14 Dec 2020 18:45:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BBDA6E0C9;
 Mon, 14 Dec 2020 18:45:08 +0000 (UTC)
IronPort-SDR: W3NlH6TlPhTzQci41cHWji262/ycvCByEBGb4XQoV/mkdM09QE8FBEic6yrpccw8opVV6rcFje
 SFEAmSoUjoVA==
X-IronPort-AV: E=McAfee;i="6000,8403,9834"; a="162505202"
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; 
 d="scan'208,217";a="162505202"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 10:45:06 -0800
IronPort-SDR: 5xZweUbirlWjanYrWrjoY5E1P3gdENilyURIA5vkQtH0iqJZci2lSzuxvcuHZfOAPhUgati3rG
 jVOBaPK+xR0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; 
 d="scan'208,217";a="383256032"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga002.fm.intel.com with ESMTP; 14 Dec 2020 10:45:05 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 14 Dec 2020 10:45:04 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 14 Dec 2020 10:45:04 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Mon, 14 Dec 2020 10:45:04 -0800
From: "Chang, Yu bruce" <yu.bruce.chang@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH i-g-t] lib: Pass device fd to
 gem_mmappable_aperture_size()
Thread-Index: AQHW0Gtb2Usp9qHUFUmsvUL74KoMQan27y7/
Date: Mon, 14 Dec 2020 18:45:04 +0000
Message-ID: <7021dc5149a24438878f6540a0c4aed8@intel.com>
References: <20201212094354.3023502-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201212094354.3023502-1-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t] lib: Pass device fd to
 gem_mmappable_aperture_size()
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1014413096=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1014413096==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7021dc5149a24438878f6540a0c4aed8intelcom_"

--_000_7021dc5149a24438878f6540a0c4aed8intelcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Some minor comments as below.


Reviewed-by: Bruce Chang <yu.bruce.chang@intel.com>

________________________________
From: Chris Wilson <chris@chris-wilson.co.uk>
Sent: Saturday, December 12, 2020 1:43 AM
To: intel-gfx@lists.freedesktop.org
Cc: igt-dev@lists.freedesktop.org; Chris Wilson; Chang, Yu bruce
Subject: [PATCH i-g-t] lib: Pass device fd to gem_mmappable_aperture_size()

In order to find the correct aperture size for the test, we want to pass
the test's device into the query.

Reported-by: Bruce Chang <yu.bruce.chang@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Bruce Chang <yu.bruce.chang@intel.com>
---
 lib/i915/gem_mman.c                | 108 +++++++++++++++++++++++++++
 lib/i915/gem_mman.h                |   6 ++
 lib/ioctl_wrappers.c               | 116 -----------------------------
 lib/ioctl_wrappers.h               |   5 --
 tests/i915/gem_concurrent_all.c    |  12 +--
 tests/i915/gem_mmap.c              |   4 +-
 tests/i915/gem_mmap_gtt.c          |  10 +--
 tests/i915/gem_pwrite.c            |   6 +-
 tests/i915/gem_shrink.c            |   2 +-
 tests/i915/gem_tiled_fence_blits.c |   2 +-
 tests/i915/i915_pm_rpm.c           |   4 +-
 tests/kms_big_fb.c                 |   2 +-
 tests/kms_flip.c                   |   2 +-
 tests/prime_mmap.c                 |   4 +-
 14 files changed, 138 insertions(+), 145 deletions(-)

diff --git a/lib/i915/gem_mman.c b/lib/i915/gem_mman.c
index 93bef2bfc..703c6a5c1 100644
--- a/lib/i915/gem_mman.c
+++ b/lib/i915/gem_mman.c
@@ -27,7 +27,9 @@
 #include <errno.h>

 #include "igt_core.h"
+#include "igt_device.h"
 #include "ioctl_wrappers.h"
+#include "intel_chipset.h"

 #include "gem_mman.h"

@@ -551,3 +553,109 @@ const struct mmap_offset mmap_offset_types[] =3D {
         { "uc", I915_MMAP_OFFSET_UC, I915_GEM_DOMAIN_WC },
         {},
 };
+
+/**
+ * gem_available_aperture_size:
+ * @fd: open i915 drm file descriptor
+ *
+ * Feature test macro to query the kernel for the available gpu aperture s=
ize
+ * usable in a batchbuffer.
+ *
+ * Returns: The available gtt address space size.
+ */
+uint64_t gem_available_aperture_size(int fd)
+{
+       struct drm_i915_gem_get_aperture aperture =3D {
+               aperture.aper_available_size =3D 256*1024*1024,
+       };
+
+       ioctl(fd, DRM_IOCTL_I915_GEM_GET_APERTURE, &aperture);
+       errno =3D 0;
+
+       return aperture.aper_available_size;
+}
+
+/**
+ * gem_aperture_size:
+ * @fd: open i915 drm file descriptor
+ *
+ * Feature test macro to query the kernel for the total gpu aperture size.
+ *
+ * Returns: The total gtt address space size.
+ */
+uint64_t gem_aperture_size(int fd)
+{
+       struct drm_i915_gem_context_param p =3D {
+               .param =3D 0x3
+       };

Understand this is the original code, but it will be more readable to use I=
915_CONTEXT_PARAM_GTT_SIZE instead of 3.

+
+       if (__gem_context_get_param(fd, &p))
+               p.value =3D gem_global_aperture_size(fd);
+
+       return p.value;
+}
+
+/**
+ * gem_mappable_aperture_size:
+ *
+ * Feature test macro to query the kernel for the mappable gpu aperture si=
ze.
+ * This is the area available for GTT memory mappings.
+ *
+ * Returns: The mappable gtt address space size.
+ */
+uint64_t gem_mappable_aperture_size(int fd)
+{
+       struct pci_device *pci_dev =3D igt_device_get_pci_device(fd);

Does it make sense to eliminate the function intel_get_pci_device() if not =
being used anymore? But it can be a separate patch.

+       int bar;
+
+       if (intel_gen(pci_dev->device_id) < 3)
+               bar =3D 0;
+       else
+               bar =3D 2;
+
+       return pci_dev->regions[bar].size;
+}
+
+/**
+ * gem_global_aperture_size:
+ * @fd: open i915 drm file descriptor
+ *
+ * Feature test macro to query the kernel for the global gpu aperture size=
.
+ * This is the area available for the kernel to perform address translatio=
ns.
+ *
+ * Returns: The gtt address space size.
+ */
+uint64_t gem_global_aperture_size(int fd)
+{
+       struct drm_i915_gem_get_aperture aperture =3D {
+               aperture.aper_size =3D 256*1024*1024
+       };
+
+       ioctl(fd, DRM_IOCTL_I915_GEM_GET_APERTURE, &aperture);
+       errno =3D 0;
+
+       return aperture.aper_size;
+}
+
+/**
+ * gem_available_fences:
+ * @fd: open i915 drm file descriptor
+ *
+ * Feature test macro to query the kernel for the number of available fenc=
es
+ * usable in a batchbuffer. Only relevant for pre-gen4.
+ *
+ * Returns: The number of available fences.
+ */
+int gem_available_fences(int fd)
+{
+       int num_fences =3D 0;
+       struct drm_i915_getparam gp =3D {
+               gp.param =3D I915_PARAM_NUM_FENCES_AVAIL,
+               gp.value =3D &num_fences,
+       };
+
+       ioctl(fd, DRM_IOCTL_I915_GETPARAM, &gp, sizeof(gp));
+       errno =3D 0;
+
+       return num_fences;
+}
diff --git a/lib/i915/gem_mman.h b/lib/i915/gem_mman.h
index 2c4a7a00b..ec2899ffe 100644
--- a/lib/i915/gem_mman.h
+++ b/lib/i915/gem_mman.h
@@ -109,5 +109,11 @@ bool gem_has_mmap_offset_type(int fd, const struct mma=
p_offset *t);
              (__t)++) \
                 for_each_if(gem_has_mmap_offset_type((fd), (__t)))

+uint64_t gem_available_aperture_size(int fd);
+uint64_t gem_aperture_size(int fd);
+uint64_t gem_global_aperture_size(int fd);
+uint64_t gem_mappable_aperture_size(int fd);
+int gem_available_fences(int fd);
+
 #endif /* GEM_MMAN_H */

diff --git a/lib/ioctl_wrappers.c b/lib/ioctl_wrappers.c
index 06431ce6c..a928f894f 100644
--- a/lib/ioctl_wrappers.c
+++ b/lib/ioctl_wrappers.c
@@ -782,31 +782,6 @@ bool gem_engine_reset_enabled(int fd)
         return gem_gpu_reset_type(fd) > 1;
 }

-/**
- * gem_available_fences:
- * @fd: open i915 drm file descriptor
- *
- * Feature test macro to query the kernel for the number of available fenc=
es
- * usable in a batchbuffer. Only relevant for pre-gen4.
- *
- * Returns: The number of available fences.
- */
-int gem_available_fences(int fd)
-{
-       int num_fences;
-       struct drm_i915_getparam gp;
-
-       memset(&gp, 0, sizeof(gp));
-       gp.param =3D I915_PARAM_NUM_FENCES_AVAIL;
-       gp.value =3D &num_fences;
-
-       num_fences =3D 0;
-       ioctl(fd, DRM_IOCTL_I915_GETPARAM, &gp, sizeof(gp));
-       errno =3D 0;
-
-       return num_fences;
-}
-
 bool gem_has_llc(int fd)
 {
         int has_llc;
@@ -929,97 +904,6 @@ uint64_t gem_total_stolen_size(int fd)
         return aperture.stolen_total_size;
 }

-/**
- * gem_available_aperture_size:
- * @fd: open i915 drm file descriptor
- *
- * Feature test macro to query the kernel for the available gpu aperture s=
ize
- * usable in a batchbuffer.
- *
- * Returns: The available gtt address space size.
- */
-uint64_t gem_available_aperture_size(int fd)
-{
-       struct drm_i915_gem_get_aperture aperture;
-
-       memset(&aperture, 0, sizeof(aperture));
-       aperture.aper_size =3D 256*1024*1024;
-       do_ioctl(fd, DRM_IOCTL_I915_GEM_GET_APERTURE, &aperture);
-
-       return aperture.aper_available_size;
-}
-
-/**
- * gem_aperture_size:
- * @fd: open i915 drm file descriptor
- *
- * Feature test macro to query the kernel for the total gpu aperture size.
- *
- * Returns: The total gtt address space size.
- */
-uint64_t gem_aperture_size(int fd)
-{
-       uint64_t aperture_size =3D 0;
-       struct drm_i915_gem_context_param p;
-
-       memset(&p, 0, sizeof(p));
-       p.param =3D 0x3;
-       if (__gem_context_get_param(fd, &p) =3D=3D 0) {
-               aperture_size =3D p.value;
-       } else {
-               struct drm_i915_gem_get_aperture aperture;
-
-               memset(&aperture, 0, sizeof(aperture));
-               aperture.aper_size =3D 256*1024*1024;
-
-               do_ioctl(fd, DRM_IOCTL_I915_GEM_GET_APERTURE, &aperture);
-               aperture_size =3D  aperture.aper_size;
-       }
-
-       return aperture_size;
-}
-
-/**
- * gem_mappable_aperture_size:
- *
- * Feature test macro to query the kernel for the mappable gpu aperture si=
ze.
- * This is the area available for GTT memory mappings.
- *
- * Returns: The mappable gtt address space size.
- */
-uint64_t gem_mappable_aperture_size(void)
-{
-       struct pci_device *pci_dev =3D intel_get_pci_device();
-       int bar;
-
-       if (intel_gen(pci_dev->device_id) < 3)
-               bar =3D 0;
-       else
-               bar =3D 2;
-
-       return pci_dev->regions[bar].size;
-}
-
-/**
- * gem_global_aperture_size:
- * @fd: open i915 drm file descriptor
- *
- * Feature test macro to query the kernel for the global gpu aperture size=
.
- * This is the area available for the kernel to perform address translatio=
ns.
- *
- * Returns: The gtt address space size.
- */
-uint64_t gem_global_aperture_size(int fd)
-{
-       struct drm_i915_gem_get_aperture aperture;
-
-       memset(&aperture, 0, sizeof(aperture));
-       aperture.aper_size =3D 256*1024*1024;
-       do_ioctl(fd, DRM_IOCTL_I915_GEM_GET_APERTURE, &aperture);
-
-       return aperture.aper_size;
-}
-
 /**
  * gem_has_softpin:
  * @fd: open i915 drm file descriptor
diff --git a/lib/ioctl_wrappers.h b/lib/ioctl_wrappers.h
index b76bea564..07879ae96 100644
--- a/lib/ioctl_wrappers.h
+++ b/lib/ioctl_wrappers.h
@@ -117,12 +117,7 @@ bool gem_uses_full_ppgtt(int fd);
 int gem_gpu_reset_type(int fd);
 bool gem_gpu_reset_enabled(int fd);
 bool gem_engine_reset_enabled(int fd);
-int gem_available_fences(int fd);
 uint64_t gem_total_stolen_size(int fd);
-uint64_t gem_available_aperture_size(int fd);
-uint64_t gem_aperture_size(int fd);
-uint64_t gem_global_aperture_size(int fd);
-uint64_t gem_mappable_aperture_size(void);
 bool gem_has_softpin(int fd);
 bool gem_has_exec_fence(int fd);

diff --git a/tests/i915/gem_concurrent_all.c b/tests/i915/gem_concurrent_al=
l.c
index 9ea94125e..da850a104 100644
--- a/tests/i915/gem_concurrent_all.c
+++ b/tests/i915/gem_concurrent_all.c
@@ -1828,7 +1828,7 @@ igt_main
                                  c->name, s->name, "small");
                         igt_subtest_group {
                                 igt_fixture {
-                                       count =3D num_buffers(gem_mappable_=
aperture_size()/4,
+                                       count =3D num_buffers(gem_mappable_=
aperture_size(fd)/4,
                                                             s, c, CHECK_RA=
M);
                                 }
                                 run_modes(name, c, modes, s, count);
@@ -1839,7 +1839,7 @@ igt_main
                                  c->name, s->name, "thrash");
                         igt_subtest_group {
                                 igt_fixture {
-                                       count =3D num_buffers(gem_mappable_=
aperture_size(),
+                                       count =3D num_buffers(gem_mappable_=
aperture_size(fd),
                                                             s, c, CHECK_RA=
M);
                                 }
                                 run_modes(name, c, modes, s, count);
@@ -1871,7 +1871,7 @@ igt_main
                                  c->name, s->name, "shrink");
                         igt_subtest_group {
                                 igt_fixture {
-                                       count =3D num_buffers(gem_mappable_=
aperture_size(),
+                                       count =3D num_buffers(gem_mappable_=
aperture_size(fd),
                                                             s, c, CHECK_RA=
M);

                                         igt_fork_shrink_helper(fd);
@@ -1887,8 +1887,8 @@ igt_main
                                  c->name, s->name, "swap");
                         igt_subtest_group {
                                 igt_fixture {
-                                       if (intel_get_avail_ram_mb() > gem_=
mappable_aperture_size()/(1024*1024)) {
-                                               pin_sz =3D intel_get_avail_=
ram_mb() - gem_mappable_aperture_size()/(1024*1024);
+                                       if (intel_get_avail_ram_mb() > gem_=
mappable_aperture_size(fd)/(1024*1024)) {
+                                               pin_sz =3D intel_get_avail_=
ram_mb() - gem_mappable_aperture_size(fd)/(1024*1024);

                                                 igt_debug("Pinning %lld Mi=
B\n", (long long)pin_sz);
                                                 pin_sz *=3D 1024 * 1024;
@@ -1902,7 +1902,7 @@ igt_main
                                                 igt_require(pinned);
                                         }

-                                       count =3D num_buffers(gem_mappable_=
aperture_size(),
+                                       count =3D num_buffers(gem_mappable_=
aperture_size(fd),
                                                             s, c, CHECK_RA=
M | CHECK_SWAP);
                                 }
                                 run_modes(name, c, modes, s, count);
diff --git a/tests/i915/gem_mmap.c b/tests/i915/gem_mmap.c
index 8bad9b14e..60a64c134 100644
--- a/tests/i915/gem_mmap.c
+++ b/tests/i915/gem_mmap.c
@@ -53,10 +53,10 @@ test_huge_bo(int huge)

         switch (huge) {
         case -1:
-               huge_object_size =3D gem_mappable_aperture_size() / 2;
+               huge_object_size =3D gem_mappable_aperture_size(fd) / 2;
                 break;
         case 0:
-               huge_object_size =3D gem_mappable_aperture_size() + PAGE_SI=
ZE;
+               huge_object_size =3D gem_mappable_aperture_size(fd) + PAGE_=
SIZE;
                 break;
         case 1:
                 huge_object_size =3D gem_aperture_size(fd) + PAGE_SIZE;
diff --git a/tests/i915/gem_mmap_gtt.c b/tests/i915/gem_mmap_gtt.c
index 61fbc5bc7..528a7c726 100644
--- a/tests/i915/gem_mmap_gtt.c
+++ b/tests/i915/gem_mmap_gtt.c
@@ -905,7 +905,7 @@ test_huge_bo(int fd, int huge, int tiling)

         switch (huge) {
         case -1:
-               size =3D gem_mappable_aperture_size() / 2;
+               size =3D gem_mappable_aperture_size(fd) / 2;

                 /* Power of two fence size, natural fence
                  * alignment, and the guard page at the end
@@ -920,7 +920,7 @@ test_huge_bo(int fd, int huge, int tiling)
                         size /=3D 2;
                 break;
         case 0:
-               size =3D gem_mappable_aperture_size() + PAGE_SIZE;
+               size =3D gem_mappable_aperture_size(fd) + PAGE_SIZE;
                 break;
         default:
                 size =3D gem_global_aperture_size(fd) + PAGE_SIZE;
@@ -1001,13 +1001,13 @@ test_huge_copy(int fd, int huge, int tiling_a, int =
tiling_b, int ncpus)

         switch (huge) {
         case -2:
-               huge_object_size =3D gem_mappable_aperture_size() / 4;
+               huge_object_size =3D gem_mappable_aperture_size(fd) / 4;
                 break;
         case -1:
-               huge_object_size =3D gem_mappable_aperture_size() / 2;
+               huge_object_size =3D gem_mappable_aperture_size(fd) / 2;
                 break;
         case 0:
-               huge_object_size =3D gem_mappable_aperture_size() + PAGE_SI=
ZE;
+               huge_object_size =3D gem_mappable_aperture_size(fd) + PAGE_=
SIZE;
                 break;
         case 1:
                 huge_object_size =3D gem_global_aperture_size(fd) + PAGE_S=
IZE;
diff --git a/tests/i915/gem_pwrite.c b/tests/i915/gem_pwrite.c
index d2dcc95e8..f76d2bc70 100644
--- a/tests/i915/gem_pwrite.c
+++ b/tests/i915/gem_pwrite.c
@@ -130,7 +130,7 @@ static void test_big_cpu(int fd, int scale, unsigned fl=
ags)

         switch (scale) {
         case 0:
-               size =3D gem_mappable_aperture_size() + 4096;
+               size =3D gem_mappable_aperture_size(fd) + 4096;
                 break;
         case 1:
                 size =3D gem_global_aperture_size(fd) + 4096;
@@ -192,7 +192,7 @@ static void test_big_gtt(int fd, int scale, unsigned fl=
ags)
         igt_require(gem_mmap__has_wc(fd));
         switch (scale) {
         case 0:
-               size =3D gem_mappable_aperture_size() + 4096;
+               size =3D gem_mappable_aperture_size(fd) + 4096;
                 break;
         case 1:
                 size =3D gem_global_aperture_size(fd) + 4096;
@@ -257,7 +257,7 @@ static void test_random(int fd)
         gem_require_mmap_wc(fd);

         size =3D min(intel_get_total_ram_mb() / 2,
-                   gem_mappable_aperture_size() + 4096);
+                   gem_mappable_aperture_size(fd) + 4096);
         intel_require_memory(1, size, CHECK_RAM);

         handle =3D gem_create(fd, size);
diff --git a/tests/i915/gem_shrink.c b/tests/i915/gem_shrink.c
index dba62c8fa..023db8c56 100644
--- a/tests/i915/gem_shrink.c
+++ b/tests/i915/gem_shrink.c
@@ -439,7 +439,7 @@ igt_main
                  * we expect the shrinker to start purging objects,
                  * and possibly fail.
                  */
-               alloc_size =3D gem_mappable_aperture_size() / 2;
+               alloc_size =3D gem_mappable_aperture_size(fd) / 2;
                 num_processes =3D 1 + (mem_size / (alloc_size >> 20));

                 igt_info("Using %d processes and %'lluMiB per process\n",
diff --git a/tests/i915/gem_tiled_fence_blits.c b/tests/i915/gem_tiled_fenc=
e_blits.c
index 0a633d91b..28beea898 100644
--- a/tests/i915/gem_tiled_fence_blits.c
+++ b/tests/i915/gem_tiled_fence_blits.c
@@ -225,7 +225,7 @@ igt_main
                 gem_require_blitter(fd);
                 gem_require_mappable_ggtt(fd);

-               count =3D gem_mappable_aperture_size(); /* thrash fences! *=
/
+               count =3D gem_mappable_aperture_size(fd); /* thrash fences!=
 */
                 if (count >> 32)
                         count =3D MAX_32b;
                 count =3D 3 + count / (1024 * 1024);
diff --git a/tests/i915/i915_pm_rpm.c b/tests/i915/i915_pm_rpm.c
index 6d46c320c..6321dd403 100644
--- a/tests/i915/i915_pm_rpm.c
+++ b/tests/i915/i915_pm_rpm.c
@@ -1419,7 +1419,7 @@ static void gem_evict_pwrite_subtest(void)
         unsigned int num_trash_bos, n;
         uint32_t buf;

-       num_trash_bos =3D gem_mappable_aperture_size() / (1024*1024) + 1;
+       num_trash_bos =3D gem_mappable_aperture_size(drm_fd) / (1024*1024) =
+ 1;
         trash_bos =3D malloc(num_trash_bos * sizeof(*trash_bos));
         igt_assert(trash_bos);

@@ -1463,7 +1463,7 @@ static bool device_in_pci_d3(void)
         uint16_t val;
         int rc;

-       rc =3D pci_device_cfg_read_u16(intel_get_pci_device(), &val, 0xd4);
+       rc =3D pci_device_cfg_read_u16(igt_device_get_pci_device(drm_fd), &=
val, 0xd4);
         igt_assert_eq(rc, 0);

         igt_debug("%s: PCI D3 state=3D%d\n", __func__, val & 0x3);
diff --git a/tests/kms_big_fb.c b/tests/kms_big_fb.c
index 02e9915ba..8794ace08 100644
--- a/tests/kms_big_fb.c
+++ b/tests/kms_big_fb.c
@@ -645,7 +645,7 @@ igt_main

                 data.ram_size =3D intel_get_total_ram_mb() << 20;
                 data.aper_size =3D gem_aperture_size(data.drm_fd);
-               data.mappable_size =3D gem_mappable_aperture_size();
+               data.mappable_size =3D gem_mappable_aperture_size(data.drm_=
fd);

                 igt_info("RAM: %"PRIu64" MiB, GPU address space: %"PRId64"=
 MiB, GGTT mappable size: %"PRId64" MiB\n",
                          data.ram_size >> 20, data.aper_size >> 20,
diff --git a/tests/kms_flip.c b/tests/kms_flip.c
index 51b9ac950..0f0565cf6 100755
--- a/tests/kms_flip.c
+++ b/tests/kms_flip.c
@@ -1282,7 +1282,7 @@ static void __run_test_on_crtc_set(struct test_output=
 *o, int *crtc_idxs,
         /* 256 MB is usually the maximum mappable aperture,
          * (make it 4x times that to ensure failure) */
         if (o->flags & TEST_BO_TOOBIG) {
-               bo_size =3D 4*gem_mappable_aperture_size();
+               bo_size =3D 4*gem_mappable_aperture_size(drm_fd);
                 igt_require(bo_size < gem_global_aperture_size(drm_fd));
         }

diff --git a/tests/prime_mmap.c b/tests/prime_mmap.c
index 143342410..7c43ced85 100644
--- a/tests/prime_mmap.c
+++ b/tests/prime_mmap.c
@@ -447,8 +447,8 @@ test_aperture_limit(void)
         char *ptr1, *ptr2;
         uint32_t handle1, handle2;
         /* Two buffers the sum of which > mappable aperture */
-       uint64_t size1 =3D (gem_mappable_aperture_size() * 7) / 8;
-       uint64_t size2 =3D (gem_mappable_aperture_size() * 3) / 8;
+       uint64_t size1 =3D (gem_mappable_aperture_size(fd) * 7) / 8;
+       uint64_t size2 =3D (gem_mappable_aperture_size(fd) * 3) / 8;

         handle1 =3D gem_create(fd, size1);
         fill_bo(handle1, BO_SIZE);
--
2.29.2


--_000_7021dc5149a24438878f6540a0c4aed8intelcom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"color: rgb(0, 0, 0); font-family:=
 Calibri, Helvetica, sans-serif, EmojiFont, &quot;Apple Color Emoji&quot;, =
&quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &q=
uot;Android Emoji&quot;, EmojiSymbols;" dir=3D"ltr">
<p style=3D"font-size: 12pt;">Some minor comments as below.</p>
<p style=3D"font-size: 12pt;"><br>
</p>
<span style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quo=
t;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quo=
t;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size=
: 13.3333px;"><span style=3D"font-family: Calibri, Helvetica, sans-serif, E=
mojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoCo=
lorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymb=
ols; font-size: 13.3333px;">Reviewed-by:&nbsp;</span>Bruce
 Chang &lt;yu.bruce.chang@intel.com&gt;</span><br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<div style=3D"font-size: 12pt;">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Chris Wilson &lt;ch=
ris@chris-wilson.co.uk&gt;<br>
<b>Sent:</b> Saturday, December 12, 2020 1:43 AM<br>
<b>To:</b> intel-gfx@lists.freedesktop.org<br>
<b>Cc:</b> igt-dev@lists.freedesktop.org; Chris Wilson; Chang, Yu bruce<br>
<b>Subject:</b> [PATCH i-g-t] lib: Pass device fd to gem_mmappable_aperture=
_size()</font>
<div>&nbsp;</div>
</div>
</div>
<font style=3D"">
<div class=3D"PlainText" style=3D"font-size: 10pt;">In order to find the co=
rrect aperture size for the test, we want to pass<br>
the test's device into the query.<br>
<br>
Reported-by: Bruce Chang &lt;yu.bruce.chang@intel.com&gt;<br>
Signed-off-by: Chris Wilson &lt;chris@chris-wilson.co.uk&gt;<br>
Cc: Bruce Chang &lt;yu.bruce.chang@intel.com&gt;<br>
---<br>
&nbsp;lib/i915/gem_mman.c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | 108 &#43;&#43;&#43;&#43;&#43;&#4=
3;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#4=
3;&#43;&#43;&#43;&#43;&#43;&#43;<br>
&nbsp;lib/i915/gem_mman.h&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp; 6 &#43;&#43;<br>
&nbsp;lib/ioctl_wrappers.c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | 116 -----------------------------<br>
&nbsp;lib/ioctl_wrappers.h&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp; 5 --<br>
&nbsp;tests/i915/gem_concurrent_all.c&nbsp;&nbsp;&nbsp; |&nbsp; 12 &#43;--<=
br>
&nbsp;tests/i915/gem_mmap.c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp; 4 &#43;-<br>
&nbsp;tests/i915/gem_mmap_gtt.c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; |&nbsp; 10 &#43;--<br>
&nbsp;tests/i915/gem_pwrite.c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp; 6 &#43;-<br>
&nbsp;tests/i915/gem_shrink.c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp; 2 &#43;-<br>
&nbsp;tests/i915/gem_tiled_fence_blits.c |&nbsp;&nbsp; 2 &#43;-<br>
&nbsp;tests/i915/i915_pm_rpm.c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; |&nbsp;&nbsp; 4 &#43;-<br>
&nbsp;tests/kms_big_fb.c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp; 2 &#43;-<br>
&nbsp;tests/kms_flip.c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp; 2 &#4=
3;-<br>
&nbsp;tests/prime_mmap.c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp; 4 &#43;-<br>
&nbsp;14 files changed, 138 insertions(&#43;), 145 deletions(-)<br>
<br>
diff --git a/lib/i915/gem_mman.c b/lib/i915/gem_mman.c<br>
index 93bef2bfc..703c6a5c1 100644<br>
--- a/lib/i915/gem_mman.c<br>
&#43;&#43;&#43; b/lib/i915/gem_mman.c<br>
@@ -27,7 &#43;27,9 @@<br>
&nbsp;#include &lt;errno.h&gt;<br>
&nbsp;<br>
&nbsp;#include &quot;igt_core.h&quot;<br>
&#43;#include &quot;igt_device.h&quot;<br>
&nbsp;#include &quot;ioctl_wrappers.h&quot;<br>
&#43;#include &quot;intel_chipset.h&quot;<br>
&nbsp;<br>
&nbsp;#include &quot;gem_mman.h&quot;<br>
&nbsp;<br>
@@ -551,3 &#43;553,109 @@ const struct mmap_offset mmap_offset_types[] =3D =
{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; { &quot;uc&quot;, I915_MMA=
P_OFFSET_UC, I915_GEM_DOMAIN_WC },<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {},<br>
&nbsp;};<br>
&#43;<br>
&#43;/**<br>
&#43; * gem_available_aperture_size:<br>
&#43; * @fd: open i915 drm file descriptor<br>
&#43; *<br>
&#43; * Feature test macro to query the kernel for the available gpu apertu=
re size<br>
&#43; * usable in a batchbuffer.<br>
&#43; *<br>
&#43; * Returns: The available gtt address space size.<br>
&#43; */<br>
&#43;uint64_t gem_available_aperture_size(int fd)<br>
&#43;{<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_gem_get_aperture =
aperture =3D {<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; aperture.aper_available_size =3D 256*1024*1024,<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; };<br>
&#43;<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ioctl(fd, DRM_IOCTL_I915_GEM_GET_=
APERTURE, &amp;aperture);<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; errno =3D 0;<br>
&#43;<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return aperture.aper_available_si=
ze;<br>
&#43;}<br>
&#43;<br>
&#43;/**<br>
&#43; * gem_aperture_size:<br>
&#43; * @fd: open i915 drm file descriptor<br>
&#43; *<br>
&#43; * Feature test macro to query the kernel for the total gpu aperture s=
ize.<br>
&#43; *<br>
&#43; * Returns: The total gtt address space size.<br>
&#43; */<br>
&#43;uint64_t gem_aperture_size(int fd)<br>
&#43;{<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_gem_context_param=
 p =3D {<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; .param =3D 0x3<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; };<br>
<br>
</div>
<div class=3D"PlainText" style=3D"font-size: 10pt;">Understand this is the =
original code, but it will be more readable to use&nbsp;<span>I915_CONTEXT_=
PARAM_GTT_SIZE instead of 3.</span></div>
<div class=3D"PlainText" style=3D"font-size: 10pt;"><span><br>
</span></div>
<div class=3D"PlainText" style=3D"font-size: 10pt;">&#43;<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (__gem_context_get_param(fd, &=
amp;p))<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; p.value =3D gem_global_aperture_size(fd);<br>
&#43;<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return p.value;<br>
&#43;}<br>
&#43;<br>
&#43;/**<br>
&#43; * gem_mappable_aperture_size:<br>
&#43; *<br>
&#43; * Feature test macro to query the kernel for the mappable gpu apertur=
e size.<br>
&#43; * This is the area available for GTT memory mappings.<br>
&#43; *<br>
&#43; * Returns: The mappable gtt address space size.<br>
&#43; */<br>
&#43;uint64_t gem_mappable_aperture_size(int fd)<br>
&#43;{<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct pci_device *pci_dev =3D ig=
t_device_get_pci_device(fd);</div>
<div class=3D"PlainText" style=3D"font-size: 10pt;"><br>
</div>
<div class=3D"PlainText" style=3D"font-size: 10pt;"><span style=3D"font-fam=
ily: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Apple Color Emoji&quo=
t;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;=
, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 13.3333px;">Does it m=
ake
 sense to eliminate the function&nbsp;intel_get_pci_device() if not being u=
sed anymore? But it can be a separate patch.</span></div>
<div class=3D"PlainText" style=3D""><span style=3D"font-size: 13.3333px;"><=
br>
</span><span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; int bar;</span><br>
<span style=3D"font-size: 10pt;">&#43;</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (intel_gen(pci_dev-&gt;device_id) &lt; 3)</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bar =3D 0;</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
else</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bar =3D 2;</span><br>
<span style=3D"font-size: 10pt;">&#43;</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
return pci_dev-&gt;regions[bar].size;</span><br>
<span style=3D"font-size: 10pt;">&#43;}</span><br>
<span style=3D"font-size: 10pt;">&#43;</span><br>
<span style=3D"font-size: 10pt;">&#43;/**</span><br>
<span style=3D"font-size: 10pt;">&#43; * gem_global_aperture_size:</span><b=
r>
<span style=3D"font-size: 10pt;">&#43; * @fd: open i915 drm file descriptor=
</span><br>
<span style=3D"font-size: 10pt;">&#43; *</span><br>
<span style=3D"font-size: 10pt;">&#43; * Feature test macro to query the ke=
rnel for the global gpu aperture size.</span><br>
<span style=3D"font-size: 10pt;">&#43; * This is the area available for the=
 kernel to perform address translations.</span><br>
<span style=3D"font-size: 10pt;">&#43; *</span><br>
<span style=3D"font-size: 10pt;">&#43; * Returns: The gtt address space siz=
e.</span><br>
<span style=3D"font-size: 10pt;">&#43; */</span><br>
<span style=3D"font-size: 10pt;">&#43;uint64_t gem_global_aperture_size(int=
 fd)</span><br>
<span style=3D"font-size: 10pt;">&#43;{</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
struct drm_i915_gem_get_aperture aperture =3D {</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; aperture.aper_size =3D 256*=
1024*1024</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
};</span><br>
<span style=3D"font-size: 10pt;">&#43;</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
ioctl(fd, DRM_IOCTL_I915_GEM_GET_APERTURE, &amp;aperture);</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
errno =3D 0;</span><br>
<span style=3D"font-size: 10pt;">&#43;</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
return aperture.aper_size;</span><br>
<span style=3D"font-size: 10pt;">&#43;}</span><br>
<span style=3D"font-size: 10pt;">&#43;</span><br>
<span style=3D"font-size: 10pt;">&#43;/**</span><br>
<span style=3D"font-size: 10pt;">&#43; * gem_available_fences:</span><br>
<span style=3D"font-size: 10pt;">&#43; * @fd: open i915 drm file descriptor=
</span><br>
<span style=3D"font-size: 10pt;">&#43; *</span><br>
<span style=3D"font-size: 10pt;">&#43; * Feature test macro to query the ke=
rnel for the number of available fences</span><br>
<span style=3D"font-size: 10pt;">&#43; * usable in a batchbuffer. Only rele=
vant for pre-gen4.</span><br>
<span style=3D"font-size: 10pt;">&#43; *</span><br>
<span style=3D"font-size: 10pt;">&#43; * Returns: The number of available f=
ences.</span><br>
<span style=3D"font-size: 10pt;">&#43; */</span><br>
<span style=3D"font-size: 10pt;">&#43;int gem_available_fences(int fd)</spa=
n><br>
<span style=3D"font-size: 10pt;">&#43;{</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
int num_fences =3D 0;</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
struct drm_i915_getparam gp =3D {</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gp.param =3D I915_PARAM_NUM=
_FENCES_AVAIL,</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gp.value =3D &amp;num_fence=
s,</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
};</span><br>
<span style=3D"font-size: 10pt;">&#43;</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
ioctl(fd, DRM_IOCTL_I915_GETPARAM, &amp;gp, sizeof(gp));</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
errno =3D 0;</span><br>
<span style=3D"font-size: 10pt;">&#43;</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
return num_fences;</span><br>
<span style=3D"font-size: 10pt;">&#43;}</span><br>
<span style=3D"font-size: 10pt;">diff --git a/lib/i915/gem_mman.h b/lib/i91=
5/gem_mman.h</span><br>
<span style=3D"font-size: 10pt;">index 2c4a7a00b..ec2899ffe 100644</span><b=
r>
<span style=3D"font-size: 10pt;">--- a/lib/i915/gem_mman.h</span><br>
<span style=3D"font-size: 10pt;">&#43;&#43;&#43; b/lib/i915/gem_mman.h</spa=
n><br>
<span style=3D"font-size: 10pt;">@@ -109,5 &#43;109,11 @@ bool gem_has_mmap=
_offset_type(int fd, const struct mmap_offset *t);</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (__t)&#43;&#43;) \</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for_each_if(gem_has_=
mmap_offset_type((fd), (__t)))</span><br>
<span style=3D"font-size: 10pt;">&nbsp;</span><br>
<span style=3D"font-size: 10pt;">&#43;uint64_t gem_available_aperture_size(=
int fd);</span><br>
<span style=3D"font-size: 10pt;">&#43;uint64_t gem_aperture_size(int fd);</=
span><br>
<span style=3D"font-size: 10pt;">&#43;uint64_t gem_global_aperture_size(int=
 fd);</span><br>
<span style=3D"font-size: 10pt;">&#43;uint64_t gem_mappable_aperture_size(i=
nt fd);</span><br>
<span style=3D"font-size: 10pt;">&#43;int gem_available_fences(int fd);</sp=
an><br>
<span style=3D"font-size: 10pt;">&#43;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;#endif /* GEM_MMAN_H */</span><br>
<span style=3D"font-size: 10pt;">&nbsp;</span><br>
<span style=3D"font-size: 10pt;">diff --git a/lib/ioctl_wrappers.c b/lib/io=
ctl_wrappers.c</span><br>
<span style=3D"font-size: 10pt;">index 06431ce6c..a928f894f 100644</span><b=
r>
<span style=3D"font-size: 10pt;">--- a/lib/ioctl_wrappers.c</span><br>
<span style=3D"font-size: 10pt;">&#43;&#43;&#43; b/lib/ioctl_wrappers.c</sp=
an><br>
<span style=3D"font-size: 10pt;">@@ -782,31 &#43;782,6 @@ bool gem_engine_r=
eset_enabled(int fd)</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; return gem_gpu_reset_type(fd) &gt; 1;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;}</span><br>
<span style=3D"font-size: 10pt;">&nbsp;</span><br>
<span style=3D"font-size: 10pt;">-/**</span><br>
<span style=3D"font-size: 10pt;">- * gem_available_fences:</span><br>
<span style=3D"font-size: 10pt;">- * @fd: open i915 drm file descriptor</sp=
an><br>
<span style=3D"font-size: 10pt;">- *</span><br>
<span style=3D"font-size: 10pt;">- * Feature test macro to query the kernel=
 for the number of available fences</span><br>
<span style=3D"font-size: 10pt;">- * usable in a batchbuffer. Only relevant=
 for pre-gen4.</span><br>
<span style=3D"font-size: 10pt;">- *</span><br>
<span style=3D"font-size: 10pt;">- * Returns: The number of available fence=
s.</span><br>
<span style=3D"font-size: 10pt;">- */</span><br>
<span style=3D"font-size: 10pt;">-int gem_available_fences(int fd)</span><b=
r>
<span style=3D"font-size: 10pt;">-{</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int =
num_fences;</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; stru=
ct drm_i915_getparam gp;</span><br>
<span style=3D"font-size: 10pt;">-</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mems=
et(&amp;gp, 0, sizeof(gp));</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gp.p=
aram =3D I915_PARAM_NUM_FENCES_AVAIL;</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gp.v=
alue =3D &amp;num_fences;</span><br>
<span style=3D"font-size: 10pt;">-</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; num_=
fences =3D 0;</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ioct=
l(fd, DRM_IOCTL_I915_GETPARAM, &amp;gp, sizeof(gp));</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; errn=
o =3D 0;</span><br>
<span style=3D"font-size: 10pt;">-</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; retu=
rn num_fences;</span><br>
<span style=3D"font-size: 10pt;">-}</span><br>
<span style=3D"font-size: 10pt;">-</span><br>
<span style=3D"font-size: 10pt;">&nbsp;bool gem_has_llc(int fd)</span><br>
<span style=3D"font-size: 10pt;">&nbsp;{</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; int has_llc;</span><br>
<span style=3D"font-size: 10pt;">@@ -929,97 &#43;904,6 @@ uint64_t gem_tota=
l_stolen_size(int fd)</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; return aperture.stolen_total_size;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;}</span><br>
<span style=3D"font-size: 10pt;">&nbsp;</span><br>
<span style=3D"font-size: 10pt;">-/**</span><br>
<span style=3D"font-size: 10pt;">- * gem_available_aperture_size:</span><br=
>
<span style=3D"font-size: 10pt;">- * @fd: open i915 drm file descriptor</sp=
an><br>
<span style=3D"font-size: 10pt;">- *</span><br>
<span style=3D"font-size: 10pt;">- * Feature test macro to query the kernel=
 for the available gpu aperture size</span><br>
<span style=3D"font-size: 10pt;">- * usable in a batchbuffer.</span><br>
<span style=3D"font-size: 10pt;">- *</span><br>
<span style=3D"font-size: 10pt;">- * Returns: The available gtt address spa=
ce size.</span><br>
<span style=3D"font-size: 10pt;">- */</span><br>
<span style=3D"font-size: 10pt;">-uint64_t gem_available_aperture_size(int =
fd)</span><br>
<span style=3D"font-size: 10pt;">-{</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; stru=
ct drm_i915_gem_get_aperture aperture;</span><br>
<span style=3D"font-size: 10pt;">-</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mems=
et(&amp;aperture, 0, sizeof(aperture));</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; aper=
ture.aper_size =3D 256*1024*1024;</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; do_i=
octl(fd, DRM_IOCTL_I915_GEM_GET_APERTURE, &amp;aperture);</span><br>
<span style=3D"font-size: 10pt;">-</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; retu=
rn aperture.aper_available_size;</span><br>
<span style=3D"font-size: 10pt;">-}</span><br>
<span style=3D"font-size: 10pt;">-</span><br>
<span style=3D"font-size: 10pt;">-/**</span><br>
<span style=3D"font-size: 10pt;">- * gem_aperture_size:</span><br>
<span style=3D"font-size: 10pt;">- * @fd: open i915 drm file descriptor</sp=
an><br>
<span style=3D"font-size: 10pt;">- *</span><br>
<span style=3D"font-size: 10pt;">- * Feature test macro to query the kernel=
 for the total gpu aperture size.</span><br>
<span style=3D"font-size: 10pt;">- *</span><br>
<span style=3D"font-size: 10pt;">- * Returns: The total gtt address space s=
ize.</span><br>
<span style=3D"font-size: 10pt;">- */</span><br>
<span style=3D"font-size: 10pt;">-uint64_t gem_aperture_size(int fd)</span>=
<br>
<span style=3D"font-size: 10pt;">-{</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint=
64_t aperture_size =3D 0;</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; stru=
ct drm_i915_gem_context_param p;</span><br>
<span style=3D"font-size: 10pt;">-</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mems=
et(&amp;p, 0, sizeof(p));</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; p.pa=
ram =3D 0x3;</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (=
__gem_context_get_param(fd, &amp;p) =3D=3D 0) {</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; aperture_size =3D p.value;</spa=
n><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } el=
se {</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_gem_get_apertur=
e aperture;</span><br>
<span style=3D"font-size: 10pt;">-</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; memset(&amp;aperture, 0, sizeof=
(aperture));</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; aperture.aper_size =3D 256*1024=
*1024;</span><br>
<span style=3D"font-size: 10pt;">-</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; do_ioctl(fd, DRM_IOCTL_I915_GEM=
_GET_APERTURE, &amp;aperture);</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; aperture_size =3D&nbsp; apertur=
e.aper_size;</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</s=
pan><br>
<span style=3D"font-size: 10pt;">-</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; retu=
rn aperture_size;</span><br>
<span style=3D"font-size: 10pt;">-}</span><br>
<span style=3D"font-size: 10pt;">-</span><br>
<span style=3D"font-size: 10pt;">-/**</span><br>
<span style=3D"font-size: 10pt;">- * gem_mappable_aperture_size:</span><br>
<span style=3D"font-size: 10pt;">- *</span><br>
<span style=3D"font-size: 10pt;">- * Feature test macro to query the kernel=
 for the mappable gpu aperture size.</span><br>
<span style=3D"font-size: 10pt;">- * This is the area available for GTT mem=
ory mappings.</span><br>
<span style=3D"font-size: 10pt;">- *</span><br>
<span style=3D"font-size: 10pt;">- * Returns: The mappable gtt address spac=
e size.</span><br>
<span style=3D"font-size: 10pt;">- */</span><br>
<span style=3D"font-size: 10pt;">-uint64_t gem_mappable_aperture_size(void)=
</span><br>
<span style=3D"font-size: 10pt;">-{</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; stru=
ct pci_device *pci_dev =3D intel_get_pci_device();</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int =
bar;</span><br>
<span style=3D"font-size: 10pt;">-</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (=
intel_gen(pci_dev-&gt;device_id) &lt; 3)</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bar =3D 0;</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; else=
</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bar =3D 2;</span><br>
<span style=3D"font-size: 10pt;">-</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; retu=
rn pci_dev-&gt;regions[bar].size;</span><br>
<span style=3D"font-size: 10pt;">-}</span><br>
<span style=3D"font-size: 10pt;">-</span><br>
<span style=3D"font-size: 10pt;">-/**</span><br>
<span style=3D"font-size: 10pt;">- * gem_global_aperture_size:</span><br>
<span style=3D"font-size: 10pt;">- * @fd: open i915 drm file descriptor</sp=
an><br>
<span style=3D"font-size: 10pt;">- *</span><br>
<span style=3D"font-size: 10pt;">- * Feature test macro to query the kernel=
 for the global gpu aperture size.</span><br>
<span style=3D"font-size: 10pt;">- * This is the area available for the ker=
nel to perform address translations.</span><br>
<span style=3D"font-size: 10pt;">- *</span><br>
<span style=3D"font-size: 10pt;">- * Returns: The gtt address space size.</=
span><br>
<span style=3D"font-size: 10pt;">- */</span><br>
<span style=3D"font-size: 10pt;">-uint64_t gem_global_aperture_size(int fd)=
</span><br>
<span style=3D"font-size: 10pt;">-{</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; stru=
ct drm_i915_gem_get_aperture aperture;</span><br>
<span style=3D"font-size: 10pt;">-</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mems=
et(&amp;aperture, 0, sizeof(aperture));</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; aper=
ture.aper_size =3D 256*1024*1024;</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; do_i=
octl(fd, DRM_IOCTL_I915_GEM_GET_APERTURE, &amp;aperture);</span><br>
<span style=3D"font-size: 10pt;">-</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; retu=
rn aperture.aper_size;</span><br>
<span style=3D"font-size: 10pt;">-}</span><br>
<span style=3D"font-size: 10pt;">-</span><br>
<span style=3D"font-size: 10pt;">&nbsp;/**</span><br>
<span style=3D"font-size: 10pt;">&nbsp; * gem_has_softpin:</span><br>
<span style=3D"font-size: 10pt;">&nbsp; * @fd: open i915 drm file descripto=
r</span><br>
<span style=3D"font-size: 10pt;">diff --git a/lib/ioctl_wrappers.h b/lib/io=
ctl_wrappers.h</span><br>
<span style=3D"font-size: 10pt;">index b76bea564..07879ae96 100644</span><b=
r>
<span style=3D"font-size: 10pt;">--- a/lib/ioctl_wrappers.h</span><br>
<span style=3D"font-size: 10pt;">&#43;&#43;&#43; b/lib/ioctl_wrappers.h</sp=
an><br>
<span style=3D"font-size: 10pt;">@@ -117,12 &#43;117,7 @@ bool gem_uses_ful=
l_ppgtt(int fd);</span><br>
<span style=3D"font-size: 10pt;">&nbsp;int gem_gpu_reset_type(int fd);</spa=
n><br>
<span style=3D"font-size: 10pt;">&nbsp;bool gem_gpu_reset_enabled(int fd);<=
/span><br>
<span style=3D"font-size: 10pt;">&nbsp;bool gem_engine_reset_enabled(int fd=
);</span><br>
<span style=3D"font-size: 10pt;">-int gem_available_fences(int fd);</span><=
br>
<span style=3D"font-size: 10pt;">&nbsp;uint64_t gem_total_stolen_size(int f=
d);</span><br>
<span style=3D"font-size: 10pt;">-uint64_t gem_available_aperture_size(int =
fd);</span><br>
<span style=3D"font-size: 10pt;">-uint64_t gem_aperture_size(int fd);</span=
><br>
<span style=3D"font-size: 10pt;">-uint64_t gem_global_aperture_size(int fd)=
;</span><br>
<span style=3D"font-size: 10pt;">-uint64_t gem_mappable_aperture_size(void)=
;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;bool gem_has_softpin(int fd);</span>=
<br>
<span style=3D"font-size: 10pt;">&nbsp;bool gem_has_exec_fence(int fd);</sp=
an><br>
<span style=3D"font-size: 10pt;">&nbsp;</span><br>
<span style=3D"font-size: 10pt;">diff --git a/tests/i915/gem_concurrent_all=
.c b/tests/i915/gem_concurrent_all.c</span><br>
<span style=3D"font-size: 10pt;">index 9ea94125e..da850a104 100644</span><b=
r>
<span style=3D"font-size: 10pt;">--- a/tests/i915/gem_concurrent_all.c</spa=
n><br>
<span style=3D"font-size: 10pt;">&#43;&#43;&#43; b/tests/i915/gem_concurren=
t_all.c</span><br>
<span style=3D"font-size: 10pt;">@@ -1828,7 &#43;1828,7 @@ igt_main</span><=
br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; c-&gt;name, s-&gt;name, &quot;small&quot;);</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; igt_subtest_group {</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 igt_fixture {</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; count =3D num_buffers(gem_mappable_ap=
erture_size()/4,</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; count =3D num_buffers(gem_mappabl=
e_aperture_size(fd)/4,</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; s, c, CHECK_RAM);</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 }</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 run_modes(name, c, modes, s, count);</span><br>
<span style=3D"font-size: 10pt;">@@ -1839,7 &#43;1839,7 @@ igt_main</span><=
br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; c-&gt;name, s-&gt;name, &quot;thrash&quot;);</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; igt_subtest_group {</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 igt_fixture {</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; count =3D num_buffers(gem_mappable_ap=
erture_size(),</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; count =3D num_buffers(gem_mappabl=
e_aperture_size(fd),</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; s, c, CHECK_RAM);</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 }</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 run_modes(name, c, modes, s, count);</span><br>
<span style=3D"font-size: 10pt;">@@ -1871,7 &#43;1871,7 @@ igt_main</span><=
br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; c-&gt;name, s-&gt;name, &quot;shrink&quot;);</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; igt_subtest_group {</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 igt_fixture {</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; count =3D num_buffers(gem_mappable_ap=
erture_size(),</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; count =3D num_buffers(gem_mappabl=
e_aperture_size(fd),</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; s, c, CHECK_RAM);</span><br>
<span style=3D"font-size: 10pt;">&nbsp;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; igt_fork_shrink_helper(fd)=
;</span><br>
<span style=3D"font-size: 10pt;">@@ -1887,8 &#43;1887,8 @@ igt_main</span><=
br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; c-&gt;name, s-&gt;name, &quot;swap&quot;);</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; igt_subtest_group {</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 igt_fixture {</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (intel_get_avail_ram_mb() &gt; gem=
_mappable_aperture_size()/(1024*1024)) {</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; pin_sz =3D intel_get_avail_ram_mb() - gem_mappable_aperture_size=
()/(1024*1024);</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (intel_get_avail_ram_mb() &gt;=
 gem_mappable_aperture_size(fd)/(1024*1024)) {</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; pin_sz =3D intel_get_avail_ram_mb() - gem_mappable_aperture_=
size(fd)/(1024*1024);</span><br>
<span style=3D"font-size: 10pt;">&nbsp;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; igt_debug(&quot;Pinning %lld MiB\n&quot;, (long long)=
pin_sz);</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; pin_sz *=3D 1024 * 1024;</span><br>
<span style=3D"font-size: 10pt;">@@ -1902,7 &#43;1902,7 @@ igt_main</span><=
br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; igt_require(pinned);</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span><br>
<span style=3D"font-size: 10pt;">&nbsp;</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; count =3D num_buffers(gem_mappable_ap=
erture_size(),</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; count =3D num_buffers(gem_mappabl=
e_aperture_size(fd),</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; s, c, CHECK_RAM | CHECK_SWAP);</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 }</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 run_modes(name, c, modes, s, count);</span><br>
<span style=3D"font-size: 10pt;">diff --git a/tests/i915/gem_mmap.c b/tests=
/i915/gem_mmap.c</span><br>
<span style=3D"font-size: 10pt;">index 8bad9b14e..60a64c134 100644</span><b=
r>
<span style=3D"font-size: 10pt;">--- a/tests/i915/gem_mmap.c</span><br>
<span style=3D"font-size: 10pt;">&#43;&#43;&#43; b/tests/i915/gem_mmap.c</s=
pan><br>
<span style=3D"font-size: 10pt;">@@ -53,10 &#43;53,10 @@ test_huge_bo(int h=
uge)</span><br>
<span style=3D"font-size: 10pt;">&nbsp;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; switch (huge) {</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; case -1:</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; huge_object_size =3D gem_mappab=
le_aperture_size() / 2;</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; huge_object_size =3D gem_ma=
ppable_aperture_size(fd) / 2;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; break;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; case 0:</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; huge_object_size =3D gem_mappab=
le_aperture_size() &#43; PAGE_SIZE;</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; huge_object_size =3D gem_ma=
ppable_aperture_size(fd) &#43; PAGE_SIZE;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; break;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; case 1:</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; huge_object_size =3D=
 gem_aperture_size(fd) &#43; PAGE_SIZE;</span><br>
<span style=3D"font-size: 10pt;">diff --git a/tests/i915/gem_mmap_gtt.c b/t=
ests/i915/gem_mmap_gtt.c</span><br>
<span style=3D"font-size: 10pt;">index 61fbc5bc7..528a7c726 100644</span><b=
r>
<span style=3D"font-size: 10pt;">--- a/tests/i915/gem_mmap_gtt.c</span><br>
<span style=3D"font-size: 10pt;">&#43;&#43;&#43; b/tests/i915/gem_mmap_gtt.=
c</span><br>
<span style=3D"font-size: 10pt;">@@ -905,7 &#43;905,7 @@ test_huge_bo(int f=
d, int huge, int tiling)</span><br>
<span style=3D"font-size: 10pt;">&nbsp;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; switch (huge) {</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; case -1:</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size =3D gem_mappable_aperture_=
size() / 2;</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size =3D gem_mappable_apert=
ure_size(fd) / 2;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* Power of two fenc=
e size, natural fence</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * alignment, a=
nd the guard page at the end</span><br>
<span style=3D"font-size: 10pt;">@@ -920,7 &#43;920,7 @@ test_huge_bo(int f=
d, int huge, int tiling)</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; size /=3D 2;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; break;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; case 0:</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size =3D gem_mappable_aperture_=
size() &#43; PAGE_SIZE;</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size =3D gem_mappable_apert=
ure_size(fd) &#43; PAGE_SIZE;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; break;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; default:</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size =3D gem_global_=
aperture_size(fd) &#43; PAGE_SIZE;</span><br>
<span style=3D"font-size: 10pt;">@@ -1001,13 &#43;1001,13 @@ test_huge_copy=
(int fd, int huge, int tiling_a, int tiling_b, int ncpus)</span><br>
<span style=3D"font-size: 10pt;">&nbsp;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; switch (huge) {</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; case -2:</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; huge_object_size =3D gem_mappab=
le_aperture_size() / 4;</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; huge_object_size =3D gem_ma=
ppable_aperture_size(fd) / 4;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; break;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; case -1:</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; huge_object_size =3D gem_mappab=
le_aperture_size() / 2;</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; huge_object_size =3D gem_ma=
ppable_aperture_size(fd) / 2;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; break;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; case 0:</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; huge_object_size =3D gem_mappab=
le_aperture_size() &#43; PAGE_SIZE;</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; huge_object_size =3D gem_ma=
ppable_aperture_size(fd) &#43; PAGE_SIZE;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; break;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; case 1:</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; huge_object_size =3D=
 gem_global_aperture_size(fd) &#43; PAGE_SIZE;</span><br>
<span style=3D"font-size: 10pt;">diff --git a/tests/i915/gem_pwrite.c b/tes=
ts/i915/gem_pwrite.c</span><br>
<span style=3D"font-size: 10pt;">index d2dcc95e8..f76d2bc70 100644</span><b=
r>
<span style=3D"font-size: 10pt;">--- a/tests/i915/gem_pwrite.c</span><br>
<span style=3D"font-size: 10pt;">&#43;&#43;&#43; b/tests/i915/gem_pwrite.c<=
/span><br>
<span style=3D"font-size: 10pt;">@@ -130,7 &#43;130,7 @@ static void test_b=
ig_cpu(int fd, int scale, unsigned flags)</span><br>
<span style=3D"font-size: 10pt;">&nbsp;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; switch (scale) {</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; case 0:</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size =3D gem_mappable_aperture_=
size() &#43; 4096;</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size =3D gem_mappable_apert=
ure_size(fd) &#43; 4096;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; break;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; case 1:</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size =3D gem_global_=
aperture_size(fd) &#43; 4096;</span><br>
<span style=3D"font-size: 10pt;">@@ -192,7 &#43;192,7 @@ static void test_b=
ig_gtt(int fd, int scale, unsigned flags)</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; igt_require(gem_mmap__has_wc(fd));</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; switch (scale) {</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; case 0:</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size =3D gem_mappable_aperture_=
size() &#43; 4096;</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size =3D gem_mappable_apert=
ure_size(fd) &#43; 4096;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; break;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; case 1:</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size =3D gem_global_=
aperture_size(fd) &#43; 4096;</span><br>
<span style=3D"font-size: 10pt;">@@ -257,7 &#43;257,7 @@ static void test_r=
andom(int fd)</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; gem_require_mmap_wc(fd);</span><br>
<span style=3D"font-size: 10pt;">&nbsp;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; size =3D min(intel_get_total_ram_mb() / 2,</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gem_map=
pable_aperture_size() &#43; 4096);</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gem=
_mappable_aperture_size(fd) &#43; 4096);</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; intel_require_memory(1, size, CHECK_RAM);</span><br>
<span style=3D"font-size: 10pt;">&nbsp;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; handle =3D gem_create(fd, size);</span><br>
<span style=3D"font-size: 10pt;">diff --git a/tests/i915/gem_shrink.c b/tes=
ts/i915/gem_shrink.c</span><br>
<span style=3D"font-size: 10pt;">index dba62c8fa..023db8c56 100644</span><b=
r>
<span style=3D"font-size: 10pt;">--- a/tests/i915/gem_shrink.c</span><br>
<span style=3D"font-size: 10pt;">&#43;&#43;&#43; b/tests/i915/gem_shrink.c<=
/span><br>
<span style=3D"font-size: 10pt;">@@ -439,7 &#43;439,7 @@ igt_main</span><br=
>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * we expect th=
e shrinker to start purging objects,</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * and possibly=
 fail.</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; alloc_size =3D gem_mappable_ape=
rture_size() / 2;</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; alloc_size =3D gem_mappable=
_aperture_size(fd) / 2;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; num_processes =3D 1 =
&#43; (mem_size / (alloc_size &gt;&gt; 20));</span><br>
<span style=3D"font-size: 10pt;">&nbsp;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; igt_info(&quot;Using=
 %d processes and %'lluMiB per process\n&quot;,</span><br>
<span style=3D"font-size: 10pt;">diff --git a/tests/i915/gem_tiled_fence_bl=
its.c b/tests/i915/gem_tiled_fence_blits.c</span><br>
<span style=3D"font-size: 10pt;">index 0a633d91b..28beea898 100644</span><b=
r>
<span style=3D"font-size: 10pt;">--- a/tests/i915/gem_tiled_fence_blits.c</=
span><br>
<span style=3D"font-size: 10pt;">&#43;&#43;&#43; b/tests/i915/gem_tiled_fen=
ce_blits.c</span><br>
<span style=3D"font-size: 10pt;">@@ -225,7 &#43;225,7 @@ igt_main</span><br=
>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gem_require_blitter(=
fd);</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gem_require_mappable=
_ggtt(fd);</span><br>
<span style=3D"font-size: 10pt;">&nbsp;</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; count =3D gem_mappable_aperture=
_size(); /* thrash fences! */</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; count =3D gem_mappable_aper=
ture_size(fd); /* thrash fences! */</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (count &gt;&gt; 3=
2)</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; count =3D MAX_32b;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; count =3D 3 &#43; co=
unt / (1024 * 1024);</span><br>
<span style=3D"font-size: 10pt;">diff --git a/tests/i915/i915_pm_rpm.c b/te=
sts/i915/i915_pm_rpm.c</span><br>
<span style=3D"font-size: 10pt;">index 6d46c320c..6321dd403 100644</span><b=
r>
<span style=3D"font-size: 10pt;">--- a/tests/i915/i915_pm_rpm.c</span><br>
<span style=3D"font-size: 10pt;">&#43;&#43;&#43; b/tests/i915/i915_pm_rpm.c=
</span><br>
<span style=3D"font-size: 10pt;">@@ -1419,7 &#43;1419,7 @@ static void gem_=
evict_pwrite_subtest(void)</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; unsigned int num_trash_bos, n;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; uint32_t buf;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; num_=
trash_bos =3D gem_mappable_aperture_size() / (1024*1024) &#43; 1;</span><br=
>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
num_trash_bos =3D gem_mappable_aperture_size(drm_fd) / (1024*1024) &#43; 1;=
</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; trash_bos =3D malloc(num_trash_bos * sizeof(*trash_bos));</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; igt_assert(trash_bos);</span><br>
<span style=3D"font-size: 10pt;">&nbsp;</span><br>
<span style=3D"font-size: 10pt;">@@ -1463,7 &#43;1463,7 @@ static bool devi=
ce_in_pci_d3(void)</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; uint16_t val;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; int rc;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rc =
=3D pci_device_cfg_read_u16(intel_get_pci_device(), &amp;val, 0xd4);</span>=
<br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
rc =3D pci_device_cfg_read_u16(igt_device_get_pci_device(drm_fd), &amp;val,=
 0xd4);</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; igt_assert_eq(rc, 0);</span><br>
<span style=3D"font-size: 10pt;">&nbsp;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; igt_debug(&quot;%s: PCI D3 state=3D%d\n&quot;, __func__, val &amp; 0=
x3);</span><br>
<span style=3D"font-size: 10pt;">diff --git a/tests/kms_big_fb.c b/tests/km=
s_big_fb.c</span><br>
<span style=3D"font-size: 10pt;">index 02e9915ba..8794ace08 100644</span><b=
r>
<span style=3D"font-size: 10pt;">--- a/tests/kms_big_fb.c</span><br>
<span style=3D"font-size: 10pt;">&#43;&#43;&#43; b/tests/kms_big_fb.c</span=
><br>
<span style=3D"font-size: 10pt;">@@ -645,7 &#43;645,7 @@ igt_main</span><br=
>
<span style=3D"font-size: 10pt;">&nbsp;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; data.ram_size =3D in=
tel_get_total_ram_mb() &lt;&lt; 20;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; data.aper_size =3D g=
em_aperture_size(data.drm_fd);</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; data.mappable_size =3D gem_mapp=
able_aperture_size();</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; data.mappable_size =3D gem_=
mappable_aperture_size(data.drm_fd);</span><br>
<span style=3D"font-size: 10pt;">&nbsp;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; igt_info(&quot;RAM: =
%&quot;PRIu64&quot; MiB, GPU address space: %&quot;PRId64&quot; MiB, GGTT m=
appable size: %&quot;PRId64&quot; MiB\n&quot;,</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; data.ram_size &gt;&gt; 20, data.aper_size=
 &gt;&gt; 20,</span><br>
<span style=3D"font-size: 10pt;">diff --git a/tests/kms_flip.c b/tests/kms_=
flip.c</span><br>
<span style=3D"font-size: 10pt;">index 51b9ac950..0f0565cf6 100755</span><b=
r>
<span style=3D"font-size: 10pt;">--- a/tests/kms_flip.c</span><br>
<span style=3D"font-size: 10pt;">&#43;&#43;&#43; b/tests/kms_flip.c</span><=
br>
<span style=3D"font-size: 10pt;">@@ -1282,7 &#43;1282,7 @@ static void __ru=
n_test_on_crtc_set(struct test_output *o, int *crtc_idxs,</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; /* 256 MB is usually the maximum mappable aperture,</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; * (make it 4x times that to ensure failure) */</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; if (o-&gt;flags &amp; TEST_BO_TOOBIG) {</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bo_size =3D 4*gem_mappable_aper=
ture_size();</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bo_size =3D 4*gem_mappable_=
aperture_size(drm_fd);</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; igt_require(bo_size =
&lt; gem_global_aperture_size(drm_fd));</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; }</span><br>
<span style=3D"font-size: 10pt;">&nbsp;</span><br>
<span style=3D"font-size: 10pt;">diff --git a/tests/prime_mmap.c b/tests/pr=
ime_mmap.c</span><br>
<span style=3D"font-size: 10pt;">index 143342410..7c43ced85 100644</span><b=
r>
<span style=3D"font-size: 10pt;">--- a/tests/prime_mmap.c</span><br>
<span style=3D"font-size: 10pt;">&#43;&#43;&#43; b/tests/prime_mmap.c</span=
><br>
<span style=3D"font-size: 10pt;">@@ -447,8 &#43;447,8 @@ test_aperture_limi=
t(void)</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; char *ptr1, *ptr2;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; uint32_t handle1, handle2;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; /* Two buffers the sum of which &gt; mappable aperture */</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint=
64_t size1 =3D (gem_mappable_aperture_size() * 7) / 8;</span><br>
<span style=3D"font-size: 10pt;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint=
64_t size2 =3D (gem_mappable_aperture_size() * 3) / 8;</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
uint64_t size1 =3D (gem_mappable_aperture_size(fd) * 7) / 8;</span><br>
<span style=3D"font-size: 10pt;">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
uint64_t size2 =3D (gem_mappable_aperture_size(fd) * 3) / 8;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; handle1 =3D gem_create(fd, size1);</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; fill_bo(handle1, BO_SIZE);</span><br>
<span style=3D"font-size: 10pt;">-- </span><br>
<span style=3D"font-size: 10pt;">2.29.2</span><br>
<br>
</div>
</font></div>
</div>
</body>
</html>

--_000_7021dc5149a24438878f6540a0c4aed8intelcom_--

--===============1014413096==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1014413096==--
