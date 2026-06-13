Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UKPXLUtoLWrZfwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jun 2026 16:25:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3009567EC4E
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jun 2026 16:25:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="NTaCa/nt";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2367C10EDDE;
	Sat, 13 Jun 2026 14:25:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73A5110EDDD;
 Sat, 13 Jun 2026 14:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781360711; x=1812896711;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8UFDxglqrOeYzleA7IyElCvvPwmzrby6+vxNkVTKufE=;
 b=NTaCa/ntdAP5D9koF3k9ieYNdwmkoOBypDfZ1FHVGabzt3E9WuOmkIgl
 gZZjnbL8hMy/glWlpmqv6aQbsmO7XPlsOeJvwgzc577b8WlMbvYHA7dX5
 zHDF3+XY+jdLGw3O+Xx3wq2fPXsi0z37ztBHJgszEXT5YMTiooPNs/R08
 N7fGdT7in5lSrzp2XBfP3C/tay/N5EGROoy0j8G2/NHKH7YLk1R8bsY7l
 5HmkQt2mxtoamPZg+MamWgcsizYrOaFscy/rcfYR21Kk4MFJU9Q4cYrwR
 3bv4DAiqlA39vfNDIxsAQ1rbFr9yOPFcZmU/K4r3EdkktMCcyc6ahuyVu Q==;
X-CSE-ConnectionGUID: LSkBSKO4Q6maJ01MQNauzA==
X-CSE-MsgGUID: w5u7RKeBR+aN9uzKSIJEQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11816"; a="86067873"
X-IronPort-AV: E=Sophos;i="6.24,202,1774335600"; d="scan'208";a="86067873"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2026 07:25:11 -0700
X-CSE-ConnectionGUID: TD7Vxo+KS96pG3xUM7lDJQ==
X-CSE-MsgGUID: AzrABwvBR7mvAuVkXQ+0mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,202,1774335600"; d="scan'208";a="246941698"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2026 07:25:11 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sat, 13 Jun 2026 07:25:10 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sat, 13 Jun 2026 07:25:10 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.56)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sat, 13 Jun 2026 07:25:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XeGS6c2zkJ4hMGy3i0MjZO6hE5AOUlG9eDco+9Apw8wr2CrOFAWCDftRvejWERupb2LFscuk8qooHMAqx04VnAUPqzJjTw3J45UeLQjlBcCfQ51HovYzdyhdqTot69f/9oAmr0+oE/MmUR4dLRsJC5RUK3TH8OMEH2Cl+j0x+7oas3jvWfm6TkI4EgoobDG/JFDZkUXlWD9+AA7Qxp9UnJIzF1oZGgUy+/4JNRi7k63I3YvgCN9FoVT0D1DDE/kr6dsbxb7SZCK6gimO1uj7B3HfAbx5vIjj2LkbLzkJU9wUEXiXneLWzIVV3f2GaSdvEuhFqbT0f7UAfRyYsCmlaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8UFDxglqrOeYzleA7IyElCvvPwmzrby6+vxNkVTKufE=;
 b=Xa2I5TwZSEbSWqQPMFpAGAVNawjZLg4+AEX60W/DRHXA5r7aJymnihh+srB45Hc2u5oe+hk9s/an1F5sBNmANikcBa/frFBF5/+EF7536xSt2+DeUeN8KrJ5OF/7+n5yYFW4ig8QIPC5G1JHqVQnVigxLqwaoTPuMavxgzj2vHf6DBWbIDUUJ57ELCzLXnM4lHWr4TZAw3xhhQciEu5KLxRMk36AquRP4H4oaN+WATNpDs5TdK/Y0sXVTjnT8Ryw2v10eu28YC+iAUeSUx39YPNTsuhLMlLf81am5wWZw6KeTXj9khj7AjY+hL/DeO7cIrrYILDEaG5tOg4YFmQbcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by PH8PR11MB9699.namprd11.prod.outlook.com
 (2603:10b6:510:3a3::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Sat, 13 Jun
 2026 14:25:03 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0113.013; Sat, 13 Jun 2026
 14:25:03 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Subject: RE: [PATCH 3/4] drm/i915/panel: Adjust intel_panel_compute_config()
 calling convention
Thread-Topic: [PATCH 3/4] drm/i915/panel: Adjust intel_panel_compute_config()
 calling convention
Thread-Index: AQHc+nm4YDozooVqOUeXEvw0vSo42LY8i8Og
Date: Sat, 13 Jun 2026 14:25:03 +0000
Message-ID: <DS4PPFE901A304FDDCD53F8E9364D36896FE3192@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260612144203.31715-1-ville.syrjala@linux.intel.com>
 <20260612144203.31715-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20260612144203.31715-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|PH8PR11MB9699:EE_
x-ms-office365-filtering-correlation-id: 14ce7028-4708-4914-358b-08dec9578f58
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|23010399003|18002099003|22082099003|38070700021|4143699003|11063799006|56012099006|3023799007;
x-microsoft-antispam-message-info: F0D7mwzRjLAnGDmViK31ODJ9iDj+3+aJIOCRr6Bv2FwrG9oVs4xYfAsI3L3aNzJYLMviSoImX5zoYqDyz6zGOnRnPaZkeA+mZ1J579SWhtQmM7Bg/P7xS/eNEWXzeEk1GZN96/g0dH9StTJquPSUU6IXrdxr98ITq8aGIylCBdsQ2WCAuvQ7B9BRHgy2f1xyG4X1r+T6HHLOespqItZVt0jwT45ntYddtbHvSg3kXnk3n4IMoA08IqXZBBklcElD0JmoIU+Xk7eKXkHE3O4oKTttbGYMQBefkSA1ITI0I1nRic1oMJ9xnq9yUWfTUwCqxLUnTts3qFFc7sJ/hOdeNP5uv+UoyQ2M/er8Y2hwnaeJ4qQ8V8BEEidZ70jEDAAA7dYB4gt39zQ+GMv4Ef5cS8C3CR5LC+OSA8jEqKHaaBR1odZhX7n62qSvg95Kzt7L38hQz1wI8d/y11/SqqV5mWJ9mUW62bRPsoOcCqplV7t+jUkUHpv8UQC7bqLQqfCfuyFQfaCirSSiSRPCenrHbwou3U2UC5U6gK7wPPC+NC1nG6lhgNMHrAUAiBrg6DIeejP3MiAU0nP1NYnX/e9J6s8nhPUjh4UK6clkYiOvmtkrZKJs0wjquA5VmZs5q4SwRG1EDar3pJHsqnfXeUHpiIB6nKvNsyoTZOnfwGdpRpdjP8NIkdWKMWgqHeVi1WBoCf+DXD445f6EZAaFIO6gKEbKMBGZnjyAItV+PGNvBzDM57ExD+BjVi58jtKYFgM+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(23010399003)(18002099003)(22082099003)(38070700021)(4143699003)(11063799006)(56012099006)(3023799007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b2JpN01NWGFTTWZCVk5WVWRrSUE4d011R3FWY1lWREhIenczTjFhc3BBb2I3?=
 =?utf-8?B?SmQyS2Rma0w2SjdOYWpKYTV6RnpSL1ZDYkJETmY0dnkvNkNLV2VmTTVOeUp6?=
 =?utf-8?B?KzNIbG9HZWRWbzZOTXZBcXcyUkVhVzVqMGVoVnJmVEFWWDU0TGltcUNMN0VX?=
 =?utf-8?B?OGNqVGJWUm14dC9mT1R1ZStpQnVvU3dLZ1EwZ0l6TmN4S2FYTDRUU0t2c2M5?=
 =?utf-8?B?UG1jaUMzaUpJRGhoUDlFUnhzMGhjUjJrbHo1ZHNnM21jL3V5S0Q4djg1WmR2?=
 =?utf-8?B?U2xLaUJGeXBTUG9ESGhkRXpBOWFVQytHdmx4ME1uZTlxamM4MVJhTlpLV081?=
 =?utf-8?B?STBwZ0hBL2RUcm51ZnRjTUtuSHpDMTdaUmNPTklrSlpIRWpVQTA3aEJJK1J2?=
 =?utf-8?B?WkI5dGhHdURuNFp6bW9qUFdVRng1RWN1WVRQb3lGOHhVWkFEV3ExRko3WTlq?=
 =?utf-8?B?eTNkQ0RCKzVKMitmYng0Q3pvbzB1WkZsVXVlbjZraGozYWkxQzByQnRTNis2?=
 =?utf-8?B?eUZJK0RVa0gyRGxvUUlvU1ZNelUwSWNUUE5HYVFqaWsxMTF4RnU3ZkhSN2Fy?=
 =?utf-8?B?dE5ZNVp4NU1BWm5xcEt1ZG94VzRJNlNoc1E1YnowcjRBWTBybEMxMlN3YlFn?=
 =?utf-8?B?aVFiQ1JOUkx1NnY3RjJFTk9oUVUwWXhuSHE5bkhzVWdpTnNPVmY1cUlOZlhv?=
 =?utf-8?B?ZFo3T0ZpWHVWK2krajNhRU93TG8wUW5RRjNkTDA0UkRlOXFCYUl5akdpS3cx?=
 =?utf-8?B?bXpJM0lOSXQ5R1ZGa2E1ZEQwWE5tY3NyK0Frd3dZM2VmMU56dURkejRweURS?=
 =?utf-8?B?K29PbUpMQlJuUEg3dkZNRzl0OGxEelRndWJSM2pDMmNVbFR5RWh5U1dUZHdr?=
 =?utf-8?B?aWFXbHgzK2pvS3huaThzbEhrdHdNL2piOExueGNyRThTaTBJczlxdWpHcFRB?=
 =?utf-8?B?aFZ5ZnA5RFF1eldMZEp4NmJrcUNWOFQvUXVna2c0U1FTczNWNGpsTnFDL3Js?=
 =?utf-8?B?REh5eVJ0VEwwcVVKTEZaVndubmdXQUhLMVViUk5HMEg0Q3JRWEdZZUkxR0li?=
 =?utf-8?B?QTFoUzhFWHlhMXFRT0dDWXA3Ykt4UGNMcVNTb3YyMGpiRWdnR3E1M3VVaVl2?=
 =?utf-8?B?akxCV2UzMGNCRnFxK3Rjd0UzRmxIYlRTN1I3QXg0dmxBTm40VVZrckdxS2pq?=
 =?utf-8?B?dFRBUEVWRXRXaTBCYVFSTFpEOUI0Uzc3eG9BUmJXcDYxUXFtWHpJMEtzdG1W?=
 =?utf-8?B?ei9nNDg1NXhNNEFWa1VLSmM1K2VHUlU3QjNOZVdwMzdKSzJQekZqYzdzLzl1?=
 =?utf-8?B?aCtybnNZbGU1RVZmSXArdWlFeGE2dEIrQmN1L09VLzFRTEthNWE0dW5hajRG?=
 =?utf-8?B?eFZ3QWZpVk5QSWltVjROb2R1U041S1hrL0s2Z1pCWlZ5a1JJcklhanh0bHNI?=
 =?utf-8?B?NENHc2ZrenliZTQ3bkFlaXJCTVI2OGprdE9qRUpYTzh5SWhPcGlVbXh5WEJy?=
 =?utf-8?B?RGZjUTNSbkdLRFZmT1hEVGtWczA1TVFjVE53WUlhWWQrL0RESDMzTzdLR05O?=
 =?utf-8?B?ME16bHFSNVFoRHBod0liTVFjR2Q2R3pKUjNTT0dNaWt6MkRSRHFGVkgwdWtz?=
 =?utf-8?B?SXZJVXVFYnJPQkNaS09ZS3hNSUlaRlhoTlNEZllYTzFhTTNNWkRFVjNBZWdO?=
 =?utf-8?B?aHNGRUpXYXFhazJyb0FCdE5RTWJKQWdvWDFYaDdRSDlieDhMd1Jyc0hEaElh?=
 =?utf-8?B?VjUzZ0FWVmxUeGhMVW5Ma0RDTDkvYnJXNVhvSGF6NWZKODB2MXBBOW85Uy9E?=
 =?utf-8?B?QVJPMGxERkNjbTRyMUM5d3V3MW5jZWtxa1FaWGtnZnkwbDRYREhmR0JPcjV3?=
 =?utf-8?B?MERVVU53Y3dCdzN5RTZuYXEreUh4SVJOa3g2M2NCTkN1RzlSZmJOQUhKZ1FY?=
 =?utf-8?B?eFdaWUhTWVFMV1I1RVYrV0pucXpjNmJ0cmRJeC84TGV5RXl3MURJZ0NhbVRI?=
 =?utf-8?B?ZFl4aTdLNFQ1L3RYUmswZjNLdHUwWlkwY1ZaWS9NOVR1bkhlbG8rVFlVSGtH?=
 =?utf-8?B?cGVhV0NOUlJxV3RsaHpEbUJvYzhTUksvdlBiSllTcUlqZnh4V0Y2cUFTbVh4?=
 =?utf-8?B?WnJkaXVMZitNYWxlTTlIejlIa2Z0dGpsUFFobGdUTzVvbjJhY0VjYkU5Ris0?=
 =?utf-8?B?N2FiOHlzQ1RMTHVZYUMxK3BYK0UyR1FMRDhWaytXd09pczlIMXlLbzY2bXcr?=
 =?utf-8?B?bGlZVUw4cGxoM0RNUWpoRERSZm5VQTZLWkpIdFVCRFE3bmdUMFM3cWcyaGZN?=
 =?utf-8?B?bHNTY1Z3MlZDb0o0TlVzV3ViSjJQdmFJZUs0M21JM3IxV2dzWnlsQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: IO/8BCz0ISsJQlgMt1Y4vS7nGnb/e1ryj5Tzwh1epFXUKRkXfbRMvINzFnlG8AWmEzMw5ZeG0If8R7X2Y+ZfPtHE0Ch6XFRVp1vHpT/IjIgvdh0GwCK4qzgHEcOodpi5ACbuNRWuxLt1Fir1OJjeBAMIdSTrPOxfiUvIXUHdVSQ0wgst2Gm3/CmhkMDtWiDAhgVLAJn04gDjiP1g0lCx0FebULEJeyN0IIj1A0Ah57KscRec/+0iHkoq11Pbq3RrDad4awf72cklPJy8HeOtw6Y859FmRVUg9zFdTFgYS7ZV/rlHJvpz7XaqUaOr3hIzG5AjNrhpB6t6zhorOydYcw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14ce7028-4708-4914-358b-08dec9578f58
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2026 14:25:03.6687 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SBR57P8QdUTa8GKyZITf4ceVjq7CjGeeHSBH1T2Bf4xhTSzQ0ksHJ7ZTuF/nW9d0ZmHXzQz3pX0AdO7wEGd2tg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB9699
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3009567EC4E

PiBTdWJqZWN0OiBbUEFUQ0ggMy80XSBkcm0vaTkxNS9wYW5lbDogQWRqdXN0IGludGVsX3BhbmVs
X2NvbXB1dGVfY29uZmlnKCkNCj4gY2FsbGluZyBjb252ZW50aW9uDQo+IA0KPiBGcm9tOiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gUGFzcyB0
aGUgZnVsbCBhdG9taWMgc3RhdGUgdG8gaW50ZWxfcGFuZWxfY29tcHV0ZV9jb25maWcoKS4gV2Un
bGwgbmVlZCB0aGlzIGZvcg0KPiBzb21lIHVwY29taW5nIFZSUiBmYXN0c2V0IHRyaWNrcy4gQW5k
IHRvIGFjY29tcGFueSBmdWxsIHN0YXRlIHdlJ2xsIGFsc28gbmVlZA0KPiB0aGUgY3J0YyAob3Ig
aXRzIHN0YXRlKSBhcyB3ZWxsLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCg0KTEdUTSwNClJldmlld2VkLWJ5OiBT
dXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jICAgICB8IDIgKy0NCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgICB8IDIgKy0NCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHZvLmMgICB8IDIgKy0NCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHZkcy5jICB8IDIgKy0NCj4gZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jIHwgNiArKysrLS0NCj4gZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5oIHwgNiArKysrLS0NCj4gZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9zZHZvLmMgIHwgNCArKy0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L3Zsdl9kc2kuYyAgICAgfCAyICstDQo+ICA4IGZpbGVzIGNoYW5nZWQsIDE1IGlu
c2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pY2xfZHNpLmMNCj4gaW5kZXggNTkxODRmMmY4MDVjLi5lYTBjZGI3ODIyZjMgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jDQo+IEBAIC0xNjcyLDcg
KzE2NzIsNyBAQCBzdGF0aWMgaW50IGdlbjExX2RzaV9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QNCj4g
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAlwaXBlX2NvbmZpZy0+c2lua19mb3JtYXQg
PSBJTlRFTF9PVVRQVVRfRk9STUFUX1JHQjsNCj4gIAlwaXBlX2NvbmZpZy0+b3V0cHV0X2Zvcm1h
dCA9IElOVEVMX09VVFBVVF9GT1JNQVRfUkdCOw0KPiANCj4gLQlyZXQgPSBpbnRlbF9wYW5lbF9j
b21wdXRlX2NvbmZpZyhpbnRlbF9jb25uZWN0b3IsIGFkanVzdGVkX21vZGUpOw0KPiArCXJldCA9
IGludGVsX3BhbmVsX2NvbXB1dGVfY29uZmlnKHN0YXRlLCBwaXBlX2NvbmZpZywgaW50ZWxfY29u
bmVjdG9yKTsNCj4gIAlpZiAocmV0KQ0KPiAgCQlyZXR1cm4gcmV0Ow0KPiANCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBpbmRleCBiOTMyNGI1OTBlZTkuLmRh
OGE5NDgyMWMxMSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
Yw0KPiBAQCAtMzYzOSw3ICszNjM5LDcgQEAgaW50ZWxfZHBfY29tcHV0ZV9jb25maWcoc3RydWN0
IGludGVsX2F0b21pY19zdGF0ZQ0KPiAqc3RhdGUsDQo+ICAJaW50IHJldCA9IDAsIGxpbmtfYnBw
X3gxNjsNCj4gDQo+ICAJaWYgKGludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpIHsNCj4gLQkJcmV0
ID0gaW50ZWxfcGFuZWxfY29tcHV0ZV9jb25maWcoY29ubmVjdG9yLCBhZGp1c3RlZF9tb2RlKTsN
Cj4gKwkJcmV0ID0gaW50ZWxfcGFuZWxfY29tcHV0ZV9jb25maWcoc3RhdGUsIHBpcGVfY29uZmln
LA0KPiBjb25uZWN0b3IpOw0KPiAgCQlpZiAocmV0KQ0KPiAgCQkJcmV0dXJuIHJldDsNCj4gIAl9
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2R2by5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kdm8uYw0KPiBpbmRleCAx
ODE3MjJjNDFiOTYuLmYxNTc2OTlhN2M0YyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kdm8uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2R2by5jDQo+IEBAIC0yNTcsNyArMjU3LDcgQEAgc3RhdGljIGludCBpbnRl
bF9kdm9fY29tcHV0ZV9jb25maWcoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUs
DQo+ICAJICogd2l0aCB0aGUgcGFuZWwgc2NhbGluZyBzZXQgdXAgdG8gc291cmNlIGZyb20gdGhl
IEgvVkRpc3BsYXkNCj4gIAkgKiBvZiB0aGUgb3JpZ2luYWwgbW9kZS4NCj4gIAkgKi8NCj4gLQly
ZXQgPSBpbnRlbF9wYW5lbF9jb21wdXRlX2NvbmZpZyhjb25uZWN0b3IsIGFkanVzdGVkX21vZGUp
Ow0KPiArCXJldCA9IGludGVsX3BhbmVsX2NvbXB1dGVfY29uZmlnKHN0YXRlLCBwaXBlX2NvbmZp
ZywgY29ubmVjdG9yKTsNCj4gIAlpZiAocmV0KQ0KPiAgCQlyZXR1cm4gcmV0Ow0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHZkcy5jDQo+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sdmRzLmMNCj4gaW5kZXggMzBlNDgw
OWIzNmFjLi44NzI3NTM0NzhjZjIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfbHZkcy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfbHZkcy5jDQo+IEBAIC00NjAsNyArNDYwLDcgQEAgc3RhdGljIGludCBpbnRlbF9s
dmRzX2NvbXB1dGVfY29uZmlnKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0K
PiAgCSAqIHdpdGggdGhlIHBhbmVsIHNjYWxpbmcgc2V0IHVwIHRvIHNvdXJjZSBmcm9tIHRoZSBI
L1ZEaXNwbGF5DQo+ICAJICogb2YgdGhlIG9yaWdpbmFsIG1vZGUuDQo+ICAJICovDQo+IC0JcmV0
ID0gaW50ZWxfcGFuZWxfY29tcHV0ZV9jb25maWcoY29ubmVjdG9yLCBhZGp1c3RlZF9tb2RlKTsN
Cj4gKwlyZXQgPSBpbnRlbF9wYW5lbF9jb21wdXRlX2NvbmZpZyhzdGF0ZSwgY3J0Y19zdGF0ZSwg
Y29ubmVjdG9yKTsNCj4gIAlpZiAocmV0KQ0KPiAgCQlyZXR1cm4gcmV0Ow0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGFuZWwuYw0KPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGFuZWwuYw0KPiBpbmRleCA4MWZiMzQ5
ZWNlNWYuLmFmNTlmYzk0NmZjYiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wYW5lbC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcGFuZWwuYw0KPiBAQCAtMTk3LDkgKzE5NywxMSBAQCBlbnVtIGRycnNfdHlwZSBp
bnRlbF9wYW5lbF9kcnJzX3R5cGUoc3RydWN0DQo+IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9y
KQ0KPiAgCXJldHVybiBjb25uZWN0b3ItPnBhbmVsLnZidC5kcnJzX3R5cGU7ICB9DQo+IA0KPiAt
aW50IGludGVsX3BhbmVsX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNv
bm5lY3RvciwNCj4gLQkJCSAgICAgICBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0ZWRf
bW9kZSkNCj4gK2ludCBpbnRlbF9wYW5lbF9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSwNCj4gKwkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSwNCj4gKwkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0
b3IpDQo+ICB7DQo+ICsJc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVzdGVkX21vZGUgPQ0K
PiArJmNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGU7DQo+ICAJY29uc3Qgc3RydWN0IGRybV9k
aXNwbGF5X21vZGUgKmZpeGVkX21vZGUgPQ0KPiAgCQlpbnRlbF9wYW5lbF9maXhlZF9tb2RlKGNv
bm5lY3RvciwgYWRqdXN0ZWRfbW9kZSk7DQo+ICAJaW50IHZyZWZyZXNoLCBmaXhlZF9tb2RlX3Zy
ZWZyZXNoOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wYW5lbC5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5o
DQo+IGluZGV4IDIzYmQyMjc4MjZjOS4uMzBjNjA3OGVjYjFiIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BhbmVsLmgNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5oDQo+IEBAIC0xNCw2ICsxNCw3IEBAIHN0
cnVjdCBkcm1fY29ubmVjdG9yOw0KPiAgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGU7DQo+ICBz
dHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZTsNCj4gIHN0cnVjdCBkcm1fZWRpZDsNCj4gK3N0cnVjdCBp
bnRlbF9hdG9taWNfc3RhdGU7DQo+ICBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yOw0KPiAgc3RydWN0
IGludGVsX2NydGNfc3RhdGU7DQo+ICBzdHJ1Y3QgaW50ZWxfZGlzcGxheTsNCj4gQEAgLTQ1LDgg
KzQ2LDkgQEAgZW51bSBkcm1fbW9kZV9zdGF0dXMNCj4gIGludGVsX3BhbmVsX21vZGVfdmFsaWQo
c3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yLA0KPiAgCQkgICAgICAgY29uc3Qgc3Ry
dWN0IGRybV9kaXNwbGF5X21vZGUgKm1vZGUsDQo+ICAJCSAgICAgICBpbnQgKnRhcmdldF9jbG9j
ayk7DQo+IC1pbnQgaW50ZWxfcGFuZWxfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2Nvbm5l
Y3RvciAqY29ubmVjdG9yLA0KPiAtCQkJICAgICAgIHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICph
ZGp1c3RlZF9tb2RlKTsNCj4gK2ludCBpbnRlbF9wYW5lbF9jb21wdXRlX2NvbmZpZyhzdHJ1Y3Qg
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gKwkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gKwkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9y
ICpjb25uZWN0b3IpOw0KPiAgdm9pZCBpbnRlbF9wYW5lbF9hZGRfZWRpZF9maXhlZF9tb2Rlcyhz
dHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IsDQo+ICAJCQkJICAgICAgYm9vbCB1c2Vf
YWx0X2ZpeGVkX21vZGVzKTsNCj4gIHZvaWQgaW50ZWxfcGFuZWxfYWRkX3ZidF9sZnBfZml4ZWRf
bW9kZShzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpOw0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvLmMNCj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nkdm8uYw0KPiBpbmRleCA2YjczYzlhNWVjN2YuLjMw
NzVlZjA0ZGY1NiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9zZHZvLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9z
ZHZvLmMNCj4gQEAgLTEzOTksOCArMTM5OSw4IEBAIHN0YXRpYyBpbnQgaW50ZWxfc2R2b19jb21w
dXRlX2NvbmZpZyhzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAkJY29u
c3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmZpeGVkX21vZGU7DQo+ICAJCWludCByZXQ7DQo+
IA0KPiAtCQlyZXQgPSBpbnRlbF9wYW5lbF9jb21wdXRlX2NvbmZpZygmaW50ZWxfc2R2b19jb25u
ZWN0b3ItDQo+ID5iYXNlLA0KPiAtCQkJCQkJIGFkanVzdGVkX21vZGUpOw0KPiArCQlyZXQgPSBp
bnRlbF9wYW5lbF9jb21wdXRlX2NvbmZpZyhzdGF0ZSwgcGlwZV9jb25maWcsDQo+ICsJCQkJCQkg
JmludGVsX3Nkdm9fY29ubmVjdG9yLQ0KPiA+YmFzZSk7DQo+ICAJCWlmIChyZXQpDQo+ICAJCQly
ZXR1cm4gcmV0Ow0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvdmx2X2RzaS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS92bHZfZHNpLmMN
Cj4gaW5kZXggYjg5MzE4ZjViZGMyLi44ODI5ZjM2NTU5MmUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvdmx2X2RzaS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvdmx2X2RzaS5jDQo+IEBAIC0yODEsNyArMjgxLDcgQEAgc3RhdGljIGlu
dCBpbnRlbF9kc2lfY29tcHV0ZV9jb25maWcoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAq
c3RhdGUsDQo+ICAJcGlwZV9jb25maWctPnNpbmtfZm9ybWF0ID0gSU5URUxfT1VUUFVUX0ZPUk1B
VF9SR0I7DQo+ICAJcGlwZV9jb25maWctPm91dHB1dF9mb3JtYXQgPSBJTlRFTF9PVVRQVVRfRk9S
TUFUX1JHQjsNCj4gDQo+IC0JcmV0ID0gaW50ZWxfcGFuZWxfY29tcHV0ZV9jb25maWcoaW50ZWxf
Y29ubmVjdG9yLCBhZGp1c3RlZF9tb2RlKTsNCj4gKwlyZXQgPSBpbnRlbF9wYW5lbF9jb21wdXRl
X2NvbmZpZyhzdGF0ZSwgcGlwZV9jb25maWcsIGludGVsX2Nvbm5lY3Rvcik7DQo+ICAJaWYgKHJl
dCkNCj4gIAkJcmV0dXJuIHJldDsNCj4gDQo+IC0tDQo+IDIuNTMuMA0KDQo=
