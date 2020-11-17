Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 695102B6E18
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 20:09:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20A056E055;
	Tue, 17 Nov 2020 19:09:45 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 640FE6E055
 for <Intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 19:09:43 +0000 (UTC)
IronPort-SDR: hVWZ4No57+AC3VIdNtiHx6ZMkXCbI7eRTsTCXmcUtUIjIqb9VuUz80W9zhGKpk6QKu4Q+FK94o
 pu1rmLZEcLgg==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="171161309"
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="171161309"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 11:09:38 -0800
IronPort-SDR: znxtNXXzjLlBtTueiqr2nRL5W+4jQLplwY5wwrrtMSgfWNC615mwDg0+ecRCYuNVkr6FBxk3WH
 phLuFpv7Jx6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="430563063"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 17 Nov 2020 11:09:38 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 17 Nov 2020 11:09:37 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 17 Nov 2020 11:09:37 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 17 Nov 2020 11:09:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DIhl46KhltOpF5BR7vHKk9e4f16omfMPfEd8F7k32Mqd8+V3So4PMd0oi3CKRPXBE8kwf3f2PF/pQebcHMKM+jfnt2BYcKnPvJWY8v+WyjlKbYIwEg+u6FxaRoG8XXGft5RJkcS0UCsH+NWDlDJ+HBc3QfzrBv+Yl9rSM7tOOiS5v1P/sZcye5hu/+0m1bRLQSsL0nimyRvqB9nQFhqis3zt9r52k5ilwLMAK/qMwz7xQFYZOZOvIR4sRiQpkSipHuyz1GdsWN+/ccBYlSQUrLynvyvg0xlE1WtbrirawDGdRecEHgtEFTT3rGDQXWPzgem9fWKoUY8c9umOBKANTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=buVKJhYRBmcpXnlOple2i4D84s3tkYyTThvHhe3wk8o=;
 b=lizZpGxXEqukGx9dXiIbPdwT9+mqkvJd4gAf7iCVZkZB7FcY57vx/6mykZKmQd2KJB1RwxGg+3OAkP+AbsZfs4NkErzgwMFeoL8Qld3qHQQGC+AwlEjS/+sF32A3ms6e+He6mwN6pYW1AMPSKBLY6lJvpyYV1D7DrfJe3UGnKBqYzn98aAAAygljhOPftr54OgX7Zujp45u/WOEId6Xq9B+137UxxjzZIcCRnPXR7FDj8LVEreziLV8fd+A7DDC8awopiHsz133hSbAiRHUKJ7FLjMz84cR6Frot0KiU1sjMGC9aOCtmkk9uM7coOEp5lK1qASXW0ZAmfCuKIlPneQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=buVKJhYRBmcpXnlOple2i4D84s3tkYyTThvHhe3wk8o=;
 b=ML+ZRJ3OLiDgaeYhZAIeh8u4PQbfZ7pTgVX5AkhhEQQaCxMl8qN1SxOrPpAbbZpNWU8f1ktk/KNAbGPJEe5GvAwV1u7XfwkS+xZkc2vGy96EHfX0i5YVE6kK5aw3UDYVyx60zxScrCHJez/+Dj9PtFitO3H4zq98rZz9OHqXbBY=
Received: from DM6PR11MB4531.namprd11.prod.outlook.com (2603:10b6:5:2a5::19)
 by DM6PR11MB2955.namprd11.prod.outlook.com (2603:10b6:5:65::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.29; Tue, 17 Nov
 2020 19:09:33 +0000
Received: from DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071]) by DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071%5]) with mapi id 15.20.3564.029; Tue, 17 Nov 2020
 19:09:32 +0000
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 22/27] drm/i915/pxp: Expose session state for
 display protection flip
Thread-Index: AQHWvL0htTed1C/4EkWMMl1O7RB9uanMrdng
Date: Tue, 17 Nov 2020 19:09:32 +0000
Message-ID: <DM6PR11MB4531006A3DAD276D83114C3BD9E20@DM6PR11MB4531.namprd11.prod.outlook.com>
References: <20201115210815.5272-1-sean.z.huang@intel.com>
 <20201115210815.5272-22-sean.z.huang@intel.com>
 <20201117083915.GC13853@intel.com>
In-Reply-To: <20201117083915.GC13853@intel.com>
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
x-ms-office365-filtering-correlation-id: 46c34b92-3b56-4285-85ad-08d88b2c5126
x-ms-traffictypediagnostic: DM6PR11MB2955:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB29555080F177D921D7C647DFD9E20@DM6PR11MB2955.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SX86y/8rxqzM4l0jctiD8aqYiTGNaKFg219A+OjkIg0uFSANdDVjpeR15yNoYPwF8WzztC93D7gZu01ZIoIwTra0lkiZBIhu5VQexEkFI1mePvrURO2O0Qj+abvHSmFmbqNZUAfO04T8fzbpgvnjRz8MlK/elRBVpXMtQXnW6P/XTdYjs57V+5ZsJLMvx1ulMwG7RJJeWosJdCArBFrhhohZ/ykU7D86XGhyobroyBroEulzMW/77wE7IQWYv6S80L9xvCPUq+Hvl5pVhiy1dwNpobz2PpyZ/hb9lkGO4J6aguIfhjcCE7Li28ZGiUUiJCix0BxBN9GNmAj6aVOiEVVnyVGXrnpyDYXBpFQmei0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4531.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(376002)(366004)(39860400002)(136003)(346002)(33656002)(83380400001)(52536014)(5660300002)(76116006)(66556008)(66476007)(66946007)(64756008)(66446008)(8936002)(8676002)(6506007)(4326008)(9686003)(53546011)(54906003)(316002)(107886003)(7696005)(6862004)(55016002)(4001150100001)(966005)(71200400001)(2906002)(26005)(6636002)(478600001)(186003)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 3dq+2Dl6r9XRarFWepXCQbH+8r+lh2Wvv8RD7FrJ53ciADQcbT1QIBKwQDCDKq5EbMw203XZfvW+/7cHyLft9lFz7GTuE31yMal/8BnfC4G8W8VbegDtOtpU+O1t9nERpW1FpjPrr3ISs3lzpbm2kLCxOvhfMk6UU+bB9hA8WDays1ulRDYDd9+pkN1bZZiobOxnFhYPuYn7ZVlxCXEVlkOx4r1rVm+OTbkdmpq9o5Hg6YjWAMf3H+l/tN0mbBdTA+9v+LPlnhgTXo/J7IJM8f9POqK9iNPKAmAO1PRDgwl9O4n/TNDN+HMSxVW3UDR/WWdOfZSDmK8QmNF5z9OnqNjqWBVk/nFF9+nD5nD2xv/4st3l8fZlOBdaVjF8deKWO4nbOsDOSDEjZ6js9UhSGBV5P5FdYythNY1cxI8OdV1DdKVj2/yMdrNo9trXErF2woN2HamG/j0WO5/octgTg64fmUnTgrLsIlGc+Ep4hezpZX0y73uoL3UfEfd6jXzuWrMEwyk7vhfCs1edAagvlDBAkq85+/jDan8MLGjidd1po4oGCSgeSkWFJ1z8BzORlZ8LvNQ/r7x0WL5gPyvbTqnyadTNHNwUTzuxfj1K0U6/PGnWlEgulpzw0dIt2Xmphg5EdGOHqdaTnveIBu/OmA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4531.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46c34b92-3b56-4285-85ad-08d88b2c5126
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2020 19:09:32.7264 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5RLPe4SfXRDwj8b5JnSCAyTOEMxygpGcn1WD26Gx20uEQKt/WIQ/owxTOzkeIAkHW6mw6fPghMH3LXkehXxEeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2955
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 22/27] drm/i915/pxp: Expose session state
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
Cc: "Bommu, Krishnaiah" <krishnaiah.bommu@intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Anshuman,

Quoted "Currently this api used by Patch 27 of this series, uses gem object user flag (obj->user_flags) to pass as gem_object_metadata but it is unused ? why do  we need this gem_object_metadata ?"

Yes, you are correct, the argument gem_object_metadata of intel_pxp_gem_object_status() isn't required anymore.

This is because the original design is to allow display driver passing the object metadata, so PXP can check if the object is still valid base on the metadata.

But in the current design, we don't need this gem_object_metadata and we should consider to remove it. I will provide an update revision removing this argument, thanks for the feedback!

Best regards,
Sean

-----Original Message-----
From: Anshuman Gupta <anshuman.gupta@intel.com> 
Sent: Tuesday, November 17, 2020 12:39 AM
To: Huang, Sean Z <sean.z.huang@intel.com>
Cc: Intel-gfx@lists.freedesktop.org; Bommu, Krishnaiah <krishnaiah.bommu@intel.com>
Subject: Re: [Intel-gfx] [PATCH 22/27] drm/i915/pxp: Expose session state for display protection flip

On 2020-11-16 at 02:38:10 +0530, Huang, Sean Z wrote:
> Implement the intel_pxp_gem_object_status() to allow ring0 i915 
> display querying the current PXP session state. In the design,
> ring0 display should not perform protection flip on the protected 
> buffers if there is no PXP session alive.
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
> ---
>  drivers/gpu/drm/i915/pxp/intel_pxp.c | 8 ++++++++  
> drivers/gpu/drm/i915/pxp/intel_pxp.h | 2 ++
>  2 files changed, 10 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c 
> b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index 44d17ae27b94..05fe143675b1 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -334,3 +334,11 @@ void intel_pxp_irq_handler(struct intel_gt *gt, 
> u16 iir)
>  end:
>  	return;
>  }
> +
> +bool intel_pxp_gem_object_status(struct drm_i915_private *i915, u64 
> +gem_object_metadata)
Currently this api used by Patch 27 of this series, uses gem object user flag (obj->user_flags) to pass as gem_object_metadata but it is unused ? why do  we need this gem_object_metadata ?

Thanks,
Anshuman Gupta.
> +{
> +	if (i915->pxp.r0ctx && i915->pxp.r0ctx->flag_display_hm_surface_keys)
> +		return true;
> +	else
> +		return false;
> +}
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h 
> b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> index c0119ccdab08..eb0e548ce434 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -111,4 +111,6 @@ int 
> i915_pxp_global_terminate_complete_callback(struct drm_i915_private 
> *i915);  int intel_pxp_init(struct drm_i915_private *i915);  void 
> intel_pxp_uninit(struct drm_i915_private *i915);
>  
> +bool intel_pxp_gem_object_status(struct drm_i915_private *i915, u64 
> +gem_object_metadata);
> +
>  #endif
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
