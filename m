Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9252B7276A3
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 07:25:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C87B610E576;
	Thu,  8 Jun 2023 05:25:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B08B310E576
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 05:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686201940; x=1717737940;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ITAwN7GGCMSXH6Om9REaNEMhMw/9LwiW4gY7WsKqtok=;
 b=Vgo7anl5insqZgBEE4oTT0lXA0iLpzJEl3K1e0ShB1jTs+mbFeQ9kueN
 x/cXn7STf5V3jJ/nsg90hnvsy2WqndeanZNRAeiB9MRB5kicS/J8pingc
 sbaj/Cik/OHu6Kjrrb6oDB4VTupEAUkcWvvQihsfei+NYsRUfJ/7AApOW
 5Ga9uN0/RPbzgAKQryqCLZQW6AI+Vor0Vx6DUObzc8n3f69sHB16YyOvo
 zv6LyJcBCoZA/NuuV9Uqr1o9n75/ybDrBmT3t5ys9AGKjfHei1/4PuUAe
 /NynhRc5laTWMWcFmxAt6HjtBfvrVmwkP88wLTC0hxm3VVKR18RmpjhBl Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="356063551"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="356063551"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 22:25:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="834022278"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="834022278"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 07 Jun 2023 22:25:39 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 7 Jun 2023 22:25:39 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 7 Jun 2023 22:25:38 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 7 Jun 2023 22:25:38 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 7 Jun 2023 22:25:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e7hs9ceSdxTEpW86VBYi4DUAnkz/g1lM6S0pDIt/GBDap+2Ag2jqXkwILAod9/EIIRtezYQGwtZPNSbEb+lw3IYPEM1LW5ktJtb6JXxNAQJfRbYViMKRPeGUmPDwAYC6plcUVBXd/MZfRWhNoYK4YH05g6bRScvi/C/+hggrEW4QceIGlOgzsNLVBM/G3RGT/EZ1Y0JBOFZ2uDc1AFUB/FwFjI5y26oIXARbh7EmBma5nZO8g1cAmoRYw2x7s7xXuE8OuNl512KeN4kMfY8+gm+SlG3iIbwFVC6sf9VSasIExc8ntHfwNgckUmoil/KRltUdm7asEZtLsvnXx06uig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GbkpPu+yHYXspDsknLh/ZdgomSuXwJa5WK9y62pZtaE=;
 b=PHQftBIreM4K0Zbj3kDHbK2+fWCa9cFvhJnx35SzIugZhf/1qZ9ZLcJaBg8vUG2DHDuoVBIWYZ8745Qw2lt0KEzloOLliiyWUV3qAQod8P79BFYUR/eSUbAxcYoKlgVZoUIravyIpN0VB7yJnr+zH6igwpHrYb8QJr3Jav+rumhonp92wwRYU4tFAEQprkUUweUjdadna550rotGe6sjnXaM1Lqeq5jGcgw7SK7rr3Vir7/IZubvbwPe2MsNuUn/GVnHWoY5i2OVvntwfpMV1UU//OK11gSUQVJvATtAQiPR3ZuXHbjTe9drN44sTyIxsrXcdntjuKMjtFkfHvNo4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 CH0PR11MB5249.namprd11.prod.outlook.com (2603:10b6:610:e0::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.33; Thu, 8 Jun 2023 05:25:37 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%5]) with mapi id 15.20.6455.037; Thu, 8 Jun 2023
 05:25:36 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Lee, Shawn C" <shawn.c.lee@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v2] drm/i915/mtl: Add new vswing table for C20 phy to support
 DP 1.4
Thread-Index: AQHZmb8+iEDFvqW4XkSGVzsb2eE8Mq+AXrow
Date: Thu, 8 Jun 2023 05:25:36 +0000
Message-ID: <DM4PR11MB5971AD46D6523586A89293DB8750A@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230606104306.32001-1-shawn.c.lee@intel.com>
 <20230608040944.7874-1-shawn.c.lee@intel.com>
In-Reply-To: <20230608040944.7874-1-shawn.c.lee@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|CH0PR11MB5249:EE_
x-ms-office365-filtering-correlation-id: d8cc8699-a2e2-4b65-d5fa-08db67e0ca37
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fpvJwVaQvab0wmd2JuSv/stGAMLlhek7EhSIBtFHYwyg1CNJxUNZichpyv9rYmgnUb6zriuo2QwUrS2sxGDwQzct0XyFMECFVKHrQ2EZmMw29u+b1r7EAksXRDNgZeXBLPlfU8TLUp5XqM9PNaSGrvOXuPDys5u0JMTLQXL+GLCPwU06w0iIh7ejj5J+kACQ79MxEhGON5NRZCuOUjMiES3ttyJlH60eCT8fcICxHIA7GdzpVWcyzDpl9ZXpnZvxDPf0euz7mD8VO1A/utS4GFyBfrMZEiYHLUr0JTVfW8ApHk+Zvnp3PuZFDsldioEqip3QVQiFgHrQpYhlnz95x2h9sA0PqiYbrZoVIqD4jzXuvGuG4QhGRMn5gG8+9G7ZEOORSEnf41BgtjFcz4/7GmbFouk0HUv2wZ7Vw04NSS+MvHp9dkgYBiWHk9hP9ICGNODYBhT/+uZ+POvRe9DBJAmuhoEtTHUPkqB0iF1CckY5Du7dH/HePuzBwQGV65/nLD3oeYc1WphmU6uGEi67XuBZedQKP8mlhDKT9V1fDPXStMOlwfDDt8+2CJMjWuFeQne6MShgJP0CrPLsOqQlHwfMwzyTaw2ZQUHzeROUVhrVoVWl54LA2Wte7vJFXycs
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(376002)(396003)(136003)(366004)(39860400002)(451199021)(76116006)(66446008)(4326008)(64756008)(66946007)(66476007)(66556008)(8936002)(8676002)(55016003)(107886003)(316002)(110136005)(54906003)(2906002)(41300700001)(478600001)(5660300002)(52536014)(71200400001)(7696005)(6506007)(26005)(9686003)(53546011)(33656002)(83380400001)(186003)(82960400001)(38070700005)(86362001)(122000001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?p4Mrko2hRdh9odzXQIQlX8/TUOMsR5MMobzD8Mct9JF8IEd32VabcUgnKinp?=
 =?us-ascii?Q?lMGEwl3K3ZJZS2p/1G8ScF53eHZ3bm4iPr3Oh8NxKjzUmyayoBKNPBJ1auMl?=
 =?us-ascii?Q?bxwxAKHtX2imyUsaYwcIVC6M31Bpbq8fBv+uySJTpSxLmTw2G9SscNPbo46M?=
 =?us-ascii?Q?FT/x//JAwUssaD62P0cizVk4p3SIJEO0zgFBZLE9EmUauA9nq5e7a7iB2TgQ?=
 =?us-ascii?Q?BibG+wmrtSJSVWMleaFvwOWvuSgPDQ+uz6tZ4lkaEjB/YOxJYXASVNYAk06y?=
 =?us-ascii?Q?uRInpdTTXxB5eIy0ECqjpGRamsoqIKkIlvaysfUzxH/aRjXs1nUqEgPTKGv/?=
 =?us-ascii?Q?wAmyt+sLTGzL2B9FFWU6A6KxEVayXFNbWkf3ZdYMj9HPHW8Vv+C9hIqEjpvO?=
 =?us-ascii?Q?a9tNbYZ2AjeXlQkg137HOMvgQ/PrFJzhG2T6eT2TZjaslVsQ2gdU/c386wEp?=
 =?us-ascii?Q?vmrSj7MvZsRPDKuTqAwsZBE2yiLFiJkM8MUGtkJhSqHLpP09crOuzZR/HV8e?=
 =?us-ascii?Q?7xPmT2GVuhXMfvCEXvUrGSkX7ifac+Qo3/RKRxtPLw0IvCPQzMtLccHV0g3t?=
 =?us-ascii?Q?trY+r4C/ut0HNMeXjLpXWjDYOt/CauowT04fwDwHGgSC3iUKYQR+WCfk9UF+?=
 =?us-ascii?Q?sYdQABI+ic1AnVzgu+rMHn2+fA05fQn+ZALrYgE7LskGj3DMchrs4X7JjWcJ?=
 =?us-ascii?Q?uZ3leP5vT7BrYO44PEdrhnIH2whWdMYxOtUO2AQR8/owYIwBrx54MZL9R8PR?=
 =?us-ascii?Q?7spzv+KQ+zvlDy1JXWcOQZkTzRfITFpVmNDF92Fx8b1YYsuav25QCEAN6tv/?=
 =?us-ascii?Q?pdMCiotUmXnUr06PiDMQztlctd2mDNbXhOsVWGtG+y/a6FKVOlcD4neM/Hbg?=
 =?us-ascii?Q?UChDjAMWmcqf5v0Dyy1IMZYvRMJlMAFD/H34OYh0A3pQa2F3I2VEFvNgkdNY?=
 =?us-ascii?Q?qC3hUzh6knIRJ721zMnhkkcN3hijwH4TskpOyIH9E0hjbmN/C5+/cKEkmdYO?=
 =?us-ascii?Q?jkbDyMe8UDxZ09qUckMonJYno5rZfJ9b0YieoHebQlxUPd4fSseiiKcxXDJo?=
 =?us-ascii?Q?XdUFHTHu/wXJNtBM3ZCX5MAMepxluZnvPHzUYa9aE0Au6qgwc1VBiLbh9+Bo?=
 =?us-ascii?Q?TAIo9oZ5CVAXiCgih7Pyciv6HY8761D3xH7y6mKmefYcTvhw0c3y/AFE8yFD?=
 =?us-ascii?Q?BzURms7BNbtPXbZoi8ioTUB9cXSvQtUOagTLgCXveMzI13b8IEK7KVs3G9LH?=
 =?us-ascii?Q?ukblTOVU96I0xneZFR7N3YNhngjadQBLYFCAv4uPAS9R1QiMILBKamg83q89?=
 =?us-ascii?Q?3pLIo6A3UYdfrsA9nzNnUhlI27ASuFGo2AyrY27tSKMBCzGTyjzphgWaNg0g?=
 =?us-ascii?Q?4BN0EBdkOtgGDXjuFtFT9a5mEsY3UUaRByXLBoKRzIWaIyxImFFfXpAgBpQh?=
 =?us-ascii?Q?pqPIwvKU/BFKJvqQpr++OQUlFCOIf8a9c5nWzIDoRbL+7f9gO+4LWrv2uCGc?=
 =?us-ascii?Q?IEg0z0vdqbCEXU6/cJHKslprUWQt04+/jzIHlRqjhi1GGfXY5lmvu1Pi+t9G?=
 =?us-ascii?Q?N/rS5k/Hw4KC5Hyvtm+iWPU9sFifJQxnPX8wUS4lhRS3b1/zVFXl0fjMyLH1?=
 =?us-ascii?Q?xA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8cc8699-a2e2-4b65-d5fa-08db67e0ca37
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2023 05:25:36.5680 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3RsQLljOe8KCSSgA5qFkw8YGEgZsxOyeLHcoJgIq+oSbMLEhrmO5dNNyEqJpsXGBgZooCwXPAKSV4SKLcFZspXw6b7omUUAPVbAQQnClAQY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5249
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [v2] drm/i915/mtl: Add new vswing table for C20 phy
 to support DP 1.4
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

Hi Shawn,

> -----Original Message-----
> From: Lee, Shawn C <shawn.c.lee@intel.com>
> Sent: Wednesday, June 7, 2023 9:10 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Lee, Shawn C <shawn.c.lee@intel.com>; Kahola, Mika
> <mika.kahola@intel.com>; Taylor, Clinton A <clinton.a.taylor@intel.com>;
> Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>
> Subject: [v2] drm/i915/mtl: Add new vswing table for C20 phy to support D=
P 1.4
>=20
> Add vswing table to support DP 1.4 for C20 phy.
>=20
> v2: rename mtl_c10_trans
>=20
> Bspec: 74104
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> Cc: Mika Kahola <mika.kahola@intel.com>
> Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Reviewed-by: Mika Kahola <mika.kahola@intel.com>
> Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  .../drm/i915/display/intel_ddi_buf_trans.c    | 25 +++++++++++++++++--
>  1 file changed, 23 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index b7d20485bde5..a6276a9ba61c 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -1049,12 +1049,26 @@ static const union intel_ddi_buf_trans_entry
> _mtl_c10_trans_dp14[] =3D {
>  	{ .snps =3D { 62, 0, 0  } },      /* preset 9 */
>  };
>=20
> -static const struct intel_ddi_buf_trans mtl_cx0_trans =3D {
> +static const struct intel_ddi_buf_trans mtl_cx0_trans_dp14 =3D {
This should be renamed to mtl_c10_trans_dp14 as this no longer applies to c=
20 phy.

Only if it applies to both c10 and c20 phys, should it be used as cx0 phy.=
=20
>  	.entries =3D _mtl_c10_trans_dp14,
>  	.num_entries =3D ARRAY_SIZE(_mtl_c10_trans_dp14),
>  	.hdmi_default_entry =3D ARRAY_SIZE(_mtl_c10_trans_dp14) - 1,
>  };
>=20
> +/* DP1.4 */
> +static const union intel_ddi_buf_trans_entry _mtl_c20_trans_dp14[] =3D {
> +	{ .snps =3D { 20, 0, 0  } },      /* preset 0 */
> +	{ .snps =3D { 24, 0, 4  } },      /* preset 1 */
> +	{ .snps =3D { 30, 0, 9  } },      /* preset 2 */
> +	{ .snps =3D { 34, 0, 14 } },      /* preset 3 */
> +	{ .snps =3D { 29, 0, 0  } },      /* preset 4 */
> +	{ .snps =3D { 34, 0, 5  } },      /* preset 5 */
> +	{ .snps =3D { 38, 0, 10 } },      /* preset 6 */
> +	{ .snps =3D { 36, 0, 0  } },      /* preset 7 */
> +	{ .snps =3D { 40, 0, 6  } },      /* preset 8 */
> +	{ .snps =3D { 48, 0, 0  } },      /* preset 9 */
> +};
> +
>  /* DP2.0 */
>  static const union intel_ddi_buf_trans_entry _mtl_c20_trans_uhbr[] =3D {
>  	{ .snps =3D { 48, 0, 0 } },       /* preset 0 */
> @@ -1090,6 +1104,11 @@ static const struct intel_ddi_buf_trans
> mtl_c20_trans_hdmi =3D {
>  	.hdmi_default_entry =3D 0,
>  };
>=20
> +static const struct intel_ddi_buf_trans mtl_c20_trans_dp14 =3D {
> +	.entries =3D _mtl_c20_trans_dp14,
> +	.num_entries =3D ARRAY_SIZE(_mtl_c20_trans_dp14),
Just like in c10 case add
	.hdmi_default_entry =3D ARRAY_SIZE(_mtl_c20_trans_dp14) - 1,

--Radhakrishna(RK) Sripada
> +};
> +
>  static const struct intel_ddi_buf_trans mtl_c20_trans_uhbr =3D {
>  	.entries =3D _mtl_c20_trans_uhbr,
>  	.num_entries =3D ARRAY_SIZE(_mtl_c20_trans_uhbr),
> @@ -1678,8 +1697,10 @@ mtl_get_cx0_buf_trans(struct intel_encoder
> *encoder,
>  		return intel_get_buf_trans(&mtl_c20_trans_uhbr, n_entries);
>  	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
> !(intel_is_c10phy(i915, phy)))
>  		return intel_get_buf_trans(&mtl_c20_trans_hdmi, n_entries);
> +	else if (!intel_is_c10phy(i915, phy))
> +		return intel_get_buf_trans(&mtl_c20_trans_dp14, n_entries);
>  	else
> -		return intel_get_buf_trans(&mtl_cx0_trans, n_entries);
> +		return intel_get_buf_trans(&mtl_cx0_trans_dp14, n_entries);
>  }
>=20
>  void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
> --
> 2.17.1

