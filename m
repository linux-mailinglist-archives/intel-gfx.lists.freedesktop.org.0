Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7D260AB45
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 15:48:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D93410E739;
	Mon, 24 Oct 2022 13:48:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D090B10E72A
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 13:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666619279; x=1698155279;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:reply-to:content-transfer-encoding: mime-version;
 bh=rLxpYGz5zdEWYFp4q5LGxbOhsgwl+N7WMYxCkZ/2tTw=;
 b=GXvsC8TLpGPJT9KPvC0YCAS1DvpTf0r5QgvCBdpcQYPLUiCrhApAZfnP
 /VpJSybfNbnC/827M7OAuMvFrqBRNMw/GlOYv6/QKOYApDr6E8+4yK25o
 FCVF3pb5Wjh60XCzZvwVQA5FxuZH6Joh9Rzxh9ScU8/6rmRGVio1ymgNc
 MHtoEBZ7b3X7Q9I3Ouuknbf1i7qlgK/iUOjW7xFaD6r2Ob0FWyWEcrcb0
 Tf0C+vn1/aVyTuprMiU6BmKB27fZ54xy55gVDaxJqqpX/4+TMFDsORsx5
 nlGTxN0lbDer4gz11ErB7XkAOtlG0HQ4gwlnTRLQ8QIoBI6qZu5OWeN7X Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="308512129"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="308512129"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 06:47:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="631260572"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="631260572"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 24 Oct 2022 06:47:59 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 24 Oct 2022 06:47:58 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 24 Oct 2022 06:47:58 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 24 Oct 2022 06:47:58 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 24 Oct 2022 06:47:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ibGNpLVYbNow63fbKm8yIp0tchLRzLwxBDUWHoBFM0fm/Z3wdLwoije/LxJy6tJAi+X/6ptck2B1bzc1v9On8YfylOwnjATk455G63Lq44JksAmoXmRn+ylPkc870MXvq5iaDv8L2UdMhr4T9u9QpGDVtDU05qDMIXHlQr0SgGH+evK/RpZukcjFk5dk3OKTYftmRYfzyJ/JV75AdrvGUjwjOjZw9TeSP8p0VWrSWQglWlbAs8uMGkQhgR7TxdHnfJccbHvvhSiaKMaWlWpnrkSvZNF9qfCs2S2AhNEjL8kz+xWqFtxg/b+JiociYMhSBBy+siVs/W+mB0IrPjLz0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2Zx5p0Hdtqi3JXDtsVZCNsFLVWOgsAESX+g4kTXeH78=;
 b=D6rek7uXs72RXYTJFMWD3tHBiu55uW+OlkdHPHDWVxz4Q76DIIlZPpgRwqK6WlbIn643mpg6VARm9rbvcCajx1kHEoYhQZImSY8y2aWcYZamJH9dR/NkeRGL7AY6Ts3MRuVlnELoKlOev/4ZmEDEIo4zmhf4zdhMt/hizRMsKjTqYQXnctjCpD8R9qiprxXXYhycdS4PJVFKpJ5z39+HwjayvHxj/qgl+GTlo5dMXfAllJfQDWsi9lqayNcFaqvNA9J5fbkswGIAOkD6ol1vjuyvCc9ppTcbYxWSJYrIP00zwG687Xgth0bseIDWFWROybbO/udeBRUlM0s7DAcnow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB2710.namprd11.prod.outlook.com (2603:10b6:a02:c7::24)
 by DM4PR11MB5565.namprd11.prod.outlook.com (2603:10b6:5:39e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.35; Mon, 24 Oct
 2022 13:47:56 +0000
Received: from BYAPR11MB2710.namprd11.prod.outlook.com
 ([fe80::4010:eca5:d49d:11b6]) by BYAPR11MB2710.namprd11.prod.outlook.com
 ([fe80::4010:eca5:d49d:11b6%6]) with mapi id 15.20.5723.033; Mon, 24 Oct 2022
 13:47:56 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH] drm/i915/pps: improve eDP power on flow.
Thread-Index: AQHY53OVmudcJfkkaUesdm84zHZMYq4dhsgAgAAFlPA=
Date: Mon, 24 Oct 2022 13:47:56 +0000
Message-ID: <BYAPR11MB271072A339A7501A1075981AA32E9@BYAPR11MB2710.namprd11.prod.outlook.com>
References: <20221024064004.1879-1-shawn.c.lee@intel.com>
 <Y1aQNHDIujgQts/G@intel.com>
In-Reply-To: <Y1aQNHDIujgQts/G@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB2710:EE_|DM4PR11MB5565:EE_
x-ms-office365-filtering-correlation-id: 10def97b-17db-4b85-d8d6-08dab5c65b38
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dYWNoxtgkFr9P1t+P01RqCVnRNz/pmIzeGiBUw8fYFvaqjJx9QipdJFnNJwgbb538QyeMAuRd0KCyjxJpyvaD+RAk3LvY/x8qyt2Qjb+MypWouMI7sFttm4AJ1EI0SIbYM/x7uZ340aNcwhxumY5F7wTRK7Gk8+eIZ1IZm0vXoC3eprh2vFv/+24qBloI49izwBjhUP0byUOsnjhhRQrtMtaOcCvkJn7R1bDscW5nKoqL9EmTYsgKDdzzQUG3aU6xMocei1dr9ZzrsoW0TqXs1eW1KkHhgvvBLsP5Ma59tt6mEi+JHG+UPgw3tuUm0t61FUXR4wf8Pk3o64ciqYtoYzv+gp21AH8HSLjckrTyD78PgRrNHZ0Gg84b+MV3DNyeYCO7ptxsbB3408cY3GXo8Jpbh5N2BPqLmOlQ1aZ2HSUS9LEZraGVp5xN3DrSYO6BwH2SWiQ0iO4jT9zCv2S2HJD8VVJtkDxcRNxXF5UExdkNL61iY7Q/LO0Fo6Kbh3nDJs5+d6SxJ0HedP+S82cEdaBbuvdur9J6O1as0lj2JvH1D80cTqWwOVLyzRvxZur40om7pvFsHAvAX3ChFDKUKkRtzxHEaraYUOm0pL4V9lqB3+YPtglZJFXiWatxNDdqLV0bBASM/AyzQ1Mr2QTgYve1VwJRz2MBiHn4n4zhgcB6P2xSqeQ+tygK/OIKaiLqgSZGEE1vrRDWur2gnXMYl+ISomO3Zy9u628Uzr3E3pBG817CZFzxveu9+SgYcV5Gn+cKjhtwusX131/iSyBKA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2710.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(376002)(396003)(366004)(39860400002)(451199015)(54906003)(52536014)(7696005)(53546011)(316002)(6916009)(66446008)(8796002)(55016003)(8936002)(26005)(9686003)(33656002)(66574015)(2906002)(66476007)(8676002)(5660300002)(4326008)(64756008)(66946007)(186003)(86362001)(76116006)(41300700001)(55236004)(66556008)(83380400001)(122000001)(6506007)(38070700005)(478600001)(38100700002)(71200400001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?rz7ZFyh6NDChHyCQEj3mfJ56KLvh0++XeTo9X9vvaeOSwq3reRsDWyoQBp?=
 =?iso-8859-1?Q?FRKSpSXLl/65WEA6kI1G106VLRmGIxmomuG7VpMi4mU/5hrSdxHcj0Wa9F?=
 =?iso-8859-1?Q?c/aUPDglqg79G1hKModE5nHBhmcim6HSuya3jvaRhphHy06CaYt7i4yOqb?=
 =?iso-8859-1?Q?13Pg3ZvHlVnxTqCS7pUKVCNiWXIvdtaSkVIiOdO9OuMSJoMDkIVvBzk6/B?=
 =?iso-8859-1?Q?rbze/oXsjoTcFYmROeXV/fY7L1uhEA3vKXt/ri8T5py6K3onIyQh1hocsW?=
 =?iso-8859-1?Q?Z0mso4b018+50vUbnHvOU1WP64d9hX0FnG09Hore2tDzYjjCj366OGCVXb?=
 =?iso-8859-1?Q?zPmHgOIk9Xad50A7hDLh55z2OPvADgqUuXrapaKbz283jkIhnGhdNBvmkW?=
 =?iso-8859-1?Q?AhlMEcDvPNgi/rBo501Gyisi8Cf+R9qf7lVZPuMiGNBUCNWIEUtmGeP/Fh?=
 =?iso-8859-1?Q?sdhNlkpiR9LPfITBejq+XP0mdQayuU3rGnN9fu5AJUfLuJrGiLM1qBuG8L?=
 =?iso-8859-1?Q?xbSOXGd1Xg2OxE4Geb/CwRVtVC4e6LiBjKYHeYmx2eetiMnqMSBIIUkc1w?=
 =?iso-8859-1?Q?BvuXdknB2N3PXX6g7mVyrvItn4sfzFuf+EhFBm+i4d17h/wRNK8/4+vZFD?=
 =?iso-8859-1?Q?dd/6bVOb4n37Job8OUCuqf6Dfy0tgRlSKh17jJ6tx14RYt9+lRjq7V+O0M?=
 =?iso-8859-1?Q?r8ajDxRm2rGIUzB2ban4VVl5+p9VCRgff2dd13tmBusE7PUCt3gsDnOOe7?=
 =?iso-8859-1?Q?zovA9k4xwU8LsF/YHOSrYfUaCLeOME3jMFaMo2YWg/yvcSrN8o8S1enuhH?=
 =?iso-8859-1?Q?xOdI0U35qUEJ+4NlMkNhtaJ2M2tj3NCnQT7PR88l4El+CONYwToIV3aXqd?=
 =?iso-8859-1?Q?a0x9I/ZLmUv/gZzHHGBY+eCK0SlM5hFp1gVsusdRzeRQxFqmeBUDDWps2e?=
 =?iso-8859-1?Q?Je+WO43xLhHO98kv2NbtgG4TiP0C5c92PhOMlwUrJKRCzpAAY93gcrLCzx?=
 =?iso-8859-1?Q?wcTZ2GeGdcYEvUot7p3nvKgZ2XSFBK8ubsPS5O7J5z/LfyHZqb94DyOzNu?=
 =?iso-8859-1?Q?SphnltZ52rrM8e0NARv27LCbdQSQJXLP/CPjnb+YuZ4DYeDQNttJBMoTTB?=
 =?iso-8859-1?Q?lkVyRILLOp2o/J3NPgIIZ5Rec+7ieerB8KfXmGvbWhpf+U1eFCbvwaWtLm?=
 =?iso-8859-1?Q?eS1XcQGSG9XB2KrgpZce9IgBENcGRUfHE+QNOrVqmCSe6ZS65xq91nzHsS?=
 =?iso-8859-1?Q?YG6Lo58BoNc3fOlm6MNaEmsIK9a//biq4AORALDH6gKpkogtxiln3HOzM5?=
 =?iso-8859-1?Q?atQn/s233bixy5qKTpTUOF+JGevpNKhqUsEHmOliIL6gFOBGDMTcjO0Sxx?=
 =?iso-8859-1?Q?mByhc/gMlsaeOEBcqyyE1vHoqRgzrjPJMVJ0ahnCkA8rKmdY9ZIWy28xXb?=
 =?iso-8859-1?Q?M8NrsJrE2fjEME6hITPA1EuwWmvYXZbnl8dl7Dunb51/P2avyVZ+tUhB2a?=
 =?iso-8859-1?Q?ZYjLQbPQBwxENyCdlMspsXNmqsUbwEytAfFCsmUtmXgHq7mcvW/wj5dlMU?=
 =?iso-8859-1?Q?o9VuQ0YrxRwCxlLcJZuZVRVJot9AyJJwPRmCTY5Hc4tMBYmOxl+B4+xXwb?=
 =?iso-8859-1?Q?6V3YoEQoCnpUxHEE0rkaEXs7EYKcuYI7DP?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2710.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10def97b-17db-4b85-d8d6-08dab5c65b38
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2022 13:47:56.4482 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Zh88/y56AvLM35gt24wQREy9/QP1MG8Y8X2agn/wY80o2gktR4rhN5dgQ2WG6jYe4TN/ObKak/TyeciE3l3ZSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5565
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pps: improve eDP power on flow.
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
Reply-To: "20221024064004.1879-1-shawn.c.lee@intel.com"
 <20221024064004.1879-1-shawn.c.lee@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On Monday, October 24, 2022 9:17 PM, Ville Syrj=E4l=E4 <ville.syrjala@linux=
.intel.com> wrote:
>On Mon, Oct 24, 2022 at 02:40:04PM +0800, Lee Shawn C wrote:
>> Driver always apply panel power off cycle delay before eDP enable.
>> If eDP display was enabled at pre-os stage, driver would always=20
>> trigger modeset to optimize cdclk setting after boot into kernel.
>> So last_power_on and last_backlight_off value will be updated.
>>=20
>> We can check last_power_on and last_backlight_off before insert panel=20
>> power cycle delay. If these values are the same, it means eDP was off=20
>> until now and driver should bypass this delay to save some times to=20
>> speed up eDP power on sequence.
>>=20
>> Cc: Shankar Uma <uma.shankar@intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_pps.c | 13 +++++++++++--
>>  1 file changed, 11 insertions(+), 2 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c=20
>> b/drivers/gpu/drm/i915/display/intel_pps.c
>> index 21944f5bf3a8..f3485a4fbfd0 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pps.c
>> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>> @@ -509,6 +509,13 @@ static void wait_panel_power_cycle(struct intel_dp =
*intel_dp)
>>  	ktime_t panel_power_on_time;
>>  	s64 panel_power_off_duration;
>> =20
>> +	/* When last_power_on equal to last_backlight_off, it means driver did=
 not
>> +	 * turn on or off eDP panel so far.
>
>But someone else may have turned it off just before we were handed control=
, we have no idea. The pessimistic estimate is the safe one.

Thanks! It looks to me this situation should not be happpened. Right?

>
>Also I don't understand what this has to do with the story in the comit me=
ssage. In that story you say eDP was already on, so the power cycle delay i=
s not relevant at all. /me confused.
>

I will modify commit messages and send patch v2 later.

Best regards,
Shawn

>> So we can bypass power cycle delay to
>> +	 * save some times here.
>> +	 */
>> +	if (intel_dp->pps.last_power_on =3D=3D intel_dp->pps.last_backlight_of=
f)
>> +		return;
>> +
>>  	drm_dbg_kms(&i915->drm, "Wait for panel power cycle\n");
>> =20
>>  	/* take the difference of current time and panel power off time @@=20
>> -1098,9 +1105,11 @@ bool intel_pps_have_panel_power_or_vdd(struct=20
>> intel_dp *intel_dp)
>> =20
>>  static void pps_init_timestamps(struct intel_dp *intel_dp)  {
>> +	unsigned long tmp_jiffies =3D jiffies;
>> +
>>  	intel_dp->pps.panel_power_off_time =3D ktime_get_boottime();
>> -	intel_dp->pps.last_power_on =3D jiffies;
>> -	intel_dp->pps.last_backlight_off =3D jiffies;
>> +	intel_dp->pps.last_power_on =3D tmp_jiffies;
>> +	intel_dp->pps.last_backlight_off =3D tmp_jiffies;
>>  }
>> =20
>>  static void
>> --
>> 2.17.1
>
>--
>Ville Syrj=E4l=E4
>Intel
>
