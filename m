Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3713A6FEE99
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 11:22:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE3EF10E5C3;
	Thu, 11 May 2023 09:22:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEC6810E5C3
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 09:22:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683796945; x=1715332945;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=m0IHGVkhR+KCGY3PIHb3KCGO6794sZr3NLq8OSB6y10=;
 b=HLNSx595KnZW63AN9mRZKET0WQIrkiOUHcbcIsBk7QjbgNjhV/Zq2nsx
 wK7aAmhc/uphBKJCydjjKC9re2KrJRUTiWin/YEFCXa/1EWBg1lxa6ZIX
 PaGUfkIQpHuvjoSNaVKAhQuZVbgiON/TzvUQ62UxqmbemoxqJ4fFrLK7q
 LFUqZmATa/4bQPaXrHeWPPgCvsqoAnJX/KEIQfLwlFSRetTZ6hgl/UXO0
 XKwqJT19UAujhG+sCvdIsuIEF9+i+MoaqtXuHBCxqHMKrxKyqAt0dwU2p
 wHFLA66CuDOhAj8iwGPnizV3rjj8oizglwSMXWF9fVuk4QOoDrBMVmipR w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="416041710"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="416041710"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 02:22:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="843866314"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="843866314"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 11 May 2023 02:22:13 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 11 May 2023 02:22:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 11 May 2023 02:22:12 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 11 May 2023 02:22:12 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 11 May 2023 02:22:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z0vexICeJ3aLmsMd/0vASq2gzIniYdYN6ugTSjpwJTrHMyKebajI28KRFse2+H6nSkVI8H40uGtOETVFFlunOps+dCuGOKEI0h7YSPrTOcW2f6NOuTtXXst1Xt0F0NOVHdjzL149KHXMXqESbir5tRZOFq2TcG5YzUAoyPoplTdvWQmotiUjlqhZ4WNpCo4t6Eqt322W0rCOr2u+I4mcmjLoEh3UzUgCoeXoeuRurMoQHjdciTdwXvHx3rgqZz7XZo4b2Ff3UiKWEJt0fuTw5dh9uYNMQoaxEdHam14uq7QPy3FbGo9x3zok5LFy8d6K0RBAtTWH6DnH+5zoLPdU1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WNGCSZL5zVEesnCZfTjSE3MJizWx3pECiXUtxregDSA=;
 b=QnitOOQhuany2krUxsppqtz/bfdlrsTDdILF62WceqnDidoPpaibe0KgiFr4wUc9fH2eDfPTZD2yFJrYkC8O2vXyryZuoWzvbyJ/vb/7Qurb5E245bL7C5BFihjJPT+k6E4fSEfbypsIoevAGByJzI0IeNmZj0SjfvNihKjsdgTzfY/YqoxOEAocdw/u9lsqfbkDKhCGmKWZjtjg1+K/fFsUz+XX2k1d6fbXAmTyHJKaljLT5o81lpyfFKXpBUdFNS6sKmyKAoUBbrSsLeDs0QDVknX5gQMx9jNVKV2Ti/fvDXv7i9kc/RPr7xafJIn2LHwKoY0tPKnqavbTh7eM6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB8203.namprd11.prod.outlook.com (2603:10b6:8:187::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.20; Thu, 11 May
 2023 09:22:05 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b%6]) with mapi id 15.20.6387.021; Thu, 11 May 2023
 09:22:05 +0000
Message-ID: <eba6373f-4bfa-8a6c-2161-cc0d9a089a3d@intel.com>
Date: Thu, 11 May 2023 14:51:55 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230511055705.611809-1-suraj.kandpal@intel.com>
 <20230511055705.611809-3-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230511055705.611809-3-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0188.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:be::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB8203:EE_
X-MS-Office365-Filtering-Correlation-Id: 2c08f3d1-3f23-401c-5fd1-08db52012fcc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uc2NPu3LCC0IwO1dCH54X7xzasGuFDTD1yZpi5kVZPeIAMZiA8GXukGg3kNV/Z/Wrv+nmPGf5ap5glMwswjh/B+b6sUKj2Nro1sZ592gpbWkTUPj2Zs+a1y/ShyMGafRL+SRdTMKV6moJuGNL6vvLFd8HfHBRbOMGBQM9jtoeQmyGG6G1yhx+4DbpujbFgSnvSxPkwSsGHg5X3Tg2CWrvMqfjIkzDGpQuqcn1NwhyH9DupgLSMHtguAvA/wfmnGUD4GRzlZOIYcqxMN6qD5gguSJ+ORSV5RrG1fzvSVRhNel9UlEkV33zn7nPHO1cJV+C7M7pxotnI+3sOiM11o/3r4fKr0OGgS1OLIdVKkW0HKtyQwWXHP3N5/1mK+WLIPuscRufZNWFRQAtwigtn5dxdHrbeAvc21pcnHLTObCMZKYoP7cpCnuRrSKIIIcuRaeoVoVtztjChr3M+IyUquE94la5dK5z//qkAJSjYR2Vq1OsefSf5XjozF5yUsgvpIr8R2FcEo8rIkGCwzmIbNLGCr7BlYeCCQ5vA9HMauYTTPBZZVGiuz5FF55JNjk4jjw6D0QMhHXL50ZDqV2ZRKkSn81JiS2RVw3ifl4MY8zAD1uFw7usMhmNoBoBA3zW+2glHQOhdTWKCKos+ZXor32iQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(376002)(366004)(346002)(136003)(451199021)(5660300002)(478600001)(6666004)(36756003)(6486002)(31686004)(83380400001)(2906002)(82960400001)(2616005)(31696002)(4326008)(316002)(8936002)(66476007)(66946007)(86362001)(66556008)(8676002)(55236004)(38100700002)(6506007)(6512007)(53546011)(26005)(186003)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SnpLalZNeUZORjVubnBUSk55QlBjRTIxTlZPUVpVSm0zT2lrQm1NRUpNc0Nx?=
 =?utf-8?B?VkU5Vi9tY3VqRk0zakVlT2FhWm5UOTIvU1d1cUJNaGx2UEpnNXF1c0s1Z2Vi?=
 =?utf-8?B?b25MTk9vVVdaRmJGbGtKaHpFL3FDTjlTMHZrNmpKMFMvcmlxVHdXcHZDSnNU?=
 =?utf-8?B?UVNMNmRqUlRDZGFXazVlbzNTVmpkSzg0WEFyS3BMYzY1ZEN5SmZ4L25naG5B?=
 =?utf-8?B?d2hzRjE2dWV1dk1CMHZacVNab3dVcmxtNlBjUHdBcE9JcW04YitPWmhKZnRa?=
 =?utf-8?B?SmZkQlN3ZWY4dnJWYXR3akVlSGdvSytBYU5hOWh5OFJUVmFYOXl2NHp5a0dx?=
 =?utf-8?B?RXJlUit0RHFQcHBGL1hNZW01bHBuekVncW9aS21peHUxc09Jb2w0SGg4U3Rz?=
 =?utf-8?B?d3grVUN2WDlIZHhVL2JKalY5bi9aTHJZNExFbVBlWGxuWERJdGhnbmRpYnBB?=
 =?utf-8?B?TFRrR28rT0QzUUoySEZqRE9yMk1hWkZ4WUFaUHErWmI1S1haUHJKYk10VzRX?=
 =?utf-8?B?dWt1WWsxb2NSRy92K1psTUVYei9WMGRLeXlCZjJpNDBhVWRBcnZvL3hablNW?=
 =?utf-8?B?U0lKYUFzWVZxSE1ENWRlY0RTd0JmTllEaHZKb0dnUG1CcTV5UlhaakhuSjJk?=
 =?utf-8?B?TUh4ZkFTVk1uempJaG5UOWRiTHk4UGt3Rk9hVDZtQ3hDYTJNd1ppVExpQUtv?=
 =?utf-8?B?ZEJWQ0RuQ0FBVlZHQTZLRWEyQ1huT3JhQ0IxS0xDZzg3WGR4ZUxxalZZSlRG?=
 =?utf-8?B?N1Y4RFlQUHhlckI5TXgvL2xtdjJaTURhb2VJR2NkZ3RyL3I4TXNqRjJldGlv?=
 =?utf-8?B?UUVEdTAvMmRscWlnakptL2Jnallwa25TOGJQTGJKQkVBTk96eHNRTUVwSUV2?=
 =?utf-8?B?OURrb01MZkVwdHVhY0tFdmxBSUNiNjRkV1RNK2lyQVl4cUFuWVBYVjQ2eHd1?=
 =?utf-8?B?N3pibGpITm1oZTRRanNQdjRiYUNBYnFMdDdQSGNqN0Z5ekM1eEdZY3QxelRh?=
 =?utf-8?B?c2g0U0JGVXJtbC80Q2RROS93Y0tYbk1yWERDemk4V1FneXI0TExrb0VFMDlJ?=
 =?utf-8?B?ZjRQRzQzTnZCRVhPT3pkeU1GRDg3TlZDRnN3QnMzM0JkMk9IUHVqTU4vQjFP?=
 =?utf-8?B?TGFQUi9HWkhRdDkxWkJiQVdqbEsxcTMrQm9PcW9NZlRxaFJnU01OZEk3ZXFp?=
 =?utf-8?B?SktYK01YZ1M0eUludkFGQjNaaFdHZXlLUWtqL0QvVVp4RDJyVjVQRm5jejZM?=
 =?utf-8?B?UzYzYUhaYWY1UTEwVVdvMk1ESVNDVnh2M1NUU2h0UytyNGhUd25ab2tjeHhq?=
 =?utf-8?B?TjVuNU5aUUxKS2h5VlMzbmVhTG52N2ozeTcrcTVIdTNweklHZHNDdW9nQ2No?=
 =?utf-8?B?eXFLOTJlWUVSVG9OUTYwYXlzMXZrdGxCMHl0VFd3bGszWWNZbVZXRWZ5VHA0?=
 =?utf-8?B?UUJYdzZuUkxxUHk3d2VTbGZNMGoxa1llN0dEZHN0RGNncVdUSkpWU2ZocEt4?=
 =?utf-8?B?VTJic1pmMHFTdGtibm95b2NCR3dXUGtvU0tyT3lhTjN1WEljcnNYWHVtdTRY?=
 =?utf-8?B?N0NvVkRKZjQ2ZXBmTmVkc25nbi8zNERiU0dVUzJ1YUY4S2RmbFNyK1Vvd0t3?=
 =?utf-8?B?S3N6Z2xNZkl2RStSVlJ6dWxWWTlORkpOSWcyR2pVOXFQOURDdWU5MjhGb3NN?=
 =?utf-8?B?Q1dSZ3dXS1R0T2pEbWtxaWtSb3p2YTR2WHlOVGFIRlZoQkRFcHYvOU1aRjZ6?=
 =?utf-8?B?amxVcUkvNE9xeXQxWWVybzNsL1Z2eS9zd2d2R3Jsa0c0VWhVcXlWS3VzVkw4?=
 =?utf-8?B?aG81eTZVbVlueThhMk9XMnMxeUc0NisrWTFXSmN0dlZWaWJiWFl1dGxxK2pM?=
 =?utf-8?B?Z3dUNlFNQ3NuVXZkZEVtb2ZsUkFvMkR6LzNHWTlMa2p1MGlGdS9rcXhIWElM?=
 =?utf-8?B?cHZiaGs3cVNtSmFxWWFTYXNnZkg5eVJnVVRFR0o3TWd3YW82MmdFWXBJUFBt?=
 =?utf-8?B?TUYzSHc0VGJ6NHp4YS9odW9iRVQ3aVBONDZ5aGJFQ3RpYVRZOHVrSFNvSm96?=
 =?utf-8?B?anlaa1dKaUZZVWxqNXkvWUZROW1QL3RiTGs1Yi96QTR4NHg3dEFEZ3hTd1ZF?=
 =?utf-8?B?citmcVpxWTh0cnA1eHJmeElGUnBnR1FrRHhiR3lRaHdzUjFlOUh0V3Z0WFZ1?=
 =?utf-8?B?WHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c08f3d1-3f23-401c-5fd1-08db52012fcc
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2023 09:22:05.7315 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4dS1nVKdPT0QC23tHHGRNeDBAj5h8kX6adjuP+QzsJW9mDnYP07HAugrz3PXz7o5cyWA7dpVc2UyD3zmiQk2onWG6vKnhq1jZua5hoGrJyc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8203
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/hdcp: Fix modeset locking
 issue in hdcp mst
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


On 5/11/2023 11:27 AM, Suraj Kandpal wrote:
> Since topology state is being added to drm_atomic_state now all
> drm_modeset_lock required are being taken from core this raises
> an issue when we try to loop over connector and assign vcpi id to
> our streams as we did not have atomic state to derive acquire_ctx
> from hence we fill in stream info if dpmst encoder is found before
> enabling hdcp.
>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   .../drm/i915/display/intel_display_types.h    |  2 ++
>   drivers/gpu/drm/i915/display/intel_hdcp.c     | 26 ++++++++++---------
>   2 files changed, 16 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 35c260bd1461..aecd84b66735 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1813,6 +1813,8 @@ struct intel_digital_port {
>   	struct hdcp_port_data hdcp_port_data;
>   	/* Whether the MST topology supports HDCP Type 1 Content */
>   	bool hdcp_mst_type1_capable;
> +	/* If streams for HDCP MST are assigned with vcpi id and stream type */
> +	int hdcp_mst_streams_ready;
>   
>   	void (*write_infoframe)(struct intel_encoder *encoder,
>   				const struct intel_crtc_state *crtc_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 1928c80cb6a2..d2874431c9d3 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -30,7 +30,8 @@
>   #define KEY_LOAD_TRIES	5
>   #define HDCP2_LC_RETRY_CNT			3
>   
> -static int intel_conn_to_vcpi(struct intel_connector *connector)
> +static int intel_conn_to_vcpi(struct drm_atomic_state *state,
> +			      struct intel_connector *connector)
>   {
>   	struct drm_dp_mst_topology_mgr *mgr;
>   	struct drm_dp_mst_atomic_payload *payload;
> @@ -42,7 +43,7 @@ static int intel_conn_to_vcpi(struct intel_connector *connector)
>   		return 0;
>   	mgr = connector->port->mgr;
>   
> -	drm_modeset_lock(&mgr->base.lock, NULL);
> +	drm_modeset_lock(&mgr->base.lock, state->acquire_ctx);
>   	mst_state = to_drm_dp_mst_topology_state(mgr->base.state);
>   	payload = drm_atomic_get_mst_payload_state(mst_state, connector->port);
>   	if (drm_WARN_ON(mgr->dev, !payload))
> @@ -54,7 +55,6 @@ static int intel_conn_to_vcpi(struct intel_connector *connector)
>   		goto out;
>   	}
>   out:
> -	drm_modeset_unlock(&mgr->base.lock);
>   	return vcpi;
>   }
>   
> @@ -69,7 +69,8 @@ static int intel_conn_to_vcpi(struct intel_connector *connector)
>    * policy to mark different content_types for different streams.
>    */
>   static int
> -intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
> +intel_hdcp_required_content_stream(struct intel_digital_port *dig_port,
> +				   struct intel_atomic_state *state)
>   {
>   	struct drm_connector_list_iter conn_iter;
>   	struct intel_digital_port *conn_dig_port;
> @@ -81,9 +82,6 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
>   
>   	data->k = 0;
>   
> -	if (dig_port->hdcp_auth_status)
> -		return 0;
> -
>   	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
>   	for_each_intel_connector_iter(connector, &conn_iter) {
>   		if (connector->base.status == connector_status_disconnected)
> @@ -99,7 +97,8 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
>   		if (!enforce_type0 && !dig_port->hdcp_mst_type1_capable)
>   			enforce_type0 = true;
>   
> -		data->streams[data->k].stream_id = intel_conn_to_vcpi(connector);
> +		data->streams[data->k].stream_id =
> +			intel_conn_to_vcpi(&state->base, connector);
>   		data->k++;
>   
>   		/* if there is only one active stream */
> @@ -127,15 +126,12 @@ static int intel_hdcp_prepare_streams(struct intel_connector *connector)
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
>   	struct intel_hdcp *hdcp = &connector->hdcp;
> -	int ret;
>   
>   	if (!intel_encoder_is_mst(intel_attached_encoder(connector))) {
>   		data->k = 1;
>   		data->streams[0].stream_type = hdcp->content_type;
>   	} else {
> -		ret = intel_hdcp_required_content_stream(dig_port);
> -		if (ret)
> -			return ret;
> +		return dig_port->hdcp_mst_streams_ready;
>   	}
>   
>   	return 0;
> @@ -2373,6 +2369,12 @@ int intel_hdcp_enable(struct intel_atomic_state *state,
>   	 * is capable of HDCP2.2, it is preferred to use HDCP2.2.
>   	 */
>   	if (intel_hdcp2_capable(connector)) {
> +		if (intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DP_MST)) {
> +			dig_port->hdcp_mst_streams_ready =
> +				intel_hdcp_required_content_stream(dig_port,
> +								   state);

When we already know intel_hdcp_required_content_stream() has returned 
error, there is no point in continuing with HDCP2 enable.

IMHO, lets drop hdcp_mst_streams_ready and just call 
intel_hdcp_prepare_streams() here itself. There is no point in having 
this set later during authentication retry loop.


Regards,

Ankit


> +		}
> +
>   		ret = _intel_hdcp2_enable(connector);
>   		if (!ret)
>   			check_link_interval = DRM_HDCP2_CHECK_PERIOD_MS;
