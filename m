Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C9C506136
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Apr 2022 02:58:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C61A910E52D;
	Tue, 19 Apr 2022 00:57:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DEDF10E3A4
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Apr 2022 00:57:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650329875; x=1681865875;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=xGDTuo6amzrabGuUuvemT8eWo3ooxqmIKRv5/oMX1RI=;
 b=ekZGJWkNpbQKQbdyQlIuyzIhlVLeq4reUBS1ac3m8QHfcC8R+e19tdgI
 eqWoL42Dyjs6yFmGEs5+Hf4I1MZSDDEbnWxh/3LnkEwms+PNc+HqjeCGY
 7uQx/AfQ2KOAOph3WwNYmpbMV+V6GuhhKvUttSSTMQ2W/HkdiAXYnMXjP
 29e/azc/VmeMP0GGMdf3rYBmi/zH7FXzLO0O9X4rFpQ/2dNMImMS4Xhvp
 m9K6GT+sw66OYRJKmkPESsaUuQ0t9b51nJ4UzkOch0wmXeVoVpTDqlZIr
 jEMEyW+C38i7fYcW/2bU4nSyJPdlQmPkmwd6hMgBwVQCFbUYco398ppZ/ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10321"; a="288738405"
X-IronPort-AV: E=Sophos;i="5.90,271,1643702400"; d="scan'208";a="288738405"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 17:57:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,271,1643702400"; d="scan'208";a="592585139"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 18 Apr 2022 17:57:54 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 18 Apr 2022 17:57:54 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 18 Apr 2022 17:57:54 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 18 Apr 2022 17:57:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H7R5i8d5gsRF+ZZk14O0/2KAgiTB4dZeF1HYjnOftjXXlJi6afGHXjXzF8/ccG20dW3SSvZARDdLlMvoAe5Iyn0HT2npz29E3zVl02Q4hThhMh/tZHqCLi4yX/O/vd4nhgJghUJ5K7/uixu2j+oDjJS8vV8Q3VVIA/IuutuH8k0M0+fXMPwq2V1YAiwKfAQLcj1DgoTccNtdZbBKIupOYcxmAkhrSsMxhAJ3bApeMrDPgUPokU553h5vQQ5IqmCXNWkgQvbcDFjEKbF5XX5er0fnRQskQJCqKT7N8yYJDIFKFcbJP2ApSxWcBS3M8VBE90QkZbKuKzmkdLkllu/fZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AOmONwwh1X4+MwswymDvbM7TbtVN8XYqHQlUuB0/oWM=;
 b=oJ7PbLURRyfQ6RdXbHtnU/qpsJYP3QMsXeKhYCtaFodW34mambxEmMr+vnGbbrKzSdWyyJw6kJVzomlCINmDVj5idRR/T5pQ73nV6PVVL1v5f0+6BTf/HtYgJ0n6Z5gl7cpMSybxehncOcO/YZhgL2mjBgAp3ZneLGt74iJ9uXJ4WyPJBvFBD3rMYr5/jb3Awsmwz7uj6GTpsHvZbg0NngcYWtSJ/rvbzviak+YUBW+jazr4CiJtWQNt8oc7kmWmhNnuRoZQ2/g98Bs323DgJPEJSZilCwZx0U0x5Qqv8xw1i8WbslUnqv2D1ToDN0y9v33IaMkupqXw0kd83v5ZxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 DM8PR11MB5702.namprd11.prod.outlook.com (2603:10b6:8:21::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5164.20; Tue, 19 Apr 2022 00:57:52 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::b561:17d8:3112:913f]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::b561:17d8:3112:913f%9]) with mapi id 15.20.5164.025; Tue, 19 Apr 2022
 00:57:52 +0000
Message-ID: <751d9ec0-e20f-0750-aa30-4a21d208b9ec@intel.com>
Date: Mon, 18 Apr 2022 17:57:50 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <john.c.harrison@intel.com>
References: <20220415224025.3693037-1-umesh.nerlige.ramappa@intel.com>
 <20220415224025.3693037-3-umesh.nerlige.ramappa@intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <20220415224025.3693037-3-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0024.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::29) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d1677c68-91df-472b-769d-08da219fa19b
X-MS-TrafficTypeDiagnostic: DM8PR11MB5702:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <DM8PR11MB5702B1605BBA5FA0C9CAA181F4F29@DM8PR11MB5702.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YgAfh6BWsOJrATC0Z6UL3pTfA+fDoBBak4I97z/VPrqtkxErjlxgo0WD7TYWqfpC//XBgz72gOJrBtUXJmeqA3z61DD10J4rzpmp+mdIfNlHgN2A25ck+f/6xeNGfEpXg1ae0o2XD5+m9wx8x1U9XZYpUemFYuLVqQ2Bt20OmlKa4lWGYvv6uEdBj5aSRAVFZ5wJ/t4U8Uoy+CSQ3ZRj1aD3n2Dih93pvUxuA5Y0KYMZiH/wGL1S3wxVLimNHffMOyak8YKqwqZu2N5jc1Unpivj/iyOpoV3E3+CJ4VdMaJEj5qVVr3is0BcyPHHqOw0BIU0gSvNWr6cDLRNAXiv3FzF7fQYUkkQlhg8Xu4udkceNjRKMASb2Cw0CH82cf3bgHIUmGLwKhoJv6UW/WhncLzHmYkTtf4bhrtDRjg2oCM5LjfKJCpDS9eBqm2WPkEgCMcoFUtgOCP2e/xMetcf5CIIa9D7GDzdUhCXiRBjBZedfSX7Msi22mseUxuyF4Is+y8zimOWJC5HxsCdztyzd1kCeMahTkqep8pxWlRKWswB6slwp1b50f6xnk9wltBJaIsuvq7H/sI9ojhCJZfchtZHm/y/NBhLsRRbX+VkhYCFue75TVI7+Ni8MVxnAc0A9dACXosNUKISdAkv1wApww3OlIVIoiZiK9cl3pezjhgtnjxFliD+6I8oGpLVkcbYBKcKYfsDmazde/goxrugfp6gHBWSKEkPD3W/lkosjABUBa1TV3p4cFrEbTlaSoWb
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(8676002)(66476007)(66556008)(508600001)(2616005)(2906002)(6512007)(53546011)(8936002)(36756003)(31686004)(6506007)(66946007)(5660300002)(31696002)(6636002)(86362001)(83380400001)(82960400001)(6486002)(38100700002)(316002)(186003)(26005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QWxYRGo5UGVlVll3NFd6aVhpbVZ5THBiV3NIbmVlcXJNUkk1cXZGL2xaVHVZ?=
 =?utf-8?B?Wmt0a0dZT2E5eHBvaTgrQkVDcWt4cmxBV0dkT0x2UGxoVlI4TU96NituWC9p?=
 =?utf-8?B?dzNkdFB5TERXWTB1enB0NXJWSXl6Y1ZpYWpvUk55d2hHd1FjWjZSVVhGQU93?=
 =?utf-8?B?M0lDbXJxZTU2bW80QlBDL0puV1Zub3U4eUJTaVU3WEdnQkRsTFMzcS9jNi9X?=
 =?utf-8?B?OXNHUDE2d0VNWXlpVEFMcU1jM2NUMXR1UlFoWkM1bXVWcFc1NkRmWjJ3QTNS?=
 =?utf-8?B?NnUvZEdxcWIvT3VDd0djdVpiS0F2c0hKNG1DS3lFc2xCTXVRUXpCU3JuMTZK?=
 =?utf-8?B?bTlrUnpwb1FCSlZCSlBSR0VDTnZrZmM5MUFGeXJYdGdvK0JPVVZIcGxMbTYy?=
 =?utf-8?B?RUVuSTl3Y2M0aFF3Q0pMVVUzbWROcUE5TW5nQXJxcm5UbXZ6dXRLYWIwOXBr?=
 =?utf-8?B?aHhoM1E0MTlmQWFlUWtkdFl3Ulp1bng4Rld3SXFXTkhxMTltOERQWkVzMHhQ?=
 =?utf-8?B?dlp0M2RzbGNrZTNKWTkrM0VWQUgxVWVWNTJUUnJWU0JkaGNTZWkvV283cHNs?=
 =?utf-8?B?YzByZlJVODRHZTZYSzBMQ215QVFWRTNlbzYwbW9XN1Vxc1RlRHhIUXlnTmFE?=
 =?utf-8?B?QWJmYU1LUFpONFJEZlhpQkJoRjlTNmhxUUxKWEE3NTdWRXpHbC9wdkNOYlhG?=
 =?utf-8?B?a0YwZXVGSUNpT0pJWm5MTDl6Q2xGWXRkcW4xdlpiN3hlZWY2bjNwMVlCcmNT?=
 =?utf-8?B?d1hSQXRNVTljT1hOVXhVd3l5NkorVTVFTkp1bGljeWF1emZQRGtJaUtuaVNJ?=
 =?utf-8?B?TmFUTFdhNWY4UmE3enJEYUp3U3JmWDlDMTU0OG1rK3Y0a1I3NXBoSE5nb3dM?=
 =?utf-8?B?V2R6Q0ZicHhkOU5OQ0FicStZMi9mMHUyOFdabmNCUXJEZEZHcVZham9rZENt?=
 =?utf-8?B?RG9oWk5zTG9neUpHL1hpcW4xcWVyUU43YWl3SG03eXg0aGh2b1ROSDRhZnN5?=
 =?utf-8?B?azMrdEVRYjFtekhqM0g3SDY3RXRPS25aQlNVQ3NlSWhseUpTUk1EZEpsbUgx?=
 =?utf-8?B?MmZESjZpenNpT0hvT2F2UHFEYzllNXRJSmtmTlczOHlTK1I3akZ6N1lmZ1Yz?=
 =?utf-8?B?VWwreVh4WUNoWkREWFZKMk1UZEdrc1puR1o2cmdGbVZ2QlUwU1RpZmNEWi9v?=
 =?utf-8?B?MUg4eGRkcG44dnNzbEg5R1ZXaFJXbGpaZ3hqOEdCVmdiZDNsay9FaTloNVJW?=
 =?utf-8?B?K2xIREJ4dHhWVjB0T25qaGRCZTdXKzNKYUNXRmhNN2l5OUdZczdYZHVjZEtZ?=
 =?utf-8?B?SktTb1Nib1BjOURXejBOMWxTWWRNMko0ZUNoZ1lzTUQwNVg3Q0dveWFMZkRn?=
 =?utf-8?B?VFNwQVA4K2dDQmZhUjY3RHhza0ZLZkZwQmIzOEdNbFJJN3RwVVNDbnc5MFhl?=
 =?utf-8?B?RzFnVXhuOE9YT2QrZXFxT01OSjFYdGxISnJmWFl3TFJvLzB5STZPdE1CTXJi?=
 =?utf-8?B?aHZQdExiK0xIQXdxRjhVU3doN1BiYk1WZnRFZUt3OVB2ZENQQWxQR2xtSzJK?=
 =?utf-8?B?dENKUVIwOGFpMFJ0NzRGbm0xaFhIbldTMTVCaUpYclJKSVFqT3dEdzgxUStB?=
 =?utf-8?B?TVlxc0hPV0NmUWJSdTFIeUdlMUJXcWwzMHNYbmM1dEtHUE5kRm5WT3k5TUlG?=
 =?utf-8?B?RXhlNmx1aHJ3V2dCaE5RV0ZuS0hXaTVZVmNFOVh0clZiY1BxSG5jVTE3KzNt?=
 =?utf-8?B?NjRCWklUeEJMSlJBSzBSaWJ1T2d2bkxWbkF4eE9RdEdwam1kUEkrMDFUT2gv?=
 =?utf-8?B?NjFlYVFCMEp4THZlMlFrYTBoeVFWNFJ2QUlKZmJXYUNJK1VpSmpuTjdQL3JU?=
 =?utf-8?B?Rkd3cmVpSGYwdG1vREw2ZkVVeEpKV3BIcnFmNjJvaWozczlSdkF0bG1ja2Nj?=
 =?utf-8?B?MDlkT3RzMmpoM0ltRmNYV1BOVWlOYUhXdEtORHk4L1BTZ1pVVEZjaUl5L05l?=
 =?utf-8?B?TGNyeXBkSEtseWpnS045UGdhdUk0K2FIMVlhcXNWOWhLb0YwaENIRWRFL2Vu?=
 =?utf-8?B?Qy8wWlJmbzA5T3BEdVh4cWVVc3ZyVGRZeGRDMk1PYXFsRFE0UlRtYndNcGxD?=
 =?utf-8?B?b2NPcEp1NmdIdUNXY1JGcm5STm9PU290Qm5keTVhc3pqQkJEN2c1OXFZOWJE?=
 =?utf-8?B?eWlETVFpemhoSERYR3QxeVNRc1FxdHE5V3QxTW5aSmNXZ1NzLzV2T0JPa01i?=
 =?utf-8?B?Q2dWRGQvei9qZUFCdzNJVWp5VEdCMHhXSFFYeDlhSkpkV0d3VGpONlJrUHYx?=
 =?utf-8?B?bHpXOTltb1BuU2orc1BaWnl5bnZ3ems5Vm04Ujh6YXlCWlNOSnlneEtnSXg2?=
 =?utf-8?Q?v+ziRzqrndy1YDH1e1EC1jlxH78LME/Zx84/g?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d1677c68-91df-472b-769d-08da219fa19b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2022 00:57:52.7132 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ycncC+ULE0A4S2REp+q+nTfjGCuGThkwzVBRn79I6MHPxL+XKm3xK1ZfGijEKOVIzFvO7tuABoIP0jIWm2ZcuuoIv23Gmm+z8g0op5gxzQs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5702
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/guc: Enable Wa_22011802037 for
 gen12 GuC based platforms
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



On 4/15/2022 3:40 PM, Umesh Nerlige Ramappa wrote:
> Initiating a reset when the command streamer is not idle or in the
> middle of executing an MI_FORCE_WAKE can result in a hang. Multiple
> command streamers can be part of a single reset domain, so resetting one
> would mean resetting all command streamers in that domain.
>
> To workaround this, before initiating a reset, ensure that all command
> streamers within that reset domain are either IDLE or are not executing
> a MI_FORCE_WAKE.
>
> Enable GuC PRE_PARSER WA bit so that GuC follows the WA sequence when
> initiating engine-resets.
>
> For gt-resets, ensure that i915 applies the WA sequence.
>
> Opens to address in future patches:
> - The part of the WA to wait for pending forcewakes is also applicable
>    to execlists backend.
> - The WA also needs to be applied for gen11

I would've preferred this patch to already include the gen11 checks, but 
given that gen11 defaults to execlists submission and that we'd need to 
specially enable GuC in CI to cover, I can see how making it a follow-up 
makes things simpler, so not a blocker.

>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> ---
>   drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  9 +-
>   drivers/gpu/drm/i915/gt/intel_gt_regs.h       | 18 ++++
>   drivers/gpu/drm/i915/gt/intel_reset.c         |  5 +-
>   drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  4 +
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  3 +-
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 85 ++++++++++++++++++-
>   6 files changed, 116 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> index eeead40485fb..f553e2173bda 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> @@ -182,15 +182,16 @@ static void gt_sanitize(struct intel_gt *gt, bool force)
>   	if (intel_gt_is_wedged(gt))
>   		intel_gt_unset_wedged(gt);
>   
> -	for_each_engine(engine, gt, id)
> +	/* For GuC mode, ensure submission is disabled before stopping ring */
> +	intel_uc_reset_prepare(&gt->uc);
> +
> +	for_each_engine(engine, gt, id) {
>   		if (engine->reset.prepare)
>   			engine->reset.prepare(engine);
>   
> -	intel_uc_reset_prepare(&gt->uc);
> -
> -	for_each_engine(engine, gt, id)
>   		if (engine->sanitize)
>   			engine->sanitize(engine);
> +	}
>   
>   	if (reset_engines(gt) || force) {
>   		for_each_engine(engine, gt, id)
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 0a5c2648aaf0..12d892851684 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -841,6 +841,24 @@
>   #define   CTC_SHIFT_PARAMETER_SHIFT		1
>   #define   CTC_SHIFT_PARAMETER_MASK		(0x3 << CTC_SHIFT_PARAMETER_SHIFT)
>   
> +/* GPM MSG_IDLE */
> +#define MSG_IDLE_CS		_MMIO(0x8000)
> +#define MSG_IDLE_VCS0		_MMIO(0x8004)
> +#define MSG_IDLE_VCS1		_MMIO(0x8008)
> +#define MSG_IDLE_BCS		_MMIO(0x800C)
> +#define MSG_IDLE_VECS0		_MMIO(0x8010)
> +#define MSG_IDLE_VCS2		_MMIO(0x80C0)
> +#define MSG_IDLE_VCS3		_MMIO(0x80C4)
> +#define MSG_IDLE_VCS4		_MMIO(0x80C8)
> +#define MSG_IDLE_VCS5		_MMIO(0x80CC)
> +#define MSG_IDLE_VCS6		_MMIO(0x80D0)
> +#define MSG_IDLE_VCS7		_MMIO(0x80D4)
> +#define MSG_IDLE_VECS1		_MMIO(0x80D8)
> +#define MSG_IDLE_VECS2		_MMIO(0x80DC)
> +#define MSG_IDLE_VECS3		_MMIO(0x80E0)
> +#define  MSG_IDLE_FW_MASK	REG_GENMASK(13, 9)
> +#define  MSG_IDLE_FW_SHIFT	9
> +
>   #define FORCEWAKE_MEDIA_GEN9			_MMIO(0xa270)
>   #define FORCEWAKE_RENDER_GEN9			_MMIO(0xa278)
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index f52015e79fdf..5422a3b84bd4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -772,14 +772,15 @@ static intel_engine_mask_t reset_prepare(struct intel_gt *gt)
>   	intel_engine_mask_t awake = 0;
>   	enum intel_engine_id id;
>   
> +	/* For GuC mode, ensure submission is disabled before stopping ring */
> +	intel_uc_reset_prepare(&gt->uc);
> +
>   	for_each_engine(engine, gt, id) {
>   		if (intel_engine_pm_get_if_awake(engine))
>   			awake |= engine->mask;
>   		reset_prepare_engine(engine);
>   	}
>   
> -	intel_uc_reset_prepare(&gt->uc);
> -
>   	return awake;
>   }
>   
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index cda7e4bb8bac..185fb4d59791 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -292,6 +292,10 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>   	    GRAPHICS_VER_FULL(gt->i915) < IP_VER(12, 50))
>   		flags |= GUC_WA_POLLCS;
>   
> +	/* Wa_22011802037: graphics version 12 */
> +	if (GRAPHICS_VER(gt->i915) == 12)
> +		flags |= GUC_WA_PRE_PARSER;
> +
>   	return flags;
>   }
>   
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> index c154b5efccde..b136d6528fbf 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> @@ -98,7 +98,8 @@
>   #define   GUC_LOG_BUF_ADDR_SHIFT	12
>   
>   #define GUC_CTL_WA			1
> -#define   GUC_WA_POLLCS                 BIT(18)
> +#define   GUC_WA_PRE_PARSER		BIT(14)
> +#define   GUC_WA_POLLCS			BIT(18)
>   
>   #define GUC_CTL_FEATURE			2
>   #define   GUC_CTL_ENABLE_SLPC		BIT(2)
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index ee45fdb67f32..172819cd1a0a 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1540,6 +1540,89 @@ static void guc_reset_state(struct intel_context *ce, u32 head, bool scrub)
>   	lrc_update_regs(ce, engine, head);
>   }
>   
> +static u32 __cs_pending_mi_force_wakes(struct intel_engine_cs *engine)
> +{
> +	static const i915_reg_t _reg[I915_NUM_ENGINES] = {
> +		[RCS0] = MSG_IDLE_CS,
> +		[BCS0] = MSG_IDLE_BCS,
> +		[VCS0] = MSG_IDLE_VCS0,
> +		[VCS1] = MSG_IDLE_VCS1,
> +		[VCS2] = MSG_IDLE_VCS2,
> +		[VCS3] = MSG_IDLE_VCS3,
> +		[VCS4] = MSG_IDLE_VCS4,
> +		[VCS5] = MSG_IDLE_VCS5,
> +		[VCS6] = MSG_IDLE_VCS6,
> +		[VCS7] = MSG_IDLE_VCS7,
> +		[VECS0] = MSG_IDLE_VECS0,
> +		[VECS1] = MSG_IDLE_VECS1,
> +		[VECS2] = MSG_IDLE_VECS2,
> +		[VECS3] = MSG_IDLE_VECS3,
> +		[CCS0] = MSG_IDLE_CS,
> +		[CCS1] = MSG_IDLE_CS,
> +		[CCS2] = MSG_IDLE_CS,
> +		[CCS3] = MSG_IDLE_CS,
> +	};
> +	u32 val;
> +
> +	if (!_reg[engine->id].reg)
> +		return 0;
> +
> +	val = intel_uncore_read(engine->uncore, _reg[engine->id]);
> +
> +	/* bits[29:25] & bits[13:9] >> shift */
> +	return (val & (val >> 16) & MSG_IDLE_FW_MASK) >> MSG_IDLE_FW_SHIFT;
> +}
> +
> +static void __gpm_wait_for_fw_complete(struct intel_gt *gt, u32 fw_mask)
> +{
> +	int ret;
> +
> +	/* Ensure GPM receives fw up/down after CS is stopped */
> +	udelay(1);
> +
> +	/* Wait for forcewake request to complete in GPM */
> +	ret =  __intel_wait_for_register_fw(gt->uncore,
> +					    GEN9_PWRGT_DOMAIN_STATUS,
> +					    fw_mask, fw_mask, 5000, 0, NULL);
> +
> +	/* Ensure CS receives fw ack from GPM */
> +	udelay(1);
> +
> +	if (ret)
> +		GT_TRACE(gt, "Failed to complete pending forcewake %d\n", ret);
> +}
> +
> +/*
> + * Wa_22011802037:gen12: In addition to stopping the cs, we need to wait for any
> + * pending MI_FORCE_WAKEUP requests that the CS has initiated to complete. The
> + * pending status is indicated by bits[13:9] (masked by bits[ 29:25]) in the
> + * MSG_IDLE register. There's one MSG_IDLE register per reset domain. Since we
> + * are concerned only with the gt reset here, we use a logical OR of pending
> + * forcewakeups from all reset domains and then wait for them to complete by
> + * querying PWRGT_DOMAIN_STATUS.
> + */
> +static void guc_engine_reset_prepare(struct intel_engine_cs *engine)
> +{
> +	u32 fw_pending;
> +
> +	if (GRAPHICS_VER(engine->i915) != 12)
> +		return;
> +
> +	/*
> +	 * Wa_22011802037
> +	 * TODO: Occassionally trying to stop the cs times out, but does not
> +	 * adversely affect functionality. The timeout is set as a config
> +	 * parameter that defaults to 100ms. Assuming that this timeout is
> +	 * sufficient for any pending MI_FORCEWAKEs to complete, ignore the
> +	 * timeout returned here until it is root caused.
> +	 */
> +	intel_engine_stop_cs(engine);
> +
> +	fw_pending = __cs_pending_mi_force_wakes(engine);
> +	if (fw_pending)
> +		__gpm_wait_for_fw_complete(engine->gt, fw_pending);
> +}
> +
>   static void guc_reset_nop(struct intel_engine_cs *engine)
>   {
>   }
> @@ -3795,7 +3878,7 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
>   
>   	engine->sched_engine->schedule = i915_schedule;
>   
> -	engine->reset.prepare = guc_reset_nop;
> +	engine->reset.prepare = guc_engine_reset_prepare;
>   	engine->reset.rewind = guc_rewind_nop;
>   	engine->reset.cancel = guc_reset_nop;
>   	engine->reset.finish = guc_reset_nop;

