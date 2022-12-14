Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05AAE64C388
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Dec 2022 06:36:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C12C10E218;
	Wed, 14 Dec 2022 05:36:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D218310E218
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 05:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670996165; x=1702532165;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=eiNmzV68X2nld/Phz9l3Mzx6y+DuxCacPt0qLdV19Eg=;
 b=NYZO3XN00n+8lo78W/IpBpvnqKQKcqvAwT8P6Vwc8GCnVHtCqxbMJvLp
 h1pKcdX+tu37PSPDOiOtYHEVscAmFQns5d8qF6v57OAjsY+yJQvFHNqkt
 j3ioRyeiOpTTBDXZRETBOm7DVpnrALuhwnvLenrh423f47tIW9AKLjv/8
 lbyhJeTRvb3C6CIy8PRX0D1sGJg96MOLhwjLv7US5yHsnM9QdzxzyEcU7
 GJZMc4jQb8OODKwemPn30dsZ5qjb5zKsIcC1NuTTKRC7knwbdhTXfOpCE
 qY0hPDpO9n+u4vvink8gfjbXi0ISYxL35Gp6tUKwVsNBtyUTv3jCpqBWK w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="345385496"
X-IronPort-AV: E=Sophos;i="5.96,243,1665471600"; d="scan'208";a="345385496"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 21:36:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="894159441"
X-IronPort-AV: E=Sophos;i="5.96,243,1665471600"; d="scan'208";a="894159441"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 13 Dec 2022 21:36:05 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 13 Dec 2022 21:36:04 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 13 Dec 2022 21:36:04 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 13 Dec 2022 21:36:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CCxPdYXMwLqCsynWgs+s09vsae3ZrR3qDVzdnYCW79JtLe563KnsbHzaGnwRIACy6arsMOOK7gCzt7VApX6aSdQdFMBfiBNxVSw+W+INy6Dd2rHgE7H2/C0VGIRBF/VeLRJxTXNjY8LTTLuuBr4HR88h+joS0Qj7c5NaSGlTcRdDoclAsbpExEE/hsf3IwWQBufxsvZhq9kl/NDt74p14Cl5X02iFpifVukUHiiZLptmhXqumBNmtm6D0bGjfH7OSIrowD0GIoGzqlWreq9nbhWH/UbupTn6zSeztfhlDjbAdjpORLU1/uRp507VuoJt7CkEf+fd4mTjod7zcKbSDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KaUcTsC1atGVDCdbtI3KBmHRh2ulZGA8OfekvsylYwE=;
 b=M8gMQD/HfhX155l+cOz22+2sblSr2qxEbgITsEm8WlMChEo90hQb02xRRmMX4v+1+B3oVCJ7iMUkW8wEFrNNlyuLwzL+g1F8/lVd4hW8Bfh8FAodztqPVqewYjQ7olWDKlLu99kHlqbXM5TTY956he1+Ah8C/M/C3SKtEMgHKlzvZu2Ro9PW4mxaGoht60l9Wxmal+h0DK7CMn5RrZP9d22VpYDn0pJw58b1aD9mQH/x+BJ/wVujyvqIv/3aIg/rfJ4bFcYugQd8vpKbGOc56ZaPL8cmEkr2Jm/oTH7vim/rM5yHi4Vd6ALqnkFPKGnC9r6gtbMLemYaVHfbuA/ilA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3170.namprd11.prod.outlook.com (2603:10b6:208:64::10)
 by DS0PR11MB7803.namprd11.prod.outlook.com (2603:10b6:8:f5::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Wed, 14 Dec
 2022 05:36:02 +0000
Received: from BL0PR11MB3170.namprd11.prod.outlook.com
 ([fe80::8189:b5f5:4397:3530]) by BL0PR11MB3170.namprd11.prod.outlook.com
 ([fe80::8189:b5f5:4397:3530%6]) with mapi id 15.20.5880.019; Wed, 14 Dec 2022
 05:36:02 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCHv4] drm/i915/dp: change aux_ctl reg read to polling read
Thread-Index: AQHZD2xRGQdr7M/2u0Kol21A3sPir65s3Kvw
Date: Wed, 14 Dec 2022 05:36:02 +0000
Message-ID: <BL0PR11MB317096372F02E81CC955CD77BAE09@BL0PR11MB3170.namprd11.prod.outlook.com>
References: <20221124070925.3834910-1-arun.r.murthy@intel.com>
 <20221214032955.963806-1-arun.r.murthy@intel.com>
In-Reply-To: <20221214032955.963806-1-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3170:EE_|DS0PR11MB7803:EE_
x-ms-office365-filtering-correlation-id: de51a0c8-dac5-4916-c926-08dadd951672
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QhAJC9HBdPEym/YgAu5VHUvb3Ng0l4WseeniCUMS1Tb/6tPoA6mOHHaF+7UQWW0W8vqnEV4sWsUWt1A8aI1XPmpABpfVeWesLAzuLRPz4yTqjbMse+Hy7l9qoV8orzaNHZUwqNaHmcFydRTvzhCX8ljx+R+lvzuSZUtP3mSeJMrvFW0UzoFKexYd2ofGQsFByrhzaxEpwWeSAOf/YKnrAocxILFiz8LGCqZnO/kz3tV4FT+uZJbenc4UPH0TP1eeYhm/Mu6S7UIb/d+ZWukE9WrRqA+uvnmnFV2kwH6hYdYu0zcjt4UHQGCHXtZoleViuzc5IUx5pGF7iwzGL5FVyxj4AlxqhsoocCulLC0fySBQtrTC0a/qK9J6bmUYsTQlNAiw9FFb3Rwdd5IQI6Gdyv0sGrPLHoPa6UW5+jGzbfU+ZdAqXQrrXgjJmGGbHs0vVZIwmP/ebDvBCs8b5L/n7faTyllawmsfSCS4joVz4N7RjvubFU8dLlQ6nB+TV3CWeIw3v/Xpip0BObmmMvdCpM+MTWhn7spZMEhKlLQ8k8697CdJGgMvWzX4eJVpbf6eorq+s7SQjdis08AWzGJEJOppdoQyknmSG/qsqoPas1DPetV5TkcdXO9M0Lrr6V2cbz0o+wz6NKbzYGKtpPg6+cN1FKuTUFzig2YYLLKwGTG+9X7MXQejoplo7AtQsIOe
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3170.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(396003)(376002)(39860400002)(346002)(451199015)(38070700005)(33656002)(2906002)(478600001)(55016003)(71200400001)(41300700001)(122000001)(86362001)(5660300002)(82960400001)(38100700002)(66556008)(8676002)(53546011)(6636002)(110136005)(66946007)(316002)(83380400001)(8936002)(66446008)(76116006)(66476007)(52536014)(6506007)(186003)(26005)(64756008)(7696005)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OtZ8K22AOTx6z0FxR0kAbyinCvIhCSi0+V+362BsA9LEWjC6cIowZ2oTtGFl?=
 =?us-ascii?Q?rYD479L2lEGys6TTUYHXf3Bp8TAbwWnyAyUWNOw/2peplefOXu6q5JRyld+u?=
 =?us-ascii?Q?sPLp11X8bEG2Uzxzm30D7lO32N9b5LDbE4OdL10LOFS7lgQInpIMIEc0dpAg?=
 =?us-ascii?Q?LvJnCV+uVYlsyciiuMbB7l2L//CuPUzKzSpUmdcJ9fzg4NLHAW7MtavxUJz7?=
 =?us-ascii?Q?/Ep+aU1BrUNkOR/ubXwY93WlZM6B6fbe0dhy3mJqloQJGI6S+9jSe7zyW+Jd?=
 =?us-ascii?Q?UFuIFHq67kaGkhseGIinuo9XYPnzuS0CF2uEArPNM6eciKF/9B8+RozOfxDE?=
 =?us-ascii?Q?yUbS+rjVgbPvK8YWVHIYi+Vqgyp2KANc/O+wBcNO/ArvNX5cU4mDFdCy+Lnl?=
 =?us-ascii?Q?jZaTcxVfSQ1RhAMNvrp9ceyEJtckihJk/Jw34k+0hpFgUBnIIhdC4qxPNH9Z?=
 =?us-ascii?Q?Mwloi8jVFtKLuWlSJmW+2S1HE9zoUrHX3uQUruO7lLZHY4rAQaM1DJAh1MS4?=
 =?us-ascii?Q?T6gWYBbxm8fe5SKTODK+k6epgKhRl5eeosjPNq8Sgb7UiRdzW44IyFNe61H0?=
 =?us-ascii?Q?vfC9SEnxzLPXXSSxBev+CXDIlN23XHaHegb7waPU9hISeLd1tzVFXNd9RxQc?=
 =?us-ascii?Q?j3gxDahL5Wr3DEj/vgPyM6OYli3XihhiRMwj6xRFFqFlX0Ff9vgUVHYF9IwN?=
 =?us-ascii?Q?KQt5E7Wncrw3nsG21t3+IPh78mFk+vG3TdCui3/q2kTE3A/D42nyNkn+71zF?=
 =?us-ascii?Q?4/sIDRnX1ip8xCyi1r5Bo8g8RAa5P2hhQ0WmTzY8s/IcCv4lrQAQD7oQymJe?=
 =?us-ascii?Q?BhoBznQJLkZc9As4Y83szv6TxPVNUh2vNet8cdI6/H02WqkWb3DV9F9y25CB?=
 =?us-ascii?Q?dVKq7t2quoYZ5x/WWeOgxqoqL0Xg5i8th5zonKv/KBfiH8GIns2/5glKweAv?=
 =?us-ascii?Q?z42wA11fNWOQxryQVbz2HMO1KGaLZhIS5AJjt4MX+v3EPjM+bmPmzUY6DtGw?=
 =?us-ascii?Q?kU1hDOYNQSjA8gnt/VwmMOs0dn4nru1DyQVKLmi2+fokLskJFdUIC/sHQvaw?=
 =?us-ascii?Q?vM9zfDbnF06SdE+EfLqAH/WPM5hkXoj6MbGBdZx7ikvaBeYkiuOUN86Ul366?=
 =?us-ascii?Q?pjsP0O4mWTfiodcW7pkSrU/v2PhVa/8a9vbZ29yRLGRqnpabzguhuclqHtNN?=
 =?us-ascii?Q?7ZYNo2u3g+9wZbVsukHCKDGvgXLmV0LvnZEuuvna+xuiawreCdaRMLFscZ/p?=
 =?us-ascii?Q?l3KqX6mk5diNM6nELHGkocfUvwK8kNb6MDTO+2oAgndtsEkTQF9D1p2JM/GY?=
 =?us-ascii?Q?Gvt8unZqYoAFUXN4NIJlqEiiQOTVt+s5kLXr+Bl86BM6dXWHWaGkRQzzVka6?=
 =?us-ascii?Q?p8NZXPJk6V/WAV1PPb4hxd/4c2dh5ZJsxx1kg/AC4hMGvSlPO+ezghrmBtOF?=
 =?us-ascii?Q?a1hsZ+kTPF8q5rrxK+wBKOxBbla4QDX02vfAWDc/k+Mh8CGb9oY3DUX1b/Bl?=
 =?us-ascii?Q?RibhDXg7/7pjWV2UumyajJnyHxGzSNxu30HD0JgUiM2iPBgx+Q257PSLFn8i?=
 =?us-ascii?Q?HI3C9gcOy+QvTRVx4wNGKMoCmdfTRJFprZ2vfNo9?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3170.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de51a0c8-dac5-4916-c926-08dadd951672
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2022 05:36:02.2208 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aDRzMUuDs7AToA7QmwBwiq+TtU+Kkps4mylQILRyWKNl6E+peF3ctxchdB7pXYcDbf/Xwvb6/AtLEnOBA1FKag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7803
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCHv4] drm/i915/dp: change aux_ctl reg read to
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

> -----Original Message-----
> From: Murthy, Arun R <arun.r.murthy@intel.com>
> Sent: Wednesday, December 14, 2022 9:00 AM
> To: intel-gfx@lists.freedesktop.org; ville.syrjala@linux.intel.com; Nikul=
a, Jani
> <jani.nikula@intel.com>; Deak, Imre <imre.deak@intel.com>
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: [PATCHv4] drm/i915/dp: change aux_ctl reg read to polling read
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
> v4: use intel_wait_for_regiter internal function(Jani N)
>=20
BAT is failing with using this intel_wait_for_register/intel_de_wait_for_re=
gister, this function does something more than required.

Thanks and Regards,
Arun R Murthy
---------------------
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index 91c93c93e5fc..fe5ed432a66a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -41,20 +41,20 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
>  	i915_reg_t ch_ctl =3D intel_dp->aux_ch_ctl_reg(intel_dp);
>  	const unsigned int timeout_ms =3D 10;
>  	u32 status;
> -	bool done;
>=20
> -#define C (((status =3D intel_de_read_notrace(i915, ch_ctl)) &
> DP_AUX_CH_CTL_SEND_BUSY) =3D=3D 0)
> -	done =3D wait_event_timeout(i915->display.gmbus.wait_queue, C,
> -				  msecs_to_jiffies_timeout(timeout_ms));
> +	__intel_wait_for_register(&i915->uncore, ch_ctl,
> +				  DP_AUX_CH_CTL_SEND_BUSY,
> +				  DP_AUX_CH_CTL_SEND_BUSY,
> +				  500, timeout_ms, &status);
>=20
> -	/* just trace the final value */
> -	trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
> -
> -	if (!done)
> +	status =3D intel_uncore_read_notrace(&i915->uncore, ch_ctl);
> +	if ((status & DP_AUX_CH_CTL_SEND_BUSY) !=3D 0)
>  		drm_err(&i915->drm,
>  			"%s: did not complete or timeout within %ums
> (status 0x%08x)\n",
>  			intel_dp->aux.name, timeout_ms, status); -#undef C
> +
> +	/* just trace the final value */
> +	trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
>=20
>  	return status;
>  }
> --
> 2.25.1

