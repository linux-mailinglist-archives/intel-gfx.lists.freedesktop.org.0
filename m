Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6DF06788FF
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jan 2023 22:00:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13CB610E588;
	Mon, 23 Jan 2023 21:00:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCC3710E588
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Jan 2023 21:00:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674507625; x=1706043625;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=6qFORbvKF7ckti6lGUvwNzExtpCCgImjWg0ZiAxF0qg=;
 b=m6WaSetE/uZELiwiEFmtnsQpQBRrdaxo021pqi43AeF65iy9i6Mv7IVo
 3pgxBpBGpH/+p/08P9kbPORVtWTesf0+WtWeOSM3fqwscAOxsP2/ksjOv
 Mg0t8X3Cs+M0leeqy34fX1Is04XTvLr/gSn+UmPJrz9h236amh1A/NbcT
 ofmA1UklfAdTUIub9m9GnKoZgTQzEuHwgC1ARz9R6kZ3p2ywQOkD7RFN6
 DnY6796/SKKEeeqs4VLs0Ua49vlfrVSbRFSeR6R5rszwkhX7QjpXAzYei
 ZYRwPx9vYsu78B9bFsM4aREitzGR2OgNeQl/JNUOWXGUupQSjMRRZvrE1 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="353419466"
X-IronPort-AV: E=Sophos;i="5.97,240,1669104000"; d="scan'208";a="353419466"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 13:00:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="804342867"
X-IronPort-AV: E=Sophos;i="5.97,240,1669104000"; d="scan'208";a="804342867"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 23 Jan 2023 13:00:19 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 23 Jan 2023 13:00:18 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 23 Jan 2023 13:00:18 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 23 Jan 2023 13:00:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pc3uNlBd0+kYtSba2UW53gdY/HYhu53nFdaIaja7kKwKAVHX2aclY676uYdp7V/sBDXsQM27Di0X14CWvTC89tsg5db3USNQxJraIUGdqGod+6pkdB6hFZmv8lE+aB0JMU+hvMYXhgohEutxN/KvVN410e6teDZ8db5FsAeLhoaaX9k1JeYgO2MZSR5BKw738CH43DQrcOqnVzkozQEkn3SXzPLQg6qNyyF6Gtmi44REFKNTZTTzHPK+4UkOOcfclvwsIvUJGJOWcr/kDZ9gvImHqlembaFXrdVpPAT6ZW7khmhhcHgdZjZX3OQMry0lKsthJVlTOAW78H4ovo9sfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BhUm+CAjv5af/1Omw2un/aS3lqGDEeMjttR8Jiq5V+Y=;
 b=mcrMSIth8PRaggFVbyqcmrA9m3jUpQtSQhbpEvRejmycUfaskwKTxPF2YjTxa4iwiVIFLRTw8XFIEvoBEsUCHiWNRBQQRXRQBX+eXNj/ysWpbXNhj+etRcUfK1Vf6ZAg3JpPkTkYe9KSEIDZoFdGTZy13IMOfC/jC465AsJ2lQOYP+Vjf4dbY1SDiPJeLIt3hy5JdAWoaFg3ZQLfEflsDT+sBVRxNekgaviviodJamjsSkuKtTgW5zJn5Z3hFqYxhs0+JVmVOkEYmXJFHqvIgV+qkI8WEzdFCHnpvTQCsL+ogm7w5e4+Vt6+gH8Ne28h+8UT+wmf1ZG/yXdTfBTtrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH8PR11MB6755.namprd11.prod.outlook.com (2603:10b6:510:1ca::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.27; Mon, 23 Jan
 2023 21:00:17 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.6002.033; Mon, 23 Jan 2023
 21:00:17 +0000
Date: Mon, 23 Jan 2023 16:00:12 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <Y871XHPdvWA4BhzW@intel.com>
References: <20230118085200.1017626-1-jouni.hogander@intel.com>
 <20230118085200.1017626-2-jouni.hogander@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230118085200.1017626-2-jouni.hogander@intel.com>
X-ClientProxiedBy: SJ0PR13CA0126.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::11) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH8PR11MB6755:EE_
X-MS-Office365-Filtering-Correlation-Id: 64adcf73-4576-4ab0-5baa-08dafd84d44c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UPyhwkmEhxFMyQ4LZFlU8m0EoC4aYQ4K5An2AblSH1Qbh4ImFVkwSvAJpAlZFrEXfDeShp2vV6EX2BWZ8l1A6wt4wErgFrOGaYlYPJ6+0rCInsbg/b/TxUsRLeDFdhQSIuJ8fJxqH1ODZV2Vu2hK8ujdBtbAIPu6yNVms5lAGanJbygqxsPoXH9TD5eQo7dKKHbZq+QggPsV7kEGv4XmKwXoJsUMvvFuNK2GcVoLqaUn/zLKm03357QdP5FF2FFgSLFwuWXNz9AWfHVlDQYiPzOspGJSPid4kdxUO+KwbdH4TaOTEJec34l6Bi2Wwex7Mb3w2EFCDzzOpVa/UYOLI2SdmhZMVuHTEsIjNZoazviGdQv1barh554GUzojiBCu0SM3Ny8f85B2qzpdTZ3RgczcdPbQheYwv1dVQiHYAI0+FLxDdXkdKUzxLVioMmgszgdvU0118ZenEarSwA1sxVCjW6oF5mp1qHWgeBsUjAsVGNonRIFTmKFAyvElIDzkexKoTivxlV1IwYOIANGs42se+UFuSGIvvkimVBCh4ONKRpCvqJEYn/AWJ+WUhuwJ21uL2NxNpjhfpp7JS4M2nvCTmtamVClNaCrK2yE3ERhSxz7crxfOGkpHT20H9RhdaelltH1UofGU798xXN6j+g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(366004)(136003)(346002)(39860400002)(451199015)(83380400001)(36756003)(6666004)(186003)(37006003)(6636002)(316002)(2906002)(66574015)(6506007)(82960400001)(66476007)(66946007)(8936002)(38100700002)(6862004)(26005)(41300700001)(2616005)(6512007)(6486002)(478600001)(66556008)(4326008)(8676002)(5660300002)(44832011)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?oHrYr5TpS/hubjlQlI3Hlawb3vozRoSwqPQesSmOQSSLFhVRjj7znX8m7s?=
 =?iso-8859-1?Q?JWLBHU7p6HEMq+8oU71vcYw07MYnRXW5KikW8wWf9EJ5BMxU/PmSD3vjeR?=
 =?iso-8859-1?Q?cZDzBf9w02NerbzqPPETDZ1cfV9ipdUh6gv7hzpYOM7TnSYkaWoOGC/b1/?=
 =?iso-8859-1?Q?lF6X2X1ATBAiVPAcVBLNCgkgtxfEZo5tzouuRtR6PJZ40GFQocSq7vVKTn?=
 =?iso-8859-1?Q?dDb3fB1uEfs5kRgiNC6/gFCDV4ruNt/OBtyMiUA33sBqu2q1rQnhpBiRkA?=
 =?iso-8859-1?Q?S+wU2wUx0gsJXKsGE29v83yNLSI0TEaJbl6Mf87MmDprfPl229s/Q4lbb7?=
 =?iso-8859-1?Q?pWO4f0M5eY/Mlgi1G91u2d0w3RmXaiyiq4mrRIWC6X201ejJ0H2Q4w2xra?=
 =?iso-8859-1?Q?GXAXrn3Ca2GQ0wgaCzPgHsxHhVeYIwBKjNUBK+btQAbFVJVOWwvDq+N13W?=
 =?iso-8859-1?Q?uLi2bebXsiLABnNvp1unCLvE20Xol4WC+wRepJhZSjtuc3rQIyBDQTzVg6?=
 =?iso-8859-1?Q?kWlnlM26KNGyb3cO/L133JVASBR5EA7kNN831GDl9XFvrPvq6anaD9XHjR?=
 =?iso-8859-1?Q?LxxB6E58KLicVnmlLQEoSH9Rd7l5kyyG/wpvsr6XLMHz8V9FKKuIwWbyN5?=
 =?iso-8859-1?Q?PpIRrEHHRWsmQlCwI9UGu8dufrDpPT4mV09qi3c1xdZbNefJQlDCodAx2U?=
 =?iso-8859-1?Q?QJaQIVN9v85TKnhy1fgsT5Fycw4d40QJOpO63u0zPdNfZmMWiYGQTVKdx4?=
 =?iso-8859-1?Q?w2w7ZR4OkSQBif8sLV4P87mb0w7Fkfh+4Le5ewcrWbTUE3YfPaulpZ4n+W?=
 =?iso-8859-1?Q?A9s3ITXJaGdIS6c0E11CKheYSn5B0mthAgO2sUdXFBVC9ksFMU15JfbDzp?=
 =?iso-8859-1?Q?xzDAsmfnPiLnCNV+WZY2NXmT88/+Ep8ClkJh6sii5IhyYJ7k/6ZbacN5s/?=
 =?iso-8859-1?Q?aX4IgP1NoALSrcIKxrIz+xmK2UsglhVsVamUqcxQe2SiwwNeX/pKv5d38T?=
 =?iso-8859-1?Q?Rc/JblcHAjtT2q9XblZL/he5y7BxO2kS2i/M4GBVE/+6vypeB8W0FLVQ3k?=
 =?iso-8859-1?Q?peu+Z8lzSAPLFkP4i1xyFqq6fCKmHUBSFK4hzHrDsihVU4oUKzSrVJjKtj?=
 =?iso-8859-1?Q?xhT7a6HtflDjmlbe8UlBDKDkE6S4F7T5GKkcczGu4wdIs/8ToWpQ83sHzH?=
 =?iso-8859-1?Q?F0Liv+zn5ZgU1HGj51tcYBgtuMY+DuXrpGssqnzCH02jottLV7+oXqxMWC?=
 =?iso-8859-1?Q?cRszus/ZyN4FXEE/H6CBamiu3kNEU+89O3BZw58ctnY3wTFg/2UpL7WGbP?=
 =?iso-8859-1?Q?GDYLc5gGQt+HtQOA0YHpIn+VLdPqRwes1uJ5A1h0LTavk6UMEYzrX2Seo/?=
 =?iso-8859-1?Q?wn9HKl4vf5BkMUbKoy59UNMq+CdLhIz1ON2NgUI+pgIEjR1cuyCR/QKZ8b?=
 =?iso-8859-1?Q?Dr30jvvP3jWfwTkfXZPWiWpCDlokzKIk18fRzQ7BOi8A4qO82/nc83Xrnw?=
 =?iso-8859-1?Q?SjAcboGU79bKNqsIHOeSPUki/wcVU1PgH5c0fMlWoIex/061tjjLVMgm5j?=
 =?iso-8859-1?Q?BlIcdkJDGF9NU679flFwBXZ3+eiQ0B17lopNiHNn59zEsJhxUkKyJPM4zH?=
 =?iso-8859-1?Q?E9J2Y6kGnTbgSFapJ+rIRtG7OTry2K7lJEA2QW6u7YeCyCazwMiAZRCQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 64adcf73-4576-4ab0-5baa-08dafd84d44c
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2023 21:00:16.9380 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: est3zMHlFJpV7EhnDynFWuuKy3UdlHzzkjmxd7UlKVGWBuvd7Ivpwv46LwCkwQjLvS5NVrJIX96xDp+zxPqlXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6755
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/psr: Implement Wa_14014971492
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

On Wed, Jan 18, 2023 at 10:51:59AM +0200, Jouni Högander wrote:
> Implement Wa_14014971492 and apply it for affected platforms.
> 
> Bspec: 52890, 54369, 55378, 66624
> 
> Cc: Mika Kahola <mika.kahola@intel.com>
> Cc: José Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 7d4a15a283a0..24900a790508 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1842,6 +1842,11 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>  	if (full_update)
>  		goto skip_sel_fetch_set_loop;
>  
> +	/* Wa_14014971492 */
> +	if ((IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> +	     IS_DISPLAY_VER(dev_priv, 12, 13))

This is not true.

This lineage number shows as not needed for most of platforms with
the display version 12.
you should only have TGL and ADL-P here, besides the MTL one...

Which, btw, why we have a MTL_DISPLAY macro instead of using the display
version :'( 

&& crtc_state->splitter.enable)
> +		pipe_clip.y1 = 0;
> +
>  	ret = drm_atomic_add_affected_planes(&state->base, &crtc->base);
>  	if (ret)
>  		return ret;
> -- 
> 2.34.1
> 
