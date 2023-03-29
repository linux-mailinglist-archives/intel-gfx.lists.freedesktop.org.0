Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D33E36CD85E
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 13:23:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65A5210E16A;
	Wed, 29 Mar 2023 11:23:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B51C10E16A
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 11:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680089006; x=1711625006;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4Fa68zAcmicZ7hJAl/JGfTY2eUV/Z8WTp4+T73nkk84=;
 b=mBYLFwG+igbODb/dnGqHGlrIPTDkgzctX9F3jEHepK4tV2yz/Vo8NkW4
 fdP12JVArMmMrTL/kXxu+1720mK2gyKIUg6zFAh+M0RAOcbADjq/cHnT8
 yTmxITOOX/8PvfZTRhyx70rjFFtFESkAv/G3IWiS0oH8geg/zfC2gN/+9
 N47obYh5SpKLU0cF8OcLE2kM303EElCWLoccepNS/719hIzrsm2+smQz2
 Gbfeee3jbODDniM1seNVkVBx0oXXwTUeo5FYJDt/96c/fqGomjV03RIWF
 FwPxPicChMZBpJEcWmFO52kySfle2bfiwKjqydybP6ee5QZ2yPeBmA4n1 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="340868265"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="340868265"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 04:23:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="773533147"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="773533147"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 29 Mar 2023 04:23:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 29 Mar 2023 04:23:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 29 Mar 2023 04:23:25 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 29 Mar 2023 04:23:25 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 29 Mar 2023 04:23:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZWPSdM8NK0DA2jtx+uh3hVEsMj/2WOw7GZcSoH623XUmIDJyUupkhwUagoHQ3N50Gu3j54oPiZh37z+JR+uyC8Rq4w5j75e477/7pFgTZl/0IGzZnwqrVWJog5xELvlcrdWDRUkkubQB6V4BLmERvBQkY/EQzXN93yvWWOKOJ0POdYYsX8tBNfuDM4PXuggdUGKNMvvFIMXpvxlwJG/z7IAiPjAPH1t0yygKSx4j+Gcmd5sSJPt8sqTfEhuUgkxGTTBmNrT2/9odGWvVzKjTjc5UiOuSYFB4fgDaITPiXCCoj69OjLwHkoPj6KnOoZApswhIGCVvgCIu14Sq7b9MPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VUqWW/7s4AU8M/ITlaS82CjYX/afEWpCdSMTWvsEAx8=;
 b=NFV/+kQlbB45KEtGNpaSMZW/lUulm7K4JMBYWqd6jU4lgWBW50i5J9l3Ul3R6IDKnnAKSMsm+2gO/hZi+syXDxV6wqLQvGVTpjF2MfVFvLmE6mx2RBWyOhPckWu7p/mp6etc3wV1xgi56CuD6CPtrQgUxEc5DLA2Cv2Lh8P7F7gdaYP3ieFPgaa6ggcOirVyQD+KlXzkqyNLtVvk27xO8dGfkHnhg+TjsUwuwPmwOH1KeAqDU1Ou6qTUXV2FIhgEwjKStskCFzJdzmGQslik22Ex5uXhwKM17EcdmdTQQzEL8fOw7bHQKqYzbSZA7xj4qXFOzQAK0EvxZzMVmylUmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW4PR11MB6666.namprd11.prod.outlook.com (2603:10b6:303:1eb::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.33; Wed, 29 Mar
 2023 11:23:23 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::9bb7:96e6:c81b:bcb2]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::9bb7:96e6:c81b:bcb2%3]) with mapi id 15.20.6222.035; Wed, 29 Mar 2023
 11:23:23 +0000
Message-ID: <abba986c-3626-2cc6-6d94-744e94d4ba89@intel.com>
Date: Wed, 29 Mar 2023 16:53:13 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20230329084449.717954-2-ankit.k.nautiyal@intel.com>
 <20230329090745.719672-1-ankit.k.nautiyal@intel.com>
 <ZCQY7n2Le5GDvLSK@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZCQY7n2Le5GDvLSK@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0036.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:97::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW4PR11MB6666:EE_
X-MS-Office365-Filtering-Correlation-Id: b9562187-5015-49f0-e84f-08db30480215
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bzMCsxCoR3O692GiVND0rKddLdbgiBLd/Va7euzsI2ScACt7QZtVh2BEtv9Xo8gVPbpZJhg7LOg3ggK0iBCEY/1NPbctW6OnwJWguhCUXdc/MTSykTKTpwkd/ehWUArUI+jo0R4p0vZMqEL0UrySIu4c25XjgkHF+ripyvzwTbGlwMoD/XaJAzPW6nhXqxI5VazW4RIVV3f+jvgK+0CcRjDh6/dshjkEJyvPpTJnzNLK94It+gAEnktga7Ar/uW1bTlwB5WuINbx/9V2ZRqMH4zF4TkOXr5W9qmXNiVzqyx2drHwUmsWTuYqNfaEgULccOzsrrgMrs9zuvVfUcFwy+GqjVU6dJdlEIFRjZ0YfDMFPrZxetSpv2QUGlVEzH3b7NPNeV7du//AYhXjFzbEGEgCHTMmc3yFbrO6UEFH6EJLK90Bz2gJqcBzQvolpmyIXuOg5MyKKJcNuDQnJIIFM53w+h+DRIOR2maRVOGtTwefg98zllyiIX//kWPydkE7NvI489+UyEHMkpHLdRLEpU9bn0bbV+hWGfN7Fse729aLjpJgynG6cvAyT37m7LNjrftgtwTK3VheoecNGrqcNNFErVZGdukLsh9aYGQocUTfRTTiSjo99pk/8R/4/AseQr04dbTPmSQZ+whpwIoNNg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(136003)(346002)(366004)(39860400002)(451199021)(6666004)(6512007)(6506007)(26005)(53546011)(55236004)(478600001)(8936002)(5660300002)(36756003)(6486002)(66556008)(66476007)(41300700001)(66946007)(4326008)(82960400001)(6916009)(86362001)(31696002)(38100700002)(316002)(8676002)(66574015)(83380400001)(2906002)(2616005)(31686004)(186003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MWc2UDVMc1luZmN0Q1lGZExhaFVrd2F5a29pazQ4UUpTQXU1dkFqeUJYSDRo?=
 =?utf-8?B?dGhEK05JNjhIa0NzT0RpZ2UyWXpIT1lUUVd0cGlVZnp3ak9WNld2RXQwTlAw?=
 =?utf-8?B?UVdQMDhqNFB2RUlKZHRUR21WWnBsdzlwL2daVVRCQVM4NzRPL3BZRzZNa05E?=
 =?utf-8?B?ZUFNV0dTZnl3OGZnRUxjL0svZ3R6OGVIVFg0ZitwdDNsaXlQVVpHa0EzYmVh?=
 =?utf-8?B?dTBvWmhxak10WFgvcldlNjV5TmJHaFhmNlVDS0FINm15cEgzQ0JtY2lxekRR?=
 =?utf-8?B?WU9GNkdNSEVwUDZJbXZ5RlprandHNHA4WTlKN2s0SHFyMnRFNFNpNUU1aTM5?=
 =?utf-8?B?eFVSY2htak9CNTc3VWtvMkpubGhYYUlJRHBkaFMzMG5ackRJTDNMSEZQUDFM?=
 =?utf-8?B?djRYRnE2bFZYRFplaUlmckNMTkJ4MnAzTDVETjdvMVF0QnB2b0dTbEU1bU5u?=
 =?utf-8?B?cC9Qa2JNc1RoUENTRUVmVHU4Z3pyclhPVUVwV2xMZDlkcEFvdVJRckJPU1hR?=
 =?utf-8?B?b2ZlUXpjemJ3TTJTZ3RKVHBVNmNQcWdCb3pHalAza3BXYjFVRHRxdERPWUkz?=
 =?utf-8?B?dFdIL3V3emU2QllzRVN2bUxCQWdwWVo3Ni9jSHRNeHFheGNSbjNJNFIxd2Vt?=
 =?utf-8?B?eG1XbXY4ZDhVdWFVTjBveElnM0J5Vmg5QTRmS3dyM21TeVY2KzZBTzNHSmYx?=
 =?utf-8?B?b3FqWmF5ZTlpYkVTWWtwQ0RQSTVDQVhPZGhBWGNpdG0xTHZtc0N1eXpHUEQw?=
 =?utf-8?B?SjZ0SDBFR0NZVVMwaVI4RlVhZHhFb0J6c0RXM1Z1aXllYmxkbVBaWWFvMjhq?=
 =?utf-8?B?aDRkNHAzT0Nhc2IvM0ZrVU55K0dpbDhDVXBETGxvSTVteEdyTnFQejBIZzg1?=
 =?utf-8?B?c2YzVS9WdEhvS1BxWmlNRWgxUGlEeUZOT0pyL2ljMi9jYlhidVRGUlU4NFRF?=
 =?utf-8?B?M3U0SW9DY2o3bHoxSjRaeHZDemR5bjNWYktRdlMySm41anRsUnBtbis0Vm1D?=
 =?utf-8?B?ak1DZ0lLcWNSU0JPQXFPbzNXWXJhS0pzMGVtZGpRVVcxTWJBN3pEcWtMeGtz?=
 =?utf-8?B?SW1CYUt3U1c4bjVvNlF3MUk2elF1VVBZNDNsaCtWWHNDMWh4MmFkRUpBRDZT?=
 =?utf-8?B?OFFEcnFzTU9YQkhOWk14OHNobnJhODA2bWpIa3Z1VHZGWjdON2tZdEpUeGsz?=
 =?utf-8?B?NU5BdGc1WFNhdkFwMlRJbS9DRmdGNVZONkswMXRQbW43YkFHaSt2RWh4UzJt?=
 =?utf-8?B?UjFBaEIrRFM4a3F2dTJZdHZPeDlVQW1IM2o3VEg3cGhWa1cyKzRhNGJwN1FD?=
 =?utf-8?B?bDB0em5rNGxBL2haYlpFS3kzK1J6ZTJQZ0NoUlFzWUJvVlRsdzZ3NjlBaEhV?=
 =?utf-8?B?WjJyZHBJRjh2WjgwUjlUOEVNcG9TbFI1MHpqMFZFcVlMMHFOR2crb0lHUlNa?=
 =?utf-8?B?ejdPVmVZMTNTYVNBMnlTUHkzaEtQWTdxVDZqdVJYRWF0Q0FucHE5ODdaUzRi?=
 =?utf-8?B?Rm56WE9JUXU0d3RBaXpJYUJDWENnd3B6V0RmS1hHczBxSVhTWnhHcjRuWXdY?=
 =?utf-8?B?OFh4dEtrRmN4cDAxWlVMMzhlUkpKQWxIcmgzay9nRzVDdVJaV3M1MUV2Q0Q1?=
 =?utf-8?B?aW1reEN2SUVFRXEybFN4QUtYT2JEcGtnUUFJeTJZVjRUc3VsQTlBVTlUVXJp?=
 =?utf-8?B?Wi9sdTNuYlpSR1YxWTFDSWNNWmxxcXRCeVpDQU8zeFVoeFpaN3FESXQ5LzNo?=
 =?utf-8?B?NXdralp0c0NWUnhqRkV1eVh6VDBIMkRrY2J4WHRIZ3JpVVhsS1AwaVFYSkJX?=
 =?utf-8?B?c2ZWVDJLTmtxSHdiblJXWWZaSXJwaWw5TEZacnBZOXhDOUw2RHJQUHlQZXFo?=
 =?utf-8?B?OVFacnlBZEFTYUk2Z2F0eGVnRjF3QnZ2czJlR3R0dWlNU28zbDZPc2pnVDVH?=
 =?utf-8?B?RWRhVm15emU0QXBVd0R3aEV0VkZtOVd0a2I0dDYxU0dEZWh0Qk00ajZwNHBn?=
 =?utf-8?B?V1NSc0Fld05UQ2hrVkVRV2hqWk5DUXQ1cjY0UFpFbGVzQ1JRWmllRHRPa2NF?=
 =?utf-8?B?MnJ6Q2lmcVQ3K2ZDZUVyczE3RXo4NTU3a0lhQUh0bDNCTVJwcnB3KzhUL29L?=
 =?utf-8?B?K0dtUGU3OXVXODIzMzhIM2R1U3kyTDJ1RTZ6ZnpFKzB5M0FOWDNvQWFSNjRt?=
 =?utf-8?B?T2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b9562187-5015-49f0-e84f-08db30480215
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2023 11:23:23.7607 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mjkfZMWR1Tj1xH8IJI+AVZct7QHtD8OBONAbYiRkz8IuTi/CmMeEFQ/PxPxUGmlD8XvVz3t52qWTsnjeP9CaXd9m/D57QIhpYgRlceWHp1E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6666
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/dp: Update Bigjoiner
 interface bits for computing compressed bpp
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


On 3/29/2023 4:24 PM, Ville Syrjälä wrote:
> On Wed, Mar 29, 2023 at 02:37:45PM +0530, Ankit Nautiyal wrote:
>> In Bigjoiner check for DSC, bigjoiner interface bits for DP for
>> DISPLAY > 13 is 36 (Bspec: 49259).
>>
>> v2: Corrected Display ver to 13.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index da1c00ee92fb..0b59c1e53678 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -756,8 +756,9 @@ u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>>   	bits_per_pixel = min(bits_per_pixel, max_bpp_small_joiner_ram);
>>   
>>   	if (bigjoiner) {
>> +		int bigjoiner_interface_bits = DISPLAY_VER(i915) <= 13 ? 24 : 36;
> We generally prefer "new -> old" order. So please flip that around.

Noted. Will do this in next version.


>
>>   		u32 max_bpp_bigjoiner =
>> -			i915->display.cdclk.max_cdclk_freq * 48 /
>> +			i915->display.cdclk.max_cdclk_freq * 2 * bigjoiner_interface_bits /
>>   			intel_dp_mode_to_fec_clock(mode_clock);
> Hmm. Why is this using the FEC adjusted clock here?

AFAIU we always use FEC for DP when DSC is enabled, provided sink and 
source both support FEC.

Bspec mentions : For cases where FEC is enabled, pixel clock is replaced 
by pixel clock/0.972261 in the above calculations.

But it seems in this whole function we need a check for 
intel_dp_supports_fec() before using adjusted value.

Regards,

Ankit

>
>>   
>>   		bits_per_pixel = min(bits_per_pixel, max_bpp_bigjoiner);
>> -- 
>> 2.25.1
