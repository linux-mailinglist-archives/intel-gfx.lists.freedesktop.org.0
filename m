Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E575C4BA0D
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 07:17:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C67A10E4EE;
	Tue, 11 Nov 2025 06:17:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aEe8ZJjg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A51FF10E4E6;
 Tue, 11 Nov 2025 06:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762841851; x=1794377851;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mMdpvfNwNoyMdahq7eHoVi+uYy6cdRN1iTwEtzpsxNo=;
 b=aEe8ZJjgMGVd1aiR7u6W5BdO/JPyZkRbbgZVuoQLLi4JoKyrhs/M2ERr
 rryJxl1ax/e6r7mMmWOgp46iYtcPSMhMWpp6WMU/LibhjuqeQBgZ9ZJHu
 kc+R/x1wNf5bpLZJ+LB45TaZcnZmNJzCC1yCaVSxAXLNwl6QM6f/C5/p9
 kgHKb4A/DTxd1nW0om98fJVmIZoU4jvMmGlCRrOfhvqa+bpYzjsqVi7Xf
 cV6alu2RIf2sSY0AYxzyYnhXqDnWK7nhnUEj46xhDYetaIb5hvn9AXfY4
 V8q+SuAZ1WY7Q7diyS+XcW23cfiTiktI+h8TVpt6TK64ozmWb8gPyh8Vr g==;
X-CSE-ConnectionGUID: 0GS3006BTW68elmUYeWhfw==
X-CSE-MsgGUID: H5yFxfgNRxiUvTenWBf2UQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="63903422"
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="63903422"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 22:17:31 -0800
X-CSE-ConnectionGUID: h5uV6AjlTGGmhXry26nSsw==
X-CSE-MsgGUID: 2H1MlqbURG2hQB2hEMasPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="193266177"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 22:17:31 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 22:17:30 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 22:17:30 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.41) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 22:17:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R4S6OZN7kRUDBeu4Y0nRBizHxEBqBXKQgqTwU8MUk6BHdTySWymkxTshi7A9/jgplGZAbYep0rvpLglzmNQuRFUIVCOBt9z3Zr1LbatD1agyuhd4ECFEDIVT8QLK3L3oo8r7CtLVLeQkN0Gx+bZpFYOiP8cZOWMO9WHa8IoE4yXUPbwiDAPpykYlCE+hm9eSPyVMJSfQE93nQfKuDILZ+jTaUpoGmF/FVF+gYHEmC9v3+KEYBTY7pRs2eQELiCkgQRDkuya0xmdHU2QOHVPt/Yxy3R5QGAuc0mNZ6YIjKzXIhEDNB4Kl1bUSzYNrimXIygG/OTl5ZE6Pgbjdvyuk5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dv/+m7pMAySCktuDGbIMReHl9QCjDOzG7uD645dlBUE=;
 b=pYrSRdt124CkSfbgfxT4p0/ErIi02Z22QZ6HC/Op0WlAJMwpMvLxnSC7btjKsKZTNBKDTvuKNPydKXJv02fwWioNVSj3ty0Na5o3UDUgEKXONFTW0wloNLnIDfZZAowJriEFAtzZItaC7G1kBFgWzCm24RPupKeB7ZUHLcsV+dCuU3St8RBM4eakBpla8SeUeFsl0xcoFQF4tR9w34nrLIpzQI17mjD5Q2ucCfnOWK/caUpELtEIiHyj1EqG+BXqQRXATHxhJ9bl05oEQSz39lyuQXgwdUuehZx9blJqgA4pFT91Fyg/LRIY06WSmIvoo81IFZhPr4j2atE1PCCOdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by SJ0PR11MB5103.namprd11.prod.outlook.com (2603:10b6:a03:2d3::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Tue, 11 Nov
 2025 06:17:29 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9298.015; Tue, 11 Nov 2025
 06:17:29 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [CI 14/32] drm/i915/display: Print additional Cx0 PLL HW state
Thread-Topic: [CI 14/32] drm/i915/display: Print additional Cx0 PLL HW state
Thread-Index: AQHcSllWiJdcPbWKLEKECJEpREWEm7TtEKdA
Date: Tue, 11 Nov 2025 06:17:28 +0000
Message-ID: <IA3PR11MB8937E3C6A72DA26222DCFE0DE3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-15-mika.kahola@intel.com>
In-Reply-To: <20251031103549.173208-15-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|SJ0PR11MB5103:EE_
x-ms-office365-filtering-correlation-id: 89cdbb85-6d32-4314-07c4-08de20e9fdc2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?Ocpymd1XRPrO7CW6lHYj/8wQIDqXBF3vT2fjykxMUYq5iefpZ9fvI90UThWL?=
 =?us-ascii?Q?0b5WHQPPKCCglLzodfCNHI2btY0jfXVVE+MPn3i1yoTn6py0FJvGdPzPJwjB?=
 =?us-ascii?Q?QZmiHv2nJ98CUlzvGdhc3qB1tuE9eF4wFes/GhKAEaOr9Bvkz3kjMf1W5wFZ?=
 =?us-ascii?Q?f/3YVIUDw6/eDpRIuYEF1Gj5nLjahXFCBRpe3C3RRoBiCeMRfaqAJVuRbyFF?=
 =?us-ascii?Q?8dWMWxAUu4BfY/+IvtZOHX0EpjY9IJyu5vlB+HTbXUGmIj2XY2zrSZLzs84N?=
 =?us-ascii?Q?/iq65BrQRGSnGxGzvm7T4FqDXy0Oyxd28fdnH4pYFoy96bHeL0H4Eb6NuN/f?=
 =?us-ascii?Q?EP/+lFXdDswGwjpErN9jOP+C0dSw4ZBA8r/U79e70aPwqlHqBvmi+OCs+7K/?=
 =?us-ascii?Q?cMPhVD+GKd+edQVf/FVHF8NKCK7GnYU3AbVEaX1H1axhbB4lrHgJ8AJ84J6g?=
 =?us-ascii?Q?GpRILiEZmvKWazAnVRMr14NIj0ZuJMZGG7qYFNf26++NNkVe7Fk8vWvsz7lS?=
 =?us-ascii?Q?WRqIWZ4pKN8ahWw+kBD7KI/o2ykqyxi05o2NNvXRH6GLZ8sm7wQ52x6pnrCM?=
 =?us-ascii?Q?vDbT5T/kXeu0IxpESPIxgN0vQVziFYjOQf1BLtI3JoCJHy9evJNR4hF3iJYU?=
 =?us-ascii?Q?YVJB1+Gc4xN6sPz2IZRLy3/v+9t7Bawcmznya+KrrDJ/JQ3PbF6l/gJzfpj+?=
 =?us-ascii?Q?X/PHWCxKp4F6xC4+Z7/F7zdZ7uHwFBJ8aUKtIzk9hOJXnb1jPCfx2X4062v3?=
 =?us-ascii?Q?wrO8aWRSbl2pmkNpTF9lxjue3vetZn0YEoIoTd/OCJv5/3fDjHioL26tsDir?=
 =?us-ascii?Q?U/28YZ4op9OTO/4zOjW9svkC6a/zSiBzgODiFNgTGUhL0pC8cnnh3uyobEZa?=
 =?us-ascii?Q?1c+t/WzN9FBBErCPG2umC1CC8Lgi2GOQtIJv9eViK8jSLeyr3E6ngYrCV7Nu?=
 =?us-ascii?Q?1QDW4rmEfhzZzTdXLgcZ/13QI5Wymi2NhYv9lV4r7klOMbbBtZDTtL0RdGh7?=
 =?us-ascii?Q?F9BRnkdxi2RJGmlN+fOcmjpVKFKf+hiFZZFZy11dRh6FI9oDIx6xE8Ghafob?=
 =?us-ascii?Q?TS565S06uEQY8ZMB6JlEIw9VrLx5HIWAL36G4n5V42/PUowiyCgQi4+4EGUB?=
 =?us-ascii?Q?tbwAHUEFEM3SqPmCOSRZfgf2WokmkEcNqBs5iBCsm/A4jTB5skWPB5KNr6t5?=
 =?us-ascii?Q?1tsb4R+5Ik/Xutx4WJvObInAV+BqCqgC+J8dBi3yXgQyhAHdJSbQ/BluAnzh?=
 =?us-ascii?Q?v2DgWais5YR7c6qsoEUeG0rpA8CP1mrgnq6BeTg0b8iYCjZHiolAv+9NVdcq?=
 =?us-ascii?Q?FNs9eVuqotbkHjKKp6XTmkIHJnnFkHJG6OhoCeeci8Khlbe6O4yKZJXBiWpW?=
 =?us-ascii?Q?1La7nUroWJpJ9CSjbgGP1InNXAvEIEtaEXeZyyZKhCMhyQOIjbMwgOIrgea+?=
 =?us-ascii?Q?JtXL3p6pyMDhMNvazt77aKB4k+W0IOxGxruwpVUN2y+jOJh64vxWScNj/nFp?=
 =?us-ascii?Q?LxBi9Yz/GlPaZVrXqehdp5eobMeMaMQXSAPF?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pccaTrTKsT0qL1qEW5qu27V1XsUc/bStKSBVA9STQF8FO81mN9oPymIcf7ZW?=
 =?us-ascii?Q?hTxtnd5Y5HXKvsmpuJAeCt13DDCzNDEw7M080+L0DOzQqqCs+0ikz9TFadEw?=
 =?us-ascii?Q?4hepTuhiHA1j//fr2dnkGr+fhyUv+K1a420Z4Snn/K4lT6a88Dtt82KC8SlP?=
 =?us-ascii?Q?vdMzw3R9UDD04iqUZxwGyVNqI5SvfkN5L8QUKlDjPAaG33PCyQHEI8evIYMi?=
 =?us-ascii?Q?AAVH7aesgAVKufeVs27HFOt2sE/4nPMstR8kR2SfJ6nhSzu2LCEMbZ5vqa4F?=
 =?us-ascii?Q?JnDZinvZamACI/Wv0UjC7otH3GfSJldgMFtRjEG7Gq5POKIHGCnvfxjfIEkV?=
 =?us-ascii?Q?IDh1ACmcXAQQqbgN0nT9hZaY9Cbi+Z7DJTaK1o6RNDsglDW+O9e8BnDbMCes?=
 =?us-ascii?Q?ptdk82zwbVo6EEN5I5JLvMNyMwd3X25720Qp//jv/Kww7lzqnaTkO5x5ySqs?=
 =?us-ascii?Q?rhCe19mXH0QB7p4UvUSLlSQVzrYSqw7QEl7nTAonfK6gyzK+o+/pup7IAkJP?=
 =?us-ascii?Q?no3OhCYpvio09vqMOzwvp886DwQ87MI4CP0rJa1LgkXfXBNtqoT7j0QpdsID?=
 =?us-ascii?Q?CXSzT1SJu2bWhS3yxaKi5yO6Ow72JQnDXWV5mBTg6gBawmQCyTgYpd6YROJK?=
 =?us-ascii?Q?QLN7N8Q2bEnI+/gaCBtyvlTFW29fNK/6gBklmxY5dNvzB89UB0B9+plVhxdx?=
 =?us-ascii?Q?funbZNzHjjmEpt3fo8/YgKvvqVsp9as93YlWmsm1V2rgKh5rqVI2/nY7R3fh?=
 =?us-ascii?Q?+20Jjo7UNJbqHspSfFZu1SeYwKeom52Ywq4nGSCiV9aYj5P3NqdCgvPf/RLA?=
 =?us-ascii?Q?10Szoi/aPCwGjEiIYX1iLBpVAUYalx26Mq2VHMZDnQK6p16k8jRdV9NiO12e?=
 =?us-ascii?Q?2ahTixBW0+/ZJNPjmS0SchoHyzK7v2F6x4KruLqb08oX92usc+5fCeISi7lH?=
 =?us-ascii?Q?BYY1lQSTf6QH9DCM4VU/xaAtIFETjKY1wiPyNlPjq9Xe4wwJGIYtwY/Hreid?=
 =?us-ascii?Q?o/q3bPURZ3/1I7lfiFNNvSC0y4Oo3Pcq3aZEvJMM16Id3g90cTCFBXhB07qW?=
 =?us-ascii?Q?R1PljdaEo3/46GyBcSHC3ofmUcLEXtxFiu29YXJRTR3/FkngZHA+dW52An5J?=
 =?us-ascii?Q?AKxZu1czICLa1FH8jVTjfATJ8E6C72n++y3W0BUFZyAfFG9ScbFZ9KztJNJY?=
 =?us-ascii?Q?LNZNOhICKwQYlEQwGqgnCrjpl1NO6mvEZ8uI5wpC93EJbrPUEEnj0XEdndrw?=
 =?us-ascii?Q?2hmF/iDzKLrHISaNDczKG4tBaC21qJ8mrJ4etoPWgYpFvj8nlQTh6UEQPKWP?=
 =?us-ascii?Q?hDBguRPLWxkQZTNsrPdklL1tGR/x3gYpcl4kvtvMwIA5SPPDOx1JiDJ7qtg2?=
 =?us-ascii?Q?+mZpnb7LqbcdNSx0NSep+1ZKtK0GMQfLMDqnbDV5VZRHpAaZhj980EwqyN1O?=
 =?us-ascii?Q?9ATieT0U/Ff+TIY/zD73+9LOpe1s8bb68DG1OfuhMSr9ZyisRujIKmoOWIx9?=
 =?us-ascii?Q?78BZ/gKrVuA7HrIiwMld0fHO/XEt2nRPGLuvsIAYaQQKuMIt1hdqJCFmDfK/?=
 =?us-ascii?Q?JFyHbnvOg4pylyeMGlASsXHVx6/BKYZ+VLrWjoEA?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89cdbb85-6d32-4314-07c4-08de20e9fdc2
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2025 06:17:28.9964 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bPnCgW4i1VuS9ijBcKenIVoL7W/LjU4Wmgv+/tg96o/6bCEGd/SvnAfccYkEzqZ5Q+1ly8rVIJxBuE+I8DBDPQ==
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

> Subject: [CI 14/32] drm/i915/display: Print additional Cx0 PLL HW state
>=20
> From: Imre Deak <imre.deak@intel.com>
>=20
> Print all the Cx0 PLL state in the PLL state dumper.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 18 +++++++++++++++---
>  1 file changed, 15 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 3418fc560faf..1e68a73c2ca8 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2311,8 +2311,8 @@ static void intel_c10pll_dump_hw_state(struct
> intel_display *display,
>  	unsigned int multiplier, tx_clk_div;
>=20
>  	fracen =3D hw_state->pll[0] & C10_PLL0_FRACEN;
> -	drm_dbg_kms(display->drm, "c10pll_hw_state: fracen: %s, ",
> -		    str_yes_no(fracen));
> +	drm_dbg_kms(display->drm, "c10pll_hw_state: clock: %d, fracen: %s,
> ",
> +		    hw_state->clock, str_yes_no(fracen));
>=20
>  	if (fracen) {
>  		frac_quot =3D hw_state->pll[12] << 8 | hw_state->pll[11]; @@ -
> 2835,7 +2835,7 @@ static void intel_c20pll_dump_hw_state(struct
> intel_display *display,  {
>  	int i;
>=20
> -	drm_dbg_kms(display->drm, "c20pll_hw_state:\n");
> +	drm_dbg_kms(display->drm, "c20pll_hw_state clock: %d:\n",
> +hw_state->clock);

No deletion required just add a new drm db kms which gives us the clock

Regards,
Suraj Kandpal

>  	drm_dbg_kms(display->drm,
>  		    "tx[0] =3D 0x%.4x, tx[1] =3D 0x%.4x, tx[2] =3D 0x%.4x\n",
>  		    hw_state->tx[0], hw_state->tx[1], hw_state->tx[2]); @@ -
> 2851,12 +2851,24 @@ static void intel_c20pll_dump_hw_state(struct
> intel_display *display,
>  		for (i =3D 0; i < ARRAY_SIZE(hw_state->mplla); i++)
>  			drm_dbg_kms(display->drm, "mplla[%d] =3D 0x%.4x\n",
> i,
>  				    hw_state->mplla[i]);
> +
> +		/* For full coverage, also print the additional PLL B entry. */
> +		WARN_ON(i + 1 !=3D ARRAY_SIZE(hw_state->mpllb));
> +		drm_dbg_kms(display->drm, "mpllb[%d] =3D 0x%.4x\n", i,
> +hw_state->mpllb[i]);
>  	}
> +
> +	drm_dbg_kms(display->drm, "vdr: custom width: 0x%02x, serdes
> rate: 0x%02x, hdmi rate: 0x%02x\n",
> +		    hw_state->vdr.custom_width, hw_state->vdr.serdes_rate,
> +hw_state->vdr.hdmi_rate);
>  }
>=20
>  void intel_cx0pll_dump_hw_state(struct intel_display *display,
>  				const struct intel_cx0pll_state *hw_state)  {
> +	drm_dbg_kms(display->drm,
> +		    "cx0pll_hw_state: lane_count: %d, ssc_enabled: %s,
> use_c10: %s, tbt_mode: %s\n",
> +		    hw_state->lane_count, str_yes_no(hw_state-
> >ssc_enabled),
> +		    str_yes_no(hw_state->use_c10), str_yes_no(hw_state-
> >tbt_mode));
> +
>  	if (hw_state->use_c10)
>  		intel_c10pll_dump_hw_state(display, &hw_state->c10);
>  	else
> --
> 2.34.1

