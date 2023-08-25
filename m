Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A1F788F49
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 21:42:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45FD910E6DB;
	Fri, 25 Aug 2023 19:42:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7211510E14C;
 Fri, 25 Aug 2023 19:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692992569; x=1724528569;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vR7olhA4BsGEVgeeaA+G+hetBDUrSAENcRLzTIodS0s=;
 b=QB4EeJB8JXTydP2ghM9d9uBQEJvN8TQcvRz7XwcXs3lgBYQowytgfMJA
 nlRtCWQl0PHzulEzdeZUvpmpIc6Xt4FpfqsJdq+5+yUeUSW95Mj0p1+fL
 iM0c89HqQkDcHOhy8xOkCfnXKVlNfgdCr+XijZ88i5PlBbSEEJ+YApZ0d
 3hfiAiQHR09GOc4wsr+sjGE1EQwKmFmbq1lf6bBh/fiXZpkeUVtlSu6p/
 g2Srf/235QWtojNOhVVBDbfZPcoAqpXRMOBX3Hlm2JkjF0IcSu1QwMmSq
 dp03yYzj6ef1wWBK5trfj7aFrdAT88OJuQIw1Y8rXrJSUPVNYw+1ylaQ7 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="364990218"
X-IronPort-AV: E=Sophos;i="6.02,201,1688454000"; d="scan'208";a="364990218"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 12:42:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="767030729"
X-IronPort-AV: E=Sophos;i="6.02,201,1688454000"; d="scan'208";a="767030729"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 25 Aug 2023 12:42:48 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 12:42:48 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 12:42:47 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 25 Aug 2023 12:42:47 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 25 Aug 2023 12:42:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k12N85mfhk/F2Zvcy6tfn4tCphoWUk8wgNsRfh48+ZZj6qsVadylFszcEm6RXLglCWPbvj1r4Ck8rrUZtBtZUPbovVbu89hffSWye3FFI5Z/qJWU16VbJJfGvIX4BTpALhPcQvCA6tNnC/TRadeHtnotWXZWbraOdML/EGJXrqrJVMRU98wMlb9C8mWasIX9cK79S1Vt424/1rCwSKDOPhF4e1p8GNstlMXsZ5uL6B6vPlxo1mD4ND2cMw4r+jrVBB0JoZPiCRfPesmZYUfxJY3XSRW4UMFVGlyzJZB3SkCc8UngiIoH6YKL1XOF57vKyUP1/IaNu2K9uXn0++cXAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4oqNa2ZFimnMQVHw9pfeXy2BfK6vdY3OT3SyZEKdhFc=;
 b=epBqy03xMsT3CxAsOJ5HipLJD4oPPEuDf5kfXjR0P5owezEaKpBgMJKdn8ovgYd/MPs4K6yD5yfCKDdjxYvwWWDfZ4vbooauEQWtXghvjqzT6SDkfVxWUAITAiuZDaB7QetVYqfUIKzgzj4ndeW0wi7gSdkCwc4X0/dzfVrxwsK9Ac5AvTJgDmeYlNkEXNz+dP3Tp3qaj/zU9bqQJcWRJ5T3UJ6Iwc3s1rVADb92BB8VQUrXqqCFHbuJAL1LKVMpCEobkg0Iy3VoAM+u2kn0FCQ4K0aOTAe3FyybqJgtaJylSapiQNfpqD7Ytup7AcFUyYqas8cY+xdWk4DaxIZaFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by IA1PR11MB7320.namprd11.prod.outlook.com (2603:10b6:208:424::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Fri, 25 Aug
 2023 19:42:40 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::ec0a:6c6e:1cd3:d622]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::ec0a:6c6e:1cd3:d622%7]) with mapi id 15.20.6699.028; Fri, 25 Aug 2023
 19:42:39 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 19/42] drm/i915/xe2lpd: Don't try to program
 PLANE_AUX_DIST
Thread-Index: AQHZ1eTJ5N4i0n6GwU+qaSfSFzql3a/7bK8w
Date: Fri, 25 Aug 2023 19:42:39 +0000
Message-ID: <SJ2PR11MB7715D3F99EF996E059E4AC36F8E3A@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-20-lucas.demarchi@intel.com>
In-Reply-To: <20230823170740.1180212-20-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|IA1PR11MB7320:EE_
x-ms-office365-filtering-correlation-id: 043ee3ef-df1f-4542-44e6-08dba5a37124
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cNZMKfogoz9eoZuq0nhJ9O1aKH0uLCEY3W5QbxFTQKssjQg7aiCUjyBYpCv7QpbQqKhmLZQZQGaT0oSviwlqozWMCAr1Et3u6Ty1r5N4DsaN04hDqyRX3nKbxsH5Cq26qGdGVBwVjW8VAjtlnn9dDz7+SNhy8qnNuRZHVYqsa0V1NSDHEGUxHkeY6hBkiag9RL9gx1P/NYcDip5Da/DgLHiCWDkH24V02ecLWuqhlaL784Hkd8bF5bUkUEuIw0HrGBxVMNUYnWmvg5vUdjNyq93obVKl7ZYpqu9ZwdIcFZg+PmieubCZlJiT+dIEhEGDMByYpvqb/SCkrrlenN53j0Vk8aUdjfdNOtU1QGtHuNH2bFMQa3DF4FuK2nltHaJHbz82ta8OZpHn4pjpQCxAOzcu4D8b+F8piQ0VSN23hsTtWD8h+0F6XN6VHitz2zrM6aoOwYbWnj7WYC5+cX7mpsCxD4G/bcUIjTs1ntJNrHeeoeZyo2zTraSx1Je+LvczjFSlz1iPG4sj6dJ3YYv3oPGEFVtJlrFHLzB7sOgNRVQSG+CXfNdRzs3KahYy+dFTCQsXTZDyOuonPs9CrDankvR8vzSJ3Yl7FY4mZl33H3F4AzEwP7uiB6Y9XATDDAOA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(366004)(39860400002)(346002)(136003)(1800799009)(186009)(451199024)(8936002)(8676002)(450100002)(52536014)(83380400001)(5660300002)(107886003)(4326008)(26005)(55016003)(33656002)(71200400001)(38100700002)(38070700005)(82960400001)(122000001)(66556008)(66446008)(66946007)(76116006)(54906003)(66476007)(64756008)(316002)(110136005)(478600001)(7696005)(41300700001)(9686003)(2906002)(6506007)(86362001)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lrfffWMGNdaGIXAYSRQab2TZHuHE1qWFuvvMRdW1IO+wpiFmqsyfklO+13KV?=
 =?us-ascii?Q?Zh6CYgcS1jLLVpCMdJgABZr/fQvKL6GYjRYzj9E0BMPVZ/WMf9eG0aeFpRfL?=
 =?us-ascii?Q?bo/XaYNP3prTKGZ9J3BYfmE5jAUXryRFooWXnoIUr8LTG8i+0sYBMc0Cf1LQ?=
 =?us-ascii?Q?Pp7JmirJApSHhBySJOD88CuOXo3Oesh17bIkSUzSsQ0JAoVOkGNQr8X4lOpz?=
 =?us-ascii?Q?7MRDc7JPFj9A953LUp9upd8Q1thxy+yifwDdzEG7AIYYSvqo+/wRnVWG5NDT?=
 =?us-ascii?Q?W+K5XT/lBzRuZjpFd/wuUk6t9GEifIYHzY6Q8bAMnjZXb9VrfL62kZokWOAd?=
 =?us-ascii?Q?KEsAsksXinUZt9ZIMATPDQo3yuJYoYrgxzR4uxsb4iJNkmlqVMhnlsylnN12?=
 =?us-ascii?Q?5w4mmG3upOnhTjAbF5Y08mLPzhhDmeqLp6DiMC6ELX8zKB22B4AbAF2BQb74?=
 =?us-ascii?Q?S8+vh3zdzeY4GTWGzAfFyDULc9Rh2Bcg0BVn+1ndwW69GO5V36FkNnyb4rGb?=
 =?us-ascii?Q?Xbwkd3B734CPXcOCVsMKauTAEFpTO/ZXmRjIl/spypeV0Ewv8enYTHM5nC9g?=
 =?us-ascii?Q?g9jehoRnPMP0JSuflW4tIX6p60EGqESfew3MrSYbN5MaejVx3r9QIX1ht/c/?=
 =?us-ascii?Q?9Ng3Clm31kooeaofv+k8Z6EDSbctQU4EZGu0EFjW/3tMBeCMQ3t97DkU3awq?=
 =?us-ascii?Q?M9qD1U7X2H1ogiw3sQlVJDy6HqLp4BMch4S/QkdqAlw394Et2VzT4dmTDghe?=
 =?us-ascii?Q?eFAWEKuK3lMNGnzBWD1glK5L5Ip58Bs/cPXgSfo7Z2oK34N6Znm8ZRwyPSiv?=
 =?us-ascii?Q?AoEhuBW6jAgLX99WHyBMba+9F7J4wgZ9ZXlB2qWH2mMUEQPovs2iCRIRawcq?=
 =?us-ascii?Q?cPWTx0wnzaTjtFlkk+kQvVPxY+8HO617nLiUlqtWD+UWom8vamXaHsk//YQ2?=
 =?us-ascii?Q?x77gdejELhAReP9Eaz8yog0K2a4bdMrx1jBXIUe3LCRyCJ6LMTwG1fk8J2G0?=
 =?us-ascii?Q?royoPFv/3osLzjaWI1nSpjcoO7W/i2hHtbvP4PnDzJa4amVcGZWSlbH5Z9B3?=
 =?us-ascii?Q?CigDPLVa7Oqi/8GwrfXJQsZoccIu4a9aDyJDINoENMAr8QmjONv4VsSzU0xl?=
 =?us-ascii?Q?UATDiHTg2HPjKrwha28W60FSALVIfwqi2AX6t7jkYUd2qWFWTccB81AS0Q7R?=
 =?us-ascii?Q?1gZylr++eruipvK5pFNYTqpJu7uUj8/4T7I1jbxz52OtoXDl0eJFdhl3fpWa?=
 =?us-ascii?Q?TR4uLuAqlEV9EMnZbZ7bB7Rvk5+k/1KYotQI5Dk9JSlXPi/mIQnMSz1cqPO9?=
 =?us-ascii?Q?i+l1Fq02Zer/fSmpbIHqvXS4nXqhV4ZBh3RP0kmbYnYQA11HOAQknuwfjKhM?=
 =?us-ascii?Q?XQtpYiS01fpvpzUgM+8smsw1Lp1lqR5wqymENBquE+nQYPrK+Hq5+6p5dw/c?=
 =?us-ascii?Q?TH1wiasiq/0W9sPE4GpTDhK70it6NXCGZXGUV40NPINQlf4nz6LLCi61kSRC?=
 =?us-ascii?Q?kSoI8FDOmDRnrATEQOJnonYRHHY5xYAMK+D1NleRTFLcs5reQBCCN+ex12/1?=
 =?us-ascii?Q?NvWuEcOFlOqFaZbugJgRHUC1IyXezwpBwovoRCZN?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 043ee3ef-df1f-4542-44e6-08dba5a37124
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Aug 2023 19:42:39.9263 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jLEvobLYouJUlJYWPTdpq1GU+X9oFsBoaK13Tz0vjAzzS4yeFbWFwCi9shUkeUl2cRrOSSFBaHTmcJM6hazoyO1uSg7IEM1SjlPmsJgKm0Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7320
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 19/42] drm/i915/xe2lpd: Don't try to program
 PLANE_AUX_DIST
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Lu=
cas De
> Marchi
> Sent: Wednesday, August 23, 2023 10:07 AM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: De Marchi, Lucas <lucas.demarchi@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>
> Subject: [Intel-gfx] [PATCH 19/42] drm/i915/xe2lpd: Don't try to program
> PLANE_AUX_DIST
>=20
> From: Matt Roper <matthew.d.roper@intel.com>
>=20
> Since Xe2LPD technically has FlatCCS, it doesn't have AuxCCS registers li=
ke
> PLANE_AUX_DIST.  However we currently have HAS_FLAT_CCS hardcoded to 0
> since compression isn't ready; we need to make sure this doesn't cause th=
e
> display code to go back to trying to write this register.
>=20
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>=09
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 3c212d8401c8..4dfd8b627147 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -1254,7 +1254,7 @@ icl_plane_update_noarm(struct intel_plane *plane,
>  	}
>=20
>  	/* FLAT CCS doesn't need to program AUX_DIST */
> -	if (!HAS_FLAT_CCS(dev_priv))
> +	if (!HAS_FLAT_CCS(dev_priv) && DISPLAY_VER(dev_priv) < 20)
>  		intel_de_write_fw(dev_priv, PLANE_AUX_DIST(pipe, plane_id),
>  				  skl_plane_aux_dist(plane_state, color_plane));
>=20
> --
> 2.40.1

