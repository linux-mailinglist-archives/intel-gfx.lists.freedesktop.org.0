Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 233122F232B
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 00:48:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FCA389854;
	Mon, 11 Jan 2021 23:48:15 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F0858979F
 for <Intel-gfx@lists.freedesktop.org>; Mon, 11 Jan 2021 23:48:14 +0000 (UTC)
IronPort-SDR: YIQ52i2WCgHW+wPaXAk9HUV2Mbl5cxBz1U84XSZDcxov4XywEckqbASlBhN1IPyJrTH+MY8ERM
 nWdy8X1vjoxw==
X-IronPort-AV: E=McAfee;i="6000,8403,9861"; a="242026241"
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="242026241"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 15:48:13 -0800
IronPort-SDR: nNSN8Lhch+qwg7U3JW7tFvj2gTw+3P3ib8OuZlFicz7MKFtTkNzuIByO1ww+zQtBy90SpPTx59
 Ock85TiXI/fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="363310028"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga002.jf.intel.com with ESMTP; 11 Jan 2021 15:48:13 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 11 Jan 2021 15:48:12 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 11 Jan 2021 15:48:12 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 11 Jan 2021 15:48:12 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 11 Jan 2021 15:48:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WJCOJcaq8u1IBNQXE9aYVtSYwokacsW7KOB6gdg/b2qVs+T9xDuW/X1c9v155yvqRDu9peVJSjRx/iQlFD6UQASfSoiJliPnBoxaf8k38U0SlfoKFF50JqlBSGlplrOiIk9ZoTic3jrefbflrPqqFB+obLA/5mRqVwqImh38zH2ZoXPsWoGxtUd1/2v62Z+O54MsoBeJBzSRV/fG5rZoAQxN1cH+xwFDIHbnpqqGWrYrBlk1rSHr7X1+wOybQ/2jSeKSAcgWQuYk4RjnZ5XtwtjK9ijBJumzWCUbXiHXymtDaDCAJ2AFfznGmuDRk77I44981Km7tr4h5X1mmqUm2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k9IlfCKprCWi+f2BGxQR7E7P2bWlxCGrKaEDmWF0jt8=;
 b=D/Z1DYl9ezDwaTdXcJ2sag8UnpLqlSEPrAMcayPi+tmUg+jwdPPjYqyECsWNaA1fMPGu1SuWHiYHFdSVzOrgguQ83nx1BrRxrxgAc/bJAd3vu08Xeb/FB6A+r5tTTlYRWv4ENliEcq/TP82yn3BJzrc7mIlDhdTofSX14Z45hUj6yBEbDoFyKKWuHpok1U26QIZ7fVHq2g9l5sDwzMpNodxgeAF2iBmsG92PAA4RTIO8KylQ9tBJStT9ZQ76EjwrNxAUAzrzHQyFvhWpxkal7vS5tlr1fU8c+mOJQgFmb/vlq8SUJOyZ/r7LUOi2Poe/ogyzhbCSAy1viPASr3+ABg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k9IlfCKprCWi+f2BGxQR7E7P2bWlxCGrKaEDmWF0jt8=;
 b=KT20sNw7MVxugnj7+shEPI5mc6G+jeaHxOuYyHMTuLWLIoMc96d7GV8bOhldZWm6SgE+CUY6KY1wyJOkZuXr1SsL38kSqcsILL0QjxUcYuAR0IljLGyIcXpp19bEB18VyzEuEc8Ze9XChw2D1f5uUJBU+ic88t4TTqm9RPr1EEE=
Received: from DM6PR11MB4531.namprd11.prod.outlook.com (2603:10b6:5:2a5::19)
 by DM6PR11MB3578.namprd11.prod.outlook.com (2603:10b6:5:143::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.12; Mon, 11 Jan
 2021 23:48:10 +0000
Received: from DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::50ab:1cac:2a5a:7786]) by DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::50ab:1cac:2a5a:7786%8]) with mapi id 15.20.3742.012; Mon, 11 Jan 2021
 23:48:10 +0000
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC-v19 04/13] drm/i915/pxp: Create the arbitrary
 session after boot
Thread-Index: AQHW5IFxXLRgouaaEEyNfrI40ecYoqoc0+eAgAZKbQA=
Date: Mon, 11 Jan 2021 23:48:10 +0000
Message-ID: <DM6PR11MB4531E4CAB57F9132B9516B20D9AB0@DM6PR11MB4531.namprd11.prod.outlook.com>
References: <20210106231223.8323-1-sean.z.huang@intel.com>
 <20210106231223.8323-5-sean.z.huang@intel.com>
 <9fda3ca20d17aea3de043f108e5436399d880542.camel@intel.com>
In-Reply-To: <9fda3ca20d17aea3de043f108e5436399d880542.camel@intel.com>
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
x-ms-office365-filtering-correlation-id: 87a75e62-56de-46d5-af77-08d8b68b5a2b
x-ms-traffictypediagnostic: DM6PR11MB3578:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3578BF6DD7B9B0D222689568D9AB0@DM6PR11MB3578.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3FKRFNegeyv3z7xjSC97uPADn5vmpGGYt+Es//j/jL+z3vtgZlI6ZPjw6cm+G53mh6I3LS509XtSwe7MX79z8PHVMfMfZ0pUWmh6K/wmGRa8w1LIyN8RsvBT16dIlTtcZuoK3DUSNGuagrlRe8rZpoBSiw8cpAQgOQ6CmSDZET5RgTzHDfxvDYcC6pGZ5UBZOqD4URpr5MrBylYh8Un9yMk6mhghZVOf6/BfgNswJVYv9MBebzhM6p02jztyTOD3IFkejYb/+LssQHtxvuLD0gnhQfRm39mUvSwzIO26sVHSoxknKDju36XVEnw0A2nWO5QgBFZFdmyLnr9RLmVw1cWKB7oK9wT/m7TlNa9D3smEL4cYrhtn61o/gLQaSSUi/KJ3iE4Z73dqL5EBAW8loqu08jlKf98QV6JA/kZNP+g=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4531.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(396003)(39860400002)(346002)(376002)(136003)(71200400001)(66556008)(9686003)(8936002)(76116006)(316002)(64756008)(8676002)(66446008)(86362001)(478600001)(26005)(30864003)(110136005)(66476007)(966005)(83380400001)(5660300002)(53546011)(6506007)(7696005)(2906002)(186003)(66946007)(55016002)(52536014)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?V2JFZkZ5RGhrSDRkc2s0NU9wZzAwb2ovK3pIZzNUbFo3ZDhkb29mSmQ0S1E2?=
 =?utf-8?B?bE92YTN2ZXlnNFphNW1pdGpIMlJLK0llK21uY0t5Ymo2THNEY1NmdVFhYUpT?=
 =?utf-8?B?bmN1MTFTVDhCV1dKcW8xb3dZZzBtR3c1OTQrN3hLdDY0Si9YWXJhT3I1blJL?=
 =?utf-8?B?OTJ6VHJRbkQwMzJYV1gySHZBYWc4a2Q0cFUxR0VoT2l5VUhQak5VVStMVFk0?=
 =?utf-8?B?VDVuK2M0Qm1rS0gxV3h4alE4cGFXV21PQ29FSk5nc1VvMGlkNUJhbml4TVMr?=
 =?utf-8?B?MHZPZUJVU2tJREJuaFdiUW50SXNVOThMQm5TTmtVMXFFcE4wUWZLSE0vTGho?=
 =?utf-8?B?Q1JvVEJ0eDJ4elFJUGNBUlJOdThqTkZoTTllOGRwd2paeC96RmJLZ3RPdjlT?=
 =?utf-8?B?WlFtb2J6ZVhKM1ZIWDVYMElwZkxEMlVyNldpeG1oR0lHd3Y1WkxaaDFZV3dP?=
 =?utf-8?B?bjl1a3hQQmQxb3MwSlRiaXVDOWZkbHBSUHUxeFVEMW9tZ3oyNXpEdTBHU0tp?=
 =?utf-8?B?dERrZE83YmVRVXVXampRY0FIbERtN01pRlcyNExJT1lGZngybE9Ca0ppd2Jm?=
 =?utf-8?B?cXJIdnFJZlBZVjlZdFY1Z1VQVnpHSUFkYzBZc0Z3S2k3WlZKTm9pRDVYOVJq?=
 =?utf-8?B?cU5QdXFpQ0hIRWtScEEwSDlNWjJpVS9BS1M2MU8wbC9nSGV2dnE2bGVwcWpI?=
 =?utf-8?B?aDUycWhoTXZFTzNBYWhidXBMTHNFdG43RWxpTStPMit6Tmpib0JHcXIzUkNF?=
 =?utf-8?B?Z2NFRytJRnh3UHNmSTlKaGJoalJ3SXUwdFZPR3FmZm96N2dMdExpdlJTY2tj?=
 =?utf-8?B?TGR3UGFseVk4TXRPTUtxd0pGdCs5bUpRL0RFWEQyanpLSmFsNklGN0xOS2xY?=
 =?utf-8?B?TmRXOUdSMVlORUZReHBuUFR6cklhNjBmUVl4bnBiaVl6S21lWkVDcEtqSEFG?=
 =?utf-8?B?RzU1aTl6ak1sTkF4VXc2ekxpL2w5b1IrVmRKaFBST2EycUNTTlI5N0JTaXA3?=
 =?utf-8?B?aTBZLzhEM0ZYbmlRZFJYcDRCWi96YllUb3lGRDV0STlrbWhkYkZFKzR1RWs2?=
 =?utf-8?B?dys5b3krV0QvdjlGVFhUTTNFRkNjVFdOeWR3UnF5aHBucDlYNTZTSkdIM3JQ?=
 =?utf-8?B?WCtqNFEzV05ZbC9jd0VFSUpSeERpYXcwVGcvNGpUVHZQclpMbDRBUDNaUEtk?=
 =?utf-8?B?T2dSQnhXZ0ZRVTR4WXQ4cmhHV1ExcWd3dTdxaHFXM0R2QUN0VlFDM2Z4Q2NJ?=
 =?utf-8?B?YWxyNW5rTzhOZUNUTVd5L0dsd0FWeTRnTzlHR0d5VFlONjdFeDVVQ2VUTVUr?=
 =?utf-8?Q?ispjViXaD7q+I=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4531.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87a75e62-56de-46d5-af77-08d8b68b5a2b
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2021 23:48:10.0963 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cq2wzw+glXcKV2L0LeN7+Ju/yZEA/7tAy6mALNrHyB61uh2/JNQfygPqxULVE8A1MlUcc1Sik8R0w9V0yvuIkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3578
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC-v19 04/13] drm/i915/pxp: Create the arbitrary
 session after boot
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Rodrigo,

Quoted from Joonas at https://patchwork.freedesktop.org/patch/412397/?series=84620&rev=19 
" Generally the trend on the GT side is to contain in a .c file if there are
no shared users like these. So they should be at this spot, yet the rest
of the review comments apply."

So I think the define GEN12_KCR_SIP should stay in intel_pxp_arb.c since it's no shared users.
But anyway please let me know if you insist to move it to i915_reg.h

Best regards,
Sean

-----Original Message-----
From: Vivi, Rodrigo <rodrigo.vivi@intel.com> 
Sent: Thursday, January 7, 2021 7:40 AM
To: Huang, Sean Z <sean.z.huang@intel.com>; Intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] [RFC-v19 04/13] drm/i915/pxp: Create the arbitrary session after boot

On Wed, 2021-01-06 at 15:12 -0800, Huang, Sean Z wrote:
> Create the arbitrary session, with the fixed session id 0xf, after 
> system boot, for the case that application allocates the protected 
> buffer without establishing any protection session. Because the 
> hardware requires at least one alive session for protected buffer 
> creation.  This arbitrary session needs to be re-created after 
> teardown or power event because hardware encryption key won't be valid 
> after such cases.
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                |   1 +
>  drivers/gpu/drm/i915/pxp/intel_pxp.c         |   1 +
>  drivers/gpu/drm/i915/pxp/intel_pxp.h         |  16 +++
>  drivers/gpu/drm/i915/pxp/intel_pxp_arb.c     | 131
> +++++++++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_arb.h     |  16 +++
>  drivers/gpu/drm/i915/pxp/intel_pxp_context.h |   1 +
>  drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     |  73 +++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_tee.h     |   3 +
>  drivers/gpu/drm/i915/pxp/intel_pxp_types.h   |  26 ++++
>  9 files changed, 268 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_arb.c
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_arb.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile 
> b/drivers/gpu/drm/i915/Makefile index 5494c30cb54f..af9e87e4c63a 
> 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -262,6 +262,7 @@ i915-y += i915_perf.o  # Protected execution 
> platform (PXP) support
>  i915-$(CONFIG_DRM_I915_PXP) += \
>         pxp/intel_pxp.o \
> +       pxp/intel_pxp_arb.o \
>         pxp/intel_pxp_context.o \
>         pxp/intel_pxp_tee.o
>  
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index c819f3791ee4..3868e8c697f9 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -6,6 +6,7 @@
>  #include "intel_pxp.h"
>  #include "intel_pxp_context.h"
>  #include "intel_pxp_tee.h"
> +#include "intel_pxp_arb.h"
>  
>  /* KCR register definitions */
>  #define KCR_INIT            _MMIO(0x320f0)
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> index f47bc6bea34f..8fc91e900b16 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -8,6 +8,22 @@
>  
>  #include "intel_pxp_types.h"
>  
> +enum pxp_session_types {
> +       SESSION_TYPE_TYPE0 = 0,
> +       SESSION_TYPE_TYPE1 = 1,
> +
> +       SESSION_TYPE_MAX
> +};
> +
> +enum pxp_protection_modes {
> +       PROTECTION_MODE_NONE = 0,
> +       PROTECTION_MODE_LM   = 2,
> +       PROTECTION_MODE_HM   = 3,
> +       PROTECTION_MODE_SM   = 6,
> +
> +       PROTECTION_MODE_ALL
> +};
> +
>  #ifdef CONFIG_DRM_I915_PXP
>  void intel_pxp_init(struct intel_pxp *pxp);  void 
> intel_pxp_fini(struct intel_pxp *pxp); diff --git 
> a/drivers/gpu/drm/i915/pxp/intel_pxp_arb.c
> b/drivers/gpu/drm/i915/pxp/intel_pxp_arb.c
> new file mode 100644
> index 000000000000..640d7103c04d
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_arb.c
> @@ -0,0 +1,131 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#include "gt/intel_context.h"
> +#include "gt/intel_engine_pm.h"
> +
> +#include "intel_pxp_types.h"
> +#include "intel_pxp_arb.h"
> +#include "intel_pxp.h"
> +#include "intel_pxp_tee.h"
> +
> +#define GEN12_KCR_SIP _MMIO(0x32260) /* KCR type0 session in play 0-
> 31 */
> +
> +/* Arbitrary session */
> +#define ARB_SESSION_INDEX 0xf
> +#define ARB_SESSION_TYPE SESSION_TYPE_TYPE0

All reg defines should be in i915_reg.h

> +
> +bool intel_pxp_arb_session_is_in_play(struct intel_pxp *pxp) {
> +       u32 regval_sip = 0;
> +       intel_wakeref_t wakeref;
> +       struct intel_gt *gt = container_of(pxp, struct intel_gt,
> pxp);
> +
> +       with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref) {
> +               regval_sip = intel_uncore_read(gt->uncore,
> GEN12_KCR_SIP);
> +       }
> +
> +       return regval_sip & BIT(ARB_SESSION_INDEX); }
> +
> +/* wait hw session_in_play reg to match the current sw state */ 
> +static int wait_arb_hw_sw_state(struct intel_pxp *pxp) {
> +       const int max_retry = 10;
> +       const int ms_delay = 10;
> +       int retry = 0;
> +       int ret;
> +       struct pxp_protected_session *arb = &pxp->ctx.arb_session;
> +
> +       ret = -EINVAL;
> +       for (retry = 0; retry < max_retry; retry++) {
> +               if (intel_pxp_arb_session_is_in_play(pxp) ==
> +                   arb->is_in_play) {
> +                       ret = 0;
> +                       break;
> +               }
> +
> +               msleep(ms_delay);
> +       }
> +
> +       return ret;
> +}
> +
> +static void arb_session_entry_init(struct intel_pxp *pxp) {
> +       struct pxp_protected_session *arb = &pxp->ctx.arb_session;
> +
> +       arb->type = ARB_SESSION_TYPE;
> +       arb->protection_mode = PROTECTION_MODE_HM;
> +       arb->index = ARB_SESSION_INDEX;
> +       arb->is_in_play = false;
> +}
> +
> +static int intel_pxp_arb_reserve_session(struct intel_pxp *pxp) {
> +       int ret;
> +
> +       lockdep_assert_held(&pxp->ctx.mutex);
> +
> +       arb_session_entry_init(pxp);
> +       ret = wait_arb_hw_sw_state(pxp);
> +
> +       return ret;
> +}
> +
> +/**
> + * intel_pxp_arb_mark_session_in_play - To put an reserved protected
> session to "in_play" state
> + * @pxp: pointer to pxp struct.
> + *
> + * Return: status. 0 means update is successful.
> + */
> +static int intel_pxp_arb_mark_session_in_play(struct intel_pxp *pxp) 
> +{
> +       struct pxp_protected_session *arb = &pxp->ctx.arb_session;
> +
> +       lockdep_assert_held(&pxp->ctx.mutex);
> +
> +       if (arb->is_in_play)
> +               return -EINVAL;
> +
> +       arb->is_in_play = true;
> +       return 0;
> +}
> +
> +int intel_pxp_arb_create_session(struct intel_pxp *pxp) {
> +       int ret;
> +       struct intel_gt *gt = container_of(pxp, typeof(*gt), pxp);
> +
> +       lockdep_assert_held(&pxp->ctx.mutex);
> +
> +       if (pxp->ctx.flag_display_hm_surface_keys) {
> +               drm_err(&gt->i915->drm, "%s: arb session is alive so
> skipping the creation\n",
> +                       __func__);
> +               return 0;
> +       }
> +
> +       ret = intel_pxp_arb_reserve_session(pxp);
> +       if (ret) {
> +               drm_err(&gt->i915->drm, "Failed to reserve arb
> session\n");
> +               return ret;
> +       }
> +
> +       ret = intel_pxp_tee_cmd_create_arb_session(pxp,
> ARB_SESSION_INDEX);
> +       if (ret) {
> +               drm_err(&gt->i915->drm, "Failed to send tee cmd for
> arb session creation\n");
> +               return ret;
> +       }
> +
> +       ret = intel_pxp_arb_mark_session_in_play(pxp);
> +       if (ret) {
> +               drm_err(&gt->i915->drm, "Failed to mark arb session
> status in play\n");
> +               return ret;
> +       }
> +
> +       pxp->ctx.flag_display_hm_surface_keys = true;
> +
> +       return ret;
> +}
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_arb.h
> b/drivers/gpu/drm/i915/pxp/intel_pxp_arb.h
> new file mode 100644
> index 000000000000..2196153dd879
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_arb.h
> @@ -0,0 +1,16 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_ARB_H__
> +#define __INTEL_PXP_ARB_H__
> +
> +#include <linux/types.h>
> +
> +struct intel_pxp;
> +
> +int intel_pxp_arb_create_session(struct intel_pxp *pxp); bool 
> +intel_pxp_arb_session_is_in_play(struct intel_pxp *pxp);
> +
> +#endif /* __INTEL_PXP_ARB_H__ */
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
> b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
> index f51021c33d45..bf2feb4aaf6d 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
> @@ -8,6 +8,7 @@
>  
>  #include <linux/mutex.h>
>  #include "intel_pxp_types.h"
> +#include "intel_pxp_arb.h"
>  
>  void intel_pxp_ctx_init(struct pxp_context *ctx);  void 
> intel_pxp_ctx_fini(struct pxp_context *ctx); diff --git 
> a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> index 5a1ffcc703e2..41d8a31bbb75 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> @@ -10,6 +10,32 @@
>  #include "intel_pxp.h"
>  #include "intel_pxp_context.h"
>  #include "intel_pxp_tee.h"
> +#include "intel_pxp_arb.h"
> +
> +#define PXP_TEE_APIVER 0x40002
> +#define PXP_TEE_ARB_CMDID 0x1e
> +#define PXP_TEE_ARB_PROTECTION_MODE 0x2
> +
> +/* PXP TEE message header */
> +struct pxp_tee_cmd_header {
> +       u32 api_version;
> +       u32 command_id;
> +       u32 status;
> +       /* Length of the message (excluding the header) */
> +       u32 buffer_len;
> +} __packed;
> +
> +/* PXP TEE message input to create a arbitrary session */ struct 
> +pxp_tee_create_arb_in {
> +       struct pxp_tee_cmd_header header;
> +       u32 protection_mode;
> +       u32 session_id;
> +} __packed;
> +
> +/* PXP TEE message output to create a arbitrary session */ struct 
> +pxp_tee_create_arb_out {
> +       struct pxp_tee_cmd_header header; } __packed;
>  
>  static int intel_pxp_tee_io_message(struct intel_pxp *pxp,
>                                     void *msg_in, u32 msg_in_size, @@ 
> -70,7 +96,9 @@ static int intel_pxp_tee_io_message(struct intel_pxp 
> *pxp,  static int i915_pxp_tee_component_bind(struct device 
> *i915_kdev,
>                                        struct device *tee_kdev, void
> *data)
>  {
> +       int ret = 0;
>         struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
> +       struct intel_pxp *pxp = &i915->gt.pxp;
>  
>         if (!i915 || !tee_kdev || !data)
>                 return -EPERM;
> @@ -80,6 +108,19 @@ static int i915_pxp_tee_component_bind(struct
> device *i915_kdev,
>         i915->pxp_tee_master->tee_dev = tee_kdev;
>         mutex_unlock(&i915->pxp_tee_comp_mutex);
>  
> +       mutex_lock(&pxp->ctx.mutex);
> +
> +       /* Create arb session only if tee is ready, during system
> boot or sleep/resume */
> +       if (!intel_pxp_arb_session_is_in_play(pxp))
> +               ret = intel_pxp_arb_create_session(pxp);
> +
> +       mutex_unlock(&pxp->ctx.mutex);
> +
> +       if (ret) {
> +               drm_err(&i915->drm, "Failed to create arb session
> ret=[%d]\n", ret);
> +               return ret;
> +       }
> +
>         return 0;
>  }
>  
> @@ -135,3 +176,35 @@ void intel_pxp_tee_component_fini(struct
> intel_pxp *pxp)
>  
>         component_del(i915->drm.dev, &i915_pxp_tee_component_ops);  }
> +
> +int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp,
> +                                        int arb_session_id) {
> +       int ret;
> +       u32 msg_out_size_received = 0;
> +       struct pxp_tee_create_arb_in msg_in = {0};
> +       struct pxp_tee_create_arb_out msg_out = {0};
> +       struct intel_gt *gt = container_of(pxp, typeof(*gt), pxp);
> +       struct drm_i915_private *i915 = gt->i915;
> +
> +       msg_in.header.api_version = PXP_TEE_APIVER;
> +       msg_in.header.command_id = PXP_TEE_ARB_CMDID;
> +       msg_in.header.buffer_len = sizeof(msg_in) -
> sizeof(msg_in.header);
> +       msg_in.protection_mode = PXP_TEE_ARB_PROTECTION_MODE;
> +       msg_in.session_id = arb_session_id;
> +
> +       mutex_lock(&i915->pxp_tee_comp_mutex);
> +
> +       ret = intel_pxp_tee_io_message(pxp,
> +                                      &msg_in,
> +                                      sizeof(msg_in),
> +                                      &msg_out,
> &msg_out_size_received,
> +                                      sizeof(msg_out));
> +
> +       mutex_unlock(&i915->pxp_tee_comp_mutex);
> +
> +       if (ret)
> +               drm_err(&i915->drm, "Failed to send tee msg
> ret=[%d]\n", ret);
> +
> +       return ret;
> +}
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
> b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
> index 4b5e3edb1d9b..c46f9033f709 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
> @@ -11,4 +11,7 @@
>  void intel_pxp_tee_component_init(struct intel_pxp *pxp);  void 
> intel_pxp_tee_component_fini(struct intel_pxp *pxp);
>  
> +int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp,
> +                                        int arb_session_id);
> +
>  #endif /* __INTEL_PXP_TEE_H__ */
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> index f9b40ea98b1b..287ba1e0ed9d 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> @@ -8,12 +8,38 @@
>  
>  #include <linux/mutex.h>
>  
> +/**
> + * struct pxp_protected_session - structure to track all active
> sessions.
> + */
> +struct pxp_protected_session {
> +       /** @index: Numeric identifier for this protected session */
> +       int index;
> +       /** @type: Type of session */
> +       int type;
> +       /** @protection_mode: mode of protection requested */
> +       int protection_mode;
> +
> +       /**
> +        * @is_in_play: indicates whether the session has been
> established
> +        *              in the HW root of trust if this flag is
> false, it
> +        *              indicates an application has reserved this
> session,
> +        *              but has not * established the session in the
> +        *              hardware yet.
> +        */
> +       bool is_in_play;
> +};
> +
>  /* struct pxp_context - Represents combined view of driver and 
> logical HW states. */  struct pxp_context {
>         /** @mutex: mutex to protect the pxp context */
>         struct mutex mutex;
>  
>         bool inited;
> +
> +       struct pxp_protected_session arb_session;
> +       u32 arb_session_pxp_tag;
> +
> +       bool flag_display_hm_surface_keys;
>  };
>  
>  struct intel_pxp {


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
