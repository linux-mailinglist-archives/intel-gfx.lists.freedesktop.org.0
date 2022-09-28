Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E30C5EE453
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 20:27:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76DD410E702;
	Wed, 28 Sep 2022 18:27:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D0B410E702
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 18:27:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664389665; x=1695925665;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qGylkDc5H8Y9/ETTkjh1/bp1sLBuZq/hrJ+w55d1waE=;
 b=OdfKizBmFt7Q03xOEgpGbjrcxC0IrCSIrp8p6GVGU2xGmgVQVBCe6Exg
 86rFllzS+Om0cYJmgcygXYkUhYOn/XqUyKFNBc5UD+UQLXeqE+6q7yFTP
 SAMxQJhhiRIALbpySI5isNxLW9PpuzZKJGrc2R4541f5fDfFrd+1cjZl+
 GNYKN1WKao+GuQmNY09usMgxNCEFQ3flWTZcGL9RcCKJ5rFqbe03CPwPo
 QmgSfkqPm0Kg3y+hiubnmPh6Rsd/hJ04rR+bs7HANzf7PqlPV/5cSe40o
 azXRIv6zv22p3zg4yTsPzUZ5aCCWeluerNBLWUTJLAwDa0MLJ9oMLktao w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="363524933"
X-IronPort-AV: E=Sophos;i="5.93,352,1654585200"; d="scan'208";a="363524933"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 11:27:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="690499244"
X-IronPort-AV: E=Sophos;i="5.93,352,1654585200"; d="scan'208";a="690499244"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 28 Sep 2022 11:27:43 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 28 Sep 2022 11:27:43 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 28 Sep 2022 11:27:43 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 28 Sep 2022 11:27:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ivy5QQl138blXaVTcnDVb5yCXBE/3kpf4Y3KMCZTi5+41ZfSCQUOQfg23iuWtzDTpluTEUCknFFDN7L+JGKA9wHuR0Q+GeBIljLuyEp3UFsJsqZeXNuEO7c+IBlD2ot035WwQzo5Gj1xkECUUX7wup7bwbD71buoHPrAcXbfdztBukityre+lmdZNfYbl4tVwtOf6RJG0osISJ9leBtRPmgsREOVEiuKG/MLzZtBlOPcCcw6PJXZVLUb34XZiL+D0Rdp42+tjaEq9HlvoddGFONmtB6tfxGQ+tU5Rv2Llx3A/HVXY+9Yp4jlS4G4O8Z7Wp4NJyzRWT8CEPFvgUj/Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HbenjAOAW6BOgSpYgdDoWxHwN/GQmKZfg4esGMhms9U=;
 b=Hce9tybC5HANozfNymu6G9y88P/RbOdNkBuJSakdAKA412r4XvAzY9dqf+mNJ0V7IlwUY/0LYKBTjF3w+k4UQOwvAfv60mu5ZNQ9rC+Zy0xzIWvLA2twEL07vTRwl8QIorYvL8WTZinaXiKVH+9pUjjr4mqJb1wzTGGDD1BvS7AhAByMb3NunOunLgbrKzj/CKIscestSEDWHIowRiMc6bjJU9I/nwurVbUzuqiVt1CqDvCwl1YtIAVg3gK7ks8NuN/V8CT7wZRrj+Ll5MCCxqQaVUWkG2NtaSx6UrwRfd4NKnNhYbyHiQIFlNKN9TPc6zgKN8gs1DcQLeHleax0GA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by SA0PR11MB4702.namprd11.prod.outlook.com (2603:10b6:806:92::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.17; Wed, 28 Sep
 2022 18:27:36 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::7750:dd86:4ef:afc6]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::7750:dd86:4ef:afc6%7]) with mapi id 15.20.5676.017; Wed, 28 Sep 2022
 18:27:36 +0000
Message-ID: <e4200a76-f7e0-106e-cff9-5e58f27b40da@intel.com>
Date: Wed, 28 Sep 2022 11:27:33 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.2
Content-Language: en-GB
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, "Ceraolo Spurio, Daniele"
 <daniele.ceraolospurio@intel.com>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
References: <20220926215410.2268295-1-andrzej.hajda@intel.com>
 <YzIrUG8lrEsY9XOo@ashyti-mobl2.lan>
 <7039faf9-b2a1-9400-fdc7-f5dcd7a8dd9a@intel.com>
 <f34e60c9-17ea-56a0-acb2-bb8d97363993@intel.com>
 <c3af2831-d06b-5818-baf2-e88b4d1f6694@linux.intel.com>
 <ad885543-02f3-5a44-0d06-0ffe48cf29e2@intel.com>
 <ad22bd93-fcdb-3463-9915-1e4409618239@linux.intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <ad22bd93-fcdb-3463-9915-1e4409618239@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0248.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::13) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|SA0PR11MB4702:EE_
X-MS-Office365-Filtering-Correlation-Id: bb3396be-8c4f-4d67-7730-08daa17f1e10
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: exLq0R1j7iJAlwYGdv9EuvV9tMALWNDQNieUHNyYQC3vZtpAIX6He3ZN2SEeZ2BVwb245Sgb9TkXwEwzmezhLfiKG81fgBRAMV9w28M1Rk6npPFgtuqMnuseXYQCeQtoZosYs7DUCTqjxnKCAn5Gcxs9zHH1DU8v2dxnjPH6ft/e00y7jRNPFdjYTduk8RVfQIzGC+iFCFRczRGXh4R/ckclIo4PF9lhO8VQk0bvnsnFGGcSSSAbneMvwEJeBp7ZjZ2hVdvlG3e67cMoMh6AsYl7icTwvsHX3288dkU8kh6kIsAXkposRCafOXT6+Org7eG2FVj10icmDU8AzOsHt6CTy/aJ3TfreChCeRtJC4OJv7lEbZZo+FYWOQlArcw1zjY8agyP3vT6wpCTTLr5AHKeNz0hojfU34GuTzrA6DIWhFxKiU9s5jvisJ6bLhcfWxtteJeh4LKODJeKiEqzckiyVTctGeDIC+7G2xTziRl35ObCE03zsX2LMszOpvlQ50POrfY0RKk9/tIYkd6eu9+IDPXvrGT15L/fwjoagGU406fIMWRN+b2mleJRH2eR1ZXhaKoeipF588KcoomjGcIpeZRfLHFzcwC5Uh1HzoHtQdwNTpHmc9uO8jH2IfVnbFDWnWMq/T3Rnnl+6cJdzC1H7FhcuikXzrabUB3gbwSb5sw9ZmjgjhHzQ07LUw8TNssjZHiWz05QcKFi9y3WZp/8mULX6E7qJFZ1PdSJVoF4KTffPSS33L3sPJxQtF0r
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(396003)(39860400002)(136003)(376002)(451199015)(6486002)(478600001)(966005)(6666004)(5660300002)(2616005)(31696002)(6512007)(8936002)(86362001)(316002)(53546011)(82960400001)(6506007)(66476007)(36756003)(8676002)(110136005)(186003)(26005)(54906003)(66946007)(38100700002)(4326008)(31686004)(41300700001)(2906002)(66556008)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UjRuUnFrVVVyNFZqNkZ3c01jcmJCanV4WkpJUUJDVzJRb2NCT3lFbENadnRH?=
 =?utf-8?B?VzA4RDVNVlBLUVl2U3phcW9TUjVQQ2F0djdoemVMaHNLNlVvRHQ4ZEFEemU4?=
 =?utf-8?B?dWhkT0JFMy9NS1BlL0N4YXRDalpQemdCQzdWVk5TV3VOQmhsbjZSeW93cjRX?=
 =?utf-8?B?TDllVnpDeHptSVU1WDVZN0lkbFBRajI3VzZjRGVxa0NJRURPbjhrV2p1c3Zj?=
 =?utf-8?B?eGkwSjA3YXFBZUdzUk5Qb1orY2RFNUtjRDVpTU54NWJPTXR5VEt2VlhlVXdy?=
 =?utf-8?B?NUQwZ0lmeW94YUl6c2h3SVVFd2wrZ1lSaC84S2pqb0ZEZVVJcnpBckhndzVZ?=
 =?utf-8?B?UUZpSWFjM05qMHpONVdZMnl1MDUxRkU3aldkS0VId050WTU0Vk92dC9YVldP?=
 =?utf-8?B?TyswTXVkR25FcHdLWkpFSWljOTFjb3pabmcrQ0lMOU5xeEpwZkMydWs0bjNT?=
 =?utf-8?B?L2JsVWMvK2FrdGR4UlhUMGl5bU5FU2NrOExmU3JtVUYxc1ZUU1dzQWY1bFVt?=
 =?utf-8?B?SS9LRlZ0eTNXd3JhcXpEOTdvcytZVUVFVVRoNkpRc3FBbENEdllyYnJpOHcr?=
 =?utf-8?B?QXp2NTBqVzI0ZC9WTjIxUWh6NkxDU0VtdHM5SzJkZnV6QVZ0Q2pIeHQvdzNp?=
 =?utf-8?B?SDM2RG5kWndxKzY4M0dJNGNzV3J2eWJuT0lFSGM2MDFEV2N1QkhGVDRncFdK?=
 =?utf-8?B?eUFMUHBUTTFWWGlUWGRpM21ZQVo3T0IvbVJNNEVWL1cxeGxtTitRMndyaDFl?=
 =?utf-8?B?dDVBR0ExYjlCRDRDbVFUZDBhME92UEJoUzlFRVJGZjMyb2cxRmVTUFR2Rk9J?=
 =?utf-8?B?T2dZdFJQL1pzNncwQlcwblFIVTZZcWNZN044Z0FyNG0xK0pFejZTWFdKa0Jx?=
 =?utf-8?B?NlBoRnhhRmVHWXUvY0hBZmwyVnNLRTNrQ3hoRzkxcFRxWmdqUGt5SWpXRUJR?=
 =?utf-8?B?R0NQNXpKeWdzVnVTSEtLeml0WHFPeUtIMkJXbFd4WUNuY1Jrcmh3Vkpla1JX?=
 =?utf-8?B?dTdvV3pIWVgycmhJbVh1aHNwY0RDUGZNcTlwS3gvWlRiNjczTU53WnlOZlcv?=
 =?utf-8?B?YkhMc0dlUDFBdFlSUnNpYStDQ2k0OU5xSWowZmNoc01qVUt2NW5nSStEczg0?=
 =?utf-8?B?NEhhSk1NaDJtdENRWjJ3ZmRvaUQ2WWVqRkR0OHVBUjJuSE9Md040cDI1Z3pN?=
 =?utf-8?B?elhlUkFCeEg5MkxuZkxIN1JGRlZFZU1NQmZURmo4SGxHekd4b2pwRW1oK0hk?=
 =?utf-8?B?YjNJSWx4UFZUSG1vWHgremZEVnd1YWZSZ1ROT3lLUXlZM3Bvai8yc0JVTngv?=
 =?utf-8?B?WWp6QjVrUlNNY1JrYUl0Y0tMMHdveEc2U29Vb0hoc1cxaTRlYVZBQmJYZ2Vr?=
 =?utf-8?B?SEhzUU10NGR3ejRraWpkZFR6MWpOdGpUenlMTExGUG44Mmg4U2UxVVpjTlZN?=
 =?utf-8?B?YVZCVDYwOEJjd1pyNHhUdFNXem5HY0Y4eGM1TnBBYktxVGlYNy8reDdQSWlz?=
 =?utf-8?B?V1NncXM1aGVGL3VOT0R5VW4xNCsrQVBCK0s0N0FQN08vV2dSUDZzajRNUWRL?=
 =?utf-8?B?WEphUFpsWnFUSVoxSEMxdjdDeitibHVPOGt1NHZjSStWK1FPVVMvZmNTRzdx?=
 =?utf-8?B?dmV4c09KRG45NXAxWXJMcnA2Z2MvQldxZS9JQmdIQjRUVkF5YTlDOUt6UERL?=
 =?utf-8?B?VGtOS0NNK3Fkc2JIc0dVYUxhaTFhU2VuV2pCOVc0cDBhVlhtcVVCNm93NEUw?=
 =?utf-8?B?YUxXSWd6eWZZUGcyYzV2MFV0VGh3Y2JHL1NpUTBjdUhYbTZ4KzUzaUlWVmQ5?=
 =?utf-8?B?eXd3KzVlcjFFTStUZ0diTkVQZ3hCbXdDd2pidVl2Q1NTV21DaENKSStUaDEr?=
 =?utf-8?B?bXNmZWpYNm1qNzN3Y21mVWJTTFNMenFENmVCUnNjSmpHT0FIOFlNeDBtb21a?=
 =?utf-8?B?MWdYTXdNVTVJVnN3cTdCa2E0ZTVzS2ltUlBLVCtZeGl6dFVvRTE1V1VOZ3dq?=
 =?utf-8?B?TlpXQ0g1Rkw1TlgwSjg4aVRKRmJVRS95bE1nc2NBTXBPbWN0bEJZL1ZOTjdT?=
 =?utf-8?B?cTVxdllpYlhMSGJFa0dGWTl5NEhJMGl5b0JiVUFvRjhBRndiVm1Cd25rVG1j?=
 =?utf-8?B?b0VtVWJlNVMxVllscFpGdGU3RkloTlc3bE1RZmdMVXNhTExzdjZIeEw0QlhV?=
 =?utf-8?B?UXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bb3396be-8c4f-4d67-7730-08daa17f1e10
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Sep 2022 18:27:36.5066 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FdJlYZtdBfR8GmJJ76kGlCsMiMnHmdTytuwj0FvHd5xmZEmwlRHwW/1Qvba2CmPpdjuhTWX2MIUIpu65ZC/xRMyRu0cG3LZs1nGyx6AqTUA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4702
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: do not capture error state on
 exiting context
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>,
 chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 9/28/2022 00:19, Tvrtko Ursulin wrote:
> On 27/09/2022 22:36, Ceraolo Spurio, Daniele wrote:
>> On 9/27/2022 12:45 AM, Tvrtko Ursulin wrote:
>>> On 27/09/2022 07:49, Andrzej Hajda wrote:
>>>> On 27.09.2022 01:34, Ceraolo Spurio, Daniele wrote:
>>>>> On 9/26/2022 3:44 PM, Andi Shyti wrote:
>>>>>> Hi Andrzej,
>>>>>>
>>>>>> On Mon, Sep 26, 2022 at 11:54:09PM +0200, Andrzej Hajda wrote:
>>>>>>> Capturing error state is time consuming (up to 350ms on DG2), so 
>>>>>>> it should
>>>>>>> be avoided if possible. Context reset triggered by context 
>>>>>>> removal is a
>>>>>>> good example.
>>>>>>> With this patch multiple igt tests will not timeout and should 
>>>>>>> run faster.
>>>>>>>
>>>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1551
>>>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3952
>>>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5891
>>>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6268
>>>>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6281
>>>>>>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>>>>>> fine for me:
>>>>>>
>>>>>> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>>>>>>
>>>>>> Just to be on the safe side, can we also have the ack from any of
>>>>>> the GuC folks? Daniele, John?
>>>>>>
>>>>>> Andi
>>>>>>
>>>>>>
>>>>>>> ---
>>>>>>>   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 3 ++-
>>>>>>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>>>>>>
>>>>>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>>>>>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>> index 22ba66e48a9b01..cb58029208afe1 100644
>>>>>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>> @@ -4425,7 +4425,8 @@ static void 
>>>>>>> guc_handle_context_reset(struct intel_guc *guc,
>>>>>>>       trace_intel_context_reset(ce);
>>>>>>>         if (likely(!intel_context_is_banned(ce))) {
>>>>>>> -        capture_error_state(guc, ce);
>>>>>>> +        if (!intel_context_is_exiting(ce))
>>>>>>> +            capture_error_state(guc, ce);
>>>
>>> I am not sure here - if we have a persistent context which caused a 
>>> GPU hang I'd expect we'd still want error capture.
>>>
>>> What causes the reset in the affected IGTs? Always preemption timeout?
>>>
>>>>>>> guc_context_replay(ce);
>>>>>
>>>>> You definitely don't want to replay requests of a context that is 
>>>>> going away.
>>>>
>>>> My intention was to just avoid error capture, but that's even 
>>>> better, only condition change:
>>>> -        if (likely(!intel_context_is_banned(ce))) {
>>>> +       if (likely(intel_context_is_schedulable(ce)))  {
>>>
>>> Yes that helper was intended to be used for contexts which should 
>>> not be scheduled post exit or ban.
>>>
>>> Daniele - you say there are some misses in the GuC backend. Should 
>>> most, or even all in intel_guc_submission.c be converted to use 
>>> intel_context_is_schedulable? My idea indeed was that "ban" should 
>>> be a level up from the backends. Backend should only distinguish 
>>> between "should I run this or not", and not the reason.
>>
>> I think that all of them should be updated, but I'd like Matt B to 
>> confirm as he's more familiar with the code than me.
>
> Right, that sounds plausible to me as well.
>
> One thing I forgot to mention - the only place where backend can care 
> between "schedulable" and "banned" is when it picks the preempt 
> timeout for non-schedulable contexts. This is to only apply the strict 
> 1ms to banned (so bad or naught contexts), while the ones which are 
> exiting cleanly get the full preempt timeout as otherwise configured. 
> This solves the ugly user experience quirk where GPU resets/errors 
> were logged upon exit/Ctrl-C of a well behaving application (using 
> non-persistent contexts). Hopefully GuC can match that behaviour so 
> customers stay happy.
>
> Regards,
>
> Tvrtko

The whole revoke vs ban thing seems broken to me.

First of all, if the user hits Ctrl+C we need to kill the context off 
immediately. That is a fundamental customer requirement. Render and 
compute engines have a 7.5s pre-emption timeout. The user should not 
have to wait 7.5s for a context to be removed from the system when they 
have explicitly killed it themselves. Even the regular timeout of 640ms 
is borderline a long time to wait. And note that there is an ongoing 
request/requirement to increase that to 1900ms.

Under what circumstances would a user expect anything sensible to happen 
after a Ctrl+C in terms of things finishing their rendering and display 
nice pretty images? They killed the app. They want it dead. We should be 
getting it off the hardware as quickly as possible. If you are really 
concerned about resets causing collateral damage then maybe bump the 
termination timeout from 1ms up to 10ms, maybe at most 100ms. If an app 
is 'well behaved' then it should cleanly exit within 10ms. But if it is 
bad (which is almost certainly the case if the user is manually and 
explicitly killing it) then it needs to be killed because it is not 
going to gracefully exit.

Secondly, the whole persistence thing is a total mess, completely broken 
and intended to be massively simplified. See the internal task for it. 
In short, the plan is that all contexts will be immediately killed when 
the last DRM file handle is closed. Persistence is only valid between 
the time the per context file handle is closed and the time the master 
DRM handle is closed. Whereas, non-persistent contexts get killed as 
soon as the per context handle is closed. There is absolutely no 
connection to heartbeats or other irrelevant operations.

So in my view, the best option is to revert the ban vs revoke patch. It 
is creating bugs. It is making persistence more complex not simpler. It 
harms the user experience.

If the original problem was simply that error captures were being done 
on Ctrl+C then the fix is simple. Don't capture for a banned context. 
There is no need for all the rest of the revoke patch.

John.

