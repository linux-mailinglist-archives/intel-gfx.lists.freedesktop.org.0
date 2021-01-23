Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF0C3015BF
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Jan 2021 15:18:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9998E6E1D5;
	Sat, 23 Jan 2021 14:18:53 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED2DE6E1D5
 for <Intel-gfx@lists.freedesktop.org>; Sat, 23 Jan 2021 14:18:51 +0000 (UTC)
IronPort-SDR: 1HWRavV40sLY3jocpel2OHY+70CUcTGcdGBYhEQJJnCeJUczrF2AfvgQIsBBZR1U3Yj5oFTPZ8
 dUXObcAf4Eig==
X-IronPort-AV: E=McAfee;i="6000,8403,9872"; a="176056254"
X-IronPort-AV: E=Sophos;i="5.79,369,1602572400"; d="scan'208";a="176056254"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2021 06:18:51 -0800
IronPort-SDR: 6O6n+yJaTvpf3YCXgyd9QOSm1EGUTEvYvobbwc+jo8DbQtwPfWj398SxAnULxNFMqBtTsuZbl4
 5gHFcJ7+GXUw==
X-IronPort-AV: E=Sophos;i="5.79,369,1602572400"; d="scan'208";a="358068790"
Received: from ygrotas-mobl1.ger.corp.intel.com (HELO [10.251.187.235])
 ([10.251.187.235])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2021 06:18:48 -0800
To: "Huang, Sean Z" <sean.z.huang@intel.com>, Intel-gfx@lists.freedesktop.org
References: <20210119074320.28768-1-sean.z.huang@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <afa3b62b-a625-21a4-6f28-66087b7283dd@intel.com>
Date: Sat, 23 Jan 2021 16:18:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210119074320.28768-1-sean.z.huang@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC-v23 00/13] Introduce Intel PXP component -
 Mesa single session
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
Cc: Jason Ekstrand <jason.ekstrand@intel.com>, kumar.gaurav@intel.com,
 "Lahtinen, Joonas" <joonas.lahtinen@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

One of the thing that came up during UMD review is that the default 
session ID is actually uAPI : 
https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/8064#note_776201
Could we expose it through a get_param on the context?

Thanks,

-Lionel

On 19/01/2021 09:43, Huang, Sean Z wrote:
> PXP (Protected Xe Path) is an i915 component, available on
> GEN12+ that helps to establish the hardware protected session
> and manage the status of the alive software session, as well
> as its life cycle.
>
> This patch series is to allow the kernel space to create and
> manage a single hardware session (a.k.a. default session or
> arbitrary session). So user can allocate the protected buffer,
> which is encrypted with the leverage of the arbitrary hardware
> session.
>
>
> rev23:
>      #09, #12
>      - Require user space to explicitly set recoverable flag to
>        false for protected context creation.
>
>      #13
>      - Add Cc of reviewers in commit message.
>
>
> Anshuman Gupta (1):
>    drm/i915/pxp: Add plane decryption support
>
> Bommu Krishnaiah (2):
>    drm/i915/uapi: introduce drm_i915_gem_create_ext
>    drm/i915/pxp: User interface for Protected buffer
>
> Huang, Sean Z (9):
>    drm/i915/pxp: Introduce Intel PXP component
>    drm/i915/pxp: set KCR reg init during the boot time
>    drm/i915/pxp: Implement funcs to create the TEE channel
>    drm/i915/pxp: Create the arbitrary session after boot
>    drm/i915/pxp: Func to send hardware session termination
>    drm/i915/pxp: Enable PXP irq worker and callback stub
>    drm/i915/pxp: Destroy arb session upon teardown
>    drm/i915/pxp: Enable PXP power management
>    drm/i915/pxp: Expose session state for display protection flip
>
> Vitaly Lubart (1):
>    mei: pxp: export pavp client to me client bus
>
>   drivers/gpu/drm/i915/Kconfig                  |  21 ++
>   drivers/gpu/drm/i915/Makefile                 |   9 +
>   drivers/gpu/drm/i915/display/intel_sprite.c   |  21 +-
>   drivers/gpu/drm/i915/gem/i915_gem_context.c   |  13 +
>   drivers/gpu/drm/i915/gem/i915_gem_context.h   |   5 +
>   .../gpu/drm/i915/gem/i915_gem_context_types.h |   2 +
>   drivers/gpu/drm/i915/gem/i915_gem_create.c    |  68 +++++-
>   .../gpu/drm/i915/gem/i915_gem_object_types.h  |   5 +
>   drivers/gpu/drm/i915/gt/intel_gt.c            |   5 +
>   drivers/gpu/drm/i915/gt/intel_gt_irq.c        |  14 ++
>   drivers/gpu/drm/i915/gt/intel_gt_pm.c         |   4 +
>   drivers/gpu/drm/i915/gt/intel_gt_types.h      |   3 +
>   drivers/gpu/drm/i915/i915_drv.c               |   7 +-
>   drivers/gpu/drm/i915/i915_drv.h               |   6 +
>   drivers/gpu/drm/i915/i915_reg.h               |   2 +
>   drivers/gpu/drm/i915/pxp/intel_pxp.c          | 193 +++++++++++++++
>   drivers/gpu/drm/i915/pxp/intel_pxp.h          |  70 ++++++
>   drivers/gpu/drm/i915/pxp/intel_pxp_arb.c      | 208 ++++++++++++++++
>   drivers/gpu/drm/i915/pxp/intel_pxp_arb.h      |  17 ++
>   drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c      | 223 +++++++++++++++++
>   drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h      |  19 ++
>   drivers/gpu/drm/i915/pxp/intel_pxp_context.c  |  28 +++
>   drivers/gpu/drm/i915/pxp/intel_pxp_context.h  |  15 ++
>   drivers/gpu/drm/i915/pxp/intel_pxp_pm.c       |  65 +++++
>   drivers/gpu/drm/i915/pxp/intel_pxp_pm.h       |  31 +++
>   drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 202 +++++++++++++++
>   drivers/gpu/drm/i915/pxp/intel_pxp_tee.h      |  17 ++
>   drivers/gpu/drm/i915/pxp/intel_pxp_types.h    |  38 +++
>   drivers/misc/mei/Kconfig                      |   2 +
>   drivers/misc/mei/Makefile                     |   1 +
>   drivers/misc/mei/pxp/Kconfig                  |  13 +
>   drivers/misc/mei/pxp/Makefile                 |   7 +
>   drivers/misc/mei/pxp/mei_pxp.c                | 230 ++++++++++++++++++
>   drivers/misc/mei/pxp/mei_pxp.h                |  18 ++
>   include/drm/i915_component.h                  |   1 +
>   include/drm/i915_pxp_tee_interface.h          |  45 ++++
>   include/uapi/drm/i915_drm.h                   |  66 +++++
>   37 files changed, 1686 insertions(+), 8 deletions(-)
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.c
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.h
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_arb.c
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_arb.h
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_context.c
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_context.h
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
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
