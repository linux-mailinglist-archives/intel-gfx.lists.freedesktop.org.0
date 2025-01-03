Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6299BA00895
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 12:28:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 079FE10E883;
	Fri,  3 Jan 2025 11:28:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GKQliDxG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35F7D10E883
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2025 11:28:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735903688; x=1767439688;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=eaIunJ1tS0hokiDSBJ4Wcwt/JPFamnhdk79s70f3JTc=;
 b=GKQliDxGBE+HtiJB4TcgUUpGUyuahRBonWM5tgwo0yk80oHidNCy1ElW
 /nSG65v+cCNyVQkzPdpR3LObV8Lus0sH821k2HHguZMd75N3hxqQyBBc/
 zTMzlmEfjc3j8OA80dnYjkgRzncVb7z37VCdGxxxoJPJCUIw4ZA5comJW
 U5DTSQxR7WQfvRRbOrbmks8b+tJucs4FlttkqlbbB8l/9zXowSP//vFVX
 9wOdsehS4GTYyVtagaPWNNbFXOPYk8Peh+U2yKAP5QnPD/h5qGdyoZJqV
 4sobR30PxxX8MB6z37LP23jzq5/EbAm8tWc1kkeqh76PkLk261Ct65Qkc g==;
X-CSE-ConnectionGUID: /pJUPo+YTzWo8qjmmJVUmg==
X-CSE-MsgGUID: Su+fGSYnQRmrn/hvBTSQvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="53561866"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="53561866"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 03:28:08 -0800
X-CSE-ConnectionGUID: 7tlfIhAdRquZRN+0j6TFIQ==
X-CSE-MsgGUID: pUdgYbd/Swm33/uW9GIQ5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="101639688"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2025 03:28:07 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 3 Jan 2025 03:28:06 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 3 Jan 2025 03:28:06 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 3 Jan 2025 03:28:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nfVuJmIKlkEW9QFI+BQoBv4FU6ucCzsV0TigJ4DQJokpQQs58Z8uZ/fn6GDHVjPCN3FUrD/cmN6qZ1B18eUuYwqWcWWGlDH7NwL2ooTaqgln49eNh+Qjn82S1zdWrIVl4PaMOelt9O/s/2TizlnUqaXgy3C0aALCuOS0IMGnX9Q7JHJV98BZPczAaQ5WP7XVg39rTDu+iGVlfL3lh9CBN2IlKBowrW/ScByt9FXy+4xeqGLZlPumcDPmoL4DLMi9O0LwptIqdHR2yFUrZLErJ5TrmMvlt9z5qrpuQXTbrdn747b9CHBQ/WyRj1cthojbKKIZs2LVExITM+Rr2geOkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b8vcbZZNTwKtH4XsZHt2tHBeYUVSgBWDNmupIyBs4aY=;
 b=A9jRH1rVk2CryKtdBs8u/6S7Zx/SBvsckbf0qZVVs72eKfw17OhkH/eZ/mBqly4OAXIt7Yajl9FN+F6z90e56YKI2LPWL8euPlLGGtAunfEsVXvR1Au3+L7JyJLoEBjzZcxS6BT+vuoMo9k/rYVWcOEPVNgm12hZFEApZ118/2J7HP9By/WHbFrGF8iI6DglogZYJdClHupznuEtvip0TwIZPGaK+cuCVTLOXUBzl0Odsbo1KNIUBAHtovfaU3t83XNVpLxWd3L2dNiqn+viur6EEF50KYQZFgvgrB/9A57LDAPknVivaiWtf2RM+pCq2QwS9x12yjRr9UA16ORa1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW3PR11MB4698.namprd11.prod.outlook.com (2603:10b6:303:5a::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.14; Fri, 3 Jan
 2025 11:27:18 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8293.000; Fri, 3 Jan 2025
 11:27:18 +0000
Message-ID: <56b22cc1-90c2-434e-9003-8b907f9669a0@intel.com>
Date: Fri, 3 Jan 2025 16:57:11 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/18] drm/i915: Fix include order
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
 <20241210211007.5976-4-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241210211007.5976-4-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0239.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:eb::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW3PR11MB4698:EE_
X-MS-Office365-Filtering-Correlation-Id: 29315e52-511c-4c8c-279a-08dd2be994f9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VFZFSTZCMGRNL0tKeFQrKytsQ3dEOXVzaXZGU3psN3htUENpQzQ5NnI2M1Ri?=
 =?utf-8?B?K1JLWnZ3YkhBVk1oNkEyZlZsWjZzTVdmUE8xSFVidG41cWxaR0Vsc1plMXRT?=
 =?utf-8?B?U01BVmIwbVJOSkNZK2VTT0JPeFE3cWNJVUpYZ0NhNjYzUGcrbVhtZTZXOWsy?=
 =?utf-8?B?dkxxcFNzR05nbVlmL3orVzJzaVBRcEErd2NnV29HdGI1eFFBbWVsb25VUVB0?=
 =?utf-8?B?VmZ1R3MybGVSaGdNcDVFUXNCazRsa1RJbXB6UDE1Z0JYa0I2cWFqZXprV3Vr?=
 =?utf-8?B?eDZheEg4aWwxZW1ncEo4SkIyZXdYM0pDbVBXZUFTZjJPbVduTlVkOXA3MEpM?=
 =?utf-8?B?SW1NNGUxSDMrcmNqVDlpOHRpOVFKaUFFdjljRlpjU0cxYlRKTERCeVJvWXpF?=
 =?utf-8?B?U2l0OXNKRjFiZWExNjVrTEdDd000UHh1VzhjQjhoeGZrNzgrRDJMdVlYOC9X?=
 =?utf-8?B?RTJuQTR2cWl5UTlhdE9PU2R6QzRZNVl2aWx6T2FTMVAyNW5rSW43MENFSmlM?=
 =?utf-8?B?VmI2N1dCbnFHTGtWMktWamZxUGM5NTBFMytpazNUOGNQd2c5R3lGWk1BalZ6?=
 =?utf-8?B?ZmF0aFF1Z2thYnIrR0kvTFp4NGhOK0lpZU1mSFRjZEgvdFFjZzNYR1E2QXp5?=
 =?utf-8?B?UzcvVVF2amN3SFFpeDVkQkRMNVpLSUNhUjdqMmZ6MldBajRUM2Q0TU5sSVY1?=
 =?utf-8?B?bW52SXphNmsxWGxDalFrSzk2aU52SHdtN1hSM25vYktkQUkyakdWbE50b2tI?=
 =?utf-8?B?Qmp4SFVmcFBRZmxiZ2V4Y1lybGl3VTJCYllweVB1Ym1WTG9obzg1VVJJU3Z3?=
 =?utf-8?B?RXZPSHllVDBnM3EvUkxNVjZkMEtid2hFbTNqbGZEVHlIaDBZekJETnNPTkl4?=
 =?utf-8?B?cU1kd1E5aUpGY0ZaSFN1U3FrR29SRDJUbnpMdUM5MWcxNUV4c1RncUZxOXpG?=
 =?utf-8?B?UHpOK3hkSnFyMHlPV0JCMkhnYXhDWEE4dEJmdG9uZnc0SDNxOWkvb2w0QmVm?=
 =?utf-8?B?QStVWGVUbmY0c0FGV0FJWnhKOU00ZFl4amxYTys0eXVCejc3TjJOS3dkV1J5?=
 =?utf-8?B?ak50ZUpWYkh2SklqQVFMRlRUT1FvT28vQTZqVGZxaWFGT1dubFFSaExWbDVI?=
 =?utf-8?B?OThXdXNyYlRNbnNmL3JoM1A1cFlkRHFyVU1YUkgyWnVybHJPUEFKZUtTY2ds?=
 =?utf-8?B?cnlsaXRwZldrTWxwV3EzSFJQU2ErSFh0RStuNHoyaFM1QVlmSTNOZ0ZmSm5m?=
 =?utf-8?B?bnNwYm5zaUc0M09ESHB3Mks3T3k2TGVFdGJwbEFZN1pIOUUwcURJaThldHIy?=
 =?utf-8?B?NmhMWW1FcEI1TXVsUGFnYTJnb0JEWWFiK3E5Y3BDWnVxTGFIQ05lNlhSaXZh?=
 =?utf-8?B?OXlCenhoc3dKSENmUU9nSGJ0YkhldjFqY2E5OWJVa2dNczhGNnpsdzVnbzZR?=
 =?utf-8?B?Z2xlN0tXc2ZDTnVjK2MzVVZBOUtKaks1Um5jSUYvQTJManRGNHQ2NG5rSncw?=
 =?utf-8?B?T0NTcjBVbEtCT0lUeGg1K2hCYVppQ0F6K3BEZnZDbGR5RDlxcmVoaVYzSVpo?=
 =?utf-8?B?WUxzUmI0RnBuN1JIa0p3T1B5ZFNIL203MnVaQ2pTZUovQXRvSW44eWVEaU4v?=
 =?utf-8?B?KzFEcjdUUVY3a21XQWZjN09YcnNRb2pWVFMvQ2w2dXVjRTF6WXEwMDR4UjNw?=
 =?utf-8?B?TDZiaDhBQ1h0SUR4M29LNWU4MTJhREJONk1TTzVzN3N3YXRLNzExRTRuN0JV?=
 =?utf-8?B?UWIzQWNjclFjSUFQODdnblVrS1ZkTEphNEY1YUNyelc1a0krM0Y3empXbEZl?=
 =?utf-8?B?NE9TeEJqQ0lJeVRhT0xNV1BTWHdyNUlucERXOWtqelA4aUNsRHZBbm1FcVA1?=
 =?utf-8?Q?AkEMtUDhjtAwC?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OGNXTXZUUzNEWkhzWUJUbDJmcmJ3ajhNNVMyaUYzbnNocERFZGNCZzFjck90?=
 =?utf-8?B?ME05K0lZTHJHSDZJdFV2cC92RUJnT3ZvSHZlOUpVSVR0UThtUk9QM2hzTk96?=
 =?utf-8?B?V3lBMmdDdlNxR21pMk5rTUNSSEFQZEpoUlVSenpNMGp4dHEvM2R6Q1BwWVZq?=
 =?utf-8?B?WDgrUVFCUFBVN0xsMllmTVNhalhnSjlSa2Rmbmg1N0Zsa1MvR2RvbzFCTXNs?=
 =?utf-8?B?NmlDa3EzbGtiUW1yd2JFc2g3V05kUm9RZ2NSZlV6MFEyaEovcW5NRk9OZUo3?=
 =?utf-8?B?enpLRHltbXgwLzBNZlJZaHpjeGxETDNlR0lRTmNvc1Y0SDZQc3h4WFUwdmdE?=
 =?utf-8?B?Q3hyWkE4M09KN09wS0pPblBYRlN3TnRCVXJMQ0RYNnJMdFNFNHJFTEdnMk1j?=
 =?utf-8?B?WnFyV3FsMnc2TlBPK1JlWmg5SUE0dWZ0SHRpTWVVVVJaT0tuMGk2cWFXT0Fv?=
 =?utf-8?B?Y3VTWUlwQUVESFJLN3Q1aCtCMUhVTDRoQ0IvODlXM210UTMrTVZKZHZHMC9s?=
 =?utf-8?B?V0JNZDIzZ2t2WkM1aXBQb0NXMU5qOE5MTFdRUk5ERS90b3BYMERma2IyMGVS?=
 =?utf-8?B?REJYcktTZ2Znd2t1RTduZTEzYnphQUZKeDUxNUZZNTNBcHZyeHpLWHJmVTdY?=
 =?utf-8?B?ZUs0MkVyWVpRLzkyVzlIRm9Wc01zV0U5V2RFRWNyY1FoemdwT2RnK1A0T0VW?=
 =?utf-8?B?VzEzajVKRmFTT054aWtGVlZEYkt0b0ZEeFREZHJVVFJId3lNV2pjalRiM0hD?=
 =?utf-8?B?eHdBMEV1Ny9xWHdqU0s0Y01BNXZGeVpmbkhyZHZyQ0JPZkpZb05sN2RhdU1t?=
 =?utf-8?B?bjd5RVRDaWFUdytEOEQzTTFaTFVOZ3pOdGZPRC9nU01nTFU4QktZdWQ2ZGkz?=
 =?utf-8?B?Ni9nb0t2SmVjQk8wako3VDBpWkZrVXB4UlZva0NEOFFlZFFpV2tsMnBzR3RP?=
 =?utf-8?B?cW5vR2lvQkFRRU5SMHN5Sm1YdVREMlBjaE4rdm8xTjJTMmdtSHZNamE2alhu?=
 =?utf-8?B?SWVDTkRreGdScG5RNnYrTjY4RklEWmltT2lna0xPb3E3R01GczVaUnZzNStU?=
 =?utf-8?B?M3RBRk9EbG5nbXQ0eVFXM0Zrcmphblc4MDZMME5MektLdlQ1bEpkYUpaVTRk?=
 =?utf-8?B?Y3dqSUJ4VklvS2hHVWZ1YjJRYUtDeVBSUEtJZkcxbHBvR3FYY0QrQTBTWnBi?=
 =?utf-8?B?aFZvWDE0dWdRc2pDc3pYNzhqWnpZOTJIRUkwT3doR1N6aGxyZVlHelhSUGd2?=
 =?utf-8?B?UkUwSEQ1QS85UGYydzJ3dkk0NjMxb201UldUZW8yRWFKbDhvaGxkcjAvVE1Y?=
 =?utf-8?B?RWlCbGV3ekRsNjNGTS9HbWRMQ1AybFVudnZXS1h4dEh2a0hTQXJqSDBuYzZr?=
 =?utf-8?B?OTJhNXE1QWg3L050RjRuRi9lYWlhOEJHMkwvWnI0SEIzVitacmdYL29MQ1lJ?=
 =?utf-8?B?Wk5va1IvdjZaWThVc3FuMFU1M1lVN21CMTRVNm81Z3JZK1hRODhtdXNOWVN0?=
 =?utf-8?B?QWxqVEtKNUlFQXVXM0lUR2xVYTExdnVqVzAxRGFuZzJHYi9HR0NLcU1Gckxz?=
 =?utf-8?B?eFVsUG1VakFEd0ZxSWtkR0FFSmZGWnhtY0NlNzRheEJuUE5pZWpRdXl2VDlv?=
 =?utf-8?B?TU0ybWk0Ry9heHhNOHZlMWl3QjRWK0R5M1I4MG16N1p0a3lQSGJvMS9mNzRj?=
 =?utf-8?B?aW92ODdXclVhU0t3T1NXSWxWT2k2Qi9HenlVdHd3Sjd6MzF0azZJR2FwYVJI?=
 =?utf-8?B?MzIyYm1NbVZpRXNNR0JjcDVqbDF3clhzMzRnWnFHaktrQ0dnY2tWd3FmQTNZ?=
 =?utf-8?B?aExST3JYbnBHUnU4RlhRNk5GYjRMcjV2bEVkN01HdC9yL1pDN0kyUzZBMHBu?=
 =?utf-8?B?VklnNzNURURiZFhEUnhiZ2JpL1Rnb3NWYWd0Uy9yYkJmVzJOUkNQL3pTMEl6?=
 =?utf-8?B?aFdpSENzdUJJMkRHUXVQQm41TEpBcG1MaWtuZmNKSDJSR2ppOUNFYzU5ODl1?=
 =?utf-8?B?dE1ybHhnZlRCcGtnWS9jRzhJdi8zN2ZUT2s0UW40S1N3dElNbUZUR2UyNC9p?=
 =?utf-8?B?ek05K1FBSFlHUmQ3aGVrS3dVRDJ4cDE3QjI1eHVFZ0xibnlKZ2tCdXN3YjF2?=
 =?utf-8?B?Y1AxK2tlV2NTTkRMQUhMamxBdHpURlpHVGd6d1ljbHNaR2hPZ1VWR0xObXRX?=
 =?utf-8?B?YXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 29315e52-511c-4c8c-279a-08dd2be994f9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2025 11:27:18.6731 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: THK7aQ7wfBxERuq2KX41mDewEjaIBtVYpJ+pSnTKpsJ58PWsWdGlOUg+QWXyYCCZUZ4CvUi8EiryYYqBdY2KTxWrwARFkBCLjBA7qCxOJdI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4698
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


On 12/11/2024 2:39 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Include the headers in the correct alphabetical order.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index b386e62d1664..1b0a8e001141 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -8,9 +8,9 @@
>   #include "i915_reg.h"
>   #include "intel_de.h"
>   #include "intel_display_types.h"
> +#include "intel_dp.h"
>   #include "intel_vrr.h"
>   #include "intel_vrr_regs.h"
> -#include "intel_dp.h"
>   
>   #define FIXED_POINT_PRECISION		100
>   #define CMRR_PRECISION_TOLERANCE	10
