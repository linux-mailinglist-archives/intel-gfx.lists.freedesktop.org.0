Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0545846DF
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 22:20:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D59C10F74A;
	Thu, 28 Jul 2022 20:20:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CAAB10F74A
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 20:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659039598; x=1690575598;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=KKvWj9lgsUhh0qK+e032rAV2IOs63rOOzlohk+T7v48=;
 b=XtfltM2TYYvBp4YmahscpyOv4J+X9BJrabS9e/lz6+wiFkey5qcYMn/0
 AIE8+ZiuAOpodznbMjzEEbg1PWeM2N5wP9A0F/PmB5mjqGpDYjNpnqjPN
 hn14rOQev2ltI34HEpARaiw+GICFwQRAw7rntzh5vgfHD7/z0qiMMSBHi
 QbvB3fc9Q1Q39yLLemcLm0blmyB1YGi6wSYwyD7oL+zkfjbBaKzZ0luiZ
 VBmaRDLpZfzQ2chbqaNamK2g/LtcuYWtzwzBfznxq0GB0FNAsJMHRq5tb
 dtdLfMPo/uyRU3lRmtkdB3GFhmMJMfikRcA1OQloB7pVhCTA0iA/qduIE A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10422"; a="374911511"
X-IronPort-AV: E=Sophos;i="5.93,199,1654585200"; d="scan'208";a="374911511"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 13:19:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,199,1654585200"; d="scan'208";a="551468220"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga003.jf.intel.com with ESMTP; 28 Jul 2022 13:19:57 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 28 Jul 2022 13:19:57 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 28 Jul 2022 13:19:57 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 28 Jul 2022 13:19:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kYvvTFSphNJf2vU7H+9oO9mqZ9HnC7js7I3Q6wutiWdfrDIvJMzXvnzKtdVR0gPNGv9BwT7/CtPxUVoZg3V+TlnYmLQvnTtxfzjK6MjwVCBuzdcKPSi0oOR+Z8MKCxNaYrM4O0nuwcasaihq5QyrS8vtTHX8EjSK8O+8+o7s2OWD7YsNW24L3G1pUuBKSokypeCLlYwzWYL5fzS6lWWsjCHAEcamEneBy28SS3A0neJmyfj1CiTUQ+iwZVgqATwY7teusmUY/SJr8ThlNCS5IYKAprCzq1/xWQ6/d0lqc5Gf24dDoMFdhj/9zsNwiqdAy/m0D7r/9b1htxyHEdQ2Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fhJh/u3nS2ia0NwG1XJJ5U5h9IF046j9X0ri0HaY1dg=;
 b=G2kZWk+e2pH9w7Fdcm5VQcCdgBdc4OxU0vrBpj/spF021/NyjhA5D9IOcxs+POwGOHq8cwZdC5fC8ROdRzfAxnVQU+6SEr7QjlgRmYGp1u2wUZO+NfkboAYzoprRc9rvHfnfskMHIn8Q1lMcr/OO252w2qOSiTJRz24Mggp9JcKv8fC7HoZqlxJdCrl7zG0zH1IeecUKq7cYu5fJ9D6hoIYWAW6zy8FpSq3I4DEmhOvXnLlOddMc+tuli0fRX82DCgBNRQfQShWZd81XHdjjKhDI8ssGXa8mdHz0xJein+AQoYf4VyvXSxeiRoyl+gveVyix41wW61nNI+zES3ef9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by BYAPR11MB3717.namprd11.prod.outlook.com (2603:10b6:a03:b0::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.20; Thu, 28 Jul
 2022 20:19:56 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::516d:4bc0:8e7b:9a12]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::516d:4bc0:8e7b:9a12%6]) with mapi id 15.20.5458.024; Thu, 28 Jul 2022
 20:19:55 +0000
Message-ID: <e9ab17b2-8068-cdc8-8b77-15c39b0a80ba@intel.com>
Date: Thu, 28 Jul 2022 13:19:53 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-GB
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220628055130.1117146-1-alan.previn.teres.alexis@intel.com>
 <20220628055130.1117146-3-alan.previn.teres.alexis@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20220628055130.1117146-3-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0356.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::31) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4a1e35ed-4531-4cd7-9834-08da70d6896d
X-MS-TrafficTypeDiagnostic: BYAPR11MB3717:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: o3DfxuFpUChviAGexK5oKlvES7qzCUADfUdvGeuSsBnRTpWItQa7oWtoEE0GUH7jz+ViMwXbXVSGm6C9UnYFtlrCIj6Kl5kwxyDg8u6AErIPVAFckxoMAaSuuIKISS+Zg4gJdhoInoUmYnz6QGWMU6MuT6ZIemBXOU0MkZgcL0rRP04UakOeX+agHzHP6HbIPTxlzawD5x7NfZP/gRtvuWb2S5Ky5keHv+oRUWitYSp0ZWdesxsMGemyLhONZ3S1HiZwEDHCxqDyTjFhUeBiaSZinAQcF4z66SkvLtWTraTZYt22X5RldJLTsNbsh1BOQpfGMnLN/QslUo/wooS11b9LzHnyVVaTNfymwPAIY01qDOx+i5Iel6ek0+BFgaMNkQ2XsoGbU/TvYhbqym3jylY19c0FhAQVza2rsOWpVdI+GyjMJeTgLhgotDaSBQMvpP5oCxo9lNCMhUm44cuUK2CfMyLz/DAmd0Lpu1RN/t/MOh76D5oDWur09B5uPDfsQCAHSv9YAu1mN5YPTte20DuFVaa01VY3Cpk+75WiZE43P+viGRj45LpQ7JBERta5/X/I8//SRJw34/v9mX9UV5N4fgaaDiGlWXMroa1NntSXNNhWzAgO7GHOA+zpeXboPY0Ms2ThpjInrOKH8KMU9hhBJCMeXtZr3tJVeX72h8TGoi0I5Jj5guAsNiI/fZGzijyTDyC6/EWcw5W6qoeKBOSMlw7gaBUaUtsGJ8BnSdYSr4zvjzDV/zlSqwaO/iQuRpntuWq/Vcz5XV2v/9lcSUKEoz0lKNy3BUZe5VHeiYrAEUaLTgxuHtyPCC/qewjb/IudmYHiTpXUSSVr4i6LFA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(376002)(136003)(39860400002)(396003)(366004)(82960400001)(8936002)(6506007)(38100700002)(41300700001)(31696002)(86362001)(5660300002)(31686004)(83380400001)(186003)(36756003)(478600001)(53546011)(66946007)(66476007)(66556008)(8676002)(6486002)(6512007)(26005)(2906002)(2616005)(316002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TTdHWGl0ZTBPT0tvc1V4TEFpcXAxTmRIZGZmZ3pWeWpZSERvS0EzS1BsVWps?=
 =?utf-8?B?SW1rSlNac1o4ZlozR1k1dWQ4YWZteDk5eVB6Sk82UHA4N3RTbUV4NGtKZ3Fn?=
 =?utf-8?B?ZkU4TXA0VWN2cHYwMmpBV1ZDb09CNExpNTQySFdUL3NTNmQ3NDBGQkl3bS9Y?=
 =?utf-8?B?U1gwZVkwNFFIRjhIWGpKT09HT3pRU2lSVzZrZzRsR0hzOFoxQ3RvclRvR1d0?=
 =?utf-8?B?SHM5SUdteE5XcHhyU2JxdHlTeVN3aElWdkcrL0M4cTg1ekNxOXBPR3FtVFgw?=
 =?utf-8?B?eStIZlZUZFNaRXpzOUFTQ0g3VVZCOFp0NG1DYjFIQTBycThKWDB3dHZpVXZQ?=
 =?utf-8?B?V0RKdTlUbGg2WGRpN2kweHhwbi9maXFFQ2I3NjhUWmZHUGVVYzVQL1dFNHND?=
 =?utf-8?B?NE9NUUtFNStVaG9qS0hMaE9aQW1CVjVnTDFKSU5peTJWMENtRjFueC9CcUs2?=
 =?utf-8?B?TlQ1bFJyb1pqakROcWlFL0tGbUlaczBSNFNwVjVySXVSM0xPVDlLTVlBWEZh?=
 =?utf-8?B?Q0NmZ1d3Qy81SXArZ3hIdUFPTmt6L2xBTGVzSFkzd3Y4Nmg1N28xZlZpRVNj?=
 =?utf-8?B?RkJ5NjFsalREcHppOEhWcjZXSVNuQkdWRzhzRjZwQ2RTZ2FoVGFmRVZHMjFo?=
 =?utf-8?B?cXZUNDNlUXgrcXFIa0pLdlRLNWdOM2R1cWNuUWZKdUZoRDRzL0ppYm1TWVhs?=
 =?utf-8?B?dmt0RDBwdUM2ZG8yK2h3RW83dHV6U2VOYWtDUHRVaU9HbldqYjk4ZTU5RHR5?=
 =?utf-8?B?WlFwZzgxRTVmeGxGSkVwS0xMTjM1S1FoZnYxeUM3L2Fxd0hqblpmSDlTN2dm?=
 =?utf-8?B?eERqNVJVZGhZRG0yWGx6RjVxSi9KRVJmQVlhM2Znbm53SGFjdCs2cDE3dUJO?=
 =?utf-8?B?M0o0eXZ5SDFkUkQ1S29tcVRoUnVXdnp1OE5RaWwrcFBROTlXYVZxazlxNFlL?=
 =?utf-8?B?dnNLRHBja2xmeVVwbnlscnFPeUs0WHVNNys3b3lESXFzaFB0eVdUbzRnTEly?=
 =?utf-8?B?c3VySXdtcE5XdGY0TnlGVUcxNGJyYXM5endsQU5VcHV2d2ZZQUdSOXlFTUhT?=
 =?utf-8?B?Z3k2bFkrNnJiTWhGeUZMcUU5WitMaVVpT1V4NnBsRXJKU3UvZklRQnRJVVBH?=
 =?utf-8?B?TG8wQk5GS3JpQzdlVytUeUI5akpmQk5TVVFzV1NiUDVQNmZQNXVlNmFEeEpY?=
 =?utf-8?B?L3JCWWRBYm5YRWZyemQ1dUUvalpUSkVXam83QktTUm9iR3hMT0Zoc3BiMk5o?=
 =?utf-8?B?SkRDdzRHakkzWUcyK25WVUNvci8za1hOZ3ltcTl1azY4bUxvYUdwMlB3MG1H?=
 =?utf-8?B?MFo5ZzE3Ymx1R3BVd0hmVUlnbmZZK1liV2VvMll1SUFwcWorNzBVdlVmTUpV?=
 =?utf-8?B?UnBYdS9OUE50bGNidkJBQTQ1RFRPcG9iclcyb1VaWUxSWWJjYThsWTZ2eHV4?=
 =?utf-8?B?dE4zOG5abys0UmZkaFRJeS9ROWdxc2dwSnZXQThiZmw5UWEyTUFrVm1qd3Ni?=
 =?utf-8?B?TnBGN0hYcGNXSVFZMldJRVk5TmlBRUpSTHRlRGRnMU9mbm9FekpJYnRJQ1dC?=
 =?utf-8?B?ZWEwL3EwU091Nk85b1VoMVBlWEpwNXZTeXIvdkRBTDJXMERPRnpFbUcyMmdo?=
 =?utf-8?B?WUl0NWhVYVJIRTVaaTFrNEFkOHVpYlZvYzd3aFkwcVBQTWp2KzZLRTU2ZlFO?=
 =?utf-8?B?MGNaeXVqYjBCWTNYd3h6a1BaT3V6QmlzWks0MUpDNzYxb0pzLzRRd3dRR3M3?=
 =?utf-8?B?cmdnb1JFK0RPbW83WEp1TWRRL1kwNFg2SXZXVnlRVzhhcmpaajZZSjArOWFJ?=
 =?utf-8?B?N3A4RXpXYk1DRlJhdzA1ZzlBNXIxK1BpYVBodUczTTM3V2JsS2JuOUhMN1lp?=
 =?utf-8?B?TFRocUI3dUF3NVJ0cEx1L3RlaEJYNTZrVHhaS2dFbEw4eE9wUGNLanlPSDF1?=
 =?utf-8?B?SDY0S3FleVFmS2FWVmpTcnVQUGROaHBldEdjNjltWk5nb0hwd0FNaEViazVE?=
 =?utf-8?B?K1QzZk0yQ284N0ZTMk03WmJnbmtTYkRNa1hWZXRxTHlPNWZLcGY0ditZcjIy?=
 =?utf-8?B?RytLZ0wxWmNSY01mcWhsSnMxVWw0eDc0WTI1TlFnd2hoeGV0YWRLeHNUdEw5?=
 =?utf-8?B?QTZnSDl6SmRXOXBuV3FTdkdmV1d4NzFFRnhTb2ZIckRpL2NiTk5IeGNnMVBF?=
 =?utf-8?B?R2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a1e35ed-4531-4cd7-9834-08da70d6896d
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2022 20:19:55.8569 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o/qQ917jhJQu/BSTdEt4GfjaI9+t+yjVEm+gKgbybYivGcvT5/MhIKa3FDBICReaAQULm572o2m0VNaEzyJTZdEUbevZz9x4vhIdSp4ujJ0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3717
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-gfx 2/2] drm/i915/guc: Add delay to disable
 scheduling after pin count goes to zero
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

On 6/27/2022 22:51, Alan Previn wrote:
> From: Matthew Brost <matthew.brost@intel.com>
>
> Add a delay, configurable via debugs (default 100ms), to disable
debugs -> debugfs

Default is now 34ms?

> scheduling of a context after the pin count goes to zero. Disable
> scheduling is somewhat costly operation so the idea is a delay allows
costly operation as it requires synchronising with the GuC. So the idea

> the resubmit something before doing this operation. This delay is only
the user to resubmit

> done if the context isn't close and less than 3/4 of the guc_ids are in
close -> closed

less than a given threshold (default is 3/4) of the guc_ids

> use.
>
> As temporary WA disable this feature for the selftests. Selftests are
> very timing sensitive and any change in timing can cause failure. A
> follow up patch will fixup the selftests to understand this delay.
>
> Alan Previn: Matt Brost first introduced this series back in Oct 2021.
> However no real world workload with measured performance impact was
> available to prove the intended results. Today, this series is being
> republished in response to a real world workload that benefited greatly
> from it along with measured performance improvement.
>
> Workload description: 36 containers were created on a DG2 device where
> each container was performing a combination of 720p 3d game rendering
> and 30fps video encoding. The workload density was configured in way
> that guaranteed each container to ALWAYS be able to render and
> encode no less than 30fps with a predefined maximum render + encode
> latency time. That means that the totality of all 36 containers and its
> workloads were not saturating the utilized hw engines to its max
> (in order to maintain just enough headrooom to meet the minimum fps and
> latencies of incoming container submissions).
>
> Problem statement: It was observed that the CPU utilization of the CPU
> core that was pinned to i915 soft IRQ work was experiencing severe load.
> Using tracelogs and an instrumentation patch to count specific i915 IRQ
> events, it was confirmed that the majority of the CPU cycles were caused
> by the gen11_other_irq_handler() -> guc_irq_handler() code path. The vast
> majority of the cycles was determined to be processing a specific G2H IRQ
> which was INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_DONE. This IRQ is send by
send -> sent

> the GuC in response to the i915 KMD sending the H2G requests
> INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_SET to the GuC. That request is sent
> when the context is idle to unpin the context from any GuC access. The
> high CPU utilization % symptom was limiting the density scaling.
>
> Root Cause Analysis: Because the incoming execution buffers were spread
> across 36 different containers (each with multiple contexts) but the
> system in totality was NOT saturated to the max, it was assumed that each
> context was constantly idling between submissions. This was causing thrashing
> of unpinning a context from GuC at one moment, followed by repinning it
> due to incoming workload the very next moment. Both of these event-pairs
> were being triggered across multiple contexts per container, across all
> containers at the rate of > 30 times per sec per context.
>
> Metrics: When running this workload without this patch, we measured an average
> of ~69K INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_DONE events every 10 seconds or
> ~10 million times over ~25+ mins. With this patch, the count reduced to ~480
> every 10 seconds or about ~28K over ~10 mins. The improvement observed is
> ~99% for the average counts per 10 seconds.
>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> Acked-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Needs your s-o-b as you are posting the patch.

The code below looks to be the old rev of the patch? This still needs 
updating with the cleanup work?

John.

