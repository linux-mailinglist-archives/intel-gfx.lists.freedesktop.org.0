Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA7C5769A9A
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jul 2023 17:16:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43DA710E2BB;
	Mon, 31 Jul 2023 15:16:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E70D410E2B3
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jul 2023 15:16:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690816584; x=1722352584;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=s0dPFqt1z/hoO9lC8Yr+GVb7T5QDqwStYLB3UrVFJZE=;
 b=YPAcK7ZelXl2vrXJgzMvqCi+39tuW8z/BtjQi89D+yYnmjR+4vKGEz1l
 ODCcMCri5+FfaFoPU5C22zyyeFqmKnlD55oDED7/VslXYJvGXuHGHB2vn
 7s1MQN1IFlkPNH79v9T7H0eaefcNZUyt/jHvif/h4PQPFse2jBzj64fbr
 qZXzT059oqFIn2rFLbunw4Txs0/lFUVgpngy3WgpVBXyw/MSRMd5IlY4U
 KBlC/jjAqcjM0ghnAlqurq0NECykU+09rOWAQF5ulUWyFgY7YmijS+i99
 aKajspLMik8fCxAlG34CNoerRQO2B6Nhq3r5gnibpfYa6EUd5Tp1VHYot Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="432863412"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="432863412"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 08:16:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="974894809"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="974894809"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 31 Jul 2023 08:16:24 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 08:16:24 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 08:16:23 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 31 Jul 2023 08:16:23 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 31 Jul 2023 08:16:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nQAElfDOhfHfOD+iOazArEscx8yMnlyh5xBCXY2XS1JAGcHDxIjM1tc2ksHHABBM7GLTW3VO8kHTZ+IWdRAZUPFYNfuKp2vgnxnkFLLs4hBHyEV3AcheiG00iG2JQ3cM8i3TZi4Gj1d4v4dBYt5feI3UimDiTQs9K40nHHvVmcmj8YAIo0bdEa5NulQGS6OXo0h5xGyGjpl+XPzmJiSxI1trE+4Dleg0cj8x0Sqa662W72BBQPRSFcCvS/tPwgeptTTVn1l/Dh/qpLSinRR7P340o1K5xrbwLYFxpFINl92kZi725ATfGIkEjdQgOGNKhFLxn8hTr6eGCeeaYIgbCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vGJsqlB4NF0g56ziPUSJa4ktEfjv8XNbyhueFJAkY/o=;
 b=WIv4xoGIqjmRNrmugnLHWeDzoGmxQiZLbnX9auAID+T3syW2nSRmv4PNStg5GUcJQCaFe81jCKe1LHZXk1/HMbrHBjHoQjJG6sQSoNnGWkCcackqAr4PwOtOtG2ILvPnFc44NmV6ngGY4W8XWPFsIjpHZ1icW2joVq4JVXA1ik8c89ZF1D525Tv63pIH+lIL0iHN4UwRoGHiELfsWUTjWtkcx6HKWrOdGv58++q3zTIhGA5l8JHIerU6ssGVj/U61dnzWz1G/5ToADnKZPPscxtddhW7B70BiGHFTCrY86mEuTx+cHgZ/Q+ErL76QwjtT4TFcqbvW1c453EPqX2Fdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by MW4PR11MB6811.namprd11.prod.outlook.com (2603:10b6:303:208::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.39; Mon, 31 Jul
 2023 15:16:21 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::ec0a:6c6e:1cd3:d622]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::ec0a:6c6e:1cd3:d622%7]) with mapi id 15.20.6631.026; Mon, 31 Jul 2023
 15:16:21 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v1 05/14] drm/i915/cfl: s/CFL/COFFEELAKE for
 platform/subplatform defines
Thread-Index: AQHZv/zJXrhoyh81GkKJYS/vjZ8Z7q/UA9Uw
Date: Mon, 31 Jul 2023 15:16:21 +0000
Message-ID: <SJ2PR11MB7715DE3986E576481C040455F805A@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230726200657.2773903-1-dnyaneshwar.bhadane@intel.com>
 <20230726200657.2773903-6-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20230726200657.2773903-6-dnyaneshwar.bhadane@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|MW4PR11MB6811:EE_
x-ms-office365-filtering-correlation-id: 44284d0b-a250-4d4a-221c-08db91d918ae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 63gkDRe9v+eu8KNEFVisS/KWDbiolHfh5csZyuwst985dg4ybAPtPzvz3AlJcxnNyeQY4DJhMOoEy6legM2qUTGCVzzmTlhYmICMn2kJm6GK00pU7Xro0REnqKLm3IGT39TmTLokYTOq+s8V2jctVUxSmTFLjyDgSfAK65a0de7xsoEDW7BqHJrFhwOfz3UgivTC+5X1zpVaiGp6noyrlzxeMrkcxOG+yvx3s/yl0Ud9ryFLpcLrtqEYZzulXaaAnFlA+q52/VyldToQhybmmVKcai1CFYoMwivOXVx2xe9J6Hk7qxKo6D7EYawMMQqsFVQFaKyWedfFpbP5ldgIH9I27w4u0jH+1dhBNbfSl1qheNeiEh014c45PNtAgr73fy7+ssy6FdcsFd5oZg+X6h0Dqby91M0q1FONR0EhP0XhliOBIzHnLEos1SYJ2E8ByacCy7uE9l1BNAQD/9AP6zfZLPxL1J4xHDfxaia8AhBXWvIyagiFOzKOjS19XjVRvnIi8gE2wj0eAy/SnTiyJKN0aKbu4LRzqOkpX4O8bZP5G9gba5vge83Ok29WEUYmuphnHm42HW16iVblRIQWZH4fr8IncrpnfpAhyt/z/bVSWK7740vqzglSt/5zC+V8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(376002)(396003)(136003)(39860400002)(346002)(451199021)(5660300002)(52536014)(53546011)(8936002)(6506007)(8676002)(186003)(26005)(83380400001)(316002)(478600001)(76116006)(4326008)(66446008)(110136005)(66946007)(66476007)(66556008)(54906003)(64756008)(7696005)(71200400001)(9686003)(41300700001)(86362001)(33656002)(55016003)(38070700005)(2906002)(82960400001)(38100700002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?63y1sZBrml/yX8hUgcMXkEUAuXbbm927kiJ4EEy0xSL4wKxEyw/AYxyomfN8?=
 =?us-ascii?Q?6eLcWl2ZvlyKmnaTLCaUm4AIH4G9V+MVh0ZlkBdnjXOuoU+NqlcSRVEnV4vm?=
 =?us-ascii?Q?uOBUbhmMvR+8os7jPJQ+dhMyhzTYASE84FtscB6l+LDNQFVKA21e8lJ5pNrA?=
 =?us-ascii?Q?ovrlv89Aq5pZnuwND/nDJg6bH9NjM7ibqX8v32dYCIe2a0W/YN9c5M2RVdw8?=
 =?us-ascii?Q?eslBVinuvFv2heI/6BJgOaxutCVhnwUFx1+Eq2/wHFni4MRAI/hY+NjTMfHx?=
 =?us-ascii?Q?0n3SwwMSbzy9qSHO0OsEID9X+7a/XnhrFCjMXONHCClE8KXJGTtOL8D4ie/s?=
 =?us-ascii?Q?5G6C9IUH0ZIt75X3+lvjrp1t+ZxPcAbAmbRXCuTz/tD5A47lM3y7reDZwX2f?=
 =?us-ascii?Q?tIx+3ox+Bo0M6nr1lui264uC+jhEhIj/RX+DYByeyjYEOwXNpv4m/yLoIUGK?=
 =?us-ascii?Q?/XZsYfr7cg4X4v6Ie+6w9EEPNFAarLilnVqP2iAMuYONzcoQE8aL6tRb5x8Q?=
 =?us-ascii?Q?t8MaCff9wMQwu43ktjnJ09PvRJoqbXpyMPU+v48ftAui4XpsjpAXEsDbkqFH?=
 =?us-ascii?Q?s3tIU+ayCL4bZUpEhxnNAfib+FRw5m1uL9tpZtQlkwERhUJEyJzViJQNgaS6?=
 =?us-ascii?Q?aSh49XUGvuyNRP/qP+LtKOrKWi3t9OMzowXb6NvuXoyWYIEYfg1v+Glx8tvQ?=
 =?us-ascii?Q?8eSErrKHOYYTawevhnRv/Hb8nIhy1jM2oto+PW56AbcV9kuKY2rXvNUahIni?=
 =?us-ascii?Q?y4menAraFj9HsbGIhyaF9Fsa52W6wr5Ua6eyO+zxSeNihIhE8C8nnMcokOsr?=
 =?us-ascii?Q?iu5RYn7qr/+J2tDzoVUUJi5dsoOVwTOfWfe+T+BAHzJFluV5/V3igbBkQOd4?=
 =?us-ascii?Q?g5I0M70v8TRePy9cAwJuw7tiEqvtJw8duahGHcoWA0KiE/kB6NbQtF0y64b+?=
 =?us-ascii?Q?vkEWyAk5QKV1vCRaWI4o+PPM2H35w0okQZ68IqF1hVzdgE2MLBP2HN/Kd+2B?=
 =?us-ascii?Q?UPKrF87jug4rk3s1Y504O3UdGA17AYO1uqWArD+AXasT/AnIhYKR9FANnUyv?=
 =?us-ascii?Q?H6GfEQkChfDIqd5aLID9FprMf2P+t+l/5ZJCl1fJ+G2x76tYOqwn/X9DOMGO?=
 =?us-ascii?Q?N0UAIhvGb1lwPBIzYWMkVMwBBWVJNmZDKh/ZZ4/rmLGeTRILg33SvL7dOXGM?=
 =?us-ascii?Q?EcLmUMuJ/uwF7H31c1utHZzWLM3B4JJl8278+ahpLXur6Q5DvPn6UvQ2ejWG?=
 =?us-ascii?Q?d+82uW77k+DBpM74ghsXhhsPLG38oIJRmpu/1raqDOVgKyczWvpjj4dfMYF+?=
 =?us-ascii?Q?UO0V7WbmxYVAndQB8Pz0DF+acvEYWTIX63FTM/f455jZhdGFb3xmI+67nZDE?=
 =?us-ascii?Q?4Acg+WXTVxaXwK3gn6dWG4TcRwMAS00ByK5+ZKR2OrvarykU16upqlzsp9aE?=
 =?us-ascii?Q?ENIexlbh+vZWe10/KdpW2y7j8XhWwmVc8ZJa0OKC4NLUZSkSJp2NzaNU9jVm?=
 =?us-ascii?Q?K7JnJ/CTTNY5w89n3NUvLI7kq0MUH34nEycHr0LXXX0nPjih4+Z25fmiSoaw?=
 =?us-ascii?Q?yy0LVt+H29nyy4Squ6mBPwIRZQ7zeECgqg0CB3mb?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44284d0b-a250-4d4a-221c-08db91d918ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2023 15:16:21.0844 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0VqhQBPs5Aa3qqYa7mTP/Mz40gJn2uFG0LXJo2ONGzgsrVC+94XCzwxmThlyL6FM3MidIYHid774P0LNV6LKbHOtoCElDubAoE7LIV2Rd5s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6811
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v1 05/14] drm/i915/cfl: s/CFL/COFFEELAKE for
 platform/subplatform defines
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Sent: Wednesday, July 26, 2023 1:07 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Ursulin, Tvrtko <tvrtko.ursulin@intel.com>; jani.nikula@linux.intel.c=
om;
> Srivatsa, Anusha <anusha.srivatsa@intel.com>; Atwood, Matthew S
> <matthew.s.atwood@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; Bhadane, Dnyaneshwar
> <dnyaneshwar.bhadane@intel.com>
> Subject: [PATCH v1 05/14] drm/i915/cfl: s/CFL/COFFEELAKE for
> platform/subplatform defines
>=20
> Follow consistent naming convention. Replace CFL with COFFEELAKE.
>=20
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c | 4 ++--
>  drivers/gpu/drm/i915/i915_drv.h                    | 8 ++++----
>  2 files changed, 6 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index 39eab9ea02dd..cd85b9fed129 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -1740,9 +1740,9 @@ void intel_ddi_buf_trans_init(struct intel_encoder
> *encoder)
>  			encoder->get_buf_trans =3D icl_get_mg_buf_trans;
>  	} else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
>  		encoder->get_buf_trans =3D bxt_get_buf_trans;
> -	} else if (IS_CML_ULX(i915) || IS_CFL_ULX(i915) ||
> IS_KABYLAKE_ULX(i915)) {
> +	} else if (IS_CML_ULX(i915) || IS_COFFEELAKE_ULX(i915) ||
> +IS_KABYLAKE_ULX(i915)) {
>  		encoder->get_buf_trans =3D kbl_y_get_buf_trans;
> -	} else if (IS_CML_ULT(i915) || IS_CFL_ULT(i915) ||
> IS_KABYLAKE_ULT(i915)) {
> +	} else if (IS_CML_ULT(i915) || IS_COFFEELAKE_ULT(i915) ||
> +IS_KABYLAKE_ULT(i915)) {
>  		encoder->get_buf_trans =3D kbl_u_get_buf_trans;
>  	} else if (IS_COMETLAKE(i915) || IS_COFFEELAKE(i915) ||
> IS_KABYLAKE(i915)) {
>  		encoder->get_buf_trans =3D kbl_get_buf_trans; diff --git
> a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h index
> ba075bb183db..04107696e966 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -627,13 +627,13 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,
>  				 INTEL_INFO(i915)->gt =3D=3D 2)
>  #define IS_KABYLAKE_GT3(i915)	(IS_KABYLAKE(i915) && \
>  				 INTEL_INFO(i915)->gt =3D=3D 3)
> -#define IS_CFL_ULT(i915) \
> +#define IS_COFFEELAKE_ULT(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_COFFEELAKE,
> INTEL_SUBPLATFORM_ULT) -#define IS_CFL_ULX(i915) \
> +#define IS_COFFEELAKE_ULX(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_COFFEELAKE,
> INTEL_SUBPLATFORM_ULX)
> -#define IS_CFL_GT2(i915)	(IS_COFFEELAKE(i915) && \
> +#define IS_COFFEELAKE_GT2(i915)	(IS_COFFEELAKE(i915) && \
>  				 INTEL_INFO(i915)->gt =3D=3D 2)
> -#define IS_CFL_GT3(i915)	(IS_COFFEELAKE(i915) && \
> +#define IS_COFFEELAKE_GT3(i915)	(IS_COFFEELAKE(i915) && \
>  				 INTEL_INFO(i915)->gt =3D=3D 3)
>=20
>  #define IS_CML_ULT(i915) \
> --
> 2.34.1

