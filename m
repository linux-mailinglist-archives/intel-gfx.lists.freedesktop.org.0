Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 853206509F2
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Dec 2022 11:18:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A5B710E21F;
	Mon, 19 Dec 2022 10:18:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DD5B10E21F
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Dec 2022 10:17:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671445076; x=1702981076;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=7p7tLaX1k5I1PPddlUqOq3siJUxsW/AO+QgSeysQLgM=;
 b=HJCEseAeX8uWKj1LpFVDyekEFuGICpXngtKbDXPs5imJsfYxnrHS/GEl
 XPp83maKP+54GfsZqNwvzPKETnsMKuvtOGIphjIjTIQKzqr4Y6WCJsKfb
 /QMEy1vXvlRpryDo+4GUW9vr/PjWfIyi8mmVH3lzaamqew8EHNz26+zXW
 0uA7wC2DQz1pjydDMntZI6yIhQSswYDpSzZ+UGIMBd6U4XLfGfHd21xPQ
 bkf+s/LhtNjN0pSRLmn7P+q99q9vdYy40OTrp0bAtTHrLpsYT/elwklLx
 Dn6JuEJgN6abw9fVc6/SBkZ64cL+mLKF6MUgAqx9aZ/5ZC4RJKAZWfkGD A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10565"; a="321211049"
X-IronPort-AV: E=Sophos;i="5.96,255,1665471600"; d="scan'208";a="321211049"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2022 02:17:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10565"; a="600639881"
X-IronPort-AV: E=Sophos;i="5.96,255,1665471600"; d="scan'208";a="600639881"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 19 Dec 2022 02:17:55 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 19 Dec 2022 02:17:55 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 19 Dec 2022 02:17:55 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 19 Dec 2022 02:17:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GlMg1WVrjx6hSJqAyVvnpazZs6geFvdIFw/j8aXfenp+nskRj5qtrmq/deDIaLSNUtLvTTeyYAiSiGftpc5J8Ris0rJ3MuHkzGaRrv3dzJaBHAcS0HS1X0lXb5c8K4fgo84zw/c35KakRf1UjPDqNbaEyfcKezwI1mZ8nStFZGwM+tabqUYE8YepmA+9iVyUzk+ShKl8M8CHd29AiHROrdrVDiEhhxGmY3M0JsdRgk91LIpVxCgP48M2iO/9i/sBJOAvJnFfO8lpCcqPG4kjzLm1TrnQ7oNBbsi+v6hAHEL93PjqyGntEStk89Bpkxc1RVtXobxIiSd8K5Q+VEOiWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X4yTCHAoil7IBXUEwU1WX1LLXrqrNlWSslscczJ2Og8=;
 b=FbwHL6RLMUzuUO/bRzbNCR/RjaiRlzToJNGNirpYCyRhyR/fXgoPwcj6B7YJjS4+/ueZsyNbYli3pPUppqZ2stqS8pMgiZLuvN1kkRbrcjoudaVWzemw3fN6Gzb9eKcEFhnfggW5FtPnNhTdadEQzAAa1GMFssSMf9M6MWm6Nh8jReTGW4XUw2oW894zQTqww+aD0n/FMvnfzl4scibtVwt1gspKgFsQq9O7lecgYIWhNm8dUQugiQPg4uEGXNS4j39F/W9t0KX1b/f14LMFuPCHuP8ZWEdpsgL4R27d7SaHWYz2/MrqUmLQFcsnLoGDBEsE5uKieNfJ57c2pyZe0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 PH7PR11MB5863.namprd11.prod.outlook.com (2603:10b6:510:135::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.11; Mon, 19 Dec
 2022 10:17:53 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f1cb:21b7:f511:ea11]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f1cb:21b7:f511:ea11%5]) with mapi id 15.20.5924.016; Mon, 19 Dec 2022
 10:17:52 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCHv6] drm/i915/dp: change aux_ctl reg read to polling read
Thread-Index: AQHZEHZH9p8xU8QYAEeI6c7UMkLoL651BTHw
Date: Mon, 19 Dec 2022 10:17:52 +0000
Message-ID: <DM6PR11MB3177E122AC904FB5F30EF6EDBAE59@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20221124070925.3834910-1-arun.r.murthy@intel.com>
 <20221215111338.1080698-1-arun.r.murthy@intel.com>
In-Reply-To: <20221215111338.1080698-1-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|PH7PR11MB5863:EE_
x-ms-office365-filtering-correlation-id: ac17de30-0296-42d1-9bbb-08dae1aa49dd
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Bx0TCEiCBONPbsYASvES4/evGhhaG9UX7bphoB558J80S1iqq6WcXW6pBgC/JFjvh4UPPHZJFM7kEKBGexhRHHoSmG2+uupAML7Rq1WmQaOa2FUtp6VASj+MUMwqn0cjsZPrgXeieCIOR8yJDErDThwfhDhot0I6RP2/jqjYMzXiIGeOrTizV4k8ilspcnRFWzP8TTRPGwfI6TeMhcFQNRqI9DXNgVGwjGroLrn4XFx3s2g18LbmRdKMmbyIub9BE2lTrO5UzIqBiQHmrBBy7kAOKY2YPf6zs8C5R/2+KVoPtGh0gacqd/t0F4joUcd3n56qdDWCtw/Qar9v+TsKCwRCtkjLPxgvF/+Qpm4xGm9X4RGbegC51wwPK2aAysbtX9s2Z3c86sI5wQ0SFV0FldhT0gXiCpKIFl6SwUNrMpwDgauUTxDYEHIFXuuwJT67WvLF/7VGHwtonrwCQ9OihwxAsZ6LGZsYe4mpMvYw2dSven9oX0fiKlUYcO6QIfwF4lTfSF3PTFP3tZERupxEIXHlOcMhdCJ5QfHXIOseB2n5uOKx4PNGbGK5BCtNichFJytIxXT9YuRXID2o/sRHadxHR2OrnDULDIyVwcFGDiJLwmepD8KJc5/Po6VstqJybx5lzCqu96f4mASoFJrEIzc9ZjIHcJRlUD/zqk99J3+Dve5MbK62od/orYID6qma
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(136003)(366004)(396003)(39860400002)(451199015)(41300700001)(8936002)(52536014)(66446008)(66476007)(66946007)(9686003)(55236004)(6636002)(66556008)(53546011)(76116006)(186003)(122000001)(64756008)(55016003)(26005)(8676002)(5660300002)(110136005)(316002)(86362001)(33656002)(83380400001)(38070700005)(38100700002)(2906002)(82960400001)(71200400001)(7696005)(478600001)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XUJtpkAkMKv5l46jUI0sMN6OTx0D8KkHrtqDQs8203UVNJAaLSn7UPPJKXDC?=
 =?us-ascii?Q?TBG3UhkFvryzFMONgDpd/y9uIbzRHOgRerfpPbxvbll3XWU3bD2K9NdfEy2O?=
 =?us-ascii?Q?CgXnNJz7LSJc0pY3heB7bb0nqkW5vzdfglcMDSrBKK8yGLokI0xvKzAnvjq7?=
 =?us-ascii?Q?bN2nvjoYgAS3JBgIzp+eVxbJeGDHR0pOhhhy96gPjAfW2p8dS4kBtXGyyreW?=
 =?us-ascii?Q?tTGEwmZglRPPyQvlycYhOknGstuJxjbSh729l/SR8oyqF3sagj4S+UkFkP2B?=
 =?us-ascii?Q?XdW/UBrhyJPjErcVv8w/c2DLyZW+43Is2PDnABfME6fQsgS6k7pOiwZL3IpM?=
 =?us-ascii?Q?KrHxAYGMrwaN0lFkQCYS5GLp6fkHVrXmkp6TrOa+JXfJbgjf2cNgEHRZmK3/?=
 =?us-ascii?Q?tdQlZzURoy3zR5lJS6HHzxEzlxY167B6kIkT2QenYO2wyrWaqOkdwqb2SPWK?=
 =?us-ascii?Q?ZacG752TXFv+PNn1Zqm0pjLuceniRrXGYiua7U246+WIeXt5BJjnnA3S1a7v?=
 =?us-ascii?Q?Gr+Al6u0N8xswOHxUgrOkPoLt9KNQWUB0wAu4FsFfCcttdzl5FUqVeD3k2/+?=
 =?us-ascii?Q?tDqbxFJynW01+ZhnnbHS9+P1QIM8BRx9yWRIj0X6U/hd8Zlsu8R/YZkUf810?=
 =?us-ascii?Q?/k2Xz2PV0WFtq4SiKQ9Mi7yyqtSjdNAyqIY1XSeTvZxXThp/xVFlY6RoXDKy?=
 =?us-ascii?Q?bDYU6J95KNxUwzBkULMkC+IJR725NWSflPA3e3ROTUUMPNS8x4v/V4e0t69j?=
 =?us-ascii?Q?MjQTjOLnTB86SP5t/HVJGys4s9hJpqUj20AigkgZJTXPL0xVFgk4D9qX4yD+?=
 =?us-ascii?Q?3qvjjuer5xLF6prrBZLec8wx0uRDFfIKUyuY67glt4wiqmi8qR7ICM9Or2aS?=
 =?us-ascii?Q?kqTfJ09GDB0ap/cIYH+R27PbeV5oc0wkabG6AuzscXnq7dU5e2kVmKzoTuGU?=
 =?us-ascii?Q?P0j6L6YArGbl504juUdUVgEFJI+MmeD7uoA7/ZzeW6yw8cIB0kIUYqWnMuls?=
 =?us-ascii?Q?Zdi1XN409ozOOlTlgpILKEKQql1EWBHCqxeuxWQj6/4zYGTzx417qI2W/MY+?=
 =?us-ascii?Q?7Bk3nrW5pvESoLvCW/VkwfiVjSd4hVHLnCeYZ32ohzrlhJwLdLokswU7FqRk?=
 =?us-ascii?Q?ANxJMNxNE6dn/vmP013ogTKGi1lJL2H0wCXD4jFVOBtiAaIeNOvuDq/wo4mc?=
 =?us-ascii?Q?vQL1MjwEiXZnLSQlJbKt74YBuZF8pDYKJ/rSPSLQo+VkTi+c0o9uu2JI4+zJ?=
 =?us-ascii?Q?9AtJSUfu296mOpZqA4W8sWIzYJooPhiXWC5oquG8+W88JbfDkuT/YzBEsNyM?=
 =?us-ascii?Q?XJQsp1wGPPMLshKf7s1HRUvspsc+eagNPsG11To9T9iwBcfrc9Awmj5e196I?=
 =?us-ascii?Q?EZfUMR1bYwKvrnN3LSNow/6raNYyNiAy/ERl1muQWJVvGA/zmXfNRXxlcSQr?=
 =?us-ascii?Q?Ktlovmk93p6DXZ1WGBtC2CSd2DlDBIxkBvPxp2y4Xd2+yZkjmo+wjsIJMJyl?=
 =?us-ascii?Q?Dt5FOqAtJEyolemih/GpUKZ1kr3p9gtESuhAvRZx0YZ565g9O6sttvaC8sUx?=
 =?us-ascii?Q?NzwXhbXI1k4Edg37daVU7UJMkxv+I1NU3bppb3wd?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac17de30-0296-42d1-9bbb-08dae1aa49dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2022 10:17:52.5827 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JV29erbVfYm8q9WpI/B+HtXwKQLMrdkS5ZEW1yQZEhseXL2Rqugr0dwVS94PDphDH/DrGWcXJGBSVgNojlF5DA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5863
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCHv6] drm/i915/dp: change aux_ctl reg read to
 polling read
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Any comments?

Thanks and Regards,
Arun R Murthy
--------------------

> -----Original Message-----
> From: Murthy, Arun R <arun.r.murthy@intel.com>
> Sent: Thursday, December 15, 2022 4:44 PM
> To: intel-gfx@lists.freedesktop.org; ville.syrjala@linux.intel.com; Nikul=
a, Jani
> <jani.nikula@intel.com>; Deak, Imre <imre.deak@intel.com>
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: [PATCHv6] drm/i915/dp: change aux_ctl reg read to polling read
>=20
> The busy timeout logic checks for the AUX BUSY, then waits for the timeou=
t
> period and then after timeout reads the register for BUSY or Success.
> Instead replace interrupt with polling so as to read the AUX CTL register=
 often
> before the timeout period. Looks like there might be some issue with
> interrupt-on-read. Hence changing the logic to polling read.
>=20
> v2: replace interrupt with polling read
> v3: use usleep_rang instead of msleep, updated commit msg
> v4: use intel_wait_for_regiter internal function
> v5: use __intel_de_wait_for_register with 500us slow and 10ms fast timeou=
t
> v6: check return value of __intel_de_wait_for_register
>=20
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 14 +++++---------
>  1 file changed, 5 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index 91c93c93e5fc..973dadecf712 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -41,20 +41,16 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
>  	i915_reg_t ch_ctl =3D intel_dp->aux_ch_ctl_reg(intel_dp);
>  	const unsigned int timeout_ms =3D 10;
>  	u32 status;
> -	bool done;
> -
> -#define C (((status =3D intel_de_read_notrace(i915, ch_ctl)) &
> DP_AUX_CH_CTL_SEND_BUSY) =3D=3D 0)
> -	done =3D wait_event_timeout(i915->display.gmbus.wait_queue, C,
> -				  msecs_to_jiffies_timeout(timeout_ms));
> +	int ret;
>=20
> -	/* just trace the final value */
> -	trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
> +	ret =3D __intel_de_wait_for_register(i915, ch_ctl,
> +					   DP_AUX_CH_CTL_SEND_BUSY, 0,
> +					   500, timeout_ms, &status);
>=20
> -	if (!done)
> +	if (ret =3D=3D -ETIMEDOUT)
>  		drm_err(&i915->drm,
>  			"%s: did not complete or timeout within %ums
> (status 0x%08x)\n",
>  			intel_dp->aux.name, timeout_ms, status); -#undef C
>=20
>  	return status;
>  }
> --
> 2.25.1

