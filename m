Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 936CF8573F5
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 04:16:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B97F610E3C2;
	Fri, 16 Feb 2024 03:16:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mXFEqD9C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BB6210E3C2
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Feb 2024 03:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708053373; x=1739589373;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ImqEsxc187OXm6dIbAR6h3ignfcp4hFy3NgAfxc0LfA=;
 b=mXFEqD9C99T24yuDdKuJT83HZnpZiTRbjpsf+re0gmC1P3CTBu9PICM6
 te0GYEAfz5mOSdKzSLlE31cFtqXFDpzcvlGhq6AL5BIIUxUXFcdLUHzPw
 pSVrE2Sf650vNj3joenbAhOuyouEpUiDXVi1mAFOX1lvkwr7lMaqyD2oI
 peIxO0qwgzPLrH/Iayfgs4nhklm9c6LiHTtKSOj9405rMbUz2QUDlHU8X
 byN4lSU3uX8VsPbWt1XAdvJNO/Nsw3ho0AscDlfgGICgmt9f6qJGveuyn
 5R6+JxhZ+kUn4aXCaCHx6bKETtYgVIrTFRuWkRarxBKr9kfAde/JkZKvU g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="6006169"
X-IronPort-AV: E=Sophos;i="6.06,163,1705392000"; 
   d="scan'208";a="6006169"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 19:16:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,163,1705392000"; 
   d="scan'208";a="3710650"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Feb 2024 19:16:08 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 15 Feb 2024 19:16:08 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 15 Feb 2024 19:16:07 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 15 Feb 2024 19:16:07 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 15 Feb 2024 19:16:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aVciVIaoWpaJLXrss39TqLTK5FhG2ncQ58R8zqyXRUzkRIZ0L0qykuVDJWIIIE8YWoYuwKRkMe1zV22/xT9G9KL4Trk7RVho98IKNdVr1zDgSwWtpik6Db/CVqgscwQarIVMZXWLvDNixh2FgqUcwTJvJpmoA0H0C3JMkDTiks5agQRp2dCPcMINTDix+XQ+5oxFT8e2I8/SvMm8jVBaGbci0iGP2bsV/a0PT8zn73M+k86fLb70hWmrCb6MKAb+0JW0bNPgVPfDP1l4FJu5IomAfFLEa6Bdho5rxa52m+OPRuFcKkRnfV6cvfonDKjmcBwIq22BZwhcNz6nK4BH+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F2BteePwMYyFLWyf4zdMi5HHdumDcuhwUj507c4cOLg=;
 b=TapXz0eaCnXJX9u7TKmHRCKRvBwrK61lg1BsHURJRe9VbcABAnR5AfT+hrpJJmMdfK04cnYzt2x5TuPqgEsQC7w91Lh5CQdUiHCh3JPRft5RqIlfR8pJFO3uNf5Uz1WYqJ+DuyEar5MGPj08REgmvDjDGOE77f3mb0gmLGlPO9HzDRFereHpOpkaZu5D7hsNWOcRUZuvqz1UQjol5kJ4fLYrZ8OWROXyqNIX2gyRzC2uc+4EZQP6px0gZCALPknHRKD1S01Fec4FvTvAIg0rV5DrObDWDey5qArUtsST7odStzFRIoDw4DNCe93f0l6RnOTBULUv70zQ6zakWed8sQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB6453.namprd11.prod.outlook.com (2603:10b6:8:b6::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.35; Fri, 16 Feb
 2024 03:16:05 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::12b:4490:b758:75c2]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::12b:4490:b758:75c2%7]) with mapi id 15.20.7292.029; Fri, 16 Feb 2024
 03:16:05 +0000
Message-ID: <2a1c4d11-ff8e-48b4-b5cf-81b4428ca3f2@intel.com>
Date: Fri, 16 Feb 2024 08:45:58 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/13] drm/i915/hdcp: Allocate stream id after HDCP AKE
 stage
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <jani.nikula@intel.com>, <uma.shankar@intel.com>
References: <20240215105919.1439549-1-suraj.kandpal@intel.com>
 <20240215105919.1439549-13-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240215105919.1439549-13-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0177.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:de::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB6453:EE_
X-MS-Office365-Filtering-Correlation-Id: 0957244b-49e1-4ec9-7dc9-08dc2e9d9c6b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OliKd2IBYvQMvV2dzLVQ4E5PaYYeMksAfKS7x3042X86n4mqRXYHfX+HFDGrudnM6iyCaBEPMaxpNFdAC36N1hZZPYoyc5pJpgv71/wFnz5jFh0uq00T+quMkYZ/vF7TGOvOuCaNe/KMtCGK8HbRZcU6r8DOudeAtW3C097Rg00L/JE98QQcdfH7OThxsqJIVEHLoCmtsh7KW6wNQ5QGKqORpxX4dAyLWh+A0OYF/IfAoofhTTs1NoMiR9uX77bb7tcWvhaw4lnxwLBaWMjxEpStDRBt2pSBHfbwZkK9jVqDNO4dOHVAHoUGzHJHoP6vvb/cszI9LPCa3mVUfFXwOErQp4d4TjdoEjjdSqKgdDWRD3UuOgq4OcW3oAndbf/NCxX0Qi2JIVLuy5+KBGY7WAem5Uub8G8K/a07ONoRzhoMEZxvHH7eljGAr0WRcDqb5imLZ4h4/y3kA/kXV9YrV0xqbDDEQcPjfx+/NuHq0d9jh4fqungm5utHgDmVXb16uWSPGyzwZg6VOSg4u0gQ0lmkYwSK0JlLunTbR89aulJJgkqUxF++Zd62ZuWZ29vU
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(346002)(136003)(366004)(376002)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(2906002)(6506007)(36756003)(6486002)(6512007)(6666004)(31696002)(53546011)(478600001)(2616005)(5660300002)(41300700001)(4326008)(107886003)(8936002)(83380400001)(66476007)(316002)(86362001)(66946007)(26005)(8676002)(82960400001)(66556008)(38100700002)(31686004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UnVqOGpKc3JpSlJ1QkhraDBjNko2dUhQcU1OVkNyTVNzdGNVY2JSZmhrMGpa?=
 =?utf-8?B?YlF3b1Z6QzFBWnQyTmJRa3Fxa0xOUnRmTWt2Y28ra3dlVkZ0US8zWW5zRFV0?=
 =?utf-8?B?WDZYWkZLRHN6Q0xzQ2ZMR0tNN1pwdVdCWHdKNVY3ZXN3Z0ZvZHMzejFETnE0?=
 =?utf-8?B?aDlKeTJ3c2daRTJXUlVwL2lzUU5xeUtGckhzZHNaMWJPVldTbGc4ZExyRVJI?=
 =?utf-8?B?YUI1aTZMcWsweU92bjEzM3g5cWRKQy90RDhKVzVBelRlTTNQb2NMQURrVWdS?=
 =?utf-8?B?TzRSMlBxZzJFaWxVKy9ka3FhTWJhREl5cjNCemNpU3lvZlpWRDhDQWpNNUVh?=
 =?utf-8?B?UW1XTWhxV2NaVjFyU011eWxDeThjeWhCMDhuYU5JcnA0Z0xMZ1dtSWRrZWs1?=
 =?utf-8?B?VXAzN05yZFd3ekk2SEV6L3VvekthKy9GcEI4a2V5TEZZSUVXT0Q2RmRBdEFH?=
 =?utf-8?B?T3MxRC9lOU9SRGdNNTF3emN1Y0dlbnA2d3NtSWxJRWNORkhvY0ErV21vVW44?=
 =?utf-8?B?ZzNyMENyT1J1YkY2ckJGK3BVek9XeWdGTW5FakdRbWZVaFd3YmR0UDZvTTh6?=
 =?utf-8?B?aXVKcUNOSEowWEJKK3F5WVlFMmthNXRLdFdhNzg4emZkcGVQb1JGS1NENEhY?=
 =?utf-8?B?Z3kzcTFKdHlVS29MWFIwZHM2ZlhpYnNvZTBUVXpCbVk5R0lqVWlNbTBkZEJU?=
 =?utf-8?B?ZjRiSFVPNVdWUUQvaDJpaTVHd3JEWTB4QmlCSmVtZDRNMlZGSmFLSThWZHdO?=
 =?utf-8?B?VERJdkpJMGZ2UXpNc1h2VGFVaFBka05HZzlZc2ZQK3B1ZTl4S0s5a1V2RW16?=
 =?utf-8?B?TkZOeEV6eHZrcWhOUmFQbUVqak9pT3N0cVFmL0NOeHNUWFJyQzdrekJiTFJD?=
 =?utf-8?B?d3FkdElJaTh6aG5pcU13MzJPcnl3akJZOVhlQ0lhZm4ydDdnV0tua1dwOE81?=
 =?utf-8?B?d0lkUk5NWjFRU3dOcVplOHh3QzlHb01CL09CUXJjQUtBZ0hTR01oTHJWaWdo?=
 =?utf-8?B?cm1oYW5yYzJNQnExcmErai8rRytXTDVJTmVSZTBKdEJOek1vai9YeTZiK0RZ?=
 =?utf-8?B?RUdqWjZ1eTBiOGZDM2pqNk16VnRmZU5xSk00UFM3b1E1WUY0YWErUUcrYVla?=
 =?utf-8?B?Z0NwM09KeXhHS2R2WkFBTmU4L2VOV2JMNjRSYnU1MGprNytTenhzMS9LR2JT?=
 =?utf-8?B?QXQ1b3VuTm1SY0t5em9UaDFYTnBYMkJGdGlnYlJIKzg5OFFXTXJlYWdaOGtX?=
 =?utf-8?B?SDFTRU1zSlhFemtMK3B2Rkg3bzhWUktxcXhXWHF2TVpzMVZMS2FsWDcxVmw3?=
 =?utf-8?B?QTFyZGxFeTNBdlZwcXR4WVh2V3hGQU10SERZbUZBZFJVZmlCMDlGS3ZMSU5Q?=
 =?utf-8?B?WThPUVNtckJITUt2QlVJcnFpUE82N1dvdUx0Y1pneW4yOE9ONzB3UlBKYkdT?=
 =?utf-8?B?ekthTmlNL09ndXR1RndUQndIR050Wll1SW9xVm9XS3BOeGdibXdOYXNrMVJl?=
 =?utf-8?B?TEN0cVgvNnduSDdmbzNFS1ArSkFXS0UxRHZGWnQ3ME15U0hCVkszOGlmemx3?=
 =?utf-8?B?M2FUaStpMlJhTnprUElMYm1VWDlpdyt5c25ML2g0YU9xVXc0c1lYQlczVzJT?=
 =?utf-8?B?MmRZcTZ2YmxCaUdONlNhQm5MTjFTQ0dHeDZndlF1aGhXVjRTRUpVbUZ4S29l?=
 =?utf-8?B?N2xkeEVWYTRwVThoZVU3KzBpTk1FemYrVFdzR0NHNDNlU1lVODZOZ0ovcy9S?=
 =?utf-8?B?Mkl0azFySTRVdXRYOEdiZTEvdE9CT2Z4dnZKazgzNkRsKzViTFRsVy81L2hW?=
 =?utf-8?B?MEdGUHV2anB5Ti9STGZXUUdrQXBDbENoeGltcnlaUVNKcE5YamZ4MmozK0Qx?=
 =?utf-8?B?d1JBNk1YenNuN1UwL2Y4bVZOOVRJY2lUU3dOWU5uRmhvT0k5YlNjR0NnVDNW?=
 =?utf-8?B?R2dtbVpuWWt5SlNIcS9mUE94am5qYWVJL0lDV3NpUVpndkc4ejZEUTJTVTBr?=
 =?utf-8?B?TjFMZE54Q0JNSWkyNVNVZUlTUjVpczlGRmxocExoU0RlSU5Ra05vZ3VIcnJI?=
 =?utf-8?B?S1FBV3JLTHF0aGlSNXZWb3NuNnpyUHpydVlTait4MVhqblFhM2hiL3ZCV1Vw?=
 =?utf-8?B?cDQ3SFJnNzRwVGhTZUxiVnVFODJUMGNhOUFzcHBlT0puRm5RUkR6WG1ienBz?=
 =?utf-8?B?QXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0957244b-49e1-4ec9-7dc9-08dc2e9d9c6b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2024 03:16:05.2065 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9johzIvMTMHb4bbLBshWYT1h9MM0V4bjjnzPej3aF9G+8SQN/sK0XNNcMxUpkH8T9GMMPV65/N24LXyL6hjZeHUqxNx9pDkx2aTfo93ItfI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6453
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


On 2/15/2024 4:29 PM, Suraj Kandpal wrote:
> Allocate stream id after HDCP AKE stage and not before so that it
> can also be done during link integrity check.
> Right now for MST scenarios LIC fails after hdcp enablement for this
> reason.
>
> --v2
> -no need for else block in prepare_streams function [Ankit]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdcp.c | 138 +++++++++++-----------
>   1 file changed, 66 insertions(+), 72 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index ad05ab899706..be7d5a3ce49d 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -30,7 +30,7 @@
>   #define KEY_LOAD_TRIES	5
>   #define HDCP2_LC_RETRY_CNT			3
>   
> -static int intel_conn_to_vcpi(struct drm_atomic_state *state,
> +static int intel_conn_to_vcpi(struct intel_atomic_state *state,
>   			      struct intel_connector *connector)
>   {
>   	struct drm_dp_mst_topology_mgr *mgr;
> @@ -43,7 +43,7 @@ static int intel_conn_to_vcpi(struct drm_atomic_state *state,
>   		return 0;
>   	mgr = connector->port->mgr;
>   
> -	drm_modeset_lock(&mgr->base.lock, state->acquire_ctx);
> +	drm_modeset_lock(&mgr->base.lock, state->base.acquire_ctx);
>   	mst_state = to_drm_dp_mst_topology_state(mgr->base.state);
>   	payload = drm_atomic_get_mst_payload_state(mst_state, connector->port);
>   	if (drm_WARN_ON(mgr->dev, !payload))
> @@ -68,19 +68,52 @@ static int intel_conn_to_vcpi(struct drm_atomic_state *state,
>    * DP MST topology. Though it is not compulsory, security fw should change its
>    * policy to mark different content_types for different streams.
>    */
> -static void
> -intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
> +static int
> +intel_hdcp_required_content_stream(struct intel_atomic_state *state,
> +				   struct intel_hdcp *hdcp,

This still needs to be removed, since it is not used in the function.

With the above fixed, this is:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> +				   struct intel_digital_port *dig_port)
>   {
> +	struct drm_connector_list_iter conn_iter;
> +	struct intel_digital_port *conn_dig_port;
> +	struct intel_connector *connector;
> +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>   	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
>   	bool enforce_type0 = false;
>   	int k;
>   
>   	if (dig_port->hdcp_auth_status)
> -		return;
> +		return 0;
> +
> +	data->k = 0;
>   
>   	if (!dig_port->hdcp_mst_type1_capable)
>   		enforce_type0 = true;
>   
> +	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
> +	for_each_intel_connector_iter(connector, &conn_iter) {
> +		if (connector->base.status == connector_status_disconnected)
> +			continue;
> +
> +		if (!intel_encoder_is_mst(intel_attached_encoder(connector)))
> +			continue;
> +
> +		conn_dig_port = intel_attached_dig_port(connector);
> +		if (conn_dig_port != dig_port)
> +			continue;
> +
> +		data->streams[data->k].stream_id =
> +			intel_conn_to_vcpi(state, connector);
> +		data->k++;
> +
> +		/* if there is only one active stream */
> +		if (dig_port->dp.active_mst_links <= 1)
> +			break;
> +	}
> +	drm_connector_list_iter_end(&conn_iter);
> +
> +	if (drm_WARN_ON(&i915->drm, data->k > INTEL_NUM_PIPES(i915) || data->k == 0))
> +		return -EINVAL;
> +
>   	/*
>   	 * Apply common protection level across all streams in DP MST Topology.
>   	 * Use highest supported content type for all streams in DP MST Topology.
> @@ -88,19 +121,25 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
>   	for (k = 0; k < data->k; k++)
>   		data->streams[k].stream_type =
>   			enforce_type0 ? DRM_MODE_HDCP_CONTENT_TYPE0 : DRM_MODE_HDCP_CONTENT_TYPE1;
> +
> +	return 0;
>   }
>   
> -static void intel_hdcp_prepare_streams(struct intel_connector *connector)
> +static int intel_hdcp_prepare_streams(struct intel_atomic_state *state,
> +				      struct intel_connector *connector)
>   {
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
>   	struct intel_hdcp *hdcp = &connector->hdcp;
>   
> -	if (!intel_encoder_is_mst(intel_attached_encoder(connector))) {
> -		data->streams[0].stream_type = hdcp->content_type;
> -	} else {
> -		intel_hdcp_required_content_stream(dig_port);
> -	}
> +	if (intel_encoder_is_mst(intel_attached_encoder(connector)))
> +		return intel_hdcp_required_content_stream(state, hdcp, dig_port);
> +
> +	data->k = 1;
> +	data->streams[0].stream_id = 0;
> +	data->streams[0].stream_type = hdcp->content_type;
> +
> +	return 0;
>   }
>   
>   static
> @@ -1895,7 +1934,8 @@ hdcp2_propagate_stream_management_info(struct intel_connector *connector)
>   	return ret;
>   }
>   
> -static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
> +static int hdcp2_authenticate_and_encrypt(struct intel_atomic_state *state,
> +					  struct intel_connector *connector)
>   {
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> @@ -1904,7 +1944,13 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
>   	for (i = 0; i < tries && !dig_port->hdcp_auth_status; i++) {
>   		ret = hdcp2_authenticate_sink(connector);
>   		if (!ret) {
> -			intel_hdcp_prepare_streams(connector);
> +			ret = intel_hdcp_prepare_streams(state, connector);
> +			if (ret) {
> +				drm_dbg_kms(&i915->drm,
> +					    "Prepare stream failed.(%d)\n",
> +					    ret);
> +				break;
> +			}
>   
>   			ret = hdcp2_propagate_stream_management_info(connector);
>   			if (ret) {
> @@ -1949,7 +1995,8 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
>   	return ret;
>   }
>   
> -static int _intel_hdcp2_enable(struct intel_connector *connector)
> +static int _intel_hdcp2_enable(struct intel_atomic_state *state,
> +			       struct intel_connector *connector)
>   {
>   	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>   	struct intel_hdcp *hdcp = &connector->hdcp;
> @@ -1959,7 +2006,7 @@ static int _intel_hdcp2_enable(struct intel_connector *connector)
>   		    connector->base.base.id, connector->base.name,
>   		    hdcp->content_type);
>   
> -	ret = hdcp2_authenticate_and_encrypt(connector);
> +	ret = hdcp2_authenticate_and_encrypt(state, connector);
>   	if (ret) {
>   		drm_dbg_kms(&i915->drm, "HDCP2 Type%d  Enabling Failed. (%d)\n",
>   			    hdcp->content_type, ret);
> @@ -2287,52 +2334,6 @@ int intel_hdcp_init(struct intel_connector *connector,
>   	return 0;
>   }
>   
> -static int
> -intel_hdcp_set_streams(struct intel_digital_port *dig_port,
> -		       struct intel_atomic_state *state)
> -{
> -	struct drm_connector_list_iter conn_iter;
> -	struct intel_digital_port *conn_dig_port;
> -	struct intel_connector *connector;
> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> -	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
> -
> -	if (!intel_encoder_is_mst(&dig_port->base)) {
> -		data->k = 1;
> -		data->streams[0].stream_id = 0;
> -		return 0;
> -	}
> -
> -	data->k = 0;
> -
> -	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
> -	for_each_intel_connector_iter(connector, &conn_iter) {
> -		if (connector->base.status == connector_status_disconnected)
> -			continue;
> -
> -		if (!intel_encoder_is_mst(intel_attached_encoder(connector)))
> -			continue;
> -
> -		conn_dig_port = intel_attached_dig_port(connector);
> -		if (conn_dig_port != dig_port)
> -			continue;
> -
> -		data->streams[data->k].stream_id =
> -			intel_conn_to_vcpi(&state->base, connector);
> -		data->k++;
> -
> -		/* if there is only one active stream */
> -		if (dig_port->dp.active_mst_links <= 1)
> -			break;
> -	}
> -	drm_connector_list_iter_end(&conn_iter);
> -
> -	if (drm_WARN_ON(&i915->drm, data->k > INTEL_NUM_PIPES(i915) || data->k == 0))
> -		return -EINVAL;
> -
> -	return 0;
> -}
> -
>   static int _intel_hdcp_enable(struct intel_atomic_state *state,
>   			      struct intel_encoder *encoder,
>   			      const struct intel_crtc_state *pipe_config,
> @@ -2378,17 +2379,10 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
>   	 * is capable of HDCP2.2, it is preferred to use HDCP2.2.
>   	 */
>   	if (intel_hdcp2_get_capability(connector)) {
> -		ret = intel_hdcp_set_streams(dig_port, state);
> -		if (!ret) {
> -			ret = _intel_hdcp2_enable(connector);
> -			if (!ret)
> -				check_link_interval =
> -					DRM_HDCP2_CHECK_PERIOD_MS;
> -		} else {
> -			drm_dbg_kms(&i915->drm,
> -				    "Set content streams failed: (%d)\n",
> -				    ret);
> -		}
> +		ret = _intel_hdcp2_enable(state, connector);
> +		if (!ret)
> +			check_link_interval =
> +				DRM_HDCP2_CHECK_PERIOD_MS;
>   	}
>   
>   	/*
