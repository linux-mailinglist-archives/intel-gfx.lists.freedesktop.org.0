Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 090BC607E65
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 20:49:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 827CE10E66A;
	Fri, 21 Oct 2022 18:49:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D3D110E659
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 18:49:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666378159; x=1697914159;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=CIHNAzTup7XkqqSXNLkS7HcxU10QpXR9RT5Vx0ide+U=;
 b=gByXKtmNdqX2+sf5VwdV5g3/zVfOaNHVlq1T3KVDiDF8RKJKLvHes35L
 fv3kKUaoyne0R/rTLdXlX9ZyYtpdomUrDS0JdujwvdtaPh+ZgjGHbWbZ4
 aH3B7d2OtCAIMHPPXObctRWxfzvlE2zZhIYuoKZzgwZyRNi7Mpfu1fWTu
 7/FeFoyIBKTpkVgBeTMw8oL6fGf/+vBHXOFs/x/e6Orydw5z0TLgtFR1G
 ihQzoNV/OiphEhLOX+HTdJrllq8Seoa5y/mp3Vb0WTC89MpNyge2BO29c
 yn4uZcNJ02xGJjIzBduRJdJnqJgCNfcPnk9gKV35TqNSeY9/DW59sR2dp w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="286797567"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="286797567"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 11:49:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="719841294"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="719841294"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Oct 2022 11:49:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 21 Oct 2022 11:49:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 21 Oct 2022 11:49:16 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 21 Oct 2022 11:49:16 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 21 Oct 2022 11:49:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j7jRRL7iEoyx7Z+XtIyTJNvDseEfV/HZ+aT16feLSOS+A/ZJ+Nzw99/+0pJVOYIdPPkE+nK32H3ui3YcJptkE6chBmLh8+vNf+I1RW5pLmmxZvzs288JSDpcFTQ7zAPVqQsV7QxopM7nlVcjh1Lxcec2qUUJFFRMFA1KwnaODMO0NpD/6xB2wLhc+/WrCXAEmrQHhKj1XQrXFbuhAXbkNgVhc05Ltxh70KNP4VjaPwvAGwru17gvZ5pWViJ5l+H40lT3j8Fh75qTbaZMeOJyr0wiyrCjpSyxcoLT+tHmzPSCNfhj2VpKVaIHQzmH3WNO+k0T32SmmClYI2sZfn85hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ql9ih7+0NzWBegobQUrAH9a1iZMFRqM1dd74gBbsur8=;
 b=gbdRbnzaftiMZBqmhTD5jJfy21fhu4S+Ge4RJtWa1H7moHhFPctBVelU6QPb/EIcncWp93aJFfrX6lIEKxAwcVXWoX3TujxSo9gTIM3nNS8/pPxUc0skjz4VST3HfKxh4SsuvtKFZGKbCsgBllAlnN1K6PZGzr5l1SK8FTAiHt1OayJMyVEnDQWC9pGnnhBVJE8NdZlzARMPR61SdyOntchgyawkbZfMB7QeP+9apc5VV4XRanVa0g4gpZvCZZU3swbn32kWcIbYCnjRXnyk4xK+WlmkefxcBNzwUnrQBC4onCtprEYtLERNfzc4eqjeKOmZ2wi3eaaVpqNFMkQyqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by MN2PR11MB4741.namprd11.prod.outlook.com (2603:10b6:208:26a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.34; Fri, 21 Oct
 2022 18:49:14 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::87a1:bf2f:7377:3036]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::87a1:bf2f:7377:3036%7]) with mapi id 15.20.5723.033; Fri, 21 Oct 2022
 18:49:14 +0000
Message-ID: <4defbceb-810b-fd4c-6887-f55dcbc7b2da@intel.com>
Date: Fri, 21 Oct 2022 11:49:12 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.3
Content-Language: en-GB
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221019072930.17755-1-alan.previn.teres.alexis@intel.com>
 <20221019072930.17755-3-alan.previn.teres.alexis@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20221019072930.17755-3-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0265.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::30) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|MN2PR11MB4741:EE_
X-MS-Office365-Filtering-Correlation-Id: a938e4f0-036b-4f1c-9cc1-08dab394f344
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7aH9QbXzw4pJ7E+mGmM2IMlIlUfo+L/CDlK+rVvCD65B+pktN3KTWHCNfNou1RewS2QK+ppi+uo+Ki/3Ss/Werkw6uoOLuOtZYQSJnnIAifQn57OGmU4RgzMb5Of1oGxtNp/e0H8IKLtbO0ASWg+J9wWi0lHCW3Y6Bk3PgqNWwobAHEvt6lmgAOVQZM3xCqD6AFzYMcemn7AXC0OCATW4bVAYQqixzo4HUz8iODaQPBnmk5NQRFThWzoN0+eevTPamKlUAO7ktpNrmgUlB4JFaENojp1mMq+P+b7MsFQPMIhd0x/A9LMKO/YeExQnCbagwqAsagjsqeefLsGVgW+ta/P3hX6hO7PnuJ0r114MGG0Sj5z/vy9amUqXjoflTslmiAFTF9QTJBCXXd9Caj9PZBmpuPAPyunMBwt7KdKkfdeptmM7y7jjNjrQandSwBf4S3Z5f5erueSDY8DHGmxk87Y5WgdSYFiCahsEfCGvZrmyn93TRcjTNRDhM++zpaFS+Nv9gA9piCp12dUNq9bRO42aX/jm7bLX7K90xgWAH28OUA6+W0b//a2stnYfYiiA2NzgV5L/BzU7F6qr6yktNmQYy+hRh1gkNqns9knB976JCT672/2xlKRFGZypTzmwdjoRi3JonZX2qikn2ZJe67qVC4LmaFjKJo+ODjLklkvJR5ouqz82/nPrVhY0akfXOcVPOmt9WVqvp3Ho/Z9ZaEVZ/KUQqzEJz9bFnwYIT9Il4n6lvw9Rd433Vs6dfqiN+7JCmP5DvzgzIVZcsCd4fIXIBkUwtsF836Ek2axhH8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(39860400002)(376002)(346002)(136003)(451199015)(31686004)(36756003)(86362001)(31696002)(2906002)(82960400001)(38100700002)(53546011)(2616005)(186003)(6512007)(26005)(6486002)(66946007)(478600001)(316002)(8676002)(66476007)(66556008)(5660300002)(41300700001)(8936002)(6506007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b3d3UUNzbWphdHdkT01NbGg5QnByUXQ1RmxHdkF6cnVRaXJhamprRGlCdGxF?=
 =?utf-8?B?WUMxTDBWbFFldTArc0VGSlhKcmhQWWY4RElJWlZDejY2T1J3cUVvc3kzVUtZ?=
 =?utf-8?B?M3VMc3diR3ZyTExhYnRLNzg3MVNWQzVDU0VPS0JRQjRLZE9OTE1RcmNmeWFH?=
 =?utf-8?B?S0szeFVkTnJhamplZ2xuaCtJcnB5WThmTmN2YU41WU5TazVzbVVCMkpGdVpE?=
 =?utf-8?B?ZVlDaXdDSm9VcUlaTUQ4aGJkOEE0L3krYkczY09KMDZCSjdFQVdHUUhieCtM?=
 =?utf-8?B?WWVLRU5QU0s4NW5uazlsSE5OZWlrelQwYXVKUjM4S3FxR2M4UXU1S1grVkVi?=
 =?utf-8?B?RXo0RVFEanVNQmU4aTNUVi9DRWtIMUIwVjVlN3VtRjRHNzFQY1Z3UVgySjdj?=
 =?utf-8?B?bWtHek44SnlBWmNhdG5GMTA0WDZ1OWhKZmpwUm84MWx1VDZCTW1rcFJDcU1n?=
 =?utf-8?B?RFZhcDBFQzJOQ0N2YUlRa01ZcVU2eUhaUEJ1Ym5FaENoUDF5SmxEdnNRNmVY?=
 =?utf-8?B?bUNmN0ROYWxGMlp4a2QzT1pRZFBFZkh4dVlxVHVPdzFkeS9EYzZ2RHdxU0ts?=
 =?utf-8?B?UnIvQ3FKb0JYL2FxZ0NyNTE4ZllmczJRZ0JXRVRuVWVVYVB2eFZPU2RSWVV5?=
 =?utf-8?B?dXpzMS9lRXFnZklGVk1DSER3ZmVFWXZuWXVKKzJaaTlYUWhSZXQrbDJOZmFt?=
 =?utf-8?B?YzVaWTd2ZWpNVitvQkFzdlJabTJNWi9NS2dKblM5RzErbDJ3SFczd2xScXdH?=
 =?utf-8?B?MSt5SzEzOVRkNG5hL1AzWExmR0R3dEJqdllhb0JtVklOK0VURm5QWmpzcEVk?=
 =?utf-8?B?TWdoOWVrVTk0bGROMEhtMmxWWmpReEpZZ01veU96WnhTZFR5OUVyUVB1MXAv?=
 =?utf-8?B?THFvY1JEbUJMRzRUelRZVVR2RkRZQnZMcjhjVE9SVjl4NUpiWFdhSDJ3N3dZ?=
 =?utf-8?B?RGNsdk1rQjFvT0pLN3I5QjJWTHpUYm4zU1grUDkwNkFDNTZ4Tjh4bHJTVHF4?=
 =?utf-8?B?WFF2UnozcE56b3AweTh3dUpqYi9aT0pGSEpzY2F5ajBhVVJZejRLd2xqTjRF?=
 =?utf-8?B?UWE1V3JPTmdVTUNZYVgzZ1lwZzJQbnN1bUZXTXpMVFpCNEpheUJLbXNobmp3?=
 =?utf-8?B?UmlMbVpINWpYUFlwdGMzanIwY3BPKzRqd2M0NGphRlhzeWdvcE40bzNxMUZE?=
 =?utf-8?B?MUNPQ09MTStFVHRNNzJGSzNBczdWdEJjTEN4Njh1R1ErdnRYK0tJR1pTQjhG?=
 =?utf-8?B?b2JwVkY3SVFzNDZVM2FvbUhuTDMxcjhYQlZ6N2JwL1FpRUxMRkg0Z04xTjJO?=
 =?utf-8?B?QUFIaWJxSXhRTXBQTjFjV0R1MzBwNktlaktlQ2N1TmxtMEJTZVBhUWorOHBD?=
 =?utf-8?B?ODZZay9CMHdwSjE3eVN3K0tIQ3BoYmhzenM4M1h2Sy8rdUQ2MlhtNW1leGVV?=
 =?utf-8?B?ZHR1U1AxOE41MVNZc0lneFJvV01pWVhBZjVvRWFjdnFWQ3ZQdHNCaVBsMk1z?=
 =?utf-8?B?ZEhYYnAvY3JDZW04NUh5dXd4aXMyUy9OdGJ4QW0zbmlTSTNJNThzeFJ3U2k3?=
 =?utf-8?B?MHBPR285Q2x2RzZlYWtvVkFQWjAzaWZSYiswc2xaM0JiOUIrU2p2UzN0VzR3?=
 =?utf-8?B?aFVpWUJBRGpFRlZPUmxyd01LY2ZtN3VGNy9tMlREdHB4blVPZVNEU0JEMHdp?=
 =?utf-8?B?UUZRYkRCenZ0TmJGZmlSSWpJQmNSUDhqcHNTVSt6UWlHR3lmYTJDWGVxYVJI?=
 =?utf-8?B?REQ3VW8zTWtEaEl4MUhWOEdUaEcwenRjdG1iMWFHVHlXdTk3LzJjZFB2eDFv?=
 =?utf-8?B?S2FRNSs3Ky9NWml2VGhuKzBTcUszMkJLdFhubHpBNkRrUFVtdEVCVDV2V1dU?=
 =?utf-8?B?UXRZVGh5T0Y2L0g4VUxGMzFNZ3NFTGtHQnhNWTJhQjRuUFhORTFIMWxwQWdY?=
 =?utf-8?B?UVA1R2FwMWR3YTdwYUxNbWtaYXlpKzRxSlJDMElQZ3pyZy84d1NOWWJkejRO?=
 =?utf-8?B?bE0zVkg0TUlCcXovTEFyd1ZWZ29YQzF1YUpmWldQcVBJa1hPV0g1UlkxN0dS?=
 =?utf-8?B?ZGgycnNkZmQ4ekYzRXFoazYyVTkwMEZFSmFpbDRMWFFubVkwcjA1dEhaWm1X?=
 =?utf-8?B?bmpSM2l2UjdmV0pDdGEzTDJrQjI5RHIyNkZiYi93R0IrTUhLeXdFWE8veDc4?=
 =?utf-8?B?UlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a938e4f0-036b-4f1c-9cc1-08dab394f344
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2022 18:49:14.5800 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ds1UKgrc+jdT5vXyU6q1AOdyoV5kkzhyBWmO6VX/LIcR4Vovp6NEaAbrKAh2qfPyG+Hc3NHXwM8cyhtCuD0KLTH+mTlXffP2qffHC6RucnI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4741
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915/guc: Add compute reglist
 for guc err capture
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

On 10/19/2022 00:29, Alan Previn wrote:
> We missed this at initial upstream because at that time
> none of the GuC enabled platforms had a compute engine.
> Add this now.
>
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c | 4 ++++
>   1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> index abf6e5eb711e..c4bee3bc15a9 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> @@ -169,6 +169,8 @@ static struct __guc_mmio_reg_descr_group default_lists[] = {
>   	MAKE_REGLIST(default_global_regs, PF, GLOBAL, 0),
>   	MAKE_REGLIST(default_rc_class_regs, PF, ENGINE_CLASS, GUC_RENDER_CLASS),
>   	MAKE_REGLIST(xe_lpd_rc_inst_regs, PF, ENGINE_INSTANCE, GUC_RENDER_CLASS),
> +	MAKE_REGLIST(default_rc_class_regs, PF, ENGINE_CLASS, GUC_COMPUTE_CLASS),
> +	MAKE_REGLIST(xe_lpd_rc_inst_regs, PF, ENGINE_INSTANCE, GUC_COMPUTE_CLASS),
>   	MAKE_REGLIST(empty_regs_list, PF, ENGINE_CLASS, GUC_VIDEO_CLASS),
>   	MAKE_REGLIST(xe_lpd_vd_inst_regs, PF, ENGINE_INSTANCE, GUC_VIDEO_CLASS),
>   	MAKE_REGLIST(empty_regs_list, PF, ENGINE_CLASS, GUC_VIDEOENHANCE_CLASS),
> @@ -182,6 +184,8 @@ static const struct __guc_mmio_reg_descr_group xe_lpd_lists[] = {
>   	MAKE_REGLIST(xe_lpd_global_regs, PF, GLOBAL, 0),
>   	MAKE_REGLIST(xe_lpd_rc_class_regs, PF, ENGINE_CLASS, GUC_RENDER_CLASS),
>   	MAKE_REGLIST(xe_lpd_rc_inst_regs, PF, ENGINE_INSTANCE, GUC_RENDER_CLASS),
> +	MAKE_REGLIST(xe_lpd_rc_class_regs, PF, ENGINE_CLASS, GUC_COMPUTE_CLASS),
> +	MAKE_REGLIST(xe_lpd_rc_inst_regs, PF, ENGINE_INSTANCE, GUC_COMPUTE_CLASS),
>   	MAKE_REGLIST(empty_regs_list, PF, ENGINE_CLASS, GUC_VIDEO_CLASS),
>   	MAKE_REGLIST(xe_lpd_vd_inst_regs, PF, ENGINE_INSTANCE, GUC_VIDEO_CLASS),
>   	MAKE_REGLIST(xe_lpd_vec_class_regs, PF, ENGINE_CLASS, GUC_VIDEOENHANCE_CLASS),

