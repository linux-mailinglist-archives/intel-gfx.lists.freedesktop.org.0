Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2737D9A1EBB
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2024 11:44:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3E7910E1EC;
	Thu, 17 Oct 2024 09:44:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NMLRDpMu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE1DE10E057;
 Thu, 17 Oct 2024 09:44:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729158268; x=1760694268;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=q+IIRV5mIDFa+1duOcew/2TvQEnyMEV8xlfZmzFyHmo=;
 b=NMLRDpMufCX8y4ESFmLCKk1IAIJTIUf7FzN+/7N5x47WA2yNt6rLjsXE
 f0+AXP39mL9nEoVLVPbSUOdu8eeNhEC6BEB5GfT6Uv1VWTm1T3BhApUl6
 s437lorJqg63pbG7MLOsr15OwKa/mnCEaVQ6htYOUy1YNSlBqyKhDAlMR
 hQsA0bqoUaO7qBNoZdge/TL0ql0ojbXj0Wty5zQ18xjWuWjVYQS70EBB2
 sVETNodD7otjSYdQooj+bOq5ZofL+3Zy79D+1ZNR1MRMaV37HGpeRDOK8
 qBN9AhXNPDgoK9XgHkeEsaOJZ1VWJgKdl37AVJTDo9JQ9zRRGC1RIxMMt Q==;
X-CSE-ConnectionGUID: ofokswIHSim7HLKsX6YURw==
X-CSE-MsgGUID: ixjey0IbS9mWVM6/hqF/mw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="39184208"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="39184208"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 02:44:28 -0700
X-CSE-ConnectionGUID: U+ZIpNAlTLO/d32eHwRbzQ==
X-CSE-MsgGUID: 1DfM7cbBQXWC9jm6AnpHyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,210,1725346800"; d="scan'208";a="83145980"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Oct 2024 02:44:28 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 17 Oct 2024 02:44:27 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 17 Oct 2024 02:44:27 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 17 Oct 2024 02:44:27 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 17 Oct 2024 02:44:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NVxcqe1OBsffTVF5nhLjwZKFolsXx6nP7v74vIowVShkNwvJmQrs474baoB39HJWVbAm4gVDQ3yfJw1M8AXL0k3K4Rz2dIuLJHgTnR2sCRR1ovDTZ9De6rzZliRiGsv68NDYUHaD6+WEiK5xJMwCIZyjmTe5hde6pEgmhBmLTlcV6asHOR97mC8Z7Kkz6c5qHIMkGsHORjcj8CLh3/zZrcb/q0D2kBsbduX7WbQZcataTyOxnQ54q9R2OVh6UhUK/39qaeaaT+sx0PdAXs1wBsGiMuUFfjDk1NOi4VWedJ+Kdy1w/ITGRNipUAVtUAu8L5WYQXQHr7O8hC15SjBmlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+AMTlfZ82zkSqrRDjM/mORtM0jcFnwa4x/UOa3cxNHc=;
 b=IEJurIk0i/cBwwTSk8hP/CasQqmSTFulrNkZobLPs3gYb1xvBoNyBpypCFd37BBzZrGhIlZomhIbZh0Vaw1PQgvgXmE4wehGvwQ++3yzBrTIhIuFNy2BvssbdRFPLwEUDV/dWm0LlErnuBqtwSI3Q0pI+6ENBe0ImM7AQABlq03aMQUmWi42Dvys4PyxLRpr70fJMJX/ikSf68dMELP/RvBCWxtScRo2WKXfB1ioBnFXYV2KBxno5e8pMKD95Ki67ivF/avtTHu8IvcT24ehslW1f1jmBTIJ8dxc8VSv3L4WJ7AKQ8XT4hamwWfe98M7qOWX719iT+YGUYOxB8PIUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SJ0PR11MB6696.namprd11.prod.outlook.com (2603:10b6:a03:44f::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.18; Thu, 17 Oct
 2024 09:44:24 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8048.020; Thu, 17 Oct 2024
 09:44:24 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 07/10] drm/i915/dp: Compute pixel replication count for
 DSC 12 slices case
Thread-Topic: [PATCH 07/10] drm/i915/dp: Compute pixel replication count for
 DSC 12 slices case
Thread-Index: AQHbIG2oaOSA7A5io0KBGGpnOARtzbKKr5Ew
Date: Thu, 17 Oct 2024 09:44:24 +0000
Message-ID: <SN7PR11MB67503D56E29FDC09BEEC1701E3472@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241017082348.3413727-1-ankit.k.nautiyal@intel.com>
 <20241017082348.3413727-8-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241017082348.3413727-8-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SJ0PR11MB6696:EE_
x-ms-office365-filtering-correlation-id: a78c472b-1d67-44d2-72d9-08dcee904902
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?+E2O38DaSvDf5IRp6jzvY2PEFoZlFEAqivTtgTMD0xqdPhxraswA+JWXipC2?=
 =?us-ascii?Q?lhiD1zxDPsS2terXWGEiGWjQVcPcyH+EMTiYdpQErF1UvFcrfCzEP9SdgFz3?=
 =?us-ascii?Q?HjIBuBTIQUOfaQhdUqh9nWjAqBeyWQS2N2DVz3YncP8VFb94dgTeEOObNSkP?=
 =?us-ascii?Q?k4LOGaOyyW/DXksJ7mS0+sYHhUbdo37aDEykIH0VyC3bz+d8porqLXjl01nn?=
 =?us-ascii?Q?eRPKlLNYfJPj3PdLWqvVWUQuQGKYZn6/Lzgnz9q7jEBS3UfCYKpEmCaSf5HN?=
 =?us-ascii?Q?K8g5olezU8IGzczPn5tWF0wWN9EdukjxLrQfoo8TlItaavNOQtSt48oJRloi?=
 =?us-ascii?Q?JV1PQ0A+59uwFbOy4tcJsBn6bX+4uO3x3YkergNOZmbDxdVB9ajRtizL1HE+?=
 =?us-ascii?Q?BdZ5u3FMmdPSnGEx77xezGrEqTleRwyAVJGEhh/2Auv+bM0BTKwvZN5SDEqQ?=
 =?us-ascii?Q?lJRe6aa6b2zQiyKXlXVT1ok7xvrWwO211ew68zb2sw+UqPSOQlpHMi2rq6BA?=
 =?us-ascii?Q?DwNstSv1D+n8U2Lf68pWVdBCLhEW7zWqzw00J2+y+1v3gja1XXLCBUHIINxX?=
 =?us-ascii?Q?VnHXNBCvamfYmqp/NGneHlj5hqaNXA40ogE6dXrQw3iYqKUP1Vx8eQnW6Frb?=
 =?us-ascii?Q?VmgxXZ3RP+BGUDaXtLuWRJ7z4cBS5F1+5yGDjFtJdtw/kD2E9wB0WWdg6AU8?=
 =?us-ascii?Q?SfYE1LS67orVDCW8z73SwNvBUtycgVXpwnVX4W6p8vPkjoPNfEBQRxDycTAm?=
 =?us-ascii?Q?QydYbcwvdWBwhXDJDbvh/sIsGfjb4vWp9KLZ9+m69rjpoL+CEW9wT79ijVyY?=
 =?us-ascii?Q?UBVPA3SCphzVrKxDES7kuLSwxJgeeY1yMlm9ToEzAHN/1+L26VOfd8t42BO9?=
 =?us-ascii?Q?m3UPZvOsomDBv6cwSKnhUyvCK7/9IliCAs1ewLfwg2kIxZh54xoQvV56SUkH?=
 =?us-ascii?Q?76dh5P+PRws6koNxA/JDhyo9rUiDfN2uHwf9kuz5i6/P75Tl9GDWAxGg6xKg?=
 =?us-ascii?Q?kLkaHAthgcnFTuzrlOoC8Q2Nj6G3B8WjcKVXNlgJI3HaA+W9ThgsClxth5ga?=
 =?us-ascii?Q?j2ZP846xF9TV2+Xak2Z3sVut+wUyufCox7WFo5OEGVVoVMM0gRHrnxME+HrO?=
 =?us-ascii?Q?RgRT1uDpOUqeeb6NYZtkkLfQYCX1wPSGlOpzw51BkiZkkJcAMLcCkJGXG1+g?=
 =?us-ascii?Q?mbiI+RPsUBa9142UZSNXtvsM937syjYMJ5r4eBlKeadIubfucT+/bwmH0Ev0?=
 =?us-ascii?Q?JHB4ya9wiQ7bsH3qBShvNFsUeWHkgrIt8exvxow3cXQAe3rFW5t62YhHAt83?=
 =?us-ascii?Q?OMHp3mh1B+ifaCB+HJwg7RqphrvI77Hm0J/DwI8sB8x7MSrsYuaJC8mKVrjh?=
 =?us-ascii?Q?gwsf4X4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zQezQgC0ZP8m6e6dB5oBGrzAbmkIx4XLenvtmZMe9S1qdaWYzoWM2k7c1+eI?=
 =?us-ascii?Q?VdGCK/o91wlK4VgPqf1eBLOHkDJcF3jBiRvbtoJF2schayFLR/1WuHSFFivx?=
 =?us-ascii?Q?PQTeDUn6CTN30fI2j6Sv2G8YRMFPSiH/qSlbE/WCvVJUbaDoqQE6IbvSU7qP?=
 =?us-ascii?Q?U7r6tQagcfYUpN1y98N/MrEA8RXR/dU+My5Snjca2rVWAJobMuodZwzkuk/v?=
 =?us-ascii?Q?uQSkbWcB9KWamCtwMevQQssEsMQDjVigV/iQFXivbkxEH0UkO90fPCSrMVZg?=
 =?us-ascii?Q?ASNsQr9LYEaPpu0GZ/3wu/CWe+43wXyPErkyOyLTq4/QRcN3NJwjTqQ9KOug?=
 =?us-ascii?Q?XrcdV46roEEm1+ZwytFi1vTix91Nga9dU3FBaQG9QSkNrImT83H+Wm2FL5Ss?=
 =?us-ascii?Q?K+TqbSBbIpjRpjTzCCpsIJ8QM2jcx+ZkLRSc0OnVtOQAvhbgUEo+AgSjr9KL?=
 =?us-ascii?Q?6qQpnz/SLcDEc/0u4ayFLVKSGo2rlpDxcMgqtzwWN1HRywnJuUMMiBtn5cve?=
 =?us-ascii?Q?Ra8JzM5lFxrQgcMKV+LS7CrSF9D1OZBv668E4G2k5IRSX9c8/WmNKL5SESw7?=
 =?us-ascii?Q?zmuWLi4/UlZg9Ii06JQCm8LcRQ8iSGlbViTMRToQMD8tu4WskBXBbyBA/BWy?=
 =?us-ascii?Q?vyQJlTDLteiAO7VhQNBF5ecn77qEw4aoeLKTxwe4SO0ZYJA4Xk/QWxNvWM30?=
 =?us-ascii?Q?zOXTvNqsjBo/dzjBVH0IqbKIutKpHsYPhM/wEMymxdqG/qTF08k+7q+JycHk?=
 =?us-ascii?Q?bXc6dwe1u86KtHlC/4IJrIyDz17G5QDLk+IFQ7NdzTlNtYJmTWMfK3JmeDkU?=
 =?us-ascii?Q?CDq5tzONZ4PC0kXPruAgEtiA24JTYiyIvAuopcvtgMALK0ygxgCGWtmu5Zes?=
 =?us-ascii?Q?ZaUHGT3bA+UtEhWM1jL2SYjsoczXbN+w4RdkqYDnfbzchbPAn4zBIXGicyK2?=
 =?us-ascii?Q?bKvchXNqJEBfiKTCfwl7Qq/C5rDoTTNrnuJPLvLdUF69vD4gpJ4me2zrSt31?=
 =?us-ascii?Q?daUHapLozO6mGl6HKSH3zJ3+H9IIZ7CibPN/gTmJbr78ij+QjvXWgIeU/DOG?=
 =?us-ascii?Q?DSYLI8sAR8udE00P+6perJliaLpjr9Ax0WGa5gJCfFncwEHTanYQ4BQXfIZF?=
 =?us-ascii?Q?aANSCmJpZvobGkAGlaDiCtpIzf6vrJC2YU/0Qf72TvKnfBTEiS/PoKTsZJLg?=
 =?us-ascii?Q?S7cyAyO+/iLOHkpwScnFUUpKADu/GoCM/4TSlGZ8WxPmuIng4JU+nOt0KxnZ?=
 =?us-ascii?Q?9ALQ3CUovKeHEaChdSqIV+jnNtv/yqG18EPHFQr4oSov84MYd4JkRK9oNu0e?=
 =?us-ascii?Q?9yDVHDrDTq0YhhaDvA8c5yOPlPe+7Pf4bEeS0SwbCukqR9azyjgjY921qKec?=
 =?us-ascii?Q?Hig8nn1RMsJ70yVIiA8aK8ljOfSljvy5LqYHvcpZ0nBlSewf6oGlhdFmH7IY?=
 =?us-ascii?Q?p+XOiKL7iSdN8F/8F2uib8KCB3h2UyF8qYknUl6DKkLECDs2KZDzzw77bBzD?=
 =?us-ascii?Q?QuK453Tu/xjviQq/vykL86NKmH064poWuRqX6Vg3eiSmrpiI2TrO3tC6wn5h?=
 =?us-ascii?Q?hetwYUdEucELc2sw3XsHWHLr10lEky+vGjY89TYM?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a78c472b-1d67-44d2-72d9-08dcee904902
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2024 09:44:24.6962 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZuaXVNVoUuht5gMzFnX2/7vM4oBCVcvWSBxcDOs/QAAD1mRCNzCZ1wiYBvxJ4e6sTFFShFPnZnvVIgYpe/Zm/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6696
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
> Sent: Thursday, October 17, 2024 1:54 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH 07/10] drm/i915/dp: Compute pixel replication count for
> DSC 12 slices case
>=20
> Add check if pixel replication is required while computing slice count an=
d fill
> the pixel replication count in crtc_state.
> For MST currently 12 slices case is skipped, as it needs the extra pixels=
 for
> bandwidth computation.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 61 ++++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_dp.h     |  1 +
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 20 +++++--
>  3 files changed, 77 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 6cfc7d1c96ea..ef96b9235636 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -981,13 +981,37 @@ u16
> intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
>  	return bits_per_pixel;
>  }
>=20
> +static
> +bool can_use_pixel_replication(int mode_hdisplay, u8 slice_count,
> +			       enum intel_output_format output_format,
> +			       bool ultrajoiner)
> +{
> +	int slice_width;
> +
> +	if (!(mode_hdisplay % slice_count))
> +		return false;
> +
> +	if (!ultrajoiner)
> +		return false;
> +
> +	slice_width =3D DIV_ROUND_UP(mode_hdisplay, slice_count);
> +
> +	/* Odd slice width is not supported by YCbCr420/422 formats */
> +	if (slice_width % 2 && output_format =3D=3D
> INTEL_OUTPUT_FORMAT_YCBCR420)
> +		return false;
> +
> +	return true;
> +}
> +
>  u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>  				int mode_clock, int mode_hdisplay,
> +				enum intel_output_format output_format,
>  				int num_joined_pipes)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	u8 min_slice_count, i;
>  	int max_slice_width;
> +	bool ultrajoiner =3D num_joined_pipes =3D=3D 4 ? true : false;
>=20
>  	if (mode_clock <=3D DP_DSC_PEAK_PIXEL_RATE)
>  		min_slice_count =3D DIV_ROUND_UP(mode_clock, @@ -1031,7
> +1055,10 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector
> *connector,
>  		if (num_joined_pipes > 1 && valid_dsc_slicecount[i] < 2)
>  			continue;
>=20
> -		if (mode_hdisplay % test_slice_count)
> +		if (mode_hdisplay % test_slice_count &&
> +		    !can_use_pixel_replication(mode_hdisplay,
> +					       test_slice_count,
> +					       output_format, ultrajoiner))


This check here does not make sense this function is already used in conjun=
ction with
mode_hdisplay % test_slice_count which means that we enter can_use_pixel_re=
plication
only if mode_hdisplay % test_slice_count is true and when we go inside can_=
use_pixel_replication
we have !mode_hdisplay % slice_count now since we have entered this functio=
n it means this check will
always evaluate to false. In conclusion, either mode_hdisplay % test_slice_=
count is not needed  or the check inside
can_use_pixel_replication.

Regards,
Suraj Kandpal

>  			continue;
>=20
>  		if (min_slice_count <=3D test_slice_count) @@ -1458,6 +1485,7
> @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  				intel_dp_dsc_get_slice_count(connector,
>  							     target_clock,
>  							     mode->hdisplay,
> +							     output_format,
>=20
> num_joined_pipes);
>  		}
>=20
> @@ -2322,6 +2350,33 @@ static int
> intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>  	return 0;
>  }
>=20
> +static
> +int intel_dp_dsc_get_pixel_replication(struct intel_dp *intel_dp,
> +				       struct intel_crtc_state *pipe_config) {
> +	int mode_hdisplay =3D pipe_config->hw.adjusted_mode.hdisplay;
> +	int slice_count =3D pipe_config->dsc.slice_count;
> +	int pixel_replication_count;
> +	int slice_width;
> +	bool ultrajoiner =3D false;
> +
> +	if (intel_crtc_num_joined_pipes(pipe_config) =3D=3D 4)
> +		ultrajoiner =3D true;
> +
> +	if (!can_use_pixel_replication(mode_hdisplay, slice_count,
> +				       pipe_config->output_format,
> ultrajoiner))
> +		return 0;
> +
> +	slice_width =3D DIV_ROUND_UP(mode_hdisplay, slice_count);
> +
> +	pixel_replication_count =3D (slice_width * slice_count) -
> mode_hdisplay;
> +
> +	if (pixel_replication_count >=3D 0)
> +		return pixel_replication_count;
> +
> +	return 0;
> +}
> +
>  int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  				struct intel_crtc_state *pipe_config,
>  				struct drm_connector_state *conn_state,
> @@ -2391,6 +2446,7 @@ int intel_dp_dsc_compute_config(struct intel_dp
> *intel_dp,
>  			intel_dp_dsc_get_slice_count(connector,
>  						     adjusted_mode-
> >crtc_clock,
>  						     adjusted_mode-
> >crtc_hdisplay,
> +						     pipe_config-
> >output_format,
>  						     num_joined_pipes);
>  		if (!dsc_dp_slice_count) {
>  			drm_dbg_kms(&dev_priv->drm,
> @@ -2400,6 +2456,9 @@ int intel_dp_dsc_compute_config(struct intel_dp
> *intel_dp,
>=20
>  		pipe_config->dsc.slice_count =3D dsc_dp_slice_count;
>  	}
> +
> +	pipe_config->dsc.pixel_replication_count =3D
> +		intel_dp_dsc_get_pixel_replication(intel_dp, pipe_config);
>  	/*
>  	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel rate
>  	 * is greater than the maximum Cdclock and if slice count is even diff
> --git a/drivers/gpu/drm/i915/display/intel_dp.h
> b/drivers/gpu/drm/i915/display/intel_dp.h
> index 60baf4072dc9..bd7a8232572b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -149,6 +149,7 @@ int intel_dp_dsc_sink_max_compressed_bpp(const
> struct intel_connector *connector
>  					 int bpc);
>  u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>  				int mode_clock, int mode_hdisplay,
> +				enum intel_output_format output_format,
>  				int num_joined_pipes);
>  int intel_dp_num_joined_pipes(struct intel_dp *intel_dp,
>  			      struct intel_connector *connector, diff --git
> a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 1a2ff3e1cb68..f1f19e1c4df8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -154,11 +154,22 @@ static int intel_dp_mst_dsc_get_slice_count(const
> struct intel_connector *connec
>  	const struct drm_display_mode *adjusted_mode =3D
>  		&crtc_state->hw.adjusted_mode;
>  	int num_joined_pipes =3D intel_crtc_num_joined_pipes(crtc_state);
> +	int slice_count;
>=20
> -	return intel_dp_dsc_get_slice_count(connector,
> -					    adjusted_mode->clock,
> -					    adjusted_mode->hdisplay,
> -					    num_joined_pipes);
> +	slice_count =3D intel_dp_dsc_get_slice_count(connector,
> +						   adjusted_mode->clock,
> +						   adjusted_mode->hdisplay,
> +						   crtc_state->output_format,
> +						   num_joined_pipes);
> +	/*
> +	 * FIXME: With 12 slice count, extra pixels are added.
> +	 * Take pixel replication into account for MST BW calculation?
> +	 * Avoid slice count of 12 for now.
> +	 */
> +	if (slice_count =3D=3D 12)
> +		return 0;
> +
> +	return slice_count;
>  }
>=20
>  static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder
> *encoder, @@ -1524,6 +1535,7 @@ intel_dp_mst_mode_valid_ctx(struct
> drm_connector *connector,
>=20
> 	intel_dp_dsc_get_slice_count(intel_connector,
>  							     target_clock,
>  							     mode->hdisplay,
> +
> INTEL_OUTPUT_FORMAT_RGB,
>=20
> num_joined_pipes);
>  		}
>=20
> --
> 2.45.2

