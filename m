Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B16488FCF5
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 11:26:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B219A10FEFE;
	Thu, 28 Mar 2024 10:26:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zed1xHcO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2FEB1123B0
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 10:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711621566; x=1743157566;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Do0vTp0X9gb1yO5BDpcOAb3ter3lwxwsHksWaPREbWY=;
 b=Zed1xHcOteuNQZ9P4UXrzA3ogXPJdGVSB5+E3CLDdZREMoD194NjuqW6
 Ai91RCLNBsZL//LjJqIxqeQ3/vL9JJCdkPnboQKnerjGyb0LFGz506XFo
 pkbWLTEzdkWsHZpWgWRJipQUmctorD9ouwAAUlJhCjxzKKb6V6YVE2zPN
 tBFvH1+8MrcqQT24jIBMxP4QzLn7s3NgCqvcI+rjrhqPwpdQsnT3PmHzw
 5P/7zvsSvpjx22iI5w6lUeOsQO265SoYKHW+IDFrTXUpESL7Y2nM3troQ
 gkQeDR54W0Dz/k7GiNjB2bsseuBKXab8hDExd8eDA6h+0ZHCX6iUWARDO Q==;
X-CSE-ConnectionGUID: 1fTHGfAkS2esmPkykzgkZQ==
X-CSE-MsgGUID: GIYbfT8iR3mX654Zb0+GgQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6879667"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; 
   d="scan'208";a="6879667"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 03:26:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="21266621"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 03:26:05 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 03:26:04 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 03:26:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 03:26:04 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 03:26:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XRlJ63cEYeqWh1il3LksIGL0g6bQ6A8CslEsJMxqVVRcwIpHRV9VlUGhwuG5sd3SD9bS1Rb3+tNQlZuqZ4JzRCrnbXI6NXHZb9NJr7nuYxbAfV1iIFNrUtrkmpI/DAxgfTTqTq378iu2d5wV/xktEOTrkXPrPEyq4gE66DpmdY1Vgapm377A3uVZkD3jpzyx2OOjuLPvEAsMjSIydLvUmGc5M6md9O1YlJ6XE7d5Xboa0FBMlZ/ee0/FlHp43P37IW6U278XRmaLK/aQNoRdRL4UyUwdAj8L4BSyAwf7zGqsVgUmSIwuQOVLydDA9QzsV08qUvvRMdyLYwe7Pl64rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rv9c0Gg9Cz0c1owCTABZ81u0CA04sZxUUO0WvABzR/Q=;
 b=DItZXVwQYXt1B5ucnyoBYwTPRFBbRmFLBQ7eiqB0t00evQvyBt3ZUMIzKtgLe1qUvyUxw6EWLCKtpSr9mFn8X91mJudOl9ya/IB0aUVfVkQauBbMS9M4IAK1ljPaPfiQmEM47/mBHXBh1KT8ha07y+wdZ48Elf04TZ7FUhDIeYBLILpArq5jClxKgqs+w+PcWr39HCfjUJmOFba2iR83UTjIUDGN7iy5vN0ryqaNf4DhYqj3cZIr8J+9S/mZR1kuY/sImXJfriVD+2dHhpqa0WfNnqaalcWHbezgO2EVNJnjpLXyxgS954Ta2DgFSNoRKBF2Wg6AvUPTZPVfyfAzyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DM4PR11MB8130.namprd11.prod.outlook.com (2603:10b6:8:181::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Thu, 28 Mar
 2024 10:26:02 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::86fd:8a6:5f86:104e]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::86fd:8a6:5f86:104e%6]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 10:26:02 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 2/2] drm/i915/hdcp: Fix get remote hdcp capability function
Thread-Topic: [PATCH 2/2] drm/i915/hdcp: Fix get remote hdcp capability
 function
Thread-Index: AQHagAHU2+gMsOSVeUOZ0BU6A+eTh7FM86Hw
Date: Thu, 28 Mar 2024 10:26:02 +0000
Message-ID: <SJ1PR11MB612979E44F022A83FD417ABAB93B2@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20240327044422.240398-2-suraj.kandpal@intel.com>
 <20240327044422.240398-4-suraj.kandpal@intel.com>
In-Reply-To: <20240327044422.240398-4-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|DM4PR11MB8130:EE_
x-ms-office365-filtering-correlation-id: 6aeecb53-b9d3-4727-3c11-08dc4f1177e9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Xc02rtIv5pM+Gozcbdd1laqYQibTa8WDubMR8733K5e6zUG6cGhlIKl1SJ96EuUT8HnrUSOoQRsQeIDrwyeeIWASE0G/0UrTUfyrJHavHbgYP8f0z0xCvZdkgpZW6BBZltIOTjb/0xiRiANuP7e6ON688/ggOZU8HPXfdzm6bYRi4S18BN0+OyzskBuiVUtGu1B8RIDAsXX4UFL6lzsYIkdb4x6dhEI8YXNLZfnu7oNi3iXJ6xY4bxXo2ROkfK9P1COSIuvwTrR2Dk6/UtWcH7PQdLEcDmbboyaTtaAUW3rV2m0vQjxhfUuLHo8DYeI4EPXH1CjdqiHigiEFPF/EkS14miSqDcYl9aE5UHYwohfnN3x4QmA1AGQRuLuAKEU7bTOVQds+5HeH+Lf0DPHlHBWVFT8nW/PsEN+kQU221AUsgIx45Dhmj+Frr2U4omjjFsv44LggH/vxW9cZ+fGcE1+vPT1C+zD1oi9gJGiqOOaGe4cx0n2ksYeOs4XqE1DmCHzpipia2wJmaq4hv+Rt7jF6VXVG90NohBNlITm/+djont57UZiDuyHGFs/ywlRG/rjQFA8ERJ33KSX7p1UKahb6aThJaQfbtEq+pb2ufjzvpaiTXUg0sNSMWmmKlhXhcQ62o4Eog2eoEvlweXjTibw5lvLzXLjH5KebxqVYGyyJzIWOsV9ayP6xsXBivSOl42D0/POcSw8dOsNsDwy67w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LGkWMH2g+TRLWrCdpUeNlJC2yWFp3RFIskS9eTfMVYk2HzikGP8Ec6DoaoLQ?=
 =?us-ascii?Q?xsGy9BATrs5mV6cszZBMMDvgEk2e9D8mIf635Nctnr/e0gzS8mPmUTiB+EwD?=
 =?us-ascii?Q?d4RQUcgx28IsffNF65MFzUNKkXq2nl/Qg2juJEGq6a0+uBRGXLiG3ZsPEHMx?=
 =?us-ascii?Q?ikJ4rIO8bFA2A/CwNHRnSjup+iayZ2OD5PloWQiy0nxAW8bmAGposEYHLKvG?=
 =?us-ascii?Q?sb+zk45DWQrqaN9VSupt9RGhWz9UkHTSFBu7gS56SID+qAN43IAyxb+xD7Eu?=
 =?us-ascii?Q?YnlwZ/rs0PTHziJzo7lxSy6kL/kbr122Ep2gkcePFrLboOpsooW4t3q79ZVk?=
 =?us-ascii?Q?B5ZCYnrOuRKYclv+qtdHZJ2d2/try0hbkdnntzb2nEUt16aQ+RnateMFj2E5?=
 =?us-ascii?Q?A1VPfLiiz9kyOJ5WwsbAn3wlDGHEDWNpnfqCGf+AHb/kJaMtZSb1qJPvCB4p?=
 =?us-ascii?Q?nBaco7j59jVgUi9kRCnG8LvZMkrgzpjt6n122gOlDLE3INjW4UBj3Zk4kZnD?=
 =?us-ascii?Q?mZPdRvuA9H69zqpl1xoAszX1fcT7fvhAR1Vi0Uv93+zQKqUdeMSG7w5hTGkO?=
 =?us-ascii?Q?ojTeyCGGQCium65diLPxd5ddsWD5U2ODkkiZ6unfKoVAsE7srhd0/hi39LAZ?=
 =?us-ascii?Q?Z/0SIk8oYI00kBU3VHO+wr6g9mBwbOdiFvE6rljT9K7eyr4v2fGa04C2OVHV?=
 =?us-ascii?Q?JqC3IVGmuRjSm1jUCdF3eQQsw6FFb/E4JCvOQuvdYXb5Dr/CHXfi+ja4MNii?=
 =?us-ascii?Q?2fEuuPgpgckJymD5IqN0RxFA/Q0fsHRn8+UenxRsfbrxdhfhScpfjxOWyGnA?=
 =?us-ascii?Q?zw5D/2WDMYOX4b1W7gHxnGpnvZYvZBI20krcGHdsN9UbEGjdCM97bCdmw9LK?=
 =?us-ascii?Q?J5fYVqWmcA2BZ2BYfI9hN4uzjv49EYKSSFSKPl4NLjq6ExCGUfX+RfhzAjED?=
 =?us-ascii?Q?CXrD6TSccEPbHbEA2TTM93smobmVBKKsBBJ5f5JSwNU5n8IizzREHWfUxthD?=
 =?us-ascii?Q?UhLU36Z+wZlX0C1DmqF8NU6TgfL0mUCVBfs9BXYsPNvG6YWtcJaP5/AHU0HF?=
 =?us-ascii?Q?DJX8G0RkBahpDFQrfZjlVnKPOsqO7SULerSqAfP7aGf3eUDG8/Rem6HviQUM?=
 =?us-ascii?Q?PHRpSsZOf/wkmjMmEpTPVZD26oIPvZuDjZnSjQ1jkt2UjH+4c/6aydFIYtO1?=
 =?us-ascii?Q?CU4dokA79G5s3LQrP03j0fcDGhSA5diAdkNf9D5ThrDpnk7F44N9+KY69Bgh?=
 =?us-ascii?Q?3QPMysNOx49ARus7UyKfFvumwwTqrG/cm4JCIjd4ENCsT/t9+qUM7lqtaxUF?=
 =?us-ascii?Q?u2dtAc3Gb37sbJzdOQjp7kD/6mBkfZiiqmjlwG2/BD2jmEKogyK+QdadG6dh?=
 =?us-ascii?Q?t2ErLzJLX81EtNCTm0+R1XTYbWcqpMWSR457rMcBoy1G1/7MHurbkMvlP3hw?=
 =?us-ascii?Q?JRM+IOcRm5i5Jkg/uxB4sV1/AzB6wH4WkAsmyjNyBxyfEukMaRtNLJW04DkU?=
 =?us-ascii?Q?rDblAKKD0NwdLRUZC+aQsqjSNLguuQPwyt8M3JH4RD2HmT9AhjrprzmGwWFs?=
 =?us-ascii?Q?pJjF6jDdU20AzwkG+XDu6zTfL6sQBJP9+D+BxYJg1Zj6+C7m4TinSwKO6/ht?=
 =?us-ascii?Q?MQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6aeecb53-b9d3-4727-3c11-08dc4f1177e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 10:26:02.4315 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kexjnuzSynL7pd57bX9sppSgnNZ+v79tG7EvcBbo1KT5lNjFW2EnCrBBPhX6qTaleuGBccN8tsynv5h7iHtXt7gL7LETi5bAX3K34iucKLk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8130
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

Hello,

> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Wednesday, March 27, 2024 10:14 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Kandpal,
> Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH 2/2] drm/i915/hdcp: Fix get remote hdcp capability functi=
on
>=20
> HDCP 1.x capability needs to be checked even if setup is not HDCP 2.x cap=
able.
>=20
> Fixes: 813cca96e4ac ("drm/i915/hdcp: Add new remote capability check shim
> function")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index b98a87883fef..7f52043b0f9f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -688,7 +688,7 @@ int intel_dp_hdcp_get_remote_capability(struct
> intel_connector *connector,  {
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct drm_dp_aux *aux =3D &connector->port->aux;
> -	u8 bcaps;
> +	u8 bcaps =3D 0;
>  	int ret;
>=20
>  	if (!intel_encoder_is_mst(connector->encoder))
> @@ -696,15 +696,14 @@ int intel_dp_hdcp_get_remote_capability(struct
> intel_connector *connector,
>=20
>  	ret =3D  _intel_dp_hdcp2_get_capability(aux, hdcp2_capable);
>  	if (ret)
> -		return ret;
> +		drm_dbg_kms(&i915->drm,
> +			    "HDCP2 DPCD capability read failed err: %d\n", ret);
>=20
>  	ret =3D intel_dp_hdcp_read_bcaps(aux, i915, &bcaps);
> -	if (ret)
> -		return ret;
>=20
>  	*hdcp_capable =3D bcaps & DP_BCAPS_HDCP_CAPABLE;
>=20

Let's keep the behavior same for both hdcp_capable and hdcp2_capable in cas=
e of failure.

Either assign both of them as false, or not assign anything.

Regards

Chaitanya



> -	return 0;
> +	return ret;
>  }
>=20
>  static const struct intel_hdcp_shim intel_dp_hdcp_shim =3D {
> --
> 2.43.2

