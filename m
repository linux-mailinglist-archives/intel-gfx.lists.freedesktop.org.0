Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F844D7A8A
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 06:53:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B33010E1C7;
	Mon, 14 Mar 2022 05:53:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 618FC10E1BE
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Mar 2022 05:53:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647237198; x=1678773198;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QIZA9kgUr00hPdhxE1FaNTaCivTmaj0JIScie3cXOuo=;
 b=L15ZDAh/qEt3SPOqu69URmGNpoPCoVbQVDXcaNdLY6mP1/vzKEIpMVCn
 uVh131sbjn+pcBmoovIByr3HuMjn5Dv0n2U3tWHenMGKAAVj3bwS8kvWG
 POqUG7RMal8F7yB1HW6szuFFEsOilQrkBQayLJCo5Mgm26P0q+edcPupL
 hp5vQX2o53uVUif+KzXIXt2oNLCJkjkTuPP76NIRgqST7v0pTo2JMkXyI
 j34hrDKY4sOGuAZEZc3Q9shSQzu6JvPn8q3DdPBVq6H0MXOTEmDsirDTQ
 KNw30HXyMw5oVjupXYfiPjPXbmGQQN4MGHpyX8CmCN1iwqpJk9NRucTzp g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="256127834"
X-IronPort-AV: E=Sophos;i="5.90,179,1643702400"; d="scan'208";a="256127834"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2022 22:53:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,179,1643702400"; d="scan'208";a="782553317"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 13 Mar 2022 22:53:17 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Sun, 13 Mar 2022 22:53:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Sun, 13 Mar 2022 22:53:17 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Sun, 13 Mar 2022 22:53:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mz/zJZ1PJtG281mbdPC8x6TmKACgwvcpJubBIlcyMr6JF1VTIRl8VuD9yzIG08emZOZzJ1slnF4xUnHlWTxwNPeLTPe+K5ZaIjZXPIzplreYr6WZRcZjSFwYJzsb6z8HcZXq0TDlAXarRKQTcETYhXK7RWiwg7qr+NggTPqHq9nehoYlmp+RcE1wf3wjIC/IKG7anydXGnAUliSPKwmkyE+ueXqQg0SVwhOpOe39AIEQ0vnrZRNdEs/dKHAxe/cw8XnMLIlaVKpw0mdZpwkwTP6+QMgIPTuri/XJYVKpxdwoIxq4VdPxIuahzqvBr6UWrHB1fxNXcILfmdr8GsPPSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QIZA9kgUr00hPdhxE1FaNTaCivTmaj0JIScie3cXOuo=;
 b=MyTZAoJbmaTPJDqnvh5BtjtePCukQ19pLNly9Q6T8Gpnlnr32VwhRCPmjUBQTqek6U1PGw2yZMV9HiyFYznqoTuV/cgXzvocHNY51ZE+nLMOTwNYxTTfJwIQgFm1pbPx/L6ETXZeBTG5W4ONtmGISd7FA2RDLKReWKBpISKqU9E3zUWX2CLvEGhDGGeap6ROr5bkJ0KGWn2N//xIgxE1EMCRBPrSf/3ofv6sCchdH9wr6SFGsZLLuBU2KQluf1Ijn6WIvtcyL4lzwW4L75l4MvzaUipmYHXN7Ogry/LiOiAEYheCamtU/XSIiDAVDke6TD96/UW19kCnt/DqPkFnuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5231.namprd11.prod.outlook.com (2603:10b6:5:38a::19)
 by BN6PR11MB4003.namprd11.prod.outlook.com (2603:10b6:405:7b::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.21; Mon, 14 Mar
 2022 05:53:15 +0000
Received: from DM4PR11MB5231.namprd11.prod.outlook.com
 ([fe80::b9aa:8cfd:c3c1:1cdb]) by DM4PR11MB5231.namprd11.prod.outlook.com
 ([fe80::b9aa:8cfd:c3c1:1cdb%8]) with mapi id 15.20.5061.028; Mon, 14 Mar 2022
 05:53:15 +0000
Message-ID: <d9dc96a6-ebf6-3988-7a40-229ff0169e1c@intel.com>
Date: Mon, 14 Mar 2022 11:23:07 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Lucas De Marchi <lucas.demarchi@intel.com>
References: <20220308093805.879262-1-siva.mullati@intel.com>
 <20220308093805.879262-3-siva.mullati@intel.com>
 <20220309013845.4jgwlbe524rgxsee@ldmartin-desk2>
From: Siva Mullati <siva.mullati@intel.com>
In-Reply-To: <20220309013845.4jgwlbe524rgxsee@ldmartin-desk2>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MWHPR22CA0064.namprd22.prod.outlook.com
 (2603:10b6:300:12a::26) To DM4PR11MB5231.namprd11.prod.outlook.com
 (2603:10b6:5:38a::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4d8ee5e9-e8c7-4f38-51ef-08da057eee47
X-MS-TrafficTypeDiagnostic: BN6PR11MB4003:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BN6PR11MB4003221A92149EE675CFB70A880F9@BN6PR11MB4003.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: W7k6sxZ/XSbGF0vNyirmtKadut76OS9A5uVd7WFDk51gsXsTx6SRd9oJpN+7CnUhJYkDB0BBS1dsmXxOohKiJRP4ebhxD+OGwPv2r0+ulcvb/KxDYlh85cteGXFD6K7ffTikHj0tLePBiSN/xq18CVt/zGbgnMzov5ItmJfFnAKd6tMj2/emhHnn69RgrwwSFJA9q2Mg+ThtY63GTIKQv67KZNrzAvP8D6Yeb6DQ8icEqO3Vihm6VOfeeKN8cyb5moq2aXrmm8m1SVUB/7yFRwb2yFLqNzt5bkNeFeByzjEFVxUjn7dYkvJscnzBqM/l4LlrAqtHyEOH9XLR1noQiJl4G3ZY0bBxhE9rioUSvgJvR8G6SZ9Uhv4p9wloi8jgllwKQXKL6q3Chth1rMYrLlBczL7xEMox8+14ow2ZJ/CLAXbQqA/RQ6HEiRmH4KzoNw8ydvokIPDzlzy5sZXyGaaBMQjzproLF+IBju93eeAG9f1KVaX88IAehYLHDeUNabRXGkCRsoRUdEQ1LSUXtYwOqhxKbcKAqCyP6qyHFHHrcI/FeYyJHbkGrptpeIX6G8r4AwUpHJvLqe5SIZj1PiBjLazZpkUYCbFG0PJhjQNVBo5yQEooSDx0KMNMwHtq1FriLfsMhMnD/V/PWN8JGz5Jh0+ZVjKAI+T2pOIiCXp8KtPwEHH0deMUoZZTy4MXSarDPudrE/0yK8RCS3zaappk6A/e5m61L8WswVe3RYM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5231.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(5660300002)(2616005)(31696002)(6512007)(31686004)(30864003)(44832011)(2906002)(83380400001)(36756003)(8936002)(6666004)(66476007)(4326008)(82960400001)(66556008)(6862004)(186003)(8676002)(66946007)(53546011)(38100700002)(86362001)(6506007)(316002)(6636002)(37006003)(6486002)(508600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N2daNVlVNDVjS1lOWEpXZzlhWUNxRkxLVTk3QnFoN3lVOWZwN284VW5wT2hM?=
 =?utf-8?B?U3NiSG55aXNkYXVCZzNjYU90TklqcGE3STJmUnVrQjY1c2Q1TDM3TEt0amw4?=
 =?utf-8?B?V21hbzczbm1qL20yZDFEa285cHQ1RkNubTdGZnpWWDh6WUdnaGhsVGljMUJM?=
 =?utf-8?B?QjBDVGJ1NGxYM0FNWjJXc3hZellhMklSakR1Wm90Z3ZXSEg1cWlXNWc5NHc3?=
 =?utf-8?B?Wm92ZVZVSksyenBRY0xHNlN5TUVwY1kvNVdFbnJ3N1RnQzE3bDlRLzNBdjd1?=
 =?utf-8?B?Q2FPQ0hTcUxUdStxbzlrOXN2dXI1ZVNqd2hGT0h2R1RvNU5xelRWVGhBWTJF?=
 =?utf-8?B?RnUzbk95dENCTFhUWGtmNE82dm1FK3RleDhRUU43S2NNbXQ5OUo0ZTlwMXUw?=
 =?utf-8?B?VVJkOWNIUHpuaHZTZUtKT1YzV2VpZVVkb3E2SFA3R01YTjdDZmtEekhCZ1FG?=
 =?utf-8?B?NktTTFF1aDYvNmh1Nk9HQ09FTEUybFA3dXkxNURHM1JKM2E4YUFRR3NiWWRo?=
 =?utf-8?B?eis3QVcxeXhMMU1ka2hNQk83eTRHZHpBOFVmZjFTVFFnYUFERlR4T3hPRU8y?=
 =?utf-8?B?QUFYRzJ6RW5MY295U3c2anVWL2d5Q2VEN3hrZWJuUEQ5bEJxUXRKenBWSEk2?=
 =?utf-8?B?Q2wxd0pyQzBBbWJyY1ZXeG1YSDhJb29jYklxaVgyaFdWalhYcU4rd0ZwUjMy?=
 =?utf-8?B?WUZQT29UTW9RaldoRVJtakUzT2x0OFZmT1JUeCtHSXJtbGV5WFRTSm9Sck4r?=
 =?utf-8?B?NWs4bkZuUlBzUWVBK0ljTytCaVYxSkViNlNRbHpFUCtKMHVabjU1eUZWQmo2?=
 =?utf-8?B?Rk4vOE9BZXZZa3RaQ09yY1N6bzhqcWgrWmRDaTZQNGJMbTNIMXVCWVNtWlVm?=
 =?utf-8?B?M0czeWpmV0ZRL3k1QVVtUHJtZDc1M3BCblZmZ1UzVW0xQnYrYXhlQ1B3NUVG?=
 =?utf-8?B?ZytLaTVnUXhsUzV3YmtHSzJVMVBhQmNRVkN1d0FDOHNTUVEwZFdWRnFIZnV2?=
 =?utf-8?B?ZVhCL0w2OTB1NmkrZnVNaTJML2lCOWN1aEQwRTBIUmZxMk5KVlRwZS9BSWNK?=
 =?utf-8?B?aGRnZklwWThjN0Z4RTJMb3hBVGF2NTZUSGVoMi9Rd1BTeW1sYUZKeGFDOWs4?=
 =?utf-8?B?Q2trNXVXWEJoYkNmTkQzQ2pvYU5lL1Z2QmxSVHlzT1U2YWdvVEZoNEFNcU5n?=
 =?utf-8?B?Tng0MWF4MFZLQXV2ZjF4SkloOG5SZU0waTFKVXVLWEVTOHZYNUVwNU5kU3h1?=
 =?utf-8?B?c0pyV1lVL3c0bUpSekYyUUt6TXEwd2tXaHladnpPM2hSWTdUbklkcGhyU3Rw?=
 =?utf-8?B?SExIVGRYNFVFNGs0ZFdLVHZSOGZKVmh5RkJmVFprODZGdnBnQkV4dGY1NUFu?=
 =?utf-8?B?cmxKcFZPNTJ4bmY5REl5RGhwd1lhRHJMVk9Cd2lCWjVHQnlHOU42cDJJK1JJ?=
 =?utf-8?B?NzlhbmxWYSswd3NkT2I2ZnhpOXhHM3d6aE5OVTlpMUNYVFhuVUVKYkp5M2JV?=
 =?utf-8?B?YzNIdTdJUFB0VDRubFlNb1pZZjA1SmJDNjdrVTQrdURqYnhETWcvY3hrV2dO?=
 =?utf-8?B?RjEzUTBta1BJVmt3eTRndDNoeXhXcyt2YVNhMjY2OElKY2NtVmZ0Z0tjZGVa?=
 =?utf-8?B?UFlaWjEwTStNZlQ0Q0hwcE5JSEtDUDV5akFObjJrYisxbWpYQUxYbHRTem9F?=
 =?utf-8?B?WGgzU2U4WXFpZm1VbW5Mb3d0eGI5N3pmbWZjaHhXZnZWakRRU3dhRDBNeEhr?=
 =?utf-8?B?OWJlVEhUbHNlbU04dWNrY2tEeUZRcnhKRVJ1SHhGVVpmRWpwUmpIc0RSYzkr?=
 =?utf-8?B?M0ZFTHJLSnR1djZmaE5tSFFzY0ZoaXgxL011eXhud3czdmtGc3FFY2hJRVlM?=
 =?utf-8?B?WXU0MDRLYWgrRFF2Ky9PRXEvWVlvNWtIUVRMZjFOMHhkWXlQR2xncm9MdFM3?=
 =?utf-8?B?ZlJyUVB3Rm5uMmJXb29qeGwvMlZnZDNVQUlnVkU2TTlocHpWVENvQ1RHVzl6?=
 =?utf-8?B?VGVLVFpTQ1h0MFkzOWZSa0dTY1NIWDZ6ZWZ4eEJFWVNwN0wrRTcvTzV6M1U0?=
 =?utf-8?B?SHA1TTY5bFN3TVdTZGdja0dGRW9XS2kwN0ZPUT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d8ee5e9-e8c7-4f38-51ef-08da057eee47
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5231.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2022 05:53:14.9421 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tk6OtiE7INeUYIg4H9DbyDhvwckPXHder2RcDiE0boGFpNWQnj7NFrOV2CVpzC+4OTLZcbYvTQPWHiNNQBkHSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB4003
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Convert ct buffer to
 iosys_map
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


On 09/03/22 07:08, Lucas De Marchi wrote:
> On Tue, Mar 08, 2022 at 03:08:05PM +0530, Mullati Siva wrote:
>> From: Siva Mullati <siva.mullati@intel.com>
>>
>> Convert CT commands and descriptors to use iosys_map rather
>> than plain pointer and save it in the intel_guc_ct_buffer struct.
>> This will help with ct_write and ct_read for cmd send and receive
>> after the initialization by abstracting the IO vs system memory.
>>
>> Signed-off-by: Siva Mullati <siva.mullati@intel.com>
>> ---
>> drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 170 +++++++++++++---------
>> drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h |   9 +-
>> 2 files changed, 110 insertions(+), 69 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> index f01325cd1b62..457deca1c25a 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> @@ -44,6 +44,11 @@ static inline struct drm_device *ct_to_drm(struct intel_guc_ct *ct)
>> #define CT_PROBE_ERROR(_ct, _fmt, ...) \
>>     i915_probe_error(ct_to_i915(ct), "CT: " _fmt, ##__VA_ARGS__)
>>
>> +#define ct_desc_read(desc_map_, field_) \
>> +    iosys_map_rd_field(desc_map_, 0, struct guc_ct_buffer_desc, field_)
>
> one thing I found useful in intel_guc_ads, was to use the first argument
> as the struct type instead of map. That's because then I enforce the
> right type to be passed rather than a random iosys_map. See :
>
>     #define ads_blob_read(guc_, field_)                                     \
>         iosys_map_rd_field(&(guc_)->ads_map, 0, struct __guc_ads_blob, field_)
>
> First arg is expected to be `struct intel_guc *`. Yes, I didn't do this
> for info_map_{read,write}, because there were situation in which I had
> to pass a info from outside (forcefully from system memory). If you
> don't have such case,  I think it would be better to pass the typed
> pointer.
>
understood, will change it as a "typed pointer".
>> +#define ct_desc_write(desc_map_, field_, val_) \
>> +    iosys_map_wr_field(desc_map_, 0, struct guc_ct_buffer_desc, field_, val_)
>> +
>> /**
>>  * DOC: CTB Blob
>>  *
>> @@ -113,9 +118,9 @@ void intel_guc_ct_init_early(struct intel_guc_ct *ct)
>>     init_waitqueue_head(&ct->wq);
>> }
>>
>> -static void guc_ct_buffer_desc_init(struct guc_ct_buffer_desc *desc)
>> +static void guc_ct_buffer_desc_init(struct iosys_map *desc)
>
> if you can apply the comment above, then leave it as
> struct intel_guc_ct_buffer.
>
yes
>> {
>> -    memset(desc, 0, sizeof(*desc));
>> +    iosys_map_memset(desc, 0, 0, sizeof(struct guc_ct_buffer_desc));
>> }
>>
>> static void guc_ct_buffer_reset(struct intel_guc_ct_buffer *ctb)
>> @@ -128,17 +133,24 @@ static void guc_ct_buffer_reset(struct intel_guc_ct_buffer *ctb)
>>     space = CIRC_SPACE(ctb->tail, ctb->head, ctb->size) - ctb->resv_space;
>>     atomic_set(&ctb->space, space);
>>
>> -    guc_ct_buffer_desc_init(ctb->desc);
>> +    guc_ct_buffer_desc_init(&ctb->desc_map);
>> }
>>
>> static void guc_ct_buffer_init(struct intel_guc_ct_buffer *ctb,
>> -                   struct guc_ct_buffer_desc *desc,
>> -                   u32 *cmds, u32 size_in_bytes, u32 resv_space)
>> +                   void *desc, void *cmds, u32 size_in_bytes,
>> +                   u32 resv_space, bool lmem)
>
> bool arguments are really hard to read, because you always have to
> lookup the function prototype to understand what that is about.
>
Tried to avoid bool but could not find a better alternative code path.
Please suggest, if you have something.

> Here we could turn struct guc_ct_buffer_desc *desc into the map, and let
> the caller prepare it for iomem or system memory.
>
Agreed
>> {
>>     GEM_BUG_ON(size_in_bytes % 4);
>>
>> -    ctb->desc = desc;
>> -    ctb->cmds = cmds;
>> +    if (lmem) {
>> +        iosys_map_set_vaddr_iomem(&ctb->desc_map,
>> +                      (void __iomem *)desc);
>> +        iosys_map_set_vaddr_iomem(&ctb->cmds_map,
>> +                      (void __iomem *)cmds);
>> +    } else {
>> +        iosys_map_set_vaddr(&ctb->desc_map, desc);
>> +        iosys_map_set_vaddr(&ctb->cmds_map, cmds);
>> +    }
>>     ctb->size = size_in_bytes / 4;
>>     ctb->resv_space = resv_space / 4;
>>
>> @@ -218,13 +230,12 @@ static int ct_register_buffer(struct intel_guc_ct *ct, bool send,
>> int intel_guc_ct_init(struct intel_guc_ct *ct)
>> {
>>     struct intel_guc *guc = ct_to_guc(ct);
>> -    struct guc_ct_buffer_desc *desc;
>>     u32 blob_size;
>>     u32 cmds_size;
>>     u32 resv_space;
>> -    void *blob;
>> -    u32 *cmds;
>> +    void *blob, *desc, *cmds;
>>     int err;
>> +    bool lmem;
>>
>>     err = i915_inject_probe_error(guc_to_gt(guc)->i915, -ENXIO);
>>     if (err)
>> @@ -242,6 +253,8 @@ int intel_guc_ct_init(struct intel_guc_ct *ct)
>>
>>     CT_DEBUG(ct, "base=%#x size=%u\n", intel_guc_ggtt_offset(guc, ct->vma), blob_size);
>>
>> +    lmem = i915_gem_object_is_lmem(ct->vma->obj);
>> +
>>     /* store pointers to desc and cmds for send ctb */
>>     desc = blob;
>>     cmds = blob + 2 * CTB_DESC_SIZE;
>> @@ -251,7 +264,8 @@ int intel_guc_ct_init(struct intel_guc_ct *ct)
>>          ptrdiff(desc, blob), ptrdiff(cmds, blob), cmds_size,
>>          resv_space);
>>
>> -    guc_ct_buffer_init(&ct->ctbs.send, desc, cmds, cmds_size, resv_space);
>> +    guc_ct_buffer_init(&ct->ctbs.send,
>> +               desc, cmds, cmds_size, resv_space, lmem);
>>
>>     /* store pointers to desc and cmds for recv ctb */
>>     desc = blob + CTB_DESC_SIZE;
>> @@ -262,7 +276,8 @@ int intel_guc_ct_init(struct intel_guc_ct *ct)
>>          ptrdiff(desc, blob), ptrdiff(cmds, blob), cmds_size,
>>          resv_space);
>>
>> -    guc_ct_buffer_init(&ct->ctbs.recv, desc, cmds, cmds_size, resv_space);
>> +    guc_ct_buffer_init(&ct->ctbs.recv,
>> +               desc, cmds, cmds_size, resv_space, lmem);
>>
>>     return 0;
>> }
>> @@ -279,6 +294,10 @@ void intel_guc_ct_fini(struct intel_guc_ct *ct)
>>
>>     tasklet_kill(&ct->receive_tasklet);
>>     i915_vma_unpin_and_release(&ct->vma, I915_VMA_RELEASE_MAP);
>> +    iosys_map_clear(&ct->ctbs.send.desc_map);
>> +    iosys_map_clear(&ct->ctbs.send.cmds_map);
>> +    iosys_map_clear(&ct->ctbs.recv.desc_map);
>> +    iosys_map_clear(&ct->ctbs.recv.cmds_map);
>>     memset(ct, 0, sizeof(*ct));
>> }
>>
>> @@ -291,6 +310,7 @@ void intel_guc_ct_fini(struct intel_guc_ct *ct)
>> int intel_guc_ct_enable(struct intel_guc_ct *ct)
>> {
>>     struct intel_guc *guc = ct_to_guc(ct);
>> +    struct iosys_map blob_map;
>>     u32 base, desc, cmds, size;
>>     void *blob;
>>     int err;
>> @@ -302,9 +322,14 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
>>     GEM_BUG_ON(!i915_gem_object_has_pinned_pages(ct->vma->obj));
>>     base = intel_guc_ggtt_offset(guc, ct->vma);
>>
>> -    /* blob should start with send descriptor */
>>     blob = __px_vaddr(ct->vma->obj);
>> -    GEM_BUG_ON(blob != ct->ctbs.send.desc);
>> +    if (i915_gem_object_is_lmem(ct->vma->obj))
>> +        iosys_map_set_vaddr_iomem(&blob_map, (void __iomem *)blob);
>> +    else
>> +        iosys_map_set_vaddr(&blob_map, blob);
>
> probably better to remove blob and pass __px_vaddr(ct->vma->obj)
> directly as argument. This avoids later having users making (wrong)
> use of the blob variable, that shouldn't be used anymore after this
> point in the function.
>
> other possibility would be to do a blob = NULL here, but I think the
> other approach is cleaner.
>
Will proceed with first approach
>> +
>> +    /* blob should start with send descriptor */
>> +    GEM_BUG_ON(!iosys_map_is_equal(&blob_map, &ct->ctbs.send.desc_map));
>>
>>     /* (re)initialize descriptors */
>>     guc_ct_buffer_reset(&ct->ctbs.send);
>> @@ -314,15 +339,15 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
>>      * Register both CT buffers starting with RECV buffer.
>>      * Descriptors are in first half of the blob.
>>      */
>> -    desc = base + ptrdiff(ct->ctbs.recv.desc, blob);
>> -    cmds = base + ptrdiff(ct->ctbs.recv.cmds, blob);
>> +    desc = base + iosys_map_ptrdiff(&ct->ctbs.recv.desc_map, &blob_map);
>> +    cmds = base + iosys_map_ptrdiff(&ct->ctbs.recv.cmds_map, &blob_map);
>>     size = ct->ctbs.recv.size * 4;
>>     err = ct_register_buffer(ct, false, desc, cmds, size);
>>     if (unlikely(err))
>>         goto err_out;
>>
>> -    desc = base + ptrdiff(ct->ctbs.send.desc, blob);
>> -    cmds = base + ptrdiff(ct->ctbs.send.cmds, blob);
>> +    desc = base + iosys_map_ptrdiff(&ct->ctbs.send.desc_map, &blob_map);
>> +    cmds = base + iosys_map_ptrdiff(&ct->ctbs.send.cmds_map, &blob_map);
>>     size = ct->ctbs.send.size * 4;
>>     err = ct_register_buffer(ct, true, desc, cmds, size);
>>     if (unlikely(err))
>> @@ -371,31 +396,35 @@ static int ct_write(struct intel_guc_ct *ct,
>>             u32 fence, u32 flags)
>> {
>>     struct intel_guc_ct_buffer *ctb = &ct->ctbs.send;
>> -    struct guc_ct_buffer_desc *desc = ctb->desc;
>> +    struct iosys_map desc = ctb->desc_map;
>> +    struct iosys_map cmds = ctb->cmds_map;
>>     u32 tail = ctb->tail;
>>     u32 size = ctb->size;
>>     u32 header;
>>     u32 hxg;
>>     u32 type;
>> -    u32 *cmds = ctb->cmds;
>> +    u32 status = ct_desc_read(&desc, status);
>>     unsigned int i;
>>
>> -    if (unlikely(desc->status))
>> +    if (unlikely(status))
>>         goto corrupted;
>>
>>     GEM_BUG_ON(tail > size);
>>
>> #ifdef CONFIG_DRM_I915_DEBUG_GUC
>> -    if (unlikely(tail != READ_ONCE(desc->tail))) {
>> +    if (unlikely(tail != ct_desc_read(&desc, tail))) {
>>         CT_ERROR(ct, "Tail was modified %u != %u\n",
>> -             desc->tail, tail);
>> -        desc->status |= GUC_CTB_STATUS_MISMATCH;
>> +             ct_desc_read(&desc, tail), tail);
>> +        status |= GUC_CTB_STATUS_MISMATCH;
>> +        ct_desc_write(&desc, status, status);
>>         goto corrupted;
>>     }
>> -    if (unlikely(READ_ONCE(desc->head) >= size)) {
>> +    if (unlikely(ct_desc_read(&desc, head) >= size)) {
>>         CT_ERROR(ct, "Invalid head offset %u >= %u)\n",
>> -             desc->head, size);
>> -        desc->status |= GUC_CTB_STATUS_OVERFLOW;
>> +             ct_desc_read(&desc, head), size);
>> +        status = ct_desc_read(&desc, status) |
>> +            GUC_CTB_STATUS_OVERFLOW;
>> +        ct_desc_write(&desc, status, status);
>>         goto corrupted;
>>     }
>> #endif
>> @@ -418,14 +447,14 @@ static int ct_write(struct intel_guc_ct *ct,
>>     CT_DEBUG(ct, "writing (tail %u) %*ph %*ph %*ph\n",
>>          tail, 4, &header, 4, &hxg, 4 * (len - 1), &action[1]);
>>
>> -    cmds[tail] = header;
>> +    iosys_map_wr(&cmds, (4 * tail), u32, header);
>
> hiding sizeof(u32) here. Just make it &cmds[tail]?
>
yes, instead of hardcode will use sizeof(u32). Here cmds is of type
struct iosys_map.
>>     tail = (tail + 1) % size;
>>
>> -    cmds[tail] = hxg;
>> +    iosys_map_wr(&cmds, (4 * tail), u32, hxg);
>
> ditto
>
>>     tail = (tail + 1) % size;
>>
>>     for (i = 1; i < len; i++) {
>> -        cmds[tail] = action[i];
>> +        iosys_map_wr(&cmds, (4 * tail), u32, action[i]);
>
> ditto
>
> and in some other places too. I will try to finish the review later.
>
Sure, will wait for you complete review before I start with rev2.

Thank you for the feedback.

> Lucas De Marchi
>
>>         tail = (tail + 1) % size;
>>     }
>>     GEM_BUG_ON(tail > size);
>> @@ -442,13 +471,14 @@ static int ct_write(struct intel_guc_ct *ct,
>>     atomic_sub(len + GUC_CTB_HDR_LEN, &ctb->space);
>>
>>     /* now update descriptor */
>> -    WRITE_ONCE(desc->tail, tail);
>> +    ct_desc_write(&desc, tail, tail);
>>
>>     return 0;
>>
>> corrupted:
>>     CT_ERROR(ct, "Corrupted descriptor head=%u tail=%u status=%#x\n",
>> -         desc->head, desc->tail, desc->status);
>> +         ct_desc_read(&desc, head), ct_desc_read(&desc, tail),
>> +         ct_desc_read(&desc, status));
>>     ctb->broken = true;
>>     return -EPIPE;
>> }
>> @@ -499,20 +529,21 @@ static inline bool ct_deadlocked(struct intel_guc_ct *ct)
>>     bool ret = ktime_ms_delta(ktime_get(), ct->stall_time) > timeout;
>>
>>     if (unlikely(ret)) {
>> -        struct guc_ct_buffer_desc *send = ct->ctbs.send.desc;
>> -        struct guc_ct_buffer_desc *recv = ct->ctbs.send.desc;
>> +        struct iosys_map send = ct->ctbs.send.desc_map;
>> +        struct iosys_map recv = ct->ctbs.recv.desc_map;
>>
>>         CT_ERROR(ct, "Communication stalled for %lld ms, desc status=%#x,%#x\n",
>>              ktime_ms_delta(ktime_get(), ct->stall_time),
>> -             send->status, recv->status);
>> +             ct_desc_read(&send, status),
>> +             ct_desc_read(&recv, status));
>>         CT_ERROR(ct, "H2G Space: %u (Bytes)\n",
>>              atomic_read(&ct->ctbs.send.space) * 4);
>> -        CT_ERROR(ct, "Head: %u (Dwords)\n", ct->ctbs.send.desc->head);
>> -        CT_ERROR(ct, "Tail: %u (Dwords)\n", ct->ctbs.send.desc->tail);
>> +        CT_ERROR(ct, "Head: %u (Dwords)\n", ct_desc_read(&send, head));
>> +        CT_ERROR(ct, "Tail: %u (Dwords)\n", ct_desc_read(&send, tail));
>>         CT_ERROR(ct, "G2H Space: %u (Bytes)\n",
>>              atomic_read(&ct->ctbs.recv.space) * 4);
>> -        CT_ERROR(ct, "Head: %u\n (Dwords)", ct->ctbs.recv.desc->head);
>> -        CT_ERROR(ct, "Tail: %u\n (Dwords)", ct->ctbs.recv.desc->tail);
>> +        CT_ERROR(ct, "Head: %u\n (Dwords)", ct_desc_read(&recv, head));
>> +        CT_ERROR(ct, "Tail: %u\n (Dwords)", ct_desc_read(&recv, tail));
>>
>>         ct->ctbs.send.broken = true;
>>     }
>> @@ -549,18 +580,20 @@ static inline void g2h_release_space(struct intel_guc_ct *ct, u32 g2h_len_dw)
>> static inline bool h2g_has_room(struct intel_guc_ct *ct, u32 len_dw)
>> {
>>     struct intel_guc_ct_buffer *ctb = &ct->ctbs.send;
>> -    struct guc_ct_buffer_desc *desc = ctb->desc;
>> +    struct iosys_map desc = ctb->desc_map;
>>     u32 head;
>>     u32 space;
>> +    u32 status = ct_desc_read(&desc, status);
>>
>>     if (atomic_read(&ctb->space) >= len_dw)
>>         return true;
>>
>> -    head = READ_ONCE(desc->head);
>> +    head = ct_desc_read(&desc, head);
>>     if (unlikely(head > ctb->size)) {
>>         CT_ERROR(ct, "Invalid head offset %u >= %u)\n",
>>              head, ctb->size);
>> -        desc->status |= GUC_CTB_STATUS_OVERFLOW;
>> +        status |= GUC_CTB_STATUS_OVERFLOW;
>> +        ct_desc_write(&desc, status, status);
>>         ctb->broken = true;
>>         return false;
>>     }
>> @@ -803,11 +836,12 @@ static void ct_free_msg(struct ct_incoming_msg *msg)
>> static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
>> {
>>     struct intel_guc_ct_buffer *ctb = &ct->ctbs.recv;
>> -    struct guc_ct_buffer_desc *desc = ctb->desc;
>> +    struct iosys_map desc = ctb->desc_map;
>> +    struct iosys_map cmds = ctb->cmds_map;
>>     u32 head = ctb->head;
>> -    u32 tail = READ_ONCE(desc->tail);
>> +    u32 tail = ct_desc_read(&desc, tail);
>>     u32 size = ctb->size;
>> -    u32 *cmds = ctb->cmds;
>> +    u32 status = ct_desc_read(&desc, status);
>>     s32 available;
>>     unsigned int len;
>>     unsigned int i;
>> @@ -816,23 +850,26 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
>>     if (unlikely(ctb->broken))
>>         return -EPIPE;
>>
>> -    if (unlikely(desc->status))
>> +    if (unlikely(status))
>>         goto corrupted;
>>
>>     GEM_BUG_ON(head > size);
>>
>> #ifdef CONFIG_DRM_I915_DEBUG_GUC
>> -    if (unlikely(head != READ_ONCE(desc->head))) {
>> +    if (unlikely(head != ct_desc_read(&desc, head))) {
>>         CT_ERROR(ct, "Head was modified %u != %u\n",
>> -             desc->head, head);
>> -        desc->status |= GUC_CTB_STATUS_MISMATCH;
>> +             ct_desc_read(&desc, head), head);
>> +        status |= GUC_CTB_STATUS_MISMATCH;
>> +        ct_desc_write(&desc, status, status);
>>         goto corrupted;
>>     }
>> #endif
>>     if (unlikely(tail >= size)) {
>>         CT_ERROR(ct, "Invalid tail offset %u >= %u)\n",
>>              tail, size);
>> -        desc->status |= GUC_CTB_STATUS_OVERFLOW;
>> +        status = ct_desc_read(&desc, status) |
>> +            GUC_CTB_STATUS_OVERFLOW;
>> +        ct_desc_write(&desc, status, status);
>>         goto corrupted;
>>     }
>>
>> @@ -849,7 +886,7 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
>>     CT_DEBUG(ct, "available %d (%u:%u:%u)\n", available, head, tail, size);
>>     GEM_BUG_ON(available < 0);
>>
>> -    header = cmds[head];
>> +    header = iosys_map_rd(&cmds, (4 * head), u32);
>>     head = (head + 1) % size;
>>
>>     /* message len with header */
>> @@ -857,11 +894,13 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
>>     if (unlikely(len > (u32)available)) {
>>         CT_ERROR(ct, "Incomplete message %*ph %*ph %*ph\n",
>>              4, &header,
>> +             4 * (head + available - 1 > size ? size - head :
>> +                  available - 1), (cmds.vaddr + (4 * head)),
>>              4 * (head + available - 1 > size ?
>> -                  size - head : available - 1), &cmds[head],
>> -             4 * (head + available - 1 > size ?
>> -                  available - 1 - size + head : 0), &cmds[0]);
>> -        desc->status |= GUC_CTB_STATUS_UNDERFLOW;
>> +                  available - 1 - size + head : 0), cmds.vaddr);
>> +        status = ct_desc_read(&desc, status) |
>> +            GUC_CTB_STATUS_UNDERFLOW;
>> +        ct_desc_write(&desc, status, status);
>>         goto corrupted;
>>     }
>>
>> @@ -869,17 +908,17 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
>>     if (!*msg) {
>>         CT_ERROR(ct, "No memory for message %*ph %*ph %*ph\n",
>>              4, &header,
>> +             4 * (head + available - 1 > size ? size - head :
>> +                  available - 1), (cmds.vaddr + (4 * head)),
>>              4 * (head + available - 1 > size ?
>> -                  size - head : available - 1), &cmds[head],
>> -             4 * (head + available - 1 > size ?
>> -                  available - 1 - size + head : 0), &cmds[0]);
>> +                  available - 1 - size + head : 0), cmds.vaddr);
>>         return available;
>>     }
>>
>>     (*msg)->msg[0] = header;
>>
>>     for (i = 1; i < len; i++) {
>> -        (*msg)->msg[i] = cmds[head];
>> +        (*msg)->msg[i] = iosys_map_rd(&cmds, (4 * head), u32);
>>         head = (head + 1) % size;
>>     }
>>     CT_DEBUG(ct, "received %*ph\n", 4 * len, (*msg)->msg);
>> @@ -888,13 +927,14 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
>>     ctb->head = head;
>>
>>     /* now update descriptor */
>> -    WRITE_ONCE(desc->head, head);
>> +    ct_desc_write(&desc, head, head);
>>
>>     return available - len;
>>
>> corrupted:
>>     CT_ERROR(ct, "Corrupted descriptor head=%u tail=%u status=%#x\n",
>> -         desc->head, desc->tail, desc->status);
>> +         ct_desc_read(&desc, head), ct_desc_read(&desc, tail),
>> +         ct_desc_read(&desc, status));
>>     ctb->broken = true;
>>     return -EPIPE;
>> }
>> @@ -1211,13 +1251,13 @@ void intel_guc_ct_print_info(struct intel_guc_ct *ct,
>>     drm_printf(p, "H2G Space: %u\n",
>>            atomic_read(&ct->ctbs.send.space) * 4);
>>     drm_printf(p, "Head: %u\n",
>> -           ct->ctbs.send.desc->head);
>> +           ct_desc_read(&ct->ctbs.send.desc_map, head));
>>     drm_printf(p, "Tail: %u\n",
>> -           ct->ctbs.send.desc->tail);
>> +           ct_desc_read(&ct->ctbs.send.desc_map, tail));
>>     drm_printf(p, "G2H Space: %u\n",
>>            atomic_read(&ct->ctbs.recv.space) * 4);
>>     drm_printf(p, "Head: %u\n",
>> -           ct->ctbs.recv.desc->head);
>> +           ct_desc_read(&ct->ctbs.recv.desc_map, head));
>>     drm_printf(p, "Tail: %u\n",
>> -           ct->ctbs.recv.desc->tail);
>> +           ct_desc_read(&ct->ctbs.recv.desc_map, tail));
>> }
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
>> index f709a19c7e21..867fe13fb47d 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
>> @@ -7,6 +7,7 @@
>> #define _INTEL_GUC_CT_H_
>>
>> #include <linux/interrupt.h>
>> +#include <linux/iosys-map.h>
>> #include <linux/spinlock.h>
>> #include <linux/workqueue.h>
>> #include <linux/ktime.h>
>> @@ -32,8 +33,8 @@ struct drm_printer;
>>  * holds the commands.
>>  *
>>  * @lock: protects access to the commands buffer and buffer descriptor
>> - * @desc: pointer to the buffer descriptor
>> - * @cmds: pointer to the commands buffer
>> + * @desc: iosys map to the buffer descriptor
>> + * @cmds: iosys map to the commands buffer
>>  * @size: size of the commands buffer in dwords
>>  * @resv_space: reserved space in buffer in dwords
>>  * @head: local shadow copy of head in dwords
>> @@ -43,8 +44,8 @@ struct drm_printer;
>>  */
>> struct intel_guc_ct_buffer {
>>     spinlock_t lock;
>> -    struct guc_ct_buffer_desc *desc;
>> -    u32 *cmds;
>> +    struct iosys_map desc_map;
>> +    struct iosys_map cmds_map;
>>     u32 size;
>>     u32 resv_space;
>>     u32 tail;
>> -- 
>> 2.33.0
>>
