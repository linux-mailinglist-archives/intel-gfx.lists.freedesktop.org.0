Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31943A49CF5
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 16:13:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D74510ECD1;
	Fri, 28 Feb 2025 15:13:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mg6rNEGe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60BB710ECD1;
 Fri, 28 Feb 2025 15:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740755632; x=1772291632;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=uBPqlV+OIP4ykh4cNclT5GaA98l5hUCkE7YWnw06vbI=;
 b=mg6rNEGeCQXVzuic+PcwdO3juhg7Kd2blhPr0R5YdzdPT5OrBjJtHhHi
 oLcngYQmFw26JhHPyXb0akLFnAixB09AfxNu5H1l3ZAsuxkwkLdcfTjHG
 9+MjMr/lHSw8oxUplWYk432O7hml1oQWt9UMJQqpdRspvzf2b5XeTNcHL
 WydN19TR3JpsAXXq40mps3erCDEEGzo9mB6k2Wi+KzYyL8Wf1ZF+yJ7Mz
 U4md9aldoP5AHyqBJVkGFjGgKQoXZXB6yBVP+VHJCAVp+kqv+4TEz/BcY
 57SFOb/9ORR7sZbcvN8ppYNyoFo3utXWkERdmP5FL0d9V/d6ikXG5fS2a g==;
X-CSE-ConnectionGUID: Oac6g9ZtREyiA0thByV3hw==
X-CSE-MsgGUID: 2CuB4yaUQ4uUviGon8fJiQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="41880503"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="41880503"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 07:13:51 -0800
X-CSE-ConnectionGUID: mhfDaoZqSdqiE7bcKpgOEw==
X-CSE-MsgGUID: AO3Ics1kS2CH0k+krCuNNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="117228272"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 07:13:49 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 28 Feb 2025 07:13:49 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 28 Feb 2025 07:13:49 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 28 Feb 2025 07:13:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DVDxXHuYlXYUncLIV08MSMAoskvRIyQ028rCm5bXv2UwM199rrx5/cVWh2HgsOaHPFXN5jMDw4czXXHo+UD3+dCn6OZpBwxw63eiN517XQHTWQDK6R5Ksj35bEd7g+4nGjNVkwKpY7YAutPLU6FmO8L8MgeAaBhM8XFsjT4ushcbQDP7G1L6Ncit/jsTApuXMJSqkTHsMnm+4H3uC76gWPohCS8BljhYvJ6YOmzA4JeOZBifjsTGrfmy6SujbnEdeaxlUMzX7QfW9qhI2PVi9d7KXuSgdq4kuY1/jPzIt2OoOCX+bAf94YuHP8yfXQLvhHb6zYczYZFX1JM9Xw/qBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vOAzplxum9ZYcDQyek+4j1osmtQljv4NOgNOze/yzI4=;
 b=emRdpBFG1dPtFbrvKcmdYLKtQ1eNRkqI6fanyyFV6Ao+E69y/sJp2OyhborIUUOy5vnznWESezNMfmqEmAhq3bRGfH2GA7L1yOtOJ1VcIqj052U7RDiWNiSiALaiD9poc0jRPOtSU69QLrvUjo7MUwYWy/cTr3W+6bbME/3pPlEbSsUwlh6Iu/BR0Mm18SNeNCv7NQDTOIT+9AhLbjqU/cvSGdImcXVP5L6wBmVflzJkUI7UdS5zq+Bq+ui0WKApPeunwQ1F1vF+guVqnV5Dvu2SYupNM3t0j2+z1KuZp9HageL+BdzDWUheoAyKC5wB1TRwdm/CGQgSv4wVAU1Avw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CYYPR11MB8386.namprd11.prod.outlook.com (2603:10b6:930:bf::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.21; Fri, 28 Feb
 2025 15:13:05 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%5]) with mapi id 15.20.8489.021; Fri, 28 Feb 2025
 15:13:05 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 3/3] drm/i915/hdcp: add hdcp sub-struct to struct
 intel_digital_port
Thread-Topic: [PATCH 3/3] drm/i915/hdcp: add hdcp sub-struct to struct
 intel_digital_port
Thread-Index: AQHbid9GZySUamqaLECZQYtM8Znh87Nc0qZw
Date: Fri, 28 Feb 2025 15:13:05 +0000
Message-ID: <SN7PR11MB6750BE0E9FE582E8CE563B32E3CC2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1740746939.git.jani.nikula@intel.com>
 <9da4be57b068acd06dec8b93977f0a70627103d4.1740746939.git.jani.nikula@intel.com>
In-Reply-To: <9da4be57b068acd06dec8b93977f0a70627103d4.1740746939.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CYYPR11MB8386:EE_
x-ms-office365-filtering-correlation-id: 43e70bc3-5b65-4355-6000-08dd580a670c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?0tiTM86M4gj55vgavdmHdVj9C0WqjjyWGB2nsfpFErOvbE16gU5RX3WKh7yQ?=
 =?us-ascii?Q?1KviHjwo76tTdLlYRdv2ugOtNGf6JeYlGnTrNp066J+9f82AHMNIvOnuvxcP?=
 =?us-ascii?Q?svV053NimsALhyKsr/FZQstpoet9tvbjjHi/mLqM1KV80ivys6ESwUfFyjEY?=
 =?us-ascii?Q?NQW2NX+mNLlUfANN1zZfuV8UVZzosYuJYzuDTc1mB+yem7NsHODcXf1KeMqa?=
 =?us-ascii?Q?WW8TGCyuTyKz94lBz9qBoY3F3NEGsomaBOl0KqzQdsYEk92I9k6sgGpu70mz?=
 =?us-ascii?Q?WwIvPvfkMxS7Nq9ZNHj7ZhEE3vqw4bw7qJaNKbZXnQ5oWk8VNYAP/GwHEDn4?=
 =?us-ascii?Q?BrGZZijtutkdAXQzo7lS9AJs3XU3g2NGZGSg2A6+c1pu5y2m/doCZAIpeY12?=
 =?us-ascii?Q?oMuBHyNI6lZR//v491k5qzSpsRr5G02kniQUOMjHKqbObQCqDn0jGl9+IkwF?=
 =?us-ascii?Q?gjAymqcqoECU+9im3natUQmhXCIuplJ0hCNxQh4oFBFnL6D9UED1W8zYh/P2?=
 =?us-ascii?Q?tfinIuJN+e/I4Y267RYZX/xLCKtVSS5JhhtaUZCg/v9BnhBELjzpAuDWEmeA?=
 =?us-ascii?Q?QE9tSVpotZ7gxgetr2HhpZsoleqWITPBUnyWaflSfOUhet34WqQ0l0FZhlgQ?=
 =?us-ascii?Q?+GtiEkUtYDFA04E4WPAXe5SWbXaLS/nZKiHigQxJzQOiMfjEhSkuYv5JamEY?=
 =?us-ascii?Q?YGJbLyLGyLd/tODQ5NDdS9d86kLo0FHmDkUC8ZCu3Kur15IQ9+Yu+Z9TTp/2?=
 =?us-ascii?Q?+NU21jotwKvxYeGy/+1Tc0qaBY7N6meEZWGHbFgqKqUoa/fs4N3qJ2+ewAS5?=
 =?us-ascii?Q?H1njgdZSmMuXf6pWuk8TvSh2ESPhwmuif+lRmlZzRFaZzTj50pcGeHn3KCwC?=
 =?us-ascii?Q?tbePp8ElYUGfkGKgfI0IzxMVlxRtc4awZ6C4+MWwkRrDpbcUKj4s6rj2+JlP?=
 =?us-ascii?Q?twIBoFRedxC5w8I3SeGhoOVhF/LYVU9r4aFbnLoAuhkz5FXmIMpnYdAc3vKh?=
 =?us-ascii?Q?sGmgxfNc47joRv4594HBeHZvo0TL/16g4JP94Rv6XZWHvayMwg03cKKMhMb0?=
 =?us-ascii?Q?Ggb5ifePRt1xCGFg2YoDwCNUC5Mmfp7a1/qxpdOneOseDohDmRJyaYmt5Rpl?=
 =?us-ascii?Q?XZ+9EvlhgjmcRruWn4CgbDGRInh6h5lOKb8HVaR/7+hq+If6Qy4R38sp7W5V?=
 =?us-ascii?Q?1KlQw+ddhoMM44LZ+ZIZUrRvH4h3Q5IMw2Wrgmr2QuDnb+d9OJ+jruwTFlK+?=
 =?us-ascii?Q?XXsrzyV7uj0lgr3NyA3n8BrHOXfIWWcyEwMCDxGkfZuS0Cpt5Rggl5Yzc4CE?=
 =?us-ascii?Q?PXB2LVa4FA3rtfW1ufF58Cl3Jd2ISFV2okvzW7g6TkzTe3mBYFPeetb1kyXf?=
 =?us-ascii?Q?AdqLw+B5atLzs6g1EryJajGHL05nSZnHfUBgR4glTXhNU60EhohMB7dLraXH?=
 =?us-ascii?Q?YMb/rHWnxPE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?983EQBwmgedM3N7A+FUmsTqDZuzA+Pvx26QqfBHtGlnW7CSzmNk2iIqJkvXY?=
 =?us-ascii?Q?Y1Y0mAKpRkuhDerRurygvx5/AaEbwuW8ChD8B2sLf3T9hKD+flUeiEoqQagu?=
 =?us-ascii?Q?i0vjRcyXOGDYP5gb9IROo2BBt1zazAmuXOhtwOcOYug1tLdi6voxBRVQZxw4?=
 =?us-ascii?Q?FtGYzTUTouDDtZao3aNbwMUk7W6+BYy52gYE6HEliB837BaX2LA74TDK4HdR?=
 =?us-ascii?Q?OtVacUt8drEhneHD6PCL6SpgSFJJguQK2wunFtW7VCK+eO/13BHw7jvdAkpB?=
 =?us-ascii?Q?5v2FNtU9Q6tn34JKWkynhffawbWqy2pm0ieqQDDygy3QV143RJIMyzBMv1pe?=
 =?us-ascii?Q?wXxzAcHrrtcwhmw82C3tObNuC0seOxPxCi8X49Kx8MtF75XLbl4KiQK67bFE?=
 =?us-ascii?Q?HpD00/9Aq99VZ5d0biuIaiIA9reSYvU3ljaUcWx8R841XzdE2gtWXQIeHGmk?=
 =?us-ascii?Q?6BsDigZ/MDqT8/qdBUbvwF4ECD2kbMlCOPiPB7kSTShmQEAzdDvnhov3zBqz?=
 =?us-ascii?Q?niKRXpr3CEfTN3YDjTqb8PcJDTrlDCRgk3jWIrJkGapRheG7jRdmIZxwEQA9?=
 =?us-ascii?Q?/krwSrrN0/T22on/57gZHbGw0iDQRXeIgc2x4WN41QAKT0RxCHK72ZzvYC2P?=
 =?us-ascii?Q?YJf0S2ns/smB3SXd9RcCp+6W1E6Pl/hRyL9WDtvP4EkgPv5E7ysW2DV0jIM4?=
 =?us-ascii?Q?xVNJoz+pl1xBiPoejOWk7WW6ZzVe3ekY9CZgBWYegsqDWGBa2f+6ddwpXMYz?=
 =?us-ascii?Q?Umz5JuuEe7Pfx7spQTkcdoZf5vkIJSuBFWkYvtnQ+XQvuhrkEG2Jlqo/Qvun?=
 =?us-ascii?Q?F0N44HJQCftmiEf5OfUeSkrBoLsXLFd4d3B4hPluCQfMUbYFBEk5czRxnaXo?=
 =?us-ascii?Q?dwKut5yvKGouTSmKuiY8i7M699cvk2TBW94VyK6ZlA8PrwgERLqQ8NsplEz8?=
 =?us-ascii?Q?u4ym+3a9lAlhbrIbO2OM+U4O8mkpEaMalgvghN9rldRIdZsKNHj92lcKn34A?=
 =?us-ascii?Q?2IYpytDuEhmNd7rAqGKNvj1q8k3tGLfoyuvjBW8Ihz6mzVWBhasNgd285RER?=
 =?us-ascii?Q?kR0quxToXoWfI/mdhfXl8PpqZnRsJS4+E0h8JAFiqcr4LAYq+AxKetehKXOV?=
 =?us-ascii?Q?L3Hqb5RcAxyVUYgGQJG4/VmjjC9gdNdn7EqzvooB5jGcyQkF0wVqpgEIg7jg?=
 =?us-ascii?Q?EbBrXbEvxilnsPtdSsyMyXXy7IVGo3EVTOE5UNtpPG6YLouHaHsqeRfucwor?=
 =?us-ascii?Q?Sp0aMrK2W0+fnCHvCW0IJzoXms7ah21vbQuURO66YRdGcdWLyk6+LgQK77re?=
 =?us-ascii?Q?GHxAIDy2gUb1hYZ+KfAd+QAzTdzQSmxwPKUkLOCjN8bBU4G5xMDHkzBYXuh1?=
 =?us-ascii?Q?Fn+QqGZBMFfO1m321KQAwifJwFPgMeTEgdTBjbDLiZkGFxWKDIWCmHjLmPVr?=
 =?us-ascii?Q?zt3tuLKZauZkNB6/YWfWNxrNMyGRuh7nsXWKRtHW6qhXzVOeAqrZ8T2MjA3P?=
 =?us-ascii?Q?Yur3o8LGwbaveqSX9ECQnPZnCDcIkaII3tyJ1bTzcMhZy2fJhzHhBMTJ1vtL?=
 =?us-ascii?Q?DQco5Pwk22/MMF72hw0GJ+TSZkAt6SZb+lzn3GEF?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43e70bc3-5b65-4355-6000-08dd580a670c
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2025 15:13:05.7615 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YTP/U4YT/Wpi2rLvKhjV4bg8nrslecdXjSNFoSSxLa7SE0qfBmTvm3XBGjYmk/KJi0zTYHFIwHGdauSnNrnbFg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8386
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Friday, February 28, 2025 6:20 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH 3/3] drm/i915/hdcp: add hdcp sub-struct to struct
> intel_digital_port
>=20
> Move hdcp_mutex, num_hdcp_streams, hdcp_auth_status, hdcp_port_data,
> and hdcp_mst_type1_capable members of struct intel_digital_port under an
> hdcp sub-struct to group hdcp related things together.
>=20
> Rename them mutex, num_streams, auth_status, port_data, and
> mst_type1_capable for clarity.
>=20
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c         |  2 +-
>  drivers/gpu/drm/i915/display/g4x_hdmi.c       |  2 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  6 +-
>  .../drm/i915/display/intel_display_types.h    | 22 ++---
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  2 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     | 84 +++++++++----------
>  6 files changed, 60 insertions(+), 58 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c
> b/drivers/gpu/drm/i915/display/g4x_dp.c
> index 372c3683c193..55b9e9bfcc4d 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -1311,7 +1311,7 @@ bool g4x_dp_init(struct intel_display *display,
>=20
>  	intel_encoder->devdata =3D devdata;
>=20
> -	mutex_init(&dig_port->hdcp_mutex);
> +	mutex_init(&dig_port->hdcp.mutex);
>=20
>  	if (drm_encoder_init(display->drm, &intel_encoder->base,
>  			     &intel_dp_enc_funcs,
> DRM_MODE_ENCODER_TMDS, diff --git
> a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> index d9d1304dcc36..3dc2c59a3df0 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -715,7 +715,7 @@ bool g4x_hdmi_init(struct intel_display *display,
>=20
>  	intel_encoder->devdata =3D devdata;
>=20
> -	mutex_init(&dig_port->hdcp_mutex);
> +	mutex_init(&dig_port->hdcp.mutex);
>=20
>  	if (drm_encoder_init(display->drm, &intel_encoder->base,
>  			     &intel_hdmi_enc_funcs,
> DRM_MODE_ENCODER_TMDS, diff --git
> a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index ca7983ef373d..20fc258a4d6d 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4582,7 +4582,7 @@ static void intel_ddi_encoder_destroy(struct
> drm_encoder *encoder)
>  	intel_display_power_flush_work(display);
>=20
>  	drm_encoder_cleanup(encoder);
> -	kfree(dig_port->hdcp_port_data.streams);
> +	kfree(dig_port->hdcp.port_data.streams);
>  	kfree(dig_port);
>  }
>=20
> @@ -5187,8 +5187,8 @@ void intel_ddi_init(struct intel_display *display,
>=20
>  	intel_encoder_link_check_init(encoder, intel_ddi_link_check);
>=20
> -	mutex_init(&dig_port->hdcp_mutex);
> -	dig_port->num_hdcp_streams =3D 0;
> +	mutex_init(&dig_port->hdcp.mutex);
> +	dig_port->hdcp.num_streams =3D 0;
>=20
>  	encoder->hotplug =3D intel_ddi_hotplug;
>  	encoder->compute_output_type =3D intel_ddi_compute_output_type;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index b52fca816591..053be62a5be1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1849,16 +1849,18 @@ struct intel_digital_port {
>=20
>  	struct intel_tc_port *tc;
>=20
> -	/* protects num_hdcp_streams reference count, hdcp_port_data and
> hdcp_auth_status */
> -	struct mutex hdcp_mutex;
> -	/* the number of pipes using HDCP signalling out of this port */
> -	unsigned int num_hdcp_streams;
> -	/* port HDCP auth status */
> -	bool hdcp_auth_status;
> -	/* HDCP port data need to pass to security f/w */
> -	struct hdcp_port_data hdcp_port_data;
> -	/* Whether the MST topology supports HDCP Type 1 Content */
> -	bool hdcp_mst_type1_capable;
> +	struct {
> +		/* protects num_streams reference count, port_data and
> auth_status */
> +		struct mutex mutex;
> +		/* the number of pipes using HDCP signalling out of this port
> */
> +		unsigned int num_streams;
> +		/* port HDCP auth status */
> +		bool auth_status;
> +		/* HDCP port data need to pass to security f/w */
> +		struct hdcp_port_data port_data;
> +		/* Whether the MST topology supports HDCP Type 1 Content
> */
> +		bool mst_type1_capable;
> +	} hdcp;
>=20
>  	void (*write_infoframe)(struct intel_encoder *encoder,
>  				const struct intel_crtc_state *crtc_state, diff --
> git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index 4c9481124c90..cc312596fb77 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -799,7 +799,7 @@ intel_dp_mst_hdcp2_stream_encryption(struct
> intel_connector *connector,  {
>  	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> -	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> +	struct hdcp_port_data *data =3D &dig_port->hdcp.port_data;
>  	struct intel_hdcp *hdcp =3D &connector->hdcp;
>  	enum transcoder cpu_transcoder =3D hdcp->stream_transcoder;
>  	enum pipe pipe =3D (enum pipe)cpu_transcoder; diff --git
> a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 46f53ade432e..1bf424a822f3 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -107,16 +107,16 @@ intel_hdcp_required_content_stream(struct
> intel_atomic_state *state,
>  	struct drm_connector_list_iter conn_iter;
>  	struct intel_digital_port *conn_dig_port;
>  	struct intel_connector *connector;
> -	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> +	struct hdcp_port_data *data =3D &dig_port->hdcp.port_data;
>  	bool enforce_type0 =3D false;
>  	int k;
>=20
> -	if (dig_port->hdcp_auth_status)
> +	if (dig_port->hdcp.auth_status)
>  		return 0;
>=20
>  	data->k =3D 0;
>=20
> -	if (!dig_port->hdcp_mst_type1_capable)
> +	if (!dig_port->hdcp.mst_type1_capable)
>  		enforce_type0 =3D true;
>=20
>  	drm_connector_list_iter_begin(display->drm, &conn_iter); @@ -159,7
> +159,7 @@ static int intel_hdcp_prepare_streams(struct intel_atomic_state
> *state,
>  				      struct intel_connector *connector)  {
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> -	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> +	struct hdcp_port_data *data =3D &dig_port->hdcp.port_data;
>  	struct intel_hdcp *hdcp =3D &connector->hdcp;
>=20
>  	if (intel_encoder_is_mst(intel_attached_encoder(connector)))
> @@ -1001,7 +1001,7 @@ static int _intel_hdcp_disable(struct intel_connect=
or
> *connector)
>  		 * don't disable it until it disabled HDCP encryption for
>  		 * all connectors in MST topology.
>  		 */
> -		if (dig_port->num_hdcp_streams > 0)
> +		if (dig_port->hdcp.num_streams > 0)
>  			return 0;
>  	}
>=20
> @@ -1094,13 +1094,13 @@ static void intel_hdcp_update_value(struct
> intel_connector *connector,
>  	if (hdcp->value =3D=3D value)
>  		return;
>=20
> -	drm_WARN_ON(display->drm, !mutex_is_locked(&dig_port-
> >hdcp_mutex));
> +	drm_WARN_ON(display->drm, !mutex_is_locked(&dig_port-
> >hdcp.mutex));
>=20
>  	if (hdcp->value =3D=3D DRM_MODE_CONTENT_PROTECTION_ENABLED) {
> -		if (!drm_WARN_ON(display->drm, dig_port-
> >num_hdcp_streams =3D=3D 0))
> -			dig_port->num_hdcp_streams--;
> +		if (!drm_WARN_ON(display->drm, dig_port-
> >hdcp.num_streams =3D=3D 0))
> +			dig_port->hdcp.num_streams--;
>  	} else if (value =3D=3D DRM_MODE_CONTENT_PROTECTION_ENABLED) {
> -		dig_port->num_hdcp_streams++;
> +		dig_port->hdcp.num_streams++;
>  	}
>=20
>  	hdcp->value =3D value;
> @@ -1122,7 +1122,7 @@ static int intel_hdcp_check_link(struct
> intel_connector *connector)
>  	int ret =3D 0;
>=20
>  	mutex_lock(&hdcp->mutex);
> -	mutex_lock(&dig_port->hdcp_mutex);
> +	mutex_lock(&dig_port->hdcp.mutex);
>=20
>  	cpu_transcoder =3D hdcp->cpu_transcoder;
>=20
> @@ -1177,7 +1177,7 @@ static int intel_hdcp_check_link(struct
> intel_connector *connector)
>  	}
>=20
>  out:
> -	mutex_unlock(&dig_port->hdcp_mutex);
> +	mutex_unlock(&dig_port->hdcp.mutex);
>  	mutex_unlock(&hdcp->mutex);
>  	return ret;
>  }
> @@ -1219,7 +1219,7 @@ hdcp2_prepare_ake_init(struct intel_connector
> *connector,  {
>  	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> -	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> +	struct hdcp_port_data *data =3D &dig_port->hdcp.port_data;
>  	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
> @@ -1249,7 +1249,7 @@ hdcp2_verify_rx_cert_prepare_km(struct
> intel_connector *connector,  {
>  	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> -	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> +	struct hdcp_port_data *data =3D &dig_port->hdcp.port_data;
>  	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
> @@ -1277,7 +1277,7 @@ static int hdcp2_verify_hprime(struct
> intel_connector *connector,  {
>  	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> -	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> +	struct hdcp_port_data *data =3D &dig_port->hdcp.port_data;
>  	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
> @@ -1303,7 +1303,7 @@ hdcp2_store_pairing_info(struct intel_connector
> *connector,  {
>  	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> -	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> +	struct hdcp_port_data *data =3D &dig_port->hdcp.port_data;
>  	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
> @@ -1330,7 +1330,7 @@ hdcp2_prepare_lc_init(struct intel_connector
> *connector,  {
>  	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> -	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> +	struct hdcp_port_data *data =3D &dig_port->hdcp.port_data;
>  	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
> @@ -1357,7 +1357,7 @@ hdcp2_verify_lprime(struct intel_connector
> *connector,  {
>  	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> -	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> +	struct hdcp_port_data *data =3D &dig_port->hdcp.port_data;
>  	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
> @@ -1383,7 +1383,7 @@ static int hdcp2_prepare_skey(struct intel_connecto=
r
> *connector,  {
>  	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> -	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> +	struct hdcp_port_data *data =3D &dig_port->hdcp.port_data;
>  	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
> @@ -1412,7 +1412,7 @@ hdcp2_verify_rep_topology_prepare_ack(struct
> intel_connector *connector,  {
>  	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> -	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> +	struct hdcp_port_data *data =3D &dig_port->hdcp.port_data;
>  	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
> @@ -1442,7 +1442,7 @@ hdcp2_verify_mprime(struct intel_connector
> *connector,  {
>  	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> -	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> +	struct hdcp_port_data *data =3D &dig_port->hdcp.port_data;
>  	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
> @@ -1466,7 +1466,7 @@ static int hdcp2_authenticate_port(struct
> intel_connector *connector)  {
>  	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> -	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> +	struct hdcp_port_data *data =3D &dig_port->hdcp.port_data;
>  	struct i915_hdcp_arbiter *arbiter;
>  	int ret;
>=20
> @@ -1503,7 +1503,7 @@ static int hdcp2_close_session(struct intel_connect=
or
> *connector)
>  	}
>=20
>  	ret =3D arbiter->ops->close_hdcp_session(arbiter->hdcp_dev,
> -					     &dig_port->hdcp_port_data);
> +					     &dig_port->hdcp.port_data);
>  	mutex_unlock(&display->hdcp.hdcp_mutex);
>=20
>  	return ret;
> @@ -1691,7 +1691,7 @@ static
>  int _hdcp2_propagate_stream_management_info(struct intel_connector
> *connector)  {
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> -	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> +	struct hdcp_port_data *data =3D &dig_port->hdcp.port_data;
>  	struct intel_hdcp *hdcp =3D &connector->hdcp;
>  	union {
>  		struct hdcp2_rep_stream_manage stream_manage; @@ -
> 1769,11 +1769,11 @@ int hdcp2_authenticate_repeater_topology(struct
> intel_connector *connector)
>  	 * MST topology is not Type 1 capable if it contains a downstream
>  	 * device that is only HDCP 1.x or Legacy HDCP 2.0/2.1 compliant.
>  	 */
> -	dig_port->hdcp_mst_type1_capable =3D
> +	dig_port->hdcp.mst_type1_capable =3D
>  		!HDCP_2_2_HDCP1_DEVICE_CONNECTED(rx_info[1]) &&
>  		!HDCP_2_2_HDCP_2_0_REP_CONNECTED(rx_info[1]);
>=20
> -	if (!dig_port->hdcp_mst_type1_capable && hdcp->content_type) {
> +	if (!dig_port->hdcp.mst_type1_capable && hdcp->content_type) {
>  		drm_dbg_kms(display->drm,
>  			    "HDCP1.x or 2.0 Legacy Device Downstream\n");
>  		return -EINVAL;
> @@ -1869,7 +1869,7 @@ static int hdcp2_enable_stream_encryption(struct
> intel_connector *connector)  {
>  	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> -	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> +	struct hdcp_port_data *data =3D &dig_port->hdcp.port_data;
>  	struct intel_hdcp *hdcp =3D &connector->hdcp;
>  	enum transcoder cpu_transcoder =3D hdcp->cpu_transcoder;
>  	enum port port =3D dig_port->base.port;
> @@ -1900,7 +1900,7 @@ static int hdcp2_enable_stream_encryption(struct
> intel_connector *connector)
>  	if (hdcp2_deauthenticate_port(connector) < 0)
>  		drm_dbg_kms(display->drm, "Port deauth failed.\n");
>=20
> -	dig_port->hdcp_auth_status =3D false;
> +	dig_port->hdcp.auth_status =3D false;
>  	data->k =3D 0;
>=20
>  	return ret;
> @@ -1940,7 +1940,7 @@ static int hdcp2_enable_encryption(struct
> intel_connector *connector)
>  						 port),
>  				    LINK_ENCRYPTION_STATUS,
>=20
> HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS);
> -	dig_port->hdcp_auth_status =3D true;
> +	dig_port->hdcp.auth_status =3D true;
>=20
>  	return ret;
>  }
> @@ -2019,7 +2019,7 @@ static int hdcp2_authenticate_and_encrypt(struct
> intel_atomic_state *state,
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>  	int ret =3D 0, i, tries =3D 3;
>=20
> -	for (i =3D 0; i < tries && !dig_port->hdcp_auth_status; i++) {
> +	for (i =3D 0; i < tries && !dig_port->hdcp.auth_status; i++) {
>  		ret =3D hdcp2_authenticate_sink(connector);
>  		if (!ret) {
>  			ret =3D intel_hdcp_prepare_streams(state, connector);
> @@ -2052,7 +2052,7 @@ static int hdcp2_authenticate_and_encrypt(struct
> intel_atomic_state *state,
>  			drm_dbg_kms(display->drm, "Port deauth failed.\n");
>  	}
>=20
> -	if (!ret && !dig_port->hdcp_auth_status) {
> +	if (!ret && !dig_port->hdcp.auth_status) {
>  		/*
>  		 * Ensuring the required 200mSec min time interval between
>  		 * Session Key Exchange and encryption.
> @@ -2106,7 +2106,7 @@ _intel_hdcp2_disable(struct intel_connector
> *connector, bool hdcp2_link_recovery  {
>  	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> -	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> +	struct hdcp_port_data *data =3D &dig_port->hdcp.port_data;
>  	struct intel_hdcp *hdcp =3D &connector->hdcp;
>  	int ret;
>=20
> @@ -2123,7 +2123,7 @@ _intel_hdcp2_disable(struct intel_connector
> *connector, bool hdcp2_link_recovery
>  		drm_dbg_kms(display->drm, "HDCP 2.2 transcoder: %s stream
> encryption disabled\n",
>  			    transcoder_name(hdcp->stream_transcoder));
>=20
> -		if (dig_port->num_hdcp_streams > 0 &&
> !hdcp2_link_recovery)
> +		if (dig_port->hdcp.num_streams > 0 && !hdcp2_link_recovery)
>  			return 0;
>  	}
>=20
> @@ -2133,7 +2133,7 @@ _intel_hdcp2_disable(struct intel_connector
> *connector, bool hdcp2_link_recovery
>  		drm_dbg_kms(display->drm, "Port deauth failed.\n");
>=20
>  	connector->hdcp.hdcp2_encrypted =3D false;
> -	dig_port->hdcp_auth_status =3D false;
> +	dig_port->hdcp.auth_status =3D false;
>  	data->k =3D 0;
>=20
>  	return ret;
> @@ -2150,7 +2150,7 @@ static int intel_hdcp2_check_link(struct
> intel_connector *connector)
>  	int ret =3D 0;
>=20
>  	mutex_lock(&hdcp->mutex);
> -	mutex_lock(&dig_port->hdcp_mutex);
> +	mutex_lock(&dig_port->hdcp.mutex);
>  	cpu_transcoder =3D hdcp->cpu_transcoder;
>=20
>  	/* hdcp2_check_link is expected only when HDCP2.2 is Enabled */ @@
> -2221,7 +2221,7 @@ static int intel_hdcp2_check_link(struct intel_connect=
or
> *connector)
>  	intel_hdcp_update_value(connector,
>=20
> 	DRM_MODE_CONTENT_PROTECTION_DESIRED, true);
>  out:
> -	mutex_unlock(&dig_port->hdcp_mutex);
> +	mutex_unlock(&dig_port->hdcp.mutex);
>  	mutex_unlock(&hdcp->mutex);
>  	return ret;
>  }
> @@ -2303,7 +2303,7 @@ static int initialize_hdcp_port_data(struct
> intel_connector *connector,
>  				     const struct intel_hdcp_shim *shim)  {
>  	struct intel_display *display =3D to_intel_display(connector);
> -	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> +	struct hdcp_port_data *data =3D &dig_port->hdcp.port_data;
>  	enum port port =3D dig_port->base.port;
>=20
>  	if (DISPLAY_VER(display) < 12)
> @@ -2414,7 +2414,7 @@ int intel_hdcp_init(struct intel_connector
> *connector,
>  							       hdcp-
> >hdcp2_supported);
>  	if (ret) {
>  		hdcp->hdcp2_supported =3D false;
> -		kfree(dig_port->hdcp_port_data.streams);
> +		kfree(dig_port->hdcp.port_data.streams);
>  		return ret;
>  	}
>=20
> @@ -2451,7 +2451,7 @@ static int _intel_hdcp_enable(struct
> intel_atomic_state *state,
>  	}
>=20
>  	mutex_lock(&hdcp->mutex);
> -	mutex_lock(&dig_port->hdcp_mutex);
> +	mutex_lock(&dig_port->hdcp.mutex);
>  	drm_WARN_ON(display->drm,
>  		    hdcp->value =3D=3D
> DRM_MODE_CONTENT_PROTECTION_ENABLED);
>  	hdcp->content_type =3D (u8)conn_state->hdcp_content_type;
> @@ -2465,7 +2465,7 @@ static int _intel_hdcp_enable(struct
> intel_atomic_state *state,
>  	}
>=20
>  	if (DISPLAY_VER(display) >=3D 12)
> -		dig_port->hdcp_port_data.hdcp_transcoder =3D
> +		dig_port->hdcp.port_data.hdcp_transcoder =3D
>  			intel_get_hdcp_transcoder(hdcp->cpu_transcoder);
>=20
>  	/*
> @@ -2499,7 +2499,7 @@ static int _intel_hdcp_enable(struct
> intel_atomic_state *state,
>  					true);
>  	}
>=20
> -	mutex_unlock(&dig_port->hdcp_mutex);
> +	mutex_unlock(&dig_port->hdcp.mutex);
>  	mutex_unlock(&hdcp->mutex);
>  	return ret;
>  }
> @@ -2535,7 +2535,7 @@ int intel_hdcp_disable(struct intel_connector
> *connector)
>  		return -ENOENT;
>=20
>  	mutex_lock(&hdcp->mutex);
> -	mutex_lock(&dig_port->hdcp_mutex);
> +	mutex_lock(&dig_port->hdcp.mutex);
>=20
>  	if (hdcp->value =3D=3D DRM_MODE_CONTENT_PROTECTION_UNDESIRED)
>  		goto out;
> @@ -2548,7 +2548,7 @@ int intel_hdcp_disable(struct intel_connector
> *connector)
>  		ret =3D _intel_hdcp_disable(connector);
>=20
>  out:
> -	mutex_unlock(&dig_port->hdcp_mutex);
> +	mutex_unlock(&dig_port->hdcp.mutex);
>  	mutex_unlock(&hdcp->mutex);
>  	cancel_delayed_work_sync(&hdcp->check_work);
>  	return ret;
> --
> 2.39.5

