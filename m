Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57183A613DD
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Mar 2025 15:43:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E3EE10E9F4;
	Fri, 14 Mar 2025 14:43:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gCbzMeIs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 802C310E9F4
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Mar 2025 14:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741963383; x=1773499383;
 h=date:from:to:subject:message-id:mime-version;
 bh=QehHkMdcYuMbMIOCQFKiinqQpOFwHLuCpHXoMb+pLRU=;
 b=gCbzMeIsO0Zgc8aLkQQzpeFqAq1VMoLljyEiAd0McFluOUjyTVo0XFlI
 ZunNM6ZS4F/0Bx5YUhsYjNZBUousGL6feONO0fLUGs9l5EGC5h3h4zmLg
 kfvDhNS02M9vV9dZXLxtHLuMF8KTT/cVC7IZSyM3XfOw9ymxI1z6bv/+i
 uVu9ZHpZtcLE0wFNSb6QIsGpZVwaI7EdDy7ut09m2wpPlxaQK1jm+7uHh
 a1dwNBaMUulxw3oGAvxCc1lu+W4rU6yXlOh9brg2T68hbfvQozwSO3xVv
 dOQVL7IQ+phLKSdeJgzw1hfr2fs2SuPEQtTlF0iyKSAXPcT7eQV3CBEln g==;
X-CSE-ConnectionGUID: N+g7gCtWSK64h7ZULe/6+Q==
X-CSE-MsgGUID: nExE9TYeTVCnjlN9khrxCw==
X-IronPort-AV: E=McAfee;i="6700,10204,11373"; a="42845963"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="42845963"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 07:43:03 -0700
X-CSE-ConnectionGUID: Dqdg3TNpT4KRbEpOJgSFyw==
X-CSE-MsgGUID: 742Fx2HBR7GTdrZ+3UDs4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="126348159"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 07:43:03 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Fri, 14 Mar 2025 07:43:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 14 Mar 2025 07:43:02 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Mar 2025 07:43:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xetZqoDmmXBWaLSq2xUIVO87D2HpRwG/9ZFe2o3ta5fON9L0opxw7v3LIJkqlXmbSqArL8APxH10vW1AqlTcov6VXED6n6dGPdumWJYEMnxu9UxWD/+8NGT7gzT4p+no3dV9Wv4vj0Kl6OsGK01Q5NSX58wj3OFfNRi831nwzLl3B7uHcMIvl/YmuUo/nj05iEXNwGx6aIMWjvAD8ZgxoSkwG4NxMDzF4lrEM1zJgtX8xBshpH0C8X56KoC4TXHQ3w9uKDrPy8tNr1BzlNWMnENWybxvvCCERWmquvOmA9XqZIm6b8AZoWDX4rvubtJVSqTZMFWvSsKPhbj+GtnLPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0+fDJTWuxTtnZ7BpHOHJ5Rq+4QIhGboEnw/XrtVGf94=;
 b=bxPvH0Ave3i+fsRHnS3Z2ji5VdJFjhxMRqPrdXgkAE4Y5HDZtdxzc6yx0wkfWe5JlqeP2AEzLyY1vc5gg3Q02oNTR5K8TzpC4HwRW5JPchKPtd1LoKnIVK+DD9AcFgDdS4fqTmZ/s0e9m03e1DPxQ+UO9fAS3YpS1F6kRWKdm5NJwCbGGDeMIXyEmm1NH+xEnNqScd76QuWT603xYIU8qu2qv1dsrANqIpMXCAL3OEDYl8S8LCXLa3C/soEUYf/Wtv4/auqqJ1KGaQFghd7+Xbvi5SXao13UP9XUbjcNA8bbs0HM4Zy/WySc/JtsOS4YbjDy2oT3ofutnj/SK6wzZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL3PR11MB6409.namprd11.prod.outlook.com (2603:10b6:208:3b8::18)
 by IA1PR11MB7385.namprd11.prod.outlook.com (2603:10b6:208:423::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.28; Fri, 14 Mar
 2025 14:42:32 +0000
Received: from BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b]) by BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b%3]) with mapi id 15.20.8511.026; Fri, 14 Mar 2025
 14:42:32 +0000
Date: Fri, 14 Mar 2025 15:42:23 +0100
From: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, Andi Shyti <andi.shyti@intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>
Subject: [PATCH] drm/i915/selftest: allow larger memory allocation
Message-ID: <wv4aw6syqjox52lpgkddxykr5namvan4eb7b4obj3rligwyp7m@33c3ko2mj7sp>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: ZR0P278CA0020.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:1c::7) To BL3PR11MB6409.namprd11.prod.outlook.com
 (2603:10b6:208:3b8::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6409:EE_|IA1PR11MB7385:EE_
X-MS-Office365-Filtering-Correlation-Id: 8400fa28-2e27-4322-c0f8-08dd630673fb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R1pJY1RjTEdUaXUyVyt6bVp0TGdjTzdYODJwWWlzaEt0Nm44SmI2RzdpN0E4?=
 =?utf-8?B?dzVzUTNMMXRLUVpzSXpQc2JvVmdnMWxnS1hJY25VSEQxQTkyMkt4YzNPUTRL?=
 =?utf-8?B?OXZDbXZVaFBHY1c5MVViVjhNNXZQYnJ2ZXJQVThBcUppbTFvalViQmFySzJi?=
 =?utf-8?B?SEFMckQrb1B3MDJZRGl2cUNVTVNRUXJJbmVSdldoS2QvZVJyQkxjZjVSdndB?=
 =?utf-8?B?K2NEYWozUGdDcGhtdkI5cFI5UmNZV0VhYUJObGRjTkJvbHl2bXdDa2pRcGFZ?=
 =?utf-8?B?Z2pOclg0RTVNWFNtTGQvUDNBZTdEQ0czb1NDNmxjRHZFbktYR3lPTHJVUWhE?=
 =?utf-8?B?eTZNbWgyVWVQRHh2eFBQdlQ4VVgxakFGQ21XVWZlRndyZXppNHpuWkU1TUtq?=
 =?utf-8?B?bURwc28zMXM0QWEzL1VOZXFnVlRlQVRCL2dTMng3TzgydUoxUzVja0hUVXVa?=
 =?utf-8?B?ZHhWdllaTzVBL1I3OW5MVWNUb1JNcUJ4bXZsdi9xZkRaMDNDWFNkOGc5aXZj?=
 =?utf-8?B?dmVSR0szd0hrSk8wakRvaEk1aVUxS0hLTlMvcVBRRE43ekFMT2M0RmQyUytO?=
 =?utf-8?B?aUhKRDYvMXJpK0d0YUUzZGZ5SmVEMUY0dktJYnFaQnV0bDQ5d2x1YnFyL0F2?=
 =?utf-8?B?YXduMUVpbWI3Q3pQaXVYTXVKOE14bzQ3UDJ4V1JORFJsdDFTUCtEdHBmeFF2?=
 =?utf-8?B?RnMxSDlFNEFUdGtxaWFReE1TaUFLaE5obHNFN0RFdmhZQmNFRGIrUysxUEhP?=
 =?utf-8?B?RWVseDRDYWFHbVhmRjhjK1BTZHdVeHUxelQ2L2gydTA4cTlLdU1XejJOSThk?=
 =?utf-8?B?MVpiTmh1cTY1MWFXbERZaUpnRWFERlpxVFZLMTY5WkpoeTJnR0lnOU5Nb1NL?=
 =?utf-8?B?ajNMbWpTSGVNV2JqdWFvSEJzMjhRbGdmMWtwVkYyNy90ajZvYlZOMFE3RXRF?=
 =?utf-8?B?K00rc1UxTUNUVUJ3SjZiQXh6OWpaVnFWK2lyczVlRzIyc1JOMDRZd1J2WHE4?=
 =?utf-8?B?WFJ4QkUvRE9vdXVWL1RKdG90OGVsNEJlRDNySkJYYnhCMzN5YUJxMXk0MHJz?=
 =?utf-8?B?OVpjaG91V3NSQlo2QzhIRk9jdkpTckRHS1VRWC8vOWVVNWVySmlnUVJiQ3Yx?=
 =?utf-8?B?dDVzRnhKQS9CMXVIcnBKN0lMMDJOekxNS2VsRmM0dHArT0RTRDZBbVlCZEx5?=
 =?utf-8?B?VmlhTXcwTHNDaTlHdXZya010MjZsc1hRNldhaGhJblBzcFhSSWVnTk9QK1p3?=
 =?utf-8?B?a2FBbllqMXgrSXlqVmxNMm1rQWpaOFFSUEpRcTFzQTdZRmNUU2dySW9ScXlF?=
 =?utf-8?B?MEN6Smdsd1ByRnNUcTJMTngvd1JGODg1eGpVYW5PNUZ6czFrVGlhbkRDWXJW?=
 =?utf-8?B?SVh0NWN6blBucWIvRHlDZzRBeDNXUzhuWW52K0VuSkVMRkNneDVzMVpKZjQ3?=
 =?utf-8?B?RVMwQlNCQi8yTk10MkorTkFobERXUUlib3JXUktEeXNwSUQ1ZzB6QVhrdVFk?=
 =?utf-8?B?ZWpMY2ZsWVZsT3NoVFNiNklLNTU4THNwa2ZjTEsybmdnRmJtWGNiL2xxdmI4?=
 =?utf-8?B?UVNCL2RkOTY0S1VqcTkrY3JrUWpDQVVwY2sxdVYyZmViRnJ4WEd4KzNPTGQ4?=
 =?utf-8?B?bTNQd1J0c25iczRPSTc2MFdTaStieSttaVVia1l0LzJNbnJpcDM0SzVSanlL?=
 =?utf-8?B?UVp2REIvZnJZQXV4TUNLQk9BeUZWZS84WnJMUDUwa2twZHBBUXJjWHlwZ1ly?=
 =?utf-8?B?YnhmaFlZL3ZhSjB4TEdaWXZnR0ZTMEVWd0pNUzgrN3NRZFB1T1RXeU1seFVU?=
 =?utf-8?B?SmJsYklyYkVXS3hyTVNVdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b0hpREh1N05XSmV5THNnMXZ0UG0wNUttNHNKMlV3M0lLMzJvSXAzZTVYR2xO?=
 =?utf-8?B?SlBocXJGMnd3VW4wYnduaU0yY3RBMy95dUV0aE5xeGMyVHIzekgyU0ZpMWxJ?=
 =?utf-8?B?UkJRZG1YSGgwUGRuRU9OT3VNUVJIOHJaam1HbGQ2OGhadzI5c1lpMy9xR3V1?=
 =?utf-8?B?NzRIMHpaR2xlL09PZFYrb3RXSWRhYmhHL0ZtdjlZY1prdXBJUmRXR3NUWjQ2?=
 =?utf-8?B?SXF0RFNoVW83aEtjNkRZc3ZMMUJTbEI0L3NxRjVkRXBaUDZyUzJNS3dSOU1M?=
 =?utf-8?B?T2F1Y0pmdHhlMVl1Z0xNdTljcTdiQ1VJa3hqWFpzL1lQTklRVEJzS202c3h6?=
 =?utf-8?B?eFJxUzN3NHl4KzBhczRiZDIrVTNxU004V0JkZmwrQ0pTR1B0RmNncktJRENC?=
 =?utf-8?B?OVp4OHd0eklzMnNNWVNXTERaZEpsUE4vZHQ3US9UK0tEMTZIWFhVSnlsb1da?=
 =?utf-8?B?Uk1pcUNzaVFDODZtY2ltNzRUdkEvWGlKKzB3cWJGcFhEbG55VWcxdkJFbE5U?=
 =?utf-8?B?MDBNWWZYaUgzcTdkL2hoOU5pNXo2YjRlWUZ6U1A1R0F2UktDY25xUWNvcWQ1?=
 =?utf-8?B?RnBDaDNGak1jTFNUek53NmF0WCtzZmFDRXJ4REdRcUk4OFB4akRWNkxRMFNM?=
 =?utf-8?B?a0hTSlBFdkIwTVF2RTdFM0RaVXAxZnlQYTNua1VobTdQVVdLdjNURElNUDRP?=
 =?utf-8?B?QnpEaXEwaFZEMlg1L3ZjdTlpbDZsQlIwTExQRHIwem1QYk9hOGJ5WFhEd2pD?=
 =?utf-8?B?Mm5Ba3d2Z0Zaajc5MDYxZER3SmhhS0JtV29HUUxsYUFxcHRYMUtFTVMvYkEx?=
 =?utf-8?B?STM0b2pEeVBjOUZOcGgxUXhaVWJSYWlrMnQvWU5RWHNKdWNadFk4amU0Ry9R?=
 =?utf-8?B?WloxSkRsejZKM0xxWGpHRFF6ZW5qMkZLdEZaeHBDY1Z3OExpcmtrb2NHZDYw?=
 =?utf-8?B?UmRuUDF3Y3htY2tkcjFVNWw0dlVCTlRhenlmOERpMUozTndnTFFWM1BDMmZM?=
 =?utf-8?B?OWZIbzRjZGdwQTNaOXBXNFBoaU8xdXZYbXp0amFudm5USFRIa3JXTXh3ZjlP?=
 =?utf-8?B?K3krRlprL1YvQWRONEZKNkFTOEx4TWhEZGtNekpkSHBhbGNLUDJyN2dzajdh?=
 =?utf-8?B?dms1Q2xRZG5BTDFmNUJrejZBcDVnQUNBdmxCUnZ3UmI2MjEvM0VOS2NPNnNj?=
 =?utf-8?B?MnVaUmRzZlNlb3pQU04xQ09yWnZ2bVI2NElVdHlvalhIbmxPQW1ldEJkaXZY?=
 =?utf-8?B?M0RJNUpkSjdMY2NNUk1YUGZGNjRyRE83TitBa2JTZit1ZGU0OXRYemp0aWlq?=
 =?utf-8?B?a1JKMUZkQUNhWHhOOU5MTWZYOWQ0R3o1VjkwRm1OR2oyenY5THk0YjJGMFBB?=
 =?utf-8?B?c0NTZ3YwZk1zc3h3TUkveWM5dEVxZFZvZ05SSEZJWUIxWTA2ajIrQjBqYkpk?=
 =?utf-8?B?cDFheXNjQjZtUDZ0QXpaYXpsRVgrVFRHZjUzZi9WSzJaSTZpR3VQZitOM0xC?=
 =?utf-8?B?OHJaV3ZQaHVXSlR6b01mc1FoT0hOTWlGbFIyckI3T1IyWlF0QTAybktHRks2?=
 =?utf-8?B?dVJSTXdGSWhlQm9hZVIxWjZYQ2ZXTFFEY0hzaXBPejNUUWxIRTFSMkQwY2FE?=
 =?utf-8?B?Rmt5VC9WaHNDZDQwVlFSZS9Ua05TcGJmY3dYSjFjZlBhWUxlOFVFdDE2YzdD?=
 =?utf-8?B?TmZ1bWtqd2xjNllXUWk1S29YM2NscnNTb2tHbmk1M0lKb05rMzBrdDFoZU80?=
 =?utf-8?B?aGlEb3JJd0RlNTlJWER1SUwyemo1djkzUi9Kb1k1R3Y3ODRqaDNxVkFkd24y?=
 =?utf-8?B?QmpIYmV3V1drVW0rdzV1dVdIaGFtajArSDA2VlM5Zy9HRzhsdEVpei9kdkZX?=
 =?utf-8?B?UHZjaWdyZWVPTjNyUFpzZlovZE9OZzdoVGVJQVhRWUxkNk5lZzZnN2ZIQ0ZH?=
 =?utf-8?B?elR2VjBHYkg2RGRRdFNQdU8weXdkbkJ6ZkZHMms2VnRJNS9McnZQU3NCRWhh?=
 =?utf-8?B?QUM0cFYrZWVoT1E2dUhzOVJRSWN2bkt1dXdWaEJHdXFTcFJ2dE1wQXRYbk5C?=
 =?utf-8?B?Tis0TlBFVHllQVRSU2d5dFkwZFNsOUlKM1NIdU9KMVJuTklDZkppbGxNd1d6?=
 =?utf-8?B?T1FaRHRndGNLVXNPamhTelo5UjFtaG15Y1NBRVFxWHhTRXhZSnFTb3d1aHBW?=
 =?utf-8?B?UGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8400fa28-2e27-4322-c0f8-08dd630673fb
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2025 14:42:32.4634 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kZLW7PQHJIM8VxQ5A1LFU9HP3nsx84SxNOjd8h1dj6EG7wjS1SOiJpDajqml5w+6kbwuQP9Lx3NbjHsVXc+cztUFZlueubni9F8CkIIQfxE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7385
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

Due to changes in allocator, the size of the allocation for
contiguous region is not rounded up to a power-of-two and
instead allocated as is. Thus, change the part of test that
expected the allocation to fail.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311

Signed-off-by: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
---
 .../gpu/drm/i915/selftests/intel_memory_region.c  | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
index f08f6674911e..ce848ae878c8 100644
--- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
@@ -413,22 +413,17 @@ static int igt_mock_splintered_region(void *arg)
 
 	close_objects(mem, &objects);
 
-	/*
-	 * While we should be able allocate everything without any flag
-	 * restrictions, if we consider I915_BO_ALLOC_CONTIGUOUS then we are
-	 * actually limited to the largest power-of-two for the region size i.e
-	 * max_order, due to the inner workings of the buddy allocator. So make
-	 * sure that does indeed hold true.
-	 */
-
 	obj = igt_object_create(mem, &objects, size, I915_BO_ALLOC_CONTIGUOUS);
-	if (!IS_ERR(obj)) {
-		pr_err("%s too large contiguous allocation was not rejected\n",
+	if (!IS_ERR(obj) && !is_contiguous(obj)) {
+		pr_err("%s large allocation was not contiguous\n",
 		       __func__);
 		err = -EINVAL;
 		goto out_close;
 	}
 
+	if (!IS_ERR(obj))
+		close_objects(mem, &objects);
+
 	obj = igt_object_create(mem, &objects, rounddown_pow_of_two(size),
 				I915_BO_ALLOC_CONTIGUOUS);
 	if (IS_ERR(obj)) {
-- 
2.43.0

