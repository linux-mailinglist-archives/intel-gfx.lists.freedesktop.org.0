Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D609719E171
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Apr 2020 01:26:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9606F6ECC4;
	Fri,  3 Apr 2020 23:26:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 607B76ECC1;
 Fri,  3 Apr 2020 23:26:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 58E9EA0BC6;
 Fri,  3 Apr 2020 23:26:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Fri, 03 Apr 2020 23:26:14 -0000
Message-ID: <158595637433.13351.1890873525779554630@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZGV2?=
 =?utf-8?q?m=5Fdrm=5Fdev=5Falloc=2C_no_more_drmm=5Fadd=5Ffinal=5Fkfree_=28?=
 =?utf-8?q?rev3=29?=
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

Series: devm_drm_dev_alloc, no more drmm_add_final_kfree (rev3)
URL   : https://patchwork.freedesktop.org/series/75463/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8252 -> Patchwork_17210
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17210/index.html

Known issues
------------

  Here are the changes found in Patchwork_17210 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@late_gt_pm:
    - fi-bsw-nick:        [PASS][1] -> [INCOMPLETE][2] ([i915#1382])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8252/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17210/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html

  
  [i915#1382]: https://gitlab.freedesktop.org/drm/intel/issues/1382


Participating hosts (51 -> 39)
------------------------------

  Missing    (12): fi-ilk-m540 fi-hsw-4200u fi-byt-j1900 fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-ilk-650 fi-bdw-samus fi-byt-n2820 fi-byt-clapper fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8252 -> Patchwork_17210

  CI-20190529: 20190529
  CI_DRM_8252: 3690abb8ed49d9a066f80de39e4e75792c86ac76 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5563: 7ab7807727262b7ed7e12197b78e867287a17ef6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17210: 7b4b396a9651b81dd206bd91b4f9f0b15ffcb5bb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7b4b396a9651 drm/managed: Cleanup of unused functions and polishing docs
3987454b5211 drm/i915/selftests: align more to real device lifetimes
6393e4b92e1c drm/i915/selftest: Create mock_destroy_device
4a439cfa5fcf drm/i915: Use devm_drm_dev_alloc
98784a0227c1 drm/cirrus: Don't use drm_device->dev_private
6249fdd96afa drm/cirrus: Use devm_drm_dev_alloc
db39d7083700 drm/armada: Don't use drm_device->dev_private
c7f35d34191f drm/armada: Use devm_drm_dev_alloc
c689c28c7c33 drm/komeda: use devm_drm_dev_alloc
30d321d9c183 drm/ingenic: Don't set drm_device->dev_private
ec4f2c0b4634 drm/ingenic: Use devm_drm_dev_alloc
84a9b2b7c79f drm/mcde: Don't use drm_device->dev_private
3ac62531c793 drm/mcde: Use devm_drm_dev_alloc
d88455e402f4 drm/qxl: Don't use drm_device->dev_private
05389abcb0c1 drm/qxl: Use devm_drm_dev_alloc
74d72be056ef drm/tidss: Delete tidss->saved_state
877109556b31 drm/tidss: Don't use drm_device->dev_private
02af73e35a85 drm/tidss: Use devm_drm_dev_alloc
3376d9019b4c drm/gm12u320: Don't use drm_device->dev_private
3333eb394269 drm/gm12u320: Use devm_drm_dev_alloc
7d059380b7de drm/hx8357d: Use devm_drm_dev_alloc
4b8b9048fa61 drm/ili9225: Use devm_drm_dev_alloc
25c9c3f9e447 drm/ili9341: Use devm_drm_dev_alloc
a8b3f3a2dfb2 drm/ili9486: Use devm_drm_dev_alloc
6d7d1f235e30 drm/mi0283qt: Use devm_drm_dev_alloc
d5de90a7063e drm/repaper: Use devm_drm_dev_alloc
09e5644e82b8 drm/st7586: Use devm_drm_dev_alloc
3dc0b3b337f2 drm/st7735r: Use devm_drm_dev_alloc
4cb201d3bd97 drm/udl: don't set drm_device->dev_private
ec9cf4556e61 drm/udl: Use demv_drm_dev_alloc
66c944512b95 drm/v3d: Delete v3d_dev->pdev
f48e47f68a86 drm/v3d: Delete v3d_dev->dev
d25b70710de9 drm/v3d: Use devm_drm_dev_alloc
ec196f9e0be0 drm/v3d: Don't set drm_device->dev_private
6e4b89850b36 drm/vboxvideo: Use devm_gen_pool_create
9ba07a46cef1 drm/vboxvidoe: use managed pci functions
76793ba02626 drm/vboxvideo: Stop using drm_device->dev_private
098edba18627 drm/vboxvideo: Use devm_drm_dev_alloc
aae694a8a5d2 drm/vboxvideo: drop DRM_MTRR_WC #define
5920030f62ea drm/vkms: Use devm_drm_dev_alloc
a78829a54af6 drm/vgem: Use devm_drm_dev_alloc
ed01ac38e04a drm/device: Deprecate dev_private harder
e239d39afecc drm: Add devm_drm_dev_alloc macro
e72346e75771 drivers/base: Always release devres on device_del

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17210/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
