Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 759C95AF528
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 21:59:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C811C10EA74;
	Tue,  6 Sep 2022 19:59:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEDA110E236
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 19:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662494367; x=1694030367;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CeFmqC9C/jmEUdl9ZcMO/p6x3isEMGnEoFbuXXHtZSw=;
 b=b6OS8L5i8MhbQChHq+gQPaW7RkLoCanTCMT4lHfrVcRW+oAf0Elo6m3R
 45zRwWIKYIDTwBgByOw40mmPABdKrk7lTrXAS2yEZ66nVpKO6NCI7PBIP
 MkupBr2XMPffd1I2SfTE/jxvTS+KBHdlQYDd0cL36sdtT3ruwdTetBEUT
 Nf4N9JCP2WlZuaOuMOgp+318WzpT7iB+ELn4gy/dUrDNDfMODnh2Y0U8C
 4rYi5rqxnipy6XGTWrBq1H6cGikRcgN1wISd7IPBoI9xWa9HJxkDfLY2W
 kIQF9GwDlgn69JGrcEZJLV7PRatnqjn5bXAq9f8izEXKCFzdS7XGOMM38 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="296692601"
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="296692601"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 12:59:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="610070950"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 06 Sep 2022 12:59:24 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 12:59:24 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 12:59:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 6 Sep 2022 12:59:23 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 6 Sep 2022 12:59:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DVDq8mNyzMPSYDfeHI+O/6YGQQt5Wslu+TShJZtRuuKTCMAGjrUJ5GtKO8UwBTuKvz+1qv9f8cPXmQ++nWZRZ3HK2FVxVVEXtufxjzV478Rd6lPtzaf8GLZbtRVn5F7xTyXFQup90mRqyq3y2UAxETKhkn9SBA7gD9hzhZyayuUhWwvEImFPUfQ4/xLOyHcjz/FWTjw45zYoGEzcDz6vCbmntUMAachfs5a5r8VMpJT16w+khU3R9oElofTZQOjwWMNurD9+UWctKbAy7J5uLNGDbl28X5DtbePgtMMfgAwwZb54vDiPtLJi3K/Wx6OvvPnxXp7utVpFgZIRXiOPZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P3sqn/bgMruqEzStMsLZ7jORa9LoLIj0R/JhE/YWzaI=;
 b=AnYLJ8F+QnC6zzHtkvoC87bRjWnLlyylVazFJN/k7/74hdzonYg+NKBH886FdpfF+ATotzAPxivyPscArIOc4qcodhZVUITjXsKBVqubryrsDXIu+zRuoEPc4iw8PZ4ZVT8VmCEKh93s1SccuCoQKhe+1UflhqpqpudibySacXDgCmVV/I2nE6WOXs4PtTNrQ+/fn/kRa5dfdEWPp9zlMn1cHcQKNsbcXOTcbIPPXFWbboau0GCuSMFM4P/FU/NkyCOCCW36LegWWXIIwmOITAiGP1OzTNtJ7XW2yDZoTwnC3lq10tByUfxeWB7p1Fq7NnCd8bQj57EmzQFjpc0lpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1562.namprd11.prod.outlook.com (2603:10b6:4:6::15) by
 MN2PR11MB3664.namprd11.prod.outlook.com (2603:10b6:208:f1::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5588.10; Tue, 6 Sep 2022 19:59:20 +0000
Received: from DM5PR11MB1562.namprd11.prod.outlook.com
 ([fe80::74ac:21b8:1f17:9bc4]) by DM5PR11MB1562.namprd11.prod.outlook.com
 ([fe80::74ac:21b8:1f17:9bc4%5]) with mapi id 15.20.5588.018; Tue, 6 Sep 2022
 19:59:20 +0000
Message-ID: <340d997c-254b-67cf-4e5a-5e1ff6defb21@intel.com>
Date: Tue, 6 Sep 2022 22:59:16 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-3-umesh.nerlige.ramappa@intel.com>
 <7862e250-59b7-f966-820f-5e6ee7afc306@intel.com>
 <YxejnZCHt7nhKqRB@unerlige-ril>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
In-Reply-To: <YxejnZCHt7nhKqRB@unerlige-ril>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR0P281CA0116.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a8::18) To DM5PR11MB1562.namprd11.prod.outlook.com
 (2603:10b6:4:6::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c0eb8edb-a495-4251-5a6c-08da90424996
X-MS-TrafficTypeDiagnostic: MN2PR11MB3664:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yn1hvgF7TNwx3rpO5Xt3ps6qtFSQ+8q9slrPlbESDsBjRQYmM1un6/Onsel+CmjiELc/HCX2HCBBN3gQ2tO3O27H7kvdKP8VW+kBVB9NU50/Abq7y4UN+ungDaaSMRV6VKfZq2SYbVMzivc6nKH42MSTwCS7hb23S59t2GJBPtbcrdcwZMfyAbC498y11BBWiBCzoRVhZ3LAQkdEUQzAI85bhBPH4iMUyE4B7uU8FRYiTIRsP2Rfp0uyPCn8X53xBR7JY/Qmv1TxP0V4rvsERa7mHZN+tUQUT3q8Gl8btrHugHRKljBG6gmBoG0NJWL35jD2zIvFIEZT+uQft/Mo0Pph6djzBrfkfDmgLJPif+BjHSRA/QeTw58+SNd8s3GfiBxJ5OdVn+R6WRCuD1zgMT9C/C5YY0c5cXo1vvxthoZo/ehTpimBlL1hKb9MMVZbL/cK3o9C1dEOoGkEljeD+HO1h8WhkixoMnq7T6VWFta1qhOVFZ+RJhYCKADH4vcAeMXuvV+mOAElY4AryKB8u+vsXY1Om5fKMhMLPtGByTnVD4ZVdoyTwA7EaaLr3d895D9DAH8zBf7rgu+jyO5NNvDr/+XmCZhkUMsJzW3HkRvYQpP8/tyV31Xa+nPGh0UH3LUkeGCqnfYcgLOuvJS1JSzQe6uRXKqjTjeDfbzRTyPM3Jrp6GWpYRcJrGdcNzs10sLzqJsYdfq9m3uUGx1LnR4y8uZkKxasMlW3HrFHiCm5peIHIHC/FmRSnM/cBP0qExQqoXqweOup+YDmemSDJ7Dfpm7mmTsJeWgV0GZDHKIVZt6/EFyPGVcBRDkuUkyQ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1562.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(136003)(376002)(39860400002)(396003)(366004)(86362001)(6506007)(6666004)(38100700002)(53546011)(107886003)(6512007)(26005)(66476007)(6862004)(66946007)(4326008)(8936002)(31686004)(31696002)(36756003)(5660300002)(66556008)(2906002)(8676002)(478600001)(37006003)(316002)(6636002)(41300700001)(186003)(83380400001)(6486002)(82960400001)(2616005)(21314003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ajMvNTUzUW16MUorWkNWMnlNZjN1dW5mYTJCZk12ajE4TW8raHoxTm9UaFZi?=
 =?utf-8?B?SzJTb3FySDdvSDFIRU9qdFdvT2M3czJib2FjazFzYXNGQmNuM09kMlVaaGFx?=
 =?utf-8?B?ZjlXVExJUWlBNXNDY0E0Um1xWTVkUFZxc1R6V1ZvUGlTTWpMUXQ0RzV1aEpT?=
 =?utf-8?B?dFhWSEltdTR4eFJpR05MbHo0N2FLeG9Ha2ZwaWloMEZhNHc5VVpnRnRXWCtO?=
 =?utf-8?B?TE05UVV2SW1RMklUL3ZhQkZDRGZlSkx1OEJxZ05waVdabVM0VVBzVkdCWW1z?=
 =?utf-8?B?SVhNandvZ1BBczlid2EwSVhBZVYvdkNCRFJ0aUdwRDRVZmF4QWJ5enVmMVY1?=
 =?utf-8?B?OGxkVzlRVHF0NCtBb3Z6TDNJTXIxSWljQ3FBUkFPTUpiVjJabmdGMVdVZkRW?=
 =?utf-8?B?Y3htN05pQ2RYYUpMQ0JMY2pORVcySFIzVkwyUnpwZk84aXF5UEg0U0JBaDJ4?=
 =?utf-8?B?RFNubm1WM1RySSs3VWo3MkVxMjN0dlNSQ3RldEw4cm1xeFpPcWRpOHZZSjJL?=
 =?utf-8?B?TS9QWk9NMW9yZmF2czdaSGJja0lLQzVtejNtYXRlc3NaWEVGajVJVit4SjlF?=
 =?utf-8?B?S3pob2k5UDUvOTJnWjFlbE8yWXRUUDdzYnF4eWhJM3BDRmpVSU50V0VvbUEw?=
 =?utf-8?B?NHFZM212cUJIQW1RdnB2STRCMTBoZWZlMDdVSFA2SFdOQ25HejhRaWNSTFdx?=
 =?utf-8?B?ZEw3R09MSmVVbWZ1cmtLRFUvQXFJclVCR0pUVFk3TEcwMWFXNXluS1d3dEhL?=
 =?utf-8?B?Q2F2Vm5qQXJkRndWcGZGZkZGS0FRUnltdUJnZVYyZWNGR09hbVJjOHpPcnU0?=
 =?utf-8?B?Umg3MTducW5udE5WZ29FYkZiQUZSUnhFa254eVMxbUNGREZCSGcvSTF1cGVv?=
 =?utf-8?B?VXBSaFhvUTFNNGNHNXo2V2JsTHJwdFBTWGJPTmNhQjNreHFMUmExZEJtVFJX?=
 =?utf-8?B?YUZrL1NOTThsdng1Mmd0Y3lPSjMveDJSbnVDZE1ZN2s4THpaa2tBK0krZEZy?=
 =?utf-8?B?Tkh1M2VMT2hBUVNqMHFWUDUrbFNBcDNJclJLOFp6TnAzeHNVTzRETlhoRzFW?=
 =?utf-8?B?WElzYjJqSUw1KzhtNkJaRDNsUW9xdmpNMWc3UytXdWRWclV0VVlyN3NOVWIx?=
 =?utf-8?B?VkZuN2x3bm96VFZCNlRjc3dNdTVoUklRMjVidVF5N0VMUnhONW1memh0b3kz?=
 =?utf-8?B?cWpSTXBqd3JVa1RwVzl2eWw1TktIamVpTDhUb1JqS2xlTTAzekNRZERzTVEx?=
 =?utf-8?B?SG5YSXVkQjE2SFpya29jYUZSMVpMSFh4VXFyQVBTRE5LbUt4RGRaWGMyMUJ6?=
 =?utf-8?B?cStDWGV6eEc5Z1pRTGQzSmhLdzI0bHF4ZUs5ZFNCSTNxeWpJT3F4SEd3d0hJ?=
 =?utf-8?B?L3Y3aUlQTmllVjNYUm1FaFdTNEsxTEVrQjRMSzhhcVZYazJ6Um9vRmc3WmVS?=
 =?utf-8?B?Z0xSbm5OS2Q2eHpMVUdjc1pWd2JpWXdLS1FiTUFYV0ZCTGJjSlFUeURLako4?=
 =?utf-8?B?bXJpQ1lDZXpKeGpZWmF1N1pJQzUrdHpBREZSbE1QazJmNzlGd0NBVVV2cHor?=
 =?utf-8?B?aG1wSTJtSkVRVXhrbk9PZVpyUHpHbXo5ZkFGWEpuL21iVFNyc2d5UTV0SG5z?=
 =?utf-8?B?V1JJN3BLSWNTTFhWakloQ0pZOHlONCthVHVYTDFWNTQxSElKZmN5dWg5QXJ5?=
 =?utf-8?B?eENlUnowRVVzNmhZcHZjMm51YlZuaGVTSXNxTUlqeEp5ZjhhK3RqdGUrYlFh?=
 =?utf-8?B?OE5YMkFRcmpRdlFlRjZNUXhjcGQwdjFqZTdCVk8wS0UxTWQwajNpZHVhWC9j?=
 =?utf-8?B?NVQ0NUJoaTFYaS9KeHVwZlVhUldmQ3pIRHFWZTBEY24zZnVCNUtvajVBTlNx?=
 =?utf-8?B?NXlwamlCQVVVWGdRbDdHTTVLZVBZc3JvcGN6UG9WREgvajVNQjI4dFIyUVhk?=
 =?utf-8?B?WXBFZGgyeHRYUFB4OUp6SHFCRGdxT0s1YWg4QlZub0x6bW1EQUovTXBlRE1D?=
 =?utf-8?B?cjdnNDdxV1NmSmphV2N3UFIrN1hGbGFoVm1HaXRGZ1NIMkVtT1NuR2NDWWlU?=
 =?utf-8?B?cG5xWTNIOVNMb2JlT1dZbGpkTU52aTRoSXF0WG1OV2pwZ2pLTnJnWkJ3NitL?=
 =?utf-8?B?NUF0Ly95MkhPblJiMm5DNjgwTmtEdkkvdWtSc3l3UnhZTG5BdXdmT2x6THlM?=
 =?utf-8?B?OGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c0eb8edb-a495-4251-5a6c-08da90424996
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1562.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2022 19:59:20.5677 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1blsxoxZMW7xj9xR07y+wcUVcHEnsUKezb3IPGgwLAch7kD5tRL5igk6OV8VGwVMvCrzOjGION3svsRIAAtfVKF+qx7rhtFSgv0oxdDp36g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3664
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 02/19] drm/i915/perf: Add OA formats for DG2
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

On 06/09/2022 22:46, Umesh Nerlige Ramappa wrote:
> On Tue, Sep 06, 2022 at 10:35:16PM +0300, Lionel Landwerlin wrote:
>> On 23/08/2022 23:41, Umesh Nerlige Ramappa wrote:
>>> Add new OA formats for DG2. Some of the newer OA formats are not
>>> multples of 64 bytes and are not powers of 2. For those formats, adjust
>>> hw_tail accordingly when checking for new reports.
>>>
>>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramampa@intel.com>
>>
>> Apart from the coding style issue :
>>
>>
>> Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>>
>>
>>> ---
>>>  drivers/gpu/drm/i915/i915_perf.c | 63 ++++++++++++++++++++------------
>>>  include/uapi/drm/i915_drm.h      |  6 +++
>>>  2 files changed, 46 insertions(+), 23 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_perf.c 
>>> b/drivers/gpu/drm/i915/i915_perf.c
>>> index 735244a3aedd..c8331b549d31 100644
>>> --- a/drivers/gpu/drm/i915/i915_perf.c
>>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>>> @@ -306,7 +306,8 @@ static u32 i915_oa_max_sample_rate = 100000;
>>>  /* XXX: beware if future OA HW adds new report formats that the 
>>> current
>>>   * code assumes all reports have a power-of-two size and ~(size - 
>>> 1) can
>>> - * be used as a mask to align the OA tail pointer.
>>> + * be used as a mask to align the OA tail pointer. In some of the
>>> + * formats, R is used to denote reserved field.
>>>   */
>>>  static const struct i915_oa_format oa_formats[I915_OA_FORMAT_MAX] = {
>>>      [I915_OA_FORMAT_A13]        = { 0, 64 },
>>> @@ -320,6 +321,10 @@ static const struct i915_oa_format 
>>> oa_formats[I915_OA_FORMAT_MAX] = {
>>>      [I915_OA_FORMAT_A12]            = { 0, 64 },
>>>      [I915_OA_FORMAT_A12_B8_C8]        = { 2, 128 },
>>>      [I915_OA_FORMAT_A32u40_A4u32_B8_C8] = { 5, 256 },
>>> +    [I915_OAR_FORMAT_A32u40_A4u32_B8_C8]    = { 5, 256 },
>>> +    [I915_OA_FORMAT_A24u40_A14u32_B8_C8]    = { 5, 256 },
>>> +    [I915_OAR_FORMAT_A36u64_B8_C8]        = { 1, 384 },
>>> +    [I915_OA_FORMAT_A38u64_R2u64_B8_C8]    = { 1, 448 },
>>>  };
>>>  #define SAMPLE_OA_REPORT      (1<<0)
>>> @@ -467,6 +472,7 @@ static bool oa_buffer_check_unlocked(struct 
>>> i915_perf_stream *stream)
>>>      bool pollin;
>>>      u32 hw_tail;
>>>      u64 now;
>>> +    u32 partial_report_size;
>>>      /* We have to consider the (unlikely) possibility that read() 
>>> errors
>>>       * could result in an OA buffer reset which might reset the 
>>> head and
>>> @@ -476,10 +482,16 @@ static bool oa_buffer_check_unlocked(struct 
>>> i915_perf_stream *stream)
>>>      hw_tail = stream->perf->ops.oa_hw_tail_read(stream);
>>> -    /* The tail pointer increases in 64 byte increments,
>>> -     * not in report_size steps...
>>> +    /* The tail pointer increases in 64 byte increments, whereas 
>>> report
>>> +     * sizes need not be integral multiples or 64 or powers of 2.
>>> +     * Compute potentially partially landed report in the OA buffer
>>>       */
>>> -    hw_tail &= ~(report_size - 1);
>>> +    partial_report_size = OA_TAKEN(hw_tail, stream->oa_buffer.tail);
>>> +    partial_report_size %= report_size;
>>> +
>>> +    /* Subtract partial amount off the tail */
>>> +    hw_tail = gtt_offset + ((hw_tail - partial_report_size) &
>>> +                (stream->oa_buffer.vma->size - 1));
>>>      now = ktime_get_mono_fast_ns();
>>> @@ -601,6 +613,8 @@ static int append_oa_sample(struct 
>>> i915_perf_stream *stream,
>>>  {
>>>      int report_size = stream->oa_buffer.format_size;
>>>      struct drm_i915_perf_record_header header;
>>> +    int report_size_partial;
>>> +    u8 *oa_buf_end;
>>>      header.type = DRM_I915_PERF_RECORD_SAMPLE;
>>>      header.pad = 0;
>>> @@ -614,7 +628,19 @@ static int append_oa_sample(struct 
>>> i915_perf_stream *stream,
>>>          return -EFAULT;
>>>      buf += sizeof(header);
>>> -    if (copy_to_user(buf, report, report_size))
>>> +    oa_buf_end = stream->oa_buffer.vaddr +
>>> +             stream->oa_buffer.vma->size;
>>> +    report_size_partial = oa_buf_end - report;
>>> +
>>> +    if (report_size_partial < report_size) {
>>> +        if(copy_to_user(buf, report, report_size_partial))
>>> +            return -EFAULT;
>>> +        buf += report_size_partial;
>>> +
>>> +        if(copy_to_user(buf, stream->oa_buffer.vaddr,
>>> +                report_size - report_size_partial))
>>> +            return -EFAULT;
>>
>> I think the coding style requires you to use if () not if()
>>
>
> Will fix.
>
>>
>> Just a suggestion : you could make this code deal with the partial 
>> bit as the main bit of the function :
>>
>>
>> oa_buf_end = stream->oa_buffer.vaddr +
>>          stream->oa_buffer.vma->size;
>>
>> report_size_partial = oa_buf_end - report;
>>
>> if (copy_to_user(buf, report, report_size_partial))
>>     return -EFAULT;
>> buf += report_size_partial;
>
> This ^ may not work because append_oa_sample is appending exactly one 
> report to the user buffer, whereas the above may append more than one.
>
> Thanks,
> Umesh


Ah I see, thanks for pointing this out.

-Lionel


>
>>
>> if (report_size_partial < report_size &&
>>    copy_to_user(buf, stream->oa_buffer.vaddr,
>>         report_size - report_size_partial))
>>     return -EFAULT;
>> buf += report_size - report_size_partial;
>>
>>
>>> +    } else if (copy_to_user(buf, report, report_size))
>>>          return -EFAULT;
>>>      (*offset) += header.size;
>>> @@ -684,8 +710,8 @@ static int gen8_append_oa_reports(struct 
>>> i915_perf_stream *stream,
>>>       * all a power of two).
>>>       */
>>>      if (drm_WARN_ONCE(&uncore->i915->drm,
>>> -              head > OA_BUFFER_SIZE || head % report_size ||
>>> -              tail > OA_BUFFER_SIZE || tail % report_size,
>>> +              head > stream->oa_buffer.vma->size ||
>>> +              tail > stream->oa_buffer.vma->size,
>>>                "Inconsistent OA buffer pointers: head = %u, tail = 
>>> %u\n",
>>>                head, tail))
>>>          return -EIO;
>>> @@ -699,22 +725,6 @@ static int gen8_append_oa_reports(struct 
>>> i915_perf_stream *stream,
>>>          u32 ctx_id;
>>>          u32 reason;
>>> -        /*
>>> -         * All the report sizes factor neatly into the buffer
>>> -         * size so we never expect to see a report split
>>> -         * between the beginning and end of the buffer.
>>> -         *
>>> -         * Given the initial alignment check a misalignment
>>> -         * here would imply a driver bug that would result
>>> -         * in an overrun.
>>> -         */
>>> -        if (drm_WARN_ON(&uncore->i915->drm,
>>> -                (OA_BUFFER_SIZE - head) < report_size)) {
>>> -            drm_err(&uncore->i915->drm,
>>> -                "Spurious OA head ptr: non-integral report offset\n");
>>> -            break;
>>> -        }
>>> -
>>>          /*
>>>           * The reason field includes flags identifying what
>>>           * triggered this specific report (mostly timer
>>> @@ -4513,6 +4523,13 @@ static void oa_init_supported_formats(struct 
>>> i915_perf *perf)
>>>          oa_format_add(perf, I915_OA_FORMAT_C4_B8);
>>>          break;
>>> +    case INTEL_DG2:
>>> +        oa_format_add(perf, I915_OAR_FORMAT_A32u40_A4u32_B8_C8);
>>> +        oa_format_add(perf, I915_OA_FORMAT_A24u40_A14u32_B8_C8);
>>> +        oa_format_add(perf, I915_OAR_FORMAT_A36u64_B8_C8);
>>> +        oa_format_add(perf, I915_OA_FORMAT_A38u64_R2u64_B8_C8);
>>> +        break;
>>> +
>>>      default:
>>>          MISSING_CASE(platform);
>>>      }
>>> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
>>> index 520ad2691a99..d20d723925b5 100644
>>> --- a/include/uapi/drm/i915_drm.h
>>> +++ b/include/uapi/drm/i915_drm.h
>>> @@ -2650,6 +2650,12 @@ enum drm_i915_oa_format {
>>>      I915_OA_FORMAT_A12_B8_C8,
>>>      I915_OA_FORMAT_A32u40_A4u32_B8_C8,
>>> +    /* DG2 */
>>> +    I915_OAR_FORMAT_A32u40_A4u32_B8_C8,
>>> +    I915_OA_FORMAT_A24u40_A14u32_B8_C8,
>>> +    I915_OAR_FORMAT_A36u64_B8_C8,
>>> +    I915_OA_FORMAT_A38u64_R2u64_B8_C8,
>>> +
>>>      I915_OA_FORMAT_MAX        /* non-ABI */
>>>  };
>>
>>

