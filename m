Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B359AC1C9
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 10:35:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18EC810E794;
	Wed, 23 Oct 2024 08:35:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XRkjhbwp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B982F10E789;
 Wed, 23 Oct 2024 08:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729672554; x=1761208554;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AoZ0OCgfV4dlf02ACV/fZUQInrjWB662cUcfXUkrNKE=;
 b=XRkjhbwpGT3W6J+okKuOB7YVh1K9392hvzBc6yG3Fy5okTTDPjYoFVDH
 B+9Z/Vkuj2gpHzC6xW5y6cp8iaoGqIHErtkVBmejk31htQEGWTiVhd6cl
 iVhwsL0+cTFCvDj9C1LEaieze+iWXflPhtq9ajHT/tD2rxCD2ETAvSu4y
 5MrqvtOCHSxoPn0gwkD5R9fOGMCtU01IBr/JnwIH/0c6tZ8VxrYuvIBdV
 eICf5Td92MNraQlNV10SgVaVIafgi94Y8JBR9wZCI2YqwaHAOOV7SVqlD
 gWnqJIcD5fnqBGG4ge3mforyiHp+lyJo9pcsfkchLGh1hlnd2pppsOCrW w==;
X-CSE-ConnectionGUID: /mV8Rz3mSies0jbFFD8XNg==
X-CSE-MsgGUID: nTHubCHkSe+j7SNq6OQRnA==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="29141390"
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="29141390"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 01:35:54 -0700
X-CSE-ConnectionGUID: WvnkGZ9IQm20R0ahyny54g==
X-CSE-MsgGUID: vcM97avoRaa3YKtQorXwoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="110964716"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 01:35:54 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 01:35:53 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 01:35:53 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 01:35:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ul8PzjJKuFG/KMYgL5gwpbBxj8eMAHLICa2+VVhqF5bKGJXkpVWX4kcdVOoS4rCxgauUn/V+WrSxWBTErmHD9wryU/YW/jZZ09orduhWDB/ia92CwA1jJVySW6hvc1P4QZlJ95qbtA56THgG4zICr+60at+d+f9IVG9mi8KvwyK7aAqxEsz9FGMlsqnxcbHFHbhFLt1QPVZW4fPyy2BqTDr01dRBO9boDPN15JfsBbd94FfCU8eiUba2+93Mk3bT9zy6VhpWjozZpbx4H0nZWYhHM7GuP35gEcu+XXJTPs/7jgfgNa75C3GLEPipkye4IY2ztTSxRFKyYmNOxy4gJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jxXgCj2zCBoUMUkmE21aKt91zHjPewpZ5nhMSjxVjc0=;
 b=fVUZlMcR/RXknSmT5IxAxt5+mnB+GDax9NUq+A/mCRTO+3DuGp10JlndvALF4uMPAkM1fyzPZRqGhTJMlqMle6qdelZfnD8Zrv3FbRiKju3lfqTlmvVTCIP9MSjfJ99/raKLl4cdUn9abkHYgiRDXZIfX2ezG1ESbMHY37kr4wocDXXI0eqMrxdZGsWD685oYsdCngLb3+2pvxscs6iAqvVvfDELj/rC3TKlL3Ya+5QnSRcEjAuXQ5Cryevl3h8Sqf/I1VoO1iWmDMJkSOcWjSWpyQQbnX4KLpRHoM6QNpMz+t3dddT4yuE0jsdr+e6HGC5bWF1NI6cV6ysLKsuK+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA1PR11MB8541.namprd11.prod.outlook.com (2603:10b6:806:3a9::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.21; Wed, 23 Oct
 2024 08:35:45 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8069.027; Wed, 23 Oct 2024
 08:35:45 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 06/16] drm/i915/dp: Ensure hactive is divisible by slice
 count
Thread-Topic: [PATCH 06/16] drm/i915/dp: Ensure hactive is divisible by slice
 count
Thread-Index: AQHbJRfrqY0q4JmVk0WALvBczQwmvbKUAr5A
Date: Wed, 23 Oct 2024 08:35:45 +0000
Message-ID: <SN7PR11MB67500BB796D9A8F3886B1432E34D2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
 <20241023065257.190035-7-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241023065257.190035-7-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA1PR11MB8541:EE_
x-ms-office365-filtering-correlation-id: 0581e360-106e-4912-8cb7-08dcf33db06f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?zkULLVHkCUih40m5P9h7YYPuNlfVwdh5WujbwW82vnTeb9uiUOK9qDJo+TvP?=
 =?us-ascii?Q?NhfqjLXKcZ9gcbtYUJlyyRK0Ye4b9atW+gXpmXUrJd+kR+V8+WXvckof7rsT?=
 =?us-ascii?Q?inoIcLfP7VOYYKudQqjgLjvnx592vO9uLOmRdF3MIYSBj7qxAP0YT+2SyhNE?=
 =?us-ascii?Q?WJo8BOqdkxiJYeQJ/QvzCcTrS3IOc4prAnPAqtfE6fTVH1RHnE940gZ9ikAT?=
 =?us-ascii?Q?xcAqUXCLK6ug07J5y5KomjC/WvynyUSrCW/cTbcO7KsvRT2fJmZ9lw8x6PAQ?=
 =?us-ascii?Q?IoL7mftKkC3l329HJ+avj45lBH4mJtn9VaPnowYNoAGx3P49aX3CZJ1Z6if8?=
 =?us-ascii?Q?+dSzYjo3pbOkotulr004GxXq7HWKUGqc/aYL7YRQT+dEY/qFjDJ/j3sM9XDk?=
 =?us-ascii?Q?kCyIEc5X9ej8aNCMSk71tgPFfFXe1Wrx7Qubcqk8mTqtrEM6P4FVpfyAcars?=
 =?us-ascii?Q?HetHDLw24+fv7ymqcLqqCxUFROOTPKty3vPOgFBzzd4JDvYaqcZhadMF/IXq?=
 =?us-ascii?Q?+eyiAwZpQjT+ybnjP7/gLorpGoMWAJzz2LpPXTF9zDlFb61tMSQZFBgonyXs?=
 =?us-ascii?Q?IMEVtAIn3bhPMq+oGsJl3gUz9ZQoAtGooiyx7tfvYmMmR4J28Y2l0divAXQO?=
 =?us-ascii?Q?cP3gPzdaCzEHCki86zGt5XxY5E/HfWOkg262bU+jBCMvAHZU7V/eo5UhyChi?=
 =?us-ascii?Q?HHPyGgEnCM5yx0qvOsqf2HyD6VwfX8Cpk+GBp06ymBnOgGZZmhIi2TkV/+Sv?=
 =?us-ascii?Q?sFQCYx9FETMSHmF0TU9bl+C3eXvwQbgejkox40G9nFwIn9bzY/Zic4wT/NWS?=
 =?us-ascii?Q?NxmBdf22oiW0WjPmhL0l4YRqxlBZqQ/pPyfiPiqJTNCgTvnwJZN6KUBTmtzs?=
 =?us-ascii?Q?WNATq/MRtCYB5lXopUswbs8NoTj9asOXPHakmzyWWnwtB4QhHyurPZ0u7AmU?=
 =?us-ascii?Q?dd4OU7y2WkbJceBGUZ20UOJQKlEsOSGKh/guwp+0SfIPG6VkN6TlWAFnYQQ5?=
 =?us-ascii?Q?mPKxxhjw0OveTuW6xpI3QbLaD4kv2iPpLBNOZI0dGYXqDedaGa0JuWwH+6Yj?=
 =?us-ascii?Q?9EQ/yxDuqN33sO6p4THJfKArnBQBy0DzNVTeiwsftuliQzGFMXPuMbJXipE4?=
 =?us-ascii?Q?nzG4XQeFG6VVGEvfh3/hFUI0TBY//ZT0STg2xUS21JoieQaYYY+hwsEbBBKm?=
 =?us-ascii?Q?9bhNJnxiQdPY41CrMZtt7QjlQ8SCg2Dp29xO96xcBvpF+t+A8livvDcZ0KSp?=
 =?us-ascii?Q?kn5rdxzGgpsClkeJzzZ4KG37AmK4pVDF/UNfogg0elAp37CjSrcu/zz0A1Df?=
 =?us-ascii?Q?zZi8eE6A87sKIGpqaYQNIEQQSCwOWn23CX8MRIJOfvcvfTzTZsiZT8lVr06b?=
 =?us-ascii?Q?j9ViUOQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kfAzJEwhxxlC6/EYMs7TDa0bshS12ocnhQHoriYWrsH2Tm3jcGBeKgtK1Jzc?=
 =?us-ascii?Q?b+iJKYYre5rzcizABdqu0cMnXml3Q2ZzWUZYTc5LualOHu22zHrPiJiK3Nxi?=
 =?us-ascii?Q?yyO2PR4oh8HVdAWVNO0M8Z2su0E0MZ7BarFdpDWXPSRIHt0aIIngL2WeOBpY?=
 =?us-ascii?Q?cX6Zj/g/bLYC3W6jkGJxECzLf/Tw1DkNO5XxVDWDHdIhAL/MejjqIlIgga5q?=
 =?us-ascii?Q?UsaFsgfcq1clTmhtW1Kj206XL3CIFxM1iUixnryKrkRZ1ir+j9rgdUrM1w9y?=
 =?us-ascii?Q?bFF00o1sDXo2D+Fc3DtZJqnS/22PheEyk/TLBVXRtFz/o22NXkj6wiDUYU3c?=
 =?us-ascii?Q?ujoUL5YnqulLrNKAlsCzhHeGyUCAhxxmGyfMh0/ibevf/qy3r4mqW+yliDLC?=
 =?us-ascii?Q?DbHblmdadhWcEqZtb4Y24cIXlqLBlXJcjxWl9CMeT50E5b9TRpX/q4h9UBcu?=
 =?us-ascii?Q?2t9oCDColouZJjTM0UafLzkpAf/2NZvg8CqxdfYrSgwWcvZbhewaoLQE36kp?=
 =?us-ascii?Q?IAqPKMGBrajndGgzy4B5O7B/dLchlCwAvustq2knvbo5Mxtvo2jY4t6V/0SE?=
 =?us-ascii?Q?hOH8BaGO9rz+VgxvAOXGDNWYhEl30JsCKNPO/GDBzhv7yGzJ5MAOCRVqVCJF?=
 =?us-ascii?Q?xDNSIAcKGAVyA26Vd5eJt2heGdmRO8ZhR2mOLxWt1RJMa5A86JAxhhlNZyMO?=
 =?us-ascii?Q?wOyweLpXZHdPCf9yxx2DrxjmMFhuixosgDsIuzkNfxfZABJu5vD6Rv0Certv?=
 =?us-ascii?Q?I/DMTwGTMBhkWmbINRJWV5sLTx5l6D5x21fmCx4VUqFv1iX5UmIg1Rc9Sv5W?=
 =?us-ascii?Q?Zs+zzQJWVoLHy/bhVXO4nFjRClZoV48tJ4qL0qexDWFY7dPcNmj9QCr96pMD?=
 =?us-ascii?Q?ZOwuXfa2fCCKIul7SZvfjrQtHJS1i4wWo/l0LZNnDwqXoV1f+T8/CswxktOI?=
 =?us-ascii?Q?ukm7koAHvK64Aq8NB/NrQ6RBAvyq+S90LIRO1xHho+9zBE/oRNQ3lhMIi6kn?=
 =?us-ascii?Q?B/HmUJZb5j8r/Ah8zc5WHA+AqYiHa5J6sTSDK8V7Sxs6p5Cf2+Y2TcYUAEic?=
 =?us-ascii?Q?Trg0GRt/GB6uHKOD1aIYlLTOx8BdnG3jfGe3r9p9cb1lrs1pNnZ3SlC+Oioe?=
 =?us-ascii?Q?Jd0zcftAHMAyWI+rzDsPelteNTQdAfKR3hioBbjONFO7P8kXpEVcfnpYoJ2n?=
 =?us-ascii?Q?iMlFLZXYcqsM2mIGn51FAzyEM/URH5bC8yfvc+uvV9AizrYEKkRRnxfpVNv2?=
 =?us-ascii?Q?lJB+8dnvHrG9+AY0QXT2z8SUBmj2NmNtqTFGAvzpnwFAm6zXEZcdgR7gIIi6?=
 =?us-ascii?Q?AnFt6EFS9pzUD2QVUoeSdCc9Wv8kd0Cz/cgaIU0MNDvg5qwW2YuGFb6/TDE1?=
 =?us-ascii?Q?SPmC3nPDQO6lXVfT/dpDjlPB2l+moNbDdTT4FWO1/ehYD88F+CSLUUwSuWL1?=
 =?us-ascii?Q?AIuoDO3txCuNKEYL9Jnl/RSWdwDu3SoymdEIftYG0FN196mhbJw37K6y1K84?=
 =?us-ascii?Q?IH2elXIa88abPd0pmnLrsUPSL1mUlBKl7PQTx+XtQl0ZU56xJvJtHUHNY369?=
 =?us-ascii?Q?s6zSOzRs2tK9+fMam41RYmWowxNy6BEIyw6df/xB?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0581e360-106e-4912-8cb7-08dcf33db06f
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2024 08:35:45.7844 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ooXA+Txd0EZY4TWmAt2Ov9Jxiy/3yTmxUt4sE63YxZuZvk7BnhqH5w8hQIzGd02ywI3MdDrQLquGqP9rxXsL4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8541
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
> Subject: [PATCH 06/16] drm/i915/dp: Ensure hactive is divisible by slice =
count
>=20
> According to the DSC spec, the slice width should be chosen such that the
> picture width (hactive) is evenly divisible by the slice width.
> If not, extra pixels (padding) must be added to the last slice to ensure =
all slices
> have the same width.
>=20
> Currently, we do not support handling these extra pixels.
> Therefore, select a slice count that evenly divides the hactive (slice_wi=
dth =3D
> hactive / slice_count).
>=20
> This check is already implemented for DSI, where the slice count is selec=
ted
> from the BIOS.
>=20
> For DP, currently with 1, 2, 4 slices per pipe it is unlikely to have sli=
ce count not
> being able to divide hactive, but with 3 DSC engines and 3 slices, we can=
 have
> such cases. Adding this check prepares for future scenarios where such
> configurations might be used.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 77487a55280c..3b20ea844925 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1037,6 +1037,9 @@ u8 intel_dp_dsc_get_slice_count(const struct
> intel_connector *connector,
>  		if (num_joined_pipes > 1 && valid_dsc_slicecount[i] < 2)
>  			continue;
>=20
> +		if (mode_hdisplay % test_slice_count)
> +			continue;
> +
>  		if (min_slice_count <=3D test_slice_count)
>  			return test_slice_count;
>  	}
> --
> 2.45.2

