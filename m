Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4824942BEC
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2024 12:29:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C9BC10E0A4;
	Wed, 31 Jul 2024 10:29:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EKc7Bpkj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09EF210E012
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2024 10:29:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722421776; x=1753957776;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=j7RdG8EE8Y5AxGNWwpRoYaEuRx9mx70QQi9MaIWsBg0=;
 b=EKc7Bpkj9uj98yt9Rfj1W027xH/quXJajQBCv4qPRcL4Zu9YL4icEQKJ
 P9oVJ9AZ5wJNc6p4ZQQ+NTpmszOo/CbWKhragQ2G8oPthndjkdXkTXiy5
 zvuhZcceXQFDRkadnLPVJv5G1sZYbLdCSpEHz3UTdsRCvrQ2LoFxKZJdA
 8L9o0q2Kj2R6vCQ3wX0DwPuxPNEHBz7i9aGqOF1FX99xcFU0gmJ4wLEbg
 7Ee0hmVzLb8NUhDMf05yhlf9QXva9HZzfoicQDSQj1aoJOLKybxGecfQS
 j+oQYKGRtFOQp403YM1iltTCTosDqgytuMWd5y4xOyqIiAgOmyAo70qeD g==;
X-CSE-ConnectionGUID: zHDuYPq0S4GZ1wXO/c/SJw==
X-CSE-MsgGUID: nIWVB892SeauMxA6R2BK2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="30917355"
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="30917355"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 03:29:35 -0700
X-CSE-ConnectionGUID: KrtgiaqxTBycOYR9UigbsA==
X-CSE-MsgGUID: DGge4IhdRI2WH9rdi+henw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="55237504"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Jul 2024 03:29:35 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 31 Jul 2024 03:29:34 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 31 Jul 2024 03:29:34 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 31 Jul 2024 03:29:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WevYlZcSXGrgrF4+WtCGHHPhlE8lEPgtFsHJhlDJzU/WiGyjwFVvWQX8muajuZIKWhKu3vthFYs8tKOuhUS2Prf7ZjLkGZ9L//XvymxcXkwXUtmEfF1vp3jx1/tu4C/Jk90+aS2bnxyuofT8DMUDCB0xXG/C+JE5N9TOkYDSCFXfBX3mtYyAg2ZDc+2mOH7vvRU7CuN7fev0WTpiklzEkDCfLWWZR8IeW9Xea84VX7lboEqOP8E+3HSu1DUkCHwqOqFquRJGzuNNVk1gHymhBPUBQTSfaUnHlKNfHCczeP0wa3gmayoudiyJrkXgtIViWOqpJtTyD1pbpK3gCi+8aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r8SubdpExO6JKwXG56pEHlbYVixOIO/f/Gqw5/a8nCg=;
 b=obRy70LxUVS3BrRxWrT13oC5y0JZflDXiP58TVXEbl5BnqrX39yltlRXQLgJSZGJzSYz76wOYiwSdJaajaxPKPozgyovTdYGrMp5s7pSs3sje6KgZdbtQRp8XB+XThMOfQ7JcpG5OyFlxBtSeykUVQlatLmbVTHAikqzp7fcMBSFtCM40SBiamDH8nkxF/778ZR8zYbclmDmKUV86Mi4kz+SgX7tHcAJQP0qnZHknL5bperFjS0uoJtzyb1Uu6slDg432qHvIPNNUJuZ0+cEJh9h7iIA7OQ7u1+tz0Tc8xHXxStYa6iIc5cnJ7qb8hFitAqT1Vq67OP+JLpcgRn8Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 by DM3PR11MB8758.namprd11.prod.outlook.com (2603:10b6:0:47::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.28; Wed, 31 Jul
 2024 10:29:31 +0000
Received: from MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430]) by MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430%6]) with mapi id 15.20.7784.020; Wed, 31 Jul 2024
 10:29:31 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 10/12] drm/i915: Compute config and mode valid changes for
 ultrajoiner
Thread-Topic: [PATCH 10/12] drm/i915: Compute config and mode valid changes
 for ultrajoiner
Thread-Index: AQHa2Or4/hN7ehZOXEyuGKXylnVOP7IQsWCg
Date: Wed, 31 Jul 2024 10:29:31 +0000
Message-ID: <MW4PR11MB6761425F41CA769692D9814BE3B12@MW4PR11MB6761.namprd11.prod.outlook.com>
References: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
 <20240718081803.3338564-11-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240718081803.3338564-11-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6761:EE_|DM3PR11MB8758:EE_
x-ms-office365-filtering-correlation-id: a39cb81c-dc7c-4806-b1bb-08dcb14baa2d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Dm8B0pE2dt+dcS5wo+Hmdjbfarrz3tL90YTH5YjVM8Cgnb0mtzFDPG6jIuxb?=
 =?us-ascii?Q?zCnPMAnkYgsh4AWFlvInvldj+bfvvwvlzC3LWDlFS+ZpUMLJE/o3mao0U8Wn?=
 =?us-ascii?Q?xAiB0M0DgiPBzQKEKAwOVSTHoe59PwpbcrBweNfs0C1svege+u4I34VFXbFD?=
 =?us-ascii?Q?rNgdHTI+eZep5HNBYBZKFfwqUAxuci590ImRmPgLTL7AYEbm3AEf5tXMwhYV?=
 =?us-ascii?Q?yLfHPG6GGeVNfDQi7pT8iPeyvMjY3ywxDV+zpnfovFjxi5Owspuw0mDmiSnK?=
 =?us-ascii?Q?xqHk3RDI9gtkVHc0p1GGbGbnt+oF4ogqyotPXQqKhkmJ74W13YIrNH5ELqKe?=
 =?us-ascii?Q?FCWUQnn1bmvr9mzXHF99NMCMHucH0qnWAQ5Zs12QwDcF+AyfQ2yz6F8VcgIR?=
 =?us-ascii?Q?qiAyw2v0IZQlVK1sUHFJSkQ+2/89sUfxvvkxDQh66epxERTtutFwfIKxq+AU?=
 =?us-ascii?Q?BkgDPX786fy43fsjbHa9Mn64/Al4yu5T51EmvxSbkwEXncbt4665K8cEKfYZ?=
 =?us-ascii?Q?vyAY2UzdB2VfJif6r1fO/yzvI/akqLa4kvUcvR5i52FlvjpF+hjEtFWc4EPy?=
 =?us-ascii?Q?KXMsaKHXX56b8WnFJgcocf3iEkbVfhRsDADqhCW36RmCr58jabbsD7Ch9sXv?=
 =?us-ascii?Q?AmV9QOmqfE9beXopP4XIrf4XERUknaTx6BDhxnCCr1co3LFSBpEtptAecxH4?=
 =?us-ascii?Q?WMcvMWL+3xx84CfyK4Fk8x8PGI5CU0CMiSLvSGNmnRHq7C855f7cVSZugHfQ?=
 =?us-ascii?Q?RcysA4EUXOysNt+D7S7B9OB9NT3IgGiYlaQ2nMtzXrR5ltIeUccOJaCrKdvA?=
 =?us-ascii?Q?ZBZmhkanxuSOysgNPScCCGTfQ5+WwcpKT3PHLbUxO/LWLixINRR+f3kQlM6k?=
 =?us-ascii?Q?bG74wPORioqyF7UPA7ssHAzXL0qFzhRK6OeyHga/oByjDzRn9LcyG2Ospq1G?=
 =?us-ascii?Q?uSm9VQZX3reAj60m4m5l5CHhCJDgTAxdPF3dhR7rN7Gk4p+0lv8vBERNnTBl?=
 =?us-ascii?Q?EJ3a3V7cRHBoyH+TUG1I+4DDl1iTyw0qBUIpdNugWUuDz0oQPVjaJw4hVH8s?=
 =?us-ascii?Q?w8fhmec/nKm0tBngZQ5of5cqrSZvqv6/VMrjO2SWpe3nv5uUnhvZIKka4kb9?=
 =?us-ascii?Q?2XKJLTHue1yUkqskqNOdQSdwwxX1kiA0TxE045kuBvzekg8sZGX7GOsZG0g6?=
 =?us-ascii?Q?KFJVUjgfrgQWrCQ7vJwiGW1isceGo/+RrUJCjSKegJBDqrU5x7tUtas2wKrp?=
 =?us-ascii?Q?LMsBJkJq0nQLheoIv3OmA0/BOI4IPBJWUUStUA20LAAVISBOzaHc/tNguLIl?=
 =?us-ascii?Q?Mn2l648YbR/LNr79JC1utiJ6l+QtQnyn7VFjkikyMTjzekFlsjK8IJPPos+5?=
 =?us-ascii?Q?bgXGLNmlUnRLwKsEr/QQeAR6p0APG53KN/mUv7JjZZh78bjshA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6761.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+RgtUC1ulCsGiPk+XgStRmajQiw+0L7E6twe7+9+sRE5kJ2CQRrhxQ5oOCAv?=
 =?us-ascii?Q?+zzlCiOFFwQcnkYp368+Pws1mhajra0lT3wvAjKAoUV0Mrj6Roc4IGUKKlgj?=
 =?us-ascii?Q?mDo4e0qDlXZ1BSOFSHW/D1I4TbUbKeYUsPMVaHJPQl3TUzT2W8/397JLEcIa?=
 =?us-ascii?Q?Y1vGC29cEdHSKg/1qTlGOXSgdIHms/Upl47Cau9JekKgX0hTHVdPloP0RtaX?=
 =?us-ascii?Q?CAdZ5jdzZ2CUQl0xn2u2SreMzNsFj5grQ+EjSD1oKWJeHFo4lBU4+KQ8dKrd?=
 =?us-ascii?Q?r5s6NRt80abNICZSNQTG2uEBKhPfTfa/uewrJnQGH2bdNjh19av5mzclc23L?=
 =?us-ascii?Q?H5m7IVUzBABdaGxA6YXoJ3AGABRN9gu2oHk84ZcD8UbkGR8ktSGUb6QzJ0+r?=
 =?us-ascii?Q?RylGGv81xmng2AwcvMRUnEuQOKl10GT61UrwrMK3iXeDtJ8+aLOpBxgVRQmw?=
 =?us-ascii?Q?Jqvsn8B2Jcpyg6jYwGa5u+EkZKq8VT58OSF66xl/y+x1SinyS7+E/Z4SbWQC?=
 =?us-ascii?Q?70qjE5L8DRJ7nINNee+fSPVSVUEGBiqm3CV54OvgGQ1IPZQyJfIuVL4DHtYT?=
 =?us-ascii?Q?4LyvQWIzQAl6+8QuKYhGAysohCmzPYsJPOyZiq8ZpXwwvjvckMxnhjIQXRF/?=
 =?us-ascii?Q?iutSEcvWXnJgR/krAK/nVyjJFwkyGc+8mepXgVNlWJifOCRv8vgXNicomoLe?=
 =?us-ascii?Q?uYehkQkShInkYVWwnp1DsPPd2xZ3MNTw/yq9g9Neo7X/PgOLXZTF6EchzD1y?=
 =?us-ascii?Q?M+Ez3npteiLDkY3R31tUC83MVohO9kCO1gbY0wd6F7VfuPufGCzGA4PFW743?=
 =?us-ascii?Q?z4jOlDV9CFbAOjGEXQHzO81u8YRmNdnyN481VcQ3P9kK/Zwu0V2piDOStIvP?=
 =?us-ascii?Q?OMYYu5uCUVY5CFn+Ce0u4Yh3m7n4laejDGynreNfr0V4zl4C6NJRAfhYbLQB?=
 =?us-ascii?Q?AOah8HDUd+cwNBReGKNDYt61kXv8V/tJJzU+chViCeRSTroJXmEnYeonnk36?=
 =?us-ascii?Q?6uOCdx0gg0yfWkD+Z9M9xHZxW1+2+CD9qv5fUj9m5UWDpAJmTsVXVqYEJhtJ?=
 =?us-ascii?Q?qA/iZAOzTwNcegLEqJFb3PPRShTvs2oIpxgQkqzUPhExue9GEi5Vy8wd+qx9?=
 =?us-ascii?Q?wBOzd80tdzp/CK9dxv9hRD9mOyygoUtS/65If68rQ+5GffAqEW1nsR81uvrd?=
 =?us-ascii?Q?q6G0eInkMZooa7OLADvLw9sBLJW4xYeVVx+hmiBcfXLsxW02ognH6YyJtBYr?=
 =?us-ascii?Q?vKhSzus6Ewbx/m+dWBmC7xUYgPsz/XZj+qygvX1yM77ictCbzvQfucCLuvbS?=
 =?us-ascii?Q?01Dd+4o/sY7YRWW00uYHPie99C+EbU7WXGcskFpWcxF5qL+fFjeCpl6S+M2Q?=
 =?us-ascii?Q?j2V3viWnAf5OGYuMbUoEdVk8s91Z252FLalvOo/SYDs6MsBwZZ6tJktA3ECc?=
 =?us-ascii?Q?J8finXNeFKR9fVjQ/GDYu5DqhmF4Jg6Z5CkvDp83RuFYEQzs5jV+6XBs7+bm?=
 =?us-ascii?Q?5G7nAWZHPJ3uwBGvwREhkzyQwTmjpyMb5t51BAhH9+PpQf7gWqanvQ3LiQ3A?=
 =?us-ascii?Q?jkPZ80H+TBpfBlqg3T3tU9SVYmLN1fu5MccnLM9J?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6761.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a39cb81c-dc7c-4806-b1bb-08dcb14baa2d
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2024 10:29:31.5221 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rNlT7tDm58mhCO8g/s7JzNCWn2ssUnXXAZGt3oQFXctUHQHoLtJ2Po6TZMQ9G8ZMur1qgr9CCob3WHPl1yi0IQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8758
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of An=
kit
> Nautiyal
> Sent: Thursday, July 18, 2024 1:48 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>; Saarinen, Jani
> <jani.saarinen@intel.com>; ville.syrjala@linux.intel.com
> Subject: [PATCH 10/12] drm/i915: Compute config and mode valid changes
> for ultrajoiner
>=20
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>=20
> Implement required changes for mode validation and compute config, to
> support Ultrajoiner.
> This also includes required DSC changes and checks.
>=20
> v2:
> -Use enum for Ultrajoiner pipes.
> -Drop changes for HDMI.
> -Separate out DSC changes into another patch.
>=20
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c       | 70 +++++++++++++++----
>  drivers/gpu/drm/i915/display/intel_dp.h       |  7 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 15 ++--
>  4 files changed, 70 insertions(+), 23 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 14c78b18ffa1..a36881b047e3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -616,6 +616,7 @@ struct intel_hdcp {
>  enum intel_joiner_pipe_count {
>  	INTEL_PIPE_JOINER_NONE =3D 0,
>  	INTEL_PIPE_JOINER_BIG =3D 2,
> +	INTEL_PIPE_JOINER_ULTRA =3D 4,
>  	INTEL_PIPE_JOINER_INVALID,
>  };

This should be introduced in one of the earlier patches

>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index ff4c123de0ed..c0a1f2603274 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -755,24 +755,33 @@ u32 get_max_compressed_bpp_with_joiner(struct
> drm_i915_private *i915,
>  				       enum intel_joiner_pipe_count
> joined_pipes)  {
>  	u32 max_bpp_small_joiner_ram;
> +	u32 max_bpp_joiner;
>=20
>  	/* Small Joiner Check: output bpp <=3D joiner RAM (bits) / Horiz.
> width */
>  	max_bpp_small_joiner_ram =3D small_joiner_ram_size_bits(i915) /
> mode_hdisplay;
> +	max_bpp_joiner =3D max_bpp_small_joiner_ram;
>=20
> -	if (joined_pipes =3D=3D INTEL_PIPE_JOINER_BIG) {
> -		int bigjoiner_interface_bits =3D DISPLAY_VER(i915) >=3D 14 ? 36 :
> 24;
> +	/* if ultra joiner is enabled, we have 2 bigjoiners enabled */
> +	if (joined_pipes =3D=3D INTEL_PIPE_JOINER_BIG ||
> +	    joined_pipes =3D=3D INTEL_PIPE_JOINER_ULTRA) {
> +		int joiner_interface_bits =3D DISPLAY_VER(i915) >=3D 14 ? 36 : 24;
>  		/* With bigjoiner multiple dsc engines are used in parallel
> so PPC is 2 */
>  		int ppc =3D 2;

Also unrelated but should we assign ppc based on number of dsc engine used =
rather than hardcoding it

> -		u32 max_bpp_bigjoiner =3D
> -			i915->display.cdclk.max_cdclk_freq * ppc *
> bigjoiner_interface_bits /
> +		max_bpp_joiner =3D
> +			i915->display.cdclk.max_cdclk_freq * ppc *
> joiner_interface_bits /
>  			intel_dp_mode_to_fec_clock(mode_clock);
>=20
>  		max_bpp_small_joiner_ram *=3D 2;
>=20
> -		return min(max_bpp_small_joiner_ram,
> max_bpp_bigjoiner);
> +		return min(max_bpp_small_joiner_ram, max_bpp_joiner);
> +	}
> +	if (joined_pipes =3D=3D INTEL_PIPE_JOINER_ULTRA) {
> +		/* both get multiplied by 2, because ram bits/ppc now
> doubled */
> +		max_bpp_small_joiner_ram *=3D 2;
> +		max_bpp_joiner *=3D 2;
>  	}
>=20
> -	return max_bpp_small_joiner_ram;
> +	return min(max_bpp_small_joiner_ram, max_bpp_joiner);
>  }
>=20
>  u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private
> *i915, @@ -878,6 +887,10 @@ u8 intel_dp_dsc_get_slice_count(const struct
> intel_connector *connector,
>  		if (joined_pipes =3D=3D INTEL_PIPE_JOINER_BIG &&
> test_slice_count < 4)
>  			continue;
>=20
> +		/* ultrajoiner needs 2 bigjoiners to be enabled */
> +		if (joined_pipes =3D=3D INTEL_PIPE_JOINER_ULTRA &&
> test_slice_count < 8)
> +			continue;
> +
>  		if (min_slice_count <=3D test_slice_count)
>  			return test_slice_count;
>  	}
> @@ -1154,9 +1167,9 @@ intel_dp_mode_valid_downstream(struct
> intel_connector *connector,
>  	return MODE_OK;
>  }
>=20
> -bool intel_dp_need_joiner(struct intel_dp *intel_dp,
> -			  struct intel_connector *connector,
> -			  int hdisplay, int clock)
> +bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
> +			     struct intel_connector *connector,
> +			     int hdisplay, int clock)
>  {
>  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>=20
> @@ -1187,6 +1200,25 @@ bool intel_dp_has_dsc(const struct
> intel_connector *connector)
>  	return true;
>  }
>=20
> +static
> +bool intel_can_ultrajoiner(const struct intel_encoder *encoder) {
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +
> +	return IS_DGFX(i915) && DISPLAY_VER(i915) >=3D 14; }
> +
> +bool intel_dp_need_ultrajoiner(struct intel_dp *dp, int clock) {
> +	const struct intel_encoder *encoder =3D &dp_to_dig_port(dp)->base;
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +
> +	if (!intel_can_ultrajoiner(encoder))
> +		return false;
> +
> +	return clock > (i915->display.cdclk.max_dotclk_freq * 2); }
> +
>  static enum drm_mode_status
>  intel_dp_mode_valid(struct drm_connector *_connector,
>  		    struct drm_display_mode *mode)
> @@ -1223,11 +1255,15 @@ intel_dp_mode_valid(struct drm_connector
> *_connector,
>  		target_clock =3D fixed_mode->clock;
>  	}
>=20
> -	if (intel_dp_need_joiner(intel_dp, connector,
> -				 mode->hdisplay, target_clock)) {
> +	if (intel_dp_need_ultrajoiner(intel_dp, target_clock)) {
> +		joined_pipes =3D INTEL_PIPE_JOINER_ULTRA;
> +		max_dotclk *=3D INTEL_PIPE_JOINER_ULTRA;
> +	} else if (intel_dp_need_bigjoiner(intel_dp, connector,
> +					   mode->hdisplay, target_clock)) {
>  		joined_pipes =3D INTEL_PIPE_JOINER_BIG;
>  		max_dotclk *=3D INTEL_PIPE_JOINER_BIG;
>  	}
> +
>  	if (target_clock > max_dotclk)
>  		return MODE_CLOCK_HIGH;
>=20
> @@ -2401,8 +2437,10 @@ bool intel_dp_joiner_needs_dsc(struct
> drm_i915_private *i915,
>  	 * Pipe joiner needs compression up to display 12 due to bandwidth
>  	 * limitation. DG2 onwards pipe joiner can be enabled without
>  	 * compression.
> +	 * Ultrajoiner always needs compression.
>  	 */
> -	return DISPLAY_VER(i915) < 13 && (joined_pipes =3D=3D
> INTEL_PIPE_JOINER_BIG);
> +	return (DISPLAY_VER(i915) < 13 && (joined_pipes =3D=3D
> INTEL_PIPE_JOINER_BIG)) ||
> +		joined_pipes =3D=3D INTEL_PIPE_JOINER_ULTRA;
>  }
>=20
>  static int
> @@ -2427,9 +2465,11 @@ intel_dp_compute_link_config(struct
> intel_encoder *encoder,
>  	    !intel_dp_supports_fec(intel_dp, connector, pipe_config))
>  		return -EINVAL;
>=20
> -	if (intel_dp_need_joiner(intel_dp, connector,
> -				 adjusted_mode->crtc_hdisplay,
> -				 adjusted_mode->crtc_clock))
> +	if (intel_dp_need_ultrajoiner(intel_dp, adjusted_mode->crtc_clock))
> +		pipe_config->joiner_pipes =3D GENMASK(crtc->pipe + 3, crtc-
> >pipe);
> +	else if (intel_dp_need_bigjoiner(intel_dp, connector,
> +					 adjusted_mode->crtc_hdisplay,
> +					 adjusted_mode->crtc_clock))
>  		pipe_config->joiner_pipes =3D GENMASK(crtc->pipe + 1, crtc-
> >pipe);
>=20
>  	joined_pipes =3D intel_joiner_num_pipes(pipe_config);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
> b/drivers/gpu/drm/i915/display/intel_dp.h
> index acd05dc7b8ad..6c607a218fbc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -153,9 +153,10 @@ int intel_dp_dsc_sink_max_compressed_bpp(const
> struct intel_connector *connector
>  u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>  				int mode_clock, int mode_hdisplay,
>  				enum intel_joiner_pipe_count joined_pipes);
> -bool intel_dp_need_joiner(struct intel_dp *intel_dp,
> -			  struct intel_connector *connector,
> -			  int hdisplay, int clock);
> +bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
> +			     struct intel_connector *connector,
> +			     int hdisplay, int clock);
> +bool intel_dp_need_ultrajoiner(struct intel_dp *intel_dp, int clock);
>=20
>  static inline unsigned int intel_dp_unused_lane_mask(int lane_count)  { =
diff
> --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 31a2acb7fa11..21b23f8eb5e7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -579,9 +579,11 @@ static int intel_dp_mst_compute_config(struct
> intel_encoder *encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
>=20
> -	if (intel_dp_need_joiner(intel_dp, connector,
> -				 adjusted_mode->crtc_hdisplay,
> -				 adjusted_mode->crtc_clock))
> +	if (intel_dp_need_ultrajoiner(intel_dp, adjusted_mode->crtc_clock))
> +		pipe_config->joiner_pipes =3D GENMASK(crtc->pipe + 3, crtc-
> >pipe);
> +	else if (intel_dp_need_bigjoiner(intel_dp, connector,
> +					 adjusted_mode->crtc_hdisplay,
> +					 adjusted_mode->crtc_clock))
>  		pipe_config->joiner_pipes =3D GENMASK(crtc->pipe + 1, crtc-
> >pipe);
>=20
>  	pipe_config->sink_format =3D INTEL_OUTPUT_FORMAT_RGB; @@ -
> 1439,8 +1441,11 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector
> *connector,
>  	 *   corresponding link capabilities of the sink) in case the
>  	 *   stream is uncompressed for it by the last branch device.
>  	 */
> -	if (intel_dp_need_joiner(intel_dp, intel_connector,
> -				 mode->hdisplay, target_clock)) {
> +	if (intel_dp_need_ultrajoiner(intel_dp, target_clock)) {
> +		joined_pipes =3D INTEL_PIPE_JOINER_BIG;
> +		max_dotclk *=3D INTEL_PIPE_JOINER_BIG;

Should this not be ULTRA

Regards,
Suraj Kandpal
> +	} else if (intel_dp_need_bigjoiner(intel_dp, intel_connector,
> +					   mode->hdisplay, target_clock)) {
>  		joined_pipes =3D INTEL_PIPE_JOINER_BIG;
>  		max_dotclk *=3D INTEL_PIPE_JOINER_BIG;
>  	}
> --
> 2.45.2

