Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 248FDB8B289
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 21:59:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B650F10EA79;
	Fri, 19 Sep 2025 19:59:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T4Cl2XCP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CC4D10EA79
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Sep 2025 19:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758311973; x=1789847973;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=5lO2OhI+CugHQR5fP3xKa5jnX9UmCm4CHAJfXJmYGfY=;
 b=T4Cl2XCPD/rOVKn7Pzx5wgtzKihtqOK5sEy2LcMOOx7KsHzM8H7ohLP+
 GAmm+zvNS68HcJimTz8SACegdw9HNMDyvJNRXtkW62j0a9w15SMavqzr6
 S4Dlfu4eXaPTtupak9zcMBM8Pm4ciOxZkpihTHyBHrgoEtV+PWDPj5Giy
 7peWuYADfBitJUYP0HXsXQqvoKMRnkqN+SY0GWdjRWic81wWF3m2ajoE9
 bkbjlA8bWOICSTMpW+AXoFNdclMCrP1mMjvxss7YRUtZoMPziYRuQCDRc
 JYXki0OIaeW5C/c1F5g7C8TMBvI3J7iyiNtOJFkmRzej10HVxxxSFzpjX A==;
X-CSE-ConnectionGUID: TVu53MoOTpCsSYMEClw1sQ==
X-CSE-MsgGUID: LkcunL43RmCN88r7mAjXBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="59705010"
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="59705010"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 12:59:32 -0700
X-CSE-ConnectionGUID: tq8i2hd/SVaDxDZXUJn0hQ==
X-CSE-MsgGUID: LM4+rL3FQQSGIBGlm1nleA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="175960765"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 12:59:33 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 19 Sep 2025 12:59:32 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 19 Sep 2025 12:59:32 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.41) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 19 Sep 2025 12:59:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BSlAJOiDt8bGS0Kaw4GszSvqfLDZ3YyEzuRYFl2AXJyqOZDN1bxGpXQLIjOmwUpvQVAzzjzMo7fsdZwmojaFcfxv60/SA2UlOhSvIRNf868glfAh5hy3XwZv5TKoj1kCcelY9Y2xpgc+SWiMuabM+DF+hRTN5KnPCv+Bcee0BceiPLzEXjcHOJkMAN9opUwMNgTMC3FEowLxmtuWCo8gf0spnIBEOlIo+t0VIG3AiR7bn+FAH2Y89HN/2gRiIU6UlKoI9vDhaZihtDCd5PQOqnuYAJT7akh/1trE+V5q6kUqLQcykabgpuH78KzseuhVKq4pgqDQZ4F3DFmzgEp4xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fBJn2nk1M9W8AnRO9BEeul1LbVY/mJNh/4YIDwnj57I=;
 b=Q1BwrDNrMVKrnkgGIDnRnZ/dKlz1uhvahoLsbNvjPweWTyDiQJxVpPWZ+1Yjnr1lu0784I0xWo1O+VsB3UTY1LhVgSTyy8QXGSABhMupFFApTkFZQ9zunOMmIxl99beWL/CBXlzWwvV2Jq3d5dVGYKPHgpjGXJSl5DSfzNcFkcN07TjHrjrFhBiuytVYO+LB4izTuKf0YuKh1TODXT2TdM2/ATmutjrRnzOeWoh7qGOFIt0KXCukXBjwIhUR7Y+WgatOAuDQaxGfPQcXJ+4g6IjO297Dr4AIc0ANt9IsU58G4hkPf281JaGmMuyLRVpZe8cvRMIE1R5P5KhruWBjzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS0PR11MB6541.namprd11.prod.outlook.com (2603:10b6:8:d3::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.14; Fri, 19 Sep
 2025 19:59:29 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9137.012; Fri, 19 Sep 2025
 19:59:28 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250919095920.1594604-1-dnyaneshwar.bhadane@intel.com>
References: <20250911210514.389014-1-dnyaneshwar.bhadane@intel.com>
 <20250919095920.1594604-1-dnyaneshwar.bhadane@intel.com>
Subject: Re: [PATCH v2 0/3] Add WCL as subplatform from PTL
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Fri, 19 Sep 2025 16:59:21 -0300
Message-ID: <175831196150.1987.16239854779197284060@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR13CA0020.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::25) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS0PR11MB6541:EE_
X-MS-Office365-Filtering-Correlation-Id: 7ae867f3-c49b-4995-a561-08ddf7b70ab3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VU5OcFJsbmJxSlBUMU5IS2o0OS9ZcHJ6MDR1TXdKTXpBMnNrQVpMdnArd1FH?=
 =?utf-8?B?cmhCSHB0YVNHUElSYUk1T2c1MVJjWm9mQVZVeTZ2cmRYc3RSTTBNL2IvNlNI?=
 =?utf-8?B?U09kMkJLQVd2TnlSYVd5WlZ2MVhKK0IzeVRocUpmR0l6a2c4bkppcU9BWG8r?=
 =?utf-8?B?YzFOM3pnR2Z6SEl6Si8yMUdmNjZsN05pbm5GNG1XQWt2K0ttckJGbFRzekl6?=
 =?utf-8?B?NlRpUzk1RmV5RGkyVmZtbVFIcWp0TWp5a0t6dzNzT0VTd25WVElaQ2xKRE80?=
 =?utf-8?B?a05vanl1NFVtQUV4VVE1VEhlYVV4NklCYzk0ZG9yYThUVHJ0MzJlMkFwVDF0?=
 =?utf-8?B?cGxLa3BhK1Y2NVk0aDhxR2ZKVHRGWTBzQWRqWkU2YlhkNllCWnlTb1lNL1hQ?=
 =?utf-8?B?R0N1bEI1bXJpb09IVFdsemowU0dwTnZiZ1JOV0kyZ3hwT0c2Q0xpdDZMVGxo?=
 =?utf-8?B?WnFjSTBiZ1JybnFYb0lIQVRhc3E5ZVhYMVFFR1lwSUkyd1BhazFJTDRSWmRW?=
 =?utf-8?B?aDBNVDByZFYxUTJzazFnOFF0a3pHL3ZsUGEySDRWV3ZwU2FiZU1GQXExM3hV?=
 =?utf-8?B?TllySm1qTEhRdGM1ZzZFSzF1dTlMYW5lTmVNN3YvMCtHNDVrVS9JelVaaXgw?=
 =?utf-8?B?dVJTUS9xeDFlZUJ6ZnRWVEZ2clpMc1JLdGsycWprS3ZoQnJ0M3YrT0JHbC9N?=
 =?utf-8?B?QlBveU5sRWlxMzdad1dTSGM2K0hEYUNVMGlpQVJRYnVGbERXR0RoOXBwOFNu?=
 =?utf-8?B?WlJod3UzNzVUTjFZK29hOGpjNEo3MnRnSWwwSm04eEJMRk56bUt3REVqM2ZP?=
 =?utf-8?B?VUl6MEZheXlDQlcrcG8vcWtEOWZRTVhCVkdaazVSeGJFYVZCbm5ZWHZBR0Ur?=
 =?utf-8?B?WDZ2amFPTVJiQnVrcFhRODhsNTRqY25RZFB2c3VKTVhuSVlDanJxUldOMmlp?=
 =?utf-8?B?Uno3MHArMG1zQ0J4YmFDMVFDNy9YZDNpMXVYMElsa3hGSVhxVkhONjBZZTZn?=
 =?utf-8?B?bDF2cSt5ZjZ3cnZJZUpya0hoRU1XblNFUHJ4eFNiT1ZSV3hFYlRNaTlpektB?=
 =?utf-8?B?d2VFTkRsdS9rd0EzdmZBbjJGOUpaYkFROHNDeTE2ZUJ4VUs5M0VPTVRESHZ2?=
 =?utf-8?B?aTQxOTdrWWZUaDIwU3JtM1daT0ZXcm5EbUp1ckk5bG1SNHlIaWluTVZMUE40?=
 =?utf-8?B?SWZPdGFMWDUrZm1JQVRtME5YOVBRcktDbTVCWkxmcFBNaEdwdTlESXBnSFRs?=
 =?utf-8?B?WGQ0b3BzL0wrY2Z2WWd1VWwrc0hCOUtOWEREbU90T2IxTG54bU9RWlRsQm1T?=
 =?utf-8?B?SHZTMUdzaGc4V1d0MmpzcVRhUjVUYko5dzVtTi80V0xrWWpEWmg0a2JkbnpX?=
 =?utf-8?B?cjNZbFNBbTRzeGJtMk0yMmcvcGVyelRLQ2ZmdFMwbzlsc1pOME1OUlc0eDZ4?=
 =?utf-8?B?MUlXcFVlVmd3bEFMekwrMlZ5ajhmQ0tMRzJwUHUwbjVzZmZyNFJtQVR3bGsy?=
 =?utf-8?B?K1M0em5OSEJWNmtZMlJDSzRMU2RRc2ZGbDRoY3AwTmgzYkhIc09UL3lrTE1v?=
 =?utf-8?B?eGlETFh2QW1jMFpESGV2N2M4enZaVUNpSW1ZY2w0Z2lKM0tRcFdlSCtTYjRF?=
 =?utf-8?B?TDFOYlNCR2hQcnN2czBGL0NEcXcxeU51VWlQcXVQcFlHeVpXcGYrL2lmZGZU?=
 =?utf-8?B?c01UN2lURVhVYUd0SHlnUCtSSWNnUW5aMEJWSlducVpIY0NrWGpPbXYycmxq?=
 =?utf-8?B?OU1JaFJZVnVrZzl4Tm5PVkxCRktFdWtMUCtIa0M3SVFpVTZFNmFLOU51S2lV?=
 =?utf-8?Q?1rxH2zLU1VIzBAeh9gN20OYtqa9oOMxYqsrCU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bDFOakN3K252YkQyUnJqT2JnRzFUYWRVOWFRUExjWldRdXlJVUtEUVZWMDVM?=
 =?utf-8?B?b2xSQWhIM1BXTkU0aXNNS0lDMVRTd2dHQmZ5WTBoNk16NmdVSld5aWJXVlBs?=
 =?utf-8?B?VDdzbHY4VW1GeWVaanhZMCt3by9NZ1MwT1F1NHpNc0dlcEd6YnJ2ZEZLWmpI?=
 =?utf-8?B?dnRRbUN4TWZVZGRVU2FYVitJVEJGTDZwTWtpQ0JLcm13eHZMYVE0eVJmMlZk?=
 =?utf-8?B?Y1NGaTZLSlhYWjZ0QlhTclNCUGlPSFFJWFFxWEQ3TlUrZTZEKzZTRTNLdWNn?=
 =?utf-8?B?SkdRUHZKMWp0VW5VM0lGWnFJRWNUcDdUYVd2ekk1ZUE0eWVUOGFwQk5mUkMx?=
 =?utf-8?B?RGgvK1UzbnpUUnZSbjJhdnBjUXZyY1JZUUJIQWZNdnhWclRMTklTNmFSWXdm?=
 =?utf-8?B?VDJpeXpHb2QzdkxYTll0ZUtwQzQ1L0pCRWdVSzNod2hXQWM5OUg2akMzZlFX?=
 =?utf-8?B?eWRPUUdrSEpFV08yRU1zNzlMOHE1R2RFc25KbGlVdGF0WjI4Q0VXNWRoYmVv?=
 =?utf-8?B?WG1LM0xkNDVsZkZEQ0cwTHBJVkNTZVU0aHoxYVUrcXpmMVlFRTFZWTZ3L0Rt?=
 =?utf-8?B?c3hjWlRWT1U3Vk0ydEhhWDFMKzZjN0MrNXRRM3R6a201UmhUUjA4ZG1nODdO?=
 =?utf-8?B?VnNOUCtXcnZ3dkowQXYrUjI2VVZ2eFo5SzJYRmpxWXhmVkRuRlpqYWtRS0RF?=
 =?utf-8?B?eC9XdEFZWjBxVVNDMW1POEg0WXAydTk1RUI5ekZTZEJwUy9ZZlMzQXhnY0VD?=
 =?utf-8?B?SzVaNDREVldWdlQxeW9seXZQL1gvS2RiQ2dDd1o1Nk9ySEdhNXFIbWZtdXlh?=
 =?utf-8?B?V1kvWE1hU3dyd2g2U3E1ZlBjMGJvWXZrWnVPa3lROCtiSG1odkdXSzFXSHdX?=
 =?utf-8?B?QUc2VFdlVUFGblppbWNTWDV0cHM5UXFMNkNPMjdZRDdsTy95eFpxWjBDYmFC?=
 =?utf-8?B?NzJhNGIvUWNNMzVwU0FTN0dyYVpUa1FJd0s2Uy9FSC8zeDRydmR3MUYwTUZt?=
 =?utf-8?B?REp4dHNUSGUyOFlhUkcwRGNlcnFIWHhCZ1dwRHRhMWRmZFREWGlnNWFRcTZZ?=
 =?utf-8?B?eXNpbWxBcmswUWF5ZzBGYU9JbzhwNDloUzZmb2NWZm0zdytpSmhnSEU3bTdS?=
 =?utf-8?B?OVQzcHNTaFA0MnRpNW5wa0VtNjI4Q0NjclFzMUhIUDl5eFdoakEyVjZidG1u?=
 =?utf-8?B?WU8vZXhJWitGRkk4SzZicTRlcithQlE0MlRZckdURW04RzZ1K3RIR2QwYVlr?=
 =?utf-8?B?RWlTUVp6SUYzd0gvb1RabG04U3FPWTV2dDd5c3AxTEtsTmdnTzZSeEpjc2V5?=
 =?utf-8?B?NUxxUVlTWldCMloyR2xSR05FaiszMTZiVU56T1Z2eGtqTDVoQzkybE51OGZF?=
 =?utf-8?B?YzJvQjQrSTJqcU1wcmtsU2J3THRGSWZGMHVlUkhFYTRub0FsNE9BMVArRElQ?=
 =?utf-8?B?QnVFMkUvd3hSQXNSc29aWXZpMUZ1S2d2WXFCMEd1TVl3K2dNek9CR1dydGFR?=
 =?utf-8?B?aU5qcmdJREEraWgxUXZqbjhKQWJNbTU5Mlh3LzlWUEFzYW1FditsQjdOT2Qy?=
 =?utf-8?B?alF3TU9PUGhNazVVTVBWekRZeGJ5SENXVmdUNWJTMVlOR2pKUERZZnd0RXJJ?=
 =?utf-8?B?OVFDRVJmSlVJc1IyYVJPdjVuRlVYdzFneGNCdHZHRk1KanUzblFZd3NoNk9p?=
 =?utf-8?B?MFNtWEprSUVOK09ZK01uTlVYdmxXVVNPa05RVUZzSXNNMnEyVlZNclFJc3c4?=
 =?utf-8?B?anB2LzhyNkRxS0o2YlQwNFBMRWxuVThVV0JkNTh5WTlEcDhMbFo1OHZNL3lQ?=
 =?utf-8?B?b1BsV2ZKNWM5a3Y2bnRFUW1CN2YrdXNMeXJCQUk1Q0w2WFNNMUwydEJINEV2?=
 =?utf-8?B?eVBPTVlFMGUzZTZGYlNFbEFUWXhLdUEwMWpGcmZIajUxSEQxZS9lN2dqZzBu?=
 =?utf-8?B?Tmd3RnhzblA3SlZrdWpkM2xRcDJ6V1kyTEdCQWl6dDVhWHNEMUpSaHJUY0Vo?=
 =?utf-8?B?Zm1naUJVNzA3UXRIV085b2s4ZTJWdzRSZlVMamxUeGczOHJGNHpITDJyeDNl?=
 =?utf-8?B?UlFGaDVJSXpkcVVqb3NTY0hOQXA1TnFuQzNVT0Y5RkRmQnpBcXZrcWJMUTlx?=
 =?utf-8?B?c0dGTUJwU25ScER6eW9FN1h0Tk83ZWh3ZWRZRjdIMU1RQjhiQUU4Z0h4azVW?=
 =?utf-8?B?SlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ae867f3-c49b-4995-a561-08ddf7b70ab3
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2025 19:59:28.8666 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /L8x8FsXHrAHi0K4s5C6lj2HjpDw46ENj1xcU7nIVoCnYbTqHuWyLTSUQ+3YljRVmHqa0xK/z2V+7Y2eb/kPuA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6541
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

Quoting Dnyaneshwar Bhadane (2025-09-19 06:59:17-03:00)
>- Add WCL as subplatform and update the definition struct.=20
>- Update condition required to distinguish WCL C10 PHY selection
>on port B.
>
>Dnyaneshwar Bhadane (3):
>  drm/pcids: Split PTL pciids group to make wcl subplatform
>  drm/i915/display: Add definition for wcl as subplatform
>  drm/i915/xe3: Restrict PTL intel_encoder_is_c10phy() to only PHY A

Should we dismiss this sub-thread and do actual reviews on [1] instead?

[1] https://lore.kernel.org/all/20250919162233.1624905-1-dnyaneshwar.bhadan=
e@intel.com/

--
Gustavo Sousa
