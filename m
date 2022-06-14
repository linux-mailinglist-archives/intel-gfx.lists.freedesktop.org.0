Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC7054BE37
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 01:15:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5ECF113531;
	Tue, 14 Jun 2022 23:15:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6B0311352D
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jun 2022 23:15:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655248532; x=1686784532;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=A36KxsgwVJ/ix7wWjX3R2Q0UYIWDCgWn1N/i4JPoisk=;
 b=n8en1dhRb0Vo+3gdaTh+xpDiszmpazL5NmcFBEhOvUjeZIULuLp53sK+
 wqVUPNgzQfNDeTKndpsoBr3l2A3vsuqzepsOXpMrLiQNEQpgZpNd9QAio
 VsxAeysJu37FaKFDA45iK/no0aBVi0CdmrIt9iahOIOydj3CDG4psLpQX
 kpmarWy/xDEnmhBW7+ugxzHfFukfLiNEXnHdKhZjJoIBVOdfhpETwBr71
 irUces/qERLVDJ38h0ZqEC1Xq9yPhSsGstdQpWqo20eCLC2gF3Rb7wHsS
 l4wN4ZHA97s7oZf275woUsglXA9n3nFmM3lsB/oNfO6ee/cABWmKV2FWv w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="279806301"
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="279806301"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2022 16:15:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="618203903"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 14 Jun 2022 16:15:30 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 14 Jun 2022 16:15:30 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 14 Jun 2022 16:15:30 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 14 Jun 2022 16:15:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JUIGxgwMYUk56to4gOi1t3rEOt+Xt/DRHmUzV6SmU2w16hWQ3fD3d5m2EQipZibH3cpoxs9FO5yov28JcNmE2X+1ePmCzgso9nKeVk+f57DrT68jiThwLM07nXTErWrGdZh4yyL02KPmEjB16lANlQPtKoFdsy0az9ZI70YEp5wTQSqIgWyPpLIluGX6pgO83lalbJxfR6U96eoZ3fsWAf+0/PR6R31dMrnGeE7DLthEweke576+uwlNxq04ocYXTscPT/7WSFxmRp1AvV9PmziV+2JVWAFgnXW5r1JeDRn49ycZZLY2JHvDGhSejgI/xRXolEun2yK7e3QcmOXq2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UVAb5jypaNo9uNY6bcbR49fO1D0X7urPPTL8yAYXYkw=;
 b=CBBr3X9Cw+DDsSGIPgKDbuUCczZtJWfyGi7ar+laTaM5DV8BiHqFZUW/oNb7MrVMub8Wk/42T7aQP9TZ9uPyZ3paIi6YI0gQfTUSoVjW72bMxoCNMxqcB6g02tvjh2QZi6AzuVvdTNql7xuAUlsqOAzUsnzM7fdJhquPzH/YXihNIxow5coovcIXTx24+PouTKH4KY0WDZBLQStuDAWRBdouDb9XoFwb+bIFIJnuRj5PSoLoOsRopTl5qMqqxuOb5yWsLj3Db047SUzUwZ57nB+DCas0wVdYYbwM+eZUPg5HNJwRSu5ygpjqYVmpLBp/CWyzB0r1gfZUx0pKN5kiyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB4514.namprd11.prod.outlook.com (2603:10b6:5:2a3::17)
 by BN9PR11MB5433.namprd11.prod.outlook.com (2603:10b6:408:11e::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.14; Tue, 14 Jun
 2022 23:15:19 +0000
Received: from DM6PR11MB4514.namprd11.prod.outlook.com
 ([fe80::b110:6564:ad3:1728]) by DM6PR11MB4514.namprd11.prod.outlook.com
 ([fe80::b110:6564:ad3:1728%6]) with mapi id 15.20.5332.022; Tue, 14 Jun 2022
 23:15:19 +0000
Message-ID: <c565a81a-d86c-a5fd-c97e-27bd1459da6e@intel.com>
Date: Tue, 14 Jun 2022 16:15:15 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>, "Tvrtko
 Ursulin" <tvrtko.ursulin@linux.intel.com>, <intel-gfx@lists.freedesktop.org>, 
 "Zhang, Carl" <carl.zhang@intel.com>
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
 <dbc2ad75-1248-8d53-281d-f0a308733972@linux.intel.com>
 <7ede8090-bfbf-17a7-31f6-24e844a70673@intel.com>
 <a0860c06-4aba-deff-9101-aecdd8c14a02@linux.intel.com>
 <d6bc42f5-86c1-3bc9-d731-2bd0a978ece5@intel.com>
 <f50ee482-ed77-a644-095f-b2a988306de2@linux.intel.com>
 <7b394930-e6fb-8dc6-ba63-352f7a623b97@intel.com>
 <4d44c67a-4a38-fa53-6709-d5f206a9b0db@linux.intel.com>
 <e90f9dd1-7229-f958-d2e6-6fc4ec5a866b@intel.com>
 <954db3a4-e8c9-e157-5211-aceec87dfd9d@linux.intel.com>
 <4a7f6abe-e479-a3d9-8615-e52a2863733c@intel.com>
From: "Ye, Tony" <tony.ye@intel.com>
In-Reply-To: <4a7f6abe-e479-a3d9-8615-e52a2863733c@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MWHPR14CA0021.namprd14.prod.outlook.com
 (2603:10b6:300:ae::31) To DM6PR11MB4514.namprd11.prod.outlook.com
 (2603:10b6:5:2a3::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b7d6168f-42c7-44ff-edbf-08da4e5bbf9a
X-MS-TrafficTypeDiagnostic: BN9PR11MB5433:EE_
X-Microsoft-Antispam-PRVS: <BN9PR11MB54334C35599F212F07AF7653F1AA9@BN9PR11MB5433.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kJNxvxRp9yuPNMq5lc+wio1IUJJbHwrPkQ8PhB+QqgV08vZAruXiTQMXBAqVyzia1RdzL11hd/GOh1TPAfuiQck/HQgJr7zFYrM+i/QCTZPtKmEhfmWHVAvUJwmOERPbj5Bfp3NIdcQACg35t81x5Z3g3J51AwZ0XImSYEy/RTKwQAn8uosy/Wz9FWj2J2jy0t4aKnmaWiUYj9Up79/w5eLZlT+HGl4YSSGXb1V8pyUbjypIvXdlrE6orkcd3djw+4qIgI6uMWj49s6Na8CdIYJhyjxcW7efNRGnrN5WEaRBB1hwqSiT9meIsuJykFc+zRVQwUQvDNTrvs3uLo7pxKGGaNdXQbpI8lAza+3YkrZr9Nkmu4ek0FnIK2AVH20gTvb9ivOd/MCoyl91bq+onaBN6Um9uAD3ZLFdH522wP9UEgaNIqtTtE0M+mJqjvGXCswUGM/+zbGflfBc+00FM6SNDMng5IItxnAX12cQ1pSe+8FvgKuyB2eg5Zr1vMdpuUV9P1P1cwZqsnM1u3K+rsguKR7haTGH2hCgpUHE3lad9T1+J+528f7QYIukc7wsPzpKVK6j/hwPlu9Nx783RPguy2XgrvX6wLnZ8f4MyAkhehpZM50KJziO50kQMc22EOeeNlxo2WW6CQhVk8TMJktpdJxqhA3x32cfqjN2sVd5f6PmFwHbyKcyKiFi75Crbv5U4cyOoraUxHXOXCKqDC5ZAJAtVN6H4jeQsV5ltem5nj8P+lh4BzYYR1YRdMC5ZfT7pjo32SUDd/iPaTKDsw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4514.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(54906003)(82960400001)(36756003)(110136005)(186003)(38100700002)(316002)(8676002)(26005)(66946007)(6636002)(66556008)(31686004)(66476007)(8936002)(86362001)(2616005)(83380400001)(30864003)(31696002)(6666004)(53546011)(6506007)(6486002)(4326008)(2906002)(5660300002)(6512007)(508600001)(60764002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bTg2bW1ZQUxURzJKZ2JtWnM5UDlDQjIzdHhsZHFFZzJrQUlZSW13ZEtMRGcz?=
 =?utf-8?B?eVBteWtrSGluN0kzWTlkRXFCY0FpL3FaYjRsT2c0K202dGxqOWd2NVFwUVNQ?=
 =?utf-8?B?RUxOVWFSSDBIQWc5THR5eGMwd0pWOVZUMXhyYlJ4ZEpYa0IyUFd2UGZERVlH?=
 =?utf-8?B?NURiVHFma0pPbmtuQmkxUHhzNG9OaytGODlhSFBWZHBmYWFRMHJ1ZTU3ejNx?=
 =?utf-8?B?Vlc2VnpBYlNMQVF2ZGcxL2xrS2psZDZaalBieG9UNGhiTk9xRHlqTjJPT0Y1?=
 =?utf-8?B?TTRZaUZLc1hVYmd3SkN1SER6a3gyZW1Tb1lxSkJyaDIxOTFwNjZINW5xbUFM?=
 =?utf-8?B?T2pNOG9oM2VqYjdiaVVpZmR3L2JMdWswR3JKVHZEbWFFQlpLUmg3aXJEVFU2?=
 =?utf-8?B?K2NLdEVBR1JYUmMwZU0zcVdwVDd1OEpLaWwvTlhWMWdCSUVFdVhDNG1zY3ZI?=
 =?utf-8?B?TGJ6SWlYUjArczhSVW0rZUduSXgwRjBuOU03WjZoMGFvS2FNUlZER1V5QTFN?=
 =?utf-8?B?SldPMmdRNFVReE4xUUtlSVNvNFZzZnRrSXFMcDhuVjJOSXk4eVNUczFXUU01?=
 =?utf-8?B?Ny9US3NtSE9KaHEvQlhWU2hRR0lBS2Zvajl4VmdyMXRpSDBiWHVDb0tkYXhz?=
 =?utf-8?B?SnhzQkhzMFZBYmFqbm5RL0lYd1A3UHphTENUUkxvWDIwVlhDMXJpN1dkbE5Z?=
 =?utf-8?B?bmJCdnJFcHNZRUNrSEZoZ3NLVUQwVnNISG9BcGVBNmtCaWtneVhISnpsVFYz?=
 =?utf-8?B?M1RTMGRLb3p4TndHTEhiNzFPeGtyRjN3NERvV0NuZDhxN2JROVlPSkVUSmpp?=
 =?utf-8?B?S01QQ214eU0xNkcreEhaMmN5dFIzdzlkUnN1bEFWT2RUWW10T1NTSThOQjNV?=
 =?utf-8?B?VWFiUERVMnRTdE5VQXM3TVViVGc1eHBoQVcrM0IyeWtWc3FGOU5pVEllWndS?=
 =?utf-8?B?TDRYZnQzcy9RZ3RkSmVNTmdTVzVUOXBEOHdrU3dBVWp2akovMEN1c3dhaEhT?=
 =?utf-8?B?Q0pTSnJXZmJLUGVENU5lQWdMWXpzb1kvbWVBYmppUERQZ3M5OXJuVmp3MEdS?=
 =?utf-8?B?S1RiRWN2bUc5RGJmdTd3RXQxdEdiRm0xbXQzUEFoSVJ2eEVNQnNCbHVZU1A3?=
 =?utf-8?B?YlZmVHdpc0xmbXdJTEkrbkpyL24xN0dnWlVyUElQaDR1L1NsdlhRSVNSM2Zj?=
 =?utf-8?B?Kyt5bW9CYzAxc3h4V2ZJT1I1QnBDeDgyaGpMODVBNXJQcUF5cFhUZFlWYWRB?=
 =?utf-8?B?L0lDSndkUjFlTXpPOW5ka3hTOFdEWElpSngvVy9BSDdyWDJuK1dvUkhJcjJU?=
 =?utf-8?B?T1dqeG1PMFpPdFBnSGtvQTBTNkZ0eUsxWDBHQW94U1QySUFMZEFUNVBzRzVv?=
 =?utf-8?B?RGxBRmx5dmtFSThNVkU0YjVJUkNjd2RzUWJyN2w0amV1Y3duUTBKWnpOOGE0?=
 =?utf-8?B?cFhneFRoYVdLRXB5allDenhwYTZWNUljSWhtQTdBcjB2NGMvbk5iZHdHcG9k?=
 =?utf-8?B?UjdyaitzcUttRU9zUlhvdWc1U3hGNXZjb3JKLzhDSFBwUFlPWnZpYVlMVUZ2?=
 =?utf-8?B?VXk1dENLUjJXUE8vTkExTTh5QTNQK21rSXRZd2dKc0lsS1BTclp4WDJjUlFS?=
 =?utf-8?B?TExXMk1Ha25YT3pORDhUU0pmZS9CNHV4cDliT1hZWDZBK0RQRGIzYWJEYnR6?=
 =?utf-8?B?QVBMcVhNeUF6cG1Qbkx2bFlETk80OHlJd2ZsRytoQnBESUhOU3hiZ0pna2ZQ?=
 =?utf-8?B?VUVtSVdnT3dBSitHUHJsdDNQUzVLYURDMTEvd0E0bG9vNHVIc1hocUMwNzVT?=
 =?utf-8?B?M2JBTkFNYUt3dUtoOHZvU0xsZGw2RkZTL1JpTTJtT0F3QjNWTWlxSFdwNWNO?=
 =?utf-8?B?YUdtLzByMFlFYnlJRjBmT0pnZnlqQWdmdkpxbkd0WVF1Wi93K2J3RmJZTXEw?=
 =?utf-8?B?UEFvNXYvdjhqZWFWeTgzZERmdHIwNVUrNlRnT0FDVkVHamRxOE44cmpIOGhm?=
 =?utf-8?B?VXp5M2pmbXhoUDluN1pxWWtYVjlXL1U3QVRmTGdKajMyU3lscFBMcjlXdHVJ?=
 =?utf-8?B?RVpvYTFRQjRhY3lpeU81bXB2R0h3ZlJKa1NqVmhJcGtzU24vMlBGMlZvekIr?=
 =?utf-8?B?ZWpYLys5dHZzbXpadDRkL0RnTzZ5R2J5eEs3dTkrSzJ0NHhWcjV1b0lmWWxV?=
 =?utf-8?B?ZzFQYzR4NUk0TDl3K25xMGdrWXVoRXpGZC83UTBDV0hXdEE4WnNYaCsvWWEw?=
 =?utf-8?B?TlJGVENvTzFNTGVuNU0wblFBZEd6RDRIMXFKOXZ0NUJVdlZOa1dCOVNMOG1O?=
 =?utf-8?B?MHBCN2lQNGpOUlFiVnhPNzM1THB2YytXWmNLaXlIbDBoSG5SNFEzUT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b7d6168f-42c7-44ff-edbf-08da4e5bbf9a
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4514.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2022 23:15:19.1344 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D4hBAMWAQLeN/7RrnwN7aEAkb+Cc0ztdWb3GxQHzIMzFyY5bHuVmzUfgIwUg0lqoehNWj2jZcKOTCTElTVO9+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5433
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 00/15] HuC loading for DG2
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
Cc: Alexander Usyskin <alexander.usyskin@intel.com>,
 alan.previn.teres.alexis@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 6/14/2022 8:30 AM, Ceraolo Spurio, Daniele wrote:
>
>
> On 6/14/2022 12:44 AM, Tvrtko Ursulin wrote:
>>
>> On 13/06/2022 19:13, Ceraolo Spurio, Daniele wrote:
>>> On 6/13/2022 10:39 AM, Tvrtko Ursulin wrote:
>>>> On 13/06/2022 18:06, Ceraolo Spurio, Daniele wrote:
>>>>> On 6/13/2022 9:56 AM, Tvrtko Ursulin wrote:
>>>>>> On 13/06/2022 17:41, Ceraolo Spurio, Daniele wrote:
>>>>>>> On 6/13/2022 9:31 AM, Tvrtko Ursulin wrote:
>>>>>>>>
>>>>>>>> On 13/06/2022 16:39, Ceraolo Spurio, Daniele wrote:
>>>>>>>>> On 6/13/2022 1:16 AM, Tvrtko Ursulin wrote:
>>>>>>>>>>
>>>>>>>>>> On 10/06/2022 00:19, Daniele Ceraolo Spurio wrote:
>>>>>>>>>>> On DG2, HuC loading is performed by the GSC, via a PXP 
>>>>>>>>>>> command. The load
>>>>>>>>>>> operation itself is relatively simple (just send a message 
>>>>>>>>>>> to the GSC
>>>>>>>>>>> with the physical address of the HuC in LMEM), but there are 
>>>>>>>>>>> timing
>>>>>>>>>>> changes that requires special attention. In particular, to 
>>>>>>>>>>> send a PXP
>>>>>>>>>>> command we need to first export the GSC driver and then wait 
>>>>>>>>>>> for the
>>>>>>>>>>> mei-gsc and mei-pxp modules to start, which means that HuC 
>>>>>>>>>>> load will
>>>>>>>>>>> complete after i915 load is complete. This means that there 
>>>>>>>>>>> is a small
>>>>>>>>>>> window of time after i915 is registered and before HuC is 
>>>>>>>>>>> loaded
>>>>>>>>>>> during which userspace could submit and/or checking the HuC 
>>>>>>>>>>> load status,
>>>>>>>>>>> although this is quite unlikely to happen (HuC is usually 
>>>>>>>>>>> loaded before
>>>>>>>>>>> kernel init/resume completes).
>>>>>>>>>>> We've consulted with the media team in regards to how to 
>>>>>>>>>>> handle this and
>>>>>>>>>>> they've asked us to do the following:
>>>>>>>>>>>
>>>>>>>>>>> 1) Report HuC as loaded in the getparam IOCTL even if load 
>>>>>>>>>>> is still in
>>>>>>>>>>> progress. The media driver uses the IOCTL as a way to check 
>>>>>>>>>>> if HuC is
>>>>>>>>>>> enabled and then includes a secondary check in the batches 
>>>>>>>>>>> to get the
>>>>>>>>>>> actual status, so doing it this way allows userspace to keep 
>>>>>>>>>>> working
>>>>>>>>>>> without changes.
>>>>>>>>>>>
>>>>>>>>>>> 2) Stall all userspace VCS submission until HuC is loaded. 
>>>>>>>>>>> Stalls are
>>>>>>>>>>> expected to be very rare (if any), due to the fact that HuC 
>>>>>>>>>>> is usually
>>>>>>>>>>> loaded before kernel init/resume is completed.
>>>>>>>>>>
>>>>>>>>>> Motivation to add these complications into i915 are not clear 
>>>>>>>>>> to me here. I mean there is no HuC on DG2 _yet_ is the 
>>>>>>>>>> premise of the series, right? So no backwards compatibility 
>>>>>>>>>> concerns. In this case why jump through the hoops and not let 
>>>>>>>>>> userspace handle all of this by just leaving the getparam 
>>>>>>>>>> return the true status?
>>>>>>>>>
>>>>>>>>> The main areas impacted by the fact that we can't guarantee 
>>>>>>>>> that HuC load is complete when i915 starts accepting 
>>>>>>>>> submissions are boot and suspend/resume, with the latter being 
>>>>>>>>> the main problem; GT reset is not a concern because HuC now 
>>>>>>>>> survives it. A suspend/resume can be transparent to userspace 
>>>>>>>>> and therefore the HuC status can temporarily flip from loaded 
>>>>>>>>> to not without userspace knowledge, especially if we start 
>>>>>>>>> going into deeper suspend states and start causing HuC resets 
>>>>>>>>> when we go into runtime suspend. Note that this is different 
>>>>>>>>> from what happens during GT reset for older platforms, because 
>>>>>>>>> in that scenario we guarantee that HuC reload is complete 
>>>>>>>>> before we restart the submission back-end, so userspace 
>>>>>>>>> doesn't notice that the HuC status change. We had an internal 
>>>>>>>>> discussion about this problem with both media and i915 archs 
>>>>>>>>> and the conclusion was that the best option is for i915 to 
>>>>>>>>> stall media submission while HuC (re-)load is in progress.
>>>>>>>>
>>>>>>>> Resume is potentialy a good reason - I did not pick up on that 
>>>>>>>> from the cover letter. I read the statement about the unlikely 
>>>>>>>> and small window where HuC is not loaded during kernel 
>>>>>>>> init/resume and I guess did not pick up on the resume part.
>>>>>>>>
>>>>>>>> Waiting for GSC to load HuC from i915 resume is not an option?
>>>>>>>
>>>>>>> GSC is an aux device exported by i915, so AFAIU GSC resume can't 
>>>>>>> start until i915 resume completes.
>>>>>>
>>>>>> I'll dig into this in the next few days since I want to 
>>>>>> understand how exactly it works. Or someone can help explain.
>>>>>>
>>>>>> If in the end conclusion will be that i915 resume indeed cannot 
>>>>>> wait for GSC, then I think auto-blocking of queued up contexts on 
>>>>>> media engines indeed sounds unavoidable. Otherwise, as you 
>>>>>> explained, user experience post resume wouldn't be good.
>>>>>
>>>>> Even if we could implement a wait, I'm not sure we should. GSC 
>>>>> resume and HuC reload takes ~300ms in most cases, I don't think we 
>>>>> want to block within the i915 resume path for that long.
>>>>
>>>> Yeah maybe not. But entertaining the idea that it is technically 
>>>> possible to block - we could perhaps add uapi for userspace to mark 
>>>> contexts which want HuC access. Then track if there are any such 
>>>> contexts with outstanding submissions and only wait in resume if 
>>>> there are. If that would end up significantly less code on the i915 
>>>> side to maintain is an open.
>>>>
>>>> What would be the end result from users point of view in case where 
>>>> it suspended during video playback? The proposed solution from this 
>>>> series sees the video stuck after resume. Maybe compositor blocks 
>>>> as well since I am not sure how well they handle one window not 
>>>> providing new data. Probably depends on the compositor.
>>>>
>>>> And then with a simpler solution definitely the whole resume would 
>>>> be delayed by 300ms.
>>>>
>>>> With my ChromeOS hat the stalled media engines does sound like a 
>>>> better solution. But with the maintainer hat I'd like all options 
>>>> evaluated since there is attractiveness if a good enough solution 
>>>> can be achieved with significantly less kernel code.
>>>>
>>>> You say 300ms is typical time for HuC load. How long it is on other 
>>>> platforms? If much faster then why is it so slow here?
>>>
>>> The GSC itself has to come out of suspend before it can perform the 
>>> load, which takes a few tens of ms I believe. AFAIU the GSC is also 
>>> slower in processing the HuC load and auth compared to the legacy 
>>> path. The GSC FW team gave a 250ms limit for the time the GSC FW 
>>> needs from start of the resume flow to HuC load complete, so I 
>>> bumped that to ~300ms to account for all other SW interactions, plus 
>>> a bit of buffer. Note that a bit of the SW overhead is caused by the 
>>> fact that we have 2 mei modules in play here: mei-gsc, which manages 
>>> the GSC device itself (including resume), and mei-pxp, which owns 
>>> the pxp messaging, including HuC load.
>>
>> And how long on other platforms (not DG2) do you know? Presumably 
>> there the wait is on the i915 resume path?
>
> I don't have "official" expected load times at hand, but looking at 
> the BAT boot logs for this series for DG1 I see it takes ~10 ms to 
> load both GuC and HuC:
>
> <7>[    8.157838] i915 0000:03:00.0: [drm:intel_huc_init [i915]] GSC 
> loads huc=no
> <6>[    8.158632] i915 0000:03:00.0: [drm] GuC firmware 
> i915/dg1_guc_70.1.1.bin version 70.1
> <6>[    8.158634] i915 0000:03:00.0: [drm] HuC firmware 
> i915/dg1_huc_7.9.3.bin version 7.9
> <7>[    8.164255] i915 0000:03:00.0: [drm:guc_enable_communication 
> [i915]] GuC communication enabled
> <6>[    8.166111] i915 0000:03:00.0: [drm] HuC authenticated
>
> Note that we increase the GT frequency all the way to the max before 
> starting the FW load, which speeds things up.
>
>>
>>>>>> However, do we really need to lie in the getparam? How about 
>>>>>> extend or add a new one to separate the loading vs loaded states? 
>>>>>> Since userspace does not support DG2 HuC yet this should be doable.
>>>>>
>>>>> I don't really have a preference here. The media team asked us to 
>>>>> do it this way because they wouldn't have a use for the different 
>>>>> "in progress" and "done" states. If they're ok with having 
>>>>> separate flags that's fine by me.
>>>>> Tony, any feedback here?
>>>>
>>>> We don't even have any docs in i915_drm.h in terms of what it means:
>>>>
>>>> #define I915_PARAM_HUC_STATUS         42
>>>>
>>>> Seems to be a boolean. Status false vs true? Could you add some docs?
>>>
>>> There is documentation above intel_huc_check_status(), which is also 
>>> updated in this series. I can move that to i915_drm.h.
>>
>> That would be great, thanks.
>>
>> And with so rich return codes already documented and exposed via uapi 
>> - would we really need to add anything new for DG2 apart for 
>> userspace to know that if zero is returned (not a negative error 
>> value) it should retry? I mean is there another negative error 
>> missing which would prevent zero transitioning to one?
>
> I think if the auth fails we currently return 0, because the uc state 
> in that case would be "TRANSFERRED", i.e. DMA complete but not fully 
> enabled. I don't have anything against changing the FW state to 
> "ERROR" in this scenario and leave the 0 to mean "not done yet", but 
> I'd prefer the media team to comment on their needs for this IOCTL 
> before committing to anything.


Currently media doesn't differentiate "delayed loading is in progress" 
with "HuC is authenticated and running". If the HuC authentication 
eventually fails, the user needs to check the debugfs to know the 
reason. IMHO, it's not a big problem as this is what we do even when the 
IOCTL returns non-zero values. + Carl to comment.

Thanks,

Tony

>
> Daniele
>
>>
>> Regards,
>>
>> Tvrtko
>>
>>>
>>> Daniele
>>>
>>>>
>>>> Regards,
>>>>
>>>> Tvrtko
>>>>
>>>>>
>>>>> Thanks,
>>>>> Daniele
>>>>>
>>>>>>
>>>>>>>> Will there be runtime suspend happening on the GSC device 
>>>>>>>> behind i915's back, or i915 and GSC will always be able to 
>>>>>>>> transition the states in tandem?
>>>>>>>
>>>>>>> They're always in sync. The GSC is part of the same HW PCI 
>>>>>>> device as the rest of the GPU, so they change HW state together.
>>>>>>
>>>>>> Okay thanks, I wasn't sure if it is the same or separate device.
>>>>>>
>>>>>> Regards,
>>>>>>
>>>>>> Tvrtko
>>>>>
>>>
>
