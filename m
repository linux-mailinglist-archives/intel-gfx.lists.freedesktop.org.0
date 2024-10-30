Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCFE29B6017
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 11:28:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35BF510E773;
	Wed, 30 Oct 2024 10:28:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OayWAxDp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE46410E77A;
 Wed, 30 Oct 2024 10:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730284099; x=1761820099;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=0k17Gv9AV/vORVJ2ahl67AY13EJKVIFYus4yLqPZa8A=;
 b=OayWAxDps9rYLM46dsPfXNqRqwmjiG2jyWdWLpdTwvaSoYMlTg8wjrBr
 cNkD6WxrBJ1Gak0CspUMFBnvCOd6MCplgrll4bAgym+YodzQypU0GZWtb
 19eB82lFYF506UdxVBARZOrbEiaxamSkuAYv0tHvFGM8vndMvfOZje4G/
 THFuHxnqtpOXKcxj5mt6SLUmvk0tymn7Hg5lQ/ACNyfFMd7AXnEnieLT0
 JaZp3Te086BPLG+RQU1LV9RvoXwL4UuuFPbSehj9YCjy8IWF2R+j8iwiT
 InTwreNj8ViMtwLygHVzc57i6c/R6WrNfkaslf6p1+xG/SfymHFoQdrML Q==;
X-CSE-ConnectionGUID: FsgKmZFySCKW5+nPCg/xNQ==
X-CSE-MsgGUID: P6x9IOvoSDWCYrOy0Aa0eA==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="41342839"
X-IronPort-AV: E=Sophos;i="6.11,244,1725346800"; d="scan'208";a="41342839"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 03:28:18 -0700
X-CSE-ConnectionGUID: ZXhex0fAT7yRgyhAu0FtKw==
X-CSE-MsgGUID: shY1cNFYSqewHmHzkac0Bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="87050263"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Oct 2024 03:28:18 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 30 Oct 2024 03:28:17 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 30 Oct 2024 03:28:17 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 30 Oct 2024 03:28:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KxWZlj3G2Z1vdMxIhOiZJQdmIQf2XQ4fq25zylIIFalRwb3cSRWfDR07InGlg5fgiEr7AIq/hCf5EcwtH8GlrToGVv1FYNQsSSOhce5Pamwv2t+VXyTwkYcqJwEbr5o0H2Ghq2A1i1PAxryMpeHfRktwvGChn0sLyf8MlnW2JDfu4MzplqPhFLIassbKpVUmE5WS02vNp43nwP/uQeznzW79dOge5avyg9pKblu5ODVnEqvRQMnDN00/2JS/KgrvPHCsUqpKEu95+Sho7nq5jlziqbyqeTlLFclQj6Ol6JpB1vA2SCQjbcNWkF3kjTqlOUUkRusQTcr4ZeJR28Fb+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dUzdpGUsHSK+gAnfM9U7sO/3iFIIjmAQEYdfpeuEIiY=;
 b=MxBtl53HrEYDTj/z6Zd7FVhpKKIAtrTasDmHzD66dV9d5gCHkwdpyDrowiils7N6gy2M6DC+EnMxXCRP6Vc2Hgd5owNOXHxFMqWqJbqGTCEFaht3tp9P0LSZ3Xp9/k5O1qaIUqXLPvUBO/XwqHTEs7nr74sFGp834WTfABK6n7txD0KSy6Bcy85mdXJ7ERKoXZG3+tjBiY0lj8kAOvuhlXGpquC5xUKZ+ISBfHJXPwMpiD1uE0YMBZiZjeD4983WcMuOVDk57Dmpw/qp4i3f9x4vvzlfBkYk6QhzMRpZH/I9Fmx/s3wsB3O/aQ6ccpNDqbDfw49kDkYs+usFBG8WPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SJ0PR11MB6791.namprd11.prod.outlook.com (2603:10b6:a03:484::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.25; Wed, 30 Oct
 2024 10:28:15 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8093.027; Wed, 30 Oct 2024
 10:28:14 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/hdcp: Add the loop only for DP encoders
Thread-Topic: [PATCH] drm/i915/hdcp: Add the loop only for DP encoders
Thread-Index: AQHbKnbp80X3AuUZU0a3ZD4kFSFZaLKeuVQAgABeOoA=
Date: Wed, 30 Oct 2024 10:28:14 +0000
Message-ID: <SN7PR11MB675033C8EE9D597EA93DCE9AE3542@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241030025304.317977-1-suraj.kandpal@intel.com>
 <SJ1PR11MB61299120730252D07F24B054B9542@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB61299120730252D07F24B054B9542@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SJ0PR11MB6791:EE_
x-ms-office365-filtering-correlation-id: c9c950ec-4ff0-4ea9-7ef0-08dcf8cd901c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?rSK7mgSfRxEkT6YnTko797KsQsNSsE3w10fMS1KNsm87ghZcntBVQqOCYIab?=
 =?us-ascii?Q?UuY2Lb1yZyWk7uad8Y3DrYFdlV1Jfc1Y7Pngrw6WmJWauzYccW+/zbytK3A7?=
 =?us-ascii?Q?wIx/Ueii65QVJ9493EcWIOkV+DzTCcBWYQiiHCy/SomQ1baXCCVMJ0hLpLma?=
 =?us-ascii?Q?BMJw4+YEWgsTeToJ/pbe6w+4lD3tCgO8uvP9TB9DTKmIbNX6TMiGELAtfdfE?=
 =?us-ascii?Q?7SjTpkypLQAUtCCz9e5Z8uSzuxvcXvfz5UadZ+ZaaHTYWhJ7oWDm7rvHbC31?=
 =?us-ascii?Q?YqXSA3JFuhGsZjDU5n32aZtbxFVT29dvsYKlHPNAEC0SVs+Va+2MTg9IeUeZ?=
 =?us-ascii?Q?Wj0R91Ho+YPFcdEK0WxOXbmgl+m0HyNRU2m8wnS/Xhq7SjUYe7ZYI7ctdxFc?=
 =?us-ascii?Q?fA5uZJPBfqjwaipIzkl98YmJxtT/vjB6+aHXv27VqNPeuyfSXkyZkSgZ+DNu?=
 =?us-ascii?Q?sM/JjtbDDI+CFO4VAtiNi7aDqipXWrvXCQkH4GuVIjSFomW+lEtKNvpSdh2E?=
 =?us-ascii?Q?eLJ4qhgri3Q+V3SbWaxhBLSB+pSV/u1F5O3kcUbgLmCfblsyADKMJP59nwG1?=
 =?us-ascii?Q?dDbZTqUaoHMEegxn94ja51gchQXFEJD4N61sp06wdX2JtZnkwisS96z8Mdcl?=
 =?us-ascii?Q?O5tAQO/KHAAgzKEX72UROq+8+kkjMZOfu6i4r99630tA0nFVtFA6ZHkFLoz5?=
 =?us-ascii?Q?NhYv54/CDzg6C8O4dT55DtuFT3q2wuyfnfztLBQxH2Uy837ZEpu/a5EmexT3?=
 =?us-ascii?Q?PE7AZv3z+BMHIHuuEY3t5yxG+HV/Z9cK0+0gxM0KKRs7cl1IK8db+4oi74Be?=
 =?us-ascii?Q?Bq2ROtr36WNJHucEHV94vBPp8GxcfXkjgMIqJyGkY77S04Ac0ENi+UVqw2JK?=
 =?us-ascii?Q?ps1jL1/cm2GUFG+MDGZretgV7czeQGam0Ge7pbwj3h9y7yyJGy6f4TupvvJa?=
 =?us-ascii?Q?25p0UgBjvUUR8Af0g1rVTgVCEfwnSv6e0cwU1Wb/xqjQj6hrhzDM/AbOrhb9?=
 =?us-ascii?Q?20eXEsvR6fMGLzKTBO1tDF7FldcygkS5BUXtij7F81um6Gu2Mpgs2yVe765B?=
 =?us-ascii?Q?OjI1H1q+qabwVeli4K4i5qXvwUvuKigFe6fqsQTjNbrq5QFRhhVGz5LQ9W+g?=
 =?us-ascii?Q?m2xuliYb5RbgtHqlY1Pe+6ajgv7vn8juOuk3rW5es1q8Y0GvrlxDxTELznMU?=
 =?us-ascii?Q?qYqFHFgEoeL9iThVPHe6xqfcFhzuPKo3eMlUk9uMdH6kRmPUYUzNZddT/772?=
 =?us-ascii?Q?0BELe452D8RjnU84d68HEDUNiO4R1ddtuyqQE5uxmPQ3dZchCPyeDXuRYsYB?=
 =?us-ascii?Q?sHUVLWWc8tX4Q57Oq/x0+PVUJghmxySSwk5gJQCg6POTeQK79hIT8eK+4byo?=
 =?us-ascii?Q?tJWtR0g=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EvHda7M8ULEavY/LTbrRDHDD4ZqcRCI/SM1Rq2a5QakAYGFiQ/UAM8a/Hq5X?=
 =?us-ascii?Q?n5R6bCN4riwYoe4dipyfbZQTsuudCUNThltDwYaHa1TmS5G0AdjtHBtYlzVr?=
 =?us-ascii?Q?rXG/QsKfVM6uCima+YD18U40Q6FRsb83wOTEC5bgBjPNR0aQqNz6vTgqAS/t?=
 =?us-ascii?Q?pk6tes/7aSaXWZmx6C+mxgaxKgsl4PCz5+WCE/BD5DX0h3w68aVCNlKFgxR3?=
 =?us-ascii?Q?S6REwBvaK0vujarTlnowHjqip+YHEjKDoAQF/0HIfNOuycZEyQCRWeUqX0EY?=
 =?us-ascii?Q?v/1p1nHKoaf+2zuIZd2Xm7/KclMlvazWt20gXhTaVeIgxK+FGba+JKxlT8W7?=
 =?us-ascii?Q?lnZa7ED0ttKdx8UlyBHl0nRkgu3LjW+RPMvVTN/S755rlRU3LNJVWa7w2lnK?=
 =?us-ascii?Q?2CcYYm1xudtIpTKAx7ThtRMHXR7GKDbWj/9rxfD6Veia0wWw46PuzoPHBrLW?=
 =?us-ascii?Q?v1GlvpGINURP3zpDXdRyo7UxtEqMNMwKX5TeGOPXXDdKPF78gnhVVSwVY85c?=
 =?us-ascii?Q?mmMJl0MPBCImks38oQsDXDq9S+Cn6bhsyAyEB+JVKfUFuUBtScXxCeCEnBiP?=
 =?us-ascii?Q?R9z/bVpEwhCs/WD1ei4etDevvZqJfk9K9yxcjQByzU6en/eruF6KX8iIoqNq?=
 =?us-ascii?Q?SsdeEeSn3JWhyMY2naLCKCE4hWTbbD/0569Lh3WGdqTvlDwxJIv8+duhKUpw?=
 =?us-ascii?Q?WFY/nO80+YVc1hgqVysP68zFmoawYLRTV4Hoiii507TJNV7MZ06nYxY5uwZL?=
 =?us-ascii?Q?WFWYWl7t3U0Y9zaZN3ghfi6X1oz1d4lOS7FOw7dajz7yQgSSRgv5VOT8Q4vt?=
 =?us-ascii?Q?yaWUwUHIewQVqrH0vzxgvIkarrXZBD7a/EOVO477HWeO88gUKSrzLcKl5OCq?=
 =?us-ascii?Q?fImKVFnjHRBZu37eymJC0hfbbo/UwMbsrGpXfkp+L3ikRRfuzDc2oU93sOEJ?=
 =?us-ascii?Q?mHe6nTNs+gsVIia+4LrCM3c3oxT0qjRe89mUJyt2UNFkXbADXivjmjFwTbtb?=
 =?us-ascii?Q?TTrbCHdp0mIyCENVIcHhjZd0IB4vjGIchnoIX7agp+DN7MCQfVBeWazU/ysr?=
 =?us-ascii?Q?Fjtsj3mLvfJqKNAjxoP/sDTaykxxQsX6WRIFMqYgsBHdGTGJvMCvZcUozph3?=
 =?us-ascii?Q?GNW/wacGFGmMl8CEYARt815+HbahsrHHZgyNURJfynOU4r8mpSwrwVkbcgQ9?=
 =?us-ascii?Q?ZMbjKnFdvUYsd3apWN0OZjTg3rpUTj0shUdYng819iddfV+p4XyiwEvdW56n?=
 =?us-ascii?Q?T1gPhPIxJBx5FZHOovO4ANbKjiY6squlPxu99J0P4EKWpEP+1v4Gm2V9TmAa?=
 =?us-ascii?Q?UzWF/qI4dr1AP890PyxkZV/ZsHaBNM6e37u0pPBQOpoIHOYKhp5R+1WOX2hB?=
 =?us-ascii?Q?1hs8QJXGSfA967GkKJ+OTCZ2kTEWS9OqhVVW0yN59/riOeRi5QR3P28DGGH8?=
 =?us-ascii?Q?St6nxKrOHrm97C2Zt+flfzZBXAnH8ztiWrIHLCPriiaSEvaXBe0r4wHEDMff?=
 =?us-ascii?Q?UShfYf29+vneEHps/0FVyqnjSpmNLrJTlC5np2uSN5AolRc2qKSqkuvCAaWT?=
 =?us-ascii?Q?LQPqfZk1MTS3tJF24imqPjx0f0oBUekcNxLIZO4X?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c9c950ec-4ff0-4ea9-7ef0-08dcf8cd901c
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2024 10:28:14.8924 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yHE99jrZyvJD0rsiYn2gbRREy7kyhHVyUTexxa7ncWs862BOU6UfTAvFIHpc3H5o8C0qgQADS+IZn56ZFswAnQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6791
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
> From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Sent: Wednesday, October 30, 2024 10:20 AM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Subject: RE: [PATCH] drm/i915/hdcp: Add the loop only for DP encoders
>=20
>=20
>=20
> > -----Original Message-----
> > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Sent: Wednesday, October 30, 2024 8:23 AM
> > To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > Cc: Kandpal, Suraj <suraj.kandpal@intel.com>; Borah, Chaitanya Kumar
> > <chaitanya.kumar.borah@intel.com>
> > Subject: [PATCH] drm/i915/hdcp: Add the loop only for DP encoders
> >
> > Add the loop on the first read/write we do to give docks and dp
> > encoders some extra time to get their HDCP DPCD registers ready only
> > for DP/DPMST encoders as this issue is only observed here no need to
> > burden other encoders with extra retries as this causes the HDMI
> > connector to have some other timing issue and fails HDCP authentication=
.
> >
> > --v2
> > -Add intent of patch [Chaitanya]
> > -Add reasoning for loop [Jani]
> > -Make sure we forfiet the 50ms wait for non DP/DPMST encoders.
> >
> > Fixes: 9d5a05f86d2f ("drm/i915/hdcp: Retry first read and writes to
> > downstream")
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hdcp.c | 36
> > +++++++++++++++--------
> >  1 file changed, 23 insertions(+), 13 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index ed6aa87403e2..c8ba69c51cce 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -1503,6 +1503,8 @@ static int hdcp2_deauthenticate_port(struct
> > intel_connector *connector)  static int
> > hdcp2_authentication_key_exchange(struct intel_connector *connector)  {
> >  	struct intel_display *display =3D to_intel_display(connector);
> > +	struct intel_digital_port *dig_port =3D
> > +		intel_attached_dig_port(connector);
> >  	struct intel_hdcp *hdcp =3D &connector->hdcp;
> >  	union {
> >  		struct hdcp2_ake_init ake_init;
> > @@ -1513,31 +1515,39 @@ static int
> > hdcp2_authentication_key_exchange(struct intel_connector *connector)
> >  	} msgs;
> >  	const struct intel_hdcp_shim *shim =3D hdcp->shim;
> >  	size_t size;
> > -	int ret, i;
> > +	bool is_dp_encoder;
> > +	int ret, i, max_retries;
> >
> >  	/* Init for seq_num */
> >  	hdcp->seq_num_v =3D 0;
> >  	hdcp->seq_num_m =3D 0;
> >
> > +	is_dp_encoder =3D	intel_encoder_is_dp(&dig_port->base) ||
> > +		intel_encoder_is_mst(&dig_port->base);
> > +	if (is_dp_encoder)
> > +		max_retries =3D 10;
> > +	else
> > +		max_retries =3D 1;
> > +
> >  	ret =3D hdcp2_prepare_ake_init(connector, &msgs.ake_init);
> >  	if (ret < 0)
> >  		return ret;
> >
> >  	/*
> >  	 * Retry the first read and write to downstream at least 10 times
> > -	 * with a 50ms delay if not hdcp2 capable(dock decides to stop
> > advertising
> > -	 * hdcp2 capability for some reason). The reason being that
> > -	 * during suspend resume dock usually keeps the HDCP2 registers
> > inaccesible
> > -	 * causing AUX error. This wouldn't be a big problem if the userspace
> > -	 * just kept retrying with some delay while it continues to play low
> > -	 * value content but most userpace applications end up throwing an
> > error
> > -	 * when it receives one from KMD. This makes sure we give the dock
> > -	 * and the sink devices to complete its power cycle and then try HDCP
> > -	 * authentication. The values of 10 and delay of 50ms was decided
> > based
> > -	 * on multiple trial and errors.
> > +	 * with a 50ms delay if not hdcp2 capable for DP/DPMST encoders
> > +	 * (dock decides to stop advertising hdcp2 capability for some
> > reason).
> > +	 * The reason being that during suspend resume dock usually keeps
> > the
> > +	 * HDCP2 registers inaccesible causing AUX error. This wouldn't be a
> > +	 * big problem if the userspace just kept retrying with some delay
> > while
> > +	 * it continues to play low value content but most userpace
> > applications
> > +	 * end up throwing an error when it receives one from KMD. This
> > makes
> > +	 * sure we give the dock and the sink devices to complete its power
> > cycle
> > +	 * and then try HDCP authentication. The values of 10 and delay of
> > 50ms
> > +	 * was decided based on multiple trial and errors.
> >  	 */
> > -	for (i =3D 0; i < 10; i++) {
> > -		if (!intel_hdcp2_get_capability(connector)) {
> > +	for (i =3D 0; i < max_retries; i++) {
> > +		if (!intel_hdcp2_get_capability(connector) &&
> > is_dp_encoder) {
>=20
> Now I am a bit confused, if you are using this Boolean here. Do you still=
 need
> different values for max_retries?

You are correct this shouldn't be here does not really make any sense to ha=
ve if (!intel_hdcp2_get_capability(connector) &&
is_dp_encoder)
should have just been=20
(!intel_hdcp2_get_capability(connector))

Regards,
Suraj Kandpal
>=20
> Regards
>=20
> Chaitanya
>=20
> >  			msleep(50);
> >  			continue;
> >  		}
> > --
> > 2.34.1

