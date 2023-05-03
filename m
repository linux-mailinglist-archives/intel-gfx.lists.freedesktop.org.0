Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52AFE6F54F2
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 11:41:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2071F10E234;
	Wed,  3 May 2023 09:41:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3417F10E234
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 09:41:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683106883; x=1714642883;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zoQe42oTBxAUUbl+Z9GPv/A+ET7/yt6cjdrj/Q6hjpM=;
 b=nwFPOIShzeud4qR7OBx7t5Hfk6fBegz6ys5taqTpUL+D8R0rD27t0uKR
 Rp/UWPgVAVLKm0vY72DIe0x+4UeQgZhHK7u6KVAheDKxeHxreJEueKn8O
 q9fmfi+qZ74PwHbUn4/v5ISpHfX0xS4BRdvT3OP2zMk45Rw5scB6WmFby
 y5g5pmD6Vq4iQHYpfqcXSu3YfMaURBe2A6U3jYnoEoSZ1WiOsSQ43Pql2
 NQNhYwsVs6S25hvJpShpYaR/tIg8oEDPj2meeLS/xeRjSAuplt6uVQ0R3
 qgM+RTpLyo4gFk8La9ShgbbUHcAW4Ovs+WDjEz89DkI5nL+HB1E17wF2t Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="376676630"
X-IronPort-AV: E=Sophos;i="5.99,246,1677571200"; d="scan'208";a="376676630"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 02:41:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="870874024"
X-IronPort-AV: E=Sophos;i="5.99,246,1677571200"; d="scan'208";a="870874024"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 03 May 2023 02:41:21 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 3 May 2023 02:41:21 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 3 May 2023 02:41:21 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 3 May 2023 02:41:21 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 3 May 2023 02:41:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mLpiSskDTyxuVR3vW2b4Cy1xzqhTLRY5uJUmQzy83xYY0vHDOJKTVl4UvtcHJPXqjNo4zPDR7tOHcKO7JeMdfW2BmZalELMR70a3akcZ+S7Yf2DU/MP397Wr6/9ufpY2V50MdSp/D+uITpLOcni8vQ2ndUoa8PCpdCpZkJAXLCKYcKxEyl0nRN9YdlDkAM3/eq1Fvq1ZVoxgXzPTvSat4pXtX2mOBcHYk906aZjFfqZrQABwyIw9MAVq/cal79aIKCnjnR0IP8nNoRnioZy79O6RPO1xZEdE7F5JWWSNgdxaIRIDmUgHdz9aaZHbaqDyGtMuBkSKxGH6u+evBte6qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uztlh63CH7+W2hmNcE00JjZBk8v2kMIY+uKQCwvzJxY=;
 b=E1LzMp88ve886VJrOGHTR2PMy0qMeam4Bm7r9hk+iSiBF/nBx5kRQFUNLf5QVpXNVTK6E5Q31YtqXa4KUwjuW0MieGQrvjJs/oJ1skCJgNtqQnJLUSHF9ugn0dJIX1ucX7iWSgIN7FucI5EMSjPcxDRZ85Hy7B/HX79jqZc24lCBMU38j6CQbR/z01RbQps+WHE+/nODVryecT0UHYNz+8N5TiTlht9Jn9p7+5HaanvhnT8jvKuUX1xFnjVPdFxC95yMdTVhOMsRZuGSn+fL1J+y/j7ePAC9BsEsAAqBiQDv1gmtVBsUQlZXIhlDrJ7E7jBHcii5Ygks9cJB5nt88g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB7926.namprd11.prod.outlook.com (2603:10b6:8:f9::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.20; Wed, 3 May
 2023 09:41:19 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b%8]) with mapi id 15.20.6363.022; Wed, 3 May 2023
 09:41:19 +0000
Message-ID: <3f62a980-1146-f72e-fd62-3df810a4c9de@intel.com>
Date: Wed, 3 May 2023 15:11:08 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230502083652.463435-1-suraj.kandpal@intel.com>
 <20230503013731.537037-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230503013731.537037-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0209.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e9::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB7926:EE_
X-MS-Office365-Filtering-Correlation-Id: 97232e78-1efb-426f-5320-08db4bba8bd0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GpHgoc/G06to5hIt+ChhRfqsnsZ5Xlh1pwUaKf1kBV+9eVublFKzAFPeXXgogH56MlTUVRmt1adVvr4cAt3D83mDnAjqjEYp9/foA5QweYx2QGUjVddVSunmdzCtntobQ4Q5FIKHkMDH7NYhXUtjFatFsZBiYw64xa8eQOE6r89MWUhOOJRG0oaIwnlR9lSOPpxKX7JRWWSrbkhS3p4u+DTMe4SRcsTwQxewnde313yaeGF7hPCKBeXvq73GJAePs7OyzobdQM91jmTvNqPdGojcvU6XBDV0umfl5BMN4DqQAUnu/2lKYF1A+XNP1SkhITizsaemFwscRo9Ae7KyUpX0BHsMaeWhpPWGruIL8i2iWG8dgClNItAHTghmAWxJ86Os3Zg6SYdKuBHhS1y7PboGiI+nbEQIH16alR3PQleXk5RbuAaynV+Dw0fSlBm3jGkLDwZf2hF8xkunS5SUDgS78a+e+I9kW/BLpLktxKzsjDNDtXQ+4kNXBPuDQi+2LlBtnWzJJ+bcVWox9PmqHAhD/kBf8m/RZTMTMsLrxQU95BZZQNl6gqUX74oIIjB3B+j9js3VrCFrm9DR/q/kRGSd4PS/FbJLmlruhAIe9SGs7bzPLcbndkLX9cRIPX+2W2riOK4sqvMpPCIN5mnEdw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(346002)(376002)(396003)(366004)(451199021)(66556008)(5660300002)(2616005)(86362001)(31696002)(83380400001)(107886003)(186003)(6506007)(6512007)(53546011)(55236004)(82960400001)(26005)(38100700002)(6486002)(8676002)(8936002)(478600001)(316002)(6666004)(41300700001)(36756003)(4326008)(66476007)(66946007)(31686004)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N1RlMmRFL1dpSUNMMkp5RStBd01pTkw0VEpxQzdjcmtSUEEza1Njazc1QzBw?=
 =?utf-8?B?V1ZNUDR6TmV3OU1lUm9IZFNxWU5FY0MwYXhuM2YycXpncnR5dnNPS0JmVEgz?=
 =?utf-8?B?SUIzMzRndzUzOXJYaVNYTGhEZUUxcjJ1K2dzSXQ2bzFvV2l6S29QWElYSHRI?=
 =?utf-8?B?QnpIOW5mUldOR0l3Zi9BNkNLbmxFbGNRazJKbFBQTm1XMmNxT2tuTHkxVGQ5?=
 =?utf-8?B?VnI4eURaVHdHekJnTEx6cHBFa2w5VURpN21yMzRBcVgrSGxUaGpjTm50S2lz?=
 =?utf-8?B?YnF3Z2l4eUc3K0pVK3BMMWcrQ3o4a0t4U2dJZTgwb0RLNUQ3aDI4OFdCUE0z?=
 =?utf-8?B?MVdBeW5UbitKQXF3R2N3Y29lRUwxT05WVm1JNVh1YjZUZVAzVVVCS0hmSDFz?=
 =?utf-8?B?TnlJSTgwLzZaR1BjcXpsUk9PUzlrWU93REp0eGYwSkhnRWVhTEkrUWlOQ2Ns?=
 =?utf-8?B?a0JMZHF4bEJXRGM1WEZRRFdSOGdRM0IyU3U3RGtMWmFZL0xvRWFuQTRudVo4?=
 =?utf-8?B?THZRVE91QVZaNjB5c25YZEh6ZGtnTVlvNXBVOHZVek1kZkE4ckJIQ2htclVG?=
 =?utf-8?B?cXpNcEw1MXFGcDA1RzMxWTlydG92d1BKcXhoRlNuTGJ2SklYSml4NGVNNEw0?=
 =?utf-8?B?OVJYNVBWUEhQT1l5WUd0Rkl3VGVmQ1lxRHFucTZNRUFNbU00aGNNMVhaam96?=
 =?utf-8?B?eTFCTTlWT2s4TlM3U3RoR1FmMUkyN3h2aFcxcEVUZXd3RlpBVEZnSFRSQThL?=
 =?utf-8?B?Uk9RMjNYaFhVeDdoSDNSK2pPT2hNeEtndThQZDhTdkJVUHlRZXJiMWl4aVkr?=
 =?utf-8?B?L1l5cmJZMjU1dDhGRkFncUdvVVdPaHBQK0FESzIvMUt2WUNWUkFWM01Va2pa?=
 =?utf-8?B?VXBCSFd2R1Buem5vbUhPUzR0TVE3Vk82MjVSMlc4NFdJZlljeFBONm1vbisr?=
 =?utf-8?B?OHUwTk1wRjhuMjVsNGxVemxDQ0FLZXVzSlVIMEVxYWxuSlpwWmZrNUprd3Uy?=
 =?utf-8?B?aGZuS3cvOHNOMFU2VFcraFJvRmNaOERKL2VaMEJBT1FjYWE4YS9uYi9qc2ZU?=
 =?utf-8?B?USs2RzYyV0g5cnM4Qmt5NXFVb3VSVzVRS3NkQlFyVWc0WmpMRFBzdng2K2FL?=
 =?utf-8?B?aEJKTzhjc2YzemdXUGF6M2pzQkZ2NS85aEJncS9aUXgyUTdWaTQ3dVRaeGVC?=
 =?utf-8?B?T1BOWG5pNDZKSGxScWNZaHZpV01ETkI3QkJmY3c3eDRCYWF5TEpueFNIMFgw?=
 =?utf-8?B?bUJTczJyRURuY1BZQVFhQlJSbUgrZUtVd1ljMmNHSlR1a2RPNkZXL2IrMSsr?=
 =?utf-8?B?UWxmR3Ayck5OM3FKQU5JUWlZWDVSWm1jTlhyZWpoaDF4SUpTaml6RHVrL2J1?=
 =?utf-8?B?TmZvcUtSNXc3cFhCWWdFU2t2YnFQN3NkZUYxbDVwM1NlaXpqaWV2YXdCTytq?=
 =?utf-8?B?RkFXcW5ZaDlKYUg2dmZwaE5NVzZJTlhmTDd4U3hGV3dsbDhaWU5aeHN1cGYy?=
 =?utf-8?B?NjloMmVHQnUzbHZqM00xQmxsZGowa1VJc254Y2FVTHBpUDRyZzhFcVIvdkpT?=
 =?utf-8?B?OGhvRUY1YnVyYlpIaG40NjBWL1JDUE5tSldzL0hDVURZek1tUnpsQ3RseWsw?=
 =?utf-8?B?bkU2a1ZMZjZPL3Y4dnhrZEVFR1lsUDNOSC9sc214bWVnV214OHpWVHgzSTBP?=
 =?utf-8?B?QUU4dUYzSkpXYVhsRlAzaG1FdVh6OTRTdUU1ZktwbVhsN2xIZWxxVzZ2NFV3?=
 =?utf-8?B?c1NmNFppZEtTZVc4enYvSFpoMXc1aTV5SE1uKzVndU5WVWRub3BLdTBGQnRS?=
 =?utf-8?B?QzM5U1ltVDMyOFlEWUZ2bGpTaFVYZDMzUWVFd0w2S0tBenlPdzlvL0V1VTJF?=
 =?utf-8?B?TWQxdG00NHRqekM2MWxLVU10MGh3a0h2cWQ3ZVNPU1Y3SXpEYjhvZnF2YlFB?=
 =?utf-8?B?dzNxTTBGR1hLd3BsU2NOYWhmUkRvWUg2M1p3R3JsNVphMzNsVElZMkVtSTAz?=
 =?utf-8?B?aGpHWXNIbHlnTWdLV0tJUjBKT29LZ0U2cXE0SzJpbGNFRnBhSGZtc3FERU53?=
 =?utf-8?B?TjRIOURzUWluc2pqakVZdFpFY3BHOSsyeGZlSjdBZ3loZUovbXd2TTMrMlh1?=
 =?utf-8?B?VjN1S2VRTkhqL0xwZlNUZ0c0LzJiS3BBeGtiMkRiNStEYXUreDVJWEs0QTFz?=
 =?utf-8?B?Wmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 97232e78-1efb-426f-5320-08db4bba8bd0
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 May 2023 09:41:18.8356 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xPi+fkA5g8Q+uuDHYxX0Yahq9/fq1f9rlEAnYQgqi1xA2pQ2iudV1MmmDVDUx8cWLCMym8tFVKY2XkzuUGYlyrzOhyUtkz0AgXppbhQvpbs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7926
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdcp: Check if media_gt exists
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


On 5/3/2023 7:07 AM, Suraj Kandpal wrote:
> Check if media_gt exists if we are using gsc cs
>
> --v2
> -correct typo [Ankit]
> -assign gsc variable if gt exists [Ankit]
>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdcp.c | 8 +++++---
>   1 file changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 650232c4892b..a7faafd1dcc5 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -205,7 +205,7 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
>   	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
>   	struct intel_hdcp *hdcp = &connector->hdcp;
>   	struct intel_gt *gt = dev_priv->media_gt;
> -	struct intel_gsc_uc *gsc = &gt->uc.gsc;
> +	struct intel_gsc_uc *gsc;
>   	bool capable = false;
>   
>   	/* I915 support for HDCP2.2 */
> @@ -213,9 +213,11 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
>   		return false;
>   
>   	/* If MTL+ make sure gsc is loaded and proxy is setup */
> -	if (intel_hdcp_gsc_cs_required(dev_priv))
> -		if (!intel_uc_fw_is_running(&gsc->fw))
> +	if (intel_hdcp_gsc_cs_required(dev_priv)) {

The variables, gt and gsc are used in this block only, so lets declare 
them here.

I think it would be good to add fixes tag.

Regards,

Ankit

> +		gsc = gt ? &gt->uc.gsc : NULL;
> +		if (!gsc || !intel_uc_fw_is_running(&gsc->fw))
>   			return false;
> +	}
>   
>   	/* MEI/GSC interface is solid depending on which is used */
>   	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
