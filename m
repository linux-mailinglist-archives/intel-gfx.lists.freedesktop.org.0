Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84FDE9AD777
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 00:21:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C720610E24C;
	Wed, 23 Oct 2024 22:21:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ycgj8jnk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60E1510E24C;
 Wed, 23 Oct 2024 22:21:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729722079; x=1761258079;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=GWJI81UX4YJ4gqweGC5OXOxV9zTYqMMPQk+m1Kzo6D8=;
 b=Ycgj8jnkgywuwFsUnW2V7QhYQ3cCIoZizG+1DXam1f/Aha+EhMQwehsM
 yrM2W9BmMYk0wRkerLPTW5w78TuYYsRqEJAnyij4XzFBvcEVR7JwWjQ6Y
 c0JGwuHQxatwUYcV6DFYGacDeZ2xTwEMSJc+1uJAAyry4INNddIVLOIUK
 Pydirs9Wy3bVICu741q/6jY0A0bIEUG2yGjR+lwP5uxq+8h9EnyUkoNIN
 9QzFkOm7tBm/4KK7HoOznqMuckVAGdmLdEj82bFFpFQGHgmhw4xPD1d7d
 psnaoGv4lWvsIMwQ7EyyBBoYGXHmhBqqfqBGT3ZoFV80Y/2sYsWng92Z2 w==;
X-CSE-ConnectionGUID: GZHUHUteTm+8dFC3v6u7WA==
X-CSE-MsgGUID: jsXvgwgHSwqOpC9PZCgl+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="29230918"
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="29230918"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 15:21:18 -0700
X-CSE-ConnectionGUID: WR0t5otgSHS4LsFag58t9A==
X-CSE-MsgGUID: 1aeT3Q/cS8u7r0Bq7alM4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="85516224"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 15:21:18 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 15:21:17 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 15:21:17 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 15:21:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nf/bDoS5lr27da2BWiefgqZkIm5w8qTltMmjIHrWlAtl+GgHBwLhWzfmoSkJIYBBmw+1owkqXRQBT1VnYEW/cd0bViuh3ywu4CGx3v1HGN9OPV4EPlLicOE6JgDvx0QNFkv9KgSzE0Y/+dQ4wut+H7qARN7e8ulZWTUT36d599vPPfpXdB3zjp3TKTTozT+kenTIryOTDruPisaQEw/IlHLO9D+38fieoVK1/lFZB3iejZC7PWFcEvwFTjUcuE2Xl2GVd0jxNOsEjqiQJ2oDzQCaY+Pe3d97rRn6KfkOzvkbkoGIEugbO3dDgRHCVsOLbKQBjyq9NH8YYOfRKNNszg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fGDq3UGzEJuZ+CgzPMPL1jRhiQiTU0deCp3q8YFymRg=;
 b=KFTkpKgQ3M3QRe0+CiBb0xbL7N4GyrFTePffSvDuNYHMPiK1ewZ00HsnJGMVvNimd5YUfvUMVlO+bs+9L80+fs6OtIxhe5dRyT7k7XB/PJjFRvchvQU2cLVqXVP1OzgQSx42JbgZMsgEyDmucRIJ7a5v3eTWfSeKllqQUdSSprWQo97vYtCDqxYyMlwZlblPHJtnBZ2R76o94Mi4L+4UdfkSAOILbpZ9quFWDHSKua7RKmqdZcByKVXERxDRzlM1HLQuC6AJVbr/1IHlX0HnRY17y1Rq8mgHyzhJWtewgmPAG8fOOdLZKT0F4iwfhHneUKYhMiOi3kM5ZS1S8ws1VQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CY5PR11MB6510.namprd11.prod.outlook.com (2603:10b6:930:42::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.29; Wed, 23 Oct
 2024 22:21:13 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8093.018; Wed, 23 Oct 2024
 22:21:13 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20241023214701.963830-13-clinton.a.taylor@intel.com>
References: <20241023214701.963830-1-clinton.a.taylor@intel.com>
 <20241023214701.963830-13-clinton.a.taylor@intel.com>
Subject: Re: [PATCH v2 12/12] drm/i915/xe3lpd: Power request
 asserting/deasserting
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Clint Taylor <clinton.a.taylor@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Wed, 23 Oct 2024 19:21:09 -0300
Message-ID: <172972206900.4179.18337999024096647148@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0135.namprd04.prod.outlook.com
 (2603:10b6:303:84::20) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CY5PR11MB6510:EE_
X-MS-Office365-Filtering-Correlation-Id: 4f3f5fb6-9ee5-41fb-3fe6-08dcf3b1011d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QTZUT29CSTB0UjlDM3dPTTZweW0rQ0UxQ0svVXloS0xiOTdRK2VvMUdkWmZv?=
 =?utf-8?B?cUJlTmdFK3R4ckg1NmxjU3VOTUVwRnNZcUxWQ05RbEF1TU5QOUZLNkx3Q3dD?=
 =?utf-8?B?eVJnQ1JxMWdqSmhleGtVY2dwdHFSell2MFRVUnpBZmttSWZVZzl3SzIwNVR1?=
 =?utf-8?B?dWlkMlhCa3grZXdncXRRRFVYRXpEaWpMS2hUNTBxWEFKbXJiYjE5eEJwQlBI?=
 =?utf-8?B?YmVSbWlKU1habFFYa0RtOEdXNlN6T3UyLzdNalhReDgxeEFJa0tSUVl0dHd4?=
 =?utf-8?B?emZJOWxIY0V1NGhNWW5XTFRzbHNHdGJudldpcWZaWUV1Z0czOWF0dkNMWndr?=
 =?utf-8?B?aDVVaWoxWm13UG5WRUVUU25ld1lBMmZRaUZ2VEI2U2JFRUZlRDNHZmFFQkQy?=
 =?utf-8?B?OUpRNUJqdVFUcWZNTTlxUnNEeVB5bTgvQVdTS0ZobHRoZ0NMZm5qQ21WVHNU?=
 =?utf-8?B?Rmo3c2xxTzRwM290Yml5Y3Z5THlsLzJoeDNXWDVtSjdGWjZ5TGMxcXlCWEJX?=
 =?utf-8?B?amJvWlUwNGhudnJiemYxU3VZZ0ttMExSdUZKTHJXQ3dLbTZwZkxUdE1FMS9Z?=
 =?utf-8?B?cjlNQjVlMm8zYndDMkI2Wlc2VHZXTUNNUUUzWXk2eGFMa2orZkFmODBieUU3?=
 =?utf-8?B?NEoweVhiOVdWMjRUY3lnUmZlMzlMb05ETm85Qkc3TThLWDFMZnBFb2g0VUwv?=
 =?utf-8?B?Tnh0OXJDRCtaQVJEekVSaWVvamcrSzNBMy9pZlhVbTRVR1ZUT21Vd0Fjd3ps?=
 =?utf-8?B?cURXb2ZVdUlFa2FPQ05nKzVxSllTQVA4ZUxUV1FVWXlqREZrNkd1dGpwK3VI?=
 =?utf-8?B?V1FINndnVUZEcnFFREgrOVlYdFVuNWRTZUw0U3Y4K1FSMWFJUFRLWmJ5eE5C?=
 =?utf-8?B?VUUxMDRjbjYzVUNUdDBpK3BqNVZsL1k3TVhzeldJeXkvRFJFY0N2TW9DWCtk?=
 =?utf-8?B?bmdNYVhIK3pBUm03VjNUdjJOUTdTK3pONXlCTTFsTFF5NWVsbGp3T001SXgy?=
 =?utf-8?B?QnEvc1pYMmUrM0kvUW4zcEVQK0QxMlNpclBmc21RcE1XRU9oVHdEd2pxUDA1?=
 =?utf-8?B?cWYwRDdWZ2tGazF1UW9UYmlZd0tZaHpQNE1RSUM3ZExNNWRlZjc2TnAvZXlh?=
 =?utf-8?B?STVZaUx3RVFxOHBseStkV0lGQ2EzTTh5L3FvVWUrVGpHS0tGRWJPWnZNd3N1?=
 =?utf-8?B?UThmTEh1TjZGRFI3Z2Z2aUxzaDMvSlBSdDFzK0cyb2FDWDM5bmtBQ1FCTzNp?=
 =?utf-8?B?SFJhQld0RVJndHpxNGJBOTNHbTJCS1VJcFRjOSs3WXowZnhCNjJpcUdrc2NE?=
 =?utf-8?B?QVoybExKbXFkRThDLzUyTEFJZUFIT1gwa01lRWp4TXJ0N3pFS1FHV045cUZv?=
 =?utf-8?B?UStRRmlkTEhlVmw0NERSdTlneE5OUFI5YWYxd04xT1A5UWJJeGdKWjVueHRK?=
 =?utf-8?B?aXlQa1VvOGM0SXVjbnE4dG9oMFZpT2ovcmszZk10K3FhaDJuQ3JxSy82S0xn?=
 =?utf-8?B?bXNiNTFORDVsUnRRK1JNZjU0RTlKZW93V1VjTk9YMEl4cnl3dHlSSnF2c0V2?=
 =?utf-8?B?RzRKYUJRN05SQlhhYVRkNzh4THhXWDBGNk5CUVEwUm1BNkFiOHJ1TkgxQ3lv?=
 =?utf-8?B?WVVHcEQrTTZ5SjFScDNKc0c4SzFpcWFMN1hiK2grRzFGTUQyT3BxcEljWit4?=
 =?utf-8?Q?GQxRH7GvRSYsGeOh+mRp?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TUNkNWdwQ3hua0Jlc25PZ094VXRWb0JSd2cyMUFOUUR3c09FR1J3cEp6blFF?=
 =?utf-8?B?UkhzWkNKMTdSNkJtZmZaWmZMV0hHTUJUN3VCSmhIK2FDVXgyM3JPdmdXT0V1?=
 =?utf-8?B?bzliYnNuT1gvNnNHSWdVM0MrQkdqQ0wybXdXQXVmYUNtNzdPZ1l3dGlUUkdw?=
 =?utf-8?B?eGQzTzhNRFY5dER3aEtQMlNVUjRJM2hLNUlONU1ZUzZrcXVsYmhIZFVGOEl6?=
 =?utf-8?B?aHhaUnlXYXZLK3RVLzZadTU2WTc2QmRhOTZEV2w2YXlkUWlUbENKSlFhZWwx?=
 =?utf-8?B?S3lTNzNZT3h3ODBqemRiWUhmNlFzWGtFcnY5bEQ0cmdmZTZoSlpIWDhGL1Rp?=
 =?utf-8?B?NkN6RnI2MEc2NWRtWlV2eUQza0pTTG05eHl4RTJFVG9RUTBTZjVyL2d2cTNL?=
 =?utf-8?B?RElvWWlyeUtpeGtCOTBSM3lPMGIxOEpCS0E5ZVdQZ1JmZFFvSVZNbS93OHpD?=
 =?utf-8?B?YUZBZ1Y4SFk2QTBYRkNHM3RVZDE0UXdLNEdnRS9lM2psZno2RUo2YnVOLzJm?=
 =?utf-8?B?WjNLSGV2QWl6M1lrMjlvNlV1cy9yYjdoL3FMdW55alRZbHl2a29ZTDJSeGpY?=
 =?utf-8?B?dU9WT2MzeFBTSTJBc0gvOGliQlFqeFREMVViZHNBWDJzcHRNQjF6ZmJ0Mld5?=
 =?utf-8?B?eWdza0JrR1JIdzNQV1JGT211Tk1rdzFnMHJHdll0d1Vua2N4MGl6eExrNysr?=
 =?utf-8?B?dFdEQUNjRFFqR2xTaGdLUzZ0MUZqRXE0OGVwdXcrK3hCT21HTEw5Zld1NzBk?=
 =?utf-8?B?N045b1lxUHhYcGdLNjZLbk4xbXp4R25XS3FLdHA0UTBXNXFtNUpVa3ZuY1po?=
 =?utf-8?B?eloyRGNvTTZrQ0lBTTFJQnJ3bmhWN1Bqamhadi9sL1Z2THMwaEJkaHFaMTlz?=
 =?utf-8?B?bUd6RU14WldHMG1hQW1IYkV0dWZwRDNJazdDRlhDVERqZ3ZHUTBBa2c5b2hQ?=
 =?utf-8?B?MytGMkV2Z1pvSFIxcnorUkJOVWhMYVE1ZnpJOFV2cWQveGlvTmFLeWhrUEFv?=
 =?utf-8?B?UlNzNTdZaVZsOWg4QmF1YWtrV3Z6VHZXN05KWjd6UzNDdzRSNS9GZVEzTXBE?=
 =?utf-8?B?WjJ4dmFVY0JOOFNha09DVk9BUmJSTCt5ajlLaGprR3lDU28yR1FsQkpLM0RF?=
 =?utf-8?B?aWJCVDZEOUdmT3dub2tBQ3BhZWZWczFJWERsT3VUQmdBSXAwZUozOEJJalFW?=
 =?utf-8?B?SnVDbVdQamdPdEtSeDMzamFwUFZiYjFIaWpwNmlvSGt0SFg3QlpKMGdIRzNa?=
 =?utf-8?B?THg1OUVYVjJvSllCVTd1QWpoS0pKc2RmYkU0RGxhOWF5UlJMRnlld3h2YVFS?=
 =?utf-8?B?Q2wzSkg0SmZ4UHJUcU9MUkhOa2toM2dlMTlhOVhkTXRNendvUXBEVTBPbndt?=
 =?utf-8?B?R09lNG54aEpuNk5JOFlyQXhqNEp3U1dBbmxPak8vMzRqRkJpd0FkbW1lRUE1?=
 =?utf-8?B?TTBCS016Qm5telhlaFNvR1JMbEhrVURiU2VjRDJ1OE8vVmU3dThOT0JVdTZW?=
 =?utf-8?B?WkpLdmt2RThlYzZoWG80R0lGK09jNVVRS0M3UVdmZGtNUmx3WWw1N0Q5RFN4?=
 =?utf-8?B?Q2Vyb09sbjFXckVlUjdOVitiTnh3YXBPNURKYzhrcnpBNXNKSzBVOW03Q3Rz?=
 =?utf-8?B?VG1Za1NLaUhqT0xlL3BjMFROR1BCZ1daenJxRmdwbGQ0WnZKVnc0dVZheFBY?=
 =?utf-8?B?ck9xZTFaOEhiTVJTNUFMdndwOHVzVWlCaUt2OERsclpnei9NeGIxQ1RzOFgv?=
 =?utf-8?B?Q25oYVI0M21jQkx1MHorclZjdThqOWhkbmt5RzR3Z2ZmRXRidFdGL3F2YXI1?=
 =?utf-8?B?Z0tkcFRmNUFocEV4Q3Jkc3VtNFNoV29wRU42N3JRc29Rb3QyaTZ0aTNMci9H?=
 =?utf-8?B?cFVjbDlTOGpnR1JITzlvdU92L3FvaXpRY3RUWlgraUE3N2RLejAwNncvYnE1?=
 =?utf-8?B?TnlGMEZ5WE9wWUFKVHNQd0I3dkpVTEprQnZxMi92S2x0WGJkTnBZVExOeU1p?=
 =?utf-8?B?VVZYRm5lMVdyRE11TVk4blloQjR4OUt2S0Q2MFhWYWtCanNkSmxGRldnaVhh?=
 =?utf-8?B?Rm5nbDVoQldFYUgzbGVQZjcxNStqK0JnUWNKczBPVHh0dWlJRVNtUjMwYVVP?=
 =?utf-8?B?Sy8wQUFBSlFMU3c5WWd6bzIwdEJWTFR6UjdCOXpTdGYyYWltczViZG8wSGtQ?=
 =?utf-8?B?WUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f3f5fb6-9ee5-41fb-3fe6-08dcf3b1011d
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2024 22:21:13.5743 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6sLwxjsl1R88p1//UQvUyG53PxLCMkT6wzwy5UqA2LVVIkx6rdQQ7PaIXjggIj/HAPsbg+okek99idd0LsIZbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6510
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

Quoting Clint Taylor (2024-10-23 18:47:01-03:00)
>From: Mika Kahola <mika.kahola@intel.com>
>
>There is a HW issue that arises when there are race conditions
>between TCSS entering/exiting TC7 or TC10 states while the
>driver is asserting/deasserting TCSS power request. As a
>workaround, Display driver will implement a mailbox sequence
>to ensure that the TCSS is in TC0 when TCSS power request is
>asserted/deasserted.
>
>The sequence is the following
>
>1. Read mailbox command status and wait until run/busy bit is
>   clear
>2. Write mailbox data value '1' for power request asserting
>   and '0' for power request deasserting
>3. Write mailbox command run/busy bit and command value with 0x1
>4. Read mailbox command and wait until run/busy bit is clear
>   before continuing power request.
>
>Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>

I ended up providing feedback on [1] before seeing the new version of
the series.

[1] https://patchwork.freedesktop.org/patch/620439/?series=3D140196&rev=3D1=
#comment_1130170

--
Gustavo Sousa

>---
> drivers/gpu/drm/i915/display/intel_tc.c | 40 +++++++++++++++++++++++++
> drivers/gpu/drm/i915/i915_reg.h         |  7 +++++
> 2 files changed, 47 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i91=
5/display/intel_tc.c
>index 6f2ee7dbc43b..7d9f87db381c 100644
>--- a/drivers/gpu/drm/i915/display/intel_tc.c
>+++ b/drivers/gpu/drm/i915/display/intel_tc.c
>@@ -1013,6 +1013,39 @@ xelpdp_tc_phy_wait_for_tcss_power(struct intel_tc_p=
ort *tc, bool enabled)
>         return true;
> }
>=20
>+static bool xelpdp_tc_phy_wait_for_tcss_ready(struct drm_i915_private *i9=
15,
>+                                              bool enable)
>+{
>+        if (DISPLAY_VER(i915) < 30)
>+                return true;
>+
>+        /* check if mailbox is running busy */
>+        if (intel_de_wait_for_clear(i915, TCSS_DISP_MAILBOX_IN_CMD,
>+                                    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY, 10=
)) {
>+                drm_dbg_kms(&i915->drm,
>+                            "timeout waiting for TCSS mailbox run/busy bi=
t to clear\n");
>+                return false;
>+        }
>+
>+        if (enable)
>+                intel_de_write(i915, TCSS_DISP_MAILBOX_IN_DATA, 1);
>+        else
>+                intel_de_write(i915, TCSS_DISP_MAILBOX_IN_DATA, 0);
>+
>+        intel_de_write(i915, TCSS_DISP_MAILBOX_IN_CMD,
>+                       TCSS_DISP_MAILBOX_IN_CMD_DATA(1));
>+
>+        /* wait to clear mailbox running busy bit before continuing */
>+        if (intel_de_wait_for_clear(i915, TCSS_DISP_MAILBOX_IN_CMD,
>+                                    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY, 10=
)) {
>+                drm_dbg_kms(&i915->drm,
>+                            "timeout waiting for TCSS mailbox run/busy bi=
t to clear\n");
>+                return false;
>+        }
>+
>+        return true;
>+}
>+
> static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, b=
ool enable)
> {
>         struct drm_i915_private *i915 =3D tc_to_i915(tc);
>@@ -1022,6 +1055,13 @@ static void __xelpdp_tc_phy_enable_tcss_power(struc=
t intel_tc_port *tc, bool ena
>=20
>         assert_tc_cold_blocked(tc);
>=20
>+        /*
>+         * Gfx driver workaround for PTL tcss_rxdetect_clkswb_req/ack han=
dshake
>+         * violation when pwwreq=3D 0->1 during TC7/10 entry
>+         */
>+        drm_WARN_ON(&i915->drm,
>+                    !xelpdp_tc_phy_wait_for_tcss_ready(i915, enable));
>+
>         val =3D intel_de_read(i915, reg);
>         if (enable)
>                 val |=3D XELPDP_TCSS_POWER_REQUEST;
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index 2743a2dd0a3d..d2775a32bf18 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -4539,6 +4539,13 @@ enum skl_power_gate {
> #define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_TBT        REG_BIT(1)
> #define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_ALT        REG_BIT(0)
>=20
>+#define TCSS_DISP_MAILBOX_IN_CMD                _MMIO(0x161300)
>+#define   TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY        REG_BIT(31)
>+#define   TCSS_DISP_MAILBOX_IN_CMD_CMD_MASK        REG_GENMASK(7, 0)
>+#define   TCSS_DISP_MAILBOX_IN_CMD_DATA(x)        TCSS_DISP_MAILBOX_IN_CM=
D_RUN_BUSY | \
>+                                                REG_FIELD_PREP(TCSS_DISP_=
MAILBOX_IN_CMD_CMD_MASK, (x))
>+#define TCSS_DISP_MAILBOX_IN_DATA                _MMIO(0x161304)
>+
> #define PRIMARY_SPI_TRIGGER                        _MMIO(0x102040)
> #define PRIMARY_SPI_ADDRESS                        _MMIO(0x102080)
> #define PRIMARY_SPI_REGIONID                        _MMIO(0x102084)
>--=20
>2.25.1
>
