Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC115329C5
	for <lists+intel-gfx@lfdr.de>; Tue, 24 May 2022 13:56:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D05510E243;
	Tue, 24 May 2022 11:56:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96EBD10E17F
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 May 2022 11:56:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653393377; x=1684929377;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2HJy9e2r5saTM/9vLgk28d2nlCqUshdW5qKuEScjucs=;
 b=BwBOmTjNOCtyQ2SFborZN+dZPJLtNa6EjjczozupCcra4ohXcDXqWuM0
 RWyBaivb+N3o33BQJPJ54aC7e0NzwbKmOXujK/GtDU4/5hdvEfMejiCgG
 Coj++jRhVyvIz48mW3PqzaqcBY4ZWj6n3buu4VkMj8sd7M7mN1EVhSmHa
 B/+dvO9Bd3Nt39lX7Hfg4HUc3GI/jfIaEdn5ZUNPlGK29XpnrWB4hwfH4
 1i9Q07YjhxAFaqTT80zN7fBXCTSJdJwW6ZTSMQ0xsxGY07Mr9HHF+wxfl
 XGRuRDaws6dPYrV1n+BS4gH0YmUjd4GUxkwsqNwZHPnxQ0UDnT2tSAYIl g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10356"; a="273621904"
X-IronPort-AV: E=Sophos;i="5.91,248,1647327600"; d="scan'208";a="273621904"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2022 04:56:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,248,1647327600"; d="scan'208";a="548441961"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 24 May 2022 04:56:16 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 24 May 2022 04:56:16 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 24 May 2022 04:56:16 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 24 May 2022 04:56:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SxKWLfItz6a9IhJZLYDIJEvg88VhTqlE0vNVuIodA0T6wMbONj3hUaJ9qE92yy0EEdkVyO5pnOh4Qy5d8MROkvUYmRLtHuTkLsvs0082aj3fvvNo1/p8hxy3G5cQlZqcRnK9vLbZEZuA2t22yj+b/7cZhyeUiCkcQqbbKT8Up2str2BJNLhXVJ2DwQrMA22mbDXT4mfO8cOY+RZ9LKJ5aF7Qj2W1T6hGRuugMMI5TCWSfdT+WA88z/IDdF3XjBeq1KA4W7/TDfJ8RYlz2LOntCsaI7ghIZIykrG//yPdIlUtwdspOHXLz509PAXZHHELcQzcNtatXUyyp5Lk2b4z6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dmGRczKRLh76UMkUPfjBG+QBjjZPuwipz51ADDZUWjk=;
 b=Z91ClxLpm/GPUJDrgkqYpRxPLJ54ZHuRTnpIDlakDXYoRCvYdrrn6STVXKLXP8UVYHr0eQn2FyxDosuQSuicjxSn+UR2z06QDmz+zo+oQTqtrdpG5C6zmUz9bzWFmBjXMfNXUgdC8f+IlKeUcYQDewhL5lz3TSmlBYoVrzb3HQv2vvz7HCrGY4y+vtEVVunpYHPJ0AmfkTpt5I+TAbj7ksoc+u1FBSsCXx4xn0vmJ1nAaq3v2ivcrSy+TF4ci9cfcFhR/v0+JRLgvLq5kdn/1U4tpRwT/dKL2uBTRLAXMfdLpg1GlzU0awlVzqkXZYZDjK4Dcw/bh2klJ58LzjtQzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB3180.namprd11.prod.outlook.com (2603:10b6:5:9::13) by
 PH0PR11MB5807.namprd11.prod.outlook.com (2603:10b6:510:140::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.22; Tue, 24 May
 2022 11:56:08 +0000
Received: from DM6PR11MB3180.namprd11.prod.outlook.com
 ([fe80::1079:a2cc:665e:f397]) by DM6PR11MB3180.namprd11.prod.outlook.com
 ([fe80::1079:a2cc:665e:f397%7]) with mapi id 15.20.5273.023; Tue, 24 May 2022
 11:56:08 +0000
Message-ID: <8203d7e7-daf4-f603-8630-a16953e6c916@intel.com>
Date: Tue, 24 May 2022 13:56:01 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.9.0
Content-Language: en-US
To: Nirmoy Das <nirmoy.das@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20220516082015.32020-1-nirmoy.das@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20220516082015.32020-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM5PR0602CA0010.eurprd06.prod.outlook.com
 (2603:10a6:203:a3::20) To DM6PR11MB3180.namprd11.prod.outlook.com
 (2603:10b6:5:9::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 912eb94f-2e74-4080-bd0d-08da3d7c62b1
X-MS-TrafficTypeDiagnostic: PH0PR11MB5807:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <PH0PR11MB580712056914B5E3169155A8EBD79@PH0PR11MB5807.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ePDjz1w0rronv/cPSGg9LzAaCnsB4KEhcJ27e9PGI5k/CwoW2MjOj9G9kkIHO8ZkKPkjhtwe270YWhAXGMTjXSNYZE64KVnyqBayR5RJGL28/ss/DPTuAXmQ3BrPJg+nqebIxBbT9asiCuqT5gT8QTBtbylT8kcGfHSTXfF+/T4TMqA8ZynIl/ug3UB/tFZHzm5HHOcEtAyQedob5N4509Qxy5jnxQ0e+Oxt/uLgGkRhBP/oq6gmxOvVatyucfNZhJbj2Jw69SXXaQwr60pXLywxpVr6CBH6jmNnl5iCMSFnJXmhlYmwxBFTeajQf5NC8Lt4U9DILHEpnymTTqOdAoVa0YCb3iBr/Ot/E6eFUCCQHWxaHFO6G6KJtbZmJ3mxWd75JlYKrCjZ804J9ppWdC0xIkx5+W3nVRhdC/iNnG6j49MLTcc8u0xe2MyevyyicRJu4IVHwW38nPLT6vX2Rx4TJq0GRZSD5J4/YRGydO60Y5G7UuWcg+Ms+DhJ1k7KEqDkH+QKcJhBVrdm47/GdiygKRo4nAZ45CvaO1bJIQDHa7X2ut+KtQ7krPN+K1VMh5WQbU//4+WFg3hhLDWfC1bm94yG6GbwBvVWQz4hlXZZHvfdj6aj1gwBqCgYyGlGdssQzSBcEYPGRI+qUsEoD7J0mQLDnfYM7IzkaJ6WgWizDrSgthHHkh1K9JgcIaHw1RPBBqbd2+DPXkLrrSrNJ+jrobDZKJVvCMmBN3vM8DM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(30864003)(82960400001)(31686004)(508600001)(8936002)(44832011)(6512007)(6666004)(6506007)(38100700002)(36916002)(316002)(5660300002)(53546011)(26005)(83380400001)(15650500001)(66556008)(66946007)(86362001)(31696002)(66476007)(4326008)(186003)(2616005)(6486002)(2906002)(966005)(36756003)(8676002)(107886003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MDFGcHdqeDQvM2toRUQvZ055QVY4NFBEU0hKYmtDbUtjVHdtUGY1NlI0R3FS?=
 =?utf-8?B?WDJ1U1dOYVkxTEZPOG1OQkxUektlczNMTllQcWNOU0gvY0xlZGpsMlFGd0tV?=
 =?utf-8?B?Q3VQbnpvVFdQb00rVjFDMGI3RGxseXB2enhjeGQ0RVMvL01EUmNBanpJTjVi?=
 =?utf-8?B?Wm9VRlFKTjVQcVFsT0o3NXRCRkMwdS9NTlUzTnNnREdXN2JGQXEyenRzT0FS?=
 =?utf-8?B?L1hjczc2bSs3MUp0S254Y1o0UWoySzkrYzEyemFLclVEVG9aeXNQRkl0ZE1I?=
 =?utf-8?B?d3MvTGM5RVNNZFhRTkpwT01qRGtuZ211ekcwTFMxRFRmUndKcmZ0YnFTaUJL?=
 =?utf-8?B?ZUx0alMvMCtJNXZQaWlWUW9aeVBQdXF1eVUvbEZqNDBscENvVDVBM2sweEJu?=
 =?utf-8?B?UVdJZStQYnFlcGRmVndKQW93dDhzdjUzcmEycHdZN3FuMkpJWWR1TFc4WWFr?=
 =?utf-8?B?WE1OaFZtaGdZcHg5N21BWGZobm9qTjAvSjk4azBUM1FUR0JsejZUL0I1Mll3?=
 =?utf-8?B?TVZlK3MzRVFYbE5kSGtLK1hTRmIvemZJVHFDTWJwRDkwOVNWa3RBREFaWDgx?=
 =?utf-8?B?Z2FZc21CaUFHL2dNeE9pSjNtL0FtMzlPMmRKWlR2RWdpVWd4UlRjWG5MWkZC?=
 =?utf-8?B?TkYwbkt4ajdzeThwSHNmYkdiRWg4ZWs2SEZpRENyYWNkSjRDNHphYzdick03?=
 =?utf-8?B?VjlBdUdPY0ZuYVRCQ0xacHZ5NWJVRU9kM1ZabUVaQ3N6a3AwZVN5ZUVLbFR0?=
 =?utf-8?B?RHBiRkNiZGV4b2NyRC9wajFxS3dDK1dRNDNuR1FEMWZDR3pFcVhWdGpjamdt?=
 =?utf-8?B?ZXNlSW9LQ2djNmsraVIvYXZ4UWZRK2NIVWVzdTF4TUMvR1hQTGtuUmJ5N3lK?=
 =?utf-8?B?cHlvZ2VWakNlVHVSeWZqN1FyeC9UNmdoZGducWdSdEJRVWw3akM1bmhnR2Ra?=
 =?utf-8?B?RE5NWmM5TWl4TmV5aDE1SXNwVnNoY0RidlR2ZEdPbWo1M1lidWxiNTltS256?=
 =?utf-8?B?QzF1SjJHeW5FZmVKN2FSRjB1Wm8wYnFXSUVyR1l6eWNxbzJaMHlYNi94MGIr?=
 =?utf-8?B?UUhIWWg3bnQ1M1lzZ2tBVDBoS1hBS2J1RHFLdjNKVnVMeUpRa0J1NUxJTkl5?=
 =?utf-8?B?NGl6YVk1R1JOMlYzb1dZZ1UxalhtVXc1cG1LVStRVmtNQVRSZDV4T1AzM016?=
 =?utf-8?B?eVJxeFVJYk1qNnNKY1l3MGNzaGNuVXZ2bnQyMG0vSytxOXBlL0dkODhmYzFT?=
 =?utf-8?B?RFp5bzdicld6QUJGRHNmRk1BZDNhVkFCOTVPL1dMRnp0VmdCR1JsNjBjTGQr?=
 =?utf-8?B?cHNDbFRJRFhuRlRSc0hSM2ZjNVdZV1pVU2w0WnpvRElPS2NycVpYbzFqdDhj?=
 =?utf-8?B?UWZRbE9tSm9ncXBzeWZvM3lEQTN5NnM0Tm5IMDZKVTdNenRuc3dueUhCZFQ5?=
 =?utf-8?B?bWxrUU5HTTJEVzdZZnlKVzRFZUVvVkxXbmVaL2VjZmQvV2NzOXAyQTFLV2li?=
 =?utf-8?B?cHgya1NpQzdQcDBRK3J4U0Z0MXBNamR6dXhxODNqL0cvb0tzSzZNNTFwM2xw?=
 =?utf-8?B?VW5IYkRMRU5VZm5EakE4eHd1a2ZIdjdHRkR5WjAwRjNPYlI3aTBsV2pNQWFw?=
 =?utf-8?B?SEdNWVZncEN6RlUvR2dGeFEzVWRoY2FTSkZqRUhPWFZWMitoVjBXTlN2cHRM?=
 =?utf-8?B?SmxxczFtYjFJeC9Bcm5jNTNzY1RIT1NlOGwxWm5sbXdIZlFabUd3SjZKdkxi?=
 =?utf-8?B?TThSMDFtVC9ONDRZeTE5N0gzRUU5TkxkN1MwcEZpcG8wWXpLN1o3ck1vdXFm?=
 =?utf-8?B?bzF0RUUxZVRzZ1c4SlhkMHpzbmJlNnBncHdnaEh6UE1ZZlRXSEZ3OWhrM1hF?=
 =?utf-8?B?MHhBL2x2ZUFab0YzdmVOL2VkZEN6V09qOUtZSlNNNVB2bFUra2VjZVRma3pF?=
 =?utf-8?B?aTNHeWJ1SDE5M09zeHFiMnZaSWdhbVNUbHJjK1YzODBCcDQzSmFwU0QzRUZX?=
 =?utf-8?B?c3JNalI4VnJIQng1eDBPMjRGMjBCQmtRSmU1cTJxZ1lHdVF1Y3JvSUR3QzhY?=
 =?utf-8?B?NkF4VVN4RmlFR2dIcGR0Yyt3cnJ2WjNhTzdSNHNoekFDNUN2eXRkaTJ6Y0RR?=
 =?utf-8?B?bTMrd01kZEhvUUxCZVFHWHpCTkpSTGVkL1YwazZzTThRVWVaampCbHZNY3Jh?=
 =?utf-8?B?WWRQK0NTcHlqRm55QnZMMkVBb0xqeFZiaEYzMDQ2TVh6YzRHN1lHdDFsTXNL?=
 =?utf-8?B?TExPd3B1UUJvbjJmcCsrdjRnZTAvcEJyUUtCVWZYK01jZlVpVVZ3Z0VvWFQz?=
 =?utf-8?B?L05wNXdNNHpKS0tIZ21jMVFjaVdEMlBYUThZRzg1THNzOVJnc0I0SEQ4enhG?=
 =?utf-8?Q?FUvZ7c70QEvQ67SU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 912eb94f-2e74-4080-bd0d-08da3d7c62b1
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2022 11:56:08.4899 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: M0PbWuAiiaPar2xhea9rzvWzVpJtXVq/uAM1FBQndtUpdr/xCeAK/NuTK5f4EYSf/K24/xjX4BNhSMLVsu0Bjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5807
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Update tiled blits selftest
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
Cc: krishnaiah.bommu@intel.com, matthew.auld@intel.com,
 chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 16.05.2022 10:20, Nirmoy Das wrote:
> From: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> 
> Update the selftest to include Tile 4 mode and switch to Tile 4 on
> platforms that supports Tile 4 but no Tile Y and vice versa.
> Also switch to XY_FAST_COPY_BLT on platforms that supports it.
> 
> v4: update commit message to reflect the code changes properly.
> v3: add a function to find X-tile availability for a platform.
> v2: disable Tile X for iGPU in fastblit and
>      fix checkpath --strict warnings.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5879
> Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> Co-developed-by: Nirmoy Das <nirmoy.das@intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   .../i915/gem/selftests/i915_gem_client_blt.c  | 250 ++++++++++++++----
>   drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |  22 ++
>   2 files changed, 227 insertions(+), 45 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
> index ddd0772fd828..3cfc621ef363 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
> @@ -6,6 +6,7 @@
>   #include "i915_selftest.h"
>   
>   #include "gt/intel_context.h"
> +#include "gt/intel_engine_regs.h"
>   #include "gt/intel_engine_user.h"
>   #include "gt/intel_gpu_commands.h"
>   #include "gt/intel_gt.h"
> @@ -18,10 +19,71 @@
>   #include "huge_gem_object.h"
>   #include "mock_context.h"
>   
> +#define OW_SIZE 16                      /* in bytes */
> +#define F_SUBTILE_SIZE 64               /* in bytes */
> +#define F_TILE_WIDTH 128                /* in bytes */
> +#define F_TILE_HEIGHT 32                /* in pixels */
> +#define F_SUBTILE_WIDTH  OW_SIZE        /* in bytes */
> +#define F_SUBTILE_HEIGHT 4              /* in pixels */
> +
> +static int linear_x_y_to_ftiled_pos(int x, int y, u32 stride, int bpp)
> +{
> +	int tile_base;
> +	int tile_x, tile_y;
> +	int swizzle, subtile;
> +	int pixel_size = bpp / 8;
> +	int pos;
> +
> +	/*
> +	 * Subtile remapping for F tile. Note that map[a]==b implies map[b]==a
> +	 * so we can use the same table to tile and until.
> +	 */
> +	static const u8 f_subtile_map[] = {
> +		 0,  1,  2,  3,  8,  9, 10, 11,
> +		 4,  5,  6,  7, 12, 13, 14, 15,
> +		16, 17, 18, 19, 24, 25, 26, 27,
> +		20, 21, 22, 23, 28, 29, 30, 31,
> +		32, 33, 34, 35, 40, 41, 42, 43,
> +		36, 37, 38, 39, 44, 45, 46, 47,
> +		48, 49, 50, 51, 56, 57, 58, 59,
> +		52, 53, 54, 55, 60, 61, 62, 63
> +	};

f_subtile_map[i] == (i with swapped bits 2,3)

but I do not know if there is nice C expression/core function to use here,
(i & ^12u) | (( i & 4) << 1) | ((i & 8) >> 1)
does not looks nice.


> +
> +	x *= pixel_size;
> +	/*
> +	 * Where does the 4k tile start (in bytes)?  This is the same for Y and
> +	 * F so we can use the Y-tile algorithm to get to that point.
> +	 */
> +	tile_base =
> +		y / F_TILE_HEIGHT * stride * F_TILE_HEIGHT +
> +		x / F_TILE_WIDTH * 4096;
> +
> +	/* Find pixel within tile */
> +	tile_x = x % F_TILE_WIDTH;
> +	tile_y = y % F_TILE_HEIGHT;
> +
> +	/* And figure out the subtile within the 4k tile */
> +	subtile = tile_y / F_SUBTILE_HEIGHT * 8 + tile_x / F_SUBTILE_WIDTH;
> +
> +	/* Swizzle the subtile number according to the bspec diagram */
> +	swizzle = f_subtile_map[subtile];
> +
> +	/* Calculate new position */
> +	pos = tile_base +
> +		swizzle * F_SUBTILE_SIZE +
> +		tile_y % F_SUBTILE_HEIGHT * OW_SIZE +
> +		tile_x % F_SUBTILE_WIDTH;
> +
> +	GEM_BUG_ON(!IS_ALIGNED(pos, pixel_size));
> +
> +	return pos / pixel_size * 4;
> +}
> +
>   enum client_tiling {
>   	CLIENT_TILING_LINEAR,
>   	CLIENT_TILING_X,
>   	CLIENT_TILING_Y,
> +	CLIENT_TILING_4,
>   	CLIENT_NUM_TILING_TYPES
>   };
>   
> @@ -45,6 +107,36 @@ struct tiled_blits {
>   	u32 height;
>   };
>   
> +static bool supports_x_tiling(const struct drm_i915_private *i915)
> +{
> +	int gen = GRAPHICS_VER(i915);
> +
> +	if (gen < 12)
> +		return true;

Why gen variable? you can use expression directly.

Anyway:

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej



> +
> +	if (!HAS_LMEM(i915) || IS_DG1(i915))
> +		return false;
> +
> +	return true;
> +}
> +
> +static bool fast_blit_ok(const struct blit_buffer *buf)
> +{
> +	int gen = GRAPHICS_VER(buf->vma->vm->i915);
> +
> +	if (gen < 9)
> +		return false;
> +
> +	if (gen < 12)
> +		return true;
> +
> +	/* filter out platforms with unsupported X-tile support in fastblit */
> +	if (buf->tiling == CLIENT_TILING_X && !supports_x_tiling(buf->vma->vm->i915))
> +		return false;
> +
> +	return true;
> +}
> +
>   static int prepare_blit(const struct tiled_blits *t,
>   			struct blit_buffer *dst,
>   			struct blit_buffer *src,
> @@ -59,51 +151,103 @@ static int prepare_blit(const struct tiled_blits *t,
>   	if (IS_ERR(cs))
>   		return PTR_ERR(cs);
>   
> -	*cs++ = MI_LOAD_REGISTER_IMM(1);
> -	*cs++ = i915_mmio_reg_offset(BCS_SWCTRL);
> -	cmd = (BCS_SRC_Y | BCS_DST_Y) << 16;
> -	if (src->tiling == CLIENT_TILING_Y)
> -		cmd |= BCS_SRC_Y;
> -	if (dst->tiling == CLIENT_TILING_Y)
> -		cmd |= BCS_DST_Y;
> -	*cs++ = cmd;
> -
> -	cmd = MI_FLUSH_DW;
> -	if (ver >= 8)
> -		cmd++;
> -	*cs++ = cmd;
> -	*cs++ = 0;
> -	*cs++ = 0;
> -	*cs++ = 0;
> -
> -	cmd = XY_SRC_COPY_BLT_CMD | BLT_WRITE_RGBA | (8 - 2);
> -	if (ver >= 8)
> -		cmd += 2;
> -
> -	src_pitch = t->width * 4;
> -	if (src->tiling) {
> -		cmd |= XY_SRC_COPY_BLT_SRC_TILED;
> -		src_pitch /= 4;
> -	}
> +	if (fast_blit_ok(dst) && fast_blit_ok(src)) {
> +		struct intel_gt *gt = t->ce->engine->gt;
> +		u32 src_tiles = 0, dst_tiles = 0;
> +		u32 src_4t = 0, dst_4t = 0;
> +
> +		/* Need to program BLIT_CCTL if it is not done previously
> +		 * before using XY_FAST_COPY_BLT
> +		 */
> +		*cs++ = MI_LOAD_REGISTER_IMM(1);
> +		*cs++ = i915_mmio_reg_offset(BLIT_CCTL(t->ce->engine->mmio_base));
> +		*cs++ = (BLIT_CCTL_SRC_MOCS(gt->mocs.uc_index) |
> +			 BLIT_CCTL_DST_MOCS(gt->mocs.uc_index));
> +
> +		src_pitch = t->width; /* in dwords */
> +		if (src->tiling == CLIENT_TILING_4) {
> +			src_tiles = XY_FAST_COPY_BLT_D0_SRC_TILE_MODE(YMAJOR);
> +			src_4t = XY_FAST_COPY_BLT_D1_SRC_TILE4;
> +		} else if (src->tiling == CLIENT_TILING_Y) {
> +			src_tiles = XY_FAST_COPY_BLT_D0_SRC_TILE_MODE(YMAJOR);
> +		} else if (src->tiling == CLIENT_TILING_X) {
> +			src_tiles = XY_FAST_COPY_BLT_D0_SRC_TILE_MODE(TILE_X);
> +		} else {
> +			src_pitch *= 4; /* in bytes */
> +		}
>   
> -	dst_pitch = t->width * 4;
> -	if (dst->tiling) {
> -		cmd |= XY_SRC_COPY_BLT_DST_TILED;
> -		dst_pitch /= 4;
> -	}
> +		dst_pitch = t->width; /* in dwords */
> +		if (dst->tiling == CLIENT_TILING_4) {
> +			dst_tiles = XY_FAST_COPY_BLT_D0_DST_TILE_MODE(YMAJOR);
> +			dst_4t = XY_FAST_COPY_BLT_D1_DST_TILE4;
> +		} else if (dst->tiling == CLIENT_TILING_Y) {
> +			dst_tiles = XY_FAST_COPY_BLT_D0_DST_TILE_MODE(YMAJOR);
> +		} else if (dst->tiling == CLIENT_TILING_X) {
> +			dst_tiles = XY_FAST_COPY_BLT_D0_DST_TILE_MODE(TILE_X);
> +		} else {
> +			dst_pitch *= 4; /* in bytes */
> +		}
>   
> -	*cs++ = cmd;
> -	*cs++ = BLT_DEPTH_32 | BLT_ROP_SRC_COPY | dst_pitch;
> -	*cs++ = 0;
> -	*cs++ = t->height << 16 | t->width;
> -	*cs++ = lower_32_bits(dst->vma->node.start);
> -	if (use_64b_reloc)
> +		*cs++ = GEN9_XY_FAST_COPY_BLT_CMD | (10 - 2) |
> +			src_tiles | dst_tiles;
> +		*cs++ = src_4t | dst_4t | BLT_DEPTH_32 | dst_pitch;
> +		*cs++ = 0;
> +		*cs++ = t->height << 16 | t->width;
> +		*cs++ = lower_32_bits(dst->vma->node.start);
>   		*cs++ = upper_32_bits(dst->vma->node.start);
> -	*cs++ = 0;
> -	*cs++ = src_pitch;
> -	*cs++ = lower_32_bits(src->vma->node.start);
> -	if (use_64b_reloc)
> +		*cs++ = 0;
> +		*cs++ = src_pitch;
> +		*cs++ = lower_32_bits(src->vma->node.start);
>   		*cs++ = upper_32_bits(src->vma->node.start);
> +	} else {
> +		if (ver >= 6) {
> +			*cs++ = MI_LOAD_REGISTER_IMM(1);
> +			*cs++ = i915_mmio_reg_offset(BCS_SWCTRL);
> +			cmd = (BCS_SRC_Y | BCS_DST_Y) << 16;
> +			if (src->tiling == CLIENT_TILING_Y)
> +				cmd |= BCS_SRC_Y;
> +			if (dst->tiling == CLIENT_TILING_Y)
> +				cmd |= BCS_DST_Y;
> +			*cs++ = cmd;
> +
> +			cmd = MI_FLUSH_DW;
> +			if (ver >= 8)
> +				cmd++;
> +			*cs++ = cmd;
> +			*cs++ = 0;
> +			*cs++ = 0;
> +			*cs++ = 0;
> +		}
> +
> +		cmd = XY_SRC_COPY_BLT_CMD | BLT_WRITE_RGBA | (8 - 2);
> +		if (ver >= 8)
> +			cmd += 2;
> +
> +		src_pitch = t->width * 4;
> +		if (src->tiling) {
> +			cmd |= XY_SRC_COPY_BLT_SRC_TILED;
> +			src_pitch /= 4;
> +		}
> +
> +		dst_pitch = t->width * 4;
> +		if (dst->tiling) {
> +			cmd |= XY_SRC_COPY_BLT_DST_TILED;
> +			dst_pitch /= 4;
> +		}
> +
> +		*cs++ = cmd;
> +		*cs++ = BLT_DEPTH_32 | BLT_ROP_SRC_COPY | dst_pitch;
> +		*cs++ = 0;
> +		*cs++ = t->height << 16 | t->width;
> +		*cs++ = lower_32_bits(dst->vma->node.start);
> +		if (use_64b_reloc)
> +			*cs++ = upper_32_bits(dst->vma->node.start);
> +		*cs++ = 0;
> +		*cs++ = src_pitch;
> +		*cs++ = lower_32_bits(src->vma->node.start);
> +		if (use_64b_reloc)
> +			*cs++ = upper_32_bits(src->vma->node.start);
> +	}
>   
>   	*cs++ = MI_BATCH_BUFFER_END;
>   
> @@ -181,7 +325,13 @@ static int tiled_blits_create_buffers(struct tiled_blits *t,
>   
>   		t->buffers[i].vma = vma;
>   		t->buffers[i].tiling =
> -			i915_prandom_u32_max_state(CLIENT_TILING_Y + 1, prng);
> +			i915_prandom_u32_max_state(CLIENT_NUM_TILING_TYPES, prng);
> +
> +		/* Platforms support either TileY or Tile4, not both */
> +		if (HAS_4TILE(i915) && t->buffers[i].tiling == CLIENT_TILING_Y)
> +			t->buffers[i].tiling = CLIENT_TILING_4;
> +		else if (!HAS_4TILE(i915) && t->buffers[i].tiling == CLIENT_TILING_4)
> +			t->buffers[i].tiling = CLIENT_TILING_Y;
>   	}
>   
>   	return 0;
> @@ -206,7 +356,8 @@ static u64 swizzle_bit(unsigned int bit, u64 offset)
>   static u64 tiled_offset(const struct intel_gt *gt,
>   			u64 v,
>   			unsigned int stride,
> -			enum client_tiling tiling)
> +			enum client_tiling tiling,
> +			int x_pos, int y_pos)
>   {
>   	unsigned int swizzle;
>   	u64 x, y;
> @@ -216,7 +367,12 @@ static u64 tiled_offset(const struct intel_gt *gt,
>   
>   	y = div64_u64_rem(v, stride, &x);
>   
> -	if (tiling == CLIENT_TILING_X) {
> +	if (tiling == CLIENT_TILING_4) {
> +		v = linear_x_y_to_ftiled_pos(x_pos, y_pos, stride, 32);
> +
> +		/* no swizzling for f-tiling */
> +		swizzle = I915_BIT_6_SWIZZLE_NONE;
> +	} else if (tiling == CLIENT_TILING_X) {
>   		v = div64_u64_rem(y, 8, &y) * stride * 8;
>   		v += y * 512;
>   		v += div64_u64_rem(x, 512, &x) << 12;
> @@ -259,6 +415,7 @@ static const char *repr_tiling(enum client_tiling tiling)
>   	case CLIENT_TILING_LINEAR: return "linear";
>   	case CLIENT_TILING_X: return "X";
>   	case CLIENT_TILING_Y: return "Y";
> +	case CLIENT_TILING_4: return "F";
>   	default: return "unknown";
>   	}
>   }
> @@ -284,7 +441,7 @@ static int verify_buffer(const struct tiled_blits *t,
>   	} else {
>   		u64 v = tiled_offset(buf->vma->vm->gt,
>   				     p * 4, t->width * 4,
> -				     buf->tiling);
> +				     buf->tiling, x, y);
>   
>   		if (vaddr[v / sizeof(*vaddr)] != buf->start_val + p)
>   			ret = -EINVAL;
> @@ -504,6 +661,9 @@ static int tiled_blits_bounce(struct tiled_blits *t, struct rnd_state *prng)
>   	if (err)
>   		return err;
>   
> +	/* Simulating GTT eviction of the same buffer / layout */
> +	t->buffers[2].tiling = t->buffers[0].tiling;
> +
>   	/* Reposition so that we overlap the old addresses, and slightly off */
>   	err = tiled_blit(t,
>   			 &t->buffers[2], t->hole + t->align,
> diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> index 556bca3be804..246ab8f7bf57 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> @@ -236,6 +236,28 @@
>   #define   XY_FAST_COLOR_BLT_DW		16
>   #define   XY_FAST_COLOR_BLT_MOCS_MASK	GENMASK(27, 21)
>   #define   XY_FAST_COLOR_BLT_MEM_TYPE_SHIFT 31
> +
> +#define   XY_FAST_COPY_BLT_D0_SRC_TILING_MASK     REG_GENMASK(21, 20)
> +#define   XY_FAST_COPY_BLT_D0_DST_TILING_MASK     REG_GENMASK(14, 13)
> +#define   XY_FAST_COPY_BLT_D0_SRC_TILE_MODE(mode)  \
> +	REG_FIELD_PREP(XY_FAST_COPY_BLT_D0_SRC_TILING_MASK, mode)
> +#define   XY_FAST_COPY_BLT_D0_DST_TILE_MODE(mode)  \
> +	REG_FIELD_PREP(XY_FAST_COPY_BLT_D0_DST_TILING_MASK, mode)
> +#define     LINEAR				0
> +#define     TILE_X				0x1
> +#define     XMAJOR				0x1
> +#define     YMAJOR				0x2
> +#define     TILE_64			0x3
> +#define   XY_FAST_COPY_BLT_D1_SRC_TILE4	REG_BIT(31)
> +#define   XY_FAST_COPY_BLT_D1_DST_TILE4	REG_BIT(30)
> +#define BLIT_CCTL_SRC_MOCS_MASK  REG_GENMASK(6, 0)
> +#define BLIT_CCTL_DST_MOCS_MASK  REG_GENMASK(14, 8)
> +/* Note:  MOCS value = (index << 1) */
> +#define BLIT_CCTL_SRC_MOCS(idx) \
> +	REG_FIELD_PREP(BLIT_CCTL_SRC_MOCS_MASK, (idx) << 1)
> +#define BLIT_CCTL_DST_MOCS(idx) \
> +	REG_FIELD_PREP(BLIT_CCTL_DST_MOCS_MASK, (idx) << 1)
> +
>   #define SRC_COPY_BLT_CMD		(2 << 29 | 0x43 << 22)
>   #define GEN9_XY_FAST_COPY_BLT_CMD	(2 << 29 | 0x42 << 22)
>   #define XY_SRC_COPY_BLT_CMD		(2 << 29 | 0x53 << 22)

