Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 132F37149E1
	for <lists+intel-gfx@lfdr.de>; Mon, 29 May 2023 15:09:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF97B10E0B8;
	Mon, 29 May 2023 13:09:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B273310E0B8
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 13:09:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685365744; x=1716901744;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Noyv/rYCLgViYA2kgB68VRgqE7M3UCam9sGHPrMCy7M=;
 b=dAxbm0AMiXUxrZA+8KYFpfOSF1l6GZaRW8GdVb3Kmj7sFTpjBFjIaoIS
 Rgz2b1km2KLTmnsKNdxgZOnkkbJn/xmXTnvr7agry0NAS3wfox8jDtZ1p
 88ajuoRnWUkiGnmzLCIeKqc9g8g96/AVh9kt9zCQAMBFaNU2CDeCLYp8e
 OICH2RZWzGAa4utnucS6qRGS1RW/T4UtoN9VX2dpQ64ox6WSyFpumCgFw
 KX+f7iz+MDxxvWRuUkTPiA1PKUuTzgQywRcKJvPukM2T+VTmnQ7PqPjGV
 rpts1STZ1+m4Z0u2xsGvuN03OPR4TKZZIZ4rfTyA4rqUH1l2TL+5U6x1o Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="441057585"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="441057585"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2023 06:09:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="700252819"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="700252819"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 29 May 2023 06:09:03 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 29 May 2023 06:09:03 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 29 May 2023 06:09:03 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 29 May 2023 06:09:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UqsNcp/gq0cX1FH/UD2dyQko1qrJy+2U7ZlXFRTZEx7to2xTHhW0ztqmCdc6+RM5idoPEBLlKkcBcaQBHijqsBs3BqGRMDKttYRhx7zNSdzB5SWXcdhbjfDBpyFUeTArNqxQgwsKP3FTGVrdVDa104Ym/ceeMdhhF3cT8Y9pALhpiGpOZOaDHdaHXAaWjF3imnPhR1V1WJee6i673al/Wx4CfzLAgr9chFj6L35/FcPvqGF4KVhlFhrwF+EPIBGkdoAX1H+1dnECC2UGnFZLAdvmfl/OGRd4YlShPvdfvRyWfw/E7R+kGFAk14YiwknQ2MloC9RIn3JEhUDnPI96tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZbyET4h8q4/djHLKizzsMtSd4HX0MxSkOKF2u0p1ud8=;
 b=KEOui3w76iVfRkv8I3TViOiK4XKF+ApxA/aFv/SO1Xpx2A6f/xampd3o59iiHX4ECC+IKodqYFDg6GpfxNmamkBpiXc1nkKfHtx71xQS/jGtTBOKbxwvaXc6CdCvCofw7qIzGhjx2BFrFxf4KtFvRwM5/aUHEHoAX+lxvuPmL0ZjlwATWpOeAzfmsT7lk/ARV4jEmPsXF59lxTDjSSLIyQvoad+h61C2ZK7FOq4WwwOdBdPJ6BzqVk++AX9T7kG5KV3DOYBpW29ZyxIeiSF3JhUkV1fWnh+n8I4dXpyq6urxtfKbGTYgXCkyiNJQ2/rNNXnUIf6psAilHcr7Z9jTTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH0PR11MB8191.namprd11.prod.outlook.com (2603:10b6:610:181::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.23; Mon, 29 May
 2023 13:09:01 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d264:d3b2:c14e:3b24]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d264:d3b2:c14e:3b24%3]) with mapi id 15.20.6433.022; Mon, 29 May 2023
 13:09:01 +0000
Message-ID: <c93935b4-c6f6-0ed5-406c-88abf2c62595@intel.com>
Date: Mon, 29 May 2023 18:38:52 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <cover.1682077472.git.jani.nikula@intel.com>
 <41ebaf39836b5fd8879445c52622f06e1c9eb1db.1682077472.git.jani.nikula@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <41ebaf39836b5fd8879445c52622f06e1c9eb1db.1682077472.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0143.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:bf::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH0PR11MB8191:EE_
X-MS-Office365-Filtering-Correlation-Id: d7b3576c-9d3e-4a63-6275-08db6045deb1
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dGu9qORlJuCnmIn8uV0+jPgjhgh7rAtWZN/fd05LLUOHx3wW0nZ4E4+JpH+Gm+DsLcaHyku+2NmIj7RSjvp1PM+Ib4o2q1Lo8gXhq1579VgcbzgJ765bMZ5f4B6YK6Nfr1UCrfqEF9NFE69KepdCpT3u77yq2ZdW4ucP3Sm/wJPfPurI1GyfcJCJPBTMuNIcL9+rze0Cc3n1ogPeLicOQNdea2lLl8kbUMjX2qdpj31du68YH8M8irwMk2GVH9rQTxM6nem2rZLkhn9DS26kGNxJtAC1F8uyfS4nUbII+9bO8lTlh7dqnL5EIjyyxVGVb1pwNtviYT2ZfWz4UZIm82IAfnuzR0T8S5DS/zW5PcLUiJscdpbUB7OSdoxnpfnyeFbK0+bu8fDE5deByCeRewoXx43U3SEFltL3dJdFIRTsmq4QCek8JsI67KrfzGIOuazliQFPJOpzOFNtlKlH51zDcswFhDFoxuRJFVEr6mo6rjw0qAbEDKm8ERBsGBQJUgI1qiw8t2XQkO7np24xJ1e5DpfYrQbpecBh5C/6PALtQQfs8viQcL72PeKa+sm3pMv4kuQ3z86ANRxCVYldIrSHmrzHfGqGH/RWfB1Fy8YK861l93Pf/wF9HFIyKF+t3k3OHJKlpNrOesa7KLDyCg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(376002)(39860400002)(396003)(346002)(451199021)(186003)(6506007)(6512007)(53546011)(55236004)(2906002)(2616005)(36756003)(83380400001)(316002)(6666004)(66476007)(66946007)(66556008)(41300700001)(6486002)(478600001)(38100700002)(82960400001)(31686004)(31696002)(26005)(8936002)(8676002)(86362001)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?akNxOVNRQloyZGhtSVAzd0FPM0hicVhYb1U2aHJtQ3c5VXFQdlRGanQrMUVp?=
 =?utf-8?B?R3RadHpoWW1UckFUd0FqM3EzZU5NYUl2NnZYNHlGOWdJTzNXanFvZ3VJd0hZ?=
 =?utf-8?B?T25xaGM4c2dzYU1VemZrMnlvbGUrajNiZndFdzRQNGhHUGxzM0NiY204b2lT?=
 =?utf-8?B?SVMwUzdJTnNXQ1N2aEN1RytycmVJYk9jckVEWndTWG8vUjhYMVl5S3Rud1hl?=
 =?utf-8?B?ZGhkSzQyR1pjVFdCaHEvd1R0VEtQUkNob3pnNWlLd3VMZVZkZmpyQTFaTWtB?=
 =?utf-8?B?YnFPNVdmcWQ2REcrVXBNa3Bpc01SMW9YQlZ1T0c2Wktha3BJTU0rWjg1WDFW?=
 =?utf-8?B?WEZBNGxsd0tLMGcwZzlXNVVWb0Y1b2JIYkVXR29DK1Y3bXcrd0xpK2VSblI0?=
 =?utf-8?B?MHNvTndpT3RjU056QzhXZnVBS3pRWHE2K2ZSdnJDako4VUp5b0xwenpuVkxU?=
 =?utf-8?B?TEZ2WDhlT1d3VjBMR1NkT1YvYTBybW0xdVJWMVJ4MUw5NGt2aklYWVY0Zng0?=
 =?utf-8?B?ZlJ0QTI3UEkyb2ZsMFYwOGFtcUQvUGMxeVhVdmFVNjc2WmtGc0lMeUxXbm45?=
 =?utf-8?B?cTJjUnNoa2dYUE1QTG0yUjZLMG5PZWdGeGJoNEJ2dWc2VUxzdUJDVmFTa1Jy?=
 =?utf-8?B?ZUhGanpwMERSTWtHSnVGbkZ1ZXRWUUlZWE9OdnRJeDNsN1BIS3R2V3lWKzZ3?=
 =?utf-8?B?MnMxVTB4VWtDaU1PTUMyeG1ERWFyWitIYVFFOWVCeWsrRnV0dVFjTGUySm14?=
 =?utf-8?B?eTJKak5OT2N0OTR5WjJ1cHpvNDBmd2dSTndQREkrbENmd1ZJaWd1OEdSYXBW?=
 =?utf-8?B?NGtFRm9Nd3lTaTJIVkIwN1JMdUl6SGdtaDFQR2VLUHMvVi9TUlhZa05MU2FQ?=
 =?utf-8?B?SUxOd214UW41elY1dEtzRXBxRnRaYXRxWjB0UjlTQmZNQlhwdUVVaDdXQ202?=
 =?utf-8?B?dUMvSDhkZzJ3VnA1bW1ORUJuWE1CVjUwRUQwTGVHRkY4Znh4ZDFnT3F5VWwx?=
 =?utf-8?B?eDFYbm9LakRHdklBT1hVUWkxZHYwVmRDVTV3N0RzczJSNzBVSzl4NTRsNUt2?=
 =?utf-8?B?Tlo0VXFWZ25FNGpJQUJlbU9XTUhiUUtzemk1clZ5VXRvTnQwcGpvNlZTVkNL?=
 =?utf-8?B?cXhsU3UxT1hhTVIvRUdwTHFQNGdsY21XYnFVL1JGNXQreUNzbkJRM09PQTBi?=
 =?utf-8?B?cTJ0TFVkQ2RUbnNyMmkyU2kwbGtNV01XeGg1YTNGNWQ5VWVTZnlmczBpczJN?=
 =?utf-8?B?YjJJOWRrbWszOUZQM04zUkFBM2U0SVYwMnpDM2QrdFhXbVNjMEJYLzZpZWhi?=
 =?utf-8?B?cmxZSzdJNEpWNFh3UVczdHNWckhoZS9walRKQ09aOFQ0cjZlZjdBQU1SWVIr?=
 =?utf-8?B?akk0K2pSTTFqd0RUT1RQUWF5dWEybkVZNGo5SU5qOE5meVJodndKczJaL2Yw?=
 =?utf-8?B?aHhDVmkxM3BjTHdxY2ZsTmhyM2ZaWXkxU3R4cHQxaEtnajJmZHhjV1VoYy9B?=
 =?utf-8?B?Zy9yYVFrL2JKazBVWlBLSjRJNlZLenR3SmIyaFd5eEF2ZFBoMFhDaHZmbUoz?=
 =?utf-8?B?N0NPc3M3VFo1SjNHNFJVQkNWK1JrcVNDUFdlWnl2ZHQ5blNCTm1xSTlnSXdy?=
 =?utf-8?B?TXNlKzhBOC9yeHlyS2RHdC9kUHl3QlBRQzE3dE9CUnhXQzZaeHZEa3VRQ0JV?=
 =?utf-8?B?ejg4WVN4enZQa3BjdHdDRHc2OVBqZDhvT1pNTnI1Z1lmNXNpZkNseFNlTkx2?=
 =?utf-8?B?cHhTYndacmRXbURPOEFpUjhJMXVzNVRIYUZvNkdxdVI2TEd4Wll1enpXYkxn?=
 =?utf-8?B?c09FWFhCcXQyMHo4bWZSZ2pTY3BvVXF3TW9FSzcxaFdZTXJ5N0FSanFQUGFy?=
 =?utf-8?B?cVFaeklhOC90b3I0QzRyV2ExUU1Fa2cwR3hidDhQSENFRU1McFUxSDA0UVNF?=
 =?utf-8?B?ajQvMnZYQkc3akllUzVSak9sNHJqVlhEbUxjRzJZM0txUWFFWWh6dmRHME0y?=
 =?utf-8?B?UTZvNjNSOVN2L3RuK3lKemN3QnNmMkUxOGcxNUMxckkrWXRWRkp2RUdhN3hU?=
 =?utf-8?B?SGNueHZGSlF6S1Y4SmNWSUl4SlRxcmlPS1Y4MUxYSXh1MiswZHFySkRxa2N5?=
 =?utf-8?B?RlNlWUNrZUJpUlExdmNoMVpCeEIyZ1NNUmtLVnBoVitLR2YzYWZ5Y0VoV29H?=
 =?utf-8?B?aWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d7b3576c-9d3e-4a63-6275-08db6045deb1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2023 13:09:01.2349 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9BtcoqtzBxPmwp3s0+3iBm/Zily1o/KeImIobJlewdp5XUvb1kTqrD8CxPGSvfYr9/PKbN5hF4SplvY8BKcp/0xgtusZbANffTbB6+s3bY4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8191
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 12/13] drm/display/dp_mst: convert to struct
 drm_edid
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


On 4/21/2023 5:17 PM, Jani Nikula wrote:
> Convert the topology manager to use struct drm_edid, add
> drm_dp_mst_edid_read() that returns drm_edid, and rewrite the old
> drm_dp_mst_get_edid() to use it.
>
> Note that the old drm_get_edid() ended up calling
> drm_connector_update_edid_property(). This responsibility is now
> deferred to drivers, which all do it anyway after calling
> drm_dp_mst_edid_read() or drm_dp_mst_get_edid().
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/display/drm_dp_mst_topology.c | 53 +++++++++++++++----
>   include/drm/display/drm_dp_mst_helper.h       |  9 +++-
>   2 files changed, 49 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/drm/display/drm_dp_mst_topology.c
> index a2b8732db0c8..be71be95b706 100644
> --- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
> +++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
> @@ -1823,7 +1823,7 @@ static void drm_dp_destroy_port(struct kref *kref)
>   		return;
>   	}
>   
> -	kfree(port->cached_edid);
> +	drm_edid_free(port->cached_edid);
>   
>   	/*
>   	 * we can't destroy the connector here, as we might be holding the
> @@ -2272,8 +2272,8 @@ drm_dp_mst_port_add_connector(struct drm_dp_mst_branch *mstb,
>   	if (port->pdt != DP_PEER_DEVICE_NONE &&
>   	    drm_dp_mst_is_end_device(port->pdt, port->mcs) &&
>   	    port->port_num >= DP_MST_LOGICAL_PORT_0)
> -		port->cached_edid = drm_get_edid(port->connector,
> -						 &port->aux.ddc);
> +		port->cached_edid = drm_edid_read_ddc(port->connector,
> +						      &port->aux.ddc);
>   
>   	drm_connector_register(port->connector);
>   	return;
> @@ -4133,7 +4133,7 @@ drm_dp_mst_detect_port(struct drm_connector *connector,
>   		ret = connector_status_connected;
>   		/* for logical ports - cache the EDID */
>   		if (port->port_num >= DP_MST_LOGICAL_PORT_0 && !port->cached_edid)
> -			port->cached_edid = drm_get_edid(connector, &port->aux.ddc);
> +			port->cached_edid = drm_edid_read_ddc(connector, &port->aux.ddc);
>   		break;
>   	case DP_PEER_DEVICE_DP_LEGACY_CONV:
>   		if (port->ldps)
> @@ -4147,7 +4147,7 @@ drm_dp_mst_detect_port(struct drm_connector *connector,
>   EXPORT_SYMBOL(drm_dp_mst_detect_port);
>   
>   /**
> - * drm_dp_mst_get_edid() - get EDID for an MST port
> + * drm_dp_mst_edid_read() - get EDID for an MST port

Perhaps mention drm_edid container here and also in return documentation?

In any case the change looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

>    * @connector: toplevel connector to get EDID for
>    * @mgr: manager for this port
>    * @port: unverified pointer to a port.
> @@ -4156,9 +4156,11 @@ EXPORT_SYMBOL(drm_dp_mst_detect_port);
>    * It validates the pointer still exists so the caller doesn't require a
>    * reference.
>    */
> -struct edid *drm_dp_mst_get_edid(struct drm_connector *connector, struct drm_dp_mst_topology_mgr *mgr, struct drm_dp_mst_port *port)
> +const struct drm_edid *drm_dp_mst_edid_read(struct drm_connector *connector,
> +					    struct drm_dp_mst_topology_mgr *mgr,
> +					    struct drm_dp_mst_port *port)
>   {
> -	struct edid *edid = NULL;
> +	const struct drm_edid *drm_edid;
>   
>   	/* we need to search for the port in the mgr in case it's gone */
>   	port = drm_dp_mst_topology_get_port_validated(mgr, port);
> @@ -4166,12 +4168,41 @@ struct edid *drm_dp_mst_get_edid(struct drm_connector *connector, struct drm_dp_
>   		return NULL;
>   
>   	if (port->cached_edid)
> -		edid = drm_edid_duplicate(port->cached_edid);
> -	else {
> -		edid = drm_get_edid(connector, &port->aux.ddc);
> -	}
> +		drm_edid = drm_edid_dup(port->cached_edid);
> +	else
> +		drm_edid = drm_edid_read_ddc(connector, &port->aux.ddc);
>   
>   	drm_dp_mst_topology_put_port(port);
> +
> +	return drm_edid;
> +}
> +EXPORT_SYMBOL(drm_dp_mst_edid_read);
> +
> +/**
> + * drm_dp_mst_get_edid() - get EDID for an MST port
> + * @connector: toplevel connector to get EDID for
> + * @mgr: manager for this port
> + * @port: unverified pointer to a port.
> + *
> + * This function is deprecated; please use drm_dp_mst_edid_read() instead.
> + *
> + * This returns an EDID for the port connected to a connector,
> + * It validates the pointer still exists so the caller doesn't require a
> + * reference.
> + */
> +struct edid *drm_dp_mst_get_edid(struct drm_connector *connector,
> +				 struct drm_dp_mst_topology_mgr *mgr,
> +				 struct drm_dp_mst_port *port)
> +{
> +	const struct drm_edid *drm_edid;
> +	struct edid *edid;
> +
> +	drm_edid = drm_dp_mst_edid_read(connector, mgr, port);
> +
> +	edid = drm_edid_duplicate(drm_edid_raw(drm_edid));
> +
> +	drm_edid_free(drm_edid);
> +
>   	return edid;
>   }
>   EXPORT_SYMBOL(drm_dp_mst_get_edid);
> diff --git a/include/drm/display/drm_dp_mst_helper.h b/include/drm/display/drm_dp_mst_helper.h
> index 5be96a158ab2..f962e97880b4 100644
> --- a/include/drm/display/drm_dp_mst_helper.h
> +++ b/include/drm/display/drm_dp_mst_helper.h
> @@ -138,7 +138,7 @@ struct drm_dp_mst_port {
>   	 * @cached_edid: for DP logical ports - make tiling work by ensuring
>   	 * that the EDID for all connectors is read immediately.
>   	 */
> -	struct edid *cached_edid;
> +	const struct drm_edid *cached_edid;
>   
>   	/**
>   	 * @fec_capable: bool indicating if FEC can be supported up to that
> @@ -819,7 +819,12 @@ drm_dp_mst_detect_port(struct drm_connector *connector,
>   		       struct drm_dp_mst_topology_mgr *mgr,
>   		       struct drm_dp_mst_port *port);
>   
> -struct edid *drm_dp_mst_get_edid(struct drm_connector *connector, struct drm_dp_mst_topology_mgr *mgr, struct drm_dp_mst_port *port);
> +const struct drm_edid *drm_dp_mst_edid_read(struct drm_connector *connector,
> +					    struct drm_dp_mst_topology_mgr *mgr,
> +					    struct drm_dp_mst_port *port);
> +struct edid *drm_dp_mst_get_edid(struct drm_connector *connector,
> +				 struct drm_dp_mst_topology_mgr *mgr,
> +				 struct drm_dp_mst_port *port);
>   
>   int drm_dp_get_vc_payload_bw(const struct drm_dp_mst_topology_mgr *mgr,
>   			     int link_rate, int link_lane_count);
