Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 729A16F0946
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 18:12:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3F7410EBAE;
	Thu, 27 Apr 2023 16:12:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C985910EBAC
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 16:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682611920; x=1714147920;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=H9NCzYXhPjC8WDeOOf29TcdZAUp2kIfaYrRm1rQ83tk=;
 b=BuetaG4g+TTs18WsIH74Q6LMbuKVi0uN9f2rqbXDf3K+s6U7pxWhwSP+
 aDreMU/v2ESTbgiREG24W5dXd3RblWDzbWxNpCvmD3/yqzesirKjbAGYe
 qxAMCjwpxrQQfJaUg3C87AvcOpdjm24WRXWvxOoBm7XFvTqaPuvwGbjIe
 d1huGP+KBbg9V7VINkQwodHO6QhzDdDm8gHP6OIWDFF/CUvGima6qs7Vm
 2z+Q30ucg+EuA+lkz6jsWJDWCjZarZtvVGlpvKBS6AlOvWEjurDpqAGtV
 OJ24w4d70G+0PPQ2JC7Y6Umb3oV1NQ1mT7hKNUL6fxsq9U61z0zibxMnc w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="375471227"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="375471227"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 09:09:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="644761456"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="644761456"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 27 Apr 2023 09:09:46 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 27 Apr 2023 09:09:46 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 27 Apr 2023 09:09:46 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 27 Apr 2023 09:09:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UX11NK22fL/t+zDopANoYJtp/UCrDXju05NXZuCK4xeqjpI5xKx0F9llsI+PDkHBUzwUHaQV+Sem/a2TdyQGK4//1W/c5mNUaSYyubuw2DonhPNCWV76sjChDxNi7OxbsijQGPnsNJqMvxc8lI8Ut/Gq42wEX8iPYLxWhGvDCk/FdNNAj6Ooc8ql5J5QSAblXSVE+Zh7bc3TysgxDNC/aibPzqmk1XNRlFFtpv6l6UAFwSbdGS1r9nHDE9uR+h9gdEvahgwsAdzt5PU0/5X9+csvDtfdGGa+LVh0+GJES+2pKEhvNUdc/nKCoHZF19uhzjVtrhYG/g3zX2NwR8o9GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FuTW+pBVYtu21y6vYeD7GFxoD/WVkydxlcN/BHkQkuY=;
 b=OW4bQ9q3wnWIOp3BE+S6TXcodJQumuzmdjDdRUmGictIzUuI3O6mFkF0ipWjM9JeYs5vDnxNI+r2RTWKeAgY/ZYHIKpKyhklxqHWQmZZsEQgYL0KaBLzHKW+q9YkJQ7rNZYmqHkFNZsndqczvNp/CmgLivlZw0eGoJXpftK1jPKsORcDbrfSSx+mm1ul3ZWqOB7y7P4tzixTELvX9LrQXlp3cxwzTaqOwn5TaXqPSa3FlWsQP3n/z8vbYkjaIfO5iDozgDhAKp4hf5YVOCZE3Dj2uw4mYof0xibFUUYS/I7wysa6cyj3wMj2KF32fwx4hJZXsn+cMhEYhfGUbLr54A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4226.namprd11.prod.outlook.com (2603:10b6:a03:1bf::12)
 by BL1PR11MB5318.namprd11.prod.outlook.com (2603:10b6:208:312::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.22; Thu, 27 Apr
 2023 16:09:43 +0000
Received: from BY5PR11MB4226.namprd11.prod.outlook.com
 ([fe80::c7fa:f42a:e213:8324]) by BY5PR11MB4226.namprd11.prod.outlook.com
 ([fe80::c7fa:f42a:e213:8324%7]) with mapi id 15.20.6340.021; Thu, 27 Apr 2023
 16:09:43 +0000
Date: Thu, 27 Apr 2023 09:09:37 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Mika Kahola <mika.kahola@intel.com>, <Imre.deak@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Message-ID: <ZEqeQUKsOS6BFRR5@msatwood-mobl>
References: <20230420124050.3617608-1-mika.kahola@intel.com>
 <20230420124050.3617608-11-mika.kahola@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20230420124050.3617608-11-mika.kahola@intel.com>
X-ClientProxiedBy: SJ0PR13CA0198.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::23) To BY5PR11MB4226.namprd11.prod.outlook.com
 (2603:10b6:a03:1bf::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4226:EE_|BL1PR11MB5318:EE_
X-MS-Office365-Filtering-Correlation-Id: 78c353bd-ddce-41eb-8ba9-08db4739d042
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Uhyqbcm5LgARNURKZI/TIGtDfYcPKTtBqa+1pDOmaYwryOGAif2yelFzRMW6mNLymJF26aoH1GLjXv6IJd52mDyUtgJlb7fMzsM8txvPk2V+8saz01xYZ0kXqow4uyQXynrgS92YZWhiYAi14Xu+1vPO9DiUVwSi07xrSb2nMxadKgiPJIUTDegeIYah+mUJkswBd71sj07c5f/8NOt9SyIWE6rJRLLtBgCqfXQgsT/udco4Jfg7ldeVssH/oqTjd0eMy64ibYXn9mz0cr8YySXGBHk+cCeBKMbbP3xlRDVh2KY3+lXH8fbjQzDSYHAa9DXSKq2+RcvJzUsGU9oS/cvDNSi+X+ACnc96iz+ydsWDPZZ+uRhpXgmQlbHJOWGp+cns4Yn/R7FvW+vix6ORDHWKLPDuRlUWhj0PvH2a068ZNA0RbTeQtSlqOIK6p8IjHgfSyg3RAKBxn5mru++sumrck/GAYSTw53lGgsy/3hrn+A4zx2hlgY8dJCE+JGHc2gAd1tUCNe1RkdnPacXHWhUvv4lRrCClWyxIG2j15JGrYLFe8N5m7bjnm5wieYUJ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4226.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(366004)(39860400002)(376002)(346002)(136003)(396003)(451199021)(478600001)(6486002)(6666004)(41300700001)(83380400001)(30864003)(2906002)(82960400001)(38100700002)(86362001)(5660300002)(6512007)(33716001)(8936002)(6506007)(8676002)(9686003)(186003)(26005)(316002)(66476007)(66556008)(66946007)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d0xoUERkM0wvMUFmV1R4R3ViT3JhWldQdWoxOTNja1FhOHVmak1iQ3lVam5x?=
 =?utf-8?B?MGFpSndxcGt3Y2VjUGkrcEFJaEtWVkNpaVNZRG9CL0paMVVIejMvNERhWm5y?=
 =?utf-8?B?S0pwRzNvRk8wM3YwTStpM0FsbVpkZXNnSkUyOHROT29hZ3lZb21WL3lDMUtz?=
 =?utf-8?B?VjIwM2VVUUNnSnpta2tBME5CU0U3T1paWkE5N0J0amwydVl3UWxpbGQwWHJu?=
 =?utf-8?B?MjNoeTFJRE1DOWFUWFpTdERvYUE2QktiZFdoRW5JMmJ6TFQ1TTgvZVdKajZx?=
 =?utf-8?B?NVFENUdQbjBuOGp4V3duQWlYaUVDeXNBOFg3bnByUUIvRkYzdW9VMmR6WTV1?=
 =?utf-8?B?NWlsQldXQnc5QTBWek5iUlQ4NTBaQlQ4UURDRW9UU0NBdWNPanFDTTFyZUtq?=
 =?utf-8?B?Q3BuUzFTSmdmWElWNkoyRUNoM1JkRlg5SDlYSEJJYnZaSGFaeTlMZ2sxNHJs?=
 =?utf-8?B?VXh2VTAxVmI2M0NRS2FsTnBObWdiM1lraG9kajVFdlhCRnBEZlR5cUpYVVVQ?=
 =?utf-8?B?SVZTL3JBWTAwUUI2cWNoaGJJYnVrYTJQYmJ1TDlCeDNjRFBPZDFGRkk2a1cv?=
 =?utf-8?B?NERXZll5TEEzcHlOcEtwVUlRdUtyKzFxM21aZGJjSVNaM0pQVE1na3R5UmEr?=
 =?utf-8?B?TFBOeUU5MDhJck4xb3NZQ3AxZmFDODZrc3BEOHVHUW9yUmRNdEMyNXVsVk9X?=
 =?utf-8?B?cXNvQmJoSXY3T3lpQXFkaTlCekNpa0VtNk85bUhiV29Td1JMTnpvdDZkQXZX?=
 =?utf-8?B?NDRtYklmeXUvS25XWEFPWlp5MHpEd1gzeGpJR2NldnRtTWNNV2svUE5LUGlj?=
 =?utf-8?B?TkdQQXExYXp1eTlxV3hmKzJWamRhMlFNU3pLTTJtc2RMcUl6OVdJK0FCQ1ZI?=
 =?utf-8?B?TkQwRVFmaWhoem42eU9MbGZtWEp2ckJBSXJYVWRHTVJQRjliZlhoZEUxMW11?=
 =?utf-8?B?U3JzdmtRVzFaOGoyc1FYVWNIMmczTUJoRUcrazVjZjkrSGlRbjBSRTNTREg0?=
 =?utf-8?B?b21SU3pQN0gxdFViWEhyRHhCcW9oRXVNKzR1Q25wNUlKY2QzemZ2MzNmS0pT?=
 =?utf-8?B?WFNDRU44M3UvZ1NDSjZsZ3Z1bHpkRkNFNmY3TmpFYlN3eUtjcjZpK1hGS2Yx?=
 =?utf-8?B?OElWZEpaTFlQSGRGQUtCSnpMYnloZ050amNUUGpMUGpldEVWM2U3UVU5YlNR?=
 =?utf-8?B?WXhxOFUxTE14S2ExRzMvWEZIUlNaTncxZ0hXRG05OEQxM3B2S1NTSUxRa1N2?=
 =?utf-8?B?bkdJVFcwem1WUCtNcTd4aGRyY09HckNJV0VaeHNweXNtRllUYm55WmhMQjZX?=
 =?utf-8?B?M3VndllmNHdTUW9NK0VxQ0FhN0p2UU9FdHRtSVRGL2MzZm4wZU5SODJBVk95?=
 =?utf-8?B?RG81d1NZd1B1eVhtTGtRcmczVU53ZkMrOTNBcHZ2Nmp1TmNRaEZUK2dLSW1a?=
 =?utf-8?B?MTFrWFZzTzhUcW5IWHV0YndoaHFlT3pGVEs3YWJ2UTFaVTJ4YXFNK2Y2a3pv?=
 =?utf-8?B?WmhOZ1pwRGJXbEV2UVUxVHRnK2FqRzdvL25ON09GRUhCeTdBL0FVZk84UEhJ?=
 =?utf-8?B?OTBaVElNQ2FYZUF0ZkVLck10dXYrY0wzUU9jeWtDWUJWTEVpeXpPSlFCU0pU?=
 =?utf-8?B?OWhoc2ZsckVrR2RwVkI4cnNNcjNaQmRnVWM2VDNYSzBMTHZQUk9UL3QzN3Rj?=
 =?utf-8?B?dEpNRFR5MWI1cXY3SXNPR0lRQUlqN0IxSVB2YWVIMXdKR3BZaE1ZUjBuSVQ3?=
 =?utf-8?B?NjhHN3ZKZ25TSFVtMS9vR1JkWEMrcHNrbzJKVGJGR2tXMERweHRNNlNMOU91?=
 =?utf-8?B?Ni94VTQ1MEJiNkYvMDJ6UUdBVDBZUVRBbE1KeGJ2N0p6c1ladmFObko3U1I2?=
 =?utf-8?B?cFhKL0ZOdXFZWXBSdGJTdVJFRXJYekljckpqQk5sN2xWMW9mOEpiNjBnUk9Y?=
 =?utf-8?B?bzhJMnNMWUhaVDFEK3hVck1RSE5oS2FQS0duTGozWWZwQ0NLS2RWVHh3MktV?=
 =?utf-8?B?YmN6NnVnaktJSHJWM0FvdXBSZEUwTGlHc1RtN2NOa0lpV2xIaEJDTEN0TVVn?=
 =?utf-8?B?WklmUXlBeWh3Z0xzOU1Kbm85NXpsOHh6RlVzSTA1ZVhjemZGbS9RTVpuV3Ay?=
 =?utf-8?B?NG42OGJ4a3c3bFdLZWF2WGZxNEJ1SnBWQ29xWWZGTFFDRXJWS0hibHcyTzhF?=
 =?utf-8?B?WHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 78c353bd-ddce-41eb-8ba9-08db4739d042
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4226.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2023 16:09:43.7292 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +VZqkxQPOlkyGV9el+2oaceFlSWhtPB77c3gcq4Vw02N88n8Fr1xIqvx2a7TY2BrEBBbBGMw1uJOOoQv7+TTdjnfnJXv01aRsbySrf6HmlQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5318
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 10/13] drm/i915/mtl: Power up TCSS
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

On Thu, Apr 20, 2023 at 03:40:47PM +0300, Mika Kahola wrote:
> Add register writes to enable powering up Type-C subsystem i.e. TCSS.
> For MeteorLake we need to request TCSS to power up and check the TCSS
> power state after 500 us.
> 
> In addition, for PICA we need to set/clear the Type-C PHY ownnership
> bit when Type-C device is connected/disconnected.
> 
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c |  19 ++
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h |   4 +
>  drivers/gpu/drm/i915/display/intel_ddi.c     |   1 +
>  drivers/gpu/drm/i915/display/intel_display.c |   2 +-
>  drivers/gpu/drm/i915/display/intel_tc.c      | 199 ++++++++++++++++++-
>  5 files changed, 216 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index dc0555505e61..97d80adb921f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2884,6 +2884,25 @@ void intel_mtl_pll_disable(struct intel_encoder *encoder)
>  		intel_cx0pll_disable(encoder);
>  }
>  
> +enum icl_port_dpll_id
> +intel_mtl_port_pll_type(struct intel_encoder *encoder,
> +			const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	/*
> +	 * TODO: Determine the PLL type from the SW state, once MTL PLL
> +	 * handling is done via the standard shared DPLL framework.
> +	 */
> +	u32 val = intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(encoder->port));
> +	u32 clock = REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val);
> +
> +	if (clock == XELPDP_DDI_CLOCK_SELECT_MAXPCLK ||
> +	    clock == XELPDP_DDI_CLOCK_SELECT_DIV18CLK)
> +		return ICL_PORT_DPLL_MG_PHY;
> +	else
> +		return ICL_PORT_DPLL_DEFAULT;
> +}
> +
>  void intel_c10pll_state_verify(struct intel_atomic_state *state,
>  			       struct intel_crtc_state *new_crtc_state)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index c1b8f7980f69..f99809af257d 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -16,12 +16,16 @@
>  struct drm_i915_private;
>  struct intel_encoder;
>  struct intel_crtc_state;
> +enum icl_port_dpll_id;
>  enum phy;
>  
>  bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy);
>  void intel_mtl_pll_enable(struct intel_encoder *encoder,
>  			  const struct intel_crtc_state *crtc_state);
>  void intel_mtl_pll_disable(struct intel_encoder *encoder);
> +enum icl_port_dpll_id
> +intel_mtl_port_pll_type(struct intel_encoder *encoder,
> +			const struct intel_crtc_state *crtc_state);
>  void intel_c10pll_readout_hw_state(struct intel_encoder *encoder, struct intel_c10pll_state *pll_state);
>  int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state, struct intel_encoder *encoder);
>  void intel_c10pll_dump_hw_state(struct drm_i915_private *dev_priv,
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 8f0f858cde31..55f36d9d509c 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4784,6 +4784,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
>  	if (DISPLAY_VER(dev_priv) >= 14) {
>  		encoder->enable_clock = intel_mtl_pll_enable;
>  		encoder->disable_clock = intel_mtl_pll_disable;
> +		encoder->port_pll_type = intel_mtl_port_pll_type;
>  		encoder->get_config = mtl_ddi_get_config;
>  	} else if (IS_DG2(dev_priv)) {
>  		encoder->enable_clock = intel_mpllb_enable;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 1c264c17b6e4..e70bdf0e06f3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1757,7 +1757,7 @@ bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
>  	if (IS_DG2(dev_priv))
>  		/* DG2's "TC1" output uses a SNPS PHY */
>  		return false;
> -	else if (IS_ALDERLAKE_P(dev_priv))
> +	else if (IS_ALDERLAKE_P(dev_priv) || IS_METEORLAKE(dev_priv))
>  		return phy >= PHY_F && phy <= PHY_I;
>  	else if (IS_TIGERLAKE(dev_priv))
>  		return phy >= PHY_D && phy <= PHY_I;
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index 3b60995e9dfb..951b12ac51dc 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -5,6 +5,7 @@
>  
>  #include "i915_drv.h"
>  #include "i915_reg.h"
> +#include "intel_cx0_phy_regs.h"
>  #include "intel_ddi.h"
>  #include "intel_de.h"
>  #include "intel_display.h"
> @@ -59,6 +60,7 @@ static enum intel_display_power_domain
>  tc_phy_cold_off_domain(struct intel_tc_port *);
>  static u32 tc_phy_hpd_live_status(struct intel_tc_port *tc);
>  static bool tc_phy_is_ready(struct intel_tc_port *tc);
> +static bool tc_phy_wait_for_ready(struct intel_tc_port *tc);
>  static enum tc_port_mode tc_phy_get_current_mode(struct intel_tc_port *tc);
>  
>  static const char *tc_port_mode_name(enum tc_port_mode mode)
> @@ -141,15 +143,23 @@ bool intel_tc_port_in_legacy_mode(struct intel_digital_port *dig_port)
>   *
>   * POWER_DOMAIN_TC_COLD_OFF:
>   * -------------------------
> - * TGL/legacy, DP-alt modes:
> + * ICL/DP-alt, TBT mode:
> + *   - TCSS/TBT: block TC-cold power state for using the (direct or
> + *     TBT DP-IN) AUX and main lanes.
> + *
> + * TGL/all modes:
>   *   - TCSS/IOM,FIA access for PHY ready, owned and HPD live state
> - *   - TCSS/PHY: block TC-cold power state for using the PHY AUX and
> - *     main lanes.
> + *   - TCSS/PHY: block TC-cold power state for using the (direct or
> + *     TBT DP-IN) AUX and main lanes.
>   *
> - * ICL, TGL, ADLP/TBT mode:
> - *   - TCSS/IOM,FIA access for HPD live state
> + * ADLP/TBT mode:
>   *   - TCSS/TBT: block TC-cold power state for using the (TBT DP-IN)
>   *     AUX and main lanes.
> + *
> + * XELPDP+/all modes:
> + *   - TCSS/IOM,FIA access for PHY ready, owned state
> + *   - TCSS/PHY: block TC-cold power state for using the (direct or
> + *     TBT DP-IN) AUX and main lanes.
>   */
>  bool intel_tc_cold_requires_aux_pw(struct intel_digital_port *dig_port)
>  {
> @@ -872,6 +882,172 @@ static const struct intel_tc_phy_ops adlp_tc_phy_ops = {
>  	.init = adlp_tc_phy_init,
>  };
>  
> +/*
> + * XELPDP TC PHY handlers
> + * ----------------------
> + */
> +static bool
> +xelpdp_tc_phy_tcss_power_is_enabled(struct intel_tc_port *tc)
> +{
> +	struct drm_i915_private *i915 = tc_to_i915(tc);
> +	enum port port = tc->dig_port->base.port;
> +
> +	assert_tc_cold_blocked(tc);
> +
> +	return intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port)) & XELPDP_TCSS_POWER_STATE;
> +}
> +
> +static bool
> +xelpdp_tc_phy_wait_for_tcss_power(struct intel_tc_port *tc, bool enabled)
> +{
> +	struct drm_i915_private *i915 = tc_to_i915(tc);
> +
> +	if (wait_for(xelpdp_tc_phy_tcss_power_is_enabled(tc) == enabled, 5)) {
> +		drm_dbg_kms(&i915->drm,
> +			    "Port %s: timeout waiting for TCSS power to get %s\n",
> +			    enabled ? "enabled" : "disabled",
> +			    tc->port_name);
> +		return false;
> +	}
> +
> +	return true;
> +}
> +
> +static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool enable)
> +{
> +	struct drm_i915_private *i915 = tc_to_i915(tc);
> +	enum port port = tc->dig_port->base.port;
> +	u32 val;
> +
> +	assert_tc_cold_blocked(tc);
> +
> +	val = intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port));
> +	if (enable)
> +		val |= XELPDP_TCSS_POWER_REQUEST;
> +	else
> +		val &= ~XELPDP_TCSS_POWER_REQUEST;
> +	intel_de_write(i915, XELPDP_PORT_BUF_CTL1(port), val);
> +}
> +
> +static bool xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool enable)
> +{
> +	struct drm_i915_private *i915 = tc_to_i915(tc);
> +
> +	__xelpdp_tc_phy_enable_tcss_power(tc, enable);
> +
> +	if ((!tc_phy_wait_for_ready(tc) ||
> +	     !xelpdp_tc_phy_wait_for_tcss_power(tc, enable)) &&
> +	    !drm_WARN_ON(&i915->drm, tc->mode == TC_PORT_LEGACY)) {
> +		if (enable) {
> +			__xelpdp_tc_phy_enable_tcss_power(tc, false);
> +			xelpdp_tc_phy_wait_for_tcss_power(tc, false);
> +		}
> +
> +		return false;
> +	}
> +
> +	return true;
> +}
> +
> +static void xelpdp_tc_phy_take_ownership(struct intel_tc_port *tc, bool take)
> +{
> +	struct drm_i915_private *i915 = tc_to_i915(tc);
> +	enum port port = tc->dig_port->base.port;
> +	u32 val;
> +
> +	assert_tc_cold_blocked(tc);
> +
> +	val = intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port));
> +	if (take)
> +		val |= XELPDP_TC_PHY_OWNERSHIP;
> +	else
> +		val &= ~XELPDP_TC_PHY_OWNERSHIP;
> +	intel_de_write(i915, XELPDP_PORT_BUF_CTL1(port), val);
> +}
> +
> +static bool xelpdp_tc_phy_is_owned(struct intel_tc_port *tc)
> +{
> +	struct drm_i915_private *i915 = tc_to_i915(tc);
> +	enum port port = tc->dig_port->base.port;
> +
> +	assert_tc_cold_blocked(tc);
> +
> +	return intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port)) & XELPDP_TC_PHY_OWNERSHIP;
> +}
> +
> +static void xelpdp_tc_phy_get_hw_state(struct intel_tc_port *tc)
> +{
> +	struct drm_i915_private *i915 = tc_to_i915(tc);
> +	intel_wakeref_t tc_cold_wref;
> +	enum intel_display_power_domain domain;
> +
> +	tc_cold_wref = __tc_cold_block(tc, &domain);
> +
> +	tc->mode = tc_phy_get_current_mode(tc);
> +	if (tc->mode != TC_PORT_DISCONNECTED)
> +		tc->lock_wakeref = tc_cold_block(tc);
> +
> +	drm_WARN_ON(&i915->drm,
> +		    (tc->mode == TC_PORT_DP_ALT || tc->mode == TC_PORT_LEGACY) &&
> +		    !xelpdp_tc_phy_tcss_power_is_enabled(tc));
> +
> +	__tc_cold_unblock(tc, domain, tc_cold_wref);
> +}
> +
> +static bool xelpdp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
> +{
> +	tc->lock_wakeref = tc_cold_block(tc);
> +
> +	if (tc->mode == TC_PORT_TBT_ALT)
> +		return true;
> +
> +	if (!xelpdp_tc_phy_enable_tcss_power(tc, true))
> +		goto out_unblock_tccold;
> +
> +	xelpdp_tc_phy_take_ownership(tc, true);
> +
> +	if (!tc_phy_verify_legacy_or_dp_alt_mode(tc, required_lanes))
> +		goto out_release_phy;
> +
> +	return true;
> +
> +out_release_phy:
> +	xelpdp_tc_phy_take_ownership(tc, false);
> +	xelpdp_tc_phy_wait_for_tcss_power(tc, false);
> +
> +out_unblock_tccold:
> +	tc_cold_unblock(tc, fetch_and_zero(&tc->lock_wakeref));
> +
> +	return false;
> +}
> +
> +static void xelpdp_tc_phy_disconnect(struct intel_tc_port *tc)
> +{
> +	switch (tc->mode) {
> +	case TC_PORT_LEGACY:
> +	case TC_PORT_DP_ALT:
> +		xelpdp_tc_phy_take_ownership(tc, false);
> +		xelpdp_tc_phy_enable_tcss_power(tc, false);
> +		fallthrough;
> +	case TC_PORT_TBT_ALT:
> +		tc_cold_unblock(tc, fetch_and_zero(&tc->lock_wakeref));
> +		break;
> +	default:
> +		MISSING_CASE(tc->mode);
> +	}
> +}
> +
> +static const struct intel_tc_phy_ops xelpdp_tc_phy_ops = {
> +	.cold_off_domain = tgl_tc_phy_cold_off_domain,
> +	.hpd_live_status = adlp_tc_phy_hpd_live_status,
> +	.is_ready = adlp_tc_phy_is_ready,
> +	.is_owned = xelpdp_tc_phy_is_owned,
> +	.get_hw_state = xelpdp_tc_phy_get_hw_state,
> +	.connect = xelpdp_tc_phy_connect,
> +	.disconnect = xelpdp_tc_phy_disconnect,
> +	.init = adlp_tc_phy_init,
> +};
> +
>  /*
>   * Generic TC PHY handlers
>   * -----------------------
> @@ -945,13 +1121,18 @@ static bool tc_phy_is_connected(struct intel_tc_port *tc,
>  	return is_connected;
>  }
>  
> -static void tc_phy_wait_for_ready(struct intel_tc_port *tc)
> +static bool tc_phy_wait_for_ready(struct intel_tc_port *tc)
>  {
>  	struct drm_i915_private *i915 = tc_to_i915(tc);
>  
> -	if (wait_for(tc_phy_is_ready(tc), 100))
> +	if (wait_for(tc_phy_is_ready(tc), 500)) {
>  		drm_err(&i915->drm, "Port %s: timeout waiting for PHY ready\n",
>  			tc->port_name);
> +
> +		return false;
> +	}
> +
> +	return true;
>  }
>  
>  static enum tc_port_mode
> @@ -1442,7 +1623,9 @@ int intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy)
>  	dig_port->tc = tc;
>  	tc->dig_port = dig_port;
>  
> -	if (DISPLAY_VER(i915) >= 13)
> +	if (DISPLAY_VER(i915) >= 14)
> +		tc->phy_ops = &xelpdp_tc_phy_ops;
> +	else if (DISPLAY_VER(i915) >= 13)
>  		tc->phy_ops = &adlp_tc_phy_ops;
>  	else if (DISPLAY_VER(i915) >= 12)
>  		tc->phy_ops = &tgl_tc_phy_ops;
> -- 
> 2.34.1
> 
