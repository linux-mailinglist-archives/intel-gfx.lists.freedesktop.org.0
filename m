Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 597D59E3F48
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 17:09:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C805A10E4FC;
	Wed,  4 Dec 2024 16:09:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tt4rNNnO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A07F10E4F9;
 Wed,  4 Dec 2024 16:09:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733328585; x=1764864585;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cJt3rEsaHXoUpjfB5EVJa3xulEEtqyoSGODwybzJJZM=;
 b=Tt4rNNnOgWU96+jmdw8ci3EExwdeHhLXllKyM/wenltBxEUP3jqCUB8/
 WIaigDhV3g5MQBWA14PZYeMLdg29BGgDj+EiUQdHSScWVYGO0ea9s9cCx
 n7tyJ3Xye5HMOsfG4nPY0SAUCtHqRMtg5sfCk0KiWjHP7XGz0X7n7E00Z
 llXflnloIPQ6DL02SLt75NwxlIANE/WMP2PH/C31ik+zqNmBnKJQPbhSL
 bLAwaQYMYqb8D1uhzU3m9Zm725qZwDfpR0WHU46iVZHlerwf7ciaqa9aX
 HycqZUeO6EwWw3E4iel3fvyNgFLeLWgE1xdwlRPNuEioNqiQOlE7dpQZm g==;
X-CSE-ConnectionGUID: x9b/93p0TcS8qY03fq7B0Q==
X-CSE-MsgGUID: YpWFGJiRQ+aa4CnT87Cv1g==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="33732877"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="33732877"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 08:09:45 -0800
X-CSE-ConnectionGUID: HJn2FyUDRsGNTxKZH3bzoA==
X-CSE-MsgGUID: poJHHfAYQ1Oye5btTpszow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="98238744"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2024 08:09:43 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Dec 2024 08:09:43 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Dec 2024 08:09:43 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Dec 2024 08:09:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZFvz/Pb4WLIhvCEjzV41d9n79pOVkfFEq4YlyCkm/J9+ItM8rQccQ4jocg3ig0JHUPBjSmiGyRd2xFEyaKUaHot5bQTjLdf26Xv6JngKwBnLLrUxtSV+RenUGDWMQm8vyQCDHI9hK7p0sBS1whO2aW5ZEabZukVeRN86RD9pjZl6ejr7xHAWtSghel7mWVFWunP5W/w9T+DIiHqYR8wbaq3z2mytrfUAmBFBdlI75g9o7ESOjxALrlAt57xrXmvNai108TRz7tQRpJz6bzthMWzoh4Y3ZwWoQh3wUsucU9b1BAfn/rUbGuM0i8tIgc/c5xCcJTfder1XhoLkzrWTxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UNafUkmk7UDHybJjSrCmMXkQ3SZ3etsYEIS2Sn/T2Q0=;
 b=ZB3wEzwb1pTDQ8TDxMa5DOVFGP0owKNvv4wCpsNIUsHxdODyrgUzzvWMOYEv73Xj++JohyydeCQawdWMnGjgFomuWSNRK3qqbqgFaPdb0AyFsN1U2hz7Av6uPZkQuoICSXkpXjevCi/c/FH/GdzknJmmRBVLUXJ/QL5ILyWHl23Vd/KjAW+ZtmglAd3S8c1mgXdlBwVj+sBnxAU0oJxLAVVHiyJz9HhrdkPgnPbtuXxSjfsi8FuZnFSSgmqkxvuxbSBXCo56cElnu2ktXMdTfs4vifURgUuJ/ZbREwUVK/4Dw+MVQeBKn/Hbl/tKMyPR+6bfwNT/+F7ZzOOCoRvNPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA1PR11MB7013.namprd11.prod.outlook.com (2603:10b6:806:2be::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.18; Wed, 4 Dec
 2024 16:09:40 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8207.017; Wed, 4 Dec 2024
 16:09:40 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Deak, Imre"
 <imre.deak@intel.com>
Subject: RE: [PATCH 07/14] drm/i915/dp: Use intel_display in
 intel_dp_dsc_max_src_input_bpc()
Thread-Topic: [PATCH 07/14] drm/i915/dp: Use intel_display in
 intel_dp_dsc_max_src_input_bpc()
Thread-Index: AQHbRi5L25HLiEf/y0OrGDx2f9AH1bLWQVSA
Date: Wed, 4 Dec 2024 16:09:40 +0000
Message-ID: <SN7PR11MB67504431A113F59AD64229C1E3372@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241204092642.1835807-1-ankit.k.nautiyal@intel.com>
 <20241204092642.1835807-8-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241204092642.1835807-8-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA1PR11MB7013:EE_
x-ms-office365-filtering-correlation-id: 10218fbf-1cca-4566-f527-08dd147e0ead
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?XEZ/iniLJ4exad8ufXwxZdxArJj2pkdIZ32If7nJ4SAUaQ4aDner4TNRJoiO?=
 =?us-ascii?Q?lp6jpC09hSPneyGBY7cQk7eqOAwXyoA5jqAcon8Zbr/S8n/ypLomd8mcg8cD?=
 =?us-ascii?Q?D2xp8jAm8KJ5Hgy2SU307gSC8fifai0WPt+YGrlO5sQK2KZ1CynwcSb6xmJl?=
 =?us-ascii?Q?rEAXEpLqvg+sPIROoIIOzs2WfXW/koC5gvEX4vTapNfl2t6/RUFAEBw+nUTb?=
 =?us-ascii?Q?u5Hy5dG/aJ6XqetDzDEYrkGtqKMeopJuVlvRdURca63O6iTirFDGIjxcvjnL?=
 =?us-ascii?Q?PPdKQjW47IiJUJ1kIqfilIkgKYi1qe4LZNS1pk2wJSTHr+ZMAn9xz48ufp7f?=
 =?us-ascii?Q?kHY0ey3F5KuKoIW1Im7dUKfqWhDqvp4vrjlLHv2YZEqTv/0v8+viXbqF90ru?=
 =?us-ascii?Q?aTYTQxY4yAnka9D6LtvE5R125oABb/olmNUZIHqfc0/jx9plJxbd6vRtGIpa?=
 =?us-ascii?Q?TNtojRgphNP6Moeh34lYcJhqOwFxf+e7dQp0Zz85zg72AiXYLfLYQBG9x00R?=
 =?us-ascii?Q?viWDcKxsm8Wgah+KYVpeAptohuMZwrkyqHEpIy6/GTx+zbiQWP2Hjat0sS+d?=
 =?us-ascii?Q?Xq9vMBUfPSftJq0ysAgjMy0voYDRdIxr2EHQ/tF9+pHbw9Y/AVVaTWFW5Fv/?=
 =?us-ascii?Q?63GVRmRvlTYB8z14OQHSuA/uOHLispYCVvZRX7SBJ9wgqLl0EsqFD5jTxZy4?=
 =?us-ascii?Q?MQqAfbVlgUpwnqDvlXXO/TSsVQql+UnkVL89kKfeVf6xn3hAdkcaG1DAUxEK?=
 =?us-ascii?Q?tEgZyYJwB4dCcBm83LzGg/iBkhWXNh311yfGELQNhiWw3saTAx440RQp8npw?=
 =?us-ascii?Q?J9wmfCHgqd5FFEPNSYT0FuEbxYeBklm5UK+dGtMuhejc5Zxa/bDOjf0MMire?=
 =?us-ascii?Q?Gt0tHzwoYvqrN5uS67vFzhfz1zymTqOL3LJOeY7e9uKUXcpaDQRK1Yy6gMBR?=
 =?us-ascii?Q?LqFgOi2fEt4QOuHrba354vA45hcEJOrUoIDnUGRbij/hJCfoplCCW95o0TAx?=
 =?us-ascii?Q?wW26smCa5aaDe8Zq2YCbNv6WywbXtH0DKhKOK8wXqyXx1qFFzjjrq7bshTxZ?=
 =?us-ascii?Q?TjpzB0mX620wHhoXTgapUk/GqEpcp5KVlTvH01s1JxvBuKFomT4gceouvFs5?=
 =?us-ascii?Q?sRPn0zbrZDtvFz8d/gsvgdGVsxt6cTPkg7bqmAVyrVfFMb8lnyRM2nkA58co?=
 =?us-ascii?Q?5VGXn41cV70V+vK9WrxPLj7WsWsYF0Iqi58T+yrxXojWymJa5x4UwKbRHGLs?=
 =?us-ascii?Q?fMYg5+A05QgUYxeD7DqIVq5k5S+tXbpylGwC3iDJWcOo2aS+RpQApYAvxJXb?=
 =?us-ascii?Q?VZaoDSUeprJhdEHJ+3Yx6W+umiTvfuMad9uq/sldsebQSEthWDzS2W4JC1DW?=
 =?us-ascii?Q?HgEOseycEZyFxz3bQBRqqDsNYUJdynbPmkuE8PLVsJ4HobdQRg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dGc70Wj27IvaEr1SKGtFAgUZ7gz5bEr1sv4YP4xMyUReUuDpCUkWfSY9PI6q?=
 =?us-ascii?Q?govcNFRXzaVCmgII0g8Q+2FNwx5qJnZ5FgEyaasXjz726Ye9hRZLQxP3LU3A?=
 =?us-ascii?Q?U4P+0FYJYl8PLDB/R0eViHxMVQ/Idw3rJs/D+s9ZMph8lSp0nfjSB275qfzN?=
 =?us-ascii?Q?8mIK8XAEamAPhlJabFj0O+tIurXo4+cxqvJc/2rTmL2gDEWlgolvD9JkmFmm?=
 =?us-ascii?Q?jNpvOsVdk9kQpcVH0S9+QGLmUHJllDb+0pDtOtFe302cj6rBnW+H5If3+VEC?=
 =?us-ascii?Q?KDMgGGkuNouufOXtpwfpOqdHCci12TLTdzRiIjPKylyQaeJ60Dkj45UJjHqN?=
 =?us-ascii?Q?r4CxgH2aPu8JuV9iR5v2GExla5ajJTLJQi14d89A6kzXPZYlN3JNpPXZH6+o?=
 =?us-ascii?Q?Zri3che6oIDaMqtra7JmAZOEnAD+wptKjMJRXrktVUEfEEqSSxUL+J+w0QeW?=
 =?us-ascii?Q?p9XayBagk3nnhoyAPxcRxfsaQtCYAH26dYwkQsZP3hEHsDoW1bQFSk+0GzUR?=
 =?us-ascii?Q?EEYmy056J0W4n/aB2jIJujdXLRl2UahgYlhLvKlX6XrSbq/l0SJupiJtrFJc?=
 =?us-ascii?Q?g6GmVxRkBfrJQOcN5qhC9/6QQOj02MdM+IGQrCvs2HY57Mkc8LrkIq+pEjuV?=
 =?us-ascii?Q?HlnmmAoWs0fNvdRs0bOSjHh2Ox+daPBfJQqWugS/DuDtUQG8ho0vQR7HP+u+?=
 =?us-ascii?Q?F8fnJ5dmLTT2mzdGtqH1/2Ac7WGDWd0dvYsmrKCIjFpjJrpAYXnbOb8d8OWn?=
 =?us-ascii?Q?3wg7R3I2BwH5Wxis3H+3moKOycN17rU1rf1FZuKt7nL0q9A08aZJLIkIWolo?=
 =?us-ascii?Q?MVlz276u/fRGtYT9IW1MJ4gJwU/IXY8Vx0IVrczOnNBZXgmOiujejjRN70JF?=
 =?us-ascii?Q?s6lyJhgTB1OUEI74j2peOZVxR1OO/v4aNBVP6+9fGoNHhCGUt+iXDpDlBsAX?=
 =?us-ascii?Q?Z58bUkAgXbbxqhnPq0SpJr8WC3ExeQByKEhn21Ss7iRRIzIMC+i1VsyW+4Fg?=
 =?us-ascii?Q?j+o+43W0RanbaR3+wIgixSBRAyJSOI/qGjs+h+CSJcnGh/d3xHu1O72yO+3r?=
 =?us-ascii?Q?XuxwOuf3L2XckURpdrub6w/+VLNizjfSvjpZNiqsyGRzkSNmcNjeUDSi8u9x?=
 =?us-ascii?Q?213IviqNOJyNw5ptKEuCBhXSfu0wZBFnxyz44fQQ115gKiEeEUGnnM6BZk/D?=
 =?us-ascii?Q?pnyRO4EpH+jT1wUBooNU/diX3HZwj3372ln5wDyJVZI4fPwGWGxtFtr9OqG2?=
 =?us-ascii?Q?8d572xHsg0jp13kdDhzkCiqpzQkqUUpIIy8tzkeXU7kFEYMqWVkgX+kPHlVR?=
 =?us-ascii?Q?biYf1c5y0EoQZfKC/68z5Trzir5uFCyFo5b3Y+7/v2LBm1GLpP+xCfMpCu03?=
 =?us-ascii?Q?q7HKRczUmo6akYXK5Iq3btpZ0Kn8T4uZ7AZBYmHYLfhnYchz00ogB27Xb/19?=
 =?us-ascii?Q?19dvvSYXfI1VFm9inPooC/aUP2MfmpJr382yPobMe7NYBaVZYBaq5J6TO9mj?=
 =?us-ascii?Q?uhddxLx2nVg4ppwqyOYJGtz46ck32InRFZ0FGwJL+BBXQ2OuYzExHeZNtVVa?=
 =?us-ascii?Q?ZdznTJc7R7NGCBFGX65TmpE6b35kIaomRjR8zKYQ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10218fbf-1cca-4566-f527-08dd147e0ead
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2024 16:09:40.0757 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Cv1UBKXKNbb5yoDt/VoqpVn947WmQ6WhWP4vkmIvNKTFqpEzMoyv9EB4D++66zWJVLQbEDSV/5BTNIy2hjdrig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7013
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
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Wednesday, December 4, 2024 2:57 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj <suraj.kandpal@intel.c=
om>;
> jani.nikula@linux.intel.com; Deak, Imre <imre.deak@intel.com>
> Subject: [PATCH 07/14] drm/i915/dp: Use intel_display in
> intel_dp_dsc_max_src_input_bpc()
>=20
> Replace struct drm_i915_private with struct intel_display in the helper
> intel_dp_dsc_max_src_input_bpc().

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 17 +++++++++--------
>  1 file changed, 9 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 3767d3870a19..edfe084dca39 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1781,12 +1781,12 @@ intel_dp_compute_link_config_wide(struct
> intel_dp *intel_dp,  }
>=20
>  static
> -int intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
> +int intel_dp_dsc_max_src_input_bpc(struct intel_display *display)
>  {
>  	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
> -	if (DISPLAY_VER(i915) >=3D 12)
> +	if (DISPLAY_VER(display) >=3D 12)
>  		return 12;
> -	if (DISPLAY_VER(i915) =3D=3D 11)
> +	if (DISPLAY_VER(display) =3D=3D 11)
>  		return 10;
>=20
>  	return 0;
> @@ -1795,12 +1795,12 @@ int intel_dp_dsc_max_src_input_bpc(struct
> drm_i915_private *i915)  int intel_dp_dsc_compute_max_bpp(const struct
> intel_connector *connector,
>  				 u8 max_req_bpc)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	int i, num_bpc;
>  	u8 dsc_bpc[3] =3D {};
>  	int dsc_max_bpc;
>=20
> -	dsc_max_bpc =3D intel_dp_dsc_max_src_input_bpc(i915);
> +	dsc_max_bpc =3D intel_dp_dsc_max_src_input_bpc(display);
>=20
>  	if (!dsc_max_bpc)
>  		return dsc_max_bpc;
> @@ -2196,9 +2196,10 @@ bool is_dsc_pipe_bpp_sufficient(struct
> drm_i915_private *i915,
>  				struct link_config_limits *limits,
>  				int pipe_bpp)
>  {
> +	struct intel_display *display =3D to_intel_display(&i915->drm);
>  	int dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp,
> dsc_min_pipe_bpp;
>=20
> -	dsc_max_bpc =3D min(intel_dp_dsc_max_src_input_bpc(i915),
> conn_state->max_requested_bpc);
> +	dsc_max_bpc =3D min(intel_dp_dsc_max_src_input_bpc(display),
> +conn_state->max_requested_bpc);
>  	dsc_min_bpc =3D intel_dp_dsc_min_src_input_bpc();
>=20
>  	dsc_max_pipe_bpp =3D min(dsc_max_bpc * 3, limits->pipe.max_bpp);
> @@ -2238,7 +2239,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct
> intel_dp *intel_dp,
>  					 struct link_config_limits *limits,
>  					 int timeslots)
>  {
> -	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> +	struct intel_display *display =3D to_intel_display(intel_dp);
>  	const struct intel_connector *connector =3D
>  		to_intel_connector(conn_state->connector);
>  	int max_req_bpc =3D conn_state->max_requested_bpc; @@ -2259,7
> +2260,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp
> *intel_dp,
>  		}
>  	}
>=20
> -	dsc_max_bpc =3D intel_dp_dsc_max_src_input_bpc(i915);
> +	dsc_max_bpc =3D intel_dp_dsc_max_src_input_bpc(display);
>  	if (!dsc_max_bpc)
>  		return -EINVAL;
>=20
> --
> 2.45.2

