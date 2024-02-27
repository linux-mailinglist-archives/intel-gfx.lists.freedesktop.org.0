Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C271E8688D9
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 07:08:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4021D10E3EB;
	Tue, 27 Feb 2024 06:08:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U8sOLjP6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA2C810F205
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 06:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709014111; x=1740550111;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=mISVJcXwbBca2DigYWJWFMmYdYVUXjYs1t8E8rpdVOc=;
 b=U8sOLjP6ewnlvoaRtkIpzMhWSjByHgbn1hP+b9w9dC//iZ6kGGt/OUOH
 zYBPDrRh7hu/g11KjM7FqezUqqXneij5UY5LPveesZaOgWPIi3xvn0yGb
 wuGCN9xyWzN21jYUy3tJbqVW+iIfD/+W9MNX41uJC+niqhjVgLqEZaam6
 bEDRLi/DogUWZIsnN43akA1My8nj0pBC6+DpfVZjb12eLPePk/v7iddQU
 MILYidg6wymeWiy0Y957h8V05KSI6vGpyZWkBaDE21wEVBsKnH85QiBqp
 OC3Npqwpfd1g4j8mMQE3ZK//3RSjfwlKYUMrn1R/usP9g6dQnTd38W5Ad g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="6288173"
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="6288173"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 22:08:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; d="scan'208";a="37956311"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Feb 2024 22:08:30 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 26 Feb 2024 22:08:29 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 26 Feb 2024 22:08:29 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 26 Feb 2024 22:08:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PryTSszQZ+f87YYFF8T11+5rzEcFJbIPTnkDbGm4VywCKV/V20xIN9W9EX6S+ZEWewXg6IobK+pNGlO2rCFqIUppB3AbU69en7JUMWB3Ww4lo+BpSbKPwVX7YcbvHbUbikQStuw9h43bU9eBRTksjwHUv4y3PPTmfF74CDlJXFnb8oPcqdN46O5woooU3aKSdoy+86MJZJXwhHU9i9a7kCQKpeGbAPyzPAjV22wEnQMynpAyXpKtHo+1edLZFexpwZ6Zd9XGHdgzF2ruP86FwyIRPo6HLL+WqwtKMINvAi99tUHZfi18/bWeMNpHaeuu7lrDZ2MM4kX2/Y8suzXNhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OIZ5/LkGAEpbj3hnYeU6hEuYNfp0SP0ohBPaEuqZhyg=;
 b=VidJamvSvVBeI0tsh0MohqUALHxf+IC41WB4AoasN94JuTOOBPJ7/jTYymyKIKR3AD08YZccorc8Kus4+jszJHYBBoylp5pY7RaR1kohfZJdUcdSt2BrMHftoJFJCX/O4wOlI7paknnNviC1oI0qq+XbWjTQ2Fs4ONO4UhaN5r2IozkN3qtkvwi0mnKbPBspPJukJvXQSxwyIAq0/4uXF4gk0z7xj4smGioSDjFRNrge2TGooxjpx1mRbEB0VV43OPhd4xGWp5moYN+0c9xbsXSbcHUVeyeSHOwjVL4+InvTpprruooTh0ESF0t149E8lk7OVb0cgPziOUQ1KWF2bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM8PR11MB5719.namprd11.prod.outlook.com (2603:10b6:8:10::6) by
 SA2PR11MB4777.namprd11.prod.outlook.com (2603:10b6:806:115::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.25; Tue, 27 Feb
 2024 06:08:22 +0000
Received: from DM8PR11MB5719.namprd11.prod.outlook.com
 ([fe80::e763:85a4:b747:67b2]) by DM8PR11MB5719.namprd11.prod.outlook.com
 ([fe80::e763:85a4:b747:67b2%6]) with mapi id 15.20.7339.024; Tue, 27 Feb 2024
 06:08:22 +0000
Message-ID: <44cb0094-7106-47db-bd73-7b700c58c3ff@intel.com>
Date: Tue, 27 Feb 2024 11:38:05 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display/debugfs: New entry "DRRS capable" to
 i915_drrs_status
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>, "Golani, Mitulkumar Ajitkumar"
 <mitulkumar.ajitkumar.golani@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
References: <20240221111223.2313692-1-bhanuprakash.modem@intel.com>
 <IA1PR11MB63487164DE1F2C03BDBC1C54B2562@IA1PR11MB6348.namprd11.prod.outlook.com>
 <b8f2bb3d-30fd-42f7-b120-af851f594225@intel.com> <87edczmhn5.fsf@intel.com>
From: "Modem, Bhanuprakash" <bhanuprakash.modem@intel.com>
In-Reply-To: <87edczmhn5.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0161.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:26::16) To DM8PR11MB5719.namprd11.prod.outlook.com
 (2603:10b6:8:10::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM8PR11MB5719:EE_|SA2PR11MB4777:EE_
X-MS-Office365-Filtering-Correlation-Id: 27ea70e4-f500-4379-a4fb-08dc375a8075
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5sS6Tzvuaue7WSgUV9TGGdHy51TqQd3vD7bSk/S+RWWGp+7RRwDV1as7NJiLRg35HkP68YIErNPerx2QcdDKRmZCi+UrLIh8AxiKke53QLKRDSev6wrbYKF9rQcnkIqCegN3MzKPlQNdYRUQUc4M1JzYu8d3Zy/I/hz6mu0gfa6OS0Mhm8oOft+65yWtKl4urkSdR3JlCj2jCcxxHW1EsLEdzKfMcuh1RhVm7H2WtwRuhrRg22weIScEP2p8RqGezZw8bN67drUoHAYa7QpbOM9T2DicTE6E3lIJOX0kHhCLMY3QKP7hk7qWXaMswpaAh88kz1YDh6A6ELQeHOQH6fswUyrtpz8woksR0KmNZsBCJISfctSLV/9H8dh5u3ONGZRauXkh2BV8i3tqCflmAO97bi17d/oDm2VvCT1SRC2HaUOLTdBgrKRZv1hjQMA2rDine/dM8CVetfkjezge/nbAhEpt5QxsND0KX4eX/uh6/YlkvAMd4a/q8sUMz2Kt2+ccn2BdNt3N1vwNQzCBS1rrq9HxFxY3hTaHjXnGQo5U+hOZktAg1vErV2o5ig5znNn53kBajtKDt/d/r7i2/epqbb63eqnwGjRTrc5HFpuRZRlgcxOWMInu7QAHf2ge4dvadVZT1oB28WJan3ba5g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5719.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OXJPVHBxSURLWERwQkFBUlZuNG0xbFBaSm1sRmZ6aEJQU1VocnUrb0p0bzZt?=
 =?utf-8?B?b1FUQkxzNXc2NjBHS3hXL2lGSml4dTFxMDNSdlMxNXI0OWNjZFdnbHZBRVZl?=
 =?utf-8?B?eDVFQnRnWU80emVLK1BwSzd0b2xMSzFjOWlWbldPRkZZRWs4MXduQS9NRnZJ?=
 =?utf-8?B?d2JrMTJ4Q0tQK0NEQnBwejRhMGRiMjVtR1E5OS9CeEdVT1k3K2V5eWlBTjlP?=
 =?utf-8?B?YWVTaXlieXQrTEdVRGg2KzJ1V1kzdWErWjZpQ1R0UEdVQUZTTXBVSExWMVFw?=
 =?utf-8?B?NVRBdDFlVDNqZnpXSHpKMHJYM3RCM0l4VEk5OVBHTm9lTHo0cnZ5ZmNJelB3?=
 =?utf-8?B?RlFKQ2VyVzQzRDJ2REkrNStXZ1dVSmMyeWlGN1RJTXEvOXRKNzVNUzY5b2R1?=
 =?utf-8?B?bVFlb2srUFNTSjQ3UkFPS0kwZGRUYytVQ3M5NFA5WHN5MjE1Y04vRndETWlQ?=
 =?utf-8?B?eTFpelYyV3RuMnBRRkRMRW9ETGdKYzVaQk9hdUdUM1ZKbzlaM1A2c0lvcGs1?=
 =?utf-8?B?SFJ5dFQxaFNmTDEwcTBRK1FiNDhlQitEb0pONXdMOGE3ZDFvL01US0NoL0or?=
 =?utf-8?B?cUZMU3pYTk82amN2MXNVRDF6VzFnUGRkRjQreE16U0ZhcUJ3TTVCT3lXVno3?=
 =?utf-8?B?MkljVE9sRkpQcmxlQlhZNjhmNGxRV0cwQkcyTCtuUCtLL09OdUFQYkk2NFdz?=
 =?utf-8?B?SmVRM0ZqMXluM2ZoWDRXMldSc2Y0bzBxL0tBU3UwVnNpNVVvWmVUYXNXMElW?=
 =?utf-8?B?cDU4WDFtczcxaHhMcFROZUxSOStmTTRENDlOdlE0TFFWTEhHUy83cEhqcVda?=
 =?utf-8?B?VGVCT29wWmN5R0RHOVNmQWZZelpWdVlCZjVSd2xNcDBOZmk3c0pLd3JzK1NV?=
 =?utf-8?B?WEpRVWZtVXZlQUp5VXNCaWVvMFhRaGVheFdocUNITGdOZGdSbFJmS04zQjha?=
 =?utf-8?B?UEJtMFRYR3htQmpPWG1Ta2xxdHpURDZqdTRSYjlXeEZlTlpCUjNIRzkyeXlh?=
 =?utf-8?B?N1YzYlN2Zm5UcW9Ddlg1anFhYzBnNWpiZkxFcTRiNmVKbEJIMzZYcE8xajZS?=
 =?utf-8?B?T0padnY3dk8vSCtBNDlSdVYxSnIzZzRvUUtWa01MNmhQYmcvREdOOHBOZnZX?=
 =?utf-8?B?bzlnS04xbnB3RjB2Y0ZXNlhrZ0twRm9wc3VHMThOa090Qjc4bVhhemNuT0Nw?=
 =?utf-8?B?RE5sejZFOUJMb1FrN1NBNmxxZ3YwS0J5NlUrOEQ1SEs1S2dxa3FxVDBCRCt2?=
 =?utf-8?B?WHVNTlhRbmdFNkVwaUgxQzRZUitZTFpYOWZKajl0NmtGNnNldWtrdGUwaFBx?=
 =?utf-8?B?UGFjU0lJS2I0UVhoN2QvUFFDeHp0Qk9oYkt3UkRDS0FlOHFPZG1XdExkNExT?=
 =?utf-8?B?SVlaZGFUTnR2SFhrVENXVWJoWExuK3JJZldvOHZoaTFTdzlkdEJERG81aEpK?=
 =?utf-8?B?bWNYZlpUdVVNVUtweVpoQVB1N2k1T2szRnFZQXprU3dzdTRIaUJubGJ3a2t1?=
 =?utf-8?B?RTNHWnNYUHJLdlV1R0tNOFBTRlBZVjJYOWdCRWo2TTNOYzNtVlcyOEhyQXps?=
 =?utf-8?B?U1lnM3hoM3ZyZlREckZNWDZ2V3E5QUd5UkhyRVlxamJGeXFGOSt6SkFTQitY?=
 =?utf-8?B?Ry90ZDJyNVg2MTA1a0NHZEttNVlSM2tpT2l2MWhJUzVQQ1Q5VTc3N0ZiTkJ3?=
 =?utf-8?B?ZEtuMGt6bWZSMFp6NDZTZE9LYWNsSDlyRWx1NlZwR1p2OGhQdStqOXkzSWNo?=
 =?utf-8?B?RnB6TGNDbkRxaHNaU25pcmljZ2VZSEcyaFVGUlMvZE5ycjdhQk5nSmU3L054?=
 =?utf-8?B?Y1YrWkFMdksyUEY3NTJTVEZNRFBIdUdvUTh3WTBCeG9Ya0t1Q3FwdHpsbDFJ?=
 =?utf-8?B?VmRyOVBzc0lhV0h6Zk9YQVp5UW95Nk94VGNROW1HS0Z4N0ZiRmVjRUdWdFRF?=
 =?utf-8?B?MUFzam5qOUN1U2tXc3hsTmlQNHdJOUR4VGtTdnM2T1B5cVhFZ2thQk9ERmdi?=
 =?utf-8?B?ZS9CVWx1di9RT1ZYcmVxOVJEVTNiVCtpczRMVThDQUxISlRMMHA3TTh3N2wy?=
 =?utf-8?B?Y2RhNUtUN094d3d1elFlWHkzMEpvVzJmUitMemM5QnhBaFBEZzNUUWN0aWt2?=
 =?utf-8?B?QU9BWjhDWERRV055WmhOeHJNQmU2UkhkMGRaMmZHT1ZaMnQzalFaaENmcERk?=
 =?utf-8?B?Umc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 27ea70e4-f500-4379-a4fb-08dc375a8075
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5719.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2024 06:08:22.4870 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +jyb9EBrBkJHNwolAvJ2/XFYlKEf7Fk7wSH69+9/zZU9gojUakBhezWV5w+ZplIE2Z+4oXnC2085zl888BTBIGbV1ahTtWBUeza6in25neE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4777
X-OriginatorOrg: intel.com
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



On 26-02-2024 07:50 pm, Jani Nikula wrote:
> On Mon, 26 Feb 2024, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
>> On 2/22/2024 11:27 AM, Golani, Mitulkumar Ajitkumar wrote:
>>>
>>>> -----Original Message-----
>>>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
>>>> Bhanuprakash Modem
>>>> Sent: Wednesday, February 21, 2024 4:42 PM
>>>> To: intel-gfx@lists.freedesktop.org
>>>> Cc: Modem, Bhanuprakash <bhanuprakash.modem@intel.com>
>>>> Subject: [PATCH] drm/i915/display/debugfs: New entry "DRRS capable" to
>>>> i915_drrs_status
>>>>
>>>> If the connected panel supports both DRRS & PSR, driver gives preference to
>>>> PSR ("DRRS enabled: no"). Even though the hardware supports DRRS, IGT
>>>> treats ("DRRS enabled: yes") as not capable.
>>>>
>>>> Introduce a new entry "DRRS capable" to debugfs i915_drrs_status, so that
>>>> IGT will read the DRRS capability as "DRRS capable: yes".
>>>>
>>>> Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_drrs.c | 6 ++++++
>>>>    1 file changed, 6 insertions(+)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c
>>>> b/drivers/gpu/drm/i915/display/intel_drrs.c
>>>> index 6282ec0fc9b4..169ef38ff188 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
>>>> @@ -299,6 +299,7 @@ void intel_drrs_crtc_init(struct intel_crtc *crtc)  static
>>>> int intel_drrs_debugfs_status_show(struct seq_file *m, void *unused)  {
>>>>    	struct intel_crtc *crtc = m->private;
>>>> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>>>>    	const struct intel_crtc_state *crtc_state;
>>>>    	int ret;
>>>>
>>>> @@ -310,6 +311,11 @@ static int intel_drrs_debugfs_status_show(struct
>>>> seq_file *m, void *unused)
>>>>
>>>>    	mutex_lock(&crtc->drrs.mutex);
>>>>
>>>> +	seq_printf(m, "DRRS capable: %s\n",
>>>> +		   str_yes_no(crtc_state->has_drrs ||
>>>> +			      HAS_DOUBLE_BUFFERED_M_N(i915) ||
>>>> +			      intel_cpu_transcoder_has_m2_n2(i915,
>>>> +crtc_state->cpu_transcoder)));
> 
> Why would "capability" look at ->has_drrs?

IGT interprets the platform capability as "DRRS enabled: yes", which is 
represented by crtc_state->has_drrs.

However, if the connected panel supports both DRRS and PSR, the driver 
prioritizes PSR, causing crtc_state->has_drrs to become false. This 
leads to IGT incorrectly reading the DRRS capability as "DRRS enabled: no".

To rectify this we introduced a new entry "DRRS capable: yes/no".

> 
> Why didn't anyone question the duplication of the conditions of what
> "drrs capable" means?
> 
> And what *does* "drrs capable" mean here anyway? That the platform is
> capable? But what if the display isn't capable?

"DRRS capable: yes/no" is the platform capability. For display 
capability, there is another connector specific debugfs called 
"i915_drrs_type".

- Bhanu

> 
> 
> BR,
> Jani.
> 
> 
> 
>>>> +
>>> Adding DRRS capable property to debugfs.
>>>
>>> Change LGTM
>>> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>>
>>
>> Thanks for the patch and review. Pushed to drm-intel-next.
>>
>> Regards,
>>
>> Ankit
>>
>>>>    	seq_printf(m, "DRRS enabled: %s\n",
>>>>    		   str_yes_no(crtc_state->has_drrs));
>>>>
>>>> --
>>>> 2.43.0
> 
