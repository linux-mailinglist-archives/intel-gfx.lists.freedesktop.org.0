Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DE5988C54
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Sep 2024 00:10:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A17F210E347;
	Fri, 27 Sep 2024 22:10:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28EAD10E239;
 Fri, 27 Sep 2024 22:10:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm=3A_Introduce_DRM_clie?=
 =?utf-8?q?nt_library?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Sep 2024 22:10:07 -0000
Message-ID: <172747500716.1113350.7256554957997893012@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240927144252.31813-1-tzimmermann@suse.de>
In-Reply-To: <20240927144252.31813-1-tzimmermann@suse.de>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm: Introduce DRM client library
URL   : https://patchwork.freedesktop.org/series/139221/
State : failure

== Summary ==

Error: make install failed
  INSTALL /home/kbuild2/install/boot
  SYMLINK /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/build
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/modules.order
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/modules.builtin
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/modules.builtin.modinfo
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/arch/x86/crypto/ghash-clmulni-intel.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/arch/x86/crypto/crc32-pclmul.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/arch/x86/crypto/crct10dif-pclmul.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/arch/x86/kvm/kvm.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/arch/x86/kvm/kvm-intel.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/kernel/configs.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/fs/nls/nls_ucs2_utils.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/fs/netfs/netfs.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/fs/smb/common/cifs_arc4.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/fs/smb/common/cifs_md4.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/fs/smb/client/cifs.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/fs/fuse/fuse.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/crypto/echainiv.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/crypto/md4.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/crypto/gcm.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/crypto/ccm.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/crypto/arc4.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/crypto/authenc.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/crypto/authencesn.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/crypto/ghash-generic.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/crypto/essiv.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/lib/kunit/kunit.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/lib/math/prime_numbers.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/lib/crypto/libarc4.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/lib/crc-itu-t.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/lib/asn1_decoder.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/lib/oid_registry.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/pinctrl/intel/pinctrl-cherryview.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/pinctrl/intel/pinctrl-broxton.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/pinctrl/intel/pinctrl-geminilake.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/pinctrl/intel/pinctrl-sunrisepoint.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/acpi/video.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/gpu/drm/tests/drm_kunit_helpers.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/gpu/drm/tests/drm_buddy_test.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/gpu/drm/tests/drm_cmdline_parser_test.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/gpu/drm/tests/drm_connector_test.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/gpu/drm/tests/drm_damage_helper_test.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/gpu/drm/tests/drm_dp_mst_helper_test.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/gpu/drm/tests/drm_exec_test.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/gpu/drm/tests/drm_format_helper_test.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/gpu/drm/tests/drm_format_test.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/gpu/drm/tests/drm_framebuffer_test.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/gpu/drm/tests/drm_gem_shmem_test.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/gpu/drm/tests/drm_managed_test.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/gpu/drm/tests/drm_mm_test.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/gpu/drm/tests/drm_modes_test.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/gpu/drm/tests/drm_plane_helper_test.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/gpu/drm/tests/drm_probe_helper_test.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/gpu/drm/tests/drm_rect_test.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/gpu/drm/display/drm_display_helper.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/gpu/drm/drm_exec.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/gpu/drm/drm_buddy.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/gpu/drm/drm_shmem_helper.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/gpu/drm/drm_suballoc_helper.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/gpu/drm/drm_ttm_helper.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/gpu/drm/drm_kms_helper.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/gpu/drm/drm_client_lib.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/gpu/drm/ttm/ttm.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/gpu/drm/scheduler/gpu-sched.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/gpu/drm/amd/amdgpu/amdgpu.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/gpu/drm/amd/amdxcp/amdxcp.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/gpu/drm/i915/i915.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/gpu/drm/i915/kvmgt.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/gpu/drm/vgem/vgem.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/misc/mei/mei.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/misc/mei/mei-me.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/misc/mei/mei-gsc.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/misc/mei/hdcp/mei_hdcp.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/misc/mei/pxp/mei_pxp.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/misc/mei/gsc_proxy/mei_gsc_proxy.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/mfd/lpc_sch.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/mfd/lpc_ich.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/mfd/intel-lpss-pci.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/dma-buf/dmabuf_selftests.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/phy/phylink.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/phy/aquantia/aquantia.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/phy/ax88796b.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/phy/bcm7xxx.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/phy/bcm87xx.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/phy/bcm-phy-lib.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/phy/broadcom.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/phy/lxt.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/phy/realtek.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/phy/smsc.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/ethernet/aquantia/atlantic/atlantic.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/ethernet/broadcom/b44.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/ethernet/broadcom/bnx2.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/ethernet/broadcom/cnic.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/ethernet/broadcom/tg3.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/ethernet/intel/libeth/libeth.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/ethernet/intel/libie/libie.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/ethernet/intel/e100.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/ethernet/intel/e1000/e1000.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/ethernet/intel/e1000e/e1000e.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/ethernet/intel/igb/igb.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/ethernet/intel/igc/igc.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/ethernet/intel/igbvf/igbvf.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/ethernet/intel/ixgbe/ixgbe.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/ethernet/intel/i40e/i40e.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/ethernet/realtek/8139cp.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/ethernet/realtek/8139too.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/ethernet/realtek/r8169.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/ethernet/smsc/smsc9420.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/usb/pegasus.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/usb/rtl8150.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/usb/r8152.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/usb/asix.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/usb/ax88179_178a.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/usb/cdc_ether.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/usb/cdc_eem.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/usb/smsc75xx.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/usb/smsc95xx.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/usb/mcs7830.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/usb/usbnet.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/usb/cdc_ncm.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/usb/r8153_ecm.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/mii.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/mdio.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/net/netconsole.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/usb/class/usbtmc.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/usb/serial/usbserial.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/usb/serial/ftdi_sio.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/usb/serial/pl2303.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/i2c/algos/i2c-algo-bit.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/i2c/busses/i2c-scmi.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/i2c/busses/i2c-ccgx-ucsi.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/i2c/busses/i2c-i801.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/i2c/busses/i2c-isch.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/i2c/busses/i2c-ismt.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/i2c/busses/i2c-piix4.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/i2c/busses/i2c-designware-pci.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/i2c/muxes/i2c-mux-gpio.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/i2c/i2c-smbus.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/i2c/i2c-dev.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/i2c/i2c-mux.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/ptp/ptp.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/hwmon/acpi_power_meter.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/hwmon/coretemp.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/thermal/intel/x86_pkg_temp_thermal.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/md/dm-crypt.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/mmc/host/sdhci-pltfm.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/platform/x86/intel/intel-rst.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/platform/x86/wmi.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/platform/x86/wmi-bmof.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/platform/x86/intel_ips.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/devfreq/governor_simpleondemand.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/devfreq/governor_performance.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/uio/uio.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/vfio/vfio.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/vfio/vfio_iommu_type1.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/vfio/mdev/mdev.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/pps/pps_core.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/bluetooth/btusb.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/bluetooth/btintel.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/bluetooth/btbcm.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/bluetooth/btrtl.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/ssb/ssb.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/drivers/thunderbolt/thunderbolt.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/sound/core/snd-ctl-led.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/sound/core/snd-hwdep.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/sound/core/snd-pcm.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/sound/pci/hda/snd-hda-codec.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/sound/pci/hda/snd-hda-codec-generic.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/sound/pci/hda/snd-hda-codec-realtek.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/sound/pci/hda/snd-hda-codec-analog.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/sound/pci/hda/snd-hda-codec-hdmi.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/sound/pci/hda/snd-hda-scodec-component.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/sound/pci/hda/snd-hda-intel.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/sound/hda/snd-hda-core.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/sound/hda/snd-intel-dspcfg.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/sound/hda/snd-intel-sdw-acpi.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/net/bluetooth/bluetooth.ko
  INSTALL /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+/kernel/net/dns_resolver/dns_resolver.ko
  DEPMOD  /home/kbuild2/install/lib/modules/6.11.0-Patchwork_139221v1-g1522f1315052+
depmod: ERROR: Cycle detected: drm_kms_helper -> drm_client_lib -> drm_kms_helper
depmod: ERROR: Found 2 modules in dependency cycles!
make[2]: *** [scripts/Makefile.modinst:128: depmod] Error 1
make[1]: *** [/home/kbuild2/kernel/Makefile:1834: modules_install] Error 2
make: *** [Makefile:224: __sub-make] Error 2
Build failed, no error log produced


