Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A900311834
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Feb 2021 03:15:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D2816F550;
	Sat,  6 Feb 2021 02:15:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A3626F550
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 Feb 2021 02:15:36 +0000 (UTC)
IronPort-SDR: jvulDGiZSa272Ar+AE+gGSse/tsZlSHUm2AoT0YA6CZXo6zciRzVltLbXgkxycmgb1TqxuISQP
 nc3BsxESafQg==
X-IronPort-AV: E=McAfee;i="6000,8403,9886"; a="200529942"
X-IronPort-AV: E=Sophos;i="5.81,156,1610438400"; d="scan'208";a="200529942"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 18:15:35 -0800
IronPort-SDR: p5bXhb/rAJxZyBZ9Dpr4sCp6SYIHb0kJE8N7IdlA3UA/JFJrQ/BALWFnOTkpk4QPpYp4zQZqnM
 D24/rEt5NN+w==
X-IronPort-AV: E=Sophos;i="5.81,156,1610438400"; d="scan'208";a="576904388"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.251.149.39])
 ([10.251.149.39])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 18:15:34 -0800
To: intel-gfx@lists.freedesktop.org
References: <20210206020925.36729-1-daniele.ceraolospurio@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <0f9a27d0-e26e-de25-658a-53f3997b101c@intel.com>
Date: Fri, 5 Feb 2021 18:15:32 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210206020925.36729-1-daniele.ceraolospurio@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 00/14] Introduce Intel PXP
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
Cc: Huang Sean Z <sean.z.huang@intel.com>,
 Gaurav Kumar <kumar.gaurav@intel.com>, "Huang,
 Ryan T" <ryan.t.huang@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2/5/2021 6:09 PM, Daniele Ceraolo Spurio wrote:
> PXP (Protected Xe Path) is an i915 component, available on
> GEN12+, that helps to establish the hardware protected session
> and manage the status of the alive software session, as well
> as its life cycle.
>
> I'm taking over this series from Sean. I've significantly reworked the
> code since his last revisioni [1], including a different patch split, so
> I've reset the series revision count. I believe I've addressed most of
> the pending comments, but please point out aything I've missed.
>
> Still RFC for 2 reasons:
> - mutex usage needs a bit more reworking
> - very lightly tested
>
> [1] https://patchwork.freedesktop.org/series/84620/
>
> Cc: Huang Sean Z <sean.z.huang@intel.com>
> Cc: Gaurav Kumar <kumar.gaurav@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

Adding a couple more people:

Cc: Juston Li <juston.li@intel.com>
Cc: Ryan T Huang <ryan.t.huang@intel.com>

Daniele

>
> Anshuman Gupta (1):
>    drm/i915/pxp: Add plane decryption support
>
> Bommu Krishnaiah (2):
>    drm/i915/uapi: introduce drm_i915_gem_create_ext
>    drm/i915/pxp: User interface for Protected buffer
>
> Daniele Ceraolo Spurio (5):
>    drm/i915/pxp: Define PXP component interface
>    drm/i915/pxp: define PXP device flag and kconfig
>    drm/i915/pxp: allocate a vcs context for pxp usage
>    drm/i915/pxp: set KCR reg init during the boot time
>    drm/i915/pxp: enable PXP for integrated Gen12
>
> Huang, Sean Z (5):
>    drm/i915/pxp: Implement funcs to create the TEE channel
>    drm/i915/pxp: Create the arbitrary session after boot
>    drm/i915/pxp: Implement arb session teardown
>    drm/i915/pxp: Implement PXP irq handler
>    drm/i915/pxp: Enable PXP power management
>
> Vitaly Lubart (1):
>    mei: pxp: export pavp client to me client bus
>
>   drivers/gpu/drm/i915/Kconfig                  |  11 +
>   drivers/gpu/drm/i915/Makefile                 |   9 +
>   drivers/gpu/drm/i915/display/intel_sprite.c   |  21 +-
>   drivers/gpu/drm/i915/gem/i915_gem_context.c   |  34 +++
>   drivers/gpu/drm/i915/gem/i915_gem_context.h   |   6 +
>   .../gpu/drm/i915/gem/i915_gem_context_types.h |   1 +
>   drivers/gpu/drm/i915/gem/i915_gem_create.c    |  68 +++++-
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |   9 +
>   .../gpu/drm/i915/gem/i915_gem_object_types.h  |   5 +
>   drivers/gpu/drm/i915/gt/intel_gt.c            |   5 +
>   drivers/gpu/drm/i915/gt/intel_gt_irq.c        |   7 +
>   drivers/gpu/drm/i915/gt/intel_gt_pm.c         |   6 +
>   drivers/gpu/drm/i915/gt/intel_gt_types.h      |   3 +
>   drivers/gpu/drm/i915/i915_drv.c               |   7 +-
>   drivers/gpu/drm/i915/i915_drv.h               |  10 +
>   drivers/gpu/drm/i915/i915_pci.c               |   2 +
>   drivers/gpu/drm/i915/i915_reg.h               |   2 +
>   drivers/gpu/drm/i915/intel_device_info.h      |   1 +
>   drivers/gpu/drm/i915/pxp/intel_pxp.c          | 107 ++++++++
>   drivers/gpu/drm/i915/pxp/intel_pxp.h          |  54 ++++
>   drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c      | 227 +++++++++++++++++
>   drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h      |  15 ++
>   drivers/gpu/drm/i915/pxp/intel_pxp_irq.c      | 147 +++++++++++
>   drivers/gpu/drm/i915/pxp/intel_pxp_irq.h      |  33 +++
>   drivers/gpu/drm/i915/pxp/intel_pxp_pm.c       |  94 +++++++
>   drivers/gpu/drm/i915/pxp/intel_pxp_pm.h       |  36 +++
>   drivers/gpu/drm/i915/pxp/intel_pxp_session.c  | 123 ++++++++++
>   drivers/gpu/drm/i915/pxp/intel_pxp_session.h  |  17 ++
>   drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 200 +++++++++++++++
>   drivers/gpu/drm/i915/pxp/intel_pxp_tee.h      |  17 ++
>   drivers/gpu/drm/i915/pxp/intel_pxp_types.h    |  29 +++
>   drivers/misc/mei/Kconfig                      |   2 +
>   drivers/misc/mei/Makefile                     |   1 +
>   drivers/misc/mei/pxp/Kconfig                  |  13 +
>   drivers/misc/mei/pxp/Makefile                 |   7 +
>   drivers/misc/mei/pxp/mei_pxp.c                | 230 ++++++++++++++++++
>   drivers/misc/mei/pxp/mei_pxp.h                |  18 ++
>   include/drm/i915_component.h                  |   1 +
>   include/drm/i915_pxp_tee_interface.h          |  45 ++++
>   include/uapi/drm/i915_drm.h                   |  70 ++++++
>   40 files changed, 1685 insertions(+), 8 deletions(-)
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.c
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.h
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_irq.h
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_session.c
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_session.h
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_types.h
>   create mode 100644 drivers/misc/mei/pxp/Kconfig
>   create mode 100644 drivers/misc/mei/pxp/Makefile
>   create mode 100644 drivers/misc/mei/pxp/mei_pxp.c
>   create mode 100644 drivers/misc/mei/pxp/mei_pxp.h
>   create mode 100644 include/drm/i915_pxp_tee_interface.h
>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
