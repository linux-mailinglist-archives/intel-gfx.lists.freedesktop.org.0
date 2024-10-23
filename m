Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A339AC1E0
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 10:38:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5A6210E789;
	Wed, 23 Oct 2024 08:38:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="alGGWIqA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8645F10E789;
 Wed, 23 Oct 2024 08:38:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729672699; x=1761208699;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PYuEJsHIjy78mNAIbtQCWQdmVdVU8/U+uctCg4US+eg=;
 b=alGGWIqAKz4p2OryqGlWJx2cXEQfQS7KEM99NYh450o3NIc/GTLFuPCc
 gOrfOdTWWkLcbb8NcNo1vx8Pt+HK29SXIG05F36pL1evcxp16C2i740/f
 5Qwt6vFkU212SAH9oBkqedt8Bh/socZCvOfXuQpQUmkbC8PnsIdUCAYU/
 EeRNkNvbYyyvAF5UH1Ef2pMgW3E1pdhRcKPwVMoM+ib3rW/nlOJLiTmjh
 0QhT0bUBSyZhztbRKBCg5+oKXDtBKbKmKip1lPq0O684lvJ0Ay6yV+Zpn
 uzc45ZCl/xY9v3ugnRiSHWhhebJry1ny7+fiCND/ZGiIbM/OOT04+UfRa g==;
X-CSE-ConnectionGUID: KoPtExxXS62rg4029mf0fg==
X-CSE-MsgGUID: nTaiRMveRqGBofiZZLBC5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="51790515"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="51790515"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 01:38:19 -0700
X-CSE-ConnectionGUID: lRtF92eQQVa6G7Fpkvsgig==
X-CSE-MsgGUID: BK+k9nzSSLmw5xWkM5vFRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="110926870"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 01:38:19 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 01:38:18 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 01:38:18 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 01:38:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x4pRsoBKmY1ErKkd7U8vEdH+u5K4eb97iELLvEF303eqxxHAefLccVkRcHpVTyXS43VEdUnWdIkJuIgVd/DJzBjyHLcEqOG14J9nAkwwkF7TTdea7yegwXJXJitu1WxrUf1trfL037iBtq9FkKV0IVQR9X0mKBu2uxdAogCKmfUpg1w7uzDgUGYilLOjULddQ5DxoBiUSd8NF0u80R01XAk+YQqi95DUJnO9gpnsqGASxgosvmmXBT8KUazO7LcfY1Vjg1mBtikzpGI37jNscecIPxu0XKrBcse6ONjzqKpqKbjDqQsCTzSNMITbHfZUYvWOlgKyfwJVxx/c4hAR9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s0WLyFAencWJOBk4VvAj+TnpNmU+pQgz18Zv6z/oJWI=;
 b=FsUce8T5ugcLGvyTgQIjdb1FjIHZ0YETav6vhekwN96uyu3OQ974PklHn3BuFknas3F7mfBpY6qRsDmpqq6ISnkSf7J34D0YfX+QbJ1kQbBblLwtMzEatfvIl3lAdvXfHtMgusgOK1z338fSZ3bL+AODzlOC5UdKiqoV3HMMEV5yD54/ukJHzD+IpFEDs4bXiWN9a4StF2gN1N0EtnAY1T3PJT3qZsKFeYGeBsshI7Wk3lUIsAnoYNm4SQfHZ9FC9ukMXPzZCI9T/GpsUPPzgGwhQIcxu4uZaTLKTpaWKvGimVMtqGOEqXFs3y9cfUQV0IOq71ksJoSw63FrSaN8KA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DS7PR11MB7740.namprd11.prod.outlook.com (2603:10b6:8:e0::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.16; Wed, 23 Oct
 2024 08:38:16 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8069.027; Wed, 23 Oct 2024
 08:38:16 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 07/16] drm/i915/dp: Enable 3 DSC engines for 12 slices
Thread-Topic: [PATCH 07/16] drm/i915/dp: Enable 3 DSC engines for 12 slices
Thread-Index: AQHbJRfsCWgh2VEZ1k2DbMeK9G7LULKUA3Ug
Date: Wed, 23 Oct 2024 08:38:16 +0000
Message-ID: <SN7PR11MB6750A8E0633C51D187C5DE53E34D2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
 <20241023065257.190035-8-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241023065257.190035-8-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DS7PR11MB7740:EE_
x-ms-office365-filtering-correlation-id: 2ac7cfae-d258-4048-6273-08dcf33e0a43
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?NZHxHIWsJebAtWJcQCjwX8S/P23/g/Y7/eqInbaFvelvZJWkSHwycYedKMYU?=
 =?us-ascii?Q?eNKe49uI4Pws4uAvOltBnVxLUhKaUzB0PS12zpKCrMAUMvXsmriz7hqhXi+b?=
 =?us-ascii?Q?IDOMS2FGiOjjGxPRSIdXbnqk0cK63rIXS9fSvUV1PK54iMUg3QfkxrDEe4pE?=
 =?us-ascii?Q?B17Y/qOIvSMMgSKjbRQzo1UbjGC7QqtaHNAGalpHLtIWQH3IDZmoJnXv3ELQ?=
 =?us-ascii?Q?toj68+YnoOnSbsXvtPY3u9ocHuIy1IMYR7WuKi0BFt74P+3G20Q9GMben5u5?=
 =?us-ascii?Q?woSoLIsSa+kditinzWRqsX/6BdxuzBy96YWaUtsnrEgSpLxqxSOzUJQKpFG3?=
 =?us-ascii?Q?uZbP+2umNx8yOFRsvzWdvxVyiFoR3SHKoz9+dr458c1paQ++bKyJEVzYaY79?=
 =?us-ascii?Q?RIPdtxSaZT1oCMODlvtkXMvcHSflVKyAUo5+UoBOC+ZJma0llwX2cj5CNNSh?=
 =?us-ascii?Q?oQrjVVNNENznvl3ZsMBEC/bivfxu3nyhdc9JKeZUAkf0XkA3qkjXMDcLLySB?=
 =?us-ascii?Q?88tBsfZqifrrDZdwjNsFXy9Pt8xOToe1rMCxEyIjj00XoZTz+WhxBxj6SF6U?=
 =?us-ascii?Q?Gt5Re7Wg8DBKYwSipHrhIQKbDGXsQ9bNQDhCyRs69FZRdpDi72vDxEvO4+tp?=
 =?us-ascii?Q?jj+WZbGfW82nuunHpgpjPnDrphhBLTYOv7+kkHRea2iGLRPvP5jJo93LcDpT?=
 =?us-ascii?Q?PfyK/LK0XcA36J7Xy/lE/RxVsqeGFswyWCUoafC0TrXYDOfN1esGi//bUIcY?=
 =?us-ascii?Q?F6QXg/4haf0rdlE64CfJWbfxOxm4Ispjbiv23yqE78v3M3YaNjLxlRNzNRB5?=
 =?us-ascii?Q?fGKc++ZMZ/rgg5oPsiq/CSY8dYV4qUDX4nwsMBTKX8GhsaDLQISeCHmbrxX/?=
 =?us-ascii?Q?Q9zeXICgwho1uwbyRojHngH1Oq0GUVFR0BJskRzgps9WTOH11PWfwoIHycxX?=
 =?us-ascii?Q?5Y1kdjvnC9JOiMlFPpFnAl4C7LFBGF53uxMmZN1KG3wedPnIdpxVAZPg5j54?=
 =?us-ascii?Q?SO4tjzHD/Dsb0tYeK/CFXN8JjJ8lKt5KLZ23vi4gRBehPAqmFeRp/Cz4W0zK?=
 =?us-ascii?Q?S/nY4ZIEj2XO3EYxLtDBTMHvXG5JhStV4a1Ad410kwIvPCyYsBTVuzzlhm3U?=
 =?us-ascii?Q?G/XH9ncD9h7I8q/nDMTXbZSD3aaLOsWDd4hsMjvSS2yjqCpFvA08uevjr3n8?=
 =?us-ascii?Q?tcBierC7+LM0Gdy3cNAyIk5z8tPTWsaJrtBkIBxaQ1cr7fK17Yz4Mu+9QULC?=
 =?us-ascii?Q?rP8J0eylHt5xVuL0A+X00mQH0HT+BWATEnujkz4Htu6FhCvguoAiLxEqD5db?=
 =?us-ascii?Q?iE5fNN9dWjDGOpJIzv/fimx1d7EynUhOsWQlq/TNTalEgC+WfYnpnIKeMD/+?=
 =?us-ascii?Q?GrwZpM0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?86cDXlTfzAvGF9Zz2ZtcyoWYsjVee/D8VNd4kXsdhIonHQMRgYzQLiWL6hLG?=
 =?us-ascii?Q?w7nECAt3k2P8gWk8DshR679wzujy8o888P/wwHzga5lyi9SdANmxB20RBqYA?=
 =?us-ascii?Q?N7T18Kss4O2IK4oxkwmnjYnP3PIqCvBLgn2Z5792MBnTODjmPwSWeGbluRGv?=
 =?us-ascii?Q?48Exp/eRwBE7QHmGPVAk4ObZhsMh4E6DXxAzm9qD28d9w/wqo6J9F9SWh/pC?=
 =?us-ascii?Q?EzwLcCpBtsonEcknsd4J80//8kWLCU60Gk7gJcror88PGCu+yn8kSo+LrXRu?=
 =?us-ascii?Q?9ExdX/hvEzucgrcyBdKnH6qy9aIu+O3so9BhT9G6KOhvtU/hB7Ya/xo/zN7z?=
 =?us-ascii?Q?QyJlSzurVCpbFBId9hxhbT0Vn5zO3l/inWSB3v/ule++SyDb2P9CURsOMJh9?=
 =?us-ascii?Q?qRNcUkp06xQSowvY7J++bYiA1o0SfYp7obfbohRg9r2iB0sBT/tORyRVeEg4?=
 =?us-ascii?Q?5ZjiMSizJ46D9bEZ3Oa2AdVv57ZfbLiO5jKTgHX1omq3HwQktJeWvL1sFp6s?=
 =?us-ascii?Q?AZd3MC+2yRmFoQUVlUjhV5xSoPl2/GykKNgd9LNS+WspqXEvv8lexZVztKhc?=
 =?us-ascii?Q?Dm1k6Jz4LNGX5nK7Q8XyVhTzGo8TP1xfuZ+o0EHMksCkeLkZy/lNQ+FmYzwe?=
 =?us-ascii?Q?VCWtnY0ljWPdNVC6dFx91+APP0DadNWDIMYLN/68+w1nTOA1QY2K7GaM77Qj?=
 =?us-ascii?Q?tkxpTuGNc3veK6KZWim5HvFx/wTne9rM1vXOOl9m/Vs6E91GPrep76CE9eTE?=
 =?us-ascii?Q?HCmSG4vSvhQZEdgFYKCL+uau3DiO79Frwu86iAJ+HjSOR2bZQ3sk727QEPg2?=
 =?us-ascii?Q?nNlEH+rGylpAOqSqOvSopTsD0O2o061J8G5AOp1XJBhOYzkJxdE+26UCM41t?=
 =?us-ascii?Q?+ClR2rAmBtTmwmgWjq2OlxmPg4LmMZDD/Ajj1g03dZpaBY0xcBQQXBxVZBVX?=
 =?us-ascii?Q?qBH8Y/ZrH/Z8X08lU9m1e3f4+hQO6hUbh8nuVp2AEv9HKhsKXcxnV7mnJeu/?=
 =?us-ascii?Q?x/dPP5c9n8VwOAMBi3VPGGkMXlPml2qd8FmfKV/G6DBHdfE99aw2eRpXZrpp?=
 =?us-ascii?Q?E9OryHFAWCqVhx2tfMEa17pw8OTaym1Btm+X8Ul3twwInhV9cVNBj6HCIXQP?=
 =?us-ascii?Q?MNe9rBvOdelVBVf0ZiBqwF3Cst+BqmmtX9Hc+MdGZIquSSuzUIqE0azT4yvk?=
 =?us-ascii?Q?2qHVLt1uRo8Rj658Z8vJG8xyzX/Y8A5osFO9H0Ow/lBrAm5qXa5U9em0Wzko?=
 =?us-ascii?Q?qMqu/PgsSG6IBAUWA5C0ANoYSbzP1VelTYq+bmw/lnSuUB8LpfhCsluqD7GV?=
 =?us-ascii?Q?NBcMRZdaGvisuTD/wZf43w1anRaNat/HBOK7jnKy8IojPNZZxk9dcPUPsiMg?=
 =?us-ascii?Q?UAIM2aB9W5k/YF8o5TpxUSTzkMC+YP+reRmBt/m8XwD9KIlOfzq03haCb2S0?=
 =?us-ascii?Q?r+KsszWanrIjK+rp/1h+S2C9flZEGdaSqqfCrSeEWVVkIXV0eGoYMySkNpXq?=
 =?us-ascii?Q?seirusYRbDmLXQ/VTmrmnjiwL6O6WDynka2gASv5Ath1gK1npp96pC5/W4Ew?=
 =?us-ascii?Q?xF9Zt/knh521OekmxfBkCEIjJ1UqGZl+LReic0g/?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ac7cfae-d258-4048-6273-08dcf33e0a43
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2024 08:38:16.5276 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u1E+mXX9arxrZBCX5rCYXSSoSEW7SyeY1g+C8bxx+5RjwKcHyzY/uwpA016gcEB4T2IkhoSBrf/Gkjzbg4YPjw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7740
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
> Sent: Wednesday, October 23, 2024 12:23 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj <suraj.kandpal@intel.c=
om>
> Subject: [PATCH 07/16] drm/i915/dp: Enable 3 DSC engines for 12 slices
>=20
> Certain resolutions require 12 DSC slices support along with ultrajoiner.
> For such cases, the third DSC Engine per Pipe is enabled. Each DSC Engine
> processes 1 Slice, resulting in a total of 12 VDSC slices
> (4 Pipes * 3 DSC Instances per Pipe).
> Add support for 12 DSC slices and 3 DSC engines for such modes.
>=20
> v2: Add missing check for 3 slices support only with 4 joined pipes.
> (Suraj)
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 19 +++++++++++++++++--
>  1 file changed, 17 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 3b20ea844925..4065fc26e70e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -115,9 +115,12 @@ static const u8 valid_dsc_bpp[] =3D {6, 8, 10, 12, 1=
5};
>   * For now consider a max of 2 slices per line, which works for all plat=
forms.
>   * With this we can have max of 4 DSC Slices per pipe.
>   *
> + * For higher resolutions where 12 slice support is required with
> + * ultrajoiner, only then each pipe can support 3 slices.
> + *
>   * #TODO Split this better to use 4 slices/dsc engine where supported.
>   */
> -static const u8 valid_dsc_slicecount[] =3D {1, 2, 4};
> +static const u8 valid_dsc_slicecount[] =3D {1, 2, 3, 4};
>=20
>  /**
>   * intel_dp_is_edp - is the given port attached to an eDP panel (either =
CPU or
> PCH) @@ -1025,6 +1028,13 @@ u8 intel_dp_dsc_get_slice_count(const struct
> intel_connector *connector,
>  	for (i =3D 0; i < ARRAY_SIZE(valid_dsc_slicecount); i++) {
>  		u8 test_slice_count =3D valid_dsc_slicecount[i] *
> num_joined_pipes;
>=20
> +		/*
> +		 * 3 DSC Slices per pipe need 3 DSC engines,
> +		 * which is supported only with Ultrajoiner.
> +		 */
> +		if (valid_dsc_slicecount[i] =3D=3D 3 && num_joined_pipes !=3D 4)
> +			continue;
> +
>  		if (test_slice_count >
>  		    drm_dp_dsc_sink_max_slice_count(connector-
> >dp.dsc_dpcd, false))
>  			break;
> @@ -2410,8 +2420,13 @@ int intel_dp_dsc_compute_config(struct intel_dp
> *intel_dp,
>  	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel rate
>  	 * is greater than the maximum Cdclock and if slice count is even
>  	 * then we need to use 2 VDSC instances.
> +	 * In case of Ultrajoiner along with 12 slices we need to use 3
> +	 * VDSC instances.
>  	 */
> -	if (pipe_config->joiner_pipes || pipe_config->dsc.slice_count > 1)
> +	if (pipe_config->joiner_pipes && num_joined_pipes =3D=3D 4 &&
> +	    pipe_config->dsc.slice_count =3D=3D 12)
> +		pipe_config->dsc.num_streams =3D 3;
> +	else if (pipe_config->joiner_pipes || pipe_config->dsc.slice_count >
> +1)
>  		pipe_config->dsc.num_streams =3D 2;
>  	else
>  		pipe_config->dsc.num_streams =3D 1;
> --
> 2.45.2

