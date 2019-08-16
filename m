Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E6F900C4
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 13:32:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 545456E31E;
	Fri, 16 Aug 2019 11:32:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
 [217.70.183.195])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9E106E31D;
 Fri, 16 Aug 2019 11:32:05 +0000 (UTC)
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 7215A60008;
 Fri, 16 Aug 2019 11:32:01 +0000 (UTC)
Date: Fri, 16 Aug 2019 13:32:01 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20190816113201.jwh7bqeddxllvgdv@flea>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
Subject: [Intel-gfx] [PULL] drm-misc-next
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: dim-tools@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, intel-gfx@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============1691965833=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1691965833==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="l36wwyig2shiddn3"
Content-Disposition: inline


--l36wwyig2shiddn3
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Daniel, Dave,

Here's this week drm-misc-next PR.

Maxime

drm-misc-next-2019-08-16:
drm-misc-next for 5.4:

UAPI Changes:

Cross-subsystem Changes:

Core Changes:
  - dma-buf: add reservation_object_fences helper, relax
             reservation_object_add_shared_fence, remove
             reservation_object seq number

Driver Changes:
  - More dt-bindings YAML conversions
  - More removal of drmP.h includes
  - dw-hdmi: Support get_eld and various i2s improvements
  - gm12u320: Few fixes
  - meson: Global cleanup
  - panfrost: Few refactors, Support for GPU heap allocations
  - sun4i: Support for DDC enable GPIO
  - New panels: TI nspire, NEC NL8048HL11, LG Philips LB035Q02,
                Sharp LS037V7DW01, Sony ACX565AKM, Toppoly TD028TTEC1
                Toppoly TD043MTEA1
The following changes since commit cc8f12996e24b102a086a253055ecc58c437c31d:

  drm/rockchip: fix VOP_WIN_GET macro (2019-08-08 00:23:15 +0200)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-next-2019-08-16

for you to fetch changes up to dc2e1e5b279966affbd11ff7cfef52eb634ca2c9:

  drm/panel: Add driver for the Toppoly TD043MTEA1 panel (2019-08-14 22:23:=
11 +0200)

----------------------------------------------------------------
drm-misc-next for 5.4:

UAPI Changes:

Cross-subsystem Changes:

Core Changes:
  - dma-buf: add reservation_object_fences helper, relax
             reservation_object_add_shared_fence, remove
             reservation_object seq number

Driver Changes:
  - More dt-bindings YAML conversions
  - More removal of drmP.h includes
  - dw-hdmi: Support get_eld and various i2s improvements
  - gm12u320: Few fixes
  - meson: Global cleanup
  - panfrost: Few refactors, Support for GPU heap allocations
  - sun4i: Support for DDC enable GPIO
  - New panels: TI nspire, NEC NL8048HL11, LG Philips LB035Q02,
                Sharp LS037V7DW01, Sony ACX565AKM, Toppoly TD028TTEC1
                Toppoly TD043MTEA1

----------------------------------------------------------------
Chris Wilson (3):
      dma-fence: Propagate errors to dma-fence-array container
      dma-fence: Report the composite sync_file status
      dma-buf/sw_sync: Synchronize signal vs syncpt free

Christian K=F6nig (6):
      dma-buf: make dma_fence structure a bit smaller v2
      dma-buf: add reservation_object_fences helper
      drm/i915: use new reservation_object_fences helper
      dma-buf: further relax reservation_object_add_shared_fence
      dma-buf: nuke reservation_object seq number
      dma-buf: rename reservation_object to dma_resv

Geert Uytterhoeven (1):
      drm/bridge: dumb-vga-dac: Fix dereferencing -ENODEV DDC channel

Gustavo A. R. Silva (1):
      drm/komeda: Fix potential integer overflow in komeda_crtc_update_cloc=
k_ratio

Hans de Goede (4):
      drm: gm12u320: Some minor cleanups
      drm: gm12u320: Use DRM_DEV_ERROR everywhere
      drm: gm12u320: Do not take a mutex from a wait_event condition
      drm: gm12u320: Add -ENODEV to list of errors to ignore

Jason Ekstrand (1):
      drm/syncobj: Add better overview documentation for syncobj (v2)

Jerome Brunet (8):
      drm/bridge: dw-hdmi-i2s: support more i2s format
      drm/bridge: dw-hdmi: move audio channel setup out of ahb
      drm/bridge: dw-hdmi: set channel count in the infoframes
      drm/bridge: dw-hdmi-i2s: enable lpcm multi channels
      drm/bridge: dw-hdmi-i2s: set the channel allocation
      drm/bridge: dw-hdmi-i2s: reset audio fifo before applying new params
      drm/bridge: dw-hdmi-i2s: enable only the required i2s lanes
      drm/bridge: dw-hdmi-i2s: add .get_eld support

Julien Masson (9):
      drm: meson: mask value when writing bits relaxed
      drm: meson: crtc: use proper macros instead of magic constants
      drm: meson: drv: use macro when initializing vpu
      drm: meson: vpp: use proper macros instead of magic constants
      drm: meson: viu: use proper macros instead of magic constants
      drm: meson: venc: use proper macros instead of magic constants
      drm: meson: global clean-up
      drm: meson: add macro used to enable HDMI PLL
      drm: meson: venc: set the correct macrovision max amplitude value

Laurent Pinchart (9):
      dt-bindings: Add vendor prefix for LG Display
      dt-bindings: Add legacy 'toppoly' vendor prefix
      dt-bindings: display: panel: Add bindings for NEC NL8048HL11 panel
      drm/panel: Add driver for the LG Philips LB035Q02 panel
      drm/panel: Add driver for the NEC NL8048HL11 panel
      drm/panel: Add driver for the Sharp LS037V7DW01 panel
      drm/panel: Add driver for the Sony ACX565AKM panel
      drm/panel: Add driver for the Toppoly TD028TTEC1 panel
      drm/panel: Add driver for the Toppoly TD043MTEA1 panel

Linus Walleij (3):
      drm/pl111: Support grayscale
      drm/panel: simple: Add TI nspire panel bindings
      drm/panel: simple: Support TI nspire panels

Neil Armstrong (3):
      dt-bindings: display: amlogic, meson-dw-hdmi: convert to yaml
      dt-bindings: display: amlogic, meson-vpu: convert to yaml
      MAINTAINERS: Update with Amlogic DRM bindings converted as YAML

Nishka Dasgupta (1):
      drm/aspeed: gfc_crtc: Make structure aspeed_gfx_funcs constant

Ondrej Jirman (2):
      dt-bindings: display: hdmi-connector: Support DDC bus enable
      drm: sun4i: Add support for enabling DDC I2C bus to sun8i_dw_hdmi glue

Rob Herring (12):
      drm/panfrost: Remove completed features still in TODO
      drm/shmem: Add madvise state and purge helpers
      drm/panfrost: Add madvise and shrinker support
      drm/gem: Allow sparsely populated page arrays in drm_gem_put_pages
      drm/shmem: Put pages independent of a SG table being set
      drm/panfrost: Restructure the GEM object creation
      drm/panfrost: Split panfrost_mmu_map SG list mapping to its own funct=
ion
      drm/panfrost: Add a no execute flag for BO allocations
      drm/panfrost: Consolidate reset handling
      drm/panfrost: Convert MMU IRQ handler to threaded handler
      drm/panfrost: Add support for GPU heap allocations
      drm/panfrost: Bump driver version to 1.1

Sam Ravnborg (12):
      drm/bridge: tc358767: fix opencoded use of drm_panel_*
      drm/imx: fix opencoded use of drm_panel_*
      drm/fsl-dcu: fix opencoded use of drm_panel_*
      drm/mxsfb: fix opencoded use of drm_panel_*
      drm/panel: ili9322: move bus_flags to get_modes()
      drm/panel: move drm_panel functions to .c file
      drm/panel: use inline comments in drm_panel.h
      drm/panel: drop return code from drm_panel_detach()
      drm/i2c/tda998x: drop use of drmP.h
      drm/tegra: drop use of drmP.h
      drm/armada: drop use of drmP.h
      drm/arm: drop use of drmP.h

Sean Paul (1):
      drm: Fix kerneldoc warns in connector-related docs

 .../bindings/display/amlogic,meson-dw-hdmi.txt     | 119 ----
 .../bindings/display/amlogic,meson-dw-hdmi.yaml    | 150 +++++
 .../bindings/display/amlogic,meson-vpu.txt         | 121 ----
 .../bindings/display/amlogic,meson-vpu.yaml        | 137 ++++
 .../bindings/display/connector/hdmi-connector.txt  |   1 +
 .../bindings/display/panel/nec,nl8048hl11.yaml     |  62 ++
 .../bindings/display/panel/ti,nspire.yaml          |  36 ++
 .../devicetree/bindings/vendor-prefixes.yaml       |   5 +
 MAINTAINERS                                        |   4 +-
 drivers/dma-buf/Makefile                           |   2 +-
 drivers/dma-buf/dma-buf.c                          |  59 +-
 drivers/dma-buf/dma-fence-array.c                  |  32 +-
 drivers/dma-buf/dma-fence.c                        |   2 +-
 drivers/dma-buf/{reservation.c =3D> dma-resv.c}      | 259 +++-----
 drivers/dma-buf/sw_sync.c                          |  16 +-
 drivers/dma-buf/sync_file.c                        |   2 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c   |  21 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c             |   4 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_display.c        |   2 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c        |  20 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c            |   6 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_gem.h            |   2 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_ids.c            |   6 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_ids.h            |   2 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c             |   2 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_object.c         |  18 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_object.h         |   2 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_sync.c           |  10 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_sync.h           |   4 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c            |  14 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.h            |   6 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c            |   2 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c             |  20 +-
 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c  |   2 +-
 drivers/gpu/drm/arm/display/komeda/komeda_crtc.c   |   2 +-
 drivers/gpu/drm/arm/hdlcd_crtc.c                   |  12 +-
 drivers/gpu/drm/arm/hdlcd_drv.c                    |   7 +-
 drivers/gpu/drm/arm/malidp_crtc.c                  |  11 +-
 drivers/gpu/drm/arm/malidp_drv.c                   |   8 +-
 drivers/gpu/drm/arm/malidp_drv.h                   |   7 +-
 drivers/gpu/drm/arm/malidp_hw.c                    |   7 +-
 drivers/gpu/drm/arm/malidp_mw.c                    |   5 +-
 drivers/gpu/drm/arm/malidp_planes.c                |   4 +-
 drivers/gpu/drm/armada/armada_crtc.c               |  10 +-
 drivers/gpu/drm/armada/armada_debugfs.c            |   8 +-
 drivers/gpu/drm/armada/armada_drm.h                |   5 +-
 drivers/gpu/drm/armada/armada_drv.c                |   8 +
 drivers/gpu/drm/armada/armada_fb.c                 |   3 +
 drivers/gpu/drm/armada/armada_fbdev.c              |   3 +
 drivers/gpu/drm/armada/armada_gem.c                |   7 +-
 drivers/gpu/drm/armada/armada_overlay.c            |   8 +-
 drivers/gpu/drm/armada/armada_plane.c              |   4 +-
 drivers/gpu/drm/armada/armada_trace.h              |   5 +-
 drivers/gpu/drm/aspeed/aspeed_gfx_crtc.c           |   2 +-
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c |   3 +-
 drivers/gpu/drm/bridge/dumb-vga-dac.c              |   7 +-
 .../gpu/drm/bridge/synopsys/dw-hdmi-ahb-audio.c    |  20 +-
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-audio.h    |   1 +
 .../gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c    |  60 +-
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c          |  37 ++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.h          |  13 +-
 drivers/gpu/drm/bridge/tc358767.c                  |  10 +-
 drivers/gpu/drm/drm_atomic_uapi.c                  |   2 +-
 drivers/gpu/drm/drm_connector.c                    |  10 +-
 drivers/gpu/drm/drm_gem.c                          |  29 +-
 drivers/gpu/drm/drm_gem_framebuffer_helper.c       |   4 +-
 drivers/gpu/drm/drm_gem_shmem_helper.c             |  61 +-
 drivers/gpu/drm/drm_panel.c                        | 102 ++-
 drivers/gpu/drm/drm_syncobj.c                      | 102 ++-
 drivers/gpu/drm/etnaviv/etnaviv_gem.c              |   8 +-
 drivers/gpu/drm/etnaviv/etnaviv_gem.h              |   2 +-
 drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c       |  14 +-
 drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_rgb.c          |  10 +-
 drivers/gpu/drm/i2c/tda998x_drv.c                  |   2 +-
 drivers/gpu/drm/i915/display/intel_display.c       |   4 +-
 drivers/gpu/drm/i915/gem/i915_gem_busy.c           |  28 +-
 drivers/gpu/drm/i915/gem/i915_gem_clflush.c        |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_client_blt.c     |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c         |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c     |   6 +-
 drivers/gpu/drm/i915/gem/i915_gem_fence.c          |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.h         |  10 +-
 drivers/gpu/drm/i915/gem/i915_gem_wait.c           |  18 +-
 drivers/gpu/drm/i915/i915_drv.h                    |   2 +-
 drivers/gpu/drm/i915/i915_gem.c                    |   2 +-
 drivers/gpu/drm/i915/i915_gem_batch_pool.c         |  12 +-
 drivers/gpu/drm/i915/i915_request.c                |   4 +-
 drivers/gpu/drm/i915/i915_sw_fence.c               |   8 +-
 drivers/gpu/drm/i915/i915_sw_fence.h               |   4 +-
 drivers/gpu/drm/i915/i915_vma.c                    |  16 +-
 drivers/gpu/drm/i915/i915_vma.h                    |   8 +-
 drivers/gpu/drm/imx/imx-ldb.c                      |  11 +-
 drivers/gpu/drm/imx/parallel-display.c             |  11 +-
 drivers/gpu/drm/lima/lima_gem.c                    |   8 +-
 drivers/gpu/drm/mediatek/mtk_drm_fb.c              |   2 +-
 drivers/gpu/drm/meson/meson_crtc.c                 |  17 +-
 drivers/gpu/drm/meson/meson_drv.c                  |  26 +-
 drivers/gpu/drm/meson/meson_dw_hdmi.c              |   2 +
 drivers/gpu/drm/meson/meson_dw_hdmi.h              |  12 +-
 drivers/gpu/drm/meson/meson_plane.c                |   2 +-
 drivers/gpu/drm/meson/meson_registers.h            | 136 +++-
 drivers/gpu/drm/meson/meson_vclk.c                 |   7 +-
 drivers/gpu/drm/meson/meson_venc.c                 | 169 +++--
 drivers/gpu/drm/meson/meson_venc_cvbs.c            |   3 +-
 drivers/gpu/drm/meson/meson_viu.c                  |  82 +--
 drivers/gpu/drm/meson/meson_vpp.c                  |  25 +-
 drivers/gpu/drm/msm/msm_gem.c                      |  18 +-
 drivers/gpu/drm/msm/msm_gem.h                      |   2 +-
 drivers/gpu/drm/msm/msm_gem_submit.c               |   2 +-
 drivers/gpu/drm/mxsfb/mxsfb_drv.c                  |   2 +-
 drivers/gpu/drm/mxsfb/mxsfb_out.c                  |   2 +-
 drivers/gpu/drm/nouveau/dispnv50/wndw.c            |   2 +-
 drivers/gpu/drm/nouveau/nouveau_bo.c               |  10 +-
 drivers/gpu/drm/nouveau/nouveau_bo.h               |   2 +-
 drivers/gpu/drm/nouveau/nouveau_fence.c            |  12 +-
 drivers/gpu/drm/nouveau/nouveau_gem.c              |   2 +-
 drivers/gpu/drm/nouveau/nouveau_prime.c            |   6 +-
 drivers/gpu/drm/panel/Kconfig                      |  46 ++
 drivers/gpu/drm/panel/Makefile                     |   6 +
 drivers/gpu/drm/panel/panel-ilitek-ili9322.c       |  34 +-
 drivers/gpu/drm/panel/panel-lg-lb035q02.c          | 237 +++++++
 drivers/gpu/drm/panel/panel-nec-nl8048hl11.c       | 248 ++++++++
 drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c    | 226 +++++++
 drivers/gpu/drm/panel/panel-simple.c               |  64 ++
 drivers/gpu/drm/panel/panel-sony-acx565akm.c       | 701 +++++++++++++++++=
++++
 drivers/gpu/drm/panel/panel-tpo-td028ttec1.c       | 399 ++++++++++++
 drivers/gpu/drm/panel/panel-tpo-td043mtea1.c       | 509 +++++++++++++++
 drivers/gpu/drm/panfrost/Makefile                  |   1 +
 drivers/gpu/drm/panfrost/TODO                      |  11 -
 drivers/gpu/drm/panfrost/panfrost_device.c         |  18 +-
 drivers/gpu/drm/panfrost/panfrost_device.h         |   5 +
 drivers/gpu/drm/panfrost/panfrost_drv.c            | 105 ++-
 drivers/gpu/drm/panfrost/panfrost_gem.c            | 135 +++-
 drivers/gpu/drm/panfrost/panfrost_gem.h            |  20 +-
 drivers/gpu/drm/panfrost/panfrost_gem_shrinker.c   | 107 ++++
 drivers/gpu/drm/panfrost/panfrost_job.c            |  13 +-
 drivers/gpu/drm/panfrost/panfrost_mmu.c            | 216 +++++--
 drivers/gpu/drm/panfrost/panfrost_mmu.h            |   3 +-
 drivers/gpu/drm/pl111/pl111_display.c              |  29 +-
 drivers/gpu/drm/qxl/qxl_debugfs.c                  |   2 +-
 drivers/gpu/drm/qxl/qxl_release.c                  |   6 +-
 drivers/gpu/drm/radeon/cik.c                       |   2 +-
 drivers/gpu/drm/radeon/cik_sdma.c                  |   2 +-
 drivers/gpu/drm/radeon/evergreen_dma.c             |   2 +-
 drivers/gpu/drm/radeon/r100.c                      |   2 +-
 drivers/gpu/drm/radeon/r200.c                      |   2 +-
 drivers/gpu/drm/radeon/r600.c                      |   2 +-
 drivers/gpu/drm/radeon/r600_dma.c                  |   2 +-
 drivers/gpu/drm/radeon/radeon.h                    |   8 +-
 drivers/gpu/drm/radeon/radeon_asic.h               |  18 +-
 drivers/gpu/drm/radeon/radeon_benchmark.c          |   2 +-
 drivers/gpu/drm/radeon/radeon_cs.c                 |   2 +-
 drivers/gpu/drm/radeon/radeon_display.c            |   2 +-
 drivers/gpu/drm/radeon/radeon_gem.c                |   6 +-
 drivers/gpu/drm/radeon/radeon_mn.c                 |   2 +-
 drivers/gpu/drm/radeon/radeon_object.c             |  14 +-
 drivers/gpu/drm/radeon/radeon_object.h             |   2 +-
 drivers/gpu/drm/radeon/radeon_prime.c              |   6 +-
 drivers/gpu/drm/radeon/radeon_sync.c               |  10 +-
 drivers/gpu/drm/radeon/radeon_uvd.c                |   2 +-
 drivers/gpu/drm/radeon/radeon_vm.c                 |   2 +-
 drivers/gpu/drm/radeon/rv770_dma.c                 |   2 +-
 drivers/gpu/drm/radeon/si_dma.c                    |   2 +-
 drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c              |  54 +-
 drivers/gpu/drm/sun4i/sun8i_dw_hdmi.h              |   2 +
 drivers/gpu/drm/tegra/dc.c                         |  13 +-
 drivers/gpu/drm/tegra/dpaux.c                      |   5 +-
 drivers/gpu/drm/tegra/drm.c                        |   8 +
 drivers/gpu/drm/tegra/drm.h                        |   3 +-
 drivers/gpu/drm/tegra/dsi.c                        |  10 +-
 drivers/gpu/drm/tegra/fb.c                         |   6 +-
 drivers/gpu/drm/tegra/gem.c                        |   3 +
 drivers/gpu/drm/tegra/gem.h                        |   1 -
 drivers/gpu/drm/tegra/gr2d.c                       |   1 +
 drivers/gpu/drm/tegra/hdmi.c                       |   5 +
 drivers/gpu/drm/tegra/hub.c                        |   3 +-
 drivers/gpu/drm/tegra/hub.h                        |   1 -
 drivers/gpu/drm/tegra/plane.c                      |   1 +
 drivers/gpu/drm/tegra/sor.c                        |   3 +
 drivers/gpu/drm/tegra/vic.c                        |   1 +
 drivers/gpu/drm/tiny/gm12u320.c                    |  44 +-
 drivers/gpu/drm/ttm/ttm_bo.c                       | 118 ++--
 drivers/gpu/drm/ttm/ttm_bo_util.c                  |  16 +-
 drivers/gpu/drm/ttm/ttm_bo_vm.c                    |   6 +-
 drivers/gpu/drm/ttm/ttm_execbuf_util.c             |  20 +-
 drivers/gpu/drm/ttm/ttm_tt.c                       |   2 +-
 drivers/gpu/drm/v3d/v3d_gem.c                      |   4 +-
 drivers/gpu/drm/vc4/vc4_gem.c                      |   6 +-
 drivers/gpu/drm/vgem/vgem_fence.c                  |  16 +-
 drivers/gpu/drm/virtio/virtgpu_ioctl.c             |   4 +-
 drivers/gpu/drm/virtio/virtgpu_plane.c             |   2 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_blit.c               |   4 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_bo.c                 |   8 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_cotable.c            |   4 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_resource.c           |   6 +-
 include/drm/bridge/dw_hdmi.h                       |   2 +
 include/drm/drmP.h                                 |   2 +-
 include/drm/drm_connector.h                        |   4 +-
 include/drm/drm_gem.h                              |   8 +-
 include/drm/drm_gem_shmem_helper.h                 |  15 +
 include/drm/drm_panel.h                            | 183 +++---
 include/drm/ttm/ttm_bo_api.h                       |  12 +-
 include/drm/ttm/ttm_bo_driver.h                    |  14 +-
 include/linux/amba/clcd-regs.h                     |   1 +
 include/linux/dma-buf.h                            |   4 +-
 include/linux/dma-fence.h                          |  14 +-
 include/linux/{reservation.h =3D> dma-resv.h}        | 222 +++----
 include/uapi/drm/panfrost_drm.h                    |  25 +
 208 files changed, 5117 insertions(+), 1480 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/amlogic,meson=
-dw-hdmi.txt
 create mode 100644 Documentation/devicetree/bindings/display/amlogic,meson=
-dw-hdmi.yaml
 delete mode 100644 Documentation/devicetree/bindings/display/amlogic,meson=
-vpu.txt
 create mode 100644 Documentation/devicetree/bindings/display/amlogic,meson=
-vpu.yaml
 create mode 100644 Documentation/devicetree/bindings/display/panel/nec,nl8=
048hl11.yaml
 create mode 100644 Documentation/devicetree/bindings/display/panel/ti,nspi=
re.yaml
 rename drivers/dma-buf/{reservation.c =3D> dma-resv.c} (63%)
 create mode 100644 drivers/gpu/drm/panel/panel-lg-lb035q02.c
 create mode 100644 drivers/gpu/drm/panel/panel-nec-nl8048hl11.c
 create mode 100644 drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c
 create mode 100644 drivers/gpu/drm/panel/panel-sony-acx565akm.c
 create mode 100644 drivers/gpu/drm/panel/panel-tpo-td028ttec1.c
 create mode 100644 drivers/gpu/drm/panel/panel-tpo-td043mtea1.c
 create mode 100644 drivers/gpu/drm/panfrost/panfrost_gem_shrinker.c
 rename include/linux/{reservation.h =3D> dma-resv.h} (64%)

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--l36wwyig2shiddn3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVaUMQAKCRDj7w1vZxhR
xb5HAP45GxgM1IEzZbGi1Pb0t9UypqtAtxPdvbYhu+2YXKrcawD+JE4sjPMfSDf8
MbRZYmdEyXToT2jdCQDCGAWcD+IpDwA=
=Ef2U
-----END PGP SIGNATURE-----

--l36wwyig2shiddn3--

--===============1691965833==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1691965833==--
