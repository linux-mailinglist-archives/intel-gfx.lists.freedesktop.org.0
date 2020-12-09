Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 678DB2D3A2B
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 06:11:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B617C6E0ED;
	Wed,  9 Dec 2020 05:11:42 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D31C6E0ED
 for <Intel-gfx@lists.freedesktop.org>; Wed,  9 Dec 2020 05:11:40 +0000 (UTC)
IronPort-SDR: 04M6DMNfOoF+Lm7S/m3tbz6oUZ9/Kkc8IS8tjxIYTMg0/qeFZ3ji47wGJOcw405nc4u4pwfvse
 WKozmclj1HXg==
X-IronPort-AV: E=McAfee;i="6000,8403,9829"; a="170510410"
X-IronPort-AV: E=Sophos;i="5.78,404,1599548400"; d="scan'208";a="170510410"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2020 21:11:40 -0800
IronPort-SDR: vkFx0Q/QwMVVdJ2Yb9nssx8wDCR3FAEdCfJbz6fuFTsxU3zuY3qCvSr7wWIWRVFDNseeg9eVB/
 5nJP3OV76T3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,404,1599548400"; d="scan'208";a="375411332"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga007.jf.intel.com with ESMTP; 08 Dec 2020 21:11:39 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Dec 2020 21:11:39 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 8 Dec 2020 21:11:39 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 8 Dec 2020 21:11:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OhzDzlvsvahUR8HnUKTYJSAScI7VTyJLlwUEAsQgO/9COpebxPr8ePf5m+EMUKwiKFsU54fr2K0cJQGhCOP/XHLFarx0ZQBYB76i0GzH+oVsU0G97FcrMlj8LsPU3lzYrav8E3Gn46il3fj388YpjUnjfZ609zGMjtNsMdZpr80o1u1qp3xVqIl23iVFaLYUL28bBYW8A7GxVNnM9XXwq0Vb8C2iIgiEGIRHxELM1Mgu0zgabtu+S9vDeuM6ATDDcUIuHEQbzCzlxyDZbyyhA2ndgceJHr08mUgBGHn+ptPC547kVeYJpdbRUHG4uZ9hrd7QivkydvWTv2bU6tsbuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fOh+d/qaP5YsN+iriF7AJYydfRCVquiH8PlsZJ6iepA=;
 b=QOx8t8SrgaKM/thwZj+Ah0soALJ+n9rianAakouUF2JmpgajimAsPVB0uYnKQfDvfd49Hb//QkcCpRcfVqJw+/lSfVmnAxUz0ItaaRFpBpHsFUMWRruXvP4LB5xdckLCqjufT9GyN67lKpgsqwOBtxvJ1HhgG6F4uNK524fWolNEi5Qdny0uArniPxEcz5sv9s1sB0MzAqyjNMc3W3gCY70YWxnPZfTdrUEpb6mvXcA35Zii0HsoO0dY8UTDOKO3oSZRIxyxBH+7yuvLIrNU9x9tbYlmBkPU4YQmBcR2wLjv86LCFIgz/cPh2uo1mjQmx9/B6sceY4eviPkdJYfFhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fOh+d/qaP5YsN+iriF7AJYydfRCVquiH8PlsZJ6iepA=;
 b=axlJ+RTphgvP0y96Ji6y0qrg1ro4R0rFhlz8o/fM4eNbxF57aN7OG8KH0weNttEnd4XCFkGoe2okG+XSWq4OVXpT7u6dDHgluATvvrAzLxfX2oHJGPo0T3BZD2RflC6CGdLFvAsRUq5/fQsUUPj2a9h/elo2PP2gmUUvhuzuy/I=
Received: from DM6PR11MB4531.namprd11.prod.outlook.com (2603:10b6:5:2a5::19)
 by DM5PR1101MB2331.namprd11.prod.outlook.com (2603:10b6:3:a2::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.17; Wed, 9 Dec
 2020 05:11:31 +0000
Received: from DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071]) by DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071%8]) with mapi id 15.20.3632.018; Wed, 9 Dec 2020
 05:11:31 +0000
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC-v1 08/16] drm/i915/pxp: Create the arbitrary
 session after boot
Thread-Index: AQHWzJCqXmrxaYag5EeSFp7ooMhUwKnuOibg
Date: Wed, 9 Dec 2020 05:11:31 +0000
Message-ID: <DM6PR11MB4531EB209875FA8B9DB7CB15D9CC0@DM6PR11MB4531.namprd11.prod.outlook.com>
References: <20201207002134.13731-1-sean.z.huang@intel.com>
 <20201207002134.13731-9-sean.z.huang@intel.com>
 <160734245394.9322.137699994093919413@jlahtine-mobl.ger.corp.intel.com>
In-Reply-To: <160734245394.9322.137699994093919413@jlahtine-mobl.ger.corp.intel.com>
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
x-ms-office365-filtering-correlation-id: 971dd9c5-b6f6-4773-97a1-08d89c00e458
x-ms-traffictypediagnostic: DM5PR1101MB2331:
x-microsoft-antispam-prvs: <DM5PR1101MB23313E6FD999D370E67DFA74D9CC0@DM5PR1101MB2331.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1051;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IRsb3aPE7933Jgt9FAmj2wPcEsoBcSNzbLV4Nl4XWvFHs98rdaak1twUnqoeyCxYo9EnAloSXatFh459KQGqxSZOmSWZxvP0avtxT6AL6IVWAwXa/NTy1YygNX3ehaYwck4AYOhYLSylyDAyC37nwth3WdHMg+MXmsM1SJLTfVUdOwwwdE0ju+6khvOUeHdgY8Dpu7waCQL+FXGexTfwD0cSzXPD4884jzBFBDIvpt2pzt0t6bApRoCg+9VfczQ6YHgqBQ+17lLmrnYbNj17Rnerd3v9oRuitkRMVwqlszXu/v5au5nBHpgfDr+q0kR09AFgFs8ZUXMYXsY4g8CZppUF0IszDSRNSs7MiGINGuo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4531.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(366004)(346002)(136003)(7696005)(64756008)(30864003)(55016002)(5660300002)(71200400001)(8676002)(508600001)(53546011)(52536014)(83380400001)(86362001)(66476007)(6506007)(8936002)(2906002)(9686003)(186003)(966005)(66446008)(66556008)(76116006)(110136005)(33656002)(26005)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?Q2tSV0tuYmZiMERKV2YwMTl5eEdaZDcvbUp2WkNuQ0RaWS8xaDZNa01PTzR2?=
 =?utf-8?B?azZRQVhDMGVQQ1JpMkxwb05hNHRLYlR6S21UdU1zWkxtUWRKbUtISG5nQy91?=
 =?utf-8?B?anU3ZXhzM296NzFaZUdHbXh4dWJQQ1dRQ2RWSFdIcVVERklDOTIvNkR5aDls?=
 =?utf-8?B?a1hlRFVVTkhRYm44SFJuUldTalhDQzJjUVNxQ3YyOHR4QVJ3Q0xPaWdLL0Er?=
 =?utf-8?B?T1p6a1NtaTk4Z29GVzRmTTdrNUIrOXlVSWhZcTlETkdtamNRRXQxTFpIQThE?=
 =?utf-8?B?eDkrZk5rMENXVHpIYVlEbFJkY2VVSkVFZVZVSVZjK1ozWUpKbDIvZ3F2Ty9r?=
 =?utf-8?B?RWhHNG9wc0J1MUlXTVNJV3RXTzJiRGF5ZFI3MUpUTmEvUUlielZqODVmTkZp?=
 =?utf-8?B?YlV5Q1lrQXR3Sy84emVVNWUzQkZYT21NbllOUjdRTXZuZ3poNlZ1aDlFNTFX?=
 =?utf-8?B?cFhZcXJtSFBQTXJNazdzbFQ4S2Evem5QZzhHemZnV1ptc1dScXgyQlF1cjdw?=
 =?utf-8?B?Wkl1cVpWUUtwN1laU1lvb0dZYXZjM3VjQnFlOTBLZEl2VnVTMHIrN3N0b3Uy?=
 =?utf-8?B?NjE5MDBEeE1KVXNoVkYwckVZU05pOXNWalVxaXd4cDBBV0ExT01nYkFSVEs3?=
 =?utf-8?B?WDFNQjVrYTYwQWI3dmt6a2tCNjNIZ1BLaCtGbTNUUGcxdTd4MVN3dm1nSngy?=
 =?utf-8?B?Q0dFVXNRa254VmdpVjNtVWdBRTBaam1ueHhyNEU0eUFlNm94OUpqWG83Q1Fm?=
 =?utf-8?B?eTI2ZHU5V3BtTi9jNDg0dHBNWE9EUDdabUd5TE03WGhPZXkvRDEyTGI4eE9F?=
 =?utf-8?B?RlZ0bkRTdGNrbVZTVHBNaHBjWXI1SE0yanFQVmlGc2s1djVnRVUwUnFCT2gz?=
 =?utf-8?B?RnlxTVY0ZGVpUGFPYU1nS3p0dTl4bGtWU0RqdFljN3V1K3JiY0JpYmVjVmpJ?=
 =?utf-8?B?cTBDSFpCTE1VbUlqRTlaRCtYU0RGYXlsY2g2bk1SYnRIbEdjQjJ0Ukdudisw?=
 =?utf-8?B?RzdmZHBTREFmWDNwV1JlNnV2bVYzVThBVU9NK2pXcnJ5dVBTbndaZnBsT3Jo?=
 =?utf-8?B?R1BaR2JDYkxPV3FEbEE4eWVVV3FVMzZBUk9mMG1QaXBzTnhtREs0SG01enlS?=
 =?utf-8?B?aXROSm5kaVVBaWRZajFRRXJDVmJVdVVSVmErSldiUWdxUytJMUJrNUZ5MXo5?=
 =?utf-8?B?OFZ0TGlISG5iOXlCWHlzQjdlSlRyb0x6Vld3UmgwMnJxYVNiaEl1SzUxVkNV?=
 =?utf-8?B?WFNKYzZQTExDcGM1ZWxkNEVXNUg1dlU1SkxoM2JQaXhBOWR5WmNwL3dyN0lH?=
 =?utf-8?Q?HkdjipP6Td0UA=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4531.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 971dd9c5-b6f6-4773-97a1-08d89c00e458
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2020 05:11:31.6664 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ENt44p8ueQh58rh6jJ08uCgoMFcuaYjGua7L3NsJ58x67BWSV+F9tp3C25Mh3xUdxGrFxXXq7CD2XKKm0J+Ocw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2331
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC-v1 08/16] drm/i915/pxp: Create the arbitrary
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

I have removed the dead code that specific for multi-session, and will upload the new version soon.

-----Original Message-----
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com> 
Sent: Monday, December 7, 2020 4:01 AM
To: Huang, Sean Z <sean.z.huang@intel.com>; Intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] [RFC-v1 08/16] drm/i915/pxp: Create the arbitrary session after boot

Quoting Huang, Sean Z (2020-12-07 02:21:26)
> Create the arbitrary session, with the fixed session id 0xf, after 
> system boot, for the case that application allocates the protected 
> buffer without establishing any protection session. Because the 
> hardware requires at least one alive session for protected buffer 
> creation.  This arbitrary session needs to be re-created after 
> teardown or power event because hardware encryption key won't be valid 
> after such cases.
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>

Creating the arbitary (default) session only utilizes a minimal amount of the session management related code introduced by this and previous patches.

All of that dead code needs to be eliminated first, then we need to look at what level of complexity can be eliminated from the patches.

If you can address the review comments from the earlier patch and re-order the series according to the given guidance, that'll make the review much more efficient going forward when the code is only added when it used

Regards, Joonas

> ---
>  drivers/gpu/drm/i915/pxp/intel_pxp.c     |  47 ++++++-
>  drivers/gpu/drm/i915/pxp/intel_pxp.h     |   7 +
>  drivers/gpu/drm/i915/pxp/intel_pxp_sm.c  | 165 +++++++++++++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_sm.h  |   8 ++
>  drivers/gpu/drm/i915/pxp/intel_pxp_tee.c |  34 +++++  
> drivers/gpu/drm/i915/pxp/intel_pxp_tee.h |  11 ++
>  6 files changed, 271 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c 
> b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index 332d9baff29f..10f4b1de07c4 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -9,6 +9,43 @@
>  #include "intel_pxp_sm.h"
>  #include "intel_pxp_tee.h"
>  
> +int intel_pxp_create_arb_session(struct drm_i915_private *i915) {
> +       struct pxp_tag pxptag;
> +       int ret;
> +
> +       lockdep_assert_held(&i915->pxp.ctx->ctx_mutex);
> +
> +       if (i915->pxp.ctx->flag_display_hm_surface_keys) {
> +               drm_err(&i915->drm, "%s: arb session is alive so skipping the creation\n",
> +                       __func__);
> +               return 0;
> +       }
> +
> +       ret = intel_pxp_sm_reserve_arb_session(i915, &pxptag.value);
> +       if (ret) {
> +               drm_err(&i915->drm, "Failed to reserve session\n");
> +               goto end;
> +       }
> +
> +       ret = intel_pxp_tee_cmd_create_arb_session(i915);
> +       if (ret) {
> +               drm_err(&i915->drm, "Failed to send tee cmd for arb session creation\n");
> +               goto end;
> +       }
> +
> +       ret = pxp_sm_mark_protected_session_in_play(i915, ARB_SESSION_TYPE, pxptag.session_id);
> +       if (ret) {
> +               drm_err(&i915->drm, "Failed to mark session status in play\n");
> +               goto end;
> +       }
> +
> +       i915->pxp.ctx->flag_display_hm_surface_keys = true;
> +
> +end:
> +       return ret;
> +}
> +
>  static void intel_pxp_write_irq_mask_reg(struct drm_i915_private 
> *i915, u32 mask)  {
>         /* crypto mask is in bit31-16 (Engine1 Interrupt Mask) */ @@ 
> -47,9 +84,17 @@ static int 
> intel_pxp_global_terminate_complete_callback(struct drm_i915_private
>  
>         mutex_lock(&i915->pxp.ctx->ctx_mutex);
>  
> -       if (i915->pxp.ctx->global_state_attacked)
> +       if (i915->pxp.ctx->global_state_attacked) {
>                 i915->pxp.ctx->global_state_attacked = false;
>  
> +               /* Re-create the arb session after teardown handle complete */
> +               ret = intel_pxp_create_arb_session(i915);
> +               if (ret) {
> +                       drm_err(&i915->drm, "Failed to create arb session\n");
> +                       goto end;
> +               }
> +       }
> +end:
>         mutex_unlock(&i915->pxp.ctx->ctx_mutex);
>  
>         return ret;
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h 
> b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> index 308d8d312a6d..e5f6e2b1bdfd 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -41,6 +41,8 @@ struct intel_gt;
>  struct drm_i915_private;
>  
>  #ifdef CONFIG_DRM_I915_PXP
> +int intel_pxp_create_arb_session(struct drm_i915_private *i915);
> +
>  void intel_pxp_irq_handler(struct intel_gt *gt, u16 iir);  int 
> i915_pxp_teardown_required_callback(struct drm_i915_private *i915);  
> int i915_pxp_global_terminate_complete_callback(struct 
> drm_i915_private *i915); @@ -48,6 +50,11 @@ int 
> i915_pxp_global_terminate_complete_callback(struct drm_i915_private 
> *i915);  int intel_pxp_init(struct drm_i915_private *i915);  void 
> intel_pxp_uninit(struct drm_i915_private *i915);  #else
> +static inline int intel_pxp_create_arb_session(struct 
> +drm_i915_private *i915) {
> +       return 0;
> +};
> +
>  static inline void intel_pxp_irq_handler(struct intel_gt *gt, u16 
> iir)  {  } diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c 
> b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
> index 38c8b6d08b61..056f65fbaf4e 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
> @@ -41,6 +41,18 @@ static int pxp_reg_write(struct drm_i915_private *i915, u32 offset, u32 regval)
>         return 0;
>  }
>  
> +static int pxp_get_session_index(struct drm_i915_private *i915, u32 pxp_tag,
> +                                int *session_index_out, int 
> +*session_type_out) {
> +       if (!session_index_out || !session_type_out)
> +               return -EINVAL;
> +
> +       *session_type_out = (pxp_tag & SESSION_TYPE_MASK) ? SESSION_TYPE_TYPE1 : SESSION_TYPE_TYPE0;
> +       *session_index_out = pxp_tag & SESSION_ID_MASK;
> +
> +       return 0;
> +}
> +
>  static u8 pxp_get_session_id(int session_index, int session_type)  {
>         u8 session_id = session_index & SESSION_ID_MASK; @@ -266,6 
> +278,159 @@ static int sync_hw_sw_state(struct drm_i915_private *i915, int session_index, in
>         return ret;
>  }
>  
> +/**
> + * create_new_session_entry - Create a new session entry with provided info.
> + * @i915: i915 device handle.
> + * @drmfile: pointer to drm_file
> + * @context_id: Numeric identifier of the context created by the caller.
> + * @session_type: Type of the session requested. One of enum pxp_session_types.
> + * @protection_mode: Type of protection requested for the session.
> + *                   One of the enum pxp_protection_modes.
> + * @session_index: Numeric session identifier.
> + *
> + * Return: status. 0 means creation is successful.
> + */
> +static int create_new_session_entry(struct drm_i915_private *i915, struct drm_file *drmfile,
> +                                   int context_id, int session_type, int protection_mode,
> +                                   int session_index) {
> +       struct pxp_protected_session *new_session = NULL;
> +       int pid = 0;
> +
> +       if (drmfile)
> +               pid = pid_nr(drmfile->pid);
> +
> +       new_session = kzalloc(sizeof(*new_session), GFP_KERNEL);
> +       if (!new_session)
> +               return -ENOMEM;
> +
> +       new_session->context_id = context_id;
> +       new_session->session_type = session_type;
> +       new_session->protection_mode = protection_mode;
> +       new_session->session_index = session_index;
> +       new_session->session_is_in_play = false;
> +       new_session->drmfile = drmfile;
> +       new_session->pid = pid;
> +
> +       switch (session_type) {
> +       case SESSION_TYPE_TYPE0:
> +               /* check to make sure the session id is within allowed range */
> +               if (session_index < 0 || session_index >= MAX_TYPE0_SESSIONS) {
> +                       /* session id out of range.. free the new entry and return error */
> +                       kfree(new_session);
> +                       drm_err(&i915->drm, "Failed to %s, bad params\n", __func__);
> +                       return -EINVAL;
> +               }
> +
> +               list_add(&new_session->session_list, &i915->pxp.ctx->active_pxp_type0_sessions);
> +               break;
> +
> +       case SESSION_TYPE_TYPE1:
> +               /* check to make sure the session id is within allowed range */
> +               if (session_index < 0 || session_index >= MAX_TYPE1_SESSIONS) {
> +                       /* session id out of range.. free the new entry and return error */
> +                       kfree(new_session);
> +                       drm_err(&i915->drm, "Failed to %s, bad params\n", __func__);
> +                       return -EINVAL;
> +               }
> +
> +               list_add(&new_session->session_list, &i915->pxp.ctx->active_pxp_type1_sessions);
> +               break;
> +
> +       default:
> +               /* session type is invalid... free new entry and return error. */
> +               kfree(new_session);
> +               drm_err(&i915->drm, "Failed to %s, bad params\n", __func__);
> +               return -EINVAL;
> +       }
> +
> +       return 0;
> +}
> +
> +int intel_pxp_sm_reserve_arb_session(struct drm_i915_private *i915, 
> +u32 *pxp_tag) {
> +       int ret;
> +
> +       lockdep_assert_held(&i915->pxp.ctx->ctx_mutex);
> +
> +       if (!pxp_tag || !i915)
> +               return -EINVAL;
> +
> +       ret = sync_hw_sw_state(i915, ARB_SESSION_INDEX, ARB_SESSION_TYPE);
> +       if (unlikely(ret))
> +               goto end;
> +
> +       ret = create_new_session_entry(i915, NULL, 0, ARB_SESSION_TYPE,
> +                                      ARB_PROTECTION_MODE, ARB_SESSION_INDEX);
> +       if (unlikely(ret))
> +               goto end;
> +
> +       ret = pxp_set_pxp_tag(i915, ARB_SESSION_TYPE, 
> + ARB_SESSION_INDEX, ARB_PROTECTION_MODE);
> +
> +end:
> +       if (ret == 0)
> +               *pxp_tag = intel_pxp_get_pxp_tag(i915, 
> +ARB_SESSION_INDEX, ARB_SESSION_TYPE, NULL);
> +
> +       return ret;
> +}
> +
> +/**
> + * pxp_sm_mark_protected_session_in_play - To put an reserved 
> +protected session to "in_play" state
> + * @i915: i915 device handle.
> + * @session_type: Type of the session to be updated. One of enum pxp_session_types.
> + * @session_id: Session id identifier of the protected session.
> + *
> + * Return: status. 0 means update is successful.
> + */
> +int pxp_sm_mark_protected_session_in_play(struct drm_i915_private *i915, int session_type,
> +                                         u32 session_id) {
> +       int ret;
> +       int session_index;
> +       int session_type_in_id;
> +       struct pxp_protected_session *current_session;
> +
> +       ret = pxp_get_session_index(i915, session_id, &session_index, &session_type_in_id);
> +       if (ret) {
> +               drm_err(&i915->drm, "Failed to pxp_get_session_index\n");
> +               return ret;
> +       }
> +
> +       if (session_type != session_type_in_id) {
> +               drm_err(&i915->drm, "Failed to session_type and session_type_in_id don't match\n");
> +               return -EINVAL;
> +       }
> +
> +       lockdep_assert_held(&i915->pxp.ctx->ctx_mutex);
> +
> +       switch (session_type) {
> +       case SESSION_TYPE_TYPE0:
> +               list_for_each_entry(current_session, &i915->pxp.ctx->active_pxp_type0_sessions,
> +                                   session_list) {
> +                       if (current_session->session_index == session_index) {
> +                               current_session->session_is_in_play = true;
> +                               return 0;
> +                       }
> +               }
> +               break;
> +       case SESSION_TYPE_TYPE1:
> +               list_for_each_entry(current_session, &i915->pxp.ctx->active_pxp_type1_sessions,
> +                                   session_list) {
> +                       if (current_session->session_index == session_index) {
> +                               current_session->session_is_in_play = true;
> +                               return 0;
> +                       }
> +               }
> +               break;
> +       default:
> +               /* invalid session type */
> +               return -EINVAL;
> +       }
> +
> +       drm_err(&i915->drm, "Failed to %s couldn't find active session\n", __func__);
> +       return -EINVAL;
> +}
> +
>  int pxp_sm_set_kcr_init_reg(struct drm_i915_private *i915)  {
>         int ret;
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h 
> b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
> index b5012948f971..6eb5efd083a9 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
> @@ -23,6 +23,11 @@
>  #define SESSION_TYPE_MASK BIT(7)
>  #define SESSION_ID_MASK (BIT(7) - 1)
>  
> +/* Arbitrary session */
> +#define ARB_SESSION_INDEX 0xf
> +#define ARB_SESSION_TYPE SESSION_TYPE_TYPE0 #define 
> +ARB_PROTECTION_MODE PROTECTION_MODE_HM
> +
>  enum pxp_session_types {
>         SESSION_TYPE_TYPE0 = 0,
>         SESSION_TYPE_TYPE1 = 1,
> @@ -84,6 +89,9 @@ struct pxp_protected_session {
>         bool session_is_in_play;
>  };
>  
> +int intel_pxp_sm_reserve_arb_session(struct drm_i915_private *i915, 
> +u32 *pxp_tag); int pxp_sm_mark_protected_session_in_play(struct drm_i915_private *i915, int session_type,
> +                                         u32 session_id);
>  int pxp_sm_set_kcr_init_reg(struct drm_i915_private *i915);
>  
>  #endif /* __INTEL_PXP_SM_H__ */
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c 
> b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> index fa617546bdd4..b2dff433073c 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> @@ -67,6 +67,7 @@ static int intel_pxp_tee_io_message(struct 
> drm_i915_private *i915,  static int i915_pxp_tee_component_bind(struct device *i915_kdev,
>                                        struct device *tee_kdev, void 
> *data)  {
> +       int ret;
>         struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
>  
>         if (!i915 || !tee_kdev || !data) @@ -77,6 +78,16 @@ static int 
> i915_pxp_tee_component_bind(struct device *i915_kdev,
>         i915->pxp_tee_master->tee_dev = tee_kdev;
>         mutex_unlock(&i915->pxp_tee_comp_mutex);
>  
> +       mutex_lock(&i915->pxp.ctx->ctx_mutex);
> +       /* Create arb session only if tee is ready, during system boot or sleep/resume */
> +       ret = intel_pxp_create_arb_session(i915);
> +       mutex_unlock(&i915->pxp.ctx->ctx_mutex);
> +
> +       if (ret) {
> +               drm_err(&i915->drm, "Failed to create arb session ret=[%d]\n", ret);
> +               return ret;
> +       }
> +
>         return 0;
>  }
>  
> @@ -125,3 +136,26 @@ void intel_pxp_tee_component_fini(struct 
> drm_i915_private *i915)
>  
>         component_del(i915->drm.dev, &i915_pxp_tee_component_ops);  }
> +
> +int intel_pxp_tee_cmd_create_arb_session(struct drm_i915_private 
> +*i915) {
> +       int ret;
> +       u32 msg_out_size_received = 0;
> +       u32 msg_in[PXP_TEE_ARB_CMD_DW_LEN] = PXP_TEE_ARB_CMD_BIN;
> +       u32 msg_out[PXP_TEE_ARB_CMD_DW_LEN] = {0};
> +
> +       mutex_lock(&i915->pxp_tee_comp_mutex);
> +
> +       ret = intel_pxp_tee_io_message(i915,
> +                                      &msg_in,
> +                                      sizeof(msg_in),
> +                                      &msg_out, &msg_out_size_received,
> +                                      sizeof(msg_out));
> +
> +       mutex_unlock(&i915->pxp_tee_comp_mutex);
> +
> +       if (ret)
> +               drm_err(&i915->drm, "Failed to send/receive tee 
> + message\n");
> +
> +       return ret;
> +}
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h 
> b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
> index 0d0fbd0ed018..6cc9517701ea 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
> @@ -11,4 +11,15 @@
>  void intel_pxp_tee_component_init(struct drm_i915_private *i915);  
> void intel_pxp_tee_component_fini(struct drm_i915_private *i915);
>  
> +int pxp_tee_ioctl_io_message(struct drm_i915_private *i915,
> +                            void __user *msg_in_user_ptr, u32 msg_in_size,
> +                            void __user *msg_out_user_ptr, u32 *msg_out_size_ptr,
> +                            u32 msg_out_buf_size);
> +
> +int intel_pxp_tee_cmd_create_arb_session(struct drm_i915_private 
> +*i915);
> +
> +/* TEE command to create the arbitrary session */ #define 
> +PXP_TEE_ARB_CMD_BIN {0x00040000, 0x0000001e, 0x00000000, 0x00000008, 
> +0x00000002, 0x0000000f} #define PXP_TEE_ARB_CMD_DW_LEN (6)
> +
>  #endif /* __INTEL_PXP_TEE_H__ */
> --
> 2.17.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
