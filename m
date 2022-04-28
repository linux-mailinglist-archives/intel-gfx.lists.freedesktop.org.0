Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7760513704
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Apr 2022 16:36:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2622710E60D;
	Thu, 28 Apr 2022 14:36:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26F0610E55D
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Apr 2022 14:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651156582; x=1682692582;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=r9GMMxo6EX35cqoisimnuQC7+u54Dy1jDaZKARffXR4=;
 b=I/DvjdcedZ92rYQUSMQkdgMCIfeOuzKnFAk2cdr1l1EOxnYZ8dlX6IoI
 1qjVGI/tRGkMQV+5SWS3bmOvMQXC4SIrLV/Jx/Jt1V4tZJNmDIumll9Ot
 IUaFE3EFFIYJ6iUNclIKQfS9hleS5C/CObLacwWteU1kaQWzXweqGbL1f
 f2ZQg4G74AcyHoSaPXjyfMhoUYi7Npn8iE/zxGCDOomrmD2Es5aYipeL8
 9YdHxv+vrnaAdZ+0t8yoYbYU59ees1XZFU1rj7V8ewT0m3ZPB0QlkBuUp
 HqCiGx0v6tG/7OPT6wIEvfTXqS4AafAHtl8xmEl7N+fNhWSppRA3uazUn g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10330"; a="326803463"
X-IronPort-AV: E=Sophos;i="5.91,295,1647327600"; d="scan'208";a="326803463"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2022 07:36:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,295,1647327600"; d="scan'208";a="581407193"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 28 Apr 2022 07:36:21 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 28 Apr 2022 07:36:21 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 28 Apr 2022 07:36:21 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 28 Apr 2022 07:36:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j0TspsEPKd/P2bc81x62/yEKNwVaLFMpIIkrj1WNGMBZgplku/1lSsOzzktNwMfFjwPWjwjJV/+14kWMEAsokxSPkbr86+IrpdX8r8ZQvQB1VrkPif1QaUCbFoXUPLHTRBZh272BR65pDIBrUzDPbvHVjFAM2I2vXzsc7nMmBrTcT3uv9a/OAkBzc/ygc9OcDpS0TYL42DHlbYgXcz93HHaJfoGo/g2Mh5590txZWZCI8OhOVcoK22+wyit1t9reQrTZP6tSf2b94nL8axrTE3kcByAJaTpq9n2Vy/B6Eu02hQhYzS64mA5r4YX2s1eJIy0UwYBj6tLfuyxi7ICFIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QKwvziENxPZ27fX49hLeO9wgmFbpVC+lCKcQm2KVRUs=;
 b=Efz4VVNefyJ4Aq5GtSamtieUSkxi+cHpmYc8IGpy1ADuzSsrT+F1OHEsBdVpgOEcaZOaTatozt5ogl7d9LI+uDEQqPRJByLdZVEkAgSzyxplZwMCn7Do9f8KVs9S5pSdYjX00jr7ubYkftI1GpC5WivNj6bpCYuZ0d345TjWjRggd/squuigYbGIAWiOOSB3f2/QjGYqGacjYMmuxWkbX0yKoPIEsaQFBEHvKeEQKJWQZgEI7uPZFxAPjTXJ3F2uykqJrUUlG24B4kxhFWgF+L/64jc0WXb8k01/Hh6mAiN5GzAk233IRhR3zWaC8bFZkvXXNjpzsKom/mjfqgqZ9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB3180.namprd11.prod.outlook.com (2603:10b6:5:9::13) by
 DM5PR11MB1563.namprd11.prod.outlook.com (2603:10b6:4:5::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5206.13; Thu, 28 Apr 2022 14:36:19 +0000
Received: from DM6PR11MB3180.namprd11.prod.outlook.com
 ([fe80::b1fa:393c:9fb6:6871]) by DM6PR11MB3180.namprd11.prod.outlook.com
 ([fe80::b1fa:393c:9fb6:6871%5]) with mapi id 15.20.5186.021; Thu, 28 Apr 2022
 14:36:19 +0000
Message-ID: <ce0f7b16-b06b-4eb2-9c47-e7d4092a6c4f@intel.com>
Date: Thu, 28 Apr 2022 16:36:14 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.8.1
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>
References: <cover.1649871650.git.ashutosh.dixit@intel.com>
 <cover.1650430271.git.ashutosh.dixit@intel.com>
 <9ed5af1177ad08c7c2d9c5d9b32ab0154dbd950f.1650430271.git.ashutosh.dixit@intel.com>
 <1339a2be-5fd0-cf65-d361-06c60d938ce5@intel.com>
 <87levzag3a.wl-ashutosh.dixit@intel.com>
 <d16ba36a-cc23-6bdd-803a-f2bb35dac75d@intel.com>
 <YmXQ5+u7pL/Je6p5@intel.intel> <87ee1i5k58.wl-ashutosh.dixit@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <87ee1i5k58.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: LO4P265CA0029.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2ae::9) To DM6PR11MB3180.namprd11.prod.outlook.com
 (2603:10b6:5:9::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d4b22266-375a-4ef1-7818-08da29247539
X-MS-TrafficTypeDiagnostic: DM5PR11MB1563:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <DM5PR11MB156347AC591BBFACD2E214F3EBFD9@DM5PR11MB1563.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sBMMMw0SrbObMs8zUzy4fu0E4R/wzxAWDHOyE/z2Jn917dKt6aBl7O1xvYq6/wKuxjkFLc7gB/r5Z2EeaLEoJKmsOySL4VV1ciSfy8ayLExlRK7DnU4KzdHPoq4jwB+ejlOdd5O3/xvwtG9AfsWMXbtUi1ZIGXIrbYCidtXqZRP3x6aPCzyCf2EUmPr+y2N1Qi54tJsKF/SIyGfT6JH8/rbW4rrDxTh7sSp1D6Rz07cWCY+jJ6Etlr0IK76AU4D2TIvQLr7dvkakgKb02T5tZYRHsDdtF5z25ay9rXoJLLzE0D81s2SD3lXoI0gEr6q32HFZ+1Neca8y48csYbxnbvsjo4RUtW6hKz7183/FlColEzi/wWLPwWXrtqkuXE0J1DmhzIuyYm0oye4MQeYOYQbQ8oWd6GbOqmR+PG1A/DR6Vwkz1PCNzLxVz3YHp/M8RCOGg5L3IKnclJgKkrXwX8Nch2MeaVoT45HtJkRePp8FIluNciXmizcFOl1a63Bgn4hxuJ++5o+ZsW8jXTzV2e91q4BpJgYShRobXMuM441KJ87m5skZdFmMGZ+ggjrFEbAALczh8ZNOfebhkzUDjRlNfm4sMSmnugd9an5l9ndH8+9x2U1aNsEoXYJssWdA/BeJiPFom24kL3dC4kS/KgLfKuXK9aEPF1e9rN8Ag6+vD3Oy5Kum3VC5l3ZJRaOIpYdYhZIFNUgRr2Xzb5zNXXBNLzU9UqvVnjN0XDjIzwTB0BnC1IBpN3AQxghfLOismknXS1sQQlmTwsDispFNuUwmFvOq7p/ay6cuK3IUYHkbZiHJq9+Wxw1BL9BUDUTzVTXxz5LSZTjJ6N9MCjkXVl14JLKBtajg9S0vznscfec=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6486002)(66476007)(2616005)(36916002)(53546011)(26005)(966005)(66946007)(66556008)(6506007)(6666004)(6512007)(110136005)(316002)(508600001)(86362001)(31696002)(82960400001)(38100700002)(186003)(83380400001)(44832011)(2906002)(31686004)(8936002)(4326008)(5660300002)(36756003)(8676002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NEtRM1d6ZTk5elFkSjdycWxwazRMbXBlbzhKdDZ3YWpQb3RPdlZBNWlaZ3lT?=
 =?utf-8?B?U1VFSEpydk1oV1FRdWM2UWllVWh2Rzc5ZXNWNnQxK0h5eStFWTU1T0N0YmIw?=
 =?utf-8?B?ZVBLSW5GM0RBTlRLQ2V2VlpKOTFGTzFWN2N0cEt2RWZKUEZJeHllNERIUnlU?=
 =?utf-8?B?RldqMFVGVnJMVXJMME1taHVrZnVtRjZEM3hVSE84alBXd0U0alJxbVpIY3dM?=
 =?utf-8?B?ZTVYN1YwelArckYxVEhsRXY1Uit0RjVUWlUyN2s1TENTSVFod1RiTVdkc3U5?=
 =?utf-8?B?RkIwR2ZFUEh6WXBIMEsxUVdYZGoyUUZ1SWhjM25WYTBnZE5paUtodXlWMGpE?=
 =?utf-8?B?M29GQk93T0kwWnZRcXZCaUd2V0MyL0NxbmlGUm1MUEoycmdiOXpqWXVBdXJs?=
 =?utf-8?B?Qm5RY2g4cnl6VlY2eWR0V1BvNWwzWUFVTS8zY080eWgrb0RBLzZ3dVRNNDV2?=
 =?utf-8?B?R3BqdnYzWDVUY21OeUk2SFdrZndMVDJQTnRzVEwzL3dueHBUclkzbm5abjY2?=
 =?utf-8?B?WWpLR2lCcDExRkZJZXRZQ25GNHZGd0ZUZENrN0hHS3ZtSVU1ck5idFlzYnQ3?=
 =?utf-8?B?TVA3S1ZSN2xpUzVLNysyQXdxdG05OXNhZTZqZVFIK1hBazZEbldCZDNWajBy?=
 =?utf-8?B?REFWVkV4V0RjMFExSDRyeTA1TFhoSHdtQXZOanBhSm9HOWFVMlc2bm5vVk9K?=
 =?utf-8?B?Wlp4bFZTa3RRaytqSlNKVjRpektWZVhlTkRIZkV0cDBzNld1UVJOWGEzT1Jn?=
 =?utf-8?B?dDM1NG00TDZYZ2dPVGVhVEtad2UwZFpCbjB0WE42M09zbFdudjhCcjVwY3JB?=
 =?utf-8?B?UmM1ZWNNSktBaWErUVhIc2RwbEhxRHAyR1RDSXB3cW1UclBFNU85bXZuc094?=
 =?utf-8?B?dy9RMzE3QW9mUDc5WWNPbU14TjFHa1pIdHZFWkFrbnd2RjFWYzFVakpkYzNS?=
 =?utf-8?B?dHhPYlU3MXhuV3pQNWhSS3ZJY2Q0amh4NDFZMjJGRkRPSllpMUpsZ2toMjly?=
 =?utf-8?B?cTRjd2lTeU1QN2dtdWpLMitaMWRDbFVEUVJ5VDZlS0VNTVlhWkFtMHZUbVYw?=
 =?utf-8?B?ZzMxRlBjRzVlaXBhNmxqNllVbDUvQ0dWb2pKTkhLQjJURFcyM3ZtZ2tvUUtO?=
 =?utf-8?B?Y2hYY1NtcHpBUkRhdVovR1BKWE96bGJENFFMQ1JTbVRCK2xHZDRQUENoKy9V?=
 =?utf-8?B?NFpBYjFjQWduZ2tkb3hKZW5oNkNxTFBqUDhGOXdTREgyd1BkS2VOeU5GOVZv?=
 =?utf-8?B?OWdoV2hRdi81UmFFN0pUazgvTSttVmJ6ZDZJWDNQZUUyMXI4V2dQRzhDTmM2?=
 =?utf-8?B?WTljTmt5d2MwT3ZsZ01BSzRFNEdHaHNnL2RvcXZJYm5HWTFvLzBsT1hqM2g4?=
 =?utf-8?B?ZHRMbjVNenc3NU1oNVJXNUVTdHZxN0JodW95dGx2cEtqd09BYisvUmozcXpl?=
 =?utf-8?B?TmZveUtKREdnUWVKWDBnbjdiZDFscTh4QnU2SEZoVE9zTUJVL2ZJVzl2Y3cw?=
 =?utf-8?B?MWJpSEN6ekVrNkFMbDFhM2U0SzVPSnN5N3JXanB4bHBiaTU2RHhXQWVwQUlT?=
 =?utf-8?B?Zzc4eWNBSSt0WXRsSGJYQkZVWmlWUUtzd01oYTJxM2owNHJ2MlhDZUw4N2s0?=
 =?utf-8?B?VVNwYlBLaTdWWk5FV3VxTkVjVldnOG5xK3lLQnJnMWZmdFNTRzlWWlZmdDlt?=
 =?utf-8?B?UWllN1BQMDJSSHZ4VjB0MmJxUGFicnhzZ0xXYWJzbkkwWTR4UkYxYVVoWlJi?=
 =?utf-8?B?WEJkbmVMQ0YrVDBVVVNZWDlnSzFTcTdDUXo1MS9uTUJiVGU0VU5IOWpPUmdx?=
 =?utf-8?B?cFUvRXhadFF0RWdyZ3dZcm1tS0w0akR4YU85elZLM3NORFJpcTRiRDNBUEZv?=
 =?utf-8?B?Q2lra2NqTnE0bnZlbFQ1WHJyVnBYY3BXcGJkYXpGakRTOE5SYVhsWXhvbXJJ?=
 =?utf-8?B?dy9OaXo0VjNNeHRPSjc0dVRkaGNhVzA0YnRNcVlHT2U1d3NiVTJUcGI2VnQ5?=
 =?utf-8?B?TFg2WnhPRTM2N3VPUFBybXNYTGh6NmR4NGZaeGYxUUFHa25CT2lxejNYWTQx?=
 =?utf-8?B?RUYrdXYxNVdXTjBoRXRYSEJwNytKbXBrKzJXQm5QQzI0RTBxSG8wdStNRWl0?=
 =?utf-8?B?WFByK0hCUTEzZ2lUMVJ1bkpvVU1FZ1B6WlZWNEdHak5FMGswV1I3ZkNORjNF?=
 =?utf-8?B?N1VkaE0vY2dXWDNkSkd3eURMSUpPOTBDWms0d05QbFJtVlN3ZmwwcytQd3RU?=
 =?utf-8?B?UlJHZEt6THFzUlhtdzU4c3d5TXcwWWFkVVZoK0E0VFVGYnRaOG1QQ0svN2xV?=
 =?utf-8?B?amlhSVYvc28rcEhwY1dROU1RTWp3MzE0L1kxY00vWkxEV05Ic2hGakxVa2xu?=
 =?utf-8?Q?afSZPO2zhl1tfF88=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d4b22266-375a-4ef1-7818-08da29247539
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2022 14:36:19.1577 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pPx4uVWxrkgGxB/CvkU9lFlT5sfzvCuhIwx9hB5sGvtlkCakC2RLn3mdx5dw5V0gAujk9gMx/YKqzAhhnsjPjw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1563
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915/gt: Fix memory leaks in per-gt
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 27.04.2022 22:46, Dixit, Ashutosh wrote:
> On Sun, 24 Apr 2022 15:36:23 -0700, Andi Shyti wrote:
>> Hi Andrzej and Ashutosh,
>>
>>>>>> b/drivers/gpu/drm/i915/gt/intel_gt_types.h
>>>>>> index 937b2e1a305e..4c72b4f983a6 100644
>>>>>> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
>>>>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
>>>>>> @@ -222,6 +222,9 @@ struct intel_gt {
>>>>>> 	} mocs;
>>>>>> 		struct intel_pxp pxp;
>>>>>> +
>>>>>> +	/* gt/gtN sysfs */
>>>>>> +	struct kobject sysfs_gtn;
>>>>> If you put kobject as a part of intel_gt what assures you that lifetime of
>>>>> kobject is shorter than intel_gt? Ie its refcounter is 0 on removal of
>>>>> intel_gt?
>>>> Because we are explicitly doing a kobject_put() in
>>>> intel_gt_sysfs_unregister(). Which is exactly what we are *not* doing in
>>>> the previous code.
>>>>
>>>> Let me explain a bit about the previous code (but feel free to skip since
>>>> the patch should speak for itself):
>>>> * Previously we kzalloc a 'struct kobj_gt'
>>>> * But we don't save a pointer to the 'struct kobj_gt' so we don't have the
>>>>     pointer to the kobject to be able to do a kobject_put() on it later
>>>> * Therefore we need to store the pointer in 'struct intel_gt'
>>>> * But if we have to put the pointer in 'struct intel_gt' we might as well
>>>>     put the kobject as part of 'struct intel_gt' and that also removes the
>>>>     need to have a 'struct kobj_gt' (kobj_to_gt() can just use container_of()
>>>>     to get gt from kobj).
>>>> * So I think this patch simpler/cleaner than the original code if you take
>>>>     the requirement for kobject_put() into account.
>> This is my oversight. This was something I completely forgot to
>> fix but it was my intention to do and actually I had some fixes
>> ongoing. But because this patch took too long to get in I
>> completely forgot about it (Sujaritha was actually the first who
>> pointed this out).
>>
>> Thanks, Ashutosh for taking this.
>>
>>> I fully agree that previous code is incorrect but I am not convinced current
>>> code is correct.
>>> If some objects are kref-counted it means usually they can have multiple
>>> concurrent users and kobject_put does not work as traditional
>>> destructor/cleanup/unregister.
>>> So in this particular case after calling kobject_init_and_add sysfs core can
>>> get multiple references on the object. Later, during driver unregistration
>>> kobject_put is called, but if the object is still in use by sysfs core, the
>>> object will not be destroyed/released. If the driver unregistration
>>> continues memory will be freed, leaving sysfs-core (or other users) with
>>> dangling pointers. Unless there is some additional synchronization mechanism
>>> I am not aware of.
>> Thanks Andrzej for summarizing this and what you said is actually
>> what happens. I had a similar solution developed and I had wrong
>> pointer reference happening.
> Hi Andrzej/Andi,
>
> I did do some research into kobject's and such before writing this patch
> and based on that I believe the patch is correct. Presenting some evidence
> below.
>
> The patch is verified by:
>
> a. Putting a printk in the release() method when it exists (it does for
>     sysfs_gtn kobject)
> b. Enabling dynamic prints for lib/kobject.c
>
> For example, with the following:
>
> # echo 'file kobject.c +p' > /sys/kernel/debug/dynamic_debug/control
> # echo -n "0000:03:00.0" > /sys/bus/pci/drivers/i915/unbind
>
> We see this in dmesg (see kobject_cleanup() called from kobject_put()):
>
> [ 1034.930007] kobject: '.defaults' (ffff88817130a640): kobject_cleanup, parent ffff8882262b5778
> [ 1034.930020] kobject: '.defaults' (ffff88817130a640): auto cleanup kobject_del
> [ 1034.930336] kobject: '.defaults' (ffff88817130a640): calling ktype release
> [ 1034.930340] kobject: (ffff88817130a640): dynamic_kobj_release
> [ 1034.930354] kobject: '.defaults': free name
> [ 1034.930366] kobject: 'gt0' (ffff8882262b5778): kobject_cleanup, parent ffff88817130a240
> [ 1034.930371] kobject: 'gt0' (ffff8882262b5778): auto cleanup kobject_del
> [ 1034.931930] kobject: 'gt0' (ffff8882262b5778): calling ktype release
> [ 1034.931936] kobject: 'gt0': free name
> [ 1034.958004] kobject: 'i915_0000_03_00.0' (ffff88810e1f8800): fill_kobj_path: path = '/devices/i915_0000_03_00.0'
> [ 1034.958155] kobject: 'i915_0000_03_00.0' (ffff88810e1f8800): kobject_cleanup, parent 0000000000000000
> [ 1034.958162] kobject: 'i915_0000_03_00.0' (ffff88810e1f8800): calling ktype release
> [ 1034.958188] kobject: 'i915_0000_03_00.0': free name
> [ 1034.958729] kobject: 'gt' (ffff88817130a240): kobject_cleanup, parent ffff8881160c5000
> [ 1034.958736] kobject: 'gt' (ffff88817130a240): auto cleanup kobject_del
> [ 1034.958762] kobject: 'gt' (ffff88817130a240): calling ktype release
> [ 1034.958767] kobject: (ffff88817130a240): dynamic_kobj_release
> [ 1034.958778] kobject: 'gt': free name
>
> We have the following directory structure (one of the patches is creating
> /sys/class/drm/card0/gt/gt0/.defaults):
>
>        /sys/class/drm/card0/gt
>                             |-gt0
>                                |-.defaults
>
> And we see from dmesg .defaults, gt0 and gt kobjects being cleaned up in
> that order.
>
> Looking at lib/kobject.c there are several interesting things:
>
> * Three subsystems are involved: kobject, sysfs and kernfs.
>
> * A child kobject takes a reference on the parent, so we must do a
>    kobject_put() on the child before doing kobject_put() on the parent
>    (creating a child kobject creates a corresponding sub-directory in sysfs).
>
> * Adding files to a sysfs directory does not take a reference on the
>    kobject, only on the parent kernfs_node.
>
> * Since we do call sysfs_create_group() (for RC6) ordinarily we will need
>    to call sysfs_remove_group() but this does not seem to be needed because
>    we are not creating a directory for the group (by providing a name for
>    the group). So sysfs_create_group() is equivalent to sysfs_create_files().
>    So it seems we don't need sysfs_remove_group().
>
> * Similarly it appears files created by sysfs_create_files() do not need to
>    be removed by sysfs_remove_files() because __kobject_del() and
>    sysfs_remove_dir() called from kobject_cleanup() do that for us (the
>    comment in kobject_cleanup() says "remove from sysfs if the caller did
>    not do it").
>
> Based on the above it is clear that no one except a child kobject takes a
> reference on the parent kobject and as long as we kobject_put() them in the
> correct order (as we seem to be doing based on dmesg trace above) we should
> be ok.
>
> Also what is followed in this patch is a fairly standard coding
> pattern. Further, in case of any errors we generally see failure to unload
> the module etc. and none of these things are being observed, module reload
> works fine.
>
> I hope these points are helpful in completing review of the patch.

See [1], it is quite old, so maybe it is not valid anymore, but I see no 
code proving sth has changed.
Also current doc says also [2] similar things, especially:
"Once you registered your kobject via kobject_add(), you must never use 
kfree() to free it directly"

[1]: https://lwn.net/Articles/36850/
[2]: 
https://elixir.bootlin.com/linux/v5.18-rc4/source/Documentation/core-api/kobject.rst#L246

Regards
Andrzej

>
> Thanks.
> --
> Ashutosh

