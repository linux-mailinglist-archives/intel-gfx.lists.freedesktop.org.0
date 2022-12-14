Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E3564CFF2
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Dec 2022 20:15:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A26010E44B;
	Wed, 14 Dec 2022 19:15:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45A8710E054
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 19:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671045334; x=1702581334;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=guoF82srPV4k/wyFirS07ChjDN9XHHcVqtq5NUNXCn0=;
 b=GJ7VcdqvB57sJbdrjDfj7+kgbK8feFD1wSeoUlciwtWcG9EK1dIHT8rz
 6P82QfFzcG+4npLOr9bIYAEF9ddUuaNeg8IW+ulhH7dAUcwHvn/4zCcz8
 V8VzEOyvLJnUyWHGzjskKrPicOy/5LGQv7hl3sdlCwdjQiXgjMIixKDyZ
 kmGSo4j64Cvj1XaHxLwdrqPj2KDbX4Oem02B8JWFhQhDAx043gZ1fjmDp
 9rN4UKTOonlP2gD6p5fjVY9McyZpzAG1mUZdoEiZDbjBTQnHzi52Weu1D
 mU1v0yJPfNLRdYoYn5BP8PXYJjNdXTpcqrwQhQcHc4Xd+97oOihs3311A A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="345572293"
X-IronPort-AV: E=Sophos;i="5.96,245,1665471600"; d="scan'208";a="345572293"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 11:15:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="756002482"
X-IronPort-AV: E=Sophos;i="5.96,245,1665471600"; d="scan'208";a="756002482"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 14 Dec 2022 11:15:20 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 14 Dec 2022 11:15:11 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 14 Dec 2022 11:15:11 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 14 Dec 2022 11:15:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ti6SGb5g2wA6NwotrciBRkteBPQql22G+yfnE3FNo/ocncYtW8BcwsF5etI09Xwb20Xc0T5Z/oe7SEsdeW/YVOBkqBC6fXSRDr9GUetXXqv0asWe7DgdxEaVyoEczU+4isfSANEi67fqKT7AaYXxXWe+c5ws0+7waeuRUzoEiGRrnkkfXKfBgYTKfgdUiFx6D/K09Coys9UPlzK1/1A4lCBxe1yaupWan2Lw9UVgRFNIxNqM3ohv0c2/i2PttWsIFsVl/GrLVJLB5hBtuGI0oT2XVJT1D2cCyRtyJIpIMCZi4msCYL72AqVmSTfSu2HlFCUeLQl3WqrLNknq5JJJ/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IDeSQ6YY21HrUkVHhPwgQQ97/GvUVyWe+OLtmPxiHFI=;
 b=CmdFjopUN1a3a7f4tlXohDdXfJGZJ69p+jtMokc5XW9+KBqgOvzwZAs5CvRg4buDKlGX1BQ1ZewNHmqqCX51T3c/kg6fIrj3+J1Ku11Qmpxgz7xLS2Yet9ekIFML6v4hBVmFPvXjOB/3Sf+3Jg44DiaqXaPMoL7hpEWFv3bNoT2a7LXO6bR6i4l3JJJzuZ2t/k+ba0GAIYEf3EOb9UieWNbcSXeIxPZkRzhX/Acr4LBmOujqBqKlkEDd4utTCzhzAXBnt6br0nxudO07tdC+exWJ5hQfWufqWRBWtiTxUAPxH4tnoND6rpqXQ6NQkMnMEKC7aXtrIIloxwH5dUNqvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by MN2PR11MB4661.namprd11.prod.outlook.com
 (2603:10b6:208:26b::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.11; Wed, 14 Dec
 2022 19:15:08 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::1ee7:a883:fa30:3eb6]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::1ee7:a883:fa30:3eb6%10]) with mapi id 15.20.5880.019; Wed, 14 Dec
 2022 19:15:07 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/1] drm/i915: Implement workaround for CDCLK
 PLL disable/enable
Thread-Index: AQHY//D6YOCgrj9gQE2GNYbsadLkEK5WTlGAgBcAOgCAAJHXYA==
Date: Wed, 14 Dec 2022 19:15:07 +0000
Message-ID: <CY4PR1101MB21666C38CA97D519842805DBF8E09@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20221124103623.13974-1-stanislav.lisovskiy@intel.com>
 <20221124103623.13974-2-stanislav.lisovskiy@intel.com>
 <CY4PR1101MB2166A66996BCE28F1B6B70C1F8129@CY4PR1101MB2166.namprd11.prod.outlook.com>
 <Y5ml/OHxUUU/GzzA@intel.com>
In-Reply-To: <Y5ml/OHxUUU/GzzA@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR1101MB2166:EE_|MN2PR11MB4661:EE_
x-ms-office365-filtering-correlation-id: a3a9c790-8573-48d0-cc91-08dade07832c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 99eze3vx4ETCUzVzkYZOqJnWYIiBIzREEHC8hE9ZS25JnXqIUVLLQpn9ZP9cKrAMSUuKPWcUTb/tAmuM3E//Z0BG4/DNtlsSfLQr8/QS04IFaxX2pSa5X6I5g+2O3ULRMlftCB7gjZ5QnpuVquNNcBx2rWLvXuGtqgt0TJQAzrny320Lo67/+JK4TkGSBydPuo7/tg9BqCDBX55vIICQYo8EfydNFiB6RTF1gaNXRatt1HqMTxKwn3cON9TDZ/Xey8Nb9O+MjskXQIrgNbDe81CAtnve3mDaNjPP8i6qLJrOMBgVg62YA/Z6yLHBfTxUSKl1UUH/+BkuZc3vamJ4z2ZQ3UHXeWWq7vWYBZZPr/m6QxTVFl4CsAPOr20U51xmFTDtm5jdWDisofzI/AQaF1dAg7HhptdKsZ2KP/UOKajEN74Yv+k7tRA48YFdRWEYBdyY/37DUAR5pTwch/F8gpX4cJSIB8UkOgL8FJUiYy/3XIxWZl7UFSQb5o0x5dwtDBjYzjb78aChI/X2cE2DFfdo+WqMtIMdUqefxWZ6ZCw4xlPDUV5F2fLz9UaD/dT2+Qdz3Msb8nCJS+5lD86fd9yY/s5Ork7lHn3hxUoWAHEg6GZy69S8vpoht5ktCQDrIYDZAc/gTcPGpGs9YrscyOZEsY+hSxE9nOIWW6Y5IzMUEILDqfB7MjUB521CSVTeMLHynrCxq2HRUD218mohZA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(376002)(366004)(346002)(39860400002)(396003)(451199015)(6636002)(54906003)(52536014)(6862004)(8936002)(2906002)(41300700001)(4326008)(8676002)(66476007)(76116006)(66446008)(66556008)(66946007)(64756008)(5660300002)(33656002)(55016003)(83380400001)(316002)(38070700005)(86362001)(478600001)(107886003)(186003)(26005)(82960400001)(122000001)(7696005)(38100700002)(6506007)(53546011)(71200400001)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QtZcqww4qYNLqGTL6+fXN6xmx4pi3KV1IwrIKGPUDxozn7ANe96jqqy/IUtD?=
 =?us-ascii?Q?Fet6Tl42hGGZjrzK73gAKS8YFXyL+MWU/FyTNfcEdtRDbUCZ9DYIIa8GSSim?=
 =?us-ascii?Q?cfokx3H2NV3vB8edXBPgrHnau6vwG1iYDiqdDzIOI7N6TbxQdgvEXarJY3Dz?=
 =?us-ascii?Q?EE8Yai1u6Mj74CtUgY7jQrC/VY2gRylzbw8Er3RZlQbB8UcaToGu/Y3sEcoq?=
 =?us-ascii?Q?IwGt6HFVaI5wlj/p6u4JFqXkMFSzQHFfaA9bPOwgW06ll1+izoH+NoBdkV9R?=
 =?us-ascii?Q?D0OueiqWx3Fal0juaNOd6xhgaOLMgA2p2AHDrP22W+0FqPK4Zn+GjPD3QnF6?=
 =?us-ascii?Q?TXdgt2oXoM/KfR0lw/sI8wQ0gEpH9J0VjNnW8PZ+/RhTYrGrhXjnw5jIGPPS?=
 =?us-ascii?Q?XBIbLI6X2npoN0mByOXlC+4/K7GnV5IrjytiDmiwGUbuX7aNh0BU3oQMba99?=
 =?us-ascii?Q?nZppCp4wk9gBnRxnwA59h2HX5Ko2TZA4jvRw0OOTYSRwSg55v5VQ7s6+vPLH?=
 =?us-ascii?Q?zoq75likrvOxiVkf4OkqKoO2LT3IRa9Ht6rmuvPBxZd9jZ6E+eKGu40Qx5H9?=
 =?us-ascii?Q?W/F2MT2UhDUS6qF+cQCJs2aNVmKaCXKnq1vzPyGTjaU0WVMZwjmaQhWErHP0?=
 =?us-ascii?Q?5dS2AJZUpLKlCOfyuyBnb2/nJDe1KQuroDr8l+DwuWe5YxelomaCVM1UmpSW?=
 =?us-ascii?Q?n+7av3TrxYZkC4vyeb0/eDVAiLUDC14yQ7R0GTRHNTaglWIlXsTiH165lU8a?=
 =?us-ascii?Q?54nrFoG/W5Sg/abnGOAmccNLbMDtVz/dIjvvQW33i0s7YbUGtbviPWIZ9tvf?=
 =?us-ascii?Q?iMoMEoziTJCeJJdDBQyT+OYcYGGi/B4+1qw26IwyhigkHPVyVuXFi+bHY8ar?=
 =?us-ascii?Q?VO/KGK9XQQLES/Cl7O5aThDt8P4AuQglm/h2r8ZsG6xMoLPlzgtiMDZ8JC+O?=
 =?us-ascii?Q?Cr4tMXbzCBT1MGgOTsth/4q+5VWz+t8JyLow+jFWOXwbza4zXSXmS4rCreNm?=
 =?us-ascii?Q?z1TSv1yJHyW8cQybfsVJoPOturVKPJiRPEPAx5cdYeRVNMwgWszpDMoEK4rw?=
 =?us-ascii?Q?vUcb/j1SD+v6Ah2PJZUShsKRYv7UXy4zPXodBRzObigK2Q8GVmqaaeutpYQn?=
 =?us-ascii?Q?8nzZ+WrZ4SscHjG7u86TD3ZAclfLSUQMf8x+p7/vnMkPsg+4WjmaLTf9pd6Y?=
 =?us-ascii?Q?zWtMt5qDnGiWy6cKfC8TdDDkW9g04uHh7FvN3bo+E8fBAWj4MP8NfVek+b3l?=
 =?us-ascii?Q?YhSkoR35yGP6+paqIvsWasLnGlmVnFeCVce1krSo775/JZKmKvdm8E4tEZvb?=
 =?us-ascii?Q?dCNv3NvIGCQtKxreUhsDBjeHw9x7E34shprlmot1qSuLpVSCI1en0t2hLveh?=
 =?us-ascii?Q?rJvvUzogHm6y/kLaIdcg7LpmUMf+fACP+FiP7rWHZA8SFOP0DGlafxXlZOGF?=
 =?us-ascii?Q?+wmtCBW4XYvoNnNiMOIqUOXaCHbWzBQa8chxWS1m9txEMbf65qv/XiqK4qTM?=
 =?us-ascii?Q?jote6Ri+z6X/3/M+/+6ZfDNt3yTzP5QdMcVDeRloQjsKIDgfWb+yHpgTCw1Y?=
 =?us-ascii?Q?JAsr0z9fd9uGfrNlEJGkicoL4NNcv2852JPsDQto?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3a9c790-8573-48d0-cc91-08dade07832c
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2022 19:15:07.2766 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vcIvhBVm5yh+Qp4HO5ZqMab8xfvK6ioL1QoGbgg0XTADLCcR5L2NUBAYFHLZG1NzfUCJyQTuxm1Fy+k55lSCiwnji9bxCxvg3ZksqnbHjrM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4661
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Implement workaround for
 CDCLK PLL disable/enable
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>
> Sent: Wednesday, December 14, 2022 2:31 AM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>
> Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Implement workaround for
> CDCLK PLL disable/enable
>=20
> On Tue, Nov 29, 2022 at 09:19:40PM +0200, Srivatsa, Anusha wrote:
> >
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Stanislav Lisovskiy
> > > Sent: Thursday, November 24, 2022 2:36 AM
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: Nikula, Jani <jani.nikula@intel.com>
> > > Subject: [Intel-gfx] [PATCH 1/1] drm/i915: Implement workaround for
> > > CDCLK PLL disable/enable
> > >
> > > It was reported that we might get a hung and loss of register access
> > > in some cases when CDCLK PLL is disabled and then enabled, while
> > > squashing is enabled.
> > > As a workaround it was proposed by HW team that SW should disable
> > > squashing when CDCLK PLL is being reenabled.
> > >
> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_cdclk.c | 14 ++++++++++++--
> > >  1 file changed, 12 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > index 0c107a38f9d0..e338f288c9ac 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > @@ -1801,6 +1801,13 @@ static bool
> > > cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private
> *i91
> > >  	return true;
> > >  }
> > >
> > > +static bool pll_enable_wa_needed(struct drm_i915_private *dev_priv)
> {
> > > +	return ((IS_DG2(dev_priv) || IS_METEORLAKE(dev_priv))
> > > +		&& dev_priv->display.cdclk.hw.vco > 0
> > > +		&& HAS_CDCLK_SQUASH(dev_priv));
> > Redundant check. If it is MTL or DG2, then it will have
> HAS_CDCLK_SQUASH set to true always. Shouldn't vco be 0 instead of > 0.
> The commit message says the hang can be observed when moving from 0 to
> > 0 vco.
> >
> > Anusha
>=20
> Idea was that we probably should bind more to the feature rather than
> platform, I agree checking both "IS_DG2" and if platform has squashing is
> redundant, because then we would have to add each new platform
> manually, so I would leave HAS_CDCLK_SQUASH and then at some point
> just cut off using some INTEL_GEN or other check all the new platforms
> where this is fixed in HW.
>=20
> Regarding vco, the icl_cdclk_pll_update func works as follows:
>=20
> if (i915->display.cdclk.hw.vco !=3D 0 &&
>     i915->display.cdclk.hw.vco !=3D vco)
>     icl_cdclk_pll_disable(i915);
>=20
> if (i915->display.cdclk.hw.vco !=3D vco)
>     icl_cdclk_pll_enable(i915, vco);
>=20
> 1) if vco changes from zero value(i915->display.cdclk.hw.vco) to non-zero
> value(vco), that means
>    currently squashing is anyway disabled(if vco =3D=3D 0, cdclk is set t=
o "bypass"
> and squash waveform
>    is 0), so the W/A is not needed.
>=20
> 2) if vco changes from non-zero value in i915->display.cdclk.hw.vco to ze=
ro
> value(vco), we are not
>    going to call icl_cdclk_pll_enable anyway so W/A is also not needed.
>=20
> 3) if vco changes from some non-zero value in i915->display.cdclk.hw.vco =
to
> other non-zero value(vco),
>    which can happen if CDCLK changes, then icl_cdclk_pll_disable(hw vco!=
=3D0
> and vco!=3D0) and then
>    icl_cdclk_pll_enable would be called(hw vco is still not equal to vco)
>    So that disabling enabling in between is what we are interested and
> where we should make sure
>    squashing is disabled.
>    BTW I have another question - is this code even correct? Shouldn't we
> avoid disabling/enabling PLL if we have
>    squashing/crawling? As I understood the whole point of having
> swuashing/crawling is avoiding swithing the PLL
>    on and off.
>=20
Squashing works when we don't need to change the PLL ratio. We fix the PLL =
ratio to say 307 (this can change from platform to platform). Then squashin=
g can be used to vary frequencies below this. So we set squasher to ffff it=
 will mean highest. We can use squasher to change frequency with squash wav=
eform, max being ffff and any value lower will take lower frequencies.=20
Cdclk Crawling is used when the PLL has to be changed. Eg higher than 307 t=
hen we need to update PLL. In that case we first program squashing to ffff(=
this will take to 307) n then use crawling to go up to the desired frequenc=
y.

Anusha
> Stan
>=20
>=20
> > > +}
> > > +
> > >  static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > >  			   const struct intel_cdclk_config *cdclk_config,
> > >  			   enum pipe pipe)
> > > @@ -1815,9 +1822,12 @@ static void _bxt_set_cdclk(struct
> > > drm_i915_private *dev_priv,
> > >  	    !cdclk_pll_is_unknown(dev_priv->display.cdclk.hw.vco)) {
> > >  		if (dev_priv->display.cdclk.hw.vco !=3D vco)
> > >  			adlp_cdclk_pll_crawl(dev_priv, vco);
> > > -	} else if (DISPLAY_VER(dev_priv) >=3D 11)
> > > +	} else if (DISPLAY_VER(dev_priv) >=3D 11) {
> > > +		if (pll_enable_wa_needed(dev_priv))
> > > +			dg2_cdclk_squash_program(dev_priv, 0);
> > > +
> > >  		icl_cdclk_pll_update(dev_priv, vco);
> > > -	else
> > > +	} else
> > >  		bxt_cdclk_pll_update(dev_priv, vco);
> > >
> > >  	waveform =3D cdclk_squash_waveform(dev_priv, cdclk);
> > > --
> > > 2.37.3
> >
