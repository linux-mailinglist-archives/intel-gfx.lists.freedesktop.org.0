Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GFuwIqln62m2MgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 14:52:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1521C45EAF2
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 14:52:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10D3310F599;
	Fri, 24 Apr 2026 12:52:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin.net header.i=@ursulin.net header.b="RoSt6WcO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com
 [209.85.218.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58AA210F58C
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Apr 2026 12:52:51 +0000 (UTC)
Received: by mail-ej1-f42.google.com with SMTP id
 a640c23a62f3a-ba9ad0fbc3aso598190166b.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Apr 2026 05:52:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin.net; s=google; t=1777035170; x=1777639970; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=sq4vrFUdRLIbx2HcioB0HgTnWjzitHHIUm3IZYtlQ/c=;
 b=RoSt6WcOV+KJXad78rvxI//tVhw/LmvhEBnM9HG+fCgIrFiw0MGHrywpQwd8xJ2+Bd
 w10vwWe0Kx1hcyUGcwg58m3pudKOMFiQsal5BZcGFv4ub7hsSTC0dbHswXmOGdiRJ07k
 c3eNQx4/djftKuocJ9Wm4XCA0d2cC8rYUsnVxdUZD6OjoGB7TJYd2080g7u0RvjDjJHr
 kuyVy+zWYwF4/Bt6ImX/P8QAByqqzTbZOv3gFm9ppzXki/GkfEqI2rReuLG4sQ5JbjEH
 6N+R7zPjTlwxw+Lbj4qwmkGdAP2HzNChQL8IDcHd4Ftz2hRL7XgZEnR7EQFSyBEY+0tA
 nRJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777035170; x=1777639970;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=sq4vrFUdRLIbx2HcioB0HgTnWjzitHHIUm3IZYtlQ/c=;
 b=dEM80Allw21wktCNtC40VS55Ec7ZSsrvrpOaWHvCq3F6K9H/nS3sQ4lAEsS+9jaLCC
 LrQ9N3L0Tx9gEqX4S4fGyTYn6SXgkbPG3YZeu1WrGLdjFlvq+Dbnbs//1+k374exHemr
 fJfYb2d8COAqzLs6U06qXtv8ic9qA1bHg/Etei8IATsx/kGvznQh+KQlV6uCcgBiyvXT
 NA07q9Rhl6qBfp1GtsJiFn/mNjr1umJvoCtXKyaXoyFqNs7vFkivchLos/lnXkjqdjXo
 HZu31ng3hCcg3eQ60Mz+V4WJCRw32UvO1np33VdbxAXmh2iq2Ml08vLs/WRWa/XFLIPc
 gzxg==
X-Forwarded-Encrypted: i=1;
 AFNElJ8Z/v+rZ07iQx6oPXxAcZwqHdluHuHjaV6n3BOR8Gunc84dhy5pSbx8M7LhKM6ITccq8+F/o0m3Lcs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwR0poWXtev+Wgig3WBNgWBhk4GbZvz50YGDFnY8LaLjzhLJnwu
 TKuinGeo9oLrNXZjFUjDTQtnvchBbs/fk1K5SHyTgPY3YEgoF9hZV8UjBMBwGRB5hbA=
X-Gm-Gg: AeBDiesUq/6s32UO1rGiXk3Nr6zmxRTdxme7CjDSVr2I1VVq2sQgvukLScaKbAwdENW
 t6t9YerJcIBBGWPAf91+AkgpHiQXUX94ohQOw8heuFBotj2YzxIfsiOPNtBS3dE/r16oc2NyYh3
 oNeH+13Lwz/a1qPaVPo0wZ82VYLqvfHG9PtxfEJtzPRIT1DDwfW+0kgVjMJUTSo3LvuxyobHwPu
 nJTPJr48kUuL1c7mn67qsDJQC2E+WoyVqCFjMT3MRi7XSGb8FrNKcatK0x9XA2SLPtXeKvTZ/1/
 /Z4OzDGaGr9xw/HKfsmXglI3VgUaStSElhNlWr5Z6oDrWLVRECllnxtO+5MX9YH/P4AUlLPLhvJ
 Y+swney47m5C+rYrdukwozwmR3Waob3zopkzKNJDAuOoXqfMVF/Z3Ct75eskiodVi0nFO8OESeE
 MAVLYXB2fqPV5533emhrnu0QmTKEJKc/5zVwz23i4cSue3VuMElZbiDF4=
X-Received: by 2002:a17:907:6a16:b0:ba3:a8ef:3597 with SMTP id
 a640c23a62f3a-ba41aa1613bmr1762743866b.25.1777035169149; 
 Fri, 24 Apr 2026 05:52:49 -0700 (PDT)
Received: from [192.168.0.101] ([90.240.106.137])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ba4520ca202sm757597866b.28.2026.04.24.05.52.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Apr 2026 05:52:48 -0700 (PDT)
Message-ID: <fd18359b-3c14-4e33-a6b8-f4e5290a1105@ursulin.net>
Date: Fri, 24 Apr 2026 13:52:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PULL] drm-misc-next
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Simona Vetter <simona.vetter@ffwll.ch>, Dave Airlie <airlied@gmail.com>
Cc: dim-tools@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Oded Gabbay <ogabbay@kernel.org>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Brost <matthew.brost@intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
References: <bf31b1a1-951b-4f60-b226-22e8c083697d@linux.intel.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <bf31b1a1-951b-4f60-b226-22e8c083697d@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Queue-Id: 1521C45EAF2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_DKIM_ALLOW(-0.20)[ursulin.net:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:maarten.lankhorst@linux.intel.com,m:simona.vetter@ffwll.ch,m:airlied@gmail.com,m:dim-tools@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:ogabbay@kernel.org,m:thomas.hellstrom@linux.intel.com,m:matthew.brost@intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:jani.nikula@linux.intel.com,s:lists@lfdr.de];
	DMARC_NA(0.00)[ursulin.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[tursulin@ursulin.net,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_TO(0.00)[linux.intel.com,ffwll.ch,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[tursulin@ursulin.net,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ursulin.net:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url]


On 20/04/2026 12:41, Maarten Lankhorst wrote:
> Hi Dave, Simona,
> 
> First pull for v7.1!

7.2 I guess? Anyway, came here for below:

> 
> Kind regards,
> ~Maarten Lankhorst
> 
> drm-misc-next-2026-04-20:
> drm-misc-next for v7.1-rc1:
> 
> UAPI Changes:
> - Expose per-client BO memory usage via fdinfo in amdxdna. (Hou)
> - Change the default priority of drm scheduler to fair. (Tvrtko)
> 
> Cross-subsystem Changes:
> - Revert hugetlb support in udmabuf. (Gunthorpe)
> - Fix error in udmabuf with CONFIG_DMA_API_DEBUG(/ _SG). (Gavrilov)
> - Add Docbook for DRM_IOCTL_SYNCOBJ_EVENTFD, (Ser)
>    clarify drm_bridge_get/put. (Tvrtko)

FWIW this wasn't me. :)

Regards,

Tvrtko

> - Change signature of drm_connector_attach_hdr_output_metadata_property. (Canal)
> - Use IOVA allocations in gpusvm and pagemap APIs. (Brost)
> - Fix tracepoints vs dma-fence lifetime. (Tvrtko)
> - Convert st-dma*.c tests to use kunit. (Gunthorpe)
> 
> Core Changes:
> - Deduplicate counter and timestamp retrieval in vblank code. (Ville)
> - Parse AMD VSDB v3 in CTA extension blocks, and use it in amdgpu. (Chen)
> - Prevent bridge and encoder chain changes at inopportune times. (Ceresoli)
> - Map the run queue 1:1 to the drm scheduler. (Tvrtko)
> 
> Driver Changes:
> - Assorted bugfixes and (documentation) updates to rockchip, bridge/synopsis,
>    panfrost, tidss, accel/qaic, tilcdc, vc4, ast, imagination, panthor,
>    renesas, accel/amdxdna, msxfb, bridge/imx8mp, nouveau.
>    bridge/analogix_dp, bridge/exynos_dp, omap.
> - Add support for CSW PNB601LS1-2, LGD LP116WHA-SPB1, panels.
> - Add support for a lot of waveshare panels (Baryshkov)
> - Support for AIE4 devices in accel/wamdxdna. (Zhang)
> - Enable support for GEM shrinking in panthor. (Goel/Brezillon)
> - Runtime Power Management is added to v3d. (Canal)
> - Allow panel probing and use the panel bridge helper in analogix_dp. (Ding)
> - Support XRGB1555 and C8 in mgag and XRGB1555 in ast. (Zimmermann)
> The following changes since commit 4516432284e1b2ad9e70de8067f779c9c1072189:
> 
>    ttm/pool: track allocated_pages per numa node. (2026-04-08 06:52:48 +1000)
> 
> are available in the Git repository at:
> 
>    https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-next-2026-04-20
> 
> for you to fetch changes up to 3f9357c30a44734d45e3093c521d52b2aefb09f5:
> 
>    drm/mgag200: Enable DRM_FORMAT_XRGB1555 on the primary plane (2026-04-20 09:15:57 +0200)
> 
> ----------------------------------------------------------------
> drm-misc-next for v7.1-rc1:
> 
> UAPI Changes:
> - Expose per-client BO memory usage via fdinfo in amdxdna. (Hou)
> - Change the default priority of drm scheduler to fair. (Tvrtko)
> 
> Cross-subsystem Changes:
> - Revert hugetlb support in udmabuf. (Gunthorpe)
> - Fix error in udmabuf with CONFIG_DMA_API_DEBUG(/ _SG). (Gavrilov)
> - Add Docbook for DRM_IOCTL_SYNCOBJ_EVENTFD, (Ser)
>    clarify drm_bridge_get/put. (Tvrtko)
> - Change signature of drm_connector_attach_hdr_output_metadata_property. (Canal)
> - Use IOVA allocations in gpusvm and pagemap APIs. (Brost)
> - Fix tracepoints vs dma-fence lifetime. (Tvrtko)
> - Convert st-dma*.c tests to use kunit. (Gunthorpe)
> 
> Core Changes:
> - Deduplicate counter and timestamp retrieval in vblank code. (Ville)
> - Parse AMD VSDB v3 in CTA extension blocks, and use it in amdgpu. (Chen)
> - Prevent bridge and encoder chain changes at inopportune times. (Ceresoli)
> - Map the run queue 1:1 to the drm scheduler. (Tvrtko)
> 
> Driver Changes:
> - Assorted bugfixes and (documentation) updates to rockchip, bridge/synopsis,
>    panfrost, tidss, accel/qaic, tilcdc, vc4, ast, imagination, panthor,
>    renesas, accel/amdxdna, msxfb, bridge/imx8mp, nouveau.
>    bridge/analogix_dp, bridge/exynos_dp, omap.
> - Add support for CSW PNB601LS1-2, LGD LP116WHA-SPB1, panels.
> - Add support for a lot of waveshare panels (Baryshkov)
> - Support for AIE4 devices in accel/wamdxdna. (Zhang)
> - Enable support for GEM shrinking in panthor. (Goel/Brezillon)
> - Runtime Power Management is added to v3d. (Canal)
> - Allow panel probing and use the panel bridge helper in analogix_dp. (Ding)
> - Support XRGB1555 and C8 in mgag and XRGB1555 in ast. (Zimmermann)
> 
> ----------------------------------------------------------------
> Akash Goel (1):
>        drm/panthor: Add a GEM shrinker
> 
> Alessio Belle (8):
>        drm/imagination: Count paired job fence as dependency in prepare_job()
>        drm/imagination: Fit paired fragment job in the correct CCCB
>        drm/imagination: Skip check on paired job fence during job submission
>        drm/imagination: Rename pvr_queue_fence_is_ufo_backed() to reflect usage
>        drm/imagination: Rename fence returned by pvr_queue_job_arm()
>        drm/imagination: Move repeated job fence check to its own function
>        drm/imagination: Update check to skip prepare_job() for fragment jobs
>        drm/imagination: Minor improvements to job submission code documentation
> 
> Biju Das (7):
>        dt-bindings: gpu: mali-bifrost: Add compatible for RZ/G3L SoC
>        drm/panfrost: Drop redundant optional clock checks in runtime PM
>        drm/panfrost: Add bus_ace optional clock support for RZ/G2L
>        drm/panfrost: Add GPU_PM_RT support for RZ/G3L SoC
>        drm: renesas: rzg2l_mipi_dsi: Move rzg2l_mipi_dsi_set_display_timing()
>        drm: renesas: rzg2l_mipi_dsi: Increase reset deassertion delay
>        drm: renesas: rzg2l_mipi_dsi: Fix deassert/assert of CMN_RSTB signal
> 
> Boris Brezillon (9):
>        drm/gem: Consider GEM object reclaimable if shrinking fails
>        drm/panthor: Remove unused panthor_vm_op_ctx::map::new_vma field
>        drm/panthor: Move panthor_gems_debugfs_init() to panthor_gem.c
>        drm/panthor: Group panthor_kernel_bo_xxx() helpers
>        drm/panthor: Don't call drm_gpuvm_bo_extobj_add() if the object is private
>        drm/panthor: Part ways with drm_gem_shmem_object
>        drm/panthor: Lazily allocate pages on mmap()
>        drm/panthor: Split panthor_vm_prepare_map_op_ctx() to prepare for reclaim
>        drm/panthor: Track the number of mmap on a BO
> 
> Chen Ni (1):
>        drm/rockchip: analogix_dp: Add missing error check for platform_get_resource()
> 
> Chenyu Chen (2):
>        drm/edid: Parse AMD Vendor-Specific Data Block
>        drm/amd/display: Use drm_display_info for AMD VSDB data
> 
> Cristian Ciocaltea (7):
>        drm/rockchip: inno-hdmi: Switch to drmm_kzalloc()
>        drm/rockchip: dw_dp: Switch to drmm_kzalloc()
>        drm/rockchip: dw_dp: Fix null-ptr-deref in dw_dp_remove()
>        drm/rockchip: dw_dp: Simplify error handling
>        drm/rockchip: dw_dp: Drop unnecessary #include
>        drm/rockchip: dw_hdmi_qp: Switch to drmm_encoder_init()
>        drm/bridge: synopsys: dw-dp: Drop useless memory allocation
> 
> Damon Ding (17):
>        drm/bridge: analogix_dp: Add &analogix_dp_plat_data.next_bridge
>        drm/bridge: Move legacy bridge driver out of imx directory for multi-platform use
>        drm/exynos: exynos_dp: Remove &exynos_dp_device.ptn_bridge
>        drm/exynos: exynos_dp: Remove unused &exynos_dp_device.connector
>        drm/exynos: exynos_dp: Apply of-display-mode-bridge to parse the display-timings node
>        drm/bridge: analogix_dp: Remove redundant &analogix_dp_plat_data.skip_connector
>        drm/bridge: analogix_dp: Move the color format check to .atomic_check() for Rockchip platforms
>        drm/bridge: analogix_dp: Remove unused &analogix_dp_plat_data.get_modes()
>        drm/bridge: analogix_dp: Remove unused struct drm_connector* for &analogix_dp_plat_data.attach()
>        drm/bridge: analogix_dp: Pass struct drm_atomic_state* for analogix_dp_bridge_mode_set()
>        drm/bridge: analogix_dp: Apply drm_bridge_connector helper
>        drm/bridge: analogix_dp: Add new API analogix_dp_finish_probe()
>        drm/rockchip: analogix_dp: Apply analogix_dp_finish_probe()
>        drm/exynos: exynos_dp: Apply analogix_dp_finish_probe()
>        drm/bridge: analogix_dp: Attach the next bridge in analogix_dp_bridge_attach()
>        drm/bridge: analogix_dp: Remove bridge disabing and panel unpreparing in analogix_dp_unbind()
>        drm/bridge: analogix_dp: Apply panel_bridge helper
> 
> David Zhang (5):
>        accel/amdxdna: Add basic support for AIE4 devices
>        accel/amdxdna: Create common PSP interfaces for AIE2 and AIE4
>        accel/amdxdna: Add AIE4 firmware loading
>        accel/amdxdna: Create common SMU interfaces for AIE2 and AIE4
>        accel/amdxdna: Add AIE4 power on and off support
> 
> Dmitry Baryshkov (21):
>        dt-bindings: display: panel: add Waveshare LCD panels
>        drm/panel: simple: add Waveshare LCD panels
>        dt-bindings: display/panel: himax,hx83102: describe Waveshare panel
>        dt-bindings: display/panel: himax,hx8394: describe Waveshare panel
>        dt-bindings: display/panel: jadard,jd9365da-h3: describe Waveshare panel
>        dt-bindings: dipslay/panel: describe panels using Focaltech OTA7290B
>        drm/of: add helper to count data-lanes on a remote endpoint
>        drm/panel: himax-hx83102: support Waveshare 12.3" DSI panel
>        drm/panel: himax-hx8394: set prepare_prev_first
>        drm/panel: himax-hx8394: simplify hx8394_enable()
>        drm/panel: himax-hx8394: support Waveshare DSI panels
>        drm/panel: jadard-jd9365da-h3: use drm_connector_helper_get_modes_fixed
>        drm/panel: jadard-jd9365da-h3: support variable DSI configuration
>        drm/panel: jadard-jd9365da-h3: set prepare_prev_first
>        drm/panel: jadard-jd9365da-h3: support Waveshare round DSI panels
>        drm/panel: jadard-jd9365da-h3: support Waveshare WXGA DSI panels
>        drm/panel: jadard-jd9365da-h3: support Waveshare 720p DSI panels
>        drm/panel: add devm_drm_panel_add() helper
>        drm/panel: add driver for Waveshare 8.8" DSI TOUCH-A panel
>        dt-bindings: display: waveshare,dsp2dpi: describe DSI2LVDS setup
>        drm/bridge: waveshare-dsi: support DSI LCD kits with LVDS panels
> 
> Felix Gu (1):
>        accel/amdxdna: Fix memory leak in amdxdna_iommu_alloc()
> 
> Jason Gunthorpe (6):
>        udmabuf: Do not create malformed scatterlists
>        dma-buf: Change st-dma-resv.c to use kunit
>        dma-buf: Change st-dma-fence.c to use kunit
>        dma-buf: Change st-dma-fence-unwrap.c to use kunit
>        dma-buf: Change st-dma-fence-chain.c to use kunit
>        dma-buf: Remove the old selftest
> 
> Jonathan Cavitt (2):
>        drm/gpuvm: Do not prepare NULL objects
>        drm/colorop: Check if getting curve_1d_type default succeeds
> 
> Laurent Pinchart (1):
>        drm: rcar-du: Fix crash when no CMM is available
> 
> Lizhi Hou (7):
>        accel/amdxdna: Create shared functions for AIE2 and AIE4
>        accel/amdxdna: Adjust size for copy_to_user()
>        accel/amdxdna: Expose per-client BO memory usage via fdinfo
>        accel/amdxdna: Read real-time clock frequencies
>        accel/amdxdna: Check for device hang on job timeout
>        accel/amdxdna: Fix iommu_map_sgtable() return value handling
>        accel/amdxdna: Fix order of canceled mailbox messages
> 
> Luca Ceresoli (23):
>        drm/kmb/dsi: convert to of_drm_find_and_get_bridge()
>        drm/omap: dss: convert to of_drm_find_and_get_bridge()
>        drm/bridge: drm_bridge_get/put(): document NULL pointer behaviour
>        drm/mxsfb/lcdif: simplify remote pointer management using __free
>        drm/mxsfb/lcdif: simplify ep pointer management using __free
>        drm/mxsfb/lcdif: use dev_err_probe() consistently in lcdif_attach_bridge
>        drm/mxsfb/lcdif: move iteration-specific variables declaration inside loop in lcdif_attach_bridge
>        drm/bridge: dw-hdmi: document the output_port field
>        drm/bridge: dw-hdmi: warn on unsupported attach combination
>        drm/bridge: dw-hdmi: move next_bridge lookup to attach time
>        drm/bridge: imx8mp-hdmi-tx-connector-fixup: add an hdmi-connector when missing using a DT overlay at boot time
>        drm/bridge: imx8mp-hdmi-tx-connector-fixup: show a warning when adding the overlay
>        drm/bridge: imx8mp-hdmi-tx: switch to DRM_BRIDGE_ATTACH_NO_CONNECTOR
>        drm/mxsfb/lcdif: use DRM_BRIDGE_ATTACH_NO_CONNECTOR and the bridge-connector
>        drm/encoder: add mutex to protect the bridge chain
>        drm/encoder: drm_encoder_cleanup: lock the encoder chain mutex during removal
>        drm/bridge: drm_bridge_attach: lock the encoder chain mutex during insertion
>        drm/bridge: lock the encoder chain in scoped for_each loops
>        drm/bridge: prevent encoder chain changes while iterating with list_for_each_entry_from()
>        drm/bridge: prevent encoder chain changes while iterating with list_for_each_entry_reverse()
>        drm/bridge: prevent encoder chain changes in pre_enable/post_disable
>        drm: renesas: rz-du: rzg2l_du_encoder: convert to of_drm_find_and_get_bridge()
>        drm: rcar-du: encoder: convert to of_drm_find_and_get_bridge()
> 
> Marco Crivellari (1):
>        drm/tilcdc: replace use of system_wq with system_percpu_wq
> 
> Matthew Brost (5):
>        drm/gpusvm: Use dma-map IOVA alloc, link, and sync API in GPU SVM
>        drm/pagemap: Drop source_peer_migrates flag and assume true
>        drm/pagemap: Split drm_pagemap_migrate_map_pages into device / system
>        drm/pagemap: Use dma-map IOVA alloc, link, and sync API for DRM pagemap
>        drm/pagemap: Fix drm_pagemap_migrate_unmap_pages kerneldoc
> 
> Max Zhen (7):
>        accel/amdxdna: Fix leak when pinning ubuf pages
>        accel/amdxdna: Support read-only user-pointer BO mappings
>        accel/amdxdna: Handle DETACH_DEBUG_BO through config_debug_bo path
>        accel/amdxdna: Fix fatal_error_info layout in firmware interface
>        accel/amdxdna: Add hardware scheduler time quantum support
>        accel/amdxdna: Get device revision to derive VBNV string
>        accel/amdxdna: Guard management mailbox channel cleanup against NULL pointer
> 
> Maíra Canal (6):
>        drm/vc4: Use devm_request_irq() for automatic cleanup
>        drm/vc4: Clean-up UAPI header inclusion
>        drm/v3d: Use devm_reset_control_get_optional_exclusive()
>        drm/v3d: Allocate all resources before enabling the clock
>        drm/v3d: Introduce Runtime Power Management
>        drm/connector: Make drm_connector_attach_hdr_output_metadata_property() return void
> 
> Mikhail Gavrilov (2):
>        udmabuf: fix DMA direction mismatch in release_udmabuf()
>        dma-buf/udmabuf: skip redundant cpu sync to fix cacheline EEXIST warning
> 
> Philipp Stanner (2):
>        drm/sched: Make drm_sched_entity_kill() a public function
>        drm/nouveau: Fix double call to drm_sched_entity_fini()
> 
> Sergey Shtylyov (1):
>        drm/rockchip: cdn-dp: add missing check in cdn_dp_config_video()
> 
> Simon Ser (1):
>        drm/doc: document DRM_IOCTL_SYNCOBJ_EVENTFD
> 
> Steven Price (1):
>        drm/panthor: Fix kernel-doc in panthor_sched.c so it's visible
> 
> Terry Hsiao (1):
>        drm/panel-edp: Add CSW PNB601LS1-2 and LGD LP116WHA-SPB1
> 
> Thomas Zimmermann (27):
>        drm/rockchip: Test for imported buffers with drm_gem_is_imported()
>        Merge drm/drm-next into drm-misc-next
>        Merge drm/drm-next into drm-misc-next
>        drm/ast: Move 32-bit register-access helpers to ast_drv.{c, h}
>        drm/ast: Use constants for AHBC registers
>        drm/ast: Use constants for MCR registers
>        drm/ast: Use constants for SCU registers
>        drm/ast: Use constants for A2P registers
>        drm/ast: Use constants for WDT registers
>        drm/ast: Use constants for SDRAM registers
>        drm/ast: Store register addresses in struct ast_dramstruct
>        drm/ast: Gen1: Fix open-coded register access
>        drm/ast: Gen2: Fix open-coded register access
>        drm/ast: Gen4: Fix open-coded register access
>        drm/ast: Gen6: Fix open-coded register access
>        drm/ast: dp501: Fix open-coded register access
>        drm/ast: Fix open-coded scu_rev access
>        drm/ast: Add constant for VGACR91
>        drm/ast: Remove traces of DRM_FORMAT_RGB888 handling
>        drm/ast: Replace references to struct drm_format_info.cpp
>        drm/ast: Support DRM_FORMAT_XRGB1555 on the primary plane
>        drm/mgag200: Set xmulctrl from DRM format
>        drm/mgag200: Set scale from DRM format
>        drm/mgag200: Simplify offset calculation
>        drm/mgag200: g200se: Set hiprilvl from DRM format
>        drm/mgag200: Enable DRM_FORMAT_C8 on the primary plane
>        drm/mgag200: Enable DRM_FORMAT_XRGB1555 on the primary plane
> 
> Tomi Valkeinen (2):
>        drm/tidss: Drop extra drm_mode_config_reset() call
>        drm/tidss: Fix missing drm_bridge_add() call
> 
> Tommaso Merciai (1):
>        drm: rz-du: Ensure correct suspend/resume ordering with VSP
> 
> Troy Hanson (1):
>        accel/qaic: Simplify bootlog line handling
> 
> Tvrtko Ursulin (30):
>        dma-fence: Fix potential tracepoint null pointer dereferences
>        drm/sched: Disallow initializing entities with no schedulers
>        drm/sched: Consolidate entity run queue management
>        drm/sched: Move run queue related code into a separate file
>        drm/sched: Add some scheduling quality unit tests
>        drm/sched: Add some more scheduling quality unit tests
>        drm/sched: Implement RR via FIFO
>        drm/sched: Free all finished jobs at once
>        drm/sched: Account entity GPU time
>        drm/sched: Remove idle entity from tree
>        drm/sched: Add fair scheduling policy
>        drm/sched: Favour interactive clients slightly
>        drm/sched: Switch default policy to fair
>        drm/sched: Remove FIFO and RR and simplify to a single run queue
>        drm/sched: Embed run queue singleton into the scheduler
>        accel/amdxdna: Remove drm_sched_init_args->num_rqs usage
>        accel/rocket: Remove drm_sched_init_args->num_rqs usage
>        accel/ethosu: Remove drm_sched_init_args->num_rqs usage
>        drm/amdgpu: Remove drm_sched_init_args->num_rqs usage
>        drm/etnaviv: Remove drm_sched_init_args->num_rqs usage
>        drm/imagination: Remove drm_sched_init_args->num_rqs usage
>        drm/lima: Remove drm_sched_init_args->num_rqs usage
>        drm/msm: Remove drm_sched_init_args->num_rqs usage
>        drm/nouveau: Remove drm_sched_init_args->num_rqs usage
>        drm/panfrost: Remove drm_sched_init_args->num_rqs usage
>        drm/panthor: Remove drm_sched_init_args->num_rqs usage
>        drm/sched: Remove drm_sched_init_args->num_rqs usage
>        drm/v3d: Remove drm_sched_init_args->num_rqs usage
>        drm/xe: Remove drm_sched_init_args->num_rqs usage
>        drm/sched: Remove drm_sched_init_args->num_rqs
> 
> Ville Syrjälä (1):
>        drm/vblank: Extract get_vblank_counter_and_timestamp()
> 
> Yicong Hui (1):
>        drm/panthor: Fix kernel-doc warning in panthor_sched.c
> 
> Zack McKevitt (2):
>        accel/qaic: Update copyright headers to yearless format
>        accel/qaic: Retain bootlogs that overflow
> 
>   Documentation/accel/amdxdna/amdnpu.rst             |   25 +
>   .../bindings/display/bridge/waveshare,dsi2dpi.yaml |    9 +-
>   .../bindings/display/panel/focaltech,ota7290b.yaml |   70 +
>   .../bindings/display/panel/himax,hx83102.yaml      |    2 +
>   .../bindings/display/panel/himax,hx8394.yaml       |    2 +
>   .../bindings/display/panel/jadard,jd9365da-h3.yaml |    6 +
>   .../bindings/display/panel/panel-simple.yaml       |   28 +
>   .../devicetree/bindings/gpu/arm,mali-bifrost.yaml  |    2 +
>   Documentation/gpu/drm-usage-stats.rst              |    1 +
>   drivers/accel/amdxdna/Makefile                     |   10 +-
>   drivers/accel/amdxdna/aie.c                        |  119 ++
>   drivers/accel/amdxdna/aie.h                        |  111 ++
>   drivers/accel/amdxdna/aie2_ctx.c                   |   42 +-
>   drivers/accel/amdxdna/aie2_error.c                 |   17 +-
>   drivers/accel/amdxdna/aie2_message.c               |  229 +--
>   drivers/accel/amdxdna/aie2_msg_priv.h              |   41 +-
>   drivers/accel/amdxdna/aie2_pci.c                   |  231 ++--
>   drivers/accel/amdxdna/aie2_pci.h                   |  116 +-
>   drivers/accel/amdxdna/aie2_pm.c                    |   12 +-
>   drivers/accel/amdxdna/aie2_psp.c                   |  161 ---
>   drivers/accel/amdxdna/aie2_smu.c                   |  156 ---
>   drivers/accel/amdxdna/aie4_message.c               |   27 +
>   drivers/accel/amdxdna/aie4_msg_priv.h              |   49 +
>   drivers/accel/amdxdna/aie4_pci.c                   |  483 +++++++
>   drivers/accel/amdxdna/aie4_pci.h                   |   53 +
>   drivers/accel/amdxdna/aie4_sriov.c                 |   88 ++
>   drivers/accel/amdxdna/aie_psp.c                    |  235 ++++
>   drivers/accel/amdxdna/aie_smu.c                    |  153 +++
>   drivers/accel/amdxdna/amdxdna_iommu.c              |   13 +-
>   drivers/accel/amdxdna/amdxdna_mailbox.c            |   29 +-
>   drivers/accel/amdxdna/amdxdna_mailbox.h            |    8 +-
>   drivers/accel/amdxdna/amdxdna_pci_drv.c            |   51 +-
>   drivers/accel/amdxdna/amdxdna_pci_drv.h            |   16 +-
>   drivers/accel/amdxdna/amdxdna_sysfs.c              |    5 +-
>   drivers/accel/amdxdna/amdxdna_ubuf.c               |   41 +-
>   drivers/accel/amdxdna/npu1_regs.c                  |   29 +-
>   drivers/accel/amdxdna/npu3_regs.c                  |   77 ++
>   drivers/accel/amdxdna/npu4_regs.c                  |   70 +-
>   drivers/accel/amdxdna/npu5_regs.c                  |    9 +-
>   drivers/accel/amdxdna/npu6_regs.c                  |    9 +-
>   drivers/accel/ethosu/ethosu_job.c                  |    1 -
>   drivers/accel/qaic/mhi_controller.c                |    2 +-
>   drivers/accel/qaic/mhi_controller.h                |    9 +-
>   drivers/accel/qaic/qaic.h                          |    9 +-
>   drivers/accel/qaic/qaic_control.c                  |    2 +-
>   drivers/accel/qaic/qaic_data.c                     |    2 +-
>   drivers/accel/qaic/qaic_debugfs.c                  |   30 +-
>   drivers/accel/qaic/qaic_debugfs.h                  |    2 +-
>   drivers/accel/qaic/qaic_drv.c                      |    2 +-
>   drivers/accel/qaic/qaic_ras.c                      |    1 -
>   drivers/accel/qaic/qaic_ras.h                      |    1 +
>   drivers/accel/qaic/qaic_ssr.c                      |    2 +-
>   drivers/accel/qaic/qaic_ssr.h                      |    9 +-
>   drivers/accel/qaic/qaic_timesync.c                 |    3 +-
>   drivers/accel/qaic/qaic_timesync.h                 |    7 +-
>   drivers/accel/qaic/sahara.c                        |    2 +-
>   drivers/accel/qaic/sahara.h                        |    2 +-
>   drivers/accel/rocket/rocket_job.c                  |    1 -
>   drivers/dma-buf/.kunitconfig                       |    2 +
>   drivers/dma-buf/Kconfig                            |   11 +-
>   drivers/dma-buf/Makefile                           |    5 +-
>   drivers/dma-buf/dma-fence.c                        |    3 +-
>   drivers/dma-buf/selftest.c                         |  167 ---
>   drivers/dma-buf/selftest.h                         |   30 -
>   drivers/dma-buf/selftests.h                        |   16 -
>   drivers/dma-buf/st-dma-fence-chain.c               |  217 ++-
>   drivers/dma-buf/st-dma-fence-unwrap.c              |  290 ++--
>   drivers/dma-buf/st-dma-fence.c                     |  200 ++-
>   drivers/dma-buf/st-dma-resv.c                      |  145 +-
>   drivers/dma-buf/udmabuf.c                          |   58 +-
>   drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c             |    6 +-
>   drivers/gpu/drm/amd/amdgpu/amdgpu_device.c         |    1 -
>   drivers/gpu/drm/amd/amdgpu/amdgpu_job.c            |   27 +-
>   drivers/gpu/drm/amd/amdgpu/amdgpu_job.h            |    5 +-
>   drivers/gpu/drm/amd/amdgpu/amdgpu_trace.h          |    8 +-
>   drivers/gpu/drm/amd/amdgpu/amdgpu_vm_sdma.c        |    8 +-
>   drivers/gpu/drm/amd/amdgpu/amdgpu_xcp.c            |    8 +-
>   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c  |  120 +-
>   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h  |   14 -
>   drivers/gpu/drm/ast/ast_2000.c                     |   61 +-
>   drivers/gpu/drm/ast/ast_2100.c                     |  292 ++--
>   drivers/gpu/drm/ast/ast_2300.c                     |  392 +++---
>   drivers/gpu/drm/ast/ast_2500.c                     |  327 ++---
>   drivers/gpu/drm/ast/ast_dp501.c                    |  130 +-
>   drivers/gpu/drm/ast/ast_drv.c                      |   84 +-
>   drivers/gpu/drm/ast/ast_drv.h                      |   60 +-
>   drivers/gpu/drm/ast/ast_mode.c                     |   86 +-
>   drivers/gpu/drm/ast/ast_post.c                     |   48 +-
>   drivers/gpu/drm/ast/ast_post.h                     |   20 +-
>   drivers/gpu/drm/ast/ast_reg.h                      |  211 ++-
>   drivers/gpu/drm/bridge/Kconfig                     |   10 +
>   drivers/gpu/drm/bridge/Makefile                    |    1 +
>   drivers/gpu/drm/bridge/analogix/Kconfig            |    3 +
>   drivers/gpu/drm/bridge/analogix/analogix_dp_core.c |  235 ++--
>   drivers/gpu/drm/bridge/analogix/analogix_dp_core.h |    1 -
>   drivers/gpu/drm/bridge/imx/Kconfig                 |   28 +-
>   drivers/gpu/drm/bridge/imx/Makefile                |    3 +-
>   drivers/gpu/drm/bridge/imx/imx-legacy-bridge.c     |   91 --
>   .../bridge/imx/imx8mp-hdmi-tx-connector-fixup.c    |   75 +
>   .../bridge/imx/imx8mp-hdmi-tx-connector-fixup.dtso |   30 +
>   drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx.c        |    1 +
>   drivers/gpu/drm/bridge/of-display-mode-bridge.c    |   93 ++
>   drivers/gpu/drm/bridge/synopsys/dw-dp.c            |    4 -
>   drivers/gpu/drm/bridge/synopsys/dw-hdmi.c          |   49 +-
>   drivers/gpu/drm/bridge/waveshare-dsi.c             |    5 +-
>   drivers/gpu/drm/drm_bridge.c                       |   83 +-
>   drivers/gpu/drm/drm_colorop.c                      |    8 +-
>   drivers/gpu/drm/drm_connector.c                    |    9 +-
>   drivers/gpu/drm/drm_edid.c                         |   72 +
>   drivers/gpu/drm/drm_encoder.c                      |   18 +-
>   drivers/gpu/drm/drm_gem.c                          |   10 +
>   drivers/gpu/drm/drm_gpusvm.c                       |   53 +-
>   drivers/gpu/drm/drm_gpuvm.c                        |    3 +
>   drivers/gpu/drm/drm_of.c                           |   34 +
>   drivers/gpu/drm/drm_pagemap.c                      |  229 ++-
>   drivers/gpu/drm/drm_panel.c                        |   23 +
>   drivers/gpu/drm/drm_vblank.c                       |   36 +-
>   drivers/gpu/drm/etnaviv/etnaviv_sched.c            |    1 -
>   drivers/gpu/drm/exynos/Kconfig                     |    3 +
>   drivers/gpu/drm/exynos/exynos_dp.c                 |  110 +-
>   drivers/gpu/drm/i915/Kconfig.debug                 |    2 +-
>   drivers/gpu/drm/imagination/pvr_job.c              |    8 +-
>   drivers/gpu/drm/imagination/pvr_queue.c            |  155 ++-
>   drivers/gpu/drm/imagination/pvr_queue.h            |    2 +-
>   .../gpu/drm/imagination/pvr_rogue_fwif_shared.h    |   10 +-
>   drivers/gpu/drm/imagination/pvr_sync.c             |    8 +-
>   drivers/gpu/drm/imagination/pvr_sync.h             |    2 +-
>   drivers/gpu/drm/imx/ipuv3/Kconfig                  |    4 +-
>   drivers/gpu/drm/imx/ipuv3/imx-ldb.c                |    6 +-
>   drivers/gpu/drm/imx/ipuv3/parallel-display.c       |    5 +-
>   drivers/gpu/drm/kmb/kmb_dsi.c                      |    2 +-
>   drivers/gpu/drm/lima/lima_sched.c                  |    1 -
>   drivers/gpu/drm/mgag200/mgag200_g200se.c           |   13 +-
>   drivers/gpu/drm/mgag200/mgag200_mode.c             |  109 +-
>   drivers/gpu/drm/mgag200/mgag200_reg.h              |    1 +
>   drivers/gpu/drm/msm/msm_gem_vma.c                  |    1 -
>   drivers/gpu/drm/msm/msm_ringbuffer.c               |    1 -
>   drivers/gpu/drm/mxsfb/Kconfig                      |    2 +
>   drivers/gpu/drm/mxsfb/lcdif_drv.c                  |   67 +-
>   drivers/gpu/drm/nouveau/nouveau_abi16.c            |    2 +-
>   drivers/gpu/drm/nouveau/nouveau_sched.c            |    1 -
>   drivers/gpu/drm/omapdrm/dss/output.c               |   11 +-
>   drivers/gpu/drm/panel/Kconfig                      |   13 +
>   drivers/gpu/drm/panel/Makefile                     |    1 +
>   drivers/gpu/drm/panel/panel-edp.c                  |    2 +
>   drivers/gpu/drm/panel/panel-focaltech-ota7290b.c   |  225 +++
>   drivers/gpu/drm/panel/panel-himax-hx83102.c        |  144 +-
>   drivers/gpu/drm/panel/panel-himax-hx8394.c         |  279 +++-
>   drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c   | 1421 ++++++++++++++++++-
>   drivers/gpu/drm/panel/panel-simple.c               |  381 +++++
>   drivers/gpu/drm/panfrost/panfrost_device.c         |   34 +-
>   drivers/gpu/drm/panfrost/panfrost_device.h         |    1 +
>   drivers/gpu/drm/panfrost/panfrost_drv.c            |    1 +
>   drivers/gpu/drm/panfrost/panfrost_job.c            |    1 -
>   drivers/gpu/drm/panthor/Kconfig                    |    1 -
>   drivers/gpu/drm/panthor/panthor_device.c           |   11 +-
>   drivers/gpu/drm/panthor/panthor_device.h           |   73 +
>   drivers/gpu/drm/panthor/panthor_drv.c              |   33 +-
>   drivers/gpu/drm/panthor/panthor_fw.c               |   16 +-
>   drivers/gpu/drm/panthor/panthor_gem.c              | 1453 +++++++++++++++++---
>   drivers/gpu/drm/panthor/panthor_gem.h              |  136 +-
>   drivers/gpu/drm/panthor/panthor_mmu.c              |  513 +++++--
>   drivers/gpu/drm/panthor/panthor_mmu.h              |    8 +
>   drivers/gpu/drm/panthor/panthor_sched.c            |   85 +-
>   drivers/gpu/drm/renesas/rcar-du/rcar_du_crtc.c     |    6 +-
>   drivers/gpu/drm/renesas/rcar-du/rcar_du_encoder.c  |   29 +-
>   drivers/gpu/drm/renesas/rcar-du/rcar_du_encoder.h  |    1 +
>   drivers/gpu/drm/renesas/rcar-du/rcar_du_kms.c      |    2 +
>   drivers/gpu/drm/renesas/rz-du/rzg2l_du_encoder.c   |   13 +-
>   drivers/gpu/drm/renesas/rz-du/rzg2l_du_vsp.c       |   16 +
>   drivers/gpu/drm/renesas/rz-du/rzg2l_du_vsp.h       |    2 +
>   drivers/gpu/drm/renesas/rz-du/rzg2l_mipi_dsi.c     |   34 +-
>   drivers/gpu/drm/rockchip/Kconfig                   |    1 +
>   drivers/gpu/drm/rockchip/analogix_dp-rockchip.c    |   69 +-
>   drivers/gpu/drm/rockchip/cdn-dp-reg.c              |    2 +
>   drivers/gpu/drm/rockchip/dw_dp-rockchip.c          |   35 +-
>   drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c     |   13 +-
>   drivers/gpu/drm/rockchip/inno_hdmi-rockchip.c      |    3 +-
>   drivers/gpu/drm/rockchip/rockchip_drm_gem.c        |    2 +-
>   drivers/gpu/drm/scheduler/Makefile                 |    2 +-
>   drivers/gpu/drm/scheduler/sched_entity.c           |  175 +--
>   drivers/gpu/drm/scheduler/sched_fence.c            |    2 +-
>   drivers/gpu/drm/scheduler/sched_internal.h         |   70 +-
>   drivers/gpu/drm/scheduler/sched_main.c             |  351 +----
>   drivers/gpu/drm/scheduler/sched_rq.c               |  383 ++++++
>   drivers/gpu/drm/scheduler/tests/Makefile           |    3 +-
>   drivers/gpu/drm/scheduler/tests/mock_scheduler.c   |    1 -
>   drivers/gpu/drm/scheduler/tests/tests_scheduler.c  |  882 ++++++++++++
>   drivers/gpu/drm/tidss/tidss_encoder.c              |    2 +
>   drivers/gpu/drm/tidss/tidss_kms.c                  |    2 -
>   drivers/gpu/drm/tilcdc/tilcdc_crtc.c               |    2 +-
>   drivers/gpu/drm/v3d/Makefile                       |    1 +
>   drivers/gpu/drm/v3d/v3d_debugfs.c                  |   23 +-
>   drivers/gpu/drm/v3d/v3d_drv.c                      |  160 +--
>   drivers/gpu/drm/v3d/v3d_drv.h                      |   18 +
>   drivers/gpu/drm/v3d/v3d_gem.c                      |   17 +-
>   drivers/gpu/drm/v3d/v3d_irq.c                      |   15 +-
>   drivers/gpu/drm/v3d/v3d_mmu.c                      |   10 +-
>   drivers/gpu/drm/v3d/v3d_perfmon.c                  |   18 +-
>   drivers/gpu/drm/v3d/v3d_power.c                    |   87 ++
>   drivers/gpu/drm/v3d/v3d_sched.c                    |    1 -
>   drivers/gpu/drm/v3d/v3d_submit.c                   |   19 +-
>   drivers/gpu/drm/vc4/vc4_bo.c                       |    1 -
>   drivers/gpu/drm/vc4/vc4_drv.c                      |    2 -
>   drivers/gpu/drm/vc4/vc4_gem.c                      |    1 -
>   drivers/gpu/drm/vc4/vc4_irq.c                      |   33 +-
>   drivers/gpu/drm/vc4/vc4_plane.c                    |    2 -
>   drivers/gpu/drm/vc4/vc4_render_cl.c                |    1 -
>   drivers/gpu/drm/vc4/vc4_validate.c                 |    1 -
>   drivers/gpu/drm/xe/xe_dep_scheduler.c              |    1 -
>   drivers/gpu/drm/xe/xe_execlist.c                   |    1 -
>   drivers/gpu/drm/xe/xe_gpu_scheduler.c              |    1 -
>   drivers/gpu/drm/xe/xe_svm.c                        |    1 -
>   include/drm/bridge/analogix_dp.h                   |    8 +-
>   include/drm/bridge/dw_hdmi.h                       |    6 +
>   include/drm/bridge/imx.h                           |   17 -
>   include/drm/bridge/of-display-mode-bridge.h        |   17 +
>   include/drm/drm_bridge.h                           |   73 +-
>   include/drm/drm_connector.h                        |   40 +-
>   include/drm/drm_encoder.h                          |    4 +
>   include/drm/drm_gpusvm.h                           |    5 +
>   include/drm/drm_of.h                               |   13 +
>   include/drm/drm_pagemap.h                          |    9 +-
>   include/drm/drm_panel.h                            |    1 +
>   include/drm/gpu_scheduler.h                        |   45 +-
>   include/trace/events/dma_fence.h                   |   40 +-
>   include/uapi/drm/amdxdna_accel.h                   |    3 +-
>   include/uapi/drm/drm.h                             |    7 +
>   228 files changed, 11192 insertions(+), 4153 deletions(-)
>   create mode 100644 Documentation/devicetree/bindings/display/panel/focaltech,ota7290b.yaml
>   create mode 100644 drivers/accel/amdxdna/aie.c
>   create mode 100644 drivers/accel/amdxdna/aie.h
>   delete mode 100644 drivers/accel/amdxdna/aie2_psp.c
>   delete mode 100644 drivers/accel/amdxdna/aie2_smu.c
>   create mode 100644 drivers/accel/amdxdna/aie4_message.c
>   create mode 100644 drivers/accel/amdxdna/aie4_msg_priv.h
>   create mode 100644 drivers/accel/amdxdna/aie4_pci.c
>   create mode 100644 drivers/accel/amdxdna/aie4_pci.h
>   create mode 100644 drivers/accel/amdxdna/aie4_sriov.c
>   create mode 100644 drivers/accel/amdxdna/aie_psp.c
>   create mode 100644 drivers/accel/amdxdna/aie_smu.c
>   create mode 100644 drivers/accel/amdxdna/npu3_regs.c
>   create mode 100644 drivers/dma-buf/.kunitconfig
>   delete mode 100644 drivers/dma-buf/selftest.c
>   delete mode 100644 drivers/dma-buf/selftest.h
>   delete mode 100644 drivers/dma-buf/selftests.h
>   delete mode 100644 drivers/gpu/drm/bridge/imx/imx-legacy-bridge.c
>   create mode 100644 drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx-connector-fixup.c
>   create mode 100644 drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx-connector-fixup.dtso
>   create mode 100644 drivers/gpu/drm/bridge/of-display-mode-bridge.c
>   create mode 100644 drivers/gpu/drm/panel/panel-focaltech-ota7290b.c
>   create mode 100644 drivers/gpu/drm/scheduler/sched_rq.c
>   create mode 100644 drivers/gpu/drm/scheduler/tests/tests_scheduler.c
>   create mode 100644 drivers/gpu/drm/v3d/v3d_power.c
>   delete mode 100644 include/drm/bridge/imx.h
>   create mode 100644 include/drm/bridge/of-display-mode-bridge.h

