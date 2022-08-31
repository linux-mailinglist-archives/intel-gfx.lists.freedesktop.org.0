Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B895A7C1E
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Aug 2022 13:21:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AB8510E31B;
	Wed, 31 Aug 2022 11:21:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89CE710E31B
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Aug 2022 11:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661944859; x=1693480859;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:reply-to:content-transfer-encoding: mime-version;
 bh=vIpJQIXgdC/Pvn6EIgpeipFc5jZVy5RgDGIPnPHM4vA=;
 b=PgG+I4mxWkxYvzV1I+x11lSlHO9tECdJtHNd1zguWPQaSi8FZqEJTC4N
 8ZPOUcuvO1orPOWQ8OomggqNV929DPmC/ArrmR+yXjFLThfTJpd589eJC
 ThTZW23isjFXU1OUTaDpD8Cn1hIl7B1gQ8z3ANeYVjhfmk0+bSGuXf+kU
 LYhRFLC8lPLJhBbahbphtV8kRxyX0VibKKIlhDj6KKMc/u6MgT5c5Ng5L
 dtwNsVXTqx7BzkI7iOr9LgRePZn9G5ls3Giwzia3pkOyOostEJ2J/58Cb
 7pIn77z0HnWE0z2PP5GduTzbFeTKrXaXqE4AY6xmo50sMjOFJRKJ7xA03 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10455"; a="295429365"
X-IronPort-AV: E=Sophos;i="5.93,277,1654585200"; d="scan'208";a="295429365"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 04:20:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,277,1654585200"; d="scan'208";a="612068442"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP; 31 Aug 2022 04:20:58 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 31 Aug 2022 04:20:58 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 31 Aug 2022 04:20:57 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 31 Aug 2022 04:20:57 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 31 Aug 2022 04:20:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ctkYErY52T8841jfNx8x25r5NIkmEe6G0EyzN6ryNpUUv4ymizyHAQyLKtD4EXd3nTt8Tp+jWIJSF4iSWe161LWIFVxqpPICYr6wlcJeYc3ju20tXolJHyyp5T92Xv6RYx0fSHzFdCBIY91twnMx2YzPN8t77FUfog6OuOfjrd7uvV3LmlUukTvANPw/hnGy98DoEP2yosNrMMliyHMDpDPlYRSvjqZZm+gnjUgLZymGxt7lZ/c49mFdMwnzowQTQHI6vs6ey1rltkUEstdnMmsR0Lm6DPWi6UO6XWBoy4Fp3t64wj5ityLd/02T7tl9CKStZXF94SuQwAyYjNtsYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hk7loPdHjnZD+DeOcNZDIBl7CpkyVBHJ4xBKHM7VQxY=;
 b=Ng3oeXc1LSOo1wzgJZZulRKVykYf+Ngvi2OHuFT5R2z5U4/de3tvMSdf+eIvWdnnnlxP6GPma2OLTHjPIawVisUlyHDef8vkuXQIIbPkXxVj4PPyCkQLDlB/csPW/uI6Dg8+vqxxzqByFLnINZNrEUmHk1ofJZ/wOAAlm8QZabHVyzhRHgNUiz7rCx3rivy4Jh8pzXFbs/uZfD1dpLHorfCLX6GeA/JgLCAG9970rYlvf5clkq8yIlFLxvKfj8z1C4Kafn/73gYWTjXU5+50oO0CJoan0DTKCII9239Gm3nalkCA5c5trwMc0Yt6cAVZk1MaZGqwesaAQaBuJEbnDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB2710.namprd11.prod.outlook.com (2603:10b6:a02:c7::24)
 by DM6PR11MB4692.namprd11.prod.outlook.com (2603:10b6:5:2aa::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Wed, 31 Aug
 2022 11:20:55 +0000
Received: from BYAPR11MB2710.namprd11.prod.outlook.com
 ([fe80::a47b:351:674f:373a]) by BYAPR11MB2710.namprd11.prod.outlook.com
 ([fe80::a47b:351:674f:373a%6]) with mapi id 15.20.5566.021; Wed, 31 Aug 2022
 11:20:55 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: refine eDP power off
 sequence
Thread-Index: AQHYvSWzWdn8bLSPukGgP5b8CNqvx63I1BiAgAAGQAA=
Date: Wed, 31 Aug 2022 11:20:55 +0000
Message-ID: <BYAPR11MB2710D48DAE762B4C825E3AD0A3789@BYAPR11MB2710.namprd11.prod.outlook.com>
References: <20220831103724.14839-1-shawn.c.lee@intel.com>
 <Yw88eUkBTEBOnEZZ@intel.com>
In-Reply-To: <Yw88eUkBTEBOnEZZ@intel.com>
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
x-ms-office365-filtering-correlation-id: ff2a7f61-96f1-453e-9046-08da8b42def3
x-ms-traffictypediagnostic: DM6PR11MB4692:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oDUgNVRxs2V9W+KkIM8pERAqnNU49DX/hMD1pWHO24CEcms9xyCjxjJ/QgvlTB06003P32EcCjO2IeBbaTNlUCzVXI/UcQCKLIpWjJvQCh5yCD8NldNdy8vGDZMedJMbGjRqU+M7wtaFGesdSAhoix4a9hwQX7kTOmKWeQEbhqsA22i0Pa5mUIv12lwaDnxfmQi2QnZZkQcVY+mExPgPFinGEfHz6ogjjL4vn/CYmwIbmuQUSlQAlbztMvf1LdJONC1FrkJwPH/SOur7/LlKWfslv5c12PQPrI+1TIcthU4vzLcT/HLZQxDVCELdEDs/Ta1qqnVJfqDu6eld3VLj5xw3O7DZvnW2r2w39yiMatM6jpDUoXrlxG+3r7xG0DnL/h22l7O4E4gSjQB9oys3qtJ6s3S4VrbSbUYTWoCHxiw8nvDDXqCaN+wIMAxEDzZLV2EUNHq69uNUEFluh23I50NFh7GnnDliY7jbX2Y96QYU5GXNBLBjPNW1zzF5PY8lzzNeCrSZFmeZQ1mtZJONOv16GUB7LehdHsQq4APOzsHWf0HHxNONCuDanQlDPqInRlr2iYayWYAE5H191qf+2jwvbY2uo1ZapPW7DuAQcUGYCfC4gTspiKIdBePH/zPhLHYPHMf5kjRf11ibhuIuTme16iwuT3VrUdvYTPqzuzPfjhE6S2uJp0LDnAmV2Hv/LqkY8EzJ7L1zU6+Ccy/JRQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2710.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(136003)(396003)(366004)(376002)(39860400002)(83380400001)(82960400001)(38070700005)(6916009)(38100700002)(122000001)(55016003)(76116006)(66946007)(66556008)(66476007)(66446008)(8676002)(4326008)(64756008)(316002)(54906003)(2906002)(52536014)(8936002)(8796002)(5660300002)(9686003)(7696005)(6506007)(26005)(53546011)(66574015)(186003)(71200400001)(41300700001)(478600001)(966005)(86362001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?Zgz8/6bKN9ctesi0tDTNmaQP9LrIXuqblo+T9H5Mk64uHpiM2ZJ7lJWtOJ?=
 =?iso-8859-1?Q?Xjb0O3aVOhWk+60oAL+0bommgh9h4/t096EWgzrG3hexKAlZSovo6nXpRe?=
 =?iso-8859-1?Q?mG08Pb6A6NrlL4b0fd+m51ycEQu5s8P1mDwBfy+SRbq5zSyONzd1dCTIZa?=
 =?iso-8859-1?Q?YdPMVx3YwM/yvjeSnrgYpCUqpn1vLZViQS5UT1UEx1yE6qpRkIZhavyriT?=
 =?iso-8859-1?Q?8q0RkEt5sasLIPiraWUvmfHZMfmsRmK7IKBGYQGN+/SYRjRv/pAkMiOBxr?=
 =?iso-8859-1?Q?Zu4XAmC0ULpj0ex+GofqkDIVrE+ihhhwyZMFfZKbZybZuMwGmFQqYHUAS2?=
 =?iso-8859-1?Q?vbzrMq0EBVuyGeHGzBqER0/MxP67+ak80xiJ1+K+wwQKswEM+BW445BPBn?=
 =?iso-8859-1?Q?d+/5scINRyGguH61zfZkb2VrbCFZdH85h3c1K4Zw28ecSjR6QMBWSIBgHn?=
 =?iso-8859-1?Q?nPQ8ci+5D7ev2M1FWJIypPSIucsDQMkvk2EY/8GHHAPz5Ym76gH64x3TYs?=
 =?iso-8859-1?Q?iL2HsSof7Lgf+y7WGpDT7clBXV63jK/GrTAvTovB/Ar4XUhzl/IdXxQUdE?=
 =?iso-8859-1?Q?uPLJJ7eEKlJsIWBcYAZEdt3SDB1ZXoNUFCho/dW3kVFG8Ps9J/VShNJet2?=
 =?iso-8859-1?Q?h7P364mE8oZISnzh4GrfKUB6wWVNU7r+lubUiGDyYmrKdjL9JD7SZ/yUuf?=
 =?iso-8859-1?Q?REkUo3WxnseM4qoh2/L+tSMm8o11YGs4+Nz+y9HOhKETGsepdj4jAJejpx?=
 =?iso-8859-1?Q?00bY3TnYz5A4bDp6PSewinQASS9MrwC05vnw/O9jYxaEB4rstc4tERsNXl?=
 =?iso-8859-1?Q?ySTi7f0BT9qBhgVLrNQrq8zehDB2/m3FJzRsUPUivCRdBN1DOivJ9DyOwC?=
 =?iso-8859-1?Q?rOrJg/whPBDMesp+DWu2wu1uyD3Crk4UUhLD1acfeijRvP5wim9cgn7jUz?=
 =?iso-8859-1?Q?D8ETaw5AHtFvoRqmuLSoVKQ8JwjXeurPH4j9MA1Bn1GhYm7g9Oj4r1QGaK?=
 =?iso-8859-1?Q?v4C6VYZ7qT/fZ2UJFzRrdK98mB7cc0+VSaGOPeCabKOjrkEC7C0BAcisML?=
 =?iso-8859-1?Q?WCOdLdiSNeHBX3Q7LTEvmjSl4EkRx6I5X/4W7YfbcEYZS4mpOMzloFgePU?=
 =?iso-8859-1?Q?6yZ8/BDTTZzc0Yx8mrAFWF90AJFTptDLhgr5hzqm1fmpr41sdfgadDXW+E?=
 =?iso-8859-1?Q?5pSjDLsJne8t9KraVC/VxLvH/AY2L6yktL0pajnkwGnRjh56V/wGV8UPce?=
 =?iso-8859-1?Q?XfKz9KxC2m0WCXMoew3Z0PnLffezaoTeUw+9rP7nuJ9EZmw1z4RLOJn9H2?=
 =?iso-8859-1?Q?yxTS0oxg/8O44eOVF/BnqDWxYL/0YmLzVBzK1R4Rqirbci3FA08+MEYpzF?=
 =?iso-8859-1?Q?Z2gSqe5lC/6Z/aanmQ7NMMG/QOJgT/PaZMWCtilL12DYKsh4doyJ+KBFHe?=
 =?iso-8859-1?Q?RtLdVRLBTur6lPxzuLHT0nVeLp+lo/3GF87ogkleV+nsCePgZ58lpg8Cwk?=
 =?iso-8859-1?Q?XllGq4JuPHVfdZmcVh1/SIMbmj50joyhmgwxYwdrhdj7VW0eC9o/Ma63mO?=
 =?iso-8859-1?Q?0AVFOdpi3DvBykrHWGWKMEKa/+r3MX8NQVEd/DkZuGI3pAaSwEnRXMB9g8?=
 =?iso-8859-1?Q?BlJVTBD32sb2SBZqFQjdnBgAQ5+thzHSbh?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2710.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff2a7f61-96f1-453e-9046-08da8b42def3
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Aug 2022 11:20:55.0796 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YywM+xc0Xj86zmikwkvuIs2oBjVmvCBWTEqjU924oq09E4/WE5NK3ZN7Ar4dpmQmYFDw6nxwAw5u/vaDBZ8zsg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4692
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: refine eDP power off
 sequence
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
Reply-To: "20220831103724.14839-1-shawn.c.lee@intel.com"
 <20220831103724.14839-1-shawn.c.lee@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 31, 2022 at 06:49, Ville Syrj=E4l=E4 wrote:
>On Wed, Aug 31, 2022 at 06:37:24PM +0800, Lee Shawn C wrote:
>> The current eDP disable sequence like this.
>>=20
>> disable plane > disable backlight (include T9, the delay from=20
>> backlight disable to end of valid video data) > disalbe=20
>> transcoder/pipe > disable eDP power
>>=20
>> Found abnormal pixel output after plane off sometimes.
>> It did not cause any issue but impact user experience.
>> So we modify the eDP disable flow to turn backlight off earlier to=20
>> avoid abnormal display.
>
>NAK. Planes can be disable at any time by userspace.
>We need to find out what is causing the glitch.
>

Hi Ville, thanks for comment! I uploaded a patch earlier to fix the problem=
.
https://patchwork.freedesktop.org/patch/496067/

It pass the review by Uma. Unfortunately, the change is not able to pass CI=
.
With that change, FIFO underrun always be found during CI testing.

Best regards,
Shawn

>>=20
>> disable backlight > disable plane > disalbe transcoder/pipe
>> > disable eDP power
>>=20
>> Cc: Shankar Uma <uma.shankar@intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display.c | 8 +++++---
>>  1 file changed, 5 insertions(+), 3 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c=20
>> b/drivers/gpu/drm/i915/display/intel_display.c
>> index 72e2091d9fcb..d08927036350 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -2045,10 +2045,8 @@ static void hsw_crtc_disable(struct intel_atomic_=
state *state,
>>  	 * FIXME collapse everything to one hook.
>>  	 * Need care with mst->ddi interactions.
>>  	 */
>> -	if (!intel_crtc_is_bigjoiner_slave(old_crtc_state)) {
>> -		intel_encoders_disable(state, crtc);
>> +	if (!intel_crtc_is_bigjoiner_slave(old_crtc_state))
>>  		intel_encoders_post_disable(state, crtc);
>> -	}
>>  }
>> =20
>>  static void i9xx_pfit_enable(const struct intel_crtc_state=20
>> *crtc_state) @@ -7224,6 +7222,10 @@ static void intel_commit_modeset_dis=
ables(struct intel_atomic_state *state)
>>  			continue;
>> =20
>>  		intel_pre_plane_update(state, crtc);
>> +
>> +		if (!intel_crtc_is_bigjoiner_slave(old_crtc_state))
>> +			intel_encoders_disable(state, crtc);
>> +
>>  		intel_crtc_disable_planes(state, crtc);
>>  	}
>> =20
>> --
>> 2.31.1
>
>--
>Ville Syrj=E4l=E4
>Intel
