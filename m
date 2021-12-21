Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F405947C241
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Dec 2021 16:09:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB2F011A41A;
	Tue, 21 Dec 2021 15:09:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7A6F11A41A
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Dec 2021 15:09:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640099354; x=1671635354;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Bb8l3JvN+k1MVheVWO5xBHn/Hm7psOwrNQ89eDr+qwE=;
 b=NEOOmt501DDETJxNXVEEmdcSf1zYpXdHN+aaV42lBiff/FPl1S7YBuLY
 YSahv6KK23YdAJ8JL3lwJaQNaNpTQv3isNxYEsCLn3EAHesyfAveEGOm+
 VJ6SSEvn9C1CBDn2EMa6exa7JuLK/FtY1w1SPUtX8FnC0B/WJy82nQQlm
 awWBzbPvbdn7F5bTgZIMmgeV7DjRHI+zR1GyXmzvRcSLLzPSQUK94J8Is
 5EgQ+STnRXIELRrya+/g0MFpgq0Rc2S4xVJn3xzjQZku8s+IvoqAaOouj
 7IchzHMag7JY9U1k9nybTpk2Vv5eMYN5FWy+jrt/9K9WIH3kPQ61IsX5G A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10204"; a="240215752"
X-IronPort-AV: E=Sophos;i="5.88,223,1635231600"; d="scan'208";a="240215752"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2021 07:09:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,223,1635231600"; d="scan'208";a="508103216"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga007.jf.intel.com with ESMTP; 21 Dec 2021 07:09:14 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 21 Dec 2021 07:09:13 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 21 Dec 2021 07:09:13 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 21 Dec 2021 07:09:13 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 21 Dec 2021 07:09:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CTx0aQ/qbMvbnhf9n9DdU3ui3x1b0eDWgp2zv93ug5LUK79yyRHrrxH2TMVu4ArmdxHRXce8KhlqhjMmwgbT3lD43OCofOPUdKTZU4G/EbBrtIHgMcFSRnJRwxliRHe7fbTr5Sba1oIUD+aN1VV3kV7qtxWvvrwu6KTmaLmtZDh9g08g0L46WACpEuLFRd9QPQo5ch1SZoO5EnpOPUVOrku1M1QQ8sq6NGIPn6d+vrHah8hdcX5K7148QPmnYrU/vU2QnWW1Bve6IcQcnhm2nxztodwqkJ1gNjl6LPY83fGswewaCs4KgjLKJaIs8Zgyfqq2p5Xuquu5D4ZTGgt6mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=59qZUFsGuvQuGO24U3bXKiTgqZUjc7mpo8S5xlre7Do=;
 b=J9PpolFCTX3oFJXDfOjlFiVo/TRq3JoCWtoL6a0cAsO5gA3DiykSMQ6DJOQ9CBqn+l7N/A/kcK8X43gzlEx+2d+mAKT9X5OKsNUnx7uU5EHx0OD9b+o2I+3vd34E6MvaWdYUl/syUPIRJIjtSHz/NugcJ/XpsYUN4+Uf7cg40rODY7vkOOTut+Uo1rO3ZOJ1oyH1g2y/L4L8nc0ebXdkmAdV3aJXzADyHjYSIr9ruGNekhz1fYU+rgHci1WZZhQSl32jIcOwWgbdrGIQdQBXpcpHy+G+iODLaytoh5UrHcOyPbff4DJiXrpw4L75GZYaaM+s98LMlRW2Q4j/q8HZvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 DM6PR11MB4442.namprd11.prod.outlook.com (2603:10b6:5:1d9::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4801.20; Tue, 21 Dec 2021 15:09:11 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::a173:6574:2739:9372]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::a173:6574:2739:9372%6]) with mapi id 15.20.4823.017; Tue, 21 Dec 2021
 15:09:11 +0000
Message-ID: <bfe543bc-5ada-cc3f-a872-1750d810f5ab@intel.com>
Date: Tue, 21 Dec 2021 07:09:03 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.4.0
Content-Language: en-US
To: Juston Li <juston.li@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20211220204023.8304-1-juston.li@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <20211220204023.8304-1-juston.li@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0P220CA0018.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::28) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b349a693-0be3-4dec-4831-08d9c493d7c6
X-MS-TrafficTypeDiagnostic: DM6PR11MB4442:EE_
X-Microsoft-Antispam-PRVS: <DM6PR11MB44427963750F7834981F5101F47C9@DM6PR11MB4442.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2887;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jr/nRIRaUUR/LMwCWReyUyd67wDtC4gGc7pDdnwSolvxf2dDgytJa+ZQ9rvaTo5VccvfhEpoDZy3fskLk9z/5jD44Fu7ko9+RDAPxYWXbsiaT7dJ3TOqPXMK2Qb5+2Cbc5oZL7qDqvLecymUIoS7VPgEqyXH7yd4oVNKkjaRKGYUCmpFyhPrT0HjiYDqBNlTgxAxV4IkMS15WbPD6SWEzrmMEdWcKI1178HoQXYktJKQ18MlpU7CZKRpICZX5YD98TZSz7pxIv4iSLYdyaVwAcwndm2UMk64TgdMIU55wedA7ksekwBoI/d70wi0jOxH9SDZeN7z9xBNJ3ZB8MZStuUSBJJX2WckR9OFsulBPX2FtL3wFZHHK7uMow/5AvthcvtQ14PUojfJ0D9x4lHUbVvSyfoimdCQsRw5sGHxI3rjB4FYNNBZbCkkEChaTVLFkRAUFmQNPG1uwANjceGiC1DowQop32a3PIcV+SM3vBAIM/9+QMm3bElhQsK5tlbcx8moS9w3XMDwiZFMxraUqPCgR7lXwfKEdhBbxTQEsrirCAPimXzWTJCwHQe79v62BE70Y421Iq35cMjPOG+wIcw07ejDutIyiNwGpIDNiTEgY34rIAvLXAbUz9hbhieGYi2gMXjv+qekBrtlRvjNxqK2omqPxai9xATw1CJDbTKe27deAt1U0ORnh15FMvjKPwKORPrWrFYo3wODtPRErDxIhnQ58G1o9LwJS6MyjyJsAFZBTwde5c/tPmyuTQXt
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(38100700002)(186003)(5660300002)(107886003)(31696002)(6486002)(2616005)(8676002)(4326008)(26005)(8936002)(6666004)(45080400002)(316002)(83380400001)(86362001)(2906002)(6512007)(66946007)(36756003)(82960400001)(31686004)(53546011)(66556008)(66476007)(6506007)(508600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OEtSZ0hJV01PUTcvR0wrcXdLWlF3RHdPNkdBVmVHVGJ4a1M4R0g3cmlGWXpT?=
 =?utf-8?B?c1NGQkkrZEtHUFFrRlJiT2dYNkVCTjZPVGdIYWJ2MU12cjNUSnZIWnJxeHBI?=
 =?utf-8?B?ZzUwdmxuRjBuWUdIbTEyN3FkcE1tdEgxcWhodFBkZU5hQzFadDhsQStITTRz?=
 =?utf-8?B?Ynd1aG81M1FGMUU1NURjalRscEpDSGw3M2pWMGJQRGUwandidG1XMDN5TWJS?=
 =?utf-8?B?OFgwWkVNdUN6cjl0U1dIMUtEdWV1WXBIZWNYSDFVcXFwMVFVT1dxeG1ydloz?=
 =?utf-8?B?U2UyUUVINjZaMmRPanU2WHoraHBycXhCd1AzdzFwTk9CSlFsRkFQL0VhZThh?=
 =?utf-8?B?WkVaUzMrR29lQjhmQzBsNGlzV01QVmhTTzNOWUQvUHNKSWlDalVBREllM1Ny?=
 =?utf-8?B?SWx6cnFRN3A0aDBqTjIwZGJCbDdhUFVDV3BtRjJIREN5MHppZk9uYWtxVTdu?=
 =?utf-8?B?VlZaSkJEVnBPeTMzUThnQnV0eElOaU5VNDBhc1ZDeUU0aEgwMkV1a0RYUy9C?=
 =?utf-8?B?di9Qd20yenZ0MTd1Q2VIRUY1dFhXeGI2aFVoV0xlZlVGVDd5Wk40Z3lKb3dD?=
 =?utf-8?B?K3Q2RDkxcTlZRjJwZXA1VnJhNnBFK282VmZvT1Q2bVJ3OEV6Zm5oVGNHWS9J?=
 =?utf-8?B?ZFpYK2g2S2dLQzJWbTFWd2hsMWc3MDRlV0x5ZFZxYUNXZWRpVXRxMi9YaUEv?=
 =?utf-8?B?cHpYcUxTL0JJMGU3eldGTGtCeXJpcGhqbjBKeEF3a1QvQVlsN3VYeGU1VFZF?=
 =?utf-8?B?V01XeWtsVCtha2hJMGVUUS9rT2lWa0pIY0svSXBHVFplckFKM0x1TEZabW1q?=
 =?utf-8?B?bTRJYTZTYkJrTDdqR1RJbnc1YWo0OU5IdWFxWENpTGVuOVloRGIvOHYrb1Z2?=
 =?utf-8?B?NUcwci85aEpHMnRzblg4WTNWWlBzR0xKZGhMbG4rLzV2RDY0cmw3dVRJSHVI?=
 =?utf-8?B?d3NtVk1sbS9nWGZGNk5DSTNhRkJTankrTWFCMUQxZDF0M3QyOGVmaVo0d3BZ?=
 =?utf-8?B?QlRLSTk2QURhUDN2cERnOHRkb01Yd1pRcjFncks5UGFCY2ROQjZJaU04UXdI?=
 =?utf-8?B?R0tYODJ4VHQyekNsL1d6UkFNTDQydUNQQm1EYXpHTzc1eit0QmRSR2pJNzJo?=
 =?utf-8?B?RXNVeC9wNEYwMDJsSnFzZlN3bEVqTFBQSENWUEtQSkYyQVAzRmc5OHlhZ29m?=
 =?utf-8?B?QUFuTWJmVWsxcFpuQ1JZdU1XTFRtS1prYmRyUTRQUEZBZk54dkgwcHBERzgv?=
 =?utf-8?B?T2p5WkRTYmtYcjJYMlA3Q0xqRDMrQ1JnWHZleU9xTlpidmt0SHhwaDc5cWFJ?=
 =?utf-8?B?RnJmelRGZDlaamhsUDZwZmtsdFFWS0orN3RsK3pKaGxZeTJGZ1ovNlhrL25E?=
 =?utf-8?B?N3J2K0Q0dTYrL1pBdjZNUHFwY1hXU3VWZEFMVVc4U2hXVjZsMy8xKzR3djA4?=
 =?utf-8?B?Z21IdTN1K1NvbmNOeUdXTWEvbFk0OVBSazgralpQcFN6N0JqeGVZY0dkcThp?=
 =?utf-8?B?a0FFUmF0QjRlRHJobENHbmFVdHhjd2dsUmd1U2wvbnlXVkQ3ZUdVWWlkandG?=
 =?utf-8?B?Uk9MRnptZTB5M3dJbjRkRjhaNXI3cXRYQ2FsMXA4TVJCTk80M3kvYm1VNGpO?=
 =?utf-8?B?VXZ2VUp3R2IxK2FkYXh2dFFmUzBvWjlDbmZLb1loa2FzSzhvWUlKRUlxMmo0?=
 =?utf-8?B?TEpFWHdjMFJhSXlsRFJ3OWFUOFU0c2xQd1RLeUdNbThnRDArbnhNVTFwR2V0?=
 =?utf-8?B?cmtKTnpyUE85bFU4bHdXcDhSdG1XU252QUc0b3ZqaVhZT1R3ajhUTDZ5ZWV6?=
 =?utf-8?B?ZjVWZ3NTU2VpOHhXdWpBd21obHJVRVhFN2FjRzNiUnVJUTNiNCtSV1ZMUTJp?=
 =?utf-8?B?TUZTR3NoZlZBQUQ3RnU3OVJzS0ZldDhQTHV2aTZUSmYzMkpwamhsV1M0d3hh?=
 =?utf-8?B?ZlI4TUFsRG92Uk5Md3gySGN0MGRPbTd5TVJPaEZWbGZsTVgrN1UxVnlOSlIr?=
 =?utf-8?B?V2gwQzNrY1llVU4vT3UzemRNMzhBMEF2WjFKcmtVNTBNcGtyQXlTZGV6bzVG?=
 =?utf-8?B?djFuWGt4RWI1YzVYTWduWStpNzRIMldySnN5SW9UWUJjbmlycjZIdkVsdVZL?=
 =?utf-8?B?VmhrWE53VU1LQTVZVGhpZGtNZ0l4bXdaaWNxcVhTcmNuSmZmd0FHRUhKbTRW?=
 =?utf-8?B?bjcvUHRmblAvckVSS0FFa2R6V0JlZjdYTlVwRWs5aVhKdHZoREptYlZKQWxq?=
 =?utf-8?B?amRRR2MvcTRhaUNqZWNRWEh0YmtnPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b349a693-0be3-4dec-4831-08d9c493d7c6
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Dec 2021 15:09:11.0999 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h5jKlk7MQsv6FMQTENDERURIUwWVKq8nxsJl8pp81IeO4c6ZMbe10zKwnNhGQvpOYfw+wP/9LH8RNOz7UamsSo8katn1PFG+Na7OjelrMs8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4442
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pxp: Hold RPM wakelock during PXP
 unbind
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
Cc: alan.previn.teres.alexis@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 12/20/2021 12:40 PM, Juston Li wrote:
> Similar to commit b8d8436840ca ("drm/i915/gt: Hold RPM wakelock during
> PXP suspend") but to fix the same warning for unbind during shutdown:
>
> ------------[ cut here ]------------
> RPM wakelock ref not held during HW access
> WARNING: CPU: 0 PID: 4139 at drivers/gpu/drm/i915/intel_runtime_pm.h:115
> gen12_fwtable_write32+0x1b7/0
> Modules linked in: 8021q ccm rfcomm cmac algif_hash algif_skcipher
> af_alg uinput snd_hda_codec_hdmi vf industrialio iwl7000_mac80211
> cros_ec_sensorhub lzo_rle lzo_compress zram iwlwifi cfg80211 joydev
> CPU: 0 PID: 4139 Comm: halt Tainted: G     U  W
> 5.10.84 #13 344e11e079c4a03940d949e537eab645f6
> RIP: 0010:gen12_fwtable_write32+0x1b7/0x200
> Code: 48 c7 c7 fc b3 b5 89 31 c0 e8 2c f3 ad ff 0f 0b e9 04 ff ff ff c6
> 05 71 e9 1d 01 01 48 c7 c7 d67
> RSP: 0018:ffffa09ec0bb3bb0 EFLAGS: 00010246
> RAX: 12dde97bbd260300 RBX: 00000000000320f0 RCX: ffffffff89e60ea0
> RDX: 0000000000000000 RSI: 00000000ffffdfff RDI: ffffffff89e60e70
> RBP: ffffa09ec0bb3bd8 R08: 0000000000000000 R09: ffffa09ec0bb3950
> R10: 00000000ffffdfff R11: ffffffff89e91160 R12: 0000000000000000
> R13: 0000000028121969 R14: ffff9515c32f0990 R15: 0000000040000000
> FS:  0000790dcf225740(0000) GS:ffff951737800000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 000058b25efae147 CR3: 0000000133ea6001 CR4: 0000000000770ef0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000ffff07f0 DR7: 0000000000000400
> PKRU: 55555554
> Call Trace:
>   intel_pxp_fini_hw+0x2f/0x39
>   i915_pxp_tee_component_unbind+0x1c/0x42
>   component_unbind+0x32/0x48
>   component_unbind_all+0x80/0x9d
>   take_down_master+0x24/0x36
>   component_master_del+0x56/0x70
>   mei_pxp_remove+0x2c/0x68
>   mei_cl_device_remove+0x35/0x68
>   device_release_driver_internal+0x100/0x1a1
>   mei_cl_bus_remove_device+0x21/0x79
>   mei_cl_bus_remove_devices+0x3b/0x51
>   mei_stop+0x3b/0xae
>   mei_me_shutdown+0x23/0x58
>   device_shutdown+0x144/0x1d3
>   kernel_power_off+0x13/0x4c
>   __se_sys_reboot+0x1d4/0x1e9
>   do_syscall_64+0x43/0x55
>   entry_SYSCALL_64_after_hwframe+0x44/0xa9
> RIP: 0033:0x790dcf316273
> Code: 64 89 01 48 83 c8 ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00
> 00 89 fa be 69 19 12 28 bf ad8
> RSP: 002b:00007ffca0df9198 EFLAGS: 00000202 ORIG_RAX: 00000000000000a9
> RAX: ffffffffffffffda RBX: 000000004321fedc RCX: 0000790dcf316273
> RDX: 000000004321fedc RSI: 0000000028121969 RDI: 00000000fee1dead
> RBP: 00007ffca0df9200 R08: 0000000000000007 R09: 0000563ce8cd8970
> R10: 0000000000000000 R11: 0000000000000202 R12: 00007ffca0df9308
> R13: 0000000000000001 R14: 0000000000000000 R15: 0000000000000003
> ---[ end trace 2f501b01b348f114 ]---
> ACPI: Preparing to enter system sleep state S5
> reboot: Power down
>
> Fixes: 0cfab4cb3c4e ("drm/i915/pxp: Enable PXP power management")
> Suggested-by: Lee Shawn C <shawn.c.lee@intel.com>
> Signed-off-by: Juston Li <juston.li@intel.com>

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Can you send it to trybot 
(https://lists.freedesktop.org/mailman/listinfo/intel-gfx-trybot) with 
an added change to turn on the PXP config (see below), so we can get a 
CI run on it with PXP enabled?

--- a/drivers/gpu/drm/i915/Kconfig.debug
+++ b/drivers/gpu/drm/i915/Kconfig.debug
@@ -48,6 +48,8 @@  config DRM_I915_DEBUG
      select DRM_I915_DEBUG_RUNTIME_PM
      select DRM_I915_SW_FENCE_DEBUG_OBJECTS
      select DRM_I915_SELFTEST
+    select INTEL_MEI_PXP
+    select DRM_I915_PXP
      select BROKEN # for prototype uAPI
      default n
      help

Thanks,
Daniele

> ---
>   drivers/gpu/drm/i915/pxp/intel_pxp_tee.c | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> index 49508f31dcb7..d2980370d929 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> @@ -103,9 +103,12 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
>   static void i915_pxp_tee_component_unbind(struct device *i915_kdev,
>   					  struct device *tee_kdev, void *data)
>   {
> +	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
>   	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
> +	intel_wakeref_t wakeref;
>   
> -	intel_pxp_fini_hw(pxp);
> +	with_intel_runtime_pm_if_in_use(&i915->runtime_pm, wakeref)
> +		intel_pxp_fini_hw(pxp);
>   
>   	mutex_lock(&pxp->tee_mutex);
>   	pxp->pxp_component = NULL;

