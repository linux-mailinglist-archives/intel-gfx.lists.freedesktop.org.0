Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 395BC9D93C3
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2024 10:03:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4C6710E413;
	Tue, 26 Nov 2024 09:03:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VoG1+RwS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C205910E7F2
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2024 09:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732611837; x=1764147837;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KrwnYb4lqgpSx5/2h28W0tMSrZoDxBdWM2FAIMdxgRM=;
 b=VoG1+RwSWqm5SbgfWtJsMYb0dVyYs7vQHx1LHPpbHtwfjA3vpjL7h7Dd
 XZjoR46d6apcGprqEaNd7sI+eP1MrjCweemYgOYzvL3ZGYr6UysraxYRv
 k6QlSiUrq0eq8dt2Kk2z6MXYfYVE7C6fjIj48pBIgm4GcoLtkyKZX9fH7
 FhsYKuBrDBpDzm9ts+VabSB6wKqARDnHApYyOMngloe0pCsFgl1V7ZAAl
 wx1nfnRtQm3aP9LcSrPSqwRo9of7eOINmImWn4ki6e6jvL0kFi652FR7v
 HlmVtuRTg+INv7haydEtSlFwnMOdP6P9/NKr1FWM8wQu44jLbMqqXt5MI Q==;
X-CSE-ConnectionGUID: nh0iifycQyOva7rVaBw+gw==
X-CSE-MsgGUID: 6QaVV8zUQqiJAK/hmkOwCg==
X-IronPort-AV: E=McAfee;i="6700,10204,11267"; a="44143132"
X-IronPort-AV: E=Sophos;i="6.12,185,1728975600"; d="scan'208";a="44143132"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 01:03:56 -0800
X-CSE-ConnectionGUID: q4WqRz2+S2a6mBmrRqwOOA==
X-CSE-MsgGUID: 5CgsmFRTQvSqW/Y5860W8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,185,1728975600"; d="scan'208";a="122405305"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Nov 2024 01:03:57 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 26 Nov 2024 01:03:56 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 26 Nov 2024 01:03:56 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 26 Nov 2024 01:03:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QdOcroRKIAXY3Oc/jtpQvVUxa1h9i9KqetrRm2idnAdu6vvfFr3kx50DdqZ39VGlyozBZds+Z0c3/6vxe1vpaUgpKDX/CufmF0RX4cna0pyxshCI+mLdN7VUuGih3uuFJfglp8elRd+McdK/EfBqjwqOm/Y6PVz50qgXttVkOcT8ew85Xsyz/1YkWg2GbJy1fXqMWyWuW2iegJWgtnzWAw4IYMaCx54gms4iLSg5YPE1Tb1uJOvA8MZhQcpUgikwGrq+6B7zTfj4P3k4TeLsBdHI30LhEB9OAMk/e/m/bGnqUg7UjMMHge0QQ4kV1lfL5ZR+M2KEBbytZ9fgq087eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6XF8/rttSQa+0xUyPM5MOaMpZQ+Fo0ya3AdOFeBaCMc=;
 b=C2Vz/wCRz+TyqXYoXurJUSyG7GTIZXKfLq6NH5y19MQky83UUvoHAw0v74xz7E+LUWbTQnrGr2HcOQoFyX2PLc8RZjuqihOHXkKplSj0G98GBrt5pMTpWgKjLnsSlnV1TE7ywRsNSYb3PDMjOd36ekzVar0xG81QSGkTH+/i0zYwgdgUVWPPNwvWfrPYK4qO/vCB4lsUvXsPtt21Y3E7DsgzH1LKWK7p1tbevv/EAXpVq7dI2UhT4RihM3M1duBX038PXFw8IBPdobK3y4ziIBFKBr1sSDb3zWURuvN8mh83CO9+EiD4VL8yZiYwTQ1M7x/MSJ97vvrA/rbMzBstUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by IA1PR11MB6394.namprd11.prod.outlook.com (2603:10b6:208:3ad::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.20; Tue, 26 Nov
 2024 09:03:47 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%4]) with mapi id 15.20.8182.019; Tue, 26 Nov 2024
 09:03:47 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Sousa,
 Gustavo" <gustavo.sousa@intel.com>, "Jadav, Raag" <raag.jadav@intel.com>,
 "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v5 2/2] drm/i915/display: Use struct intel_display instead
 of struct drm_i915_private
Thread-Topic: [PATCH v5 2/2] drm/i915/display: Use struct intel_display
 instead of struct drm_i915_private
Thread-Index: AQHbL4ZZzK5cc+oAkEaxSenjLHhhWrLJZIQw
Date: Tue, 26 Nov 2024 09:03:47 +0000
Message-ID: <SJ1PR11MB612907562E3497573C531DA6B92F2@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20241105131732.331436-1-mika.kahola@intel.com>
 <20241105131732.331436-3-mika.kahola@intel.com>
In-Reply-To: <20241105131732.331436-3-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|IA1PR11MB6394:EE_
x-ms-office365-filtering-correlation-id: 4561ccaa-ad68-422b-67bc-08dd0df93cda
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?QV6X8Vxsj9cP9YXjV0Ij2ZBpLWLtS/aUC+0imA1Up141NoGC2NELnmpEOPOU?=
 =?us-ascii?Q?dOKsHp4og2dO+nLTuR8b6emQYJTO6KVyiU6fZbBzfrr2hkYQXB4l6So2PHFJ?=
 =?us-ascii?Q?0vch9pj/SaENxHlBG0/YMh+B9HaSRXVufdk8Rwn8F/iQR0yMJH2L3w2MNf+Y?=
 =?us-ascii?Q?+xvbiodrZscR70J2iXk9v2nnskOo2CtZBtuDmahhghL4kN5df3Rof4W2Dku+?=
 =?us-ascii?Q?l7rA3e6CXNrEtr5C8wmYTt/xJlH/s6qImIpkdIIRD44U/NSbrGRt/zZafM/D?=
 =?us-ascii?Q?vRUgslI9p8dQy5jdgCDAv4gBgGAl/kdh5vs1a+F2xIK1keh2w6FTqNyokTcy?=
 =?us-ascii?Q?IBCUNQT6JR1RreYVifCiudLtH9eMrIuKkmiJ1ywKzr8+WhxeHECUXmKtCDgn?=
 =?us-ascii?Q?onyHxLpOoh6LnSibSsWQQMCF9/IOQcx7sFqfTAzu4k/uyY8A0qx2ylVi+/ii?=
 =?us-ascii?Q?5mecOojzFK580gDqwGKJv7sk8dJO8ksB8AlkRuL+dNFUqEqeUj5RLSt5yoGX?=
 =?us-ascii?Q?nZ18Y1b+M5OcvBzEEhdbQPe5Da7oLUvvmQqM7Msywf4uqdOiaiU6cB2WO+3b?=
 =?us-ascii?Q?SUa8+r/k9Ctk0N/3amDAV19dmkIMZQd2dvUp9KKpZmcxATziOwRaONHDw0OP?=
 =?us-ascii?Q?DfK3NDDXWZP5FGOlKya4gRjuEO8pMYCqZb++AjsePCGzw5sPWh9m14O8BxuR?=
 =?us-ascii?Q?DIX7jehjVCVn4lHlminc5aLb2Hg8Rv/hApfYFNi0ra+Hh9Ob4+gTjcht6rMF?=
 =?us-ascii?Q?/s4z4LmtBkF35EAdYseFZGVxca7ILWHce6Oj6Q+1YxzO+sBfNqnDb21OCvIZ?=
 =?us-ascii?Q?rWjnpQ6Ye0UDQXketGNnn6MvgpnUKWW9kAfXiIoGj5kQSP2iu8DI+1sDysBO?=
 =?us-ascii?Q?1mZtS7MRk2BTJKppOSzfErHG+pTrv7HNGeyh02vbQdF2XQ/eLCX6b1bRY+hV?=
 =?us-ascii?Q?eWrpuZi4DIzarzaZzypgyUHkgGTCjIKJSkUkg4glc1PZHuM3n1i2EeBguiyF?=
 =?us-ascii?Q?vvN/ch07FKfVA1dUcxFqcqpA6YW9UhhxLdWiAy9M7ph3OarLODBZq9RrM7Ms?=
 =?us-ascii?Q?3XRl2ByUwpr2b/y2dM4u9APYFLuH9Oy6QI8Dq9QOVcRC20IaJ5QIVyPEAqvg?=
 =?us-ascii?Q?bjFQFoP12xP/Yeqf20btXw8c+6HvxYoo035nB4Fht7hrdzRerp/bxE5cNZU5?=
 =?us-ascii?Q?D6z/b/peXXqifZEcyMAp8Y9ohxR0FPa+RTxDpgRS252opDFQA10uImZbIRgW?=
 =?us-ascii?Q?lqQa3dtur24fiWNmYW2zvy/exadRDsaQ4FrO7h7eKdLMkRT1vQLUTdB0mZu6?=
 =?us-ascii?Q?O5O+N+b0Kvzqj33H41JRfoa1NIKoiv6oOe+uj5NX6Tfh7RPxxt4b8hu2qsSF?=
 =?us-ascii?Q?TlqAlE4U/LRVMateGQ2JGPBlR29eByELqsl4sn1a7Qae8m/FRQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?83uSettVcopMDjaKHHnuRSK1I/z7KNreF19PGm6F9+zmEoOk8TqMmeiy7wVE?=
 =?us-ascii?Q?nCNLMGHoU7EFOVRbypAS51HjwcZ2nZ8XHm3WAeAZEartm9mI7sIoVn0hpnzz?=
 =?us-ascii?Q?cfh9br1WeKiW2+xFwNxhElWlQljLFeuEZ7WTUt/BZqCaq/7o0zC9F9WAeJ8t?=
 =?us-ascii?Q?sx1lYyk0C8QOpys7PYw0tlHZnV3ogOvPcKVLCqkJElSjoCPZmMXHxIUcpwUG?=
 =?us-ascii?Q?b8DFNoRGqhG6y9B84a25VyXlYJ9qFgQX3GcUtQvSAMLcLxzIRXHYiBH67PUD?=
 =?us-ascii?Q?q0HL+GNMa6tc1bumKq7GP3bWybCIj1ssmksTnqPDWme8b4bWEKUjtLKRnktO?=
 =?us-ascii?Q?Ms9bowCb6k98qgN7O2Wgaq8kzZwtaRQD10U97f5GQHciH1WgmcCOEIxS3+xQ?=
 =?us-ascii?Q?96LJLnt1l0VnaGH+p9p/N2mdV9iehjxtl5M+hp310SMmQW6BTyd0YytFkAb+?=
 =?us-ascii?Q?sRHGoP/t7NgM5aOxemiae5dyWPcaVqfC8VWGkIAAN7OtQy1vo7D50EZJ29Yk?=
 =?us-ascii?Q?9NBxpAO6J49weD0YManXuT+/q3ydfKjxY4hiIiHfG34seVcU1QNdv5RHQMXA?=
 =?us-ascii?Q?/ONV4rHRXED4PFno+Or05ZmrgKGMVG5jjavRt5NlikXEhPI6MiDGsITv38OT?=
 =?us-ascii?Q?3V8Pw9BHDuo7OEalHSTT37wDaNznYNPAkalSPD9sp/cCxStGxe10L36fN1tC?=
 =?us-ascii?Q?gsexLaljheV/5h0h1kOKBSJuwcubPYQ8eVxZBdQnMGElvONwcu+58RV/8rox?=
 =?us-ascii?Q?VIwQuxxUsrsQpxlHTp6FSv8pZUU5lw5lvFDVetsiiQ0KYkTXVSpWvxun0ARD?=
 =?us-ascii?Q?WstHk4y2zpj/qizOVS8S+klWgf2sBdiy/ytz0J5hdzW9zq/Xj/Dt9Qcvj1Zj?=
 =?us-ascii?Q?iXQ/hG2rfHguhSQ3+4g3BtUAOu793YNhxZ4gndvhdYIISSg7Zno3Pqm5suPO?=
 =?us-ascii?Q?Gu88A26d3TABEB93Grh2FEPpMCES8B1+X13eM9jTKx92AutxqghQOJpgVXKJ?=
 =?us-ascii?Q?oKlHgM0nMU8csNYuRHgJSPujGzZ2n+APmKbnbGKld6QPF1+tDjIWoT0k3NSb?=
 =?us-ascii?Q?WZYX4tQIxBDsVK9crJARI83K9QS38m2rTVxWFfDLn+v/GnAuhmkBcnPCVjAS?=
 =?us-ascii?Q?LAijxAnr/71LGbap2sSK4AiUUXpoqOs+cEXlFxO2qj+BxPO+VvT1qg1NYolL?=
 =?us-ascii?Q?zmQP7GrhiXbi+S8pcwUaLj+Cpu5NNlpJ/0FUT26VlvoqUtRm3zsfPrUa0jRB?=
 =?us-ascii?Q?IXA+sLh0+T0F4CpbTfYtGfnft7b5YffmrXy5pPREquM7ZgqHcqWA9WXo+S3b?=
 =?us-ascii?Q?i2fFWbQ4Xjh39ArfBFPI8cz0wRP82pvcn/NFqraG6xfwFZasVKR6S6SdHKt0?=
 =?us-ascii?Q?48G3nxPkdZvzgk/jEAN7J5bTLkow45iFxhvImFcS8VhPFvGTE3kdqACjqRAj?=
 =?us-ascii?Q?poHGILI5nP9Df8Bn3EnVNz99b0wqBFh5SriDUmanzn0ZnPP7nx6cqokfWNDy?=
 =?us-ascii?Q?/28UuijbJ9eISvlRzXQdII9mo31ARpqBxmVvJsu5YCS2fLU1+B2yEw4ZysJk?=
 =?us-ascii?Q?oBSlEPpY/wJmxlCTePOeXb0t8+J+e0hWiTFspoZK85RWTxZA4G8ZhtRGD7ow?=
 =?us-ascii?Q?Hg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4561ccaa-ad68-422b-67bc-08dd0df93cda
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2024 09:03:47.4846 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sMHlCiLX8+7PO+Id5EwgSkU24JPdTYj/kG7357a1qS7v8080BRZW6HQZdPYOfwhjU2zmX8CZmh18a1iB8b8txMAlWvuPWlsZ7o1Djjw34lA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6394
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mi=
ka
> Kahola
> Sent: Tuesday, November 5, 2024 6:48 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: jani.nikula@linux.intel.com; Sousa, Gustavo <gustavo.sousa@intel.com>=
;
> Jadav, Raag <raag.jadav@intel.com>; Kahola, Mika <mika.kahola@intel.com>
> Subject: [PATCH v5 2/2] drm/i915/display: Use struct intel_display instea=
d of
> struct drm_i915_private
>=20
> Let's start using struct intel_display instead of struct drm_i915_private=
 when
> introducing new code. No functional changes.
>=20
> v2: Drop tc_to_intel_display() helper funtion (Jani)
>=20

LGTM. Should we also send this series to xe to get CI results?


Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_tc.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c
> b/drivers/gpu/drm/i915/display/intel_tc.c
> index e40d55f4c0c4..d78f57190f3c 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -1039,9 +1039,9 @@ static void wa_14020908590(struct intel_display
> *display, bool enable)
>=20
>  static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, =
bool
> enable)  {
> -	struct drm_i915_private *i915 =3D tc_to_i915(tc);
> +	struct intel_display *display =3D to_intel_display(tc->dig_port);
>  	enum port port =3D tc->dig_port->base.port;
> -	i915_reg_t reg =3D XELPDP_PORT_BUF_CTL1(i915, port);
> +	i915_reg_t reg =3D XELPDP_PORT_BUF_CTL1(display, port);
>  	u32 val;
>=20
>  	assert_tc_cold_blocked(tc);
> @@ -1050,15 +1050,15 @@ static void
> __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool ena
>  	 * Gfx driver WA 14020908590 for PTL tcss_rxdetect_clkswb_req/ack
>  	 * handshake violation when pwwreq=3D 0->1 during TC7/10 entry
>  	 */
> -	if (DISPLAY_VER(i915) =3D=3D 30)
> -		wa_14020908590(&i915->display, enable);
> +	if (DISPLAY_VER(display) =3D=3D 30)
> +		wa_14020908590(display, enable);
>=20
> -	val =3D intel_de_read(i915, reg);
> +	val =3D intel_de_read(display, reg);
>  	if (enable)
>  		val |=3D XELPDP_TCSS_POWER_REQUEST;
>  	else
>  		val &=3D ~XELPDP_TCSS_POWER_REQUEST;
> -	intel_de_write(i915, reg, val);
> +	intel_de_write(display, reg, val);
>  }
>=20
>  static bool xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bo=
ol
> enable)
> --
> 2.43.0

