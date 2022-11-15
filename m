Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30384629127
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Nov 2022 05:18:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DE0510E012;
	Tue, 15 Nov 2022 04:17:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00D7D10E098
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Nov 2022 04:17:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668485875; x=1700021875;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ah9uFhUQxhh4gLSMQMBrQY1jDNvqK7xU24AKxdyUyx4=;
 b=SLiExB8RiEMJFVoR+1uAhRWdyc2VLIcihYA6OdEHkz1+yW8t97V6tjLh
 +RD07+fjCHTzsXOCZSrgqBoa1lEhXce73Kpx43x+ezmatY6z1uMfvj0YB
 Sti8v5o1EnYj72fSbalYsbCDEhXrAXlVrS8MDmJbyDEz3Yjmn81PcXGz8
 y/GU9CNqN5V0/1HKHcOsYJNuTGI1svLyxi2mEvnZPKNcS8QMJAGVauRd4
 jjV8ix5hFt1HW/Au/n9mqHLHHC3WqoZLIgxI1Y2xGBMLW9kom10MdeAGp
 Mup7nIgJRf/Z9fuAly8xE21buMVhcbVJvtxKFIib/rH/utA4CGlukLmS8 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="338949981"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="338949981"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 20:17:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="763771653"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="763771653"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP; 14 Nov 2022 20:17:54 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 20:17:53 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 20:17:53 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 14 Nov 2022 20:17:53 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 14 Nov 2022 20:17:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c/giVhmWAz3//IGrZ+bjBTKaaeDhF1gztQ4vRuMsqaeq3w0P7NFN97c+4kUv6e80rSRanwabpxmip+JXhi8H/Kvn2CZty/XB8tY4+JpJugDCTijZSYTb7D5NI89Aznr8DGiHUB9IxrPML/o2khzo1401obFUjV61pNre6nU+kgEDsaG93rH08AO51Ay20nCiJekNvtPivoApianWsEwxikwf0kVLuKUyWgL/hzPA46NvuCdGOaFJ6gfa5ysscjS9l98QDHH4NdGYrgqibrmle5lQFFwkDLgcZfIXjcAOciPKHbtp1HIB3mvUGEWxUYs7BMWeStcA5VNHZcW3SjSEIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uOoIamZ1js6YBRplekpZrcvFMSC4gU56CRJvoaGvRZA=;
 b=BPNXND7URWZQE3E667jSn8fAIoQ7z55DA8rE8TfToao3gCQh5YEmxqtUm15ssMa/EomYdizu+d9u2ZEjLC6dO8RxAR6HkM5KD2feq30FMThDsrai/J31fhd9SDalE4AH6nkEA/eKPAym7bRpN7AnWqXcRrEGD96Qo2lvkF1A3xTrv+49xdV8AjqlearARmkmlxr+u9inbkZBsbgUAXRjuqEZD6nw+Dgqw1FzWMeuXZ3ot0gWoMQqYBoXutW1OaPkn5hdQgNwLGhVrHUk52w8I7PPPiEnyInjQUx4J5Tq8TJD3FuBpymDZ07pld/rJnHCRTHpG4bZUGfpQ1zR07FoaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 BL1PR11MB5493.namprd11.prod.outlook.com (2603:10b6:208:31f::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5813.17; Tue, 15 Nov 2022 04:17:51 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::bff2:8e4f:a657:6095]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::bff2:8e4f:a657:6095%5]) with mapi id 15.20.5813.017; Tue, 15 Nov 2022
 04:17:51 +0000
Message-ID: <52dcfbbc-763f-fec2-8c35-9fdb5df1e8e7@intel.com>
Date: Mon, 14 Nov 2022 20:17:48 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221021173946.366210-1-alan.previn.teres.alexis@intel.com>
 <20221021173946.366210-4-alan.previn.teres.alexis@intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <20221021173946.366210-4-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0354.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::29) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5488:EE_|BL1PR11MB5493:EE_
X-MS-Office365-Filtering-Correlation-Id: e49dad8b-e909-4b13-0ca3-08dac6c05c20
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HRqU6+RvE6NdLGbR6l4l9ZzCK5VeOaTr406WXe0ZBvm6dcdxfbVng/XjR+774z2noffXv/eSwg6rZ0SVeZ5Qus023xYx0SeomVDcov3ZFAXVbbxNwiobEhvrBlbweJSOnPNjFwNXa7LKGtQ1PwHovltMCZKqv2GXJezkDI8iHd03MCUIwXgAVQQGrq8xrzHLJdjSjpwkn0tvaMtrszUIaAZS/dXt1OTlaIVyRWJtN1vG2dFOAWbNvpLoW/YJW44e7KhkMvZfbooXE47wR1zvYhQjM6+56mpaiPFvTOU7QMpjI7nbMcexNuBeNvLc9xfRl23A69iPCgpRyuSdAPV+9FWLovDCUDCts3VP7wQ+CUX2JZeZ/81Nkhkrpru3uAEjmvps4mrMGNHwVuUyVdBI4sDpx69PLf3ioSulLwP5iFJ6UZHs/nUmX3//05s7KYdVHSLWoIzpWSFD9BdMQwQn/EWx5XBy1UwyoiBalLReVPe8zqXR7mG981lCRNe0GDnZb+ZvFS3bkQgp84cLXUTu9RgmeoSgtnMJm8s35kBhFg7q5GYcuAIUP8ikqijGUejBHM6L7onNqz4FJibRnVwQlp2VkqIHmqVWua4QbhB01wnAP/GAcA3HtvaQnv3zEc8VZhyTyKwG+pM1cQjSEwSTPHGaUPkQaNLjho/uOBgk7m0lIXrekGXiVQNhhVjQ5+ifVgf4fSBEbYWTouxhiodvCtsELuF1xCKxE7gbrV08ROSg4P8qlxF/ZCuYm4tAX9jNihYu6Q/B+XzQYObvzhE5bjFYPH8g2fQs5+8vsnLfXCQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(136003)(346002)(366004)(396003)(39860400002)(451199015)(31686004)(36756003)(86362001)(31696002)(6666004)(6512007)(8936002)(83380400001)(38100700002)(186003)(6506007)(53546011)(2616005)(26005)(6486002)(82960400001)(41300700001)(316002)(66556008)(66946007)(8676002)(66476007)(478600001)(5660300002)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SmZzcG1WQzVJeGJYTkZwRlZEZHN2am04OUhNMXBhOTVPcWlFWVd4b2l1VW53?=
 =?utf-8?B?MUZuaHJDOTBTOUd2Z1RtWWhmenZQeFcySkoxY0F3M1hsZmYya0tBUGVSczJ6?=
 =?utf-8?B?dmFnMSt6YmhlZFRqZnNoQ3Uzd1RtM2ZpMGtseDZWcEg0YXhnWkJpKzNFOEk5?=
 =?utf-8?B?OXlCb2hhSTNHNzczUzdIS21WZythR2VhekxXejZScHpveFoycGZFNGRjV1Z1?=
 =?utf-8?B?YU42L3dnMWJyakJQeEtyOERHbUdtUUxQTW1VZXBZR3dWcTlDdDQ3QVNuMGND?=
 =?utf-8?B?b2d1VzhrZElQcmxmQkYyWUVyZzQ2R1FKeDU2S05rcWdXYkIydXNSQWdBQUdr?=
 =?utf-8?B?NVhMWWlqelJwNEZOempBeE1QUGs2Um5uWFFaWUxPNUxiTWZJN1ZwajN3MWZB?=
 =?utf-8?B?a00vZ3hQZ2VpUWJYQ011a0VyT0VnRHZoSmd5NS9HQllrb1VkU3UzM3dJUWV4?=
 =?utf-8?B?WVBnaXFLUlk5blRERGNteU12bGZCUE1FSUFNQklLUVRZZ1hWK0piMnY1NE5z?=
 =?utf-8?B?YVFEcmxtUWZFT2JBd1BPWVFibmV3bVZZcUJydWRiK3NzVEg0QW9ZbHNTTlpN?=
 =?utf-8?B?d2RFWWVWMUpoYm1sZFRoOVZCa3BnTXplUHhaZ2FTZk1Kb2ZZZGkralpCYS9p?=
 =?utf-8?B?TVRRbHY3Zzd4NWZDSVhJTzF3MmxSOTd2dkVRUlNxdGE3YUh3aEFkZnVuSHBD?=
 =?utf-8?B?eWhlMWVaSjEyS3NUcjlPbzZIQkF6UHhmdG1wVFpOdzZjRkZDRkhRTzFqR2Js?=
 =?utf-8?B?bkRLeWZFQTczUU9KcVV4RnRQN0kvZ25DWURCYkhyN0tSRWJST3JVOFlaMDZH?=
 =?utf-8?B?TndyYUM5aXIvQWM4Qnl1TXRMNnd1VlBxMjdxc2JtQVdGdmtuWHhDM0NRWURS?=
 =?utf-8?B?L01acUVpdWE2cTRzSEVMUU5ycklhRzRHOHNJZmFELzZFUlJZWkpaSGZ3VUVx?=
 =?utf-8?B?TE1GWk5VTlZndEd0QVZOb1YrbHlEWjh2ZEVod0I4eWUwS0FPMmZGS2diUG5a?=
 =?utf-8?B?L1RoaFRCZ2piZXYrcjFFZFpvcForQnd6dk02VjMxTEhxZjB6SSswKzVxdGlK?=
 =?utf-8?B?QmhwOUhWQTU2QWVlcWN2QzlBVk42WWppSEdOemVkN3h3Tlg4Z0NTY2ptVTZx?=
 =?utf-8?B?YXpRK3NxbGFKbXBrN2lQVWkzb1dmOXczTFVLYW9zb0plWHd0V01Bb28zUFVV?=
 =?utf-8?B?T0kzdnVBYUx5VmdzRzVYNFYxWXdaKzFNMWdYeVp2enJVZXlxcXVUeWVyQk1y?=
 =?utf-8?B?MVFHYXFHY3orS1BkZGN3Y252UnVQV0VMYWdVbEUwOW5MdTJCRHYvNGpyVGVM?=
 =?utf-8?B?b1JGMXZycE5jWkk1TTNReUNZWGRqNkNkRHV2WjFENG5DekZKR3dUWHZjMVRq?=
 =?utf-8?B?aFRHMjBCMjl2aFdHZ0lOcDB1NW9kREVyN0NGMk5aaCtSVllDaDFsb3E1OHRC?=
 =?utf-8?B?SDA4RHhGR0k5WlBqaStOdjllbVNzUzE3WW5tYXh6MHc5Q2M0cUJYb3hOZ2da?=
 =?utf-8?B?eit6a2R1T1dGZ04wWkkzbUJaU2xHUU9vc2V4MVBpVnl4SXd0SXYvLzRzNzY2?=
 =?utf-8?B?Y0tRMXkvbHlqUC8rSDdwTGFlK052Q3BYRk9OaGlkTzRBWURGa29MbFI4L09N?=
 =?utf-8?B?UWx5WEVONHYrVE9EYVhpKzBoOG5tYlRERzdPaVl6WjMyVENXRzcxMkk5OFVB?=
 =?utf-8?B?MWFndXhHWWFteVM2N0hhV0VxZWFZV2ozOGdsd1NxM0sxMVJidWU5ZXJWVzBK?=
 =?utf-8?B?N1JaZFQzZ0tZemFJci9TS29iRjUxNitCQlBHVWNwaHVDcXlFL2RLQ3IvS3p4?=
 =?utf-8?B?MTR5RXcvcmVQYzlZRHZjY29qZyt0MHdBVUdjVE1LNE9JWHNqelJIV3Z3VUVO?=
 =?utf-8?B?NkxSaG1KM08vcDh4T0h3elpVNlB3N0JPcU5zZm9veW1rVmVkYU9lVWxVQ0ZS?=
 =?utf-8?B?Z1JiKzVrREVRWTcvbnlCYzM4ZVd2d1VlTFFjMnJ2S0FLdVhjenl4anJYSGdX?=
 =?utf-8?B?UGxYSDNNYW94MlloSTErSVFqQUQvRmFEQ0NoeUdHVTFYVkgzbEJYbzhQS0ZN?=
 =?utf-8?B?S3pqSXhlMC94ZUJVd1hsT0ZvVVdKUzA1OTkzdHlVY28rZXRSYUtRU1FGRzNs?=
 =?utf-8?B?WnNxZkRQT0NveXpNS2twZkNJVkFudGdIL2ttVjFodURhOEMrOFdtbVJPRXU0?=
 =?utf-8?Q?XMDVL27wJwlKQFXAUnydGX4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e49dad8b-e909-4b13-0ca3-08dac6c05c20
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2022 04:17:51.4532 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7omvg92aeydTu1pkMRdXH4z3TH/Dr//VxORFx2ET3QeGEgYb2EdhMjOzzc2NPSyEX4oGh/YXtv3b+aE5nRlSW92Nm3/NC8Gm/uhRevVQu9E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5493
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 3/6] drm/i915/pxp: Make
 intel_pxp_is_active implicitly sort PXP-owning-GT
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



On 10/21/2022 10:39 AM, Alan Previn wrote:
> Make intel_pxp_is_active a global check and implicitly find
> the PXP-owning-GT.
>
> As per prior two patches, callers of this function shall now
> pass in i915 since PXP is a global GPU feature. Make
> intel_pxp_is_active implicitly find the right gt so it's transparent
> for global view callers (like display or gem-exec).
>
> However we also need to expose the per-gt variation of this for internal
> pxp files to use (like what intel_pxp_is_active was prior) so also expose
> a new intel_gtpxp_is_active function for replacement.
>
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c  |  2 +-
>   drivers/gpu/drm/i915/pxp/intel_pxp.c         | 14 ++++++++++++--
>   drivers/gpu/drm/i915/pxp/intel_pxp.h         |  3 ++-
>   drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c |  4 ++--
>   drivers/gpu/drm/i915/pxp/intel_pxp_irq.c     |  2 +-
>   5 files changed, 18 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 72f47ebda75f..798e77398acc 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -271,7 +271,7 @@ static int proto_context_set_protected(struct drm_i915_private *i915,
>   		 */
>   		pc->pxp_wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>   
> -		if (!intel_pxp_is_active(&to_gt(i915)->pxp))
> +		if (!intel_pxp_is_active(i915))
>   			ret = intel_pxp_start(&to_gt(i915)->pxp);
>   	}
>   
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index f7c909fce97c..15f7983f6da8 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -97,11 +97,21 @@ bool intel_pxp_is_enabled(struct drm_i915_private *i915)
>   	return intel_gtpxp_is_enabled(&gt->pxp);
>   }
>   
> -bool intel_pxp_is_active(const struct intel_pxp *pxp)
> +bool intel_gtpxp_is_active(const struct intel_pxp *pxp)
>   {
>   	return pxp->arb_is_valid;
>   }
>   
> +bool intel_pxp_is_active(struct drm_i915_private *i915)

again I'd suggest a different name to differentiate the 2 checkers. 
Considering the only calling of this is from outside the PXP code is to 
decide whether to start the arb session or not, maybe rename this to 
intel_pxp_has_started or intel_pxp_is_running and leave the old 
intel_pxp_is_active as-is?

Daniele

> +{
> +	struct intel_gt *gt = _i915_to_pxp_gt(i915);
> +
> +	if (!gt)
> +		return false;
> +
> +	return intel_gtpxp_is_active(&gt->pxp);
> +}
> +
>   /* KCR register definitions */
>   #define KCR_INIT _MMIO(0x320f0)
>   /* Setting KCR Init bit is required after system boot */
> @@ -300,7 +310,7 @@ int intel_pxp_key_check(struct intel_pxp *pxp,
>   			struct drm_i915_gem_object *obj,
>   			bool assign)
>   {
> -	if (!intel_pxp_is_active(pxp))
> +	if (!intel_gtpxp_is_active(pxp))
>   		return -ENODEV;
>   
>   	if (!i915_gem_object_is_protected(obj))
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> index 61472018bc45..70383394adb4 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -16,9 +16,10 @@ struct drm_i915_private;
>   struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp);
>   bool intel_gtpxp_is_supported(struct intel_pxp *pxp);
>   bool intel_gtpxp_is_enabled(const struct intel_pxp *pxp);
> +bool intel_gtpxp_is_active(const struct intel_pxp *pxp);
>   
>   bool intel_pxp_is_enabled(struct drm_i915_private *i915);
> -bool intel_pxp_is_active(const struct intel_pxp *pxp);
> +bool intel_pxp_is_active(struct drm_i915_private *i915);
>   
>   void intel_pxp_init(struct intel_pxp *pxp);
>   void intel_pxp_fini(struct intel_pxp *pxp);
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
> index 13f517f94bae..7f304b421633 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
> @@ -25,7 +25,7 @@ static int pxp_info_show(struct seq_file *m, void *data)
>   		return 0;
>   	}
>   
> -	drm_printf(&p, "active: %s\n", str_yes_no(intel_pxp_is_active(pxp)));
> +	drm_printf(&p, "active: %s\n", str_yes_no(intel_gtpxp_is_active(pxp)));
>   	drm_printf(&p, "instance counter: %u\n", pxp->key_instance);
>   
>   	return 0;
> @@ -43,7 +43,7 @@ static int pxp_terminate_set(void *data, u64 val)
>   	struct intel_pxp *pxp = data;
>   	struct intel_gt *gt = pxp_to_gt(pxp);
>   
> -	if (!intel_pxp_is_active(pxp))
> +	if (!intel_gtpxp_is_active(pxp))
>   		return -ENODEV;
>   
>   	/* simulate a termination interrupt */
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
> index 8e8e5645e4fc..cd97f8d8cc10 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
> @@ -86,7 +86,7 @@ void intel_pxp_irq_disable(struct intel_pxp *pxp)
>   	 * called in a path were the driver consider the session as valid and
>   	 * doesn't call a termination on restart.
>   	 */
> -	GEM_WARN_ON(intel_pxp_is_active(pxp));
> +	GEM_WARN_ON(intel_gtpxp_is_active(pxp));
>   
>   	spin_lock_irq(gt->irq_lock);
>   

