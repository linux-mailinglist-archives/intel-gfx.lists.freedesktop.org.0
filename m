Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A5B69FBCE
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 20:13:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9D9810E1E1;
	Wed, 22 Feb 2023 19:13:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 323F910E1E1
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Feb 2023 19:13:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677093227; x=1708629227;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=6KlVH4gaIN7TMneHo2phRFxGgnt3SsUKzLkajmD+DBc=;
 b=TY1XNKEvzLNd03Eo0MfHfOM5ME/s9pkvXj+jpZWX/VjZTYe5rFaFlgsx
 TQLdmYXYie9b+iu1i//NCMMqgpmVjOQmGlv3aEMzYxV8y5yr+qAjfp/3G
 DnI3zXmm/YBoLRJ5w3DZ0SYieDEiZq2hjheCxIglaYQuFGJYITybWWLEW
 CZ3Qw4Cjf0SvcJ2gHvR81WrHdGiKGIJmxNfyi4I2ooYzt+HhSoZjUEErF
 3kxY7ndP66tM0Raj4WEMlVVZTTwf/nx8KxT+hGyVlIwJQ3COStd5v/Qzh
 NYm7usM9/vHrMeL663X8wJpp2wzGMqz9N4kwNyR/+DduHBPf7h1VUDy5P A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="335223209"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="335223209"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 11:13:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="781562907"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="781562907"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 22 Feb 2023 11:13:44 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 22 Feb 2023 11:13:43 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 22 Feb 2023 11:13:43 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 22 Feb 2023 11:13:43 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 22 Feb 2023 11:13:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iY8VpECE+FDTYU2aRQy5QXkEOFgesAfzgQqQ/MSv4k3ozRA8yu3Sm+PwXQivnsVUGHTE6J2oQGT1NiWyGiAfuTyt1u50w2LkvWS2o4ENYfE1U3TK5wWGuSNzf/PxG7clpRZADE2sKQo/SfxnXT7Fqo7gTTn8Grbiw2gsXG66yXCdz77LBgTAMSRY6jIQVPGIPvjKyf8M7Yc4L4jKV/FCzgrF3yvdZWiPDFHQNxtN4gHpohyTzUsmGypSH/XUmn3b96q2RPw8VDc3usNDJLJnOCgWI3HU2Zpp7wjnKFmnBh2oEihYQPWTz7G0EeWsXdRSMcxa3OFbV+9ryZWZM8n9KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ozkvUs3CGafbnwftqhVTMFlXWoHlcz5xJs8oTKAYH7c=;
 b=J1f5JPt/jxT/lg2LTlNVon3VLlH/2X2p8CfRSyIPCGD/XBllHXOcOyaXEenyq14g93ij5T8ibindqn8yREs3zktk8+Jktip14fuDLYuySKWOAWO1YTKxGHI5LBj3NZOq6rnQqGrD/G5TpAmuQUTH4uMKfw6nhweFRYP9ujCQ7fbVB1i6RoIDRAIvgDSsLYaoG0B3NfhmQGI9cbvg0c4U0iAmQwIQVkeY0JaBACVACegCvcvZVqfljVTyMrsScAf13xzY3WKW6fki4p964UzLDPzFnQJNGtD870TqR3DWVpCJbOjWCYjn+TJnF2W1MkJBYjKjkF4S8WBN2WRwqq1Xaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CY8PR11MB7923.namprd11.prod.outlook.com (2603:10b6:930:7e::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6111.19; Wed, 22 Feb 2023 19:13:35 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b%5]) with mapi id 15.20.6111.021; Wed, 22 Feb 2023
 19:13:35 +0000
Date: Wed, 22 Feb 2023 11:13:32 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <Y/ZpXAySI7tIks5q@mdroper-desk1.amr.corp.intel.com>
References: <20230222073507.788705-1-radhakrishna.sripada@intel.com>
 <20230222073507.788705-6-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230222073507.788705-6-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: BYAPR07CA0013.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::26) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CY8PR11MB7923:EE_
X-MS-Office365-Filtering-Correlation-Id: e95931f4-e311-42ba-d40c-08db1508e53c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1lVWSX+1GD4NGcGZrr7kSBh1H2rypZozp/sA4pTTalAP1t9HjWkC7pr4rdvK55BUcXwAtL3oHBvTUcqQA9v6hop+sF5Hy4d0lXgYar6zej8eK7Cl/4iaD5Ifsdjiy3I8wYcfWeTI9ptMSiszaI+x+UuTXV0F5RZbh73VSIOBHXZa2WALZ1XlN3UfTI8RXRTXbanyGx1i2YJ1+SP0lKjJYJpDRkzUi+3Qve0BG45PVBqUcnouNmAUD+NzGLfjYLLlALXNFbRjtzUTU6FQNxr8Aeq2aAs4dmWPtH0tv1ipOZ7vqNyFA0/w2/WrozBtGwdtrSlj+aLZyNmXARnf41u1SkVwjf1SLuLsQLCVpwVzCQIQSwSyiRUibTApX3q+33Hl5x+NQOygdpnjMyVhWAb3yik6MORmFLxhuPa9kTskuPEZiReE0UU6ofIYSV7mRiknhCN2+Jj0WG489SoR4YvgjZDgoRQTRlHwCDRT7uNdeYknTSsaE/aO70rnc4GIHpjK6smwH/ndjbsz134ijn/eZPsXaR4/qwX93mbUiglR/UYpbhiiJqlWoT6REL+iTkXMtihbwYPVEdDyYNptDOntZFuEx6JL56xpQwLhaY7KG7Sjjn+eWDTu2X7B80zt6lbudWZjAPr+EEU6gIBnhdTLgQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(376002)(346002)(366004)(39860400002)(396003)(451199018)(6486002)(83380400001)(8936002)(66556008)(6636002)(6666004)(66476007)(6862004)(8676002)(66946007)(5660300002)(316002)(41300700001)(478600001)(26005)(6512007)(4326008)(6506007)(2906002)(38100700002)(82960400001)(186003)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?RS1DL6TQyXI5iZ+g+S+XSP4+jTHuJWrUR23ezsYMfgY7LWZyvqgTZXqxNw?=
 =?iso-8859-1?Q?upVPOduUIRTbTL52r0NlmNIBlEmCTsi3vpG9GWirs5zieDjMBX1H6RfCQr?=
 =?iso-8859-1?Q?iR0UxOFWXObx1WAcIh2Qdr3W8diYfCXKnMgZqKKJXH/ZtFbEG61qqtUkRL?=
 =?iso-8859-1?Q?n/60uCNWTXOFZ5E13N+K/ibzA3ZrnH/6CWd7rVLOArVCouYngj/F0ipVAa?=
 =?iso-8859-1?Q?5Uv2/M7vFFF7fKeKkUPJY1nPVbAzw1vkOrPOdnAUhHeTfROXUwnYGWx7tw?=
 =?iso-8859-1?Q?VjhDQfatNyMagvngDKvUeQlhVfzd80TEEulNzmXsqPfelzReGxG3mHWUJR?=
 =?iso-8859-1?Q?/P30HlmdGV+Zr9/jLT/G4pZvTZND0CEiSnTSY09GoVt7LFHY/iRSv35mGb?=
 =?iso-8859-1?Q?Rn5BdhXpR7Hff/M65+DA9yFhUHJW2fghk0oXeCpVkoeQXNB1x4pyDVdJKv?=
 =?iso-8859-1?Q?WnbT1NXkr2zxpYZRzrL3smxEIDUBDVC2MofKvgPZkGefvf2skw7pUaRBgp?=
 =?iso-8859-1?Q?OOUeTfq9/3N4mcJzPgK21A0URwEU3GTE3OVUDBDgC+GQNhbQ0MdIZ4LnxH?=
 =?iso-8859-1?Q?mfkwEhsknxuXnTDhqcUPVHuQ0+7HKnMzn3UrKcUk6OOAvzWBGyxznL+Z5D?=
 =?iso-8859-1?Q?BLIQv1fu/4iPyNNs/tDLZ6PbeSC5+9HGNoJMiQ3YX/nlfCdsKpLJ3c87ju?=
 =?iso-8859-1?Q?YF2untMuyrEmjcUckyCAp1UqeAr+pPXJJdH1V7NaEd+RMx5OMD0zr5eL+0?=
 =?iso-8859-1?Q?rjsRw5IUDLBs1rfJe9MvzcbfMdTMvNHfqdk+aFOyjeQutikLfWqv9V/wE+?=
 =?iso-8859-1?Q?xHtlCpHTPfFci36vdMvR7AhyZZeWRke5e205LryK9zGtrWDe4rTn0b671Y?=
 =?iso-8859-1?Q?D1LNeSHi0KRWKNc4jrb6FKyE9vUD1vHymVqjd3lrX099lPj62Fwvh5bIu5?=
 =?iso-8859-1?Q?Xsw+UR5Uxs9DgLYMQZO5WMxHkZ35P3yxcqNiNDHqnwjdeBBtQGP+h/b9CI?=
 =?iso-8859-1?Q?KNVLf7rG67YRI0j2yKaVFmXKeUXUwKsnz+m1ESnIBIGKeFWRGOQSP3ioi3?=
 =?iso-8859-1?Q?GVHMUUEtEuLJGPTcIY6sWmg2rL9fS5mUvXKG1rwzPMDKbxxLvNbCtnX+t4?=
 =?iso-8859-1?Q?8Uc0ih94WDrqMsadqQfppVzcYfyuUeacuejsjdA87AAik7F6hrjYIG8q1z?=
 =?iso-8859-1?Q?QznytnYhv9DPmVhhXMNpsyWHu10PlA+AU/BF/QvRowthuNRkfiVjkdhtxf?=
 =?iso-8859-1?Q?ftTeoi3AWmHqLCjSiIdEYYpHQ7Jbqe8TelaJHfppGUCXpmm5nZDzODYFMZ?=
 =?iso-8859-1?Q?0MxSom0cItTffZMxcg/QrfsiaSIRlFy/BeEk/SQpuk1XzRyEXYGaVXhbbJ?=
 =?iso-8859-1?Q?Ia57Pg2waa+JgF2ecFEs6J2BzUi7WRDnalIPy6NkEYs2Lmv2wpWcjWXV5q?=
 =?iso-8859-1?Q?Q+zsmdAc6vPx90lfLoVuLblL9jnxlyYLhbSDRc/FA3fCMHjgJIJYB8/EHc?=
 =?iso-8859-1?Q?2dLQyRaziWMGPpnR/JJRV1xmdgToWif/+Aq2HuIHmH0enln9bo6u0iKyMO?=
 =?iso-8859-1?Q?8ofxHXUFNLxZ7YEjcC5loCUWuX+OPPEpbQIv+gd0u4DvkgT0vtdCAHmePJ?=
 =?iso-8859-1?Q?9+zQ5O7iiMQdB18lwL0xjMyGh8X/uO+LgZOrPOZVy/ywNWfMwnCVBB7g?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e95931f4-e311-42ba-d40c-08db1508e53c
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2023 19:13:35.4354 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fALy9Lgw0L6swNdTr1U55MAEgaLUMXlWc1jzUNhlyg+6iIUZWDkO4YnZRai1n9FvTxjPFcrG+EFluce/Zf3PWL8LL8goczbAlFOx7A1tHJI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7923
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 5/9] drm/i915/display/mtl: Program latch
 to phy reset
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

On Tue, Feb 21, 2023 at 11:35:03PM -0800, Radhakrishna Sripada wrote:
> From: José Roberto de Souza <jose.souza@intel.com>
> 
> Latch reset of phys during DC9 and when driver is unloaded to avoid
> phy reset.
> 
> Specification ask us to program it closer to the step that enables
> DC9 in DC_STATE_EN but doing this way allow us to sanitize the phy
> latch during driver load.
> 
> BSpec: 49197
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 8 ++++++++
>  drivers/gpu/drm/i915/i915_reg.h                    | 2 ++
>  2 files changed, 10 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 743b919bb2cf..50098c77e3be 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1624,6 +1624,10 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
>  	intel_power_well_enable(dev_priv, well);
>  	mutex_unlock(&power_domains->lock);
>  
> +	if (DISPLAY_VER(dev_priv) == 14)
> +		intel_de_rmw(dev_priv, DC_STATE_EN,
> +			     HOLD_PHY_PG1_LATCH | HOLD_PHY_CLKREQ_PG1_LATCH, 0);
> +
>  	/* 4. Enable CDCLK. */
>  	intel_cdclk_init_hw(dev_priv);
>  
> @@ -1677,6 +1681,10 @@ static void icl_display_core_uninit(struct drm_i915_private *dev_priv)
>  	/* 3. Disable CD clock */
>  	intel_cdclk_uninit_hw(dev_priv);
>  
> +	if (DISPLAY_VER(dev_priv) == 14)
> +		intel_de_rmw(dev_priv, DC_STATE_EN, 0,
> +			     HOLD_PHY_PG1_LATCH | HOLD_PHY_CLKREQ_PG1_LATCH);
> +
>  	/*
>  	 * 4. Disable Power Well 1 (PG1).
>  	 *    The AUX IO power wells are toggled on demand, so they are already
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 7c9ac5b43831..fa1905cc5a99 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -7360,6 +7360,8 @@ enum skl_power_gate {
>  #define  DC_STATE_DISABLE		0
>  #define  DC_STATE_EN_DC3CO		REG_BIT(30)
>  #define  DC_STATE_DC3CO_STATUS		REG_BIT(29)
> +#define  HOLD_PHY_CLKREQ_PG1_LATCH	REG_BIT(21)
> +#define  HOLD_PHY_PG1_LATCH		REG_BIT(20)
>  #define  DC_STATE_EN_UPTO_DC5		(1 << 0)
>  #define  DC_STATE_EN_DC9		(1 << 3)
>  #define  DC_STATE_EN_UPTO_DC6		(2 << 0)
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
