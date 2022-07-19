Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13281579300
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jul 2022 08:10:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6222210F1AF;
	Tue, 19 Jul 2022 06:10:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F6EB10F1AF
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jul 2022 06:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658211028; x=1689747028;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=7m+CtGICA2tbS5Ee4KvswAnafYvV0bMkIPIvPdnZK/k=;
 b=N+uv0reoVXtzQiEfHjJpSPT85fFesLYm92ws/KJDqAs7P3dELIIzCS6a
 bQFDRRpItRkZWMC//Bi1lqyh5rSVODRE+K6zD97XWIxcr7ccrJfod1Eyy
 bhF5b2qmJCeEplwmH8vb2udMR2Q1DskLZNC6iP8k9hsnfjJj976H7WjFi
 6rocQ4MPqOczuxTzHlaZv8IjFwi1oVHBqSIpnU3Ib7eW3J95RmB81m/uB
 7LC0epO2aBYNgx6ZzA9mWadVrBCPE05wRSBOl7LIEsJwKKfhQsNYr0yyy
 CTmA0yy8UxRm2jEOz9sND2cIQmN+JX/AQ28Pbj8pHZzydDZz4rufOeHTI g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10412"; a="287147589"
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="287147589"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 23:10:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="687000606"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 18 Jul 2022 23:10:27 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 18 Jul 2022 23:10:26 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 18 Jul 2022 23:10:26 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 18 Jul 2022 23:10:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FxMBl7AOU27PmAKn+5iv+UkM8L4aZ5gcGJBrI8wewjvtCOe/f6tWyblF2ixZ0FMNEw3Ie70Ig13X24HMhmFSivTxedVqB04uoq31UVAiQor9qzVF6Fd4U95nEU7E5ovkUHY4aEf5mOfTotRSnCmLmloZnxcKKqjXinsbdEviGnMyLeJvqqv8ahHxDRdyKkSzAR6feILhbRw6KXhtHrxCjarIHqr/DkdCT7cn1+3Y36inxlJeu2Naz64AuMmmjgyqEDaJwIcr8pdYDXbvfEu95GjHa0dvkDCTuNtOEHWjzuWkVr0SAHZ2NWO+H4ExhzVzVlEoNgHpbr/nBGPZpcQNvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4ZeuU5Yb57lfFnBmyo0SCHLjA69drA78lwQ9pDnEz2Q=;
 b=nskFvEHOpFTrRKcEY8/wn9bCxkjKZtHlJCy4fE1vjf5Z/rO5hazXc8tOc71IhrEyHFP2qUOpTPk7JuToB0sMYkeq+0U6r0SsKin8StAPaX/2ZeBKZJ/CScAXilkWKWr1oHJ9ibVGzx6Q3/JmHX0m2jK5LvaH0fABxRLhEo02Q5o9fWqEcMzqENN84/c2erHtPtkPjo285Kzr4mdgFync0k3kP+WEvdEjFuusUe/+xk7y8H/UHpP/0pDlN707CVw08cvFMevM8s5VXwrZs7OTTvP/OyAjaw0Qr9ntGvT5noCJojrqyC4ONNQevmwJKZn+oChCBsii8T9A1D3Vyy4VUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BL0PR11MB3057.namprd11.prod.outlook.com (2603:10b6:208:76::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.19; Tue, 19 Jul
 2022 06:10:25 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::38c8:a900:6915:3b3b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::38c8:a900:6915:3b3b%7]) with mapi id 15.20.5438.023; Tue, 19 Jul 2022
 06:10:25 +0000
Message-ID: <63bd6ab5-6450-2934-6634-18d61f7dd77f@intel.com>
Date: Tue, 19 Jul 2022 11:40:15 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-US
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20220707052712.2033748-1-ankit.k.nautiyal@intel.com>
 <DM6PR11MB317775DC2D990594E3297055BA829@DM6PR11MB3177.namprd11.prod.outlook.com>
 <c758d7c0-cb11-7135-2048-a197998ac2da@intel.com>
 <DM6PR11MB3177EFA94C68E9D3D23EAB79BA8F9@DM6PR11MB3177.namprd11.prod.outlook.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <DM6PR11MB3177EFA94C68E9D3D23EAB79BA8F9@DM6PR11MB3177.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN0PR01CA0017.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:4f::22) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7fc96936-6049-4ff8-25d7-08da694d5e89
X-MS-TrafficTypeDiagnostic: BL0PR11MB3057:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BG+frXHnMsfi0PgjGsRr79bEMbVk9pDGnE2JfgY1De+mS4liE9vVqhL2w/HT7Rk5n2QRckQuQqHDyhbOXC0BtmhgoC/gYTz7pFIBF2MSx5SQNNAjw7cl16up4mUc6+rAsGlC+sXNpKbK66k6GZsPEH40ZYzYvMb+73EmUxmERzUZdtHAzCBkklifjo4rALsGe8P79qClsWI87/XiDEfU1B2jt41liE5kLatGhfyns7mGIeDvKyVQvn6fBLSawxD5RzDTsfu1L+PXJFR8iYF0qaNGzfFMt0OgmI+qrtKStTTHvwXiOM4TUFVtNpDyrp9Vr+n/DnFRuG2YCuO5rGdZ+i9N7bEe7uTRn1mBA9LVnYCsW9fgrW/hH6nSNFe1TKr0A6g1JGXyAFcrHHdP1RxcqorT7+ep1jW51EToiQ3iM6HO3O8puMubsuaRQeghqsrRsGJmKA3uoLGTgoO15PL4gWiCP2z382XAJiP5bK+QfBiDtfLxEoIguQffV5uRZ7sV06iKgr9r2I+fhEibMTiAE78Xz0JW2/eXd5VJmE6lD0oGLbiYNxqtRpJ2mcKQuD3sse6ugtHWBYJqAuIpp3sJBrHjvwpj69CTFkMglF7Q0BaZ1DzxchLWLDomhvuqKEdDe969cNWI6FzqNZOeknWKDzquL6CB6xZZbqVv8sqghEf++Eb7+cd/a3VUyJi5lsVGTEHGo4urw9Wt6xw14j/fy2d1DcE9LBeCiTr2qfdnxAaNm1AONSiHVlrdb6gR7Pd9MS8jRT+BYwSXgAlew2J0f+apkSCommif5tAkF5xf6xx8xiNcJKtZWTivPC/zinH0n2rpuHrB8793BaJURgTRrQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(366004)(376002)(346002)(39860400002)(136003)(38100700002)(82960400001)(66476007)(66946007)(8676002)(5660300002)(66556008)(186003)(31696002)(86362001)(2616005)(478600001)(53546011)(83380400001)(55236004)(8936002)(6506007)(6666004)(110136005)(316002)(6512007)(41300700001)(26005)(31686004)(36756003)(6486002)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ajZLMW9oM2kvb1Y1YnVzUXl1bGNEL2JSeVlLV3RJdGplY3lXZzBHeGpubDNG?=
 =?utf-8?B?TEpsZFJmNTdVb1UvNGhHc0dkajVDWGxiczhuOTBYMWVEWmhpdjZKMXFyM0M3?=
 =?utf-8?B?WjF5Tm9ScitOTmdoc0o3MWJab2dWa08zcGwzdzVwZFV5alFJdEpEd0xxVTNi?=
 =?utf-8?B?T3FJMG00c0x6cXQwaFowdEx5Z3FFSm1hbllPTDFKNVFIQzVPS0NWRXhDUldJ?=
 =?utf-8?B?MGNqTTFFUUh1NUk0dU9DWFFXL01XMnFYclVDMTMwSWhBVWtFcjZUY0xUcDhx?=
 =?utf-8?B?SGpleUtnWkNEaXlZTnZpZVh6YzZjbmJzRkxLeDN6Yk0xMXQwMlF4RHBEK2lq?=
 =?utf-8?B?dWVHeTE4N2dlU0xYc2R4eEJOWUswZEoycE5Nbjk4VHBFWkxkdDU5SFRlMmNF?=
 =?utf-8?B?VkNNVlUzRkE4b2NraWlKc0t0R25OVXVZSkZXb2h1SE1MY3JLbzhWTmJwN00w?=
 =?utf-8?B?N2FwejR5UjkzaDNuY0xtcUVVRGg2Y1BCdXNOYjNPSzBJMWljQllhNlJEajBB?=
 =?utf-8?B?TTU2ZWtDU2tSWTUva1JjNUdMSFJLakJOenZRNDlSZ3RQSnBESWlnZmt4Q21R?=
 =?utf-8?B?NlRuK0xDMDMxUm9KSGpJWmYyVWxmc0VaQnhWcStqUldZU3MyUU5jUFVXTkFa?=
 =?utf-8?B?bHFyS1IwSkZPWEFzVEtkRndPc00wSk5TTHRwcXRQa1JxL0xqdXNIOEU1VUJj?=
 =?utf-8?B?UnF0MWQwYmNUa1NhUVhhMnhWbURFdVFZV3pReEdZSGNJQkcxU2g2bGh3cFVr?=
 =?utf-8?B?SUxUWUc0Sis0ajB5T0syRWVHeHlrSEdEdnd2RFNkZ1BJakFhR1ErYlR6YTlZ?=
 =?utf-8?B?azU4M1pEa3IzYW5paWlPRjB0MkZ0d1Y0N1BYdHhnVGhKWkpCZ1N3REpRZ1lR?=
 =?utf-8?B?a2NWMEF6ais2elVFcTJiK0FZTjBNQXUwNUozQ0ZtK3dhY2htOHlaakxnNWRm?=
 =?utf-8?B?Rm1nRTlBV0d6WkpsL1BVenBKNHAvMWcyUlA3NThKQ1RObmpUVWVUSzZRRFBM?=
 =?utf-8?B?WUZqL2dEYnRIZ2tqeU4yQzF2UHpHakQydlY4ckxrQXJSZFlYcFlpZElUVW1T?=
 =?utf-8?B?T3VhcTZGRE0xMWRCemZBUXB0Y1BRZDF1NStJWGJHZE1xWWtNZ3VNeG0rbUpF?=
 =?utf-8?B?MDBxNml0VWkxbEJwSklmWlFRV3dTa3Zaa21PN3V5SG1sUy9kNjRnMjhMTldr?=
 =?utf-8?B?RnlYOGk1L0xRUXVBN2svOXhNUkpzdVRMSm9ocGJ2WmVKTjFQVUVwa0ZpMkFI?=
 =?utf-8?B?Y0d3Rmx0elBXWldiQnVDUzlhcS85QWkzZytHSkE4Rk1SQWJoU2luRi9FRHor?=
 =?utf-8?B?UmhWc3dxeitHSFNwSGFDdVcvUlUxMUs2M1FCQ045OUc4dWw1eTIwYm9RYnAy?=
 =?utf-8?B?bWJ3WHNjaTJ3TTZYckxud01PWmcxZEFSNWNSbitPNlA1eVNlZytpbEFoQ09v?=
 =?utf-8?B?bk1OVFJzWHdXQXZ2VlZpR1VCYll5ZWtCZEViMG5yQ0liN3h3a0dWaWlxN1d2?=
 =?utf-8?B?L2VMMC8zV0Q5aDhTd1lrSnVPdXduRmcxYU9wbENQczI2ZzlhQnE2Y01xTFdt?=
 =?utf-8?B?V1M0NkhmOEhVOFd0NjZiUk8vY0w0Y05aWDQvcXN2bW5pbDBrbVpySWpLNHBp?=
 =?utf-8?B?RGg2UUFsTk1aVkVXUFJ3QzRNUDNQNmR3cHVyeTE4TEx5WEhwQlN2d3VzTmVZ?=
 =?utf-8?B?UFg1NWRjem00Y2JLUU4yZHhiTTZWZHIzSklpbklyTVI5YVBWVjRNV0pMT25v?=
 =?utf-8?B?b29QLzhHYkdieXhvNkZhSkNMM1JIU1prUk9rV0d2dWcwUzN4dEc3ZEViMWFx?=
 =?utf-8?B?Z0dtOWJseEtJWW1WbExzZzlVdnVITkNvNUNodVFYbG0xaUhVREx6YmJad0tj?=
 =?utf-8?B?RXZOTXA3TTBLS3FrRm9TT3VHSU5XMGJEUEV0UTduU3pKcTVDMVdXL21QMFNi?=
 =?utf-8?B?enN0Z3Z2b1RIQU9pVjFYWDFXc3lVWG55Q2F2SDJ6T25HT2lVejdtaTZQRU5L?=
 =?utf-8?B?cnJ4RHl5MDdjOWhnM2dKTXBOdTUyZzQ2UGtDUENJdmdDQTJ4VG4vOGpBVHEx?=
 =?utf-8?B?VmQwcCtmTmZyUVNybGxCTnhsYXNHRmpuUHJSU2lkT0ppV2dWSHpiZW14aHZw?=
 =?utf-8?B?WktBZGhVODB4YkcydEgvMUl6MkJyMUxROG1nTlB3b1A5aDdGY1h2STl4d2lo?=
 =?utf-8?B?RHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7fc96936-6049-4ff8-25d7-08da694d5e89
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2022 06:10:24.9228 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HdZtO+nKn+8dkxLAm6VIt7t4OIlB7M00XR9R4nUQc548sTth88Cq78EnIRM55qfkQ6KiNR47KVwyky/d7jF4ncNnLmHUAjB40Rn0ierQnAI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3057
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdmi: Prune modes that require
 HDMI2.1 FRL
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


On 7/19/2022 8:45 AM, Murthy, Arun R wrote:
>> -----Original Message-----
>> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
>> Sent: Friday, July 8, 2022 3:36 PM
>> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
>> gfx@lists.freedesktop.org
>> Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdmi: Prune modes that require
>> HDMI2.1 FRL
>>
>> Hi Arun,
>>
>> Thanks for the comments.
>>
>> Please find my response inline.
>>
>> On 7/8/2022 9:30 AM, Murthy, Arun R wrote:
>>>> -----Original Message-----
>>>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
>>>> Of Ankit Nautiyal
>>>> Sent: Thursday, July 7, 2022 10:57 AM
>>>> To: intel-gfx@lists.freedesktop.org
>>>> Subject: [Intel-gfx] [PATCH] drm/i915/hdmi: Prune modes that require
>>>> HDMI2.1 FRL
>>>>
>>>> HDMI2.1 requires some higher resolution video modes to be enumerated
>>>> only if HDMI2.1 Fixed Rate Link (FRL) is supported.
>>>> Current platforms do not support FRL transmission so prune modes that
>>>> require HDMI2.1 FRL.
>>>>
>>> If the hardware doesn't support FRL then it basically blocks HDMI2.1
>> feature.
>>> Then it wont be possible to use any resolution above 4k60 is it?
>>
>> Yes right. As I understand, the HDMI2.1a supersedes HDMI2.0b, and so the
>>
>> platforms  supporting HDMI2.0 must now pass the HDMI2.1 CTS.
>> The HDMI2.1a spec introduces Marketing Feature names for 4K100, 4K120,
>> 8k@50, 8k@60 with suffix A, and B.
>> Suffix A meaning mode supported without compression, and B meaning,
>> mode supported with compression.
>>
>> There are CTS tests that expect these modes not to be enumerated, if the
>> source does support the given requirements.
>>
>>
> Thanks for the clarification.
>
>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_hdmi.c | 21
>> +++++++++++++++++++++
>>>>    1 file changed, 21 insertions(+)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
>>>> b/drivers/gpu/drm/i915/display/intel_hdmi.c
>>>> index ebd91aa69dd2..93c00b61795f 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>>>> @@ -1974,6 +1974,20 @@ intel_hdmi_mode_clock_valid(struct
>>>> drm_connector *connector, int clock,
>>>>    	return status;
>>>>    }
>>>>
>>>> +/*
>>>> + * HDMI2.1 requires higher resolution modes like 8k60, 4K120 to be
>>>> + * enumerated only if FRL is supported. Platforms not supporting FRL
>>>> + * must prune these modes.
>>>> + */
>>>> +static bool
>>>> +hdmi21_frl_quirk(int dotclock, bool frl_supported) {
>>>> +	if (dotclock >= 600000 && !frl_supported)
>>>> +		return true;
>>>> +
>>>> +	return false;
>>>> +}
>>>> +
>>>>    static enum drm_mode_status
>>>>    intel_hdmi_mode_valid(struct drm_connector *connector,
>>>>    		      struct drm_display_mode *mode) @@ -2001,6 +2015,13
>> @@
>>>> intel_hdmi_mode_valid(struct drm_connector *connector,
>>>>    		clock *= 2;
>>>>    	}
>>>>
>>>> +	/*
>>>> +	 * Current Platforms do not support HDMI2.1 FRL mode of
>>>> transmission,
>>>> +	 * so prune the modes that require FRL.
>>>> +	 */
>>>> +	if (hdmi21_frl_quirk(clock, false))
>>>> +		return MODE_BAD;
>>>> +
>>> Instead of setting this frl_supported as false, can we get this info
>>> from hardware, so that when our hardware supports it later it would be
>> easy to enable this.
>>
>> We can have something like:
>>
>> src_supports_frl()
>>
>> {
>>
>> /* FRL not supported in
>>
>> return false;
>>
>> }
>>
> Yes something like this looks good. It would be a good design to judge this based on the
> Display version.

I do agree, we need to have this check when we have HDMI2.1 support for 
any platform.

In future patches, when FRL transmission will be enabled, at that time 
it would make sense to check for display version, and parse from VBT 
about what rate it allows  etc.

But currently, since we do not support this yet, the function 
src_supports_frl can only return false.


Regards,

Ankit

>
> Thanks and Regards,
> Arun R Murthy
> --------------------
