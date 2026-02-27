Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SOa4J654oWnJtQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Feb 2026 11:57:50 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 399C91B6461
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Feb 2026 11:57:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE27110EAFE;
	Fri, 27 Feb 2026 10:57:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TtKrBJ39";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF04610EAF9;
 Fri, 27 Feb 2026 10:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772189865; x=1803725865;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=stmVVFjjl37x5fg5SRPcUVD4dWBtEJNZzyD6ZRU2sg0=;
 b=TtKrBJ39ItCYHREeRbxwSpyXtU7hDhODo7AVGCwpPOBvXhUhKMBHViRn
 B9Zve170zRP0stnZ+KRTnwCLM0w2SwDiVSoRRCXR1ScRvoBB3fUIWAfA1
 mI4HrSfPsZuPjjaJUjnK/o6+oM9pKQ87YPIbnFoFDYw3akIGhyMP+YTTY
 tIR/1PXci7+e5wPIz9bq85kgR6if8foHqsNwBaUQCU5PRAMeOY/BBRT2u
 BwZ7k9cSbTowIFAp6ro9JRmur6jAOJjyrAe+gpN8PcuoL7p4J6LJqBvFR
 AixgT7ieHaUtsisJQfHZgdX3n+zbxLydvMCotXGODbGF6QyV87jZ/J8YS w==;
X-CSE-ConnectionGUID: 0db4tezDSXCcA6O1ELkwzg==
X-CSE-MsgGUID: 7TFG571ISnibGrFT7h2MKw==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="72471411"
X-IronPort-AV: E=Sophos;i="6.21,314,1763452800"; d="scan'208";a="72471411"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 02:57:44 -0800
X-CSE-ConnectionGUID: yi5lCRmPR/mEdslo5qwftA==
X-CSE-MsgGUID: xh/kak9ETEW83CXY+0B8LA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,314,1763452800"; d="scan'208";a="216879810"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 02:57:44 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Feb 2026 02:57:43 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 27 Feb 2026 02:57:43 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.61) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Feb 2026 02:57:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VunFQhWhh9n5insJH7MuQeTgoAobtqiISpi/KuO5n+Wr6DRWNVrqoCKHV3LCp43UzH8XQdRm0AsWsl0KqdjtCsjwws9D57EVu3Ay684sba1DXrNYIWVglUpFP4VWlH6NTB3AtnniquttCYBpRbYgyOP1zd8Aa5KxU+0/NtZKpX66u+IU55PR1rxMHzkzY3MFXomrlLGFY/dyW7rlbg22gpEGBqVtmYMGIuqUwQq33Bi2OJL3fhadFd0m+z1ixHfj/335XrWuUVnUpsPK62ci3Y+HTAfgTRzqvQVZealmk7ZFrzsoMMmZCdGmmS2+0kvs/Ngek176MHpnbMTnUoMgjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3CQ7Me2wIm49Cdn1JiH0V5s3CEboUZfeyj3I8JYA5X8=;
 b=N7R3W4F8/GK8KmJ+IZ8GPQhIJhJJgTgvJo3EeZfl/TQwv0oViM0+YDLUxl3nKFOB9Zq6AywogDkcMAfpcD2OfTYEdQ4KTc+8U4lt2qUJdADtAYbVuLEQVkxH9KVqq04fSakePboCPyzOLc3SZQDklclffB8JkOmv4Dtt2fq4t4xbWIgqAsd2DArNntzI1p9dbwtDl1DPQmmnHYgDAG0QJwNAadOY9buW2GkZmttMXQntzrcowcnLnWDKyXVGBzSqnxT2ghKLFSHRc5QtnLCamCl+GwvPxCvK1aVoegTlla07sOLuM8lEnfoiP1J0Bz/CtTbkzz+5H69T1DJ9m4ywnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BL1PR11MB6026.namprd11.prod.outlook.com (2603:10b6:208:391::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.15; Fri, 27 Feb
 2026 10:57:34 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9632.017; Fri, 27 Feb 2026
 10:57:34 +0000
Message-ID: <ba3ed579-5047-43e8-b47d-b1716d04cc70@intel.com>
Date: Fri, 27 Feb 2026 16:27:25 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/14] drm/i915/dp: Add AS SDP support for PR with link ON
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jouni.hogander@intel.com>, <animesh.manna@intel.com>
References: <20260223134431.1639308-1-ankit.k.nautiyal@intel.com>
 <20260223134431.1639308-9-ankit.k.nautiyal@intel.com>
 <aaBwesODSUbEdvjR@intel.com> <aaEfeDSkYNU5M92U@intel.com>
 <aaEwew4VZrWdFvMn@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aaEwew4VZrWdFvMn@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0024.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:177::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BL1PR11MB6026:EE_
X-MS-Office365-Filtering-Correlation-Id: f71835bc-bd5c-4c14-138d-08de75ef030a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: BhbN+WYXww2Qj3jieUBEVB7WmC1P9VHUQMBIt/oAy4VDjPcZLfv0y0qbp6aC6u/wGSH3vWDQxTOjSXVOwAw6pn6IMXjc7eg0m3khvkma0+GhPMZIM3YfchEtvgvKzALm95W/zPcq5Yfy+HGFQKWIFwBzfNVlgS1zpIZ2/3Fw6MRQq7ANqPTOBvEpG6F2QbXeDMkZ6gNZKLbW8I2ZDPRHkwnM9cOTJZEza08kcoXhfkanSUOrmHLpTf6AkQilHIckIZcJ/x84PelSEsHh2Lka6dD43DsZktVOUGWutIDlSwdPeqUvT4SnHzKnAu9Gopgpt5pQo0x51wzQUXWjWtGcVe1QwaynK0mO8vk8drdFDRuNZRO32aoBKdLcbgmLW2Zd/p36azwZTWgcPXHw3w+IrDQmyNUj7nMS207T2ji9o34/ZCEfKev1NrXoXRcfqn6Jtdh7lL+RSiJ2JHzhH38Xy89pMduyPMEcekSsg9raSWaxni4PpW7wXdsgKC4GcJDfEjf544BwL8JX/6K1G4Z0PUP+VzcIF3yCMvJKwtHhZ6/HSmxKcCZuEBxfhYaoeK6opeCOKhZRGN+mYWYk00iPkrxzF4jpIac9U99bFFZ4L1IkNEuWu+PQXLQhTi+5bLJ+RwiDbT9fREjgJwpyijeOJxtdGU53iL9jO4edFgwFeHGvEWv9e0pROClHgYL3xyOZxhOEOU6aOkEkHk4T3T1oMuWv+wLsr4+E/SLrmcho7aE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?KzNuWmhmR09ZVnVPNTlnK084NUdPTW5iTVBldzBISTlZOTdhc1BXVk5aWVVW?=
 =?utf-8?B?OUdjYmZPVGFtc0tyZVM4cUg1b004a2VyYWxVYkRoNEpTM1A4VnV3TThweTVP?=
 =?utf-8?B?Z2pDVjJqSWY5RnZOcHNCeGprQVR4V2JjNlVyRWtnNWdKcEppMHE0VVIyUExv?=
 =?utf-8?B?aWtwcFk3ajE5ZUpsczZXdVh1anhrUGVDMlIxSnBXU0ZONW5xUW1ZWWUzd05N?=
 =?utf-8?B?dCswOGY3NXYvV0xXLzk0dXIrYUwvWHNiTTUyTjdsaHIrZlJ2czEvT0ZwcDF2?=
 =?utf-8?B?Q1RYTkdhZnFSM0MrekEvQk9TVGs3QUV2UEh0WTFrdC9ubVVhYW1Wcktxbm1F?=
 =?utf-8?B?elJqMzBBUG9ZdVkwZ2Q2ejF3LzJsNG04K3AvVDNmOWpBbmlNVVlvNlhkR2V0?=
 =?utf-8?B?Q0ZCd2Y1U1QvUFJhQlBoam1LRjFoakhJa2JRazNDMXAwcGdtY2JURFRIYmRQ?=
 =?utf-8?B?UWJIbjRPRjEzbFU1dGJHUTg1MWpaeklaYnF1VHhGRk5qYS9NK0Zvczc5T0Y5?=
 =?utf-8?B?bWt0aUlucG9UYXpqcjFFVDUyR0Ezc2R1b3ZUaTU5Y2NPN3ZhT2dMR28yYzlM?=
 =?utf-8?B?emowUHhzSWVMT0hyZXVzZlk4cXdmL2dNaCswRjRKY1ZqNm1FVHhFOUFueTZF?=
 =?utf-8?B?SFFJQ0FGY0wwdWpwMC9xSi9CYXV2ZlBLZWtVdDN5UjNLam42b1NxQmFwVTdN?=
 =?utf-8?B?ODZKSWg3aXhpZC9ZM2xHOGZ0dWRSSkh1MStaNTc0RzhaanlqODVLeVU3dGt3?=
 =?utf-8?B?TTNQelpUcTNVM0pRNlZFeDI1MkQybVJnaHYxS1RFWWtYT0JjLzFxZWxJR3lR?=
 =?utf-8?B?eTF6eE94dVREOUJkNlk5aUlITk5hMEM3VXBvQWhFT3FUdnU4eTJLM0VaNEth?=
 =?utf-8?B?Qllhc1FUcHJLdXNLdnZuTEMwOEZDYkFtRHhkazdyamRMRXRCdmZDOWdqUTV2?=
 =?utf-8?B?dGpMVkRPL0dRMUVNNFVTQWk5WGhKRElCWDZaZnpQUjF3dUY4ckE4RGFPZUhz?=
 =?utf-8?B?dVltQXlsV296bVVnQVpDZ29IYVppRndLd2lpeFBmK3FFTHdGMVMrTngwYi9D?=
 =?utf-8?B?bHh2bGlGNFdIRVo0OEFXN0lLVWQzbHlJVUZ3VGxzbHNhN2ZqdHM1TmFleE1z?=
 =?utf-8?B?ZVZvbmhVQmxUTXdMaGgrdHNnUHcyMkN3NXd2enNYY085UCs5VHZrTlZxSlh2?=
 =?utf-8?B?ZDlSVWFpY093eVBoUDM5cXkyL1VTWFVmOFpydEllV3N2NUVPbXRkYWszcXh3?=
 =?utf-8?B?eW9IbE9QMDJYVXNjSTZHeXlQRjNmeVhDS280MmE3S01pNG82TlVNdHNmMnFD?=
 =?utf-8?B?d1NyMThKOGRqS3FFZWFyL2h1VDN3QUFmWlA3QmQ0OU41dUEwOVI0OHh2aUNG?=
 =?utf-8?B?UUhTblRRWXZhdStrcDBobVFjUER3RkhHcUtLV25mMGpSMnJuVUhSNVB1eUg3?=
 =?utf-8?B?YUhNWUh0VmRtNys3NU1ocUNHNzVVajlBRGtDY0lQREhYSFpQQ2hjcC80b3Fh?=
 =?utf-8?B?VW51YWh3MW81K0x2NG5YS2VCakh6SzdGMmdDeUJ4TStjT1JWRG0yeEVSaTZ0?=
 =?utf-8?B?N1VPM0h5WVhpZmxVQ0ZEUzM2dkg3cFY3RStYRzJiWGtCNFJPNy96T3N2WVZ5?=
 =?utf-8?B?ck1OdHdjL3NBQXJEL050Nk8zTE9vbUt5dE5Lbjc3UUJEUmM2dUYxT2hTQnlJ?=
 =?utf-8?B?MWE3TCtiR01MNVN2ZDArSDh1VEk1SnhoVGJ1azlNQXdxSFVocmZVQ2J1NFRn?=
 =?utf-8?B?bHNyM1JnMmxTeVRnOW43Y1hSYjJIa1dwcHliM1lqcC8wcnViQjFQYzZHcHIy?=
 =?utf-8?B?ZmtZa3puZDdhSExBOWJaMkpPbVhIWkU4NzYvaEdYa1gxNTkxZWhMN0lEdUIv?=
 =?utf-8?B?bzJyZkRqSWNWekoxYmRBMzVWNFF4WVNvQ3F5M2NvQkM5K3lKa1NJelkzMjZy?=
 =?utf-8?B?Skl3Z0Rma1cwSnBkcm5SWjNsNFRsanFKMmJrTkw2Z3BkcnJYQTE4NEZFTXN1?=
 =?utf-8?B?R0dielNaYzFNbGJrUVAvKzBKM25BQjhPY01lSlpQMHQxR3hRNGI3RzBtZ2dH?=
 =?utf-8?B?bUc5K2VQOWRabmZDZVVuVXNpeEwxdkREajczZTVuVEw5Q2VPd2M4YlFuYWhC?=
 =?utf-8?B?bU5uUXFVRUhMcHlWeUIzQXZTWFJhTld2YVA3SThtV3R0ZnBxTDE1Ymk1eDJn?=
 =?utf-8?B?b2Q0Zk1mY25NTnJYamhCVVpMSkxGOXBQWGZ3Mkt4YWkzWGwzYUJtQnludDAy?=
 =?utf-8?B?RVo4QWl0UGdBRGNxZmQrZHQ5VWJyQXgyNW82aXovaWl1SHpHQUkvMi8xc3po?=
 =?utf-8?B?dmJGYktkSFV4bWVYQlFKZ3N0WmdncklkUkFlOGVZQzF4Ly84ZzluMlFiUmJs?=
 =?utf-8?Q?XfNCsb8KLYoL7N30=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f71835bc-bd5c-4c14-138d-08de75ef030a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2026 10:57:34.5911 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xSRACeneGMKVOOy8PIUHpU2Z/CEGXwkiizEdRXPXoQVCsXclInEETQVMjFnEvPSDA1poX8faadZ0q4JaId/WWvnVbFhddPsEjOeAGgeXMD8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6026
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
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 399C91B6461
X-Rspamd-Action: no action


On 2/27/2026 11:19 AM, Ville Syrjälä wrote:
> On Fri, Feb 27, 2026 at 06:37:37AM +0200, Ville Syrjälä wrote:
>> On Thu, Feb 26, 2026 at 06:10:34PM +0200, Ville Syrjälä wrote:
>>> On Mon, Feb 23, 2026 at 07:14:25PM +0530, Ankit Nautiyal wrote:
>>>> Adaptive Sync SDP (AS SDP) is also used for Panel Replay (PR).
>>>> For PR with Link ON, the AS SDP version V1 is used. When using
>>>> AS SDP Version 1, AS SDP payload and parity bytes are all set to zeroes.
>>> I don't think we should need to transmit any AS SDP in link ON mode.
>> Hmm, maybe we do. While the DP spec is is extremely confusing here
>> (mostly just talking about the ALPM+AS SDP combo and ignoring the
>> link ON case), I think what it might be hinting at is that the sink
>> tells us whether it needs the AS SDP, via
>> ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR.
> Actually no. It looks to me like with the link ON, the source is still
> transmitting the BS/BE at the expected locations so the sink remains
> synced to the source video timings, and thus the AS SDP is not needed
> for that.

Yeah the spec does not say if its needed for PR with Link ON.

What I gather from different portions of the spec is that we can send 
the AS SDP with PR with Link ON.

The version 1 thing :  This is coming from Bspec: 75639

Whole thing is a bit confusing. As I have also mentioned in the 
cover-letter, I am inclined to always send AS SDP if its supported from 
both source and sink.

That way while computing optimized the guardband we will account for the 
Transmission Line conditions (for AS SDP) wrt the guardband.

Without this, if there is VRR enabled in between, we need to enable it 
and account it on the fly which will trigger full modeset.

So in all, I mean:

Always enable AS SDP if supported.

For PR with Link ON -> use version 1 (as per Bspec 75639)

For PR with Auxless ALPM -> use version 2. ( For disabling AS SDP during 
PR active, there are provisions to write into PR_ALPM_CTL[AS SDP 
Transmission in Active Disable])


Regards,

Ankit

>>>> Bspec: 75639
>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> ---
>>>>   drivers/gpu/drm/i915/display/intel_dp.c | 17 ++++++++++++++++-
>>>>   1 file changed, 16 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> index d08db4938638..5952db6197cf 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> @@ -3115,7 +3115,8 @@ static bool intel_dp_needs_as_sdp(struct intel_dp *intel_dp,
>>>>   				  struct intel_crtc_state *crtc_state)
>>>>   {
>>>>   	return crtc_state->vrr.enable ||
>>>> -	       crtc_state->cmrr.enable;
>>>> +	       crtc_state->cmrr.enable ||
>>>> +	       crtc_state->has_panel_replay;
>>>>   }
>>>>   
>>>>   static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>>>> @@ -3137,6 +3138,16 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>>>>   	as_sdp->length = 0x9;
>>>>   	as_sdp->duration_incr_ms = 0;
>>>>   	as_sdp->version = 0x2;
>>>> +
>>>> +	if (crtc_state->vrr.enable)
>>>> +		as_sdp->version = 0x2;
>>> I think we rather need some versions checks or something to
>>> make sure the device actually supports v2. VRR itself shouldn't
>>> need v2 since the v1 was originally added exactly for VRR+PCON
>>> use cases. PR+ALPM definitely does need v2, but not sure anything
>>> else actually needs it.
>>>
>>>> +	else
>>>> +		as_sdp->version = 0x1;
>>>> +
>>>> +	/* No payload data bytes for Version 1 */
>>>> +	if (as_sdp->version == 0x1)
>>>> +		return;
>>>> +
>>>>   	as_sdp->vtotal = intel_vrr_vmin_vtotal(crtc_state);
>>>>   
>>>>   	if (crtc_state->cmrr.enable) {
>>>> @@ -5005,6 +5016,10 @@ static ssize_t intel_dp_as_sdp_pack(const struct drm_dp_as_sdp *as_sdp,
>>>>   	sdp->sdp_header.HB2 = as_sdp->version;
>>>>   	sdp->sdp_header.HB3 = as_sdp->length;
>>>>   
>>>> +	/* No Payload Data bytes for Version 1 */
>>>> +	if (as_sdp->version == 0x1)
>>>> +		return length;
>>>> +
>>>>   	/* Fill AS (Adaptive Sync) SDP Payload */
>>>>   	sdp->db[0] = as_sdp->mode;
>>>>   	sdp->db[1] = as_sdp->vtotal & 0xFF;
>>>> -- 
>>>> 2.45.2
>>> -- 
>>> Ville Syrjälä
>>> Intel
>> -- 
>> Ville Syrjälä
>> Intel
