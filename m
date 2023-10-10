Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8B27C04D9
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 21:43:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2559510E127;
	Tue, 10 Oct 2023 19:43:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 728FC10E127
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 19:43:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696967028; x=1728503028;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=Yzgs/5op/Lp7P0wwQv0Y3aC4xX38FhQvqqC7d8F/E+M=;
 b=XQ2e8LOo5oPRYs0Yk1Q/Lc/VGX033APbf1rfB/vtI2E7kbhNz6yNdqcH
 CXeGkEDO+gQDFEnHjvko0hV3fZXodnu2AOq2Pc12nX2+qJzSzVZHaX31W
 SYtWAAH8MY4zqhRjEIqye2QYtl4ylF5kDKscjwtZ+Io0Y09B5ube8RBiC
 R9NiB0ce7zhCEAK9F8jwaI7ddprVE9tR9M6xE7ByhSd+g8542QU1wsi0V
 1aeYDZC6PggZ3KPSbJ0qdeO2/7IQAKofM44gVzT481xWeWd75Q0xfly4n
 saJOFMASaTWfAUXR+hmEh8X/B/6bTcvfH93s9nhGPTDPOdrqEfsR7CtEf A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="363846231"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; 
 d="scan'208,217";a="363846231"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 12:43:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="703421583"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; 
 d="scan'208,217";a="703421583"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 12:43:47 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 12:43:47 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 12:43:47 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 12:43:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TCTK7BOUf4r8gKVVsQhk7bWL9tcDGjnE5QK0SaNgFNJ5DxpV2IEm4RdQjqTqiyOcicHUienhjUjilPZO0uK+RXKc9EIgLb9DP6BUcbCILwvHUCtOfHtp851kheK54lInCDWx+1RuBAne6hTw/m+MuR40oQdxL1FPIrigmI6PU4lJEXN2JssCXydd36bU9wPJ4qCxgYWE/EuaJD8PWpQ+6gTuWUFKvMSDiQx9yxqG3MX69zlbmkjfEL1pKJX+XR6hLJs4evsRSMjmPOCVX2s/UHPbpkpoWYWT5IfPtUOe/9pvZSykIoTAl2o5oxWiYdOAR+Jc7TXiSxL+Ft4U9Xm0dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r+afB8JU5Cpx1nIqayNkfhlw1b/p3HWhwa2cImeBsPU=;
 b=d6QR7NOFXsqwmASFVRhels8fZ4w89RE3/LbV6GQmje4kIfwKYDxsadn/DfgpoOg7f1Nkn+ekjjmy3UuaTbd9CNffYWl0sNTbMP5s74WO6GMdisgCOJOZw2RnPXd6waDi0BZmj3HanSzygqYGmL4Y9gxtKSPVr356LN3EsKaHPejJp1a2F1q6SHqFbm56oKaB9FAoXrch4IS3a4j7GhgtfJV9dgQqjWAantw6qMfYPfzEFgmIArQXlWbbnqE95lOSCJVr9c1Oyn5PjeyMeHkALHJzvPXVbxggB7eVUe8ljMTQa8vQouQGKZGn9zRBMEEc8vZ3LE1lJYDN9/axV+YbAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by PH8PR11MB6707.namprd11.prod.outlook.com (2603:10b6:510:1c6::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Tue, 10 Oct
 2023 19:43:44 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5%6]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 19:43:44 +0000
Content-Type: multipart/alternative;
 boundary="------------RHiJ3Wg0VrhQTue2Qv4ZxbTb"
Message-ID: <63d543d9-dc9c-483e-ade5-80e540e7533f@intel.com>
Date: Tue, 10 Oct 2023 12:43:41 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231010150244.2021420-1-jonathan.cavitt@intel.com>
 <20231010150244.2021420-3-jonathan.cavitt@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20231010150244.2021420-3-jonathan.cavitt@intel.com>
X-ClientProxiedBy: MW4PR04CA0138.namprd04.prod.outlook.com
 (2603:10b6:303:84::23) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|PH8PR11MB6707:EE_
X-MS-Office365-Filtering-Correlation-Id: 378eedc2-4ca8-4786-5b36-08dbc9c93665
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eBw8o2ib1phO0HnxJQ8eIUZeIiUtT+pv3ETZaHBW/lV2KgKlNt7KMOlnEc7HxRfIvr8XtU7nmK3i9mu4wPEkUHf61CtnVqLIGd3tRxQJ4emrmCgo+XxrHU/AKZT5JxYOuhcbxW5xl3W3k0VaaTpxxWaHBg4DMxUKUH+DJpjTe7mt1UkvKN4O50qu+P56Gh0UC31I+xqU7+5YPTbTCqjEhVqtvhtEM0LI7W31qRyD3tm7VJNfCtF+S0OkdERz3s4H07bwSEvS8SGflnKOp5a2JbDXSkdLYFmgprQcu395qOle5sE3VWKzIMduGld53Wmc7iUFQrBRommQqNnVjBGAYkMXgWbbQcjNEpXdloJoJUn1Uql3gby14SH4xK0V3vW814/hTiDf2x+9kGomjJX8ianfR00HSLwanrP5bNAnpzMAwP8ailV4cS+Tkep9/CfG8g7qgnzv+1sdXGaDa72HIEt+MUlfB/NdhOk/oPXidgHjjnj2EDHPuqjqulU1Ucwba9gi6zyxYZA9f2kAYDzrdnOIuouw8OUzt2ZAqz6G3ya1f1lQx5IkszgMYejBaiBUVTG/5qpVF/rKsuqRatpgKoVYur62DZpCjo2B2eGm9S4zJJ5y93cgaW+Usq9Yd0K8gV6zr8JXfegOqhkeDnSang==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(376002)(39860400002)(366004)(396003)(230922051799003)(186009)(64100799003)(451199024)(1800799009)(82960400001)(2906002)(66899024)(8676002)(8936002)(5660300002)(4326008)(86362001)(36756003)(31696002)(478600001)(31686004)(6486002)(83380400001)(6512007)(33964004)(26005)(53546011)(6666004)(6506007)(2616005)(316002)(66476007)(41300700001)(38100700002)(66556008)(66946007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N1M3R0JJOHF4aGZFZVJiTnZCMGc1S2tITWkyZnR4YWdHOHAxZXhXb1JVYmFN?=
 =?utf-8?B?V0luU2RrOUM5WTNCWnI3alBCMDFvb3drK0FRcXFKaS9oZ0kxazBNekwxMEZR?=
 =?utf-8?B?a3JHcTRkSUlnd1V3bGF4Tm1Oblh2c0FtNDZtTC96K2VFbHdlcXdkbzA1Q05v?=
 =?utf-8?B?NWN3SkU4V1VCL2E1MUYvc3IwU3R6UUw4dWlMallobFY1YUtIZDdXSkJwS2Rr?=
 =?utf-8?B?RjM4U0E3Q3lFNkpFQ0E0blRSZldMdlRJaDAxNXhDTThaMDFOMVdaWGVENHdv?=
 =?utf-8?B?aGdObGpNRXVTR1NYQTBtVHlRM3YvdkF2UUh6RnJYOFRiRVhXaUJmbUZBejZB?=
 =?utf-8?B?Q011cG9DdkRwd1dCbHZwMHpYU3drbGhaUmhta0tzS0VvVDgwdE5YWWxSMCtJ?=
 =?utf-8?B?TmZ0dkVqaVQrMExKOSt6WWRveXRiR0VBaDY0VGRldWgyTWpNUkVNTjlYR0ZU?=
 =?utf-8?B?cVFYeXlid2lYYlRmWUlFZmpGT0ZsQzVVTVh0ek5ma0ROYlJiSFpUcWszMmZJ?=
 =?utf-8?B?NFVXSHNmZUIvTEdldFYvbVFEcjN5empFTjhnSWMrMmVjL2ZtNk9CNW1nc1Av?=
 =?utf-8?B?eXdHVWM0K1ZjUGZhaERUQXpkc3BzMnlFM2o4K1F2NFM0SVlpWkljallQY09U?=
 =?utf-8?B?VmFpMUQzNjQ3cEI1aFRQbU5GQWxFcUxyRk05MUUvdkdVQXpQL1NoeENFdU9n?=
 =?utf-8?B?cnd1S0FzZ0tLY3BrZy9wZGhEYXFXMk1xNkQ5K0pUd2t3WmwzaGtHMlcvMUhk?=
 =?utf-8?B?MWVPems4R2tyVU9mK21TRFlKcmRyRFh5eTVBUnpJdHUyTFhjTm1sS3JrbzRs?=
 =?utf-8?B?cWhQdmticHRHOTkyTDMyK0JuOVFoT3NKc0JsSzB3VVo4cDQwU2Nta0NJS3lG?=
 =?utf-8?B?UjBKQjlkQ3kyd3ZPUEF0WTM1b3BGNXB2Zkl4OUNkbTBTek5IOUU4a0tyRW95?=
 =?utf-8?B?dHhRb2orbXZ2ckN4SWJ2YkNlNzZYOWIxeVZNYUk5Y0FFYng5ZWxlTkQ4SkJv?=
 =?utf-8?B?aEtPb0E4T1p3QWZZZ3p0L3R3UGRIT0ZwTFovWkRydXZ0eGZrdEhKRkVsYnls?=
 =?utf-8?B?SzRJTkpvVW8rT0hyQjQ1UXIxMm0rY3NCY2I4b1UwTFM3N1BVK2EzbkliYTdw?=
 =?utf-8?B?czdmb0crd2ZmTGRua2lRd0hFcGNmeENXbkdSWjE0QWRrcVVOWFRyK0RZR0RZ?=
 =?utf-8?B?Vk1vVVhiYlp2QXFOU3I4dTBweTBncFU5Mmc0VHc3bERDT0U4SFQzajdLWXdC?=
 =?utf-8?B?ekgzcTZydnVoQjN2SUQ0QXVnVmo5ZmFteGJvRTBJT0tobTNVZEh0ZHVMaWJB?=
 =?utf-8?B?bXRPUzErTE1mVnlVemYrck00cUk0TTluS0xIVXJ6N1FLTzYzVks1Qm9LTjFm?=
 =?utf-8?B?TVVEcTU5bWpXbi81SEs1NnNlVjBEeE1OaUNxNTVjbHpVTGVhYkI2RDNtbTRt?=
 =?utf-8?B?Vk5ZNE03OWZnUm5KUk5rMndMSGlrTk1WNUw4aWNGUEFNLzh3c1ozR3JxM0NJ?=
 =?utf-8?B?dFBVUnhCQVJrUFhGK3ZheURKaUt5M1hRSjdoOGd6bHlCWE1MOU1Pcm4wcFlN?=
 =?utf-8?B?K2cySGVib3hZM0pwemw0T3BxR0Q3UzJuVDRjN2xWTndTVkwxMW0ya1FYVFRD?=
 =?utf-8?B?UDVUSnMyS3RUWDNQQmVURU11aW9jbGh6NmRZVmFwTWx6L0pFQVZPWWhDcCtp?=
 =?utf-8?B?S1h4VG9scHExV2loK0xMajhCWXFlc29aMHRxb0xyRTV6SWRHdXB6Tlk2MU5a?=
 =?utf-8?B?K1pvREpNengwWDhLZExSK1BjRU9YbDdDVGc2NE9Ea0c3NWNTZkRQZnhpRVVt?=
 =?utf-8?B?Q2RRYVVMcXdFcmphUlpKS1BXakJzeFlKSzMvdHJZcTYxSk0rZjA3RzZLZ1Yw?=
 =?utf-8?B?TjAyakxDK3I5N2djOS8wRW1QZ3JFcmI3ZmYyNDdkQ1dkRmI0RWovR05PdHdC?=
 =?utf-8?B?L0h2WW5INFliZnNxQVp2S2dTRmxXdi9MOEwvVkRmakF0b1NaR2Fsc0s5YlBC?=
 =?utf-8?B?SDRkdFlNZG53L1VkR1VlRTA1UEdpTzh3eEFkV2lwZnJ0WGs2UEhlQ2VKOG9F?=
 =?utf-8?B?Kzd5RVlnZ2Zxb2lucFk0bjNTWTdlcFd3MlFiUDZ2ZUhKbjA4bGxVVjA1Y0JW?=
 =?utf-8?B?N3ZZdS9adkp6T0ZXR3Vza0g5bkovcTBNM2FwSlJpT0NTVVNlS1FYZHBZTzVM?=
 =?utf-8?B?c1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 378eedc2-4ca8-4786-5b36-08dbc9c93665
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2023 19:43:44.2974 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l03se64eM7ZgT8xBjDnNFxSdiQAOoOu5xe5ae9lmC4cNwv3V3e4nTEfs8MtHb7HIU5jE8yUgfnG8EI0jUp0q9zP12EDaXWGvgKhjPFhd97c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6707
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v10 2/7] drm/i915/guc: Add CT size delay
 helper
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 matthew.d.roper@intel.com, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--------------RHiJ3Wg0VrhQTue2Qv4ZxbTb
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 10/10/2023 08:02, Jonathan Cavitt wrote:
> Add a helper function to the GuC CT buffer that reports the expected
> time to process all outstanding requests.  As of now, there is no
> functionality to check number of requests in the buffer, so the helper
> function just reports 2 seconds, or 1ms per request up to the maximum
> number of requests the CT buffer can store.
>
> Suggested-by: John Harrison<john.c.harrison@intel.com>
> Signed-off-by: Jonathan Cavitt<jonathan.cavitt@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h | 13 +++++++++++++
>   1 file changed, 13 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> index 58e42901ff498..36afc1ce9fabd 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> @@ -120,6 +120,19 @@ static inline bool intel_guc_ct_enabled(struct intel_guc_ct *ct)
>   	return ct->enabled;
>   }
>   
> +/*
> + * GuC has a timeout of 1ms for a TLB invalidation response from GAM.  On a
> + * timeout GuC drops the request and has no mechanism to notify the host about
> + * the timeout.  There is also no mechanism for determining the number of
> + * outstanding requests in the CT buffer.  Ergo, keep a larger timeout that accounts
> + * for this individual timeout and the max number of outstanding requests that
> + * can be queued in CT buffer.
> + */
This feels like the wrong wording. TLB invalidations aren't even close 
to the slowest thing that goes through the CT buffer. And the 
description about dropping failed requests and such is irrelevant to the 
implementation/purpose of this helper. That is specific detail about one 
single use case of the helper. That might be the only user at this point 
but the intention is that other parts of the driver will be updated to 
call this as well rather than hard coding their own timeouts as they 
currently do.

I would suggest:

    Some H2G commands involve a synchronous response that the driver
    needs to wait for. In such cases, a timeout is required to prevent
    the driver from waiting forever in the case of an error (either no
    error response is defined in the protocol or something has died and
    requires a reset). The specific command may be defined as having a
    time bound response but the CT is a queue and that time guarantee
    only starts from the point when the command reaches the head of the
    queue and is processed by GuC.

    Ideally there would be a helper to report the progress of a given
    command through the CT. However, that would require a significant
    amount of work in the CT layer. In the meantime, provide a
    reasonable estimation of the worst case latency it should take for
    the entire queue to drain. And therefore, how long a caller should
    wait before giving up on their request. The current estimate is
    based on empirical measurement of a test that fills the buffer with
    context creation and destruction requests as they seem to be the
    slowest operation.


> +static inline long intel_guc_ct_expected_delay(struct intel_guc_ct *ct)
This is not the 'expected' delay but the worst case maximum delay. Also, 
no need to force the callers to know about ct structures. They 
presumably have a intel_guc structure if they are sending H2G messages, 
and that is all you should need to know about. Having said that, the 
implementation isn't currently accessing any stored data, so why bother 
with a parameter at all?

> +{
> +	return HZ * 2;
Also, this needs to be based on the buffer size so that if the size were 
to increase then the time would as well.

My thought would be:

    long intel_guc_ct_max_queue_time_jiffies(void) {
         /*
          * A 4KB buffer full of context destroy commands takes a little
    over a second to process
          * so bump that to 2s to be super safe.
          */
         return (CTB_H2G_BUFFER_SIZE * HZ) / SZ_2K;
    }

John.


> +}
> +
>   #define INTEL_GUC_CT_SEND_NB		BIT(31)
>   #define INTEL_GUC_CT_SEND_G2H_DW_SHIFT	0
>   #define INTEL_GUC_CT_SEND_G2H_DW_MASK	(0xff << INTEL_GUC_CT_SEND_G2H_DW_SHIFT)

--------------RHiJ3Wg0VrhQTue2Qv4ZxbTb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    On 10/10/2023 08:02, Jonathan Cavitt wrote:<br>
    <blockquote type="cite" cite="mid:20231010150244.2021420-3-jonathan.cavitt@intel.com">
      <pre class="moz-quote-pre" wrap="">Add a helper function to the GuC CT buffer that reports the expected
time to process all outstanding requests.  As of now, there is no
functionality to check number of requests in the buffer, so the helper
function just reports 2 seconds, or 1ms per request up to the maximum
number of requests the CT buffer can store.

Suggested-by: John Harrison <a class="moz-txt-link-rfc2396E" href="mailto:john.c.harrison@intel.com">&lt;john.c.harrison@intel.com&gt;</a>
Signed-off-by: Jonathan Cavitt <a class="moz-txt-link-rfc2396E" href="mailto:jonathan.cavitt@intel.com">&lt;jonathan.cavitt@intel.com&gt;</a>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
index 58e42901ff498..36afc1ce9fabd 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
@@ -120,6 +120,19 @@ static inline bool intel_guc_ct_enabled(struct intel_guc_ct *ct)
 	return ct-&gt;enabled;
 }
 
+/*
+ * GuC has a timeout of 1ms for a TLB invalidation response from GAM.  On a
+ * timeout GuC drops the request and has no mechanism to notify the host about
+ * the timeout.  There is also no mechanism for determining the number of
+ * outstanding requests in the CT buffer.  Ergo, keep a larger timeout that accounts
+ * for this individual timeout and the max number of outstanding requests that
+ * can be queued in CT buffer.
+ */</pre>
    </blockquote>
    This feels like the wrong wording. TLB invalidations aren't even
    close to the slowest thing that goes through the CT buffer. And the
    description about dropping failed requests and such is irrelevant to
    the implementation/purpose of this helper. That is specific detail
    about one single use case of the helper. That might be the only user
    at this point but the intention is that other parts of the driver
    will be updated to call this as well rather than hard coding their
    own timeouts as they currently do.<br>
    <br>
    I would suggest:<br>
    <blockquote>Some H2G commands involve a synchronous response that
      the driver needs to wait for. In such cases, a timeout is required
      to prevent the driver from waiting forever in the case of an error
      (either no error response is defined in the protocol or something
      has died and requires a reset). The specific command may be
      defined as having a time bound response but the CT is a queue and
      that time guarantee only starts from the point when the command
      reaches the head of the queue and is processed by GuC.<br>
      <br>
      Ideally there would be a helper to report the progress of a given
      command through the CT. However, that would require a significant
      amount of work in the CT layer. In the meantime, provide a
      reasonable estimation of the worst case latency it should take for
      the entire queue to drain. And therefore, how long a caller should
      wait before giving up on their request. The current estimate is
      based on empirical measurement of a test that fills the buffer
      with context creation and destruction requests as they seem to be
      the slowest operation.<br>
    </blockquote>
    <br>
    <blockquote type="cite" cite="mid:20231010150244.2021420-3-jonathan.cavitt@intel.com">
      <pre class="moz-quote-pre" wrap="">
+static inline long intel_guc_ct_expected_delay(struct intel_guc_ct *ct)</pre>
    </blockquote>
    This is not the 'expected' delay but the worst case maximum delay.
    Also, no need to force the callers to know about ct structures. They
    presumably have a intel_guc structure if they are sending H2G
    messages, and that is all you should need to know about. Having said
    that, the implementation isn't currently accessing any stored data,
    so why bother with a parameter at all?<br>
    <br>
    <blockquote type="cite" cite="mid:20231010150244.2021420-3-jonathan.cavitt@intel.com">
      <pre class="moz-quote-pre" wrap="">
+{
+	return HZ * 2;</pre>
    </blockquote>
    Also, this needs to be based on the buffer size so that if the size
    were to increase then the time would as well.<br>
    <br>
    My thought would be:<br>
    <blockquote>long intel_guc_ct_max_queue_time_jiffies(void) {<br>
      &nbsp;&nbsp;&nbsp; /*<br>
      &nbsp;&nbsp; &nbsp; * A 4KB buffer full of context destroy commands takes a
      little over a second to process<br>
      &nbsp;&nbsp;&nbsp;&nbsp; * so bump that to 2s to be super safe.<br>
      &nbsp;&nbsp;&nbsp;&nbsp; */<br>
      &nbsp;&nbsp;&nbsp; return (CTB_H2G_BUFFER_SIZE * HZ) / SZ_2K;<br>
      }<br>
    </blockquote>
    John.<br>
    <br>
    <br>
    <blockquote type="cite" cite="mid:20231010150244.2021420-3-jonathan.cavitt@intel.com">
      <pre class="moz-quote-pre" wrap="">
+}
+
 #define INTEL_GUC_CT_SEND_NB		BIT(31)
 #define INTEL_GUC_CT_SEND_G2H_DW_SHIFT	0
 #define INTEL_GUC_CT_SEND_G2H_DW_MASK	(0xff &lt;&lt; INTEL_GUC_CT_SEND_G2H_DW_SHIFT)
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------RHiJ3Wg0VrhQTue2Qv4ZxbTb--
