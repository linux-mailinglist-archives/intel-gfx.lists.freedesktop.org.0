Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A612B5524
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 00:37:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35B286E0A6;
	Mon, 16 Nov 2020 23:37:43 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAD4A6E0A6
 for <Intel-gfx@lists.freedesktop.org>; Mon, 16 Nov 2020 23:37:41 +0000 (UTC)
IronPort-SDR: FuqlcALcvINBhrznBDEKBQiEG8BXZZq6P7QezGWhgcvuPshy7UDo6UX9lbCax4hOk7ln0y+Cqr
 R2x0bTa6o9sg==
X-IronPort-AV: E=McAfee;i="6000,8403,9807"; a="170936598"
X-IronPort-AV: E=Sophos;i="5.77,483,1596524400"; d="scan'208";a="170936598"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 15:37:37 -0800
IronPort-SDR: VLs1KDhp6iADNIbW0Cm3Aurkc0+5Q41bVxDkH5DgqMWfaj1WXEDDM6Xb88rdnOGpXcWPlJAHZ2
 LaU+rdNCLeXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,483,1596524400"; d="scan'208";a="329871724"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 16 Nov 2020 15:37:35 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 16 Nov 2020 15:37:35 -0800
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 16 Nov 2020 15:37:35 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 16 Nov 2020 15:37:29 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 16 Nov 2020 15:37:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WNmfO/9BMFcdbww3zdpiW7oUaTZqSBEcyzlnh9U4kKAp8hAG9k6TmWTGVgXpA3LViJNyz9tIKyvBOrslJkfIYe8yDqbO4WhTGnP3iqlQSh+umgpphY0wsE5zCCD+Lm2zuabUBrvztMjRG44MyKe4vEz+FPYPp2urdnps9iHfQwjA+ZBVF75YcGg43SGFIiG8EBWgwdyAhLTev2UOtQQ/b5Tiezt9GiVUdHqZdFGpq8YXX5SuIrOYMOHh+6VTMzQqihEQhkjElOeMVO/J5oQ3d+mgquranfIOEUobRtozG8P7zv6MTqmDh3faSWrkzcg+Ez+YU37AgMrn7vEKImq+Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0u0Oivp/2AkUojZEtv5ucEYx8wZ7wCo3VT+vy4f+Z/U=;
 b=bkDuOZZPdfbKOn6cV9Yd22BN0OXTQf9jEI/n7WNa4td7x7NbkwZ4+poSm5UxQBvWMw9YX+umMXbq/BiBEmNBFsHHYjpMsk5Bx0Ae/6IR/kma6u6+GreXc6910iZciUSe0IYUx2Wonl50QIwoJCjG2ImwbUzBXT0+s5nMyb/yr3hFW4+lq4H+NRNmOKlH61zcb0W36rui1271NLbIfJLzSA60Y40zM1NjAen6cYZHvGqdVd64eYScAZNftUgCsEpl/odWVgqgUWW8c6oZyol7V4Dr+nZI+eZNrkZ+nXEBZP/UcS/WKVHtgUfIfyb+bEUv87mDpcpl10VG3klSmQ2OfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0u0Oivp/2AkUojZEtv5ucEYx8wZ7wCo3VT+vy4f+Z/U=;
 b=jhASlFk4gwSs56Tvu700ewsuseszhM1bs0C7iD1/gHjCugE78kE8Hn597Jamwnck/rIJ0LaM9NfD87oA60zQkbBG36Cub+9z70uMm6HVWrNtMh52BVT3rzH4nUwMp4wTktbTfoQbe1bgpxYvkdx0s23vz+73QBjczL57AsD+a9s=
Received: from DM6PR11MB4531.namprd11.prod.outlook.com (2603:10b6:5:2a5::19)
 by DM6PR11MB3273.namprd11.prod.outlook.com (2603:10b6:5:56::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3564.28; Mon, 16 Nov
 2020 23:37:27 +0000
Received: from DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071]) by DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071%5]) with mapi id 15.20.3564.028; Mon, 16 Nov 2020
 23:37:27 +0000
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 22/27] drm/i915/pxp: Expose session state for
 display protection flip
Thread-Index: AQHWvAY6tTed1C/4EkWMMl1O7RB9uanLZWyQ
Date: Mon, 16 Nov 2020 23:37:27 +0000
Message-ID: <DM6PR11MB45315AA6CB62DDEC73874455D9E30@DM6PR11MB4531.namprd11.prod.outlook.com>
References: <20201115210815.5272-1-sean.z.huang@intel.com>
 <20201115210815.5272-22-sean.z.huang@intel.com>
 <160552378493.10586.12498711265507162036@jlahtine-mobl.ger.corp.intel.com>
In-Reply-To: <160552378493.10586.12498711265507162036@jlahtine-mobl.ger.corp.intel.com>
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
x-ms-office365-filtering-correlation-id: 34416ba5-77a7-40d0-52f0-08d88a8893d5
x-ms-traffictypediagnostic: DM6PR11MB3273:
x-microsoft-antispam-prvs: <DM6PR11MB3273B36CA761FDBC23EA9BA7D9E30@DM6PR11MB3273.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1388;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Vg/OLZt1BoAiFgzMRQ3sq6G4a42gb1gGOpSdfIc68MxKXzOQZqHHGHOZ4GxoYLb41ZVUSZelTLIm0tMUpknkszWiTls+Niw3y0h1QgYimw5BXNa2YMjpuaB3BK+0XfDvGyMnvNzyLmqdP34cG4gZa+LoBWxTmBH1WZ3UAJt2DmsZC3OTUAne75PTQ41hHQeMNE5s4oa8GOu5Jm4IdXJBbwaufE4eaTJ28lZscIHlgkfdAqCPuR1QCyyKBoyVMT4qs91T9MUpXyaoysQ1NTmwyBA36E8xTqjnS4ea9o+UFYTPiNtjHuOKk0uycLMkslymH8uZ2VeLlO8qq6tERKnnesyxYpZysNNGV7xrgEhQK9g=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4531.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(346002)(136003)(366004)(39860400002)(396003)(6506007)(53546011)(8676002)(9686003)(316002)(4001150100001)(110136005)(8936002)(966005)(55016002)(7696005)(26005)(478600001)(186003)(52536014)(83380400001)(2906002)(86362001)(66556008)(76116006)(5660300002)(66446008)(64756008)(66476007)(66946007)(71200400001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: tTM44PxBxAsMI0P+qqReuDIefdkFEp86hYNX4V9p0LkeUxevMDDceI4QGJHdRTRgvxWuaLrGEhd15zDgOvwvsQ1Vdo6EDWsX9fNuD/vnXjBnlnnZjert8yPqOBwXIAPT5csTNMs8Y5YFxnqCUEiGKFLDcdaM/2knU6oAGKWeTd2hrtneoTWSEJgzwfKgciNj5S+12DKPRGjqnQFDpgGKLm4apuDONLxqZkvKwsCTBKv1Z27+SfbBIYSrcPl8Xtbn0kvowb/sX6VfvnQkDZihOPFU120VFmvKCuuxtYH2n7SrpiadADG3SvqUEn+7JJSNfXwkO35iJWDBf7Uu+oREKZPPJakuqX0kKgxoQVZLc/XkSTnsNIbVwO3CXcR7BFyfUprQC3APhz2tFcn7hWpp6tPYg7rnZq+auzbUvKfJ5axEjALi9Me35TSSpHGgGPwRuena45A5svzjfbO5A6Voxm4KEegJ7nD+iFIPxCex7VysM0oYGAoghWQUeCh0V/gpZn2iGEN+eD+yoYkYAC8yPOV7sXuViUgizlBdYZeSLA29OK+s4YIT6hY+pLesZB8vLycifJqKjE8dxWIl/Umw1ThKEBKf19zHliU9lFSztrDc82pz2yrjVyNTLrxEjNd+kwcdYdaMNl7MP847yuvwFQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4531.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34416ba5-77a7-40d0-52f0-08d88a8893d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Nov 2020 23:37:27.1519 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oJuqk3BfJ2pcFlixflZa9II5S3nacEstYP6Igw0e8Dech1LhF9cNfTAo0lYzdZGz4qiN/gZMj0tP9501doJKBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3273
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Joonas,

Thanks for your feedback!

intel_pxp_gem_object_status() was used in the following commit "[27/27] drm/i915/pxp: Add plane decryption support", which belongs to the i915 display component instead of PXP.

So personally I prefer not to merge this code commit with "[27/27] drm/i915/pxp: Add plane decryption support", and prevent one single code commit from having multiple i915 components change (display and PXP) at the same time.

Best regards,
Sean

-----Original Message-----
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com> 
Sent: Monday, November 16, 2020 2:50 AM
To: Huang, Sean Z <sean.z.huang@intel.com>; Intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] [PATCH 22/27] drm/i915/pxp: Expose session state for display protection flip

Quoting Huang, Sean Z (2020-11-15 23:08:10)
> Implement the intel_pxp_gem_object_status() to allow ring0 i915 
> display querying the current PXP session state. In the design,
> ring0 display should not perform protection flip on the protected 
> buffers if there is no PXP session alive.

No users for this code? Dead code should not be included. If this is only to be used by following patches, it should only be included at that point.

It's better to introduce the code in the same patch that uses it, to make review easier.

Regards, Joonas

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
>         return;
>  }
> +
> +bool intel_pxp_gem_object_status(struct drm_i915_private *i915, u64 
> +gem_object_metadata) {
> +       if (i915->pxp.r0ctx && i915->pxp.r0ctx->flag_display_hm_surface_keys)
> +               return true;
> +       else
> +               return false;
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
