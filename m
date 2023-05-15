Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19CA7702B5C
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 13:23:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75D8210E056;
	Mon, 15 May 2023 11:23:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C484E10E056
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 11:23:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684149791; x=1715685791;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=K6cY8N1Nkq07QWbocZ43eVOkLf1veDCQ++T9IfExPYE=;
 b=f7uHo+rVEIdeDUzmBZmyzTrlibHs21gRnKh7EW2tgRSpC1gzmDtjp4/d
 x9s7zqEwuJYZ7sOq174A90nBTAWkI7cfBfW5woYfQ9dJWP7x3M0H6Kqtm
 1sRtk2IffGn4POMBvkgRz/Aydi1QlWp/1hxHvai8QT/LV6NbmRCvKjzQ2
 TTZVw6CFA9z4Urj/ZmsnrqjFEMRRgwy9PIcJ7RWs5rP42YMXKiJj0A2ln
 YxMyF/cexwU279VV0kOP+MZYXDPqMRzN29n9upzx8CLfdvB/MjDO8GTby
 C8HxAY8+qroTzihpW9yoXRnKdEU61S3f+eP0ys1/YZ+1/OJRFln/lK89h g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="354332709"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="354332709"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 04:23:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="845225463"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="845225463"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 15 May 2023 04:23:10 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 15 May 2023 04:23:10 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 15 May 2023 04:23:09 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 15 May 2023 04:23:09 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 15 May 2023 04:23:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SMxVXTYZ9cgfiQ3/uXrXhVQ1LKf3RbFC/jRoIdE+OjEki05zVGUV/CTIh1rb0yR40Khnbs9Ro43RrqFTaiy8cX16ql39FC4PKra142/cJz/WJVltiBSLiSiD9CrXmsdXbrfIvoDJeygSqpYaqgxOyseEVWuK7/wsIClXp6ratJqA4bffucZSchH8Z2fpKp8xEr252/SN1hV+iUL/3lSLXvWMuwntRDqrY/9avhNIS6MQB7Aojqx8gUIaYM9EwlGqyXvVoUDDQolcaHXnWLnY37iyuUmO6GBqUGsAEgVDRWQr4IA8rmU+gDalsczo8lcY51qbgg7Rrx6aLAhe6WK1zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fMZ5rs982wBZ/udqOehlzqGnTQawcuXU1fUPeBPGP8o=;
 b=Q+jrS9G0waiKbpdCg6PkXZQGIhPiGY55q/KKrRROTR8Q6bBScWrlwtSXkyh+61GLRqHYC9yUxomlPr+/hQnp6er89mwXViReK7LC7CDTiNgDuh/5UCTnHXhd1Ltr2khwGmrjcTkDMzsoJIwmLm4ARpw4vf0bDR9QEG2SMHv3XTCq7jpqXvfgNI9vpj3yNbsDAUyM4LfvBpM3IesHvf/lufXrSbLeV8Gl6RWej9XmeARxKzGQ9Wb/KVouid2BAgb7seUPS3SropBidOA3pO1lmlm/spM/K/1mEEBdzDHxU+YP2HGASKphQCdGicoENUPPVkIaw6aQpqymUnK5SQLxHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA2PR11MB5164.namprd11.prod.outlook.com (2603:10b6:806:f9::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.30; Mon, 15 May
 2023 11:23:04 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b%6]) with mapi id 15.20.6387.030; Mon, 15 May 2023
 11:23:04 +0000
Message-ID: <fbd73085-f892-cfd5-6e02-42ddd410d568@intel.com>
Date: Mon, 15 May 2023 16:52:54 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230515103225.688830-1-suraj.kandpal@intel.com>
 <20230515103225.688830-5-suraj.kandpal@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230515103225.688830-5-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0186.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e8::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA2PR11MB5164:EE_
X-MS-Office365-Filtering-Correlation-Id: 43f02572-68c3-453f-a01f-08db5536bfa8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gmKCFLV8YcALcomqkkfaWZQ3ukSa4MoCNVLBHq1r0sRt07XRl6odU17xCiZJw2Ose/8YDOIEdy/+Ui7laaspQbr+MN47E1WRJ6Ci458TCLSrzl2SItfRyr24SzHwOGIhPUAF3MERphYgckuR/RGbaCXIej7sCT0jGSG7ysHUgG/ZRj9BiW8QfJBEITWsN50u9ec8R8rwGJMLib+Q8IrLFuFDYZW0D/4O88lvr2dtizjZyo1p28mNwZa21LT7RyfkApTL14yI1zh7XzPs9TMPm5ep3/T1TgLOp+e/zEEKi03hvMHTiheSg+eExYyE2cFbpSfkzAxh6tAJ/FXSAPlZLRL+hoQvtley97+CZ+gQEkOqXtjs9A27U+/zlKVANHP4zmy4uelgPM/q+WBtiJ4t+mcE1wa1nUYUvHvLb+4FIbEI69YQR3Ny9jzSeTKdlwtCKRMIr2tzdhu3+FZl6HB7+r3i4+q/QwqtF4pkmSX18sEF+PPqK97XHw+VhBnij350Y6qMcj5EGnDarzY8XzcwtP1hT7LZMl5g5ol0tSxCmNX9EavGzjfJBxW7Zb8ecwHLnAn5A1Dv+vqDBx0wvhnPQBbgC6vlE8DM4JKuB0jia0NF/KceGcXBfeMj915/5CcaLKndc+YcYAf6LqKIfaw2kA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(346002)(366004)(376002)(396003)(451199021)(36756003)(86362001)(316002)(66556008)(66946007)(66476007)(478600001)(6486002)(5660300002)(8676002)(8936002)(6666004)(2906002)(38100700002)(31696002)(82960400001)(41300700001)(6512007)(2616005)(186003)(53546011)(26005)(6506007)(55236004)(83380400001)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SDl5MUQ0MERxWHFNcmVFZzZFdVkrakVDT0NWZ3VsVDJ2SFZOR1QwUlI4NWM0?=
 =?utf-8?B?WDUvcnNsbUJ0bGhieVJROEtwVHUvcHEvVUExVVVncjgyb2FpekNQOGtCQmg2?=
 =?utf-8?B?cEdpcEtQeSt2OGFjQzFsMTZpL3ExVys3R1JqL05td3BzT0h4QlN4SlNGeUhi?=
 =?utf-8?B?a05oUE9SYnUxaThKOUJrdDJkd0FtSHVPaFJyZzBmVm9NN2wyRVRpODFEaG82?=
 =?utf-8?B?MlJyK21NSVJpOWZYWDRGZTA5SER2Wlp5aWM2ZWtrbVNST2Juc21tdXdYZ2Jp?=
 =?utf-8?B?aFB4ak9lRXRCK0Q0eDFHaUxySEhBMjJjSDFuU05ZVXZmalJpU0VIOFZjeXNs?=
 =?utf-8?B?amhLckdDczZOaGR0b0JiTm5XR2JFeVZQV1NiejhMUGs5WlNDUS84M3NWY3Fu?=
 =?utf-8?B?SjBSK1gwb0RGSU15aXR0czd2dmdCR1hEd0FKM0ZSK3NKcExCM3JGdWQrUlkw?=
 =?utf-8?B?T3lERjNqOWFFcmc3ZExCcmg0YmxKMGxOdDl4b1BSVm5uQUlUaDBBdWd3U0FH?=
 =?utf-8?B?OWtJWkdPank1cnJnbkltT2Y5V0F6dWUya1BQcjdXb09NUDJNZHBrTWdEdjJl?=
 =?utf-8?B?Sldvd3BMb2hLbGFNcDB4YVU0cXhGcEJtRjVFVldodGVkUmxtRlROOURnWGdY?=
 =?utf-8?B?OUF3T1Qya1hkUlBLU2VZQlBCWXI0NHhTSml0VkdBYXIxWmR6MmluWnhuQnRT?=
 =?utf-8?B?T1ppdUFzbEhqQlp3ZzNHNDRYM1k1aURndU1qQUJUL21malhqeXFvK25aQ09Y?=
 =?utf-8?B?Z2ZLbTJKODFIakhVVUJtUjIxOGpFVkdNZzUxQ0VSOTYxdVhCNk9LYkFDU0h0?=
 =?utf-8?B?TDg0a2cwWkg3L3R2NzdtSmZ6WkVmWmlSZFJBWXRRZDd2ajhoMjYvWWxoRFVP?=
 =?utf-8?B?S3pSWlZrcXJDMElldUs1VCtoR3FiSGZGREJnb2YweXhvRC9PYytEQ01GMmJo?=
 =?utf-8?B?VTUwUXJPdHFiNlRlQm93eEJMUFYvTGNZM1ZnUzRaR080UnFMdU1RaFJwT3hM?=
 =?utf-8?B?QlVtTUhYUnNjWElVQjZBcm5Fdm5HWjlZdEIvdGRXb2UrL3hYMk9oVzZmTTVT?=
 =?utf-8?B?bHdGQTE0bzFNckxsK3lZTFg0M0s2ZFhtZEtsL3JsVm52ekIwSFFid00rVEpP?=
 =?utf-8?B?NU5KZWhMVWk2cG1oVXFlZEo4U1ZJSmV0UFdPcytIT01HSTFKdk5ic0srSXEz?=
 =?utf-8?B?OEdLRHN3ZTZKempCOExTOHNxWmNHNm9iSSt0SDBIM3RHWTcyWW5FZzZOYjYv?=
 =?utf-8?B?N0M0bjR3dTdSWnBDdno5d3o0SEdaaWtrWmhaRmx6K3YrV3RmRGI1RUh4STR5?=
 =?utf-8?B?SWhkQUlnN0V4bmZxbHlGejFMTWJUYkJBK0VBTGNDSXFGdUZYWVJIQWZxS3Fl?=
 =?utf-8?B?b0hhSWkzSVZkWU05aG9nN0NCVERyRDEzSVJPYUpzY2JDeFJneXl2MjlnTjZw?=
 =?utf-8?B?aFZJNDVWWGhGeTJBckliY29uTkR4M0ZjZ29hZzg4TDRpdTVLZGk0OS9ndjVS?=
 =?utf-8?B?RFNJRU1JQUJlTVFobzZiYWxMMWpxZnFWb0VqSGxQNHRwK0gvZ0JiZ0FzNlJN?=
 =?utf-8?B?ZGhWRTRVdDgyc1VYUVVUeGp0R3M5NkRxN1N0OERwYTVCejR5K2lCdEJhT3hQ?=
 =?utf-8?B?MnZrak9xZlJyR1lpMXowblpETmQ3dmUrM0MwaHFxQ1ppSjJLdlYreTdPSlJj?=
 =?utf-8?B?SUxJU2ZEU3hBWXViRi9TeUlpV0doazNqYmFPbFdEOFA2UGZYMzhBZXlTeXZx?=
 =?utf-8?B?SzJxOVp1R3VUQXBaY1Q1WCtmcGkxeWxCdzVZZlp6K2RndC9XaWYxS2wyUlNr?=
 =?utf-8?B?NHl4ZlBUNXhQYjE5UE9kMXVTOUZudW1MVTJwcGFRcHE2REwxL1FFVXVrYnlj?=
 =?utf-8?B?SThzQmJidnBJc1pYYXBxK1BYVkROTjRlOHlPd1RJS3kvZWY3cGRid1lMcWlV?=
 =?utf-8?B?UEJjbG5TUGhRYS90YTFvaDhCc1hKYTFEa05LWUZIclJ3S0VVZStPQk1TTDFV?=
 =?utf-8?B?a2tNeW0vdUZPY0FuZlpOUlZXSHEvRW1rc2RjUlovNmhoaDRib0RhTGJKSGho?=
 =?utf-8?B?NnlESHp2WENmRkk0UU5MMm5VMkVjOTMrbC84bkVJZHc4MHdLd29RdHRaemc5?=
 =?utf-8?B?RkhvS2pSMGZ5YmNFM0tKeFdGWkM5TllMdTZydHkxZWlJbWpkdDdtaUJwY2Jp?=
 =?utf-8?B?Unc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 43f02572-68c3-453f-a01f-08db5536bfa8
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2023 11:23:04.3924 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jkBuI2shCFrTmWd9/lcYKSjuFb4A+B2rk8ZznEdd2TqenUd3U3rfWYsQJW2/vc2pEehDivbZ0pxWBy3/i2tDZMEOMHgD2twRuRXilqMA9VA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5164
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 4/4] drm/i915/hdcp: Fill
 hdcp2_streamid_type and k in appropriate places
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


On 5/15/2023 4:02 PM, Suraj Kandpal wrote:
> stream_id and k(no of streams) should be set in
> intel_hdcp_set_content_streams. stream_type should be set in
> intel_hdcp_required_content_stream.
>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdcp.c | 9 +++------
>   1 file changed, 3 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 6c3cd3b7db69..350ca3ba5fc8 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -97,7 +97,6 @@ static void intel_hdcp_prepare_streams(struct intel_connector *connector)
>   	struct intel_hdcp *hdcp = &connector->hdcp;
>   
>   	if (!intel_encoder_is_mst(intel_attached_encoder(connector))) {
> -		data->k = 1;
>   		data->streams[0].stream_type = hdcp->content_type;
>   	} else {
>   		intel_hdcp_required_content_stream(dig_port);
> @@ -2159,7 +2158,6 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
>   {
>   	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
>   	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
> -	struct intel_hdcp *hdcp = &connector->hdcp;
>   	enum port port = dig_port->base.port;
>   
>   	if (DISPLAY_VER(dev_priv) < 12)
> @@ -2189,9 +2187,6 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
>   		drm_err(&dev_priv->drm, "Out of Memory\n");
>   		return -ENOMEM;
>   	}
> -	/* For SST */
> -	data->streams[0].stream_id = 0;
> -	data->streams[0].stream_type = hdcp->content_type;
>   
>   	return 0;
>   }
> @@ -2297,8 +2292,10 @@ intel_hdcp_set_streams(struct intel_digital_port *dig_port,
>   	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>   	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
>   
> -	if (!intel_encoder_is_mst(&dig_port->base))
> +	if (!intel_encoder_is_mst(&dig_port->base)) {
> +		data->k = 1;

setting data->streams[0].stream_id = 0; is missing from the last patch.

Regards,

Ankit

>   		return 0;
> +	}
>   
>   	data->k = 0;
>   
