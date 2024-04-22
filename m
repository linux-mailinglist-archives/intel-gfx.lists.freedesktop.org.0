Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 705CA8AD66C
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 23:17:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA8B5112D93;
	Mon, 22 Apr 2024 21:17:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cOKcKK7G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 615EA112D93
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 21:17:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713820629; x=1745356629;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=rvyFhAYPi0dxD1IqcPBnAgoI9MDoOZL6Si1fqrJGhss=;
 b=cOKcKK7GxsjppX1OGRklojmAMP8IH5LqnLNNvI6H1JJzvMCxDJeP3YTO
 4/Y5kGtZ5gBh0S+8YA4B2Fp/81SOwohKhsYcMF89QQKrSefWOWtM6WHth
 dAjQFZtTOML9S2MYrO0+27qXuw3TZqycMlX2Do4FvY1dCYAZHjNO8dsl1
 ZULJvU3oyuHzitqOoazXcDbETk7myaGt5PytSB/AwUoGiAWEe8pjsEIOv
 fTkSZYNBvUrhXpdEMSozuytA8W+gZdQbHUps6u15SS+yi0055kfj392vv
 I2PevjXzjB05e1UkG0/uwPsJ+ZzToIlNsJjI5+mPeS1gpv9XuUNK/QIHX g==;
X-CSE-ConnectionGUID: PF7f24X4SZCPkdRv1mbHGA==
X-CSE-MsgGUID: 6K3ceP93StapHCxOiMrX5Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11052"; a="19934246"
X-IronPort-AV: E=Sophos;i="6.07,221,1708416000"; d="scan'208";a="19934246"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 14:17:09 -0700
X-CSE-ConnectionGUID: zmI1Sy1PSdaCRGAHxPuYRA==
X-CSE-MsgGUID: 8IRysLB7QPSuuwWrGGLJwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,221,1708416000"; d="scan'208";a="28803513"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Apr 2024 14:17:08 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Apr 2024 14:17:07 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 22 Apr 2024 14:17:07 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 22 Apr 2024 14:17:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HL2LbqkToG+FsNr97NWcfR+yQtvqAtsWiQw16dk0SjCBhLdtp2/VNP3WhwtVufgJ/Hu9YwKu7IVojgP3kvu6lsbN8n5dalOWW9GXlHL0KIP7wzyEkdDqnfY8rmbyG5kDyN2j5fnbnBxCemyVJS9np57u59YCztsj9oFkmJQ+b1l8RBLfxAsCyiFaiArf1PtDBmhCXyq48tFnw4T00BhzAtRjcUtNBCVHW7lK4KVA8lb6ADXcHi2M1/MnWOXXYDLAgR98JpG9GWgB7WBiFklqJp6zq3qS7bPE5eePfba3DLKflyXETkNVVMJcZ1ufIWKNMoAki5cYZXqrmNGESIaSXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LtBPR4v2KgGHJAmY+959+rZTn93gB44gPIqywRrqyiI=;
 b=AEcf+JM4cO7Y25mFpln53VKR3F3nDllifBKT/IT68wmc0KBb43YtV6RtcEqHrMB1WQOvYbLu2/Wm1Sy6ykAFQPetAcCTrh2PJNnpz6qe2Dc+YFkOp22V0VKi+9QhNnK46WrvpsBeRtJsQcGEUHhOwLKAf1EabnKWQUW1SE1Q718jLfh0oWLsU7nN3JUMjW0kGr9BMKxUPSrjoyo7mkjlpF/MsFKjaCbU0lpOdavIWLTJ9X6uJUnElKMb5feaezr83cQn0HyG7KgdMpNs5pj/9xeW3fKjRbfHyketOagY/qXgMsi77cd2JoFxjYP1Gtu1v033p85W8+inkIqus5fBIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by MW3PR11MB4604.namprd11.prod.outlook.com (2603:10b6:303:2f::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.19; Mon, 22 Apr
 2024 21:17:04 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1%4]) with mapi id 15.20.7519.020; Mon, 22 Apr 2024
 21:17:03 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ZibSWldpXDRtgkhc@intel.com>
References: <cover.1713520813.git.jani.nikula@intel.com>
 <6dd52f3fce3527242479aadc276d05de74ceae5d.1713520813.git.jani.nikula@intel.com>
 <ZibSWldpXDRtgkhc@intel.com>
Subject: Re: [PATCH v2 4/4] drm/i915/dsi: pass display to register macros
 instead of implicit variable
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Mon, 22 Apr 2024 18:16:59 -0300
Message-ID: <171382061951.135083.8834293148344873194@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR02CA0021.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::34) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|MW3PR11MB4604:EE_
X-MS-Office365-Filtering-Correlation-Id: 6215f7c0-9990-419c-3f67-08dc63118e2e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZDFSQkg3RmdLdUYwSURwLytCZGtZUTlkUVQzejg3L0dwSXhHWG91ZmZlT3B2?=
 =?utf-8?B?bWVlaldRdENSVmVtL09pY2J0NEQ2TGF5NUFjWXFJZXhsTnRwaS9sekVVVUJz?=
 =?utf-8?B?RFc2MnpRN3N3QUVWMjJxN1hnT1d4UmQ1cmQreS9OU1hHNCt1ck9PWDhhVEZs?=
 =?utf-8?B?TlpxNzc3dURUbHVMS3JDS0x6eG5jODBkYjFXb0l5TlZBN21zdHdrYjJkL2lq?=
 =?utf-8?B?YnYwbXpSZ05VaHN0ZUVBYzJ0dzBaQ2NXbk4xbWVtT012OXorajNPNVhKeU84?=
 =?utf-8?B?azB0a1p0Y1VPRGpDZURhOFNFNDIwTkFMQXVJRTQzWE9rT283NW5BSVVFOU5t?=
 =?utf-8?B?WVhoeHhNajhybDBXVHJ6VU9TT2pXRWtZcWRXQkNCTi8vQkxqaXFBVjdXMWU1?=
 =?utf-8?B?UGloUFFnMzcwZHB4YVNzM3B4MWFXQUdxZG1wN2gwdUVwaFU0K2UvdTNFanVw?=
 =?utf-8?B?ZVI0UGd4SURCbU1iVHd4ZXJLQ2VJQnlvUmFLaTIwNUREQitpZEZIQWJMQi8w?=
 =?utf-8?B?SnAxRC83Z21NWkFhZ3ZGTU05K2plL3JoUllucUVyS2pseFpIUUdlcE1IR1B3?=
 =?utf-8?B?Sk94YU5OeGJhWkUrRHJQVnpOOEVnWTBMZDg3Z3NhSm1WV2RML1VLVWN1Y0lh?=
 =?utf-8?B?clNYYWFNWEVLZTA5T0d2UDNzbllRSXhScS9mWjd6NFpzNEZVa3J4UlZSdG91?=
 =?utf-8?B?TWp1K1pIbzR4bTd3a25XeDcxRC8yOGZXMHJnekJHRWVtRkJnK2RGZHdpRG44?=
 =?utf-8?B?aXA0bUYxWmZrZmZjYjZmOVIzSklVMW1YbDlrRVBSWTBlVGlwOUEwTnVaNWdM?=
 =?utf-8?B?eW4xbmhWZ1ZOK0ZVcHU3eXJId1hvYXc3Wncya2RuY0ZGN2NjcVZiSU5WdEJz?=
 =?utf-8?B?MWRvckx2cjBMbC91bkZzSWpwSGJyMjVDeTlJbjJjc3o3Qzl5bkd3UnNubDM1?=
 =?utf-8?B?amhIcC96NTlIZTVNZWt5THlCZ1prdytkWGVIam9VSmdGdFhnN1lXR1pza3Fq?=
 =?utf-8?B?ZEJmZEdKLzlZNjE0ZG9lUHd1OEIrQ3BJOVUrcHFrUFloRmNBVEhURVV4aVNw?=
 =?utf-8?B?Y214R1hrNk1EY2JCOFhlZ2xXUjJsaVdWaHZBd25PKy9keGFHUS9jTUxLYU5B?=
 =?utf-8?B?b2ZSR3poSzlXYlZNNGxIMG5BUFQzYmJRNmMxUzl1MldtYmlxVXp0eklBbGtZ?=
 =?utf-8?B?c000aUFObEd2M21pYlhacHRLQ3VoMkR2LzdXeklyTHVtYmtMczM5WlB0TTkw?=
 =?utf-8?B?RzFNQUQxVWVDUWFrc0ZmRjhDYUtUUUlyb0EvMzk1NWl1RXpwWTJNSUdWeTc4?=
 =?utf-8?B?akRjVFJUS0x3R0hkQWZOUTRyN2dhVmxZbStyL1BHUGQvRFpmditHaWZuRlR0?=
 =?utf-8?B?NnVEWWlTVEYrY3k5VkNCRU5uMHRZRGUxamVCZWpYQUJndmQzbEQ4VlF2ZG5P?=
 =?utf-8?B?bWlpamZHWEQxQ0xDaWk4d3NkWkdISzh0VDFzQUlWcmd6WUdSdmZQVnpNUklJ?=
 =?utf-8?B?MzNvOVRBNTdJREliU0tZNTB3WnA1UHg0S3FIUkUvWjhHRThNdjdFZWxIakkr?=
 =?utf-8?B?Rmg2YUJ0Q2gwNDVsOHczTlltOVloYUtHaDMxN2dzK2pYdS9NRm5uTkhPZUdr?=
 =?utf-8?B?YVo0Wk5DcFdFY1dkbEVodHpoNndrSDZhV21lb1FscUMrNEN2VzNOekFqSmRY?=
 =?utf-8?B?QjFmR1p1V21PVGtIakp2Y3pLZ2FjaG9obWlPV1UwYWhER1AxdXNzU0dBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MG5SSjE0T2hwb0d5Z09rUloySXYzZnVsb09ROVJkNnNnN3EvcGVXUWhyckVu?=
 =?utf-8?B?bXJHRG1YMjltSzlZWnZDbU53bFpYZkRLSm11NjdBcmdXZk40bW1rMjBiODZM?=
 =?utf-8?B?V25qZk8wY2QwOWNsM2FsRTJhMzNDNlY1ME0zRTEyZHpQRkVGTGtuSjN3NDQ0?=
 =?utf-8?B?RXVVYk9lWkJEOERKRFpWa3dhaUV0UlhVc2NnQVlQN2lrcWVpY1ZaTVJzaDY1?=
 =?utf-8?B?L0JHRlk0ZHBWd1NIK1dxMUdyZG84UGVCMGhjTmNnWFpIeUF2Mk1pY0dkSHFs?=
 =?utf-8?B?WGdiTmY3REkrME8wWVc3TGxqOWhObzhRWUt5ak5ELzM5c3ZRRVMxMDVJN1h5?=
 =?utf-8?B?dTloNjhqWjBFLzhYenhJMkpMM0pTdVBjaEtLYlZiMUNHUERrRnV4OFhaSmhL?=
 =?utf-8?B?TnlrVHRVN1VxYUJ6NHIvQWVMV0lGNWY2RXdOdW4zNzdhOC9ETnJSK1RFM0d5?=
 =?utf-8?B?QWUybUNaVjRHMGk1bThCdXFzcEFKa3dMYjhRQlJzMHFtUC9pTnd0K3JlaHph?=
 =?utf-8?B?UGZYZVRZYkdlZnhLWkt4TkV5V2tPYlUyNHZ1emszZGNHYXdNaWpNeE5xUkkw?=
 =?utf-8?B?ZlJ1TVM5bm1xSlpqdmRPbG1UeVlraWdIZWR1VzdWWk1qWk9sT2x3ZE5Pb1d3?=
 =?utf-8?B?dWg2cWJNVVV3RlY3eDc3bFBSQVdFeUZxZ0ZQSFdaMTErckJBVEN6YXVZS3NF?=
 =?utf-8?B?a0x1aGJvRHZ0NWdDemI4bGtBbUFyYWpaWVdQYmtIa1NWdmlsQjJ3N0FEQ0I0?=
 =?utf-8?B?NjJwZU9sS3ZWQWJYVFMvdUtnOEhYWVR2MVM5d0lWenE4UDZEUXVCeHZMQ0FJ?=
 =?utf-8?B?cmRCZ1pQUEwxYlNXeHJIY3ExTEI2bmkrRHBRbUJEdCtwSDhpbWhHa0FsU3Y3?=
 =?utf-8?B?YWEwYUF3V2RvaS9hd004aitKVGZxVzlBVFVWQjV4Rm8rQTFMYUdrRkxYV1BI?=
 =?utf-8?B?UjBlZlRzU05DYmZCbzJyZ21KTXJybHNEZmlJRHZIYVVzNmY2SHF5UjVYOHla?=
 =?utf-8?B?WnRqN2c0RWVDdVhnQm1RTzBKdXdpaWJjdUtLcW1MNWdDa2R4Z3hxbU8vQXM0?=
 =?utf-8?B?V1k1bXNKT3ltTzhjS09zSGFRenlkekxJQkh5VnQvcFo0akZDalZjc0RNQ2hE?=
 =?utf-8?B?VUloUTNYb0FvV3FFWDc5M3N4N2wyZVBFS21ZT1dxNlFGVWpjbXFuZGhYaDBW?=
 =?utf-8?B?WUhEek9oTEI2QkVRVFVXQ2dmM2VOeU8rTGVQcGhNNGNWVmdVM0RheGZCTTNv?=
 =?utf-8?B?akFCZ0p4WSt4STJxK3cxMFUrb09oZ1Q0Ny9heXpOUGpRMU9oSFVOTTVDb1Bi?=
 =?utf-8?B?YkNYMEFPNXVyYThUaEVPeXRnM3JoYTdYbnYvMmtLQm03M1Z3aTd5Nkd2ZDND?=
 =?utf-8?B?eUNNQlJtV2xxOVFYdlIxK2dVTkN0MndEQ3MyWmNQdXZjSkkrV2dPMTk3d2JL?=
 =?utf-8?B?aFFMSlc3QTBoOVR1U3JGbTZlb2QvdmdVbVNJb1pnUE45RStjVjFhL2h6Rlk0?=
 =?utf-8?B?Mlh1cW02ci9ySWNtWElHWlZSUUVCWHZ4aXEvNVc0RGVSd1BPY1hTRnJkelFZ?=
 =?utf-8?B?RzVscDVjU2RiNDcyQXVsRjExdTN4SVNyU2J3UHBpanBrWmpRWXFhU0NncDFB?=
 =?utf-8?B?QUM3R25QNUhkNDR3ZTA2UHkwVUJuVldzTGhQcE5XR1UxSFVMWFkycjFMVXEr?=
 =?utf-8?B?NWNSeHFMS0gwRml0ZmZTYVBUeG9lYjVUWUQ4RTNQcXR5djZhVExzUThtT2tI?=
 =?utf-8?B?UEVYVk44cDBKc2pTa3BFRkZKSE5MaFVlVG5aU1BjYXdBSnJudW9QM0NIZEVz?=
 =?utf-8?B?RUtBZUJqREVXcjlIVXRoRzRjbkIyQ3lsV3dXTEp6WlNCTlRFcUFBWU5wQXhM?=
 =?utf-8?B?bzNObUVCWGtCaHFRbmt0NW5iRTl0ZXZlQjRCUlIxQWs0TDQvZ3RVYjF0aURa?=
 =?utf-8?B?dWlPT2JnUDF2MXhKV3BsUGc5ZVl1dmJvaTYvTkVodFdNcWc4Y0Q2UWRUN05o?=
 =?utf-8?B?aDlUWUhRRWZsQkdaUDY1cDFHSWNYaUVmQUtsUUhHVnN4ZFUyTWRXZkhkWHZN?=
 =?utf-8?B?RE8xTCtQenN0NytOeGVvTktTUFowclEwQmpLM0Vtelk1MFhhYVdqSk5iY3JE?=
 =?utf-8?B?NjdBR1Qwb1pDQlhTSEYvWElaMzc5SVhJb3cxVWpCaEIxa2t1Tjl6VnBzdTVa?=
 =?utf-8?B?K3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6215f7c0-9990-419c-3f67-08dc63118e2e
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2024 21:17:03.7914 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1CkoClXrgrOjJivV5Ls0qEg/kDuQS038Xxhi0v1w550j1Gjk0I7K2l5bUqj6UikvO8GB1CKPp2fQ1VomC9P4Sg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4604
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

Quoting Rodrigo Vivi (2024-04-22 18:10:50-03:00)
>On Fri, Apr 19, 2024 at 01:04:06PM +0300, Jani Nikula wrote:
>> Stop relying on the dev_priv local variable in the DSI register
>> macros. Pass struct intel_display pointer to the macros. Move the MIPI
>> DSI MMIO base selection to a different level, passing it to _MMIO_MIPI()
>> and doing the addition there.
>>=20
>> Start using the local display variable for all intel_de_* usage, and
>> opportunistically use it for other things than display registers as
>> well.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>=20
>> ---
>>=20
>> Tip: Applying the patch and using 'git show --color-words' is probably
>> the easiest way to review.
>
>wow! this is indeed a nice feature for this case. I had never tried it bef=
ore.
>Thanks for showing that.
>
>But the registers changes were easier to review the old way. ;)

What about --word-diff for those? :-)

--
Gustavo Sousa

>
>Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display.c |   8 +-
>>  drivers/gpu/drm/i915/display/vlv_dsi.c       | 337 ++++++++++---------
>>  drivers/gpu/drm/i915/display/vlv_dsi_pll.c   |  22 +-
>>  drivers/gpu/drm/i915/display/vlv_dsi_regs.h  | 324 +++++++++---------
>>  4 files changed, 349 insertions(+), 342 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/=
drm/i915/display/intel_display.c
>> index 96ed1490fec7..b9434465d3a7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -3722,8 +3722,8 @@ static bool bxt_get_dsi_transcoder_state(struct in=
tel_crtc *crtc,
>>                                           struct intel_crtc_state *pipe_=
config,
>>                                           struct intel_display_power_dom=
ain_set *power_domain_set)
>>  {
>> -        struct drm_device *dev =3D crtc->base.dev;
>> -        struct drm_i915_private *dev_priv =3D to_i915(dev);
>> +        struct intel_display *display =3D to_intel_display(crtc);
>> +        struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>>          enum transcoder cpu_transcoder;
>>          enum port port;
>>          u32 tmp;
>> @@ -3749,11 +3749,11 @@ static bool bxt_get_dsi_transcoder_state(struct =
intel_crtc *crtc,
>>                          break;
>> =20
>>                  /* XXX: this works for video mode only */
>> -                tmp =3D intel_de_read(dev_priv, BXT_MIPI_PORT_CTRL(port=
));
>> +                tmp =3D intel_de_read(display, BXT_MIPI_PORT_CTRL(port)=
);
>>                  if (!(tmp & DPI_ENABLE))
>>                          continue;
>> =20
>> -                tmp =3D intel_de_read(dev_priv, MIPI_CTRL(port));
>> +                tmp =3D intel_de_read(display, MIPI_CTRL(display, port)=
);
>>                  if ((tmp & BXT_PIPE_SELECT_MASK) !=3D BXT_PIPE_SELECT(c=
rtc->pipe))
>>                          continue;
>> =20
>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i9=
15/display/vlv_dsi.c
>> index 9967ef58f1ec..ee9923c7b115 100644
>> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> @@ -85,18 +85,18 @@ enum mipi_dsi_pixel_format pixel_format_from_registe=
r_bits(u32 fmt)
>> =20
>>  void vlv_dsi_wait_for_fifo_empty(struct intel_dsi *intel_dsi, enum port=
 port)
>>  {
>> -        struct drm_i915_private *dev_priv =3D to_i915(intel_dsi->base.b=
ase.dev);
>> +        struct intel_display *display =3D to_intel_display(&intel_dsi->=
base);
>>          u32 mask;
>> =20
>>          mask =3D LP_CTRL_FIFO_EMPTY | HS_CTRL_FIFO_EMPTY |
>>                  LP_DATA_FIFO_EMPTY | HS_DATA_FIFO_EMPTY;
>> =20
>> -        if (intel_de_wait_for_set(dev_priv, MIPI_GEN_FIFO_STAT(port),
>> +        if (intel_de_wait_for_set(display, MIPI_GEN_FIFO_STAT(display, =
port),
>>                                    mask, 100))
>> -                drm_err(&dev_priv->drm, "DPI FIFOs are not empty\n");
>> +                drm_err(display->drm, "DPI FIFOs are not empty\n");
>>  }
>> =20
>> -static void write_data(struct drm_i915_private *dev_priv,
>> +static void write_data(struct intel_display *display,
>>                         i915_reg_t reg,
>>                         const u8 *data, u32 len)
>>  {
>> @@ -108,18 +108,18 @@ static void write_data(struct drm_i915_private *de=
v_priv,
>>                  for (j =3D 0; j < min_t(u32, len - i, 4); j++)
>>                          val |=3D *data++ << 8 * j;
>> =20
>> -                intel_de_write(dev_priv, reg, val);
>> +                intel_de_write(display, reg, val);
>>          }
>>  }
>> =20
>> -static void read_data(struct drm_i915_private *dev_priv,
>> +static void read_data(struct intel_display *display,
>>                        i915_reg_t reg,
>>                        u8 *data, u32 len)
>>  {
>>          u32 i, j;
>> =20
>>          for (i =3D 0; i < len; i +=3D 4) {
>> -                u32 val =3D intel_de_read(dev_priv, reg);
>> +                u32 val =3D intel_de_read(display, reg);
>> =20
>>                  for (j =3D 0; j < min_t(u32, len - i, 4); j++)
>>                          *data++ =3D val >> 8 * j;
>> @@ -131,7 +131,7 @@ static ssize_t intel_dsi_host_transfer(struct mipi_d=
si_host *host,
>>  {
>>          struct intel_dsi_host *intel_dsi_host =3D to_intel_dsi_host(hos=
t);
>>          struct intel_dsi *intel_dsi =3D intel_dsi_host->intel_dsi;
>> -        struct drm_i915_private *dev_priv =3D to_i915(intel_dsi->base.b=
ase.dev);
>> +        struct intel_display *display =3D to_intel_display(&intel_dsi->=
base);
>>          enum port port =3D intel_dsi_host->port;
>>          struct mipi_dsi_packet packet;
>>          ssize_t ret;
>> @@ -146,51 +146,51 @@ static ssize_t intel_dsi_host_transfer(struct mipi=
_dsi_host *host,
>>          header =3D packet.header;
>> =20
>>          if (msg->flags & MIPI_DSI_MSG_USE_LPM) {
>> -                data_reg =3D MIPI_LP_GEN_DATA(port);
>> +                data_reg =3D MIPI_LP_GEN_DATA(display, port);
>>                  data_mask =3D LP_DATA_FIFO_FULL;
>> -                ctrl_reg =3D MIPI_LP_GEN_CTRL(port);
>> +                ctrl_reg =3D MIPI_LP_GEN_CTRL(display, port);
>>                  ctrl_mask =3D LP_CTRL_FIFO_FULL;
>>          } else {
>> -                data_reg =3D MIPI_HS_GEN_DATA(port);
>> +                data_reg =3D MIPI_HS_GEN_DATA(display, port);
>>                  data_mask =3D HS_DATA_FIFO_FULL;
>> -                ctrl_reg =3D MIPI_HS_GEN_CTRL(port);
>> +                ctrl_reg =3D MIPI_HS_GEN_CTRL(display, port);
>>                  ctrl_mask =3D HS_CTRL_FIFO_FULL;
>>          }
>> =20
>>          /* note: this is never true for reads */
>>          if (packet.payload_length) {
>> -                if (intel_de_wait_for_clear(dev_priv, MIPI_GEN_FIFO_STA=
T(port),
>> +                if (intel_de_wait_for_clear(display, MIPI_GEN_FIFO_STAT=
(display, port),
>>                                              data_mask, 50))
>> -                        drm_err(&dev_priv->drm,
>> +                        drm_err(display->drm,
>>                                  "Timeout waiting for HS/LP DATA FIFO !f=
ull\n");
>> =20
>> -                write_data(dev_priv, data_reg, packet.payload,
>> +                write_data(display, data_reg, packet.payload,
>>                             packet.payload_length);
>>          }
>> =20
>>          if (msg->rx_len) {
>> -                intel_de_write(dev_priv, MIPI_INTR_STAT(port),
>> +                intel_de_write(display, MIPI_INTR_STAT(display, port),
>>                                 GEN_READ_DATA_AVAIL);
>>          }
>> =20
>> -        if (intel_de_wait_for_clear(dev_priv, MIPI_GEN_FIFO_STAT(port),
>> +        if (intel_de_wait_for_clear(display, MIPI_GEN_FIFO_STAT(display=
, port),
>>                                      ctrl_mask, 50)) {
>> -                drm_err(&dev_priv->drm,
>> +                drm_err(display->drm,
>>                          "Timeout waiting for HS/LP CTRL FIFO !full\n");
>>          }
>> =20
>> -        intel_de_write(dev_priv, ctrl_reg,
>> +        intel_de_write(display, ctrl_reg,
>>                         header[2] << 16 | header[1] << 8 | header[0]);
>> =20
>>          /* ->rx_len is set only for reads */
>>          if (msg->rx_len) {
>>                  data_mask =3D GEN_READ_DATA_AVAIL;
>> -                if (intel_de_wait_for_set(dev_priv, MIPI_INTR_STAT(port=
),
>> +                if (intel_de_wait_for_set(display, MIPI_INTR_STAT(displ=
ay, port),
>>                                            data_mask, 50))
>> -                        drm_err(&dev_priv->drm,
>> +                        drm_err(display->drm,
>>                                  "Timeout waiting for read data.\n");
>> =20
>> -                read_data(dev_priv, data_reg, msg->rx_buf, msg->rx_len)=
;
>> +                read_data(display, data_reg, msg->rx_buf, msg->rx_len);
>>          }
>> =20
>>          /* XXX: fix for reads and writes */
>> @@ -223,7 +223,7 @@ static const struct mipi_dsi_host_ops intel_dsi_host=
_ops =3D {
>>  static int dpi_send_cmd(struct intel_dsi *intel_dsi, u32 cmd, bool hs,
>>                          enum port port)
>>  {
>> -        struct drm_i915_private *dev_priv =3D to_i915(intel_dsi->base.b=
ase.dev);
>> +        struct intel_display *display =3D to_intel_display(&intel_dsi->=
base);
>>          u32 mask;
>> =20
>>          /* XXX: pipe, hs */
>> @@ -233,18 +233,18 @@ static int dpi_send_cmd(struct intel_dsi *intel_ds=
i, u32 cmd, bool hs,
>>                  cmd |=3D DPI_LP_MODE;
>> =20
>>          /* clear bit */
>> -        intel_de_write(dev_priv, MIPI_INTR_STAT(port), SPL_PKT_SENT_INT=
ERRUPT);
>> +        intel_de_write(display, MIPI_INTR_STAT(display, port), SPL_PKT_=
SENT_INTERRUPT);
>> =20
>>          /* XXX: old code skips write if control unchanged */
>> -        if (cmd =3D=3D intel_de_read(dev_priv, MIPI_DPI_CONTROL(port)))
>> -                drm_dbg_kms(&dev_priv->drm,
>> +        if (cmd =3D=3D intel_de_read(display, MIPI_DPI_CONTROL(display,=
 port)))
>> +                drm_dbg_kms(display->drm,
>>                              "Same special packet %02x twice in a row.\n=
", cmd);
>> =20
>> -        intel_de_write(dev_priv, MIPI_DPI_CONTROL(port), cmd);
>> +        intel_de_write(display, MIPI_DPI_CONTROL(display, port), cmd);
>> =20
>>          mask =3D SPL_PKT_SENT_INTERRUPT;
>> -        if (intel_de_wait_for_set(dev_priv, MIPI_INTR_STAT(port), mask,=
 100))
>> -                drm_err(&dev_priv->drm,
>> +        if (intel_de_wait_for_set(display, MIPI_INTR_STAT(display, port=
), mask, 100))
>> +                drm_err(display->drm,
>>                          "Video mode command 0x%08x send failed.\n", cmd=
);
>> =20
>>          return 0;
>> @@ -324,7 +324,7 @@ static int intel_dsi_compute_config(struct intel_enc=
oder *encoder,
>> =20
>>  static bool glk_dsi_enable_io(struct intel_encoder *encoder)
>>  {
>> -        struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev=
);
>> +        struct intel_display *display =3D to_intel_display(encoder);
>>          struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(encoder);
>>          enum port port;
>>          bool cold_boot =3D false;
>> @@ -334,29 +334,30 @@ static bool glk_dsi_enable_io(struct intel_encoder=
 *encoder)
>>           * Power ON MIPI IO first and then write into IO reset and LP w=
ake bits
>>           */
>>          for_each_dsi_port(port, intel_dsi->ports)
>> -                intel_de_rmw(dev_priv, MIPI_CTRL(port), 0, GLK_MIPIIO_E=
NABLE);
>> +                intel_de_rmw(display, MIPI_CTRL(display, port), 0, GLK_=
MIPIIO_ENABLE);
>> =20
>>          /* Put the IO into reset */
>> -        intel_de_rmw(dev_priv, MIPI_CTRL(PORT_A), GLK_MIPIIO_RESET_RELE=
ASED, 0);
>> +        intel_de_rmw(display, MIPI_CTRL(display, PORT_A), GLK_MIPIIO_RE=
SET_RELEASED, 0);
>> =20
>>          /* Program LP Wake */
>>          for_each_dsi_port(port, intel_dsi->ports) {
>> -                u32 tmp =3D intel_de_read(dev_priv, MIPI_DEVICE_READY(p=
ort));
>> -                intel_de_rmw(dev_priv, MIPI_CTRL(port),
>> +                u32 tmp =3D intel_de_read(display, MIPI_DEVICE_READY(di=
splay, port));
>> +
>> +                intel_de_rmw(display, MIPI_CTRL(display, port),
>>                               GLK_LP_WAKE, (tmp & DEVICE_READY) ? GLK_LP=
_WAKE : 0);
>>          }
>> =20
>>          /* Wait for Pwr ACK */
>>          for_each_dsi_port(port, intel_dsi->ports) {
>> -                if (intel_de_wait_for_set(dev_priv, MIPI_CTRL(port),
>> +                if (intel_de_wait_for_set(display, MIPI_CTRL(display, p=
ort),
>>                                            GLK_MIPIIO_PORT_POWERED, 20))
>> -                        drm_err(&dev_priv->drm, "MIPIO port is powergat=
ed\n");
>> +                        drm_err(display->drm, "MIPIO port is powergated=
\n");
>>          }
>> =20
>>          /* Check for cold boot scenario */
>>          for_each_dsi_port(port, intel_dsi->ports) {
>>                  cold_boot |=3D
>> -                        !(intel_de_read(dev_priv, MIPI_DEVICE_READY(por=
t)) & DEVICE_READY);
>> +                        !(intel_de_read(display, MIPI_DEVICE_READY(disp=
lay, port)) & DEVICE_READY);
>>          }
>> =20
>>          return cold_boot;
>> @@ -364,99 +365,100 @@ static bool glk_dsi_enable_io(struct intel_encode=
r *encoder)
>> =20
>>  static void glk_dsi_device_ready(struct intel_encoder *encoder)
>>  {
>> -        struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev=
);
>> +        struct intel_display *display =3D to_intel_display(encoder);
>>          struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(encoder);
>>          enum port port;
>> =20
>>          /* Wait for MIPI PHY status bit to set */
>>          for_each_dsi_port(port, intel_dsi->ports) {
>> -                if (intel_de_wait_for_set(dev_priv, MIPI_CTRL(port),
>> +                if (intel_de_wait_for_set(display, MIPI_CTRL(display, p=
ort),
>>                                            GLK_PHY_STATUS_PORT_READY, 20=
))
>> -                        drm_err(&dev_priv->drm, "PHY is not ON\n");
>> +                        drm_err(display->drm, "PHY is not ON\n");
>>          }
>> =20
>>          /* Get IO out of reset */
>> -        intel_de_rmw(dev_priv, MIPI_CTRL(PORT_A), 0, GLK_MIPIIO_RESET_R=
ELEASED);
>> +        intel_de_rmw(display, MIPI_CTRL(display, PORT_A), 0, GLK_MIPIIO=
_RESET_RELEASED);
>> =20
>>          /* Get IO out of Low power state*/
>>          for_each_dsi_port(port, intel_dsi->ports) {
>> -                if (!(intel_de_read(dev_priv, MIPI_DEVICE_READY(port)) =
& DEVICE_READY)) {
>> -                        intel_de_rmw(dev_priv, MIPI_DEVICE_READY(port),
>> +                if (!(intel_de_read(display, MIPI_DEVICE_READY(display,=
 port)) & DEVICE_READY)) {
>> +                        intel_de_rmw(display, MIPI_DEVICE_READY(display=
, port),
>>                                       ULPS_STATE_MASK, DEVICE_READY);
>>                          usleep_range(10, 15);
>>                  } else {
>>                          /* Enter ULPS */
>> -                        intel_de_rmw(dev_priv, MIPI_DEVICE_READY(port),
>> +                        intel_de_rmw(display, MIPI_DEVICE_READY(display=
, port),
>>                                       ULPS_STATE_MASK, ULPS_STATE_ENTER =
| DEVICE_READY);
>> =20
>>                          /* Wait for ULPS active */
>> -                        if (intel_de_wait_for_clear(dev_priv, MIPI_CTRL=
(port),
>> +                        if (intel_de_wait_for_clear(display, MIPI_CTRL(=
display, port),
>>                                                      GLK_ULPS_NOT_ACTIVE=
, 20))
>> -                                drm_err(&dev_priv->drm, "ULPS not activ=
e\n");
>> +                                drm_err(display->drm, "ULPS not active\=
n");
>> =20
>>                          /* Exit ULPS */
>> -                        intel_de_rmw(dev_priv, MIPI_DEVICE_READY(port),
>> +                        intel_de_rmw(display, MIPI_DEVICE_READY(display=
, port),
>>                                       ULPS_STATE_MASK, ULPS_STATE_EXIT |=
 DEVICE_READY);
>> =20
>>                          /* Enter Normal Mode */
>> -                        intel_de_rmw(dev_priv, MIPI_DEVICE_READY(port),
>> +                        intel_de_rmw(display, MIPI_DEVICE_READY(display=
, port),
>>                                       ULPS_STATE_MASK,
>>                                       ULPS_STATE_NORMAL_OPERATION | DEVI=
CE_READY);
>> =20
>> -                        intel_de_rmw(dev_priv, MIPI_CTRL(port), GLK_LP_=
WAKE, 0);
>> +                        intel_de_rmw(display, MIPI_CTRL(display, port),=
 GLK_LP_WAKE, 0);
>>                  }
>>          }
>> =20
>>          /* Wait for Stop state */
>>          for_each_dsi_port(port, intel_dsi->ports) {
>> -                if (intel_de_wait_for_set(dev_priv, MIPI_CTRL(port),
>> +                if (intel_de_wait_for_set(display, MIPI_CTRL(display, p=
ort),
>>                                            GLK_DATA_LANE_STOP_STATE, 20)=
)
>> -                        drm_err(&dev_priv->drm,
>> +                        drm_err(display->drm,
>>                                  "Date lane not in STOP state\n");
>>          }
>> =20
>>          /* Wait for AFE LATCH */
>>          for_each_dsi_port(port, intel_dsi->ports) {
>> -                if (intel_de_wait_for_set(dev_priv, BXT_MIPI_PORT_CTRL(=
port),
>> +                if (intel_de_wait_for_set(display, BXT_MIPI_PORT_CTRL(p=
ort),
>>                                            AFE_LATCHOUT, 20))
>> -                        drm_err(&dev_priv->drm,
>> +                        drm_err(display->drm,
>>                                  "D-PHY not entering LP-11 state\n");
>>          }
>>  }
>> =20
>>  static void bxt_dsi_device_ready(struct intel_encoder *encoder)
>>  {
>> -        struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev=
);
>> +        struct intel_display *display =3D to_intel_display(encoder);
>>          struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(encoder);
>>          enum port port;
>>          u32 val;
>> =20
>> -        drm_dbg_kms(&dev_priv->drm, "\n");
>> +        drm_dbg_kms(display->drm, "\n");
>> =20
>>          /* Enable MIPI PHY transparent latch */
>>          for_each_dsi_port(port, intel_dsi->ports) {
>> -                intel_de_rmw(dev_priv, BXT_MIPI_PORT_CTRL(port), 0, LP_=
OUTPUT_HOLD);
>> +                intel_de_rmw(display, BXT_MIPI_PORT_CTRL(port), 0, LP_O=
UTPUT_HOLD);
>>                  usleep_range(2000, 2500);
>>          }
>> =20
>>          /* Clear ULPS and set device ready */
>>          for_each_dsi_port(port, intel_dsi->ports) {
>> -                val =3D intel_de_read(dev_priv, MIPI_DEVICE_READY(port)=
);
>> +                val =3D intel_de_read(display, MIPI_DEVICE_READY(displa=
y, port));
>>                  val &=3D ~ULPS_STATE_MASK;
>> -                intel_de_write(dev_priv, MIPI_DEVICE_READY(port), val);
>> +                intel_de_write(display, MIPI_DEVICE_READY(display, port=
), val);
>>                  usleep_range(2000, 2500);
>>                  val |=3D DEVICE_READY;
>> -                intel_de_write(dev_priv, MIPI_DEVICE_READY(port), val);
>> +                intel_de_write(display, MIPI_DEVICE_READY(display, port=
), val);
>>          }
>>  }
>> =20
>>  static void vlv_dsi_device_ready(struct intel_encoder *encoder)
>>  {
>> +        struct intel_display *display =3D to_intel_display(encoder);
>>          struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev=
);
>>          struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(encoder);
>>          enum port port;
>> =20
>> -        drm_dbg_kms(&dev_priv->drm, "\n");
>> +        drm_dbg_kms(display->drm, "\n");
>> =20
>>          vlv_flisdsi_get(dev_priv);
>>          /* program rcomp for compliance, reduce from 50 ohms to 45 ohms
>> @@ -469,7 +471,7 @@ static void vlv_dsi_device_ready(struct intel_encode=
r *encoder)
>> =20
>>          for_each_dsi_port(port, intel_dsi->ports) {
>> =20
>> -                intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
>> +                intel_de_write(display, MIPI_DEVICE_READY(display, port=
),
>>                                 ULPS_STATE_ENTER);
>>                  usleep_range(2500, 3000);
>> =20
>> @@ -477,14 +479,14 @@ static void vlv_dsi_device_ready(struct intel_enco=
der *encoder)
>>                   * Common bit for both MIPI Port A & MIPI Port C
>>                   * No similar bit in MIPI Port C reg
>>                   */
>> -                intel_de_rmw(dev_priv, VLV_MIPI_PORT_CTRL(PORT_A), 0, L=
P_OUTPUT_HOLD);
>> +                intel_de_rmw(display, VLV_MIPI_PORT_CTRL(PORT_A), 0, LP=
_OUTPUT_HOLD);
>>                  usleep_range(1000, 1500);
>> =20
>> -                intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
>> +                intel_de_write(display, MIPI_DEVICE_READY(display, port=
),
>>                                 ULPS_STATE_EXIT);
>>                  usleep_range(2500, 3000);
>> =20
>> -                intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
>> +                intel_de_write(display, MIPI_DEVICE_READY(display, port=
),
>>                                 DEVICE_READY);
>>                  usleep_range(2500, 3000);
>>          }
>> @@ -504,50 +506,50 @@ static void intel_dsi_device_ready(struct intel_en=
coder *encoder)
>> =20
>>  static void glk_dsi_enter_low_power_mode(struct intel_encoder *encoder)
>>  {
>> -        struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev=
);
>> +        struct intel_display *display =3D to_intel_display(encoder);
>>          struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(encoder);
>>          enum port port;
>> =20
>>          /* Enter ULPS */
>>          for_each_dsi_port(port, intel_dsi->ports)
>> -                intel_de_rmw(dev_priv, MIPI_DEVICE_READY(port),
>> +                intel_de_rmw(display, MIPI_DEVICE_READY(display, port),
>>                               ULPS_STATE_MASK, ULPS_STATE_ENTER | DEVICE=
_READY);
>> =20
>>          /* Wait for MIPI PHY status bit to unset */
>>          for_each_dsi_port(port, intel_dsi->ports) {
>> -                if (intel_de_wait_for_clear(dev_priv, MIPI_CTRL(port),
>> +                if (intel_de_wait_for_clear(display, MIPI_CTRL(display,=
 port),
>>                                              GLK_PHY_STATUS_PORT_READY, =
20))
>> -                        drm_err(&dev_priv->drm, "PHY is not turning OFF=
\n");
>> +                        drm_err(display->drm, "PHY is not turning OFF\n=
");
>>          }
>> =20
>>          /* Wait for Pwr ACK bit to unset */
>>          for_each_dsi_port(port, intel_dsi->ports) {
>> -                if (intel_de_wait_for_clear(dev_priv, MIPI_CTRL(port),
>> +                if (intel_de_wait_for_clear(display, MIPI_CTRL(display,=
 port),
>>                                              GLK_MIPIIO_PORT_POWERED, 20=
))
>> -                        drm_err(&dev_priv->drm,
>> +                        drm_err(display->drm,
>>                                  "MIPI IO Port is not powergated\n");
>>          }
>>  }
>> =20
>>  static void glk_dsi_disable_mipi_io(struct intel_encoder *encoder)
>>  {
>> -        struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev=
);
>> +        struct intel_display *display =3D to_intel_display(encoder);
>>          struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(encoder);
>>          enum port port;
>> =20
>>          /* Put the IO into reset */
>> -        intel_de_rmw(dev_priv, MIPI_CTRL(PORT_A), GLK_MIPIIO_RESET_RELE=
ASED, 0);
>> +        intel_de_rmw(display, MIPI_CTRL(display, PORT_A), GLK_MIPIIO_RE=
SET_RELEASED, 0);
>> =20
>>          /* Wait for MIPI PHY status bit to unset */
>>          for_each_dsi_port(port, intel_dsi->ports) {
>> -                if (intel_de_wait_for_clear(dev_priv, MIPI_CTRL(port),
>> +                if (intel_de_wait_for_clear(display, MIPI_CTRL(display,=
 port),
>>                                              GLK_PHY_STATUS_PORT_READY, =
20))
>> -                        drm_err(&dev_priv->drm, "PHY is not turning OFF=
\n");
>> +                        drm_err(display->drm, "PHY is not turning OFF\n=
");
>>          }
>> =20
>>          /* Clear MIPI mode */
>>          for_each_dsi_port(port, intel_dsi->ports)
>> -                intel_de_rmw(dev_priv, MIPI_CTRL(port), GLK_MIPIIO_ENAB=
LE, 0);
>> +                intel_de_rmw(display, MIPI_CTRL(display, port), GLK_MIP=
IIO_ENABLE, 0);
>>  }
>> =20
>>  static void glk_dsi_clear_device_ready(struct intel_encoder *encoder)
>> @@ -564,25 +566,26 @@ static i915_reg_t port_ctrl_reg(struct drm_i915_pr=
ivate *i915, enum port port)
>> =20
>>  static void vlv_dsi_clear_device_ready(struct intel_encoder *encoder)
>>  {
>> +        struct intel_display *display =3D to_intel_display(encoder);
>>          struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev=
);
>>          struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(encoder);
>>          enum port port;
>> =20
>> -        drm_dbg_kms(&dev_priv->drm, "\n");
>> +        drm_dbg_kms(display->drm, "\n");
>>          for_each_dsi_port(port, intel_dsi->ports) {
>>                  /* Common bit for both MIPI Port A & MIPI Port C on VLV=
/CHV */
>>                  i915_reg_t port_ctrl =3D IS_BROXTON(dev_priv) ?
>>                          BXT_MIPI_PORT_CTRL(port) : VLV_MIPI_PORT_CTRL(P=
ORT_A);
>> =20
>> -                intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
>> +                intel_de_write(display, MIPI_DEVICE_READY(display, port=
),
>>                                 DEVICE_READY | ULPS_STATE_ENTER);
>>                  usleep_range(2000, 2500);
>> =20
>> -                intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
>> +                intel_de_write(display, MIPI_DEVICE_READY(display, port=
),
>>                                 DEVICE_READY | ULPS_STATE_EXIT);
>>                  usleep_range(2000, 2500);
>> =20
>> -                intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
>> +                intel_de_write(display, MIPI_DEVICE_READY(display, port=
),
>>                                 DEVICE_READY | ULPS_STATE_ENTER);
>>                  usleep_range(2000, 2500);
>> =20
>> @@ -591,15 +594,15 @@ static void vlv_dsi_clear_device_ready(struct inte=
l_encoder *encoder)
>>                   * Port A only. MIPI Port C has no similar bit for chec=
king.
>>                   */
>>                  if ((IS_BROXTON(dev_priv) || port =3D=3D PORT_A) &&
>> -                    intel_de_wait_for_clear(dev_priv, port_ctrl,
>> +                    intel_de_wait_for_clear(display, port_ctrl,
>>                                              AFE_LATCHOUT, 30))
>> -                        drm_err(&dev_priv->drm, "DSI LP not going Low\n=
");
>> +                        drm_err(display->drm, "DSI LP not going Low\n")=
;
>> =20
>>                  /* Disable MIPI PHY transparent latch */
>> -                intel_de_rmw(dev_priv, port_ctrl, LP_OUTPUT_HOLD, 0);
>> +                intel_de_rmw(display, port_ctrl, LP_OUTPUT_HOLD, 0);
>>                  usleep_range(1000, 1500);
>> =20
>> -                intel_de_write(dev_priv, MIPI_DEVICE_READY(port), 0x00)=
;
>> +                intel_de_write(display, MIPI_DEVICE_READY(display, port=
), 0x00);
>>                  usleep_range(2000, 2500);
>>          }
>>  }
>> @@ -607,6 +610,7 @@ static void vlv_dsi_clear_device_ready(struct intel_=
encoder *encoder)
>>  static void intel_dsi_port_enable(struct intel_encoder *encoder,
>>                                    const struct intel_crtc_state *crtc_s=
tate)
>>  {
>> +        struct intel_display *display =3D to_intel_display(encoder);
>>          struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev=
);
>>          struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc=
);
>>          struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(encoder);
>> @@ -617,11 +621,11 @@ static void intel_dsi_port_enable(struct intel_enc=
oder *encoder,
>> =20
>>                  if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
>>                          for_each_dsi_port(port, intel_dsi->ports)
>> -                                intel_de_rmw(dev_priv, MIPI_CTRL(port),
>> +                                intel_de_rmw(display, MIPI_CTRL(display=
, port),
>>                                               BXT_PIXEL_OVERLAP_CNT_MASK=
,
>>                                               temp << BXT_PIXEL_OVERLAP_=
CNT_SHIFT);
>>                  } else {
>> -                        intel_de_rmw(dev_priv, VLV_CHICKEN_3,
>> +                        intel_de_rmw(display, VLV_CHICKEN_3,
>>                                       PIXEL_OVERLAP_CNT_MASK,
>>                                       temp << PIXEL_OVERLAP_CNT_SHIFT);
>>                  }
>> @@ -631,7 +635,7 @@ static void intel_dsi_port_enable(struct intel_encod=
er *encoder,
>>                  i915_reg_t port_ctrl =3D port_ctrl_reg(dev_priv, port);
>>                  u32 temp;
>> =20
>> -                temp =3D intel_de_read(dev_priv, port_ctrl);
>> +                temp =3D intel_de_read(display, port_ctrl);
>> =20
>>                  temp &=3D ~LANE_CONFIGURATION_MASK;
>>                  temp &=3D ~DUAL_LINK_MODE_MASK;
>> @@ -651,13 +655,14 @@ static void intel_dsi_port_enable(struct intel_enc=
oder *encoder,
>>                          temp |=3D DITHERING_ENABLE;
>> =20
>>                  /* assert ip_tg_enable signal */
>> -                intel_de_write(dev_priv, port_ctrl, temp | DPI_ENABLE);
>> -                intel_de_posting_read(dev_priv, port_ctrl);
>> +                intel_de_write(display, port_ctrl, temp | DPI_ENABLE);
>> +                intel_de_posting_read(display, port_ctrl);
>>          }
>>  }
>> =20
>>  static void intel_dsi_port_disable(struct intel_encoder *encoder)
>>  {
>> +        struct intel_display *display =3D to_intel_display(encoder);
>>          struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev=
);
>>          struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(encoder);
>>          enum port port;
>> @@ -666,8 +671,8 @@ static void intel_dsi_port_disable(struct intel_enco=
der *encoder)
>>                  i915_reg_t port_ctrl =3D port_ctrl_reg(dev_priv, port);
>> =20
>>                  /* de-assert ip_tg_enable signal */
>> -                intel_de_rmw(dev_priv, port_ctrl, DPI_ENABLE, 0);
>> -                intel_de_posting_read(dev_priv, port_ctrl);
>> +                intel_de_rmw(display, port_ctrl, DPI_ENABLE, 0);
>> +                intel_de_posting_read(display, port_ctrl);
>>          }
>>  }
>> =20
>> @@ -721,6 +726,7 @@ static void intel_dsi_pre_enable(struct intel_atomic=
_state *state,
>>                                   const struct intel_crtc_state *pipe_co=
nfig,
>>                                   const struct drm_connector_state *conn=
_state)
>>  {
>> +        struct intel_display *display =3D to_intel_display(encoder);
>>          struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(encoder);
>>          struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crt=
c);
>>          struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>> @@ -728,7 +734,7 @@ static void intel_dsi_pre_enable(struct intel_atomic=
_state *state,
>>          enum port port;
>>          bool glk_cold_boot =3D false;
>> =20
>> -        drm_dbg_kms(&dev_priv->drm, "\n");
>> +        drm_dbg_kms(display->drm, "\n");
>> =20
>>          intel_dsi_wait_panel_power_cycle(intel_dsi);
>> =20
>> @@ -748,16 +754,16 @@ static void intel_dsi_pre_enable(struct intel_atom=
ic_state *state,
>> =20
>>          if (IS_BROXTON(dev_priv)) {
>>                  /* Add MIPI IO reset programming for modeset */
>> -                intel_de_rmw(dev_priv, BXT_P_CR_GT_DISP_PWRON, 0, MIPIO=
_RST_CTRL);
>> +                intel_de_rmw(display, BXT_P_CR_GT_DISP_PWRON, 0, MIPIO_=
RST_CTRL);
>> =20
>>                  /* Power up DSI regulator */
>> -                intel_de_write(dev_priv, BXT_P_DSI_REGULATOR_CFG, STAP_=
SELECT);
>> -                intel_de_write(dev_priv, BXT_P_DSI_REGULATOR_TX_CTRL, 0=
);
>> +                intel_de_write(display, BXT_P_DSI_REGULATOR_CFG, STAP_S=
ELECT);
>> +                intel_de_write(display, BXT_P_DSI_REGULATOR_TX_CTRL, 0)=
;
>>          }
>> =20
>>          if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
>>                  /* Disable DPOunit clock gating, can stall pipe */
>> -                intel_de_rmw(dev_priv, DSPCLK_GATE_D(dev_priv),
>> +                intel_de_rmw(display, DSPCLK_GATE_D(dev_priv),
>>                               0, DPOUNIT_CLOCK_GATE_DISABLE);
>>          }
>> =20
>> @@ -793,8 +799,8 @@ static void intel_dsi_pre_enable(struct intel_atomic=
_state *state,
>>           */
>>          if (is_cmd_mode(intel_dsi)) {
>>                  for_each_dsi_port(port, intel_dsi->ports)
>> -                        intel_de_write(dev_priv,
>> -                                       MIPI_MAX_RETURN_PKT_SIZE(port), =
8 * 4);
>> +                        intel_de_write(display,
>> +                                       MIPI_MAX_RETURN_PKT_SIZE(display=
, port), 8 * 4);
>>                  intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_TEAR_ON=
);
>>                  intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DISPLAY=
_ON);
>>          } else {
>> @@ -866,11 +872,12 @@ static void intel_dsi_post_disable(struct intel_at=
omic_state *state,
>>                                     const struct intel_crtc_state *old_c=
rtc_state,
>>                                     const struct drm_connector_state *ol=
d_conn_state)
>>  {
>> +        struct intel_display *display =3D to_intel_display(encoder);
>>          struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev=
);
>>          struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(encoder);
>>          enum port port;
>> =20
>> -        drm_dbg_kms(&dev_priv->drm, "\n");
>> +        drm_dbg_kms(display->drm, "\n");
>> =20
>>          if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
>>                  intel_crtc_vblank_off(old_crtc_state);
>> @@ -901,12 +908,12 @@ static void intel_dsi_post_disable(struct intel_at=
omic_state *state,
>> =20
>>          if (IS_BROXTON(dev_priv)) {
>>                  /* Power down DSI regulator to save power */
>> -                intel_de_write(dev_priv, BXT_P_DSI_REGULATOR_CFG, STAP_=
SELECT);
>> -                intel_de_write(dev_priv, BXT_P_DSI_REGULATOR_TX_CTRL,
>> +                intel_de_write(display, BXT_P_DSI_REGULATOR_CFG, STAP_S=
ELECT);
>> +                intel_de_write(display, BXT_P_DSI_REGULATOR_TX_CTRL,
>>                                 HS_IO_CTRL_SELECT);
>> =20
>>                  /* Add MIPI IO reset programming for modeset */
>> -                intel_de_rmw(dev_priv, BXT_P_CR_GT_DISP_PWRON, MIPIO_RS=
T_CTRL, 0);
>> +                intel_de_rmw(display, BXT_P_CR_GT_DISP_PWRON, MIPIO_RST=
_CTRL, 0);
>>          }
>> =20
>>          if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
>> @@ -914,7 +921,7 @@ static void intel_dsi_post_disable(struct intel_atom=
ic_state *state,
>>          } else {
>>                  vlv_dsi_pll_disable(encoder);
>> =20
>> -                intel_de_rmw(dev_priv, DSPCLK_GATE_D(dev_priv),
>> +                intel_de_rmw(display, DSPCLK_GATE_D(dev_priv),
>>                               DPOUNIT_CLOCK_GATE_DISABLE, 0);
>>          }
>> =20
>> @@ -930,13 +937,14 @@ static void intel_dsi_post_disable(struct intel_at=
omic_state *state,
>>  static bool intel_dsi_get_hw_state(struct intel_encoder *encoder,
>>                                     enum pipe *pipe)
>>  {
>> +        struct intel_display *display =3D to_intel_display(encoder);
>>          struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev=
);
>>          struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(encoder);
>>          intel_wakeref_t wakeref;
>>          enum port port;
>>          bool active =3D false;
>> =20
>> -        drm_dbg_kms(&dev_priv->drm, "\n");
>> +        drm_dbg_kms(display->drm, "\n");
>> =20
>>          wakeref =3D intel_display_power_get_if_enabled(dev_priv,
>>                                                       encoder->power_dom=
ain);
>> @@ -955,7 +963,7 @@ static bool intel_dsi_get_hw_state(struct intel_enco=
der *encoder,
>>          /* XXX: this only works for one DSI output */
>>          for_each_dsi_port(port, intel_dsi->ports) {
>>                  i915_reg_t port_ctrl =3D port_ctrl_reg(dev_priv, port);
>> -                bool enabled =3D intel_de_read(dev_priv, port_ctrl) & D=
PI_ENABLE;
>> +                bool enabled =3D intel_de_read(display, port_ctrl) & DP=
I_ENABLE;
>> =20
>>                  /*
>>                   * Due to some hardware limitations on VLV/CHV, the DPI=
 enable
>> @@ -964,27 +972,27 @@ static bool intel_dsi_get_hw_state(struct intel_en=
coder *encoder,
>>                   */
>>                  if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)=
) &&
>>                      port =3D=3D PORT_C)
>> -                        enabled =3D intel_de_read(dev_priv, TRANSCONF(P=
IPE_B)) & TRANSCONF_ENABLE;
>> +                        enabled =3D intel_de_read(display, TRANSCONF(PI=
PE_B)) & TRANSCONF_ENABLE;
>> =20
>>                  /* Try command mode if video mode not enabled */
>>                  if (!enabled) {
>> -                        u32 tmp =3D intel_de_read(dev_priv,
>> -                                                MIPI_DSI_FUNC_PRG(port)=
);
>> +                        u32 tmp =3D intel_de_read(display,
>> +                                                MIPI_DSI_FUNC_PRG(displ=
ay, port));
>>                          enabled =3D tmp & CMD_MODE_DATA_WIDTH_MASK;
>>                  }
>> =20
>>                  if (!enabled)
>>                          continue;
>> =20
>> -                if (!(intel_de_read(dev_priv, MIPI_DEVICE_READY(port)) =
& DEVICE_READY))
>> +                if (!(intel_de_read(display, MIPI_DEVICE_READY(display,=
 port)) & DEVICE_READY))
>>                          continue;
>> =20
>>                  if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
>> -                        u32 tmp =3D intel_de_read(dev_priv, MIPI_CTRL(p=
ort));
>> +                        u32 tmp =3D intel_de_read(display, MIPI_CTRL(di=
splay, port));
>>                          tmp &=3D BXT_PIPE_SELECT_MASK;
>>                          tmp >>=3D BXT_PIPE_SELECT_SHIFT;
>> =20
>> -                        if (drm_WARN_ON(&dev_priv->drm, tmp > PIPE_C))
>> +                        if (drm_WARN_ON(display->drm, tmp > PIPE_C))
>>                                  continue;
>> =20
>>                          *pipe =3D tmp;
>> @@ -1005,7 +1013,7 @@ static bool intel_dsi_get_hw_state(struct intel_en=
coder *encoder,
>>  static void bxt_dsi_get_pipe_config(struct intel_encoder *encoder,
>>                                      struct intel_crtc_state *pipe_confi=
g)
>>  {
>> -        struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev=
);
>> +        struct intel_display *display =3D to_intel_display(encoder);
>>          struct drm_display_mode *adjusted_mode =3D
>>                                          &pipe_config->hw.adjusted_mode;
>>          struct drm_display_mode *adjusted_mode_sw;
>> @@ -1027,11 +1035,11 @@ static void bxt_dsi_get_pipe_config(struct intel=
_encoder *encoder,
>>           * encoder->get_hw_state() returns true.
>>           */
>>          for_each_dsi_port(port, intel_dsi->ports) {
>> -                if (intel_de_read(dev_priv, BXT_MIPI_PORT_CTRL(port)) &=
 DPI_ENABLE)
>> +                if (intel_de_read(display, BXT_MIPI_PORT_CTRL(port)) & =
DPI_ENABLE)
>>                          break;
>>          }
>> =20
>> -        fmt =3D intel_de_read(dev_priv, MIPI_DSI_FUNC_PRG(port)) & VID_=
MODE_FORMAT_MASK;
>> +        fmt =3D intel_de_read(display, MIPI_DSI_FUNC_PRG(display, port)=
) & VID_MODE_FORMAT_MASK;
>>          bpp =3D mipi_dsi_pixel_format_to_bpp(
>>                          pixel_format_from_register_bits(fmt));
>> =20
>> @@ -1043,24 +1051,24 @@ static void bxt_dsi_get_pipe_config(struct intel=
_encoder *encoder,
>> =20
>>          /* In terms of pixels */
>>          adjusted_mode->crtc_hdisplay =3D
>> -                                intel_de_read(dev_priv,
>> +                                intel_de_read(display,
>>                                                BXT_MIPI_TRANS_HACTIVE(po=
rt));
>>          adjusted_mode->crtc_vdisplay =3D
>> -                                intel_de_read(dev_priv,
>> +                                intel_de_read(display,
>>                                                BXT_MIPI_TRANS_VACTIVE(po=
rt));
>>          adjusted_mode->crtc_vtotal =3D
>> -                                intel_de_read(dev_priv,
>> +                                intel_de_read(display,
>>                                                BXT_MIPI_TRANS_VTOTAL(por=
t));
>> =20
>>          hactive =3D adjusted_mode->crtc_hdisplay;
>> -        hfp =3D intel_de_read(dev_priv, MIPI_HFP_COUNT(port));
>> +        hfp =3D intel_de_read(display, MIPI_HFP_COUNT(display, port));
>> =20
>>          /*
>>           * Meaningful for video mode non-burst sync pulse mode only,
>>           * can be zero for non-burst sync events and burst modes
>>           */
>> -        hsync =3D intel_de_read(dev_priv, MIPI_HSYNC_PADDING_COUNT(port=
));
>> -        hbp =3D intel_de_read(dev_priv, MIPI_HBP_COUNT(port));
>> +        hsync =3D intel_de_read(display, MIPI_HSYNC_PADDING_COUNT(displ=
ay, port));
>> +        hbp =3D intel_de_read(display, MIPI_HBP_COUNT(display, port));
>> =20
>>          /* harizontal values are in terms of high speed byte clock */
>>          hfp =3D pixels_from_txbyteclkhs(hfp, bpp, lane_count,
>> @@ -1077,8 +1085,8 @@ static void bxt_dsi_get_pipe_config(struct intel_e=
ncoder *encoder,
>>          }
>> =20
>>          /* vertical values are in terms of lines */
>> -        vfp =3D intel_de_read(dev_priv, MIPI_VFP_COUNT(port));
>> -        vsync =3D intel_de_read(dev_priv, MIPI_VSYNC_PADDING_COUNT(port=
));
>> +        vfp =3D intel_de_read(display, MIPI_VFP_COUNT(display, port));
>> +        vsync =3D intel_de_read(display, MIPI_VSYNC_PADDING_COUNT(displ=
ay, port));
>> =20
>>          adjusted_mode->crtc_htotal =3D hactive + hfp + hsync + hbp;
>>          adjusted_mode->crtc_hsync_start =3D hfp + adjusted_mode->crtc_h=
display;
>> @@ -1207,6 +1215,7 @@ static u16 txclkesc(u32 divider, unsigned int us)
>>  static void set_dsi_timings(struct intel_encoder *encoder,
>>                              const struct drm_display_mode *adjusted_mod=
e)
>>  {
>> +        struct intel_display *display =3D to_intel_display(encoder);
>>          struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev=
);
>>          struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(encoder);
>>          enum port port;
>> @@ -1249,29 +1258,29 @@ static void set_dsi_timings(struct intel_encoder=
 *encoder,
>>                           * vactive, as they are calculated per channel =
basis,
>>                           * whereas these values should be based on reso=
lution.
>>                           */
>> -                        intel_de_write(dev_priv, BXT_MIPI_TRANS_HACTIVE=
(port),
>> +                        intel_de_write(display, BXT_MIPI_TRANS_HACTIVE(=
port),
>>                                         adjusted_mode->crtc_hdisplay);
>> -                        intel_de_write(dev_priv, BXT_MIPI_TRANS_VACTIVE=
(port),
>> +                        intel_de_write(display, BXT_MIPI_TRANS_VACTIVE(=
port),
>>                                         adjusted_mode->crtc_vdisplay);
>> -                        intel_de_write(dev_priv, BXT_MIPI_TRANS_VTOTAL(=
port),
>> +                        intel_de_write(display, BXT_MIPI_TRANS_VTOTAL(p=
ort),
>>                                         adjusted_mode->crtc_vtotal);
>>                  }
>> =20
>> -                intel_de_write(dev_priv, MIPI_HACTIVE_AREA_COUNT(port),
>> +                intel_de_write(display, MIPI_HACTIVE_AREA_COUNT(display=
, port),
>>                                 hactive);
>> -                intel_de_write(dev_priv, MIPI_HFP_COUNT(port), hfp);
>> +                intel_de_write(display, MIPI_HFP_COUNT(display, port), =
hfp);
>> =20
>>                  /* meaningful for video mode non-burst sync pulse mode =
only,
>>                   * can be zero for non-burst sync events and burst mode=
s */
>> -                intel_de_write(dev_priv, MIPI_HSYNC_PADDING_COUNT(port)=
,
>> +                intel_de_write(display, MIPI_HSYNC_PADDING_COUNT(displa=
y, port),
>>                                 hsync);
>> -                intel_de_write(dev_priv, MIPI_HBP_COUNT(port), hbp);
>> +                intel_de_write(display, MIPI_HBP_COUNT(display, port), =
hbp);
>> =20
>>                  /* vertical values are in terms of lines */
>> -                intel_de_write(dev_priv, MIPI_VFP_COUNT(port), vfp);
>> -                intel_de_write(dev_priv, MIPI_VSYNC_PADDING_COUNT(port)=
,
>> +                intel_de_write(display, MIPI_VFP_COUNT(display, port), =
vfp);
>> +                intel_de_write(display, MIPI_VSYNC_PADDING_COUNT(displa=
y, port),
>>                                 vsync);
>> -                intel_de_write(dev_priv, MIPI_VBP_COUNT(port), vbp);
>> +                intel_de_write(display, MIPI_VBP_COUNT(display, port), =
vbp);
>>          }
>>  }
>> =20
>> @@ -1295,6 +1304,7 @@ static u32 pixel_format_to_reg(enum mipi_dsi_pixel=
_format fmt)
>>  static void intel_dsi_prepare(struct intel_encoder *encoder,
>>                                const struct intel_crtc_state *pipe_confi=
g)
>>  {
>> +        struct intel_display *display =3D to_intel_display(encoder);
>>          struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev=
);
>>          struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crt=
c);
>>          struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(encoder);
>> @@ -1304,7 +1314,7 @@ static void intel_dsi_prepare(struct intel_encoder=
 *encoder,
>>          u32 val, tmp;
>>          u16 mode_hdisplay;
>> =20
>> -        drm_dbg_kms(&dev_priv->drm, "pipe %c\n", pipe_name(crtc->pipe))=
;
>> +        drm_dbg_kms(display->drm, "pipe %c\n", pipe_name(crtc->pipe));
>> =20
>>          mode_hdisplay =3D adjusted_mode->crtc_hdisplay;
>> =20
>> @@ -1320,31 +1330,31 @@ static void intel_dsi_prepare(struct intel_encod=
er *encoder,
>>                           * escape clock divider, 20MHz, shared for A an=
d C.
>>                           * device ready must be off when doing this! tx=
clkesc?
>>                           */
>> -                        tmp =3D intel_de_read(dev_priv, MIPI_CTRL(PORT_=
A));
>> +                        tmp =3D intel_de_read(display, MIPI_CTRL(displa=
y, PORT_A));
>>                          tmp &=3D ~ESCAPE_CLOCK_DIVIDER_MASK;
>> -                        intel_de_write(dev_priv, MIPI_CTRL(PORT_A),
>> +                        intel_de_write(display, MIPI_CTRL(display, PORT=
_A),
>>                                         tmp | ESCAPE_CLOCK_DIVIDER_1);
>> =20
>>                          /* read request priority is per pipe */
>> -                        tmp =3D intel_de_read(dev_priv, MIPI_CTRL(port)=
);
>> +                        tmp =3D intel_de_read(display, MIPI_CTRL(displa=
y, port));
>>                          tmp &=3D ~READ_REQUEST_PRIORITY_MASK;
>> -                        intel_de_write(dev_priv, MIPI_CTRL(port),
>> +                        intel_de_write(display, MIPI_CTRL(display, port=
),
>>                                         tmp | READ_REQUEST_PRIORITY_HIGH=
);
>>                  } else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_pr=
iv)) {
>>                          enum pipe pipe =3D crtc->pipe;
>> =20
>> -                        intel_de_rmw(dev_priv, MIPI_CTRL(port),
>> +                        intel_de_rmw(display, MIPI_CTRL(display, port),
>>                                       BXT_PIPE_SELECT_MASK, BXT_PIPE_SEL=
ECT(pipe));
>>                  }
>> =20
>>                  /* XXX: why here, why like this? handling in irq handle=
r?! */
>> -                intel_de_write(dev_priv, MIPI_INTR_STAT(port), 0xffffff=
ff);
>> -                intel_de_write(dev_priv, MIPI_INTR_EN(port), 0xffffffff=
);
>> +                intel_de_write(display, MIPI_INTR_STAT(display, port), =
0xffffffff);
>> +                intel_de_write(display, MIPI_INTR_EN(display, port), 0x=
ffffffff);
>> =20
>> -                intel_de_write(dev_priv, MIPI_DPHY_PARAM(port),
>> +                intel_de_write(display, MIPI_DPHY_PARAM(display, port),
>>                                 intel_dsi->dphy_reg);
>> =20
>> -                intel_de_write(dev_priv, MIPI_DPI_RESOLUTION(port),
>> +                intel_de_write(display, MIPI_DPI_RESOLUTION(display, po=
rt),
>>                                 adjusted_mode->crtc_vdisplay << VERTICAL=
_ADDRESS_SHIFT | mode_hdisplay << HORIZONTAL_ADDRESS_SHIFT);
>>          }
>> =20
>> @@ -1372,7 +1382,7 @@ static void intel_dsi_prepare(struct intel_encoder=
 *encoder,
>>          }
>> =20
>>          for_each_dsi_port(port, intel_dsi->ports) {
>> -                intel_de_write(dev_priv, MIPI_DSI_FUNC_PRG(port), val);
>> +                intel_de_write(display, MIPI_DSI_FUNC_PRG(display, port=
), val);
>> =20
>>                  /* timeouts for recovery. one frame IIUC. if counter ex=
pires,
>>                   * EOT and stop state. */
>> @@ -1393,23 +1403,23 @@ static void intel_dsi_prepare(struct intel_encod=
er *encoder,
>> =20
>>                  if (is_vid_mode(intel_dsi) &&
>>                          intel_dsi->video_mode =3D=3D BURST_MODE) {
>> -                        intel_de_write(dev_priv, MIPI_HS_TX_TIMEOUT(por=
t),
>> +                        intel_de_write(display, MIPI_HS_TX_TIMEOUT(disp=
lay, port),
>>                                         txbyteclkhs(adjusted_mode->crtc_=
htotal, bpp, intel_dsi->lane_count, intel_dsi->burst_mode_ratio) + 1);
>>                  } else {
>> -                        intel_de_write(dev_priv, MIPI_HS_TX_TIMEOUT(por=
t),
>> +                        intel_de_write(display, MIPI_HS_TX_TIMEOUT(disp=
lay, port),
>>                                         txbyteclkhs(adjusted_mode->crtc_=
vtotal * adjusted_mode->crtc_htotal, bpp, intel_dsi->lane_count, intel_dsi-=
>burst_mode_ratio) + 1);
>>                  }
>> -                intel_de_write(dev_priv, MIPI_LP_RX_TIMEOUT(port),
>> +                intel_de_write(display, MIPI_LP_RX_TIMEOUT(display, por=
t),
>>                                 intel_dsi->lp_rx_timeout);
>> -                intel_de_write(dev_priv, MIPI_TURN_AROUND_TIMEOUT(port)=
,
>> +                intel_de_write(display, MIPI_TURN_AROUND_TIMEOUT(displa=
y, port),
>>                                 intel_dsi->turn_arnd_val);
>> -                intel_de_write(dev_priv, MIPI_DEVICE_RESET_TIMER(port),
>> +                intel_de_write(display, MIPI_DEVICE_RESET_TIMER(display=
, port),
>>                                 intel_dsi->rst_timer_val);
>> =20
>>                  /* dphy stuff */
>> =20
>>                  /* in terms of low power clock */
>> -                intel_de_write(dev_priv, MIPI_INIT_COUNT(port),
>> +                intel_de_write(display, MIPI_INIT_COUNT(display, port),
>>                                 txclkesc(intel_dsi->escape_clk_div, 100)=
);
>> =20
>>                  if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &=
&
>> @@ -1420,16 +1430,16 @@ static void intel_dsi_prepare(struct intel_encod=
er *encoder,
>>                           * getting used. So write the other port
>>                           * if not in dual link mode.
>>                           */
>> -                        intel_de_write(dev_priv,
>> -                                       MIPI_INIT_COUNT(port =3D=3D PORT=
_A ? PORT_C : PORT_A),
>> +                        intel_de_write(display,
>> +                                       MIPI_INIT_COUNT(display, port =
=3D=3D PORT_A ? PORT_C : PORT_A),
>>                                         intel_dsi->init_count);
>>                  }
>> =20
>>                  /* recovery disables */
>> -                intel_de_write(dev_priv, MIPI_EOT_DISABLE(port), tmp);
>> +                intel_de_write(display, MIPI_EOT_DISABLE(display, port)=
, tmp);
>> =20
>>                  /* in terms of low power clock */
>> -                intel_de_write(dev_priv, MIPI_INIT_COUNT(port),
>> +                intel_de_write(display, MIPI_INIT_COUNT(display, port),
>>                                 intel_dsi->init_count);
>> =20
>>                  /* in terms of txbyteclkhs. actual high to low switch +
>> @@ -1437,7 +1447,7 @@ static void intel_dsi_prepare(struct intel_encoder=
 *encoder,
>>                   *
>>                   * XXX: write MIPI_STOP_STATE_STALL?
>>                   */
>> -                intel_de_write(dev_priv, MIPI_HIGH_LOW_SWITCH_COUNT(por=
t),
>> +                intel_de_write(display, MIPI_HIGH_LOW_SWITCH_COUNT(disp=
lay, port),
>>                                 intel_dsi->hs_to_lp_count);
>> =20
>>                  /* XXX: low power clock equivalence in terms of byte cl=
ock.
>> @@ -1446,14 +1456,14 @@ static void intel_dsi_prepare(struct intel_encod=
er *encoder,
>>                   * txclkesc time / txbyteclk time * (105 + MIPI_STOP_ST=
ATE_STALL
>>                   * ) / 105.???
>>                   */
>> -                intel_de_write(dev_priv, MIPI_LP_BYTECLK(port),
>> +                intel_de_write(display, MIPI_LP_BYTECLK(display, port),
>>                                 intel_dsi->lp_byte_clk);
>> =20
>>                  if (IS_GEMINILAKE(dev_priv)) {
>> -                        intel_de_write(dev_priv, MIPI_TLPX_TIME_COUNT(p=
ort),
>> +                        intel_de_write(display, MIPI_TLPX_TIME_COUNT(di=
splay, port),
>>                                         intel_dsi->lp_byte_clk);
>>                          /* Shadow of DPHY reg */
>> -                        intel_de_write(dev_priv, MIPI_CLK_LANE_TIMING(p=
ort),
>> +                        intel_de_write(display, MIPI_CLK_LANE_TIMING(di=
splay, port),
>>                                         intel_dsi->dphy_reg);
>>                  }
>> =20
>> @@ -1462,10 +1472,10 @@ static void intel_dsi_prepare(struct intel_encod=
er *encoder,
>>                   * this register in terms of byte clocks. based on dsi =
transfer
>>                   * rate and the number of lanes configured the time tak=
en to
>>                   * transmit 16 long packets in a dsi stream varies. */
>> -                intel_de_write(dev_priv, MIPI_DBI_BW_CTRL(port),
>> +                intel_de_write(display, MIPI_DBI_BW_CTRL(display, port)=
,
>>                                 intel_dsi->bw_timer);
>> =20
>> -                intel_de_write(dev_priv, MIPI_CLK_LANE_SWITCH_TIME_CNT(=
port),
>> +                intel_de_write(display, MIPI_CLK_LANE_SWITCH_TIME_CNT(d=
isplay, port),
>>                                 intel_dsi->clk_lp_to_hs_count << LP_HS_S=
SW_CNT_SHIFT | intel_dsi->clk_hs_to_lp_count << HS_LP_PWR_SW_CNT_SHIFT);
>> =20
>>                  if (is_vid_mode(intel_dsi)) {
>> @@ -1493,13 +1503,14 @@ static void intel_dsi_prepare(struct intel_encod=
er *encoder,
>>                                  break;
>>                          }
>> =20
>> -                        intel_de_write(dev_priv, MIPI_VIDEO_MODE_FORMAT=
(port), fmt);
>> +                        intel_de_write(display, MIPI_VIDEO_MODE_FORMAT(=
display, port), fmt);
>>                  }
>>          }
>>  }
>> =20
>>  static void intel_dsi_unprepare(struct intel_encoder *encoder)
>>  {
>> +        struct intel_display *display =3D to_intel_display(encoder);
>>          struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev=
);
>>          struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(encoder);
>>          enum port port;
>> @@ -1509,17 +1520,17 @@ static void intel_dsi_unprepare(struct intel_enc=
oder *encoder)
>> =20
>>          for_each_dsi_port(port, intel_dsi->ports) {
>>                  /* Panel commands can be sent when clock is in LP11 */
>> -                intel_de_write(dev_priv, MIPI_DEVICE_READY(port), 0x0);
>> +                intel_de_write(display, MIPI_DEVICE_READY(display, port=
), 0x0);
>> =20
>>                  if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
>>                          bxt_dsi_reset_clocks(encoder, port);
>>                  else
>>                          vlv_dsi_reset_clocks(encoder, port);
>> -                intel_de_write(dev_priv, MIPI_EOT_DISABLE(port), CLOCKS=
TOP);
>> +                intel_de_write(display, MIPI_EOT_DISABLE(display, port)=
, CLOCKSTOP);
>> =20
>> -                intel_de_rmw(dev_priv, MIPI_DSI_FUNC_PRG(port), VID_MOD=
E_FORMAT_MASK, 0);
>> +                intel_de_rmw(display, MIPI_DSI_FUNC_PRG(display, port),=
 VID_MODE_FORMAT_MASK, 0);
>> =20
>> -                intel_de_write(dev_priv, MIPI_DEVICE_READY(port), 0x1);
>> +                intel_de_write(display, MIPI_DEVICE_READY(display, port=
), 0x1);
>>          }
>>  }
>> =20
>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c b/drivers/gpu/dr=
m/i915/display/vlv_dsi_pll.c
>> index ae0a0b11bae3..70c5a13a3c75 100644
>> --- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
>> @@ -365,13 +365,13 @@ u32 bxt_dsi_get_pclk(struct intel_encoder *encoder=
,
>> =20
>>  void vlv_dsi_reset_clocks(struct intel_encoder *encoder, enum port port=
)
>>  {
>> -        u32 temp;
>> -        struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev=
);
>> +        struct intel_display *display =3D to_intel_display(encoder);
>>          struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(encoder);
>> +        u32 temp;
>> =20
>> -        temp =3D intel_de_read(dev_priv, MIPI_CTRL(port));
>> +        temp =3D intel_de_read(display, MIPI_CTRL(display, port));
>>          temp &=3D ~ESCAPE_CLOCK_DIVIDER_MASK;
>> -        intel_de_write(dev_priv, MIPI_CTRL(port),
>> +        intel_de_write(display, MIPI_CTRL(display, port),
>>                         temp | intel_dsi->escape_clk_div << ESCAPE_CLOCK=
_DIVIDER_SHIFT);
>>  }
>> =20
>> @@ -570,24 +570,24 @@ void bxt_dsi_pll_enable(struct intel_encoder *enco=
der,
>> =20
>>  void bxt_dsi_reset_clocks(struct intel_encoder *encoder, enum port port=
)
>>  {
>> +        struct intel_display *display =3D to_intel_display(encoder);
>> +        struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev=
);
>>          u32 tmp;
>> -        struct drm_device *dev =3D encoder->base.dev;
>> -        struct drm_i915_private *dev_priv =3D to_i915(dev);
>> =20
>>          /* Clear old configurations */
>>          if (IS_BROXTON(dev_priv)) {
>> -                tmp =3D intel_de_read(dev_priv, BXT_MIPI_CLOCK_CTL);
>> +                tmp =3D intel_de_read(display, BXT_MIPI_CLOCK_CTL);
>>                  tmp &=3D ~(BXT_MIPI_TX_ESCLK_FIXDIV_MASK(port));
>>                  tmp &=3D ~(BXT_MIPI_RX_ESCLK_UPPER_FIXDIV_MASK(port));
>>                  tmp &=3D ~(BXT_MIPI_8X_BY3_DIVIDER_MASK(port));
>>                  tmp &=3D ~(BXT_MIPI_RX_ESCLK_LOWER_FIXDIV_MASK(port));
>> -                intel_de_write(dev_priv, BXT_MIPI_CLOCK_CTL, tmp);
>> +                intel_de_write(display, BXT_MIPI_CLOCK_CTL, tmp);
>>          } else {
>> -                intel_de_rmw(dev_priv, MIPIO_TXESC_CLK_DIV1, GLK_TX_ESC=
_CLK_DIV1_MASK, 0);
>> +                intel_de_rmw(display, MIPIO_TXESC_CLK_DIV1, GLK_TX_ESC_=
CLK_DIV1_MASK, 0);
>> =20
>> -                intel_de_rmw(dev_priv, MIPIO_TXESC_CLK_DIV2, GLK_TX_ESC=
_CLK_DIV2_MASK, 0);
>> +                intel_de_rmw(display, MIPIO_TXESC_CLK_DIV2, GLK_TX_ESC_=
CLK_DIV2_MASK, 0);
>>          }
>> -        intel_de_write(dev_priv, MIPI_EOT_DISABLE(port), CLOCKSTOP);
>> +        intel_de_write(display, MIPI_EOT_DISABLE(display, port), CLOCKS=
TOP);
>>  }
>> =20
>>  static void assert_dsi_pll(struct drm_i915_private *i915, bool state)
>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h b/drivers/gpu/d=
rm/i915/display/vlv_dsi_regs.h
>> index 12a608a73720..c1126d170ec6 100644
>> --- a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
>> @@ -11,26 +11,23 @@
>>  #define VLV_MIPI_BASE                        VLV_DISPLAY_BASE
>>  #define BXT_MIPI_BASE                        0x60000
>> =20
>> -#define _MIPI_MMIO_BASE(__i915) ((__i915)->display.dsi.mmio_base)
>> +#define _MIPI_MMIO_BASE(display)        ((display)->dsi.mmio_base)
>> =20
>>  #define _MIPI_PORT(port, a, c)        (((port) =3D=3D PORT_A) ? a : c) =
       /* ports A and C only */
>> -#define _MMIO_MIPI(port, a, c)        _MMIO(_MIPI_PORT(port, a, c))
>> +#define _MMIO_MIPI(base, port, a, c)        _MMIO((base) + _MIPI_PORT(p=
ort, a, c))
>> =20
>>  /* BXT MIPI mode configure */
>> -#define  _BXT_MIPIA_TRANS_HACTIVE                        0x6B0F8
>> -#define  _BXT_MIPIC_TRANS_HACTIVE                        0x6B8F8
>> -#define  BXT_MIPI_TRANS_HACTIVE(tc)        _MMIO_MIPI(tc, \
>> -                _BXT_MIPIA_TRANS_HACTIVE, _BXT_MIPIC_TRANS_HACTIVE)
>> +#define  _BXT_MIPIA_TRANS_HACTIVE                0xb0f8
>> +#define  _BXT_MIPIC_TRANS_HACTIVE                0xb8f8
>> +#define  BXT_MIPI_TRANS_HACTIVE(tc)                _MMIO_MIPI(BXT_MIPI_=
BASE, tc, _BXT_MIPIA_TRANS_HACTIVE, _BXT_MIPIC_TRANS_HACTIVE)
>> =20
>> -#define  _BXT_MIPIA_TRANS_VACTIVE                        0x6B0FC
>> -#define  _BXT_MIPIC_TRANS_VACTIVE                        0x6B8FC
>> -#define  BXT_MIPI_TRANS_VACTIVE(tc)        _MMIO_MIPI(tc, \
>> -                _BXT_MIPIA_TRANS_VACTIVE, _BXT_MIPIC_TRANS_VACTIVE)
>> +#define  _BXT_MIPIA_TRANS_VACTIVE                0xb0fc
>> +#define  _BXT_MIPIC_TRANS_VACTIVE                0xb8fc
>> +#define  BXT_MIPI_TRANS_VACTIVE(tc)                _MMIO_MIPI(BXT_MIPI_=
BASE, tc, _BXT_MIPIA_TRANS_VACTIVE, _BXT_MIPIC_TRANS_VACTIVE)
>> =20
>> -#define  _BXT_MIPIA_TRANS_VTOTAL                        0x6B100
>> -#define  _BXT_MIPIC_TRANS_VTOTAL                        0x6B900
>> -#define  BXT_MIPI_TRANS_VTOTAL(tc)        _MMIO_MIPI(tc, \
>> -                _BXT_MIPIA_TRANS_VTOTAL, _BXT_MIPIC_TRANS_VTOTAL)
>> +#define  _BXT_MIPIA_TRANS_VTOTAL                0xb100
>> +#define  _BXT_MIPIC_TRANS_VTOTAL                0xb900
>> +#define  BXT_MIPI_TRANS_VTOTAL(tc)                _MMIO_MIPI(BXT_MIPI_B=
ASE, tc, _BXT_MIPIA_TRANS_VTOTAL, _BXT_MIPIC_TRANS_VTOTAL)
>> =20
>>  #define BXT_P_DSI_REGULATOR_CFG                        _MMIO(0x160020)
>>  #define  STAP_SELECT                                        (1 << 0)
>> @@ -38,14 +35,14 @@
>>  #define BXT_P_DSI_REGULATOR_TX_CTRL                _MMIO(0x160054)
>>  #define  HS_IO_CTRL_SELECT                                (1 << 0)
>> =20
>> -#define _MIPIA_PORT_CTRL                        (VLV_DISPLAY_BASE + 0x6=
1190)
>> -#define _MIPIC_PORT_CTRL                        (VLV_DISPLAY_BASE + 0x6=
1700)
>> -#define VLV_MIPI_PORT_CTRL(port)        _MMIO_MIPI(port, _MIPIA_PORT_CT=
RL, _MIPIC_PORT_CTRL)
>> +#define _MIPIA_PORT_CTRL                        0x61190
>> +#define _MIPIC_PORT_CTRL                        0x61700
>> +#define VLV_MIPI_PORT_CTRL(port)                _MMIO_MIPI(VLV_MIPI_BAS=
E, port, _MIPIA_PORT_CTRL, _MIPIC_PORT_CTRL)
>> =20
>>   /* BXT port control */
>> -#define _BXT_MIPIA_PORT_CTRL                                0x6B0C0
>> -#define _BXT_MIPIC_PORT_CTRL                                0x6B8C0
>> -#define BXT_MIPI_PORT_CTRL(tc)        _MMIO_MIPI(tc, _BXT_MIPIA_PORT_CT=
RL, _BXT_MIPIC_PORT_CTRL)
>> +#define _BXT_MIPIA_PORT_CTRL                        0xb0c0
>> +#define _BXT_MIPIC_PORT_CTRL                        0xb8c0
>> +#define BXT_MIPI_PORT_CTRL(tc)                        _MMIO_MIPI(BXT_MI=
PI_BASE, tc, _BXT_MIPIA_PORT_CTRL, _BXT_MIPIC_PORT_CTRL)
>> =20
>>  #define  DPI_ENABLE                                        (1 << 31) /*=
 A + C */
>>  #define  MIPIA_MIPI4DPHY_DELAY_COUNT_SHIFT                27
>> @@ -87,17 +84,17 @@
>>  #define  LANE_CONFIGURATION_DUAL_LINK_A                        (1 << 0)
>>  #define  LANE_CONFIGURATION_DUAL_LINK_B                        (2 << 0)
>> =20
>> -#define _MIPIA_TEARING_CTRL                        (VLV_DISPLAY_BASE + =
0x61194)
>> -#define _MIPIC_TEARING_CTRL                        (VLV_DISPLAY_BASE + =
0x61704)
>> -#define VLV_MIPI_TEARING_CTRL(port)                _MMIO_MIPI(port, _MI=
PIA_TEARING_CTRL, _MIPIC_TEARING_CTRL)
>> +#define _MIPIA_TEARING_CTRL                        0x61194
>> +#define _MIPIC_TEARING_CTRL                        0x61704
>> +#define VLV_MIPI_TEARING_CTRL(port)                        _MMIO_MIPI(V=
LV_MIPI_BASE, port, _MIPIA_TEARING_CTRL, _MIPIC_TEARING_CTRL)
>>  #define  TEARING_EFFECT_DELAY_SHIFT                        0
>>  #define  TEARING_EFFECT_DELAY_MASK                        (0xffff << 0)
>> =20
>>  /* MIPI DSI Controller and D-PHY registers */
>> =20
>> -#define _MIPIA_DEVICE_READY                (_MIPI_MMIO_BASE(dev_priv) +=
 0xb000)
>> -#define _MIPIC_DEVICE_READY                (_MIPI_MMIO_BASE(dev_priv) +=
 0xb800)
>> -#define MIPI_DEVICE_READY(port)                _MMIO_MIPI(port, _MIPIA_=
DEVICE_READY, _MIPIC_DEVICE_READY)
>> +#define _MIPIA_DEVICE_READY                        0xb000
>> +#define _MIPIC_DEVICE_READY                        0xb800
>> +#define MIPI_DEVICE_READY(display, port)        _MMIO_MIPI(_MIPI_MMIO_B=
ASE(display), port, _MIPIA_DEVICE_READY, _MIPIC_DEVICE_READY)
>>  #define  BUS_POSSESSION                                        (1 << 3)=
 /* set to give bus to receiver */
>>  #define  ULPS_STATE_MASK                                (3 << 1)
>>  #define  ULPS_STATE_ENTER                                (2 << 1)
>> @@ -105,12 +102,12 @@
>>  #define  ULPS_STATE_NORMAL_OPERATION                        (0 << 1)
>>  #define  DEVICE_READY                                        (1 << 0)
>> =20
>> -#define _MIPIA_INTR_STAT                (_MIPI_MMIO_BASE(dev_priv) + 0x=
b004)
>> -#define _MIPIC_INTR_STAT                (_MIPI_MMIO_BASE(dev_priv) + 0x=
b804)
>> -#define MIPI_INTR_STAT(port)                _MMIO_MIPI(port, _MIPIA_INT=
R_STAT, _MIPIC_INTR_STAT)
>> -#define _MIPIA_INTR_EN                        (_MIPI_MMIO_BASE(dev_priv=
) + 0xb008)
>> -#define _MIPIC_INTR_EN                        (_MIPI_MMIO_BASE(dev_priv=
) + 0xb808)
>> -#define MIPI_INTR_EN(port)                _MMIO_MIPI(port, _MIPIA_INTR_=
EN, _MIPIC_INTR_EN)
>> +#define _MIPIA_INTR_STAT                        0xb004
>> +#define _MIPIC_INTR_STAT                        0xb804
>> +#define MIPI_INTR_STAT(display, port)                _MMIO_MIPI(_MIPI_M=
MIO_BASE(display), port, _MIPIA_INTR_STAT, _MIPIC_INTR_STAT)
>> +#define _MIPIA_INTR_EN                                0xb008
>> +#define _MIPIC_INTR_EN                                0xb808
>> +#define MIPI_INTR_EN(display, port)                _MMIO_MIPI(_MIPI_MMI=
O_BASE(display), port, _MIPIA_INTR_EN, _MIPIC_INTR_EN)
>>  #define  TEARING_EFFECT                                        (1 << 31=
)
>>  #define  SPL_PKT_SENT_INTERRUPT                                (1 << 30=
)
>>  #define  GEN_READ_DATA_AVAIL                                (1 << 29)
>> @@ -144,9 +141,9 @@
>>  #define  RXSOT_SYNC_ERROR                                (1 << 1)
>>  #define  RXSOT_ERROR                                        (1 << 0)
>> =20
>> -#define _MIPIA_DSI_FUNC_PRG                (_MIPI_MMIO_BASE(dev_priv) +=
 0xb00c)
>> -#define _MIPIC_DSI_FUNC_PRG                (_MIPI_MMIO_BASE(dev_priv) +=
 0xb80c)
>> -#define MIPI_DSI_FUNC_PRG(port)                _MMIO_MIPI(port, _MIPIA_=
DSI_FUNC_PRG, _MIPIC_DSI_FUNC_PRG)
>> +#define _MIPIA_DSI_FUNC_PRG                        0xb00c
>> +#define _MIPIC_DSI_FUNC_PRG                        0xb80c
>> +#define MIPI_DSI_FUNC_PRG(display, port)        _MMIO_MIPI(_MIPI_MMIO_B=
ASE(display), port, _MIPIA_DSI_FUNC_PRG, _MIPIC_DSI_FUNC_PRG)
>>  #define  CMD_MODE_DATA_WIDTH_MASK                        (7 << 13)
>>  #define  CMD_MODE_NOT_SUPPORTED                                (0 << 13=
)
>>  #define  CMD_MODE_DATA_WIDTH_16_BIT                        (1 << 13)
>> @@ -167,77 +164,77 @@
>>  #define  DATA_LANES_PRG_REG_SHIFT                        0
>>  #define  DATA_LANES_PRG_REG_MASK                        (7 << 0)
>> =20
>> -#define _MIPIA_HS_TX_TIMEOUT                (_MIPI_MMIO_BASE(dev_priv) =
+ 0xb010)
>> -#define _MIPIC_HS_TX_TIMEOUT                (_MIPI_MMIO_BASE(dev_priv) =
+ 0xb810)
>> -#define MIPI_HS_TX_TIMEOUT(port)        _MMIO_MIPI(port, _MIPIA_HS_TX_T=
IMEOUT, _MIPIC_HS_TX_TIMEOUT)
>> +#define _MIPIA_HS_TX_TIMEOUT                        0xb010
>> +#define _MIPIC_HS_TX_TIMEOUT                        0xb810
>> +#define MIPI_HS_TX_TIMEOUT(display, port)        _MMIO_MIPI(_MIPI_MMIO_=
BASE(display), port, _MIPIA_HS_TX_TIMEOUT, _MIPIC_HS_TX_TIMEOUT)
>>  #define  HIGH_SPEED_TX_TIMEOUT_COUNTER_MASK                0xffffff
>> =20
>> -#define _MIPIA_LP_RX_TIMEOUT                (_MIPI_MMIO_BASE(dev_priv) =
+ 0xb014)
>> -#define _MIPIC_LP_RX_TIMEOUT                (_MIPI_MMIO_BASE(dev_priv) =
+ 0xb814)
>> -#define MIPI_LP_RX_TIMEOUT(port)        _MMIO_MIPI(port, _MIPIA_LP_RX_T=
IMEOUT, _MIPIC_LP_RX_TIMEOUT)
>> +#define _MIPIA_LP_RX_TIMEOUT                        0xb014
>> +#define _MIPIC_LP_RX_TIMEOUT                        0xb814
>> +#define MIPI_LP_RX_TIMEOUT(display, port)        _MMIO_MIPI(_MIPI_MMIO_=
BASE(display), port, _MIPIA_LP_RX_TIMEOUT, _MIPIC_LP_RX_TIMEOUT)
>>  #define  LOW_POWER_RX_TIMEOUT_COUNTER_MASK                0xffffff
>> =20
>> -#define _MIPIA_TURN_AROUND_TIMEOUT        (_MIPI_MMIO_BASE(dev_priv) + =
0xb018)
>> -#define _MIPIC_TURN_AROUND_TIMEOUT        (_MIPI_MMIO_BASE(dev_priv) + =
0xb818)
>> -#define MIPI_TURN_AROUND_TIMEOUT(port)        _MMIO_MIPI(port, _MIPIA_T=
URN_AROUND_TIMEOUT, _MIPIC_TURN_AROUND_TIMEOUT)
>> +#define _MIPIA_TURN_AROUND_TIMEOUT                0xb018
>> +#define _MIPIC_TURN_AROUND_TIMEOUT                0xb818
>> +#define MIPI_TURN_AROUND_TIMEOUT(display, port)        _MMIO_MIPI(_MIPI=
_MMIO_BASE(display), port, _MIPIA_TURN_AROUND_TIMEOUT, _MIPIC_TURN_AROUND_T=
IMEOUT)
>>  #define  TURN_AROUND_TIMEOUT_MASK                        0x3f
>> =20
>> -#define _MIPIA_DEVICE_RESET_TIMER        (_MIPI_MMIO_BASE(dev_priv) + 0=
xb01c)
>> -#define _MIPIC_DEVICE_RESET_TIMER        (_MIPI_MMIO_BASE(dev_priv) + 0=
xb81c)
>> -#define MIPI_DEVICE_RESET_TIMER(port)        _MMIO_MIPI(port, _MIPIA_DE=
VICE_RESET_TIMER, _MIPIC_DEVICE_RESET_TIMER)
>> +#define _MIPIA_DEVICE_RESET_TIMER                0xb01c
>> +#define _MIPIC_DEVICE_RESET_TIMER                0xb81c
>> +#define MIPI_DEVICE_RESET_TIMER(display, port)        _MMIO_MIPI(_MIPI_=
MMIO_BASE(display), port, _MIPIA_DEVICE_RESET_TIMER, _MIPIC_DEVICE_RESET_TI=
MER)
>>  #define  DEVICE_RESET_TIMER_MASK                        0xffff
>> =20
>> -#define _MIPIA_DPI_RESOLUTION                (_MIPI_MMIO_BASE(dev_priv)=
 + 0xb020)
>> -#define _MIPIC_DPI_RESOLUTION                (_MIPI_MMIO_BASE(dev_priv)=
 + 0xb820)
>> -#define MIPI_DPI_RESOLUTION(port)        _MMIO_MIPI(port, _MIPIA_DPI_RE=
SOLUTION, _MIPIC_DPI_RESOLUTION)
>> +#define _MIPIA_DPI_RESOLUTION                        0xb020
>> +#define _MIPIC_DPI_RESOLUTION                        0xb820
>> +#define MIPI_DPI_RESOLUTION(display, port)        _MMIO_MIPI(_MIPI_MMIO=
_BASE(display), port, _MIPIA_DPI_RESOLUTION, _MIPIC_DPI_RESOLUTION)
>>  #define  VERTICAL_ADDRESS_SHIFT                                16
>>  #define  VERTICAL_ADDRESS_MASK                                (0xffff <=
< 16)
>>  #define  HORIZONTAL_ADDRESS_SHIFT                        0
>>  #define  HORIZONTAL_ADDRESS_MASK                        0xffff
>> =20
>> -#define _MIPIA_DBI_FIFO_THROTTLE        (_MIPI_MMIO_BASE(dev_priv) + 0x=
b024)
>> -#define _MIPIC_DBI_FIFO_THROTTLE        (_MIPI_MMIO_BASE(dev_priv) + 0x=
b824)
>> -#define MIPI_DBI_FIFO_THROTTLE(port)        _MMIO_MIPI(port, _MIPIA_DBI=
_FIFO_THROTTLE, _MIPIC_DBI_FIFO_THROTTLE)
>> +#define _MIPIA_DBI_FIFO_THROTTLE                0xb024
>> +#define _MIPIC_DBI_FIFO_THROTTLE                0xb824
>> +#define MIPI_DBI_FIFO_THROTTLE(display, port)        _MMIO_MIPI(_MIPI_M=
MIO_BASE(display), port, _MIPIA_DBI_FIFO_THROTTLE, _MIPIC_DBI_FIFO_THROTTLE=
)
>>  #define  DBI_FIFO_EMPTY_HALF                                (0 << 0)
>>  #define  DBI_FIFO_EMPTY_QUARTER                                (1 << 0)
>>  #define  DBI_FIFO_EMPTY_7_LOCATIONS                        (2 << 0)
>> =20
>>  /* regs below are bits 15:0 */
>> -#define _MIPIA_HSYNC_PADDING_COUNT        (_MIPI_MMIO_BASE(dev_priv) + =
0xb028)
>> -#define _MIPIC_HSYNC_PADDING_COUNT        (_MIPI_MMIO_BASE(dev_priv) + =
0xb828)
>> -#define MIPI_HSYNC_PADDING_COUNT(port)        _MMIO_MIPI(port, _MIPIA_H=
SYNC_PADDING_COUNT, _MIPIC_HSYNC_PADDING_COUNT)
>> +#define _MIPIA_HSYNC_PADDING_COUNT                0xb028
>> +#define _MIPIC_HSYNC_PADDING_COUNT                0xb828
>> +#define MIPI_HSYNC_PADDING_COUNT(display, port)        _MMIO_MIPI(_MIPI=
_MMIO_BASE(display), port, _MIPIA_HSYNC_PADDING_COUNT, _MIPIC_HSYNC_PADDING=
_COUNT)
>> =20
>> -#define _MIPIA_HBP_COUNT                (_MIPI_MMIO_BASE(dev_priv) + 0x=
b02c)
>> -#define _MIPIC_HBP_COUNT                (_MIPI_MMIO_BASE(dev_priv) + 0x=
b82c)
>> -#define MIPI_HBP_COUNT(port)                _MMIO_MIPI(port, _MIPIA_HBP=
_COUNT, _MIPIC_HBP_COUNT)
>> +#define _MIPIA_HBP_COUNT                        0xb02c
>> +#define _MIPIC_HBP_COUNT                        0xb82c
>> +#define MIPI_HBP_COUNT(display, port)                _MMIO_MIPI(_MIPI_M=
MIO_BASE(display), port, _MIPIA_HBP_COUNT, _MIPIC_HBP_COUNT)
>> =20
>> -#define _MIPIA_HFP_COUNT                (_MIPI_MMIO_BASE(dev_priv) + 0x=
b030)
>> -#define _MIPIC_HFP_COUNT                (_MIPI_MMIO_BASE(dev_priv) + 0x=
b830)
>> -#define MIPI_HFP_COUNT(port)                _MMIO_MIPI(port, _MIPIA_HFP=
_COUNT, _MIPIC_HFP_COUNT)
>> +#define _MIPIA_HFP_COUNT                        0xb030
>> +#define _MIPIC_HFP_COUNT                        0xb830
>> +#define MIPI_HFP_COUNT(display, port)                _MMIO_MIPI(_MIPI_M=
MIO_BASE(display), port, _MIPIA_HFP_COUNT, _MIPIC_HFP_COUNT)
>> =20
>> -#define _MIPIA_HACTIVE_AREA_COUNT        (_MIPI_MMIO_BASE(dev_priv) + 0=
xb034)
>> -#define _MIPIC_HACTIVE_AREA_COUNT        (_MIPI_MMIO_BASE(dev_priv) + 0=
xb834)
>> -#define MIPI_HACTIVE_AREA_COUNT(port)        _MMIO_MIPI(port, _MIPIA_HA=
CTIVE_AREA_COUNT, _MIPIC_HACTIVE_AREA_COUNT)
>> +#define _MIPIA_HACTIVE_AREA_COUNT                0xb034
>> +#define _MIPIC_HACTIVE_AREA_COUNT                0xb834
>> +#define MIPI_HACTIVE_AREA_COUNT(display, port)        _MMIO_MIPI(_MIPI_=
MMIO_BASE(display), port, _MIPIA_HACTIVE_AREA_COUNT, _MIPIC_HACTIVE_AREA_CO=
UNT)
>> =20
>> -#define _MIPIA_VSYNC_PADDING_COUNT        (_MIPI_MMIO_BASE(dev_priv) + =
0xb038)
>> -#define _MIPIC_VSYNC_PADDING_COUNT        (_MIPI_MMIO_BASE(dev_priv) + =
0xb838)
>> -#define MIPI_VSYNC_PADDING_COUNT(port)        _MMIO_MIPI(port, _MIPIA_V=
SYNC_PADDING_COUNT, _MIPIC_VSYNC_PADDING_COUNT)
>> +#define _MIPIA_VSYNC_PADDING_COUNT                0xb038
>> +#define _MIPIC_VSYNC_PADDING_COUNT                0xb838
>> +#define MIPI_VSYNC_PADDING_COUNT(display, port)        _MMIO_MIPI(_MIPI=
_MMIO_BASE(display), port, _MIPIA_VSYNC_PADDING_COUNT, _MIPIC_VSYNC_PADDING=
_COUNT)
>> =20
>> -#define _MIPIA_VBP_COUNT                (_MIPI_MMIO_BASE(dev_priv) + 0x=
b03c)
>> -#define _MIPIC_VBP_COUNT                (_MIPI_MMIO_BASE(dev_priv) + 0x=
b83c)
>> -#define MIPI_VBP_COUNT(port)                _MMIO_MIPI(port, _MIPIA_VBP=
_COUNT, _MIPIC_VBP_COUNT)
>> +#define _MIPIA_VBP_COUNT                        0xb03c
>> +#define _MIPIC_VBP_COUNT                        0xb83c
>> +#define MIPI_VBP_COUNT(display, port)                _MMIO_MIPI(_MIPI_M=
MIO_BASE(display), port, _MIPIA_VBP_COUNT, _MIPIC_VBP_COUNT)
>> =20
>> -#define _MIPIA_VFP_COUNT                (_MIPI_MMIO_BASE(dev_priv) + 0x=
b040)
>> -#define _MIPIC_VFP_COUNT                (_MIPI_MMIO_BASE(dev_priv) + 0x=
b840)
>> -#define MIPI_VFP_COUNT(port)                _MMIO_MIPI(port, _MIPIA_VFP=
_COUNT, _MIPIC_VFP_COUNT)
>> +#define _MIPIA_VFP_COUNT                        0xb040
>> +#define _MIPIC_VFP_COUNT                        0xb840
>> +#define MIPI_VFP_COUNT(display, port)                _MMIO_MIPI(_MIPI_M=
MIO_BASE(display), port, _MIPIA_VFP_COUNT, _MIPIC_VFP_COUNT)
>> =20
>> -#define _MIPIA_HIGH_LOW_SWITCH_COUNT        (_MIPI_MMIO_BASE(dev_priv) =
+ 0xb044)
>> -#define _MIPIC_HIGH_LOW_SWITCH_COUNT        (_MIPI_MMIO_BASE(dev_priv) =
+ 0xb844)
>> -#define MIPI_HIGH_LOW_SWITCH_COUNT(port)        _MMIO_MIPI(port,       =
 _MIPIA_HIGH_LOW_SWITCH_COUNT, _MIPIC_HIGH_LOW_SWITCH_COUNT)
>> +#define _MIPIA_HIGH_LOW_SWITCH_COUNT                0xb044
>> +#define _MIPIC_HIGH_LOW_SWITCH_COUNT                0xb844
>> +#define MIPI_HIGH_LOW_SWITCH_COUNT(display, port)        _MMIO_MIPI(_MI=
PI_MMIO_BASE(display), port,        _MIPIA_HIGH_LOW_SWITCH_COUNT, _MIPIC_HI=
GH_LOW_SWITCH_COUNT)
>> =20
>> -#define _MIPIA_DPI_CONTROL                (_MIPI_MMIO_BASE(dev_priv) + =
0xb048)
>> -#define _MIPIC_DPI_CONTROL                (_MIPI_MMIO_BASE(dev_priv) + =
0xb848)
>> -#define MIPI_DPI_CONTROL(port)                _MMIO_MIPI(port, _MIPIA_D=
PI_CONTROL, _MIPIC_DPI_CONTROL)
>> +#define _MIPIA_DPI_CONTROL                        0xb048
>> +#define _MIPIC_DPI_CONTROL                        0xb848
>> +#define MIPI_DPI_CONTROL(display, port)                _MMIO_MIPI(_MIPI=
_MMIO_BASE(display), port, _MIPIA_DPI_CONTROL, _MIPIC_DPI_CONTROL)
>>  #define  DPI_LP_MODE                                        (1 << 6)
>>  #define  BACKLIGHT_OFF                                        (1 << 5)
>>  #define  BACKLIGHT_ON                                        (1 << 4)
>> @@ -246,28 +243,27 @@
>>  #define  TURN_ON                                        (1 << 1)
>>  #define  SHUTDOWN                                        (1 << 0)
>> =20
>> -#define _MIPIA_DPI_DATA                        (_MIPI_MMIO_BASE(dev_pri=
v) + 0xb04c)
>> -#define _MIPIC_DPI_DATA                        (_MIPI_MMIO_BASE(dev_pri=
v) + 0xb84c)
>> -#define MIPI_DPI_DATA(port)                _MMIO_MIPI(port, _MIPIA_DPI_=
DATA, _MIPIC_DPI_DATA)
>> +#define _MIPIA_DPI_DATA                                0xb04c
>> +#define _MIPIC_DPI_DATA                                0xb84c
>> +#define MIPI_DPI_DATA(display, port)                _MMIO_MIPI(_MIPI_MM=
IO_BASE(display), port, _MIPIA_DPI_DATA, _MIPIC_DPI_DATA)
>>  #define  COMMAND_BYTE_SHIFT                                0
>>  #define  COMMAND_BYTE_MASK                                (0x3f << 0)
>> =20
>> -#define _MIPIA_INIT_COUNT                (_MIPI_MMIO_BASE(dev_priv) + 0=
xb050)
>> -#define _MIPIC_INIT_COUNT                (_MIPI_MMIO_BASE(dev_priv) + 0=
xb850)
>> -#define MIPI_INIT_COUNT(port)                _MMIO_MIPI(port, _MIPIA_IN=
IT_COUNT, _MIPIC_INIT_COUNT)
>> +#define _MIPIA_INIT_COUNT                        0xb050
>> +#define _MIPIC_INIT_COUNT                        0xb850
>> +#define MIPI_INIT_COUNT(display, port)                _MMIO_MIPI(_MIPI_=
MMIO_BASE(display), port, _MIPIA_INIT_COUNT, _MIPIC_INIT_COUNT)
>>  #define  MASTER_INIT_TIMER_SHIFT                        0
>>  #define  MASTER_INIT_TIMER_MASK                                (0xffff =
<< 0)
>> =20
>> -#define _MIPIA_MAX_RETURN_PKT_SIZE        (_MIPI_MMIO_BASE(dev_priv) + =
0xb054)
>> -#define _MIPIC_MAX_RETURN_PKT_SIZE        (_MIPI_MMIO_BASE(dev_priv) + =
0xb854)
>> -#define MIPI_MAX_RETURN_PKT_SIZE(port)        _MMIO_MIPI(port, \
>> -                        _MIPIA_MAX_RETURN_PKT_SIZE, _MIPIC_MAX_RETURN_P=
KT_SIZE)
>> +#define _MIPIA_MAX_RETURN_PKT_SIZE                0xb054
>> +#define _MIPIC_MAX_RETURN_PKT_SIZE                0xb854
>> +#define MIPI_MAX_RETURN_PKT_SIZE(display, port)        _MMIO_MIPI(_MIPI=
_MMIO_BASE(display), port, _MIPIA_MAX_RETURN_PKT_SIZE, _MIPIC_MAX_RETURN_PK=
T_SIZE)
>>  #define  MAX_RETURN_PKT_SIZE_SHIFT                        0
>>  #define  MAX_RETURN_PKT_SIZE_MASK                        (0x3ff << 0)
>> =20
>> -#define _MIPIA_VIDEO_MODE_FORMAT        (_MIPI_MMIO_BASE(dev_priv) + 0x=
b058)
>> -#define _MIPIC_VIDEO_MODE_FORMAT        (_MIPI_MMIO_BASE(dev_priv) + 0x=
b858)
>> -#define MIPI_VIDEO_MODE_FORMAT(port)        _MMIO_MIPI(port, _MIPIA_VID=
EO_MODE_FORMAT, _MIPIC_VIDEO_MODE_FORMAT)
>> +#define _MIPIA_VIDEO_MODE_FORMAT                0xb058
>> +#define _MIPIC_VIDEO_MODE_FORMAT                0xb858
>> +#define MIPI_VIDEO_MODE_FORMAT(display, port)        _MMIO_MIPI(_MIPI_M=
MIO_BASE(display), port, _MIPIA_VIDEO_MODE_FORMAT, _MIPIC_VIDEO_MODE_FORMAT=
)
>>  #define  RANDOM_DPI_DISPLAY_RESOLUTION                        (1 << 4)
>>  #define  DISABLE_VIDEO_BTA                                (1 << 3)
>>  #define  IP_TG_CONFIG                                        (1 << 2)
>> @@ -275,9 +271,9 @@
>>  #define  VIDEO_MODE_NON_BURST_WITH_SYNC_EVENTS                (2 << 0)
>>  #define  VIDEO_MODE_BURST                                (3 << 0)
>> =20
>> -#define _MIPIA_EOT_DISABLE                (_MIPI_MMIO_BASE(dev_priv) + =
0xb05c)
>> -#define _MIPIC_EOT_DISABLE                (_MIPI_MMIO_BASE(dev_priv) + =
0xb85c)
>> -#define MIPI_EOT_DISABLE(port)                _MMIO_MIPI(port, _MIPIA_E=
OT_DISABLE, _MIPIC_EOT_DISABLE)
>> +#define _MIPIA_EOT_DISABLE                        0xb05c
>> +#define _MIPIC_EOT_DISABLE                        0xb85c
>> +#define MIPI_EOT_DISABLE(display, port)                _MMIO_MIPI(_MIPI=
_MMIO_BASE(display), port, _MIPIA_EOT_DISABLE, _MIPIC_EOT_DISABLE)
>>  #define  BXT_DEFEATURE_DPI_FIFO_CTR                        (1 << 9)
>>  #define  BXT_DPHY_DEFEATURE_EN                                (1 << 8)
>>  #define  LP_RX_TIMEOUT_ERROR_RECOVERY_DISABLE                (1 << 7)
>> @@ -289,36 +285,36 @@
>>  #define  CLOCKSTOP                                        (1 << 1)
>>  #define  EOT_DISABLE                                        (1 << 0)
>> =20
>> -#define _MIPIA_LP_BYTECLK                (_MIPI_MMIO_BASE(dev_priv) + 0=
xb060)
>> -#define _MIPIC_LP_BYTECLK                (_MIPI_MMIO_BASE(dev_priv) + 0=
xb860)
>> -#define MIPI_LP_BYTECLK(port)                _MMIO_MIPI(port, _MIPIA_LP=
_BYTECLK, _MIPIC_LP_BYTECLK)
>> +#define _MIPIA_LP_BYTECLK                        0xb060
>> +#define _MIPIC_LP_BYTECLK                        0xb860
>> +#define MIPI_LP_BYTECLK(display, port)                _MMIO_MIPI(_MIPI_=
MMIO_BASE(display), port, _MIPIA_LP_BYTECLK, _MIPIC_LP_BYTECLK)
>>  #define  LP_BYTECLK_SHIFT                                0
>>  #define  LP_BYTECLK_MASK                                (0xffff << 0)
>> =20
>> -#define _MIPIA_TLPX_TIME_COUNT                (_MIPI_MMIO_BASE(dev_priv=
) + 0xb0a4)
>> -#define _MIPIC_TLPX_TIME_COUNT                (_MIPI_MMIO_BASE(dev_priv=
) + 0xb8a4)
>> -#define MIPI_TLPX_TIME_COUNT(port)         _MMIO_MIPI(port, _MIPIA_TLPX=
_TIME_COUNT, _MIPIC_TLPX_TIME_COUNT)
>> +#define _MIPIA_TLPX_TIME_COUNT                        0xb0a4
>> +#define _MIPIC_TLPX_TIME_COUNT                        0xb8a4
>> +#define MIPI_TLPX_TIME_COUNT(display, port)         _MMIO_MIPI(_MIPI_MM=
IO_BASE(display), port, _MIPIA_TLPX_TIME_COUNT, _MIPIC_TLPX_TIME_COUNT)
>> =20
>> -#define _MIPIA_CLK_LANE_TIMING                (_MIPI_MMIO_BASE(dev_priv=
) + 0xb098)
>> -#define _MIPIC_CLK_LANE_TIMING                (_MIPI_MMIO_BASE(dev_priv=
) + 0xb898)
>> -#define MIPI_CLK_LANE_TIMING(port)         _MMIO_MIPI(port, _MIPIA_CLK_=
LANE_TIMING, _MIPIC_CLK_LANE_TIMING)
>> +#define _MIPIA_CLK_LANE_TIMING                        0xb098
>> +#define _MIPIC_CLK_LANE_TIMING                        0xb898
>> +#define MIPI_CLK_LANE_TIMING(display, port)        _MMIO_MIPI(_MIPI_MMI=
O_BASE(display), port, _MIPIA_CLK_LANE_TIMING, _MIPIC_CLK_LANE_TIMING)
>> =20
>>  /* bits 31:0 */
>> -#define _MIPIA_LP_GEN_DATA                (_MIPI_MMIO_BASE(dev_priv) + =
0xb064)
>> -#define _MIPIC_LP_GEN_DATA                (_MIPI_MMIO_BASE(dev_priv) + =
0xb864)
>> -#define MIPI_LP_GEN_DATA(port)                _MMIO_MIPI(port, _MIPIA_L=
P_GEN_DATA, _MIPIC_LP_GEN_DATA)
>> +#define _MIPIA_LP_GEN_DATA                        0xb064
>> +#define _MIPIC_LP_GEN_DATA                        0xb864
>> +#define MIPI_LP_GEN_DATA(display, port)                _MMIO_MIPI(_MIPI=
_MMIO_BASE(display), port, _MIPIA_LP_GEN_DATA, _MIPIC_LP_GEN_DATA)
>> =20
>>  /* bits 31:0 */
>> -#define _MIPIA_HS_GEN_DATA                (_MIPI_MMIO_BASE(dev_priv) + =
0xb068)
>> -#define _MIPIC_HS_GEN_DATA                (_MIPI_MMIO_BASE(dev_priv) + =
0xb868)
>> -#define MIPI_HS_GEN_DATA(port)                _MMIO_MIPI(port, _MIPIA_H=
S_GEN_DATA, _MIPIC_HS_GEN_DATA)
>> -
>> -#define _MIPIA_LP_GEN_CTRL                (_MIPI_MMIO_BASE(dev_priv) + =
0xb06c)
>> -#define _MIPIC_LP_GEN_CTRL                (_MIPI_MMIO_BASE(dev_priv) + =
0xb86c)
>> -#define MIPI_LP_GEN_CTRL(port)                _MMIO_MIPI(port, _MIPIA_L=
P_GEN_CTRL, _MIPIC_LP_GEN_CTRL)
>> -#define _MIPIA_HS_GEN_CTRL                (_MIPI_MMIO_BASE(dev_priv) + =
0xb070)
>> -#define _MIPIC_HS_GEN_CTRL                (_MIPI_MMIO_BASE(dev_priv) + =
0xb870)
>> -#define MIPI_HS_GEN_CTRL(port)                _MMIO_MIPI(port, _MIPIA_H=
S_GEN_CTRL, _MIPIC_HS_GEN_CTRL)
>> +#define _MIPIA_HS_GEN_DATA                        0xb068
>> +#define _MIPIC_HS_GEN_DATA                        0xb868
>> +#define MIPI_HS_GEN_DATA(display, port)                _MMIO_MIPI(_MIPI=
_MMIO_BASE(display), port, _MIPIA_HS_GEN_DATA, _MIPIC_HS_GEN_DATA)
>> +
>> +#define _MIPIA_LP_GEN_CTRL                        0xb06c
>> +#define _MIPIC_LP_GEN_CTRL                        0xb86c
>> +#define MIPI_LP_GEN_CTRL(display, port)                _MMIO_MIPI(_MIPI=
_MMIO_BASE(display), port, _MIPIA_LP_GEN_CTRL, _MIPIC_LP_GEN_CTRL)
>> +#define _MIPIA_HS_GEN_CTRL                        0xb070
>> +#define _MIPIC_HS_GEN_CTRL                        0xb870
>> +#define MIPI_HS_GEN_CTRL(display, port)                _MMIO_MIPI(_MIPI=
_MMIO_BASE(display), port, _MIPIA_HS_GEN_CTRL, _MIPIC_HS_GEN_CTRL)
>>  #define  LONG_PACKET_WORD_COUNT_SHIFT                        8
>>  #define  LONG_PACKET_WORD_COUNT_MASK                        (0xffff << =
8)
>>  #define  SHORT_PACKET_PARAM_SHIFT                        8
>> @@ -329,9 +325,9 @@
>>  #define  DATA_TYPE_MASK                                        (0x3f <<=
 0)
>>  /* data type values, see include/video/mipi_display.h */
>> =20
>> -#define _MIPIA_GEN_FIFO_STAT                (_MIPI_MMIO_BASE(dev_priv) =
+ 0xb074)
>> -#define _MIPIC_GEN_FIFO_STAT                (_MIPI_MMIO_BASE(dev_priv) =
+ 0xb874)
>> -#define MIPI_GEN_FIFO_STAT(port)        _MMIO_MIPI(port, _MIPIA_GEN_FIF=
O_STAT, _MIPIC_GEN_FIFO_STAT)
>> +#define _MIPIA_GEN_FIFO_STAT                        0xb074
>> +#define _MIPIC_GEN_FIFO_STAT                        0xb874
>> +#define MIPI_GEN_FIFO_STAT(display, port)        _MMIO_MIPI(_MIPI_MMIO_=
BASE(display), port, _MIPIA_GEN_FIFO_STAT, _MIPIC_GEN_FIFO_STAT)
>>  #define  DPI_FIFO_EMPTY                                        (1 << 28=
)
>>  #define  DBI_FIFO_EMPTY                                        (1 << 27=
)
>>  #define  LP_CTRL_FIFO_EMPTY                                (1 << 26)
>> @@ -347,16 +343,16 @@
>>  #define  HS_DATA_FIFO_HALF_EMPTY                        (1 << 1)
>>  #define  HS_DATA_FIFO_FULL                                (1 << 0)
>> =20
>> -#define _MIPIA_HS_LS_DBI_ENABLE                (_MIPI_MMIO_BASE(dev_pri=
v) + 0xb078)
>> -#define _MIPIC_HS_LS_DBI_ENABLE                (_MIPI_MMIO_BASE(dev_pri=
v) + 0xb878)
>> -#define MIPI_HS_LP_DBI_ENABLE(port)        _MMIO_MIPI(port, _MIPIA_HS_L=
S_DBI_ENABLE, _MIPIC_HS_LS_DBI_ENABLE)
>> +#define _MIPIA_HS_LS_DBI_ENABLE                        0xb078
>> +#define _MIPIC_HS_LS_DBI_ENABLE                        0xb878
>> +#define MIPI_HS_LP_DBI_ENABLE(display, port)        _MMIO_MIPI(_MIPI_MM=
IO_BASE(display), port, _MIPIA_HS_LS_DBI_ENABLE, _MIPIC_HS_LS_DBI_ENABLE)
>>  #define  DBI_HS_LP_MODE_MASK                                (1 << 0)
>>  #define  DBI_LP_MODE                                        (1 << 0)
>>  #define  DBI_HS_MODE                                        (0 << 0)
>> =20
>> -#define _MIPIA_DPHY_PARAM                (_MIPI_MMIO_BASE(dev_priv) + 0=
xb080)
>> -#define _MIPIC_DPHY_PARAM                (_MIPI_MMIO_BASE(dev_priv) + 0=
xb880)
>> -#define MIPI_DPHY_PARAM(port)                _MMIO_MIPI(port, _MIPIA_DP=
HY_PARAM, _MIPIC_DPHY_PARAM)
>> +#define _MIPIA_DPHY_PARAM                        0xb080
>> +#define _MIPIC_DPHY_PARAM                        0xb880
>> +#define MIPI_DPHY_PARAM(display, port)                _MMIO_MIPI(_MIPI_=
MMIO_BASE(display), port, _MIPIA_DPHY_PARAM, _MIPIC_DPHY_PARAM)
>>  #define  EXIT_ZERO_COUNT_SHIFT                                24
>>  #define  EXIT_ZERO_COUNT_MASK                                (0x3f << 2=
4)
>>  #define  TRAIL_COUNT_SHIFT                                16
>> @@ -366,34 +362,34 @@
>>  #define  PREPARE_COUNT_SHIFT                                0
>>  #define  PREPARE_COUNT_MASK                                (0x3f << 0)
>> =20
>> -#define _MIPIA_DBI_BW_CTRL                (_MIPI_MMIO_BASE(dev_priv) + =
0xb084)
>> -#define _MIPIC_DBI_BW_CTRL                (_MIPI_MMIO_BASE(dev_priv) + =
0xb884)
>> -#define MIPI_DBI_BW_CTRL(port)                _MMIO_MIPI(port, _MIPIA_D=
BI_BW_CTRL, _MIPIC_DBI_BW_CTRL)
>> +#define _MIPIA_DBI_BW_CTRL                        0xb084
>> +#define _MIPIC_DBI_BW_CTRL                        0xb884
>> +#define MIPI_DBI_BW_CTRL(display, port)                _MMIO_MIPI(_MIPI=
_MMIO_BASE(display), port, _MIPIA_DBI_BW_CTRL, _MIPIC_DBI_BW_CTRL)
>> =20
>> -#define _MIPIA_CLK_LANE_SWITCH_TIME_CNT                (_MIPI_MMIO_BASE=
(dev_priv) + 0xb088)
>> -#define _MIPIC_CLK_LANE_SWITCH_TIME_CNT                (_MIPI_MMIO_BASE=
(dev_priv) + 0xb888)
>> -#define MIPI_CLK_LANE_SWITCH_TIME_CNT(port)        _MMIO_MIPI(port, _MI=
PIA_CLK_LANE_SWITCH_TIME_CNT, _MIPIC_CLK_LANE_SWITCH_TIME_CNT)
>> +#define _MIPIA_CLK_LANE_SWITCH_TIME_CNT                0xb088
>> +#define _MIPIC_CLK_LANE_SWITCH_TIME_CNT                0xb888
>> +#define MIPI_CLK_LANE_SWITCH_TIME_CNT(display, port)        _MMIO_MIPI(=
_MIPI_MMIO_BASE(display), port, _MIPIA_CLK_LANE_SWITCH_TIME_CNT, _MIPIC_CLK=
_LANE_SWITCH_TIME_CNT)
>>  #define  LP_HS_SSW_CNT_SHIFT                                16
>>  #define  LP_HS_SSW_CNT_MASK                                (0xffff << 1=
6)
>>  #define  HS_LP_PWR_SW_CNT_SHIFT                                0
>>  #define  HS_LP_PWR_SW_CNT_MASK                                (0xffff <=
< 0)
>> =20
>> -#define _MIPIA_STOP_STATE_STALL                (_MIPI_MMIO_BASE(dev_pri=
v) + 0xb08c)
>> -#define _MIPIC_STOP_STATE_STALL                (_MIPI_MMIO_BASE(dev_pri=
v) + 0xb88c)
>> -#define MIPI_STOP_STATE_STALL(port)        _MMIO_MIPI(port, _MIPIA_STOP=
_STATE_STALL, _MIPIC_STOP_STATE_STALL)
>> +#define _MIPIA_STOP_STATE_STALL                        0xb08c
>> +#define _MIPIC_STOP_STATE_STALL                        0xb88c
>> +#define MIPI_STOP_STATE_STALL(display, port)        _MMIO_MIPI(_MIPI_MM=
IO_BASE(display), port, _MIPIA_STOP_STATE_STALL, _MIPIC_STOP_STATE_STALL)
>>  #define  STOP_STATE_STALL_COUNTER_SHIFT                        0
>>  #define  STOP_STATE_STALL_COUNTER_MASK                        (0xff << =
0)
>> =20
>> -#define _MIPIA_INTR_STAT_REG_1                (_MIPI_MMIO_BASE(dev_priv=
) + 0xb090)
>> -#define _MIPIC_INTR_STAT_REG_1                (_MIPI_MMIO_BASE(dev_priv=
) + 0xb890)
>> -#define MIPI_INTR_STAT_REG_1(port)        _MMIO_MIPI(port, _MIPIA_INTR_=
STAT_REG_1, _MIPIC_INTR_STAT_REG_1)
>> -#define _MIPIA_INTR_EN_REG_1                (_MIPI_MMIO_BASE(dev_priv) =
+ 0xb094)
>> -#define _MIPIC_INTR_EN_REG_1                (_MIPI_MMIO_BASE(dev_priv) =
+ 0xb894)
>> -#define MIPI_INTR_EN_REG_1(port)        _MMIO_MIPI(port, _MIPIA_INTR_EN=
_REG_1, _MIPIC_INTR_EN_REG_1)
>> +#define _MIPIA_INTR_STAT_REG_1                        0xb090
>> +#define _MIPIC_INTR_STAT_REG_1                        0xb890
>> +#define MIPI_INTR_STAT_REG_1(display, port)        _MMIO_MIPI(_MIPI_MMI=
O_BASE(display), port, _MIPIA_INTR_STAT_REG_1, _MIPIC_INTR_STAT_REG_1)
>> +#define _MIPIA_INTR_EN_REG_1                        0xb094
>> +#define _MIPIC_INTR_EN_REG_1                        0xb894
>> +#define MIPI_INTR_EN_REG_1(display, port)        _MMIO_MIPI(_MIPI_MMIO_=
BASE(display), port, _MIPIA_INTR_EN_REG_1, _MIPIC_INTR_EN_REG_1)
>>  #define  RX_CONTENTION_DETECTED                                (1 << 0)
>> =20
>>  /* XXX: only pipe A ?!? */
>> -#define MIPIA_DBI_TYPEC_CTRL                (_MIPI_MMIO_BASE(dev_priv) =
+ 0xb100)
>> +#define MIPIA_DBI_TYPEC_CTRL(display)                (_MIPI_MMIO_BASE(d=
isplay) + 0xb100)
>>  #define  DBI_TYPEC_ENABLE                                (1 << 31)
>>  #define  DBI_TYPEC_WIP                                        (1 << 30)
>>  #define  DBI_TYPEC_OPTION_SHIFT                                28
>> @@ -406,9 +402,9 @@
>> =20
>>  /* MIPI adapter registers */
>> =20
>> -#define _MIPIA_CTRL                        (_MIPI_MMIO_BASE(dev_priv) +=
 0xb104)
>> -#define _MIPIC_CTRL                        (_MIPI_MMIO_BASE(dev_priv) +=
 0xb904)
>> -#define MIPI_CTRL(port)                        _MMIO_MIPI(port, _MIPIA_=
CTRL, _MIPIC_CTRL)
>> +#define _MIPIA_CTRL                                0xb104
>> +#define _MIPIC_CTRL                                0xb904
>> +#define MIPI_CTRL(display, port)                _MMIO_MIPI(_MIPI_MMIO_B=
ASE(display), port, _MIPIA_CTRL, _MIPIC_CTRL)
>>  #define  ESCAPE_CLOCK_DIVIDER_SHIFT                        5 /* A only =
*/
>>  #define  ESCAPE_CLOCK_DIVIDER_MASK                        (3 << 5)
>>  #define  ESCAPE_CLOCK_DIVIDER_1                                (0 << 5)
>> @@ -439,41 +435,41 @@
>>  #define  GLK_MIPIIO_PORT_POWERED                        (1 << 1) /* RO =
*/
>>  #define  GLK_MIPIIO_ENABLE                                (1 << 0)
>> =20
>> -#define _MIPIA_DATA_ADDRESS                (_MIPI_MMIO_BASE(dev_priv) +=
 0xb108)
>> -#define _MIPIC_DATA_ADDRESS                (_MIPI_MMIO_BASE(dev_priv) +=
 0xb908)
>> -#define MIPI_DATA_ADDRESS(port)                _MMIO_MIPI(port, _MIPIA_=
DATA_ADDRESS, _MIPIC_DATA_ADDRESS)
>> +#define _MIPIA_DATA_ADDRESS                        0xb108
>> +#define _MIPIC_DATA_ADDRESS                        0xb908
>> +#define MIPI_DATA_ADDRESS(display, port)        _MMIO_MIPI(_MIPI_MMIO_B=
ASE(display), port, _MIPIA_DATA_ADDRESS, _MIPIC_DATA_ADDRESS)
>>  #define  DATA_MEM_ADDRESS_SHIFT                                5
>>  #define  DATA_MEM_ADDRESS_MASK                                (0x7fffff=
f << 5)
>>  #define  DATA_VALID                                        (1 << 0)
>> =20
>> -#define _MIPIA_DATA_LENGTH                (_MIPI_MMIO_BASE(dev_priv) + =
0xb10c)
>> -#define _MIPIC_DATA_LENGTH                (_MIPI_MMIO_BASE(dev_priv) + =
0xb90c)
>> -#define MIPI_DATA_LENGTH(port)                _MMIO_MIPI(port, _MIPIA_D=
ATA_LENGTH, _MIPIC_DATA_LENGTH)
>> +#define _MIPIA_DATA_LENGTH                        0xb10c
>> +#define _MIPIC_DATA_LENGTH                        0xb90c
>> +#define MIPI_DATA_LENGTH(display, port)                _MMIO_MIPI(_MIPI=
_MMIO_BASE(display), port, _MIPIA_DATA_LENGTH, _MIPIC_DATA_LENGTH)
>>  #define  DATA_LENGTH_SHIFT                                0
>>  #define  DATA_LENGTH_MASK                                (0xfffff << 0)
>> =20
>> -#define _MIPIA_COMMAND_ADDRESS                (_MIPI_MMIO_BASE(dev_priv=
) + 0xb110)
>> -#define _MIPIC_COMMAND_ADDRESS                (_MIPI_MMIO_BASE(dev_priv=
) + 0xb910)
>> -#define MIPI_COMMAND_ADDRESS(port)        _MMIO_MIPI(port, _MIPIA_COMMA=
ND_ADDRESS, _MIPIC_COMMAND_ADDRESS)
>> +#define _MIPIA_COMMAND_ADDRESS                        0xb110
>> +#define _MIPIC_COMMAND_ADDRESS                        0xb910
>> +#define MIPI_COMMAND_ADDRESS(display, port)        _MMIO_MIPI(_MIPI_MMI=
O_BASE(display), port, _MIPIA_COMMAND_ADDRESS, _MIPIC_COMMAND_ADDRESS)
>>  #define  COMMAND_MEM_ADDRESS_SHIFT                        5
>>  #define  COMMAND_MEM_ADDRESS_MASK                        (0x7ffffff << =
5)
>>  #define  AUTO_PWG_ENABLE                                (1 << 2)
>>  #define  MEMORY_WRITE_DATA_FROM_PIPE_RENDERING                (1 << 1)
>>  #define  COMMAND_VALID                                        (1 << 0)
>> =20
>> -#define _MIPIA_COMMAND_LENGTH                (_MIPI_MMIO_BASE(dev_priv)=
 + 0xb114)
>> -#define _MIPIC_COMMAND_LENGTH                (_MIPI_MMIO_BASE(dev_priv)=
 + 0xb914)
>> -#define MIPI_COMMAND_LENGTH(port)        _MMIO_MIPI(port, _MIPIA_COMMAN=
D_LENGTH, _MIPIC_COMMAND_LENGTH)
>> +#define _MIPIA_COMMAND_LENGTH                        0xb114
>> +#define _MIPIC_COMMAND_LENGTH                        0xb914
>> +#define MIPI_COMMAND_LENGTH(display, port)        _MMIO_MIPI(_MIPI_MMIO=
_BASE(display), port, _MIPIA_COMMAND_LENGTH, _MIPIC_COMMAND_LENGTH)
>>  #define  COMMAND_LENGTH_SHIFT(n)                        (8 * (n)) /* n:=
 0...3 */
>>  #define  COMMAND_LENGTH_MASK(n)                                (0xff <<=
 (8 * (n)))
>> =20
>> -#define _MIPIA_READ_DATA_RETURN0        (_MIPI_MMIO_BASE(dev_priv) + 0x=
b118)
>> -#define _MIPIC_READ_DATA_RETURN0        (_MIPI_MMIO_BASE(dev_priv) + 0x=
b918)
>> -#define MIPI_READ_DATA_RETURN(port, n) _MMIO(_MIPI(port, _MIPIA_READ_DA=
TA_RETURN0, _MIPIC_READ_DATA_RETURN0) + 4 * (n)) /* n: 0...7 */
>> +#define _MIPIA_READ_DATA_RETURN0                0xb118
>> +#define _MIPIC_READ_DATA_RETURN0                0xb918
>> +#define MIPI_READ_DATA_RETURN(display, port, n)        _MMIO_MIPI(_MIPI=
_MMIO_BASE(display) + 4 * (n), port, _MIPIA_READ_DATA_RETURN0, _MIPIC_READ_=
DATA_RETURN0) /* n: 0...7 */
>> =20
>> -#define _MIPIA_READ_DATA_VALID                (_MIPI_MMIO_BASE(dev_priv=
) + 0xb138)
>> -#define _MIPIC_READ_DATA_VALID                (_MIPI_MMIO_BASE(dev_priv=
) + 0xb938)
>> -#define MIPI_READ_DATA_VALID(port)        _MMIO_MIPI(port, _MIPIA_READ_=
DATA_VALID, _MIPIC_READ_DATA_VALID)
>> +#define _MIPIA_READ_DATA_VALID                        0xb138
>> +#define _MIPIC_READ_DATA_VALID                        0xb938
>> +#define MIPI_READ_DATA_VALID(display, port)        _MMIO_MIPI(_MIPI_MMI=
O_BASE(display), port, _MIPIA_READ_DATA_VALID, _MIPIC_READ_DATA_VALID)
>>  #define  READ_DATA_VALID(n)                                (1 << (n))
>> =20
>>  #endif /* __VLV_DSI_REGS_H__ */
>> --=20
>> 2.39.2
>>
