Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kE8UIAxQpmmxNwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 04:05:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D74F21E84FD
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 04:05:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5952D10E054;
	Tue,  3 Mar 2026 03:05:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dbu/+dvF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAFED10E054;
 Tue,  3 Mar 2026 03:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772507145; x=1804043145;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=keRIAffar50oCQW88AezahzKVJ17dxo6mpabMOWRVN4=;
 b=dbu/+dvFHiEoL5YRsEJXzA1Fne9+3PsWMlSwrk8y3vAYnPzFd66u2Zcy
 WJoScERRM2osvsMDlCi6G3Ae0JrcV9EkG1Xn2YXvBSPiQATcolejP7ccV
 JpyINt9DD+LFBYiCZOgK4eb9bX9EGfq/nGhhQg3JS0Bav3sY8IfMUt46V
 uldE4mfsCGanaLBipdDyrCHIHk2QFPQh8gh1VzuI70MCoRGHdAweiGLu+
 dy0TvIGrwXpAaBJJ2BA+7JXGxNfY8zUnx9sPc/QaN1aP6FxbqAfKCXZyB
 tiYun9vxexH2TMKsEyn7B36tJAPtw26Xlgj0/SEVzVWYCe9aGOg4SWR22 Q==;
X-CSE-ConnectionGUID: CZwLq/KYSPS8BV2lr3oYsQ==
X-CSE-MsgGUID: E++5YXlbTIe40htoEb+sOA==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="84168685"
X-IronPort-AV: E=Sophos;i="6.21,321,1763452800"; d="scan'208";a="84168685"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 19:05:43 -0800
X-CSE-ConnectionGUID: QWmTg7xHTJSar/eceQJ2eA==
X-CSE-MsgGUID: JK1+anohSLenVAluEhOe5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,321,1763452800"; d="scan'208";a="215803512"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 19:05:42 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 19:05:41 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 2 Mar 2026 19:05:41 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.13)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 19:05:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KsHyHXxxa5OHPHX4xBvpZHz83UTiSzJ1BSDf3aMvR2tzkVFLbcUy2VbS9H7Ys8tds89nCdnmtZ93Bn2XTfIPsS6Ri6SwoDpPxou/kc4457N+N8x7bLrepTu+6ncmELELaHRSvFe2ht7RTrSW6R4Vt+zSRor/z4ulZSacF/Pg39p+Str0kpJOnhwK/oI9GRkkE5kSwQ6mmjXDm8TFH6PMFZic0tmn97WxRDIATeKBPycuhttoM57VtXGkMk1O21OnavU9K3zFa9miP4bPBzJHKgIK8KXmOr8fY09HTCqIzhFeb710As301hlDtByS4b9oik3iVIIeh1+DpF3aEYiwew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3NXsU1h9Ukud19nuA/7TIfIJ9BP0quukGIeRemAi6G8=;
 b=CmMJGyaAZx+RrRPICVLrNfYvo3WYE4+NqiX8D4rQtguFs4P9GBFr6wzW28vUlF7JPgZhtoTuv6A46bfddHnSdE+qugiKKGTDqFA3WAz/qg/kP3PD7lpeCHDo3PNeoX/1M5RDrkkpGQYxr7msN8983sQgxJePACg7+sHerRK7F4aTcCnQp9uyqTwVd5q3ibbJtEKpr7OU0H/OQQXKu4e0sdqa92sBrdaIlwMBhrBRxKgeHfIX7wGI7PUZHSzxeLiNLiw5etGaksc0xEwbTQRwhBALRMRkIrvrlqtQHQJFNr3U1TyYg2wWs1wOpPcRfgItP7m0M32eQeS8GCXx6sxqJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5332.namprd11.prod.outlook.com (2603:10b6:610:bf::17)
 by PH7PR11MB8057.namprd11.prod.outlook.com (2603:10b6:510:24c::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Tue, 3 Mar
 2026 03:05:37 +0000
Received: from CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::8f86:8d08:45bf:ec13]) by CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::8f86:8d08:45bf:ec13%4]) with mapi id 15.20.9654.022; Tue, 3 Mar 2026
 03:05:37 +0000
Message-ID: <67848086-3f56-407e-9726-d07bd03ef676@intel.com>
Date: Tue, 3 Mar 2026 08:35:31 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/dp: Fix DSC state computation
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20260302102838.1522499-1-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260302102838.1522499-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0020.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::8) To CH0PR11MB5332.namprd11.prod.outlook.com
 (2603:10b6:610:bf::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5332:EE_|PH7PR11MB8057:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c246be8-ee6d-4d7c-8a82-08de78d1be53
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 62UGiXpxy4b0DcmiD3LFSPw/ofeEaqYx1foPDLlYqLN6fAO1jPEx08r0Hd/uZRUPfBeVvmVhPFR5dgUPky3iYblFocVO2bqYJlKak+1WqfOSWUp0S6BkhbqNaRiHRYZ+43eIMGi32fdM/qJiJtv/Whvn4M2fQ49CzPDjGksF6iRY/xnzMkUTM7BHmIx+IrZQIXbAfn4w+uCGZXjYEzB5X0Lk0sO9FLC+6R1KUjjJAr967Vnad5WYZg6Sd9yLVzm9+3fNFe0F4XFXcKfMOJZ3PeHfRU0aXQpSin9joE6YaXbhr558Xs/UjTkuHB069AlK/6Q+jmLA6ZiBeW7oFsCEzBhGhPr47Mh+NfUu5Uz3HKt8YFmOTx2Nd4XtewC7m6fYjokwQt2/Q6uLXlp64jI0W28od8virNLKBGrFJ29WgRbxFft5P9CgC6XxUTFbhv6mt+v/ZKjKAke9PDBvh/AToT8Od4RGpfFtxDK/6qTnERS7VHCvGd1PYu6wFK+eb+lX/7HDtI4OwRirRhIHvF0B4nQSucDXBJuxmL2tIQV9ankjnjdsPRiuh3XLC1d/1m2rkvyVfIjNIvrdfhmloDuJ2yY8mAgAH6VBeP50PEWJV/IrPo2m4YyuIkuqa/fav2glfdh7CCUj3cOxHUcUhjefuZ3oKGwBiIMAT/x/iVjGLt1GPQZcDPT/zQwnedS5V9Ky
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5332.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cmhackJsZ0lYZlM0aExXNnBscTVKZDNYNVI2c3hQVVp1bnh4T1NwUHFNTERr?=
 =?utf-8?B?VWR1NG5YWEIxcWRwcHVUZzdMa2hLUHhXKzAvbW9YVDdoY3BLOUNZMTJMM3N5?=
 =?utf-8?B?TGZoZHFjSGw5NExwVlYrQittYnhJL01oV2hqOFZNcDNqY2JZMENPTnlVSTB0?=
 =?utf-8?B?UDZVbWNIbzk0bHU1VWc3NjdVKysxeFdLNUNZaXRZaEJySDZOU3FQOEJVVkI1?=
 =?utf-8?B?UjRRdGJuUm5EK3Uwc0JtT0lGMkFIb2lZU3FOTi9EWjY3ajBwWHE5KzRINnZq?=
 =?utf-8?B?eXFTTlkwdjZoZU9MOUxGTTk0dUN6aUZQZjRmMFlHcS90NTdKenJjUVM3aE5X?=
 =?utf-8?B?KzhaOHdDVWp5OU1BZHhzODl3TThnL2Z0eHdXb2NwVWJndXZ4MktuTmZSbUZE?=
 =?utf-8?B?QW13NmQyTVl5bU9ZeU9ZdHh2OU5iRVRhMklqQXlyQmFFMkU3ME9TbkYxZ0Vw?=
 =?utf-8?B?MjVqOGJtSTJqZ2k0Ty8rd1JGekszeTBBVHFxOTFIRWl1KzArSDE5VjN6M1VQ?=
 =?utf-8?B?SlN0MUozYjZ1L2NBaVVlNXViNFQ2QWQvbkl1ZTNyV3kvYVBiNE9mNlY4NmxN?=
 =?utf-8?B?SC9BektDeFlMelI2cFRGenJXVkZwYTFSM3RSRllxNkhiTjJkaGhSS3o1UG5Q?=
 =?utf-8?B?SzVNV1cvb0pOcnd0b25jWDgrdzEvSm9rbkxzTUhVRHh0Uy9SRmFBZmpQMEVZ?=
 =?utf-8?B?T0dFUS9NdTZrOW96dkVRaEtrZldtaEVwcUozQUZPd3pRL3ZhKzNSbUJIaXF3?=
 =?utf-8?B?MlNPQ0VxcDVaTDFCc01WWXVWYjRMWndvdTluQTFEdEtiZlJnZ0RCSHoyRC9W?=
 =?utf-8?B?QjV4RXM2UTFiTU5qN3VsTy92ZFZ4RERGQTFQUkVBNWlLV0w0akFhcnBPaVNT?=
 =?utf-8?B?UER3NldGcXRsalp6cVRmSjljbk5PWWpoRjBZY1NxZDFpQzIzdFNRYVNhRFVH?=
 =?utf-8?B?ZG1HUmNTMC8yRDRLV2hDWUlNNkFUR3B5UDZtaXByOW9WM0lDWnd1ckJnaUxT?=
 =?utf-8?B?K3JXRVFFVFdVbXAwa3hQSDVBTVlmdnpHTXpscFNsc3I1blhJZDEzWVJIdmlq?=
 =?utf-8?B?MHp0L3lFU29Kd3c1WFVLUjVmeU5aKzBnb0MvVm92OUNDYzFKekprRnFvUllM?=
 =?utf-8?B?VjMvNW96SElwZzJ0MlVQS1JTcGFHcktSYm5MYU03dERaNHlIc09STzZkckNh?=
 =?utf-8?B?cXBBOEJ1ZzdYL1V1K0hNT2tKbVl6SytMNHY2YTlRTTlTYXhmVmNzUzlpc3lq?=
 =?utf-8?B?SnBGTUtrb29McE1IR3dIem5QS0JqM09WOU0weVQ1bGJ4V1lHLy9NSm1rL2JS?=
 =?utf-8?B?dEJ0ZjlxSmZOejA5emNhYUQ0L0hFSk9tbU5pekt0MnN4dVJFMGVPVUNtb3FP?=
 =?utf-8?B?a2M5d0lCWGV2c2dYcmZLOVRmNlR1M095WU9GVW8rSG8xSWh5TEZwWmFMMEwr?=
 =?utf-8?B?bEFlUENaWTlrTGw1Z1BDYXBDVmUvOS9zZlR3QldWcUJ3bHM2Y2d1SHZocFZ2?=
 =?utf-8?B?dStlbUVuYTNSREdLS3FDR0F2ZXBuZ2VidGZOQjBLVWdqWG1pTk1FaFl6Zjhq?=
 =?utf-8?B?YmZiNWY4b3BJL2JQcDdFdG5lOVNvU25SSXBRTmpZd1hPYko5YVR4QzVUWCtV?=
 =?utf-8?B?bGNDUkt2aytRMjQvcEpIUXFnVC9VOG9heitDM0prQzkwa1pJUWdGeGh1RGl1?=
 =?utf-8?B?ZXlPM2d3M2xkS2RDRTBKNVdXd0ZIZ2JCSHRVek9jaEhRajUwZFAvaCs5RDJZ?=
 =?utf-8?B?VWduN1V5RndxWjFLbldkM1Y1OHpIWWpkUktTaHVJVGRuMmFudHA2aERkYlpM?=
 =?utf-8?B?NjAxOUFCSjZzdDVsOGprMERUc2xhWkxYd3RoVWJ4bXRub01KTWFrMUFVWUZL?=
 =?utf-8?B?UnVVa0VOYkg5TjQ1eWtqdGptWFYrQllWVkNZcUR4K3lhN3B3ZlpqZlJaR0hp?=
 =?utf-8?B?K01RYzh6eWdNTENSazZ5b1B1R1FwYUV6a1ZPS2xpUEwyOW1UUXpDdTY4TnpJ?=
 =?utf-8?B?ZHBQVG9CK1p4MlVHYWdVL3g3UkJDQXl4c1MxcjRDYWYwUm9kNGx2MEc0dXZL?=
 =?utf-8?B?enppRmdJU203c3dTNGJyNlhONDJ4Sm8zOVNXY0lzZFVLWU9DWFJoOFVBaG82?=
 =?utf-8?B?Y0VOMkR1bUZVVUp4NERNZE50V3pmYnVOYzJBVCtzYkFMM0NhRW1PTVFTQk45?=
 =?utf-8?B?dUdidXl2UU11aGl2QjJXZUUxRnVJY05sMjE1NGZwMFBTYzZJNjMzcStMbjdT?=
 =?utf-8?B?SjA3elcwNVI2c2d6VW9tUHd6TnMydDcvWjFLUnBiRnF5Nm51cEZ1cm1sU08x?=
 =?utf-8?B?bGIxQ1hkaWZiSEpuVDRQbXNsMWJVZjFPU0FDZm9qQldrb3B1Y3FvWlZzNkFJ?=
 =?utf-8?Q?wLHQVZWiEAni1rwU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c246be8-ee6d-4d7c-8a82-08de78d1be53
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5332.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2026 03:05:37.5041 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v4x8pA21UZN78wYuk5YSEixjWtN4LBHchcFPde89ysjM3x0PyL7sHO4FPe4D+6DOd5ObCK6bFMApQ4YcpW0sCygP6BeU7PQHQDYNAFoBc5o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8057
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
X-Rspamd-Queue-Id: D74F21E84FD
X-Rspamd-Server: lfdr
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
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,gitlab.freedesktop.org:url];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action


On 3/2/2026 3:58 PM, Imre Deak wrote:
> When computing the encoder/CRTC state multiple times, such as during
> iteration over the possible pipe joiner configurations, it must be
> ensured that all state is explicitly initialized each time. At the
> moment, this is not guaranteed for the DSC/FEC state within the
> encoder/CRTC state. In one iteration trying a pipe joiner configuration,
> the DSC state may get initialized without computing the full
> CRTC/encoder state due to the given joiner configuration being
> impossible. When the same CRTC/encoder state is recomputed in a
> subsequent iteration, the previously set non-zero - now stale - DSC/FEC
> state may still be present, which is unexpected if a non-DSC
> configuration is being computed.
>
> This can lead to a DSC state mismatch error if multiple joiner
> configurations are evaluated and the working configuration ultimately
> turns out to be a non-DSC one.
>
> Follow the existing pattern and compute the full (DSC/FEC) state on all
> code paths (including now the non-DSC path as well) to fix the issue.
>
> Fixes: 1f1e3e5c65f6 ("drm/i915/dp: Rework pipe joiner logic in compute_config")
> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/7512
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dp.c     | 13 +++++++++++++
>   drivers/gpu/drm/i915/display/intel_dp.h     |  1 +
>   drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 ++
>   3 files changed, 16 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 6c25c7595c48..2d9ce21e5bbe 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2457,6 +2457,17 @@ bool intel_dp_needs_8b10b_fec(const struct intel_crtc_state *crtc_state,
>   	return dsc_enabled_on_crtc || intel_dsc_enabled_on_link(crtc_state);
>   }
>   
> +void intel_dp_dsc_reset_config(struct intel_crtc_state *crtc_state)
> +{
> +	crtc_state->fec_enable = false;
> +
> +	crtc_state->dsc.compression_enable = false;
> +	crtc_state->dsc.compressed_bpp_x16 = 0;
> +
> +	memset(&crtc_state->dsc.slice_config, 0, sizeof(crtc_state->dsc.slice_config));
> +	memset(&crtc_state->dsc.config, 0, sizeof(crtc_state->dsc.config));
> +}
> +
>   int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>   				struct intel_crtc_state *pipe_config,
>   				struct drm_connector_state *conn_state,
> @@ -2888,6 +2899,8 @@ intel_dp_compute_link_for_joined_pipes(struct intel_encoder *encoder,
>   	bool dsc_needed, joiner_needs_dsc;
>   	int ret = 0;
>   
> +	intel_dp_dsc_reset_config(pipe_config);
> +
>   	joiner_needs_dsc = intel_dp_joiner_needs_dsc(display, num_joined_pipes);
>   
>   	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 57fac7fb837f..fbe43ca3d99f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -75,6 +75,7 @@ int intel_dp_compute_config(struct intel_encoder *encoder,
>   			    struct drm_connector_state *conn_state);
>   bool intel_dp_needs_8b10b_fec(const struct intel_crtc_state *crtc_state,
>   			      bool dsc_enabled_on_crtc);
> +void intel_dp_dsc_reset_config(struct intel_crtc_state *crtc_state);
>   int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>   				struct intel_crtc_state *pipe_config,
>   				struct drm_connector_state *conn_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index e73ae4956f9b..90349819dcfb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -610,6 +610,8 @@ static int mst_stream_compute_link_for_joined_pipes(struct intel_encoder *encode
>   	bool dsc_needed, joiner_needs_dsc;
>   	int ret = 0;
>   
> +	intel_dp_dsc_reset_config(pipe_config);
> +
>   	joiner_needs_dsc = intel_dp_joiner_needs_dsc(display, num_joined_pipes);
>   
>   	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
