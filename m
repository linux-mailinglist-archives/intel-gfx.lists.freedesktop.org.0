Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iIdFFPWVr2kragIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 04:54:29 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A96D8245141
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 04:54:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95E5310E63F;
	Tue, 10 Mar 2026 03:54:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ALX3Ap97";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EC3410E63F;
 Tue, 10 Mar 2026 03:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773114863; x=1804650863;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=St0zP5iCf5AXyyCytfd6xQi7zpSIHsvaTeGUZqRZtwY=;
 b=ALX3Ap97UQFSzq2Zcf47h+bIRNPcY8AopjvqjShkhFgIIfzJb0rImQvT
 lhgKuijEvBrwE6nNk7fl+NfDcMctqoaLlQXsH0B8LcK6eSvhsNb+9hEiI
 2HWO4y92Fhe1RylTN4pQ0fKIGJIV7F/CpUDlOLw5Kj+99vGEX8kgnDNh5
 7WiMHuvuMXI2PU16aXrUP5yJoTV72C2X/F/t4pQySE3FLlxiaXwSlQbhH
 BUInqwhCxx1APfDw59f/xeuhEU0SRpBhfGu/La5q5AFMeNDjeJ4dW33zf
 KMKiUnx+ugjwjGCqiPL0G3R4AsW6aOVkS9paUqQLXacSjTnzr0fdov0Kb A==;
X-CSE-ConnectionGUID: D4XAIyhGQqqc3q7UnxSXwA==
X-CSE-MsgGUID: ypuB2nrJS5qtEK0BHi6JDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11724"; a="85627901"
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="85627901"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 20:54:22 -0700
X-CSE-ConnectionGUID: CsosDVJLQnCOOCL1cB4n8Q==
X-CSE-MsgGUID: dt2gnxahQmSwfjX75qS+wA==
X-ExtLoop1: 1
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 20:54:22 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 20:54:21 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 9 Mar 2026 20:54:21 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.37) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 20:54:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=INP1m7rqhjzDG7OGdHRAwE50IXP2YsLewxQSzTk1jBsHAOSXlogqQVUM3LKMDTyZzdZdlzblaKkgVFao+a1SBi+4sT2PV4q2wbXM5iwIx2sb4Pe6k3EMGnGRzYDhPy+PQtArCFIIhpyOQieSnuJMtWu3H93O4S695zcRhpgZP5KMHzo27ALqE5hONuPDX2UUp2rRiGUj6oEaecVekS/qKZipX7JT39JJmzLRE25dCQ44YF1LyUR8muEwren+Zp15YEAimpRmZl5yOQ2i/6Arl5KFhblZMMwaKgmePqlurSF6pHY/c9wg3YZU4OAonT+qP28pJ/zWW/BC5V/eC6FeRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BwU1cfaRfk4BlHtR0H2ilWSRONfh8NBYJigUa8yF3Tc=;
 b=Bjbc705wv46REDnj6pFG6JhefXOQ4vFJmU3BaI80J7sdsTXCpqvHx8VIhzo0n/FnaPNcqbBeIHxDozUMbBYHooViEFBVjGYGy0C3ZCbML79lXO/71naC1q/SQS3lSCnLpkhrLo2isQoLhcQQSU+POhb0f2DwTaCXkRBiWR3mqfuTqQUTaPZ2ouBn9zNwNdbAPSoJNLYnF7nuRCGxVffROeJwOxTP1/AMmj+wK2J9YcbD8EzYOS5eRs4Y3/VQvai5OT/zuSre4ak+PUeRaezi4Ph6cJx5sz4GuW0xGgw5tt8DQUPqCPjSTV3WOR7mUfe9V703/xiJRs3uZ+SbR0rscg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MN0PR11MB6036.namprd11.prod.outlook.com
 (2603:10b6:208:377::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.7; Tue, 10 Mar
 2026 03:54:19 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Tue, 10 Mar 2026
 03:54:18 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 03/24] drm/i915/lt_phy: Add PLL information for xe3plpd
Thread-Topic: [PATCH v2 03/24] drm/i915/lt_phy: Add PLL information for xe3plpd
Thread-Index: AQHcq9xWYeKcHACRV0S6BezvcrX9n7WnKzwg
Date: Tue, 10 Mar 2026 03:54:18 +0000
Message-ID: <DM3PPF208195D8D9E16BA450AE79F87B836E346A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260304131423.1017821-1-mika.kahola@intel.com>
 <20260304131423.1017821-4-mika.kahola@intel.com>
In-Reply-To: <20260304131423.1017821-4-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MN0PR11MB6036:EE_
x-ms-office365-filtering-correlation-id: dab32c97-8e18-45a1-35b0-08de7e58b4d7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: OmBh74764z9B+7Faw6ZMqKdxg9ELf4EcygIkamjbJyMyN7PNnLr1C9qDdlhIFgczJ4urNihOhe3Wjdhl70WpGafozC8z3NfwDq1Rwx90ddR3JFpmzvjKl8pYtCLcij3jiMp/+ld01TNyb7l6At63rqH8Odho/b9H4vprmfIYj2D6q7KgtbtH93KEH4rgtftnu3bTLyOvXM7qrQVaYBdDyhmrkOfeucCE9obbBLSTlv1Qq65niodFV2NGksm4hlcq3zQg/tAam4IlFSfCjnXIE0sQLrcYQpKR8IdXp8UgN9rCOFzjSIBPyadZ4tC2cEK6FVBp0J7vziS1KgpZA0FCE17l2WVlFdYNTkkt7dEIfMHW7I89f0ZU9Q6rvMcl4qisi8G1065Gs+tr/Wjz6xx2jOw3VX9uzwZOnRkxmTxot/P1EhAQFgAiGd4qC3SR+xpx+yIlravrVvi+HX9okh9JqHPCM/UqlbsTju0zZnWEYu6jUGa4Tmxt6p4x58StaLtG0sVqTUKUePG5m3ZJIW/FPSXj8YGLJeMNQ0tJzs1cwWmVTyd+MtTSeFyOAFi07gnidvuY+32oRFAr2PRcpyy6yKTKNowwLmndZJqY+UGfwqZ4IGnFFT/V6kswQADr26oZ6VFdf2ipyPgf8q+Uma+8amhCXA8hCfNCF5Qbdg2IrTA4vKk4+JlsQJAXH5CsMJI73n1a8POcCUU1nx291eeZVRniL4+99qEuEhiPPoa4WFYeYxM7rZPA1DKIDNU+9XYelaHa7PVBJJf5rYxfT1Y3khBZp+dBz7KkPryg5DWn1xQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9hcMnLisTRqSA3xow4SAbyV+BQ2z/VGxSoqmhmDKs/rEcH/ZmY9EHoXuohea?=
 =?us-ascii?Q?BLUE5ZsHTzjgoXVTXyMzqG9IbqqgT6F2eoi6ViDgUIMQdRUi1NvNwlrc9Fvk?=
 =?us-ascii?Q?xgEXotM4LEnn3Y7Vujp3n05O3Pdvtg3uPByLSc1Ca5JU2jPGl5IJfCzICirq?=
 =?us-ascii?Q?pRk4yJro9Bt3K6kUGfHDfitJwfKeqMr0/Pk+dx9KfJqc4230j2Hc9QNgZ4Uc?=
 =?us-ascii?Q?BqOMFSVPiMKJFPg7F7KOuTtmxKe4Xg2ACOtSzn65OHxY8GlDR8FJ8Vi35P+U?=
 =?us-ascii?Q?prbvKdCXRhgeEztakoKaCa7Ok57gdWVGDowhP2jNdZJ2yzPy47VsNA8hWi6o?=
 =?us-ascii?Q?UwdARUzGSIGFdyq3R/vTbc2wuf3XbCiDtdW5Hsq6yrcq29kX3Xvo2VzvyUs7?=
 =?us-ascii?Q?9Im18j8dzXw0Ca3ezXMXvlqTnPCGEzAsPho5Cd6psx5gk/Wry56lmpFMvQAr?=
 =?us-ascii?Q?YBtIbztEHA5X4lBRn3euSfHTgY0UxOzI44ZYUAZBismnPOCy33CiMdPgR5di?=
 =?us-ascii?Q?yiC+H+XNxNiqyL1+TEolSkeho1icltbkXMLsHLea/O1lzXEFz6JyRwduLhrz?=
 =?us-ascii?Q?bQs8rWBEzgRPNot0PAGam7Xuc7gaw5J6pUAMJfTIiMYBOGPGMW3eAOOTXLpM?=
 =?us-ascii?Q?TMRIwO8BLqYYVKDmEVfMEFDwFszRsMFCnrt2L+r2bLYv/7v86LcIcgtUz8iu?=
 =?us-ascii?Q?60XPdOi904/gUxyOJmt5fuRTqCH08mhKlKj0jVvzR8NFND3jvxeoaY02i9DW?=
 =?us-ascii?Q?oCDqKVcnzg9ZIoNgjnKOTdd/dveXqwbgB2e16+TUdnfDUwswgMY388BHWZw8?=
 =?us-ascii?Q?s+DZnfA/XX7IFglkA/P1C+yW1tHzV4N6ON3kFXAJQFYoBPHGQwJ6zVqm6OFF?=
 =?us-ascii?Q?Df8jR5ZCXRvkejnJ2wGJ+HBSvsfyoiHBpVOghhoC44VL9ITq/oAwC1SDILlu?=
 =?us-ascii?Q?iL7d1gleehbyX+IHooa//DZN/Smr3iZCWfEv4LSe1c8XBocZ4Z1MpDX+/OXp?=
 =?us-ascii?Q?OhSMsxBMfxehyERuRjZ834U7VlbODordBofN3DN//TaFba/Q8ZIzImBBMUa0?=
 =?us-ascii?Q?9tAx9HkKB6wQIsmp6XKLnbGq1aK/Y00Js/11EnhRj5hh4sAofd0HBnJy++ze?=
 =?us-ascii?Q?Tbg36d9nlmo02TCWeSesTQYFBZo5Gp5aLkGexWw8vG8npaRogQJMRwkfX4xV?=
 =?us-ascii?Q?TWm4Wu/uCf0ManHYoXnTHbfkVMagEkVQ909EZGF/xpwzRQGBLlP+ZVCbhCwV?=
 =?us-ascii?Q?jY/Bs12WcLzp39aCrAeTG9JqgpLFxSzVjqabkZx0za08SWdSZN8ANMd7BrN9?=
 =?us-ascii?Q?Za59x1pAWMRjw2MjMD8nUVuQQHsJyp8wRyk2kQE3ZzwyufDKJplZ+2r5yrHn?=
 =?us-ascii?Q?CjA8DM7mN53iHeddKM9wJH7AjeBVTg7pbJawNjsBGtGChiMNubhSw62pQL1G?=
 =?us-ascii?Q?SwJegZe40Gi18Zs/Rd1L2nw9EEMsLjIVGo4M+1F+I0loC4nmlxBw5Q1+grYb?=
 =?us-ascii?Q?TXGSKf6qRJ6OKEyyRGbfMm6YdRPXoc7UVYVm4tn6P6x8tTullHHb0Y0aFV4H?=
 =?us-ascii?Q?//9gWn0x8slMJH4na9VkGdbFjGGSIL2bnegezGMKkLHDMfr8uwenP4HsEZL6?=
 =?us-ascii?Q?GHhe36qN86BZaCwcX5mXWGgqzvuHtKtC78+x255EeB+7LhxV8eMwAwr4Yq+m?=
 =?us-ascii?Q?2EOP8ab0Wwsywz1R0Ytld6X6lGC5FaM4R3vaOGDbCwo96SiGCFTc4zGITbsC?=
 =?us-ascii?Q?JMDvMudVjQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: govfVFWm4tAAarlTlBmkKL//i6PHHboaaekc6ZA1R9NT1/eUfcORM0J8LdfsbwEb67Y6uZSA5K3Si9dawD23uaW4Kfsn1eOikt/ueXAJckrB77yC9kaj+8FLHJTyoGPnhsTJcFoHgf/uvDrROaW1Tat3JIizLhaRD7FTpbnIeEQeusX4MZrDo3JQNvL/TTxOPtGr1RCFlzO2IA01w13J01Usme67BhBPqE6/cmJhdys/VbjqAeuTrhJc1JzdaQZuDPFlNnQxu3xeIgXbu2Ak+xWy8MEPBCBle3OdPo+OHgDrMjWGvlQkFpSRV/P4GbPcRoK6wtACvx7NSvThlXmx4g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dab32c97-8e18-45a1-35b0-08de7e58b4d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2026 03:54:18.9324 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1QPvoUVu4OxyzVGQRiIfBrSc4fJ6KF5fb6M5dKXlJeWdo0wAXJGc4kDbvxljO4C6EdXdItv8i2PiInGgoF0BhA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6036
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
X-Rspamd-Queue-Id: A96D8245141
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

> Subject: [PATCH v2 03/24] drm/i915/lt_phy: Add PLL information for xe3plp=
d
>=20
> Start bringing in xe3plpd as part of dpll framework. The work is started =
by
> adding PLL information and related function hooks.
>=20
> v2: Fix xe3plpd type (Suraj)
>     Remove empty line between BSpec link and Signed-off-by (Suraj)
>=20
> BSpec: 74304
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index f35a9252f4e1..4185c8e136da 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4571,6 +4571,25 @@ static const struct intel_dpll_mgr mtl_pll_mgr =3D=
 {
>  	.compare_hw_state =3D mtl_compare_hw_state,  };
>=20
> +static const struct intel_dpll_funcs xe3plpd_pll_funcs =3D { };
> +
> +static const struct dpll_info xe3plpd_plls[] =3D {
> +	{ .name =3D "DPLL 0", .funcs =3D &xe3plpd_pll_funcs, .id =3D
> DPLL_ID_ICL_DPLL0, },
> +	{ .name =3D "DPLL 1", .funcs =3D &xe3plpd_pll_funcs, .id =3D
> DPLL_ID_ICL_DPLL1, },
> +	/* TODO: Add TBT */
> +	{ .name =3D "TC PLL 1", .funcs =3D &xe3plpd_pll_funcs, .id =3D
> DPLL_ID_ICL_MGPLL1, },
> +	{ .name =3D "TC PLL 2", .funcs =3D &xe3plpd_pll_funcs, .id =3D
> DPLL_ID_ICL_MGPLL2, },
> +	{ .name =3D "TC PLL 3", .funcs =3D &xe3plpd_pll_funcs, .id =3D
> DPLL_ID_ICL_MGPLL3, },
> +	{ .name =3D "TC PLL 4", .funcs =3D &xe3plpd_pll_funcs, .id =3D
> DPLL_ID_ICL_MGPLL4, },
> +	{}
> +};
> +
> +__maybe_unused
> +static const struct intel_dpll_mgr xe3plpd_pll_mgr =3D {
> +	.dpll_info =3D xe3plpd_plls,
> +};
> +
>  /**
>   * intel_dpll_init - Initialize DPLLs
>   * @display: intel_display device
> --
> 2.43.0

