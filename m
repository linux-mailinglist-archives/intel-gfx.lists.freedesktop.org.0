Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9D148DF1E
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 21:40:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF25510E46F;
	Thu, 13 Jan 2022 20:40:42 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F36B10E46F;
 Thu, 13 Jan 2022 20:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642106441; x=1673642441;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pzJaxmNbjY6IxbsFjZzj49CkVp/o551GKFi/JTEXcsc=;
 b=Il4Djx6LpcX5W3U5ApUy4HHHhGKiBXzZkkKiq1sLCEOJQkbA0wHycsau
 sUxQ3lCADiPjdHyDIN2zIqTAFzHYcYQbMCid5UR1ekRa7ws8xQc/uDCWw
 QdLZR6k55SVMjLXD9gT6wMPnNFfvDT5VDtM+i6/PkspIemVlrVJloBmNQ
 bLG/illIQyJOdm38Y/e8+2Axjn5llNFS4UqOyLNiuVUNDsMIR54/xNCwJ
 PSZIA+GG3vCdrefpXZhiRMxbG7NPzrdxWkbjI4INussXZWSJc9rVQYGqz
 Kr4VM+GgvUO3eKQxtdHobQpH8tH/JWAQRMQGZKSyhl4aTIbtpt0AxvXPQ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="307452943"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="307452943"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 12:40:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="529116776"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga007.fm.intel.com with ESMTP; 13 Jan 2022 12:40:40 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 13 Jan 2022 12:40:39 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 13 Jan 2022 12:40:39 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 13 Jan 2022 12:40:39 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 13 Jan 2022 12:40:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bg/9Elhk43k97iMB35CUA4gN8p/JckK6O4L9BrHJr14ViIgCmWb23nXI2tK6KBQ3AR21MYEb0MknsOr7BjePX8nYDuh9gC3OdlPiJC36YDsj57YiRO0MXTRFRV4cUXDsDIv9C9WbKJF83slZVA/UCd1cWh/4j2ZW6CstDAoRM0TfVWnjZmQwWis4SyfCgSUrwCcZCHqjAD98aQiNQvnoWr4IAxMi3B5k4KXY5UwGrq7wsRszLac2hIpTb1D7cCJGUiuo4W8dpXoC3/eBaI03kQBXojU8nPsMF0QR/k39DbpAeFlv+irx7e1P2pH1y5/Ch/AWgi0ZsZznJ8EFnw8aGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3r2wmK3uB1vWTTqxNt4HoW2VM7uGs9xs5bAq5xUPnVc=;
 b=j27xdnIRoA9IASDCTmEggy/L/uvW7M7lHN8ppVvN95/bkp/3iZ97T157ZNNXe6R0vCirGh6TOWa3HWFTvtlBNBsjBT1TzmzC2CfP4t0lq9FbBR2BXmNDOk0nu5xNtaP4fo+qK7+yBwBzpOelDzNd2gvOReKBKU3kJL8D9/b8XM3wttMLfJfl2M0++d55kZvxLDs9kECnE0fHOn/T1DKZcUxr5u2r8Lj7v+jteVgeyT8oNOo16Jhn6jrNSsThoxbIB4rBg+xz3NR8bj4kT3OYIAsdrHOEsE+KEuG3gLpkmVQno8uBpudWdo0ckjzDzlhWj2UUMVWTzT861UtT6BQXaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by MN2PR11MB4535.namprd11.prod.outlook.com (2603:10b6:208:24e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.11; Thu, 13 Jan
 2022 20:40:36 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::b006:30e2:f354:3ea5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::b006:30e2:f354:3ea5%5]) with mapi id 15.20.4888.011; Thu, 13 Jan 2022
 20:40:36 +0000
Message-ID: <bce9c41a-c493-f9e7-8feb-7f7377cd67e2@intel.com>
Date: Thu, 13 Jan 2022 12:40:33 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.4.1
Content-Language: en-GB
To: Matthew Brost <matthew.brost@intel.com>
References: <20220113195947.1536897-1-John.C.Harrison@Intel.com>
 <20220113195947.1536897-8-John.C.Harrison@Intel.com>
 <20220113201002.GA13315@jons-linux-dev-box>
 <c50ce63a-e280-b000-942f-84cae295a1e1@intel.com>
 <20220113202355.GA9211@jons-linux-dev-box>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20220113202355.GA9211@jons-linux-dev-box>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0003.namprd03.prod.outlook.com
 (2603:10b6:303:8f::8) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 01110e37-d3da-493a-35b9-08d9d6d4f3b6
X-MS-TrafficTypeDiagnostic: MN2PR11MB4535:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <MN2PR11MB4535F0DB8F48F9CD78556F13BD539@MN2PR11MB4535.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:546;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dNzmVKcqR4vdZyDlDZpfUGrWtuKqujMpLwafjMQZ29YqGLhJef1tbh9k+teLTN93u/x4+pANWNqAc/WkPi6ffYD5wUv3GQOh7Ctk+pBphQh3nZNt5NqEeiVHTnIvg2HRZaQmdGEd3rJdtU8vfhDBwk3ddJErY4CTee2SGUpJsFxl7FB4XS/rnAlBSYbdqpgwX4h3nzezukM+Jti+NB7R7KMZtuQciQsx13mrOaSZXhQR4j/CD1Yju/gifur0Hr3K7rHz7P9Ejr8I/3Z9JxCfye+chSDFehn6Hna7yBEVkKWaN0st+NcwFt8hAEhxkWifikO5gO/FwRmrrZBDXP0g8RdXlZjMq0nwF3iJ/6RhiC6yXEqqWYQVyNJTQf7VqPhr/tCZIHil5pypZHkHVrhN9D9+XW6s9gcbAUeO8z/anG+HwF8TNhrwKN39jpfcRhVq8AnJ4ztShPZ1wEi2jdqqS4AFKlGmx+Uww80/Tw0Z+fBgEtv+k2K8TOkwyDrPMd3xmROn/ILdaOvcH4ym+4nSGVJC/poBHcbXi5hbM+Kja8p8A4mvHTTeQxOwl2/7exqOyvNM2p9cLwml5Bp3D7TVKgeSxIujLhyIFisebzCk95Y4g8cVitZWiiZRAKAzHHLzlDZZaJQKmscP8x6V5Nis2nNW5nqy8OuXClfwabE9TPJrLFlmdVHqJhPm0e0AUInkP6pEFY9VocVrbhkeyGruwT0wGWVxoLctW31OpXmjb0YDi3BHjUAas+IQlDYUATgN
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(186003)(6636002)(2906002)(83380400001)(26005)(37006003)(316002)(6506007)(53546011)(38100700002)(8936002)(8676002)(82960400001)(86362001)(30864003)(6512007)(450100002)(4326008)(5660300002)(31686004)(31696002)(508600001)(6862004)(2616005)(6666004)(6486002)(66556008)(66946007)(66476007)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bjNWVm92QnFOVnkzQmJVYldPaXJYYWJvaVpYbnRYaHpxbXZXc3VYUXA0cm9k?=
 =?utf-8?B?UWJsenQ1dHBCRXg3bXNsUUszWnprK0oxeElDZXNsUUlJcUs5YjhIWEpIQWhn?=
 =?utf-8?B?UTV0RERDSnptMlc1QnZsaDlBRlloVHhWMjdvUkdaVUpsU2llVnpURmZVc1Fk?=
 =?utf-8?B?TVhzcnpIeE1TVWVnNG53YjRJeUlHdWJrRVVXWTdUencxcWJjaTVCOXRUMXB2?=
 =?utf-8?B?UUhtUVhOcHVvWXV2OEdoWHExZjgydm9IU1V0ZVdYNTNHa1ZEU09hQTg5Ymho?=
 =?utf-8?B?QzZWc1VuMHFWZEN1alMvamxtQmt5cmszckk5OE85N2VSbHFscXBoanNDUnQ0?=
 =?utf-8?B?cTBWRXRaVGM1WkxkT2U4L1dqVFVHbm5JZjFvdTVBN2xmeXNPL3ljYUtOMHg0?=
 =?utf-8?B?VVFyV2NlMDdBdnRvTTliaHZ3YWcvR1laa3NIYkxaZy84WHZHaUN5aDlvSEo2?=
 =?utf-8?B?R1ZuNTQwWlpjY0Q1YW9xZnFTM2pKY2tHTGFyV0ZRcThDbzZqR3Q0Yzh6YVV1?=
 =?utf-8?B?V1llK3hWeDZhbjlPV3h0NnZsejc3ZHhoUEErQStDbEVpVmllZ1IzSTQxQlk5?=
 =?utf-8?B?YXRaL0wxMmlsVGl3dGd5N2NuTzAyckhRMmxRb05ZZ1g3Wm1XSXlDQ3BGdTJv?=
 =?utf-8?B?VllJTmd0eHhvNWRQS1Jkdm5YclJCTzliV1NPZ25Wak1TZE9PZCtiT2ZGdTIw?=
 =?utf-8?B?MGg2cUltWDZTUTlmR0lhcVdwVmpRWGdycmMxMHJ4NGE0ak1peHJvMUVkbzdU?=
 =?utf-8?B?UTh3RkFwb0dBcE9xQU4xNW5HSWN0L1lyRnpFckM0aXIwT0tNcmRBQ2VQU09h?=
 =?utf-8?B?elRGWW00MEdzM09ocU8rNFZabzNjeGo1bWdyYU41OFpQTlBaREJBc1NUYkhZ?=
 =?utf-8?B?d0JFQ1FVN2p1Zkl2Y1EwbkJKRSswY0xJS29UbW1Tb3B5QXdNVnRHY0NoYTVs?=
 =?utf-8?B?bnRlNk9La2o2cFR1N1VrR0d1YVZCVEdGcngxREVxMktuM0Z6Nk0xdU52QnhZ?=
 =?utf-8?B?aHlJSlZna3hxNEc2SVorNU8xYXF1WHpuU0tZbHIvdnpLR1dKNXNKRk9ZM0dV?=
 =?utf-8?B?MVFGVlVESEduUHNxQlBjaFRtaXBDY25zTG1UbUdpMVhvdFZhZmdwcVFFYkht?=
 =?utf-8?B?aVgrcWlqS2hYS1M4TVg0dVpsUytxRGloZGJGQjlldzF4SXVwS1RNcmFta3B0?=
 =?utf-8?B?NUFXMEIrRHpKSExGUEt6MTF3NzJGTnlRQXFrT3VmM3BWNys0cjYrcVVkZTM2?=
 =?utf-8?B?ckZrUEU2QjFLS2hiREFmZno2QTVuZ3RIcXBhUitOSmpZMkFpYlgrK29XM0tY?=
 =?utf-8?B?K00va2tuZ0cySG94QzUrVTBhYWhSUlRBb0xkQkZkeHJTaHBWcHpMcVY1YXVt?=
 =?utf-8?B?TGFTbHdUMXpEdHFrQzV3V0dKbjIzRmpxQjNtaFJoNnZHMWxoanNVTHlReGlJ?=
 =?utf-8?B?VFFhYkJWcWl1T3FOc25ybGNZNnRjVlRqTk5KMzRnNkVSeXdWWkVrVXVQeTJj?=
 =?utf-8?B?Q0pkYUhGOTdvOTc3eU5FN2ZDUm5zWUlWMllvcTRUYzRmV3BYU0R3TUthYXpL?=
 =?utf-8?B?b1RvdFpYWWxNbGxJazIwMG9oQWtnRjF4WEcwRGh5RUwvMDQxN1lJaitkaGFC?=
 =?utf-8?B?UzBMTDNwVDA0UFNMMlkyWUJrZmZDVE93WnhpTnFrZFJaWDBBMVluY2hNQVp4?=
 =?utf-8?B?RzhERlV3NmdVYzNTeUNVVGVpMHIvSnRsV01PQXVoMkhyNW9QVld0aFlEVERs?=
 =?utf-8?B?aTFKVkRzUE13MEFVT0pLRHZUaGlzRENxdnZkdnF5L1hIOGlYNVJTL3V3Umov?=
 =?utf-8?B?VGJlYXhNWnFqSUYwZXJjV3NnSGNFWkNPUnBYdm1PT2FFeDAwdUFjNHM4Q25N?=
 =?utf-8?B?djhmbFl1VG1HYkRuUGdTOGcybUQ3MEZld2JKUEZ6YjNGVjJkL0ZaUXNzZkpV?=
 =?utf-8?B?TStFam9FcDBkY2pHV01nVEtyZ2dyWXhCbU9TOWV6alVvWjh5dWUzZ0lUQ2Jr?=
 =?utf-8?B?UUhMeVVkQWlzR1J1Mkc4QzRIbURnZWJObEpRbWdFUFBzWThxNEtGc0Z6T2ZZ?=
 =?utf-8?B?TmZXSzR3bW5NN0tuMWVsMmtSbUpGNWo3RitQdkZ0QS9Gb3ZvSkM0d2syM3lL?=
 =?utf-8?B?TXpJSitUNlpaUU9DVmlXb0xsM1locFNiVTlWdGRVVHR4KzVXaDFwbDdJRWNG?=
 =?utf-8?B?bFRiUGZ2enRMd01sWEhnNUdSVkc5L2cvUm5oNXJ3enBXellMYVlrK2JSTUZF?=
 =?utf-8?Q?cTWM2YtbB094rfj4n5xKexpJW6fOFKqv1sDM4JGpT4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 01110e37-d3da-493a-35b9-08d9d6d4f3b6
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2022 20:40:36.1726 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E45XE8GgyqGvrFTHSF1/M3bN8lr7hAiD9qOq+OuImu4bRAhqufPRpLfPYuikM0kOwEYmmSr1NBeqo9NFF7nGrLEyCPoH72JQrilqHK3WDRE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4535
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH v3 i-g-t 07/15] lib/store:
 Refactor common store code into helper function
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
Cc: IGT-Dev@Lists.FreeDesktop.Org, Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 1/13/2022 12:23, Matthew Brost wrote:
> On Thu, Jan 13, 2022 at 12:27:00PM -0800, John Harrison wrote:
>> On 1/13/2022 12:10, Matthew Brost wrote:
>>> On Thu, Jan 13, 2022 at 11:59:39AM -0800, John.C.Harrison@Intel.com wrote:
>>>> From: John Harrison <John.C.Harrison@Intel.com>
>>>>
>>>> A lot of tests use almost identical code for creating a batch buffer
>>>> which does a single write to memory and another is about to be added.
>>>> Instead, move the most generic version into a common helper function.
>>>> Unfortunately, the other instances are all subtly different enough to
>>>> make it not so trivial to try to use the helper. It could be done but
>>>> it is unclear if it is worth the effort at this point. This patch
>>>> proves the concept, if people like it enough then it can be extended.
>>>>
>>>> v2: Fix up object address vs store offset confusion (with help from
>>>> Zbigniew K).
>>>>
>>>> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>>>> ---
>>>>    lib/igt_store.c             | 96 +++++++++++++++++++++++++++++++++++++
>>>>    lib/igt_store.h             | 12 +++++
>>>>    lib/meson.build             |  1 +
>>>>    tests/i915/gem_exec_fence.c | 77 ++---------------------------
>>>>    tests/i915/i915_hangman.c   |  1 +
>>>>    5 files changed, 115 insertions(+), 72 deletions(-)
>>>>    create mode 100644 lib/igt_store.c
>>>>    create mode 100644 lib/igt_store.h
>>>>
>>>> diff --git a/lib/igt_store.c b/lib/igt_store.c
>>>> new file mode 100644
>>>> index 000000000..42c888b55
>>>> --- /dev/null
>>>> +++ b/lib/igt_store.c
>>>> @@ -0,0 +1,96 @@
>>>> +/* SPDX-License-Identifier: MIT */
>>>> +/*
>>>> + * Copyright © 2021 Intel Corporation
>>>> + */
>>>> +
>>>> +#include "i915/gem_create.h"
>>>> +#include "igt_core.h"
>>>> +#include "drmtest.h"
>>>> +#include "igt_store.h"
>>>> +#include "intel_chipset.h"
>>>> +#include "intel_reg.h"
>>>> +#include "ioctl_wrappers.h"
>>>> +#include "lib/intel_allocator.h"
>>>> +
>>>> +/**
>>>> + * SECTION:igt_store_word
>>>> + * @short_description: Library for writing a value to memory
>>>> + * @title: StoreWord
>>>> + * @include: igt.h
>>>> + *
>>>> + * A lot of igt testcases need some mechanism for writing a value to memory
>>>> + * as a test that a batch buffer has executed.
>>>> + *
>>>> + * NB: Requires master for STORE_DWORD on gen4/5.
>>>> + */
>>>> +void igt_store_word(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
>>>> +		    const struct intel_execution_engine2 *e,
>>>> +		    int fence, uint32_t target_handle,
>>>> +		    uint64_t target_gpu_addr,
>>>> +		    uint64_t store_offset, uint32_t store_value)
>>>> +{
>>>> +	const int SCRATCH = 0;
>>>> +	const int BATCH = 1;
>>>> +	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
>>>> +	struct drm_i915_gem_exec_object2 obj[2];
>>>> +	struct drm_i915_gem_relocation_entry reloc;
>>>> +	struct drm_i915_gem_execbuffer2 execbuf;
>>>> +	uint32_t batch[16], delta;
>>>> +	uint64_t bb_offset;
>>>> +	int i;
>>>> +
>>>> +	memset(&execbuf, 0, sizeof(execbuf));
>>>> +	execbuf.buffers_ptr = to_user_pointer(obj);
>>>> +	execbuf.buffer_count = ARRAY_SIZE(obj);
>>>> +	execbuf.flags = e->flags;
>>>> +	execbuf.rsvd1 = ctx->id;
>>>> +	if (fence != -1) {
>>>> +		execbuf.flags |= I915_EXEC_FENCE_IN;
>>>> +		execbuf.rsvd2 = fence;
>>>> +	}
>>>> +	if (gen < 6)
>>>> +		execbuf.flags |= I915_EXEC_SECURE;
>>>> +
>>>> +	memset(obj, 0, sizeof(obj));
>>>> +	obj[SCRATCH].handle = target_handle;
>>>> +
>>>> +	obj[BATCH].handle = gem_create(fd, 4096);
>>>> +	obj[BATCH].relocs_ptr = to_user_pointer(&reloc);
>>>> +	obj[BATCH].relocation_count = !ahnd ? 1 : 0;
>>>> +	bb_offset = get_offset(ahnd, obj[BATCH].handle, 4096, 0);
>>>> +	memset(&reloc, 0, sizeof(reloc));
>>>> +
>>>> +	i = 0;
>>>> +	delta = sizeof(uint32_t) * store_offset;
>>> Can't this overflow the delta as store_offset is a u64?
>> Oops.
>>
>> Yeah, this code was a right mess of data words being used as addresses and
>> random copies supporting 64bit or only 32bit offsets. I believe it's
>> currently fine as even platforms which can theoretically support >32bits
>> don't actually use it. But yes, will repost with a 64bit version of delta.
>>
>>>> +	if (!ahnd) {
>>>> +		reloc.target_handle = obj[SCRATCH].handle;
>>>> +		reloc.presumed_offset = -1;
>>>> +		reloc.offset = sizeof(uint32_t) * (i + 1);
> Then just be safe, probably assert the upper 32 bits of delta are clear too.
Indeed. And in the <gen8 cases below.

John.

> Matt
>
>>>> +		reloc.delta = delta;
>>>> +		reloc.read_domains = I915_GEM_DOMAIN_INSTRUCTION;
>>>> +		reloc.write_domain = I915_GEM_DOMAIN_INSTRUCTION;
>>>> +	} else {
>>>> +		obj[SCRATCH].offset = target_gpu_addr;
>>>> +		obj[SCRATCH].flags |= EXEC_OBJECT_PINNED | EXEC_OBJECT_WRITE;
>>>> +		obj[BATCH].offset = bb_offset;
>>>> +		obj[BATCH].flags |= EXEC_OBJECT_PINNED;
>>>> +	}
>>>> +	batch[i] = MI_STORE_DWORD_IMM | (gen < 6 ? 1 << 22 : 0);
>>>> +	if (gen >= 8) {
>>>> +		batch[++i] = target_gpu_addr + delta;
>>>> +		batch[++i] = (target_gpu_addr + delta) >> 32;
>>> This is different from the previous code, presumably this is fixing a
>>> bug where delta + bits 31:0 of target_gpu_addr overflows into the upper
>>> 32 bits?
>>>
>>> Matt
>> Yeah, some copies of this code were definitely broken for >32bit addresses.
>>
>> John.
>>
>>>> +	} else if (gen >= 4) {
>>>> +		batch[++i] = 0;
>>>> +		batch[++i] = delta;
>>>> +		reloc.offset += sizeof(uint32_t);
>>>> +	} else {
>>>> +		batch[i]--;
>>>> +		batch[++i] = delta;
>>>> +	}
>>>> +	batch[++i] = store_value;
>>>> +	batch[++i] = MI_BATCH_BUFFER_END;
>>>> +	gem_write(fd, obj[BATCH].handle, 0, batch, sizeof(batch));
>>>> +	gem_execbuf(fd, &execbuf);
>>>> +	gem_close(fd, obj[BATCH].handle);
>>>> +	put_offset(ahnd, obj[BATCH].handle);
>>>> +}
>>>> diff --git a/lib/igt_store.h b/lib/igt_store.h
>>>> new file mode 100644
>>>> index 000000000..5c6c8263c
>>>> --- /dev/null
>>>> +++ b/lib/igt_store.h
>>>> @@ -0,0 +1,12 @@
>>>> +/* SPDX-License-Identifier: MIT */
>>>> +/*
>>>> + * Copyright © 2021 Intel Corporation
>>>> + */
>>>> +
>>>> +#include "igt_gt.h"
>>>> +
>>>> +void igt_store_word(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
>>>> +		    const struct intel_execution_engine2 *e,
>>>> +		    int fence, uint32_t target_handle,
>>>> +		    uint64_t target_gpu_addr,
>>>> +		    uint64_t store_offset, uint32_t store_value);
>>>> diff --git a/lib/meson.build b/lib/meson.build
>>>> index b9568a71b..3e43316d1 100644
>>>> --- a/lib/meson.build
>>>> +++ b/lib/meson.build
>>>> @@ -72,6 +72,7 @@ lib_sources = [
>>>>    	'igt_map.c',
>>>>    	'igt_pm.c',
>>>>    	'igt_dummyload.c',
>>>> +	'igt_store.c',
>>>>    	'uwildmat/uwildmat.c',
>>>>    	'igt_kmod.c',
>>>>    	'igt_panfrost.c',
>>>> diff --git a/tests/i915/gem_exec_fence.c b/tests/i915/gem_exec_fence.c
>>>> index 9a6336ce9..196236b27 100644
>>>> --- a/tests/i915/gem_exec_fence.c
>>>> +++ b/tests/i915/gem_exec_fence.c
>>>> @@ -28,6 +28,7 @@
>>>>    #include "i915/gem.h"
>>>>    #include "i915/gem_create.h"
>>>>    #include "igt.h"
>>>> +#include "igt_store.h"
>>>>    #include "igt_syncobj.h"
>>>>    #include "igt_sysfs.h"
>>>>    #include "igt_vgem.h"
>>>> @@ -57,74 +58,6 @@ struct sync_merge_data {
>>>>    #define   MI_SEMAPHORE_SAD_EQ_SDD       (4 << 12)
>>>>    #define   MI_SEMAPHORE_SAD_NEQ_SDD      (5 << 12)
>>>> -static void store(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
>>>> -		  const struct intel_execution_engine2 *e,
>>>> -		  int fence, uint32_t target, uint64_t target_offset,
>>>> -		  unsigned offset_value)
>>>> -{
>>>> -	const int SCRATCH = 0;
>>>> -	const int BATCH = 1;
>>>> -	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
>>>> -	struct drm_i915_gem_exec_object2 obj[2];
>>>> -	struct drm_i915_gem_relocation_entry reloc;
>>>> -	struct drm_i915_gem_execbuffer2 execbuf;
>>>> -	uint32_t batch[16], delta;
>>>> -	uint64_t bb_offset;
>>>> -	int i;
>>>> -
>>>> -	memset(&execbuf, 0, sizeof(execbuf));
>>>> -	execbuf.buffers_ptr = to_user_pointer(obj);
>>>> -	execbuf.buffer_count = 2;
>>>> -	execbuf.flags = e->flags | I915_EXEC_FENCE_IN;
>>>> -	execbuf.rsvd1 = ctx->id;
>>>> -	execbuf.rsvd2 = fence;
>>>> -	if (gen < 6)
>>>> -		execbuf.flags |= I915_EXEC_SECURE;
>>>> -
>>>> -	memset(obj, 0, sizeof(obj));
>>>> -	obj[SCRATCH].handle = target;
>>>> -
>>>> -	obj[BATCH].handle = gem_create(fd, 4096);
>>>> -	obj[BATCH].relocs_ptr = to_user_pointer(&reloc);
>>>> -	obj[BATCH].relocation_count = !ahnd ? 1 : 0;
>>>> -	bb_offset = get_offset(ahnd, obj[BATCH].handle, 4096, 0);
>>>> -	memset(&reloc, 0, sizeof(reloc));
>>>> -
>>>> -	i = 0;
>>>> -	delta = sizeof(uint32_t) * offset_value;
>>>> -	if (!ahnd) {
>>>> -		reloc.target_handle = obj[SCRATCH].handle;
>>>> -		reloc.presumed_offset = -1;
>>>> -		reloc.offset = sizeof(uint32_t) * (i + 1);
>>>> -		reloc.delta = delta;
>>>> -		reloc.read_domains = I915_GEM_DOMAIN_INSTRUCTION;
>>>> -		reloc.write_domain = I915_GEM_DOMAIN_INSTRUCTION;
>>>> -	} else {
>>>> -		obj[SCRATCH].offset = target_offset;
>>>> -		obj[SCRATCH].flags |= EXEC_OBJECT_PINNED | EXEC_OBJECT_WRITE;
>>>> -		obj[BATCH].offset = bb_offset;
>>>> -		obj[BATCH].flags |= EXEC_OBJECT_PINNED;
>>>> -	}
>>>> -	batch[i] = MI_STORE_DWORD_IMM | (gen < 6 ? 1 << 22 : 0);
>>>> -	if (gen >= 8) {
>>>> -		batch[++i] = target_offset + delta;
>>>> -		batch[++i] = target_offset >> 32;
>>>> -	} else if (gen >= 4) {
>>>> -		batch[++i] = 0;
>>>> -		batch[++i] = delta;
>>>> -		reloc.offset += sizeof(uint32_t);
>>>> -	} else {
>>>> -		batch[i]--;
>>>> -		batch[++i] = delta;
>>>> -	}
>>>> -	batch[++i] = offset_value;
>>>> -	batch[++i] = MI_BATCH_BUFFER_END;
>>>> -	gem_write(fd, obj[BATCH].handle, 0, batch, sizeof(batch));
>>>> -	gem_execbuf(fd, &execbuf);
>>>> -	gem_close(fd, obj[BATCH].handle);
>>>> -	put_offset(ahnd, obj[BATCH].handle);
>>>> -}
>>>> -
>>>>    static bool fence_busy(int fence)
>>>>    {
>>>>    	return poll(&(struct pollfd){fence, POLLIN}, 1, 0) == 0;
>>>> @@ -400,13 +333,13 @@ static void test_fence_await(int fd, const intel_ctx_t *ctx,
>>>>    			continue;
>>>>    		if (flags & NONBLOCK) {
>>>> -			store(fd, ahnd, ctx, e2, spin->out_fence,
>>>> -			      scratch, scratch_offset, i);
>>>> +			igt_store_word(fd, ahnd, ctx, e2, spin->out_fence,
>>>> +				       scratch, scratch_offset, i, i);
>>>>    		} else {
>>>>    			igt_fork(child, 1) {
>>>>    				ahnd = get_reloc_ahnd(fd, ctx->id);
>>>> -				store(fd, ahnd, ctx, e2, spin->out_fence,
>>>> -				      scratch, scratch_offset, i);
>>>> +				igt_store_word(fd, ahnd, ctx, e2, spin->out_fence,
>>>> +					       scratch, scratch_offset, i, i);
>>>>    				put_ahnd(ahnd);
>>>>    			}
>>>>    		}
>>>> diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
>>>> index 6656b3fcd..5a0c9497c 100644
>>>> --- a/tests/i915/i915_hangman.c
>>>> +++ b/tests/i915/i915_hangman.c
>>>> @@ -36,6 +36,7 @@
>>>>    #include "i915/gem.h"
>>>>    #include "i915/gem_create.h"
>>>>    #include "igt.h"
>>>> +#include "igt_store.h"
>>>>    #include "igt_sysfs.h"
>>>>    #include "igt_debugfs.h"
>>>>    #include "sw_sync.h"
>>>> -- 
>>>> 2.25.1
>>>>

