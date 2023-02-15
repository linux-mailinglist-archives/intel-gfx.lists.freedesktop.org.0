Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1006988A1
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Feb 2023 00:12:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B56C10EC92;
	Wed, 15 Feb 2023 23:12:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F7ED10EC92
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 23:12:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676502760; x=1708038760;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=P2+2Dio89gKzUwKv/Nw1AkbiqNmjCT3EXaRUNZzR5l0=;
 b=P0pfcvOZwYMrTHJkT4AaMAtuEL0cQd1rqTN8uLLqPEKl8VmfAlc/JWya
 cgaIcn5ADnyyjc2dzg5PtXOwjkb4pHq0GJ33xhDJRelXK50lb7JSNu5IL
 SEU8+k1rl50+gAWnesEkYb+PIhicZ+q8UmJoDRbv2CI30hmuW8W+Zt1R1
 m2lblATrdXzUAF0afpO19NaNKfwiQcJrB8y+K+o8eAOSHs0OC7u82q9lM
 FeFuohtoIF2x7PD2slUFuzblnDXgjbfLsTtPVWiBL6S6ksWdCzmIHoFq8
 A5RQj+4JI9Uu4NnBYn1C8MPNJQ49kZuebIukzTWBgNIZ9SwTF/o4Xs+/W w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="333720457"
X-IronPort-AV: E=Sophos;i="5.97,300,1669104000"; d="scan'208";a="333720457"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 15:12:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="702347672"
X-IronPort-AV: E=Sophos;i="5.97,300,1669104000"; d="scan'208";a="702347672"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 15 Feb 2023 15:12:33 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 15 Feb 2023 15:12:32 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 15 Feb 2023 15:12:32 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 15 Feb 2023 15:12:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SnFFcoabBIG1060zz20Sf+/KEalT5x2Jh1ENPGHSWNZSIcU7/d7FyH69ByD4Su/6G22c4N+1OfpuzCNjAOdnBhlyP9N2Jqq2rezM7vQnGnj0yV3Twpg4LNtCdVuDfsQ6m3UeCH9R+vt6BsjIYvWyDsvqtyXDpZUQ8eLpvPH9/Yr9megCAXR7xteAAaK2YALAqoNm4FOpp6ChaBCPk4mLTyD33AnsTKDbP5lTiQEEnoVCOHeXmsiRg0l6vPekVsW/3TF8+uJQ3SG1PZVPS0HtHCmlBOljXT2eci6BVc30e5AebaQpHPL6t/YsE8q4esRSMHOdHBz1iw5487Yl8KHHvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bvR/Wf8nMDrhbLfFFbUtP8+05+w3yc5Gcj9CI23v1rc=;
 b=V0a0PX4AncDg78aiugc5cDBCLjBF+caZeVKVQBmtBLO6G7NqcPissqJi2wrBuVsYjMJAKh7Yp/Gj29ZBWew9IbCWOOc7Q0rVeT80QTr5MRsIcEu28xY3VUtXm3fhoMHsQPS4KB91QRWLC86OzAxcUo6RY+SWtwzC2H8bMrk/yRUsQoJYjYfvkoW1DxgAEEnLerd9khdAG1Hokjr2qwT/Qt3vqOoUNPKSsoefGh8GO6ZFzz6lU4vmGbAPDdn/zgb0lifoU3hcHdl2hoQFcYPxpqiOz/Gp5Op2Gl3o2GllmYrzfs0TfWdTHT5GYIcsJYoIXsNZde/Un6kA/gMHGL5gUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DS7PR11MB6077.namprd11.prod.outlook.com (2603:10b6:8:87::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6086.26; Wed, 15 Feb 2023 23:12:30 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b%7]) with mapi id 15.20.6086.026; Wed, 15 Feb 2023
 23:12:30 +0000
Date: Wed, 15 Feb 2023 15:12:27 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <Y+1m2y9Mqv2G96oF@mdroper-desk1.amr.corp.intel.com>
References: <20230215222426.26085-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230215222426.26085-1-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: SJ0PR05CA0049.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::24) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DS7PR11MB6077:EE_
X-MS-Office365-Filtering-Correlation-Id: d1113c5c-a6f9-43c5-d734-08db0faa1c82
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: V3EM3XO13gojZ43emidv88N0rIwaDjiuALtv/dtxQoSgrYvPYZStoLC2k9aBdzE7QvsqA1N7t8knlUbdmGOk4wN5qep7ydeyrgQbar0DjyHpxHEwa8+nQhXg3KaZsQFQY76QgIoG7+7SoCDanVCkB46GYdUtBYPDN9shTOo227ljeBHi2+b45u1cRhujcYYlAA4ZkUiPzI137gG+e/cp25IyDYcU+cvuaOkJhh/pO50bqsNmdbw/WHARf94mufwqVoHakPr6r7JR6w8dny3MQUFXGi7Y4RrnzI7tcqU9uNoRhpq2tfQuFRgDcT+KueH1K/Aafg2wplfl4XeyWLFhm4gNpq76FXVaWMrSI4+s4Kr7l4oEXi9l5R0B2XAbFItb20NgWXLKsiQ9ZbVH4hWvjLpC7RoTaO+VTX4i7E3a1SSBbQdWo7u0WMyp9QP2nK6d9oOpBXdK+2IanRq0jwxdb7AHbUfsF+xnehCn1rzVq6XZpOh+LHNetJLcz5L6WoK398fSiOgD6KKZnVq5yOt9Yi5eid9ox7q0GIyjTOMCNGJAQHmYE0TUF96V/FKANnXdenlWe755rX1D2qGtuGPXph6eGc1LcH+lZyiO0pqoh4I98DIUybhVUrBFalenNNNANvkYzKhxl4UN7yuijtGE4jGV5acVvq5bkqlJMRH9tcHnh70t0TrZx8qiG9QAr+lg
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(346002)(376002)(136003)(39860400002)(396003)(451199018)(2906002)(82960400001)(38100700002)(66574015)(83380400001)(41300700001)(5660300002)(6916009)(8676002)(66556008)(316002)(66476007)(4326008)(66946007)(8936002)(6666004)(186003)(6506007)(26005)(6512007)(86362001)(6486002)(478600001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?bqffVJ6/8PNwRCSdj8NncQGw74/ZwiChyAQRh5Of29MUU53Vk9VrbPFBAf?=
 =?iso-8859-1?Q?1B1P3xpXaI10kAz6ggFZRJddEd34ZdpNtq76dbTiwLjTAQ5UbcaZ2bEulm?=
 =?iso-8859-1?Q?XdLcBiGWbNHx9ooFXv4Aa/uewLZZCUP7uFVZjWF4v/uc9gzmTzwKrp3LlF?=
 =?iso-8859-1?Q?4ivITTXGoW81ZxquWdwlvOhxnfmaX132+U9Eb2w+CC3uA9LY6EbgWybA2x?=
 =?iso-8859-1?Q?UrUQCvl95zWmP4hElaJMDRY8R05Kn0K4txZKJ6rz16XsSye+nYX2kgdzBd?=
 =?iso-8859-1?Q?v18wy3wro2khmfLlw3w5295p5XYJ8oJ6/i7BZTwNU23oMMFoPypeqq/8br?=
 =?iso-8859-1?Q?kp5CPNKuqfZ/cA+G2nKsqjj6z8eTv23DZl375LDeZMkBlMEQuJtdfujt3h?=
 =?iso-8859-1?Q?E1pl21/JBdxp2kk1exuBoy1RDuzqqcSOTtw3BhRW06PU37HDJ62sftlHxq?=
 =?iso-8859-1?Q?IA89xXabFeupontkzTINxv09CJQqcK/20MnSfzGgfMuLZhaVqyq0ZD2lF4?=
 =?iso-8859-1?Q?+jmOuQCm1AeMfzvXRDq1fZshic/SLojdMXZQCT8psHdSR1CGZKT9iuw2V8?=
 =?iso-8859-1?Q?06mJFoXANYfeLwuQfCOt/8p/Gr+KLbhirOHr9172VId3nhPyc7ggFCj1Wt?=
 =?iso-8859-1?Q?nf7z5xkgVM9GhW1sWtJZVwmYKfkLbNyq7aaB731YZx7RLjjW0Be5jlRzYz?=
 =?iso-8859-1?Q?Bx2+fGeC5fn0E574HbS+Hosh1wkwww3e6My612uyxgcjO9tRAHbwdw+4vo?=
 =?iso-8859-1?Q?b3MVyAfrSnBtNAUr3ex014YRIX0m6wid30Bss5aQmVGnTf5jRMBzYLwVcb?=
 =?iso-8859-1?Q?E+W+TRTOwaBSTUog3/jTw2CzcitlzrHzCLpCxF2J7QArejUzJRJZbvyyK1?=
 =?iso-8859-1?Q?gxrgad5CT2rcK0FhcjK64MGOQ+SFLmi5Hdvc47mJJeCgVrk7jT/+L/XjWu?=
 =?iso-8859-1?Q?gyZDR2Nww15ksy3Y0TEfNoyc9m/EFHzEXReSxSKENuoZdOXVFxUj7dRwj7?=
 =?iso-8859-1?Q?tpsaBt10u8Aoc82xRLK8+eKXKEyTPmz0kSEYpqmgFO8YDno1e7bF8RVoOA?=
 =?iso-8859-1?Q?WzSdkzTX8Vehn9CpzyojHWHYLCB9+08RKd9ClO++XaFs4IBED0Vib32s/z?=
 =?iso-8859-1?Q?XXDHj3amIZBpv5Scb6Nbo4xY56wWeRNO0sJBYBi96YNkSTGwG265uZkR0e?=
 =?iso-8859-1?Q?lbdsDSpxiZCUvNTmhKkJwnfvkniccbqtNlXIcWqHfRRzFfyPk0KXbbWSwN?=
 =?iso-8859-1?Q?sof7ak3bsUm06tOlyPC5jXRsjroFc6oVbpnf4r3LKWqEcNeNqhxfO7Go47?=
 =?iso-8859-1?Q?MTK1gcAZxEEKx95PGPhdfa6VqGseAaQLdXENYnBfLJjZuw8oNU8N+gpxiw?=
 =?iso-8859-1?Q?11WaIj2E+Rc8WsI14w+LqKr8WIxV/brkLv6rE87Y9IK8pZkCyxHLv3EjC+?=
 =?iso-8859-1?Q?5P1fKMqGEbm2KsWxD+oKLhVfzbu8wEZRpmdzhS+cL/gVTdK+QeQKQsNnfV?=
 =?iso-8859-1?Q?QCytV72KbzKLBIMx42EoZG5qhkpGWBwMuwVIZ86pFQCevE7rsbkseRbrzf?=
 =?iso-8859-1?Q?TsUWdcvRQ3RK49XLklsFlkP/U4GUL60dBGSl20PGKMwcF9HUu3lhwhvK1k?=
 =?iso-8859-1?Q?GGcgFluPbKAXtNsD2L3vfy1lBt0p5PwdbTJuR3p/YlH1HbHzyhtSOQXw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d1113c5c-a6f9-43c5-d734-08db0faa1c82
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Feb 2023 23:12:30.1813 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: frRA/bdhvJjx8MNSXLDmjbwqtu0wkVQGE2PVDF2nxbnTv/c3m5ZRQZqD56pmMZ/AmSh9dHp7SEevj4WgMYKzq677Bgj8hbNaB9MpHCRYJNM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6077
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Don't leak the DPT if
 drm_framebuffer_init() fails
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 16, 2023 at 12:24:25AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> We are failing to free the already allocated DPT if the final
> drm_framebuffer_init() fails. That would require idr_alloc() to
> fail, so not very likely, but let's add the cleanup code anyway.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fb.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index 93d0e46e5481..1ba052a127b9 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -2017,11 +2017,14 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
>  	ret = drm_framebuffer_init(&dev_priv->drm, fb, &intel_fb_funcs);
>  	if (ret) {
>  		drm_err(&dev_priv->drm, "framebuffer init failed %d\n", ret);
> -		goto err;
> +		goto err_free_dpt;
>  	}
>  
>  	return 0;
>  
> +err_free_dpt:
> +	if (intel_fb_uses_dpt(fb))
> +		intel_dpt_destroy(intel_fb->dpt_vm);
>  err:
>  	intel_frontbuffer_put(intel_fb->frontbuffer);
>  	return ret;
> -- 
> 2.39.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
