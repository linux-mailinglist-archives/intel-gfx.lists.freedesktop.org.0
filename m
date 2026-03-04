Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mLfbGrrlp2mrlAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 08:56:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 471A31FC0EC
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 08:56:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3925310E13F;
	Wed,  4 Mar 2026 07:56:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ph4k3uDq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14C1A10E13F;
 Wed,  4 Mar 2026 07:56:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772610998; x=1804146998;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=MU1gvDsk61vzjH6pG+13jV/JAfTS4URJsDv5Y7GJN9k=;
 b=Ph4k3uDq+MAJ/lj8sDSulBLc0ipsVDD6v3Jp02/yr8fWQTZZflYUKxzX
 GxalDlFyy1KxW7pGeUKi8FDky5xlgvWaPDswdcciCunMxct5AMnsKWNIA
 L7WCY03fl4VRX0Sucxtw3yK2Ay4XG8yCHVuHiq9yceAQ7CE3TyURTph7v
 XZBuY7o+TLeQjg82NWdqtZ8GuGR58ET/Sa/dT0YAlU/gIltfB+uMwtUVO
 ScGhYKt2DVkxZd7Dk/+3im9XJbMVWOs5Eg6E/EVXLv1mAanGMO5Y/7lTa
 AC3i00AzdBVH+CPezfNQNX1KD165GzwNq8mgeNUbdmG1IBW7BErgUQvcJ w==;
X-CSE-ConnectionGUID: WKRyYjOnSC2r+cByKi9VHw==
X-CSE-MsgGUID: EJuxflxdQV6I1Q5n35rkFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="85009810"
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="85009810"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 23:56:37 -0800
X-CSE-ConnectionGUID: T+YyAyPhTDqOHgIgGxvAbw==
X-CSE-MsgGUID: jr2f2gmJRFaAn8O5ruYlqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="244965819"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 23:56:37 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 23:56:37 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 3 Mar 2026 23:56:37 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.54) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 23:56:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cENtkbvyucfhUdz7uDkzCLzX2ugIL48ovDVDYJ9IS+AE7oPhIjzoCxDhPb8VuyEdeB41/4xEMIGkqjZ5eFDf3ZkSTIsGTJSOi3c6SKWBEodvGz1GbHXY/jQEI2FXvAnU5NnDH2XF7Hh7BMIHa4yZ+wpxrWadQ3EhzBlNhaAxk7keGhJND6wqFtOumIuwEGFRc+f+hc1WZx8iSkpNqcNA/5860UKA4TbbD2iXmiW58VnmgEH/JNGZV2RTbkbugLwOy5W68rmWf+cR3jPkn6Nw22aO0PFvhC6aimoXmkHX2cm1HyShuM4mI89n2F0bTJUOgzVGd3vJ0/SnICKl9P+dlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iSmKtLutYJiDXku7dwvFq/C5ro/Mnl0sIOL5mhJx2IM=;
 b=OwJKq3f9KMA2BAUnXSLJ1jLS6ysz7QRqAT0FFzf5khkqxDU3fsklRmiD9EYhua4TXsR5Dg1A63BJYi0UZzuwtaJG7zV5XDme5bT0UkUqmwHY79vRfbjuOmzYsbtdlqc4JHLvuICvDztBOicsaWxQ6PJOqpOOroCqVlo21Xe7X6/rrSNLeyNA9mc3kJ77G8+SqTOU7dzWis4c6jWWeeB91xd//wkex4Sj/pWuZcoihPqgMvKMx9yVptgbdNSl3i2pHoLTBrl7XvKvqzcWFa7BjTameA7ipC+Qra4U+YTgeFSlonIREctvZ7TWiXw+hQaUdz6KQeTxv4dHF8OZxhK+fA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN0PR11MB6157.namprd11.prod.outlook.com (2603:10b6:208:3cb::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Wed, 4 Mar
 2026 07:56:35 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9678.016; Wed, 4 Mar 2026
 07:56:34 +0000
Message-ID: <b9ac10c6-ae52-4b73-a907-cfd0c6456d3f@intel.com>
Date: Wed, 4 Mar 2026 13:26:28 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] drm/i915/dsc: Add Selective Update register
 definitions
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20260303125409.503148-1-jouni.hogander@intel.com>
 <20260303125409.503148-3-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260303125409.503148-3-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0018.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:179::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN0PR11MB6157:EE_
X-MS-Office365-Filtering-Correlation-Id: 28635a39-34c6-47a9-533c-08de79c38e3b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: PulNuJGciksQXd6IVQwDTHQAHWOzGfhOBWnNERp4iT7/83sQcEVIZVYpSjOWtBAdf9waqqd4YTs9246AtwYb8RNjTg6mALhjup+kCIIV9l1jzLCQxfaRcYR08t+iqoagoqt4p8/OUYL5yqiYqQDmVWz+Eu8XgScMdCl7hai8VxWU+g/7w/YAPnM3kZrODpXWtELWqdamGdspKe1okAC0OWZHqSPOZE+CcyaWSqol8FTBbAu75RNgTpSrjRbfut4JGmcc1l6ojPPfg3ZxByXG2kBCy/1x/Ip3QGG0q7OW5QH2sIm6jCoz/qT1GtKqKkbqSz17pGIPQhHsVMFqg2N/JcMTHY7CMrrxGqyfNfpZdOiUFJz+beHX+ArX26ftrrsgD8vbB4skZaINiyuByeKVXG2Tq1pRDon4CCMoiYUi8fXEPhTtMIy9rMyzPb6jmMd1Ds1ZBuN5nkDJv64THj8GOdsvmtLH2Tu/lfqjPKUmnN689pbZ+09RtsI5oOz9o70hD6+d1KW+41iarOxvuZx8vxJ5yd09+cCpTu6aUjpXAw082eJzSLWzAOo+bqGvZ3YS+06lXyhExs0hcQNfLtYaRW60rAkl0MqH4teEwFccWm6ILh5MEjo3ahx7It0TUhFhlMMBTR6YZnr9zh/gVCZ+vMPCnIkdRKFuG6rPAdI9mgzLp+rtr10DQ8/9Aa0r60zIdxqbB+/SfLk4DEtDv4Hezbny6lg205ALXiPrN7PO+SA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?KzYvSDN1YldQN0R2RkVyK21jMHJGU3JPbmJxZ2VPMkRzb05kRnZSbk5vTTRY?=
 =?utf-8?B?UGl3S1I2YU05ZUYwdDFVVDFzVXBsQjBLYm5nYlhEVTV5bzlrb29vd0hXaThN?=
 =?utf-8?B?MGZVUmM2WDF3YjlScStSVmxtQWxKeklCV3pvSkFzamo4RVlHdFdvUjRWbDly?=
 =?utf-8?B?Sk96eGpEdzh3cUdwcDBEM1ZFb3FXZ2NlMzhjMXRKTGw2MG9wclFqQU9vVjl2?=
 =?utf-8?B?VGlQb3llS0tCbjZ2dHUxQmhMZlRoWCsvVTRkWkNBVUozK3RiZnd6b0x1WWc5?=
 =?utf-8?B?VHhTUG41VnBSVTFxcm9PVFpBZ1prckFKTnJZdlpXTm5iSWlyZXhJdjd3aVc5?=
 =?utf-8?B?M1lYWThvZmJsTUFMUUY3NVk0UmpGdTZZa3FsT0JmOUFzK2FncnhoYzd1WnQv?=
 =?utf-8?B?clhERTZ0dzZtdWcyWUM1Uy90eDcwK0FpWGFkLzdQLzZ0K0JuQ1lYUG5USldL?=
 =?utf-8?B?TVVWbTVxSVE1VzZsR0tXaHBHQW90cUl0WUl6bGNnTmc1QlAyaDk0WlZNdlFJ?=
 =?utf-8?B?M1QxRGRxUURaSE1jeTZhWE9UYzVrbnh1bmZyT3c3N0dyV2xNakQzbVZnTEQ1?=
 =?utf-8?B?NzVNQkhjWjgrVUlNVThmMU1TSDEralhkSHRqMHUxc2xMbFh5TmFjc3IrOTRH?=
 =?utf-8?B?YU5saUpTa3BrbGE2bDJxTFo1TmVHbEt1SGFoOTFZUE9wVzZWQVRpNGhiaXA4?=
 =?utf-8?B?RHc3RTlMcitxVzdFUkZEeFhzVlIxVVl1RHRSSVdJMGhwNjNpdzE4T1BvQlBk?=
 =?utf-8?B?MWwvbG0xV3FpaFFyaUhVSEhyaGFqdWl6MUxRWmswVG1lZW5IVE5CcHl2R3A1?=
 =?utf-8?B?R1pOajAvZXJxSFQwTHlCcExiYnFmLzZsVmRML2EzRmRFbXFDV1BQd2dYVVFo?=
 =?utf-8?B?Z0R4NWJtL0l2bjIxRlFjbjdsdm1jSjAyMGZVUFhHQW5ZMWlMTmpydFJwcGRh?=
 =?utf-8?B?QnA5VUR4SUs1WHZZc2ZGdTNBSVdINnNhaXBFRFFwM0ptSEZYWEY1TldYcmdC?=
 =?utf-8?B?Q3UwaGQya3JhNjR4Um1iNk9BbGRsWXBPYXhCV2JDQ1N5TlF1ZE1sdFREWkpj?=
 =?utf-8?B?a1Z0T0pKU0w3NUcwSVJ5cEVGZzdiRWZHc09SMW4xU2dnQVp1N3o3MkphSGk0?=
 =?utf-8?B?S1FmWmt4OVBBeTArWjR1RE1NTWswa2VFakxRWld3S2FmS0R3Q3NLRjhTRU1N?=
 =?utf-8?B?V1hQVlR4QVFwMkd4QmNOMFhQOE1DZkdQWGFRK3V2WmdmNWJOc3lUNldDdWdF?=
 =?utf-8?B?MCtOZjNuaWJERk9qU1VzTlpiaG9wc3hMNVZ4MXFBbENmK1pLSHRaN0c0Qng2?=
 =?utf-8?B?c2RIZnhTblMyUGd6NkVCT3dQUFN5YzloT25BekVDU09UZW9BS3MvUlVHYzF6?=
 =?utf-8?B?Wmk5VThURmpyZnpabkh4RnhNUVkwOW1ESlZNM2hBaDFqOXRUQnZFRms1aDMx?=
 =?utf-8?B?QVhOeUt1aGQxcjl3S0diK0dzSC8yVUludUxmb2RRWERoUkI1YUsvUWsvdk00?=
 =?utf-8?B?eFJWYk5qU3Bvd2NOaUxsMXVWU1lNQThlOEdIQlVUenNqZXpCRUJMTzQ3eVFj?=
 =?utf-8?B?a2k4aXVjWkxSdHcvYU0xN1FsZGpXcENnY3RwZEV2Z0FhMGFLNjlGVlY0bnU5?=
 =?utf-8?B?OVlmNlIrRW56eUJva1FVYURMVk9aK2RGL0d5VVQ1OE5oOWNLUW44a2phTXhQ?=
 =?utf-8?B?bU9TNkZTNmxnT2Z3TU9wYXBFblhacUhyWE1xeE54ZUNDNjl3NUtsOGdRVVdl?=
 =?utf-8?B?TzVaRTFzNVcxYktaQ3FVMUxqLzd1SjRUckd1cVBrNkpOdnZoeENxRUpBZmpP?=
 =?utf-8?B?cThrZWl1UFdWTjhSRFZkRXpnQmdWd2JXTEw0RE9HT1FVQm1DWE5VNkt5dklO?=
 =?utf-8?B?WmlxVFllM3pSZ1B4RElFVE1XMVZ0VlFMeUQvVFQrSXpWOWVZNGN0TlAwcHRp?=
 =?utf-8?B?ampPNWNDWGZPRHZ1TzdjbXp1ek5QZDRSR3hEdjIyajJiRy9INEZEQXRIbDJy?=
 =?utf-8?B?TXVuamxMWDltVlhkVXpaWFlPeUZuMmNEd0lzbkZwWnYreE03U25Lemt0TlFm?=
 =?utf-8?B?eUlaN3ladjhjb242MHN4OS9YNUhIWDRVMDBDMmM0N0t1eDZ2cUVjbW9Ma0tB?=
 =?utf-8?B?WitwTDZ4ZzVKdDJyRWhmYXk2dy9lcnZCM1UxOHk1UW5YTjJDOWxGY3N3NGs1?=
 =?utf-8?B?c0tBRzBuVkg0U2NjK3p3bU1HVERrTzIrdEpobEw5THNES21wUmpYOFFRVVB2?=
 =?utf-8?B?bjR4NWZuaWZ4cGpIS2N3MHhsSWRzdG1jUDF5QUQrdWlyRXR3cm92Y3AweHpT?=
 =?utf-8?B?QkZtd25uZnptVkVxOW9oSmF2NTBoMjR2Z3R0YkQyOTZoL25tdVM4dGUzTit1?=
 =?utf-8?Q?Z7irDRObKdWhzNVU=3D?=
X-Exchange-RoutingPolicyChecked: rrehO3Ds1OqGHAKnW3uXn/n41OzSsv0MuQGd2SY3ZejJRHAEVdFHIl4p3cYGHvCHVAfBUWAHqC9RfDQHmuEao/hZ1aNCohKb87h3bHeOwErIu0KImirHkuJypeYn/QQIstb44Vl+/pptz05PFxfqdmI8DoQrAYQFnyM+XGbMeHQS+lN39Bf3wKODYnv4YL4n+Kq5RjIK6x1gz65smNwHoi9jw4dY73oR6Xd0A1H/1uG+wiJ5Sfw8yZ7PXCtHClG+r8EtT8YJTNK4r2RA25lm7CS/gdqV0FixT3JE2xwylunZulaOpnZdgQ9fF6Zjc6uvPKUCMsUyi9+IKjevt9pVcg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 28635a39-34c6-47a9-533c-08de79c38e3b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2026 07:56:34.8213 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KdUcS6t/fitDJ1y+Pd8niP0uzYmpz7rkbn90us6KyfyJ8Q7jo1SBjQBjOTDoUqNwqm9SIudV3+j18iHeVxz4rmz0LjSCieg5yLM8MDPmEjE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6157
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
X-Rspamd-Queue-Id: 471A31FC0EC
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
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


On 3/3/2026 6:24 PM, Jouni Högander wrote:
> Add definitions for DSC_SU_PARAMETER_SET_0_DSC0 and
> DSC_SU_PARAMETER_SET_0_DSC1 registers. These are for Selective Update Early
> Transport configuration.
>
> Bspec: 71709
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vdsc_regs.h | 12 ++++++++++++
>   1 file changed, 12 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> index 2d478a84b07c..2b2e3c1b8138 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> @@ -196,6 +196,18 @@
>   #define   DSC_PPS18_NSL_BPG_OFFSET(offset)	REG_FIELD_PREP(DSC_PPS18_NSL_BPG_OFFSET_MASK, offset)
>   #define   DSC_PPS18_SL_OFFSET_ADJ(offset)	REG_FIELD_PREP(DSC_PPS18_SL_OFFSET_ADJ_MASK, offset)
>   
> +#define _LNL_DSC0_SU_PARAMETER_SET_0_PA		0x78064
> +#define _LNL_DSC1_SU_PARAMETER_SET_0_PA		0x78164
> +#define _LNL_DSC0_SU_PARAMETER_SET_0_PB		0x78264
> +#define _LNL_DSC1_SU_PARAMETER_SET_0_PB		0x78364
> +#define LNL_DSC0_SU_PARAMETER_SET_0(pipe)	_MMIO_PIPE((pipe), _LNL_DSC0_SU_PARAMETER_SET_0_PA, _LNL_DSC0_SU_PARAMETER_SET_0_PB)
> +#define LNL_DSC1_SU_PARAMETER_SET_0(pipe)	_MMIO_PIPE((pipe), _LNL_DSC1_SU_PARAMETER_SET_0_PA, _LNL_DSC1_SU_PARAMETER_SET_0_PB)
> +
> +#define   DSC_SUPS0_SU_SLICE_ROW_PER_FRAME_MASK		REG_GENMASK(31, 20)
> +#define   DSC_SUPS0_SU_SLICE_ROW_PER_FRAME(rows)	REG_FIELD_PREP(DSC_SUPS0_SU_SLICE_ROW_PER_FRAME_MASK, (rows))
> +#define   DSC_SUPS0_SU_PIC_HEIGHT_MASK			REG_GENMASK(15, 0)
> +#define   DSC_SUPS0_SU_PIC_HEIGHT(h)			REG_FIELD_PREP(DSC_SUPS0_SU_PIC_HEIGHT_MASK, (h))
> +
>   /* Icelake Rate Control Buffer Threshold Registers */
>   #define DSCA_RC_BUF_THRESH_0			_MMIO(0x6B230)
>   #define DSCA_RC_BUF_THRESH_0_UDW		_MMIO(0x6B230 + 4)
