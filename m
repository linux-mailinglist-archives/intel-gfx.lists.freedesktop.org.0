Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 261D62FAECD
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 03:34:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AD586E7D4;
	Tue, 19 Jan 2021 02:34:45 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E4C36E7D4
 for <Intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 02:34:44 +0000 (UTC)
IronPort-SDR: SHcEcEOO/MH8HFh4ySzboEZeRUwoAaQBJ23TdQdweRe0nw1mNfbybdlZHt+lG2c1L2p0x8WcRt
 QrFY8Dj8YVNw==
X-IronPort-AV: E=McAfee;i="6000,8403,9868"; a="175365871"
X-IronPort-AV: E=Sophos;i="5.79,357,1602572400"; d="scan'208";a="175365871"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 18:34:43 -0800
IronPort-SDR: S/3pEjtXN3Tdg7j7sBro/23jDxBN0cprrrvTqBdaMMruA4tATmZE24ei5e7aHqWSHaOeMMOAEq
 q2rnLbadQT6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,357,1602572400"; d="scan'208";a="353661946"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga006.jf.intel.com with ESMTP; 18 Jan 2021 18:34:43 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 18 Jan 2021 18:34:42 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 18 Jan 2021 18:34:41 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 18 Jan 2021 18:34:41 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 18 Jan 2021 18:34:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QepP3gD5dI2jdgow22F9xz1PPtfyGZyNMVqttyL4xPmfu5/F5xgpAQJGwUeSKYqkIde7RGEQ20tVKV+ZwoJ/4afjoeKY31XaOAyCcj7hYU+NgS7rTIaSghjWl/9fiSHP7GdUOmtsTEOasOn1kCoktYThfylCPJ9OQisQL1HPBtMPYl7dML+KNpURmAOMTalTdC+9Q7jYphNiCjOYZg5oQ9arhKAkGYZNG/ssmBy2QiQx9N/JWpS/wKftpMSBpcKOTVdgoxtgDI91FElgnbtTICSCGOozdWCgmg0DVZAmEE6q+XMKLRx2bFHUxGdvDNqyUdpNwMFIxa0vh6605405qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X46S+/1nPpP+vvnXQVBq04j8rQyUISzSsi1D38ZPZak=;
 b=LnQUsutlx0jN9Tm9wJ4tAAYUBsYNTUmtttkG4IRUmnikSB595+9Q/tRP17E3d7dqhyND3XIliW0qrjcrHa/rKX5Wu28Cne0SoXH/Zbd0T7ovT2Hk+2KKAF+ipOGvpRf2KOo3X58qSdkDyoILqqBmWq/WtmTY6/m/6oR2PtNDcvZPigjqolmRuMWqER/+rD0xBIuNWpbtXCz0FArJb9ZbL4lgAKYGdDRUlR0+az6dd1+SFYLlaIwt4Qyhk6cjl9edwukE0UdF7abhqbWFU8BqMK/qgyvN+jXcGDkt0/i97t9QYKwlJEEZA+uJ9qrg22E3oulH3qMR5+hhxbr65ifKMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X46S+/1nPpP+vvnXQVBq04j8rQyUISzSsi1D38ZPZak=;
 b=zwCeQhezCCF7YbteVvwG06E4yR2qYkRSSAHyDtYGKXWA5TJt5cJAgDPQF4N28W55ytNR63SXcQAgMKUnXhv+S74QX5qtZK5X3V3YF0DMybZoHErP6u/8p1AvMYxqU/r7q2I5vXoJYsEc0qljj4iyVi58k/nmCszixCNJ2pbUkoo=
Received: from DM6PR11MB4531.namprd11.prod.outlook.com (2603:10b6:5:2a5::19)
 by DM6PR11MB3899.namprd11.prod.outlook.com (2603:10b6:5:19c::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.10; Tue, 19 Jan
 2021 02:34:35 +0000
Received: from DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::50ab:1cac:2a5a:7786]) by DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::50ab:1cac:2a5a:7786%7]) with mapi id 15.20.3763.014; Tue, 19 Jan 2021
 02:34:35 +0000
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: "Landwerlin, Lionel G" <lionel.g.landwerlin@intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC-v21 00/13] Introduce Intel PXP component - Mesa
 single session
Thread-Index: AQHW7ZxCLru2sbxHdUOGFKekiLYGm6ouO7Zg
Date: Tue, 19 Jan 2021 02:34:35 +0000
Message-ID: <DM6PR11MB45318C145CC82B8B0A0246EFD9A30@DM6PR11MB4531.namprd11.prod.outlook.com>
References: <20210118060730.15425-1-sean.z.huang@intel.com>
 <a8ad4fba-84df-d4c9-64f6-da8aa71f08fb@intel.com>
In-Reply-To: <a8ad4fba-84df-d4c9-64f6-da8aa71f08fb@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [73.220.16.43]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f4602b91-4cca-4089-b83a-08d8bc22c2ac
x-ms-traffictypediagnostic: DM6PR11MB3899:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3899CB5FFF832B007BE94947D9A30@DM6PR11MB3899.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yLwlJo78So2nwPkv8kDxxlqP6C9BkMUHz9TS21mruEDMxyqeoUM2jY6s+FDJXT3X5+qWHF+YdIG4Xu8fNkt6+HD0GRBjzBBR54FdxvxQOiB34WNXrCv5aIfQyLA/b0G6JpHoRIJ1Z8jc/1REy6iyhpmeAl7TRVGdnd4je/rfciogNwcSvODA9JF9Jkp4amH2qRewLiWt/0BY6Eblj0Tz54xGhTLWYq/CyLrCE6xTPoWdjq9IHJCHVPRY3OpIY81jNOIBL+VTqPpg1Qe971AARmnOjrc1+FHM0fzWEpbqE8GLoTrPrvnWsNTUWHCn9eWECmStgi9SlxEh2l3DkEWA1S5XatlSi3CDHT+Aw5o6pBLKe/lyJA6FbhvuuLiwf2GXVE5hEjjDxMyF4JA8ciTApHPkQDqrtxc82o3gYj2poFM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4531.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(136003)(366004)(376002)(39860400002)(346002)(66446008)(64756008)(66476007)(8676002)(9686003)(55016002)(71200400001)(66556008)(186003)(107886003)(53546011)(2906002)(26005)(66946007)(5660300002)(52536014)(54906003)(83380400001)(86362001)(110136005)(6506007)(316002)(4326008)(478600001)(966005)(7696005)(8936002)(33656002)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?R0NvSU9uNzZhcGwwY2wxb2UwZmlVdUNJQmJiWTlwSlIyNHdWQUM1RmhLRkor?=
 =?utf-8?B?VGhpQmhBdnp0SEp2ak1Pci9UcW55VzFHWjlIOUtoSnY4RTA0ckl2VFdGMjV0?=
 =?utf-8?B?WXU3S2ZLKzNlYUJHcmFzSnBid1o5WlFvMzZMMkxiSjFtZTg2clN1cEEycmxq?=
 =?utf-8?B?UFdDNUI2d0FFMWl0REVZdmFaU1ArVTlUcHFJZ3RjcTdBRk5aRGkyL2I3a2x4?=
 =?utf-8?B?dkxrOEF2MUZYVTBHNEJXMjFhYTFkUEYxSGI4Qm5tKzIxbGNaVGxPKzdvLzVC?=
 =?utf-8?B?MXl4VTF3bTI5ZlBDWldScWNPTG94Z2xjemxaMUhkc2d0OTNrSVYvd2VkQmpY?=
 =?utf-8?B?enk5RjAxaEFjaFU5WmdkVmp1Nk9oemp2UFgwWXNISSs5VFlkR3k2U3dmS3Vo?=
 =?utf-8?B?Vm9yaTErcktlMWVOdk4zbS9vVXlodlAxVS9yVEc1TG5hUHRrbXNQeFNJK2pK?=
 =?utf-8?B?Wm5LaVpqa0p3YmQzZGMzRkhVTmlpRXNFN2RHUUZlOTl2bDE5ZmgyUlBpNnox?=
 =?utf-8?B?bElkSmIzakpOQjQrbVZVWGU2YW9ZOEU5aVBweW8zUWFsZ2Y5ejVBdU9WbUlN?=
 =?utf-8?B?ZnhRMWJDUnRSVHFRY3VsUXdVTll0N25IQmt1NW9EY0xzbENBMjc3R1lhNDNV?=
 =?utf-8?B?U3N0OEVTaTdOMWFpcEJvUHYrN01pSXp0WDhxNzFDK0x4dm5NcEhnbWdMSzR6?=
 =?utf-8?B?aFREY1ZmaVppRkJlRi81cmplcXROZVU3dWdyenFPR2xDYmg0QkdTM0Q4bDFa?=
 =?utf-8?B?MndRQWFKYXhOS3NlY3dqUWRUZFpIdEZCaXkrb2tLRnRjd2IrMVJUSFgwVWho?=
 =?utf-8?B?Vzc4bUhaenEwR3c3bnFFSXMyV0czQ2puOHZZempWdTlFWGFnd0Q5cVVjaGZa?=
 =?utf-8?B?bDg0YjhIbHE4TjV1NFR6ZkNZSUJJaUdlZTVIY3FFTmg5ZHZHSGxUMkJ2eFhP?=
 =?utf-8?B?V3hWVUxJREZPYUoyNGZqTUp2STM0ajlTVk5yWGZWVnlJZ1BwYUdaVk8ydjJm?=
 =?utf-8?B?enBZSHVjWUpwVzMzRUwzUnlNeCtmK3FjU2ZZdzF4Nnp2QzAyQTBvT21ucjFv?=
 =?utf-8?B?amFZcUdOSE5QU09CZXlkYTZ6KzdPZ2h3cU9ya0w3anJqOXJva08rVlh3Z3Ba?=
 =?utf-8?B?RzVvaGRodm5WTjZCWlMrZU12OVU0K2xQaEoxVktWb1kwVUNXdU50STF3WjBY?=
 =?utf-8?B?U0tTZTFUSlVoMjEvaVRhY29tYVJGTG1IZFh0cnZrWVJmM1NYU2JuekF2ZDVL?=
 =?utf-8?B?aVRydG0xNzc2dHFISjMrY045QkUvR2dCMEl3b3lvSzNXQXJPelk1Z2RpeVBl?=
 =?utf-8?Q?jK8qH7A2cfK3Q=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4531.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4602b91-4cca-4089-b83a-08d8bc22c2ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jan 2021 02:34:35.2460 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pV1pmjvnhTqsc/VTF1kCnaO1tLkQE/1S1MV9HeWwiXALcntWUpd5LGtyEBgDhjd6j1NsH4cFyI+LtI+sVGYQqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3899
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC-v21 00/13] Introduce Intel PXP component -
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
Cc: "Gaurav, Kumar" <kumar.gaurav@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Lionel,

I'm glad to hear the good news, thank you!

Best regards,
Sean

-----Original Message-----
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com> 
Sent: Monday, January 18, 2021 5:17 AM
To: Huang, Sean Z <sean.z.huang@intel.com>; Intel-gfx@lists.freedesktop.org
Cc: Gaurav, Kumar <kumar.gaurav@intel.com>
Subject: Re: [Intel-gfx] [RFC-v21 00/13] Introduce Intel PXP component - Mesa single session

Hi Sean,

FYI, I updated our Mesa drivers with the new I915_CONTEXT_PARAM_PROTECTED_CONTENT requirement to be only at creation time [1] [2] and gave a try to this series.
It all works fine :

Tested-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>

Cheers,

-Lionel

[1] : https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/8064
[2] : https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/8092

On 18/01/2021 08:07, Huang, Sean Z wrote:
> PXP (Protected Xe Path) is an i915 component, available on
> GEN12+ that helps to establish the hardware protected session
> and manage the status of the alive software session, as well as its 
> life cycle.
>
> This patch series is to allow the kernel space to create and manage a 
> single hardware session (a.k.a. default session or arbitrary session). 
> So user can allocate the protected buffer, which is encrypted with the 
> leverage of the arbitrary hardware session.
>
>
> rev21:
>          #01
>          - Remove the term "Mesa" from the help description of Kconfig
>          - Remove unnecessary "select INTEL_MEI_TXE" from DRM_I915_PXP
>            in Kconfig
>
>          #02
>          - Remove "#define KCR_INIT_MASK_SHIFT (16)", but still keep the
>            macro in this .c file
>          - Write KCR_INIT reg inly for gen12 during boot, not required
>            for gen13+
>
>          #03
>          - Remove debug print_hex_dump() from intel_pxp_tee_io_message()
>          - In struct i915_pxp_component_ops, change "receive" to "recv"
>
>          #04:
>          - Rename SESSION_TYPE_TYPE0, SESSION_TYPE_TYPE1 as
>            SESSION_TYPE_HWDRM,
>            SESSION_TYPE_NONHWDRM to have better meaning.
>          - Remove enum pxp_session_types and enum pxp_protection_modes
>            from
>            single session patch series.
>
>          #05
>          In intel_pxp_cmd.c:
>          - Remove the debug print as well as print_hex_dump()
>          - Should call i915_gem_object_flush_map() before unpin map
>          - Using "goto label" instead of bool such as is_engine_pm_get
>          - We should always return the error if any, instead of skip
>            with i915_request_set_error_once()
>
>          #06
>          - Fix bug, access i915 pointer before assigning the value at
>            intel_pxp_irq_handler()
>          - Writing register GEN11_CRYPTO_RSVD_INTR_ENABLE to enable the
>            PXP irq
>          - Remove the unnecessary comment for 
> GEN11_CRYPTO_RSVD_INTR_MASK
>
>          #07
>          - Bug fixing, we need to set the PXP_GLOBAL_TERMINATE 0x320f8
>            register after arb session termination
>          - Remove enum pxp_session_types and enum pxp_protection_modes
>            from
>            single session patch series.
>
>          #11
>          - Fix "Fi.CI.CHECKPATCH" warnings
>
>          #12
>          - Only allow set I915_CONTEXT_PARAM_PROTECTED_CONTENT during
>            context
>            creation (i915_gem_context_create_ioctl), but not allow during
>            context set param (i915_gem_context_setparam_ioctl)
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
>   drivers/gpu/drm/i915/gem/i915_gem_context.c   |  15 +-
>   drivers/gpu/drm/i915/gem/i915_gem_context.h   |   5 +
>   .../gpu/drm/i915/gem/i915_gem_context_types.h |   1 +
>   drivers/gpu/drm/i915/gem/i915_gem_create.c    |  68 +++++-
>   .../gpu/drm/i915/gem/i915_gem_object_types.h  |   5 +
>   drivers/gpu/drm/i915/gt/intel_gt.c            |   5 +
>   drivers/gpu/drm/i915/gt/intel_gt_irq.c        |  14 ++
>   drivers/gpu/drm/i915/gt/intel_gt_pm.c         |   4 +
>   drivers/gpu/drm/i915/gt/intel_gt_types.h      |   3 +
>   drivers/gpu/drm/i915/i915_drv.c               |   7 +-
>   drivers/gpu/drm/i915/i915_drv.h               |   6 +
>   drivers/gpu/drm/i915/i915_reg.h               |   2 +
>   drivers/gpu/drm/i915/pxp/intel_pxp.c          | 185 ++++++++++++++
>   drivers/gpu/drm/i915/pxp/intel_pxp.h          |  64 +++++
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
>   37 files changed, 1671 insertions(+), 10 deletions(-)
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
