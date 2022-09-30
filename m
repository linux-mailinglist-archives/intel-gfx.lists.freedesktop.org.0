Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 903F05F1124
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Sep 2022 19:48:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2C9D10ED83;
	Fri, 30 Sep 2022 17:48:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A72010ED7E
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 17:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664560118; x=1696096118;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=RvOyLYGIfkk//nWq6b6FKf26TWnsNzvk5VXuGOxsdrw=;
 b=BC9m87IFMO+UrTnvXHKzr8yRBF34/tkYpd7GCGeoIQCczVKKbUwK5CWL
 vCzDKSuFicWOgc+JjY4tYkMXNbb8F30syNNKv+d7PCMr37HfWQPC0C1Yg
 HgdUDMaHer2/e44WCEoidB0sCI7wpVC7BZtym6gPc5nJaQ+y2w8MoXr8a
 kXE64I9uWCVdYXefhME1R+DkLobn4gwjo8BrfkpzKnPt921FDWQZI/Ex7
 nO8zOKmdCANrU2qb6dfdLJ+36+M4H0LWNRNgYPedRGnK721cybwSm+YaW
 RLtHLcSsqiD4zQyPXr+y+Vhy+H5ka6+TL0Il8Z6dT2QQyX/jXRqNlhuM4 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="285386736"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="285386736"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 10:48:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="748309836"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="748309836"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 30 Sep 2022 10:48:37 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 30 Sep 2022 10:48:37 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 30 Sep 2022 10:48:36 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 30 Sep 2022 10:48:36 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 30 Sep 2022 10:48:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GnAkoQUo/IQoveNx30lKJ52W85z7Iet2jgpYBzur1NUS5K6U3yeOdhPGrtqfhDTHBDxf9N2iPiNXxwinemQTLeahwUWeS6toSXSvHYqWPhwxqfoPtQCACuBX6eW2nyx5TleIfNg3V4a1A8e0tqacl3JxmN2URCNSBbQiGrazOIJb2UvLCB3ujIlEvjjuQ+hNi56i3jRTKqDT6eScGtDZGi/StnFeRDCXIk7H2DnRRqgb6xHqX87+VJqjhD5fWCGUDKlZDX37n0wn8R2piQKv7umwafULWEtla2mUZAz+es0Bba5VMkxIq6rhlFfOzU0UvVZfTCFL2jswTtAmvsHK2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VedZ5tu/4W+N4+p3yNiC3/UT9esP0I62jTpi6C+AhcE=;
 b=j4pHX19+nVtHmzgpxXO/u3P00Wt1uJ/1yxE684oDMBDLaDlucv4L/LH1YhR2aizfMHs9bZO6ksbCaVRhXezopz6YDiGlbdaOxDbTgRGLl9fo6U5vI3m2EzJ8gEbe+jJHYVOgU4ymBuvlUalfqqB4VaTN6weqD0vFlo3BD+Siulhw5szSOxQ5nc+8b4Pti712T5mAScg9g8zo6Nc05PMy2QFzNCFG+eLm7qskMkqf7MjhlEALPFfVnUyV8dJrtCBNq4r/Db/sC+ccr/wtaoAyMcPoNO8gJ6gA1KB2x+EQ5nuP2i7KhlF/8pDDo2G822B7YOXHcanIqJkV9yV3sMu1mQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by PH0PR11MB5781.namprd11.prod.outlook.com (2603:10b6:510:14a::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.20; Fri, 30 Sep
 2022 17:48:35 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::7750:dd86:4ef:afc6]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::7750:dd86:4ef:afc6%7]) with mapi id 15.20.5676.023; Fri, 30 Sep 2022
 17:48:35 +0000
Message-ID: <49be7acd-79b8-2937-96ec-5a9728006d76@intel.com>
Date: Fri, 30 Sep 2022 10:48:33 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.2
Content-Language: en-GB
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220930010507.108296-1-alan.previn.teres.alexis@intel.com>
 <20220930010507.108296-2-alan.previn.teres.alexis@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20220930010507.108296-2-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR06CA0007.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::20) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|PH0PR11MB5781:EE_
X-MS-Office365-Filtering-Correlation-Id: a16ef178-018f-4f9f-a279-08daa30bff0e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eGn/ro31+cDNJp5C7saDeUZBHfjZQr5rfNkdU3WLHmtrnx8s/e6NXsrNcsiIhiuOkuYORRzZp5XiVct+LWBHaDF0o2bHTtJl0YMevT8jYaUD+gK2y4eTOIRcVgPrv1NYa9jgpsI0GXqONcidg82mhG2b9YWbtVv8gGH9HScomLFATBK0m089Gks5l8/cc80gEKMs+HS4uLa7qyKoAYm8YOJcLoQlWfCZGYS2vjND9LNYWNwagDhb/cjCXuNJq4uvL9jN5wmjmhoO3ruBqAmlViXqbJo5TwpIEd8/6/lQnsL2o99cxKmdh751nFgs5+lv+KtaDUFtwO5gqoG7PZpgwLAp16hTu6K5XTOHTF30dx8ft2bcfu84Ce1c47jXjQF7Thbhg2oI/uBM2D4bEgWx+g+7D9PImtOdJyezL7f6J1tS8QYArbJ1oZjGOZcdrfpfr8DcUv/NnXZSdVMAW/kpXeVmV03bYk/tLS8KMR1PAwMhTBZHPCz9yECLGBVo1NTdvaJ1XBGrlpeuxfJSUSoXfm2rNPkadNqXqWSKf8U728qe0oKoGAND8N0qec1PvhRK1qFhx15ocioegUXcadpoEdTnAMpqvAfSLHuPQr/mMPwdSdiZaIC/QFkcTpr76EJehJ6CAn5jrSanjjWVJrqlf0BlR7k+LQlWROeDMUZHtSivvAPA6v6p9mcWMTOPctEB+3BaTvEfONc6/13ul4/s66lR7ICzdNTQbcYNuPR9PICsNG3HxTlbKiT9k9aVzXNyzWYni+6rHvkEw9SJWrWYF1s7t6n36NFdKQ5Ad7Xa3P8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(39860400002)(346002)(376002)(396003)(451199015)(31686004)(6486002)(478600001)(82960400001)(8676002)(2616005)(86362001)(31696002)(38100700002)(5660300002)(316002)(186003)(8936002)(6512007)(26005)(6506007)(36756003)(83380400001)(66556008)(41300700001)(53546011)(66946007)(66476007)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MzlCbGs1TXlBQTFkeWtPaGpBQ2FVWTkwbitoVkdFNlp4cExQVDQ1OTdEUjN3?=
 =?utf-8?B?RDdtZ2pqTCs3aDNxZmdIVlROTHBFUWNnRUw2dS93a01YQms0ZHFXQmhTeGt2?=
 =?utf-8?B?OU1iVlNzalovMVg4Q3dsdXQ4cU5nWjRqOUJYcWRIK2FKMjFDcmRobi8zaWpQ?=
 =?utf-8?B?OTZ5MFg1Szl2ZHJ1NVpHWXlpQWRXYmUyU2VUVlVWTllBOUNrL0FLT3c5Umdz?=
 =?utf-8?B?RVNIMXIrbWFhSkZrK29Eckl4bHd1VGVqRWJTbXFQRkRyWEtxbUo3dVJCM05F?=
 =?utf-8?B?azRkWGkyTC9WK0E2dDViQ0Q4eHNVdFI0STlTSFc0Vi9oWGFNWUJaT2VNT1Jn?=
 =?utf-8?B?cDVBdUY2SUpGRmQ3RUlTOFlPNFBuR2l3L011Z1lhRTE3SE9LNkZpaWE2NitR?=
 =?utf-8?B?VDNCRXRZY0hRbnlYeEFuNDBqcXArV01lemJBQlFyRU9weHQyakFxYThDSzUw?=
 =?utf-8?B?QVc2T0ZPME5YcDd3a2RSK1NaZjI3Qlh4SGVqN3RZQzMvek9pNjVtRjNPQ1Vk?=
 =?utf-8?B?cmxQdy94QWU3dmR3RDZrVG1NT1VpMmkxM2Q4YzBMS0lVdWtlNDMrK0VrM3ZF?=
 =?utf-8?B?Smkya0gxMlkvMzJDRUFqbTV3RVVtVTVqMWpjajBpR0E3N1VMMkdWOEhvUVZQ?=
 =?utf-8?B?ZGdRMWlhUXdzQVp0SXV2RHZ5bmtMVFFrMHdnRmVka3hJZDVGSW1uSFFVNmhX?=
 =?utf-8?B?S082cTF1MmlITllmZVlIUnoybDJsR0JmS3A1WVhrNzZmLzBnZzFWcHhzdlBz?=
 =?utf-8?B?c05uY1BpOFplWGdSNG5vcmx0bzdNVzUzT3RQbGRDUHNja2NtY3c1RElNTzZm?=
 =?utf-8?B?VVFCdGtUZTFMY1BTTzlEZmxQVWlWV3JDUnBZQy82cXptbEFhNTJYRXVhVFZn?=
 =?utf-8?B?U0t4YXRDRExnSDNwa3Q0OWZKSXFaczJxenQ4TERLY2lxdnBVOUtBNDhxMjlV?=
 =?utf-8?B?LzR3bGJodjQ0RUZtR0h6amY1NVRFeUNkZE1NM0czZGY1akEvMXNJZDNyRy93?=
 =?utf-8?B?VjVMd1NKcjFuYmNobU1aM1FiUWJuT3hNNExmUStPWnJxanMvd01aci9vNFdn?=
 =?utf-8?B?RHJPazNlQVJVQmRaVGRscld1Mzg5QnBiOUd4NllsTGZqYlNDdDVRMElHZ01l?=
 =?utf-8?B?OXBLV3VFcDJvMnRLd2w0Z0xQdzZPYnNZM2hlcS92TTlneW1zcnZVZFZ6Mlkx?=
 =?utf-8?B?SW91TUl4bTE3bERlYmswd1crWlExQkVxMHR5ZWZ6WmJsSjlLVlhvYjNucWhR?=
 =?utf-8?B?RVhlSTBXWTBjcW9PNzQxcFRvcm8raDZPNHJZMnZZRURjOUFmUDhCZ0gwcjM2?=
 =?utf-8?B?WFowZndIK282Q0IraTlDajJrSDEwaG9WOWF3bGt4WmJzZnA5Wlp6cEx6VG1M?=
 =?utf-8?B?SlJFRDVVcXB0NkRtWWR5aFFIeHdxMjYwMjRhRjdLUXlZY3FuUDZJSHBGU01R?=
 =?utf-8?B?YlloU0lwQ2RmekQxaVdEVFlUWVJtSnBISlRtM3VMdldPZkdKeGVIVVdMYi9t?=
 =?utf-8?B?YnYrbFo0VFl4WUlqc2pZVDAwcUpwaUordjNlSGpIdnZTcW9tdFlOdlhZSmpU?=
 =?utf-8?B?UkROR2FidUxMTmMyeEFTNGxkQmRIWUw0bUVXdVZxbHBLNk1nMnZTbmxqTDJI?=
 =?utf-8?B?eXg0Sk02ZUphOG05WnYzb0d0NmdPdWN5YmZaN3J3c2g1VEdJQ245elVUUi9S?=
 =?utf-8?B?QWUwMWlFUjkxVmNKa0lTSGdpUDZXQ0R1RzVlUEd3QnBLKys1Q0dqTllzTFlU?=
 =?utf-8?B?VnhWZ3RxS1BMcFRWVjRSVzdaK2R6WjBreWV1Y1ZsU0FiOEVHNWNuamo1cTh2?=
 =?utf-8?B?UmZLOTc0VHd5UllXZmhUUG9oS21CVXFLS1krOGV1SERmaFpZV2tJZ2hkS3NP?=
 =?utf-8?B?U2d3My9YWXVFcnRoTGw5YjdaREhTSWhzb0Vib1VFUmNQSk9Da0EyL3ozY0hh?=
 =?utf-8?B?VGxUaXUrWThudXdzb216RXZ6N0syS096WllSanVjTm4yOVFLL25SWjNQc0Np?=
 =?utf-8?B?ZXF2SFlGaTZKVktQVVIraThxQ1dnTDNObXpNeGh0ZFFNL0ZwQVo0NTM4clh4?=
 =?utf-8?B?aHNSZ0ticjBHNEZNbzBpeDBlaWlzanM2VS9LRE02bmcrUWhqckRzdGlNMW9o?=
 =?utf-8?B?UzFQektINXNrWDdyWXNHZjJsNlZHLzFaWStaK29GR0lMc0xPV3g5UjNrNEYz?=
 =?utf-8?B?S2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a16ef178-018f-4f9f-a279-08daa30bff0e
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2022 17:48:35.0306 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Rqu/kcRjY1u9/rcHWsGQG2BiEnpXMU0CoqvtLXOgWZ5HpKvvQ5wqOGwkLB0DpHbuKGezp7d14u3W4pMGbLsC65A0X6eMzQrji7u32Vqzbe8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5781
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Fix GuC error capture
 sizing estimation and reporting
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

On 9/29/2022 18:05, Alan Previn wrote:
> During GuC error capture initialization, we estimate the amount of size
> we need for the error-capture-region of the shared GuC-log-buffer.
> This calculation was incorrect so fix that. Additionally, if the size
> was insufficient, don't drm_warn or drm_notice, just drm_debug since
> actually running out based on that estimation is a corner case. It
> can only occur if all engine instances get reset all at once and i915
> isn't able extract the capture data fast enough within G2H handler
> worker.
>
> Fixes d7c15d76a5547: drm/i915/guc: Check sizing of guc_capture output
>
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>   .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 31 ++++++++++++-------
>   1 file changed, 19 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> index 8f1165146013..cb62507c91ce 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> @@ -502,8 +502,9 @@ intel_guc_capture_getlistsize(struct intel_guc *guc, u32 owner, u32 type, u32 cl
>   	if (!num_regs)
>   		return -ENODATA;
>   
> -	*size = PAGE_ALIGN((sizeof(struct guc_debug_capture_list)) +
> -			   (num_regs * sizeof(struct guc_mmio_reg)));
> +	if (size)
> +		*size = PAGE_ALIGN((sizeof(struct guc_debug_capture_list)) +
> +				   (num_regs * sizeof(struct guc_mmio_reg)));
>   
>   	return 0;
>   }
> @@ -606,7 +607,7 @@ guc_capture_output_min_size_est(struct intel_guc *guc)
>   	struct intel_gt *gt = guc_to_gt(guc);
>   	struct intel_engine_cs *engine;
>   	enum intel_engine_id id;
> -	int worst_min_size = 0, num_regs = 0;
> +	int worst_min_size = 0;
>   	size_t tmp = 0;
>   
>   	if (!guc->capture)
> @@ -628,20 +629,18 @@ guc_capture_output_min_size_est(struct intel_guc *guc)
>   					 (3 * sizeof(struct guc_state_capture_header_t));
>   
>   		if (!intel_guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_GLOBAL, 0, &tmp))
> -			num_regs += tmp;
> +			worst_min_size += tmp;
>   
>   		if (!intel_guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS,
>   						   engine->class, &tmp)) {
> -			num_regs += tmp;
> +			worst_min_size += tmp;
>   		}
>   		if (!intel_guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE,
>   						   engine->class, &tmp)) {
> -			num_regs += tmp;
> +			worst_min_size += tmp;
>   		}
>   	}
>   
> -	worst_min_size += (num_regs * sizeof(struct guc_mmio_reg));
> -
>   	return worst_min_size;
>   }
>   
> @@ -658,15 +657,23 @@ static void check_guc_capture_size(struct intel_guc *guc)
>   	int spare_size = min_size * GUC_CAPTURE_OVERBUFFER_MULTIPLIER;
>   	u32 buffer_size = intel_guc_log_section_size_capture(&guc->log);
>   
> +	/*
> +	 * Don't drm_warn or drm_error here on "possible" insufficient size because we only run out
> +	 * of space if all engines were to suffer resets all at once AND the driver is not able to
> +	 * extract that data fast enough in the interrupt handler worker (moving them to the
> +	 * larger pool of pre-allocated capture nodes. If GuC does run out of space, we will
> +	 * print an error when processing the G2H event capture-notification (search for
> +	 * "INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_NOSPACE").
> +	 */
>   	if (min_size < 0)
>   		drm_warn(&i915->drm, "Failed to calculate GuC error state capture buffer minimum size: %d!\n",
>   			 min_size);
>   	else if (min_size > buffer_size)
> -		drm_warn(&i915->drm, "GuC error state capture buffer is too small: %d < %d\n",
> -			 buffer_size, min_size);
> +		drm_dbg(&i915->drm, "GuC error state capture buffer maybe small: %d < %d\n",
> +			buffer_size, min_size);
Isn't min_size the bare minimum to get a valid capture? Surely this 
still needs to be a warning not a debug. If we can't manage a basic 
working error capture then there is a problem. This needs to be caught 
by CI and logged as a bug if it is ever hit. And that means an end user 
should never see it fire because we won't let a driver out the door 
unless the default buffer size is sufficient.

John.

>   	else if (spare_size > buffer_size)
> -		drm_notice(&i915->drm, "GuC error state capture buffer maybe too small: %d < %d (min = %d)\n",
> -			   buffer_size, spare_size, min_size);
> +		drm_dbg(&i915->drm, "GuC error state capture buffer lacks spare size: %d < %d (min = %d)\n",
> +			buffer_size, spare_size, min_size);
>   }
>   
>   /*

