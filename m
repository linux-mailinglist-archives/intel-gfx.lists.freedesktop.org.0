Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B00532F9B28
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 09:24:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACAB56E0F5;
	Mon, 18 Jan 2021 08:24:01 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45AEA6E0F5
 for <Intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 08:23:59 +0000 (UTC)
IronPort-SDR: +VfSzckdW5dyquOBU7318rlMiBgmcbb0pvKHo+LZcSwCWgdxxNGFY/uRET5bxBWnCgqPHlMRkr
 k5YScI/THZxA==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="178924388"
X-IronPort-AV: E=Sophos;i="5.79,355,1602572400"; d="scan'208";a="178924388"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 00:23:57 -0800
IronPort-SDR: lh4vEmr14FyAulu6b2mC9DhY9yeQMLAlPXrxgWLV+SyUC0H/DbIGWmK5rGeujhGTV8ybmeeUW9
 8iB3DhZZvUTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,355,1602572400"; d="scan'208";a="426062907"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 18 Jan 2021 00:23:57 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 18 Jan 2021 00:23:56 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 18 Jan 2021 00:23:56 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 18 Jan 2021 00:23:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZLTWdbmZJFX9wBw63MMh3mEjfQ1gl35dH2C6K7MZPOA014vGpHy6fVhmUrwDb78DN7ryDwJuPzfS5eSg8oKhcn631pVVdZjLM1st7y0Nxt4xbHg8sPaRcu/fl2EE19G4cMmDpquUvT9Roz/v3aP5OZeSCaRp0YtHFgWgiTy3AW4WBz9GCOadKvORtzcgoMT80XLKIAOFrFaa5W2In3DBHvWzhbVzvcUKtwPNeLJi6pGs57u3FTp46YPBUrHqva++xXi4uYr8XaBbcdvzJ+MvysrgiW7W/sn3nB5edq6Q90ngyUMQBHNVyGvY9ZuddzvLZTEbjFZ/z7tp+6B+vlJtJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=46/+bXzy+qvSMLWWjgym9+7ZQIM14o4z9qhViZ/zEFI=;
 b=lksvzkJwFOuAxSiYJKOp5OrAP4per8ETKyQPCG61v5M7RGcgoYFc4AAQ+75pj2dKulLxMadywZIwc1v8UMx+My2OiLBYZnfu18XgrY3kyzXmZ5sOrCjgHnkAFtY2CL9oyyaY/6bLfuzOjNO9aWb2JU9NYILmbd36URb890MCHu+CnukL3UcOKQ6fKegGrGdkKzbwRBxRtNpA80txU9BQ9LRpg2OWq2TIPje+qy8LgA/6YqJZxMArQLXyOBUiVIXKLxRVvygq+Up2o4lU0FMDCQA4v3DC4/604Po0nEM6rA2oDUH2EEsh+3FhbCu5025fqWcDT/cpJ7GEe9oE6fNN7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=46/+bXzy+qvSMLWWjgym9+7ZQIM14o4z9qhViZ/zEFI=;
 b=eVB8D2ds0x8if+n6JAZS0hT+nXwJaZG3/d8DJrfTYuMGJ6poUoKUDPpCLQqZzICACv3oZBax66nJQIlHo5n7PSdGEY0uVYYR0fOTh+32uucoiBPB7/lD9VTa2M9sI9LxWicGZ6oITLood6vYlOwiX9sWYA6DEZg3iY+imj6fAQ8=
Received: from DM6PR11MB4531.namprd11.prod.outlook.com (2603:10b6:5:2a5::19)
 by DM6PR11MB3579.namprd11.prod.outlook.com (2603:10b6:5:13c::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.14; Mon, 18 Jan
 2021 08:23:50 +0000
Received: from DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::50ab:1cac:2a5a:7786]) by DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::50ab:1cac:2a5a:7786%7]) with mapi id 15.20.3763.014; Mon, 18 Jan 2021
 08:23:50 +0000
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC-v19 09/13] drm/i915/pxp: Expose session state
 for display protection flip
Thread-Index: AQHW5IFvMdAL0r0cs0iTSvbM/ARAMqoc1/EAgBBFCTA=
Date: Mon, 18 Jan 2021 08:23:50 +0000
Message-ID: <DM6PR11MB4531276124537BDB4FB6717AD9A40@DM6PR11MB4531.namprd11.prod.outlook.com>
References: <20210106231223.8323-1-sean.z.huang@intel.com>
 <20210106231223.8323-10-sean.z.huang@intel.com>
 <71b0c50d79644237d308c0f91d84d461c90b725b.camel@intel.com>
In-Reply-To: <71b0c50d79644237d308c0f91d84d461c90b725b.camel@intel.com>
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
x-ms-office365-filtering-correlation-id: 3297b9b2-1f07-4d17-ae8b-08d8bb8a6261
x-ms-traffictypediagnostic: DM6PR11MB3579:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3579FA6A98DB607AEE5BB85CD9A40@DM6PR11MB3579.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: d4KdgLBQ2txkEoV/+6KuPzU1Whhicer1V64UehfABT48i3pkgvAA0g8ryHDxX12jVCSVZSOXyG13T289ffed2cN9cDwiTKGe7dj67jwASYeXisW/p/drVe8akJYREbBdS3BRBMmuh8XPN3YR2kVmwU1hrUYjuqs4AUpzS2y4dir5M2jRwelsaQUlxYyVz0j8GBRiwsGGvIGa7vJGPQGccrxR8f1/umyTdqjlt0FjzTYzpFVwhUPXiS+N0XE2MiKW/Mm0cY04KHMVLFd0dq5T9+NtS7aSjXjQH1+J88ei6cVkRWpZgpKj6xxELc91Duw9nG1buq/P4pC513l03BX8uT6nFSdLbStOaF1fNA1bM5bs5EH/L/OQMlo3r1tjww+OlncTEd6kUgjZQdETTaKzyXrx5DAvzo2WeyhOgZmomiY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4531.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(39860400002)(136003)(396003)(366004)(86362001)(71200400001)(2906002)(8936002)(8676002)(7696005)(83380400001)(316002)(76116006)(6506007)(52536014)(110136005)(66446008)(33656002)(64756008)(66556008)(5660300002)(66476007)(478600001)(66946007)(966005)(55016002)(26005)(9686003)(186003)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?OEZVS3VsRzlaZTllTFlSWE55VjFkZkpYdzRLbGdBaXRRVlU2Y0ZlYy9PeHI4?=
 =?utf-8?B?NzRocEM5SXM1a3dmQkhGemZoRDc1MGZCTWhocmdkZElVeFBzakR3dHdGVEt6?=
 =?utf-8?B?dEc1YTRrNVpEMXViMk8rRWpHdm9HOHdTMm5VeGowR1htSTRNTEt0UEVWY2N0?=
 =?utf-8?B?bTBlb2Y2azFiOGlQMnRtakd6MUVQQmw0WE1PUFNoRHJtQjN0UTV0MDV5dXBp?=
 =?utf-8?B?c3pkTEUyZlU2RU10VmhBR2NHbVc4SWxUcTlvakZuUFRFQ2tkL2lZOG9ydHM1?=
 =?utf-8?B?UzllYUlOcTZPUFd4QisxWTllaHFOMGpvMFVMRDFuRjJ2K3BkWnlJUnBnT1ky?=
 =?utf-8?B?YmVnUWVXRFU3QkNCMUl2ZmZBenk4NkNQVm02THhJT01BVkJHcmlQaDFWamRr?=
 =?utf-8?B?bDBvRnFLVFhWS29majVWRVg2TWxMdEs0VzFLekRuM0pPeWpyRFRJM2hxbmxI?=
 =?utf-8?B?K3hlQjR6RWNrbFYvdDRTVFdwWktVVmIzR2ozb0xUaDBOR0F4WjcyTUpRWDVU?=
 =?utf-8?B?NUZCTU8zWGhaNk5wamJWbU05VUphSjZPVWVvSFJtU2FIV05mOGRnbjBLV1Fn?=
 =?utf-8?B?Qm1VWGk4d2xPVVgwQU5xdHZSdU9aWjB0TEJVZFE4OHU1NHdxMG82a1ZidWlZ?=
 =?utf-8?B?elFqMWQ5NnRlTDJZVWMwdFN0QXhCYjMrb091Mi85Z0h1RTBXcGZBQTRScjBS?=
 =?utf-8?B?TmticUJjcWRWWitiZW9vWDIxSXdqOW5ISStWaTdCQ3F0WHRHc29YZjhENUVu?=
 =?utf-8?B?MGtSam5GdTl0SFd6TXpqUFp1cEoyVXNUVWQvaHRoRUs1TklhSHkyV3NoUEZM?=
 =?utf-8?B?aUZNb2I0dGo0RjM5Y25vU1g0UkJ3ME9QZEJ4aU52dkZkRnhwRWlwcGV2OHhT?=
 =?utf-8?B?ZW02V3JuTGs0dEJqalVraXdheUp5c09TU0szSnBzejB0WGZObXl4UHhBc0gw?=
 =?utf-8?B?VVBiY3M1eVJIaGRoZ2RlNkhFbElLbUlqZHE3cDF4THhGVHlJWTVyaWNKcm4r?=
 =?utf-8?B?RzRiSmpFQUthSHNVZEJTRDdTbmRZVkJFUXp2L3BZbDFibDFjRVllUW5XN2x6?=
 =?utf-8?B?NFE4UnB4Y0ZZWTNoS3RGVDFpN2NGd05pZ0RFUDNUdkkyOEZIcG9Ta1FWSnla?=
 =?utf-8?B?VjhSY3NyVmNSK3l3TlJ5TEsxeTVlQlF1cHVMdTRoRDExUWx5bU1qZGJaQ2RV?=
 =?utf-8?B?Q0lBMHJNSC9DbnhnaU8zN1ROa0Z2QVFYeldra2QwMkRudUJnL2xlUWVqdGhj?=
 =?utf-8?B?Q21IeEREV1V4b2ZETnJtTklMUzJMMm0wczUwU3h0c0V2K3RCNTFHdi9kWC83?=
 =?utf-8?Q?WRLVj8vlH+/GU=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4531.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3297b9b2-1f07-4d17-ae8b-08d8bb8a6261
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jan 2021 08:23:50.2468 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4xagEr+rwVHSIDIVJZhBy7fuMxoaaQJm/aTRUJCXL2MFG4X+RG16OJ0J1bnL75IncVEpXH7Hv77zzJBdZlKSTQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3579
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC-v19 09/13] drm/i915/pxp: Expose session state
 for display protection flip
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

Quoted from your feedback: "This protected_bit should only be set during context creation and never modified with set_context."

I have modified the code accordingly at rev21 https://patchwork.freedesktop.org/series/84620/#rev21 

Best regards,
Sean

-----Original Message-----
From: Vivi, Rodrigo <rodrigo.vivi@intel.com> 
Sent: Thursday, January 7, 2021 7:55 AM
To: Huang, Sean Z <sean.z.huang@intel.com>; Intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] [RFC-v19 09/13] drm/i915/pxp: Expose session state for display protection flip

On Wed, 2021-01-06 at 15:12 -0800, Huang, Sean Z wrote:
> Implement the intel_pxp_gem_object_status() to allow i915 display 
> querying the current PXP session state. In the design, display should 
> not perform protection flip on the protected buffers if there is no 
> PXP session alive. And Implement the funciton to set the protected 
> flag for gem context.
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
> ---
>  drivers/gpu/drm/i915/pxp/intel_pxp.c | 21 +++++++++++++++++++++  
> drivers/gpu/drm/i915/pxp/intel_pxp.h | 18 ++++++++++++++++++
>  2 files changed, 39 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index 23d4cfc1fb1f..a28a459532c2 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -158,3 +158,24 @@ void intel_pxp_irq_handler(struct intel_pxp *pxp, 
> u16 iir)
>         pxp->current_events |= events;
>         schedule_work(&pxp->irq_work);  }
> +
> +bool intel_pxp_gem_object_status(struct drm_i915_private *i915) {
> +       if (i915->gt.pxp.ctx.inited &&
> +           i915->gt.pxp.ctx.flag_display_hm_surface_keys)
> +               return true;
> +       else
> +               return false;
> +}
> +
> +int intel_pxp_gem_context_set_protected(struct drm_i915_private
> *i915,
> +                                       unsigned long *user_flags,
> +                                       u32 protected_bit) {
> +       if (!user_flags || !protected_bit ||
> +           !intel_pxp_arb_session_is_in_play(&i915->gt.pxp))
> +               return -EINVAL;
> +
> +       set_bit(protected_bit, user_flags);

This protected_bit should only be set during context creation and never modified with set_context.

> +       return 0;
> +}
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> index cdaa6ce6fdca..ff1c1c0e720c 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -29,6 +29,8 @@ enum pxp_protection_modes {
>         PROTECTION_MODE_ALL
>  };
>  
> +struct drm_i915_private;
> +
>  #ifdef CONFIG_DRM_I915_PXP
>  void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir);  int 
> i915_pxp_teardown_required_callback(struct intel_pxp *pxp); @@ -36,6 
> +38,10 @@ int i915_pxp_global_terminate_complete_callback(struct 
> intel_pxp *pxp);
>  
>  void intel_pxp_init(struct intel_pxp *pxp);  void 
> intel_pxp_fini(struct intel_pxp *pxp);
> +bool intel_pxp_gem_object_status(struct drm_i915_private *i915); int 
> +intel_pxp_gem_context_set_protected(struct drm_i915_private
> *i915,
> +                                       unsigned long *user_flag,
> +                                       u32 protected_bit);
>  #else
>  static inline void intel_pxp_irq_handler(struct intel_pxp *pxp, u16
> iir)
>  {
> @@ -58,6 +64,18 @@ static inline void intel_pxp_init(struct intel_pxp
> *pxp)
>  static inline void intel_pxp_fini(struct intel_pxp *pxp)  {  }
> +
> +static inline bool intel_pxp_gem_object_status(struct
> drm_i915_private *i915)
> +{
> +       return false;
> +}
> +
> +static inline int intel_pxp_gem_context_set_protected(struct
> drm_i915_private *i915,
> +                                                     unsigned long
> *user_flag,
> +                                                     u32
> protected_bit)
> +{
> +       return 0;
> +}
>  #endif
>  
>  #endif /* __INTEL_PXP_H__ */


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
