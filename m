Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FBF9F7DD0
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 16:16:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D7DA10E48C;
	Thu, 19 Dec 2024 15:16:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BEFem5Qb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F6A310E48C;
 Thu, 19 Dec 2024 15:16:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734621370; x=1766157370;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=G0bK6StqqEai/FbRfb7id5WZCM20Wrs7WZA2RwIeGC0=;
 b=BEFem5Qb315fW68pv7H4iLiuwzuwjgyyr90SXNGFBMY6JdDejeHofZXq
 M+xrbDYcRABnypOHMQ+NNGfOTpztKBZ5clYQuLMmumvCBU6vqgq8LsEH9
 7RZ71jehi8dvUtHlVYcRVRS3XcnVDvcLZpYltUGvRifoZGgyG3aYcVwoo
 aaiDeKNXjrQxwSID1syGtf1QljQ2BIHA/+4Cn97z31laKORsVk60R9vPJ
 hjHGDfq4FGYJATu7jgEhc8UCirASPUgz0JI+BKNOBeBfDCqAJNJ0tXZUr
 XwUv7T+368AAow86O+Eef9CHGP9j60jkdMpQ7wAoUQvkeqlPpRzPGeCDG A==;
X-CSE-ConnectionGUID: AbcDWOXkSNyGhM/xrM0s/w==
X-CSE-MsgGUID: y3vXSR6dS9iSFD1i3cftnQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="35263566"
X-IronPort-AV: E=Sophos;i="6.12,248,1728975600"; d="scan'208";a="35263566"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 07:16:10 -0800
X-CSE-ConnectionGUID: YF75JxB8RdqyVkwevSEg9g==
X-CSE-MsgGUID: GyzDvgVwSU6L/P/1SgYIuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="129187070"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Dec 2024 07:16:10 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 19 Dec 2024 07:16:09 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 19 Dec 2024 07:16:09 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 19 Dec 2024 07:16:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ney1m/mjHzel5yAcrZ5bY1YephXNc4XC2UaLBwkiiq4ufsRcX5B0rZTC/FI9hPZMeex2ioy9IutwM+TViDlfuYw7dOrcIHuywvUWts845ur2enwn3JTqW7fCqxGhXfl+fqL7DKWkDYhgQZO78Wv0G32hjmxZ/jFIyKCUEmPp6dVFa7TVbEC6R0yMGjAr+ohFeXUnOCU4m40daeXNWuQmtPpql1yGeBXA+OMjqHas0yTw+7LtcrAgvZGrwpTf51agHYcNGhcHsMldo7UDC+SAw40BSZmdLumFNcJXSQfKw8umAXDuvyuettfKP5F/pcDPrKmKnBA2WkWCm+NbbYBUlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/c0+w6pRiAFn/Fc2rjhI+trz3BNMLhPugJZIVej1VE0=;
 b=HP5RPnHI8cNzVc3eGn1rIgZI0S1QRo4CJAIomQp0NYSpY+96WIvHP5Vsv3ClFbU0N0ZR+hmSMn261I39Fr4eSM3l4nbvmUlVcLn+dLlp28jKQWelNJ187CedOflVmC8I3vDRGx9xvmD4N3OEatBcVXPnTEIgTBA9AD2GIddslHjgK5irZ5S6ymLNpwCFeAvkFGYeF2qbd1g7fwPejTAXP2g34bkbR29+HNGilLJAfCtfVHfJvh5qw6zxRLmd4Ncfbo049CX3UjQorlku/rgvY6PQ8VGGDd2VlMdsjV3TRJ3GInH72Sq1m75aoXFY0faarKdrhYO5dv5wKdSV88Mjyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by SA2PR11MB4876.namprd11.prod.outlook.com (2603:10b6:806:119::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.13; Thu, 19 Dec
 2024 15:15:20 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%4]) with mapi id 15.20.8272.013; Thu, 19 Dec 2024
 15:15:20 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Syrjala,
 Ville" <ville.syrjala@intel.com>
Subject: RE: [PATCH 2/2] drm/i915/display: Initialize pipe_src in compute stage
Thread-Topic: [PATCH 2/2] drm/i915/display: Initialize pipe_src in compute
 stage
Thread-Index: AQHbTKKgkS5IJ8QhpUmDa6F0vTYQybLiwwCAgAr03rA=
Date: Thu, 19 Dec 2024 15:15:20 +0000
Message-ID: <IA1PR11MB64675B0DFEA3D4BC273E91CBE3062@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20241212143329.938202-1-nemesa.garg@intel.com>
 <20241212143329.938202-3-nemesa.garg@intel.com>
 <CH0PR11MB5444C7899815F0C16DBB8829E53F2@CH0PR11MB5444.namprd11.prod.outlook.com>
In-Reply-To: <CH0PR11MB5444C7899815F0C16DBB8829E53F2@CH0PR11MB5444.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|SA2PR11MB4876:EE_
x-ms-office365-filtering-correlation-id: 12e75977-50c9-40fc-f5f0-08dd203ff41e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?v2IPEL9MdMZ54EtKF2AuIfutcl8KAKBFy8WdZgywPdLSnagWofuz6tLw5NQ2?=
 =?us-ascii?Q?cq6DpsGftN4C85yn0806+l5ClgIoaIpsS6Ounr07NDeJqMmHZGJ2Af+j1mao?=
 =?us-ascii?Q?dFHMJbZWQdPqFZwXgm1R0nFuOEIu0pv4RBhRCZDNxl5B8pIA6qdVtoFXN8uQ?=
 =?us-ascii?Q?+lPfX+ubMe0wWCAQA4vwLUemaFtx34NRZk1FEBSK94xkz77p3k9vUZ/ErcqL?=
 =?us-ascii?Q?Y9OkGGYgLgFUrroxD3w3ypKNk6gEl7ewRyCsKpwsVDal8b9eVYCoRfh/i0uX?=
 =?us-ascii?Q?SO5tTuWaAJnO51z978JZ7mq/9xEGVnAcLw3N5fyVF1gkimriRnJHAv7+3Z1w?=
 =?us-ascii?Q?W0XtQGW+wkin5YP85YwzYLWveepM/zqBiJbkxqMn8UKDGGY+cB4cwOxusrGA?=
 =?us-ascii?Q?gyHw6rwRILA9hgWMRJKOSC07muRrSBdTX3e4QwSQ5sEmOCI3PXF/XzEFCfFw?=
 =?us-ascii?Q?3CCqGGu15SkKZJEG9cgkNznhOJ5D78LT7rAJHlgE6kbA4hWVv5bNJuSNclwm?=
 =?us-ascii?Q?mWzlXh4eA1BI+0nd1M0W9iYxfHKZ6ip0KaHgUzn57zUGGFU6jBGa4KgB/rfh?=
 =?us-ascii?Q?F5x/+oZ5iMRH3GytUfgov2KDZ9BFg0xaGiZR9JAnQ/NSfDZG49g95AQZGRQ9?=
 =?us-ascii?Q?d7TwOoNBUdrHXtawuO4S/c5QOEokYf3BpI1LYbd6N+VtG9koqNCEB+5C8IF/?=
 =?us-ascii?Q?roFitlEo6epfHhE8NupabD4TapKKDFxn5xZC9llifIy9QDgdO518FD7BRe1B?=
 =?us-ascii?Q?rHQEm9DgSGAJ6DCLcmmyJXAgIeKW6lptSFIl3prgSsg9XsG2l3XDaaGpR1UQ?=
 =?us-ascii?Q?wYsSZ/s1BvurhBVSCbhbI8KL4c3lybkOPypG5AIe+oJ9sb2LhosWqqZHr49F?=
 =?us-ascii?Q?rRsE0lUz9eUCSlDdXGDQ+7P+tzrVEG3nfq5jvuV2kUKI1VdJ3ud1s2/cuPrI?=
 =?us-ascii?Q?UmgTny2NNx7CE108y0FFpJRdmuOPnDoZ1Vvdfqwh4L3Fvu5WtcvykDITKOli?=
 =?us-ascii?Q?vhNYLNZzxG4/uwLRCOoCXW76w1mibZBla0nplaO41EjWeRM/AL8VDFlM1KTs?=
 =?us-ascii?Q?WDlceXuwtpRYgY5ZTiv07TF4Wm3TkX2ncQGW+4LMvhgwXLVVTDGXrx4yEryN?=
 =?us-ascii?Q?y1dRogT7CvBJzA+02QXZygW4TzAJWyNHaGTUMmJ2txeR6zFsA41sXXfVhM42?=
 =?us-ascii?Q?6/gTOoMa/EfNomLq3GD/LZuvU+ilKeBRuxvwFW4cH7N/OC1tddq7V9nH4AXW?=
 =?us-ascii?Q?MwRkhj+psSP6dzlyL7eQODKGz41Yzo848EfU1OogGrjxO+8XgV399SpNRUM3?=
 =?us-ascii?Q?VyPmSDhgO8/mMSdCRLeNmyewK1ftqXS0c3VRPYwwtbDf33MkvyVtvbNMBy8w?=
 =?us-ascii?Q?9QtBuVmXaQIW6pIhwlpDH0Ib6tgRb69B4Moxl4Dtb2ssbNcrfmGbN4Lny7bg?=
 =?us-ascii?Q?t4iPfumpvcpzKsgK77ll13tdvREyxTNz?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xrGLaB5hrE6tcd0DmUrTjTQ8e4iBqvAqhTLsTuCXbse/DV2eGP1goR0gMYN1?=
 =?us-ascii?Q?uilKBWmYGCf+zHXWOCNT8EG1CTsLZbt4s4X+AyJA30rA7ZSzaQtSUzGSXGLp?=
 =?us-ascii?Q?338jpUtSS1IHXZFK060qu1qmpafhqVmaG3lUomj3m5UejC8kKLAjxh9yDaIQ?=
 =?us-ascii?Q?a0TTjwayZHms/61AbKDMjChlEm+RjkfEgQk/g1ygrTu0Vfw+SpslVkaD4mU/?=
 =?us-ascii?Q?uXWF5kv3T4Edirlc6WljfxnTsq0cfdgbGALP7l3xB3+KIXfpLp7f3QHE9R1a?=
 =?us-ascii?Q?UbfJMtTAh7GQv5iEXhJBGWkF0+8RE+nQ/vsuPiFpQeZqGYRPBjuO6VaIEGqt?=
 =?us-ascii?Q?31Cf0O42JCh2US3CE+vUkU2LRTqZisIWNwIQv8WqjPVPFL5qMUuplyNupQZx?=
 =?us-ascii?Q?iZ1SIxdgmWfQ72gv8KCETiCAvWYgjZhbL+Y3ZsFmOiCkkboxpIiWmoQFMc9k?=
 =?us-ascii?Q?FAQiPgUAk1Nly+Z8WzX9me1MMKCyKjM1l7HnVVRROU/edsb/Ng/A+vDx2YuC?=
 =?us-ascii?Q?jvK/eJDKR6Z9jkaA38R4UOxmKxQL32ap/Ef4/Ss64TPki7jKJ64Ly73PAN7a?=
 =?us-ascii?Q?akQQfI3GU/nwm7H6qZbMqtlPLGUzig1JbWItDXoaVlSSpHJd0BAyGROvwY1U?=
 =?us-ascii?Q?7zIwxlzHd6vpi+i9sU6twYCfXnmF6+1OB23b34QQcVeIkRCnk5+iMms4vXV9?=
 =?us-ascii?Q?Y2a8XTe96UrDMaPQxCQ8g7PExqYwAQJkKZ/HO5UMsHXBivv1RmHN487YQFrn?=
 =?us-ascii?Q?dAf3u3EKMBZThaLfYXbshr+aiKvVr1PxtMgPku6oVQ5vk56AW7icMKSSJcSH?=
 =?us-ascii?Q?CnLoTuvS8d4Ab1Pdl6uLRlXE2Tw9Ary3fnxKwnOYuzrLj1oXFsGB7COe7Fiz?=
 =?us-ascii?Q?oWuyppQhK9w4PF3UMAm/OI72BkKVzZZc17ywqh+V5f5auF5cHnkfi/kaNINa?=
 =?us-ascii?Q?lsfBpjX0SJ3K4C0znNytP+qb/D5duSdorIFTSg8sH6wDtUs53oQUW8o5B9or?=
 =?us-ascii?Q?dXWU3iOmHYQH34IjBM3F47L9yCLvxfWqUamngquGZrKRutjhebCoOkTjbch4?=
 =?us-ascii?Q?rixB6WV44xj3hgHTNI3kckrJDquqZEPkPS3AEfos4zR5+jNqMu1dJpwbsZR0?=
 =?us-ascii?Q?TFl6v77H9fGaqj4JBV14vrWshCJZzhMQP3KUuBxwwl4lGCWws9HL7Nd/tKSJ?=
 =?us-ascii?Q?PVwK/dEB1NE5Q9GsXODFFsVKnybkbRncL5PRWJdromK4AudeZgJB65CPpT7i?=
 =?us-ascii?Q?gHJHiLH9/KCYlaDNIXQWqeL/AKlLzm/mg3XJpTQzRYpPO6MloVuQq/fh3cyV?=
 =?us-ascii?Q?17PMpzm84q/jZrMgYcvVINPDue8d7g6mXJDJwEvyaPMgtIM709ZLquQJvc/B?=
 =?us-ascii?Q?5Mb/2K3u0MtrwKgtjd5Q5/59K9z4ztAj0UKZizUiKqBjjVXH0H3e8kDV5X1j?=
 =?us-ascii?Q?pG4Nx9OLyQ0XlFZViLJiCm+XdGnYzadGWfqYgSIKWKTNuan3dGqHQo6NkNLV?=
 =?us-ascii?Q?sDag5cz0r84hIkpxTtVLWgEVwxGOYJPUwklNohTZC9L1Sqe1k5IQh/JuzkxD?=
 =?us-ascii?Q?m1cIcwVxzi3g/1cf1oKhWOCXFLQeyoN/OonPGQkE?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12e75977-50c9-40fc-f5f0-08dd203ff41e
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2024 15:15:20.6750 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XP4Z6UgSy4dTQfXaxgOtBNi+tjX5Sh952k6i+EOeG2ohkkTMpsWk8eer29L7Tjzzhq+mLU1i7ZlGYLH/TogITg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4876
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
> From: Cavitt, Jonathan <jonathan.cavitt@intel.com>
> Sent: Thursday, December 12, 2024 9:25 PM
> To: Garg, Nemesa <nemesa.garg@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Cc: Garg, Nemesa <nemesa.garg@intel.com>; Cavitt, Jonathan
> <jonathan.cavitt@intel.com>
> Subject: RE: [PATCH 2/2] drm/i915/display: Initialize pipe_src in compute=
 stage
>=20
> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of
> Nemesa Garg
> Sent: Thursday, December 12, 2024 6:33 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Garg, Nemesa <nemesa.garg@intel.com>
> Subject: [PATCH 2/2] drm/i915/display: Initialize pipe_src in compute sta=
ge
> >
> > Add early pipe src initialization for gmch and later initialize the
> > pipe src during compute_pipe_src.
> >
> > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
>=20
> LGTM.
> Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com> -Jonathan Cavitt

Hi Ville,

Are these patches good for merge?

Regards,
Nemesa
>=20
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 17 +++++++++++++----
> >  1 file changed, 13 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 7be2ea11b8b0..50693b6ca58c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -2534,6 +2534,13 @@ static int intel_crtc_compute_pipe_src(struct
> > intel_crtc_state *crtc_state)  {
> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> >  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> > +	int pipe_src_w, pipe_src_h;
> > +
> > +	drm_mode_get_hv_timing(&crtc_state->hw.mode,
> > +			       &pipe_src_w, &pipe_src_h);
> > +
> > +	drm_rect_init(&crtc_state->pipe_src, 0, 0,
> > +		      pipe_src_w, pipe_src_h);
> >
> >  	intel_joiner_compute_pipe_src(crtc_state);
> >
> > @@ -5016,10 +5023,12 @@ intel_modeset_pipe_config(struct
> intel_atomic_state *state,
> >  	 * computation to clearly distinguish it from the adjusted mode, whic=
h
> >  	 * can be changed by the connectors in the below retry loop.
> >  	 */
> > -	drm_mode_get_hv_timing(&crtc_state->hw.mode,
> > -			       &pipe_src_w, &pipe_src_h);
> > -	drm_rect_init(&crtc_state->pipe_src, 0, 0,
> > -		      pipe_src_w, pipe_src_h);
> > +	if (HAS_GMCH(i915)) {
> > +		drm_mode_get_hv_timing(&crtc_state->hw.mode,
> > +				       &pipe_src_w, &pipe_src_h);
> > +		drm_rect_init(&crtc_state->pipe_src, 0, 0,
> > +			      pipe_src_w, pipe_src_h);
> > +	}
> >
> >  	for_each_new_connector_in_state(&state->base, connector,
> connector_state, i) {
> >  		struct intel_encoder *encoder =3D
> > --
> > 2.25.1
> >
> >
