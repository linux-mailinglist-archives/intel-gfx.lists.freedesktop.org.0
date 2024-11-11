Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2DAB9C43E7
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 18:42:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62A9210E036;
	Mon, 11 Nov 2024 17:42:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ad8fodaT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DEB910E036
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2024 17:42:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731346958; x=1762882958;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mMraFIyVlQvHaHEl1GJmqbmT4UE1zCHK3gpVmZ0MCZg=;
 b=ad8fodaTv3UF4kE9ZX/dkO33kISksEv/CVDNiN8gL/d1k8uhdM5rLSQZ
 pCEkdNtyESCuPViQOiVklZD/E8OkRSAGe0tWlYofkXS3WLnPgKGJH7uU5
 yC5g/hbGJA0bPolIgjA5DhZsP8Cff7ExAxDpdVeTyC8clRotr3aOdH7kO
 ++DSS3iShp4n2q4SLVyUCSQtL/kc3qbTsM7yNdmJs8zvlZzz1w8cxIfgT
 iRjEcu+XYxZyNvIptbKA6m6ZhhWnSCHvLDvQ+nAN+g3DM13ZqAmFz5DTr
 s/j8m/FfoLSiAEjAt9LiT/awVK2TF1kbi3/Dw91z5cgSFPJMHMOoYJCgF w==;
X-CSE-ConnectionGUID: LH5dGhkMSQSVVGA1raJVbg==
X-CSE-MsgGUID: yLIJtFn6Q9Wit9zWmYywGw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="42252623"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="42252623"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 09:42:37 -0800
X-CSE-ConnectionGUID: 6ID3+C3CTpGyxUCPQlooQQ==
X-CSE-MsgGUID: 8QJxOPCWQSywcN19mLbtAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="86604416"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Nov 2024 09:42:37 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 11 Nov 2024 09:42:36 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 11 Nov 2024 09:42:36 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 11 Nov 2024 09:42:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t3NVnfMajhuu4Xu2gzHtCfoRmLXS9HGnpdx9L9r1OWbRHyWU1e0VGg0rL1qiZMTgzIDaYqJxylsjlkeZ5mpul81lUSemjxYKBHyMHXAXqpvuFzMGAC2xEUD+d5zH+TmrqaOXHaHWsEgK3IRKJIdssfs8kAFzK4Pvessikmozxai4s/EMN/FS674mM2hoxKYF2/5ChP5LIrGG+tSBXI908kO7SYOvuwUUkrnPCieWnngFyx4CaJ8IPCsf4YQ5E1UlyKy4iggW4TLWtcvQnyBVtlRpsFC1qZAJnqDeeU/fnYpbdKvMOycyjUvFgDIp1JN5bLonmjYEu0QodzuN2SyTIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=idp6CAhnMgvtFZBTdjHbtXBYBuQtWR+uN6jEnrNwlnY=;
 b=LOFvWwpNeqI7qfgDpZEvD71uTMajLOgsBMABPNuoYJ+MiZLFTYQSi99kwtS/zRNvV3UEcyeKU+6/B5NdSxuDnW8/IPTQtv04fjHNMr0kvdUmGp/nMiI6YLvdqmmJAQGFflmk5we1KeOBvhD4hDQ3HlgtpTTuyiYmF90sNn49sUuYqb2SfaA/BhQ8JmHieVjCsuxyuQhpQlhnwwKGWQxnC/M/rNNHuTHNYN0hAN7v1IO6FegInyYT+qOMkkx3fqjE5pZeLboBcHCAV0RdgNQ89mn/gdwu9XaWfcvWzqgELj6yKNq3Vxnlu4iH5BrcSDWXwkTqtu0RlxSvhqlOKR+E6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by LV3PR11MB8743.namprd11.prod.outlook.com (2603:10b6:408:20e::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.27; Mon, 11 Nov
 2024 17:42:33 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%7]) with mapi id 15.20.8137.027; Mon, 11 Nov 2024
 17:42:33 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kulkarni@freedesktop.org" <Kulkarni@freedesktop.org>, "Kulkarni, Vandita"
 <vandita.kulkarni@intel.com>
Subject: RE: [PATCH] drm/i915/display: Add WA_14018221282
Thread-Topic: [PATCH] drm/i915/display: Add WA_14018221282
Thread-Index: AQHbNBDG099DJONYWU6ZqPqh0gKb8bKxwGEAgACX1lA=
Date: Mon, 11 Nov 2024 17:42:33 +0000
Message-ID: <IA1PR11MB6467005250B7C4034148826DE3582@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20241111080808.3182188-1-nemesa.garg@intel.com>
 <8734jydvbx.fsf@intel.com>
In-Reply-To: <8734jydvbx.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|LV3PR11MB8743:EE_
x-ms-office365-filtering-correlation-id: 7d35007e-3308-4346-af91-08dd02783933
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?qSHlYB7rCXF1yMUHqMXrFS1QpSWKnxMTIFg32FJ+b17Sf4hP+ZjvwVtKhwOt?=
 =?us-ascii?Q?iQCkuiS5i24stTIXN9EkXqa0/nws5+DYuRvHShzkfh2Ee1AMh5l0tgh639/a?=
 =?us-ascii?Q?yMCSGOa5rT8gQdLB56U4v9oKku4xIKVDvTAbQ+2bzn0WCLYJsKCeNXs52cvs?=
 =?us-ascii?Q?yiuW4xmgM7M8AlhPsb8w1rJ1Oki9LjFubq5ORDhcUNHuPH5gcxrUVcupWEBC?=
 =?us-ascii?Q?mrBGMDM30j+B+ggk/2wsEVBg/TaYFaRJd3HhsPfIE/NUuadn2flmA5rSno5t?=
 =?us-ascii?Q?dsJQbO7FgAv0ujOaD2hCnixmY596/dNtuoYG0VyXZsvDdkM7/ITQJ1aXm+49?=
 =?us-ascii?Q?5AAoxGevuYwl8EIWGlAR22/W4w6SDHVNaBwmKsuVV8bZncfJFB8vhxrXj//b?=
 =?us-ascii?Q?JENpbrQfFK6G6kMGIGZOcaGgJWo4cIbpV6/DQaAHyTpq9MmZJK92YRRRW6oL?=
 =?us-ascii?Q?9lBzfiE8OWgRDgsEfwVZ7XSvbLsb9DOP2fkUjXPCbboat8IRoF91DoBKDwZZ?=
 =?us-ascii?Q?yH7b0oforL6rw+CmbYEotndm1waUVpbrRpu2QsuSeSF8RKHaCoP2r2Q5yMqD?=
 =?us-ascii?Q?0GhjFTps9XDN1EZ50Q5Ca2LcjZPvsFlbaSrfpsOm+pFjXBLU3BCc8qmg60zT?=
 =?us-ascii?Q?5C7TYD0kOWxmFEMS7P4eR9a1tAwyMqHEAZL+fex/6UA+VuZa9xQKkRqo9uvC?=
 =?us-ascii?Q?4iJJeU65xc9ASfRZ13bAcX2kYwDB/nC22NJvVYKdaYuKfSgrWXJXzdAuA49d?=
 =?us-ascii?Q?W2F/eaS2S5rDqOouaiM5a0gH68YFFR30HCiLFiuGiqLcxmIziNvF5FvjoSAv?=
 =?us-ascii?Q?yM9aTrOaBApCx8oh9rcSssKpck8V5LfEeeCMPv6UuD2kYLYdQBDJhybO/5yx?=
 =?us-ascii?Q?nDPLkLz7KO3lYGwZcd9cqm32Z0fu+rBWzYzUnXIT2ipSWBxCs/lMMvicmIeD?=
 =?us-ascii?Q?YoJVD5QBkomHco4v4xPSik8C5e9sVj2lNmi0GkgeALDknomGeVNZ0Rh29da4?=
 =?us-ascii?Q?kuW2N2hSvHlFcfWUUMf9RYJILTXvTtcuaJVJQF8SLSJpgDAjw1aKEvq/mEZ5?=
 =?us-ascii?Q?NAjZD1t4ZTMB4shc6xyDLfNMxYCFRVwb11qWUP9WtF3I/3O3CPogUOwoJSr7?=
 =?us-ascii?Q?7Lqnx+PsN4yWJWWEQBBe/90EC3wDJ58j2GcFn0cqOPJR4C1crlyLln4LZUZ3?=
 =?us-ascii?Q?ninbo2pg4oASLhaC+gc3s1AdBjB5YAhCUH3sFfN37SWRczs4BdDHaOLh4liE?=
 =?us-ascii?Q?FuRCau6nsrkZSMLnq2UdWmY/ui8cayUTS18WH9bcZSlaH0CXUI169qPHwArt?=
 =?us-ascii?Q?u/z5eJCEGCNHpRFY4KKe98VL9/4inxP5GiZiHpv0Qlqy/RreWDAD/ocs9lkf?=
 =?us-ascii?Q?VIitWTE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Zis/+EzzBnX3QnxWi1f0+1AbRJToBLsws8frqTfzggEO+/QlJH3xa79jQ+ym?=
 =?us-ascii?Q?MtpPt8VOFMh7UZe0FYORw2LY/kKz5zx2wzLhIteeYWFxXGHSvz5OOeRtcexB?=
 =?us-ascii?Q?s7Q3S55TrJ1w5KX7r0dF5tjUfxjg7NZG/yUMzhwD3w45+/30R/KnpDefcsAE?=
 =?us-ascii?Q?JC96CbWzwk2z4URxd6UMnlzvz6e7iAsH4UYRhf58Q2eyLqAzRvjE9TwANHGU?=
 =?us-ascii?Q?U63iEy5VBBiCq2NxBM+koyg/I81n2dCfCv1ffdJJZ0qBkzrrXnBHWI4sPlZ8?=
 =?us-ascii?Q?T+YpAeiS9rnU2s61Zuf+AdukxwiW68klDewxc9BkiO+Qrr478mc16I7L2xEA?=
 =?us-ascii?Q?FeL1SmyM/0AXqx0oBBASNDlAxxPLOSFfeDf+235vAH+okvaJbqi5nFg7i2cH?=
 =?us-ascii?Q?KRa3cQSVvGrhe62jxn2tha++cPE3wGNFle/2RtyR2tNcQ7KoqFL2yFcpputH?=
 =?us-ascii?Q?V8SZK8JLulTUDfCmZkX2vTvdXyQfddc7+uQyBfaSA5AtG+6bZsQ78OpfmfJ2?=
 =?us-ascii?Q?Whw7AE7vyPYaoefofdfjOqaZuF8Eq8JHH69SUTsKk8tt5/2MM51HlrZOntCS?=
 =?us-ascii?Q?TVST7DMfJPwv5Y/fpwIX4oPI+DRhEY8E4ofAUmgezjhdnvBzvsWJkktH4hRe?=
 =?us-ascii?Q?tC50w1WNq5TDL6uNbL7pvyXoS/ONo0FeBJ7CVGOpBtZ8IclVAxo3Q90mC/dL?=
 =?us-ascii?Q?B36mQ8GjMMPfpwSUI65fAfLuEn506B6JagsVrmk91Bnt+lBgD3G42f9BavxM?=
 =?us-ascii?Q?gGqeQ1TUeZ7syDR2AVv95KnrUB9nETvI+8rZBHKS/4q4GbkntNwprVjv6Biu?=
 =?us-ascii?Q?6TzzjnliK/n5jD0KypxwuOU2P5rlMj33qHQVnZVQh2/cH14zs7lnWBSXIIpK?=
 =?us-ascii?Q?qZlHgQYJlfI/tv3ASzVh1mVmRS8SHLobSKEOvDj+pLj37eCtGCUyZRY159xO?=
 =?us-ascii?Q?MyTElbSnvnvdHA49XxUrA7qMF+Cs6zqV8ZqjYQyEaXFvbvDwLe7Jq3mTQ7Uw?=
 =?us-ascii?Q?BlTolcLwZ3YF7FHIxl3daHZjt8MVXRWfYM7R2mN4LaoBn7Fs7ZJ9BEVo/37K?=
 =?us-ascii?Q?LDMigbhR7OCjt/7JOmnm9rrzyPQgOLsggenrcge9BY6K68dzilGfGnb5R9dR?=
 =?us-ascii?Q?C3xxGAXuVLtA9ky1bynPiKN5cNHlLuI342ob/PII1mVd2YqCIFMvBr6dQQqD?=
 =?us-ascii?Q?Q0ju+YjMs3ICpNh/T9kIZ4Fkoromwrvyfw+hflE2+WQh/jrk7yaZP2bDEf/v?=
 =?us-ascii?Q?4fCoodJKCub1d46bIRBPzj/+ROP2VnzfkggdvktllQEafRGTibZdDOxECzo1?=
 =?us-ascii?Q?UO11VVJ//1v+EYp7VF41C4fbyDG9iHwNXuwR133cyDGHiqFAQ3QG8cQkOnsa?=
 =?us-ascii?Q?aT7rG7S06gwSMhup9/AjCJGP1lVdrG8tC9HXUTR0k2ffSm9arHmqz9YFFxJU?=
 =?us-ascii?Q?GBG3bvhMP4CpuCvBOOTyQiyO6ku392sVaD46wd7zUDzr4c8b9M5sh8TEbMwf?=
 =?us-ascii?Q?Y+Vg4D39zw2XvnEA8L7YkUvGbwHsR5Vxug1fsyY9Eu3HVxa33ounEBgkjiCX?=
 =?us-ascii?Q?g16ZDMi0eaXBtUl8rX6frgoA7I5LLfY8OSWBPK45?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d35007e-3308-4346-af91-08dd02783933
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2024 17:42:33.5066 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WTpEMxMahD7ahSHxEC/kRANrI6noBp883JOJCO6c+l6sMofEkQJ7tM2FL2hBtVuV6DJQUkknwhlqCkM+0uEySg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8743
X-OriginatorOrg: intel.com
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, November 11, 2024 2:03 PM
> To: Garg, Nemesa <nemesa.garg@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Garg, Nemesa <nemesa.garg@intel.com>; Kulkarni@freedesktop.org;
> Kulkarni, Vandita <vandita.kulkarni@intel.com>
> Subject: Re: [PATCH] drm/i915/display: Add WA_14018221282
>=20
> On Mon, 11 Nov 2024, Nemesa Garg <nemesa.garg@intel.com> wrote:
> > It was observed that the first write to DKL PHY DP Mode register was
> > not taking effect, hence rewrite this register.
> >
> > v2: Rename function [Mitul]
> >
> > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > Signed-off-by: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 15 +++++++++++++++
> >  1 file changed, 15 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 769bd1f26db2..f955d89951b8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -2104,10 +2104,21 @@ void
> intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder *encoder)
> >  	encoder->disable_clock(encoder);
> >  }
> >
> > +static void
> > +tgl_is_dp_mode_enabled(struct drm_i915_private *dev_priv,
> > +		       enum tc_port tc_port, u32 ln0, u32 ln1)
>=20
> I went ahead and asked ChatGPT what it thinks of the function name:
>=20
> If a function's name is tgl_is_dp_mode_enabled(), do you expect it to ret=
urn a
> value, and what would you expect it to return?
>=20
>=20
> It replied:
>=20
> Yes, based on the function's name, I would expect `tgl_is_dp_mode_enabled=
()` to
> return a value. The naming convention suggests that it checks whether "DP
> mode" (perhaps "DisplayPort mode") is enabled and returns a Boolean value
> (`true` or `false`).
>=20
> In this context:
>=20
> - `tgl_` might be a prefix denoting a specific category or module (e.g.,
>   "toggle" or "Tiger Lake" if it's hardware-specific).
>=20
> - `is_` implies a question, typical of Boolean-returning functions.
>=20
> - `dp_mode_enabled` likely refers to a state or condition ("DisplayPort
>   mode enabled" in this case).
>=20
> So, I would expect `tgl_is_dp_mode_enabled()` to return `true` if DP mode=
 is
> currently enabled, and `false` otherwise.
>=20
> I will try to come up with some better name. Here if first write fails on=
ly then need to re-write the=20
register again so don't need to return any value.
Something like icl_dkl_phy_read will be fine?

Thanks and Regard,
Nemesa
> >=20
> > +	if (ln0 !=3D intel_dkl_phy_read(dev_priv, DKL_DP_MODE(tc_port, 0)))
> > +		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 0), ln0);
> > +	if (ln1 !=3D intel_dkl_phy_read(dev_priv, DKL_DP_MODE(tc_port, 1)))
> > +		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 1), ln1); }
> > +
> >  static void
> >  icl_program_mg_dp_mode(struct intel_digital_port *dig_port,
> >  		       const struct intel_crtc_state *crtc_state)  {
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> >  	struct drm_i915_private *dev_priv =3D to_i915(dig_port->base.base.dev=
);
> >  	enum tc_port tc_port =3D intel_encoder_to_tc(&dig_port->base);
> >  	u32 ln0, ln1, pin_assignment;
> > @@ -2185,6 +2196,10 @@ icl_program_mg_dp_mode(struct intel_digital_port
> *dig_port,
> >  	if (DISPLAY_VER(dev_priv) >=3D 12) {
> >  		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 0), ln0);
> >  		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 1), ln1);
> > +		 /* WA_14018221282 */
> > +		if (DISPLAY_VER(display) =3D=3D 12)
> > +			tgl_is_dp_mode_enabled(dev_priv, tc_port, ln0, ln1);
> > +
> >  	} else {
> >  		intel_de_write(dev_priv, MG_DP_MODE(0, tc_port), ln0);
> >  		intel_de_write(dev_priv, MG_DP_MODE(1, tc_port), ln1);
>=20
> --
> Jani Nikula, Intel
