Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE837535FE7
	for <lists+intel-gfx@lfdr.de>; Fri, 27 May 2022 13:44:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 440F910E12A;
	Fri, 27 May 2022 11:44:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94E2610E370
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 May 2022 11:44:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653651874; x=1685187874;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KNJHBESju7/Bn5HTMyhmN39CXc2DYNkryv13MTXEnFg=;
 b=b+qR0vwItAh01gJfsfupqJj6SJF4zLUhImELH+gDsw0iTKNSxND43u6w
 s0buw1kOGrKKb4E+DReHj+acyipCtbUK5KopDCdvCuuI29mYNVJn1zHRM
 5Iku1fPTbmROCSVIdv88bej+0xJKi63zjq522LVC75Bt0sSWVzy04ppSI
 /gfLs3lP16GGR6sR1fUwLRQPlK3Bk9mDolYn8KmMylXjtPyyoAmJFL1Co
 MPbPGrsbMjnDl8I5lKgKq9UaNtBO53fCRMIjNLWdr9UU1+cyivQz6Zzhz
 Qvr78HH6MGFyEm62a2zIhND9cTzvmcNvd1fhzVaqMyK2MnRYGrrZiDNdn Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10359"; a="273272312"
X-IronPort-AV: E=Sophos;i="5.91,255,1647327600"; d="scan'208";a="273272312"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 04:44:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,255,1647327600"; d="scan'208";a="677952295"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 27 May 2022 04:44:33 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 27 May 2022 04:44:32 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 27 May 2022 04:44:32 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 27 May 2022 04:44:32 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 27 May 2022 04:44:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QSVTr4OD7zrg3SWW4CnkcLxYTnuXhceCdJ68yJIAzdp+LNSkKcpMsLlsz6ZA540XlcjLfujZBn3/bx5oWxYIxIft+es7IgJN9CZgMAc4/g0SwZHUmnRwX5yMW4RFSOaT7Qrv3z1SE7EE+q7uSOemDP55iRHBOlmKWUU6/SOS4kyXwtGMYY08ViyKdRK+Nlk+PPJsHn0q7FAJD3OXWoqfEi+TMnScSRzlGx+n75TDBr3t6oWcyU1g3b5L4z6hR2/XSg2AORSjymp0gtZiQSwvduKKppaxJN8+5ZQEd9QSzTSfquqmX/oOr9ip9vAwoBeLJwS4WvAiANSiXzVe5J7Dqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pSyNgvLKBJNbARq1utOItL92sxBCmU7+9nIqgS9zW7Y=;
 b=VmUFYPtmbsngK5UkdXScK7RYngGTXw/CBzvZvaV3OxWyQKodkDLvxm7JK7LYTdpISPUyNC9J5hSfPF+8Cgoz+4zzX7rAYgn4ggr6jRht+WBZYidOScuBhOIftyHqIHQdM5BI7vGQ1AWyi8mvhYjb7k7VPUgBsJnab0W6BzjEGofguYZvYTfw0wOUkBixgfpuG+7D4dBcfrLV+zvBMUtN8vs5qtn664/NNdcYs6TgzWNXaZKPbyrmtlgzMPEFA9NBy4TmiM76mg/LioMPzn2jMN+dkVEl/Ntn5dZI48kNKdg4aXp5gBA5whAiUNZ3QLS66t4jDGsZPA6a8MFBdGIFRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by CY4PR11MB1240.namprd11.prod.outlook.com (2603:10b6:903:23::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.19; Fri, 27 May
 2022 11:44:18 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::b070:728f:be36:cbe]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::b070:728f:be36:cbe%6]) with mapi id 15.20.5293.015; Fri, 27 May 2022
 11:44:18 +0000
Message-ID: <f4444df8-7806-97b7-ba18-2bce473497a7@intel.com>
Date: Fri, 27 May 2022 13:44:14 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20220525095955.15371-1-nirmoy.das@intel.com>
 <2c138486-fa2e-867c-33ac-3e7837a8481a@intel.com>
 <2c1400c1-d255-5485-f3c4-e85e9a20d63c@intel.com>
 <b51cdb8a-d521-206c-3ac6-4ecbf7621caf@intel.com>
 <4c0e1483-607c-5f0c-6085-1d94fcf60736@intel.com>
 <cc2b390d-1f57-02ff-4880-86be834b20c6@intel.com>
From: "Das, Nirmoy" <nirmoy.das@intel.com>
In-Reply-To: <cc2b390d-1f57-02ff-4880-86be834b20c6@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AM7PR02CA0022.eurprd02.prod.outlook.com
 (2603:10a6:20b:100::32) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7e23abb3-bbf5-47a5-3814-08da3fd63b78
X-MS-TrafficTypeDiagnostic: CY4PR11MB1240:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <CY4PR11MB12408EA3C98F320558DF7D4199D89@CY4PR11MB1240.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: au9RQ6cWdpVvotKUEnYB+eUJ9mQVS8mu9dH9FQ4kmvrJmEwNy/pg0L1RLFNEhnyDZ+NZ2MKAY+W5gXjjB/YKercmGWEE/OoVXXDN+blh7d8Jv0R6LCaUcvdezReA57fjGyqBvloyHJy1DAn1K8v4y/pHPFiarwXFBzNQdV/9yLfaNeknvy1Kw3UbUmJJOwKrrLgX4yK9d0pJ6KblrS0HCatq/6ajY78pS5nCsA0Fn5ihWABgGW74C0b+I/upDsEicTPpJr7Kl/FtfhcptxZ4mFoA+eNvrDsXrn90oBrFgjZ7GkWQhbEh63wrmUKUQsoD4rJGeFeA0qApEJCHgQNnwgNdSW1gqyizrvUEt3WZf9pu+s0pKE9utv3ypJbkCkrTrc0E2acBABRgKjd3xlE6dmonF9Uvj1kOX7O+1wRQoTXPpRyOsskJR3Z4x3wRvhHqgVLzj8/zQEHR95k/NPZBXjUuLdIjlJZk3eZFFpUdobo1gIWEDzj/xjaft4pSot5y2kyk0Syl1VdiGaIEv+Uwd63iHxr4gzJbnYmiWc7PJZ9oT+gvPfHvmzDZOdnQ3DJEDPXxvR1qGRWa0GZBdvrYYTPvy344KAM5VNlxAN9uamSjyy1sfzLaJsWok5xMklhCKCdY2aB2EMpXWwCem2VEOM+nr0KlPUWE8WgdFeSCS8T9tXjTsWYu9OdxQsenXcOboz+qHkjvgWgk6nsJB3hE70qqzFUyarepiRnG1GwEWrs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(966005)(6486002)(508600001)(36756003)(31686004)(38100700002)(2616005)(4326008)(83380400001)(316002)(6666004)(107886003)(8676002)(26005)(2906002)(82960400001)(66476007)(6512007)(66946007)(66556008)(5660300002)(86362001)(8936002)(31696002)(6506007)(53546011)(186003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L1o3dTE0dnhPTk9HcUJwcVovS3hDcUhWbC9rbDlkbkFTOVdadlFsb1p5clZl?=
 =?utf-8?B?OG9PMzNDUzVPMmc5SWNCZHpqdzA2M1pKOGlac08wU21zVTY3QVU0Njdxb1Vy?=
 =?utf-8?B?dXhMa05EcFl2RitFNEZScGo3bi9rUmQxcmdaSTV5dk56ZVFRWmtlU2xDcFJz?=
 =?utf-8?B?clBBMHkrY1p2L28ySlBBVmJmNGJGRURVb1BSVmRadWVaQ0Q3WnBGTExpdXMw?=
 =?utf-8?B?VTR0Y1RJeEN0TnVVZWs2M1BRU0o1SkZYbnFzb0w4dHY2dVNhdE5hLzlrV09F?=
 =?utf-8?B?a3V3d0RvS3dDZHhxZ0pDZFptQjYrQmVwVFBOZ2svd1FJN2ZIUmxtaEI0WFI4?=
 =?utf-8?B?MDlQN0RTQzgwZ1R0aUdyQWoxSlVGTXB1RXBGdDBFT1ozQ1R1WXk3UWhqU3FD?=
 =?utf-8?B?SGEzR3ZjU3B6NnVWdDc2cFE5czZBUUhCSm42YWVENlZUNzBYZU5JUGZJSDNa?=
 =?utf-8?B?d3BERjRtelBzaHQ1OWxDcVFSVjEycG95SEd6WGJybk15bEFUWlBIdEhheDBh?=
 =?utf-8?B?N0NlVTVERVBjaEF5SitPK05oMjE1N2dzbzgxLzhJbExYOGVreVYvZkRaRHhC?=
 =?utf-8?B?ZklxVFZxQk13WHppb1ZoanVINFNLWXBLM0xDZldLekNhN3k0eWlFc3JHQ0Vj?=
 =?utf-8?B?cGtHcXBTMmRrWGpkUWR5TlNTVko5TzMwZ3NLZjlrQktERytibDNkQUM0K3Fy?=
 =?utf-8?B?YnBDdVd0N29yZ1lITXRQUHdmeWlFTzFFN29XYlNjdUdwWXhmenJURGRFaVRI?=
 =?utf-8?B?VEFaMjF4Qm1YM3dPQzRUV1E3NmxrTCsvRm9pWEtGVFZBWm5sSHBJSm9qclRE?=
 =?utf-8?B?ZWtLN2liNFVjWUNLMUhrNklvZUFadzZ2bVVNLzBWMXp0NDFsQXhVUEVMY0hP?=
 =?utf-8?B?SWRiSHNXNExSbmtsMW4yU2tuM0tESFA2ZXRlS3lLaHJubUthRnhkcG5wTkE1?=
 =?utf-8?B?Uzg2Y3k1Y0hZWnJiWWhmT2tFUU1XcC81MEpwdnQ0ZDQ5ajRjMGZGV0NjNDhU?=
 =?utf-8?B?STgyY1QyQ2xHeTZHUHU5MmxDRDRtT24weUhWcnZqa09GVjBDT3lLckZNM0dJ?=
 =?utf-8?B?Mi9ubkI0OUdjL0szRHlaZWp0U0luZ2hVTnVvYndZUHZtaHFKUnRJeHgzOGEr?=
 =?utf-8?B?VUt2SFhZWERodFdFWjhOKzNLT2trOGRheUJzZm1RRGN4Wi9SVkZMWVNQeFZi?=
 =?utf-8?B?T3pESnBNQkhJVExjU1pXNWxxenR6ZHhheWpVZHl3OWdPa3d3ZmsvNi9idVRJ?=
 =?utf-8?B?d1RPTHRjTjEyTjVpVlJqclI4RnR3aTVuSVNNb2Vuc3FCQ2VsMzZJejNkd29F?=
 =?utf-8?B?QTl4Wkl3NmVyOHNmTEI5b0dGM05IQXMvbTNkY3ZaS0VaMXFrb1JtTVYxMm5p?=
 =?utf-8?B?MU01OWNRM05aTVBodzBPbEhYdW9jd2pFbjF2UnM3dHBzektWcjI1d3RRdDlh?=
 =?utf-8?B?MmppWGFaYzFTWjZKaTMyU3h3QUw3QlJuYmErbHVPem55bkx3emlEQ3VVWVkw?=
 =?utf-8?B?VHdwalVKa3JiakJyWW0zYVp2MTIrV3gyQ3ozYk1QckV6amRIUHltbVV4ZTFy?=
 =?utf-8?B?OFBYZHQwSDBKVldlbGZiTDVVdTFCSVB2WDN4ci83Q2tOR1hEWDZxRGxlcHVS?=
 =?utf-8?B?UU9OM2N1TitRM3pwVmM3a1J0b2NwY2NkSmNyQ2NqWCttOG5TajBqSWhTc2Yy?=
 =?utf-8?B?MHBYbHJyWlBoWW01S2RIS241NXFmd3JudnFDcHc5eVFhYW1mK0ZXWHJBUms3?=
 =?utf-8?B?MC9nYnM3T0NOc2NRbUZnQit2TjBjbm9MdXV0SVBYZ0JoTGpKb0VqQ2ExWWJE?=
 =?utf-8?B?bVA2SXJET3YwSmlWdEdGN09IK2hFVWU3blp5eFl0ZFpVNUFTYTlnd0RRSHRT?=
 =?utf-8?B?U0NvNVZwb2Z3ckNuVDdWWDJBRnlMZWNHS3E2VCtVVTlqNWZTdkVqbnRmS0Ji?=
 =?utf-8?B?WWhNbGFqRlZQVE5xL1RhcVJHdHAra3JHNGV2TkhrN3V5bkFTWWpubHhnYzZt?=
 =?utf-8?B?UnZQVm1sOE9SQVJzd3hnK1pNUmQxQmtKNWFsTjZKTU1VaVdsMUFSSmZNRDRK?=
 =?utf-8?B?V1kvUlZSMllUaGd2ZW5MMUlQcUpPNmZFVHh2RTY3aUpSakZDTTVGS1ZDWnJj?=
 =?utf-8?B?TnRuR2Q3Ti9IWGw4bmNLS2NId01hdlE4TUNFZ0lkQS9Jd1QvN1laSTR2UFhM?=
 =?utf-8?B?SWtGN2RWNVZXeEhpRVltQkxiaDV0cnUrU05weEFqNzNkV0c1OVc0bDZqTTdM?=
 =?utf-8?B?SVNtWmRJeWs1S21ZSTN5ZU12VHplbE5oZ1FWRUJlRmY2SGZwNXpGUno1OS9S?=
 =?utf-8?B?WklDR01JS0tQUm5KT21CSER5c3hJZHlyK2tGUVRkR2E1cnN1S0hWdz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e23abb3-bbf5-47a5-3814-08da3fd63b78
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2022 11:44:18.2288 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7HUnl3uNpi6NtPzrPBh714xWtRSD5Bjz7pQXqNufZkLgbpLlf6tQ2icVvr78PuEPAclbj0TIUfcJy/wBoDDTcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1240
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6] drm/i915: Individualize fences before
 adding to dma_resv obj
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
Cc: thomas.hellstrom@intel.com, chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 5/27/2022 1:37 PM, Matthew Auld wrote:
> On 27/05/2022 11:24, Das, Nirmoy wrote:
>>
>> On 5/27/2022 11:55 AM, Matthew Auld wrote:
>>> On 27/05/2022 10:46, Das, Nirmoy wrote:
>>>>
>>>> On 5/26/2022 11:27 AM, Matthew Auld wrote:
>>>>> On 25/05/2022 10:59, Nirmoy Das wrote:
>>>>>> _i915_vma_move_to_active() can receive > 1 fences for
>>>>>> multiple batch buffers submission. Because dma_resv_add_fence()
>>>>>> can only accept one fence at a time, change 
>>>>>> _i915_vma_move_to_active()
>>>>>> to be aware of multiple fences so that it can add individual
>>>>>> fences to the dma resv object.
>>>>>>
>>>>>> v6: fix multi-line comment.
>>>>>> v5: remove double fence reservation for batch VMAs.
>>>>>> v4: Reserve fences for composite_fence on multi-batch contexts and
>>>>>>      also reserve fence slots to composite_fence for each VMAs.
>>>>>> v3: dma_resv_reserve_fences is not cumulative so pass num_fences.
>>>>>> v2: make sure to reserve enough fence slots before adding.
>>>>>>
>>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5614
>>>>>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>>>>> Reviewed-by: Matthew Auld <matthew.auld@intel.com>
>>>>>
>>>>> Do we need Fixes: ?
>>>>
>>>>
>>>> We can add:
>>>>
>>>> Fixes: 544460c33821 ("drm/i915: Multi-BB execbuf")
>>>
>>> Ok, so needs:
>>>
>>> Fixes: 544460c33821 ("drm/i915: Multi-BB execbuf")
>>> Cc: <stable@vger.kernel.org> # v5.16+
>>>
>>> Should I go ahead and push this to gt-next?
>>
>>
>> The patch will not get applied cleanly on 5.16 and 5.17. How do we 
>> handle that generally ?
>
> The above is just the output of 'dim fixes <sha>'.
>
> I'm not really sure tbh, but I think the author just gets notified 
> that their patch doesn't apply to a certain stable version, at which 
> point I guess it's up to them to provide a version that does, if they 
> deem it necessary. Also note that there is no CI coverage for such 
> things...


OK, please push with the fixes tag, might useful in future.


Thanks,

Nirmoy

>
>>
>>
>> Thanks,
>>
>> Nirmoy
>>
>>>
>>>>
>>>>
>>>> Regards,
>>>>
>>>> Nirmoy
>>>>
>>>>
>>>>>
>>>>>> ---
>>>>>>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  3 +-
>>>>>>   drivers/gpu/drm/i915/i915_vma.c               | 48 
>>>>>> +++++++++++--------
>>>>>>   2 files changed, 30 insertions(+), 21 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c 
>>>>>> b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>>>>> index b279588c0672..8880d38d36b6 100644
>>>>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>>>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>>>>> @@ -1010,7 +1010,8 @@ static int eb_validate_vmas(struct 
>>>>>> i915_execbuffer *eb)
>>>>>>               }
>>>>>>           }
>>>>>>   -        err = dma_resv_reserve_fences(vma->obj->base.resv, 1);
>>>>>> +        /* Reserve enough slots to accommodate composite fences */
>>>>>> +        err = dma_resv_reserve_fences(vma->obj->base.resv, 
>>>>>> eb->num_batches);
>>>>>>           if (err)
>>>>>>               return err;
>>>>>>   diff --git a/drivers/gpu/drm/i915/i915_vma.c 
>>>>>> b/drivers/gpu/drm/i915/i915_vma.c
>>>>>> index 4f6db539571a..0bffb70b3c5f 100644
>>>>>> --- a/drivers/gpu/drm/i915/i915_vma.c
>>>>>> +++ b/drivers/gpu/drm/i915/i915_vma.c
>>>>>> @@ -23,6 +23,7 @@
>>>>>>    */
>>>>>>     #include <linux/sched/mm.h>
>>>>>> +#include <linux/dma-fence-array.h>
>>>>>>   #include <drm/drm_gem.h>
>>>>>>     #include "display/intel_frontbuffer.h"
>>>>>> @@ -1823,6 +1824,21 @@ int _i915_vma_move_to_active(struct 
>>>>>> i915_vma *vma,
>>>>>>       if (unlikely(err))
>>>>>>           return err;
>>>>>>   +    /*
>>>>>> +     * Reserve fences slot early to prevent an allocation after 
>>>>>> preparing
>>>>>> +     * the workload and associating fences with dma_resv.
>>>>>> +     */
>>>>>> +    if (fence && !(flags & __EXEC_OBJECT_NO_RESERVE)) {
>>>>>> +        struct dma_fence *curr;
>>>>>> +        int idx;
>>>>>> +
>>>>>> +        dma_fence_array_for_each(curr, idx, fence)
>>>>>> +            ;
>>>>>> +        err = dma_resv_reserve_fences(vma->obj->base.resv, idx);
>>>>>> +        if (unlikely(err))
>>>>>> +            return err;
>>>>>> +    }
>>>>>> +
>>>>>>       if (flags & EXEC_OBJECT_WRITE) {
>>>>>>           struct intel_frontbuffer *front;
>>>>>>   @@ -1832,31 +1848,23 @@ int _i915_vma_move_to_active(struct 
>>>>>> i915_vma *vma,
>>>>>> i915_active_add_request(&front->write, rq);
>>>>>>               intel_frontbuffer_put(front);
>>>>>>           }
>>>>>> +    }
>>>>>>   -        if (!(flags & __EXEC_OBJECT_NO_RESERVE)) {
>>>>>> -            err = dma_resv_reserve_fences(vma->obj->base.resv, 1);
>>>>>> -            if (unlikely(err))
>>>>>> -                return err;
>>>>>> -        }
>>>>>> +    if (fence) {
>>>>>> +        struct dma_fence *curr;
>>>>>> +        enum dma_resv_usage usage;
>>>>>> +        int idx;
>>>>>>   -        if (fence) {
>>>>>> - dma_resv_add_fence(vma->obj->base.resv, fence,
>>>>>> -                       DMA_RESV_USAGE_WRITE);
>>>>>> +        obj->read_domains = 0;
>>>>>> +        if (flags & EXEC_OBJECT_WRITE) {
>>>>>> +            usage = DMA_RESV_USAGE_WRITE;
>>>>>>               obj->write_domain = I915_GEM_DOMAIN_RENDER;
>>>>>> -            obj->read_domains = 0;
>>>>>> -        }
>>>>>> -    } else {
>>>>>> -        if (!(flags & __EXEC_OBJECT_NO_RESERVE)) {
>>>>>> -            err = dma_resv_reserve_fences(vma->obj->base.resv, 1);
>>>>>> -            if (unlikely(err))
>>>>>> -                return err;
>>>>>> +        } else {
>>>>>> +            usage = DMA_RESV_USAGE_READ;
>>>>>>           }
>>>>>>   -        if (fence) {
>>>>>> - dma_resv_add_fence(vma->obj->base.resv, fence,
>>>>>> -                       DMA_RESV_USAGE_READ);
>>>>>> -            obj->write_domain = 0;
>>>>>> -        }
>>>>>> +        dma_fence_array_for_each(curr, idx, fence)
>>>>>> + dma_resv_add_fence(vma->obj->base.resv, curr, usage);
>>>>>>       }
>>>>>>         if (flags & EXEC_OBJECT_NEEDS_FENCE && vma->fence)
