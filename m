Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AAC39A2E0B
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2024 21:45:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAED210E0F0;
	Thu, 17 Oct 2024 19:45:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UtMMZJWx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB6C110E0F0;
 Thu, 17 Oct 2024 19:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729194324; x=1760730324;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3Dq3ppJvkVTwSKurIgM/Z7LptwQxjnHSW0dPSQPfIYw=;
 b=UtMMZJWxlkaetbri1ICxPZ3/xtMKm0M7cOfrHyDB3Wo7l9l/5NgsZTdQ
 Q0pbyGUYotmdh7sY2ODWPcme6/TwI+RpWBnhgOHJTi3ro12Uo4K1SiGvD
 IL3sPCnoszVzFIvgS3DhDfZl5LNy/3vjnUcDCefy0yiRlzrCOnscgtAYE
 4eXjaKeejGXjL6QfOW9fpZJvgc4omRqO4UiB5XEbwFs83XE7/hlmAbm8x
 Vp2DCISfpR1xmdwo7yje3W4N9St8TKqGrwdBoQFygUJFaQ2SbuvrtlM1w
 HqjifZ2SVatEmo7nwBpJZ8x0SAxM1CRTWnSsz7HSHE7zmA73YnseaC6OY Q==;
X-CSE-ConnectionGUID: AQrym6jkQd2CGU6BmCp8DQ==
X-CSE-MsgGUID: GvJj2Wc8SgOV24T4w33Uag==
X-IronPort-AV: E=McAfee;i="6700,10204,11228"; a="31569787"
X-IronPort-AV: E=Sophos;i="6.11,211,1725346800"; d="scan'208";a="31569787"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 12:45:23 -0700
X-CSE-ConnectionGUID: aMVkvme2TaWm3UEttDie9A==
X-CSE-MsgGUID: LYj88pTWT+uNmK/1jsGzVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,211,1725346800"; d="scan'208";a="78325224"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Oct 2024 12:45:23 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 17 Oct 2024 12:45:22 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 17 Oct 2024 12:45:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 17 Oct 2024 12:45:22 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 17 Oct 2024 12:45:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dG+VlE9b9vqljpireR0kOFfh3vlGjuwIdQO9PIg/7QijMtIaQVXPo1Wq6IOCiw0xj58pbwnGduugVrFbjHV2W8tGg9gNC51U9HX5D6zw1xcetklWcB6RBFY/D+8mJwTZkZ5ilc2BkW9zfoHZ5imh0DEUiAdSReJh9NGDeyZ/dgw/QjfoL9lh/7jYoPR/RweZ9G5RiaI916XDJDGx6guuUdtg3fARsYQuf7hNFaGG/yiB0uAbmw+JOJpnDYYXj4G7Gknc/3Nf/5R0LBhZQjBh5GyAlSJuFIrM6EN4RBzpA98OgwnUh0BhzboRoazSwzQiSDRjYNghWfzUg49VpDLFQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UUNQKkFTSU++0Ysrrn3orUmhqqNb4cp8ZdZ2bmsGmOc=;
 b=an+L5V11QIr0ehagVYjGu8e9264UniwRMNLmOik9mWIdBYleMrWBSU0Lae4arwaWJV3nMy/IVeW2Ch7J9nNEQ4B7LtOPYJGYhWWhr4+XHj9UBEs16exCyG9fvKYH6OwkCZqf0ppKhwljEqP3AIQNfo/lyuzbq1ytBISUh+EIbmHYb99+jF0zcyY3QR4X/PoTk0FqZzLADal4yY3UufPKGH/829WbtDpibWORy+zHLyaYmiwOl+dvOSHFzTKwmA3xOFcAtlKgYNJdwLEm4UCz38FNTo5VO8kcfSJc8T8QnVHSyi56s+YJbW1xDZludfgdl53WNztamxQPYqmrCsd0+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA1PR11MB8247.namprd11.prod.outlook.com (2603:10b6:208:449::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.19; Thu, 17 Oct
 2024 19:45:20 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8048.020; Thu, 17 Oct 2024
 19:45:20 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
Subject: RE: [v2] drm/i915: Allow fastset for change in HDR infoframe
Thread-Topic: [v2] drm/i915: Allow fastset for change in HDR infoframe
Thread-Index: AQHbGh0Os3VMDSg5DEqJS9G+mbKm4rKLZXiQ
Date: Thu, 17 Oct 2024 19:45:20 +0000
Message-ID: <DM4PR11MB6360BDD2CF591228D8015152F4472@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20241009072530.2952143-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20241009072530.2952143-1-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA1PR11MB8247:EE_
x-ms-office365-filtering-correlation-id: e3805a4f-b649-4167-6d0f-08dceee43bb3
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?y5yk2+YcXlG/5iBc6uSwfbrRdE4y3W1fl1HDKmUjhr7eDlwLduGmdhhDYWHI?=
 =?us-ascii?Q?k/jEM5vFiFwSIBNTD1E5jcKmgObBAsy0q/kV956evkGtP4cJhpPnMCYfQU3X?=
 =?us-ascii?Q?4qKuoy7FOuTtwYYag2VICXpcaKDQX9QwA0ZABbRolr5/TTGMyvCO7GfTpLRv?=
 =?us-ascii?Q?YIyAl70uPQ/z4CLioaTv+6YWApHdzfDI/gpj3gOyuFTUFO9f7sqnUZZHuJ+g?=
 =?us-ascii?Q?3QEdPVxECeuv1Z71XeVdTmCMddDXypJHnZ9bmzEWZ8VloxMfGiu57xL1SJ/D?=
 =?us-ascii?Q?7TllDLjfFQHXJ4ShhibRT8B7/pL5RZ8eJo8Avy/Ox98yWHgfOk+xNi3/mGGK?=
 =?us-ascii?Q?V2ODdK3GIP7qVnV15/Uk6nWwcRvwJ9X3qLPM5UQz8XMwf/jGtDe+l1N7wffB?=
 =?us-ascii?Q?hdbQek3Nb35iRiCbCbcQop7o9RpKBxdEBn+/oJ6evOnQ/WyjXIFNsch8QUAg?=
 =?us-ascii?Q?F9ztKpQNMDLQQS3Lr1BQZ3JXIlMA0/bv8pVmYqPNr4tt+wONs8tyNZVHYM28?=
 =?us-ascii?Q?jUYamz+AOxy8MOztzS4WpLQNBvE0mOHysZkbWa9tzt5EBnMVLUhumFXVjBW8?=
 =?us-ascii?Q?+Ubo3iKeTN1pi0VH+rOWOvBIEkPj2dWcRVzc7tLrzQH4rMkbWNaPivHI/lVP?=
 =?us-ascii?Q?nRKcWjPYUlVqP8S9oR8Nd3Py6CCSDggzA8CXpExpF1dnHcu/VIoigo5sy27F?=
 =?us-ascii?Q?hrkWO4nQUjfIAkc9hFTt6+8qrE94YJWmJ/l8KxjVGKBEyai5Yok6d24j3f+3?=
 =?us-ascii?Q?BZRTZhYJ4s1tkfekPUSsDIJcsu1Qo+Ohz3Mit2Ydm8Ww4Chl5r1IFf8uadbJ?=
 =?us-ascii?Q?H2U7g7IfSzCwaEG0vqG2oSeLq7Kp7jL4WA3huoPK8m2Lr7Ne1AbheS3MSKQX?=
 =?us-ascii?Q?0YtJe105yLgt7txpP8tLSK+nE7gd/X9F/azKevbJgBj2qsWbjCDeOvxE4bNW?=
 =?us-ascii?Q?kQrDL0D3bvviJ3ScSAmqmfFxUQswK1CeqK9pnAilcRb3ihnD5CYfYLw4ytJt?=
 =?us-ascii?Q?CUORMBPEcexaMvUe3grZqcKWyxkEffcCJaWhK4O/OvOSehRuu8XUmGaEHmIp?=
 =?us-ascii?Q?mdPMWR+uutlRixUSjVauSAJ6fO0OBE65zCpVrTfckk6ca7tVMefBm4XKLg7I?=
 =?us-ascii?Q?A/IDwHhd2GFWzbwU57gnxXm+clJwnszbE4r3C2yc6STA+Jutp82z3rvHWcXg?=
 =?us-ascii?Q?0o13Gs2WxpN7vtYjYrMV5fqLRswcmtLIJ8PjnyzKbvpAnOhwjoLWKG6phmQO?=
 =?us-ascii?Q?t22pBrEoSXML6wjUbMoHsVFYAU7Tq3H+6UMKIWNflc4DW3KU0EuaKkD1u8EE?=
 =?us-ascii?Q?Lou438KzgoV3NhERHf3ZJwOBKeCxbQpHI9YDcWqbc356tP7xBEuSxntYKUE1?=
 =?us-ascii?Q?RyuhGzI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?t4oE23FhBepIo/hZweC59ZNmohxjfer/AdwzJRbM3snrKndZL0/fLtoi2bZE?=
 =?us-ascii?Q?voyY/Qvank5nDR6JRAhWP/N0F29FNMOkyHC+2q9wXDIiaKWuuGQ7AKCo6poM?=
 =?us-ascii?Q?Pp6Ms/+RCgLZ0xrLFIwBUl0s+g/k01cja++gaIMjh8dyHWaSjXZmgtLjI1ZL?=
 =?us-ascii?Q?MTwdVVvWi7+AQy7RP1HhrvVXsN5o+fnB7O3QVR2c2lXUYIOkxYk8WtG4HLrn?=
 =?us-ascii?Q?1Dusz+osYch5vcGujqjIgyif4zf4vVdeR8gmmPjr3cZfGybX08SlurR5MU8r?=
 =?us-ascii?Q?vg4R14xoRDUKxh+CKNj8PI+HkSmoB/W0mx1CeqCh3wxM1696X5PUp2nW3gfl?=
 =?us-ascii?Q?VAyBvgDv9xq0X1ew0abADpeSsEKnAF0/+ox3+e9UsZMgWaEkN3jGWKoavj2F?=
 =?us-ascii?Q?H5d0+R3jV/grKckQ4Jw2hSQdf7lwBrmKFIpF6oajJNvQZRJ8ZflfTFjlt3iA?=
 =?us-ascii?Q?jiZ1E6zaOC4K9xliZnXKWJBf6hZi93elTzhlnUtP5/gfHWE8DotGZS+RNVDI?=
 =?us-ascii?Q?g1t6VkW/el+J+RgWPBjjY1r1OGgFWY9kh8JdmA7mDw6NTGWPRPOER4Uf3yN1?=
 =?us-ascii?Q?uiCEsHrms9DUryJAAjn61GdJFxLsIeCs0cq3pojoZ8MWgWJ5zlqFSEAyGglk?=
 =?us-ascii?Q?QolvbgTytt5IIMMs9GLYfIqsX1vsNjfu+Hfg7Jq7ymmrie/etaI+0v1gP+vo?=
 =?us-ascii?Q?tpmm2V3wHPb4KHa5h28v0h/efcLVPpGhEGqJM/U6kXW6PazAuwhE44K783QS?=
 =?us-ascii?Q?+Ke/SAEuSbCDwuD/5KKBAPDYKkE6vBp+o2HHA9uuTgjeNsGcPH+7pfdOY2Ax?=
 =?us-ascii?Q?GVN/F4WStLNIkPk+hJn+YldVsGwKsj4hIgFmQbFPNQsm72Yxom7mcrAUntuj?=
 =?us-ascii?Q?u+RpQ3nJUTh9UOMGjz+GWqD19abiphpF1EUREAanrRI56Me+WWrKEo2a46V2?=
 =?us-ascii?Q?u6eB7XBUWZ/BdVg0GglFt1/3L45/wBOomy+zTmgl99n0GRYJSx1dYk3dxikF?=
 =?us-ascii?Q?XPHRmv7Bo3YLD8TLQGOwvy+2s6HGiM92pulr/HWk31h0OgTNRqfOTPM/Tz7Q?=
 =?us-ascii?Q?eJ6I7+n9EO/CP3jVxPU/mm1ZE3uO25LROlwD7b58Armf1eHXRdCLW31p3h25?=
 =?us-ascii?Q?l/0rUUKjH2lKm/SWOxHNQDM6V0BJZ5oihTwEQn5T4xREhs5WlVTlRSzC5kV7?=
 =?us-ascii?Q?pXhFUo+iIarO2vxZBe2mVDv6grbTGOcBXDFMXd6NtKCbE8RQvxiUrji0caiD?=
 =?us-ascii?Q?GiyM34Hp3gx3XoDEDVuzF8u6HK3BGV5Yja3VBMpu8rXJecv0fKK9qUGeRcHx?=
 =?us-ascii?Q?tzHsLkPNdMLTm007vfWmN4P66Q877CizYt8l1WpZvHIvwdXQRvbFNrgoE1HE?=
 =?us-ascii?Q?M/der5BcWmTjwUd3clBvNE7NSb7Lr8V6RVojFsfli2Dzz939nMQ0ofQ8kI2j?=
 =?us-ascii?Q?Nv6TS/044O0Y4LNbUfOA/aEBjLdkpTz7i15DJW7HQ0xVU3TI/rj9k9yKtYiK?=
 =?us-ascii?Q?QYfcYYTW/l3Iv92HIC3dqGPxGqpV9z3xWOV5rXdCm6a+Cql1mWv3OXOdfDpo?=
 =?us-ascii?Q?nU4XXMfzNzDeTOPDrFg/hKERDR9KrOS5tBUSbVgc?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3805a4f-b649-4167-6d0f-08dceee43bb3
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2024 19:45:20.1028 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dC0ev1JtSrmZF9s8depi183YqdUIz/6t6EKfDDnegyn8c76Z/jX5OiZFEuoiS3vcs/TsoYwJR64wD1pqMU1+xg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8247
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
> Sent: Wednesday, October 9, 2024 12:56 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Deak, Imre <imre.deak@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; ville.syrjala@linux.intel.com
> Subject: [v2] drm/i915: Allow fastset for change in HDR infoframe
>=20
> Changes in Dynamic Range and Mastering infoframe should not trigger a ful=
l
> modeset. Therefore, allow fastset. DP SDP programming is already hooked u=
p in
> the fastset flow but HDMI AVI infoframe update is not, add it.
> Any other infoframe that can be fastset should be added to the helper
> intel_hdmi_fastset_infoframes().
>=20
> v2:
>  - Update HDMI AVI infoframe during fastset.
>=20
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     |  3 +++
>  drivers/gpu/drm/i915/display/intel_display.c |  3 ++-
>  drivers/gpu/drm/i915/display/intel_hdmi.c    | 19 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_hdmi.h    |  3 +++
>  4 files changed, 27 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index fe1ded6707f9..3195c1125ac3 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3489,6 +3489,9 @@ void intel_ddi_update_pipe(struct intel_atomic_stat=
e
> *state,
>  		intel_ddi_update_pipe_dp(state, encoder, crtc_state,
>  					 conn_state);
>=20
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> +		intel_hdmi_fastset_infoframes(encoder, crtc_state, conn_state);
> +

Please change the naming to be consistent as pointed by Jani.
Also at the moment this will unnecessarily update DRM infoframe bit in hard=
ware
Even if HDR is not even enabled. Please fix that logic.

>  intel_hdcp_update_pipe(state, encoder, crtc_state, conn_state);  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index e1f6255e918b..e8f8f55f75d2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5683,7 +5683,8 @@ intel_pipe_config_compare(const struct
> intel_crtc_state *current_config,
>  	PIPE_CONF_CHECK_INFOFRAME(avi);
>  	PIPE_CONF_CHECK_INFOFRAME(spd);
>  	PIPE_CONF_CHECK_INFOFRAME(hdmi);
> -	PIPE_CONF_CHECK_INFOFRAME(drm);
> +	if (!fastset)
> +		PIPE_CONF_CHECK_INFOFRAME(drm);
>  	PIPE_CONF_CHECK_DP_VSC_SDP(vsc);
>  	PIPE_CONF_CHECK_DP_AS_SDP(as_sdp);
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 72ac910bf6ec..eba79f14d4e2 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1211,6 +1211,25 @@ static void vlv_set_infoframes(struct intel_encode=
r
> *encoder,
>  			      &crtc_state->infoframes.hdmi);  }
>=20
> +void intel_hdmi_fastset_infoframes(struct intel_encoder *encoder,
> +				   const struct intel_crtc_state *crtc_state,
> +				   const struct drm_connector_state
> *conn_state) {
> +	struct intel_display *display =3D to_intel_display(encoder);
> +	i915_reg_t reg =3D HSW_TVIDEO_DIP_CTL(display,
> +					    crtc_state->cpu_transcoder);
> +	u32 val =3D intel_de_read(display, reg);
> +
> +	val &=3D ~(VIDEO_DIP_ENABLE_DRM_GLK);
> +
> +	intel_de_write(display, reg, val);
> +	intel_de_posting_read(display, reg);
> +
> +	intel_write_infoframe(encoder, crtc_state,
> +			      HDMI_INFOFRAME_TYPE_DRM,
> +			      &crtc_state->infoframes.drm);
> +}
> +
>  static void hsw_set_infoframes(struct intel_encoder *encoder,
>  			       bool enable,
>  			       const struct intel_crtc_state *crtc_state, diff --git
> a/drivers/gpu/drm/i915/display/intel_hdmi.h
> b/drivers/gpu/drm/i915/display/intel_hdmi.h
> index 9b97623665c5..466f48df8a74 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
> @@ -42,6 +42,9 @@ u32 intel_hdmi_infoframes_enabled(struct intel_encoder
> *encoder,
>  u32 intel_hdmi_infoframe_enable(unsigned int type);  void
> intel_hdmi_read_gcp_infoframe(struct intel_encoder *encoder,
>  				   struct intel_crtc_state *crtc_state);
> +void intel_hdmi_fastset_infoframes(struct intel_encoder *encoder,
> +				   const struct intel_crtc_state *crtc_state,
> +				   const struct drm_connector_state
> *conn_state);
>  void intel_read_infoframe(struct intel_encoder *encoder,
>  			  const struct intel_crtc_state *crtc_state,
>  			  enum hdmi_infoframe_type type,
> --
> 2.25.1

