Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mNKdLrFy02lFiQcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 10:45:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F38D3A25B9
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 10:45:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B3EC10E1FC;
	Mon,  6 Apr 2026 08:45:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l3eOQIX/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EA7A10E184;
 Mon,  6 Apr 2026 08:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775465133; x=1807001133;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tuEIDquXEMkeowKFfJk1BGJxPio6u7wW+aZr9YI5ghA=;
 b=l3eOQIX/q9l5K2FcgVK2vwMwZgU0Zqw7pc11/eVRFpT38MkfklDBIbMW
 DJTEZEL/8rhHmBPue45UeME/ZT7kbh19YSKHpUfuTz1MBiEw7Zz+irJjC
 X/t+3ruVEpz0vzNAOdjZsstxjfpChhmnFa0/5H3EWZnh5ajp+s4d0kgTk
 6K4Lh9ZLdQUsQ/trEiJevfM2cxAfFmPVSVL9c2mlpq8armv+HmRt5ZA+i
 c7S48wzFuq/Dot2DEl5eFTpoixfpFMFPnHBwA4q+LXmkGjXA3h3O/VBVC
 d/nB/D4eMuCNOK7OXgHx6qbEdcSUJQlU7TdqxtHl2RUBKp9fEg+nB5Qka A==;
X-CSE-ConnectionGUID: f7Cc1D04SSOw5pvA0f7QCw==
X-CSE-MsgGUID: WbtJrGLsQeGC08gDi3vPyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11750"; a="76605478"
X-IronPort-AV: E=Sophos;i="6.23,163,1770624000"; d="scan'208";a="76605478"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 01:45:33 -0700
X-CSE-ConnectionGUID: SCgT7XLRQwW5jexeZ89Gvw==
X-CSE-MsgGUID: 9ZgMR64iSsi7CUFCP56LXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,163,1770624000"; d="scan'208";a="226831349"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 01:45:33 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 01:45:32 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 6 Apr 2026 01:45:32 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.15) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 01:45:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZJIKpxtmTB95vPwJVMjCmZsZZKBKINNv+pTavdLz3uXn496QJelh6ScI0tFiyqknRi/wrd8P3sF0l8EC/ZvI86XYde7jRJNH09JXHafT3ddYG3+jUNnZ6mw2QeFxbLETH98LHWW7PmUwolC5bRW1XCn8rcozswuLKSMnGeytXegvyA6Df+akUFRvgy6dINjqGMSDvnvJOXN/wL5UhGzrLh9BDW/FF3tyUNGwMAAcFyN56+oaT2XfWLho41yEl9dNbGWu7DsapdmePrXUtRH69wXdRa3/iLl/0l6EfcA1+qaiZklol/bu5opf/PR0MsXkqipxsj56btzVCi6tRVV+qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X9xtL9nw9WoT79GOTt9BIpZAczN1kMX8SBn3P5yfnds=;
 b=YFxtZOFbxrQMmlapC5HSnhhZ5E9RAN+5Fw8bSGfK85l9fxsCUJawNOhzeQjqX4X3SVBt2ygjig23dOHbw8le7cAtIr08nd1cfABSVg7t5L3/16vUdNTVkGl536t8yOQoE1AKqHKBj3hXeLO2h/O2jNV6SSxtmnUdsiLF+X175uYUoyfF0ag9iPHEdKbs/NZ5+AMBQEJczW9gsBcOg0Sl1S3SEV7Ds6KjxBEYvm3EamKpYRqq57XlBsZxVBxItow+5im6V/1osfhqyZhmiDh76YntEnJdRGssTRSg+6buduyDXVwX/0hSUFyk6H0MIfZJ0PzmYCxruxgX+pW9WwHAPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ5PPF263E38237.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::81a) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.14; Mon, 6 Apr
 2026 08:45:29 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9769.016; Mon, 6 Apr 2026
 08:45:28 +0000
Message-ID: <538fcd49-d6d9-4234-9064-5b8076a047c9@intel.com>
Date: Mon, 6 Apr 2026 14:15:21 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/9] drm/i915/dp: Validate "4:2:0 also" modes twice
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, Nicolas Frattaroli
 <nicolas.frattaroli@collabora.com>
References: <20260330235339.29479-1-ville.syrjala@linux.intel.com>
 <20260330235339.29479-6-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260330235339.29479-6-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0057.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b8::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ5PPF263E38237:EE_
X-MS-Office365-Filtering-Correlation-Id: 15ecd1e7-4441-477b-e3dc-08de93b8da89
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: YDyl4Fh+bq9zoX3assl2IdRcu4b0CCSGLxuFTNDlSBN9gE5IkL2SWW3cy95xoSVGrNwO88rYtVJE8QBDq2RzLrC7uI+2jwrlNpY4aK3bGrXPtzfGTKH220KoD0sipEhhv4KrfbIjp4PjWmFOZOFDJCAAZvCwZNCjTWUiMfvG8NMrG0pVaqkYiiqvtyFUUHKGYyq/oFnikQpxr3VQ9jHl7MEvkguKMjrVPI4Wmn6QggTDsX7quuab5xIFZZtDhjvdgieD+oGcb8lB5b5DLXzL9eFfPDApiP2QCQtNgs0+s7v+DIF12e3bZTnSCWCJruylkGqoiDsk8q/sYLmNWgTAwfLBdG4/BXbIIj8q68WK3S5i+kkDJi8qSaAvgdhioerey5jHAAKlhMtiHamCMnJ72P1DqyeLN1MgNJ/O400MtcLdJpDymb3aL6ox0XV8sCHfgfPLhTZ7wwDGlRdP3QOm2JgTHdHRi3y8K8//Uv5V98DAEPtZXgIj1KDvYBC0JEC/gCXXfNty8suy2BF9gxWqOliamT3M+ZRzYasEcoGcz9Syw3Xt9T0aRVzPg5Ca35mHzNL75IBnhxHtYwtsepMUzQvJBbs2jZ+aTlgMBBsi5o/o2TOV3J0yvF8NO0MENW9OCaPf48m95Etzo1ZQeTM85zD3URck/FtH/sqTo+5DkUJVX58ef/WBPvrkgI6p1l+A4cfPrAGR+qbR1kHRWqKtYTJ6Ot8dv3PqZyJo/2kpCyI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eVh0ZG9ZRFp5ZDNsano2Y3hGZm1SV3dkWkpDbFR4T2ttQlpHVTZwbS9SbCsv?=
 =?utf-8?B?ditWZDR2MTJ0UmZJY1VSdytmMHdKeWw4b1M2MlIvY1dJMXhDQ2hsaVl4Ulk2?=
 =?utf-8?B?YUNLSG8rRURWcmQ0ODdoOWVxWkh2ckN1WkVabzBnNE12MTRDazAzNllaemdt?=
 =?utf-8?B?OGtab3YyTXZuZEdway9UZnZPTVB4WndMYmRzUDFFVHZLem1MdDk5ZDhlZktl?=
 =?utf-8?B?ejJnTTd5ZUVFWGRpODBwSWlnenFIdGFJUzVWRmtqN0hVR0lXOWcrbXJVRWhZ?=
 =?utf-8?B?anAyaUw0L09ST0cyYmxHR2NMcU1zKzcwZTBabHBEZVBFREwyNEdOOEFENDRk?=
 =?utf-8?B?SjZvQ21Ha05NMm95a0UzbWVKZ1RJTjEwalYxNUc0UnRnYzNqLzg4dGZBMGRX?=
 =?utf-8?B?T2FBR0JGa0xTUGdQRjBWejBaajVDU0pVbk5WalhRbVhoUU96WkFldFppMWhm?=
 =?utf-8?B?RXBoWGtiOHF5RmF4bEk4VlpIZVN5SkFHSVdSTnAvMFEreXNYcmphSTN6TVBz?=
 =?utf-8?B?bHRxYm01TE5IbWYrMUprdllPcUc5MVlQUFNaOFNhZi9JWU5iYmpHb1VDK25P?=
 =?utf-8?B?WGZoSnNTaHcxN1NUdi9CWDAxMjZtdGVBRWgrWjVTL1RxSGQrK0VjZythZEpz?=
 =?utf-8?B?eko5STJJL0lWMG9ubVhtc1ZuamFUSUVhNThBSEo5VTgxaUhCOEdkSlpXSXdC?=
 =?utf-8?B?cDBHRXYweUxIMktIbGtWMDBRQTFOaTdzNVM3aG52R08rbktDWWJqREdmM0Ur?=
 =?utf-8?B?eTZpWlRRV0Y1MDFrUDNRYy8yanhvaTZFTzllRUZiQmJVV3Q1bTZRMXEwclpP?=
 =?utf-8?B?YUkxTDZuQXhUSnJSZEpocXhrMVU3YUJMQVBuTmpzMUpBbHI5bnpPNVEwQ1BP?=
 =?utf-8?B?VzFNOFhtRVBOK2RGQWdFb0QyeFVnbjl2UTNkYUtzdjZKRU40TTVjeHhKalVn?=
 =?utf-8?B?N1J1VlNDTVJodHpDTjdXc0lnUW5YY3NwRER5b0J1UUFhVDl1Rm5KNW83NTF2?=
 =?utf-8?B?bGFlUEZFRDdSNXlmLzQ3RnJjVFJsRDBvNmE3OFdKSmdZSTZsL3R0NE5nd2Yy?=
 =?utf-8?B?RUE5VmRobFR3ak9KdVNndFhub2Fud3pFR2huT0RoVVR0ME10Z1U1cTVneUp2?=
 =?utf-8?B?aWQyaDNCSHB6dUdKOTVTVWg3R3FodHlYNUM4cW9EK1RZYjRXanBEZ2VvN2NQ?=
 =?utf-8?B?S3VrZHoyOWtCOGlabU5RZWc4bTdiQU05QXBrZVBQRXMwNU1LMzRsRGd0RXpO?=
 =?utf-8?B?ZElhUGhWcTBZL0cyTisrMU5RWDJ3MmMxWVZXSitHc1J0YmtlSzlFZ3JSTHFV?=
 =?utf-8?B?QlZaUVBjS2ZIV1VnaVR1endnYzcrSjNld25KUU94YWV2NDdSZnA4N2FPSTF4?=
 =?utf-8?B?MjZTWjBZdS9sRGxLNEZSbUE5TkZQcC81UjBEUUgyeTNQcWoxVndEVzUySHdW?=
 =?utf-8?B?TC92UWlxQjZ2REZTYmxXcnM1SUpmTDY4dHRpNWtZZVpmT1J1QUwzaWZVV2wy?=
 =?utf-8?B?Q0xZTnVDVXFoSm50ODRKb2VzdHV2M0JCNDZBR1IrOUJWUmdsWitZb2NRdnM4?=
 =?utf-8?B?R3J3MzNKbkF4NTlicG8wdnp2emVPVi9pNVBLWm1YZ1ZwcDZVN2xGUjkyamZs?=
 =?utf-8?B?ekU1UE9LRTdKRnRscU0xWVQyZFFqTFdVaFlOeEFoNlg2TnF6d3dCVVN3ZmRp?=
 =?utf-8?B?bjZBMU1FTnNJNjR3WXlFVTY2bWNOeEFPdnp6SVpUS0tYaHYvMnFRaFdzMTFu?=
 =?utf-8?B?Nm8wT1FhQi9La05KcEVZTHUwNXBCQVR1M2hkdk11VWFQQTVxMHF6Zk9iNEgy?=
 =?utf-8?B?R084V0JRYitEckFMeTU1dHEyanJLcm1Wa2tEbkNoV2FNYisvbHB6WUFOVFJw?=
 =?utf-8?B?cms0S1h1RmNvUzJDYy9PMFk4U2lKMS9WdUpRLzJaQ1NYbnluS3FEWDlwZ1p1?=
 =?utf-8?B?SEFueGxvdWtsWHUwTVlYcS9mK2hDY2NzczZRRUhPRmFSV0p5b3VvYWJGWUwx?=
 =?utf-8?B?dVA3aXJDNmlLcXhkWGNldko2KzFvYzhHSzFCZ2xicWNYQWtOa3JGVmMrQm1a?=
 =?utf-8?B?cERYd1dRV3NxcTBjcFNzTi9mbmx3TjlWSEJRUmtMOHozWnRicjhBeTk5YWRH?=
 =?utf-8?B?Q0F0N2pDeTRwWFBnWTlLLzdkWGVkUnZ6b2I1Z01hdW1ZTzRucytGNmNsdXdM?=
 =?utf-8?B?K2lWUi9QOUtkMk1KM3k4aEVtR3ZlNGl2NUJqOVlLMERUUlM3SytFdEhtRkZW?=
 =?utf-8?B?cmduWWZsclRXVG03VjhJMjVEbkZyM3pxRUdHUEhxS1Y2cS9IclgyemZLOWxP?=
 =?utf-8?B?V2s2ZkFRSHFZbVpXS3pQNDczeGZmeFFjTzdFMk5YWlRUMkpsOXBBZnNqTlBo?=
 =?utf-8?Q?waTbsLtcvAbSRFUo=3D?=
X-Exchange-RoutingPolicyChecked: j4WBOKcyjRPVZZxKu42SNpKNlUvdM5wYQizsY+KyMP0o5mdUF1MVHpgMG1xe2HOhRHPEypCXV7+2hKNAbG04qQjSiURRBgXWKjOc/1v79wW8cBXOT41zE+d+5pTwIY9Q8azhgn/3hCpoSqpbVwRMEpRG3UNfuq1FcIbXCRjhNcaW2FLS2uCWvhgBsfvOCeonnKOHlR+ZqSgZ1CrjiglnAQGdWQYhH8w3asLXkVTeTLpEIF9m9jRR3/UoIHoHrhvCIkMjav99i9dahmjXEH/L14JplxkI9dQQlW/t9KyM6ssVGGblBZsb7KiZK95HKsnXDa0NX84qJVG3QnY0SLccoA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 15ecd1e7-4441-477b-e3dc-08de93b8da89
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2026 08:45:28.7874 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iaUiCfa28bBniRVio38RYJ4+b7J7Pi0TP36V2/eJZYS80evwB5AcgwF0wrv+4lK9e9XKn8aCjZCqi47wNUhbbjO5l7rOqD0/ruMMNbDj/Lw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF263E38237
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,collabora.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 1F38D3A25B9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/31/2026 5:23 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Currently we only validate "4:2:0 also" modes as RGB. But
> if that fails we could perhaps still use the mode in with
> 4:2:0 output. All we have to do is retry the validation with
> the different sink format.
>
> So far we did the double validation only so far as it affects
> PCON TMDS clock limits. But validating everything twice seems
> a bit more sane.
>
> Note that intel_dp_output_format() might still end up picking
> RGB for the actual output format (and letting PCON deal with
> the YCbCr conversion). So I suppose we could still fail the
> validation due to that, and forcing even the output format
> to 4:2:0 might solve it on a third try. But we'd need the
> same fallback logic in intel_dp_compute_config(). For now
> this seems sufficient.
>
> Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 114 +++++++++++++-----------
>   1 file changed, 61 insertions(+), 53 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 230b45acde29..86319bf09a19 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1320,12 +1320,10 @@ intel_dp_tmds_clock_valid(struct intel_dp *intel_dp,
>   static enum drm_mode_status
>   intel_dp_mode_valid_downstream(struct intel_connector *connector,
>   			       const struct drm_display_mode *mode,
> -			       int target_clock)
> +			       int target_clock,
> +			       enum intel_output_format sink_format)
>   {
>   	struct intel_dp *intel_dp = intel_attached_dp(connector);
> -	const struct drm_display_info *info = &connector->base.display_info;
> -	enum drm_mode_status status;
> -	enum intel_output_format sink_format;
>   
>   	/* If PCON supports FRL MODE, check FRL bandwidth constraints */
>   	if (intel_dp->dfp.pcon_max_frl_bw) {
> @@ -1350,25 +1348,9 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
>   	    target_clock > intel_dp->dfp.max_dotclock)
>   		return MODE_CLOCK_HIGH;
>   
> -	sink_format = intel_dp_sink_format(connector, mode);
> -
>   	/* Assume 8bpc for the DP++/HDMI/DVI TMDS clock check */
> -	status = intel_dp_tmds_clock_valid(intel_dp, target_clock,
> -					   8, sink_format, true);
> -
> -	if (status != MODE_OK) {
> -		if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
> -		    !connector->base.ycbcr_420_allowed ||
> -		    !drm_mode_is_420_also(info, mode))
> -			return status;
> -		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
> -		status = intel_dp_tmds_clock_valid(intel_dp, target_clock,
> -						   8, sink_format, true);
> -		if (status != MODE_OK)
> -			return status;
> -	}
> -
> -	return MODE_OK;
> +	return intel_dp_tmds_clock_valid(intel_dp, target_clock,
> +					 8, sink_format, true);
>   }
>   
>   static enum drm_mode_status
> @@ -1464,15 +1446,14 @@ bool intel_dp_dotclk_valid(struct intel_display *display,
>   }
>   
>   static enum drm_mode_status
> -intel_dp_mode_valid(struct drm_connector *_connector,
> -		    const struct drm_display_mode *mode)
> +intel_dp_mode_valid_format(struct intel_connector *connector,
> +			   const struct drm_display_mode *mode,
> +			   int target_clock,
> +			   enum intel_output_format sink_format)
>   {
> -	struct intel_display *display = to_intel_display(_connector->dev);
> -	struct intel_connector *connector = to_intel_connector(_connector);
> +	struct intel_display *display = to_intel_display(connector);
>   	struct intel_dp *intel_dp = intel_attached_dp(connector);
> -	enum intel_output_format sink_format, output_format;
> -	const struct drm_display_mode *fixed_mode;
> -	int target_clock = mode->clock;
> +	enum intel_output_format output_format;
>   	int max_rate, mode_rate, max_lanes, max_link_clock;
>   	u16 dsc_max_compressed_bpp = 0;
>   	enum drm_mode_status status;
> @@ -1480,29 +1461,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>   	int num_joined_pipes;
>   	int link_bpp_x16;
>   
> -	status = intel_cpu_transcoder_mode_valid(display, mode);
> -	if (status != MODE_OK)
> -		return status;
> -
> -	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
> -		return MODE_H_ILLEGAL;
> -
> -	if (mode->clock < 10000)
> -		return MODE_CLOCK_LOW;
> -
> -	if (intel_dp_hdisplay_bad(display, mode->hdisplay))
> -		return MODE_H_ILLEGAL;
> -
> -	fixed_mode = intel_panel_fixed_mode(connector, mode);
> -	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
> -		status = intel_panel_mode_valid(connector, mode);
> -		if (status != MODE_OK)
> -			return status;
> -
> -		target_clock = fixed_mode->clock;
> -	}
> -
> -	sink_format = intel_dp_sink_format(connector, mode);
>   	output_format = intel_dp_output_format(connector, sink_format);
>   
>   	max_link_clock = intel_dp_max_link_rate(intel_dp);
> @@ -1600,7 +1558,57 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>   	if (status != MODE_OK)
>   		return status;
>   
> -	return intel_dp_mode_valid_downstream(connector, mode, target_clock);
> +	return intel_dp_mode_valid_downstream(connector, mode,
> +					      target_clock, sink_format);
> +}
> +
> +static enum drm_mode_status
> +intel_dp_mode_valid(struct drm_connector *_connector,
> +		    const struct drm_display_mode *mode)
> +{
> +	struct intel_display *display = to_intel_display(_connector->dev);
> +	struct intel_connector *connector = to_intel_connector(_connector);
> +	const struct drm_display_info *info = &connector->base.display_info;
> +	struct intel_dp *intel_dp = intel_attached_dp(connector);
> +	const struct drm_display_mode *fixed_mode;
> +	int target_clock = mode->clock;
> +	enum drm_mode_status status;
> +
> +	status = intel_cpu_transcoder_mode_valid(display, mode);
> +	if (status != MODE_OK)
> +		return status;
> +
> +	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
> +		return MODE_H_ILLEGAL;
> +
> +	if (mode->clock < 10000)
> +		return MODE_CLOCK_LOW;
> +
> +	if (intel_dp_hdisplay_bad(display, mode->hdisplay))
> +		return MODE_H_ILLEGAL;
> +
> +	fixed_mode = intel_panel_fixed_mode(connector, mode);
> +	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
> +		status = intel_panel_mode_valid(connector, mode);
> +		if (status != MODE_OK)
> +			return status;
> +
> +		target_clock = fixed_mode->clock;
> +	}
> +
> +	if (drm_mode_is_420_only(info, mode)) {
> +		status = intel_dp_mode_valid_format(connector, mode, target_clock,
> +						    INTEL_OUTPUT_FORMAT_YCBCR420);
> +	} else {
> +		status = intel_dp_mode_valid_format(connector, mode, target_clock,
> +						    INTEL_OUTPUT_FORMAT_RGB);
> +

Perhaps we can write  a comment or TODO here about the PCON special case 
which you mentioned:

that even though we are trying 420 sink output format, with PCON it is 
possible that RGB output format gets picked up (if Pcon supports color 
conversion).

In which case the rest of the mode validation will be wrt to RGB. Unless 
we handle fallback in intel_dp_output_format().


In any case, the patch LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> +		if (status != MODE_OK && drm_mode_is_420_also(info, mode))
> +			status = intel_dp_mode_valid_format(connector, mode, target_clock,
> +							    INTEL_OUTPUT_FORMAT_YCBCR420);
> +	}
> +
> +	return status;
>   }
>   
>   bool intel_dp_source_supports_tps3(struct intel_display *display)
