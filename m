Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF505C4B9F4
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 07:13:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A45B10E4E9;
	Tue, 11 Nov 2025 06:13:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h+7zkyCl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 007A710E4E6;
 Tue, 11 Nov 2025 06:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762841628; x=1794377628;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VxPZ7BKRBLejauwKFVgtjLIj1LmG+ZmsdoW8V/Oelvk=;
 b=h+7zkyClz9RInT11LkmlZgt7fHjGqUwXwokq02q0QuHLzPiJgICYxT25
 N6Sg858qBt7jHMPFLn0DeDTm3ImneHYoAAcQSOj2TCQkwhpEcsmYsrpTD
 oxrWJr8pYVsmlcpMzftB/kIyeNDTSK3NPxG9uZZMRCrZ9VoEpQtKnBODD
 YI5KS+KWjPwKEq1+zuEzESOkQYxN1VebecfUWyE+qmyNbg92YLhBmTgk/
 IIJ5fM+EBVyhwTde/pZdF8J8q4D+JilZjD/86cntL8ln0qKA0QSRrGmDx
 pkXzcfHgRnHNcjpSX4LKV9T1JrgEIv07gYW+lqZw7dOyc56OHFvykXfgT w==;
X-CSE-ConnectionGUID: 8NY7YEYBT7SeZpNNenGQIw==
X-CSE-MsgGUID: jCiC4oS7SBaR/N8IlfFmZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="82296353"
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="82296353"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 22:12:55 -0800
X-CSE-ConnectionGUID: DxQ9BMgmQw2kf2gH1NjwdA==
X-CSE-MsgGUID: GMlMsCO+SC6ixIuqDscZQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="192997351"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 22:12:54 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 22:12:51 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 22:12:51 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.12) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 22:11:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Vlbl5/2cF9I3Oko9bntdkc4vTVa3tawvxq7TDIifg+DGOFGKkCYQ5RgUnv75RY3bJY72cbecIm0OeIZCUDFLRKcmbAjodP5OizY3XIacbVvmXT7K9XoI2vY4I741S/8mkN2q3MycooQ1JIEgmvEh9qkjhinT5em49ZUuptvVmG7+KjmnVbCz+UGoRFquNMy1k0QiajuQfvhXU6dY6+abDf6X4C1tJZ2RNXjc1XuUsepyUr5els7VvAvfvQhX2va3HlL0RGTmo088yl8z4jfOeI/K3Uf66JN8UqrYoadBkH5ijy6yJCeKsVqDbrP5tTp20YU2Oh528mg6aJ1ZfSCDOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kelLSEWYY6bTSm86uzcKNsuCe5ZR4b7sXTwPTLnCPEQ=;
 b=jUFgyjmn3byISmBiuhZUt5ZrM27PiQ9aORYJtIqLs+G2fZ2LHLskT8cuBGRAC4GohgrK9GdAWeyB4D/ptq+bEm4q8B8pTE21dO7PICM4v1N/ikF43U+qOYQev++/yB7uSLOl3AxPuDRgvrGDhCTiMqHbaGPq4QQNGBRMNYSy1no+qeTYBgOUE2mMX6fFr6v7XD/nA5TOsKd0fTH8RqaigRvMQU+WGYwQ7Sr88kk50PQM1cfZ55rx1hMgcn0XaUippbpZYCJURvYrTJzSuTHOsHUsZBhlYoN51u7jKFj0Mo4kEnNo3BFe112WquvOZAQTN3Uu3lE2EQdZ+qjHBLLRJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by SJ0PR11MB5103.namprd11.prod.outlook.com (2603:10b6:a03:2d3::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Tue, 11 Nov
 2025 06:11:39 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9298.015; Tue, 11 Nov 2025
 06:11:39 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [CI 12/32] drm/i915/display: Determine Cx0 PLL port clock from
 PLL state
Thread-Topic: [CI 12/32] drm/i915/display: Determine Cx0 PLL port clock from
 PLL state
Thread-Index: AQHcSlUoJHAhqVcpokOgkOut8EpYurTtD0dg
Date: Tue, 11 Nov 2025 06:11:39 +0000
Message-ID: <IA3PR11MB893768248165151550F862B8E3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-13-mika.kahola@intel.com>
In-Reply-To: <20251031103549.173208-13-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|SJ0PR11MB5103:EE_
x-ms-office365-filtering-correlation-id: caa397f3-04de-40d8-9165-08de20e92d7f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?ml6GiV3bCUSrS8v1Pp9pmIG6IrEC68+zw8bzbBG+u8eDlDPshoFb9j40ekZC?=
 =?us-ascii?Q?DoxUwcZ9PjrWn+kSwJvya+9iLu+d+68IcyiiBAKYiw+xCn+XpzCFp4QRU6X1?=
 =?us-ascii?Q?4pEVk9ilKGJ7QbfY0oh2VditWlfM04fUqdWYBDZykFxGjwYiTydJyPXu9sUO?=
 =?us-ascii?Q?yzV86yvuXswdVJ3b4HGuXNXBdN8MaWWlbD+/6khC/kVU1SlrC2LR8miG6vLb?=
 =?us-ascii?Q?jIlZzbZ2kmRAE9Rcw3LCSj9dmfm4lbR8JgDMwSyZwxX3I6Za3yE/SBptlGnZ?=
 =?us-ascii?Q?nxDLA3niHKWEZba4bohyyfv0aiSZwRntGiVNwUBDguE/nm9dBsSUoH+ac9Mc?=
 =?us-ascii?Q?Wl12PwmR0CEFItBhT+JidxyaWnfJ+6lInmAFBqaFFtu+lGkrtBGRdzE+bBhb?=
 =?us-ascii?Q?oLzBKxuRh1B/WUlPwph/3INknnON4pNH3Kyg2zLMHPyDrZ+i7kIJCDxZMp41?=
 =?us-ascii?Q?qKk1mzI0gTTl+H80ShhWrEn4Bxzmt11NTp3PAcHfqYM9ni//PJTdI84YzEDw?=
 =?us-ascii?Q?PNxd5An2YBBTF8nrRBhDYmyD/rmzg8nRuqOpIaK4D4mPpSwQ2NGfK1xd2Gq1?=
 =?us-ascii?Q?en+wK31pF+HFxzbLxDDimjSeYddZx8zotRCgiHsg4hsjyepwTM9Cw1GCk03h?=
 =?us-ascii?Q?/tnWb6tY9GHg4eue1MRPHL5dR7gsBDrvxh67QY7snGk42NrP5kJ2vi0d5peA?=
 =?us-ascii?Q?N21ok2hn9uK1kdNj1pcenjQRUWYVVDv4tHsMMXSHQn/vKiZOHv7uiIs2vmXG?=
 =?us-ascii?Q?xIrC2rBHcvK9KJQyzvz3/U70SqNOzp9VyVWYr/WnPtkb3zYNRudX8hPJgtMS?=
 =?us-ascii?Q?cZV15bzzAfDInRiJDI1K03/BwrJRTnvc2fpxQO+bbFbLaUa7CxKUqdgBCLfj?=
 =?us-ascii?Q?pOJlhh+0mdeYWX7veu30apWV0Ze/z65wCuQg5Xx1ONtcY+ur8i6qHAk1wLwp?=
 =?us-ascii?Q?D/xkHCmskHLrP8hqaTDpF9jL7nj8AuM6mbyxCXdHuGw78jEZWnEqky9gwPgZ?=
 =?us-ascii?Q?SzK8MXqh/UL67jXrxR1T3pHxtMhYwQH61eofLpj4F1PmiCzV73VhMG1cNFSr?=
 =?us-ascii?Q?LodY21Z2tZ9pOSY/wivTXumiDqVXF3ftKB2luAVfFGCG+JFaAn6OmW5PIhEn?=
 =?us-ascii?Q?uTBXb2bZ6c96Z+KXQAmvoji/Hdh2BGTzXjuV0K/1V+7bAW4tpC13J4/hRRNk?=
 =?us-ascii?Q?H/4vLS8J9AOtsLyqV14Ijgu0APMkaGGRGtJEiqyOyDFns0spVRInuc5bOcEv?=
 =?us-ascii?Q?f9VP2fqJImgeKvvtysc2/c56KTKKd1qvhJabzbmeeTt0OAjKbeCdo1XuSUDD?=
 =?us-ascii?Q?vi45wtW2rZxRftX9RXaYokuMfNEDJ8SLrFBAJqdfB4NUlLcFML/ETOw/9nAn?=
 =?us-ascii?Q?FTdkXHmff19feMHAVd6Ag8ZNqpR1Xl7V6eVCrK2mA+JokGFqOa9MIheie3p/?=
 =?us-ascii?Q?rJEQAuhMvXivPNFnLl1iFDdXxXde7wWTLFkG4R5Sc3Vva/isVARKCdrNvqeT?=
 =?us-ascii?Q?zoAU8TCLPmlsp+zJ9Na170glr17oat7hBYCp?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qarrr5aXnaDRRsnK3VCcAzXasoc0VFJpNByJqD0mjfoJlfr1kJ6H5DMkd2l0?=
 =?us-ascii?Q?vvxUl0bTec803tyDoQ4K2xLEDqTCZDbotIYaIp6GYa+HWw64zOuXQtkXOZ4c?=
 =?us-ascii?Q?j/U9mb8Pni7kb0D2mOQsA2GMpk2YLE6xB9lVCbEyKb7JqqKhTVpBPopTXJgm?=
 =?us-ascii?Q?6FIKwSoYDsPOOzrHDAjIrkLKodMYdKW5Azyh8RCgnPHbC2b/sr0AFuAQssLH?=
 =?us-ascii?Q?CaRRtkZ5b4bjZkZp3Pii6r0MfPNSCGVAMLcDBNyjm9Aod8kpS0WsErrJRZ12?=
 =?us-ascii?Q?vdmc6vvUVa0CoFN2H32TszAJ1j86CKwehpMDuj+GwUyuDGpJHWsfioqiJgMK?=
 =?us-ascii?Q?hmkgUcrzsYoLYi7juxa+XlaZL9UxK9X9Mpd1a76hTA58e6/ULzx2yEEC68nZ?=
 =?us-ascii?Q?zL/Ey5G5tw+It7yaDRsDPDdKQ8lyeIs82sQNVO6PMh9kC28N+FTqXLs7NSl/?=
 =?us-ascii?Q?LZlMxWsxXDoRRIlfnCKLSxlNqiI4j7tmqf1irgNupxOGKE+e7/aJMIupsaNI?=
 =?us-ascii?Q?yBwZAX2ODD27wzZ2cAlxl3ztrZxyMlSNsf0HiYsUfqBWCYEuHWr8z71G8ATN?=
 =?us-ascii?Q?kc1Jc452WX4E5ZYVhAwUMFQU9vBU+EIdRrOFDOFY3e16wACY/UXiOq5vxieH?=
 =?us-ascii?Q?RkSYzUoeltf2hvPecKZR4KBaFm1vVve1GN+H6EVW6FalbCcSI6+tUK6Kr3pl?=
 =?us-ascii?Q?2PxZMqr8xMkR35wCMDLgRwE8It36v0xKbm0hkJyOqIwNgqFo6BKuuAK/H0Qg?=
 =?us-ascii?Q?mnpqQtw0ViVpEwPn4oRAAwf92EeUgxM0y7z0EwpKKSCHBlH9HbaFfzdIIdVr?=
 =?us-ascii?Q?JX+itYjDzEgwGPM02GGk6WpJmi7OsMu/JzCW4DPqsXqHs+zEamMCbidfKEdQ?=
 =?us-ascii?Q?4PLuG9y9bPDW3IZIdT1W+G9uJ0HpTJuzlGYCgmiCTBnTYzDklnLOjNY6C+Hf?=
 =?us-ascii?Q?IRXrvRowWuSCpNWMO+zk/tusnKAXx33iQZU14sjUNrGpzICpzBgdI8qL5ukR?=
 =?us-ascii?Q?Vyvv07nBvfL77uCLEeig4mK1EsgWA73KW8Ux2xxVR+AwMex+sfjMf5EpMGuy?=
 =?us-ascii?Q?AS9QBfnEc/uNiNDf9paDOwgqdyKnd4d0z3HBW4eX71B91KpVK4fnXDgpBait?=
 =?us-ascii?Q?LBC7dMCpj7AvtZX+wXVso7uF0rIBzLtMJw/hEoipidnPpQwVUtMdeGRPRTLV?=
 =?us-ascii?Q?fzgnPEExM9Kw3kMJ4K0xjh2pJCaD+wbpP8zD4CqKvfAdlQZiHbhCsmip2Ad+?=
 =?us-ascii?Q?CcI3XoAQX0FrcXLL/TlPYvsl9yHJFAuzjiAKfZoQbaGRGpX4ZoJYK65JPbTu?=
 =?us-ascii?Q?DO3ojLnKckKueCQIoblWNC7hSb6GOPRbr7m+5cijoo9BvCMhgOOQ4roTvgnA?=
 =?us-ascii?Q?o0PDPt/ULagSYSUqtHSysCrooI/mtwa2joTXLSFqO/cNd4Ikgbz6lIA61hlm?=
 =?us-ascii?Q?LjDDIIdqhhFZ9eap4C/sKa7B/5Lk7qkrP7rJgd8Td8UAr+dF3nQZAIjYB+55?=
 =?us-ascii?Q?a7So8C4n2Fvzq75LF1sk6GWHMP+URhpXKxUD/wTiHdeDEE6g8s+YAROFd0Ub?=
 =?us-ascii?Q?LFEozS//QBHAVnyMgaz3sW5Bo4aaaLRXAkttKImt?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: caa397f3-04de-40d8-9165-08de20e92d7f
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2025 06:11:39.5549 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SfgV80/9l4Yyq0x9zl5e6ALZ4rrRBqquJxR+xnvP04cQJk4AAWXVzm0/bQbtPzIjGOwYN0YwvlWaEgj055Bcjw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5103
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

> Subject: [CI 12/32] drm/i915/display: Determine Cx0 PLL port clock from P=
LL
> state
>=20
> From: Imre Deak <imre.deak@intel.com>
>=20
> The port clock is tracked in the PLL state, so there is no need to pass i=
t
> separately to __intel_cx0pll_enable(). Drop the port clock function param
> accordingly.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 17 +++++------------
>  1 file changed, 5 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index f1216beb5581..29bcfe8fb6f5 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -3206,10 +3206,10 @@ static u32 intel_cx0_get_pclk_pll_ack(u8
> lane_mask)
>  	return val;
>  }
>=20
> -static void __intel_cx0pll_enable(struct intel_encoder *encoder,
> -				  const struct intel_cx0pll_state *pll_state,
> -				  int port_clock)
> +static void intel_cx0pll_enable(struct intel_encoder *encoder,
> +				const struct intel_cx0pll_state *pll_state)
>  {
> +	int port_clock =3D pll_state->use_c10 ? pll_state->c10.clock :
> +pll_state->c20.clock;
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	enum phy phy =3D intel_encoder_to_phy(encoder);
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder); @@ -
> 3288,13 +3288,6 @@ static void __intel_cx0pll_enable(struct intel_encoder
> *encoder,
>  	intel_cx0_phy_transaction_end(encoder, wakeref);  }
>=20
> -static void intel_cx0pll_enable(struct intel_encoder *encoder,
> -				const struct intel_crtc_state *crtc_state)
> -{
> -	__intel_cx0pll_enable(encoder, &crtc_state->dpll_hw_state.cx0pll,
> -			      crtc_state->port_clock);
> -}
> -
>  int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder)  {
>  	struct intel_display *display =3D to_intel_display(encoder); @@ -3424,7
> +3417,7 @@ void intel_mtl_pll_enable(struct intel_encoder *encoder,
>  	if (intel_tc_port_in_tbt_alt_mode(dig_port))
>  		intel_mtl_tbt_pll_enable(encoder, crtc_state);
>  	else
> -		intel_cx0pll_enable(encoder, crtc_state);
> +		intel_cx0pll_enable(encoder, &crtc_state-
> >dpll_hw_state.cx0pll);
>  }
>=20
>  /*
> @@ -3847,7 +3840,7 @@ void intel_cx0_pll_power_save_wa(struct
> intel_display *display)
>  			    "[ENCODER:%d:%s] Applying power saving
> workaround on disabled PLL\n",
>  			    encoder->base.base.id, encoder->base.name);
>=20
> -		__intel_cx0pll_enable(encoder, &pll_state, port_clock);
> +		intel_cx0pll_enable(encoder, &pll_state);
>  		intel_cx0pll_disable(encoder);
>  	}
>  }
> --
> 2.34.1

