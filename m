Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC747A2257
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 17:27:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 559C710E624;
	Fri, 15 Sep 2023 15:27:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61B2C10E624
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Sep 2023 15:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694791636; x=1726327636;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tZBslZ1fAlqMKXFrwbfcUSZjy9OirO3LigrSfM9wa/k=;
 b=Q0uktaiz9ZFOsaeff7iOA/r0KcrSYRSpg9wilpTr9E2OiBIjHfdM6g88
 je1/SI57+MQujxGSx/84Ouf7CFLDOU9FKo+puUAgUylpdaBSa1Ul20EbZ
 Ht/qmO22ycwlelb3qpUUrFvxZH0rzd1nqrrvRNy5AeXS8KfVtkLbYRla/
 ooKWreyoU2hoGZriLTsQQHbwWd8Pwgw+jd+kt7zQKJxCLxliI2weVr6tQ
 gNvXhJLwD319YavNX3fkihDuFnTSz/SUiN0tYWLzfWjtuIwMUzDUUe3fj
 NFqaZfyrxPRR1iTnSQeH/Kd1uOZoFHeJMXC3OkImIXXLgLgExUSowzcwb A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="382000702"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="382000702"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 08:27:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="888269776"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="888269776"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Sep 2023 08:26:39 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 15 Sep 2023 08:27:14 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 15 Sep 2023 08:27:14 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 15 Sep 2023 08:27:14 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 15 Sep 2023 08:27:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WTJZ/ZUD9eDV+hUId6hIZFF3WUwUSmnUEz+8bu3VXxPb5p70fk8Vheg4SDHu+Umxb+1F2B+OhwbqblufmcFUG+DuObqK9te2KSJyWLh6RRqvpk+oIq2gnfh6MzyOmIHV43IAyVeYtsNdUeYT+WoHMjAeUr1UC7NOulEfuNYHYQsdy30QsUa83vJuN8XIyqgi+8mck1hdfV9cntfNQsKv2JSfmm5CheQX+f7DCyd1sq4l0HLVzW9/ptEp1UyWImNQlAgwNNl/hBx1KjVIFarBM2Kg0PxUdHV1nm1Qz6tMUmYIOlUD0HnO3sRjO7nmAfOvaJwTl6WTwVJ5iFMD5iNTdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nv4kvw1aSJhrfwuDs19vM9uiTw9p6ETbfhI8rBCbWa8=;
 b=DPnIAQ0/So/LVCxNdZap+B+AKWevyzDSObpVXnDwJDekj3Lq5jW+Yf6uflYTVCRzxrXRKjO7lpMYX6swXHo1IlCYCkcj2eckBperxiz/v6sTscSe4SQZrAeiR5bYiQCI1v5BSTuSzHvxJNxgYqJcKKMnc6UqiRFjKY0MtT7nS65aOSjuZyc9xjFuL9Vo+Kdkox1CtQhDTIAduYPmWGimZkO+ceZ3r2c9Fbe0zms9DLwGAJLynoibTV+lmF7f+2XOXGsns+Gtfj9jv0NbDl/fMPeNxfBZnMPWi1hfrcEDNG7U5KdmokHwIFI+ATa1ABWvX/EpseAVmNjUVWWaYgfaog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by SJ2PR11MB8500.namprd11.prod.outlook.com (2603:10b6:a03:574::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.20; Fri, 15 Sep
 2023 15:27:11 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::bddf:185b:23c:241]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::bddf:185b:23c:241%7]) with mapi id 15.20.6792.019; Fri, 15 Sep 2023
 15:27:11 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Nilawar, Badal" <badal.nilawar@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/gt: Update RC6 mask for mtl_drpc
Thread-Index: AQHZ59t3doFfv1FU8kuusZIrOcG84LAb+hSw
Date: Fri, 15 Sep 2023 15:27:11 +0000
Message-ID: <CY5PR11MB62118AC2CEA71CD59177457E95F6A@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20230915135628.2952527-1-badal.nilawar@intel.com>
In-Reply-To: <20230915135628.2952527-1-badal.nilawar@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|SJ2PR11MB8500:EE_
x-ms-office365-filtering-correlation-id: a70bfba8-cf9e-4743-61c0-08dbb6003b5c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vHpY+Y+xgn0JUpo5Y5tobRXt85qtRCzW7F3ahp76yjb+X6Z65LhLWsVZJzXaBmBjMOahwy2ZJ2/ni2URj735BnN9yVeW5D7ZqzQTDnsPFGyAb39Ab34mU/g/FInkrFzyyV/O7WX/y+nyRJIuo26wTTfaAtoNS0ld/crdu/g1mnAneX8kkfdy1XYkN0FcvrRd24MONSzJzWM8uyCDRNPJjU/o1bbewL9kRecnMUreIH2f78PlurOD7vai/3YdYKmCk6udIDtrB+OQTCq4aN2M2FXw4PMgb3bgCpjN8gy8zSYB/fksHbD48sA+EyXSqUTMUB4/hKPjDf9igjTW8t+0F3aMwbLCSJSVrrNco7ukKVYgM+9t3e0RFQm4fBNN2F5Blm+qO0WdHAYg+E6LveOMYZJZ6gjsuNjrjf7E1Q4yy2I0xty1T1NC3ByeE14IuzmIl6rbl9KsqwiTtzEsR2JB+fGHTMBRA8Ky/RGZdtsIQWa6qeNxCyyaXhw8zb0DKexyLT4JyRnv4pcNXWpkR0V/PB8ZHl3kU05GrR+Hl2tkA9ey0/nv5xPLGtJAKOZMvGh5CextuAimvGl7Q5sw32UYgGAoa9AyDhES7r6rQXwgwT51/SqnKGnYLDAGxCiHFIgM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(366004)(136003)(39860400002)(396003)(451199024)(186009)(1800799009)(33656002)(26005)(478600001)(122000001)(2906002)(107886003)(9686003)(6506007)(7696005)(82960400001)(53546011)(15650500001)(55016003)(52536014)(66446008)(110136005)(64756008)(66556008)(66946007)(76116006)(4326008)(66476007)(41300700001)(71200400001)(86362001)(8676002)(316002)(8936002)(38100700002)(38070700005)(83380400001)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?w+Yi5VLLfEHmHAZiDubbwOXwl43/BubvCS9FOJH2iZL70k8tAITYE8jF0APM?=
 =?us-ascii?Q?MrLpPIa7Y4NncfVxlyA3dH0s3H6roOzpbJVscoUsVN1hHVH/qojCdT1RheN1?=
 =?us-ascii?Q?3e8rIoJOYedNoj2QYEg42hkJYTzeX6j2eCro02s4ksWkqQ4ChAahCDvlQPqN?=
 =?us-ascii?Q?HVcVFE49Oo98YlKFqFnMypaCoILOpsBrvKbB9SAOTOhVEcAvrxZmmuhkVcJr?=
 =?us-ascii?Q?L7WNqvVKx1YlpT0kYv+1dARMpYIhuHle3QpjCBxHLhSiHnIhiDyBnSXykiBd?=
 =?us-ascii?Q?pcHLUbjrRyggEG3e1Ip9RarLzvDDko5zoiN4iJb3RoNsT2YLTsyLGj8JCNhg?=
 =?us-ascii?Q?G0iw+KBP3Q3KqlD3ttsBuOMUpQOeseHlUzbDj5BYWiZ1jXuk/3w4y9ChTLXl?=
 =?us-ascii?Q?YMdGiSJ0Ij11vaHNJyD/Aj27I58LKkM5o4iEnwjxkUXeaqrFW3JcT6J2V8LB?=
 =?us-ascii?Q?uMv433ewzTKfUcrCDKF3z3+ExpWTuv/6x8i6hbmXPf4vebR55/ppTaCCJRmQ?=
 =?us-ascii?Q?fAFpWZDibWIddVZjJosxoPeercUPlNFt08KclYoK9z2pTFpLMy68J32uZ+L0?=
 =?us-ascii?Q?8pz5gjhYrqm5AWI2EpTZWSkWCnX6mdOtHmXWKo1BRpbaIWS+bEvK+bI8B8NC?=
 =?us-ascii?Q?72gLrfublxMhMXoi4xwl+tmCpHVRFpwy2cSD/EjxaTbkLIa/7SF8KR+RpmZr?=
 =?us-ascii?Q?ZzyEVXMDGSptXfyQj0OxozaxH6v4j8MPoN7Z6fAA+VxRf+K9uAgw8HHG8MyE?=
 =?us-ascii?Q?tC9j8SnzKW1QDQnLMQOw7sP6C5hSJmUo/sJ5ExR7pT+f8M73e4JlHljEwyRi?=
 =?us-ascii?Q?rFAfqVIfT5EyfXr/U0Blh9fjHh6Z2/xbe6B3H4yX0jBNcNhd8LEneSrO/hjV?=
 =?us-ascii?Q?CZ1GjDuwT9+ErsjbhMjF2X8KpOGsDRXG3ZLVf/yhv3qzK4ZT00HG4RZEmAjb?=
 =?us-ascii?Q?HV5lfdNGCbdWq81mRbpCJVgho+CmDVBjtryzQATdcbqIjW6LpsM2BzVfJHQS?=
 =?us-ascii?Q?BuhAvc+M3GwZND83B91unkqH0OQ8Ttz9F5V3Eg7iACdnPqezu6wUp3SsiNuF?=
 =?us-ascii?Q?I+uyjALrDZnQYLPcPo0P8XLt6Ed/cGQNfGjRmUevwdHQpAmG/ImWdQhi+aq6?=
 =?us-ascii?Q?Ga+/LpYsIoHEdRSZJgYFUg6bPW+Ns6Q9PHf8Yz8+oBX9QXh6wtEsM9j51Hfg?=
 =?us-ascii?Q?ceuidPSoTuyBFs940APujtEIBMhjkvul9+rLizqbFUw5MNQMceKX02KL1/yR?=
 =?us-ascii?Q?MsS5Q5WtfFgPX9Gv8vWCXKzzQWWtazWjP0oGlt2arvZcBH26vu7UHGXeUKYo?=
 =?us-ascii?Q?hrtfDamrZl7mwdM4SOEYDax1xtUSRqmd239Gyb0T8R6BxucoMyLfBJ6VH/ZZ?=
 =?us-ascii?Q?XY5KyioPUVBfMUS1R+AZu8FJ5XQJiyEEy3ZS7aI9CrWY5LgkhmD5JAOvjb6A?=
 =?us-ascii?Q?cDSUYAUnZj+VPXR8EIpc6k8LzOtUMLtq3ba4j4EQ0elVOV1pjBRqtZIDHTb7?=
 =?us-ascii?Q?Kvt0gWO1bXXDnkxMWBdyW3bRigiPosmiQZsV6ZdX3yCrSynv4gGt+7eRIYO8?=
 =?us-ascii?Q?x03VLwNZ9rDGqujVH8R6rmSv+XizJj+2/0o/oM6k?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a70bfba8-cf9e-4743-61c0-08dbb6003b5c
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2023 15:27:11.5168 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 07SkHHfSKsiXacakjXTPpLehTAePCVkn5A1L3m3uZxOut/gtl9+WFuB/GXH6O+3xyY5h2d6EeDn+U380tSVKHXKX2VyEswNkVHA2i/8l+nY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8500
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Update RC6 mask for mtl_drpc
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
Cc: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Nilawar, Badal <badal.nilawar@intel.com>
> Sent: Friday, September 15, 2023 7:26 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Gupta, Anshuman <anshuman.gupta@intel.com>; Vivi, Rodrigo
> <rodrigo.vivi@intel.com>
> Subject: [PATCH] drm/i915/gt: Update RC6 mask for mtl_drpc
>=20
> It is seen that for RC6 status register is sometimes setting unused bits
> without affecting functionality. So updated the mask with used bits.=20
> As mtl_drpc is debug fs function removing MISSING_CASE from default case.
Please add some justification in commit log that like=20
"it does not make sense to panic the system, while reading unsupported C st=
ate from the register "
>=20
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 1 -
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h       | 2 +-
>  2 files changed, 1 insertion(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> index 357e2f865727..f900cc68d6d9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> @@ -290,7 +290,6 @@ static int mtl_drpc(struct seq_file *m)
>  		seq_puts(m, "RC6\n");
>  		break;
>  	default:
> -		MISSING_CASE(REG_FIELD_GET(MTL_CC_MASK,
> gt_core_status));
>  		seq_puts(m, "Unknown\n");
>  		break;
>  	}
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index a00ff51c681d..71b31d52c646 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -26,7 +26,7 @@
>  #define   MTL_CAGF_MASK				REG_GENMASK(8, 0)
>  #define   MTL_CC0				0x0
>  #define   MTL_CC6				0x3
> -#define   MTL_CC_MASK				REG_GENMASK(12,
> 9)
> +#define   MTL_CC_MASK				REG_GENMASK(10,
> 9)
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
>=20
>  /* RPM unit config (Gen8+) */
>  #define RPM_CONFIG0				_MMIO(0xd00)
> --
> 2.25.1

