Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C433026EE
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 16:38:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0141D6E1AA;
	Mon, 25 Jan 2021 15:38:29 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D778A6E1AA
 for <Intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 15:38:27 +0000 (UTC)
IronPort-SDR: p/qec2LcNkiiF4cTsB/4t/QA81JwKRIbXJG+WhZuYwnISq9O0ylGFmzWUDKnCu9EHgEopxmYCw
 8FNtRB6FPJ9w==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="179892901"
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="179892901"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 07:38:26 -0800
IronPort-SDR: W4U15pjVWyDvmG6nmtyDrkktLgJXhchvKpPoS+mVKxqsFNkI4MaX3xhJySvOWztnyHCaDMVqjr
 n1BCm9EMEnHA==
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="387429871"
Received: from schweers-mobl1.ger.corp.intel.com (HELO [10.249.45.21])
 ([10.249.45.21])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 07:38:24 -0800
To: "Gaurav, Kumar" <kumar.gaurav@intel.com>,
 "Huang, Sean Z" <sean.z.huang@intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
References: <20210119074320.28768-1-sean.z.huang@intel.com>
 <afa3b62b-a625-21a4-6f28-66087b7283dd@intel.com>
 <DM6PR11MB2683FB8AEBC4F5626114729997BF9@DM6PR11MB2683.namprd11.prod.outlook.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <797ff94f-9c19-bf66-3860-7b7e076cf223@intel.com>
Date: Mon, 25 Jan 2021 17:38:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <DM6PR11MB2683FB8AEBC4F5626114729997BF9@DM6PR11MB2683.namprd11.prod.outlook.com>
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
Cc: "Ekstrand, Jason" <jason.ekstrand@intel.com>, "Lahtinen,
 Joonas" <joonas.lahtinen@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Okay, if the get_param is too much at the point, can we at least have a 
define to reflect that this is a special number from the kernel?

Thanks,

-Lionel

On 23/01/2021 23:47, Gaurav, Kumar wrote:
> Yes, this should not be problem since MESA is already using MI_SET_APPID with app_id 0xf.
>
> I proposed this earlier but I was told that MESA team will not be comfortable in querying app_id or session_states.
> Although check for proper session_state should be part of context robustness check.
>
> -----Original Message-----
> From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> Sent: Saturday, January 23, 2021 6:19 AM
> To: Huang, Sean Z <sean.z.huang@intel.com>; Intel-gfx@lists.freedesktop.org
> Cc: Gaurav, Kumar <kumar.gaurav@intel.com>; Lahtinen, Joonas <joonas.lahtinen@intel.com>; Joonas Lahtinen <joonas.lahtinen@linux.intel.com>; Ekstrand, Jason <jason.ekstrand@intel.com>
> Subject: Re: [Intel-gfx] [RFC-v23 00/13] Introduce Intel PXP component - Mesa single session
>
> Hi,
>
> One of the thing that came up during UMD review is that the default session ID is actually uAPI :
> https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/8064#note_776201
> Could we expose it through a get_param on the context?
>
> Thanks,
>
> -Lionel
>
> On 19/01/2021 09:43, Huang, Sean Z wrote:
>> PXP (Protected Xe Path) is an i915 component, available on
>> GEN12+ that helps to establish the hardware protected session
>> and manage the status of the alive software session, as well as its
>> life cycle.
>>
>> This patch series is to allow the kernel space to create and manage a
>> single hardware session (a.k.a. default session or arbitrary session).
>> So user can allocate the protected buffer, which is encrypted with the
>> leverage of the arbitrary hardware session.
>>
>>
>> rev23:
>>       #09, #12
>>       - Require user space to explicitly set recoverable flag to
>>         false for protected context creation.
>>
>>       #13
>>       - Add Cc of reviewers in commit message.
>>
>>
>> Anshuman Gupta (1):
>>     drm/i915/pxp: Add plane decryption support
>>
>> Bommu Krishnaiah (2):
>>     drm/i915/uapi: introduce drm_i915_gem_create_ext
>>     drm/i915/pxp: User interface for Protected buffer
>>
>> Huang, Sean Z (9):
>>     drm/i915/pxp: Introduce Intel PXP component
>>     drm/i915/pxp: set KCR reg init during the boot time
>>     drm/i915/pxp: Implement funcs to create the TEE channel
>>     drm/i915/pxp: Create the arbitrary session after boot
>>     drm/i915/pxp: Func to send hardware session termination
>>     drm/i915/pxp: Enable PXP irq worker and callback stub
>>     drm/i915/pxp: Destroy arb session upon teardown
>>     drm/i915/pxp: Enable PXP power management
>>     drm/i915/pxp: Expose session state for display protection flip
>>
>> Vitaly Lubart (1):
>>     mei: pxp: export pavp client to me client bus
>>
>>    drivers/gpu/drm/i915/Kconfig                  |  21 ++
>>    drivers/gpu/drm/i915/Makefile                 |   9 +
>>    drivers/gpu/drm/i915/display/intel_sprite.c   |  21 +-
>>    drivers/gpu/drm/i915/gem/i915_gem_context.c   |  13 +
>>    drivers/gpu/drm/i915/gem/i915_gem_context.h   |   5 +
>>    .../gpu/drm/i915/gem/i915_gem_context_types.h |   2 +
>>    drivers/gpu/drm/i915/gem/i915_gem_create.c    |  68 +++++-
>>    .../gpu/drm/i915/gem/i915_gem_object_types.h  |   5 +
>>    drivers/gpu/drm/i915/gt/intel_gt.c            |   5 +
>>    drivers/gpu/drm/i915/gt/intel_gt_irq.c        |  14 ++
>>    drivers/gpu/drm/i915/gt/intel_gt_pm.c         |   4 +
>>    drivers/gpu/drm/i915/gt/intel_gt_types.h      |   3 +
>>    drivers/gpu/drm/i915/i915_drv.c               |   7 +-
>>    drivers/gpu/drm/i915/i915_drv.h               |   6 +
>>    drivers/gpu/drm/i915/i915_reg.h               |   2 +
>>    drivers/gpu/drm/i915/pxp/intel_pxp.c          | 193 +++++++++++++++
>>    drivers/gpu/drm/i915/pxp/intel_pxp.h          |  70 ++++++
>>    drivers/gpu/drm/i915/pxp/intel_pxp_arb.c      | 208 ++++++++++++++++
>>    drivers/gpu/drm/i915/pxp/intel_pxp_arb.h      |  17 ++
>>    drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c      | 223 +++++++++++++++++
>>    drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h      |  19 ++
>>    drivers/gpu/drm/i915/pxp/intel_pxp_context.c  |  28 +++
>>    drivers/gpu/drm/i915/pxp/intel_pxp_context.h  |  15 ++
>>    drivers/gpu/drm/i915/pxp/intel_pxp_pm.c       |  65 +++++
>>    drivers/gpu/drm/i915/pxp/intel_pxp_pm.h       |  31 +++
>>    drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 202 +++++++++++++++
>>    drivers/gpu/drm/i915/pxp/intel_pxp_tee.h      |  17 ++
>>    drivers/gpu/drm/i915/pxp/intel_pxp_types.h    |  38 +++
>>    drivers/misc/mei/Kconfig                      |   2 +
>>    drivers/misc/mei/Makefile                     |   1 +
>>    drivers/misc/mei/pxp/Kconfig                  |  13 +
>>    drivers/misc/mei/pxp/Makefile                 |   7 +
>>    drivers/misc/mei/pxp/mei_pxp.c                | 230 ++++++++++++++++++
>>    drivers/misc/mei/pxp/mei_pxp.h                |  18 ++
>>    include/drm/i915_component.h                  |   1 +
>>    include/drm/i915_pxp_tee_interface.h          |  45 ++++
>>    include/uapi/drm/i915_drm.h                   |  66 +++++
>>    37 files changed, 1686 insertions(+), 8 deletions(-)
>>    create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.c
>>    create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.h
>>    create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_arb.c
>>    create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_arb.h
>>    create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
>>    create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
>>    create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_context.c
>>    create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_context.h
>>    create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
>>    create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
>>    create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
>>    create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
>>    create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_types.h
>>    create mode 100644 drivers/misc/mei/pxp/Kconfig
>>    create mode 100644 drivers/misc/mei/pxp/Makefile
>>    create mode 100644 drivers/misc/mei/pxp/mei_pxp.c
>>    create mode 100644 drivers/misc/mei/pxp/mei_pxp.h
>>    create mode 100644 include/drm/i915_pxp_tee_interface.h
>>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
