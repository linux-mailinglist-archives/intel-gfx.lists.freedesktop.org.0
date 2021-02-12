Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD52319FBD
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 14:23:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B37876E5B9;
	Fri, 12 Feb 2021 13:23:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE7026E5BF
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Feb 2021 13:23:19 +0000 (UTC)
IronPort-SDR: FqDfET5nBT4cHxeXSZfxf4LqyA8xuvS2TE4/o4FMP7Hnu9bli/XwGAVUOu3E1MyWaoZW1paWta
 MtWPrSA2N8OQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9892"; a="181633067"
X-IronPort-AV: E=Sophos;i="5.81,173,1610438400"; d="scan'208";a="181633067"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 05:23:19 -0800
IronPort-SDR: kvOcwswu+8shz/SXuJdJQ+T7BGL0Ter6ravrTibauuCbVxb5LnE2PQOTk58VGHtQxkWGlQohlt
 Tbn0gVTVz59g==
X-IronPort-AV: E=Sophos;i="5.81,173,1610438400"; d="scan'208";a="397976243"
Received: from lszramuk-desk.ger.corp.intel.com (HELO [10.249.156.41])
 ([10.249.156.41])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 05:23:17 -0800
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210206020925.36729-1-daniele.ceraolospurio@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <47b7ce5c-a758-90b3-ff65-7870d7205576@intel.com>
Date: Fri, 12 Feb 2021 15:23:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
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
Cc: Gaurav Kumar <kumar.gaurav@intel.com>,
 Huang Sean Z <sean.z.huang@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I just gave a try to this new iteration and it's apparently failing to 
enable PXP on a machine with this pciID : 0x9a68.

-Lionel

On 06/02/2021 04:09, Daniele Ceraolo Spurio wrote:
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
