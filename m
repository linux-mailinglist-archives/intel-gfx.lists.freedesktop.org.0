Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C76794D7A74
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 06:41:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B71C610E2E4;
	Mon, 14 Mar 2022 05:41:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE96310E2E4
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Mar 2022 05:41:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647236469; x=1678772469;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gDSxC7Ph96oopwX8qbA5iOWL6AqByf6CUP/gZBlF+60=;
 b=Am3SdJ5i8bv/qzIKxleN85Q5pzBX8MJBsJ4mpMxS+BtWwvq57F4GsElJ
 yMYyIF02aoNL89mhSnUnvjvT78+zvpzg+cErjWnQxGzFFTkj/3mv3Msxq
 MtyfXg1s8lBtQU+hmR5xlFogacn6jVMHaHLUL3Y3efkZ0pSe4nj/OohWB
 lKV19faaQRNSZWwwhM7/zot4FtT0Fjj7NnpSN1s9+C8aeRh8Vet/AkKcF
 zrztLPlXoEeSrqqm1qqQzqJvSllp/F1qjjna5CFZTcvvEZG7qf2phvykC
 gE3Ow3mLf40NdvLrczYzRKWl2lG0jAp3ABI8RK8TU/jTH9hZ/UUA0k5Qw A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="255892185"
X-IronPort-AV: E=Sophos;i="5.90,179,1643702400"; d="scan'208";a="255892185"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2022 22:41:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,179,1643702400"; d="scan'208";a="713584028"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 13 Mar 2022 22:41:09 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Sun, 13 Mar 2022 22:41:08 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Sun, 13 Mar 2022 22:41:08 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Sun, 13 Mar 2022 22:41:08 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Sun, 13 Mar 2022 22:41:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RtWZ3ky/iNed7SmkThKxsWxk9z9LbP4nsHPnV36llrpLfCmTRUCYqpVU2JZulhUkhdmny+b+nrveeEEWPC6NpcMQDtUvUq45if5qma8Zv3Ye8h1QDLxzDp8z3+UDtW784SnyPHeSNXM3AYTrfllFfZjf02BSK6KTPYN4m2n4NvmgCFIuTZxOo4hzgCSMkmdUyi7717QplPpijBRbuyDuRoJGq/XyVlHGexdCQMCv+jfmTGY4vGqL2U4vsrsaXK0ZakS6ojZvFyR0E+USXrE+fD2H89vR2+0YVn9tKIOgEYIlsYZOcmnfqga76hkPJZg4eRGbzoxp++mSW9LZb7G+SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gDSxC7Ph96oopwX8qbA5iOWL6AqByf6CUP/gZBlF+60=;
 b=KwenusBsvPMjUv0Egu404z1cCsCu8qR6QYnxHtnjpWE+8yN9iO6uAOb5nQccD7gscFWHRTcswDIuAW5wkOQQayVKcDunEbDtb24qwEaCnVmQnj+ZiuwfprRSU8LfuLcgNoLVX5tXhbKjQoD4mLZAvSIlSMKP6I+IMPETOHuoIYdYStFej+0SEDsv3F5pxLQ8pMqWe93D18TFLO362Xzw4s+no8w7iwhhM0q/bvpd9d5KQBvs4xyKoWGnR0k6HOuPrhYB8e2CH/XKUktj0sz5jn7sIC6zzMhGitavTJwC1TB77qDW7mTtj9RLl5E9HHhNIFcUgW6dGLm98kkHb2V6LA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5231.namprd11.prod.outlook.com (2603:10b6:5:38a::19)
 by SA2PR11MB4811.namprd11.prod.outlook.com (2603:10b6:806:11d::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.24; Mon, 14 Mar
 2022 05:41:05 +0000
Received: from DM4PR11MB5231.namprd11.prod.outlook.com
 ([fe80::b9aa:8cfd:c3c1:1cdb]) by DM4PR11MB5231.namprd11.prod.outlook.com
 ([fe80::b9aa:8cfd:c3c1:1cdb%8]) with mapi id 15.20.5061.028; Mon, 14 Mar 2022
 05:41:05 +0000
Message-ID: <51a7d451-88d0-bc5e-c714-28334ce29c1b@intel.com>
Date: Mon, 14 Mar 2022 11:10:56 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Lucas De Marchi <lucas.demarchi@intel.com>
References: <20220308093805.879262-1-siva.mullati@intel.com>
 <20220308093805.879262-2-siva.mullati@intel.com>
 <20220309011309.v4sn24fa5aft6t72@ldmartin-desk2>
From: Siva Mullati <siva.mullati@intel.com>
In-Reply-To: <20220309011309.v4sn24fa5aft6t72@ldmartin-desk2>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CO2PR04CA0145.namprd04.prod.outlook.com (2603:10b6:104::23)
 To DM4PR11MB5231.namprd11.prod.outlook.com
 (2603:10b6:5:38a::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3cac09d3-2436-4427-5f04-08da057d3b9b
X-MS-TrafficTypeDiagnostic: SA2PR11MB4811:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <SA2PR11MB481150FB536416D18ABEF841880F9@SA2PR11MB4811.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 95/fgyYRHfkRVWiyrYPeLNbQWnKCNlg1n2fl/d1ifHkZfLvGcJd1sYQHUsopg+0UW1YApMghmvrbQpFUS2N3C7wNr19Yj/GBjQNq6Fctwsj9zZjDbVvljBADyiHh43UXU7O81RsdF1RgsfDfGbBXE4DYlPxTabq6smREMaAT8aLDmwbBaRATjKVcvhDudphWDQRykxYzS8RO90swAv28Rj41ISwMSWn0tDxNcXpIRDqAIBC3kDpmNq8gSNSSbeSKnzI8SW7ZJz1UDb5Xvvy59v7yBOz2ZRm9u0+9dPXOvUUHA3bhGyJMLLvgH7zdImij0icZQizOqZldQbEMhhCXdva3atpbA7Nb+gozGSedZpoC5oJNePbfblHPjRnWSty4mSOdoVfezM14yq6nXZAZSPpWCv+0rWr8cGX9jbqJTZDWEx3M298oWrJtcH6LD0fojuZwm+A87aUIMMV9aG0MFnzfh8GYwP18s/cWOX+LInHuCMJk0AG3RaJ0gD18ZHAhnxWb2dE+TBzB9E5kKemEhYZ4hkV6cpTfPEdGAwCnc/p8AeuMhSD3F7GoKhJYddnSbNiqP1aTzGcWjTQaIjpnAcz5mPQmI5SyiNIKTHv/5FOlJilRca8pHX0S9Gi0emEU+pn4CCSzt/nyLkyzVuxE4o7GeCL9rf6ZqGo3mT/J/DCYOHk2c2BsXI5S9pqr93ygyCDf2lOxyqtNma68uyX8M7gK6crevQs0DV+fcj2BAsA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5231.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(44832011)(36756003)(2906002)(82960400001)(38100700002)(31686004)(8936002)(5660300002)(37006003)(6506007)(4326008)(66556008)(6512007)(508600001)(6666004)(53546011)(83380400001)(66946007)(6862004)(8676002)(31696002)(66476007)(316002)(186003)(2616005)(6486002)(86362001)(6636002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Zm5ZT2RkSFhpZ3Rid2hUNHo1MU5WaGx3RkdBQXA2VlNqQVBhM2hDMHlhYkZU?=
 =?utf-8?B?ZVhtaEh1dE0vM3luSFgxR1JuNWtUU3BDNGM1TmFmWjdXUnRVZWZxc01mRERP?=
 =?utf-8?B?NWNNU3l2MUkwM3d2RzBMWFVqQUY5SFJpRTRyN3oxZjNyOXMyUnBXM1ZWUjVw?=
 =?utf-8?B?YU1wTVdjTFhvTXBMQlBlT2NrS3p3MmJwZE5ReU55M3ZFaWlibnBHeFFVZnZT?=
 =?utf-8?B?NHNDTGJvV2JUMklHZzd3OHl3RVB3b3pqZkdocmFDUjhOVE5sVDdpTzUwQXNZ?=
 =?utf-8?B?TEFydU5DTlgwMU5RY1VOejdnRWhDQjFHazRzeGFNZG5hYlU3MWFlaHU3eXIz?=
 =?utf-8?B?WUJZNlV1WWh6ZzE0ZTlSSG91aWRXL2lmU0JldEF2ckxtU3I0OWhEbk5OZm53?=
 =?utf-8?B?UkY3b0RvNzEwSU9OME15eHp4eFo4ZExKY0xzVGFjSmc2VHFhZU11NTB3elNM?=
 =?utf-8?B?dE9DblJkQlU1cy94UHpEUHozVUl2dHBHTE9FZ2RIMXJRcmdTb01hUzFoK0s0?=
 =?utf-8?B?Y3ZhNGlNUnFQUDlPSytad2tiZnRVTWdidTVBZEtwL2IwTnk0a3ljYWFiQ1Ba?=
 =?utf-8?B?Y0p1Z3BJdDd2SmYxTWhBeWpiZWdnTWdlTFJkc2F5VlpwaktTUFF6NVVJSyt6?=
 =?utf-8?B?WU9DclBqU3ZDNWh5dHh4RU9VN0kyQ2RUT1ZLZDFjbXRUUHh5aUR3TjJ0Qyti?=
 =?utf-8?B?bWNuS0F5T05SOGIwVWZyR0E1YXRJWTZpVzlWdDBGRmJSVWgwL0p5TFBDWUND?=
 =?utf-8?B?bUwyYnFQc21yTTRnWUxSTzFveVVSakZPMkNiVW1oRHBGV2pYeW5nQ2VWU1pr?=
 =?utf-8?B?U1dXRndGdGRKbzkxMjFjMFVEZzN1ZjR6bTVZMmhCMW1jNzNTaS91N1Vmc2R2?=
 =?utf-8?B?R21kUXlRbmM0elVQaWdVMk1TT04zQUhQSXE5bENmU0JUSysxRVJuaVFmUGdj?=
 =?utf-8?B?S0tVZktiU3Y1K3lkdWdCc0lQdHhaQTVIM1VFRzFCanVKelVnZG9iUVpiZnFi?=
 =?utf-8?B?OTdmWU1JOEl1RzVjOGJFbVFlRVpqUHVSalgzS0o3aTAweG53Y1c3TnNLMG8z?=
 =?utf-8?B?MVNKd3BCSG90cVZVY2pJNWN0RjVkWUJJSUFnYit0L2xTTnRXZXRKbStlRGhQ?=
 =?utf-8?B?TGdVL0h0cE5vVWJuY1VoVGRLSHd2R0hnc1dndWlHdGdwV2JRc21xeHE5Q3JS?=
 =?utf-8?B?QXVOOXRzOTdqZDd1Um53RVQ0TDh6T1IyWmVvVnpnQ3lPQ0lLQmFUQ0h3Uzg0?=
 =?utf-8?B?bElYZzVyK3JwbkV4eVlEWHowbkVwdDNTMld1V2Z0WmRoeWNUTUg5ZmpLUERp?=
 =?utf-8?B?OUtNcVd4UUJaYStqbXc0bzZoTFBhNEJwZDZSUXJaZDB2OEtNeTFtSTdVNE1Y?=
 =?utf-8?B?SnQ0Qm0wUlZycjRhQVFOdU1TaUxhNXVhYk10Y2p6UjIvZzRsdCtubWxFZWI1?=
 =?utf-8?B?OUh6WXRpbHcvOU9DbDZJQnl3NklJY2dFWXFDUmZvZVRTUlhGVkNNM3YvVmwz?=
 =?utf-8?B?VHV1NmR2dmhzR1hTdUdTbW12NU1qa3ZrUmhHbUw4cHM5OVN6cllWU0Z6RW9U?=
 =?utf-8?B?M05mMXdjZmJ2Y0hkVTNUa2MrNEdOK0pKbGU1V1JQbVRQOHRiRFYrTitmWmE5?=
 =?utf-8?B?WCtnQUlINWgzZ084QkwyTXZpZXppQzd1SDNRR1Z6Ykl6R3J2VFFRd0xYN2tR?=
 =?utf-8?B?MGhLS2k2ZGNvQndCRVIyM0s3VUVIT3NiWHRpVzMxMlNZWXhKQThmd3B3Lytw?=
 =?utf-8?B?c2lFMHdlRDRaOWJqQlQrTlBYUG5CSVhCWFpkTW5sYnNjcTBtSG9QMFVEYVlK?=
 =?utf-8?B?ZnhNb0J0ckxLbm1LaG5NRUtOdndaRmFBcWxCdCtDcXA4cGxCbnA1TE0zakJF?=
 =?utf-8?B?TnVTeU5MZXpobW15QW1UcmJ2dE5NWUtpMklwMVd4YUUxcHlOSVRjRS9IWGI5?=
 =?utf-8?B?WTNkOUxXajdxeHprSHlacXBsaFVOQkxlQlV3TjlDekdXQjZMYlZrT0Y1OHNw?=
 =?utf-8?B?VjN5L28yWDRSSXRTTGtIR1VHK3JkVGZOWHVWcVhxZ3R2dFF1ZGREb1IxbmRh?=
 =?utf-8?B?SFNkZ0RLcHZ6M1NtV09YaDhpSG42ZW9GNi9XQT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cac09d3-2436-4427-5f04-08da057d3b9b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5231.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2022 05:41:05.6542 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Li915vPaHUEPl1vYqvJcODc1rZ4pBaXfbOTYFgupVkDsMI3GEAHgrUImpbgSp2JVaesjkH/VudQZYKR5iU18PQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4811
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] iosys-map: Add a helper for pointer
 difference
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


On 09/03/22 06:43, Lucas De Marchi wrote:
> On Tue, Mar 08, 2022 at 03:08:04PM +0530, Mullati Siva wrote:
>> From: Siva Mullati <siva.mullati@intel.com>
>>
>> iosys_map_ptrdiff to get the difference in address of
>> same memory type.
>>
>> Signed-off-by: Siva Mullati <siva.mullati@intel.com>
>> ---
>> include/linux/iosys-map.h | 21 +++++++++++++++++++++
>> 1 file changed, 21 insertions(+)
>>
>> diff --git a/include/linux/iosys-map.h b/include/linux/iosys-map.h
>> index e69a002d5aa4..8987f69ec1e9 100644
>> --- a/include/linux/iosys-map.h
>> +++ b/include/linux/iosys-map.h
>> @@ -8,6 +8,7 @@
>>
>> #include <linux/io.h>
>> #include <linux/string.h>
>> +#include <linux/types.h>
>>
>> /**
>>  * DOC: overview
>> @@ -208,6 +209,26 @@ static inline bool iosys_map_is_equal(const struct iosys_map *lhs,
>>         return lhs->vaddr == rhs->vaddr;
>> }
>>
>> +/**
>> + * iosys_map_ptrdiff - Difference of two iosys mapping addresses of same memory type
>> + * @lhs:       The iosys_map structure
>> + * @rhs:       A iosys_map structure to compare with
>> + *
>> + * Two iosys mapping structures of same memory type with the differences
>> + * in address within that memory.
>> + *
>> + * Returns:
>> + * Address difference of two memory locations with same memory type.
>> + */
>> +static inline ptrdiff_t iosys_map_ptrdiff(const struct iosys_map *lhs,
>> +                      const struct iosys_map *rhs)
>> +{
>> +    if (lhs->is_iomem)
>
> the other interfaces always check both arguments to make sure they are
> both iomem. So if we want this interface we will want to check like
> that.
>
Agreed, will use the other interface.
> I'm not sure this is really needed, but will depend on the secon patch,
> let's wait to settle this discussion there.
>
Since you have already covered the other patch, intel_guc_ct_enable() where this API has been used for calculating offset for cmds and desc. Do you this as good approach or is okay to directly access the ctb.send.cmds_map.vaddr?

>
> thanks
> Lucas De Marchi
