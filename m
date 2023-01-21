Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D8D676419
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Jan 2023 07:00:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7A7310E14D;
	Sat, 21 Jan 2023 06:00:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4CC310E144
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Jan 2023 06:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674280823; x=1705816823;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1MoIHTmduh40vi7s+mT6Z//8Hm9tXjUVWikBVbkTU4o=;
 b=N4dilQu0iR7xMNERlzHpxW0NCh8qWe+ES6EDhoHuw89fB/sToyPY2pAD
 WBBSR+1uUgWwbeVRfsjk0BwYhMl6FIAon8+oDKOEzbr4Q/LWUihfL1Rze
 N141y8v9lk0Vb0EoUkO05fgWRiyED7JTgAqw17ZPbq5ui2B4VhKifkbpL
 uJ/p07HWFvQU5axGaKxhxbuHMfWrIbAYrXSq0vCS0G7AYsce8QntzHV81
 KA/UkaeeviRMWAj1dQloDJGRsOMz3VDlv6PUM0vYskNgvwzqlNvGAUXHs
 Wr/Hl2nw/PidcW+/HgkVn7XUVG1k+fDP97qEg9FZt8xdxh2Br9/n+o7Oi w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="306122120"
X-IronPort-AV: E=Sophos;i="5.97,234,1669104000"; d="scan'208";a="306122120"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 22:00:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="691308798"
X-IronPort-AV: E=Sophos;i="5.97,234,1669104000"; d="scan'208";a="691308798"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 20 Jan 2023 22:00:20 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 20 Jan 2023 22:00:20 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 20 Jan 2023 22:00:20 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 20 Jan 2023 22:00:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Kv/4dF1Se5oBk3uf1E58VgO6MSOv4LfXTtCWdLOIU68B21oIcXfbzeJyli0xag/bWOkGnBP1U/NZZZsv+zwITyXf1NMvrv9zTxaIWTX6yrFOxE8RWJnp1qnfoskvQyE/w4XtDazTPbuJZDqWMecMUvrgeEtM4DpFUoknOcGV/AjZHBAZ0G4CmG5LFd1Mznmqbtzs9Llc/upYegDHGaZL1p19D2KIMeSiY8cNkBQ4DQd7pvywicCMZc+ePDXUK8tZZ6ehrH99YHKTdz2aqpPF2aEu7DC4KzNCOuk1WNUp4G37h652VV8PeVBBb9uIETdqr4OzyZShV05r0xoxd2LXzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=twXDVDlCI2LsNgfcDm0wW4Sr0YIOvj7iiudlxmrCdV4=;
 b=dvI1en8UMVQ55blaET1P6RCn4TAzJVyXd1naWG7LFUuDBevyxTBD29ow7UqYt/uou3XXEF1eE6o3q9zxa82XYLZ7Hg2a48StOH2cdattMbMZnbFCbKMFKDysPGlaDqtZ426k1pvsmLKOERAmCdCauhOPSSlW9q7JMMB1F0536tqgtwIvEIKkzjaw+zZAQubVN3wsb5SVYH+mqfUE9Fe+ovFdJnExfocoOH1H6wSyOKe0VoAwX3EFd3nk6FMY/QlBKg5ZL3YpyGAK9SfxzyUb6yPn/JgY5Looz4fMZnS4ahhLN6LZss0IKBx/Ceq6JlqA/rnMaHhJrBE/W8mVsQNiCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by CH3PR11MB7322.namprd11.prod.outlook.com (2603:10b6:610:14a::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.28; Sat, 21 Jan
 2023 06:00:18 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::8de1:bfff:7ac7:b117]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::8de1:bfff:7ac7:b117%9]) with mapi id 15.20.6002.028; Sat, 21 Jan 2023
 06:00:18 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 5/8] drm/i915: Convert PIPE3/PORT3 to
 _PICK_EVEN_2RANGES()
Thread-Index: AQHZLQZntavlVAg88EWfnW4o8mk3zK6oYRWg
Date: Sat, 21 Jan 2023 06:00:17 +0000
Message-ID: <SJ2PR11MB7715102F2B9470888E9D4BB3F8CA9@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230120193457.3295977-1-lucas.demarchi@intel.com>
 <20230120193457.3295977-6-lucas.demarchi@intel.com>
In-Reply-To: <20230120193457.3295977-6-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|CH3PR11MB7322:EE_
x-ms-office365-filtering-correlation-id: 0f21607e-897d-4c59-21ba-08dafb74c5a6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kbik8naI9A6fURPNJGLNp9TtWEZZMTRhherSwvSP8qJBLt12jhKcJH0AF2VQ3qMvOOnq2Lcm4qNa8oKeTwMEWZZ9xaedI7/q/xwDnFvKm4gQtgWm5fr9ylclFJkqaF1r4fFAmm64VuOXXnuDTZ+ztEv1hCD8mDxgUXmLw4II7Hs1i0rQ5vebW24d3+vBatpuIPMF+j+tXz9jWFB52fbEKuVHGynI1ydYdkOHFpbx+8EZodxAhnSvCDem5lhFwsWbrRE+iYczzU9XGibzBl2aonM0fZL03/O7msRGg2ZvAiiDtb6jQaa6XutoWmFDqvfuGaj5WgDtixb+78kTdPo+P3JLdy+PuWlNGQaTrzcb4YXv1ksf/mVi/heWu/xOc/IjXHuqECF5yu4vqwCbT1O2MwvZd4yl+L09rSPTyFdvjX+5Pk/idDtecGMyKKb6UCI3wDCfm3mlzrgUaRgd9Cx+uuqtN+UIFdCx1tUUxNkfHMM1A/7OZ9a9nZz/bbHySFdItR3QizGT0P0n/ZcDWgBE5MotLrjXgVYg6RuzI8iNPjaXL7EAOxXegQJKKF6tR7wjc/Lsowr0Mp1KWXiW3KxOdNyGsyn7Unmg409Z7OZGgJSczcEVcpaP5k3j9V6mJ7nQNXK+yBoPavdje8uzPBzhUfPYj57OVUZCIDsjT/YduGbAIxAXAESOwOkzpXZGqz6IEY57X7n2/TptZcViFqSzpQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(39860400002)(396003)(376002)(136003)(366004)(451199015)(55016003)(86362001)(2906002)(33656002)(450100002)(66946007)(76116006)(9686003)(186003)(66476007)(41300700001)(4326008)(8676002)(64756008)(66446008)(66556008)(478600001)(7696005)(71200400001)(316002)(53546011)(6506007)(110136005)(54906003)(82960400001)(122000001)(38100700002)(8936002)(5660300002)(38070700005)(52536014)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?82ZkQ0IuRzuOt86guBsUk1ZX2EHf7LT8CRCv8vRivorPHcX4VKJKPiv7xmXF?=
 =?us-ascii?Q?mfYBCFoC3b/aTArGrD3Dgz4YR+GbG5XkAn+PNwT/qye3FOCxgm1mTgJi3MEG?=
 =?us-ascii?Q?LOuxXA70ZxNLBYS47RIEHyaE+07jv3aw7oSjPtSmtiFO4KqYgaxwpIA3eCxT?=
 =?us-ascii?Q?SoImw0RAZaeXkcVRzJEWlUjeWn0EEr5CMqPEjt6gBbUy5csQf4O/vh5730j6?=
 =?us-ascii?Q?YUKHR4wcV/xWYuk29O+PdeP742laJXdFk2dloN7vL2fB0/pfNA75EBwxIx/9?=
 =?us-ascii?Q?b0c5IrzqeHWqtXiNRRslJR93TjnJnvATcx9lE+fN5Kba+RozjjbkaSw2deUB?=
 =?us-ascii?Q?UFpgRfRLkXeSrBpfDngLIX5jxenxHUigyfdO5/uMdjpCHS70CTjfu+10AZP/?=
 =?us-ascii?Q?HZgurl98vo15EbqWjp0aVQwr3v301Afp/ut++aY/9auYugY6kY7MpHp218U7?=
 =?us-ascii?Q?IeUZD3tIjv5k2Hf7i2mOOUiSoAiwBrb7JhZUiIum9OrOkXPbmLZs6K3NJyV1?=
 =?us-ascii?Q?Po9ygAEMTwtk4gzjYvbyhBRknJ513UENvEUhBAZ6DhAW5H9uYUuuLVFRJ/um?=
 =?us-ascii?Q?+7u1eCWKh01CmjusdeOuaDRy8Tnvrs0nOq/ZOicV+eKU0Sek3c9UF7p3HVZN?=
 =?us-ascii?Q?tAnKIgjE5UvL6+exQvVfIKa1gijKGgAf82Hesau5SKLJOAvY+H6F6UZNBTsk?=
 =?us-ascii?Q?//QB9mIvQ2PWenmG15gGXqIgodYshxfwmlOe4iW3ZaSz4Kd4dCZgr+ul+0ir?=
 =?us-ascii?Q?nlzWXvZAEmrmSzA/0EuZlnQvvIubIATjAfgoICmYWIFm7RFxkE0aOYnIBZPy?=
 =?us-ascii?Q?6U1mOE+EX7m0Z5RetxSR1H4c0Us8muMxFqbVgylsGNN3wq2qjowGRNi/+x5l?=
 =?us-ascii?Q?H72ITUHbJbJT7XFSlH+KtgSjZoePrnQjlLqbfSeS91REf/n78iAKPHxA44HR?=
 =?us-ascii?Q?UUYp1fM7BxehCHVFIgu7iKDbgmrF37eyVi12Bcx7Ttx43rGarH8QdrcHuPvD?=
 =?us-ascii?Q?3Gs/kajU8Iyw4+1awq4n8Kh0KFrGiSShShFkkMoHZXpbQ0uFYBpn4LypL+w0?=
 =?us-ascii?Q?/R+OO7aerX9QEhygo82gOCgwj5e80vFuXVTYkrO1cMVWxCLo0/sZjxBWbN3/?=
 =?us-ascii?Q?UpG2z1nZ4VjQuYTEfo3XW2A8mcy8H0+DPWiJ34QhYcr2rvXhKouuvnqN4k4e?=
 =?us-ascii?Q?JS0oQNU1/VGQcfrO1YezTSzlXCmOIWtSOS+FUI+3awSGlDX+xHgZ7EV8YK1a?=
 =?us-ascii?Q?Pb4g9mRF02sPxE39/jH/eEJG7aRpuE2IHXiyxqztDsSnO7AEeGgFPQYchAbD?=
 =?us-ascii?Q?SqFH3Snjf2jtVQXUR1Ax+8S/M7XOki9VdE9uybH7MaN8Pj63/3lfY22HX4RS?=
 =?us-ascii?Q?tNiv6tA6Is0vY/CP4Id4Txr6WFGLsn8W2kqUitW974B6irUODS/Aj0cZyJkW?=
 =?us-ascii?Q?lndGkW9Fw7J8Sci0rTXC6gPmAOdxOxkASyfeucglOwC/OSBaYS9QvbEBxh0H?=
 =?us-ascii?Q?pYKlHTLP71kFm11HzVs6xhHmqQWj4+/VEFWWC2YnLQSsIHnplTkbUkYGR1iM?=
 =?us-ascii?Q?Haeqs+6DI1C+kcghq/yoZVTr2ih5LTa4LCYg8MQNEbUlA03RAdBwBHMHCFzs?=
 =?us-ascii?Q?L9EIUedBowHKZzxzN0vSe0ehzn/lla0lB7x7H12eLnr/HtW3dZqYfHFCkngT?=
 =?us-ascii?Q?trECwA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f21607e-897d-4c59-21ba-08dafb74c5a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2023 06:00:17.6654 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qCLAyHkD4pQHxOvLsvSBBXmgIY3/P8k0JvqR3FhAEojoPPpijW4f1VLFn+h0YyEM4NxPh+CSu5LNhQxin3h7S2V/j922UEZgQHtU4ae43Xc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7322
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 5/8] drm/i915: Convert PIPE3/PORT3 to
 _PICK_EVEN_2RANGES()
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Lu=
cas
> De Marchi
> Sent: Friday, January 20, 2023 11:35 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: De Marchi, Lucas <lucas.demarchi@intel.com>; dri-
> devel@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH v2 5/8] drm/i915: Convert PIPE3/PORT3 to
> _PICK_EVEN_2RANGES()
>=20
> Like done for when __var_args__ were used, but size-wise it's also benefi=
tial to
> avoid _PICK() used for 3 ports/pipes:
>=20
> 	$ size build64/drivers/gpu/drm/i915/i915.o{.old,.new}
> 	   text    data     bss     dec     hex filename
> 	4026288  185703    6984 4218975  40605f
> build64/drivers/gpu/drm/i915/i915.o.old
> 	4025496  185703    6984 4218183  405d47
> build64/drivers/gpu/drm/i915/i915.o.new
>=20
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_reg_defs.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
> b/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
> index f1681e1396b5..755c1ea8225c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
> @@ -13,7 +13,7 @@
>  #define VLV_DISPLAY_BASE		0x180000
>=20
>  /*
> - * Named helper wrappers around _PICK_EVEN() and _PICK().
> + * Named helper wrappers around _PICK_EVEN() and _PICK_EVEN_2RANGES().
>   */
>  #define _PIPE(pipe, a, b)		_PICK_EVEN(pipe, a, b)
>  #define _PLANE(plane, a, b)		_PICK_EVEN(plane, a, b)
> @@ -29,8 +29,8 @@
>  #define _MMIO_PLL(pll, a, b)		_MMIO(_PLL(pll, a, b))
>  #define _MMIO_PHY(phy, a, b)		_MMIO(_PHY(phy, a, b))
>=20
> -#define _MMIO_PIPE3(pipe, a, b, c)	_MMIO(_PICK(pipe, a, b, c))
> -#define _MMIO_PORT3(pipe, a, b, c)	_MMIO(_PICK(pipe, a, b, c))
> +#define _MMIO_PIPE3(pipe, a, b, c)	_MMIO(_PICK_EVEN_2RANGES(pipe,
> 1, a, a, b, c))
> +#define _MMIO_PORT3(pipe, a, b, c)	_MMIO(_PICK_EVEN_2RANGES(pipe,
> 1, a, a, b, c))
>=20
>  /*
>   * Device info offset array based helpers for groups of registers with u=
nevenly
> --
> 2.39.0

