Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 208442D3963
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 05:02:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D90956E0E9;
	Wed,  9 Dec 2020 04:02:05 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 145806E0E6
 for <Intel-gfx@lists.freedesktop.org>; Wed,  9 Dec 2020 04:02:03 +0000 (UTC)
IronPort-SDR: SftlldXu4gF1dcooHaegtfQ8qxnpWWlWcsUyn0Dbcnq4ul5XOI4Tn+QKjkakITnLmunvpSSj+m
 fDwLIGSLsyKA==
X-IronPort-AV: E=McAfee;i="6000,8403,9829"; a="238118978"
X-IronPort-AV: E=Sophos;i="5.78,404,1599548400"; d="scan'208";a="238118978"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2020 20:02:03 -0800
IronPort-SDR: bfs4pReTKVlj1eu8/W43tabUfabXsUQsmgtnoP7cyRV4Dz7qLTJZV/Lj0DjC/UsvL2G0XranAI
 IPAze8W6ZjoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,404,1599548400"; d="scan'208";a="542254117"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga005.fm.intel.com with ESMTP; 08 Dec 2020 20:01:59 -0800
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Dec 2020 20:01:59 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 8 Dec 2020 20:01:59 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 8 Dec 2020 20:01:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hc8X5zemWRbEWAAYRp8FEshjQSuAA9ISPAD5GOLELGoaESZA2ri1+f/Tf9BMQhWjVrmqW62pBtdIDGs1GXMLH/Ia0zCOvrjEsuJ4EOrysJ1/VRu3wAiGA67bzBSbEHwq9Gd9Tue/oFT1bsiDfvmIbRJpAfnIFgtbtnyrnaFRhGsJWWv4JAfyWgETkdPgEfp8A8W5opZ3y9IJ1njls5ZGIRjDE373bOklKn3mkGyjAL8AUHjdJZhh1Wo5T0TWWhUcZVElh2W6xEUVZZ3Vdyakvpv4O4qRcGat+eYgbQsCrf3dSTHNWPog6RbeGc3uLvtlwYwfex+yHzu0q5T80EUiFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rxh+v6dQWrmP1/NnnKXx9DXmypqCJAdmgC6nuXEyEQI=;
 b=HelH62qN6dohWR4wkcpOEenQslJhqxfpBtA0IFZUvaPU16QeYFslNQ71O0/W5tKT1RQBOo7pmPzTuC+iWtbauXSmvOFTqlXA2oJ1A8ZNKKrNyq7fGonQ1eeK+XXH0667kEDKvcjbRaai9MvF/EoLV1lOJVC7wa4RGpmJFXjfERnszaOEHWU/5yzDFU8lBLG1l24i4zgJnVafzgWU0uhNX4oDiui8ohVpmvga52eOIgU1gnbTPRhIk5l4/LC/T7akEH0v70OTa0KZEV8mdTFybhc4hRNq2W+YPVPAMwhQvkP+93+6A3kkG/65GQy3heVTtF9LDe+dbrGvG2e5BJm+6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rxh+v6dQWrmP1/NnnKXx9DXmypqCJAdmgC6nuXEyEQI=;
 b=FDlamIe2lQvzhwIr+XhRjyEitaSef0akKQlkrif4nma0ktkmFBBnYmRB/gvu+9DXG4WvX4GGQJCQ7/IYMhfZGIIExqrq4m3cJGaaL+LH4zX0dgipR3Dju6X9IoSxb8vmipfL6f302NSUMOuMocSpZiYdYt3HZNTyCNNf5lA8oB4=
Received: from DM6PR11MB4531.namprd11.prod.outlook.com (2603:10b6:5:2a5::19)
 by DM6PR11MB4516.namprd11.prod.outlook.com (2603:10b6:5:2a5::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.18; Wed, 9 Dec
 2020 04:01:58 +0000
Received: from DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071]) by DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071%8]) with mapi id 15.20.3632.018; Wed, 9 Dec 2020
 04:01:57 +0000
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC-v1 04/16] drm/i915/pxp: set KCR reg init during
 the boot time
Thread-Index: AQHWzImnyyXYq/E19kiiGYp79l3dOanuI89w
Date: Wed, 9 Dec 2020 04:01:57 +0000
Message-ID: <DM6PR11MB453161AEC727DA817F036D60D9CC0@DM6PR11MB4531.namprd11.prod.outlook.com>
References: <20201207002134.13731-1-sean.z.huang@intel.com>
 <20201207002134.13731-5-sean.z.huang@intel.com>
 <160733945441.9322.7949963502281538695@jlahtine-mobl.ger.corp.intel.com>
In-Reply-To: <160733945441.9322.7949963502281538695@jlahtine-mobl.ger.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [73.220.16.43]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8e1ed005-575d-4923-b4ef-08d89bf72c88
x-ms-traffictypediagnostic: DM6PR11MB4516:
x-microsoft-antispam-prvs: <DM6PR11MB45168E4F983CAF83FB33C4DCD9CC0@DM6PR11MB4516.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: M0Z6NkgsRY73OyYd0XGdAWZZSTyhzrmi+PI7dFkyg1hGx1BYfGpHWzV0UndZ2cxBdybWWU3zoMbBRhTz6Mg+zokfF+i2nKkovvVWfYZ05n+gK5J4hwUDVKsUStLD4vuVreEQ8PqJSLPuwVeZP6+98bzbxmHwgFR1R0pBifDEXyUx/wirElh86MfcCJFJFNImRv/gtT+E2Y3tGh8MX9Xa774AM5Sc1j65i7OdQ76G3wBgoWfrumb2CoWp2xwAmyJLi+atkD8FdzjkSc2KsdUuUakCh4tQbgV2bLawl0MiAglESAdf3PIdzAXThFEJof6k
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4531.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(136003)(366004)(76116006)(86362001)(2906002)(66446008)(7696005)(71200400001)(186003)(33656002)(66946007)(66556008)(83380400001)(66476007)(64756008)(26005)(5660300002)(53546011)(55016002)(8676002)(52536014)(9686003)(508600001)(8936002)(110136005)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?dThLQTJCSkxvN2JxWFBPbmZuN3E4amRCbURseDl2QjZDTG5sMGpTd3NrRU53?=
 =?utf-8?B?NWFpUklKSU83YjFNN0JjVVJ6cnVnSThsZHZ2YXJpalZodUhzUlBZNVNGY0p6?=
 =?utf-8?B?ejhWVDRQb2doV056VEgzbnUxOXk5OFpsdHN6Z0FXR1NVeVY3TnFHUytqWk1n?=
 =?utf-8?B?eVJ3L1krRnRvZUlqMXlnOUEwNDA3V05yYStTSWpkb3cyak5TSnVTZXVKYWUz?=
 =?utf-8?B?SmJkVk52Z2dYcUhtcjZORlFBK0xVeDNnK2N0R1NTQTQ4RE9MRy9IUGpleU1K?=
 =?utf-8?B?eWZ5enRwTVFuSFhOWW5LdElPRzdSc0xDU2l3aVoyNUc0TDJ2K3B5Yk1QNi9o?=
 =?utf-8?B?RkxtUHdaTWlFQXBkNDVjSnZjRXpGTEtqMzBWcERIaVhQclV4RnMrUjFkYWM5?=
 =?utf-8?B?REc2QkVDWjUzckF2UWVFL1N5NGhNaUdlOTh0Z0wzUE52NDdDY1RueGpHeEZB?=
 =?utf-8?B?VDc4ZHNmc010bzBOZVhBdVFLUFhHTHhIK0RKQnJpYkRreUJwTzB2QUpDanN5?=
 =?utf-8?B?SmVpUTQ1STJYNFo2M0tOck8vQjFsb1VRZmVpMG5IRkE1NWFaY2JJSmZMV1Fl?=
 =?utf-8?B?ZkFzbjV2VGlSVGNSblBvN1dhYXBxb0FyQmIrMHlDREhweXlsZmY5Y3h4T1kx?=
 =?utf-8?B?cTBmRkp2ejI4OE1tTnBaRjJ5N1JQd0R0cmlFSzZVSjYrY21ETUluUEJKbDd3?=
 =?utf-8?B?ck9GQ1pST21mcjJWTXFtWk5aSDNoUW1JRnNSdDZqTXBBMUpuNW9QR3BwSFk4?=
 =?utf-8?B?VC9FOTV0TmhiRHY2cTFOK09zaXFwMFdiRnRuWmVaS2ZTc1d6N3BLdE95cjYw?=
 =?utf-8?B?d0JaZnVBZ1lLZVpqbDhTMThCODNWTmMxRnFHUWNWb01XRXlxeFhVdHVxYnRw?=
 =?utf-8?B?NTVXb3NpMFhtYW11OXBtci9UaGFaUkk2Z2pBc0xqdDFnaHdqOGZtcGp6YXA2?=
 =?utf-8?B?WjhnTXVldmhsblB0dExGSDhMTFB1TFlLQnBOcmxWV254emNjUTJaNlpicWlT?=
 =?utf-8?B?a2ZFSGZxRVMrR2hLZjJVVklRbi8xbGtaM3pUMXRKd3phVUFkbzRKSHl6NEpV?=
 =?utf-8?B?OVBWcEdYa0xTOHlXUkllSXJPVFdxNHM2L05STFdrZE4zUEdGMmQ2bStpNDJ2?=
 =?utf-8?B?UWt5YVhIeWZ5Y3BuOTQ0em1EVEhWeTBVaWhlSHI5TXFIVFplcHpNRlNIVjFL?=
 =?utf-8?B?VFFocFdRY1FZK2RDRXlEN1c2TjJpbUlURnUxUFZqTE5wMjc5ZkhvYUlIVG1F?=
 =?utf-8?B?WnZmbjdGeHpkU0hkbXFuZXJjQ1RIVnpSa2RWa3dvblFyLzZwbklsS2JlS2w5?=
 =?utf-8?Q?EzAGGui0wop60=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4531.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e1ed005-575d-4923-b4ef-08d89bf72c88
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2020 04:01:57.8602 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wF+NxMalz/nJ+E89auPcy/l2Kvh4SP3oDedTXGzCiL6XelxJDxUTXDal1hoqnKLdlqkiLBn9V1EFL5HwJLb/FA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4516
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC-v1 04/16] drm/i915/pxp: set KCR reg init
 during the boot time
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

Hi Joonas,

> I think this should just be intel_pxp_sm_init() and then do whatever it needs to initialize. Also as we plan on having only a single session, I don't see why would we want a separate session management file/header.
> So I would be inclined to just inline the KCR_INIT macro write here. If this is moved to appropriate spot during intel_gt initialization, we should have the hardware wakeref, so would be just a single intel_uncore_write.
DONE, move to intel_gt so don't need the wakeref anymore, good suggestion, thanks!

> Again, GEM_BUG_ON(!i915) should suffice.
DONE, remove the check

> I don't think we want to grab the wakeref at a low level reg_write function but at a higher levels to clearly distinct functions that need to access hardware and those who don't.
DONE.

> There is an error message in the upper level function, so one of these becomes redundant.
> After this has been moved to intel_gt init, the hardware wakeref is definitely held
DONE

> See above related to offset. Here we convert to u32. We shouldn't escape the protection offered by _MMIO macro.
DONE

> Based on the register name this feels like it should somehow be related to display init?
This register is more like a PXP related reg rather than display, so I prefer still keep this in here.

> If this is only used from single place, it should go to the .c file that uses it.
DONE

Best regards,
Sean

-----Original Message-----
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com> 
Sent: Monday, December 7, 2020 3:11 AM
To: Huang, Sean Z <sean.z.huang@intel.com>; Intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] [RFC-v1 04/16] drm/i915/pxp: set KCR reg init during the boot time

Quoting Huang, Sean Z (2020-12-07 02:21:22)
> Set the KCR init during the boot time, which is required by hardware, 
> to allow us doing further protection operation such as sending 
> commands to GPU or TEE
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>

<SNIP>

> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -6,6 +6,7 @@
>  #include "i915_drv.h"
>  #include "intel_pxp.h"
>  #include "intel_pxp_context.h"
> +#include "intel_pxp_sm.h"
>  
>  static void intel_pxp_write_irq_mask_reg(struct drm_i915_private 
> *i915, u32 mask)  { @@ -77,6 +78,8 @@ static void 
> intel_pxp_irq_work(struct work_struct *work)
>  
>  int intel_pxp_init(struct drm_i915_private *i915)  {
> +       int ret;
> +
>         if (!i915)
>                 return -EINVAL;
>  
> @@ -92,13 +95,19 @@ int intel_pxp_init(struct drm_i915_private *i915)
>                 return -EFAULT;
>         }
>  
> +       ret = pxp_sm_set_kcr_init_reg(i915);

I think this should just be intel_pxp_sm_init() and then do whatever it needs to initialize. Also as we plan on having only a single session, I don't see why would we want a separate session management file/header.

So I would be inclined to just inline the KCR_INIT macro write here. If this is moved to appropriate spot during intel_gt initialization, we should have the hardware wakeref, so would be just a single intel_uncore_write.

> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
> @@ -0,0 +1,38 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#include "gt/intel_context.h"
> +#include "gt/intel_engine_pm.h"
> +
> +#include "intel_pxp.h"
> +#include "intel_pxp_sm.h"
> +#include "intel_pxp_context.h"
> +
> +static int pxp_reg_write(struct drm_i915_private *i915, u32 offset, 
> +u32 regval) {
> +       intel_wakeref_t wakeref;
> +
> +       if (!i915)
> +               return -EINVAL;

Again, GEM_BUG_ON(!i915) should suffice.

> +
> +       with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
> +               i915_reg_t reg_offset = {offset};

See below, here we convert from u32 to i915_reg_t.

> +
> +               intel_uncore_write(&i915->uncore, reg_offset, regval);
> +       }

I don't think we want to grab the wakeref at a low level reg_write function but at a higher levels to clearly distinct functions that need to access hardware and those who don't.

> +       return 0;
> +}
> +
> +int pxp_sm_set_kcr_init_reg(struct drm_i915_private *i915) {
> +       int ret;
> +
> +       ret = pxp_reg_write(i915, KCR_INIT.reg, 
> + KCR_INIT_ALLOW_DISPLAY_ME_WRITES);

See above related to offset. Here we convert to u32. We shouldn't escape the protection offered by _MMIO macro.

Based on the register name this feels like it should somehow be related to display init?

> +       if (ret)
> +               drm_err(&i915->drm, "Failed to write()\n");

There is an error message in the upper level function, so one of these becomes redundant.

After this has been moved to intel_gt init, the hardware wakeref is definitely held

> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
> @@ -0,0 +1,20 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_SM_H__
> +#define __INTEL_PXP_SM_H__
> +
> +#include "i915_drv.h"
> +#include "i915_reg.h"
> +
> +/* KCR register definitions */
> +#define KCR_INIT            _MMIO(0x320f0)
> +#define KCR_INIT_MASK_SHIFT (16)
> +/* Setting KCR Init bit is required after system boot */ #define 
> +KCR_INIT_ALLOW_DISPLAY_ME_WRITES (BIT(14) | (BIT(14) << 
> +KCR_INIT_MASK_SHIFT))

If this is only used from single place, it should go to the .c file that uses it.

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
