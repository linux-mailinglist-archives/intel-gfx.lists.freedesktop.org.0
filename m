Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 835C43EBEFA
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Aug 2021 02:28:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C01446E52D;
	Sat, 14 Aug 2021 00:28:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06EA66E4B7;
 Sat, 14 Aug 2021 00:28:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10075"; a="215678420"
X-IronPort-AV: E=Sophos;i="5.84,320,1620716400"; d="scan'208";a="215678420"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2021 17:28:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,320,1620716400"; d="scan'208";a="518380489"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Aug 2021 17:28:29 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 13 Aug 2021 17:28:29 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 13 Aug 2021 17:28:28 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Fri, 13 Aug 2021 17:28:28 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 13 Aug 2021 17:28:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jfr63Ojp35CJbokU5TtVKcW5omJNW7CDhqV/CB3oIbKKwnxI8HpWM2ucRIa6AzPNfPeJsi9QkYL/HgJ3nV2iOS5OJVfSMyuLg/XYnYeg1ZP3WLxChxeyGwI3EsssqfckLDcuQdpU+HtVpGP1CzYjbm/unWzBuR/xC9Be+B28Cm1ANzXrfOo3SjIYiVhSsys1wfQ4k+Q+c9Ns4PVAFdxtjeLM51KkUmqg3OERGbTLU1Z1g5JSD1bbk3kcQKJicKjZeely36P8IStoPZlTavLjUrreSQ9184DoadsYmBkp7pJQhbDHAWcqMQBf9D61JIpOdZIAOB9EHRa1lQ3qxe5GTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iOvN7ZYpM67CZvnkgLHpui24f42CZUwr2R6fE+AKgyA=;
 b=l5oA7WwOLwUx94MqHHqRFg4DEuNStFXdjz+jSgfklE0Isy1oi/Ob3+WElSGnEx8j+yRVQPaLtPFtvvfbBsOYuvNiUpYSZnJr33L8atQHeW+r6VSULi/mf6EihQ/djpROfNXeBHsE5A5w3eFPYD2zMd1+aSXti3h9ltRJqDfN95ut6AoUPUaMkoW6hPvKA+rBiKHNdQ/FdUOof/8W1JjW1s7WMHpJaqjmOX9MVUnKNJA0SqP0d+Bd997t/WOjRC6L90cFpnwkTEanVqpmy3jt9RL0VuzJ9/laC+wY9wgPBRFYV2RtFe/IEVVshGo7YDSWG+lza94niK7J0WwcPH2fzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iOvN7ZYpM67CZvnkgLHpui24f42CZUwr2R6fE+AKgyA=;
 b=GhruccEcopZ9EEz1Qz+Q6StLFHQgbaz0sSawLTC0yfZg8LWshiTiZIReJhJ1XGVNjyTyiel62RR4JGG0WaV8zT61GTLnKNGQ5S85wDSbh2SmHgHvWZh6/CbP5TaGnBy/0yvS6XWM3qq+LjrfyrKbVgMqnZ2c+SNLbNvHUQQrFUU=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 DM6PR11MB3083.namprd11.prod.outlook.com (2603:10b6:5:65::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4394.20; Sat, 14 Aug 2021 00:28:26 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::b96b:79f6:c1fb:13ff]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::b96b:79f6:c1fb:13ff%7]) with mapi id 15.20.4415.019; Sat, 14 Aug 2021
 00:28:26 +0000
To: Matthew Brost <matthew.brost@intel.com>, <igt-dev@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>
References: <20210804012303.158392-1-matthew.brost@intel.com>
 <20210804012303.158392-4-matthew.brost@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <c3450b4e-8eb1-9f4c-9869-0bdad62b7a30@intel.com>
Date: Fri, 13 Aug 2021 17:28:23 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
In-Reply-To: <20210804012303.158392-4-matthew.brost@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-ClientProxiedBy: MWHPR20CA0025.namprd20.prod.outlook.com
 (2603:10b6:300:ed::11) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.65] (99.72.232.53) by
 MWHPR20CA0025.namprd20.prod.outlook.com (2603:10b6:300:ed::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4415.14 via Frontend Transport; Sat, 14 Aug 2021 00:28:26 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f2c68b06-68f0-4c3d-703d-08d95eba6edc
X-MS-TrafficTypeDiagnostic: DM6PR11MB3083:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR11MB30835D5731E79A23EC1C8B1FF4FB9@DM6PR11MB3083.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8lFfTIKfB0PUZmLDWdVVxkTHChb1lvvfNp2mdEmrt8j3+kiuEpiKRiXqJJIs9BO698lG00UaHBJeqkIPOKweF23gV/IhFruMJJYohYyTqCy/Zd1bFXVS5FzxfrtOqBrI4/co+5B2drt8PA6E4nmuvK3TbDDfZwPT3o/WbQgTQPT7RLZeDahlGv+cgJoxJshPucxrsIh/lsOTenqCnpan3VzHPVGUnDx89SWMcxKJrFlVIFJPO74ju476IvtYOfA511xHicAqQuhjzp3YEcgWGSt2sav3swL8XjXdjcZ2K2uIAolveeCq6WWg4UQyQILslfk1KTTX9qm+SgSUbSBOykq0EMWT1B9bxnoBNTsCwUSY8atc5pOXRF3JuBGK7r4s/zw7DkEI0OjGljLmozY+QB29AuK9Bc25xRzGTUw66OscrPson+upemkMSs9z3gW801OaozAk3km+WjS+cMwz3XtaVvVlG0esQxmmvmW1XgbZf8wRwwbnFyyTFCbS3ovBKdFd88PHHcqOgcSAN9TvsGL/fmsT+zpJZFnjPOsKYJTaHoxEC3S/QnoRrehfsHu2jJ66NCEUQTcEMlByONgkc2WnoCL0Bya8gDf4nUMFOlMfdOoLKqfCWdUA/hK3aLwVz4GSgHbMjPbCyNR675Ddb4y0Gj2Uqo1UGjVmzAHBI4rBqhaLzBYJrY5sTZzsNmHpQ7O9qOVH1FpadGTXOXRU92pTLKqx8MhcOg0lcE6g14K5EFlKHHcgTYykFOEq0469
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(136003)(396003)(346002)(376002)(366004)(86362001)(16576012)(2906002)(186003)(31696002)(316002)(83380400001)(6666004)(6486002)(53546011)(26005)(38100700002)(8936002)(31686004)(66946007)(66556008)(478600001)(956004)(2616005)(66476007)(15650500001)(5660300002)(8676002)(4326008)(450100002)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aHlGN2JFTVJ2THdYTldrZEFncTg2S25pK2FsSjZQeHhCc0Y5cThKTUl0aXk5?=
 =?utf-8?B?Y1VYNzVFb3JBUEwvOEtkSnhrZGQreFFDZ014bTl1aVYvSXBmYzN3K0o5UjJj?=
 =?utf-8?B?SFl6UDZNZm50Q3ZjdmZNeXBHRmhETVh2eGxNRmN0YkNpVzV0MG9BbTZYZDFw?=
 =?utf-8?B?cEVXcHJlekRFc2JwakFTZGxIcE8ySjB3YVlnY1pJcWJjQjBubVh4WTRGTWJR?=
 =?utf-8?B?R0dPSHBMUGJtSjBicWVoQkhhM1Flb3JzK3VnZjdkSXdUcDl4OHZQcmd1OWtJ?=
 =?utf-8?B?ZUVnRTVDMlJNbmp4WWYrRUFIbkNWUmJmZ2xLUUw5Lzh5Y3dmaHRjU1ZKSFEy?=
 =?utf-8?B?SncwbzZXMDNLZ2ZjQVVWSHRjaDFoKzQ0MDF5ZUQxTkd4bWFhNFlWUmdtK0Z6?=
 =?utf-8?B?SGZzREdxK1NrMGh0WFNjaWtNYUt6SWdnR2FhbCtHeCswWG14N1dha0cxWHlU?=
 =?utf-8?B?aEhhRy91cGxxN01xWlY0OUhTOFphenZvbVVVMGt4c2lJWFBwZkNGeUZ0aENT?=
 =?utf-8?B?dy8xcWJWK1pwM1VMSm1PNTlBSjE2SThjODZGam9NWkpDWmg4Y1RZdEo2UXV5?=
 =?utf-8?B?b3luQThtMGNkWEpMeXpoKzNQNzBTeUJpMmErdDl1Y0ptemJYTmNXVVVjL3VU?=
 =?utf-8?B?Q0NzR0gzd3dqWXhUdVRDcmZSRUhjcytUOGtPWkRNdzFTdHY0MmVUTGtndzJz?=
 =?utf-8?B?OHFPb1hrWnBMTVloWDVxbHkyNWdSVTRlTy82anpteDhyNE9ydWE3WThLZ3NU?=
 =?utf-8?B?a09QeGE0ZmNBL3VFRWpIenlyTFdsS0hGVkg4NkNLa1ZrSUpMU0tyMXdLR1Ay?=
 =?utf-8?B?UEtMa09FcnZiUytQTUJ4Z2Q0S2d0WW15clJ2VlZkK09KNmVkUmVha24yU2xo?=
 =?utf-8?B?OHlOMjNRSEJkTjFrOGF2QTN0ekR2OTY0blNVOVVLZUEzQnlLR2xZS21IN0pm?=
 =?utf-8?B?Smo0RXJORzdFNk9yTlVBSTZ3R2tnK25IY0tEcWlObVFTSTgxUFJ3NmVGTzA4?=
 =?utf-8?B?ZnVXNWZQcFVQMys1YlRheXVrMnFSTlFKcmxGblBmTk81T0xITmJGRmRGY0xr?=
 =?utf-8?B?T0VtMzZRNERSMGUzY3Z2azB3ODVCaUlDMDlIOVkyUEU5V2pzczgxSmJYc3Y2?=
 =?utf-8?B?ajZUc0xUNGFwaUVzNXZkUGNpc3JweWU3anFXN0NxMGRvV0VvaDh1S1pzQlRL?=
 =?utf-8?B?andqSVJWSlYyQlRHbWNqNkxGQTY1ZFJBcjYvVjdDdktLWTh1aDNXTmRuVGdr?=
 =?utf-8?B?cVNBTk40bFdzS3BnZzkxeGtKR0NKTlZQb0JyL2pMNTl1Ky9LYnNobnh2ejFZ?=
 =?utf-8?B?NTFKNjRMTnJJZUNhRHMxeGJlTGJKUjhwWXRvVEpRRGFvNFV5alprVVBLd2RV?=
 =?utf-8?B?YnJnZWJOUFZSUTZlbk5UYVAzK3JKK0hBWnNzNlBTeHRDNklZRHNGbnRJc0xl?=
 =?utf-8?B?Ui9DcXFzOWRKb3pkZER6VEwvV0E1bzhsZHpsbTl2NHNIVUxoSnJnOTRYSWJV?=
 =?utf-8?B?WVlVc0NIZVRaakJxazVlOTcwekdXTzhzVGhmenJDclU4R2htK1lTdnc5QWRY?=
 =?utf-8?B?aktoTzVLSzBadzZxUkF3UURSTlhGVVRuaEZSNStJTm5MZ1BPZ2d1YmVaOVhz?=
 =?utf-8?B?YlhDd3c2RDVobWxQWkZ6T1UrZnRwd2tKOUR0SWRmWVhHZmtOeGY4R01Td1FM?=
 =?utf-8?B?NUVtV2xZbXNWbytiMWRDalJQM2FCL25IUjFaTFE1RTlLSndDekM5b3F4OXRr?=
 =?utf-8?Q?4JfGQ3JJlb8jTBZWszHCI30/NXfFbeRAFp0dtXf?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f2c68b06-68f0-4c3d-703d-08d95eba6edc
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2021 00:28:26.7778 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qjjPbxx/XESvG3LAoN/a+ryT1MCOB5akhATqJ9Xw7yeMIxgaL4ATYokaEw2RgfZTpTX7woBf4unbmH4jhW6x4gKfj92FL10GRdWGI2uAgnQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3083
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t 3/3] i915/gem_exec_capture: Update to
 support GuC based resets
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



On 8/3/2021 6:23 PM, Matthew Brost wrote:
> From: "Signed-off-by: John Harrison" <John.C.Harrison@Intel.com>
>
> When GuC submission is enabled, GuC itself manages hang detection and
> recovery. Therefore, any test that relies on being able to trigger an
> engine reset in the driver will fail. Full GT resets can still be
> triggered by the driver, however in that situation detecting the
> specific context that caused a hang is not possible as the driver has
> no information about what is actually running on the hardware at any
> given time.
>
> So update the test to cause a reset via a the hangcheck mechanism by
> submitting a hanging batch and waiting. That way it is guaranteed to
> be testing the correct reset code paths for the current platform,
> whether that is GuC enabled or not.
>
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> ---
>   lib/igt_gt.c                  | 44 +++++++++++++++++++----------
>   lib/igt_gt.h                  |  1 +
>   tests/i915/gem_exec_capture.c | 52 +++++++++++++++++++++++++++++------
>   3 files changed, 74 insertions(+), 23 deletions(-)
>
> diff --git a/lib/igt_gt.c b/lib/igt_gt.c
> index c049477db..ec548d501 100644
> --- a/lib/igt_gt.c
> +++ b/lib/igt_gt.c
> @@ -56,23 +56,28 @@
>    * engines.
>    */
>   
> +static int reset_query_once = -1;
> +
>   static bool has_gpu_reset(int fd)
>   {
> -	static int once = -1;
> -	if (once < 0) {
> -		struct drm_i915_getparam gp;
> -		int val = 0;
> -
> -		memset(&gp, 0, sizeof(gp));
> -		gp.param = 35; /* HAS_GPU_RESET */
> -		gp.value = &val;
> -
> -		if (ioctl(fd, DRM_IOCTL_I915_GETPARAM, &gp))
> -			once = intel_gen(intel_get_drm_devid(fd)) >= 5;
> -		else
> -			once = val > 0;
> +	if (reset_query_once < 0) {
> +		reset_query_once = gem_gpu_reset_type(fd);
> +
> +		/* Very old kernels did not support the query */
> +		if (reset_query_once == -1)
> +			reset_query_once =
> +			      (intel_gen(intel_get_drm_devid(fd)) >= 5) ? 1 : 0;
>   	}
> -	return once;
> +
> +	return reset_query_once > 0;
> +}
> +
> +static bool has_engine_reset(int fd)
> +{
> +	if (reset_query_once < 0)
> +		has_gpu_reset(fd);
> +
> +	return reset_query_once > 1;
>   }
>   
>   static void eat_error_state(int dev)
> @@ -176,7 +181,11 @@ igt_hang_t igt_allow_hang(int fd, unsigned ctx, unsigned flags)
>   		igt_skip("hang injection disabled by user [IGT_HANG=0]\n");
>   	gem_context_require_bannable(fd);
>   
> -	allow_reset = 1;
> +	if (flags & HANG_WANT_ENGINE_RESET)
> +		allow_reset = 2;
> +	else
> +		allow_reset = 1;
> +
>   	if ((flags & HANG_ALLOW_CAPTURE) == 0) {
>   		param.param = I915_CONTEXT_PARAM_NO_ERROR_CAPTURE;
>   		param.value = 1;
> @@ -187,11 +196,16 @@ igt_hang_t igt_allow_hang(int fd, unsigned ctx, unsigned flags)
>   		__gem_context_set_param(fd, &param);
>   		allow_reset = INT_MAX; /* any reset method */
>   	}
> +
>   	igt_require(igt_params_set(fd, "reset", "%d", allow_reset));
> +	reset_query_once = -1;  /* Re-query after changing param */
>   
>   	if (!igt_check_boolean_env_var("IGT_HANG_WITHOUT_RESET", false))
>   		igt_require(has_gpu_reset(fd));
>   
> +	if (flags & HANG_WANT_ENGINE_RESET)
> +		igt_require(has_engine_reset(fd));
> +
>   	ban = context_get_ban(fd, ctx);
>   	if ((flags & HANG_ALLOW_BAN) == 0)
>   		context_set_ban(fd, ctx, 0);
> diff --git a/lib/igt_gt.h b/lib/igt_gt.h
> index d87fae2d3..d806c4b80 100644
> --- a/lib/igt_gt.h
> +++ b/lib/igt_gt.h
> @@ -48,6 +48,7 @@ void igt_disallow_hang(int fd, igt_hang_t arg);
>   igt_hang_t igt_hang_ctx(int fd, uint32_t ctx, int ring, unsigned flags);
>   #define HANG_ALLOW_BAN 1
>   #define HANG_ALLOW_CAPTURE 2
> +#define HANG_WANT_ENGINE_RESET 4
>   
>   igt_hang_t igt_hang_ring(int fd, int ring);
>   void igt_post_hang_ring(int fd, igt_hang_t arg);
> diff --git a/tests/i915/gem_exec_capture.c b/tests/i915/gem_exec_capture.c
> index f59cb09da..6ae4208ce 100644
> --- a/tests/i915/gem_exec_capture.c
> +++ b/tests/i915/gem_exec_capture.c
> @@ -23,6 +23,7 @@
>   
>   #include <sys/poll.h>
>   #include <zlib.h>
> +#include <sched.h>
>   
>   #include "i915/gem.h"
>   #include "i915/gem_create.h"
> @@ -31,8 +32,16 @@
>   #include "igt_rand.h"
>   #include "igt_sysfs.h"
>   
> +#define MAX_RESET_TIME	120

isn't this too big when setting the heartbeat interval to 500 ms and the 
preempt one to 250? 5 secs should be more than enough.

> +
>   IGT_TEST_DESCRIPTION("Check that we capture the user specified objects on a hang");
>   
> +static void configure_engine(int fd, const char *name)
> +{
> +	gem_engine_property_printf(fd, name, "preempt_timeout_ms", "%d", 250);
> +	gem_engine_property_printf(fd, name, "heartbeat_interval_ms", "%d", 500);

Shouldn't we put these entries back to their original values after the 
test is done?

> +}
> +
>   static void check_error_state(int dir, struct drm_i915_gem_exec_object2 *obj)
>   {
>   	char *error, *str;
> @@ -61,8 +70,13 @@ static void check_error_state(int dir, struct drm_i915_gem_exec_object2 *obj)
>   	igt_assert(found);
>   }
>   
> +static bool fence_busy(int fence)
> +{
> +	return poll(&(struct pollfd){fence, POLLIN}, 1, 0) == 0;
> +}
> +
>   static void __capture1(int fd, int dir, const intel_ctx_t *ctx,
> -		       unsigned ring, uint32_t target)
> +		       unsigned ring, uint32_t target, const char *name)
>   {
>   	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
>   	struct drm_i915_gem_exec_object2 obj[4];
> @@ -74,6 +88,10 @@ static void __capture1(int fd, int dir, const intel_ctx_t *ctx,
>   	struct drm_i915_gem_execbuffer2 execbuf;
>   	uint32_t *batch, *seqno;
>   	int i;
> +	int fence_out;
> +	struct timeval before, after, delta;
> +
> +	configure_engine(fd, name);
>   
>   	memset(obj, 0, sizeof(obj));
>   	obj[SCRATCH].handle = gem_create(fd, 4096);
> @@ -149,18 +167,34 @@ static void __capture1(int fd, int dir, const intel_ctx_t *ctx,
>   	execbuf.flags = ring;
>   	if (gen > 3 && gen < 6)
>   		execbuf.flags |= I915_EXEC_SECURE;
> +	execbuf.flags |= I915_EXEC_FENCE_OUT;
> +	execbuf.rsvd2 = ~0UL;
>   	execbuf.rsvd1 = ctx->id;
>   
>   	igt_assert(!READ_ONCE(*seqno));
> -	gem_execbuf(fd, &execbuf);
> +	gem_execbuf_wr(fd, &execbuf);
> +
> +	fence_out = execbuf.rsvd2 >> 32;
> +	igt_assert(fence_out >= 0);
>   
>   	/* Wait for the request to start */
>   	while (READ_ONCE(*seqno) != 0xc0ffee)
>   		igt_assert(gem_bo_busy(fd, obj[SCRATCH].handle));
>   	munmap(seqno, 4096);
>   
> +	/* Wait for a reset to occur */
> +	gettimeofday(&before, NULL);
> +	while (fence_busy(fence_out)) {
> +		gettimeofday(&after, NULL);
> +		timersub(&after, &before, &delta);
> +		igt_assert(delta.tv_sec < MAX_RESET_TIME);
> +		sched_yield();
> +	}
> +	gettimeofday(&after, NULL);
> +	timersub(&after, &before, &delta);
> +	igt_info("Target died after %ld.%06lds\n", delta.tv_sec, delta.tv_usec);

What does "died" mean here? does it indicate that a reset correctly 
happened? IMO needs a better wording.

> +
>   	/* Check that only the buffer we marked is reported in the error */
> -	igt_force_gpu_reset(fd);
>   	check_error_state(dir, &obj[CAPTURE]);
>   
>   	gem_sync(fd, obj[BATCH].handle);
> @@ -170,12 +204,13 @@ static void __capture1(int fd, int dir, const intel_ctx_t *ctx,
>   	gem_close(fd, obj[SCRATCH].handle);
>   }
>   
> -static void capture(int fd, int dir, const intel_ctx_t *ctx, unsigned ring)
> +static void capture(int fd, int dir, const intel_ctx_t *ctx,
> +		    const struct intel_execution_engine2 *e)
>   {
>   	uint32_t handle;
>   
>   	handle = gem_create(fd, 4096);
> -	__capture1(fd, dir, ctx, ring, handle);
> +	__capture1(fd, dir, ctx, e->flags, handle, e->name);
>   	gem_close(fd, handle);
>   }
>   
> @@ -577,7 +612,7 @@ static void userptr(int fd, int dir)
>   	igt_assert(posix_memalign(&ptr, 4096, 4096) == 0);
>   	igt_require(__gem_userptr(fd, ptr, 4096, 0, 0, &handle) == 0);
>   
> -	__capture1(fd, dir, intel_ctx_0(fd), 0, handle);
> +	__capture1(fd, dir, intel_ctx_0(fd), 0, handle, "bcs0");

Why does ring = 0 match BCS0?

>   
>   	gem_close(fd, handle);
>   	free(ptr);
> @@ -626,7 +661,8 @@ igt_main
>   		gem_require_mmap_wc(fd);
>   		igt_require(has_capture(fd));
>   		ctx = intel_ctx_create_all_physical(fd);
> -		igt_allow_hang(fd, ctx->id, HANG_ALLOW_CAPTURE);
> +		igt_allow_hang(fd, 0, HANG_ALLOW_CAPTURE |
> +			       HANG_WANT_ENGINE_RESET);

This is going to make the test skip on platforms that have full gt reset 
but not engine reset. You can see in the CI results that it is now 
skipping on snb-shards (the change in result is being caught by a 
catch-all fdo, so not reported as a failure).

Daniele

>   
>   		dir = igt_sysfs_open(fd);
>   		igt_require(igt_sysfs_set(dir, "error", "Begone!"));
> @@ -634,7 +670,7 @@ igt_main
>   	}
>   
>   	test_each_engine("capture", fd, ctx, e)
> -		capture(fd, dir, ctx, e->flags);
> +		capture(fd, dir, ctx, e);
>   
>   	igt_subtest_f("many-4K-zero") {
>   		igt_require(gem_can_store_dword(fd, 0));

