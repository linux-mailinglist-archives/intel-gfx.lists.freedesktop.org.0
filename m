Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 595EFB136D3
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jul 2025 10:37:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1E4710E4B2;
	Mon, 28 Jul 2025 08:37:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R1+DBY4T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5077910E4B2;
 Mon, 28 Jul 2025 08:37:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753691867; x=1785227867;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=/4IjUtrrYSA9ftM1rWtj1hOIO5L6UbO/UBxfiiFWd8Y=;
 b=R1+DBY4T7qFYGTtCxBG3egMul0LL9zXGEqttMBq7/0+ivrJ5ySltbJ0b
 nUbtjOlOa9a7UrJlUK4G0b5nQDGDQKjap/68U67XJfiCruACnW4kD/bWC
 X4lRotmt+obVSHQgtLL33h5CdAsn/nFo40NR6NSObAUu5v4GsKlkCXi5K
 QznBym0FFrt746OQaU0krPre7MvdBFH1A2bu43VP+cNuiRPUTUmf6W8XD
 5AGAqn9PLs4el9SWWLBdIF5PS3R1u5aWeX9C1lHw6+mV/P5yCr+AnvBqd
 LUS9UPHbXO+IVl3oxzfsCNk8BqeTEsg1t0/1+6xiG+HwlchAfAwOvEqyZ g==;
X-CSE-ConnectionGUID: OKEL1IGtSOaxs3VTPvBYHw==
X-CSE-MsgGUID: s52IFH37SRC8ihJVAaek0A==
X-IronPort-AV: E=McAfee;i="6800,10657,11504"; a="58555654"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="58555654"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 01:37:46 -0700
X-CSE-ConnectionGUID: pBqVJr+bSo+aQf5wycDyOQ==
X-CSE-MsgGUID: XchVBWUAQnqEmswNbBaOFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="166560229"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 01:37:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 28 Jul 2025 01:37:43 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 28 Jul 2025 01:37:43 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.59)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 28 Jul 2025 01:37:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q7c/2N4fgznuoglHv5VOpRKVSH/ZRulIIVV8BDOIKu1tiBDgWSn6qJvO847qXOGvkXuAg7LM4RJEyBp/dlDRbiJeGd1nrehYXRzusj++DFPo4U8chvBiLLK0ME2BbsjFCH799gLPBjnXG1kU/wFO56GTbPDjSGs1X3+f7vbLg4XiDnlQFFMQpg3sBqlh7jZohMgdtps7OWcC3HBIwY13nZ8LXZ95WN16r0GTbhc+d+sRseMkZ1cjDpDoxfFHxjYfuBYSEgo4+lJUMRB0BnCZKUXya4ljJz4kXFW1pkE0zAT9qWmelBl3vOO7xm22JZIItRem1TqNJaOXZGeFONJBeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bP08K/3DYF/YjrJUd1Z5BIgFOxb7I61RwLST7xxrSZs=;
 b=EbSrSndzaGjrpBDCH9YN2h/JsZFsu+HeJRUA06PzwmCnuauV2Rtkbps29OfkF/gP9n0gckzJjcDTNdtKneUbuCwRCU8olTUvGcZm58Wg/cIswLPMMb4U8XYX6MqZ/8rT3wVAw6a+nSFrmZQebZFsvmbQeEb6Y5/1Bya09q7BIOwkZx+d0iKbzoBLrGQFkxgvbV0cQ52oDadf2d+1rZ98xzrwd7JOpERUXllAE6VXceovwOXRBNFekZRk2lYBVaiRsNkxwgT76bY8PLcL9ZDMDVD1D7zYRz4gIXJsgfiLDFoX6zzAfeEvt5qBZswLzkMlKd9IIJ8NfI1TCdWO8tF9Kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM4PR11MB5312.namprd11.prod.outlook.com (2603:10b6:5:393::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.24; Mon, 28 Jul
 2025 08:37:41 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%7]) with mapi id 15.20.8964.023; Mon, 28 Jul 2025
 08:37:39 +0000
Date: Mon, 28 Jul 2025 11:37:30 +0300
From: Imre Deak <imre.deak@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v5] drm/i915/display: Use the recomended min_hblank values
Message-ID: <aIc2ytX67SuMQvmK@ideak-desk>
References: <20250728-min_hblank-v5-1-54cb7ea5cd74@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250728-min_hblank-v5-1-54cb7ea5cd74@intel.com>
X-ClientProxiedBy: DUZP191CA0056.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:4fa::14) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM4PR11MB5312:EE_
X-MS-Office365-Filtering-Correlation-Id: 6564c55e-7149-4c8d-c721-08ddcdb2030e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|10070799003|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?UQ6wzdEM4PwSeEtclICA6QPrVKjIluQhSVmI9u6OL9mMWaDYmZCsXavUoPMu?=
 =?us-ascii?Q?yVD/DwCB8UqUun+TL5c5UBA5mcOMQs/mFUosrn+eMqp0ZjtoUY2qgNRK2UJs?=
 =?us-ascii?Q?1MwSEHkWVKre1O30sk5EGM1+SdoUz8btj7F8FxdSW+SOm/x5Z3PXYyONzn1E?=
 =?us-ascii?Q?5Sohua8KXgATNYp2DpzGepD00z0kt+yeZdgkYMl09PW1ylV0utHrpBTQBOtt?=
 =?us-ascii?Q?h77/vsCfj8hPWVGEi3MgUwwxzoUVJj5mX+5iOB3nFHf9v6/86seeUq5a4GRR?=
 =?us-ascii?Q?64O0gT2V1TgBRRqUkQVqcZUGOympYUjkT1/YE7BGRNibnZNI+JLFiymvXqC0?=
 =?us-ascii?Q?5LmTE9/bItFA754Hqri/AovFW0LxB3BBAp7tPpzdSYr3fBKlf4+xObuefOQ8?=
 =?us-ascii?Q?2U3cRVovU/o/OQ9GYd676VhfTrZhs3oom9+l/26xMgAlybX+saVqxH0RF3zJ?=
 =?us-ascii?Q?RGxn7AHGOaioTJ3L5F69Aa5N/HetstHrg1pONyAPCwl/gvcpgQPlx3SFwcRJ?=
 =?us-ascii?Q?6xz1kzo064gR9Ue0Z2ffyymfp3aLOWAYex9suLqs4JgQdm3VqVBiNbqZE9zk?=
 =?us-ascii?Q?8kgDQFRtgbS1Ok3yKkG3nXZLmVCm3cuHDePWaIbdT/guLmdyunoNXQ9mYVH0?=
 =?us-ascii?Q?mhCI7+1BMxfRcDX1O4MVJkJMB7wKFJXR/oCT6iIKvKAp3xcWsH7ktJgxDqlt?=
 =?us-ascii?Q?0bdVUQsylTqYJXL14B05j3UNWSfb8Th0PRavdKzjUdjmOCGqWZjGX6iulISD?=
 =?us-ascii?Q?2VnpbyR3nJSbR9oohJFKlvl/O8Cxpw2pn2iYAmNggXchefvNy7OmLSJJAo0N?=
 =?us-ascii?Q?n/Z2MQDHSrlO36+JqtjYvXmlL4xKn++okcF4m0ThZoe3haE9La8uISzygKcm?=
 =?us-ascii?Q?QqNwhUqkHEoGXe9DulGAlTwOWBQGEaHCtRH2CHwLPJDsMGbAS+n/NAd7erjo?=
 =?us-ascii?Q?SAzPBGb6aBaI4WfizhSfMVHvXpsTIWhcU7JoJm+rsOVQ8sEswAkS/gyeGJKg?=
 =?us-ascii?Q?1iAaPocbc71qhO1rlWIqmGz7dG+Ags7ada7Plf0qnEU4YKvO1a6v01Dwcygf?=
 =?us-ascii?Q?19xAEv61lDZD67Lbp4JtZPtUMFwobIfzUeftl2DNvp0uXcBQDiwSEMUKKcja?=
 =?us-ascii?Q?NB+bS0MUUydKbOddPUF5h5xLbl5wipDVrRa9S4rlVBQlTSVfjMd3bCFBzDPw?=
 =?us-ascii?Q?ju07tsJoAO18HiYF081uKxheTVTpQWKoRMduk2wY/8oJ0895iTIPEr3SYI0A?=
 =?us-ascii?Q?h0oXPF/5uGnfv9BKOjskcm6LBvzMGtrGwflXS5kV3/BStCmUO6W23p+5qqmn?=
 =?us-ascii?Q?mhlS1mL23j6RoYUCKS4sS2LG5M/FmzIk1fofR7sCuWwEMn33/NObL2H5JuOr?=
 =?us-ascii?Q?suNinrb9E1SmvJmVS0r+5UhTAlG7JQopNnTzT3xelIfOb+W0pZ2dcrTYp0LM?=
 =?us-ascii?Q?ASA7RpTuzq8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qLTHxFxvORD5EX5aAb6PzkoT0qqvNP4R0bhDif1ZCLb1q9oxsRGhShc50Kue?=
 =?us-ascii?Q?vIkXvfv3UJrKyFC40UwXMxhfU8JF5vxzrpW7peKqOthISTYPp3OWE34Kf2xr?=
 =?us-ascii?Q?IGl8+xs01OsJnqPZLxifuGFiaHOnj/7mHJsvF+AjetyTIcufzA01St70ie/Z?=
 =?us-ascii?Q?Z5gZusOj1sCeg5eIQkE+gyCeXgbcEyzp3uxqpfsJaFVWpeWVxWYfhCvLJrgt?=
 =?us-ascii?Q?F7xmBAm5NCYEOiWs+LqlSnBSd6IZIdo2TMVKulNAgC433/x9g5qhsWlGfCxc?=
 =?us-ascii?Q?uVoD0bldUhxW1Je4HZu1nB/S8h0QPt7IIW8Q4hMy6TJDbbdAOn4H8EdoWj2A?=
 =?us-ascii?Q?IPb8AA36Pxc4cjHLNmwXnuKQ14S7KvejSevdIkDbx5QrPDuyb0pNaSv1jx2M?=
 =?us-ascii?Q?v0eaBcVgekxWwJxqci+HenOwuUBJEcKqMyE+tJxS4lPlzLUWHH7wuS42fFLX?=
 =?us-ascii?Q?/LkIbwKPNSgihMLQANIhqNzTEzFMFHA0pMtOosSYSqwjybjuu7jSymu04C39?=
 =?us-ascii?Q?w/zRvHVtmAsk4yHeGP00697FDqBtoBktnY9xkXJbZlXmi6Hl2LOWUwISevs1?=
 =?us-ascii?Q?Nx5T8QA5IzX1O17qj96MiotU/AvdbItw+V8me+XB4s92DA4ewImy//LRL3jE?=
 =?us-ascii?Q?+jhaLVPKpAmCvh5MwXubaW4W+nb2yASF58nCwF/UtTai0C3v5CyR2fVNixHZ?=
 =?us-ascii?Q?acFmm6VNbGPUdHP421dH6Y2pyMd8n30ZcPFLUF4mgXT5+svQgYzr+/9m0hbD?=
 =?us-ascii?Q?HtwI9+7yUUjzUoRn7FCdeIQHTv04CyB/ZdLPkD/qW5aVGoqvq8X4H/Mt/61G?=
 =?us-ascii?Q?BdYBsGdanbjI4wLbiiDrLADHEfjaEnyeUs5fqy/7evSx9UOnG8XzJPsC6dua?=
 =?us-ascii?Q?UrBMesQciksC1JVIF9nOLF5KhZBmMKeaQHYEO1/QKkesKCANe7v/jaNHCpcJ?=
 =?us-ascii?Q?tQs7hxrK7iteJ3Io0J94ZBrt6gJV81CcoVGvJ5LdAgz0Ls/OMzI5AfCrEUUP?=
 =?us-ascii?Q?d3uulpOPTEAxO/5rsl46HBm+ALfr/NGqXloYuYAAzex4iCjBws0HQyNdRIKe?=
 =?us-ascii?Q?Mcp+wQjoCsbcAPNtr+E865aAWc+DfLOQVOWj/SjrFz61yI0ii+tqgOYKapNW?=
 =?us-ascii?Q?3pMRPPFkyfakP/MPJnLRgEnRlMIZ0AymrEQqiLS+T3hlgvXkLUFqYGEJUu6k?=
 =?us-ascii?Q?Os8DibH1CdGjjB+G5cfz3Xcm9nj4BSUsRnlEwRnbvb0r0FUN3nPhnCq9IUpe?=
 =?us-ascii?Q?y2Pqv7WaJ/7/VPsDdxfi33kM6Ebq8X59V04TlueiVjffYtb1EkcrK5pS0Adi?=
 =?us-ascii?Q?B7QdUqqaXcbyGNVYb2Uu39FVTFoxcpkqZoxYLQnJNvaDv8oX+3wgfiI6NBkY?=
 =?us-ascii?Q?pjEYMLv1MgXGYQSvMj7QzWYaL26+hKnTHDmAom5soF0jFns+1ICyR77+QW51?=
 =?us-ascii?Q?VrerTLFKiZQdFwQxmHoble2vF56Wxw7e+LmdSSPFyH8Csl5Tsme7VqpoXRPw?=
 =?us-ascii?Q?EthG/G5n32XbWVI0NLW0p8kihNPwB3zV5fRB2ynSXS2adU3mTZKGNfKQ55fS?=
 =?us-ascii?Q?a9p2uO3x4L2Q2tzPSwLSsZnT4zfmE5jP83WCm3xcWn4KAchazGXMbsF0akbA?=
 =?us-ascii?Q?cQUjAj0MAWgjXfN4Rmol6B48PA23jj/D/udlsa+nHJna?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6564c55e-7149-4c8d-c721-08ddcdb2030e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2025 08:37:39.7397 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5GDNyCJx+Mr6T/eU9Z8P8sn3yroLfSexk289chM1qJW0SYm9/3QQ32z1FfUVbQB5Ypa9dPb8O6ktNWdfr8L36g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5312
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jul 28, 2025 at 01:32:14PM +0530, Arun R Murthy wrote:
> Use recommended values as per wa_14021694213 to compare with the
> calculated value and choose minimum of them.
> 
> v2: corrected checkpatch warning and retain the restriction for
> min_hblank (Jani)
> v3: use calculated value to compare with recomended value and choose
> minimum of them (Imre)
> v4: As driver supported min bpc is 8, omit the condition check for
> bpc6 with ycbcr420. Added a note for the same (Imre)
> v5: Add a warn for the unexpected case of 6bpc + uhbr + ycbcr420
> 
> Bspec: 74379
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
> Changes in v5:
> - EDITME: describe what is new in this series revision.
> - EDITME: use bulletpoints and terse descriptions.
> - Link to v4: https://lore.kernel.org/r/20250728-min_hblank-v4-1-b9d83bf03025@intel.com
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 21 ++++++++++++++++++++-
>  1 file changed, 20 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 54d88f24b6893e1f8009f00dda87d8dae5dfc137..1cc19f3e7729c25d2066f42601a18bdfa03b2721 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3182,7 +3182,26 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
>  	 */
>  	min_hblank = min_hblank - 2;
>  
> -	min_hblank = min(10, min_hblank);
> +	/*
> +	 * min_hblank formula is undergoing a change, to avoid underrun use the
> +	 * recomended value in spec to compare with the calculated one and use the
> +	 * minimum value
> +	 */
> +	if (intel_dp_is_uhbr(crtc_state)) {
> +		/*
> +		 * Note: Driver doesn't support compressed bpp 6.
> +		 * Its unusual to have 6bpc with YCBCR420, for which the spec suggests
                                       ^bpp

> +		 * a minimum hblank value of 2(Hence this condition is omitted).

It's not clear why a compressed bpp of 6 would be unusual. The driver
would use this compressed bpp, just as it would use any other compressed
bpp, if the source (HW) would support it and the available link bandwidth
would require it. It's just that the minimum compressed bpp supported by
the HW or driver is 8. So I'd just say stg like:

		/*
		 * Note: Bspec requires a min_hblank of 2 for YCBCR420
		 * with compressed bpp 6, but the minimum compressed bpp
		 * supported by the driver is 8.
		 */

> +		 */
> +		drm_WARN(display->drm, (crtc_state->dsc.compression_enable &&
> +			 crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 &&
> +			 crtc_state->dsc.compressed_bpp_x16 == 6),

The above needs a conversion from int to fixed point and it's better to
also assert that the bpp is at least 8, so

			crtc_state->dsc.compressed_bpp_x16 < fxp_q4_from_int(8)

> +			 "Unusual to have compressed bpp 6 with ycbcr420\n");

The condition is self-explanatory, so I'd just use drm_WARN_ON() w/o the
above text part.

> +		min_hblank = min(3, min_hblank);
> +	} else {
> +		min_hblank = min(10, min_hblank);
> +	}
> +
>  	crtc_state->min_hblank = min_hblank;
>  
>  	return 0;
> 
> ---
> base-commit: eb0c2b25072b5c56e8c41d7099050bf53bebaa14
> change-id: 20250728-min_hblank-263ceb40508c
> 
> Best regards,
> -- 
> Arun R Murthy <arun.r.murthy@intel.com>
> 
