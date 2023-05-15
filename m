Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43824702A1A
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 12:11:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE6B010E1A0;
	Mon, 15 May 2023 10:11:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CAC510E1A0
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 10:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684145467; x=1715681467;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7jGdHhhNAHJVKvqDjpUgEwwsV5wmu0RiUX6Hiz8iPVE=;
 b=n0XX80ybjlQCaGRzMY3bTvNQvEfJiMst6KunAQ6OFGKhJW7eRP9FeFS/
 B+Sl0fEyKNsHgl1vudVltzCFaqerCEg6+B38txmCbYTHKs1mldOP4Y32J
 SgUVrwmLETa6ckuhG2Pw9HnnC9MwQLWu2TdkR38/Fpyy+fGYrkVPE7txW
 AIIIHauOYvoXUCa93yqJ9QzQVx3RPFWT1n9yQgnz8MG2xe96r7cLbeQYy
 yfxMag+1c3JjAlUDleElUzpnKpV4EyexEp8hw1DekPLJJHwDjqECDlvNO
 n6z/m+IrJpfLSArZ4U0wmc/JD8B11VdQxZu2LE5cYAmKh5vp5Gjav4Mfy A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="330781441"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="330781441"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 03:11:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="700905890"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="700905890"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 15 May 2023 03:11:06 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 15 May 2023 03:11:05 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 15 May 2023 03:11:04 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 15 May 2023 03:11:04 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 15 May 2023 03:11:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HmQoCYlSEn2j0xbToJ+Xc3fIRamtrhnRmewHIKeeSkdmGNU5hbm5Ck7k3EAzPMbCIKluzEZhZxDXR91hBXV49eUcAF2ndo5LhUH2fUFd/ygvilaDci7nGhHRe4YVBkanR6jJ4UhLOKGe8LMJQCdk788xb7lNC797OskbAY+KXskygQIoaVZGteDUQYXlP1D7ySOiTf2pv5UGbO3U5h8D9jy+lv9evsR3NHrcLvxSKViO0SezkC7Dw4axhmZnJ9zTou2AdQO3tU9heb6F8UO091G2WQxhUUHQaQHXyfoUEGb/SYHzzADUKcV1YfmGZQV0qRtzk83jdD35V3RJdTYzBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=79YiFPoC5nMTZ55UvYCsQjlNgFp3GUp9mTHi2uuakFs=;
 b=Q5f67jL0uxv5+bvTj78mXf4CuT9tXfmQkPsp6plF38/Ng9EDNBn0YBO12neHz9rQdONuoupGIbCzuAaX15R7DUfAp3iOVnRYLvGV5Pu6/l/QyxgrnzN9U+BtRGzgmiUNArWdUh4WhbKhZa5y9vxNIl4lEzfPdF8PoxjHOr4TaJVCnuUqWTYhPSC0sE0uAzm4Xtn6NfRDlaLHKYFCacXDqNEJcYqoiBaVT+cBMBk6NwtwN4dBbmEThPSO+J+tJvEzXhuOcLekpQhy23RN/pXq8xkd4afdG6Tob8KlgnRfy9c6zarXxsmLs5wN8Vma+k1SNXVMcEONdgpVp6R305PQ+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB8349.namprd11.prod.outlook.com (2603:10b6:806:383::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.30; Mon, 15 May
 2023 10:11:01 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b%6]) with mapi id 15.20.6387.030; Mon, 15 May 2023
 10:11:01 +0000
Message-ID: <03f0f72c-a368-5534-bf30-a58f951d62ac@intel.com>
Date: Mon, 15 May 2023 15:40:52 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230515051557.672109-1-suraj.kandpal@intel.com>
 <20230515051557.672109-4-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230515051557.672109-4-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0129.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:bf::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB8349:EE_
X-MS-Office365-Filtering-Correlation-Id: b1bb8a37-7850-480b-3b4a-08db552caf47
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CHsunX047TyfxHePM2kx7a+lIPnkuHzcQNA1EBauJcBRXC46Xa2t0w/5EielgsutJki+ZCTxhuOSmkLFyfqfAJi+lqQkDd0AKQW37ZsWd3dL1co7oTA+X1tXBXu3aj6K1nWpNxpt7AKalev9s0Xl/WgjMQAfhlg4Lyx9wtSORUWYorADs5DxvMg22jlI5VtuMn5cFh9YoSyuEbkPZ0c9OjluA+J9QdPJQoGp/sCH8Fgxeo3IOlqhp4y7uQ0I8darxCx7LshFf9TVmWzfA+I0446SRh4o3L1swPWSIMXsoLylAM/sP1S1ID50ThOhGkf+BHCCg3ROIm2Z/REZcRgkbnukVBKqKnoMJHP4Ix9u1ASrB+rm7iIHv9rijOvXGcmKOaAviH/Z+6to9kKpmk9cL8sl4Q7JaUXhY3zJV6qi2Qokb5NZnBd8tQ8zKMTHdg3sNP9kWdh6+/QsfMryD8IN53pfj7hXwbyz+RBoYImweQ66FLO+NXuKrc7+YN2R5sj0hkF7RkyXmkfXuMum7GSy9VZocbVIRykpYhmSWVRx91RSaxaSUEayySEDnVmj+5Z4IHk2gDw8Iace/7qISvcpUIMpUQMu5Hr939JFkVy93aA5y6qmRP24d0AMPm231PjmB+wiFcN64hV609/pDEj91g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(39860400002)(366004)(376002)(396003)(451199021)(478600001)(8676002)(8936002)(5660300002)(2906002)(31696002)(86362001)(36756003)(66556008)(66476007)(82960400001)(4326008)(66946007)(316002)(41300700001)(38100700002)(83380400001)(6512007)(6506007)(26005)(31686004)(55236004)(53546011)(186003)(2616005)(6666004)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SDRoUkhnaXJRdDRNTnNUeFp2aDgzZjZCMElYQXZvck9VclZocVpjbkVTRHFC?=
 =?utf-8?B?RngwVFF4SHJZa2NUVXhnN3MveFdOUkVwbVRuZFdtbVRGZ0pQcXFraU05ZC9r?=
 =?utf-8?B?MjgzdFRyTWhzYzIwTW1WcFd4WmdISmhXR2Rsa3M2RmRNUFVGQ2ZPMm9Valp2?=
 =?utf-8?B?R2dmRkdPRjhTTmFPdDFxVStwVFliZXFjOXN5UkkyeVYwaHlsd2VJQmlyK3dL?=
 =?utf-8?B?K3RxNlJ5SlNHbk90OUUxL01ib05UZHdXR09QK01jZE9tN3VpckR2d1pBU2pr?=
 =?utf-8?B?QnhIcm9xQ2pmUkMveGJNVTlmL0pJSVh3b2MvemdDTVJJWnhmank5K3JGeFVZ?=
 =?utf-8?B?ODZnVEpyRnRESzNGUG5xQlJ0eXpSWkxnSzFLNzJIZlkwRVIycjFveWt6a3Jj?=
 =?utf-8?B?bXpvTXlrNHgzSjFDOE5GeldMMS91Qnd2VEVvcjJKcjZ6OXJRZEFZWmlJYUhp?=
 =?utf-8?B?WTUwWERlcWRLQ1NIYUw3ai9JRDhrc0pIWjZTWFI4Z3JmOUlXSGtBUVZEckhv?=
 =?utf-8?B?dGEwQ2pad0o5dVFTVE9pcUpvNUFSalRlRnRubU5BTERZYWtLSTNQdWt0NWwz?=
 =?utf-8?B?NzFDYlBZdFNYbjJkUjJoQlF4OWFMZU5HN1FFQU5QNVNtQmFYUGl2c2dEY0Jp?=
 =?utf-8?B?YXR1dWZiWUJWWjNhNHI3c0U4U2RmYmUxQUZjSkk4ZkVrV0x3Ujd6b1VqUm5R?=
 =?utf-8?B?M3lYTVRNSzBUL0h4S3kwbmh5VGpkcUZXUHpEQWpselI4S0lGRUJQZDk2d3Yy?=
 =?utf-8?B?bkozSXBiUitYSlJmVFRoU3FDcUI0Sk5ZVlU0dkZ3YVlqUWMxanVTQ0pxM3pL?=
 =?utf-8?B?Q0wzUmNwL1NSUG0wR0sxaEtsTEhHeWw1UmVqVWVjeUs0eXFhUllQc0U3TjJV?=
 =?utf-8?B?b3Awb095U3U5SFFRZUxyd09aWDRBZm9kUE9oZlhwOWhkZTR1OWEzOXFoSE5s?=
 =?utf-8?B?dWRGcFFSRFk3Qlo5NG80eEZDbk5HVUJaY1dwNmlodldEdlBYNHVPYldWVnpJ?=
 =?utf-8?B?SnBXUVFaVlVGTFJBSUtxUVRzOVBlQitrWFhHcG1BKzNsSGNzSHBNclFIRndS?=
 =?utf-8?B?NVpYc1NFenZITXI0T3lNTjJ2ZytZVExSM1pPL1lwcVRIOFgrMFlmKzBIRUwz?=
 =?utf-8?B?ZVJUZHdlcVU4ZGZjR21tTHlVZlpYU0pDTGhQVGwwS3g2T3NKMStvY0xXTmFO?=
 =?utf-8?B?WjNja0pXbnMvcEQrWkFVcytGVTlSODhmbU5EMVJnTnZLN01JRG11ZzRlWDNE?=
 =?utf-8?B?RjJVV0ppQkQvWDM5Y2F5YUNwS0ZXd2hXWWZhNUtTekEyZktic0dvUHc5QWNw?=
 =?utf-8?B?Y0xqRUNoQzRTeUxVTGd6U0M2TmovU2xnRlQrSGJDNG9MS2lRd2lhMlBOYkRP?=
 =?utf-8?B?T3VUTXZRVE1zbXdyL3hpREdmb1VFMTFMQmwxSE40TFZleUdJTXRFRkhHcDQ0?=
 =?utf-8?B?ck1CMUpGT3BhZEZGK2FIYzh5N2xvOERVYkRDWCtPVjFGSHZSWjB2RUxCVHpy?=
 =?utf-8?B?SDhnTjNiSTh0T2UzMGZoR3F1MlVobHVMZlNmUkxVbTB5OFVSRXp0Q082azAy?=
 =?utf-8?B?M1YxQjhycVQxeDh5K2NCaG5QL3htWnNnRVB0RC9UclJKbHVXNlhjbnFjQlRK?=
 =?utf-8?B?NjNldlM0cUVLLzVEYVNVdldhbjdzaXAwZHk2a1ZtOW1HUEhaMlFIeWo3VThr?=
 =?utf-8?B?KzQzOHc2TVd0Y1h3R3VWMnFSZkdSQ1l4VG91RzNIdDE5aVU1b2d6NGJoTjhG?=
 =?utf-8?B?ZklkaEIyNFJVaWphMmU5cC84dzZ0dTczczZJRDRJY2QrN0lRTDZKRm01SFNs?=
 =?utf-8?B?Z1Nxcm5qT0R1QWExUGF6dms0VSsvUU93REtNVElNSG5KYWtoTE1JWE41L0VE?=
 =?utf-8?B?MEZYYzI0WHNOd1lBN0R2bUpiN2hsa0FVS0RxUzk5Mis4OWJlOUFTVjVnbjJt?=
 =?utf-8?B?Ykp5a3Z3SUZ6Sys4dlM3Q0tMVXI2N1I0b1UyR2owUkNmc2VlSnBLYmRENzhi?=
 =?utf-8?B?eGRwd2hNODdQb0V1bzc1czN4VXpLK0g5Y2tNNnVObFhWQmJ1UEtBeXhrQUNr?=
 =?utf-8?B?ZTBzb3EvckxYeTFiQ0ZQZWEzYkhLRFJ4bS84WmVRVklFWm5uQXVxNFV2YTVK?=
 =?utf-8?B?K0dHNTAvOU9xTmFnRC96TEx1MWNXVVc5b3duR3VmYlRRRXA3ZmJaTWlLeGFU?=
 =?utf-8?B?N3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b1bb8a37-7850-480b-3b4a-08db552caf47
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2023 10:11:01.2982 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dbJIsj+Kf5jqDGfWsUuZbqIfrSpjTEggmSggIgg9dd+uz2t8VC8KFfrPCTmi0NnsuRhQCFo3aerJIlT9sf6ECkFchsIy7LFYSh11+bVcwyo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8349
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 3/4] drm/i915/hdcp: Fix modeset locking
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


On 5/15/2023 10:45 AM, Suraj Kandpal wrote:
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
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdcp.c | 63 +++++++++++++++--------
>   1 file changed, 42 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index f2d258a72c59..64875c33832c 100644
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
> @@ -71,22 +71,42 @@ static int intel_conn_to_vcpi(struct intel_connector *connector)
>   static int
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
>   		return 0;
>   
>   	if (!dig_port->hdcp_mst_type1_capable)
>   		enforce_type0 = true;
>   
> +	/*
> +	 * Apply common protection level across all streams in DP MST Topology.
> +	 * Use highest supported content type for all streams in DP MST Topology.
> +	 */
> +	for (k = 0; k < data->k; k++)
> +		data->streams[k].stream_type =
> +			enforce_type0 ? DRM_MODE_HDCP_CONTENT_TYPE0 : DRM_MODE_HDCP_CONTENT_TYPE1;
> +
> +	return 0;

I think there is no need for return anything now.

Same with the caller for this function.

> +}
> +
> +static int
> +intel_hdcp_set_content_streams(struct intel_digital_port *dig_port,

Here we are setting stream id and number of streams k, so 'content' in 
the name can be dropped.

It would be good to place this function above the caller.

Otherwise looks good to me.


Regards,

Ankit


> +			       struct intel_atomic_state *state)
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
>   	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
>   	for_each_intel_connector_iter(connector, &conn_iter) {
>   		if (connector->base.status == connector_status_disconnected)
> @@ -99,7 +119,8 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
>   		if (conn_dig_port != dig_port)
>   			continue;
>   
> -		data->streams[data->k].stream_id = intel_conn_to_vcpi(connector);
> +		data->streams[data->k].stream_id =
> +			intel_conn_to_vcpi(&state->base, connector);
>   		data->k++;
>   
>   		/* if there is only one active stream */
> @@ -111,14 +132,6 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
>   	if (drm_WARN_ON(&i915->drm, data->k > INTEL_NUM_PIPES(i915) || data->k == 0))
>   		return -EINVAL;
>   
> -	/*
> -	 * Apply common protection level across all streams in DP MST Topology.
> -	 * Use highest supported content type for all streams in DP MST Topology.
> -	 */
> -	for (k = 0; k < data->k; k++)
> -		data->streams[k].stream_type =
> -			enforce_type0 ? DRM_MODE_HDCP_CONTENT_TYPE0 : DRM_MODE_HDCP_CONTENT_TYPE1;
> -
>   	return 0;
>   }
>   
> @@ -2375,9 +2388,17 @@ int intel_hdcp_enable(struct intel_atomic_state *state,
>   	 * is capable of HDCP2.2, it is preferred to use HDCP2.2.
>   	 */
>   	if (intel_hdcp2_capable(connector)) {
> -		ret = _intel_hdcp2_enable(connector);
> -		if (!ret)
> -			check_link_interval = DRM_HDCP2_CHECK_PERIOD_MS;
> +		ret = intel_hdcp_set_content_streams(dig_port, state);
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
