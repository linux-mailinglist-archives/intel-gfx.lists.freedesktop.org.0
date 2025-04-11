Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4315EA85A68
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Apr 2025 12:48:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C78F10EB6A;
	Fri, 11 Apr 2025 10:48:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qwe27Ch1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4DFF10EB68
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Apr 2025 10:48:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744368513; x=1775904513;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=5X7Cy6OEThaM8CB4uw3rqqLE6jaZdVVBfiVYAnpZyL8=;
 b=Qwe27Ch1IE/unuDL5W4NZikdKgtn7gq0oojkR/mo5S7h5bsVcgcZkKP5
 8D3ejoS3ingcTCXhE5/30a9IASevgCFXWoSEN07mRtKwnVNLBvzwmbuZF
 cBz0jlJ1x+wT0IH/fcoqwXaH3YHhlHm1cYe52icG7vFpc5x8FEO7LYt9f
 A1gOaiq6K+LgvuHkIifkWnJcQj8te1bcd7uakmjypL+oHuFUx8/e44JDA
 moxfaIvQAk9lbmfJJ0sW9lcmZ0yodac+uW76RDBpLjjYnrxNgfz96A8wq
 ElzR+ZfxsMaM+gkyx2WPt4t1gNuVIKrSsQQDQ+l5Ae1fa/elttEpu5UZB w==;
X-CSE-ConnectionGUID: XOSfNV7fSQuPfDh4Blc2xg==
X-CSE-MsgGUID: XtpERgeURgmcJLfB7n+ZoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="46057414"
X-IronPort-AV: E=Sophos;i="6.15,205,1739865600"; d="scan'208";a="46057414"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 03:48:32 -0700
X-CSE-ConnectionGUID: K4HMPJ2nSa+cjYXKekOShw==
X-CSE-MsgGUID: vIxBfq9gRZe+0e4o9a5IyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,205,1739865600"; d="scan'208";a="129167524"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 03:48:32 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 11 Apr 2025 03:48:31 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 11 Apr 2025 03:48:31 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 11 Apr 2025 03:48:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ruHEwzIbysYiiVjPEFlmYa7rIOLxq7sNIcfWiIq7fTN2JEmEKpqxLvtyOjfda1LLpT/7JcW2iQG1e/yQKxUeuTwoQAWXDaJK4MfYY3MTxHcDCS+g8xioptjhVloUbCGuhJQUz9R6ahPaY2lNKtxN0NlgFidkAxmIanFp2cz6bThoOexCP3Ta3hx430+ScnvMt5c1IkIu92/Y0DilCOep4zWcwsYtq024/roDK9E7akz+bz1rczSIFxYa5VqoivQ6Dtq+zIaMGMcqG21H2sYLzcnaUkyqGs7fZXvHdiwhjNera8lXLEcDLExdYV/z3b1AFyBBIgcFItKi6wnmmHJU8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fqJqZjGwckFNOBmmKCiTH5y+X/r3x+0jQyz5mNpAx3I=;
 b=CbvX4RQXXecs/vAfDAn16vs+4U0uKheJUDqA9nXv7voPksKveZDjcT+DXj6CyswfN2DcgfQGKFsk41dxk9b2Bdspvpj0lTwECTjZfS1oClTA2YROpzdMkmVJIR3m9w1t6t/GL8Z5SzKWFVP1g3/qtme1xqJP6XNuHFRmcU0htg3HFVWg1gbZ3dJMS8Ikwrla+yt8XTa6Yzqvyg6W7iYyytxslYiELNmG7tGwpnPwvkZXcP1Ywr0KUnjFhzhOm1F9xcbUb8fMajpgIi6aeU2GP3I5lIJ7soHdb/C878nwEAOMs6HzqFXGqi6HCitEGy8xBjfpDwE5Vl/o38wsGnIdpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL3PR11MB6409.namprd11.prod.outlook.com (2603:10b6:208:3b8::18)
 by CY8PR11MB6868.namprd11.prod.outlook.com (2603:10b6:930:5c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.32; Fri, 11 Apr
 2025 10:48:28 +0000
Received: from BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b]) by BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b%3]) with mapi id 15.20.8632.025; Fri, 11 Apr 2025
 10:48:28 +0000
Date: Fri, 11 Apr 2025 12:48:16 +0200
From: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>, Krzysztof Niemiec <krzysztof.niemiec@intel.com>, 
 Chris Wilson <chris.p.wilson@linux.intel.com>
Subject: [PATCH] drm/i915/selftest/mmap_migrate: wait for clear memory
Message-ID: <lirio6uzqw4v62akcfcoo7w37gai24nbgefoyzxviysjape7aj@ck7iwwcnvpx4>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: VI1PR06CA0107.eurprd06.prod.outlook.com
 (2603:10a6:803:8c::36) To BL3PR11MB6409.namprd11.prod.outlook.com
 (2603:10b6:208:3b8::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6409:EE_|CY8PR11MB6868:EE_
X-MS-Office365-Filtering-Correlation-Id: d69c3231-bb25-45aa-2cdd-08dd78e664a0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?THpmTHFEcm1RdXpqcldidnpRUGlKR1dJR0RnbThpQkVFbTQ0OEhNTERJVSt5?=
 =?utf-8?B?Tk1kOFRSWDdnMFNNV0tiWnQrSnl1eTIvNmlDOXQ5VVNQbnVkL3M3Z2FwMHRk?=
 =?utf-8?B?TFFtR1RoQkJhN0ROTXFlMUZmcnpBMUhHaW9SeW5MS0ZMd1RVVVE1aWFSRGRS?=
 =?utf-8?B?cDVjb1Y1YWpMUVBOdk5iM2lzVjJVNG9rNFRleElKT3pOYXE0TjBEeEZtdGxv?=
 =?utf-8?B?NktKMWlFK1lxVDBlVmt3MjhiUTg0eVdpeGhjSFZXQWFDSWpkTEVKWWFxQ3RY?=
 =?utf-8?B?elhFUWRPK1FmZXA5a3VIaDNUTkJ6dGxvenpZN2Y0ckVPSGNEekVNQkVEaE9X?=
 =?utf-8?B?Q1NoM0JFWGJOVmN6eTIzRlVpdE5uOTNIMFJkNmxGVmVPazVCUUNqM1B0Q2JS?=
 =?utf-8?B?U3pXa21NdVFvL0NMV1MxdUx6aVA4Qm0wS0JtUWgxamt5d1VPZ3JOcldLVkp5?=
 =?utf-8?B?akpWdU5KYUt6RG81ZENvcndQK1pkbHQyciswOGRxZGg4ME9SMk1UWGFnT3I0?=
 =?utf-8?B?WUY2cGNUNldSMzVQd0grSHFHdXFuUi9GMTkrRkdOdUdkaFVPdEtHNDJaRDJ5?=
 =?utf-8?B?Z0R4emVrcTUzWDZYUERRMkJOZjZicnovL2N5TW91VmQ3RFJucDdQcU5SUERE?=
 =?utf-8?B?YXE1OERLZUl6bXVjcElmU0dwRmxuOHREY1hqQTZwRkpzODhuMVRtUHgvSmU3?=
 =?utf-8?B?QlIwa0t6YnJBa1RxVmJsbWxhcWhjS2xYckxFSkdhODJHbUM5QXRDdkhjWDFL?=
 =?utf-8?B?OVdlUlZqaTNIUjBjNTdpOXhTVHJuRkM2ekczZnZHOHdORXFmem1IZS9YY21E?=
 =?utf-8?B?WUpQVG5KQWdIWDZaTHVHU2UxbmF5VkFDRENXT3BXbWlHcVVUU3ZTQ3NIcWxh?=
 =?utf-8?B?OSsxdVFrUTlBZzBFUUFvQnMzZHZRbjE3cjlYUnVmZE5EZDJtUTBXcVVVT080?=
 =?utf-8?B?cHM0ekx0T29EckoxZ05mZFhyTXdWTlZWUWhoWFRWS1VrM2RDL2creXpQZWU1?=
 =?utf-8?B?U1BET2VoVjRMWnd4Q2d2RVVId0J4b0YxTlcxU0JXeDRBckVXNVJCV2R2dEw3?=
 =?utf-8?B?b2ZBdTBuUm1UL3htOTY3VGJOQy9lRm5QTGRWdnU0WGdFRWhCQm5oTkV6Z1Zk?=
 =?utf-8?B?WjJGb01CQjJqZ2pwdUNTcEdEaWZQU1FKb1RnQ2FjdkJhTTFuN21admtreDZT?=
 =?utf-8?B?Wm1NRzhxelhieGlrdVgrSlBmcGRHRVk0TmdLakVRNnd5Z2tmRFd4WEZ0SnJk?=
 =?utf-8?B?U3lDTnYrUWJQL240OW1FaGJ4QzhpeWlTL0VZRnlHVE5mRHdSdlVDTllZbzI0?=
 =?utf-8?B?Uy9OS0hBZWdYT1U1Wnd5NTBVZjZmZjRkdy9tc3Y0N2lZS3VYZlNRanNiV2ti?=
 =?utf-8?B?Q1djVjlQSk5SUk95ekE1aERVL21ZbjJtVW1KbXMvdmUralE3LzFDL2hZb2dU?=
 =?utf-8?B?K3g2dnp1bVNwclIvcVBuQlFZSjF3bkZZWm94enhWd0lJQWFlZHdyZUl4U0tR?=
 =?utf-8?B?TGxoNFV1VGY3VVAxT3JiZnlsZHMxK1V5MVB4cUVSeDZ6UUxpTnVmclFZZG9r?=
 =?utf-8?B?YWpLT2prUWlYcHFtaFQ3Yjg1dEZWbWdMa1o5aFdld0xpOUlwY3YzckRzb2pR?=
 =?utf-8?B?Rk03TFhoV0JzRFNjS0l2WHk2VU5uNk5GM3pDaENyTzRxWVpXZHloUUZLbGZj?=
 =?utf-8?B?WmpjR0tJbGg5RXhPbEdJSUlsajdDU2FOQmlFVnkxcFduMk80dzhYbnQ5Q1VU?=
 =?utf-8?B?b284Rm43OWZlaTNaakJwVyswNjViVW9venBUN05Sb21vVHI4MVhSVEQ5UDlO?=
 =?utf-8?Q?DjEInee0qj44ByTLr1dRo6UDPoicsr4qHBO0k=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M1FrZVBaRS9TODdqYnZka0N5anB3Q2dVQnVTSXBUN0pLVzFmMHVUNDdWWGhn?=
 =?utf-8?B?MHRvVmRNa3VMR29jazZmQXVEWmV0dms2TENzdkdmSmhJcmF0cG9Od2ZCZGJy?=
 =?utf-8?B?UWNHcDUwTjl1UzBhV0lzTTJ6S3NXckdNT3dYblZPNW1jOWFYRmhXdTBiMWxQ?=
 =?utf-8?B?RzhvV3M3ejJRbi9IVlBoL2dpekRLNEZ2eE1LbXdoRExHTXRYUXg1YW9WZGg0?=
 =?utf-8?B?ZzlZQktvM3U2MFZkOEgzdzQ5dUVhMVlCaFN2VkduOXV1RDRBV215L1dKcDlD?=
 =?utf-8?B?R3NZbTl6VjExMStqZ0cxN1VtQjlyZXJsMTVzS3gydzZub1FXNS9kWDN5Wmo4?=
 =?utf-8?B?d1kwakdPL3Y5VkgwMUJNTW91UmlIYi9FNW44RjNBelRuWDROQjlTMHdBT3Ja?=
 =?utf-8?B?K044NFQrUVAvUG9mbnpad3NYSGFkeFRjVm1RelRXNmR0eTVsdzIxKzRkSnA1?=
 =?utf-8?B?ZGZxN1NxaE04UEg2a0dGQTFleDRmbjF5R2NtU1dvdE1YSDZmRTA5Vm1hUm5i?=
 =?utf-8?B?SE8xV3JTYk0zYmNtd0cvLzFJYlR4NGtkQW93YkVaY2FpdjRMaVEyUTIySlZp?=
 =?utf-8?B?NGdEd0k5T3hlSkpaalcwRWh3UXhDai9lV1FHVVI3bWJSV1BSRGZmeHpxRXgr?=
 =?utf-8?B?dkxKOGJwWit1N1Rsa2NUNHNnMTM1a1F3V3BqU2twQlJLSFU3VUN4aklwYlh1?=
 =?utf-8?B?RzMxWEJhOHYzakxGM1cxZGM3Zy8ySFhqZGxNZHVPdTErRkV2OE1acG1jRGUv?=
 =?utf-8?B?Mk94NWF1TEVzM1pTRVhWRjdOSm5kOEtVSlhrdldrbE1yMThXMDdCMUVjR1dC?=
 =?utf-8?B?eURzYW9uNHJmNjNaUkw3YmJTVklaWWlNUlNtR01JYy9IUFlYWHpxWVpydytm?=
 =?utf-8?B?YW9mQkptYi9hQ3FKS2N4USt2V05UNDlTWGtIZmJUQys4RjJ4VUI1TTBQVUI1?=
 =?utf-8?B?TzJWK1VpMFREM0RtQ2V6MTVFM1VZeE01UWNQTWszbFkrS1Z6RTZrVkUwVFR4?=
 =?utf-8?B?b2Y3bTJxQmNjUlVUOG94T1FoLzhVTFhmQUVUbjRLa1pvSDg3bFJtNEFKeVhU?=
 =?utf-8?B?WGhGem8wRTl3akNiQklmWnNYYW5hSURLWUFPRVdGOEdtWlRvRHlMd0RTZW5Y?=
 =?utf-8?B?bHlNdFpwR0laSkY0WnJzUWZ0WVVhSkpXUDAxWE5Zak04Q3o0VGx2MlpGc2Ir?=
 =?utf-8?B?ZDVFTVFIWFhYaG1VeDVOLzFTYnJBVXFtL0N2TVdrdStKVzRLalZzaERTK2NZ?=
 =?utf-8?B?NVdjVERvY21lekJMUUdqZHg3YU5WWG1YYXJWYVp4WnJIK0hhY1J3YS8zVzlk?=
 =?utf-8?B?NXhEeW1DemU1anpyRVZod1FCL0lJMy9IejdWTDdzb2tGYkhUcVhTeUF4Z0Zm?=
 =?utf-8?B?VjFrRXNuQUxZQzZJWUEycmJNYkQ0QUZJSGpoS2ViMXRmc0xvdGpScEE3V084?=
 =?utf-8?B?dU1malRYU29DMHFxT0Vyajl6TFYvbFF6L3BEamVlSVFUYmtyRi9mLy9GMG5q?=
 =?utf-8?B?TkRxak4zajdUeEM4YllUTENqcCtDOXNJNkNtWFFKTGV3dS85WFhpTGh0RHRT?=
 =?utf-8?B?NEJSNVJjU1c0bkhBanJPMDRneEtoS0tvempOdkl2bmRZTXlPUnQxWWtjdzNq?=
 =?utf-8?B?aHhUaHdqQkZsK1RKd2xYZ2pJVXBvL1JFdDdhdVpzeUc1aXJrWVhjYmJUVXF5?=
 =?utf-8?B?WVc1OVljRFRsbFlCcXBJTHlmZTJYcnlWS1A5MFhYRTZ6Sk5HY3R3RDIySWZB?=
 =?utf-8?B?cnZDK0hiaHBSWGFCVGdOVW52MHVJTm9xZmxkWmpqZU1lQjVrNER4K0FKUnI5?=
 =?utf-8?B?ZS94ZlowN0dLQmo2ZVRQWXloR2pFelJKRysrS3pMNSt3M2FmVVc3dGxYamlE?=
 =?utf-8?B?SUdhU2luWEcyb0E5WGxVVGw1ZDNKY081STBwMDhCcnE0N00yd0F4Z281SFRp?=
 =?utf-8?B?YVpaVkZhc3dvNEo2N3VyVFdzYjNnaUhWbWphS0x0a2NkMDg3R0trWnBWVWlp?=
 =?utf-8?B?MUNFNU9kVGVoOVAzVzY3QUhocVFlMXFudVBMTmM5b1dXY2R4NnNaQkF5aGIx?=
 =?utf-8?B?eFdac3BtUng0SW8zZGdqdmRmaHZ2S2E3cFFWb3BvQTBpUkd2d3k1Tk5hMk9z?=
 =?utf-8?B?bTNwemFhSlNzK0tWZnJ2eFd5TGxPVmZTQ1JzM1FxK201WmYxa2lNUlYwdkJx?=
 =?utf-8?B?Wmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d69c3231-bb25-45aa-2cdd-08dd78e664a0
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2025 10:48:28.7382 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RWLFPARhh+SsrJcEUliEOCqLOlXJL7CQuZVAWy560qo7e0e+ft7KOGSMpjIqm+LydpHfyNIZAe3pOEPzOClTERAML30X/1P9tEoazlZ0OH4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6868
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

Mmap_migrate test runs multiple times filling GPU memory
with objects. Those objects are deleted after each run
but cleaning pages takes some time after the objects are
put. This patch lets tests to wait for cleanup after previous test
if they need to allocate whole memory with new objects.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929

Signed-off-by: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
---
 .../drm/i915/gem/selftests/i915_gem_mman.c    | 35 +++++++++++++++++--
 1 file changed, 32 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 9c3f17e51885..e486a52b855a 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -1047,8 +1047,36 @@ static void igt_make_evictable(struct list_head *objects)
 	cond_resched();
 }
 
+static int igt_try_pinning_pages(struct drm_i915_gem_object *obj,
+				 bool force_pin)
+{
+	int retries;
+	int max_retries;
+	int err;
+
+	retries = 0;
+	max_retries = 10;
+	do {
+		err = i915_gem_object_pin_pages_unlocked(obj);
+		if (!err)
+			break;
+
+		if (err != -ENXIO && err != -ENOMEM)
+			break;
+
+		if (!force_pin)
+			break;
+
+		retries++;
+		msleep(20);
+	} while (retries < max_retries);
+
+	return err;
+}
+
 static int igt_fill_mappable(struct intel_memory_region *mr,
-			     struct list_head *objects)
+			     struct list_head *objects,
+			     bool force_fill)
 {
 	u64 size, total;
 	int err;
@@ -1066,7 +1094,7 @@ static int igt_fill_mappable(struct intel_memory_region *mr,
 
 		list_add(&obj->st_link, objects);
 
-		err = i915_gem_object_pin_pages_unlocked(obj);
+		err = igt_try_pinning_pages(obj, force_fill);
 		if (err) {
 			if (err != -ENXIO && err != -ENOMEM)
 				goto err_close;
@@ -1208,7 +1236,8 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 	}
 
 	if (flags & IGT_MMAP_MIGRATE_FILL) {
-		err = igt_fill_mappable(placements[0], &objects);
+		err = igt_fill_mappable(placements[0], &objects,
+				flags & IGT_MMAP_MIGRATE_UNFAULTABLE);
 		if (err)
 			goto out_put;
 	}
-- 
2.43.0

