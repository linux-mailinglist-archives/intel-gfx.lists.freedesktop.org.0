Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oFYgEUy+1GmWwwcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 10:20:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A71DC3AB3B7
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 10:20:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1628410E375;
	Tue,  7 Apr 2026 08:20:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XoNS5gIO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85E9A10E373;
 Tue,  7 Apr 2026 08:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775550023; x=1807086023;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0GOC5nrHvwAqqGK1q0BimuG9KaLObjsEoQAgxtKjqOI=;
 b=XoNS5gIOsFqydKpEuCO0m3nZxtobuLthsA6lOdZg+hPODfBvZuKIxrKj
 s7BJkjcKYKGIQhJSidtKwQ34TX/90O0S5X0aE/nmsSo/GGmVuSaEj4Pq0
 8JTJ3dnDYkYZWiiS1o8wvYX14T6UvnXhnQmBkcCMazWSmIViDL3eMjb1G
 D9JDuHmPFLQ51f4gIutY42lR0+HqwTrbjasDk3LtmMYJD/2qAby1l5iWc
 AQ/EuNFr44sKmEP/H/Z1jx3TbL3T3RxMi/OmmxiE2ZlYWawtMPhlkfzmt
 7a3xbbzPb3Awdul8UQd1ayM+x75aJ0uBsyz5MK59pkPCrIFFJ9e6YXZh7 A==;
X-CSE-ConnectionGUID: kkc0qAkWSYexrY9XHUjVQQ==
X-CSE-MsgGUID: Utl2JSumThK/G0zXbIprNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="87958309"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="87958309"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 01:20:22 -0700
X-CSE-ConnectionGUID: zGgN5d4+Qsa6NhmquS25Zg==
X-CSE-MsgGUID: /mB+01NGSRyfmRuTYyPjNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="251397540"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 01:20:22 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 01:20:21 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 7 Apr 2026 01:20:21 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.45)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 01:20:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QitMQaSBQb7EOqdWjxOnXr/ErRRB0/+O9Tua73Elykw9IKyIYHUpyTv8OrVNNC7tCycFEOzMgT6y/6g9qLwxH4HSYFqnyyaM+41G1ONDBKLvbBJ24JeqJFE2vXBTi72brUD4lu5nN7dau7HqD+gX+aa5poK72lAndMhFQ3EBb6hfZitAaIkiZHtB2YLpzhud20oCTWS2fgWUo7bR/nH1hcit2mzDVkNRrAYjTZZOX9ji5l8pREwxGrsMFcgP8pLeiTznxiLJ+Todwhszl0C8egxbvgPrcRzWzueyc3u0uFOPdG8g8KYZlR/7U6bytoPJOMoAG3hoPNBnvWCN8/6P/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d7RCX0KQXEhGjXo5eSX2RptQYl+9qbJGenw3QXTBgUk=;
 b=DdN+DGKxD3aV6Z7y4xZiKOayDp1h9W1CdOZ5FOpzadCdLKbhn2cd0zyhYKbEJHg2luKeUnhD0tpYLs9Pq8yXtNQ2BWMkxvWboK46Yu2UtLMFSnPnUhry3YIpEoVYgOhgxYfh9YWxIKvxnvyIzf0Z7MUUbVE602VrenUv99+IbrWlursD/KxUtuCs1OAirYM5obY3cSceJcMo0bf93LFAeO4UtrQpIpjRz2RJIuv+CUV2+b7l8jC/nP8UG75NxYZ61BuOBvJluFmFvIWQqfKTsIGfBcll5d+9yrfYfZvweOCGpNowxH8eUfcCCPfvoAXSSa/kpSMOieeS1eUL8wiU7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH3PR11MB8561.namprd11.prod.outlook.com (2603:10b6:610:1ad::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.19; Tue, 7 Apr
 2026 08:20:14 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9769.016; Tue, 7 Apr 2026
 08:20:14 +0000
Message-ID: <e84ddfe2-181e-4b74-8681-0b33545da61f@intel.com>
Date: Tue, 7 Apr 2026 13:50:05 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 14/23] drm/i915/dp: Add member to intel_dp to store AS SDP
 v2 support
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <jouni.hogander@intel.com>,
 <animesh.manna@intel.com>
References: <20260402080425.548702-1-ankit.k.nautiyal@intel.com>
 <20260402080425.548702-15-ankit.k.nautiyal@intel.com>
 <ac5NPL2yG1aH12DF@intel.com> <ac5mAUhmxqn-_J0W@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ac5mAUhmxqn-_J0W@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0009.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:176::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH3PR11MB8561:EE_
X-MS-Office365-Filtering-Correlation-Id: 66dae017-ab4b-424d-7775-08de947e7e1c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: 47ABdcSfDLTXSzDBQsEqULkSDuRyopKhhxv+nbmoSES974DkC/o80T5cLeUfa4AEaAQyO9R5rxh17UJdgoodDXvxLh97sZb1CusZ9tshe8cVHnJi+dkV9lFJCB5P5lRmYHZa3YKku75Btpu0uFAXIXVcN7jOHG/eoCirOlqDtfJbOtuFih0M+4nDnoOtE8nTvYq6FdkJDzLiVthwyySS+dyhc+fUrIX/xXEwWKDA/xMF5K9fBJALUbuqvuS/tnPoXpWx5d/RLzJm2WpY5KzTZS9SANTHJeIpvqQHRddztmsxc8KV9cxEJW2yxO3efo8wpiCcf6ApjRCHqyeAWmD4BNDDTV13Ddd2FwX+8ggPhcmNrBory/9eAPU/OnsTP8o9VkrBvl9B7JSbP4hCClETFRly8vyWo/ZQuIpnN9UEdrwAD9A+Oxwu7YlCwQafMd2vZ4hFASF8bqjQarpr8cbs3sLLpZUaJAnqGal0XDRacnnCPXoKsJEzdtXd58FYn0tidugjZE+jnwOP+sclvPdRgSBPsC3KFlWKtZ3oVVo93Qw1HJfI8nqhXYEhNjetOA6TcvViyTbCfqksRmJeM7IPXfMF8i7eSDgOpQd+5QYIFzAhv9MtMCxDlzhL3elWLgop/ajrJkLaWNv0JuqFwmcgiwCXeVPiV8gP1iO+JciN3jJ0IBJjvnU3R8CQXJiXXyBF7I3FVwDXgutpQzmPLRj7QjOt1y04Lb9o+WLL8riQHOs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SVVGMDRZWVZMYzdIQjE0S2dDbk9COEFOOFVoZVNoSHNGNVg4djFTOFN6WHpQ?=
 =?utf-8?B?K1JTM0s3YWFSZTZJWGJkcEZxRm9rZXlyTkYvaHhVZUVKTjZ5dlRtVnBWQmFO?=
 =?utf-8?B?UlZZZTdxM0dpSk1XNnEzMlg1RW5IR3B3TVlGQXNVSnFDWTZielVuMWRxbzJG?=
 =?utf-8?B?WUpyVkdCT2w4aTNMWVMzQ0JURjVFVnlDSFBrb3hxS05mSW9WS09vNU9zNy9X?=
 =?utf-8?B?OHhOUXM4bkJqRkVId2x5eGhJcHRMamlpUGM1bThPcnVSK3RiUGVDZmVvaW1W?=
 =?utf-8?B?ck1lVWQ5SXRMbCtxSndBcWdwVXpUTTJCbXZyQktOTlNxWHJpZS9XQmswOGdy?=
 =?utf-8?B?RzRmaHJGMGtGY0FKTUdWRU1rL3RJdzF4M3NmVUV6bkJ3TEpDY3ZFT0xwZmhQ?=
 =?utf-8?B?dnNpbFdrTTV0YlhCdWNlRDh5d1FHTjBwcFBPR0Fidm5hTk13TXJ2N1pmcG9y?=
 =?utf-8?B?dm9LTlpqeTh2d3QwNmhkN0RISXNEVzBaQzErUlJGc3lYOGpseVZwSEdSSFhC?=
 =?utf-8?B?VHVKMDQ5OTVpeUplbEhMOGswMStWYzhKRldjdWNHZnliRzRBeHFHNVlMOUNq?=
 =?utf-8?B?ZGtQcVhrc2ZiTGwvMnRXUVNFb0cwTkkwZ1RUM1Zua0QwT09aWmZkUk5iTWsz?=
 =?utf-8?B?dGQ5RkRidXppdHp2WUJtQVUvSHJMRGJ3ZG50cDhFejVTOUh4N01QSFRTZVBr?=
 =?utf-8?B?TGNObTF3YVF3MnBFK1IwaWZVRE0vR2VpTHBhYXlxc1IvblVPc0xGMWtRYUU4?=
 =?utf-8?B?WitweXFoaVAxaTdHY25FeHpOUjF3dnZLNnk0RTRYdGNmVG9MMlIzM214VGRH?=
 =?utf-8?B?YUpzRWt4WXdYUlE0b1d4MmR3RENFa3kxMDFRYzRlcm5aNGRxcVFCTWJpYlBz?=
 =?utf-8?B?clFRYms3NFVVeXlvL3VpWnBpcUZnS25ZNTZHUnVWcXBWTVZsOVFYMG85Sloz?=
 =?utf-8?B?eXdzS3lNQ21hUERsQitpVUlQbWNZZWk4bjJYcHByNEV3dXhXUHEwWnVLeUNU?=
 =?utf-8?B?LzNRYldqd2R1dDV2UVBlangxNGNnSFRKUXNyOHA1a3M5a0xkeXZIdE9XQ1Bj?=
 =?utf-8?B?d0FhN2hsL0pYakVRZzhsZk5RdUIzMjc2a285SGpwMzZnWTdDS0ZLUStWWnBC?=
 =?utf-8?B?djB2MzZzOEpOdkRsZHNITVh5UE9XRkpmcjN1S1RPQTJpdzNoNTNHUXEzVjZs?=
 =?utf-8?B?SXNxMWtXVzFucVhlVStsUjM1b3l6OU5PL1RDU2pPYXUwWHJrUklyMXZnUTZR?=
 =?utf-8?B?a1lxZ0RDMG03Z1p1VVcyVzF2dzVtcDExK3RjWTlNUExaV3RoMXhPSk4zYnIw?=
 =?utf-8?B?MDJ4RjhlTXU0ZW5qTjBtVjVUd0Z0S2dFWjRuNEsvT0ZBNU5qT2ZSaVBtRFFU?=
 =?utf-8?B?VU9XcXY1d0d0Y3JKQVdrRUUzYVVFWWNDV0JkV245eHBHMnl6czJNbURQUyt0?=
 =?utf-8?B?WGVnRW1xMmI1RjdHTng4amE3eE9pelJHTnNQdXgremlLVjFoczdsNkFEL0Fw?=
 =?utf-8?B?aHNlcVZtUE45MFU4cjltZ2RCd1hVNE10WWoyYnlRVXUzYXBlaXFmRTNjNWdp?=
 =?utf-8?B?VjZZV3dFZk00U2N1ZGF2c2RaZVBTS3NhK3ZVUnd2WjNMZUI0Q3loZGt0T0RG?=
 =?utf-8?B?bk5lTFJvNjFqRGVGeERrNkk3bmlxLytPSXViaC9BRUpEOFhLUzFhSVEzT3hK?=
 =?utf-8?B?cXBxaVVzK0lnbFRyaXduU2NmQnJ3b2t0NDNqbmdJSWdvR3VxNWlEOWFxNVVk?=
 =?utf-8?B?dnNyVEM3SmZiczAxanVDSUgrMTE1emg4Tk5UZTdpTGcybmlrUnhPbzIwNERF?=
 =?utf-8?B?RWx3Y2RVQXZmL21DYUR1emdFV28rVUFZWXQ5NElyYmNCVEdzdU55RGxabW9N?=
 =?utf-8?B?YnpEOU5iTHd1enhDdTNCbWxRbzdNZDEvNnEvWUNlT081T3RQbWtCdzk2ZkFh?=
 =?utf-8?B?ckluZ2ZWYThPdk9Yc1BnVThYLzNIdTZYQXpqaGdvZHZSU0x5Ni9YdDJqVjlt?=
 =?utf-8?B?RXNXWVZlSUh4Unp6a1F6cWs4OTNqV201NVFrNmFNS29YY2pmQUNGdVN2cngy?=
 =?utf-8?B?OUJ5SlYyMXdCbmVNS0RCZ1ZqTXpNQmdRZThuKzlqMTYxUjUzZ1ZCR2FZY3dE?=
 =?utf-8?B?ZDMwTHRaQUVETTJwdEpVZzA4OW02RW1nYVl0NG14VEg4NnZ1UFN4bndoN05n?=
 =?utf-8?B?MVBsRThiOVJETzlyVnA2OVFaczkzVHpNd2l6SnlGbHlFYUF4VXJQRXliUG4v?=
 =?utf-8?B?YjhBRjdoUDN5N2pZd3ZrZjliTFQzSmRFQXZXUkJmM25NWUsvOU16eEZOTHNW?=
 =?utf-8?B?alFkU1dEaXFOUnRITVVLQVhjc3lTSmlCVXRWeWFwVUM0UWlnR3JuNUtLUTJy?=
 =?utf-8?Q?qBcSga02SgY578Fs=3D?=
X-Exchange-RoutingPolicyChecked: HtFYc7MOdPMi1NG7yS6lh7oXYPIq7sd16h2xS0qkxokuDzXrvF3ZypNn7llhnsqIxpU6QaO22vHDJyfkSakYp/IuTcPtuEkpFx5QhCUD+oDuXs5KPBw+MFgLVCoocYSE3C6XHI20BzCWSO6BthjdJTt0g0GB+M97QnsGXg7KL7OHuXRr2lYl48AY2aOK3ZVP3Olbtmh4aW10EBCFUPWIDrthb09MOeniPiWfl5l5G61PPpr/hiu2m1OKvw2HfnYyHkdYDJqJ9FoqlHJ3Ongb6ZqyQpDZx7s5HVoFhYt6dgzbj1tp+6xkFYGtRt7HEDsHksjJ3qvdTolvYg9q6+/Gcw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 66dae017-ab4b-424d-7775-08de947e7e1c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2026 08:20:13.9140 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E2UWVtRkQMNBNhuQdPzwfPkaZE7x45BYfJLLIAlWbpgWdgRiSbFwsyqVVaoWaXQbSN0l6sTztR6wqqji3xF2vL6/OG7Ho2oEov6N/Czn8H4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8561
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: A71DC3AB3B7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 4/2/2026 6:20 PM, Ville Syrjälä wrote:
> On Thu, Apr 02, 2026 at 02:04:28PM +0300, Ville Syrjälä wrote:
>> On Thu, Apr 02, 2026 at 01:34:14PM +0530, Ankit Nautiyal wrote:
>>> DP v2.1 SCR advertises support for FAVT payload fields parsing in DPCD
>>> 0x2214 Bit 2. This indicates the support for Adaptive-Sync SDP version 2
>>> (AS SDP v2), which allows the source to set the version in HB2[4:0] and the
>>> payload length in HB3[5:0] of the AS SDP header.
>>>
>>> DP v2.1 SCR also introduces ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR in the
>>> Panel Replay Capability DPCD 0x00b1 (Bit 3). When this bit is set, the sink
>>> does not support asynchronous video timing while in a Panel Replay Active
>>> state and the source is required to keep transmitting Adaptive-Sync
>>> SDPs. The spec mandates that such sinks shall support AS SDP v2.
>>>
>>> Infer AS SDP v2 support from these capabilities and store it in
>>> struct intel_dp for use by subsequent feature enablement changes.
>> Hmm. After some more reading I think we might actually want to consult
>> the DisplayID for this. The presence of the new adaptive sync block
>> there might be a good indication for AS SDP v2 support. While the
>> DisplayID 2.1 spec itself doesn't say that AS SDP v2 must be supported
>> when the block is present, the DP 2.1 spec does at least say the converse.
>> Ie. adaptive sync capable DP 2.1 sink must have the DisplayID block. And
>> DP 2.1 seems to be all about the AS SDP v2 and not AS SDP v1 (that's a DP
>> 2.0 thing really).
> Hmm. But the EDID comes from the display, and we could have a PCON
> in between that doesn't understand AS SDP v2. Sigh. What a mess.


hmm yeah. Is it alright to have a #TODO something like:

/*
* TODO: Check the Adaptive-Sync DisplayID 2.1 block once DisplayID parsing
* is available. This may help detect AS SDP v2 support for native DP 2.1
* sinks that do not expose FAVT or PR-based capability bits.
*
* In the presence of PCONs, check PCON support from DPCD and sink 
support from Display ID.
*/


Regards,

Ankit

>> I think there was a patch posted very recently on dri-devel, adding the
>> adaptive sync DisplayID block parsing. Or at least some DisplayID block
>> related to this.
>>
>> The intel_psr_pr_async_video_timing_supported() check I think we want
>> to keep regardless, because you could have a sink with PR but no
>> adaptive sync. But the FAVT check could perhaps be dropped if we add
>> the DisplayID check.
>>
>>> v2: Include parsing ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR bit to
>>>      determine AS SDP v2 support. (Ville)
>>> v3: Use helper to determine asynch video timing support.
>>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>   .../drm/i915/display/intel_display_types.h    |  1 +
>>>   drivers/gpu/drm/i915/display/intel_dp.c       | 33 +++++++++++++++++++
>>>   2 files changed, 34 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>>> index e2496db1642a..efc609eef4f5 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>>> @@ -1870,6 +1870,7 @@ struct intel_dp {
>>>   	/* connector directly attached - won't be use for modeset in mst world */
>>>   	struct intel_connector *attached_connector;
>>>   	bool as_sdp_supported;
>>> +	bool as_sdp_v2_supported;
>>>   
>>>   	struct drm_dp_tunnel *tunnel;
>>>   	bool tunnel_suspended:1;
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>> index cec0f3d03c2f..9fd768447f28 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> @@ -6306,6 +6306,36 @@ intel_dp_unset_edid(struct intel_dp *intel_dp)
>>>   					       false);
>>>   }
>>>   
>>> +static bool
>>> +intel_dp_sink_supports_as_sdp_v2(struct intel_dp *intel_dp)
>>> +{
>>> +	u8 rx_features;
>>> +
>>> +	/*
>>> +	 * The DP spec does not explicitly provide the AS SDP v2 capability.
>>> +	 * So based on the DP v2.1 SCR, we infer it from the following bits:
>>> +	 *
>>> +	 * DP_AS_SDP_FAVT_PAYLOAD_FIELDS_PARSING_SUPPORTED indicates support for
>>> +	 * FAVT, which is explicitly defined to use AS SDP v2.
>>> +	 *
>>> +	 * DP_ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR indicates that the sink
>>> +	 * does not support asynchronous video timing while in PR Active,
>>> +	 * requiring the source to keep transmitting Adaptive-Sync SDPs. The
>>> +	 * spec mandates that such sinks shall support AS SDP v2.
>>> +	 */
>>> +	if (drm_dp_dpcd_read_byte(&intel_dp->aux,
>>> +				  DP_DPRX_FEATURE_ENUMERATION_LIST_CONT_1,
>>> +				  &rx_features) == 1) {
>>> +		if (rx_features & DP_AS_SDP_FAVT_PAYLOAD_FIELDS_PARSING_SUPPORTED)
>>> +			return true;
>>> +	}
>>> +
>>> +	if (!intel_psr_pr_async_video_timing_supported(intel_dp))
>>> +		return true;
>>> +
>>> +	return false;
>>> +}
>>> +
>>>   static void
>>>   intel_dp_detect_sdp_caps(struct intel_dp *intel_dp)
>>>   {
>>> @@ -6313,6 +6343,9 @@ intel_dp_detect_sdp_caps(struct intel_dp *intel_dp)
>>>   
>>>   	intel_dp->as_sdp_supported = HAS_AS_SDP(display) &&
>>>   		drm_dp_as_sdp_supported(&intel_dp->aux, intel_dp->dpcd);
>>> +
>>> +	intel_dp->as_sdp_v2_supported = intel_dp->as_sdp_supported &&
>>> +					intel_dp_sink_supports_as_sdp_v2(intel_dp);
>>>   }
>>>   
>>>   static bool intel_dp_needs_dpcd_probe(struct intel_dp *intel_dp, bool force_on_external)
>>> -- 
>>> 2.45.2
>> -- 
>> Ville Syrjälä
>> Intel
