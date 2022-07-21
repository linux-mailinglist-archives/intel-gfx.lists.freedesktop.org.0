Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3CBB57C2D2
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jul 2022 05:39:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F051718A9E0;
	Thu, 21 Jul 2022 03:39:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EE4B18A91F
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jul 2022 03:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658374769; x=1689910769;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=jmdQuFCeQ8pASvLNnlZ9pk8SBYsXohg7qbreUr/olJs=;
 b=gKyEdr5ybKZEr7emynNUQ7lpcXkgpI+GyG/aCwvxfLjP7QmPaBRq9W3u
 4XkhKlQUOclhdzwTMUEA51eueB/CNgH3/IIHiJht/VesCPtGqkeF6XRWc
 i+HGNgmBIXqux3ZDI6z/azKSzUPFIv+aWNKgDD1rtdZO89ubvf2VKBIUa
 UAFRxqMrRi7tRG/BV/if68A/y/2B1g6WVehsJykyOYyNjwpPDV7r8WAWA
 S2GV1WJPe620iv5E6qIPNAXKDg9ATbUEyXFid/RvjxAIgsSLX09GMerll
 B7rVq+QxhDKf2O9Uf07pJk3Is9vTzFfnukZzhYd9TP0skqzRtNKfoOwmV g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="287689508"
X-IronPort-AV: E=Sophos;i="5.92,288,1650956400"; d="scan'208";a="287689508"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2022 20:39:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,288,1650956400"; d="scan'208";a="602172858"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 20 Jul 2022 20:39:27 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 20 Jul 2022 20:39:26 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 20 Jul 2022 20:39:26 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 20 Jul 2022 20:39:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fvtSiaZpXUuxFBzNBCELz0TWhczx9/ZD5ZRiG97KT2m++2LbnBQX/55oOo+hcCtTcPlErHYH0+S8jF0MjIwbCf4zfy30euPyZYGtapUZq+2IpFynMR5BgEphMK0NrvcwvNw75UyfZLXfKhvNUSm/+4rbrrzW5D7rATv3BM2kgXBVuWpy1YmnVP5/d4F8LYGnlwdCRHKbgfu7Zvjw4gaLX37HOt/o4E1UrIKh7kmF89jCC3bFd+0kiDAed8au3mw7cK8PMDnoXnVMFFEwHa7nuLzd1Rorq2jWWrMeF3NhWD9yPf44AaJ2scHlWuz2JihMFHB4nNX2S2UYuWBzyvWl3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CmfRnz/w/7UX933c6gg+1CtjOzWZdtC1sIeJ6AuEgOo=;
 b=AVsveL7F7nLqZwTLYj/5qpIckO4/rrMichp1mP9CBS3bT7bMzTd4ApR31IF5kGJT2m4kXGYd4t41Xp/iE06dPRkelyMth3N3i0HmtY4o4sCK11r7rP/InRbUS1NJM1fZdxg3pAhh9wV4rjH4wBFo2JapRyQX5rJNbiNcWzDQEPTXJEeBPQOjiy6SOGEkD7HGYvlT7O1bE4fwJoOlHflGw14JEeBr/pNCpxWmhvK5rrm+4AC7JIapjCZxIblIg1Mh1q7eW6adK2niSLFikY8S3Z21wWj6dRBVqV1Uq1Ja6ahzjjLIvkHmESnUs5xOdfIbw3kWs/2qDr/0pnS0CNy1AQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 DM4PR11MB6096.namprd11.prod.outlook.com (2603:10b6:8:af::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5458.18; Thu, 21 Jul 2022 03:39:25 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152%5]) with mapi id 15.20.5438.023; Thu, 21 Jul 2022
 03:39:24 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Cleanup
 intel_phy_is_combo()
Thread-Index: AQHYmtpo4UR9b7tcu0+G9SgR/ifAA62FCCjwgADurICAAJVNwIAA7c8AgAC2iLA=
Date: Thu, 21 Jul 2022 03:39:24 +0000
Message-ID: <DM6PR11MB31777632A0E33C9E99E84AE4BA919@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220718191212.166141-1-anusha.srivatsa@intel.com>
 <DM6PR11MB31775421CAF98B4F838C1E1ABA8F9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <CY4PR1101MB2166F3B024A9965C1E420458F88F9@CY4PR1101MB2166.namprd11.prod.outlook.com>
 <DM6PR11MB3177B55818550FAD5F03C817BA8E9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <MWHPR1101MB217314BC0CC01C6BC1695763F88E9@MWHPR1101MB2173.namprd11.prod.outlook.com>
In-Reply-To: <MWHPR1101MB217314BC0CC01C6BC1695763F88E9@MWHPR1101MB2173.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 07e47d05-fdbe-4c14-0fbc-08da6aca9b51
x-ms-traffictypediagnostic: DM4PR11MB6096:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: agKNtcV8kuR26Sv495Pzd1zBdR3lLC/29GLBwCteNvEsNoX+gRLMk+u+d79GuxUWnXjR9grI8KulTQvirn5VrbpwC9t8hfwOHB+6UF0n4J85HqAJMkX6RlprUDoNkVzqAVRGkIapSdaO7ZBS7Pzn593KMMOAQla9NZg8ClK3WvqRjDdCUgAGHri+ugN4z0jBqvqWfblL0AUo3gGcniACoz9OofDIL5bccarGsG+Wuuk1f5gD97wUZlGIL2H/B+aAzc7yTSEQkSyzKUxFMBiM4Y/n7e20LeOO118XX46geg14WskcuECwxif+fpTfOJrGSSt6RrvTjY+Yww5B5sNy69nan3pcYGX3uSS8pAIJ4FfriTtbwgEn1rEu2Ev1vkxbUnVKIFXaUkvuO3LcmITrxdbTpv2IFn6ChFFKdyhYzx3Drmyw0ddooWbdiitwkNdU+9bL4wZJCrIAAvbVJJmSn55F1fwpwIQ15FDIdGBxZO6C9FZvesH8Br2JAgyshaH/vTGm74HVBcGS30/zo8jFPV1wSIatCv2+tzl5jFWlN3/FNwfrPq5uV7VO0WO+fUUzK9ZKDdCVJK7MHqmabFrzykICxgCtJgl8DqbRV/yYUQPDwfB8jrSdol4x/KDNBldSIS/GZi6l0CUyfzprZLg+ti9nhuCeNvpSbidklaCWCyTOc6THkPvG0EHeejpQ5YqefHSbWs2g3ek1wNX/ulB45xTNj0D3wHncJ0Hc+nGSg7SrG6WsESR5/yFPhBM8WmwGjvr2qnMUDcNyBZZCq2imvWeH6KYpq1toN6tcqzd1I2FUQZ18ujsEKAZvkB85lD7q
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(366004)(396003)(39860400002)(136003)(346002)(41300700001)(86362001)(71200400001)(26005)(7696005)(53546011)(33656002)(6506007)(38100700002)(55016003)(478600001)(55236004)(82960400001)(8936002)(38070700005)(5660300002)(9686003)(110136005)(64756008)(2906002)(122000001)(66476007)(66446008)(316002)(83380400001)(76116006)(8676002)(66556008)(186003)(66946007)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SRzMchH1AHT67AlRUoYRQmopCTZ6bUQPRZzlleJtuedKPAu6ThPZQhkL/PMc?=
 =?us-ascii?Q?YGrLFXMEIujtKj8D65ALFrO0ku9fpJS1GLSS3vbuWGACwylSpHc8Lk7lt7zH?=
 =?us-ascii?Q?SHfyIc4OyMleFZHcL8Xnlx1cvsvMa918bUUZ49PxjtTyDQhWB5+3DcsqVlx/?=
 =?us-ascii?Q?8EOUWhHlJP8dDFiLka/ZsWiC7SV8QsPsO4HoIp5ridLwxftiIe05kJS5RSy7?=
 =?us-ascii?Q?m/wl5AlGPNmVTrpVBGtNQA2VZldf36bZXYkKTZEB7yTYWQVpo59Hbt1+iJNU?=
 =?us-ascii?Q?PO7xLe+P0Te//JM/KucPukkg7o/QmDPLkrZlRRofkKL3Vb4+JU2tpj4GIj6e?=
 =?us-ascii?Q?y47JJzpuRmg+kPaeMCCHM40hkLSND1racsy/H4MIQCw+NXBaJVLzhTKcJ2Bi?=
 =?us-ascii?Q?B9aigJbYIEfR9Cb2LJWyzQioVa+RSeXJbvimIEWIqjab9WKnwdwWm2ACZ1yj?=
 =?us-ascii?Q?HL+ZYlfn/5WpUCiPPgR4+ScjGLAxExTkeWB3WpJ7706UxZyD9CoYzuhm0l0H?=
 =?us-ascii?Q?MJx+tn4P4p0silrdYUHpciHLOpdzZDh0gYGz+ZVN4ewhVMHqHKXfJ+rMuHRQ?=
 =?us-ascii?Q?N8tdIgKK9AS6i57BGyD3Rnt4kia53BcylKRWKLtOI3o6d0fHNWdvWtL0Md1P?=
 =?us-ascii?Q?DyyuuEFSWN6fvaFc2wTQVeuw7bfM6z8/YRuN52vb7cxjIY4KrtuaDAYyJ8OM?=
 =?us-ascii?Q?bkZ1bu8T6fJOlWaN61JOWMOpoBNNSip/zk+fmCnOqtnWtCcFcVADz0kV0F9S?=
 =?us-ascii?Q?KJiudxNesQtYiE7JLVf4OvnsxGzIhZwG/ZdQ/Yg1QxiI8FkcVJcyLst8N+gi?=
 =?us-ascii?Q?cFv/7WPe6i3YOqIONCHaOfoF6EvN07Mk6V6PWERcjgwuDGv+yAoGn6XWp1n5?=
 =?us-ascii?Q?rOxtpd4sPK9zjVEfyS66xBgbXwYAY4l4TZZsYQIqdnKt8SeL3O5lLN+x3/ry?=
 =?us-ascii?Q?O+bm3lvXjEV8mQyQcjeHPQPC4D6Pa7A8tpM+G5OtGersn8j/k3Zyhwd5xP8U?=
 =?us-ascii?Q?+HBbgbOqwJD1ScpysWD1nAmOAFJfP63YzKpkzcZA401jHwdahrGqRrR0u4bA?=
 =?us-ascii?Q?yPJewGI56M2LG/Lnpx1YZcOzj5HA4JIT0pKFg7vJvWWXNYGqgw3/MCxI0aUb?=
 =?us-ascii?Q?sE4uaWENj5h5oz8YsJ94r9flRyl5i80u5hbFnDQnp841NfqfNaAwDth2n3m7?=
 =?us-ascii?Q?r4UYL27oltnX3eO2NKmnh8amWVnaoGkJuDPKz6cKoFH0Oby5Lga49Xly0nbS?=
 =?us-ascii?Q?eVmpz6fSQFJxxe81nNKSjogmrTPDA+HN51UYyeWI9LxPhE7S/HdiKdKhxaXD?=
 =?us-ascii?Q?wy3kRORoUBE5ZOuofcTF7uP2G+7gbrKyyfF3IGIvzTW2ynP+8IPBJUj86F7/?=
 =?us-ascii?Q?7sHp2DgAdnDpQ6ZOGMtFauDZi3hF1l7O+PffE7Fsd0A1doMVYwPbI9DjdwgO?=
 =?us-ascii?Q?O1RbShVBEBZsdA0DqKRH2oQlCKneRsLuxAOb6hUy2mvaWhcx69Ne9Vgj0qR9?=
 =?us-ascii?Q?jQL+RAFBZPC2UuTcH9vEPzcCVnJBmA/y89VO0neKszaafIelg+HDZSPQdd9D?=
 =?us-ascii?Q?6TvJzycYCbUadMBPVKUAeiB97rcPbLmqCrer/0tX?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07e47d05-fdbe-4c14-0fbc-08da6aca9b51
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jul 2022 03:39:24.7752 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lkkaBGG8NQvJqebXCkxcFqsgjmRt+YwvzOSSJVB31RuiOAAqhbJod0r5x8ojZiVnV80AdUIPwbrg8XviR+oGZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6096
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Cleanup
 intel_phy_is_combo()
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

> > > > > -----Original Message-----
> > > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On
> > > > > Behalf Of Anusha Srivatsa
> > > > > Sent: Tuesday, July 19, 2022 12:42 AM
> > > > > To: intel-gfx@lists.freedesktop.org
> > > > > Subject: [Intel-gfx] [PATCH] drm/i915/display: Cleanup
> > > > > intel_phy_is_combo()
> > > > >
> > > > > No functional change. Cleanup the intel_phy_is_combo to
> > > > > accomodate for cases where combo phy is not available.
> > > > >
> > > > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > > > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_display.c | 9 +--------
> > > > >  1 file changed, 1 insertion(+), 8 deletions(-)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > index a0f84cbe974f..b69208cf9a5e 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > @@ -2082,20 +2082,13 @@ bool intel_phy_is_combo(struct
> > > > > drm_i915_private *dev_priv, enum phy phy)  {
> > > > >  	if (phy =3D=3D PHY_NONE)
> > > > >  		return false;
> > > > > -	else if (IS_DG2(dev_priv))
> > > > > -		/*
> > > > > -		 * DG2 outputs labelled as "combo PHY" in the bspec
> use
> > > > > -		 * SNPS PHYs with completely different programming,
> > > > > -		 * hence we always return false here.
> > > > > -		 */
> > > > > -		return false;
> > > > I feel it would be good to retain this. This is very well commented=
.
> > > > In future upon adding something like DISPLAY_VER(dev_priv) >=3D 11,
> > > > like the one done below can create confusion.
> > >
> > > What if I retain the comments with the code change?
> > >
> > Retaining this comment will do, but I feel this cleanup can be taken
> > upon updating this with the future platforms. Other can comment over
> here.
>=20
> We need this for MTL. Hence the cleanup :)
>=20
Can you float another version retaining the DG2 comments.

Thanks and Regards,
Arun R Murthy
--------------------
