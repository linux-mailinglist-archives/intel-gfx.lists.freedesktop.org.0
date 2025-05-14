Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4574CAB67E5
	for <lists+intel-gfx@lfdr.de>; Wed, 14 May 2025 11:46:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76FF010E3AE;
	Wed, 14 May 2025 09:46:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CSwCvEjP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9E0610E3A1;
 Wed, 14 May 2025 09:46:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747216012; x=1778752012;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DeHHbDkGYccQZ30u0Liw8lzL5h2oG3LECsSB1xA//Xc=;
 b=CSwCvEjPng1zYJSgpYSorcsWZm0GBa8wLgpgIrkDVHvVob2jId6ZmpRT
 LwjfV8udwL9NPXprOoQFI/jPit4oEOCtpFK8IjRlPjVjaTN6/GT2FCSZ5
 2eAVgnZL5qPkszvrVk7Z+wB2E78u4mxJIhWxyHujhYfA8+Wrp21wsgGQb
 G4ciuPVElYqfAsuuaJ/7YO9RhNjXzOQPAqtwtsWM1aORhX1M+8rfl/ueZ
 6f2NRKRo6fEV/QpmdA8H9a9KJ22xHcCwI2wbbss+vhAHMJkKS7QLcuFgH
 jqrc5Y4LBMqtu0FjxUpUVX2TF89GewxR6URTmX30/DhQSnJlbes83+AHO g==;
X-CSE-ConnectionGUID: Ba0w1+UxRXiOlirCTLpMTw==
X-CSE-MsgGUID: GGhvHI2SSSC9yyBvOsSmew==
X-IronPort-AV: E=McAfee;i="6700,10204,11432"; a="48353966"
X-IronPort-AV: E=Sophos;i="6.15,287,1739865600"; d="scan'208";a="48353966"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 02:46:51 -0700
X-CSE-ConnectionGUID: VZzrepztTU2Z/2nBu9+yMA==
X-CSE-MsgGUID: rZVvdKm+SfOYfD2ZsoLbpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,287,1739865600"; d="scan'208";a="138412944"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 02:46:51 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 14 May 2025 02:46:50 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 14 May 2025 02:46:50 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 14 May 2025 02:46:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uYecgU0isK20OKZ4u/bQXJDjUOLERxWGUF378LlgIyhXkbs2UfUqFdLc9lMm2072vV2shOZo/9Cvc9VY7IQg6OFkuVa7kw58UlpWaIydVFUJ/Hf9i54+yAwibBEIX4zzPdk8yI4JqoC/sQkYDIv/nPcKzGyPf/S9vd6k+Ap4pZ7o2+L+4TSl87OznStFvV5jrSrLwDmJgNuc9CD7TZNOLdx4uYNAm8y8ZCsmLNJw+8opgDs6bA8lXe45Y4krH7/XbC6Sq2EzjQO0Hi1zfWtZNPDVNGtyKzl0aU4qccpflcApNGscodcbCFaK4mKQQk+zmFveg3PvwWnNStwWjGrQzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rWBDFMeACpAYan9FbzSVbtUS0gmXf1nnj7RIhMcIoe8=;
 b=YJmES0JDAmTis0bv1GCCUTJXTAfex+S0ewB7OrF2mLneLVi90ZU1FOZCGzzWursCxpdEB5Z9zPb4sqbSrdAZdQS2x2QOQp4gWFjew6cg+nuLbc+D5s9gH5MF/gUMwx+ZBkAmd+46tOkfE4VR3MUQwSLmnEe/IlURzd+HXDMUMaQXlTfvkA7FOfeWDMZKuilWZHwhP0xDzNfgHuEjdWUs7CVy7yyKTnJGFAaa7M1QLjwd3WTOKoG66eR4+K/cWBm0Qu9T9JbsARKKn3xF2UyE85qNkDzshlexAH8EKLlS+8qMsjODQ5lLPf4+0d0/rlkyrvuySDvFqN1AFrtcN+l9aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA0PR11MB8302.namprd11.prod.outlook.com (2603:10b6:208:482::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.29; Wed, 14 May
 2025 09:46:47 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8722.027; Wed, 14 May 2025
 09:46:47 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Manna,
 Animesh" <animesh.manna@intel.com>
Subject: RE: [PATCH v2 06/11] drm/i915/dsb: Add support for GOSUB interrupt
Thread-Topic: [PATCH v2 06/11] drm/i915/dsb: Add support for GOSUB interrupt
Thread-Index: AQHbqHeekF+VCvVgbEmCdkjVtuOybLPSGQ7g
Date: Wed, 14 May 2025 09:46:46 +0000
Message-ID: <DM4PR11MB63603E14C4420634DC35AEF1F491A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250408110022.1907802-1-chaitanya.kumar.borah@intel.com>
 <20250408110022.1907802-7-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20250408110022.1907802-7-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA0PR11MB8302:EE_
x-ms-office365-filtering-correlation-id: d7f2d594-a711-41e5-2e20-08dd92cc3e2b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Rf7HpBEzFvSEjIWvR1r5OwObRyn4cqMTIv2bNqk0zsE/1Y7GysGsTBqzjcj8?=
 =?us-ascii?Q?d+F+2YTBOMOfBZuFKJQ3y62GC+GptrI83UsGNT0g74f6epEj0WciPSqb3str?=
 =?us-ascii?Q?Bd72motNbVCdgqRwFpvHaIRfSRdBnakyx4nT2lqo/79Cnjj/A5XAnoepZDtp?=
 =?us-ascii?Q?nn2U6E+Oat8llCU7DpcnautEqIpG8T4lyQn7MRQ59WDNofLTErlu6cZZG2dV?=
 =?us-ascii?Q?SfUUh0ElB6wVb/zMQyXv2IAWmyhXwACPK4IjgzLaT9SyRF/yeEuyMM3dhxEw?=
 =?us-ascii?Q?XRgVXSoyIwu+uznYBXOzHjLWOsB5vQZLxTT/Vf8Qh/0LL2TLbO1MVD9dARs3?=
 =?us-ascii?Q?+C4N3vLtMD4ITv0KHJEc6GpFf5Rz/Ph/qzXag9Hzl7ht4ogxCi4e0mrESHQk?=
 =?us-ascii?Q?pkw1mmfxtYBzA44MsKQS49itsHJW9DEA+CbU64mrEC3ohKXxcjWdZYCFBZXe?=
 =?us-ascii?Q?GkQUr2mxZEafPWRmiA/9td6cRhdsgmgrYpA2nUzfep0VeXv8RI0NQdaQSntm?=
 =?us-ascii?Q?af1usUEOPBKAbH9Q1Fp1I6l+KCw9ePd3gF+FT7lApVN7+mXOswHkmoL5BCiI?=
 =?us-ascii?Q?ELMR386h4WNm12fXU9r2YYuqvHcf7G5uGYsnoZy5dqdJW7aHYGZxcTDVxOFP?=
 =?us-ascii?Q?LD4kcV05gfedVhPQKOeDK+7Y3+sJOXV5WPzICCn4glvRYGQ2zVmxwOBi46ri?=
 =?us-ascii?Q?26iUym0UZ37QV/cNgrGAzCt+NkIr7Rr/Wcg+NmzYAimqwbvAZmxySCrOY2+l?=
 =?us-ascii?Q?Z+92rEsaDt5Rr+FJ9KDFY0l9jZGqVbfgETpajHrZxdNedw5qMipg/NU1w47I?=
 =?us-ascii?Q?PwS84wMFxSuxzUVLsIcnE6pr7Y+3garzUc0wEUipjVsYhpGfl97p6RxT4OqO?=
 =?us-ascii?Q?x7sTp6IirebqN3Wglo4CeyjuyMGZbTpX4rgBAC4zAMAcCkFsBphOloT0aXVT?=
 =?us-ascii?Q?m2tjpNU4ADDRZQ/l7SDWO98uhf8T/G/tb876uS3plTvHel+9PoiN7NIC5bY/?=
 =?us-ascii?Q?rbGJjJHZvOW8d2mP6kdOiX3X78e5ec4zHl4OdIw4PS48p0PAjP35l6f4JIYg?=
 =?us-ascii?Q?uyJqFH3b3lhP4C8ZELSEzbWP8hKyD0NdBWvR59dcZu6ojkGn7DmPn0FPA99T?=
 =?us-ascii?Q?ZRiodRQ2RSuLooE3wY1YzhcoEoAHOeGNvDbjaOulPnoEYNkpDZLfhvslbp84?=
 =?us-ascii?Q?xoUDiY8SZtKEYYtbwesXLpMk7kvS0towxjB2ysHYUR3xl1yjst2g/RNtUKWB?=
 =?us-ascii?Q?i87DYKHB+2C4KUXhqGTtOu9ryLO+ql/ZlsdJUYhNfkP/gQzxA3qMdU82yHJB?=
 =?us-ascii?Q?+xbtR8KPV6cLE2ITk/NzlyNlNxG4Lm2W5OUKQk3aHb75pNr87pHG2Vv/VRf8?=
 =?us-ascii?Q?bqVicU8IUyWorXPRgiIFUsGzmEBEWPed7bGJGkenS1LaRgf0T8UqNur4othG?=
 =?us-ascii?Q?SrDrwjh95Lh+TTiZLC+6AYX0GDfoZg4/9Saj3FKApmrO5tqxfoLTS/S3ss7K?=
 =?us-ascii?Q?8Z+B7hVleiNFYSc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KhVfllqLxLMU2r1i0MVHCWksGXHxx1tPXJs5OaX0uwrXc3m95QIXr4tWAfG5?=
 =?us-ascii?Q?cUQsCIdCfWQZ5LLySFpCxxAuR3Xjlkh7Brq8Jldc0BKp/ITpinsffN29Uzaz?=
 =?us-ascii?Q?SljaSsY+JiGtydrPIxViA15MeBria9T0bpWtofHdmPeAWgBBB0IOmYy5yMpG?=
 =?us-ascii?Q?0NX4iIgThGlycPjSOlEJHu2LRpacbCd4YKqf4FS7VJhOZ1C9dOmUEc1DVkTM?=
 =?us-ascii?Q?ews40liWSiO1/CTddAMJcNUGVsfDT+bZsG4xiPmounFqceSaor9Lo9NHx2DU?=
 =?us-ascii?Q?t/McWVQURkw81+O4Ibel9fRh/d72YYpElYz8sV4DXkHIW9mbz0J4DmUdsWvt?=
 =?us-ascii?Q?t1BF2n+97ZPiVgupc05y2Fa/+JWXI6ST6NFnnyXj6clHcIxaKVP8UzFbUNiQ?=
 =?us-ascii?Q?h9a6x9r0/aMgyJRh4UzVUz4albdo4AC7UDbz8S3FdEFLWCNFevVYtROSNB6p?=
 =?us-ascii?Q?Hn0yjIwm2VcSY11TjV/0Zo+IDNSfKTwGbngA0pdfU9mSXT2CPHBIIDoua6iw?=
 =?us-ascii?Q?RPwHJ6NYCMoSZDTm/F+X4G820d2oqzlr2Qb8eEUeNOh7moJ+u56tQPTbLilM?=
 =?us-ascii?Q?VSBWuwd6+TbSy8QvcWc9yh6YONPtFFDTkmOIIGi9VgrIEGaHjfFsarrweIAX?=
 =?us-ascii?Q?SuhQlqhsktXYisWb07BOd2rS4e4a1CYDx5jJhV/kcl5Ei1NzdlNG0KlJK5D3?=
 =?us-ascii?Q?96lwOK9fq7j6G/1imzKa58X9wgIfWPFCJrDRuyYtRNSn2KOTkILi+BeGohlq?=
 =?us-ascii?Q?0p7OZF93COUAFfNIA2MtgdtVP5jgxp0pae//SJnx7YcqSqKz9lOfuAllTZez?=
 =?us-ascii?Q?GDwic7Dhmn/wmOgtKlLIg/25/n9DpbR76BgQTAW0IT0nhUA/n6mjxJzbxfBI?=
 =?us-ascii?Q?e3cf5pQxBakl2jGvfHL2nHxE0sXVC/hLggFPpYaq8CMkm6NEqbu7Jq6Mu5WV?=
 =?us-ascii?Q?OChhzSZrwyNCR2/bBfnMbUucP75r6Bujmwn5QRR4yvJqF1maNGmVwYgEYju2?=
 =?us-ascii?Q?5fVzHo1xSI/aleJ+AuPKG3qCOQXH5fOQB+ahezbIPpzsM9WPsr24yCe00oMj?=
 =?us-ascii?Q?Ehb11WmDAzauSC8NWBAU/dpBhM0EkGBpqwdtQefqA3+KFH+wxCedCHVS3KUd?=
 =?us-ascii?Q?xr0zuk9LB1D0zKg0kY22kNVJZTNvgk4kUVQ+EyXZKPJZHzXHVQ1trd2yKRvM?=
 =?us-ascii?Q?dHO7Nwb+qHfKl3HBeeZtvh2KSOqUSdAbPLAR7pKCbT2YEF3eUq1dDF1fIo0O?=
 =?us-ascii?Q?D1YYH+NJBa9ZNwmeFwUWGpnRTEXDb5u0yG+uu77vEikhufDP0VqtdPSig6yV?=
 =?us-ascii?Q?ZPA5nRsj/XUjgtwZaIfqfFY6p48xRXbKQcOXuGMMh4j8bzCveLBLl+LHZTQT?=
 =?us-ascii?Q?ix41WPj+xRszRMi3t3epDXBCavBylOcRndy743SmrzBVlwNq7IGAihcUNhm4?=
 =?us-ascii?Q?J0XkmDfkOcqT5WIIvzYA1qqdekRFB+rZ1XX9iH9RYN2xw1XIcchqQzOdeuEw?=
 =?us-ascii?Q?6BAMFU+73gMZin/Z8JQmUONFND+oWDYEuHpMlOTVxr77LdLJxp13KLC5u622?=
 =?us-ascii?Q?72WOC08n1niEQkOfMgu+2Ol0Rinjnsxa73m55Zcy?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7f2d594-a711-41e5-2e20-08dd92cc3e2b
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2025 09:46:46.9919 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7kboSGnHDhTn/T8R3PNWQq5TcI7sEVgXS6plMGa4z2uzPqQWTqPjCyscW4Fb1ZtX9uyQKnnGRZGJnqokZi40uA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8302
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
> Sent: Tuesday, April 8, 2025 4:30 PM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>;
> Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v2 06/11] drm/i915/dsb: Add support for GOSUB interrupt
>=20
> DSB raises an interrupt when there is a nested GOSUB command or illegal
> Head/Tail. Add support to log such errors in the DSB interrupt handler.
>=20
> v2: Enable support only in platforms that support this (Ville)

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dsb.c      | 9 +++++++++
>  drivers/gpu/drm/i915/display/intel_dsb_regs.h | 2 ++
>  2 files changed, 11 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c
> b/drivers/gpu/drm/i915/display/intel_dsb.c
> index 97ea3c655590..5ddc3e340a79 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -634,6 +634,9 @@ static u32 dsb_error_int_status(struct intel_display
> *display)
>  	if (DISPLAY_VER(display) >=3D 14)
>  		errors |=3D DSB_ATS_FAULT_INT_STATUS;
>=20
> +	if (DISPLAY_VER(display) >=3D 30)
> +		errors |=3D DSB_GOSUB_INT_STATUS;
> +
>  	return errors;
>  }
>=20
> @@ -648,6 +651,9 @@ static u32 dsb_error_int_en(struct intel_display *dis=
play)
>  	if (DISPLAY_VER(display) >=3D 14)
>  		errors |=3D DSB_ATS_FAULT_INT_EN;
>=20
> +	if (DISPLAY_VER(display) >=3D 30)
> +		errors |=3D DSB_GOSUB_INT_EN;
> +
>  	return errors;
>  }
>=20
> @@ -986,4 +992,7 @@ void intel_dsb_irq_handler(struct intel_display *disp=
lay,
>  	if (errors & DSB_POLL_ERR_INT_STATUS)
>  		drm_err(display->drm, "[CRTC:%d:%s] DSB %d poll error\n",
>  			crtc->base.base.id, crtc->base.name, dsb_id);
> +	if (errors & DSB_GOSUB_INT_STATUS)
> +		drm_err(display->drm, "[CRTC:%d:%s] DSB %d GOSUB
> programming error\n",
> +			crtc->base.base.id, crtc->base.name, dsb_id);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb_regs.h
> b/drivers/gpu/drm/i915/display/intel_dsb_regs.h
> index cb6e0e5624a6..230104f36145 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dsb_regs.h
> @@ -51,11 +51,13 @@
>  #define   DSB_RESET_SM_STATE_MASK	REG_GENMASK(5, 4)
>  #define   DSB_RUN_SM_STATE_MASK		REG_GENMASK(2, 0)
>  #define DSB_INTERRUPT(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe,
> id) + 0x28)
> +#define   DSB_GOSUB_INT_EN		REG_BIT(21) /* ptl+ */
>  #define   DSB_ATS_FAULT_INT_EN		REG_BIT(20) /* mtl+ */
>  #define   DSB_GTT_FAULT_INT_EN		REG_BIT(19)
>  #define   DSB_RSPTIMEOUT_INT_EN		REG_BIT(18)
>  #define   DSB_POLL_ERR_INT_EN		REG_BIT(17)
>  #define   DSB_PROG_INT_EN		REG_BIT(16)
> +#define   DSB_GOSUB_INT_STATUS		REG_BIT(5) /* ptl+ */
>  #define   DSB_ATS_FAULT_INT_STATUS	REG_BIT(4) /* mtl+ */
>  #define   DSB_GTT_FAULT_INT_STATUS	REG_BIT(3)
>  #define   DSB_RSPTIMEOUT_INT_STATUS	REG_BIT(2)
> --
> 2.25.1

