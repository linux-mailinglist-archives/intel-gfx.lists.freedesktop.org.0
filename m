Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB7346FA8B
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 07:04:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F56410E21D;
	Fri, 10 Dec 2021 06:04:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5FC810E21D
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Dec 2021 06:04:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639116281; x=1670652281;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tm3AjwnXgpBGX6VUQgIyaorQTGlj1yrU+cKhRKV17vs=;
 b=H1saMHROg/69r4xJnc2Se+jtZvtoO3FRu7L3f+NGaAR+W50OEZR/1spc
 USvyCHuQlDKXkrunekilfGGGRqL/Qu64Q1QI9G/3gI7JP62abgxT/h1hU
 yrsPuZs9juA3ZkwaiQz3XjqAmgwDlI4jYemubyK/0CJ+xVjnDeDYkTLob
 MlvZqhqhKqd/6gXq+izBsEvNiIiWRkLLhR+9PgChMyQWWt2v5stKWjh5Q
 WDOLGWqfM+ytwhCnJ3ljfjx9H7i+WeDMhZRgOisdWxQe4d4woJHqKp6Sh
 ONOSjwRErXAytIfNHDAu+JIokedpXuVznLsvRGxbewKujLvHd/hf9pZGv w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="237018920"
X-IronPort-AV: E=Sophos;i="5.88,194,1635231600"; d="scan'208";a="237018920"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 22:04:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,194,1635231600"; d="scan'208";a="607195933"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga002.fm.intel.com with ESMTP; 09 Dec 2021 22:04:41 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 9 Dec 2021 22:04:40 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 9 Dec 2021 22:04:40 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 9 Dec 2021 22:04:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g0RrOXCMI4TBH34Nu7PoDDTeuTSz+XSXMg14KyQfoDam5OJ+pI/A85mYmGVNDsx6CJFDdwDqtKIMw/4M3hY4Z6Uq7i7g6p3nPxauohqDb/70aYUIAEEwsOngsdM9RlcvgEXhI89kGOkehAxWBP7YfUtwVE1orFEM/2y/tdqI1h7inRTCvzSePEub7GfFo9WpzUQ7WJ+rPcI0tmzvRWGW31BkoCc0bfNcdOqYDqOteXFsPaQ9xeCYHrhNhrKjv4uMui5KTzPijqqiUkEdxCCbxuk90TZTpDrIwLm769wXBFpj5kNHGsS64kR3r/l1Rtj4yUBMJKSOQQHzz8mkgJTLSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FiSuUoMU5MHN8n7xIgZWzVj2aJnR4RF65DKc0qx53x4=;
 b=QVAsFdD3IRpQHzF4Eoff0HTvxWEmsW+PWrr339hSohgLITUYjTIGOmgqBUPpJL9//vzjgEkhOhguBkkTagnyo/+kRvDebciTxRBVrIT1W8uDlgcf6DEarYO8+pGES9c3wEolp5ltip47SllDtlm7peFTzSilumtClz43ttG4OWPKCp44jZfye+EOYTM1pHzromaKrbAnm2c6hwemTqItHC6qjmYU7/1KeiezECzPDwwkR3HiLOWQmvNVzKEBGefSeG/liCZlF9z6zFR5RJ02CiBognt+4Zdam7OmBxhRAJUjvAE7ivqnp+hWxEnP7oIdJizw0+/78t+GOT03hljbfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FiSuUoMU5MHN8n7xIgZWzVj2aJnR4RF65DKc0qx53x4=;
 b=pDk6pn7qpEudaHqpQQUJO5jaT0WbGY5sHZXSjey96sUcV71XIaHVW3D+XxDmYkYmDk3zb4bE3JJDQsr47oYfZJQBeKIGB3c3EYqLWcL/2VdY/Dghh3pB3XLZEyzAGty103GZaHU6ewHTqp+xHdCMZ2+/v1gQnIv0GaXVtIeRVcE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM6PR11MB3691.namprd11.prod.outlook.com (2603:10b6:5:146::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.16; Fri, 10 Dec
 2021 06:04:38 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::213a:153b:bac9:8197]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::213a:153b:bac9:8197%9]) with mapi id 15.20.4778.011; Fri, 10 Dec 2021
 06:04:38 +0000
Message-ID: <7fcd7e4f-7d5b-c834-8e18-0414b9af0251@intel.com>
Date: Fri, 10 Dec 2021 11:34:29 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.3.0
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
 <20211015133921.4609-21-ville.syrjala@linux.intel.com>
 <d86a25b8-b68a-5e2e-f4ae-c539ddf12885@intel.com> <YXkTvw2SQCxIFm+S@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <YXkTvw2SQCxIFm+S@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN0PR01CA0004.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:4f::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 893834d5-5de6-4ce3-997c-08d9bba2f29d
X-MS-TrafficTypeDiagnostic: DM6PR11MB3691:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <DM6PR11MB369141E3FAB41A19D197E3F7CE719@DM6PR11MB3691.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: F9dZeDGtDmhCDtmAfzni2oB/ymwZH8gFI8cQiaa99qA26cMt8vS1d1wH8jGKlvhizQSl1tJ53KY+lPXx9ZKuXlrwBdd+9IJXEfdQWyztEKiuloK3HBM6im0mV9F6mJsfRoZ2expyEG+bbTLi1qoEy0hJCCjRoe6EP8ZfURzZxzOGpiYeSZs9ixlmFOhh+U/yBPFabSSXDSCJwOq0bqoEOiTa80D6IzOtlIvRniG1Lb5GzVNDZjslfShyH4/wbkTaWC89cy8T92y7sVVpw1NLc5hxRYmep0nZHpSWnJ1y7iV1XVKvFSda90Jylv5T+hxp3HoHm9vqzB9EjjgMwfuZZSk0TtF9O28zx3zbDw6I7gC7crIuOjh9zIYMeoTF3oelIbGZE5uzGDUeBeYRYRptVm3O6qpU5m5woxqCFTc6w9Ud+41cXbtfFvzmspn3DDbn/6NOsomuhPd0EXqoXwE7sStk6V6IgVxKj4TTzst2QI5zQR0eLiOXma4MoZk1BttmG94npF914ihX7jt+aLE7aFSAdUUPvZBr/aKmM+rn/2ciHbzDqM+TcyUIdkkvehc9S+uOw6z0zfMkfbRIqf01QEtNnufHUHhF6ROdLbYNQcRy4+VJZtHFhxw7jG3JPpZkAVgHs+bJ+Qa0s/0xysoSA3gZ8/ezniWG38I1nkj0YXr8zcbpqjlX+F5su3FMGdgfdw7DNhZkSxgBW8ej44QTFgXHk6XKupw2DHqJMA8XBToXM9c09oBnN4Upthv+0rZf
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(6029001)(366004)(31686004)(6486002)(55236004)(6512007)(186003)(4326008)(83380400001)(82960400001)(8676002)(316002)(5660300002)(36756003)(8936002)(31696002)(508600001)(66946007)(53546011)(6506007)(26005)(6666004)(86362001)(66556008)(66476007)(66574015)(38100700002)(2616005)(6916009)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K2NqR21rWStDb0VyQmhISlhLMlRKekEvUWtNMEV3WmtWRnd0YU5QRTMxaXA5?=
 =?utf-8?B?S3QrYnNnTlhhTkU2S2JCc000czhrLzBQaDVObTN6Smh4QnpzSGxNTHU0S2t1?=
 =?utf-8?B?RVBUYTFSN2ttSWxUVjBzYWRFOGliMlcvR29aV3B4UlMrbFpjdkdGQkpWdUpC?=
 =?utf-8?B?UlgybVpmcEVmRG45ZksvUmtIZGNUWmpYWTA1QU0zc0dmREIwQU1BSU9lYnBm?=
 =?utf-8?B?U3AyRVNKSE1ETVZRVmhIRUVzT3RNUElnRzRWTFpCY0h1RkQrSm1UM21mYXdu?=
 =?utf-8?B?blFyeWhXMjVvbk1UVTBtZ0NIaDFrU3JmOVMxZUQ3LzlweDVBaGY2WEdtV2Jn?=
 =?utf-8?B?VWNjZ0F4Wjh1djdERXIzWW5lcVdiTHZJV04wVEdLeERjSFNuV0cyRkdEei9E?=
 =?utf-8?B?d1l0ZnE4a1RMcGtNSnZJS3kvT3p3eTV1a3dZbTRsZDdlcHhid3NEWWtNMEtF?=
 =?utf-8?B?eE4xeExEVjNpVXk4VFl3YVVGQ2xZaWJaTjRoSmNXeGNLRXlQZEhDeWZpVjUr?=
 =?utf-8?B?OWdtZVdxUFNBRTRMSndjNlo1eTl6bUpqUjRwM0liWFRuWFZyYThGblpJR0Jh?=
 =?utf-8?B?Z1R6dUNDaFg2QUlSMWM2a1pPTnduSEc5aWptWmV2aXNHUmdtOEV1eEpubXpD?=
 =?utf-8?B?cnEvMkZNbmRvMUpzRUVyN2NKQ2VaOHdJMDFwaFdWdE1GUzVsa0p4TTY1TWxk?=
 =?utf-8?B?Q0FOTmVRaGp1YzI5ZFdjdlZRbFpkK1AvalRtQWZXRmdtbTRFMW9IU0FZWCt5?=
 =?utf-8?B?VW42VGRmbEt4MVRSYXpFRzhWWTFwMTNIZHZqSm5UTlQ2bThHbVZzRU9DY1J5?=
 =?utf-8?B?YnhTY2tYQ0xxR2N0aUUvVjcrbVB6aWdyQ2h6a2k3VW5SNVFWV1JqWVhzK1dX?=
 =?utf-8?B?Q0dNWmR3SFdiVXZybG1kbFVYQ2ZnekxEbFJCR2dadE1LTjZLclBFdXRCd3Bt?=
 =?utf-8?B?aENIRkFVT3J6WCtzbFN3OWxXMllNa1FKaXdjVGhudG5ZQ08wcDdtWmJ1TWU3?=
 =?utf-8?B?bTBjQU1lc2E2WWpMak4xOFFYM2RqTjF0eXhSMU1XeHdNUkIvVHFnbExseEM1?=
 =?utf-8?B?YlFBZnEzYUI0dXpRaG1aNDJzV1FZR0kyRDh5S0IvQkNkcnF5VUxNUTVqekhx?=
 =?utf-8?B?Z2RNK3Q2ZGtkekNhYThoTmJKMkNna0FqYkxjY2l6bi9GbVNZNE50bER3a2d5?=
 =?utf-8?B?RkNIckN0SCtnOEZGdVRJUTRjalVmTUdNdVEvZ3VGM2VnblJuUkdYQzJOdXNP?=
 =?utf-8?B?aHdia2g5VHhJY1ZDMUNKOXhRUm03MHFocGtQakZ2UnBZSjNXS2daQUZ4Z3I3?=
 =?utf-8?B?QVdmRitFakYyUWl5ZEF1RUMzNVlsU3RxRkovWHRiYkNyeFd3QWRkZ0l3ZjhX?=
 =?utf-8?B?VEVFN1FxRUdrcjlKMng4MXFZMFhYdVBtUnZWK2ZWYnZuMGhHNDhmZjlMV2hW?=
 =?utf-8?B?aVlIc0grYkQrdzlZQ2FwSnR2dU5ML1p0OUcwdTJCYkNGQ1F0RkZjNW5jYUMv?=
 =?utf-8?B?UU15eDdhaTlzd21razUzSTBBdlY3WXVuTzFqSnJ4bTYvYkUxK2NwQ3NrMmZM?=
 =?utf-8?B?K0t1OVpheWRRa2VFWDI2Z0ZSdEwrZHJkWWxuMEt6dEorUUNxcjFUK0ErNDgx?=
 =?utf-8?B?U2U0V2RqYWVVSDlidUpjTXJrTzAwUUZhME9LckhWWWM5allERVJYZ3kwL1Jj?=
 =?utf-8?B?NzN6MHlrVnBGWGYycGYyQXIrVC9NSW0weDU3MjhzZ0M0WUxLMTY3QStXd3hm?=
 =?utf-8?B?SXpMRDNaQnpyMm9UL1N0aVZNVGJDZk5uOEVDSzRWTXV1c2ptdCtvcnl1SXRh?=
 =?utf-8?B?UEdLZm81QmNZdFFtUWRaOW5USVRYUjF2dU5zU09rR3ZzWWRTK3MydjFjSVdW?=
 =?utf-8?B?TlozOWdrUHdHQmVxL0Rhd2FEUWR5ajF3cVR5S0NONnRUM2NFdUpUM2cyZklw?=
 =?utf-8?B?ZHUvcmlrUS80MzFrcXNHSUJZenBaZUo1Yk1WUGpvTGY3Njg0RWJFeWVyem9L?=
 =?utf-8?B?TTBmZndmVSswNUlxbUZPTkQzRWEvMFJ4M29aSlRDZXhSd0hmaXgwdmd1dk44?=
 =?utf-8?B?anpLc05QQ1B3emNPNlJhMnc3bjFhTXNOdEdUVEVyb2xtRzJlS1VzK1AwZjBL?=
 =?utf-8?B?ampOakUxNWZQZHk3R1ZZbWp4aTNYYnkwaFFxTjlickZLTG40UDhDcjg0cERr?=
 =?utf-8?B?enZDOGVqc1FhaE9Cekt1TG84ZDFMMFArMU04dEdXZENWZ3ZhalcwVWNwc09r?=
 =?utf-8?Q?aW0gIw2Q385oDW31AzQh1o/E+2i7bhCpLrVy1WEIws=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 893834d5-5de6-4ce3-997c-08d9bba2f29d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Dec 2021 06:04:38.2392 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qP9ZX32dl1BuWN2k+RDiV3K4ZC8slkWMsSfvpx5WexNQE8hooEJQTGO4BjVaAzzjk2dfvJX/qH9OWljd0H51/2lEbT5xT2Ht4bN2bDXD0dM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3691
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 20/20] drm/i915/dp: Disable DFP RGB->YCbCr
 conversion for now
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


On 10/27/2021 2:24 PM, Ville Syrjälä wrote:
> On Wed, Oct 27, 2021 at 12:57:37PM +0530, Nautiyal, Ankit K wrote:
>> On 10/15/2021 7:09 PM, Ville Syrjala wrote:
>>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>
>>> We lack sufficient state tracking to figure out whether
>>> we want the DFP to perform the RGB->YCbCr conversion for us
>>> or not. So currently we are blindly just enabling that all the
>>> time when supported by the DFP. That is nonsense. So until
>>> we imporve our state tracking for this just disable the feature.
>>>
>>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> Cc: Uma Shankar <uma.shankar@intel.com>
>>> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_dp.c | 10 ++++++++++
>>>    1 file changed, 10 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>> index 29b12456c461..3e2a29b589a9 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> @@ -1107,6 +1107,7 @@ static bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
>>>    static bool intel_dp_is_ycbcr420(struct intel_dp *intel_dp,
>>>    				 const struct intel_crtc_state *crtc_state)
>>>    {
>>> +	/* FIXME see intel_dp_update_420() regarding rgb_to_ycbcr */
>>>    	return crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
>>>    		(crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 &&
>>>    		 intel_dp->dfp.ycbcr_444_to_420);
>>> @@ -2456,6 +2457,7 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
>>>    			    "Failed to %s protocol converter YCbCr 4:2:0 conversion mode\n",
>>>    			    enabledisable(intel_dp->dfp.ycbcr_444_to_420));
>>>    
>>> +	/* FIXME see intel_dp_update_420() regarding rgb_to_ycbcr */
>>>    	tmp = intel_dp->dfp.rgb_to_ycbcr ?
>>>    		DP_CONVERSION_BT709_RGB_YCBCR_ENABLE : 0;
>>>    
>>> @@ -4261,6 +4263,14 @@ intel_dp_update_420(struct intel_dp *intel_dp)
>>>    	rgb_to_ycbcr = drm_dp_downstream_rgb_to_ycbcr_conversion(intel_dp->dpcd,
>>>    								 intel_dp->downstream_ports,
>>>    								 DP_DS_HDMI_BT709_RGB_YCBCR_CONV);
>>> +	/*
>>> +	 * FIXME need to actually track whether we're really
>>> +	 * going to be doing the RGB->YCbCr connversion or not.
>>> +	 * We can't tell by simply looking at intel_dp->dfp.rgb_to_ycbcr.
>>> +	 * Readout is going to annoying due to having to read that
>>> +	 * state from external hardware that may vanish at any time :(
>>> +	 */
>>
>> Hmm right. Do you have any suggestion what should be the better place
>> for defining the policy for using DFPs CSC or use our own HW, in case of
>> YCbCr 420 output?
> One idea that came to mind was just adding some kind of
> sink_format thing into the crtc_state, and computing that appropriately
> during .compute_config(). But as mentioned the readout part is going to
> be annoying. Maybe we just won't have readout for it.

Agreed.

As mentioned in the FIX ME, lets have dfp->rgb_to_ycbcr only to capture 
that the dfp supports conversion.

and dfp->ycbcr_444_420 to capture that it supports 444_420.

Whether we need to program the DPCD to avail these support can be 
captured in another member to crtc_state->dp_dfp_444_420, and 
crtc_state->dp_dfp_rgb_ycbcr based on crtc_state->sink_format.

We can fill these members, during compute_config along with dsc 
considerations.

These can then be used in dp_configure_protocol_converter().

Regards,

Ankit




