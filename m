Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F7163A72F
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Nov 2022 12:26:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 691CD10E21A;
	Mon, 28 Nov 2022 11:26:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0093110E21A
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Nov 2022 11:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669634778; x=1701170778;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+hWHvLxYwD+A1Es6UBP2+5mcLCBhrC6Va/OJ2tjN1xo=;
 b=OfJdLT1NKDdKeNNccXuJ/h5OUPIGOgH1Ji1LqK+lmyL+mksrVez1qCn9
 dgkD3TM5viHveQ4sKUtZYQK3/NGiTIvbdvjDi1K7UJWGPVqE7qLu2tHua
 sEmajHmlv1nvJqcqn1F3bVPopUbbhvNdRH6977gy0WoT4/PYcXdf3yOgo
 teIajS08thaElvVqAWFO0ZKLSAK/2i3hP/oNs8Rm1ZWQAxoB2XkOYAuTY
 zeT83IFzT0tUdLERFMyM671LfD6adl6Na+rH6ydTPQgAqzC9oNmN7EyIr
 Iivs82OwglqJ0/nW3Uk8LgQ9N//k4RDS//P5seLA4zJrV7Qzm6V2DEq9q A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10544"; a="341723936"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="341723936"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 03:26:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10544"; a="972229892"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="972229892"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 28 Nov 2022 03:26:05 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 28 Nov 2022 03:26:04 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 28 Nov 2022 03:26:04 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 28 Nov 2022 03:26:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GemUKX0jmddayIvCKQDQY3B7pX9su83Vh65dJ2Ox4ouPbXvm9GsJN7PMQdfw8kB1LyEptE1ZZf7FxZMS4rxaFIHmq5HEyNIEqkB11Dvqq7z/dfJYYyigsggnNMEhMPnTfkcAlm/4JzqKkyQDlJ19sa9k/xLwskFINvj+xBAYLolYOTJRspG8IbVCfu9UoOgy29+y5974/2kVm+/WcOXbk9mQPG0dwcQFl+KhMuc9dzlhWmZitDfuR9shzzZ9f6JUNzerwsvID5yvaZ8Jr2Repv7CivPgRC53BeE1eqJCMY/kB5nCHRz0MVbQ4abLnskBs8wPDWFFwKvf+ilrL5bcWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DK6JSd7JYTOgh/T1Lun5zigJzbv5N/dN7xXIpBB1ufc=;
 b=hZH5peiLmLLa6OBVgzFhDXsRT7f+FG+kF8iLUq8qeRnbS8+/9uztN/+jgzjk0S2qh7dL+E1ywfEjz8r0kmR0ndbPp5qCE8R7ZlKOlDyBo0yszN2IkhTm3SiAHVZ26YievKKpTUiBjIz2nKd8aqgIRYOP80DMMUNWQ7GGDMDZan/xahIC4UVaE5Fxq/kiAsM0DDMjWMiV3O2i/1dzWpjLCKDOVFh87D0ZdVJ+CJ/ZYyi8X1n3MD7wbxWxr08raKXzJUFgCN+Iw0GKKKRjcdWRvwd6gHXnLuLZRdSjA6214OhvNlCUU7Me5OIJ2A8KQblZjMayRIkr/rgpalAzjAUX+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB6786.namprd11.prod.outlook.com (2603:10b6:303:20b::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Mon, 28 Nov
 2022 11:25:57 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::1829:fbe9:8351:a2a9]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::1829:fbe9:8351:a2a9%9]) with mapi id 15.20.5857.023; Mon, 28 Nov 2022
 11:25:57 +0000
Message-ID: <a7ead06d-7ebb-46b4-fe9e-d1fce7a917f1@intel.com>
Date: Mon, 28 Nov 2022 16:55:46 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.2
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <tilak.tangudu@intel.com>,
 <anshuman.gupta@intel.com>, <badal.nilawar@intel.com>
References: <20221121072946.1013463-1-riana.tauro@intel.com>
 <20221121072946.1013463-4-riana.tauro@intel.com>
 <87tu2r67b3.wl-ashutosh.dixit@intel.com>
From: "Tauro, Riana" <riana.tauro@intel.com>
In-Reply-To: <87tu2r67b3.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0101.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9b::7) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB6786:EE_
X-MS-Office365-Filtering-Correlation-Id: 75685d58-0ef7-4e04-aacc-08dad13350bd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NGnsuVpEEZUL2AeXs8rgJS6k28IpIh0QTY/W6ONxGwq5Lkrn2QATcQcVj3GWpBvxhIPty20dXwYIBq0GcsqsK0Za57uqi5ehZ0r938HUYeeB+q1RbNhgNW+EOxtBGkpEyh376qy5Tx1uvl+Dh4vuGk//cTTSlFge+x5QxDXmqzWuDCTNYNi6nOJlYii3vR0jtjEXi4FSdDbkzaQth0XI9UjV35C8qglnj1b7xTx4S1WkD4h/ne4ZXGLjCueyToCi+iUZlJVvXMNOpiIxY5Gpxeu1r+xfRyzL91mikclr59QevT1bBB/1ap944od9k8iSheLlBKw1Akjz0Z+P3ZPArrFDettHwkP7SHYAAOSyP3EZBWZxoa7F/PJEUtpEsJwMluUBB36TksQz42KEvL+jg0WCylnfMexMHEKOHkGW3JBKkHHikB5aR/7bJwhdHk4U+PxQt3SY79UDrkPQECuFCQMYA2H4WBc+Gw+u7TzjzZoGqup1IXQxaCsdApyCg6oRYB9uiGuw71FtTJCJ+WCo21ZhC7r8wDZSmuOoVUelsDluUiX2T4j05Ek2gPR0D1nWl4DEL8EcvYnVqxabaUsdrtkb+lZA/IdzV9kvxOoRuwPObO9vKL97HhuTFdnTKGulQHwerHvlLnI/aYj25iFHrTZ/z/wFXG2mXpxq54EDG7tFN7gqLNMHoJNd5MlYQ6gxJoB5ZlLtYOWrqQrW62ZIn50Bv+cL//8tBq3ycvx8KlU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(366004)(396003)(376002)(346002)(451199015)(5660300002)(31686004)(66556008)(66476007)(8676002)(8936002)(41300700001)(36756003)(6636002)(6486002)(66946007)(2906002)(316002)(478600001)(86362001)(6512007)(31696002)(53546011)(6506007)(26005)(186003)(2616005)(38100700002)(6666004)(82960400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NFdPTkphMWdMZ2c1ZWp2MFZRU2ZJNlhzakFMS1M4MFRuZEhKelFJMHRaQVZu?=
 =?utf-8?B?Ry9zQUVzYkZXSGk2TU90WVIxMFpHdUJMMDZ3M3RZcDlKL3NrOFhQNmFlaUF1?=
 =?utf-8?B?bFcrR1E0bVU5ZWFtYVVBZWFOVVZ4OUc4NjZvMmMwazl4N3ZuN3J1Q1BpSitS?=
 =?utf-8?B?cExjdHByKzluRUxycWlnZllwa3ZXeTAxLzdGbkF0Z3NFd1gxTjMrN1Axays0?=
 =?utf-8?B?YkNmWTR0eXFsNE5ITUdUdVBEQStVZVhnUGsybEVJTWFtRDBEMkZaemtIUmx4?=
 =?utf-8?B?Tmt4R0ZSeXhBMWNEOFNGQWFYdDEydWpWTWVzQy83My9lUGFNakV4TXJyaWtN?=
 =?utf-8?B?bzBDbk5DUzRtVkg0U2RJSFQwVys2T2N3ZGF4VmR4REdrazNIZTJNN0tmK3I1?=
 =?utf-8?B?Yk5kcUg1UEpEUEFkWnd6d1c5cU9LOUtxbnNNalJYYUJWckxGN1dWUi9WeHZR?=
 =?utf-8?B?cGVHYUpBNDNLdTltR0JCVHZmV21EME9LOUE5YmVRS2Q4STNqK0g4bkdiNExk?=
 =?utf-8?B?Ni9EZm94dEhTaUF4NHpIVHhSQU5lVy9aMHlGV1NDdXBQTWxpaUdzMlVXNHY4?=
 =?utf-8?B?SDZteHZUbWFJQU9DQjJnTU5QcmtoY1EwVUpXTkVsT0VqUzFXbVRFd3hSa2tK?=
 =?utf-8?B?Wnl5VjNsNEsvNDBrRVZvUXhUUE94Mm42d3BRaWw2VDhPaUZJTzhvYzVlTkZU?=
 =?utf-8?B?a1pDT2RlY3YvOVVHUHRHdTZ6VUVNdXdCSVdFakUxZmo4SDQrUnFUeVQ0N2RY?=
 =?utf-8?B?SkpJZmpFZUdSZEF6OEdjZEVlVE9WVkVqdG8wSUthbDFWY0Y4R1NzSmtHTGZ1?=
 =?utf-8?B?YXc2NG11L1NIZ2NMTlJ6ZFMxWlk5b240YzFHaXM2aHdFeGVSZXdIcHNldlFO?=
 =?utf-8?B?M3k5cmFpYXdYVzlsbHNIdDhwVTE5ZjV5SFRhQzNjbEN2UUVuNVVtcFBZYXdD?=
 =?utf-8?B?UUc4WTh5L2lMZFRJbDBFNm91czRJalNlY240ekNQMmg1WUVCajNXalNDQURB?=
 =?utf-8?B?SHNhUTdRR21peFNycDQ2ZWdJSmh2VmRsWE90NkJveVFNNTFlVEF6OUVVUktt?=
 =?utf-8?B?SEtvWE1VQXFOVS9UTXA4d0J5UGFVd3dEZTZIZTRxN2R0d0JJamYzUVdidHpl?=
 =?utf-8?B?aDZVME1XQml1MUlia2Z6R0F6NU5rUk5qRzA1WlU0ZzRRSExTbm9KK2N6dWpv?=
 =?utf-8?B?U2NCRElsd2lzQ0oyUDRrOE8yUUNSMlFUWXkrM2VXenpxd0w2L1JzK0xkTFRT?=
 =?utf-8?B?dGJuN0dQY2UzeHozWlpOcHRtdUN5UEpzbnFwZDhjUjBwNDRtTEJxVm9uNG5k?=
 =?utf-8?B?RWJNQi9wVTNmRFRLUGdudUQ4NGtMTk5OaWxQUEx3SDFZMHU0dFh4STcwVXZJ?=
 =?utf-8?B?Rm56dm5Ia3l5K2dleThBODdmcWVLcy9uTEMrQlBRWkk2WktQWWJScnZaWXpn?=
 =?utf-8?B?bGFyclo2aTNhbUtqNDFLdkkzdHlYS1VCT09aSUtibzliREk0OGNEeVp3SjI1?=
 =?utf-8?B?TUhrZDNvRlpjMloyM0xnZDVhbXRJQ0luZFAzYjFGZitrZ0ZURlZtSksrR3hh?=
 =?utf-8?B?UkFsRm1pdSsvNDBMZ2V6RGFqMnNkR2ZSOTkxQzhtRHM2MUVkditnWHRQUldt?=
 =?utf-8?B?QlY2bU1TRzJXKzNnbTloSm54V2R4R0U0ZzNRL2ZXd08zTktiM3VrcmU5Z3ph?=
 =?utf-8?B?VFphcS82eUw2YUVhaU5Ld0t0aHA2eVZLMEl6RUZKcG4xYWhmakkvQSttVjc5?=
 =?utf-8?B?amo0TnZEbDVSTGdMREx2TzVtN29GTDVMT2UxanZWTDJpcXlMTFNjVlptbkRm?=
 =?utf-8?B?bld0MUE4U3NRdVBtYkhsU3hSV0MyY2VBcFRjRUxyakxoMW9jTlhFMGp4T1Nu?=
 =?utf-8?B?VWdlYXdXVW1hR0djRnU4c1NKTWNHL29Ba2RGSEJqenZaUjB2OUttMXdlaTE2?=
 =?utf-8?B?OUVtcHlNK2I3aDJycWpWNjhaZVlHcWNsZG5UWTN1emVuaDNWUHE3NGVlL1BX?=
 =?utf-8?B?RGdoYWpmN3RHTEdlOUl3cUV4YVR4b0tHZVZoREkvRTBGNWJjM3MrVTRGRC9O?=
 =?utf-8?B?ZVd0eEVIUXBCeGltODBoZWQzZHlaOHdCYngwTENiZmNYM3c3Ylhmb2VsTlow?=
 =?utf-8?Q?c9KV9U7AvJerRDXCchCKvBCij?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 75685d58-0ef7-4e04-aacc-08dad13350bd
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2022 11:25:57.0283 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cOi+fwLtpnsTzirJOqM7CykC6UxHo6Hy1V1u3xIEM/fU1Xm6vak81qp3aXYtSe8pzZ3JIGsfbjHw1CpzFARn7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6786
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 3/3] drm/i915/selftests: Add hwmon
 support in libpower for dgfx
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



On 11/22/2022 8:10 AM, Dixit, Ashutosh wrote:
> On Sun, 20 Nov 2022 23:29:46 -0800, Riana Tauro wrote:
>>
>> diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
>> index 15b84c428f66..845058ed83ed 100644
>> --- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
>> +++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
>> @@ -61,9 +61,9 @@ int live_rc6_manual(void *arg)
>> 	res[0] = rc6_residency(rc6);
>>
>> 	dt = ktime_get();
>> -	rc0_power = libpower_get_energy_uJ();
>> +	rc0_power = libpower_get_energy_uJ(gt->i915);
>> 	msleep(250);
>> -	rc0_power = libpower_get_energy_uJ() - rc0_power;
>> +	rc0_power = libpower_get_energy_uJ(gt->i915) - rc0_power;
>> 	dt = ktime_sub(ktime_get(), dt);
>> 	res[1] = rc6_residency(rc6);
>> 	if ((res[1] - res[0]) >> 10) {
>> @@ -89,9 +89,9 @@ int live_rc6_manual(void *arg)
>> 	res[0] = rc6_residency(rc6);
>> 	intel_uncore_forcewake_flush(rc6_to_uncore(rc6), FORCEWAKE_ALL);
>> 	dt = ktime_get();
>> -	rc6_power = libpower_get_energy_uJ();
>> +	rc6_power = libpower_get_energy_uJ(gt->i915);
>> 	msleep(100);
>> -	rc6_power = libpower_get_energy_uJ() - rc6_power;
>> +	rc6_power = libpower_get_energy_uJ(gt->i915) - rc6_power;
> 
> So:
> * arg for live_rps_power and live_rc6_manual is gt
> * freq's are per gt
> * rc6 residency is per gt
> 
> But the power/energy we are using is per device (gt->i915)? And we expect
> device level power to be low when only one gt might be in rc6?
> 
> Shouldn't all these functions be per gt? Specially when we might have
> multiple gt's soon.
> 
> Or if per gt functions don't make in all cases have both device and gt
> level functions?
> 
> i915 hwmon provides both gt and device/package/card level energy but iGFX
> till now reads a MSR which does not need gt or i915. So per gt I think
> should work for now.

Will modify to return per-gt values if present else
the default device level energy.


> 
>> 	dt = ktime_sub(ktime_get(), dt);
>> 	res[1] = rc6_residency(rc6);
>> 	if (res[1] == res[0]) {
>> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
>> index b8b0b0c7617e..6732aa7d4792 100644
>> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
>> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
>> @@ -1090,38 +1090,38 @@ int live_rps_interrupt(void *arg)
>> 	return err;
>>   }
>>
>> -static u64 __measure_power(int duration_ms)
>> +static u64 __measure_power(struct intel_gt *gt, int duration_ms)
>>   {
>> 	u64 dE, dt;
>>
>> 	dt = ktime_get();
>> -	dE = libpower_get_energy_uJ();
>> +	dE = libpower_get_energy_uJ(gt->i915);
>> 	usleep_range(1000 * duration_ms, 2000 * duration_ms);
>> -	dE = libpower_get_energy_uJ() - dE;
>> +	dE = libpower_get_energy_uJ(gt->i915) - dE;
>> 	dt = ktime_get() - dt;
>>
>> 	return div64_u64(1000 * 1000 * dE, dt);
>>   }
>>
>> -static u64 measure_power(struct intel_rps *rps, int *freq)
>> +static u64 measure_power(struct intel_gt *gt, int *freq)
>>   {
>> 	u64 x[5];
>> 	int i;
>>
>> 	for (i = 0; i < 5; i++)
>> -		x[i] = __measure_power(5);
>> +		x[i] = __measure_power(gt, 5);
>>
>> -	*freq = (*freq + intel_rps_read_actual_frequency(rps)) / 2;
>> +	*freq = (*freq + intel_rps_read_actual_frequency(&gt->rps)) / 2;
>>
>> 	/* A simple triangle filter for better result stability */
>> 	sort(x, 5, sizeof(*x), cmp_u64, NULL);
>> 	return div_u64(x[1] + 2 * x[2] + x[3], 4);
>>   }
>>
>> -static u64 measure_power_at(struct intel_rps *rps, int *freq)
>> +static u64 measure_power_at(struct intel_gt *gt, int *freq)
>>   {
>> -	*freq = rps_set_check(rps, *freq);
>> -	return measure_power(rps, freq);
>> +	*freq = rps_set_check(&gt->rps, *freq);
> 
> Hmm looks like this whole live_rps_power stuff is only for host turbo, not
> slpc. Anyway that's a future patch.
live_slpc_power is present in selftest_slpc.c.

> 
>> +	return measure_power(gt, freq);
>>   }
>>
>>   int live_rps_power(void *arg)
>> @@ -1187,10 +1187,10 @@ int live_rps_power(void *arg)
>> 		}
>>
>> 		max.freq = rps->max_freq;
>> -		max.power = measure_power_at(rps, &max.freq);
>> +		max.power = measure_power_at(gt, &max.freq);
>>
>> 		min.freq = rps->min_freq;
>> -		min.power = measure_power_at(rps, &min.freq);
>> +		min.power = measure_power_at(gt, &min.freq);
>>
>> 		igt_spinner_end(&spin);
>> 		st_engine_heartbeat_enable(engine);
>> diff --git a/drivers/gpu/drm/i915/gt/selftest_slpc.c b/drivers/gpu/drm/i915/gt/selftest_slpc.c
>> index fc1cdda82ec6..c4b14f2b268c 100644
>> --- a/drivers/gpu/drm/i915/gt/selftest_slpc.c
>> +++ b/drivers/gpu/drm/i915/gt/selftest_slpc.c
>> @@ -78,7 +78,7 @@ static u64 measure_power_at_freq(struct intel_gt *gt, int *freq, u64 *power)
>> 	if (err)
>> 		return err;
>> 	*freq = intel_rps_read_actual_frequency(&gt->rps);
>> -	*power = measure_power(&gt->rps, freq);
>> +	*power = measure_power(gt, freq);
>>
>> 	return err;
>>   }
Changes for slpc present here.
>> diff --git a/drivers/gpu/drm/i915/selftests/libpower.c b/drivers/gpu/drm/i915/selftests/libpower.c
>> index c66e993c5f85..df37cba30353 100644
>> --- a/drivers/gpu/drm/i915/selftests/libpower.c
>> +++ b/drivers/gpu/drm/i915/selftests/libpower.c
>> @@ -6,29 +6,30 @@
>>   #include <asm/msr.h>
>>
>>   #include "i915_drv.h"
>> +#include "i915_hwmon.h"
>>   #include "libpower.h"
>>
>> -bool libpower_supported(const struct drm_i915_private *i915)
>> -{
>> -	/* Discrete cards require hwmon integration */
>> -	if (IS_DGFX(i915))
>> -		return false;
>> -
>> -	return libpower_get_energy_uJ();
>> -}
>> -
>> -u64 libpower_get_energy_uJ(void)
>> +u64 libpower_get_energy_uJ(struct drm_i915_private *i915)
>>   {
>> 	unsigned long long power;
>> 	u32 units;
>> +	long energy_uJ = 0;
>>
>> -	if (rdmsrl_safe(MSR_RAPL_POWER_UNIT, &power))
>> -		return 0;
>> +	if (IS_DGFX(i915)) {
>> +#if IS_REACHABLE(CONFIG_HWMON)
>> +		if (i915_hwmon_get_energy(i915, &energy_uJ))
>> +#endif
> 
> No IS_REACHABLE stuff here. Declare i915_hwmon_get_energy similar to other
> functions in i915_hwmon.h.
> 
> Thanks.
> --
> Ashutosh
> 
> 
Thanks for the review comments. Will address in next rev.

Thanks
Riana
> 
>> +			return 0;
>> +	} else {
>> +		if (rdmsrl_safe(MSR_RAPL_POWER_UNIT, &power))
>> +			return 0;
>>
>> -	units = (power & 0x1f00) >> 8;
>> +		units = (power & 0x1f00) >> 8;
>>
>> -	if (rdmsrl_safe(MSR_PP1_ENERGY_STATUS, &power))
>> -		return 0;
>> +		if (rdmsrl_safe(MSR_PP1_ENERGY_STATUS, &power))
>> +			return 0;
>>
>> -	return (1000000 * power) >> units; /* convert to uJ */
>> +		energy_uJ = (1000000 * power) >> units; /* convert to uJ */
>> +	}
>> +	return energy_uJ;
>>   }
>> diff --git a/drivers/gpu/drm/i915/selftests/libpower.h b/drivers/gpu/drm/i915/selftests/libpower.h
>> index 5352981eb946..03a44611f9e9 100644
>> --- a/drivers/gpu/drm/i915/selftests/libpower.h
>> +++ b/drivers/gpu/drm/i915/selftests/libpower.h
>> @@ -10,8 +10,10 @@
>>
>>   struct drm_i915_private;
>>
>> -bool libpower_supported(const struct drm_i915_private *i915);
>> -
>> -u64 libpower_get_energy_uJ(void);
>> +u64 libpower_get_energy_uJ(struct drm_i915_private *i915);
>>
>> +static inline bool libpower_supported(struct drm_i915_private *i915)
>> +{
>> +	return libpower_get_energy_uJ(i915);
>> +}
>>   #endif /* SELFTEST_LIBPOWER_H */
>> --
>> 2.25.1
>>
