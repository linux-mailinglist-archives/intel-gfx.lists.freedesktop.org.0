Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BED0758E39B
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 01:10:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C124DC0BD;
	Tue,  9 Aug 2022 23:10:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F3E2DC069
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Aug 2022 23:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660086627; x=1691622627;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+aJvgATrVNLfqJJjKLMv4jwY3SaRlLm2loKJwjIvA94=;
 b=hJxPoPiPkLzrNptS0CxQ6aQfx95izaaVbtVF8sCxVxFGgoDFODeBpHaE
 ZdrHcZF3hVd8YBxCXtJo7WdTWt2QqTrqO3QSuKWsvD7avP1z3Dqnf/osg
 mueXsi0rRxiFut9ZWCJJkAERJliOAg3BVsKqrq8gJSK3l/8+nz3Le1I2p
 wlyjyynT4RqzKtxXJZbqcW3tGZCX74Cj5rp1mt+7kq/7/8497pXkdtX0W
 EHu8qP6bl4Thu/N4Evx6MJH4oTxBbtBjG0cK8oUsiv4GPb8rasunh8NnW
 busC56ihzlcISEdRvD86vz3Jytim8ihrXl62VysAx26u8kl1bkKBRJzD6 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10434"; a="352685720"
X-IronPort-AV: E=Sophos;i="5.93,225,1654585200"; d="scan'208";a="352685720"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2022 16:10:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,225,1654585200"; d="scan'208";a="747218152"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 09 Aug 2022 16:10:25 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 9 Aug 2022 16:10:25 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 9 Aug 2022 16:10:25 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 9 Aug 2022 16:10:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DbaQOwVKrugKrjIY1Wfu+qTZ2ByAgHBe2Iv33RlxvemkBqG9yTlV52WK6IJJz8Cp9dTFNWonR2OD6zT4jhEBY4duH4jeqD/DVUObvv+RrXLDbffphWiuV2zrlmy03TKpHrND8PWjzgLRzU2QGB8CA7849ujITqxxV5Ul5BkouLLTNBAGqtxB2f/Z2EkN/s+kRuo1GikEqiXOyvMEyHCQkvsOfSMrtVROOk+A6IZO5UaFJ9NzYEzEkydOBfsOtL6Snff0LjcQIYF51FQCr5NwE/RjUfZepXyAuOfmDC20/6pN4juM6ZefnrW1eBDk623Lzoe6CJn/t2UGn690fXXJvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ui3eNexV7e32uj/B7Rjhf9yt8zLC9tX1WyYQ7ENm08k=;
 b=KB5gDaaOj9XBMqiE2Qb5lR7yTtM8sFGruxzOzMEjx9/zIbf2w2XKxWO2OdO/qarZn29EmcQXtzGgx9QiPJNDp552ZwUzlRQd6OS9jMcymE0TzSPrguB0agqalF9LWlyd/VEACCDcAA0YcXE/xv/IvCuoiPXImt99Zs0NFtSSnG/QhjZ7Mnr9qOZ21jiaQO11qK5DnCb/fh1r4RRienCOYiMEDKp1K8NinImiBnjIUSxyg8SJNVQE/9ft8z+EDvyFbDMZgcH6MWQ+tsF0z/bLitZbxL6D23mXZ7fMvN4ch+INb9YhXFSGNrM1QY/pTdmOVn+q6+veIBLZlslCqzb3Kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 BN6PR11MB1281.namprd11.prod.outlook.com (2603:10b6:404:47::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5525.10; Tue, 9 Aug 2022 23:10:23 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::1977:59e7:5a28:24e1]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::1977:59e7:5a28:24e1%7]) with mapi id 15.20.5525.011; Tue, 9 Aug 2022
 23:10:22 +0000
Message-ID: <281b60de-017b-0b86-d35e-ee7bc619b1db@intel.com>
Date: Tue, 9 Aug 2022 16:10:18 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Juston Li <justonli@google.com>, <intel-gfx@lists.freedesktop.org>
References: <20220809225700.2002634-1-justonli@google.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <20220809225700.2002634-1-justonli@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0108.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::23) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4198e812-5fe3-4f41-ca9e-08da7a5c556e
X-MS-TrafficTypeDiagnostic: BN6PR11MB1281:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AJ6eRTibQNjUM+hJc3/cGxvxW2NOJ9H+nIy7v4E7S655ylaXI11a5yWJymnDshFsMcqohUq0aSZEHIJpS5DrRxiATZ54C1ZOCKIL4Qsihb7/2+wPqeeeyGYl/9hyA5007P5vCOjAt6ATtTd2xkzIf8pRRWOW/2nhRfuv870APtya7aUR3XE6WUd9mLNSRP8t7XG2lNFp0WYztuYPUmqrvZvRWaADdTonB+Q+KHJkNW8ihE32mK2s3KOBcEUilCiqHE6yKRDPT14XCGp0VWXmPelvnmULSAr/zdblMjQDZMEF9wl6RdVWf6dLwLVw9XDFAxaSXoObcayxeE3CdWnhg8K2IXKmsXu+8oCfwXlKfuisv6/flNi83T3CJ7PFVKNeR+l5IrSxwtGbVr9236unbc+vcDIhnaGEeessDUF3IZ97bdPZDBMF30/NrwoTmlhWFdSIX/1ah7bHDbkzKkctm0TdyH4l1tn9fv8eY0/83PGTbpXp3InFj1MwsdTwvaUbHVa6Z79Vu7aJ4FNGr8Wm2U3Ad1YyABcmPmsN1hbkdvqT+r2VGy4vWuWLGOYnfqGdh/gD6XTMfIRKxCTGwcB6iQOIKpKSkqXUOnFjT6lJJX7rbUn+ArOy/dnD/CMCD3ubw1kv8obzBaN2v5df+B3Xo5203T/FKPW98vjNpCNUKhKdLploljd3qcr7HJEEWPAiTADsGkGcN+f1w6r7bLV8OnANRNfNTc2+Fi4wVIFW5wlzLIEDfgN/elwxF389XWZYU2J/EESXgt6TBaeq5vKbfhNBQHTypEtG+2ueVavvQ/fYPKiAn1uPE26+K7JX5emYld3TfTH9ZU1UcFXaarScUK6UVTOS0xKeMxuaLqyYgPAVumOHC5YTvjCzXKrrvepJ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(346002)(136003)(376002)(39860400002)(396003)(53546011)(26005)(6506007)(83380400001)(186003)(6512007)(107886003)(2616005)(38100700002)(82960400001)(8676002)(5660300002)(8936002)(66556008)(66476007)(4326008)(66946007)(2906002)(6486002)(41300700001)(478600001)(6666004)(316002)(31686004)(31696002)(36756003)(86362001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y2JuSHI1V3ZlQ3R4YlNwSVlyZ0VRbmJMN2I3aTUvbmUwa28yNlJoVG84R05p?=
 =?utf-8?B?SEhTMVpqMlRBcmhGa2kzRVFINXFscGlucmNBTzZVTU5BRGJ5eFl4b0N6ckFN?=
 =?utf-8?B?S0x2NXFEZm1tVitYTnNVbVFZWnU1cmdiUk9EUVVidTdSYVMwbFltMDd3Y1FE?=
 =?utf-8?B?cXIxSHZXazlOMmh3R3RRZ3ExSVJsOFNOMTFSNEJyTnZCZjFUcVdsWGNoVDNH?=
 =?utf-8?B?WUxJM3VROW5za0pmNUVqRUs1L1dkL1FZaUhsS1pQUC9kaDlGWWVIR3QrWE80?=
 =?utf-8?B?SlJ5YWgvbk1qLzIwdzlPZFdpUWE1eVUxa1V0RU5mNHV1T1luNkk0TFpJZjR1?=
 =?utf-8?B?emdLYitVSmpFOHFOMGYvZTdoVDMycFdpZUxuUFlCMkpmTnlOeXVCbmxqaVhh?=
 =?utf-8?B?ZzFqNXBlTjJua2pqUGpYeHl2NFd5M2NKK2tVUGc2a1Y2SlQ4UHV2a0tENEwy?=
 =?utf-8?B?TStUWnRPMnYrdXV5Z1lBU2lUV1RZZ2NBK3kzbndTa0pySXJzVW5mNTZBR3Jj?=
 =?utf-8?B?U3M2V3NXN1Y2ZUExU0Nyd25uZDIzMklBQnpmYnBNaE8rRXl6L0pTcDVDTDRV?=
 =?utf-8?B?MU8xODdiR2tJUENHeXNxUlZRN1M0aXBLWmVIYkQwYTUrSTUzaXVsN2lEZ0Y1?=
 =?utf-8?B?SGM3Z25yOEt2NFNhaXFpOU1NZy9Pd0ljSWpnNTIrTHJjOTdTM3NjM0dLNkFF?=
 =?utf-8?B?a2hYdjNhVzZ6YjJBdzBuUHZZZ1dpYThidVMyZ2RvY3hISEpuU1ZjSGsvQUlR?=
 =?utf-8?B?bVdlNUovdWJyNEFEMTdxQVFTNXhjVTRNZ1I4ODZPM3EwUGNwcXY3cThEanFs?=
 =?utf-8?B?ZFZJMmhCUEZybTNQZ2kzZ1M0SlpFS3BZQlRyKzN6NzgyWk0wTU9ScWxIZ25D?=
 =?utf-8?B?alZtV1JXOGw1S2s2a2F2bndXdU84MlZQKzRlMmhkNUo2aHFEUFI2ZUFsZ0tn?=
 =?utf-8?B?QzdVdVVZbklKK3k0K0tMR0QxUUphSzVSYkl4OFlXUGdGUXBUWUQ5MXZZcDRH?=
 =?utf-8?B?YnA0bjQvTU5pUEdRMmtmVWpvMFIwY2tGbXd1aFYxRy9MTE5Ed0g1MVpCYkM5?=
 =?utf-8?B?ZEpoZWJvTU4wUHpFZy9YazVqRWZJeExUN2tPUmlQTDFuKzl4UXZzVnF6UG5Y?=
 =?utf-8?B?MTVid09PYW5DWTNDYVVOZFltSjRWMFcwMFpOMmszOVFWTDY0ekVid3VMc3pm?=
 =?utf-8?B?YnNiOVFDMi90bDdSNkUwclNDWGt0a2pKRHJWVkJsdWM0elBOaFZFRllDWXQz?=
 =?utf-8?B?WWhxS3FiSytlQ0orcEJiRHE4cmRFZkVqQnB1UGltOWdUZVk5azVhRkRmV2Zo?=
 =?utf-8?B?WDIzWjZuNFo0MWlLMUVNZkhmeTJFclB3cmVTY3JtanRsSytrQmhGd3RPMzBB?=
 =?utf-8?B?aEUvRUhpUEg1NHJsWEs5U1JkckIrWWNPN0Q5QmhldlFEVTVpMUF1K2k1THp2?=
 =?utf-8?B?YXRyc0RvTko5NnZNK2M0MjJFSU9HRUNicE9MQXhrOW41b0YvbGRLbWNLZW8z?=
 =?utf-8?B?K3d0N0dXUDh0anc1dllLbWZNZEhjL2ltSnpaQWFlU3Q1bWNqc2k0eVdJQ1lL?=
 =?utf-8?B?dFhUTWhHMTQvYTlCWXZMU3VTd0h4Z3FibFdnSGFZRk14YTYxVllkN0cwVTdE?=
 =?utf-8?B?TDBKTlc4ejBFRzJnQXkzZUtCSld6UHhDUTd6Q1NMajdncFdwM2hvM2RiUGZu?=
 =?utf-8?B?MjNaV3loUnhVM3F4cm5QNlNQUVZsTm42T1JIWTV4TkRiWmJsTXRWNG5DSXhj?=
 =?utf-8?B?dndvTU9icnVmanNxTGRPM1NSbjR6bDlhR05pbDJMcjNJZlVXTzJibDYxeWNS?=
 =?utf-8?B?alFpcEl4aWJiakZsYlVQVE9qc3A1eGFIcXdLNWo0UHhxejV0MXBXSDNnS1kw?=
 =?utf-8?B?bS9BNnFyNFdRNC9VQWRXZ3VUZUlScXZEUVlKTnIzNitCdkE2OVlKMEJEMi9I?=
 =?utf-8?B?VWx0YVZ6MXFQWlV4MmFzNGU4Sm4xcG5hRHJiOTZPWTRGWGtITlJqd1BBNENl?=
 =?utf-8?B?QjFhVGdnYUM4bU4vb2VqK2ZpeDRhUk5INksyVDF4a2FFUEJrZnoyZ3RJcXdF?=
 =?utf-8?B?bWRUbG5iSUhNR2YrYkJBMWN4MjZ3UVlhL2JUb3Zub0VxTGNWeUJMM2ROcS9J?=
 =?utf-8?B?aTA2Qk0rT0RLQTcvUGZ0RnFBaktuN2xtVVFuQytrV3RUVXQ5ZDBubUl4NVlv?=
 =?utf-8?Q?vlnttWv+6Dwczvi5lty3jGY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4198e812-5fe3-4f41-ca9e-08da7a5c556e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Aug 2022 23:10:22.8216 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x0vvFh4fwALUtv6ZgXH5/vfIlkhxXdWHLNuN9Sna36ylZiXhS0MEE0dvFI9FR/32E0gm3fQ9ad+lkTZ/o4KfSQ6S1SlJTFAmiSjLL3iKAsY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1281
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pxp: don't start pxp without
 mei_pxp bind
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



On 8/9/2022 3:57 PM, Juston Li wrote:
> pxp will not start correctly until after mei_pxp bind completes and
> intel_pxp_init_hw() is called.
>
> Signed-off-by: Juston Li <justonli@google.com>
> ---
>   drivers/gpu/drm/i915/pxp/intel_pxp.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index 15311eaed848..3ef9e4e1870b 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -184,7 +184,7 @@ int intel_pxp_start(struct intel_pxp *pxp)
>   {
>   	int ret = 0;
>   
> -	if (!intel_pxp_is_enabled(pxp))
> +	if (!intel_pxp_is_enabled(pxp) || !pxp->pxp_component_added)

pxp_component_added being true only indicates that we've called 
component_add and not if the component is currently bound. For checking 
the current state of the component you can look at the 
pxp->pxp_component pointer, which is set/cleared on component 
bind/unbind. Note that pxp_component has to be accessed under 
pxp->tee_mutex.

Are you actually seeing a scenario where the user manages to submit 
before the bind is complete? the bind is async to i915, but I've always 
seen it complete before control was given to the user to start submitting.

Daniele

>   		return -ENODEV;
>   
>   	mutex_lock(&pxp->arb_mutex);

