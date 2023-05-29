Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 377267143C9
	for <lists+intel-gfx@lfdr.de>; Mon, 29 May 2023 07:43:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC22910E259;
	Mon, 29 May 2023 05:43:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72DAB10E038
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 05:43:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685339016; x=1716875016;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=c8RNto1Hpwr4rB1skRncrQ5WltMZ0W1mIZzRjfwfF5M=;
 b=eycpnMm085u7SKatagX2GCB7cYsVM3vzM/rw3CLjDS4XIrYRXICAJOpp
 w6MD+zNALiPJYuee+damJodPMjiQwHtvoUhZ2HhhaxGBa30TuDgopgfwB
 jELyAGvcevs0nlzpH47wHUr2WswwjqtzMmnaxzs2ma6FwUagZvZJ2cE/A
 EKkuDLfa9LIdDEm7Yoc0+Q9Uj1uwoMruE/NhnyyN55Dl2eD1Ogs4kZSTn
 UqyQN+BBHAUZHLCQGWHjyWh+bHEunoS4us25G3XLGYqRyEATBSsFNiugW
 kdXQoA56GbMYDZOhiFIwcy9sVDTJG62oYC+UvCRkK9i/lOkoLwGN52NE2 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="354638003"
X-IronPort-AV: E=Sophos;i="6.00,200,1681196400"; d="scan'208";a="354638003"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2023 22:43:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="700121464"
X-IronPort-AV: E=Sophos;i="6.00,200,1681196400"; d="scan'208";a="700121464"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 28 May 2023 22:43:24 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 28 May 2023 22:43:24 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 28 May 2023 22:43:24 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Sun, 28 May 2023 22:43:24 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sun, 28 May 2023 22:43:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TLidAUh9MjYa6O651s071r0t/2nvlstwcEHZtMPFxlV5EEUC9ob8ZpzNdlZr3aw3wzkbSxAsBfRFHkprWRvFeWZR/J6U57Xk/U5SEunjE6MQI87Eu194ddmJeycvwq5eZ7YYCkeG3m220A3ZleqUqtUCRqONGdZnoqF9RJybPyPONXUwyPchz8iBXsFmllPnX2iXWvknivGDVbPshCXnzqb9Kmydbs4ZmZz+w8jqCT7IV0GRItIHtC+tXLRbIDMJpeBKNRpwTjRbJiSqN/zLmbn51hRVp8nxneEG4gU+wYO9phaTWwii0SusWeDS7ojGvdVVpgEBKAjQuA1Pj60IFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GKNCCKe78zJSs01y3ctqzyl5iW1HneOFrG8PthriuqQ=;
 b=Cg49g8gWx4YImL2ZRJS0kA0chusPcB+zEXmUDwAtWF2Qx3UEmO9MzF0OxCEOmMZ8nL1zZPfTHfUewWACH2HEFbuaSzMIYJfO1Knu6nq3dCd0tRWv2aduzDZK4k5SfqZ0ibmfleIXxUeIEEkMHqZjTHQaSmXqNGU4YE/FRM8LcW9XAlcjBH+Cmya4w10aJ9cb1pQbaZDRgXIsOk1DEzrkwMqAt8ERzd+DERoAkMP3Vm0mARzNrXjFwYsctve+4/L+M0GZOh/Zfq5yVNLVdGpsjEd0YCkLfMxk5WLRL9PR5GmyTLbaLZF6d5mq82S5bnXbifevvB4+qlHSZA2nF7n5IA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB5611.namprd11.prod.outlook.com (2603:10b6:510:ed::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.22; Mon, 29 May
 2023 05:43:21 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d264:d3b2:c14e:3b24]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d264:d3b2:c14e:3b24%3]) with mapi id 15.20.6433.022; Mon, 29 May 2023
 05:43:21 +0000
Message-ID: <8d9a21ad-7ecf-4f98-d021-c3a0c670521e@intel.com>
Date: Mon, 29 May 2023 11:13:13 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <cover.1682077472.git.jani.nikula@intel.com>
 <d40726d2b4dcff2f91de840d464acda3d1b0365a.1682077472.git.jani.nikula@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <d40726d2b4dcff2f91de840d464acda3d1b0365a.1682077472.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0094.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9b::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB5611:EE_
X-MS-Office365-Filtering-Correlation-Id: 5368782f-78e1-42d9-1b13-08db60079c6f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TXIyDFLwBxIx6g4VbBc3UVuDPWPic1wIE5StTYcrO9re+1lOTXtJVtO32YQ8zqpqgBBE01hlviRMwXWCHJNeTtW4riBQvG/3YvsFcVxHybXTPgBjEkp8qBVXNN+5GKp3ztMkXkG4F4t34Vrtl58Vhd85rGPe0SUMWfAEZqU4kFl0mDWmV+m7u8YxQQfwEIKjRx1sd31egmA0QAygagjGM1da3nrMdpYrTFzTVD9xlB7V+xZmBKTClb8i2PNazW4G4bUCfrWkBLWcErbaK76gNGXLLkjV9KODhRpWxXWO7OXKdnrErApg0NWeN47AEK0dpSrUEBaVIl4qqDp7uvtaasU5Bn9gVSxsFU1LVFEyEiJQn1GvcZ8Kmqijnb5DTvrYp7Uy5pLspe3vnOAsDLcA5BjhnYFzJ9EN4Cl/d82lYQGB4P6k5VRJ1OcTdh4FzVk30vxupSpdYi7N/Q9AGz8HS3GLNIlbGMWFzvORpoOehRu8x036QHllCVXU3A5PLdk0unU314vUss74tPKcqPiXzrMtA4s+EIVZ+qJZRHDDYnRUb4NwWmA3G2mk9UP8Cq8TyA1SCE61rb1o+8QrVoAyTVwxXIM25S+jS9OAgfK2E8TDapDIFV1laiy3mcIa2yadUsrx7H2RUQS4Gs7/EWjmcQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(396003)(366004)(39860400002)(346002)(451199021)(478600001)(83380400001)(5660300002)(186003)(86362001)(8676002)(8936002)(6486002)(2906002)(41300700001)(38100700002)(31686004)(316002)(6666004)(82960400001)(31696002)(6512007)(6506007)(26005)(66946007)(2616005)(53546011)(36756003)(55236004)(66476007)(66556008)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S0xHZnJmR2tmZW9sUjB3dDRRYXpvWDFiQU12L3VGWk4zZHlIY0ZObGNwK2Uv?=
 =?utf-8?B?eHZrUEJTOFRRWFRPOXMxZ0ovMGhCcU5kUk5KV3d0aHdPWFpOYjZ4bVEzNlJH?=
 =?utf-8?B?MVFYMkd6d3JDQmZiZW5ibzRqWWZKT1ZXRmZhTnlOMDZMQmltRE52a2xVSUZq?=
 =?utf-8?B?UDdNd2RCNEVLRXhKTGY4MEpybDhqVHpteGVYQnVqcUdvZ2RhNDArMjFFcUI2?=
 =?utf-8?B?bnhleFJqK0g5WXdoSTVTeWc4M2h5ayt5dzFMUHpxVGEvaW93MFdLVk4vVUtt?=
 =?utf-8?B?eFBGSGd3ZDVzMXAybjZlUmdJblZSTXRFcHg5YjVWOWt0QU1OdTJpbGgrcnFz?=
 =?utf-8?B?bFhBUy9BbWNhQ1pMbG0wRlZORGttMTRPcmNJcGhZTnBuaCtHVnlZQjY0Zk1h?=
 =?utf-8?B?RzJZRlI4bFZONzZkMmp2TjZOZFZYM2hTTDlLTnh3Um9pTHZneVdsd2FjRUpB?=
 =?utf-8?B?aUF4cEY0WTY2dzduVU1td2cyY3RQZUw2MStZVHBKeXFha3dPQkNucHh6cXAv?=
 =?utf-8?B?S2QwcG1ZUThka2hsMzcxNnJiUzFubEFwaUlHYmV6MmJiTkJINWptVlNlUW55?=
 =?utf-8?B?eEdkV09kM0NZa0g3STc0MDJRR2ZjUkthSHV4cHc1UFlxcGMwd3dPakx2OHJa?=
 =?utf-8?B?V1FSbXl0cEZyOEFud3NjLzFrS0p3ME9UUkVUQzUxTWRpdFNoU2UyU2ZBaG1W?=
 =?utf-8?B?T0k3K2dPYURndUMxYnoyV3UvdktlajRqZmNGd2xEYUZBNlQwV0hmUEhSbkFC?=
 =?utf-8?B?bnIySjNMNGpEUmZIWGZBRmZ5cTQzVVhCclNtRmFmc29aeGxxQjNnWk83N2xo?=
 =?utf-8?B?VFNzR3drV3F4N2FyZ01ZOVFZUXpuZnJRaHFGVG82cTNwbzJ2RU55Ukc4MzFF?=
 =?utf-8?B?bXBLSXBhQnhLU2lPak1GR0dERTJrY2dEM0J0c1BDZTNpcGo0OEY1SllpbVZr?=
 =?utf-8?B?OVh4QVBZaVlLaFBveExmU2RZQkFEM2lrUWk1aU83Q3A4M0hSNWVndXkzeEta?=
 =?utf-8?B?SVRZbllaNXQ4amR3UnFLeEhQQldack4xUmE1SllhbU5mT296YndlMEhHL1NC?=
 =?utf-8?B?VjlEcVRIYkFPQmxKanpwa2x5MFpMamNnRTJyaVUyZGc2Z29pNFZWY2JDL1Jh?=
 =?utf-8?B?Z0tUS1E4SFhzNFJKNnNPdVNWQUJ2YWhsaFhnb2tFa1kya1I2amV1aW9iUGFo?=
 =?utf-8?B?cm9NT3JMK1NFeTJIa0R3V0pxM0gzaDM1TngyVE5OeHorZ0xkdk9hbktTc3Jx?=
 =?utf-8?B?YmQyeUh0d3JHU3B0S3pXZitpRWRGRlhJS2F4bnNscWMvUDZNSnRrdHVqUzUv?=
 =?utf-8?B?dWZLQ3NEOE11Q1RKZ0VVZGh1QjZNeG1QcmFQTzU1SjRLQUUvdzlPRXBQZ0pa?=
 =?utf-8?B?Y1dsc3h0bkNObjRObElLVFFBUWJBS1ZwdXkvaWlsMVd4QnNhZ2d6Z3RvQUFK?=
 =?utf-8?B?UjZEVXl0RW45QmdUYlhsWDJPNk5VQlZndWgyU0JwYTFMTTJxQ0NPcVdkZjNv?=
 =?utf-8?B?YmExV0VtMU1XUFc2ZUs5MVhheHNPUDdiVXYvYzR4MkJpaGhhSGdsNXNmRS82?=
 =?utf-8?B?Y21kUFROcXIwZXVBSXN4V2JTYzZpK0hRUjdtdUV1N0ZPZ1YxR2VuTGk2Sk4w?=
 =?utf-8?B?YjFrWDdjSHRXVHpXb2xxZU9uVEh1UUhqT3pvN3gvNGJXQVpZMFlpbmZGNHI4?=
 =?utf-8?B?SFYwd3hpT2g0R1ZuZ25PMkJGelFlTFptZ2VacG80UTd4QzVtaGZSMjk0NVdr?=
 =?utf-8?B?Z3BwdlJFV1hoZmFuQU1EMXl5S3U4UllDQmpBK2d2aytqM0huMVh6TDhGNDRh?=
 =?utf-8?B?dG11TnNtMzZjM0lzUTZrbGk0MjA5VkFUVUJPL1FQVFg3N0tObHB0dGtoT1or?=
 =?utf-8?B?ODh5ekw2RVFOQm1NVFE5WGlMZWVrckcwZkllUy92d3JBa0wxSXlRQVVRYlRx?=
 =?utf-8?B?WW5Md0l5YlY3K3I0bWhyc2JLb2U2cWpnTU42d3dwb2NVVmt6WitOd1VzZVJ3?=
 =?utf-8?B?c0ZEd1ZWWStSakVyTkRQTEZNUmYrYjdUYnVRRWhSaE9KblB4VGcxN1NIMyts?=
 =?utf-8?B?SkVXMkMrRm96QnRoNGcxYzVPSTgvWjV3UHRoajZ2WVltd1VkeWNEdjFNdzNt?=
 =?utf-8?B?c0JzcGIrS1A1TTBwbldJSjd6eXB2Um01NmpTeU9DdU1jVWZ5RW5TRnpZN3dC?=
 =?utf-8?B?TGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5368782f-78e1-42d9-1b13-08db60079c6f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2023 05:43:21.5111 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: npPbftbCB0ghrRDF3UdQTsU8ksrK7d0S7imf402A/0n0OVfbL3oxWDqCedy03U2YEUYA1NUY2Ptu7yfykpOp9/xIsTL4e7NX6Cn+aMlz++0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5611
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 05/13] drm/i915/hdmi: stop caching has_audio
 in struct intel_hdmi
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
> Use the information stored in display info.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display_debugfs.c | 8 +++-----
>   drivers/gpu/drm/i915/display/intel_display_types.h   | 1 -
>   drivers/gpu/drm/i915/display/intel_hdmi.c            | 6 ++----
>   3 files changed, 5 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 1416b82fc8a3..2a4df62692a6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -252,13 +252,11 @@ static void intel_dp_mst_info(struct seq_file *m,
>   }
>   
>   static void intel_hdmi_info(struct seq_file *m,
> -			    struct intel_connector *intel_connector)
> +			    struct intel_connector *connector)
>   {
> -	struct intel_encoder *intel_encoder = intel_attached_encoder(intel_connector);
> -	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(intel_encoder);
> +	bool has_audio = connector->base.display_info.has_audio;
>   
> -	seq_printf(m, "\taudio support: %s\n",
> -		   str_yes_no(intel_hdmi->has_audio));
> +	seq_printf(m, "\taudio support: %s\n", str_yes_no(has_audio));
>   }
>   
>   static void intel_connector_info(struct seq_file *m,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 17681a8e745c..d7ff75167f1f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1549,7 +1549,6 @@ struct intel_hdmi {
>   		int max_tmds_clock;
>   	} dp_dual_mode;
>   	bool has_hdmi_sink;
> -	bool has_audio;
>   	struct intel_connector *attached_connector;
>   	struct cec_notifier *cec_notifier;
>   };
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 8141d5184856..3045bf21ba8f 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2158,7 +2158,7 @@ static bool intel_hdmi_has_audio(struct intel_encoder *encoder,
>   				 const struct intel_crtc_state *crtc_state,
>   				 const struct drm_connector_state *conn_state)
>   {
> -	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
> +	struct drm_connector *connector = conn_state->connector;
>   	const struct intel_digital_connector_state *intel_conn_state =
>   		to_intel_digital_connector_state(conn_state);
>   
> @@ -2166,7 +2166,7 @@ static bool intel_hdmi_has_audio(struct intel_encoder *encoder,
>   		return false;
>   
>   	if (intel_conn_state->force_audio == HDMI_AUDIO_AUTO)
> -		return intel_hdmi->has_audio;
> +		return connector->display_info.has_audio;
>   	else
>   		return intel_conn_state->force_audio == HDMI_AUDIO_ON;

This now looks similar to DP intel_dp_has_audio, perhaps can be re-used 
in DP as a separate patch.

In any case, the change looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


Regards,

Ankit

>   }
> @@ -2360,7 +2360,6 @@ intel_hdmi_unset_edid(struct drm_connector *connector)
>   	struct intel_hdmi *intel_hdmi = intel_attached_hdmi(to_intel_connector(connector));
>   
>   	intel_hdmi->has_hdmi_sink = false;
> -	intel_hdmi->has_audio = false;
>   
>   	intel_hdmi->dp_dual_mode.type = DRM_DP_DUAL_MODE_NONE;
>   	intel_hdmi->dp_dual_mode.max_tmds_clock = 0;
> @@ -2453,7 +2452,6 @@ intel_hdmi_set_edid(struct drm_connector *connector)
>   	/* FIXME: Get rid of drm_edid_raw() */
>   	edid = drm_edid_raw(drm_edid);
>   	if (edid && edid->input & DRM_EDID_INPUT_DIGITAL) {
> -		intel_hdmi->has_audio = drm_detect_monitor_audio(edid);
>   		intel_hdmi->has_hdmi_sink = drm_detect_hdmi_monitor(edid);
>   
>   		intel_hdmi_dp_dual_mode_detect(connector);
