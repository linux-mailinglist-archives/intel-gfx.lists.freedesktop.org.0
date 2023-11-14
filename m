Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A8F7EA87C
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 02:57:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 185A610E1A9;
	Tue, 14 Nov 2023 01:57:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3282710E1A9
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Nov 2023 01:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699927031; x=1731463031;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=S790jN4UjriLlP9djnGQPtFBKfghnaap/gqUiOmYasc=;
 b=hb5tQkkdMiSpKqX8hbxYjWOT16rw2mXxtnMPHlnV0LCSknXz1tcZUdM2
 Y1uVj8ggkQJ0+Ame6XZ2Ul81958sXss5Xzbs+0THG+c0Rj3BMTIi/9UZd
 R9VuNIUSz5fBz/08DhQOULqM18HYH9sLnTlQyXTjlIB3upXpnJ4zKlYqx
 AEnzFKtF/0hJ1A3+cmsdA9pQq+GBeFc1mAyADqpm0i7i5TWDH0U9WC75v
 lbFwSw9t4nphejdCRh2O+OEj4Rnr9Gt3BBajStFkCfQNzVlvx2FV6BIdF
 aH3xfP0Pz7+s363R+XDBej8EQDISNemTmDxKUR0IlBhZJnsY14/wpq9HU Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="3602815"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; 
   d="scan'208";a="3602815"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 17:57:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="793587534"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="793587534"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Nov 2023 17:57:09 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 13 Nov 2023 17:57:03 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 13 Nov 2023 17:57:03 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 13 Nov 2023 17:57:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WugSoyPonF4NWHv2CbNvSXVUVtsNe/bGtw+priEXH2t4sErJXQJj6/UDC38aQMARykvAPDw0THBMcZXE5dXkcRA4hEOnatP5yiTrE99rP86jdA9/zZNgtFoyU+7AujcFcvpCl5NjxIDBO53hhbv/W5GfVsF6ns3AqYpmvuEZYJ1NV3lDAG9WoHBGOzDm/MyAdwNNrc7PRcWJ6K39jGnsJ+2+J1UkmZJHTz4l13fgr/kyecI8YIX3IPWcy+a9FBpRcF8XwwKTLXJQWzrj9qdq0XABL3lBGHu/Him4sH/X+bwJWKDOwF6yvrzeA6PGhUWz9m3ITHBMe5VgBh/X07cYWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j0jP+oiwpT+dp0Pui87haALNwX71QEmeDmslJUWmbFw=;
 b=W0VKTV+QqkICmUX6qD7plA+cFwa2rOeo0H6hijc1oUOKutJ4fSeF87Xzc5nXFt3zgmJCjDLLAL7m4iDuUvVb7WFOd11PXmDKW38u7Qs2gW7GdrfNTO7czEba8nem4Qdrc3IZ9dd8hmJd+LxCvhCsiVGrL3mkWXoNmesEyeFURaQHA2S3PI3UtKzbjXIdIgsxyweLp9LMG6S0eqdnhTJHRw4c+ZlkmSgmDyVd8cJVNgou3geWVzXSwzZ4/AS0HgtCmnAMRV7Idvz3IODNCYvNfS01vPUlvASo79spFqBQxMcT+U2VqZbtwytzLkJeBTfjhCpkQii1+iST6pEU4FCZNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by SA0PR11MB4687.namprd11.prod.outlook.com (2603:10b6:806:96::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.29; Tue, 14 Nov
 2023 01:57:01 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::de08:93ac:5940:ec54]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::de08:93ac:5940:ec54%4]) with mapi id 15.20.6977.029; Tue, 14 Nov 2023
 01:57:01 +0000
Message-ID: <e89ff264-f119-437b-b9b4-2f234195f76b@intel.com>
Date: Mon, 13 Nov 2023 17:56:58 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231109235436.2349963-1-daniele.ceraolospurio@intel.com>
 <7d82bd6e-ce31-4e1d-94c5-4373b65c0c37@intel.com>
 <afeda522-aa48-4284-a594-bde03f8c79c1@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <afeda522-aa48-4284-a594-bde03f8c79c1@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR04CA0135.namprd04.prod.outlook.com
 (2603:10b6:303:84::20) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|SA0PR11MB4687:EE_
X-MS-Office365-Filtering-Correlation-Id: 8ff03228-764d-4b58-f55b-08dbe4b4fe4e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nYbbtNVkD3q6fP73t2Rjwu9ekc5fY47DJRyT1oC25SN7Bbcb0U94p44CgTxKkaxRTmZH/Boou+gJBm0BbhECdwCYmVjdyDLXZZC1nHBdVtmD1ZVfUBgxEai5SwwVQrbtemnTDj2NB0+oaNqV4y3tdbNDDoVT6E9ocRU3byW5fMFjVPfn2CwLlIpdQqM/q7KzwZD3ELj0y+i0l3Oc5NBLLL9Qwfigwl3H3xaBxWfME1Vu/B0CqkjIhZFZK/nwMt6upXJUQHjtKsnBpcNODchEXTC8qlPgc7nYmlti8PqXsxyI/qNhdyn7cESYCJbbVLq/I2fhhUlVA7lHgZqEJphgIsyZIY1LDYCBcV8z135Wgs0qxaOPjs1x7txRPf4yyGteXcVTttJGTegZI6ReIMp9QJq7PhiZL5Lm9oPykbfmGeVIE9ys+OumUN+uk2rAB4vFBMiA92kmeJXlU9748emRMDC1pUJ3s0ZUgUlzghxnlwLx8D0M+i1SbJ8EI9Z6yNfd4E+8tY9VG2gLoDe6e8VYNes+/deK79pY5mlAAvIExAO/cIESxCWziI6qEoYdz6ePWi6yRqXTiCxURNpb4tRE/jQmAh53hVLcMUDKVmVy+j8RXWhucvJ+sqaqDAAmk+/YAW8WSZSzo3PQAjF33E+vQBHP1rw6ZgOjG6+m5KMzlCWsPp7o8L+8WQ1xjkI4C3m3
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(396003)(136003)(39860400002)(376002)(230922051799003)(230273577357003)(230173577357003)(64100799003)(451199024)(186009)(1800799009)(2906002)(8676002)(8936002)(66946007)(316002)(66556008)(66476007)(41300700001)(31696002)(86362001)(5660300002)(83380400001)(2616005)(82960400001)(26005)(38100700002)(478600001)(6486002)(36756003)(6666004)(6512007)(31686004)(6506007)(53546011)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WUlHdFdLUFh2cVFmcm5zWUZ3dXFzYllRRlpXVG1VOEU4Mjd0dHZ3dHYzMThY?=
 =?utf-8?B?V0xXQ29waUpQeSszYmVwRmp2enU1Q0pPQmRHODA5b0s3UTc1S3EyVW5HUjRU?=
 =?utf-8?B?cFJUemxrSGszYktEMjI0VkI1M2lQYWRtN3c1U3R3eVVjLzZkcFdOazZIQVZl?=
 =?utf-8?B?T2c0K295dTRha1pjUU9QZnVuTFNjSU1FZ1BkNEgyRkpRc1lhbFU0MWNiYUs1?=
 =?utf-8?B?OUs4cU5xY2ZPQUx1dGZEOWxmRGcwTVBnVVFYRlhzaTRIWC9zTm5NakN4NWtw?=
 =?utf-8?B?OHZvVTJZam91M0poZi8reGZwb0RCNmxCUkt1MHZVVFo2ZGNLTGUwZmFQaFRP?=
 =?utf-8?B?Z2RhNmVxMnl2YTg0cDJXVkpSdHNGdFNTdTFDeGNuYnNOWkxhNDVUQi9xTm1w?=
 =?utf-8?B?TGVSWWZpK1dYeHByTzNKazdKTVVzSDVHZVhGc3BZYlVIK3h4aGNLWVJwd0ZP?=
 =?utf-8?B?V1pEUXhCYXZBWUZySzZOeGNESlRnVnRzcjVicW01eU9YK0I3Y2o0MlVtbzRs?=
 =?utf-8?B?QTdtSGNNRGtLbnZLdlFrbkd5WE1lQzgrSndOVGxMdXNzcWxWK3Rsa1UzdFJJ?=
 =?utf-8?B?dkxHT250Rk42U05Bam1nK3FxUXZaQ0x1VXhFMzlIM213aW1ma08wN3dxS2pr?=
 =?utf-8?B?Q1FtUnpvakY1NlRhYlZ6bTh5ZTVXS01la1c4MzZBOUNoM2dmQzVPNm9ETEdh?=
 =?utf-8?B?WlFKcmI3RFJEaE1Qa0VwaGdub3lEeTBDS3dlMzg3cUhKbEtCdFVrVjhETGM2?=
 =?utf-8?B?ZzgvR1JQKzloNkxpUlVleXJwY3JyemRiYnpYek9MWnJSOG9lRkdBU0dpdVNP?=
 =?utf-8?B?NVQ5SHdkVFBJa1hpL1hic1ZubWRybmRaRjV2RHpDeXl2WjNEUlJkWlNKL1Iw?=
 =?utf-8?B?NGFZTzZxQjlyTWdhV3BVNXNtekZRQ0hXUmM4ZW5kQ2RjSnR4TFNTL29mYmhZ?=
 =?utf-8?B?WW45RkVKVDU1VnUzcEtyNnBSNy9lT0FSWFV0MnZzMkc4cTJQWFRCOG9MS09B?=
 =?utf-8?B?WldjeXV6MFFrRU1aT2hDMytpS0ZhaDJCM2hYeUpsUSthTnY1NEdvQ2tDQTBN?=
 =?utf-8?B?cFR0SW1uOTdrZTQ3eHR0OHEwQkNhVS9wSXN5amdYRi9jVnhLU0dyMEZhUGpO?=
 =?utf-8?B?ZEZwclN2TDlndTFmakQvTy81ZjBrQXdYZm44SDRCNkpaMHJoRml0MmZqeEZP?=
 =?utf-8?B?Y2RyVWFTUk9za1FQM3JKeEFpc0RHSGZHWlB1ZFFhd3V3Z2F0ZkJRTW92WFdI?=
 =?utf-8?B?UzF0Y25selppVWViaGlEaWxQeVRZTGExL3gzMFRGQnNJQkJFdjA1VzJUdkZT?=
 =?utf-8?B?cXIwZ2dLR3BKUzhqb1lOSG5qV1JqbVArelZlQjdCMU56aFY1ODh1Vk9vVkpF?=
 =?utf-8?B?ZUd1ODVQd3Q0SjdTNjJ5bVlVbmVQckliWHViTFVPYlRPZitra1lsUzJBU1FY?=
 =?utf-8?B?QlVUazVMZjZwd01XL2R3a2lZaG45aVk4ZUVXTXNPelY5UFpWWEVtRGJ2Tk1q?=
 =?utf-8?B?VWExNHN5SStRWlZPS3c2SlVYTmtWT29LOFNSeG9aM1JrQ3dtWGwwblRlbHpa?=
 =?utf-8?B?L1ovRWxxQmxQRlI0SFVYV1lrN2ZLbE1zWWVWMTRhQkpxYW1NUGU4WGxDcDZ4?=
 =?utf-8?B?anNCeVJHZlJGYXlzQVB0RW5LTG9icWFXK2xUTHlDUHIwdEx1NTVnRkNDR2V3?=
 =?utf-8?B?WklTVFA2ZnZLWVdqVHRqNUpJcjZzOGxmVnNHQmJqQmx2ZDRCTFF2Unlkd1M4?=
 =?utf-8?B?Sm5jWGo5dmZPeDNQT0dlWTdic1dncDZqVks4QnJJbGdheU11am9HTmVyNkEw?=
 =?utf-8?B?RVZmbzdmTWc4WDdvQm1CNjFZbm8wRUhWaXBndE1hNlQreVNqMVVXcy9TTith?=
 =?utf-8?B?K2w2VlJhZnlsUUtpSllxS1V5UlZ3ZGEvVEpLc2JJOEZjeG8wWnpwTUZ4clhh?=
 =?utf-8?B?dWcwdnNsSERTSWNnL1FYZ0pHOWRRZnpZTnA2SGk3RG03RDJqSEl3U3d5MzZt?=
 =?utf-8?B?VDFyUk1Dc2ptdWtkVlY0QlRFNzJRb3hoV3RaV1ZYR2dMeEMwaHVLV2dySlpD?=
 =?utf-8?B?S09jaHIweHFrLy94UStMSmJ3cTMrQ2JLSjB0MlkxZWlORjFHem5hSEhFcnRq?=
 =?utf-8?B?S2Nmb0pqeDB1L2Zyajg0U1NhV3I3ZDd2UkRTUEEyV1YzTXl0cUkySTdwcS8z?=
 =?utf-8?B?UUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ff03228-764d-4b58-f55b-08dbe4b4fe4e
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2023 01:57:01.6928 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wF7/xToZMmWAz7fKQ4tWmbVMOamEjGJlGqV+CWrftaoRecOo2eT30t4YaQUz2/FqAo8l09U9puCd8UEITEXYR2jdRR9gaDwL4t5FGv09EOU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4687
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/huc: Stop printing about
 unsupported HuC on MTL
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

On 11/13/2023 07:36, Daniele Ceraolo Spurio wrote:
> On 11/9/2023 6:06 PM, John Harrison wrote:
>> On 11/9/2023 15:54, Daniele Ceraolo Spurio wrote:
>>> On MTL, the HuC is only supported on the media GT, so our validation
>>> check on the module parameter detects an inconsistency on the root GT
>>> (the modparams asks to enable HuC, but the support is not there) and
>>> prints the following info message:
>>>
>>> [drm] GT0: Incompatible option enable_guc=3 - HuC is not supported!
>>>
>>> This can be confusing to the user and make them think that something is
>>> wrong when it isn't, so we need to silence it.
>>> Given that any platform that supports HuC also supports GuC, if a user
>>> tries to enable HuC on a platform that really doesn't support it 
>>> they'll
>>> already see a message about GuC not being supported, so instead of just
>>> silencing the HuC message on newer platforms we can just get rid of it
>>> entirely.
>> Not following this argument. Someone might attempt to enable HuC only 
>> and do so on a older platform that supports neither HuC nor GuC. 
>> There would be no GuC warning because GuC was not requested. But now 
>> there would also be no HuC warning either.
>>
>
> Enabling HuC also enabled GuC loading, because the latter is needed to 
> auth the former. The message about GuC not being supported is printed 
> for all values of enable_guc that are not zero.
>
> Daniele
This would indeed appear to be the case. So...

Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

>
>> John.
>>
>>>
>>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>>> Cc: John Harrison <john.c.harrison@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/gt/uc/intel_uc.c | 5 -----
>>>   1 file changed, 5 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c 
>>> b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>>> index 27f6561dd731..3872d309ed31 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>>> @@ -106,11 +106,6 @@ static void __confirm_options(struct intel_uc *uc)
>>>           gt_info(gt,  "Incompatible option enable_guc=%d - %s\n",
>>>               i915->params.enable_guc, "GuC is not supported!");
>>>   -    if (i915->params.enable_guc & ENABLE_GUC_LOAD_HUC &&
>>> -        !intel_uc_supports_huc(uc))
>>> -        gt_info(gt, "Incompatible option enable_guc=%d - %s\n",
>>> -            i915->params.enable_guc, "HuC is not supported!");
>>> -
>>>       if (i915->params.enable_guc & ENABLE_GUC_SUBMISSION &&
>>>           !intel_uc_supports_guc_submission(uc))
>>>           gt_info(gt, "Incompatible option enable_guc=%d - %s\n",
>>
>

