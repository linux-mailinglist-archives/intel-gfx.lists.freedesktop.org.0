Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3BD4B69C8
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 11:54:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFF8410E444;
	Tue, 15 Feb 2022 10:53:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B1F789762
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 10:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644922438; x=1676458438;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LpHYPnpCkifQZ45bC7bk1bv+ckfEN0jn7qTDF1HYBRA=;
 b=O6yu29/gXLOjuBaMVh4hS0vjQh1PguH/7Rpy3H+IbAID5Bm6kwy8rQyQ
 LXyidtbLMS+kG7yNINxaNmgWN2+BWQOoHnDLSZPNymUeZNoZGwHvOoevn
 HWwIxW76LXNZf03RW0x6Eg9fvXpKQlZJEUl92WdYwGLqUXVPsDgZwmSCH
 N/yh/7KkBYa/xGatRop1CjcLPjgNxYSwNmtLfd87+GvdNwBlRCuZpKTYr
 WKYl8GpvXK6Se8fD/sTg1S7CWOhj1BRUmRzWOUH0oCyvnM9w+waeHGPX/
 +O8D5j7jJjeLfNP4FDb0s0W3u2aoYz8cVY4e580Ici2slpFFi7syXpY2l w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="250270291"
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="250270291"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 02:53:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="486107544"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga003.jf.intel.com with ESMTP; 15 Feb 2022 02:53:57 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 15 Feb 2022 02:53:57 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 15 Feb 2022 02:53:57 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 15 Feb 2022 02:53:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V6NyKs739Z3C99SDLoJGcLVGHbNCuK/agKaWV/yMK48LcCog72TXE5HE6zK4RIfqoniHT/YTwiNc7mSAJCc2p9qqvQcZWEuTYCMzef/PK1YXkRd11ZJn5MYI8Cqp623xbv/BHzY921Z7qi5B1UnqMgYYUZgzJkCDeTMKm7dVp6MIXffEuMrhyJKKMTo8t+Pfv4Ycr+9FRe9P/Yli5d5f0zEeEh2XFReFkNfDRaH+nPiLLcCH4nOn5fQ0C9XY3OcN0GsQVELsymOgSI9qpf88DeHpu7Gtrv298lcqMLrml7iObKHYAX+85LZcAqASFAmzEBLQaYiUUQVyk/qr05IXlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bucXERzn6Qx6yOAF8kkRxt2dR2sH64coYCShdER0w2M=;
 b=YujGacl4uuCPxGC5N00E2hk5ziHhhBiZY2ivpZOthpKZKRNq0UGSAgkByoj40elGVXdlpHxTr1HkiaOnkJ0NB1UmGsc/pA5a4Eo5iRbOqZGl02pr1cphZqframj7IFoZk+82eAAfpnBugH4TM81UtjfXcEAe8tG2FiQSAmigAkqhA/hpLCpYDtNOoNCS7l5dj/mElfggvoHqCSBCzj+WhWrkFoE1OFAlFIZbb/ZP8sWqgR03y4HRdTDAa5SVrTUN5/Rq5U/3BEaMiD2Tb6QOmoQY7QTXsXy1zzyFXKeeW5wut6MUCDNFixRYPfMrmlpDWUEHkqhDjBxxJ6IAWZqgPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN2PR11MB4384.namprd11.prod.outlook.com (2603:10b6:208:18b::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.12; Tue, 15 Feb
 2022 10:53:55 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::2d:20a0:15d8:e530]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::2d:20a0:15d8:e530%2]) with mapi id 15.20.4975.019; Tue, 15 Feb 2022
 10:53:55 +0000
Message-ID: <9e61b831-d782-e14d-0d94-e3d4b93f0a7f@intel.com>
Date: Tue, 15 Feb 2022 16:23:47 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.5.0
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Navare, 
 Manasi" <manasi.d.navare@intel.com>
References: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
 <20220203183823.22890-7-ville.syrjala@linux.intel.com>
 <20220204212746.GA23292@labuser-Z97X-UD5H> <YgDK7qd6kTG/ohK3@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <YgDK7qd6kTG/ohK3@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BM1PR0101CA0029.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:1a::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 41c9979c-3d24-446c-d9ae-08d9f07175b0
X-MS-TrafficTypeDiagnostic: MN2PR11MB4384:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <MN2PR11MB43841F86026CFBD9FC80A594CE349@MN2PR11MB4384.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2201;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cYw7zQ4JIVqRrpWCmKnVkFiIbc7WWY+J/jELOoCi/fw58V1bki2L5pcrPwHrFuaCn0tcd9XqtheRRv7v6MHzvfuFx6s0WZHxHSk6pX34UDhtWgO8c/e1iqPJHavVrKbhhVbj4fBkHrXBla1WMekAN47XHmXeBQi7MxQ8gizmLuugL/pVtfqvtc2G+4WMgBOCJRt5iXI9dNomIE70mWdLvGEhOqo+4LHbfXqZixITjjIr0LHsEss4tt7xys//zQIyCcrXlIDFnAUsmy4djBUDc/Y3GBhNQtR3Wu1y+eepSWwRpGWvVtEnJhcvpHa+6AkcATBbCpySUT086U7t5tyUHdQnRo2B/IXhIsaJgs+UlWFFua4QVquuzMyWxS2vlBtiqfAYXqfdzi1guA5pst2zOf6IWEyTNcQ3xPSGqzxJwFhxQKwYUEKr+CK+X/QU4+NuCWQrNhfano3u4PfRhiwEor22DQ7BFHCuluRUx8mDa+mifp+3dfg7qVUkrlchqizRInP32eJjeXhfB5Hi3vDhdXCTrbhxYtLy3jKz6YdtpxcPShRFlbnkF8DZ0c/lf9VHjYppObWfk3wmMp2+b+oi/mQ+evffz9y8jl3Dyv2TKIE7wolGktEuGBTcLmCjxyVQwZ+9O0dqLuggSwE+Iq0BeZAnJibBRy/vhX7J25I8vaAPwdqQT2VS4HX82QCj0kYlR7EiQV+h2u09R5oud0xlDuT97XjK01oyiPm4YKDp1u4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6506007)(66476007)(2616005)(53546011)(55236004)(8676002)(66556008)(26005)(6512007)(6636002)(508600001)(66946007)(6486002)(31696002)(316002)(6666004)(110136005)(86362001)(82960400001)(36756003)(83380400001)(38100700002)(4326008)(5660300002)(186003)(8936002)(2906002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UHcvTnlPcVRKb09FN0VER0ZtY0NkWnRUbzg2enZQOC9WYmowUlJyYkR4eHJ2?=
 =?utf-8?B?Q1RQK0k3c21qZDRFNEU3dmRnWjVBcmtueDhZRWd4dzkvai93cUFSRDJrd1ZL?=
 =?utf-8?B?WFlzbGs0YjR2OHVubW9BSTgyNnk4NisyL0dIQlViMEMrdzduWUJCOUtuYTY2?=
 =?utf-8?B?MXc5eHJabm9TakYzcmRONkZCcW9iSHVvTjR3Y0V4RFkxcCsxaVRoU3o0K3Z4?=
 =?utf-8?B?R21SUmROTXBlbk95WEt6M2djRWwzd1Q4NmxDdE81QWFrdU43SUJ2Y2JmRmVi?=
 =?utf-8?B?THp3RktGcGtteDFiZ1RaRStOc01wUXg5YXFmcXJCSzFmSXRCUXBaY3NFaHcv?=
 =?utf-8?B?QkFhdmdraUxIU1JKaFVCTjVSOUs5dDQ3c1NkUkM5OWVUOVlUaVBiYlJkUHJs?=
 =?utf-8?B?WWxMSm1pcnlEM0VqbG01bzhZclEvc0NhUnlLbkNGVHVZSmlKd1J6TE9kTlpZ?=
 =?utf-8?B?dlUySU9raXFZTWNIMFhoUXBDYzFUM3MvUG9TYXFzelA4UXdydDlCcC9vZ3hr?=
 =?utf-8?B?M3FLQk1rT29QNS9vaTBnalNIWURwNXhwVnhkc3d4LzdzMlc5c2pSU3pCWVdD?=
 =?utf-8?B?WU9CSzlNd3h1eVQvbnNjdC9kemN1aWFzTnNkWXM3Q21qY2RoeFZVYzYwbWRh?=
 =?utf-8?B?bEl5bEgvUHFDaGdJcHlaUktwbSs1RTNlbXJ5M1V3NmdJNmhXTHVyWHhtWm1F?=
 =?utf-8?B?di9ldmJsbkhuNVd2MmdIMXIySDVja05kMC84aWx6T3NKMllscU5TL2poaWNz?=
 =?utf-8?B?NExmdFA0WmU4dW1nWk1Dc1pqUDI3Yi9rOEhzTGNXK0l3RStrYkdSeGtnMEov?=
 =?utf-8?B?Y1duTGttci9lNFNSRnR5Q2UvTDlMOHM4MGFlZFBSb0V5MURWR1lzeEhyVlVY?=
 =?utf-8?B?c0hVWWlLUmpqcHdjL3lMdVJWU0NqWUlEYjBmOGhLelZkTXpCWGlYbDhGZ2lU?=
 =?utf-8?B?U1RBZkpnMmc3OCtYYTZ6UDdjVG9SRVliSEsxMVJ2cTlmVW5zd1kwUkZuMEtL?=
 =?utf-8?B?enNCQVdDNnlYZFFFT1pXblEvUkI2bCtvU3hUWEVZVmdNSjZRZWxxemJzb1Vk?=
 =?utf-8?B?OVNtY00rVkswVlZ4eURDNHRzK3hobmtEdk8vOWNQbkltcllYZkdCS2Q4eXVp?=
 =?utf-8?B?cXBBV2tqVnd6OGgzUDc5T3k2b3RQQzd5ak5iN2JBYmUyMTJKckp3aSs1cTBm?=
 =?utf-8?B?bk82SXBzaCtHYUdtRHA1U1gzVEk1dnEvR1BzZnlUa0RESWpWVlROblVBUUEv?=
 =?utf-8?B?d2NPdlFYSytOaGdPbWFacEprZkE1QVp1RDFQVlRhU2ZmQXcvV0s5SkR4RzFl?=
 =?utf-8?B?cW5US3lQRm5OMllDL243WDcxa3FCdmU2akdvN2pUN05DdFlzaXZFU21tbHpP?=
 =?utf-8?B?cWVLQXNKdVdrTDJZNW1vSUdpQkhUU0pocEMvY1ZoTWtkRUlUd05nT0RnYUty?=
 =?utf-8?B?L3h4NTAzRXNkQjhISzBYZG05K3gxOERMY3p1emV5aWlSalpNZTFFN1JGV2FZ?=
 =?utf-8?B?WENkRURMc1lqSHlJOWVEOWdyU24vT2dBTWdkaFp6V1JYMWNXOU5CQzhqeUph?=
 =?utf-8?B?ek9jQlN6akU0R2RyV2VmQk1qWjlmSUZWaUNpZFdzNzlmbWtGQnl0TlgvcUhD?=
 =?utf-8?B?M0NtY1ErN0h0RVNsUUIzVEJOdnZlbkNVSEFXVXIyYUpqaVFsOEZCNkgzMDJs?=
 =?utf-8?B?RkowWnhSclZoTUFDelcyWGZHZUdoSEp5aWZhQzVzdnpkYVZ5RU5TdW03Nk9B?=
 =?utf-8?B?QTcyYlN1K0pEUWpxZ2FxTFpPdE9hWDBQWW5vUkhDRHlUSjJ6Q1JDTFpkb1Nu?=
 =?utf-8?B?USs1Z3g5QmQyZjBUK2xDMXAxUHM4RDJPaWFad0pyNnQxYVFLT0NWenBZYTVr?=
 =?utf-8?B?YVQyN01TNlFsd2RlY0VlNjBaWkJQcFZpY3l3VjhXUmo1dG1UOXplS05tRHlS?=
 =?utf-8?B?T3NGbGl0Y1g5NXhYMWMrbUpkQWJHSll4ZVE2cmtVVHJ4dmhidm1SMDFvMWsz?=
 =?utf-8?B?TTZRUkc1YlBYdTdOa2l4VnlLNkhmeGpXaEhsZXZYZEc5UCtKV2Y1dlVGOEI4?=
 =?utf-8?B?WmU5am9ac1YvNGtSRkY2WkhZQlVwa2loZ2dlMmEzTm55RFJxWnpmOW16eFdL?=
 =?utf-8?B?YU0wTVdtZnNHeGhzS0taS0RHdHlRbFdlZFBPZmFLRmJKRkFmQzk5ajZrNHlt?=
 =?utf-8?B?ekhuYzdtbFFLSndoK2VvR0hxeE8vVHRwaVdraXNKYVI2QVJUeDE2NG1xRmFN?=
 =?utf-8?Q?y2Ese7TlZ07fMLjyQ4LxRdBUhZmjqqeQtrArM2sRPk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 41c9979c-3d24-446c-d9ae-08d9f07175b0
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Feb 2022 10:53:55.0192 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X+iaN3cAeXW23aH3AMEgwX3oIZMups1dfUa/hMCjVZqr4K+shh7EhQPb5YfF9vd29Ztz5BS6MHH4eIID52JTgDhASIJZnP6uZToAcwoUOck=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4384
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 06/10] drm/i915: Introduce
 intel_crtc_is_bigjoiner_{slave, master}()
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 2/7/2022 1:01 PM, Ville Syrjälä wrote:
> On Fri, Feb 04, 2022 at 01:27:54PM -0800, Navare, Manasi wrote:
>> On Thu, Feb 03, 2022 at 08:38:19PM +0200, Ville Syrjala wrote:
>>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>
>>> Introduce helpers to query whether the crtc is the slave/master
>>> for bigjoiner. This decouples most places from the exact
>>> state layout we use to track this relationship, allowing us
>>> to change and extend it more easily.
>> So even with the bitmask approach, we still plan to have bools for bigjoiner_slave?
> Nope. No longer necessary.
>
>>> Performed with cocci:
>>> @@
>>> expression S, E;
>>> @@
>>> (
>>>    S->bigjoiner_slave = E;
>>> |
>>> - S->bigjoiner_slave
>>> + intel_crtc_is_bigjoiner_slave(S)
>>> )
>>>
>>> @@
>>> expression S, E;
>>> @@
>>> (
>>> - E && S->bigjoiner && !intel_crtc_is_bigjoiner_slave(S)
>>> + E && intel_crtc_is_bigjoiner_master(S)
>>> |
>>> - S->bigjoiner && !intel_crtc_is_bigjoiner_slave(S)
>>> + intel_crtc_is_bigjoiner_master(S)
>>> )
>>>
>>> @@
>>> expression S;
>>> @@
>>> - (intel_crtc_is_bigjoiner_master(S))
>>> + intel_crtc_is_bigjoiner_master(S)
>>>
>>> @@
>>> expression S, E1, E2, E3;
>>> @@
>>> - intel_crtc_is_bigjoiner_slave(S) ? E1 : S->bigjoiner ? E2 : E3
>>> + intel_crtc_is_bigjoiner_slave(S) ? E1 : intel_crtc_is_bigjoiner_master(S) ? E2 : E3
>>>
>>> @@
>>> typedef bool;
>>> @@
>>> + bool intel_crtc_is_bigjoiner_slave(const struct intel_crtc_state *crtc_state)
>>> + {
>>> + 	return crtc_state->bigjoiner_slave;
>>> + }
>>> +
>>>    intel_master_crtc(...) {...}
>>>
>>> @@
>>> typedef bool;
>>> @@
>>> + bool intel_crtc_is_bigjoiner_master(const struct intel_crtc_state *crtc_state)
>>> + {
>>> + 	return crtc_state->bigjoiner && !crtc_state->bigjoiner_slave;
>>> + }
>>> +
>>>    intel_master_crtc(...) {...}
>>>
>>> @@
>>> typedef bool;
>>> identifier S;
>>> @@
>>> - bool is_trans_port_sync_mode(const struct intel_crtc_state *S);
>>> + bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
>>> + bool intel_crtc_is_bigjoiner_slave(const struct intel_crtc_state *crtc_state);
>>> + bool intel_crtc_is_bigjoiner_master(const struct intel_crtc_state *crtc_state);
>> Is all of the above part of the commit message? Dont understand why its changing is_trans_port_sync_mode() ?
> I had to touch that line to get coccinelle to actually do the
> transformation. For some reason it refused to do anything if
> I just tried to add the two new lines.
>
