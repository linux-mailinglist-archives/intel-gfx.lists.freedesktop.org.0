Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EED27997B78
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 05:48:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94CE110E840;
	Thu, 10 Oct 2024 03:48:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Un/YUsIv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 281B310E840
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2024 03:48:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728532108; x=1760068108;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=u1r2e44TtgxwkKol1yfAe1do0Wz2sehFBr7h24mPodM=;
 b=Un/YUsIvaW8+pjEVAKdp0M++BI5mCiwbXSZP9lvaQ/gu3arCt8S4Mskf
 Xu6LzQsZLs61mRuXtnNtithjz8FfIC0jpB4l5RPMfNp34rL7neXNzBUUg
 DiLTufZSVTCJEfndUjkD2V3Dgh+9O+bgH/Epd1Hc8S+W0xyhcBrC9Ivul
 3KQRu/Z0Bo5jgL7FTp1uDhl1OmbQPZE9cMRrBIPvrbVsJaI0G5ftotU6C
 IlEBomL2mV98yOE9mBJMLWZxAJyddT/X1SF5O73f6SPGVkXnjOu8D7NwI
 ikeQSQiJ6xn/TPtfUG8QgyS2EdnLTwsIe/hJDgOZtL/3iwfDmWLjeGM9a Q==;
X-CSE-ConnectionGUID: OKHHtRebTU6RNIhopK/G5Q==
X-CSE-MsgGUID: NKuOkze8Swmf+G3+dyD8og==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="28000473"
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="28000473"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 20:48:28 -0700
X-CSE-ConnectionGUID: HV2/CmUfRwuOa/MFCn53vg==
X-CSE-MsgGUID: I71I9MeKRcCJ1qDbZxjwCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="76073318"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 20:48:27 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 20:48:27 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 20:48:26 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 20:48:26 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 20:48:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tEPqenGKyOTeEinxR6ygSV1iRND/G4nIVUWtgyz075VDCa4sMkY/nrAWLLDcclN8IhrkcEsxxfaNhnvQ5b9/HFcmHOpf3ragCnFACtCQp/nr/10n2oXPwOoUQlizL3+TMDi3C6u97Ije/Y4bzP/07i7wBo1cX02yozsSj4Mb5kgY9X6ujw9+Uei/qEJNCf7s8h1Ao5LcGphYXEY9YKBnGyAubHIh41AS9EU2lB2oH3t7xL82kzIPXMs9YQwAegMWUHDkAvDPlN4iL1kZPn/6Co3spPdXhyWPQYKfdz3P82wvR++qH17tznIsI8PDaQZRz/BpyT6KACHe4w/brOmJiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=646Cy4dYt5t5ikLh5bOVd4Q3VsTM+hrXcCdp42W9tr8=;
 b=uelvrcaFg12ixX7y6P5vn8mqLJ1YkFLfW1PBXtsw4d8AgTJC9AjE4nA6nvMbj8n2mCZtZTRUaviaxsMyn1ARKPs1wRNj8wHcHu4Krc36pnxEz9GNoTlmI5zYc2q8rS7l8qM3H0L1oJdpFvJLh5wb/NDaALEVuUGnIvW+bg9b4A9l4IvAGF7OX+ah5+TUREXIzDWSqWsXaDqUFkPNnshmla/u2NYPKz0g3H+SMkW/EfxSJLRpMo9ugKkrPuHwcgRXYstS+fZzyGM1ufDwF8JMzlF1gqE69OaglKrsvVhcy4XxujoiWZBDjTOWhWKcGbyggm9e/lXiaO9ZpKXn2FX10Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by BL3PR11MB6434.namprd11.prod.outlook.com (2603:10b6:208:3ba::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.18; Thu, 10 Oct
 2024 03:48:23 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8026.020; Thu, 10 Oct 2024
 03:48:23 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 2/2] drm/i915/dp_mst: Don't require DSC hblank quirk for a
 non-DSC compatible mode
Thread-Topic: [PATCH 2/2] drm/i915/dp_mst: Don't require DSC hblank quirk for
 a non-DSC compatible mode
Thread-Index: AQHbGjr0Z4+G9CiEFk2daaXp+v7X4rJ/WeyQ
Date: Thu, 10 Oct 2024 03:48:23 +0000
Message-ID: <SN7PR11MB6750C46A4BEA6E0313EE6681E3782@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241009110135.1216498-1-imre.deak@intel.com>
 <20241009110135.1216498-2-imre.deak@intel.com>
In-Reply-To: <20241009110135.1216498-2-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|BL3PR11MB6434:EE_
x-ms-office365-filtering-correlation-id: a8c7b40b-606f-4c97-8d12-08dce8de63fd
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?wwpHcyUSJWb8hTLS60URZUPWNKeUCaBn70XxMICKKkz7MwXWg4XWP5BNQS0J?=
 =?us-ascii?Q?QgQa8nLKy0wpIivI5fouQg+VUPP4LFC/Z6lfMlrMP3ZqC7/F6275RWRuaF6j?=
 =?us-ascii?Q?CLI3bdfhqGb0yBjAPg5M8vy2fVNrdJy4Htc9sy4leqERgIu+Xi0zccxHt5EJ?=
 =?us-ascii?Q?DGKAaHq3dbymThxHjoCBn4csfTq35SbfeFt7Zx+YO5iGv0EpLw1iLnroXCcY?=
 =?us-ascii?Q?o0tvZs/UdZYYuM25LQeRSkoBMO3HoXnP4fhAyp3zWnt8dwvssVr+RxUT+BhL?=
 =?us-ascii?Q?gmqzka1Qo9RDB9zitXqJw0ccndfiF3hEnDAzAC2S5z8CcD5lzEh7CMmNvvb3?=
 =?us-ascii?Q?P06W/rNW0A6DmT0ZNbg6L30FpuDRwmr8pou/1Ul0EN2sJ0xPNwswR0YXCP6Z?=
 =?us-ascii?Q?iN/Omgu1Y4wzrCgMzI/Ls0lO2Cfz7LrJz6izHTVNncrPqfaJqIQBpzlSJCrj?=
 =?us-ascii?Q?RXtmk/IT/9hUCHg53oL1zyK8g0iZtrqVxNknTFUaayuREo/pv5NjVAu+D4Zl?=
 =?us-ascii?Q?1KGM6jxx3gcwy5J2SeRTRMcOVU4QVVgptDug6wZKt3TNQGVX/bZgn9/jejxp?=
 =?us-ascii?Q?NAj+P9W1TwHJSpncAdBPTQphtFrVRXv9bdEikQECoFzcGy3WAvhNlmSgHwZn?=
 =?us-ascii?Q?Wewaym88r3KVguW85RnP4jbeI1inZgPmiYmJH6puy/hbhnZzPVE89/CP/i6O?=
 =?us-ascii?Q?LHMVM+CG7sRJAUt8Lpk/zg2exjl76P93Dnjn5T+NtUp43vzB4Nqi4TrR2HUX?=
 =?us-ascii?Q?C1TyS3+DiX49Q1bDgdY3LjgVXP10+vfZkHZuC2b7hxY99PgDjuXgLX+wHIzj?=
 =?us-ascii?Q?yFr0AUzCImrYe3k2uxoveHpML4LWdfUqMZBMyUN9zJn3YrR62nDWaVlbKx3h?=
 =?us-ascii?Q?NQoDvvn5BdEby0dCcr8m/9f+mVp6PRhiPjGrZTXEDnROH9Q8ECbUoJ9Hzhe+?=
 =?us-ascii?Q?1OQEoEyzuSsE/M6nWFP3UAYCGq9LMEm0edDoD1eEtqgfkHydKt9mzaOxbqaD?=
 =?us-ascii?Q?ytEZxXUeguEoK0+0qa+bRPtJW2eg8kjHR5YCt9E51Ifj36A02MQXLMHAvljO?=
 =?us-ascii?Q?ZBOXff4JNfmIPaZOEUR4/45dknDV5ts6HCdYSSdGCMFGbuBSdsnAzjwh2VI8?=
 =?us-ascii?Q?OHT49aWpuIdqcRnHFwbQuYaqOvZ2kMzKVf4oP/79kyDIBHTsjAu+ptCGbQZi?=
 =?us-ascii?Q?w0kfq4AkDOEKh00T6+gYDG2rwiHAV6ekOKjP0ZK0blnehPR8ONo7Ck8WQXXb?=
 =?us-ascii?Q?dmeoV2ua+aKkcj8dOwWzTxayXp6nv4ncVdVz/hi+i3f+YBBBJbdm/Sw6Mtu+?=
 =?us-ascii?Q?qTAnu9TxcvO3fZbor8K4a7reyu5LdQbi+BuTiEW1XcSbCw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?T3VlrA4ShNYfzkqm+sRXagWywbPyB350AozHhfhOooeEOZvbWbJKyQmBGpsJ?=
 =?us-ascii?Q?e9+M5m/XHpG2f5TSXY+4qgFgxbKkTDdXgKukjiQyHlwpUVn0xCM5BTxtLxTh?=
 =?us-ascii?Q?CmZgdGGjMF87Tx5KVb63HfVCXCfLHzxgKYXgl+36gMFMqzmSWSTlmRE8cv4z?=
 =?us-ascii?Q?Fqyyp8jhmLb2ZjmNaEjpE8W5Hqkw6mDCKesjFEhjH+owRIYfCiC3zyNCIoS/?=
 =?us-ascii?Q?SGBE9IjzCcp89rn5SdsE5S7B+Y1HgwTkS4TIxLIETRIu7XuS+jIyGd9h6ec9?=
 =?us-ascii?Q?5W/zrXO9EgEUpoMvfqvZoHiWNlT5BA1Xn8qHLLQ3ulm+xeumx/C+c63dzhNl?=
 =?us-ascii?Q?2f6fSqTlV59y/XC7Q+ewtacZergh5NZZ1DxaZ1L0/GjXs3ORrBhr+R9Il/E4?=
 =?us-ascii?Q?fm8dalQNF4x+gWUR0Lqr2KkZnf989kMwGo3MX1mBWusD7VIOpgdZUzejRf77?=
 =?us-ascii?Q?outU4w7yLfN0HUGTdQ/TPdhlfA8p9NPQeWHcdX/naCHAdVfN5hn6n2qZ3Zra?=
 =?us-ascii?Q?RTd5/yJVOhkUfro6hvNeprJz3EqROqdrg+pmf/K3E8ROanS+TcZohwkTvEGW?=
 =?us-ascii?Q?gAdLODIX987T5ldcVTaUZ+keb5s9uQEVLq+6lAAHlvkVb1akgK0PoQ3xA0Zg?=
 =?us-ascii?Q?r3D/Ulj3Lkuiu2aJxpjZ/2Pk5U/VChX2ejNRFWhuIvQOsXmHEv+/L16aAbZ/?=
 =?us-ascii?Q?rqCfoSDxNFs8yt/lzGrNRYhr00/KqCFdJNOXoHd8ntaROe1vEhg8TPJR51US?=
 =?us-ascii?Q?mEYnUr4+8uiIdYoLXbAbCGwakEDxjzt4JhFrL7kqEvVC4l4jK/9klzEppQwQ?=
 =?us-ascii?Q?d7mSKfQAY8XbT3HmUQbgmLV72tQLmQW99POtRkYL26Lcr/Ml6/xFDsPZYavt?=
 =?us-ascii?Q?NuNz3u2a2tprm0dVtQrn2hoXrdiEPRfhCbz4n4Pcx4T237IUMjc9laCsdpQK?=
 =?us-ascii?Q?doEswpnAHbmeDT3vbzN7wDW34RfhzbBpoNdNNMkFtvTXt1f8r2diIAWl8XLA?=
 =?us-ascii?Q?i65u7W7P5o96KGj569+ZosS89muvYMI7fvCuY07sjgMtcoE35CLQa52eHpoo?=
 =?us-ascii?Q?Yl7H2/qjxNhjkUjg6ImP5eTRX5m97ybMYeRbine5N4vlOJqx3sYhH55MWG4N?=
 =?us-ascii?Q?ARzTe0bF8HkhSY0D/JyTBRLCes1zuDLOzDL1ICTouGjjF675dqq25G9A+EQE?=
 =?us-ascii?Q?rcqZqgCy5HAxZKLqA3dWfgAZCwUnnebeE5bB2EA0JUcls7ZtUJDFbuBXwWgb?=
 =?us-ascii?Q?xoJoJ+hP5+BB+h/DNOiIIDp+LxDJUBawltx5oHGt07vtS7liKprecALxZXby?=
 =?us-ascii?Q?TKubaR2qwJDSk3fqcIwkaVgFWJcMf37iOwfJAayac9L/epTZ/Ipbdnmyv0Vg?=
 =?us-ascii?Q?7/dCqYOZdaihG7MTasYFfW/+NNh3BCrBm8nEXcoTS+P3aJUlj4sANee4r9yT?=
 =?us-ascii?Q?F4sjlJslap9aINOMQToL/YtcZPR0Q4doccJWeFDI1uVISJJ+vW7g94pcas5o?=
 =?us-ascii?Q?HxIdrYga6a09WQAca1y8TDN0W6+vOZ9FF+zWnHH1GeC5bIt8xwOno5mS0SHj?=
 =?us-ascii?Q?8G2nVxK9/zE4tUVXg+cPJMEYBM1UM7VtIv5be2/e?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a8c7b40b-606f-4c97-8d12-08dce8de63fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2024 03:48:23.7599 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4cWhakP0isc0xt+0s/A+GU5Ja45PP661hUEvijFhcHtw2I9Ic96sOq7MnqUwaezcDekFjkbBr6FeVWLour/CDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6434
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re
> Deak
> Sent: Wednesday, October 9, 2024 4:32 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [PATCH 2/2] drm/i915/dp_mst: Don't require DSC hblank quirk for =
a
> non-DSC compatible mode
>=20
> If an MST branch device doesn't support DSC for a given mode, but the MST
> link has enough BW for the mode, assume that the branch device does
> support the mode using an uncompressed stream.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 2822ae1160034..1a2ff3e1cb68f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -467,6 +467,9 @@ hblank_expansion_quirk_needs_dsc(const struct
> intel_connector *connector,
>  	if (mode_hblank_period_ns(adjusted_mode) > hblank_limit)
>  		return false;
>=20
> +	if (!intel_dp_mst_dsc_get_slice_count(connector, crtc_state))
> +		return false;
> +
>  	return true;
>  }
>=20
> --
> 2.44.2

