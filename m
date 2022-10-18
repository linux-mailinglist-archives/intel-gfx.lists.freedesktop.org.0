Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF75601F14
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Oct 2022 02:15:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 162E510E0BD;
	Tue, 18 Oct 2022 00:15:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD57E10E0BD
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Oct 2022 00:15:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666052140; x=1697588140;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Kz+IMh1kCKA9vsFlc4EYrRSzDCqDDuCUNftx77uQYus=;
 b=edF/XG4Rn4t3zpam7FhsRBIVZc1SHVrTucJD4q+dJ0aySHTYKAz3yCor
 r3GcFAC0meHYsgLNJUbgw9fXaT87VdAJc5rGYBCk/bGtLsnnZwZ33GsQt
 8CdIDnRsFluWdzTL3N1fC5vbuOK0jnQ4L0IpDKDycb/uUmTldrJW5/5DV
 UcNsYN3IrG0710VI3YewAsiYrDGLaatiDSfjX76o8RiyVvPDSZuyycHz7
 IXZkljcKnChflPh5ul4r0JyWFjT5Qx3J+oQ7mykKt8ZSwgF1FZRekxr1r
 k5b25WooscdhGm0VsZZeLOEqykwejv8vluV+w4ovFo2hsSk4DuE5PpR0j g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="367981763"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="367981763"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 17:15:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="697258347"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="697258347"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 17 Oct 2022 17:15:38 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 17 Oct 2022 17:15:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 17 Oct 2022 17:15:38 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 17 Oct 2022 17:15:38 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 17 Oct 2022 17:15:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ci0bzqLALoDtRanmDHwUuaBr3E0zAuP7xB5s1KjbtMDTZ6DVT/+RFYKtArEg9KCZcbxDEN94dMJpZkoWYUtz58tjYBGdAarOI956UzLjvILZM2lXYIK4J7w6EKvBhCcJcL1hEu3/+ov7pSK2jPZh9dh9MgdKXrxyZBdF/SqHf/qbB+WEgn9+Uh7G+G1YTe0KyKPDVFNhXZbHvuJEyE3Ngh8IkRSVQxo7sa62W0tUkzipMUVA4FrbOSyYvQXG7x2Yw7ZthHjDaOcEpHYjbZW83r9oV8F/ibOLEUPm2fgOZhD67cGtLw7sK/nwEZiIbTZ7om79HwyBbCvryaGIepJukg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L4wpL5e/wqO/7QzWeoS6F0rZIIDdwPsiDr0+nJcStJo=;
 b=mSpq8KVv+bu0zloVAqRY9a3BYFWtOhP3YGM6xLinLq7yQAyWje67DzYcOsi32AiG0JdQ7ZCwIgAVMS18QGUOE+wIk+bKBt+5/NCFXcRgFwF6mAOI6/WiyedWk6DTIfQToZZyuiiFib6yZJ5IPntMxlgDGTKhdixqdIzw/c2Ix3G+295ae356rZ9IgFP9TtuFHKzSuv8kmps5r12vZozGTLG3af60apgVxM4eVOwSoOjK1WhUF2942fXS/mKxHb+ImP274U5+tuyjKUfnynUDsBJbFtfNHQQv5FvnBOy+ySk7hurzildXKPI1DCQI71uZSJB/3ltXZiGTBWHcaJT6cQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by DM4PR11MB6407.namprd11.prod.outlook.com (2603:10b6:8:b4::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.30; Tue, 18 Oct
 2022 00:15:35 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::87a1:bf2f:7377:3036]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::87a1:bf2f:7377:3036%7]) with mapi id 15.20.5723.033; Tue, 18 Oct 2022
 00:15:35 +0000
Message-ID: <774cbe6c-ba6d-debc-1c69-91f8740c467e@intel.com>
Date: Mon, 17 Oct 2022 17:15:33 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.2
Content-Language: en-GB
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20221015035952.1741319-1-alan.previn.teres.alexis@intel.com>
 <20221015035952.1741319-2-alan.previn.teres.alexis@intel.com>
 <549304f2-6f64-fba0-0c2d-da5e4b3a2927@intel.com>
 <7f85a6e3702559e2296f284e040c3f52e86a8b7e.camel@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <7f85a6e3702559e2296f284e040c3f52e86a8b7e.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY5PR04CA0027.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::37) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|DM4PR11MB6407:EE_
X-MS-Office365-Filtering-Correlation-Id: 921f6c1f-2c76-42e6-0805-08dab09de070
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fKJXcJxWm1MZi8qy8N0vwFi5/wv8L6hU0Xw1fBg0aebZgW+6m/Q4ydPjkQRVTkrXZZrutJEwPvvYZVDMF2RCs+WML6AlcqSWUerN0Z5pH3TTHZX/i1FyGUA/wKQFLdZ1N4WL7wenk7qpE80iPyv2JZ0FzbItBaLY9QgXdgBFE4CdmH8A5balPso3VkGxAFFfBv4FfjyEAwT74JucrdtsqmnwDnKnS1rwop2TS4lYn3UtqBBM5V92K/kLZWpO7tdEqKf9qmc97QQyIJONa5Yzpc+JPkxAA8U/XWIl4oe6SdFqgRRgzwjDJOyR4X3ujFdNKa8cxVR/bdHwn0PMEEoPa5jqSU99S1f5XQz6GoiVU8wyJhtT0eFE2EQLHclvRfoARbUt11no5PUrX/7Cc12AP1yZZCy5JSq7XoQf/NmUDNq5Y6rYaRDD0GqJvtVtbIwOcZx4jiMRGbgvVbNoQo5ZgMLQ5F3ZWTLSHMDzGxjqPMqs7Uk169JQQLn0jGyuVyc26PtMOHxvNxaoz60D7CbpUJcrUmxbWKmmVLxtTAfOSYgVs+yiQjNO9tfgyh2iRRbpxsGhj8EocFc8A5sfMv6H9giWZa5ExkQYbctuIOVXuS2KvZxTGBZ/AkJSMXHxCk+WC5yGQ2qtwghWzUkrMx+8khmUNnZVy1/U9NVp1KDm6ucnmy9FFzgaR4dKSxzNrnZot2PtKpZq6WvwT40PV9q+Bfj6Oxi+rmOKlZPokKninyhwQyxRlV04lGwkW9YLRN8cHgMRnRXdu4ZCBSQmycypDvH4UnDxmENvqlEHBm1GOB4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(396003)(136003)(39860400002)(346002)(451199015)(31686004)(6506007)(66946007)(66556008)(8676002)(66476007)(110136005)(36756003)(38100700002)(478600001)(6486002)(83380400001)(186003)(31696002)(6512007)(53546011)(316002)(86362001)(26005)(82960400001)(4001150100001)(2906002)(8936002)(41300700001)(5660300002)(2616005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WjRFU3JOMlczTEpVY09yVm9HTzQvMWlmZ05aSTJ1eGF0ek1xQ2hwakNJUm1X?=
 =?utf-8?B?QWlYUmJZOWpXdjZ5bDIwb0ZiUUoydU1kZDN5aEp6eHBmUFdYTzlsZmRYdE5p?=
 =?utf-8?B?eDNqUWFYb2hMcysyQXdiZDVSa0F3UHZzaHdVMWJiSGRjK3drZVBKb2FsTXgx?=
 =?utf-8?B?NDNxbmlFWnUyL2llRGNvdEZJcHV4T0JRZ0ZwR1ZRR2F3T3BCTzFFMm9HeUpv?=
 =?utf-8?B?TjgvUXpCMDlHaEIzbVhROTVoVnV5M2NiMUlPMTIrSGhDeHp2OEtzTlYrZ2Mz?=
 =?utf-8?B?ZFhDelphYzVzYmI3R3RvOVdOVnJCQ01DSUJ1UUVvM1JMa2lQN1NLUUFZZSti?=
 =?utf-8?B?OEpJbGp5TFJXalhPazEzOW9GdmFZR082R1l2ckNYVE9pdStWSVczOERLUTg0?=
 =?utf-8?B?WjJuSUdsYnZYRVZWNDQ1Y2VYd2gzQmljcUsxNkppbmN5VlhhTUtmaldZc1hk?=
 =?utf-8?B?VlJFa3BGSnVySFZ2KzhTS2g2TUFKWmJvVDFFT2JhNkhDMXcyNVNMdjAyb2oy?=
 =?utf-8?B?aGtsM0M2M2tIenNnM09tcjZUaVo1MEpheVNDTGV3VnhCN01UYTU3YmZuWVBQ?=
 =?utf-8?B?a0JOWkxQbjIzZE5iRS9ZdEFIZDlvZEJyK0pzNEF6TUhOemVzNlFNVGk2WURz?=
 =?utf-8?B?TEU4bnlVTEF0VmQrTlpJeGNzMllwbDl0K3BQS2VJL21kQkFqeENsSC8rdmxC?=
 =?utf-8?B?QXMwa0VldzFmblBoYUZZMjduRjlva1h0Z0Y4T1QwcG5DNnRUbVY3QngrSkE5?=
 =?utf-8?B?YVdGSys4cDRheGdKbElIaE9jR3pZN2tVcTkzY2JOa0sxZytqR1h5YlUyTHZz?=
 =?utf-8?B?bmExUTQwck5SZEN6blpoWHQwMjRZa3lyakdtYzFwdmhqLzhMUkRmcldZakQ4?=
 =?utf-8?B?c3hVVFpMM2xDOCtQeEZwMHFlVUFDKzZqaFZMZWY3b2RYWFphczJvZGVIZXBT?=
 =?utf-8?B?OUJxT2dJSXRyN1I2M0l5emJlcnRhRlBCcmI2YitlZjFvazZoOHUySXVRRStk?=
 =?utf-8?B?YTRKSEtUcTRkYW9kTk9TSktHUEZiekpJNTZDNVhiaDVlMldrUW1nS3hnclVP?=
 =?utf-8?B?OXN5d1lLaXdWME5nTktjRUpndjFPd1o3dU9vMUs3T1ora05WYkxra1FYU3NF?=
 =?utf-8?B?ME05M2NRdlovK3lGdEprbnpkbnNSUU9jOW4xM09UY1NFNnk5aWZhSzl3a1U2?=
 =?utf-8?B?Z3JjNGNwUjF1aEhXWk5uaDNpTW50SGt0d2lOS3pPbjAvcEFBaUllakVCU2E4?=
 =?utf-8?B?TFZsb2I5WUoxK2xOUi9kdTdKdlJvTnFvSGE3eHVlR0ZvZWM3TWVkbG1pTWF2?=
 =?utf-8?B?ZTdLZ1B1dlN2Ykg5b1Y5dURZdkpzUDJudEQyNzNCSitTQlZZbFdkNEF4cnBU?=
 =?utf-8?B?cFJUeEhMemtOdDFvZTRwM2JvVjVMVGZxNnl6UU0rQzF6V3ZxaHNUNUdtNi8w?=
 =?utf-8?B?cXpWK0VaT3N5TytwTjlQT3JWS045bzFydUdoMjJOTlVlVVQ3RjQ0eWpxYkpm?=
 =?utf-8?B?dU8wLzNrTDBUcVBZTllRRmNnZ09iaHU0cStGUkxnWjN3UzRiYS9BdS90SVZV?=
 =?utf-8?B?KzlWdk1Ta0Z5a1IwVllKUUZGRk44SzBIWVNnMVZ0aHY4UnFBYmlZUXdhTlha?=
 =?utf-8?B?THQ1ZVpyaXJPbWpleER1TVV6b294VXhOR1hPWklkeTNrNnVLaWZydGN6b1hJ?=
 =?utf-8?B?TVl4VndYKzM3MEh6bkFYZ2prSGpOSStWOCtLcGtIRUh4NzR2U3RuNVFVZDdK?=
 =?utf-8?B?dWc4U0FVOHF6K2s5RlZ5eGNKZ3lZL05DOGlJdnhqbVB0ZmhXSXRySzhPM2p0?=
 =?utf-8?B?NlBYY05QUzFSK0JOaks1WjNTRGVSOVVqSVluRWs4dngveXM1aWEyZTI2Y1BW?=
 =?utf-8?B?elZsSjZhK0lJZ2RTUlRqeUFZUEtZTytOdDlPR0JEM1ozUGJEVkc0bGgvMGp0?=
 =?utf-8?B?SlZmaHZTZ0kyTE9SczRsK01HWndvWXU1NWswakxhaTdXUEw3UlNmYi85b2tT?=
 =?utf-8?B?RENVVGsvd2FTeGpwSklmd05wajBudDdsSHdkWjZid0NINDNpMUk1M1dNTG5t?=
 =?utf-8?B?bzlwMnlaSWdZd2dOcmVJZGNObWp2QVgxV0xWVWl6dmhRQ0pKZXRvRlJIaCtt?=
 =?utf-8?B?OVZTMnFDRXBYTUJwYjZGNXVjSjAyb0tyVFd1ak5CcWRWUlhDUHJzeWh4U1Nn?=
 =?utf-8?B?SUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 921f6c1f-2c76-42e6-0805-08dab09de070
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2022 00:15:34.9545 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9fmRNaEa3HqG2pH8M7zqPNS3aofVGFXCXayP2o8eUnRUWOQ759+pybo59GuOvxGudueRGj9TrdcXuSiFYQBUwOXJCgARY92SDRupMBU+Yjs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6407
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/guc: Add error-capture init
 warnings when needed
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

On 10/17/2022 16:36, Teres Alexis, Alan Previn wrote:
> Agreed on all the others (as per my other reply to Tvrtko), but on that 2nd last one:
>
> On Mon, 2022-10-17 at 12:33 -0700, Harrison, John C wrote:
>> On 10/14/2022 20:59, Alan Previn wrote:
>>> If GuC is being used and we initialized GuC-error-capture,
>>> we need to be warning if we don't provide an error-capture
>>> register list in the firmware ADS, for valid GT engines.
>>> A warning makes sense as this would impact debugability
>>> without realizing why a reglist wasn't retrieved and reported
>>> by GuC.
>>>
>>> +	if (!guc_capture_get_one_list(gc->reglists, owner, type, classid)) {
>>> +		if (owner == GUC_CAPTURE_LIST_INDEX_PF && type == GUC_CAPTURE_LIST_TYPE_GLOBAL)
>>> +			drm_warn(&i915->drm, "GuC-capture: missing reglist type-Global\n");
>>> +		if (owner == GUC_CAPTURE_LIST_INDEX_PF)
>>> +			drm_warn(&i915->drm, "GuC-capture: missing regiist type(%d)-%s : "
>>> +				 "%s(%d)-Engine\n", type, __stringify_type(type),
>> What Tvrtko is meaning here is to not split the string at all. You can
>> ignore a line length warning message if the only alternatives are either
>> to split the string or to obfuscate the code with unreadable/unnecessary
>> construction methods.
>>
>>
> I dont see how not splitting the string makes the grep work as per the reason Tvrtko was bringing up... but sure,..
> ignoring a checkpatch here is fine by me - as i do agree having a single line is better to read.
I don't think Tvrtko was meaning anything other than the line wrap. 
Having %d, %s, etc. in a string is fine if that's what you are meaning. 
You really don't want to go the route of expanding all possible options 
of those. And you can still grep for 'missing reglist.*Engine' for 
example. But yeah, with this particular one I think it is more about 
code readability than greppability for me at least.

John.


>
> ...alan
>

