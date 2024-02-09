Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58CED84F652
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 14:59:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90AFE10F464;
	Fri,  9 Feb 2024 13:59:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DgVSPYrB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 474D910F464
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Feb 2024 13:59:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707487155; x=1739023155;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Y6wAq2Hwn9ApnKK8W9YbAC2h41wTCub85HH4cp4d870=;
 b=DgVSPYrBQglV405rPxiVb8+w+TT51jxkhjl6/3TqV6J4kuq89x22uPXE
 ISkwPFV+7/Yg2YhJIGZMYZLam7vBfONVVUw5aL9y5gZRwWs+JhV32mRvk
 vaANZGZRy99gKhBCTvETxgZ0FiXYLi/7dYtXQ6gjpS2wGRtdqQPr8Kicd
 gQHUoxPjRBkSad2KIOc2W0j69xkfSnL08De5d3C3DC2RBMyoJPmXSQfyU
 fFyq6a4z2eBdlVo7nfCNKzYSDvRHF/zmewRLJMKqZA+heGr8qtkHP4PsC
 zAH2yr/eDPd20Jkh+eMNq/gxWI1ayox47i4DV/93s3R86wowMFTY1aVxs w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="12005729"
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; d="scan'208";a="12005729"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 05:59:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; 
   d="scan'208";a="1933169"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Feb 2024 05:59:13 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 9 Feb 2024 05:59:13 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 9 Feb 2024 05:59:13 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 9 Feb 2024 05:59:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=js5KQG9J6x7fUDgmAl1KNaSxypm71ESlZkdfLIA8kyb9ZF0jwPdU2zKTGDJFK0YDPmxANnAtUyC28lWGwZk9Usqsz2m9H5IJdXWXagEoao3CMv4wdtkhZjUk0E+KXx022alMTiZAS+X4rznvFpUygGsptVFE5q9yoQBTcJ0RiciQBTajOiVc0YDrcxOkXYYjx90JxgeZeQc9V2vb44Oly23Gi5MzRtqMCsY4DgNzlXxPoXaQbd+fF+BcZJUaD/PS0NFJgLEyxtXghPI+bhNjBtZcfIltN1++xKVY6sHU6/vE6jqcEW5v8MW+9w/mf2iAMgxBeVIHbhjPyC7kuCG3cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w7FzexH+uZcb3tmoAmWZHrdIA2u5cx9VYqixGwFtL9I=;
 b=YbzpbCKzDC2PGrbXjdgpAc9AVCuffO4MwHJ0dzGLMjWkkkRyImZsFTz7NwqRLCOubZzrxonOWikgCzjhROZBDgu0CojiGwnkWIBJUzsCv+tq8+PXrUsbc0kfRMhngAtCH6cGW7orhVkQTiXSJ/jDkiEqgcVv/C4XB1Zd+E531yS9Sm+NBMSq4BSydw1iB4xyM/3ZcAaOGO+2pvfnV6uKkS0mvqP+aap/NunJeASOWpYP6wRYTg9r4Uq2JzE97i4YUB3YwlhbqiMMfAmZHMd4SFba0VZXj1qYv/P6RkQobY4EyO9r/JIdRy1Ddf2SH7er6HkHFrHdE6NAO80ovXKrKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7958.namprd11.prod.outlook.com (2603:10b6:8:f9::19) by
 BN9PR11MB5468.namprd11.prod.outlook.com (2603:10b6:408:101::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.27; Fri, 9 Feb
 2024 13:59:11 +0000
Received: from DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::8676:39c3:f7b0:808e]) by DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::8676:39c3:f7b0:808e%4]) with mapi id 15.20.7270.025; Fri, 9 Feb 2024
 13:59:11 +0000
Message-ID: <6bcdae46-d0eb-4f16-a2c9-fc1264ebc3f2@intel.com>
Date: Fri, 9 Feb 2024 19:29:04 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/selftests: Increasing the sleep time for
 live_rc6_manual
To: Sk Anirban <sk.anirban@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <anshuman.gupta@intel.com>, <karthik.poosa@intel.com>
References: <20240209121127.1019920-1-sk.anirban@intel.com>
Content-Language: en-US
From: Riana Tauro <riana.tauro@intel.com>
In-Reply-To: <20240209121127.1019920-1-sk.anirban@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXP287CA0022.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::29) To DS0PR11MB7958.namprd11.prod.outlook.com
 (2603:10b6:8:f9::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7958:EE_|BN9PR11MB5468:EE_
X-MS-Office365-Filtering-Correlation-Id: 067fd43f-a705-4c9c-addd-08dc29774a7b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MnL7Fd5D4bnUT4mZXZ7fehoehkuUFhuA7mEBlUaKTkoLZSgvIwdmtMo0Youv0EVa3WveOSFbZ5vYY8Fe5ukI8TzbMJHD+VMRQWyg8cq6mcN8m7a1T3emnHH7obfqTOmDKOty1mJXl2/ckLk0eEuoqnloFaO9suZ9U3mxTUKC1PJl3RQjpP8kKGTQKn2L1M0Ir4Ah77DnvEUGs7WdWGF2WzrsAOPEIaQk9lmJEOOUzZOciJkEuPAkALWiju4Cbc03sS3avTo4+/v13L29Yb4ov0tlqdqHPtZOJeQQU4TdCFQcpceH+MTx9IeuUTRBp1ubLj3UzAiqdKQgMYPl0euffuqEhnXxOg/rp9HOBoXK0TKnCLjytVWsSG3y172cxZeveRK0czDNb5dbO0rhuD536tA1BWc3ldgBVsJ9bKdSjARSncOD0IdAA3TFqKrLPbjyA2z3TilanE1fImgQML9kfE7M0koJO1bAB3GPSMjvYrG5+qdqOr+2TYHbKSv+8syryWwFsBG6aZqhtX00eH88cE1rboN+mrY7otf/4t0oQq3aRm5uCjcB6vihxt0jnNrZ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7958.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(376002)(366004)(396003)(346002)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(6506007)(53546011)(6486002)(478600001)(6666004)(83380400001)(6512007)(107886003)(2616005)(26005)(2906002)(316002)(66946007)(66556008)(66476007)(8676002)(5660300002)(8936002)(4326008)(38100700002)(44832011)(36756003)(82960400001)(31696002)(86362001)(41300700001)(31686004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eDIyN2hIS1ZXOVFoWW1wR2x6R1BXR3dwVzNrL1h1eVBzTUZGOEhmTXVTRTd3?=
 =?utf-8?B?N3JnNnI1VzcycDlXNExuNlRkaGNYeHkwcUhhV284VHZlMCt0MitCeGF5QzUw?=
 =?utf-8?B?M2p5TFFQL0R3RHo3N0c3NEFscGZ4VDFYUHlUa1VmRWVCNExiTm9pdFlISWFK?=
 =?utf-8?B?aXJHZk1GUmN0OElGUkU1eXh5NUY5SnZPYW81UDNRcTNKbitaSmI2SlhlZVB0?=
 =?utf-8?B?czY1bWJRZzNRLzA3b25OZy9tOHNBWWdTYUN1d3R4ZnVIRGJ2ejZCL2s4aWtu?=
 =?utf-8?B?OEZETWRLNHRyU3dmaDdXcmFvQ2ZCZXh4Wis3Z2FKQXZCTWlYOURBYVJkaGNE?=
 =?utf-8?B?Tjhwdy96UlpIUEZTLythM1hnTytnRHFZcGYvU1ZRYnpmS0xnVHNMdEdDMHc1?=
 =?utf-8?B?OEpBdHd3MmhKRm4rak5FOWZBRU1ydE9odU9Kb0I2emJSNTBUUHkyZGdpNTM3?=
 =?utf-8?B?RndQM0FrdW54djZMc0RIQUdsRWxveWM3bk1QdjRsN21jN3JJSmZtbDhkWlox?=
 =?utf-8?B?Q0c0ZTVBelJ3UHFtM0wwaThKVk9MN0dNYWQ2dGt0WkJvVVZ1NjJXMldBbVZn?=
 =?utf-8?B?Snk2NmpXMzIzVGgzU0dHdHhHbWVaMTR4TXJDdmk3ODBuOHFPTUhVVnE1Qmo4?=
 =?utf-8?B?cU90UHpWSlhSOUZYdStNS08wcGx1bHNhSDZQNGN6SVBVbmU1R01FTjdROVl6?=
 =?utf-8?B?T1FRT1dqSzRLZHBPc3hFM2hPV0hBclE1YlRMaVVDSSt6dzI0TGxieE0wQ25j?=
 =?utf-8?B?bnhrMytESTlMeGtoUnpKckk4b0tHMmxmSGxWdURmZmR0N2V5azZBMFIvSDhU?=
 =?utf-8?B?WXpiRWNXZVJjMklEZU41QkVic3pXTmdSWFdWL0RYUXczSGlZUnVLN09NblhN?=
 =?utf-8?B?L0QvSzdLaFJLZ0hoWkluNytPdnpJRVN0Nmt0WUhTMHZ2Tm9pVE54N0YwQXNG?=
 =?utf-8?B?ZW5SL3o4TEszcCt5TzZWTGorTnJrVEUxNDBlWG9Nem5MQUZEL0IwdUFFZ3gz?=
 =?utf-8?B?YVZNOEp6dDJTUkxqMGlPUTZ0eUxRTVZUMW1PVXdqK1hDcGlsWndiNXNNS3c0?=
 =?utf-8?B?S1h1cFJMeUtYTXhiUkdZRE9qR2ltYnBaYkdBeDJSTEQ4QXgyb0VQWFYyQWxw?=
 =?utf-8?B?aHoreVJILzJ5bk8rY0p1ZXpCYzliNG9RRHgrWWtCZmx1UXZOYjkxYVF2bVNT?=
 =?utf-8?B?TCszZnJPTEUydGw5S2NoMm5sdCt0NkJKR1FYRURZc0hNbG1Xd2tkU1JpK0x3?=
 =?utf-8?B?Z0ZYYVEralVwUitZVm1GSzJCSkZURHF2U3pzMGZERHlJTHpWVWVjT3VLbmsy?=
 =?utf-8?B?Vk0zY2N5WGpRa2NOdlQzYzN1RFIrUnNyWE01RkFueklLUnFScDBHTHh1MHVx?=
 =?utf-8?B?Y2JRMC9QekdBZ1hEc0lneFpwbCsxck1BZ3U0eFVvQ01vbkxyYVJrQTZ2OWRp?=
 =?utf-8?B?MnJvcno0b3p4RW9iWUVXSkhscnZNbVB3RmRYS29yRG1CeC85ejAxdzVDeGlw?=
 =?utf-8?B?OGlqZFdFWnd6ZWlmekhPRTdVNW9aNU5BeW5naUtlYkNVV09DeU9CcllFU3Fs?=
 =?utf-8?B?VTlYbHpteE51TEdTMktmVG9FdTlOR1ZoNUdOVVJtTFhBUm10MFo2L0creFBG?=
 =?utf-8?B?Z1dJbmpmMUs4WmpXSzFnV1hXKzFTUU04ODJteW5rMk45SFhYSDd6S3FSbEdM?=
 =?utf-8?B?WW9vUmt2c0VBaWdBMWw5dXZWVGZlQ0F6bDdjZ3lNYjhIUGRsMnpkQkt5L3FL?=
 =?utf-8?B?WjhXLzNuRUZzVkpLSGhRYnYvSVQ3eVE1cnUrS2REU0xyTkpVVUhORlltUkEv?=
 =?utf-8?B?VXl0MlVVK2JyVGV4TzdxOW9ScG13Nk9Nd2NQMGdSMnByUVdsbVhlRG9EcVZM?=
 =?utf-8?B?b091UERrMWxNRzl4S1dtZVFJWWpzeHgwdnpMWk5iS2RsbkNwNVZocllOSXBk?=
 =?utf-8?B?SXN3NWtBQ2Q5ejZSMXpQYUVaNng2ZUFLRko1bnQ3STR5Zm9IUzg0amJSUWpu?=
 =?utf-8?B?Sk9OQWZBVlI2MVM5RFd0aWxyZmxRd3BXN2pPRkhhVE1aSW9ScExEN3ZmSEJY?=
 =?utf-8?B?NGl3UHhjV3hJalZPWExyVkR4VVMyRy9FdXdKQmpUZzNZdi9DaXVTb3lhMmpL?=
 =?utf-8?Q?JKxqTWz9wnpIpDxJJ85QV+xf9?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 067fd43f-a705-4c9c-addd-08dc29774a7b
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7958.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2024 13:59:11.1013 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A0JCT0+5MhNtEjvEEcfuiiRcLnCxPuT7+LkyGfw8Gn+eFqLDeVJO4d16Osf/L7LtGX+00C5rl7lBOgIizrsCkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5468
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


Hi Anirban

On 2/9/2024 5:41 PM, Sk Anirban wrote:
> From: Anirban Sk <sk.anirban@intel.com>
> 
> Sometimes gt_pm live_rc6_manual selftest fails due to no power being
> measured for the rc6 disabled period. Therefore increasing the rc6 disable
> period from 250ms to 1000ms to rule out such sporadic failure.
> 
> Signed-off-by: Anirban Sk <sk.anirban@intel.com>
> Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
> 
> Change log: 
Remove the above line. move the version info above signed-off.
> v2: add Reviewed-by: Anshuman Gupta
don't have to add this
>      More descriptive and improved commit message.
add the name of the person in brackets

"v2 : More descriptive and improved commit message (Anshuman)"

Thanks
Riana Tauro
> ---
>   drivers/gpu/drm/i915/gt/selftest_rc6.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> index a7189c2d660c..1aa1446c8fb0 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> @@ -62,12 +62,12 @@ int live_rc6_manual(void *arg)
>   
>   	dt = ktime_get();
>   	rc0_power = librapl_energy_uJ();
> -	msleep(250);
> +	msleep(1000);
>   	rc0_power = librapl_energy_uJ() - rc0_power;
>   	dt = ktime_sub(ktime_get(), dt);
>   	res[1] = rc6_residency(rc6);
>   	if ((res[1] - res[0]) >> 10) {
> -		pr_err("RC6 residency increased by %lldus while disabled for 250ms!\n",
> +		pr_err("RC6 residency increased by %lldus while disabled for 1000ms!\n",
>   		       (res[1] - res[0]) >> 10);
>   		err = -EINVAL;
>   		goto out_unlock;
