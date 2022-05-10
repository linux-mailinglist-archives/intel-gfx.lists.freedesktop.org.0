Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C79B521268
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 12:42:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAF2C10EB6B;
	Tue, 10 May 2022 10:42:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B74E510EB6B
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 May 2022 10:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652179331; x=1683715331;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=H7MyhpjK6mTUUQTwJSOTonBIx55r1iqveRmn1EP+kUk=;
 b=RLmccWJN3BT8o+gHJHYqsILoNN7vCUIvzlfroBjV+PGc9eWuRLYFZEfR
 DrC610vqXLjuzcPR5pEknjr9+JiKCkXjM4O7Ojmy/+JqipuGc2FV9uFR8
 WliJNsmMTNdyisA/Ul9x/YX/Gb/RLv1iH9VFbXAzQYbZJCEuWKarbFAb2
 LQ+xpdC0tl+Ir0iZv0LWWwFlhZPVGHkESK9PVcrwzqHFAIVF1YLZfpLJV
 D78iwFGYlG96GpIwkMkhX3W2IVcM75Sv80quHKfH5AczR5NTepENNwftQ
 YIiJ+1Z6eFy6tHs3LWg8g9o0C0qAWbfAn5QDnp0VDYrXxjgTF+39OGMvL g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="268998203"
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="268998203"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 03:42:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="541718135"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga006.jf.intel.com with ESMTP; 10 May 2022 03:42:10 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 10 May 2022 03:42:10 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 10 May 2022 03:42:10 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 10 May 2022 03:42:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V1IzFIF89y80bA/HeLS+4jU0e6U8SfAoeIkXK/vqDrhyuC9Uot+NZZ4Qsi9yxzns7PsYKXW0SLmPm6hBYj92p5IbIkVw47cNeo/v0+Ka++OkvwCEyjz/DdNO0iSUIuNPlZXOWeLJgGFgawW/23Krn9mswWZnAYifFiGZZPuSPSpjOyR3W3Buc5vaiAJk2uA7kIFyvQhVJe2o47qqFj7hE2dBEKY1LugrjC5x1gM6BkOcdfS+ilGCF1sm7TpO8bsjuclm2dK/hnoriKHFoDabLft44UTZtaVjUiVSuH20ZU2NiVpSwuUPOxabf6MZKCKmNW7SwT5b2NpxdODE9qy4uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+FcqgHXRGDM0B8FSFFFFoW5Qpujs+3Qo8ICdBu4FE6Y=;
 b=K8btb0XsT6LXz56Y7J9FgOU3TiOD1a/E9MBSlrMJY2JNORPXl3k9rbPlSRDUHaeVlPt91Da3JXkNfq034AxEcHBHrN81yVCI0f2vjEjNFXYGj3sAY+rmXiR1l9XTAeX4qJo1/pI7F+K6yOXVATE3vVZzDR9fUvFndNkvvJ1BLf9V3124yhPQhMi2auJyKZN3SHOyJ1ZEZ/txCoXrCT18sgnAXpRglCie3fNKXzKy6ZcLHYyPjGnUgj867i9GnN2yFbo4urHsgy/3Xn1Hg+c37+t8zIupSGVKZFCRVn64yCEJ08HHnzksCON16tZFRrOy6Oon1I1WXMGM8DAgmZTmyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB3180.namprd11.prod.outlook.com (2603:10b6:5:9::13) by
 DM5PR11MB1820.namprd11.prod.outlook.com (2603:10b6:3:111::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5227.23; Tue, 10 May 2022 10:42:03 +0000
Received: from DM6PR11MB3180.namprd11.prod.outlook.com
 ([fe80::b1fa:393c:9fb6:6871]) by DM6PR11MB3180.namprd11.prod.outlook.com
 ([fe80::b1fa:393c:9fb6:6871%5]) with mapi id 15.20.5227.023; Tue, 10 May 2022
 10:42:03 +0000
Message-ID: <ced026cc-183a-d387-ff8c-2a3b83f704b1@intel.com>
Date: Tue, 10 May 2022 12:41:57 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.9.0
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Ashutosh Dixit
 <ashutosh.dixit@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <cover.1651261886.git.ashutosh.dixit@intel.com>
 <06685e6216a1afc79bdf76bd1cfafbc929d4e376.1651261886.git.ashutosh.dixit@intel.com>
 <91a24f6c-4eb6-cc40-f252-d2d45673f932@linux.intel.com>
 <b1bf937f-c38f-f1fb-1deb-1b4c31daae71@intel.com>
 <a37189a5-7c2e-0331-819b-d85603a2de39@linux.intel.com>
 <d0fe2315-563d-31b1-28eb-7816800270dd@intel.com>
 <9f1f6c83-67ad-b222-97ff-ec3905e68eeb@linux.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <9f1f6c83-67ad-b222-97ff-ec3905e68eeb@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LNXP265CA0067.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5d::31) To DM6PR11MB3180.namprd11.prod.outlook.com
 (2603:10b6:5:9::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e5f3f966-599b-418f-6019-08da3271b888
X-MS-TrafficTypeDiagnostic: DM5PR11MB1820:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <DM5PR11MB18205FF64D075458C5E70191EBC99@DM5PR11MB1820.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: csB/dfpvzlLGM39mCIlA/XG1dUMjzNoImkuFYrjeT9IiHbPitIbHKBejCUjDFXe6KNUGIzqdQwFQdqxsutvBDtJiIQ7icMXNT6wvzoW3GWkIl3xb/Etw97Nm2bMD2jGTARF+mdV5GkEuQumVODHszaB1vBraS45f7/BfN9JYad4t5Hw9VxOSGrKH0WBsfeC53CGGOnOEKLXazOuGbii9Du1motIwpynjIz1HHyf526lOmkvqpYxbixoSyGkOCJtODGW20MHO7UR1wDApg3GgZX9xx80RrZNyqjfFMauv11N4fi+yVS6z9QniTL+4KV3Bc1crwNtZnE8As1oXI8QWPyvIZYBvvwVjHUnZKfaM2Tj8aZEjk69DZKigKvSIxAPlFI3HH8qss9mQ1KBAKB9l/DOG1QFoIdHBDz7FGqaLePJd8+z4KDv08IIaeCz3Ho2e9+pnh4lFwu8BHqB8jb5CJS5vFo4GG9wqxbqDq4oDtHz2GuJtx5dsxs9EOsnXoWxZmxsAQ8XdxFmD3pLippb8vejYI1T5tQYZ515rQbGqNKF4YnkWVtojYlPUQ7dfPt3wHurV/IqlaywQ/1sazjDMTr93htL8MZeicwHJ+9vK5zV8mw8KPju4IhAdJdpi9Gol8vwV9P3EBbPF2qdkH6jFcw6ZNeBWSlqrCdaS16MKtXF9FWdlO1sUoLoD9BsL2kPJ8XgBtPAOy5iq1oEDZnknKlHtxUPAmzXyiCkO3XX+AhI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(2906002)(6666004)(6506007)(31696002)(86362001)(8936002)(6486002)(5660300002)(508600001)(53546011)(44832011)(36916002)(83380400001)(82960400001)(6512007)(38100700002)(26005)(2616005)(186003)(66476007)(66946007)(316002)(110136005)(66556008)(31686004)(4326008)(36756003)(8676002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z09xSkVTbnVyYUJEdnp2UE9ublVGeGNjNzlaWE5KbXhFQzZCZ09MUFNHbnow?=
 =?utf-8?B?Y3VqOXhPZi9XL0NXS01vVldnYldGeFFpNjY4L05aWVJVc3dQNFZhOThLdFJw?=
 =?utf-8?B?TmZjUTRNZGF1SE9STzRSbGtwUnVjV29sUGFuU1MycllQbUwvS2pTaFRXQy9D?=
 =?utf-8?B?RDF6U01CRXBPOEJaejdRaThMRWs1Qm5USjE0VEJFQzJGN0MyMTdJZEwyRmtP?=
 =?utf-8?B?OWJULzQ1ZkRTOXlTR0JSY21DcE5YcWV3Z2VTN3J6dGszUlNRZ1VhRWVTS1lJ?=
 =?utf-8?B?NmQxUzVVR0d5ai8reHlyaHRXdHp6L2Z1ejR1cEVDOGRDVG92ZUdvalU4MXIx?=
 =?utf-8?B?dTlXaHk3c2RtRXVlNjNWeit0MWwwQ0dtRy9YUStFRUVsOVY0enFIYVZNRjly?=
 =?utf-8?B?NGNFVTNOdUl1OVJ1OEVKZmJ4OS96cUF4Z0dkOCtlTytjMlUxTTBXUy9vQStY?=
 =?utf-8?B?UFoyVUNuVXZWak5iczVVaGZ0VVVmR0dqSmpMTHc3QllHNmh2Zm11SkhkOWdF?=
 =?utf-8?B?ajFwY3g3KzlKWTlZTkEwVkZmODROdWhZeHN2bFROMDY5T0FCMExXNnhhSlh3?=
 =?utf-8?B?TGJ1QmlYZnlDUk8zMC9qN2wwUXlJTmVaOHh6ZUdjQmdUT3U2Y2Z0a21LZmM1?=
 =?utf-8?B?ZHFIYkJOd2JFeHRDU2Z3dlNMcVlNakNLUkVXeFBxQnVWMWpTdHEzc0Z1QVFI?=
 =?utf-8?B?NDdYMm0zcXc4RVA4Vzg4Q0xkV3lQYVh4V3JMSGVnbXB4WnZMZXFqMTZkZHdZ?=
 =?utf-8?B?ZlM0QUUvZXBIZ3lyMmRQdWh1SVBXQk0zdjZHeXMyQjZpWWpxRWdyQmVuVmhO?=
 =?utf-8?B?Yks3elByOWVwN0tRRmoxNHF3K0NMVFpwbjhJNUoweEVETm1VLzIrZ3FJWlRK?=
 =?utf-8?B?VDI2ZTBqSFZubzd4Z3FkTlAyYmJNSVlmRW5RejdZVmhpTHpuZHJUSW5ZSVBp?=
 =?utf-8?B?bTNKN3NWOW9VMFl0M1JOTmxaTStiV2srQ3p3bUFxakxrUldLUDQvb3NvYnBa?=
 =?utf-8?B?a2hvRVJJK3JFOGVVYnE3akY0NXZ2V0syNEdMdnZFaW9UTkJVYTdoR1B6SllB?=
 =?utf-8?B?djcwNkxSMjlsUURZNFdFblRWMitxa3R1WVZqb2MreUpWQlZTSFRvYlIvdzJa?=
 =?utf-8?B?MU02SmtGRUVlMGVwQlNZbHhsRzNSSnBUVkxHNWVCSTVadE5VSnF0MVFHVWxO?=
 =?utf-8?B?Z0lDWENnT1hMOEtTSk80S0NJY3RuYjZ2M0tDV0tVSDRJL2VZbFN5MkJ0ejJR?=
 =?utf-8?B?U2NXV3UrQ0Nwb1o4QlBOVG5DUkVpYXZtMUQvVjNWZTJXYzFBelFQRE0zUGpE?=
 =?utf-8?B?S3VueU9peURNVUVneFNCUjEwOGV6clhqcnpqcEhpQnNYMWNHNHN0RFRWa3F0?=
 =?utf-8?B?RlZuT2dNTGFyK1V3eFpjRjhDUVZ0RStwd3ZxY3BveVZTOVJEeXZHS2xmcy9i?=
 =?utf-8?B?a05lTXlrM2VlcVUwaFdMUVoxaFI3M3Z1bXhQVGowOVFId2l0UXdsbDFQalIv?=
 =?utf-8?B?ZXpFRFRpSmdDRFZMWWVRRDFRdkY0YWtCVjEzQVhEWUxpNFZnLzFJajk3VW45?=
 =?utf-8?B?T3RkVWg0Q2llZVpTVXdQYWV1Ym5ZcERxbGlGMUZkTUE3Qm9EQzRuV3pSS212?=
 =?utf-8?B?d2tpWlFLVHUrMWxPbW9VV0VtbG5KRFcyMG44S1NTaXBmUlpieEtZandXMUJK?=
 =?utf-8?B?K21vODBaMnUyZXFicFhGaGp5NEYyY2owK3hQckFrZjFqMFEyNTQrU3Y4djhW?=
 =?utf-8?B?bmErbWtDVVE3ZFNJWE1ISlZJUmtlT0hpME5iZHo3RnNVVGZpUGU4TEsvcG9i?=
 =?utf-8?B?YTZhUXREb2o5a0dpOTVlYlRLRmdWK1F4Y0FMdFp3OURHTjA4Q293cVNPR09U?=
 =?utf-8?B?ZHU5MHJlbHR0dnM1ZVk2d2ZVVW5xc0xYbVN2eElXNWhLNGovUUU5ZTZoMWFC?=
 =?utf-8?B?SWpTZDUyTG5GRGJUZTVSUWxBbmNnZGVWa3NNSjM5UlUzZXlOMkhna2p0bkU0?=
 =?utf-8?B?QU9VU3ZHTU9nWE5ySXpsY3F1a3kzWkJ0T2lyZnNJRXd0VFkvalJENjBnOUxs?=
 =?utf-8?B?NDhLWVl1eUlxZjA5dVdTcHVIUjJMZWE1OUR4elc0VVIySEx2dU9EZ25sMkh5?=
 =?utf-8?B?WWRMSXdFLzVBenJaSmVJT2NocmhIMUlBdHlWM0lacUxmdFdVK3BsS0wydGRi?=
 =?utf-8?B?Q0psQjdxSjdVZC9qRmJobU1qTnU2MzFBMEhRYkVzMkI0R2pmaG8yWE9zaUZv?=
 =?utf-8?B?VGx5ODRRVnF2TW1xY2NrcHNwM09VQXcydUxTaDdTRXh6cDhldnpQcUZ0ZzFp?=
 =?utf-8?B?NlJwZUl2SFlvUjgraUc5OUxEYTJOQUxac0xKdmZqOVluN2hJLzk2RTZ2L0c5?=
 =?utf-8?Q?lfFkMDp5OgAon5oE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e5f3f966-599b-418f-6019-08da3271b888
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2022 10:42:03.8109 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Oion7+PM8gyX81wVvsvsMvIMCLo8IMScZJRyJvJOMMh5nsG6D/bJ19nL1TMestK42bp0INfrEnogXI3CwzPwDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1820
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 6/8] drm/i915/gt: Fix memory leaks in per-gt
 sysfs
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
Cc: Andi Shyti <andi.shyti@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 10.05.2022 11:48, Tvrtko Ursulin wrote:
>
> On 10/05/2022 10:39, Andrzej Hajda wrote:
>> On 10.05.2022 10:18, Tvrtko Ursulin wrote:
>>>
>>> On 10/05/2022 08:58, Andrzej Hajda wrote:
>>>> Hi Tvrtko,
>>>>
>>>> On 10.05.2022 09:28, Tvrtko Ursulin wrote:
>>>>>
>>>>> On 29/04/2022 20:56, Ashutosh Dixit wrote:
>>>>>> All kmalloc'd kobjects need a kobject_put() to free memory. For 
>>>>>> example in
>>>>>> previous code, kobj_gt_release() never gets called. The 
>>>>>> requirement of
>>>>>> kobject_put() now results in a slightly different code organization.
>>>>>>
>>>>>> v2: s/gtn/gt/ (Andi)
>>>>>>
>>>>>> Cc: Andi Shyti <andi.shyti@intel.com>
>>>>>> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
>>>>>> Fixes: b770bcfae9ad ("drm/i915/gt: create per-tile sysfs interface")
>>>>>> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>>>>>> ---
>>>>>>   drivers/gpu/drm/i915/gt/intel_gt.c       |  1 +
>>>>>>   drivers/gpu/drm/i915/gt/intel_gt_sysfs.c | 29 
>>>>>> ++++++++++--------------
>>>>>>   drivers/gpu/drm/i915/gt/intel_gt_sysfs.h |  6 +----
>>>>>>   drivers/gpu/drm/i915/gt/intel_gt_types.h |  3 +++
>>>>>>   drivers/gpu/drm/i915/i915_sysfs.c        |  2 ++
>>>>>>   5 files changed, 19 insertions(+), 22 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c 
>>>>>> b/drivers/gpu/drm/i915/gt/intel_gt.c
>>>>>> index 92394f13b42f..9aede288eb86 100644
>>>>>> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
>>>>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
>>>>>> @@ -785,6 +785,7 @@ void intel_gt_driver_unregister(struct 
>>>>>> intel_gt *gt)
>>>>>>   {
>>>>>>       intel_wakeref_t wakeref;
>>>>>>   +    intel_gt_sysfs_unregister(gt);
>>>>>>       intel_rps_driver_unregister(&gt->rps);
>>>>>>       intel_gsc_fini(&gt->gsc);
>>>>>>   diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c 
>>>>>> b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
>>>>>> index 8ec8bc660c8c..9e4ebf53379b 100644
>>>>>> --- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
>>>>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
>>>>>> @@ -24,7 +24,7 @@ bool is_object_gt(struct kobject *kobj)
>>>>>>     static struct intel_gt *kobj_to_gt(struct kobject *kobj)
>>>>>>   {
>>>>>> -    return container_of(kobj, struct kobj_gt, base)->gt;
>>>>>> +    return container_of(kobj, struct intel_gt, sysfs_gt);
>>>>>>   }
>>>>>>     struct intel_gt *intel_gt_sysfs_get_drvdata(struct device *dev,
>>>>>> @@ -72,9 +72,9 @@ static struct attribute *id_attrs[] = {
>>>>>>   };
>>>>>>   ATTRIBUTE_GROUPS(id);
>>>>>>   +/* A kobject needs a release() method even if it does nothing */
>>>>>>   static void kobj_gt_release(struct kobject *kobj)
>>>>>>   {
>>>>>> -    kfree(kobj);
>>>>>>   }
>>>>>>     static struct kobj_type kobj_gt_type = {
>>>>>> @@ -85,8 +85,6 @@ static struct kobj_type kobj_gt_type = {
>>>>>>     void intel_gt_sysfs_register(struct intel_gt *gt)
>>>>>>   {
>>>>>> -    struct kobj_gt *kg;
>>>>>> -
>>>>>>       /*
>>>>>>        * We need to make things right with the
>>>>>>        * ABI compatibility. The files were originally
>>>>>> @@ -98,25 +96,22 @@ void intel_gt_sysfs_register(struct intel_gt 
>>>>>> *gt)
>>>>>>       if (gt_is_root(gt))
>>>>>>           intel_gt_sysfs_pm_init(gt, gt_get_parent_obj(gt));
>>>>>>   -    kg = kzalloc(sizeof(*kg), GFP_KERNEL);
>>>>>> -    if (!kg)
>>>>>> +    /* init and xfer ownership to sysfs tree */
>>>>>> +    if (kobject_init_and_add(&gt->sysfs_gt, &kobj_gt_type,
>>>>>> +                 gt->i915->sysfs_gt, "gt%d", gt->info.id))
>>>>>
>>>>> Was there closure/agreement on the matter of whether or not there 
>>>>> is a potential race between "kfree(gt)" and sysfs access (last put 
>>>>> from sysfs that is)? I've noticed Andrzej and Ashutosh were 
>>>>> discussing it but did not read all the details.
>>>>>
>>>>
>>>> Not really :)
>>>> IMO docs are against this practice, Ashutosh shows examples of this 
>>>> practice in code and according to his analysis it is safe.
>>>> I gave up looking for contradictions :) Either it is OK, kobject is 
>>>> not fully shared object, docs are obsolete and needs update, either 
>>>> the patch is wrong.
>>>> Anyway finally I tend to accept this solution, I failed to prove it 
>>>> is wrong :)
>>>
>>> Like a question of whether hotunplug can be triggered while 
>>> userspace is sitting in a sysfs hook? Final kfree then has to be 
>>> delayed until userspace exists.
>>>
>>> Btw where is the "kfree(gt)" for the tiles on the PCI remove path? I 
>>> can't find it.. Do we have a leak?
>>
>> intel_gt_tile_cleanup ?
>
> Called from intel_gt_release_all, whose only caller is the failure 
> path of i915_driver_probe. Feels like something is missing?

This is final proof this patch is safe - no kfree, no UAF :)

Apparently it is broken in internal branch as well.
Should I take care of it?

Regards
Andrzej


>
> Regards,
>
> Tvrtko

