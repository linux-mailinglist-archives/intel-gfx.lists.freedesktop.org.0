Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA3051C888
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 20:57:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5910810EEDF;
	Thu,  5 May 2022 18:57:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8547110EF3E
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 May 2022 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651777053; x=1683313053;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bdlE+OH9XEJtFhD+AcZqyY0Bd1Qk5UHIh1+/IlGxnA0=;
 b=NOSf72BZ8m0UaLq9RbESiEm33PtNzHRFsNTQISkpevS3gAx6fOLQxOaM
 QCcFe+RDqV/7rRe/+FF4e9fXEORGf64e10tWI99mFYkTjoVVFbSPsDsyr
 XxZICI75N544IxKJWk/A6qcRkACbC+w23+kK6I7g4k19UqNMpj7blGAsB
 RDrFAPViiitDiYL7zHHygiK8zB4c4cWPoypVVdnCaw3aQavdUMjSK3suY
 oCJ+XaKo10wtHOezWF/Ro65H1a0da7n/6u7P5enoBOdJLvKc1qvnT6DuY
 yGU+HtdmraNMKprKWOBwTx2dsAvi9YCZ7MIXnDzjmhKTnVrj0IKqSc/BR g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="248754951"
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="248754951"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 11:57:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="654357480"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by FMSMGA003.fm.intel.com with ESMTP; 05 May 2022 11:57:32 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 5 May 2022 11:57:32 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 5 May 2022 11:57:32 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 5 May 2022 11:57:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l56alL9WNYfscGp6oucjcTG6LW/IbU0TWGZYSHES0EQJmv8YY/xE+HM98jtb5+iPSf0dcsjHi4GTWX/amijQcyrZDONIABWWvFV05IY5osv/7M7HeC9tGHIcryfV0np5IvaH5SfpzEeiv9uYRRI/spXh8QNZxa9Q4SOtjb4aABXAtJGxRjwiYz2UHKiRZt+oV9Th9Dft31ok/cyOuJFVVQhOeML8gMItQ8/cr1N3YMXs8Re0h30mF33F7rz2+vip8JkQgfMcz0OejvT0/9HjnfAW+mWzPmFzHSA8S9OHFJcLGcrLfQs+hr/3gp2oB2W3R9Gczb+FcTYNHCM2XUC03A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C/wjMRetxgpZlyqytIGxhYOBj2y+DlPmDc8WczoDxxw=;
 b=m4SmtteLOrh9hztOYD04xbAUVbX8npCU31gGoXjwBrJRaccRVsnj3js14JuUXKbytJGFpSw0mv7iKVj2vIHIuCrLTeb7vUdK7cWZb5zQGSsqbvAUsBpTePKh042HIi3ORzAMoHrPj3FRTvhv2ItjVqFV9PuNjwGN2hiNqo7Cu7TyNL8TLSdcr2Na27R+Yve6hJO4Cxo0VtGTSnQljCz607+ewkmYLkZGwm+5kFaP9Rk7vsFjSgiA2+IE7aZKVzISuDHAe4UpvqHLAlufEL5rTjvgE2atlCNXLIZrl6FnAkEjxwlO4RLLrs6D0NRKedGr3SGFh66lWc+anLiJwpjrSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB3180.namprd11.prod.outlook.com (2603:10b6:5:9::13) by
 BL0PR11MB3123.namprd11.prod.outlook.com (2603:10b6:208:7b::33) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5206.13; Thu, 5 May 2022 18:57:29 +0000
Received: from DM6PR11MB3180.namprd11.prod.outlook.com
 ([fe80::b1fa:393c:9fb6:6871]) by DM6PR11MB3180.namprd11.prod.outlook.com
 ([fe80::b1fa:393c:9fb6:6871%5]) with mapi id 15.20.5206.025; Thu, 5 May 2022
 18:57:29 +0000
Message-ID: <2ff8c00e-485e-8e2f-6f74-b34385d058a6@intel.com>
Date: Thu, 5 May 2022 20:57:25 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.8.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220504114808.1578304-1-andrzej.hajda@intel.com>
 <87h763ltaa.fsf@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <87h763ltaa.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: LO4P123CA0322.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:197::21) To DM6PR11MB3180.namprd11.prod.outlook.com
 (2603:10b6:5:9::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 51ee4ea6-cb4e-4a80-0809-08da2ec91a83
X-MS-TrafficTypeDiagnostic: BL0PR11MB3123:EE_
X-Microsoft-Antispam-PRVS: <BL0PR11MB31235F85ED8914C15B85A171EBC29@BL0PR11MB3123.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: thmXKE81F5PK8HugZQm4i/qH8QC4nBJ0skbkyRcgmdKeBxsSh7uZifUsFHmRtwPwAEk7AQFiQ0nLh6mDG5VeEMHAXC0JeHSU9Qq6OrhiqGraWEkrl5105ClDktRVSC4buymgaShj/XQ5m9CIoKv2vbnfAME7vX4uKjxCecQA4QA6ySxq7wVw8QlwzdtJ8uGhHmHl5y7L65LXv7ZSH14CR9vNSvRGf8y1IOs126s3UZCYbIOvfdkTvF1EpjtDKEwE7b6ylRdcdJfLNN4Qrf5QwrQyF7Q938VhOsp7yRrXAns0DLSJCmgIc+pxxaxBQ3h3Myynyf0UEqWCdEpIZBPYwPxbAW5F/w25O3pLDwrbnuWN6YWPfbz+jX0tQdw7y7Cu6xfRXpuMXbYrlUDXkouaMk+LyR3RfyZ0koYS3Rl9aRAhEl3TA1v4mZzHMtKCSrAdAlIzKCXrKDvTHKjb3eYmowNzE6YVYOR4jSiFBKrL91uZRSA2BtVrp+nwkMwRbQfDf8qfJcg3koV50Jw5Kn0Oe8DCKYVZRp75AztbNBg3SndtzkpY0d0uvOMwDcqIBngl4jJTjauKlSYh2URswkBPEYiV52CVi+DSVDsyI0RSX7KIoovIK3xunG+MDME8xD2GDXAifwoVHYYP1+aIbd0Tf+evZaBWTJpH/HHN38ki+I6xtwcoBHme3vO4HnmUWyHTwvcqDJO5ynC6EFnELv+tqfiGE1A40mtkjX01yj3xjeg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(5660300002)(36916002)(6666004)(6506007)(6512007)(38100700002)(2906002)(26005)(8936002)(966005)(36756003)(82960400001)(2616005)(83380400001)(44832011)(186003)(508600001)(31686004)(53546011)(6486002)(86362001)(66946007)(316002)(31696002)(66476007)(66556008)(8676002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T2tNMThSZGduRld6ckRpSTA5eVUrOTkra3FXZTJJUEd0YmN5WHBJUytDRjJU?=
 =?utf-8?B?WkpGN09BQ1NDWDlyN0ZsTnNHOCs4L2dpZFkyY01IanA0TXhVaEpwUzJmbWdl?=
 =?utf-8?B?bVVaQ1d1K1M1eUdzTzIwdnY5S2w5TGJjNm45S29PVHdXWStEaWFjTTNSN01O?=
 =?utf-8?B?S0IvTVdMVXBTbVhFS1ZJbGpsdUI4RzQwZkNBNk0xSkg5Z093TVlrNG0xdmc1?=
 =?utf-8?B?L09wbHNabkNaMi9oWUppd3BTZFg4a2pmWDlDYTlYdFVaRktxaDZZWVNFNDBQ?=
 =?utf-8?B?YTc2Q3JENTlEVjhLVWticzNuU2NQcnJFbE5rNzFsTXNpTWV3YWVNLzEra0Q4?=
 =?utf-8?B?LzhxQ1VnZ1RZdVl4dHVLdmd2UENuOS9FWEFvR0hYNi9IYkhGV3A4dmF6VVJx?=
 =?utf-8?B?SmZpRTdqMEdhWXI4NjMxeWd6YzdrS09OL1dtbEhGQkk2UENzU1ExeTJLLzdp?=
 =?utf-8?B?N2RFOWJwUTVDZ2hJU1FuNzRZNmlwcVUzMUtEWmppZFBNK3JVbmJLNXF5NXNZ?=
 =?utf-8?B?QW4wTHl2RnVXNGZEMU1lRGYvTjVERytRcVpFWFFUdEVuVDVCaDIvL0x4ZWti?=
 =?utf-8?B?bVBYVXVBZ1B6blF3bjA5YmhFK2FmVTh5aUVGamZuUDN2VHJvbTNsVnBqOWFG?=
 =?utf-8?B?MitET1gyK2lsRVpPSU9IOTJJYXRhb3NtUEFxQlRwYlN5MHdneHVxRmRXNHBP?=
 =?utf-8?B?SW4yaEJwMlh4YmlMd0c0amtPeVNKWm5vb3Z4VVdBV0REcGpDNUV5MFRWVUpa?=
 =?utf-8?B?N0I5NWdHSm04QXozTG9IeWpCbVFLUFFJZk9RNzhPR05UdTlGR2ZLYUxjSFNC?=
 =?utf-8?B?UHJReThnQTFJclhHL3VPQ0xsRFQySnNKc2lncy9wTXdBWWRRSWVZNjhxNUJh?=
 =?utf-8?B?SkU2eGZLMzl1NlZ6Z1RkMzdlNk1rWUxvMmZzU0plWFIwbTIwRE1zSGo5Y1h1?=
 =?utf-8?B?L1NpY0xUL1FIK1J6YkR6dW1YK3FMS0tKZmFVVkovS0lCQWN5MTRNOFc4aWFh?=
 =?utf-8?B?KzN5TDJ2MmxDUVJMcERrdlZTb1FiMVFsNFY3eDUyM29kWFlBUG1vSWg5OFRB?=
 =?utf-8?B?YSs2WTRKdk1STXRNbGlxWnNnamZ4Ynl5Q3dSdU4xVktLeEo5bTZOV3VyTXg4?=
 =?utf-8?B?YXhwQ2pwLzlLS0ZhVVFDaE9jd2JEdldaRTNUR2VZY0dOaTIxUkJnSkhaUzJl?=
 =?utf-8?B?MXU0WXJoREwwT05qaERJKzZTOExyam83NTV0Y2xpK1oyZWVqMFFUNmhjZkNa?=
 =?utf-8?B?dWx1Sm9JM0cwZzlsWDRINENWazc4VjVyMHViTmY1WUcxNnJRalNhSXZvOG9o?=
 =?utf-8?B?Y0Z4WkVsc2hZTDJtVGswZFc0aXB1RFY1TEJ3ZjR5K0lQdENKcGxnRktsdWk2?=
 =?utf-8?B?d0RBK1BjdVcvdTlseTdWVENnUDlacHl5Q2x0Y0hvRDI3ZURCYUY0NWwzVVdJ?=
 =?utf-8?B?YmFZUnQ4aW1xQVRJTTFNT2lXdzdqZ2JhOTJzczZwbDlkeVBjdWl6NnRid0tw?=
 =?utf-8?B?ZEJ1am10UnlxTncxR0twMlA2ZDRVZlRYRmxTSmdBTjNUK0lEZ2xTazdJeFRq?=
 =?utf-8?B?STdIVHlYOXg4YWRFL3dIUUgxTHBZdWwzbjBGd09XSjlIRUhDdzVQaGQxRFB4?=
 =?utf-8?B?dDNnVFdxWWJIdmUxajZXVFhVVEUwSGd1MDNQSFp6RmRBN3c4aytrYmNjYTEr?=
 =?utf-8?B?bWw3Y1lIWTMwRWVCMUYwSE1OblpCZDZ4Z1hJTUpuYkJaUkozbDlMbW82Q3ZM?=
 =?utf-8?B?cVcrWENzY1RUVnlDaWJHdFptaXlMZEh1eTZGRGV2NnlheDdlNkgrWDZpaVM4?=
 =?utf-8?B?SXFMdG8xVlY0aDRuK3F2V0ZROW1hTzdwd0pySi85eHFvaEFmdWRyT052bUoy?=
 =?utf-8?B?OXNuWUlXT2FVVnNSSEdjS3F4YmJSOURxaWo4TXU0NTI5K1kwWkJpZTh2bnpW?=
 =?utf-8?B?dTlCNXQyZDRsZ0V0ZFdGdnhqMnFKcmphRG96Z1I3ekkzT0pTTStNVlVHdEJu?=
 =?utf-8?B?VGt0WW5MVk1qTjY1cVVnNFRxSzhRNlNna1BYbUFrejVrUUNBYjVlSGxsUnF2?=
 =?utf-8?B?dHVsVk0zYloyK2dJOW9ocUQyRVl2QnhXVnR2QkovTmFZOWpOQzdEQlRmUjJC?=
 =?utf-8?B?VDlpUDZ3UVlJaXRUdjJqQWwyZUhTT3UvdGQxSWpnMFVSTzQ5UVROb25La1Fh?=
 =?utf-8?B?R2JqWTJtZjN3VFc0S0NYRkNBdEpZYTNWektyRWtNbi9UcG5xNXRMZWVTWWdR?=
 =?utf-8?B?ZjRGTDRnb0NWOEQzdWRJV1podUlmWmlOL084NVV1RW1GRHVtZHpRU21ZQVlP?=
 =?utf-8?B?NE9adGRZYnhFVFMyM2phaDhxajhkMWhEVXIyb05nWll3U0ZoR0RkSncrckRU?=
 =?utf-8?Q?IxzwBvKVNNjXayTo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 51ee4ea6-cb4e-4a80-0809-08da2ec91a83
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2022 18:57:29.6476 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A8JysLnSn5LfOWjgGPvUjHESrdxD5Ia8hZ4Tqc7ADI5E9LGRDG46NNY2SF2OSrtCLMTqAD/g+fWs8V7hfw8JTA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3123
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/fbdev: print error in case
 drm_fb_helper_initial_config fails
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

Hi Jani,

On 05.05.2022 20:37, Jani Nikula wrote:
> On Wed, 04 May 2022, Andrzej Hajda <andrzej.hajda@intel.com> wrote:
>> On some configurations drm_fb_helper_initial_config sometimes fails.
>> Logging error value should help debugging such issues.
>>
>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_fbdev.c | 11 ++++++++---
>>   1 file changed, 8 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
>> index 221336178991f0..557c7f15ac22a9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
>> @@ -539,11 +539,16 @@ int intel_fbdev_init(struct drm_device *dev)
>>   static void intel_fbdev_initial_config(void *data, async_cookie_t cookie)
>>   {
>>   	struct intel_fbdev *ifbdev = data;
>> +	int ret;
>>   
>>   	/* Due to peculiar init order wrt to hpd handling this is separate. */
>> -	if (drm_fb_helper_initial_config(&ifbdev->helper,
>> -					 ifbdev->preferred_bpp))
>> -		intel_fbdev_unregister(to_i915(ifbdev->helper.dev));
>> +	ret = drm_fb_helper_initial_config(&ifbdev->helper,
>> +					   ifbdev->preferred_bpp);
>> +	if (!ret)
>> +		return;
> If this patch is intended for merging, I'd prefer keeping the failure
> path indented within if (ret).
>
>> +	drm_err(ifbdev->helper.dev, "failed to set initial configuration: %pe\n",
>> +		ERR_PTR(ret));
> I'm leaning towards preferring "%s", errname(ret) over "%pe",
> ERR_PTR(ret) because everyone knows what %s means and using ERR_PTR()
> seems odd when it's really a plain int.
>
> BR,
> Jani.

Apparently this patch didn't help in catching the bug, so no big 
feelings about it.
Anyway I think I have found the issue I was looking for: hpd poll worker 
could be run during driver removal after console unregistration causing 
re-registration of console, which is not removed later leaving dangling 
pointers.
If you could take a look at the patch [1], it would be nice :)

[1]: https://patchwork.freedesktop.org/series/103621/#rev1

Regards
Andrzej

>
>> +	intel_fbdev_unregister(to_i915(ifbdev->helper.dev));
>>   }
>>   
>>   void intel_fbdev_initial_config_async(struct drm_device *dev)

