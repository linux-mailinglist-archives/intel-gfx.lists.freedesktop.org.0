Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE772676422
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Jan 2023 07:14:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AE4A10EACD;
	Sat, 21 Jan 2023 06:14:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5771A10EACD
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Jan 2023 06:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674281670; x=1705817670;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Xid9SdS2Wp1CNyQxNqOoIELgOGkls59qgl/MQ14c9LM=;
 b=LHv8jboGYC/KyB8a4OxsGp5V/GqO6lrWm0M2Ng6S2Bt0J6G2abe6ub+Y
 I6hmo1BihrZxCladGCFbMEh8xF2JWTTMqHhk/xPjVVLP79OWx0levh3W4
 6l24W+svINsLbQd8Cyb1wZWDNkhHpXVAFvjn/IW5PFAdivXsHZE+R+agX
 k7VmF5C2JEF5XsrouxL/sxocYPBZ/ipoK6TSs4xkwz6iXP7M7nNOywb8f
 9zljzd7uiAtgXZ65TSJ9mrabcM0pleizG3e70SfOu7MkZDFtSk7lKh7Nt
 tH9J0KEwCUUuZSfMqHe02En3WW2NhOamR4K9bay5sdvwP9q4iT7BNxB81 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="327034451"
X-IronPort-AV: E=Sophos;i="5.97,234,1669104000"; d="scan'208";a="327034451"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 22:14:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="610714375"
X-IronPort-AV: E=Sophos;i="5.97,234,1669104000"; d="scan'208";a="610714375"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 20 Jan 2023 22:14:29 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 20 Jan 2023 22:14:29 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 20 Jan 2023 22:14:29 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 20 Jan 2023 22:14:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XRjeOAat+2p74img99lktcULWRuO/J7KTIL4xy/ddffB5WyG1O2GiGQJpyPsIRieqUAwwxPOTFMID9rq1g8DCpA9A/DIMWy2R7Gk+FzUG7p7cXvcaeNz63tKzY45EhELNnDnpxoL7gRJbkGsus7A7Ly+P+W61edCpTGhmfsmuK5wWGk7x4qQASMI69D682F4/YQg8+CzFVlQOYAJoIXww3aF4sxZAg4yN+eEl5CWPN2zHiuokI5edMQDkQ8GjFZW7OTJfib4fBVEPa40jnkMoXT5W/68IB3EkIS7wz2lKbmQL5e4Gruzgf8nfnhWEhTpLpX2w2smqMPPgOdDSI4jGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jzf/hmbxJP0TlcRyAC2634ogZOQwjOXKn2pMWHdpNkc=;
 b=hUi6QW6PCAG3L717xGG3cxEiq+DvvlPMKVH8hejFDfXLaMrmxQy66gzrHTTAtNHq5orSdl9o/8qxJ0KI8xJf3Q9tX/Xxpm2/LlBkDU9u6rLJlI5jytqDSm2GQ390jDYcjmGZcwDPVuYR6tQHzRot2lpS5YmqJXSfWS6pqqt2JGY9IsfVgc0+D1OkOFTkg+vXVO6zbepG8verMqJkj30IWnsUl25w3JCrAhkbWT+Xt8+kyvBUF0TOsQ7ltwnzDGIBGTsRGAlNKV0pRn21GKbO7L+jb5JSnhQ6rUyLMTUtg7EJXCh20iQ1+wMUUHX/z1vJ/NnxQUcO/F0d0gdZOYFyyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by PH7PR11MB6524.namprd11.prod.outlook.com (2603:10b6:510:210::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.24; Sat, 21 Jan
 2023 06:14:19 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::8de1:bfff:7ac7:b117]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::8de1:bfff:7ac7:b117%9]) with mapi id 15.20.6002.028; Sat, 21 Jan 2023
 06:14:19 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 1/8] drm/i915: Add _PICK_EVEN_2RANGES()
Thread-Index: AQHZLQZn9U3vWVdqMEyhYK+5D+AZPq6oZGPw
Date: Sat, 21 Jan 2023 06:14:19 +0000
Message-ID: <SJ2PR11MB7715CD391A024B61AA4E2323F8CA9@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230120193457.3295977-1-lucas.demarchi@intel.com>
 <20230120193457.3295977-2-lucas.demarchi@intel.com>
In-Reply-To: <20230120193457.3295977-2-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|PH7PR11MB6524:EE_
x-ms-office365-filtering-correlation-id: 8772b82a-1a93-4071-f866-08dafb76bb31
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: r2K3/d9bkfg+edV2AO9UUuXpabOB6QDLqGA2Wh1LB/WbsWKOoVVOUtjvRGiDI+bYPsDQrasgrMfRk7d03urboOKhYhM/utROjk60b7eu+ij/V1fQYPng7PCD6dl/DINvIEPxNav3En+/txAweLGhl6QlX4LAzIxb2f0Jt/0PQ8d7xq2ZdEQOkx6CziWKyzwfTlPw/hJHcaurByIg4zzFsL2NPLgQcYMTa7DE7XipuB6U5TpK272HcNcB7sQzLiYQZanIs6GG9WlCPtlkjNMC10wdiI3uNYbcEwBgeN+tYcE5e/cf8/Vhrh2pHzMI3FfaBivCRcNkxQIEjq40dFTAjdUpd10TntRBZNq20gkFJvCsTODw/7FSVU+wYlnu1UBQWSQ32JrPiJRbpdJ5ptZ7xGfKqtusuWo5aNRhWL8n0zyvby1t/VGiCyWBzjHtU8pQW0s85IjHoq7doVQSYLLY3Byt7txpS/8GCfRdUFOAKtcK6oB17u2H1XJTVIVoVUksF40HS3oOq4Q1INnUPPZbEEMytWkNWM5/UPrOhLOKKCG6yOX5dJQ2H+WGad4oS1t228CplHbpUnjezKdHfXeJdWBo4fTUDLrCRIZ9ySkzMTcm9xdCjpo9YeoUW3SUdwGk7lo7cHGdSENV4WUYk2mg4BUlz1y5pSGajnJYqZLBk+5PROe+j8Tfdh0v51rijIrEaLSn93CHHOGKYbKZaeTBtQ17O61HaRjuDivpXWaMAk/Iern2/ARwQw9gHXs6XePT
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(346002)(376002)(136003)(396003)(451199015)(316002)(478600001)(66476007)(66556008)(122000001)(450100002)(76116006)(2906002)(8936002)(66946007)(5660300002)(55016003)(52536014)(33656002)(82960400001)(38100700002)(53546011)(7696005)(54906003)(71200400001)(86362001)(6506007)(38070700005)(110136005)(186003)(8676002)(4326008)(66446008)(64756008)(41300700001)(9686003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ek7/srSgP6zgeDfZu/x/nsIX8slbNhooo1Gp13DC1Hroyp0JBjx6gBqskI7r?=
 =?us-ascii?Q?vnEw5pzQE3fI5nx0YB886K9tB/TVb42JsMHY2j2Ynf5iYC6LttgFpebf/pKD?=
 =?us-ascii?Q?1hSbAanG8DSCCPq1tz9r2vh1RUmoiijEtPaxWbvLn0+sdaoM6TQ+OMCJDSEE?=
 =?us-ascii?Q?My8Tsde4LkJ8M0xgUGyqSIOBvPXU94wOb1LGYvWqT3o868+u25gd6ZgoQErn?=
 =?us-ascii?Q?rTPCvSZRYM2pu+DZYQx+ecNsUn/MQceXyvYhBOhjxPuzs9POU+WGkwwMedT6?=
 =?us-ascii?Q?SgE6uEDIObxgiz+7na+9H/zHffKBHVmzSvBvkQOvooiTVh0uwgCO+sFzLy4b?=
 =?us-ascii?Q?PhkmRTB2tLCzzeUzG53ZMzNodxKDoWhzyesN6IrfwPROUuzSW+zipIRn6NT8?=
 =?us-ascii?Q?TYQW96oxlJjWERvIFLS/hX59jbV6OWKgLjT/FLyakGcIyEGRd9g7r61T5i5F?=
 =?us-ascii?Q?3IO7L3krg69ufYwlR2xB6RgbTxCZhNQGywaYOJk/CC8ENQqMIV6WzqUlnc8G?=
 =?us-ascii?Q?+cq0Z80Et8sxidQZVe12SSwBq701WkmUrPvrtETvGik0GvfcUXfU3rIg1rrC?=
 =?us-ascii?Q?4zWv6VyEPyF/z4fJOS0njzsJEZz6sbobm5zge7L8hnscvij2lXZ0Vp35bixn?=
 =?us-ascii?Q?KX9xAPlo0psViDPqbS7rfNlUrND12BcdB3sm/mxmrvHAxF5irFQ8n607p3lB?=
 =?us-ascii?Q?1HgUCkTfvw/NEnSFu3Z9jONqRW53AkyPMCr6ezwEJuQ7nGu0d65klBkGinYa?=
 =?us-ascii?Q?mN69hS+mXtI0vg8dERFeqKn3vXUvR1gNwn9HwVBLjlMVCCOlygx/rXopSaga?=
 =?us-ascii?Q?ZACswdMqGVis/ByP5rPI9Z2ixvahO8oPQ/iS+VgTYjeil66Mh0imxv5tkO9L?=
 =?us-ascii?Q?G5HJQ+szlljTrESiOE3Kpq/csZdXIvBysiQu0fgNKFtGo4nxH5wDy1oI5V4e?=
 =?us-ascii?Q?N+wWo3SBxKw8vYkWQs0DO0CTrFTYOXcgqui4q4qzk8ClBxHSfI3P9ei00UtO?=
 =?us-ascii?Q?/yGrQTQlGAvMmHbsiqbGauJhQvelUoreWPakL2x7hxP2pcmL+SPNLYykxmAP?=
 =?us-ascii?Q?n+K44Ya0bd4cJkcKxf5afUxhuENnoc6hzFiXIxcmdlhV7WbN0aXXSEho42hU?=
 =?us-ascii?Q?RmGWQQLqZcd3cu6UMpCnfcYllOBtyyKou2Bn97cuaQLL4GKmkazGcEpuxmJh?=
 =?us-ascii?Q?9fuUuJt38k2nbbD9NrvwVTU84/dwQMjDics8gRQt6MO21cHx/V0/zLiaEbHp?=
 =?us-ascii?Q?p5yrB21b92pOmJD7ncblqy7dOkXfgUaHa0FDDs4m4FKjp8rgzn6Fh3Bko8rO?=
 =?us-ascii?Q?EniMjjYV6HUcvbeNfNICnxeOiUmaRnMwHaaj2dd8xCJJeL8ry+1gtvlTU6LH?=
 =?us-ascii?Q?C7q9rquQxEtzDP8FNRz4CD5XjYPw1T7agTOVAwZNs34E/Mt5QkVGrATahhw0?=
 =?us-ascii?Q?COfp6YIA4PC+ozcHKKELUgsKUT2oh6f6HZMl9cBkxyKAZrxnJQXWhEa09eD5?=
 =?us-ascii?Q?G49s9yu+CBJNp/1AZetYQH27D7rH5fLSkzPEoU5sN6GEZyNW6CEW1zn1ss5a?=
 =?us-ascii?Q?k+G4rNoy09vba0gTaTtxnbVH0aAN8OQXJvUSE+3+SodkGVDDrOORDFncDmUS?=
 =?us-ascii?Q?SvOLjdT1MGcj9sG9nijo4vCFRhwIqn90wW8m4jGaVKnfK5k6HT21vrta0dsZ?=
 =?us-ascii?Q?2b6+cQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8772b82a-1a93-4071-f866-08dafb76bb31
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2023 06:14:19.1204 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y4udqRKJ6MWgmEeqNYHO3tSVguFk3PJrJ2cfMYN9lRLYMNRz2C0IbW8vOgakNY3O8aUtP3NIzy55pspqbqybPHLDEW5A3GhqPWedCRsDM44=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6524
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/8] drm/i915: Add _PICK_EVEN_2RANGES()
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
> Subject: [Intel-gfx] [PATCH v2 1/8] drm/i915: Add _PICK_EVEN_2RANGES()
>=20
> It's a constant pattern in the driver to need to use 2 ranges of MMIOs ba=
sed on
> port, phy, pll, etc. When that happens, instead of using _PICK_EVEN(), _P=
ICK()
> needs to be used.  Using _PICK() is discouraged due to some reasons like:
>=20
> 1) It increases the code size since the array is declared
>    in each call site
> 2) Developers need to be careful not to incur an
>    out-of-bounds array access
> 3) Developers need to be careful that the indexes match the
>    table. For that it may be that the table needs to contain
>    holes, making (1) even worse.
>=20
> Add a variant of _PICK_EVEN() that works with 2 ranges and selects which =
one
> to use depending on the index value.
>=20
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg_defs.h | 28 ++++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h
> b/drivers/gpu/drm/i915/i915_reg_defs.h
> index be43580a6979..b7ec87464d69 100644
> --- a/drivers/gpu/drm/i915/i915_reg_defs.h
> +++ b/drivers/gpu/drm/i915/i915_reg_defs.h
> @@ -119,6 +119,34 @@
>   */
>  #define _PICK_EVEN(__index, __a, __b) ((__a) + (__index) * ((__b) - (__a=
)))
>=20
> +/*
> + * Like _PICK_EVEN(), but supports 2 ranges of evenly spaced address off=
sets.
> + * The first range is used for indexes below @__c_index, and the second
> + * range is used for anything above it. Example::
> + *
> + * #define _FOO_A			0xf000
> + * #define _FOO_B			0xf004
> + * #define _FOO_C			0xf008
> + * #define _SUPER_FOO_A			0xa000
> + * #define _SUPER_FOO_B			0xa100
> + * #define FOO(x)			_MMIO(_PICK_EVEN_RANGES(x, 3,
> 		\
> + *					      _FOO_A, _FOO_B,
> 	\
> + *					      _SUPER_FOO_A, _SUPER_FOO_B))
> + *
> + * This expands to:
> + *	0: 0xf000,
> + *	1: 0xf004,
> + *	2: 0xf008,
> + *	3: 0xa100,
You mean 3:0xa000

> + *	4: 0xa200,
4:0xa100

> + *	5: 0xa300,
5:0xa200

Anusha=20
> + *	...
> + */
> +#define _PICK_EVEN_2RANGES(__index, __c_index, __a, __b, __c, __d)
> 	\
> +	(BUILD_BUG_ON_ZERO(!__is_constexpr(__c_index)) +
> 	\
> +	 ((__index) < (__c_index) ? _PICK_EVEN(__index, __a, __b) :
> 	\
> +				   _PICK_EVEN((__index) - (__c_index), __c,
> __d)))
> +
>  /*
>   * Given the arbitrary numbers in varargs, pick the 0-based __index'th n=
umber.
>   *
> --
> 2.39.0

