Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gFtDGgX2TGqEsgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 14:50:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1152871B879
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 14:50:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="O/yy9IC0";
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9423210ECBC;
	Tue,  7 Jul 2026 12:50:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 489AE10ECCE;
 Tue,  7 Jul 2026 12:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783428610; x=1814964610;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=ijTTxWdU0yDYZ76Jgi/hUMoS8sZL9ZIwfh5e+oiTiQM=;
 b=O/yy9IC01XCEFJDOlT/QmWEiaPfthlsFo4JyWTTu0oh1hYZrFwVYHXtR
 IIWFxjbL82xZxhNKyZ0bfRKsUUzgekIqi73ctQ5mgLY1w5kJ8bYxFjCKz
 zoKOm/2b3fRn7tVQFo7noc5/+eoSV4g2axmg1w9m0KggLQwm0mo8R55/p
 /RIHPmJ/79p+dJK+oYGkmN93d9K/r5yzN47GRM5fdApm8uwM8/5Jo1dWn
 m6rARUqqPi9KLlLkfpK+j3pW57O5Tb233KSUQ5CDeYKw4qnpE/LINpmQu
 bJ0LxzBIUhuolOcBncV44wXM9+IUbG0fi9lno59z4vcSWZV3/DvD9NPfb g==;
X-CSE-ConnectionGUID: gb0rAX6bTliBZa1feQ962Q==
X-CSE-MsgGUID: 1K/rhiK8SaWCqEty16ytSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11839"; a="94718670"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="94718670"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 05:50:10 -0700
X-CSE-ConnectionGUID: CqJSzOfWQGOrIgwGv3957Q==
X-CSE-MsgGUID: 5h41E1AVTo6xF0HmC6/Z9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="292159430"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 05:50:10 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 7 Jul 2026 05:50:09 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 7 Jul 2026 05:50:09 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.7) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 7 Jul 2026 05:50:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b54VBQwWPZLSatYN5xN8h8cO5mAf9yBTbey2Lp3WNOYWLcynQb48KrB+PYd/olLdBnZK/gRTAGwANhkzv5MO1Kw6Y9js5F5y0cuVHv4KFBBQNvG+CN7wxEdTQ+Mu6m017y37rS7UcCBul8bCUftfYUPWWRxaKy5Xcw9fwYYxF1XF3z4lgIUcRNYnR6nWIkbFFA/wzxRUPHiNSTSsBpOY5tv2PICi3Zf/JJ1E0mqSI3+R8mVHE4bWHZi9NA1esDNjvWPKj1Rrz/BEdOBHREs/ln9ACjIbr+nQWcKldmNngd+l3JpczhizSu+09Rxv0u6OQC0BznbLhJ/8S2/bS9RY7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oofud3r3bBVwCrFgc1e7B9xqogDG+9FEXRjr80O6K7I=;
 b=BxPgufoW4JYNmc9YuuvETUwwpU5mEvecXzcpnsV5bC7h5F81KanTc10gaS6PoRrtLAl9UBtXdU4RagoRmtMo+1YHVhJoRKqxYPyM9H5gG4tts7lc4xKuQDrLken/tw6TRE/nKuyjJTc+ptNOFveBGpt7SWPm4meKJ7ymIcPoMcU779xFcAel++Tb9+L8+R0XzxyBCJ71Lj7KEB4uIclYUvUuNEnMNNCGBTzRfqvqEqt7LaFreqlRy28adR1zUA1VdyOmEuK2/7MGtzchaaUYhdRXxN+lGx2VhugeFCxHjjFMOK+wSAIbJDca7sUmJ4MAltWHu3boZ/YYH2UZqupWTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by SA2PR11MB5097.namprd11.prod.outlook.com (2603:10b6:806:11a::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.13; Tue, 7 Jul
 2026 12:50:07 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0181.008; Tue, 7 Jul 2026
 12:50:07 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v3 33/34] drm/i915/kunit: DP link: add update config tests
Date: Tue, 7 Jul 2026 15:48:49 +0300
Message-ID: <20260707124849.135319-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260701153204.4124150-34-imre.deak@intel.com>
References: <20260701153204.4124150-34-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: GVX0EPF0005F6F2.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::255) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|SA2PR11MB5097:EE_
X-MS-Office365-Filtering-Correlation-Id: a791a797-6173-413d-7ef1-08dedc26459b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|23010399003|1800799024|376014|3023799007|11063799006|56012099006|6133799003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: w5fzKN/Gav0wJLj8m2xzcrAZTHktrpBw61nWe4qSaRewJ6kCuD9WA3TefimeDJ2PzvKoIUY04vidF7Dh5744SzfiXDqLoyWJlaZEK1LCVgfbxUwlPBXLHKc1le6hSALJxmgAPWvK3vjRhq9+b0y7No1a22hzjN7yAfk5/5/auPbrK46sqBrCrMOwwtuqquoYPaiS//XKGzRhOMKaJTVty558l6qDXDEGQ1Y5f/AxulS9SM5aUIq8gXXIZE7AAPL4YQ9oIp+ojVKbHuGzP2F+BsOVPMDeZqoe03mJ9kAqBjHPZ3fWHZPq3IE0EleALBITQfWcC2cATxyqLFyvPYuV9h9/jptitJ8z5DkgiBaV6kLVPwpUnNO4r9e6/qkeT8mbh8gvsaP0CZIyWywUW/nvCWGYYjVueW9tuIRboOU8AzWofnY84gxh4dE/ONrsOHLvu+o8aF5stPixXh4fZxlBAl+CC5oTOJJ7X/a8MgEseTS40EYuaqW9pYjvVcVt2jzGfmRE+JOFgSkoH0mlpWZdrbfS2fy0PcbcVdgN7ZrsR7vfenKetv4OZ0Nz7DDF8cSo4MGBucJBOVWG6sW3MPHJEBBSoEaqkgR9jHBP0WwgygbfyH//4Y/6o/eQDrYWZCVjPApKfLK/6qVYLxWtLM9bTWcdBMWaWULgW1b2G9zyAis=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(1800799024)(376014)(3023799007)(11063799006)(56012099006)(6133799003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VUxGQ2VrVzNLSDkvdENwSEtsRktBb1psUkM3NW9vVllHYjNYSTV1NXh5SEli?=
 =?utf-8?B?RXRGdmN2bmlqMzdLL1huWGRaQXNrNzljRHFMUHFoRllBZ3dmTVFib3pxaHl4?=
 =?utf-8?B?QnJOVDBkcEFyNXZjbWIxZWM1MmdOcTBoRHRtUWhvbmNBQ1hOMXRyMjlVak9J?=
 =?utf-8?B?c2Z5YXJ4Qjg1UDFtU2lSZk5zTllWNlVxL0Y5OXlIQUc0TnFMNXhXNXpVM1Fa?=
 =?utf-8?B?RE1IYkpYbGp1bVVpanRxeVVvUGNsSkJJQzJ4WXNjOUoyaDJsOUU2dkR1WTkz?=
 =?utf-8?B?ZlhuZ1J1SDc1U2xHeG9mUzZ2ck1VaUtFcVdGanNlZUwvV2p2cEtDV2dvWE56?=
 =?utf-8?B?TWNUU1Q4eGc1QkkyeXo2K3hwK0JTd1haR3JVbW1xMy9GVG9FVGV6NzJNbEY5?=
 =?utf-8?B?d3FSZ053cVFTS0YxNFZxSjMrNmE5cmRyTFZDZm9tbXFMQnhCQTNzSDRwNFhI?=
 =?utf-8?B?djk4WmdsNXA3MzN3ZnMxSUJ4bC9TSkhCRGcwOHdGRXlwY2xyT0tJaVpFemVN?=
 =?utf-8?B?ajk1eUZxMEhMdEJ0RDc0d1JJQVNSak1QYzZiR0F2MHMwcGlhbGUwaXFDVkdh?=
 =?utf-8?B?N2RhYXpoL1M5ZC8zSUNaeFUyVWxXNmlQV1JaUVpsc1E0YThOV09UY0swa0dn?=
 =?utf-8?B?S2lDR0lpVUNGMFBKQldrSEh2U3pMWHFrWFhaZW1yd1JWbzhXUWtXbHU0SWZI?=
 =?utf-8?B?bFprbzlsYXRWeXV6VTNsRDRhOGNVQUxoZmVSb3YxRlk4WTRaTE42ZEJNQk5y?=
 =?utf-8?B?UHhzbzB4Y0JtVkR4OFNRVUNtRllQaDAreExLR3RXZWZTbGJKaXVYRUxBUXhw?=
 =?utf-8?B?RVpGL0YwUVltcnQ0U0h2MUtacEZzOEhHVUZ5b2VWUk1NbFk4T2RWK0lhV0Q5?=
 =?utf-8?B?NHZ3amFySmRiY1ovSEJ0YWtYcXpnZ0RmZnUxdllNdHl3Y2h5ak81Zk9ENUVY?=
 =?utf-8?B?eCs3REZoUlJnY0kvSi9kVmg4MDBwQlY2K2pTYWpoQi9FQjZ1UlJtK3Y2elEv?=
 =?utf-8?B?RGdwY2ZXZ29jb3c0TGxMWGZzdmFmcnFjejRuU2tqcnNaMCt6OW45Q0hvVHA0?=
 =?utf-8?B?YjhwTUpVMU5WTXZHKzdsVG9PS2RCM2Y5UzhheGg1V0IzUVpEVXIxN0ZuMklv?=
 =?utf-8?B?VXR4eXMvT1VPeFpGK052YllralZWNUp4TUdWMzhJRGZnZXFaQ0xzK2J0Yzgv?=
 =?utf-8?B?YlZzazVPSU1PakhQcGdzV3F4WUVwZm9UUnJROFNhQm1vWGpjRGRrMUdXR2ls?=
 =?utf-8?B?YmxsVVN3NTY1YTRlUFhDNU85S2pPT2hnWFB6ZXMxR3QwMW95R3pnREFNei95?=
 =?utf-8?B?NVJKV2N5Y04vT0NoRG5MZXN1S3RrcHFNcjRSbldCZ1c1UG5ZdW8xdnJHRU03?=
 =?utf-8?B?RnRERWowZExxOVg1aUJoZHJHQUxEdnV5ZFlTUm9lRU1OSFVMdFlSOGtxa1RQ?=
 =?utf-8?B?eDQ2QUdRaWNYS2FKTUFjbGdxVGxoVHpySDR5VHlBVXJzT0lSSnNKSUJwdHpN?=
 =?utf-8?B?RmF6Q05yUkVta0R0d01TR29pdzRhRUN2Y1FJdWhmTmJ4T2IyNGI1N3dBTWs2?=
 =?utf-8?B?alVHU1UxaFcrQzliVjV3Njc5bTBZblR1dGNtM1hLRDdtSFYvdGY0aWVnQmtt?=
 =?utf-8?B?bVZMVTZTWHNXRUQ0aFR0K0MrK09aZFdpTEVaMHdIeWFHZ3k3d1UvVEx4V3B6?=
 =?utf-8?B?TDlLSmlkWUlhUWlVWUVqN3dDKytHRUhOdVltYVNjdk13R0RZcjhseXZwb296?=
 =?utf-8?B?M3paM1FjYzVHKytsWDR5MiswWTBweHBXeEZNSElnR0Z2V3dabVdWWmtOOXow?=
 =?utf-8?B?WC90UnNIN0dJSzhRaTIwM043cmZlRUxZVzgyeGlJTTlTSFdJekx1RW5mbXI0?=
 =?utf-8?B?RGVLUjNsRllUTG50Mmp3TzA5QzltUWs5L3ZEMGp2YWxwVmpoSk1PL0JNN094?=
 =?utf-8?B?VTZmWm1Zd0Y2eWREVTBhRUROR0JOcVByYVlXQ2kzVWZ4V1Y0ckZ1QzltUldm?=
 =?utf-8?B?V1REdndUVjlJTjRxZWRaZENodEhiNTllVTJWZEhVL0g3YnpKTDNYTW1ZMXU1?=
 =?utf-8?B?NzdKZ3dMeityajBSRUN2SjROemZWTE4yKzJhNWZTeXRyVnY4LzA2UEhpM1kv?=
 =?utf-8?B?Z1BPazFCeXVQZTdUYXUwNWNxSTdDTmovQ0dxenI4Y1ZIcEFtQlpuZmRndXpY?=
 =?utf-8?B?R3h1U3V1czVHOUE0cTRBdmJsMjNOM0FadUtsdGRyWW0wWFNiSHM3cE5NMmtZ?=
 =?utf-8?B?QjhYMzgrR3hpU1EzT29HK2dIVW9PTTdSZ0RNbCtObEFqK3JCVU9wendWV013?=
 =?utf-8?B?QXNNYkJhYi9kbW5tRFNrc0JlelRwSnRKV1hyc25vRjhIUEhYem9DUT09?=
X-Exchange-RoutingPolicyChecked: H74jx9l1n5jC8d/pi7HyMiC7nw9Sxcs+zf0JNM96rEtdmMs3kcCOUrMhto5tkcaW9pXmf9Ls8ft8N6OypFiX//HN3fErL6ro+A6wzUNs92EbqDYgyZIq4hNHjFXC3GBHKS9VgJT1jhO307l7K9XPFRaVlYjBEBltcRV/AVPRZEEqkBdNBnmTMpKxNXdzy4YIwgeNgEQAFTv1gNhVu2NpFWpJHnYQMbTnNdlSrxuaZd9HFi6jPSOOrfpMy0evwzUYP+t0wggfDDGczJikiQBKUMEmPiMTNfejea5KH4CELbc4s4OngXtzp7TPIVhOwpluk33DRuJeJlgS0DhRrh3l0g==
X-MS-Exchange-CrossTenant-Network-Message-Id: a791a797-6173-413d-7ef1-08dedc26459b
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2026 12:50:07.0047 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5WnKvZxQaXmXwcPujV4QsL2ZtxdwQqycCXYZ+tL0o0wnTcjGPmBXOjVJNmz0fAwA+OQCIXZaBYP6oNYvUWITGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5097
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
X-Spamd-Result: default: False [0.69 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1152871B879

Add KUnit tests for link_caps updates shrinking or expanding the
supported rates and lane counts.

The tests also cover updates with disabled configurations, including
random shrink and expand sequences, to verify that disabled state,
allowed configurations, ordering, and max limits stay consistent across
updates.

v2: Remove test cases for the now unused merge update mode.
v3:
- Test config iteration in lane count, rate order as well.
- Keep space after comma in code comment. (Michał)

Reviewed-by: Michał Grzelak <michal.grzelak@intel.com> # v2
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../i915/display/tests/intel_dp_link_test.c   | 804 ++++++++++++++++++
 1 file changed, 804 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
index f49903433d60f..4d0d1e3792e7a 100644
--- a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
+++ b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
@@ -61,12 +61,29 @@ struct link_config_set {
 	int size;
 };
 
+struct test_config_table {
+	struct kunit *test;
+
+	struct link_rate_set rates;
+	int max_lane_count;
+	struct link_config_set disabled_configs;
+};
+
 static const int standard_dp_link_rates[] = {
 	162000, 270000, 540000, 810000, 1000000, 1350000, 2000000
 };
 
 #define LINK_TEST_NUM_STANDARD_RATES (ARRAY_SIZE(standard_dp_link_rates))
 
+#define INIT_STANDARD_TABLE(__test, __num_rates, __max_lane_count) { \
+	.test = (__test), \
+	.rates = { \
+		.entries = standard_dp_link_rates, \
+		.size = (__num_rates), \
+	}, \
+	.max_lane_count = (__max_lane_count), \
+}
+
 static const struct link_config_set standard_dp_link_configs[] = {
 	[INTEL_DP_LINK_CAPS_ORDER_KEY_BW] = {                        /* MBps    PBN    */
 		.entries = {
@@ -159,12 +176,56 @@ static const struct link_config_set standard_dp_link_configs[] = {
 	},
 };
 
+static int lookup_rate(const struct link_rate_set *rate_set, int rate)
+{
+	int i;
+
+	for (i = 0; i < rate_set->size; i++)
+		if (rate_set->entries[i] == rate)
+			return i;
+
+	return -1;
+}
+
+static bool has_rate(const struct link_rate_set *rate_set, int rate)
+{
+	return lookup_rate(rate_set, rate) >= 0;
+}
+
 static bool link_configs_match(const struct intel_dp_link_config *a,
 			       const struct intel_dp_link_config *b)
 {
 	return a->rate == b->rate && a->lane_count == b->lane_count;
 }
 
+static int lookup_config(const struct link_config_set *config_set,
+			 const struct intel_dp_link_config *config)
+{
+	int i;
+
+	for (i = 0; i < config_set->size; i++)
+		if (link_configs_match(&config_set->entries[i], config))
+			return i;
+
+	return -1;
+}
+
+static bool has_config(const struct link_config_set *config_set,
+		       const struct intel_dp_link_config *config)
+{
+	return lookup_config(config_set, config) >= 0;
+}
+
+static void add_config(struct kunit *test,
+		       struct link_config_set *config_set,
+		       const struct intel_dp_link_config *config)
+{
+	KUNIT_ASSERT_LT(test, config_set->size, ARRAY_SIZE(config_set->entries));
+
+	config_set->entries[config_set->size] = *config;
+	config_set->size++;
+}
+
 static const struct intel_dp_link_caps_order config_orders[] = {
 	{
 		.key = INTEL_DP_LINK_CAPS_ORDER_KEY_BW,
@@ -242,9 +303,752 @@ static void intel_dp_link_caps_test_baseline(struct kunit *test)
 		baseline_test_for_order(test, link_caps, config_orders[i]);
 }
 
+static int get_num_configs(int num_rates, int max_lane_count)
+{
+	return num_rates * LINK_TEST_NUM_LANE_CONFIGS(max_lane_count);
+}
+
+static int rand_in_range(struct test_ctx *ctx, int min, int max)
+{
+	return min + (prandom_u32_state(&ctx->rnd) % (max - min + 1));
+}
+
+/*
+ * TEST: Update reset
+ * ------------------
+ * Verify that resetting link_caps with the DP standard rates/lane
+ * counts updates the configuration table accordingly for all
+ * combinations.
+ */
+static void verify_bw_asc_config_order(struct kunit *test,
+				       const struct intel_dp_link_config *last_config,
+				       const struct intel_dp_link_config *config)
+{
+	int config_bw = drm_dp_max_dprx_data_rate(config->rate,
+						  config->lane_count);
+	int last_config_bw = drm_dp_max_dprx_data_rate(last_config->rate,
+						       last_config->lane_count);
+
+	KUNIT_EXPECT_GE(test, config_bw, last_config_bw);
+	if (config_bw == last_config_bw)
+		KUNIT_EXPECT_GT(test, config->rate, last_config->rate);
+}
+
+static void verify_bw_desc_config_order(struct kunit *test,
+					const struct intel_dp_link_config *last_config,
+					const struct intel_dp_link_config *config)
+{
+	int config_bw = drm_dp_max_dprx_data_rate(config->rate,
+						  config->lane_count);
+	int last_config_bw = drm_dp_max_dprx_data_rate(last_config->rate,
+						       last_config->lane_count);
+
+	KUNIT_EXPECT_LE(test, config_bw, last_config_bw);
+	if (config_bw == last_config_bw)
+		KUNIT_EXPECT_LT(test, config->rate, last_config->rate);
+}
+
+static void verify_rate_lane_asc_config_order(struct kunit *test,
+					      const struct intel_dp_link_config *last_config,
+					      const struct intel_dp_link_config *config)
+{
+	KUNIT_EXPECT_GE(test, config->rate, last_config->rate);
+	if (config->rate == last_config->rate)
+		KUNIT_EXPECT_GT(test, config->lane_count, last_config->lane_count);
+}
+
+static void verify_rate_lane_desc_config_order(struct kunit *test,
+					       const struct intel_dp_link_config *last_config,
+					       const struct intel_dp_link_config *config)
+{
+	KUNIT_EXPECT_LE(test, config->rate, last_config->rate);
+	if (config->rate == last_config->rate)
+		KUNIT_EXPECT_LT(test, config->lane_count, last_config->lane_count);
+}
+
+static void verify_lane_rate_asc_config_order(struct kunit *test,
+					      const struct intel_dp_link_config *last_config,
+					      const struct intel_dp_link_config *config)
+{
+	KUNIT_EXPECT_GE(test, config->lane_count, last_config->lane_count);
+	if (config->lane_count == last_config->lane_count)
+		KUNIT_EXPECT_GT(test, config->rate, last_config->rate);
+}
+
+static void verify_lane_rate_desc_config_order(struct kunit *test,
+					       const struct intel_dp_link_config *last_config,
+					       const struct intel_dp_link_config *config)
+{
+	KUNIT_EXPECT_LE(test, config->lane_count, last_config->lane_count);
+	if (config->lane_count == last_config->lane_count)
+		KUNIT_EXPECT_LT(test, config->rate, last_config->rate);
+}
+
+static void verify_config_order(struct kunit *test,
+				struct intel_dp_link_caps_order config_order,
+				const struct intel_dp_link_config *last_config,
+				const struct intel_dp_link_config *config)
+{
+	switch (config_order.key) {
+	case INTEL_DP_LINK_CAPS_ORDER_KEY_BW:
+		if (config_order.dir == INTEL_DP_LINK_CAPS_ORDER_DIR_ASC)
+			verify_bw_asc_config_order(test, last_config, config);
+		else
+			verify_bw_desc_config_order(test, last_config, config);
+		break;
+	case INTEL_DP_LINK_CAPS_ORDER_KEY_RATE_LANE:
+		if (config_order.dir == INTEL_DP_LINK_CAPS_ORDER_DIR_ASC)
+			verify_rate_lane_asc_config_order(test, last_config, config);
+		else
+			verify_rate_lane_desc_config_order(test, last_config, config);
+		break;
+	case INTEL_DP_LINK_CAPS_ORDER_KEY_LANE_RATE:
+		if (config_order.dir == INTEL_DP_LINK_CAPS_ORDER_DIR_ASC)
+			verify_lane_rate_asc_config_order(test, last_config, config);
+		else
+			verify_lane_rate_desc_config_order(test, last_config, config);
+		break;
+	default:
+		KUNIT_FAIL_AND_ABORT(test, "Missing order key: %d", config_order.key);
+	}
+}
+
+static int expected_num_configs(const struct test_config_table *expected_table,
+				const struct intel_dp_link_config *max_limits)
+{
+	int num_configs = 0;
+	int lane_count;
+	int rate_idx;
+
+	for (rate_idx = 0; rate_idx < expected_table->rates.size; rate_idx++) {
+		for (lane_count = 1; lane_count <= expected_table->max_lane_count; lane_count <<= 1) {
+			struct intel_dp_link_config config = {
+				.rate = expected_table->rates.entries[rate_idx],
+				.lane_count = lane_count,
+			};
+
+			if (config.rate > max_limits->rate ||
+			    config.lane_count > max_limits->lane_count)
+				continue;
+
+			if (has_config(&expected_table->disabled_configs, &config))
+				continue;
+
+			num_configs++;
+		}
+	}
+
+	return num_configs;
+}
+
+static void
+verify_link_caps_for_order(const struct test_config_table *expected_table,
+			   struct intel_dp_link_caps *link_caps,
+			   struct intel_dp_link_caps_order config_order,
+			   const struct intel_dp_link_config *max_limits)
+{
+	struct kunit *test = expected_table->test;
+	struct test_ctx *ctx = test->priv;
+	const struct intel_dp_link_caps_test_ops *ops =
+		ctx->link_caps_ops;
+	struct intel_dp_link_config expected_max_bw_config = {};
+	struct intel_dp_link_config actual_max_bw_config;
+	struct intel_dp_link_config last_config = {};
+	struct intel_dp_link_config old_max_limits;
+	struct intel_dp_link_config iter_config;
+	struct intel_dp_link_caps_iter iter;
+	int num_actual_configs = 0;
+	int max_bw = 0;
+
+	ops->get_max_limits(link_caps, &old_max_limits);
+	ops->set_max_limits(link_caps, max_limits);
+
+	ops->iter_start(&iter, link_caps, config_order, INTEL_DP_LINK_CAPS_FILTER_ALL);
+	for_each_dp_link_config(&iter, &iter_config) {
+		int bw;
+
+		KUNIT_EXPECT_LE(test, iter_config.rate, max_limits->rate);
+		KUNIT_EXPECT_LE(test, iter_config.lane_count, max_limits->lane_count);
+
+		num_actual_configs++;
+
+		/*
+		 * Verify the config's rate/lane-count values and its ordering relative
+		 * to the previous config.
+		 */
+		if (last_config.rate)
+			verify_config_order(test, config_order, &last_config, &iter_config);
+		last_config = iter_config;
+
+		KUNIT_EXPECT_TRUE(test, has_rate(&expected_table->rates,
+						 iter_config.rate));
+		KUNIT_EXPECT_LE(test, iter_config.lane_count,
+				      expected_table->max_lane_count);
+		KUNIT_EXPECT_TRUE(test, is_power_of_2(iter_config.lane_count));
+
+		/* Verify the config's disabled state */
+		KUNIT_EXPECT_FALSE(test, has_config(&expected_table->disabled_configs,
+						    &iter_config));
+
+		/*
+		 * Update the max limits for allowed configs, verified at the
+		 * end for the whole config table.
+		 */
+
+		bw = drm_dp_max_dprx_data_rate(iter_config.rate, iter_config.lane_count);
+		if (bw > max_bw ||
+		    (bw == max_bw && iter_config.rate > expected_max_bw_config.rate)) {
+			max_bw = bw;
+			expected_max_bw_config = iter_config;
+		}
+	}
+	ops->iter_end(&iter);
+
+	KUNIT_EXPECT_EQ(test, num_actual_configs, expected_num_configs(expected_table, max_limits));
+
+	ops->get_max_bw_config(link_caps, &actual_max_bw_config);
+	KUNIT_EXPECT_TRUE(test, link_configs_match(&expected_max_bw_config,
+						   &actual_max_bw_config));
+
+	KUNIT_ASSERT_TRUE(test, ops->set_max_limits(link_caps, &old_max_limits));
+}
+
+static bool max_limits_valid(const struct test_config_table *expected_table,
+			     const struct intel_dp_link_config *max_limits)
+{
+	int lane_count;
+	int rate_idx;
+
+	for (rate_idx = 0; rate_idx < expected_table->rates.size; rate_idx++) {
+		for (lane_count = 1; lane_count <= expected_table->max_lane_count; lane_count <<= 1) {
+			struct intel_dp_link_config config = {
+				.rate = expected_table->rates.entries[rate_idx],
+				.lane_count = lane_count,
+			};
+
+			if (has_config(&expected_table->disabled_configs, &config))
+				continue;
+
+			if (config.rate <= max_limits->rate &&
+			    config.lane_count <= max_limits->lane_count)
+				return true;
+		}
+	}
+
+	return false;
+}
+
+static void get_max_limits(const struct test_config_table *expected_table,
+			   struct intel_dp_link_config *max_limits)
+{
+	int lane_count;
+	int rate_idx;
+
+	max_limits->rate = 0;
+	max_limits->lane_count = 0;
+
+	for (rate_idx = 0; rate_idx < expected_table->rates.size; rate_idx++) {
+		for (lane_count = 1; lane_count <= expected_table->max_lane_count; lane_count <<= 1) {
+			struct intel_dp_link_config config = {
+				.rate = expected_table->rates.entries[rate_idx],
+				.lane_count = lane_count,
+			};
+
+			if (has_config(&expected_table->disabled_configs, &config))
+				continue;
+
+			max_limits->rate = max(max_limits->rate, config.rate);
+			max_limits->lane_count = max(max_limits->lane_count, config.lane_count);
+		}
+	}
+}
+
+static void verify_link_caps(const struct test_config_table *expected_table,
+			     struct intel_dp_link_caps *link_caps)
+{
+	struct kunit *test = expected_table->test;
+	struct test_ctx *ctx = test->priv;
+	const struct intel_dp_link_caps_test_ops *ops = ctx->link_caps_ops;
+	struct intel_dp_link_config max_limits;
+	int i;
+
+	get_max_limits(expected_table, &max_limits);
+
+	for (i = 0; i < ARRAY_SIZE(config_orders); i++) {
+		int lane_count;
+		int rate_idx;
+
+		verify_link_caps_for_order(expected_table, link_caps, config_orders[i], &max_limits);
+		/*
+		 * Verify iteration after setting the max limits to each
+		 * configurations.
+		 */
+		for (rate_idx = 0; rate_idx < expected_table->rates.size; rate_idx++) {
+			for (lane_count = 1; lane_count <= expected_table->max_lane_count; lane_count <<= 1) {
+				struct intel_dp_link_config config = {
+					.rate = expected_table->rates.entries[rate_idx],
+					.lane_count = lane_count,
+				};
+
+				if (!max_limits_valid(expected_table, &config)) {
+					/* Verify that invalid max limits are rejected. */
+					KUNIT_EXPECT_FALSE(test, ops->set_max_limits(link_caps, &config));
+
+					continue;
+				}
+
+				verify_link_caps_for_order(expected_table, link_caps, config_orders[i],
+							   &config);
+			}
+		}
+	}
+}
+
+static void update_link_caps_and_verify(struct test_config_table *expected_table,
+					struct intel_dp_link_caps *link_caps,
+					bool reset)
+{
+	struct kunit *test = expected_table->test;
+	struct test_ctx *ctx = test->priv;
+	const struct intel_dp_link_caps_test_ops *ops =
+		ctx->link_caps_ops;
+	bool link_params_changed;
+
+	link_params_changed = ops->update(link_caps,
+					  expected_table->rates.entries,
+					  expected_table->rates.size,
+					  expected_table->max_lane_count,
+					  reset);
+	KUNIT_EXPECT_TRUE(test, !reset || link_params_changed);
+
+	/*
+	 * ops->update() re-enables all configurations when called with
+	 * reset=true, or changed link parameters.
+	 */
+	if (link_params_changed)
+		expected_table->disabled_configs.size = 0;
+
+	verify_link_caps(expected_table, link_caps);
+}
+
+static void intel_dp_link_caps_test_update_reset(struct kunit *test)
+{
+	struct test_ctx *ctx = test->priv;
+	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
+	int max_lane_count;
+	int num_rates;
+
+	for (max_lane_count = 1;
+	     max_lane_count <= LINK_TEST_MAX_LANE_COUNT;
+	     max_lane_count <<= 1) {
+		for (num_rates = 1;
+		     num_rates <= LINK_TEST_NUM_STANDARD_RATES;
+		     num_rates++) {
+			struct test_config_table expected_table =
+				INIT_STANDARD_TABLE(test, num_rates,
+						    max_lane_count);
+
+			update_link_caps_and_verify(&expected_table, link_caps, true);
+		}
+	}
+}
+
+/*
+ * TEST: Update shrink and expand
+ * ------------------------------
+ * Verify that removing or adding supported rates/lane counts updates
+ * the configuration table accordingly.
+ */
+static void disable_configs_and_verify(struct kunit *test,
+				       struct intel_dp_link_caps *link_caps,
+				       struct test_config_table *expected_table,
+				       const struct link_config_set *config_set)
+{
+	struct test_ctx *ctx = test->priv;
+	const struct intel_dp_link_caps_test_ops *ops =
+		ctx->link_caps_ops;
+	int i;
+
+	for (i = 0; i < config_set->size; i++) {
+		KUNIT_ASSERT_FALSE(test, has_config(&expected_table->disabled_configs,
+						    &config_set->entries[i]));
+		add_config(test, &expected_table->disabled_configs, &config_set->entries[i]);
+
+		KUNIT_ASSERT_TRUE(test, ops->disable_config(link_caps, &config_set->entries[i]));
+
+		verify_link_caps(expected_table, link_caps);
+	}
+}
+
+static void disable_configs_for_shrink_and_verify(struct test_config_table *expected_table,
+						  struct intel_dp_link_caps *link_caps)
+{
+	struct kunit *test = expected_table->test;
+	struct link_config_set config_set = {};
+	struct intel_dp_link_config max_config;
+
+	/*
+	 * When configs shrink disable the config with the
+	 * second-highest rate, lane params, so the disabled config
+	 * stays around after the configs got shrunk.
+	 */
+	KUNIT_ASSERT_GE(test, expected_table->rates.size, 2);
+	KUNIT_ASSERT_GE(test, expected_table->max_lane_count, 2);
+
+	max_config.rate = expected_table->rates.entries[expected_table->rates.size - 2];
+	max_config.lane_count = expected_table->max_lane_count >> 1;
+
+	add_config(test, &config_set, &max_config);
+	disable_configs_and_verify(test, link_caps, expected_table,
+				   &config_set);
+}
+
+static void disable_configs_for_expand_and_verify(struct test_config_table *expected_table,
+						  struct intel_dp_link_caps *link_caps)
+{
+	struct kunit *test = expected_table->test;
+	struct link_config_set config_set = {};
+	struct intel_dp_link_config max_config;
+
+	KUNIT_ASSERT_GE(test, expected_table->rates.size, 1);
+
+	max_config.rate = expected_table->rates.entries[expected_table->rates.size - 1];
+	max_config.lane_count = expected_table->max_lane_count;
+
+	add_config(test, &config_set, &max_config);
+	disable_configs_and_verify(test, link_caps, expected_table,
+				   &config_set);
+}
+
+static void get_nth_rate_lane_config(const struct test_config_table *expected_table, int n,
+				     struct intel_dp_link_config *config)
+{
+	int num_lane_configs = LINK_TEST_NUM_LANE_CONFIGS(expected_table->max_lane_count);
+	int rate_idx = n / num_lane_configs;
+	int lane_count_exp = n % num_lane_configs;
+
+	config->rate = expected_table->rates.entries[rate_idx];
+	config->lane_count = 1 << lane_count_exp;
+}
+
+static void test_update_rates_shrink(struct kunit *test, bool disable_configs)
+{
+	struct test_ctx *ctx = test->priv;
+	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
+	struct test_config_table expected_table =
+		INIT_STANDARD_TABLE(test, LINK_TEST_NUM_STANDARD_RATES,
+					  LINK_TEST_MAX_LANE_COUNT);
+
+	update_link_caps_and_verify(&expected_table, link_caps, true);
+
+	while (expected_table.rates.size > 1) {
+		if (disable_configs)
+			disable_configs_for_shrink_and_verify(&expected_table, link_caps);
+
+		expected_table.rates.size--;
+
+		update_link_caps_and_verify(&expected_table, link_caps, false);
+	}
+}
+
+static void intel_dp_link_caps_test_update_rates_shrink(struct kunit *test)
+{
+	test_update_rates_shrink(test, false);
+}
+
+static void intel_dp_link_caps_test_update_rates_shrink_disable(struct kunit *test)
+{
+	test_update_rates_shrink(test, true);
+}
+
+static void test_update_rates_expand(struct kunit *test, bool disable_configs)
+{
+	struct test_ctx *ctx = test->priv;
+	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
+	struct test_config_table expected_table =
+		INIT_STANDARD_TABLE(test, 1, LINK_TEST_MAX_LANE_COUNT);
+
+	update_link_caps_and_verify(&expected_table, link_caps, true);
+
+	while (expected_table.rates.size < LINK_TEST_NUM_STANDARD_RATES) {
+		if (disable_configs)
+			disable_configs_for_expand_and_verify(&expected_table, link_caps);
+
+		expected_table.rates.size++;
+
+		update_link_caps_and_verify(&expected_table, link_caps, false);
+	}
+}
+
+static void intel_dp_link_caps_test_update_rates_expand(struct kunit *test)
+{
+	test_update_rates_expand(test, false);
+}
+
+static void intel_dp_link_caps_test_update_rates_expand_disable(struct kunit *test)
+{
+	test_update_rates_expand(test, true);
+}
+
+static void test_update_lanes_shrink(struct kunit *test, bool disable_configs)
+{
+	struct test_ctx *ctx = test->priv;
+	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
+	struct test_config_table expected_table =
+		INIT_STANDARD_TABLE(test, LINK_TEST_NUM_STANDARD_RATES,
+					  LINK_TEST_MAX_LANE_COUNT);
+
+	update_link_caps_and_verify(&expected_table, link_caps, true);
+
+	while (expected_table.max_lane_count > 1) {
+		if (disable_configs)
+			disable_configs_for_shrink_and_verify(&expected_table, link_caps);
+
+		expected_table.max_lane_count >>= 1;
+
+		update_link_caps_and_verify(&expected_table, link_caps, false);
+	}
+}
+
+static void intel_dp_link_caps_test_update_lanes_shrink(struct kunit *test)
+{
+	test_update_lanes_shrink(test, false);
+}
+
+static void intel_dp_link_caps_test_update_lanes_shrink_disable(struct kunit *test)
+{
+	test_update_lanes_shrink(test, true);
+}
+
+static void test_update_lanes_expand(struct kunit *test, bool disable_configs)
+{
+	struct test_ctx *ctx = test->priv;
+	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
+	struct test_config_table expected_table =
+		INIT_STANDARD_TABLE(test, LINK_TEST_NUM_STANDARD_RATES, 1);
+
+	update_link_caps_and_verify(&expected_table, link_caps, true);
+
+	while (expected_table.max_lane_count < LINK_TEST_MAX_LANE_COUNT) {
+		if (disable_configs)
+			disable_configs_for_expand_and_verify(&expected_table, link_caps);
+
+		expected_table.max_lane_count <<= 1;
+
+		update_link_caps_and_verify(&expected_table, link_caps, false);
+	}
+}
+
+static void intel_dp_link_caps_test_update_lanes_expand(struct kunit *test)
+{
+	test_update_lanes_expand(test, false);
+}
+
+static void intel_dp_link_caps_test_update_lanes_expand_disable(struct kunit *test)
+{
+	test_update_lanes_expand(test, true);
+}
+
+static void disable_random_configs_and_verify(struct test_config_table *expected_table,
+					      struct intel_dp_link_caps *link_caps)
+{
+	struct kunit *test = expected_table->test;
+	struct test_ctx *ctx = test->priv;
+	struct link_config_set config_set = {};
+	u32 disabled_config_mask;
+	int num_configs;
+	int i;
+
+	num_configs = get_num_configs(expected_table->rates.size,
+				      expected_table->max_lane_count);
+	disabled_config_mask = prandom_u32_state(&ctx->rnd) &
+			       GENMASK_U32(num_configs - 1, 0);
+
+	for (i = 0; i < num_configs; i++) {
+		struct intel_dp_link_config config;
+
+		/* At least one config must remain enabled. */
+		if (expected_table->disabled_configs.size +
+		    config_set.size + 1 >= num_configs)
+			break;
+
+		if (!(BIT(i) & disabled_config_mask))
+			continue;
+
+		get_nth_rate_lane_config(expected_table, i, &config);
+		/* Don't disable a config twice. */
+		if (has_config(&expected_table->disabled_configs, &config))
+			continue;
+
+		add_config(test, &config_set, &config);
+	}
+
+	disable_configs_and_verify(test, link_caps, expected_table,
+				   &config_set);
+}
+
+static void get_params_shrink_step(struct test_ctx *ctx,
+				   int num_rates, int max_lane_count,
+				   int *rates_step, int *lanes_step)
+{
+	int shrink_mask;
+
+	*rates_step = 0;
+	*lanes_step = 0;
+
+	if (num_rates == 1)
+		shrink_mask = BIT(0);				/* shrink only lanes */
+	else if (max_lane_count == 1)
+		shrink_mask = BIT(1);				/* shrink only rates */
+	else
+		shrink_mask = rand_in_range(ctx,
+					    BIT(0),
+					    BIT(0) | BIT(1));	/* shrink one or both params */
+
+	if (shrink_mask & BIT(1))
+		*rates_step = rand_in_range(ctx, 1, num_rates - 1);
+
+	if (shrink_mask & BIT(0))
+		*lanes_step = rand_in_range(ctx, 1, ilog2(max_lane_count));
+}
+
+static void get_params_expand_step(struct test_ctx *ctx,
+				   int max_num_rates, int num_rates,
+				   int max_supported_lane_count, int max_lane_count,
+				   int *rates_step, int *lanes_step)
+{
+	int expand_mask;
+
+	*rates_step = 0;
+	*lanes_step = 0;
+
+	if (num_rates == max_num_rates)
+		expand_mask = BIT(0);				/* expand only lanes */
+	else if (max_lane_count == max_supported_lane_count)
+		expand_mask = BIT(1);				/* expand only rates */
+	else
+		expand_mask = rand_in_range(ctx,
+					    BIT(0),
+					    BIT(0) | BIT(1));	/* expand one or both params */
+
+	if (expand_mask & BIT(1))
+		*rates_step = rand_in_range(ctx, 1, max_num_rates - num_rates);
+
+	if (expand_mask & BIT(0))
+		*lanes_step = rand_in_range(ctx, 1, ilog2(max_supported_lane_count /
+							  max_lane_count));
+}
+
+static void test_update_params_shrink_random(struct kunit *test, bool disable_configs)
+{
+	struct test_ctx *ctx = test->priv;
+	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
+	struct test_config_table expected_table =
+		INIT_STANDARD_TABLE(test, LINK_TEST_NUM_STANDARD_RATES,
+						   LINK_TEST_MAX_LANE_COUNT);
+
+	update_link_caps_and_verify(&expected_table, link_caps, true);
+
+	while (expected_table.rates.size > 1 || expected_table.max_lane_count > 1) {
+		int rates_step;
+		int lanes_step;
+
+		if (disable_configs)
+			disable_random_configs_and_verify(&expected_table, link_caps);
+
+		get_params_shrink_step(ctx,
+				       expected_table.rates.size,
+				       expected_table.max_lane_count,
+				       &rates_step, &lanes_step);
+
+		expected_table.rates.size -= rates_step;
+		expected_table.max_lane_count >>= lanes_step;
+
+		update_link_caps_and_verify(&expected_table, link_caps, false);
+	}
+}
+
+static void intel_dp_link_caps_test_update_params_shrink_random(struct kunit *test)
+{
+	int i;
+
+	for (i = 0; i < LINK_TEST_NUM_RANDOM_ITERATIONS; i++)
+		test_update_params_shrink_random(test, false);
+}
+
+static void intel_dp_link_caps_test_update_params_shrink_disable_random(struct kunit *test)
+{
+	int i;
+
+	for (i = 0; i < LINK_TEST_NUM_RANDOM_ITERATIONS; i++)
+		test_update_params_shrink_random(test, true);
+}
+
+static void test_update_params_expand_random(struct kunit *test, bool disable_configs)
+{
+	struct test_ctx *ctx = test->priv;
+	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
+	struct test_config_table expected_table =
+		INIT_STANDARD_TABLE(test, 1, 1);
+
+	update_link_caps_and_verify(&expected_table, link_caps, true);
+
+	while (expected_table.rates.size < LINK_TEST_NUM_STANDARD_RATES ||
+	       expected_table.max_lane_count < LINK_TEST_MAX_LANE_COUNT) {
+		int rates_step;
+		int lanes_step;
+
+		if (disable_configs)
+			disable_random_configs_and_verify(&expected_table, link_caps);
+
+		get_params_expand_step(ctx,
+				       LINK_TEST_NUM_STANDARD_RATES,
+				       expected_table.rates.size,
+				       LINK_TEST_MAX_LANE_COUNT,
+				       expected_table.max_lane_count,
+				       &rates_step, &lanes_step);
+
+		expected_table.rates.size += rates_step;
+		expected_table.max_lane_count <<= lanes_step;
+
+		update_link_caps_and_verify(&expected_table, link_caps, false);
+	}
+}
+
+static void intel_dp_link_caps_test_update_params_expand_random(struct kunit *test)
+{
+	int i;
+
+	for (i = 0; i < LINK_TEST_NUM_RANDOM_ITERATIONS; i++)
+		test_update_params_expand_random(test, false);
+}
+
+static void intel_dp_link_caps_test_update_params_expand_disable_random(struct kunit *test)
+{
+	int i;
+
+	for (i = 0; i < LINK_TEST_NUM_RANDOM_ITERATIONS; i++)
+		test_update_params_expand_random(test, true);
+}
+
 static struct kunit_case intel_dp_link_test_cases[] = {
 	KUNIT_CASE(intel_dp_link_caps_test_baseline),
 
+	KUNIT_CASE(intel_dp_link_caps_test_update_reset),
+
+	KUNIT_CASE(intel_dp_link_caps_test_update_rates_shrink),
+	KUNIT_CASE(intel_dp_link_caps_test_update_rates_shrink_disable),
+	KUNIT_CASE(intel_dp_link_caps_test_update_rates_expand),
+	KUNIT_CASE(intel_dp_link_caps_test_update_rates_expand_disable),
+	KUNIT_CASE(intel_dp_link_caps_test_update_lanes_shrink),
+	KUNIT_CASE(intel_dp_link_caps_test_update_lanes_shrink_disable),
+	KUNIT_CASE(intel_dp_link_caps_test_update_lanes_expand),
+	KUNIT_CASE(intel_dp_link_caps_test_update_lanes_expand_disable),
+	KUNIT_CASE(intel_dp_link_caps_test_update_params_shrink_random),
+	KUNIT_CASE(intel_dp_link_caps_test_update_params_shrink_disable_random),
+	KUNIT_CASE(intel_dp_link_caps_test_update_params_expand_random),
+	KUNIT_CASE(intel_dp_link_caps_test_update_params_expand_disable_random),
+
 	{}
 };
 
-- 
2.49.1

