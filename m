Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sDdWO0zRO2qsdggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 14:45:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED106BE3C9
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 14:44:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=HOX8nA5H;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EA0189263;
	Wed, 24 Jun 2026 12:44:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB14689263;
 Wed, 24 Jun 2026 12:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782305097; x=1813841097;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=LEhLmk/2XPEaLs5ywWeuDAqDPkBs4vCUslesVsvuOcw=;
 b=HOX8nA5HUkfeBLeDOWG+fqjGorOzxjiK7h3ZSpsN8YWFcmzHcrJnrcoi
 Q2W8QhdPaNVgrHbbzON2troDgywfBZfRpGD+ovjeak8CA7e+BAKuVmNVW
 cpGwTe6wq3vq5JUUJTB5tjP4q5l/Ps+KN1N8GLFXRPzyDeD9f9JRC4VeA
 5MPMBIgLzJ3/pkUTw6PqIPMRAgdwUE7BFBRaKs0JSVQPLaLY83hZu7MVD
 qLRGQbvvqFxq9mkY6XZS4vM9vSwvhUVe0SxI3oa3qIM5Xx7KJeB0jcrmz
 9wFFZoT9bi0tV8tovbzah/NhEgJaJJEpOXVrhJMOgSo6V6VFAfQbxZkt7 A==;
X-CSE-ConnectionGUID: WT+U1Hl5RSmZ0KmdxyUSqQ==
X-CSE-MsgGUID: MiwZxR+jQVGtRksxU0Dqxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="105857014"
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="105857014"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 05:44:56 -0700
X-CSE-ConnectionGUID: 9GJN801GRu63jp+g/7kzsw==
X-CSE-MsgGUID: UJoMXwmyTTSLvGzmwHI/mQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="247469076"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 05:44:55 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 05:44:55 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 24 Jun 2026 05:44:55 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.8) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 05:44:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=abi640uBXIm1bD/ByUz1Fvj7cqolp1u3t6qu5bblJuwlBn9ZlVCLr9wrWPfhz38AIvc7yICMz6YEKL5exNx2/QIvar18iuHHvdtWBQc64v9SYtBAkjd+jGREnxd0hQ9wDIvtkejioqX4y0eRE/4TR55P5qEakBhi+9BEwNrxeemxyNsrklvQTYMUDqd1jZkh9ZuZHHx6ZFUUOW+hOlTKJFJafxwR/ZGKbloyGOQVxBOGqbxqnGMpYo8AhZIelFIpHJuEBGMdEb3kFJDs9uX7eqIKA8udBZElrHP/eicUmD7TPAqnBljQZSZ4FNrHr4KUKTyV/jCImMD0UoQsVLNoFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LEhLmk/2XPEaLs5ywWeuDAqDPkBs4vCUslesVsvuOcw=;
 b=cEUAJm3J2a6MVqYh1NlQrp6Hcf6E65NMhyn9WEMyv/XWNZXIzslRxqLRgwEARRSGne2RAr9XkcKlGpIF8ZaGUfYCI/8/Q/9pRZchSVEMzaJC+J6AkWpoi0xRawJ/daP68O40DBJH+fnjU2OctJpMcx5iO9gWNXKwhS2KRtj2PxS76saCEhsL2GRn0ijsYWmWT14S+A+FF2sk3fmkXdn3bgHCn2rKnnXoRfE8KScYlj0clpcCjCxXB/gd7yny0UgHpvVQ6XflB6ezHBVL3/RclyUcMs+akzKJuKeHJa3QNMRmpupi4YU3FHx8Sxgy0UWEt6jJqLPxXlm6E2c7B8a7XA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by MN2PR11MB4648.namprd11.prod.outlook.com
 (2603:10b6:208:26f::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.13; Wed, 24 Jun
 2026 12:44:52 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0159.015; Wed, 24 Jun 2026
 12:44:52 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 21/28] drm/i915/dp_link_caps: Add helpers to get max
 link limits
Thread-Topic: [PATCH v2 21/28] drm/i915/dp_link_caps: Add helpers to get max
 link limits
Thread-Index: AQHc/c17Ff/Wa8Gui0OBpdnbIZdNlLZNstDA
Date: Wed, 24 Jun 2026 12:44:52 +0000
Message-ID: <DS4PPF69154114F95C353C102CAF97ED49DEFED2@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
 <20260616200849.3534628-22-imre.deak@intel.com>
In-Reply-To: <20260616200849.3534628-22-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|MN2PR11MB4648:EE_
x-ms-office365-filtering-correlation-id: 5e3a6d7e-0540-4913-658f-08ded1ee62c8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|1800799024|366016|376014|38070700021|18002099003|22082099003|6133799003|56012099006|3023799007|11063799006|4143699003;
x-microsoft-antispam-message-info: /hB5P051gRJoBPZyYtAMssP2gk2ZyTLn47VPDm3sA/klMlHY9LVVvPUQ1afp7H3XLGJhm/vquQU9xqV93Zcr0YPtopAGXUXQD0DoFipUqsn6sQFZQ9CdRT8qgviUxxELSX5ar8XDg8nW7nX6613KW8rgjOz+rADF7Vxzwt/lYVRhe1goA+Unlb3WpwAqZyBP/YT7KA4a0unD9X0CLEYt/FgOZBbz4ogpp9xwHYoS/deD7wIx3ov2EAtUPYkiwltGTI+DVgucrOLvlAa00XU2Jwz1oup9zvn1pwjrbfCOm6qrEcP0CaIJ5sB8LLuZnyjB12QM6jqKfe1TZQaunK4jpDka9R7SWXT3luBksf2Iw4eePWSB9bOhYN6RXGQGwN90GlXNcE+VLCuUk4OPhIMmFgiTIuNbcjvc66UNZNU8JVM3t9mKMbhC/mbYHyl1kk5dChzYivJUBJvL/EoiUTf+EjcPQJvxfB6nyguOMh9gENQ2qwnYqFtwcYiyYAa+N69XTrc4kaqUh0VDkgDHfmWO/6F0uWQp7EJNQ4/u/0d7v3FnCqtdu4PzO9/0UF3wluImTwGeWjBR6DiN+b3qBNipnoUZJe0dOtbjr891/qoy4fJWwPEzp5TgvbZt6JcybpVrPuAMX0chtPY768k7x+R+devhb6B84jLW3d6YWK1IfoTqCe/rN9khylNRPXhonOOWqyf7xFB18yG1ca9/3ViM31OsFrWbLgWiBdfgnwObNg8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(1800799024)(366016)(376014)(38070700021)(18002099003)(22082099003)(6133799003)(56012099006)(3023799007)(11063799006)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UE8vd1lrODVOOFlicnhmeHBkMmJDMXpWK01hWk1BTmRxWXVMdFRucll6NDVL?=
 =?utf-8?B?dWNEM0NzN3VnSlZMYXNRMDYzNSthZ2RyNHpaRWR5b2xvL0NQdnNPeFhIY0dS?=
 =?utf-8?B?Sk4wS2dxdjlPdzJHR1YrWmt4b3V1SnB3cWxHL0J0QU12OFZ0YXgxVEQwRWp4?=
 =?utf-8?B?azRCSnFCZU9GejFKNXdTRHpZWHFadytPclBEZjJPVXRLaFBzMlNxejJBbjZY?=
 =?utf-8?B?eG0weGRadnEvT3V4THB5dXlUT1Y4QWNpenVtZUYvSnM3R1BNR09yOGhJMVBF?=
 =?utf-8?B?VXY0SUNybGRDZlhVcmpVbFlId0JIQjJCN1J3SnZTam1XSmhueFQ1ZW5rUWFX?=
 =?utf-8?B?Qzg3dWdFK25WM2hyZlpOK0dNOHc5ZEN3dEdkV0k2a1hrSjZsQjk0UGJNODdE?=
 =?utf-8?B?bkJFdHErMVkwU0FSU0NkUDF5a2tTaXpOczdGR1hxKzBIeWdPTGVjdjZYaDlH?=
 =?utf-8?B?N3dBVWUyVE1hK0gzYWQzTW51ZlRjc2x6YTlJbEpUOHd2WHB2YlNjUmkrQldO?=
 =?utf-8?B?blErSFgwWVc0QjFZd3RWY3JlU29OakdTUlc1NU5XbzZpY0NXNnRmb1E3UWVy?=
 =?utf-8?B?U0wyMHdEN0dPSU1TNERldDlic0ErTm45Yk5OZTgrd0J5M3RybG03Nng4eEM1?=
 =?utf-8?B?ajBMZDQ1bWNPejlpd0pFN3ZpckZUd25GTHF5UFV2QUtDZTdhdllmV00zeko1?=
 =?utf-8?B?WkI0MDdTOUZrc04weHdxT0R3T2JFWTBrY3E1bDdnS3ppTElyc2Jkd1BVVDVi?=
 =?utf-8?B?dXFwUUg2Wlg5QkQ0L2M0NVBTU0t0VUhZMDdPWUJVUXp5aXNoU2RGbTAzNjlN?=
 =?utf-8?B?ODFrQytnSUt3R0xOUFZCWHllUGJGb2kycjBDV3FBdnVSdGFtQW90TGVtM1Nx?=
 =?utf-8?B?T2J4NmsycHRYRmRYTHRZWkZiK0kya05DQU9HZDBIVzI1WmRZUEVqQTBYTlpE?=
 =?utf-8?B?MFRCNklQeHRqbEpWbEx6R2JRdElQSFRrK1pRTG9aV3RSckpVcitOUnl4VlBQ?=
 =?utf-8?B?UmtDUHB2QUhneEZQQ2R1Qk1KNTlXSXdKa3h0eHJjOWxHTDBGajNOWlhzOUpW?=
 =?utf-8?B?WTMxd1l3cGpJZXJ6WjhGNHdxZFQ0V3k1UUtBeDJIK3lwSjZvZHFXK0VucTNX?=
 =?utf-8?B?OTB0RFpCaElFdEFHcWluMW9kWE84Q1g5dTlXUEFGTnZtNEFZS2Y2UDBoUlBi?=
 =?utf-8?B?RkY2VWlqTGlyWXFNdkNoSFRXUzNVU0U5Y1VyUGZud3BZR3N3Zi9uOGVjaHpF?=
 =?utf-8?B?S293cGJPYlJPQTJjWnJLbDFxQnUwbS9sR2l1T3NvYm1sTUNIdkExSnJ2TnVX?=
 =?utf-8?B?SUlPWUNOaDN3NEZ0Ri82dXV6dzdkNWh4R2dXT0c1aDU1MnpxdmRYUkdFdmUz?=
 =?utf-8?B?aGN1VEJQUnRSWm9MbGFENjRIU2ZzMk5OWTFVRnhQdGpqVlE2dGtSekhCdWVw?=
 =?utf-8?B?NDZxbnUrSlNac2RtSVMrQWE4RWZoRWpoZGppTjVFYXUzQjZWdUxFZTg3bGVo?=
 =?utf-8?B?c1JtaFRTdXZQUy9pNExzMXY1MFFseHVWSmhWVWVzZER5SWtSNEtIZ0c0ZENr?=
 =?utf-8?B?RFB0bktzc1QyT1J5QWVhcWZIVEhLbC9CMGJjOTVleTBSWS8xdmpTNjA3NVVY?=
 =?utf-8?B?UlRCSWNPSVlFdHBQZTZRb3hTQTdjL040R0RuVmpFKzBGQkI2Z0h6SzQrTEg2?=
 =?utf-8?B?dHltcnBTRnhuank1M0l4SDJIRkVnNmdzSmV5aE1yZGFlT1ZLMFh1QW1uWnJq?=
 =?utf-8?B?cnQ4SjllNlNDZnB6QzI1MndubEdlRXJWOW9VM0pqajFaNnRPcWlkMm82U0NM?=
 =?utf-8?B?eW95eTZabVJrZ29HcnZNK1dmcVhEelRzcnJ4SGU4bVNRcWFNemoyb0xSUnVj?=
 =?utf-8?B?Wk85VWlDTXlKTUdRZm9HSC8vb0k0K3c1TVBocnA3WmRtbFEySm1VYVZ5eEtJ?=
 =?utf-8?B?eW1pY0k3aWRzSkJHWnJhQU1XSFRMNklnQktjV2FmMkdrbVlkUTkwM25oN1Fi?=
 =?utf-8?B?UmxPY3BwTElmdVRqQmNJRy9yZ2dHcjdXV1hONEtGZFdyZDJZbFZ1OUw1eklx?=
 =?utf-8?B?Q1FrK29vdVVKRk9jaWxRWDF3b1doeE1Pb2g4a2pBVnV0eTZnNTArS1BST2tB?=
 =?utf-8?B?WFV1bytSNzJIK0gvZUtFclp4MzFnSlRUcnplTUdmem9WenNURGtCT0RvTXEx?=
 =?utf-8?B?YVRoSXB1RGhQSlF4WUwrOWF3MGg0ZklVSWRZMDE0YjBGcnV0UGxnWUtWYUlP?=
 =?utf-8?B?eU01ektleU9JSk56UjNraCtUQ1pEbU9GTG5HMFlkMHZHczBHK3Q1TE9ETHBF?=
 =?utf-8?B?NkZvVUJhTnFSNDA2dzJYWHlkR1ZOS1NwMnBDaVpJcm5HUVVRN3VDUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: CKJX8VQwyszIqcdsvdlWChhvCbjXWUa0wALKe5eexWbNoR7D5JEStlKQb8rGErdZqcKlBCp9AmLXsHAmbLPp/3vnXLEVgUlLamOzyBm41SigMls5tOvcRxb7ljGGgRHS78bpRHUBvR5q0KIEQ4Lg1K41r4k7c4Sf+So//DkQn/4vaXi8Yzyde5seaX6mEzq6Cj/spXiZzK7Mv96TXASklMz4MBlP5aaebUUuW87Jff5+HvV2J93HKop2Zg0Hdz9dYB0LvLDpmvv87PIUnvEbLvExCvCfqDij0LNB6B9kk/17toGV/340zDnaUBji/eQEKTBDrpCqyPA4gky/k+66ug==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e3a6d7e-0540-4913-658f-08ded1ee62c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2026 12:44:52.2217 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qHVbnSY8Vk9zSHYW6C3u807rIMPzajznv3Ob6GBb4HK5dHiY2bpdljiIoSpJfXmM3+eAm5f3ODyqUf8kzESiAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4648
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DS4PPF69154114F.namprd11.prod.outlook.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7ED106BE3C9

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUgRGVhaw0K
PiBTZW50OiBUdWVzZGF5LCAxNiBKdW5lIDIwMjYgMjMuMDkNCj4gVG86IGludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJq
ZWN0OiBbUEFUQ0ggdjIgMjEvMjhdIGRybS9pOTE1L2RwX2xpbmtfY2FwczogQWRkIGhlbHBlcnMg
dG8gZ2V0IG1heCBsaW5rIGxpbWl0cw0KPiANCj4gQWRkIGludGVsX2RwX2xpbmtfY2Fwc19nZXRf
bWF4X2xpbWl0cygpIHRvIHF1ZXJ5IHRoZSBjdXJyZW50IG1heGltdW0NCj4gbGluayBsaW1pdHMg
KG1heCBib3VuZCBvdmVyIGFsbCBhbGxvd2VkIGNvbmZpZ3VyYXRpb25zKSB0aHJvdWdoIHRoZQ0K
PiBsaW5rIGNhcHMgQVBJIGluc3RlYWQgb2YgZGlyZWN0IGFjY2Vzc2VzLg0KPiANCj4gVGhpcyBh
bGxvd3MgdHJhY2tpbmcgdGhlIHN0YXRlIGludGVybmFsbHkgd2l0aGluIHRoZSBsaW5rIGNhcHMg
bW9kdWxlLg0KPiANCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRl
bC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29t
Pg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgICAg
ICB8ICA4ICsrKy0NCj4gIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX2Nh
cHMuYyB8IDM4ICsrKysrKysrKysrKysrKysrKy0NCj4gIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcF9saW5rX2NhcHMuaCB8ICAzICsrDQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcF9saW5rX3RyYWluaW5nLmMgfCAgOCArKystDQo+ICA0IGZpbGVzIGNoYW5nZWQsIDUx
IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jDQo+IGluZGV4IDBkN2VjN2E4ODk4YzkuLjNiM2MzMTEyMjQ1MmQg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gQEAgLTM1
NywxNSArMzU3LDE3IEBAIHN0YXRpYyBpbnQgaW50ZWxfZHBfZ2V0X21heF9jb21tb25fbGFuZV9j
b3VudChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgaW50IGludGVsX2RwX21heF9sYW5l
X2NvdW50KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICB7DQo+ICAJc3RydWN0IGludGVs
X2RwX2xpbmtfY2FwcyAqbGlua19jYXBzID0gaW50ZWxfZHAtPmxpbmsuY2FwczsNCj4gKwlzdHJ1
Y3QgaW50ZWxfZHBfbGlua19jb25maWcgbWF4X2xpbmtfbGltaXRzOw0KPiAgCXN0cnVjdCBpbnRl
bF9kcF9saW5rX2NvbmZpZyBmb3JjZWRfcGFyYW1zOw0KPiAgCWludCBsYW5lX2NvdW50Ow0KPiAN
Cj4gKwlpbnRlbF9kcF9saW5rX2NhcHNfZ2V0X21heF9saW1pdHMobGlua19jYXBzLCAmbWF4X2xp
bmtfbGltaXRzKTsNCj4gIAlpbnRlbF9kcF9saW5rX2NhcHNfZ2V0X2ZvcmNlZF9wYXJhbXMobGlu
a19jYXBzLCAmZm9yY2VkX3BhcmFtcyk7DQo+IA0KPiAgCWlmIChmb3JjZWRfcGFyYW1zLmxhbmVf
Y291bnQpDQo+ICAJCWxhbmVfY291bnQgPSBmb3JjZWRfcGFyYW1zLmxhbmVfY291bnQ7DQo+ICAJ
ZWxzZQ0KPiAtCQlsYW5lX2NvdW50ID0gaW50ZWxfZHAtPmxpbmsubWF4X2xhbmVfY291bnQ7DQo+
ICsJCWxhbmVfY291bnQgPSBtYXhfbGlua19saW1pdHMubGFuZV9jb3VudDsNCj4gDQo+ICAJc3dp
dGNoIChsYW5lX2NvdW50KSB7DQo+ICAJY2FzZSAxOg0KPiBAQCAtMTUzOSw2ICsxNTQxLDcgQEAg
aW50DQo+ICBpbnRlbF9kcF9tYXhfbGlua19yYXRlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAp
DQo+ICB7DQo+ICAJc3RydWN0IGludGVsX2RwX2xpbmtfY2FwcyAqbGlua19jYXBzID0gaW50ZWxf
ZHAtPmxpbmsuY2FwczsNCj4gKwlzdHJ1Y3QgaW50ZWxfZHBfbGlua19jb25maWcgbWF4X2xpbmtf
bGltaXRzOw0KPiAgCXN0cnVjdCBpbnRlbF9kcF9saW5rX2NvbmZpZyBmb3JjZWRfcGFyYW1zOw0K
PiAgCWludCBsZW47DQo+IA0KPiBAQCAtMTU0Nyw3ICsxNTUwLDggQEAgaW50ZWxfZHBfbWF4X2xp
bmtfcmF0ZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgCWlmIChmb3JjZWRfcGFyYW1z
LnJhdGUpDQo+ICAJCXJldHVybiBmb3JjZWRfcGFyYW1zLnJhdGU7DQo+IA0KPiAtCWxlbiA9IGlu
dGVsX2RwX2NvbW1vbl9sZW5fcmF0ZV9saW1pdChpbnRlbF9kcCwgaW50ZWxfZHAtPmxpbmsubWF4
X3JhdGUpOw0KPiArCWludGVsX2RwX2xpbmtfY2Fwc19nZXRfbWF4X2xpbWl0cyhsaW5rX2NhcHMs
ICZtYXhfbGlua19saW1pdHMpOw0KPiArCWxlbiA9IGludGVsX2RwX2NvbW1vbl9sZW5fcmF0ZV9s
aW1pdChpbnRlbF9kcCwgbWF4X2xpbmtfbGltaXRzLnJhdGUpOw0KPiANCj4gIAlyZXR1cm4gaW50
ZWxfZHBfY29tbW9uX3JhdGUoaW50ZWxfZHAsIGxlbiAtIDEpOw0KPiAgfQ0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX2NhcHMuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmMNCj4gaW5kZXgg
YjIyN2M5YTU1ZjYzYi4uZmE3ZGFiYzk0ZGRmMSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX2NhcHMuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfY2Fwcy5jDQo+IEBAIC0xNTEsNiArMTUx
LDM2IEBAIHN0YXRpYyBpbnQgaW50ZWxfZHBfbGlua19jb25maWdfbGFuZV9jb3VudChjb25zdCBz
dHJ1Y3QgaW50ZWxfZHBfbGlua19jb25maWdfZW50DQo+ICAJcmV0dXJuIDEgPDwgbGMtPmxhbmVf
Y291bnRfZXhwOw0KPiAgfQ0KPiANCj4gKy8qKg0KPiArICogaW50ZWxfZHBfbGlua19jYXBzX2dl
dF9tYXhfbGltaXRzIC0gZ2V0IHRoZSBjdXJyZW50IG1heGltdW0gbGluayBsaW1pdHMNCj4gKyAq
IEBsaW5rX2NhcHM6IGxpbmsgY2FwYWJpbGl0aWVzIHN0YXRlDQo+ICsgKiBAbWF4X2xpbmtfbGlt
aXRzOiByZXR1cm5lZCBtYXhpbXVtIGxpbmsgbGltaXRzDQo+ICsgKg0KPiArICogUmV0dXJuIHRo
ZSBjdXJyZW50IG1heGltdW0gcmF0ZSBhbmQgbGFuZSBjb3VudCBsaW1pdHMgaW4NCj4gKyAqIEBt
YXhfbGlua19saW1pdHMuDQo+ICsgKg0KPiArICogVGhlc2UgbGltaXRzIGNvbnN0cmFpbiB0aGUg
c2V0IG9mIGFsbG93ZWQgY29uZmlndXJhdGlvbnMuDQo+ICsgKg0KPiArICogVGhlIGxpbWl0cyBh
cmUgc2V0IHRvIHRoZSBtYXhpbXVtIGNvbW1vbiBzdXBwb3J0ZWQgdmFsdWVzIGFmdGVyDQo+ICsg
KiBpbnRlbF9kcF9saW5rX2NhcHNfcmVzZXQoKSBpcyBjYWxsZWQsIGFuZCBjYW4gbGF0ZXIgYmUg
bW9kaWZpZWQgYnkNCj4gKyAqIGludGVsX2RwX2xpbmtfY2Fwc19zZXRfbWF4X2xpbWl0cygpLiBU
aGUgbWF4IHJhdGUgYW5kIGxhbmUgY291bnQNCj4gKyAqIHBhcmFtZXRlcnMgYXJlIGluZGVwZW5k
ZW50IGxpbWl0cywgc28gdGhlIHBhaXIgZG9lcyBub3QgbmVjZXNzYXJpbHkNCj4gKyAqIGRlZmlu
ZSBhIHZhbGlkIGNvbmZpZ3VyYXRpb24uDQo+ICsgKg0KPiArICogVGhpcyBmdW5jdGlvbiBtYXkg
YmUgY2FsbGVkIHdpdGhvdXQgc2VyaWFsaXppbmcgYWdhaW5zdCB1cGRhdGVzIHRvDQo+ICsgKiBA
bGlua19jYXBzLiBIb3dldmVyLCB3aXRob3V0IHN1Y2ggc2VyaWFsaXphdGlvbiB0aGUgcmV0dXJu
ZWQgdmFsdWUgbWF5IGJlDQo+ICsgKiBhbiBvdXQtb2Ytc3luYyAobGluayByYXRlLCBsYW5lIGNv
dW50KSB0dXBsZSwgaS5lLiB0aGUgcGFyYW1ldGVycyBtYXkNCj4gKyAqIGJlbG9uZyB0byBkaWZm
ZXJlbnQgdXBkYXRlIHNuYXBzaG90cyBpbiB0aW1lLg0KPiArICovDQo+ICt2b2lkIGludGVsX2Rw
X2xpbmtfY2Fwc19nZXRfbWF4X2xpbWl0cyhzdHJ1Y3QgaW50ZWxfZHBfbGlua19jYXBzICpsaW5r
X2NhcHMsDQo+ICsJCQkJICAgICAgIHN0cnVjdCBpbnRlbF9kcF9saW5rX2NvbmZpZyAqbWF4X2xp
bmtfbGltaXRzKQ0KPiArew0KPiArCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBsaW5rX2Nh
cHMtPmRwOw0KPiArDQo+ICsJbWF4X2xpbmtfbGltaXRzLT5yYXRlID0gaW50ZWxfZHAtPmxpbmsu
bWF4X3JhdGU7DQo+ICsJbWF4X2xpbmtfbGltaXRzLT5sYW5lX2NvdW50ID0gaW50ZWxfZHAtPmxp
bmsubWF4X2xhbmVfY291bnQ7DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyBpbnQgaW50ZWxfZHBfbGlu
a19jb25maWdfYncoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAkJCQkgICBjb25zdCBz
dHJ1Y3QgaW50ZWxfZHBfbGlua19jb25maWdfZW50cnkgKmxjKQ0KPiAgew0KPiBAQCAtNDgyLDYg
KzUxMiw3IEBAIHN0YXRpYyBpbnQgaTkxNV9kcF9tYXhfbGlua19yYXRlX3Nob3codm9pZCAqZGF0
YSwgdTY0ICp2YWwpDQo+ICAJc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yID0gdG9f
aW50ZWxfY29ubmVjdG9yKGRhdGEpOw0KPiAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5
ID0gdG9faW50ZWxfZGlzcGxheShjb25uZWN0b3IpOw0KPiAgCXN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHAgPSBpbnRlbF9hdHRhY2hlZF9kcChjb25uZWN0b3IpOw0KPiArCXN0cnVjdCBpbnRlbF9k
cF9saW5rX2NvbmZpZyBtYXhfbGlua19saW1pdHM7DQo+ICAJaW50IGVycjsNCj4gDQo+ICAJZXJy
ID0gZHJtX21vZGVzZXRfbG9ja19zaW5nbGVfaW50ZXJydXB0aWJsZSgmZGlzcGxheS0+ZHJtLT5t
b2RlX2NvbmZpZy5jb25uZWN0aW9uX211dGV4KTsNCj4gQEAgLTQ5MCw3ICs1MjEsOCBAQCBzdGF0
aWMgaW50IGk5MTVfZHBfbWF4X2xpbmtfcmF0ZV9zaG93KHZvaWQgKmRhdGEsIHU2NCAqdmFsKQ0K
PiANCj4gIAlpbnRlbF9kcF9mbHVzaF9jb25uZWN0b3JfY29tbWl0cyhjb25uZWN0b3IpOw0KPiAN
Cj4gLQkqdmFsID0gaW50ZWxfZHAtPmxpbmsubWF4X3JhdGU7DQo+ICsJaW50ZWxfZHBfbGlua19j
YXBzX2dldF9tYXhfbGltaXRzKGludGVsX2RwLT5saW5rLmNhcHMsICZtYXhfbGlua19saW1pdHMp
Ow0KPiArCSp2YWwgPSBtYXhfbGlua19saW1pdHMucmF0ZTsNCj4gDQo+ICAJZHJtX21vZGVzZXRf
dW5sb2NrKCZkaXNwbGF5LT5kcm0tPm1vZGVfY29uZmlnLmNvbm5lY3Rpb25fbXV0ZXgpOw0KPiAN
Cj4gQEAgLTUwMyw2ICs1MzUsNyBAQCBzdGF0aWMgaW50IGk5MTVfZHBfbWF4X2xhbmVfY291bnRf
c2hvdyh2b2lkICpkYXRhLCB1NjQgKnZhbCkNCj4gIAlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpj
b25uZWN0b3IgPSB0b19pbnRlbF9jb25uZWN0b3IoZGF0YSk7DQo+ICAJc3RydWN0IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGNvbm5lY3Rvcik7DQo+ICAJc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCA9IGludGVsX2F0dGFjaGVkX2RwKGNvbm5lY3Rvcik7DQo+ICsJ
c3RydWN0IGludGVsX2RwX2xpbmtfY29uZmlnIG1heF9saW5rX2xpbWl0czsNCj4gIAlpbnQgZXJy
Ow0KPiANCj4gIAllcnIgPSBkcm1fbW9kZXNldF9sb2NrX3NpbmdsZV9pbnRlcnJ1cHRpYmxlKCZk
aXNwbGF5LT5kcm0tPm1vZGVfY29uZmlnLmNvbm5lY3Rpb25fbXV0ZXgpOw0KPiBAQCAtNTExLDcg
KzU0NCw4IEBAIHN0YXRpYyBpbnQgaTkxNV9kcF9tYXhfbGFuZV9jb3VudF9zaG93KHZvaWQgKmRh
dGEsIHU2NCAqdmFsKQ0KPiANCj4gIAlpbnRlbF9kcF9mbHVzaF9jb25uZWN0b3JfY29tbWl0cyhj
b25uZWN0b3IpOw0KPiANCj4gLQkqdmFsID0gaW50ZWxfZHAtPmxpbmsubWF4X2xhbmVfY291bnQ7
DQo+ICsJaW50ZWxfZHBfbGlua19jYXBzX2dldF9tYXhfbGltaXRzKGludGVsX2RwLT5saW5rLmNh
cHMsICZtYXhfbGlua19saW1pdHMpOw0KPiArCSp2YWwgPSBtYXhfbGlua19saW1pdHMubGFuZV9j
b3VudDsNCj4gDQo+ICAJZHJtX21vZGVzZXRfdW5sb2NrKCZkaXNwbGF5LT5kcm0tPm1vZGVfY29u
ZmlnLmNvbm5lY3Rpb25fbXV0ZXgpOw0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfY2Fwcy5oDQo+IGluZGV4IDkyMThjYjVkZTJjNzEuLjM3
NmRiZDliZDVhYmEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBfbGlua19jYXBzLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcF9saW5rX2NhcHMuaA0KPiBAQCAtMjcsNiArMjcsOSBAQCB2b2lkIGludGVsX2Rw
X2xpbmtfY2Fwc19nZXRfZm9yY2VkX3BhcmFtcyhzdHJ1Y3QgaW50ZWxfZHBfbGlua19jYXBzICps
aW5rX2NhcHMsDQo+ICBpbnQgaW50ZWxfZHBfbGlua19jb25maWdfaW5kZXgoc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCwgaW50IGxpbmtfcmF0ZSwgaW50IGxhbmVfY291bnQpOw0KPiAgdm9pZCBp
bnRlbF9kcF9saW5rX2NvbmZpZ19nZXQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgaW50IGlk
eCwgaW50ICpsaW5rX3JhdGUsIGludCAqbGFuZV9jb3VudCk7DQo+IA0KPiArdm9pZCBpbnRlbF9k
cF9saW5rX2NhcHNfZ2V0X21heF9saW1pdHMoc3RydWN0IGludGVsX2RwX2xpbmtfY2FwcyAqbGlu
a19jYXBzLA0KPiArCQkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfZHBfbGlua19jb25maWcgKm1heF9s
aW5rX2xpbWl0cyk7DQo+ICsNCj4gIGJvb2wgaW50ZWxfZHBfbGlua19jYXBzX3VwZGF0ZShzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiAgCQkJICAgICAgIGNvbnN0IGludCAqcmF0ZXMsIGlu
dCBudW1fcmF0ZXMsIGludCBtYXhfbGFuZV9jb3VudCk7DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiBpbmRl
eCBlYzliZDliNGM4MDBiLi43MTQ1ZjJkMGFkNmQzIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiBAQCAt
MjM4OSw2ICsyMzg5LDggQEAgdm9pZCBpbnRlbF9kcF8xMjhiMTMyYl9zZHBfY3JjMTYoc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCwNCj4gIGJvb2wgaW50ZWxfZHBfbGlua19wYXJhbXNfdmFsaWQo
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgaW50IGxpbmtfcmF0ZSwNCj4gIAkJCQl1OCBsYW5l
X2NvdW50KQ0KPiAgew0KPiArCXN0cnVjdCBpbnRlbF9kcF9saW5rX2NvbmZpZyBtYXhfbGlua19s
aW1pdHM7DQo+ICsNCj4gIAkvKg0KPiAgCSAqIEZJWE1FOiB3ZSBuZWVkIHRvIHN5bmNocm9uaXpl
IHRoZSBjdXJyZW50IGxpbmsgcGFyYW1ldGVycyB3aXRoDQo+ICAJICogaGFyZHdhcmUgcmVhZG91
dC4gQ3VycmVudGx5IGZhc3QgbGluayB0cmFpbmluZyBkb2Vzbid0IHdvcmsgb24NCj4gQEAgLTI0
MTEsMTIgKzI0MTMsMTQgQEAgYm9vbCBpbnRlbF9kcF9saW5rX3BhcmFtc192YWxpZChzdHJ1Y3Qg
aW50ZWxfZHAgKmludGVsX2RwLCBpbnQgbGlua19yYXRlLA0KPiAgCSAqIGNvbmZpZ3VyYXRpb24u
IEFsdGhvdWdoIHRoYXQgaGFwcGVucyB0byBiZSB0cnVlIGZvciBub3csIGl0IHdpbGwNCj4gIAkg
KiBzdG9wIGJlaW5nIGd1YXJhbnRlZWQgb25jZSBmYWxsYmFjayBkZXBlbmRzIG9ubHkgb24gZGlz
YWJsZWQgY29uZmlncy4NCj4gIAkgKi8NCj4gKwlpbnRlbF9kcF9saW5rX2NhcHNfZ2V0X21heF9s
aW1pdHMoaW50ZWxfZHAtPmxpbmsuY2FwcywgJm1heF9saW5rX2xpbWl0cyk7DQo+ICsNCj4gIAlp
ZiAobGlua19yYXRlID09IDAgfHwNCj4gLQkgICAgbGlua19yYXRlID4gaW50ZWxfZHAtPmxpbmsu
bWF4X3JhdGUpDQo+ICsJICAgIGxpbmtfcmF0ZSA+IG1heF9saW5rX2xpbWl0cy5yYXRlKQ0KPiAg
CQlyZXR1cm4gZmFsc2U7DQo+IA0KPiAgCWlmIChsYW5lX2NvdW50ID09IDAgfHwNCj4gLQkgICAg
bGFuZV9jb3VudCA+IGludGVsX2RwX21heF9sYW5lX2NvdW50KGludGVsX2RwKSkNCj4gKwkgICAg
bGFuZV9jb3VudCA+IG1heF9saW5rX2xpbWl0cy5sYW5lX2NvdW50KQ0KPiAgCQlyZXR1cm4gZmFs
c2U7DQo+IA0KPiAgCXJldHVybiB0cnVlOw0KPiAtLQ0KPiAyLjQ5LjENCg0K
