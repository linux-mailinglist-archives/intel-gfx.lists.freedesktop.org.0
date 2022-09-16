Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 347AD5BB1FD
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 20:20:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0348E10ED83;
	Fri, 16 Sep 2022 18:19:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F5D910ED86
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 18:19:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663352376; x=1694888376;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=3tCR08bHG2OctxNIPASuwW/x7135f97uulhX51G7PjA=;
 b=QpwCbxt0/sZL+1H8MINwVaFPFRtjQze8HDvS2QCkZca2xOj3BCE9erpF
 vRJ49Tsz9Li6l3Ijl1ABipI9Oo8yayEvi2mmcS+yF7sXmYPOS8vBQqb+i
 aCnVI5wAnWUYvN2W2PjFn+7JcrLyS7DD8a2TCRF2HP0JtWeSqb6hdL5AG
 N58c0TWN3M3lDz4sBmyhfb9vtuGDZNzhi6dYSHzdt+170rH2nJX3ghuYU
 L+A5HGECUknmxq8fpoWqY+KLbMA8EjSJKRTiJBIuLKqBPKsmrL534hRGp
 8ZaUVdgAamcqmqnd63z2LjKU6A+leiKMou37TTBau2znYN9fvdZHayQvz A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="297773969"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="297773969"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 11:19:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="706837218"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Sep 2022 11:19:15 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 16 Sep 2022 11:19:15 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 16 Sep 2022 11:19:14 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 16 Sep 2022 11:19:14 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 16 Sep 2022 11:19:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AqtZUNeQMU7NZT6ISAyy9/r7uL1J4PWPGAxwHgfPAo8kvSGwVCIWj0m68DMK4C/ydQs0KuUrA4nbCgXcmUmhyqBhDniT0ACqcLc5tb/sOjMyp2/5PU3MHPeTsgz8r8UYUBemhUHs6rjZnehKIR6QBSZKfNnxFKS1XPXFlElE0asQm3h1q5JQG3Gk2yKIT7r3OjGHy0MZlmk7gsBoMjD3OETy45TTuGKEpQzjBvBjlD22AT4RWEpId1021AVu9ScCysbEUdWf6pvtZ9ZlWCnERkfeXlcZX+ou+SeDYdp2YeLbSm/47prKyffb4iXQlv4Pp9jBKnoXizLbXcT1DuiGRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HSVeszqbxXoMwt1d61aM9mG83aMPE/KELv0wccdE8ZM=;
 b=U1hyQzWbxq0xp2w1z7xKhcRMQyjxrs8E0EU401imf2sAzA2blzLqtEgqvJFLFk1+AigQKCWgbiDSPuM7TjFrmnD1c3d3h2j6bgoUbc5rwEBdjUGwXoK6CwlzdXsQZ7fugGhm57H81Cgv02f0jlTx+s2SjWm3zUagdeApsQWxCz6JTrYMCWNO8x70jAMMOofhQNtaxct+lwOM3Jhatzb419ajHVDWF9oBXBh5miJViWYKlvzpLKGVT6tw7Y1uqBN2PC8GU9PfLyvqOH0T/1INA3QAUTvk5aJneCb7TvIJ6xhHn59LBR/iOASZd0w47A1su4uEdh1qLaqSSmp6nzp0zA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Fri, 16 Sep
 2022 18:19:12 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc%6]) with mapi id 15.20.5632.016; Fri, 16 Sep 2022
 18:19:12 +0000
Date: Fri, 16 Sep 2022 11:19:10 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <YyS+HqRQkm15APt2@unerlige-ril>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-15-umesh.nerlige.ramappa@intel.com>
 <87a6703yh8.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87a6703yh8.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0PR03CA0153.namprd03.prod.outlook.com
 (2603:10b6:a03:338::8) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|SJ1PR11MB6180:EE_
X-MS-Office365-Filtering-Correlation-Id: b50c5585-06d0-4ee7-6623-08da980ff46e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Gm9EmCUcYEs2zeGE3L1kBC5K4M3gi8oY0qM/XcxG2+i08aNRfcX8SA0vFczrHUN0RhfL25YEm3FHuJiLTbNaoKN6Cgo1Jr/QxO2ZvSBQOGQq8pniduPNQLwq7vQQ78ya0JvYVNcoOTuJP6KD4mE79LQefRFRnUwKUEE3WEE8UcIHpS7dgalWG8kXB2bVkrPDkKBKQoiLYurdIbxS199hOw9NcqQ+36+9P+wfef2zZNNpTBtHlkoUSbyZGPSeGpCdi4pnX4oPO14CXS8e7FF/yZe0KihqJUbJURi5/i9Ha+X0QQ1hXhKO33Gy2miON5bZNbPhoIN/ojg7Z0fC0sqV8UHClt8i2Xy2XCbOZNUFDWRYnEmhaip9R9esD74sloE9FmA/bWa07++0JWulFw+uO9e3sd+LyeC2CGr1bIl1vPjRt91AJklqQNxkMhyn4V6/DUq85CxrXv4xSqGkbJtPS4r2oVHKlLLxlWQ+pNnc/ShYCmNdMW7Ocvwp8UtlBNZ6dniRygFTMl/H+mDsgS5LskryctlE/L4ae47o7uGZ3e9qjt8D858oc5V7pep9RHAJfl7G2652MkMFUk5DRe0NF9/wwrfhoGufbkeI/6MlJCUckfDXngIO2GSClafVbNtatzuAAA56Kj/l9n1HhOVt2ND1811oO5xqJQX11dwPT8ZJLY1ud7Rh9k1FVtDQmOg+LLPiuNa51Mot4bAHggMJ0oc4r5uEWoTd57sHrXHpgKb2QPvLdgeEwpRgylxsv0c1
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(346002)(366004)(396003)(376002)(136003)(39860400002)(451199015)(6506007)(6636002)(6862004)(4326008)(66946007)(8676002)(26005)(83380400001)(66556008)(186003)(66476007)(107886003)(316002)(33716001)(2906002)(6486002)(41300700001)(478600001)(5660300002)(86362001)(8936002)(38100700002)(6512007)(9686003)(82960400001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Uy81MGM2a1lXbm5NeFVVdjgvRkpWTU1ydVhVejNZR3RWQ05jK2NJbWQzNGVJ?=
 =?utf-8?B?c3FQQmFpZnY3QURYQ1lZZFBBaTVFZVo5czFSV0Y2SDFoTUhVc2lHUk9nUWdp?=
 =?utf-8?B?d3JpaXVEUlZDNnBLNFFURGVUMzJLeWJzV0lrN3p5SG0yb3JTdFpUYXlqb3lH?=
 =?utf-8?B?b1ZPbnBlRTNLemUwME00OXZIVFAwSTltalB5d1NjRG5yMHRrTmJNSWl6Nnkx?=
 =?utf-8?B?SnpMWTBLcXU2RzVnK2V2ZURTUGZrNWltcVhlcFJocnJSQ2djQklCVW5SQmVz?=
 =?utf-8?B?cjFpUXJjSVhpK1JWUDFwUmY3MkpmWFdPMHNZcWwwS3Y0OGxNTEhHeW0yRkhj?=
 =?utf-8?B?OUxxMXVqVG1IN1FsSWNqTmxVaWphTzZWcUszYTVEaGc0TlVRQXU3NUVQY3Ix?=
 =?utf-8?B?Z2ZHM3g0OG5uMFp1cHFRQk1lSGExUi9xYXp5Zlh6cjJjMWM3ZW0xUVlNZ0tP?=
 =?utf-8?B?a2RYSzZHbWcwVTNHRFBPRFU4TDRobktnNGV1RHRGcnNDZmcveTFpR3RTbldV?=
 =?utf-8?B?bk11LzJnZHBxUXl3eC96d3pycGIzU1Arak1KNWJKaG5hbUtHNDB2ZXpIaldX?=
 =?utf-8?B?QkZqWUJpU3RpeG1mUjM5MXFvZnJqOWxocmk4YWlnRWdFOE50RDZ1Z0VtaVk0?=
 =?utf-8?B?Yk1GSStueEdzQUcrUlFQRHlyK1g5RVYwL1Roc3VVTGlFL2dEQlFrZkJEaDd5?=
 =?utf-8?B?bE1iWEFRYVFMdWlaMDJsUHFIYXpDTWFwcUE1NmVyc1Y2K1dnREQvMkJWS3lT?=
 =?utf-8?B?NGdWdnFLUklUYTNvdXBDcWVTemV5TlBoalF6cjJQcGcyZm43NzR3b0JQTXVW?=
 =?utf-8?B?N2dMZ3k4SThxS0RnMEwzaTYwYUtuTnFTQS9INHhTNjRYL3VjS1Mrc2Ftd3Aw?=
 =?utf-8?B?M0taU0VvK05TbU14L3NVcDY0MGRWMStxUVZIaEN1YTBURmhXaVRvNUtpaEFV?=
 =?utf-8?B?cHRqd29MZzRCRmltUDZiVG5IMU8xTkFoV01kMzM5eVpwa1RMYitTMmZBVUFS?=
 =?utf-8?B?b2lvelVGY3oyK0NKNDBvOW9McDFENmtSQ3ZWZHZoTGNtQy8weG1UWW9VYk5i?=
 =?utf-8?B?QTJiaXdWQUtMRU9yeG5ybDhWZ2draldVaERLWVVCOXZDS1RXdlowUGRkOU5M?=
 =?utf-8?B?S0pUcU1qYVZ1ejB5ZmxvQXJLRWVRSDVYM1VRTm9xeiszRmY2MmI5dEtOVHBJ?=
 =?utf-8?B?ZWQveWhPVk9Ebk4vUkpnRmRsWEtTWGlGVUVoKzhRRjQ3YzMwaWdJZmJDNStB?=
 =?utf-8?B?K3RXYWVybzRZU1JyN2dkK1JJdHRzYVVyOE12aUtFYmx6RExXU2oycEcvVS9r?=
 =?utf-8?B?M2REajRYUFg4SFhNSnBidUVPdWFoK2RMcDdrdS82eVRRYXQ2OHBuOWluS21O?=
 =?utf-8?B?L2EybFlBL253Znd4OURWaE9TZ3VMZWpWZXd3K0MvdnlaSENZZllxaGdWSHpm?=
 =?utf-8?B?dENkQTBxVkdOblRBUlZPZEVIaGJxRDhDVS8xeGkxREl1eUV3S3g3bkEvVXVY?=
 =?utf-8?B?QUdlcUZ0NVQxb0Y4MzI5NWNHMzZrUnJuUWJhYjNUNjNONkNvSk5DdzNiMDVQ?=
 =?utf-8?B?TVZYRkd2bDZQNWdWTzJqYWpqMXl6YWxNUlZwUDk5eXNsYmhqMUt6eVNWL0l2?=
 =?utf-8?B?bXloUS8wdkJPbkpBdVdnL0FlS3lNTWNvR0hrWHp3WG54WUJidkFQT1hpejE0?=
 =?utf-8?B?UHRPanBHMURqNnU1OE9XUjI2UXRtUUUzQ1FvT05JVmZMQTZmVlAzOTRQdElT?=
 =?utf-8?B?K1h2ZXYvMGFVVzhBblJoR3hrTU5yeGhsN0Q5SENKSkFkcFo0QXg3QVVzdlVn?=
 =?utf-8?B?YUE2a2s5bHZVQlg1elROemRhUXVhbW9yTEcwS0YrVnFTQ0E2K25nRU1YL3p4?=
 =?utf-8?B?bW5uNW02WnoyRmRDT3RGcktGa3FvOVd0VDBQR1JCUmdMRENtS1ZLZ2hsMmpD?=
 =?utf-8?B?M3ZGNmloNHVOcm44ZDFxeGhqNHE2aHB0UnN0WlNiaVk4NXhSa2xwNmVTcTZr?=
 =?utf-8?B?VEhlNzFYc3k0TTBGUmdFK2JaQWpDMENPWXZyRVNKcm5uYWdsd3VvSXhzVm9Z?=
 =?utf-8?B?anVwdGlCZUJrdG50d20wTk10Qzg5bEhPRFRheU8xY0Y1ZmRBVlJvNXd6cGsy?=
 =?utf-8?B?V1NzODJSTjk4OGRoOE9HN2RmNVcxcHd0MW5KMzZwd2pkZlJ0ZVZ0b0JhekJj?=
 =?utf-8?Q?+cJZ6rCrstIeYNzYvjs1cxM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b50c5585-06d0-4ee7-6623-08da980ff46e
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2022 18:19:12.0716 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9DIDD0xja6P4QwNV+D20o/MKOoOsFfDRLvX89M46wTvxw1fsAF0jT/KYAdBIwUqdc2wEuKf8vnOEKS5Grs9nNZ8jCbSCl4gQqsH9lV32WhM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6180
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 14/19] drm/i915/perf: Add Wa_1608133521:dg2
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

On Thu, Sep 15, 2022 at 06:21:55PM -0700, Dixit, Ashutosh wrote:
>On Tue, 23 Aug 2022 13:41:50 -0700, Umesh Nerlige Ramappa wrote:
>>
>> DG2 introduces 64 bit counters and OA reports that have 64 bit values
>> for fields in the report header - report_id, timestamp, context_id and
>> gpu ticks. i915 uses report_id, timestamp and context_id to check for
>> valid reports.
>>
>> In some DG2 variants, only the lower dwords for timestamp, report_id and
>> context_id are accessible. Add workaround for such reports.
>
>Once again, if we are productizing A-step or it is going to be in CI
>upstream, this is:

No, we are not. I am dropping A0 specific fixes from this series in the 
next revision. Doing so will also simplify implementing Jani's comment 
here to have a 'per variant const oa format array'.

Thanks,
Umesh
>
>Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_perf.c | 9 ++++++++-
>>  1 file changed, 8 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> index a28f07923d8f..a858ce57e465 100644
>> --- a/drivers/gpu/drm/i915/i915_perf.c
>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> @@ -310,7 +310,7 @@ static u32 i915_oa_max_sample_rate = 100000;
>>   * be used as a mask to align the OA tail pointer. In some of the
>>   * formats, R is used to denote reserved field.
>>   */
>> -static const struct i915_oa_format oa_formats[I915_OA_FORMAT_MAX] = {
>> +static struct i915_oa_format oa_formats[I915_OA_FORMAT_MAX] = {
>>	[I915_OA_FORMAT_A13]	    = { 0, 64 },
>>	[I915_OA_FORMAT_A29]	    = { 1, 128 },
>>	[I915_OA_FORMAT_A13_B8_C8]  = { 2, 128 },
>> @@ -4746,6 +4746,13 @@ static void oa_init_supported_formats(struct i915_perf *perf)
>>		/* Wa_16010703925:dg2 */
>>		clear_bit(I915_OAR_FORMAT_A36u64_B8_C8, perf->format_mask);
>>	}
>> +
>> +	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0) ||
>> +	    IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_FOREVER)) {
>> +		/* Wa_1608133521:dg2 */
>> +		oa_formats[I915_OAR_FORMAT_A36u64_B8_C8].header = HDR_32_BIT;
>> +		oa_formats[I915_OA_FORMAT_A38u64_R2u64_B8_C8].header = HDR_32_BIT;
>> +	}
>>  }
>>
>>  static void i915_perf_init_info(struct drm_i915_private *i915)
>> --
>> 2.25.1
>>
