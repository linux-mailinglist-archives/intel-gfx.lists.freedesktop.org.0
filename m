Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 864CB702B4C
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 13:20:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CC7010E056;
	Mon, 15 May 2023 11:20:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E74010E056
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 11:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684149623; x=1715685623;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=My98IeWFVeTEp0EQRe+9cr0/gf/T0b39Hw4TGyT6N6U=;
 b=ib9t9z8TqCmbbXTOHHe+TAzeshCGdZQ80n4tExpELpSK8qGY83iCZcBu
 jKShiLb0L1ApSHdeUgKkUF8BrR+24smDeYSRVHY+Z6gz48tqpH72Jcu6S
 MEotP3Ld/ZLabTnm/FTz6RTT03acpp3NNrEuB4WOiqIBlW3SPxuK/VsOO
 ryZ6oHSd78v+pz5bWehQgRoKJIMocUfEml+gzfra4ybXNiub9+v+ii7zW
 jHQp2G8pqTOoSrNbGTDxeQlOgzzdRCEfkb7W0WEs6s+FLGUnVOgEksBjI
 6lmQQtar8n/bfMXntYqAELf8RAZoGdfbua44GwXhn+WUXEUu7iShzA1IF A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="340526465"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="340526465"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 04:20:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="731594949"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="731594949"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 15 May 2023 04:20:22 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 15 May 2023 04:20:21 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 15 May 2023 04:20:21 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 15 May 2023 04:20:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VSewKDJq6QPZKi9WC9jmzv7Lx9VB1/kuLcQJjwIp+0C2cWfT4/NzT2PGDTTxWErsvmCVbscP/WSWGrJDgLmiQ6SjRfhyVfUngSiXUO40t8IJtBIGpRrG95EMtmEsJuq/w5KrJjB0NT5wuVAPEQ7KWmMji65AwX9DGKF8mRjqdVRtwGAUtsKjHjQxXwrh6bo156V/r9SEHIFGl5GIj6t3HNitTcRuwQ2EjpUJVI/81QIE571Y/WjsiaUrj3wdD9IExPwnUIErtrBXR7rSpw6LdbyzCMT9WlDuhk//We2Z7UhTBxTvQG+IAXH5/wrcVPR32rr455zPjxfdB+Qz19Px9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/+YYICO6ozYdhjTVyeshDLo3PICFdi8ZdhtY9WA2qR8=;
 b=CiGyrCNKEiRG29FpoFvb79ctOsUi3PxGlcDwiVjeL8x9xI6mDTUu8kOECr5gMfQfmVfXVW2bSiiy9Dcmhsqdxm9ZDZ5ZR7Hv59rmQqt6QDpxTG0MkA6zheGXQ/f1YiaXX9/5OyCERNZd4JdKVin07Vb8TPdVIX68ZevGMo8pvakgVIbRTjUmHyNcyUwD/1m/CHXdLSK6B3kpPM2rypzGq3VGGYVW81HSKylJLhgLHtoMc4Gir2g/HpqjxuNGIybloWLSL0TsqPqQTyauvPMgpATWzW206W4CbekHZiM2W34kU5mF306fz+aCc0KQf1r0jDZAsHLnars2H5DRMRqa7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BL3PR11MB6361.namprd11.prod.outlook.com (2603:10b6:208:3b4::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.18; Mon, 15 May
 2023 11:20:14 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b%6]) with mapi id 15.20.6387.030; Mon, 15 May 2023
 11:20:14 +0000
Message-ID: <06c8d7f6-5722-8ac2-53ef-c37cc0a6c915@intel.com>
Date: Mon, 15 May 2023 16:50:04 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230515103225.688830-1-suraj.kandpal@intel.com>
 <20230515103225.688830-4-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230515103225.688830-4-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0004.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:25::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BL3PR11MB6361:EE_
X-MS-Office365-Filtering-Correlation-Id: 528a00bc-0954-49a9-fed6-08db55365ab3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KxWXe+CVOHRhDuXBPOTcoSsDJ/j3t4Ya6emMyDpMXHfvWFQaBlfThROEXLC0Qh63JAbztV93N71NtNtO4UAjEEtte1yMwbBClC62yTQOZlp4/Be1re+23Eje9ym54QKyIgbJNTUfDj4yT5qAochDLPWz31Y6v65i2laOb6DZnKJ46haL9RZ392Va9iUxv2KkQ9w03LItu5ZQc+F1QtFdNsGUcDJQn2Vw0wffPGFqY6qiH7bbnmSkv9+fqrPqHNjL6sRmpdChF92h+GHKKCUvOEpQi9BJOTGNpCs0zbr0Q/YbAwFTjjJRnZfP0ITN2uX454egcWl0FHkHVZ/RtZUHWDjZ57abxQJqf6lju2i8d0aGk64mgNrCBRLiCGrM11EEE8nkSfkxDX78LVxVAf6YfieT7+Ebb2rAo4668jbBoewpe5atTyORqL961dZI8tnh4Vh9btauvBPB0+jsSCxa8B+a/dhTpKFr0Dkp5DhqW55fIS1d3vtAftD98cKBbMH3vhq1y/a1BocelRSSmm4dHDlmc+IDTm1plaDyPk3VeAS8uq8opAmT8J6FMII0+pfJXBxeUp4Ynmib5goW0tXeynsp9Ga3MWPOwsVaupOqqC1BLXTT0YBiAFwGI9wBFXjhCJ0d8G9zPjnnvBvh9n6n0Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(346002)(396003)(39860400002)(136003)(376002)(451199021)(6666004)(2906002)(2616005)(186003)(36756003)(478600001)(6486002)(83380400001)(6506007)(41300700001)(316002)(53546011)(55236004)(82960400001)(26005)(38100700002)(31686004)(5660300002)(66476007)(66946007)(6512007)(66556008)(8936002)(86362001)(31696002)(8676002)(4326008)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Zmx6UVUvek1uU2U4dVV4dDBjdWxVYzZBSUIzRWdCWWtJSmMrU3lFVkRpSnZs?=
 =?utf-8?B?WTdtcFpmSU4vOFJLczZlOVlmT09naWJqdCtpdXhUM3hTY1BOczdERUVjdXU1?=
 =?utf-8?B?WG1sek0wZzlzNDc3MXhKMjI2Z092Smo0TEU4Q2VHWU1MVWhZQjJsUHpaZSt3?=
 =?utf-8?B?NldVRmNQN0lCU1lVajlOeWRteVk4YTV4Mkxmc05Fbi9HaHdvaHM5SmQ0VGw3?=
 =?utf-8?B?OHYwMXhNaXp6YjdaT2JaOGdLd0U3dHdVOUc4Y1U1MkdjbGhCeFBBQ3pwK3R6?=
 =?utf-8?B?ZG9nZlA1b1BmY0pWVzV6djcrTmVhWHlYaUF6V2pvb2VtR0kwcUMvenlRbHZK?=
 =?utf-8?B?RGE0SGNsMVM4eWdFeklDNzNPZVFSS1RnbEx6aGJjWEtrUjRIbXhaRkpLbEUr?=
 =?utf-8?B?NDFmM2VFWUhpL1doWC9XUDZwK3NNbkFHamd3RmRhdW9veUlLbmR3MHYrL0NQ?=
 =?utf-8?B?NDFNNlVPN1YzNkdqUnkzUFBKS3dBQUV2RlhSYXF5ZUV6b1hRUWpiWXJub1gy?=
 =?utf-8?B?OXNuOXUvUnFGcnE1b0czQ05kUWZxUkRTWUpzbzg1amF3Z1pIRkRzYzlla3Vz?=
 =?utf-8?B?azNXcENwK3RFUzNBYWt5bEp2cGk5eDNGYStKQ1R0ZGtKaFFtVXp2ZjlpbWlU?=
 =?utf-8?B?dXczWE5TTlpWWitjeXZDK2FxcC9vN0JvSnQwQ2dwL0tSL1RzZWFnSDBVUVo4?=
 =?utf-8?B?L0F1Wk1iaW40MnU3aStGVXVCclVkekJJanB0R3NPREE3VG01ais4S0hhNVEz?=
 =?utf-8?B?SklQOW8xV1BEWUo4cjFoQ2sxK2dJbGVweGF5ZGR6LzArUkZoS1BZbmR4RkY5?=
 =?utf-8?B?dXhnUStCNzA5dTJBeFhLaitzMFphK2JuWEVld0xZNHRaSW5iTUlvSDVrc0hn?=
 =?utf-8?B?aUlabHRXR3hlalpIeDJSZ2gzT3pmSWlnbHpnM1g2OUg2aEkxd2Z6b1BMMW14?=
 =?utf-8?B?UCs4RGlWTVdsMlNQZlhHSWxRR1E3a0ZsY1BvOXcwZnRyUDRNYjZSeU1OUWRB?=
 =?utf-8?B?QjBWNmNiRGVuQnRXU0UxdUFVZkNqeUdKRjRTaWFZSFVMOW1Rc2oydndKUXQy?=
 =?utf-8?B?OHdsWlNSSGkyQmYwNGpQTjFXMExqbVlkSlh1eTJRWis1REM1L2w4ZU5SVGd4?=
 =?utf-8?B?UzlscHRZN3ltMmJvWkI0c2NTNlhMYzdTTGJBalM0alh4aHYxR3VpRVNubmJC?=
 =?utf-8?B?OGtZQnZUSDFyb2tvdW5EbmZYVmYzNW9naFBwNS9vSWFHMnY5K1BSY1NzZG9p?=
 =?utf-8?B?Nnh5MDgzY1J3bm9qbWl0KytWVzJmNURPSWJoUkxMZ3BTZ0hBVS9FSkVKNGRO?=
 =?utf-8?B?UTEzZjFsM3hmWmI5ZlM4NjJ2QTVqcy9mb3FtYUpzQ1JSRHVtdGFITDhRWTVm?=
 =?utf-8?B?eWttbzRhVDlSakIvQUF4THhTUzBrZERMRkpBd2pZSCttM1ZubmZrWDVVczZK?=
 =?utf-8?B?MXRSTmluVXN3RGVhY1ZMdWx4RlQ2Zm1WTGt4eW5vNXQ0bFNCeFUrbURCQTB4?=
 =?utf-8?B?azI1a3RHUXdGZXU1RStIOVJZM1BQZzV3QXNmTkFyNzhzcm5Yc2wxZis1UW42?=
 =?utf-8?B?U3YxUmwrZ0QrQ2VpbTlHMXZtMUlZZkIrc1NGbkZtT283VEtNbDJHZGdtMVNs?=
 =?utf-8?B?VUFtU1g5Ukw0SndhVEpSbGNKUkdYQ2ZtRWhna2M4TmdOTWx0UUd4RXBPWDd0?=
 =?utf-8?B?elAzL21Ka1BtUTJBeEd4LzcyanQ4YU4wU2ZVbEtrZ0J4TDNIbUY1MWV6RDJ2?=
 =?utf-8?B?RWpqOGdJb3dxa1ZvQk1NSHF3T1lYQm50VWhiQVFmYmF2R2lhUWw2eGp6cHdr?=
 =?utf-8?B?TGo5eHQwQkMxVDBJUE5Ha3Njd1ppR1JtejJJQnZJOU9jdEh5K0ZCb2FwSGV5?=
 =?utf-8?B?bkZIK3dJWDdVdzJHK0ErbWQ2WWk0eVlkZTZheldwekhJbXZsQkdQaWt2OGpS?=
 =?utf-8?B?bC9WaDIxS3hUenBYdXE5dUM0dXZLbHhKSG5pSGJvWHJTMVJlVXVWOTVmcTZy?=
 =?utf-8?B?azVxbi9VUGV1QjhSSzNQOEFpb2NlV0R1Y2Y2dXU2eHhqNTVaZHp5L2FkVnB5?=
 =?utf-8?B?U2JzOEhOMWpyN0xsUGpPMFphZDNXQVJlQjdpMEZuY2VWMG9QNENSZmp2Umt2?=
 =?utf-8?B?TGVOME5WNkZWbjEvRy81Uk9JS29sRkcyL0FmcWJFQ3BYYWpoZHhEUlpmcXFh?=
 =?utf-8?B?Rmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 528a00bc-0954-49a9-fed6-08db55365ab3
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2023 11:20:14.5357 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 98HbSlTb4pqIK4AKDEduROsEwzgkUdFA4aU77060y3oK+UH1T8SN/goZo9vZzlbqXbqWwbnDfDNv7wZCKfvx/FP1bWD5bYs0axwN2uzda70=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6361
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 3/4] drm/i915/hdcp: Fix modeset locking
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

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 5/15/2023 4:02 PM, Suraj Kandpal wrote:
> Since topology state is being added to drm_atomic_state now all
> drm_modeset_lock required are being taken from core. This raises
> an issue when we try to loop over connector and assign vcpi id to
> our streams as we did not have atomic state to derive acquire_ctx
> from. We fill in stream info if dpmst encoder is found before
> enabling hdcp. intel_hdcp_required_stream will be broken which
> will only set the content type.
>
> --v2
> -move prepare streams to beginning of intel_hdcp_enable to avoid
> checking of mst encoder twice [Ankit]
>
> --v3
> -break intel_required_content_stream to two part and set the stream_id
> at the beginning [Ankit]
>
> --v4
> -change return types for intel_hdcp_prepare_stream and
> intel_hdcp_required content_stream [Ankit]
> -rename intel_hdcp_set_content_stream to
> intel_hdcp_set_stream [Ankit]
> -place intel_hdcp_set_streams above caller [Ankit]
>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdcp.c | 116 ++++++++++++----------
>   1 file changed, 62 insertions(+), 54 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index f2d258a72c59..6c3cd3b7db69 100644
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
> @@ -68,49 +68,19 @@ static int intel_conn_to_vcpi(struct intel_connector *connector)
>    * DP MST topology. Though it is not compulsory, security fw should change its
>    * policy to mark different content_types for different streams.
>    */
> -static int
> +static void
>   intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
>   {
> -	struct drm_connector_list_iter conn_iter;
> -	struct intel_digital_port *conn_dig_port;
> -	struct intel_connector *connector;
> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>   	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
>   	bool enforce_type0 = false;
>   	int k;
>   
> -	data->k = 0;
> -
>   	if (dig_port->hdcp_auth_status)
> -		return 0;
> +		return;
>   
>   	if (!dig_port->hdcp_mst_type1_capable)
>   		enforce_type0 = true;
>   
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
> -		data->streams[data->k].stream_id = intel_conn_to_vcpi(connector);
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
>   	/*
>   	 * Apply common protection level across all streams in DP MST Topology.
>   	 * Use highest supported content type for all streams in DP MST Topology.
> @@ -118,27 +88,20 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
>   	for (k = 0; k < data->k; k++)
>   		data->streams[k].stream_type =
>   			enforce_type0 ? DRM_MODE_HDCP_CONTENT_TYPE0 : DRM_MODE_HDCP_CONTENT_TYPE1;
> -
> -	return 0;
>   }
>   
> -static int intel_hdcp_prepare_streams(struct intel_connector *connector)
> +static void intel_hdcp_prepare_streams(struct intel_connector *connector)
>   {
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
> +		intel_hdcp_required_content_stream(dig_port);
>   	}
> -
> -	return 0;
>   }
>   
>   static
> @@ -1917,13 +1880,7 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
>   	for (i = 0; i < tries && !dig_port->hdcp_auth_status; i++) {
>   		ret = hdcp2_authenticate_sink(connector);
>   		if (!ret) {
> -			ret = intel_hdcp_prepare_streams(connector);
> -			if (ret) {
> -				drm_dbg_kms(&i915->drm,
> -					    "Prepare streams failed.(%d)\n",
> -					    ret);
> -				break;
> -			}
> +			intel_hdcp_prepare_streams(connector);
>   
>   			ret = hdcp2_propagate_stream_management_info(connector);
>   			if (ret) {
> @@ -2330,6 +2287,49 @@ int intel_hdcp_init(struct intel_connector *connector,
>   	return 0;
>   }
>   
> +static int
> +intel_hdcp_set_streams(struct intel_digital_port *dig_port,
> +		       struct intel_atomic_state *state)
> +{
> +	struct drm_connector_list_iter conn_iter;
> +	struct intel_digital_port *conn_dig_port;
> +	struct intel_connector *connector;
> +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
> +
> +	if (!intel_encoder_is_mst(&dig_port->base))
> +		return 0;
> +
> +	data->k = 0;
> +
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
> +			intel_conn_to_vcpi(&state->base, connector);
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
> +	return 0;
> +}
> +
>   int intel_hdcp_enable(struct intel_atomic_state *state,
>   		      struct intel_encoder *encoder,
>   		      const struct intel_crtc_state *pipe_config,
> @@ -2375,9 +2375,17 @@ int intel_hdcp_enable(struct intel_atomic_state *state,
>   	 * is capable of HDCP2.2, it is preferred to use HDCP2.2.
>   	 */
>   	if (intel_hdcp2_capable(connector)) {
> -		ret = _intel_hdcp2_enable(connector);
> -		if (!ret)
> -			check_link_interval = DRM_HDCP2_CHECK_PERIOD_MS;
> +		ret = intel_hdcp_set_streams(dig_port, state);
> +		if (!ret) {
> +			ret = _intel_hdcp2_enable(connector);
> +			if (!ret)
> +				check_link_interval =
> +					DRM_HDCP2_CHECK_PERIOD_MS;
> +		} else {
> +			drm_dbg_kms(&dev_priv->drm,
> +				    "Set content streams failed: (%d)\n",
> +				    ret);
> +		}
>   	}
>   
>   	/*
