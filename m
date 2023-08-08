Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB4F774BE9
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Aug 2023 23:00:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A735D10E0E8;
	Tue,  8 Aug 2023 21:00:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2A88890D2
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Aug 2023 21:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691528419; x=1723064419;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=zMPy7RvHCLwEja7DQqQJbuMVeaX0zb3uL57VpYjQAoU=;
 b=cHrn/Cr+QkGV8g6SvKl/qVIQHUW+7aD4Cy9uj/qOgkQgIAe0b0k7Iiat
 Bc/Vlw8v5C8gR2Ef2KvA892oDwMn6/1eyE6pSMQRdM7qUfHhysmVkX+Wn
 6WA/MGx/uRm+HLv8JnzDB+j6g/aNo1NY3yfJ5PPaZpENatCvk7UHwz2Jr
 sir45VdyoB9BHP1U0uRKqptAt3FGj3TFqKCX+4R79WQdw8XmNgcRDGK7I
 cAvf1kE9z0a8hbGmyoGyDqTeIhjhRJuIqVQslzentKZuQ6HmqzNaLrmA5
 w9KulJ4b0MmXXd4dvcaYmUYxPu+jUSL2j6O1FjbXSoM9O9IZIw6/81z51 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="437316975"
X-IronPort-AV: E=Sophos;i="6.01,157,1684825200"; d="scan'208";a="437316975"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 14:00:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="761072861"
X-IronPort-AV: E=Sophos;i="6.01,157,1684825200"; d="scan'208";a="761072861"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 08 Aug 2023 14:00:17 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 8 Aug 2023 14:00:18 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 8 Aug 2023 14:00:18 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 8 Aug 2023 14:00:18 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 8 Aug 2023 14:00:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c70FUIm6Ha2yLWYG5E2CydugB/fvyfsPMp4aoq2t7BYBIjN+/r44TNbAW2C2xAIQW5oP3LHk3VG+6Ss0U20KYc/Yhk0wU/3FYgA0/ckRZfCxN3aeY2QDrdW7B2wvM+AiVQpNP7QfDC0cSOWgXSMaJoVO0izztHFvmYJHNmiXtzZPaTYSHiZ99paBfoO1XMfaFHCwCMND8NbvLqrGfebMYkQiJlyJiwsT+zD38tUDBE1iZxug91KHy8tIP77MFRrU0oDzge7Azol0JXro0zqx5EdzIG/jtyvnn+EHZqjuGPjFImWgSSdni26nemjNeRwns4T0cWBB3rxzK6Mk7GmftA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zIjIHwUe3mMoTsYM7oJs4dAMj6SiFQne+zKfdm68u0A=;
 b=i92xp1HIDFfAkleGqgpx1zEdJTWYgRCZFw4JXOf4oUq3fF3ey4+5KkHvIQ1GrlpGuHKi/FtFsMssMSLH24zEIgFxAaCAoeSr+WbkN7ipPt5bExNZGvaU5IbAAXcx+oL7jQGVBz+TzvwG8unXR/uHzNkX2uklFfGPFCNrUmlZ/PxS6JXme3qT0Rnio5tKjP01OX9xoV9F7RHIQ2B/OYootVccvIeAgxU06w1ybIkxqgHVZfPHCdFN39yZP2h3TnqERPDJQR1W1zz6sZDpgG2aAv0C5xNsEhUgkGCU58c1FC6Gi/Zu6s3pB6m4iHVULvZQ9ZCeO1gBzSA74VEPA/5rTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH7PR11MB7146.namprd11.prod.outlook.com (2603:10b6:510:1ed::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.47; Tue, 8 Aug
 2023 21:00:14 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294%5]) with mapi id 15.20.6652.026; Tue, 8 Aug 2023
 21:00:14 +0000
Date: Tue, 8 Aug 2023 17:00:09 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZNKs2cwKoqb5Mi7y@intel.com>
References: <cover.1691509966.git.jani.nikula@intel.com>
 <cb6bb860fb7596d6b37c3e1e4c7657064d2d747a.1691509966.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <cb6bb860fb7596d6b37c3e1e4c7657064d2d747a.1691509966.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY3PR04CA0029.namprd04.prod.outlook.com
 (2603:10b6:a03:217::34) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH7PR11MB7146:EE_
X-MS-Office365-Filtering-Correlation-Id: b90c667f-4f15-4034-9172-08db985275f1
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: p1OPVqQBd4ULYXkcRg1RymOeKd78MJIql4wedGwjfJreqegtB9+o9KafmjiuNtfhQKqgviisWvB7lTdUpAln2inC2q1aim5w6t5VjC5wp/IaHOHC/qO19kMie3onuVLjr4dZl+so8sGnCIMLKO1Chvz0BKg/Hv/W1vJPGdhuIscsZHXVlymXO0b+tLPcpKlNLTkxWNpZPFyVrqaGw3PeL2gtirg3aJ8xqiSXceG7f/sJyySE5LOtj4S2mEv1PAt3QxWwRa6jbEW4X5AlwIyiYvv7JFqukpx9fidSKcFBRgoJvyn3WIJljOnpZTxUW9HJgSW0DYGNlZRgtnZomx/Vq8LjbYCi4RE+efds8zKFqEpBJXb/YP4lK5RWdPoK49NvTZpiBpWf0MKXNIkzzBXnXt02smK/S//5FZ0cRVAfNGXURltr5qq7IbE0OikgCM2xACtg9fOywXlS8gkPd4WEAKKTkTSWfsEAQgYkEkie9IQqslUcrpt4byfWqu+EHbdq7PcEEAV2YHhOwwGmsfuL8R2AV5wvBat8tvC68CRA3VzKX8MaeVnbtd1EGMenEC08
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(346002)(376002)(136003)(39860400002)(396003)(451199021)(186006)(1800799003)(66556008)(86362001)(478600001)(83380400001)(37006003)(6486002)(6666004)(6512007)(66946007)(6862004)(6636002)(316002)(4326008)(6506007)(8676002)(82960400001)(66476007)(2616005)(38100700002)(26005)(8936002)(36756003)(5660300002)(44832011)(41300700001)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?P+hHSwxqHB97lDsAVqbkYnhomzWr5Zf24Kyo14nuIg6rkeolOtD9h5IiwwB+?=
 =?us-ascii?Q?5ZxKsKBkVcpMcXnL3/lMQdk6pGK57vSAUND2tVMgxg8ttAs2XYQ0C6iykt01?=
 =?us-ascii?Q?fXWNjvDLOBKubZil2YDYGKK9dtozftyZNMWgEVZnolXWaIlcWum79Ovv7dVP?=
 =?us-ascii?Q?k7G6DSgfHDGEmLMJdIcyi66zbirRlrzW/UIfiYaHXKMleUnIRkZe7BWD7ioe?=
 =?us-ascii?Q?KIbc1il2gQQDlj1dGXjCvtVWDQTQ1TjGVgo2GDF2+9ZLeaLURn+8JM3rEX0q?=
 =?us-ascii?Q?Wv6CWh6Dj/ZrhEg7wjAb9sIUsg6At+23jJ8Sh3Sit3FSqDMtQGwtLWFTTXUM?=
 =?us-ascii?Q?pPb0UGzYZv6mtnHujag02oBlX6hXIP8h/a4BpvOVPkUrB5cAzR/u6VU1hqUa?=
 =?us-ascii?Q?Vfz4m3lc0kTCTB7HQ4cy+Jed969xSgYCoO4TJYGamvCzyMIFYcQu3y098Q0r?=
 =?us-ascii?Q?XpBGWM0pt/lj0tdzsbZY6OgUizKf83pqJ9hfek/+ApX1M9eR2/VDHJ0ndMHE?=
 =?us-ascii?Q?3oSwLIiYaha64yWpzFmsF9WlC1pAeLxo/q+NGcAdiEw6XZ0j5mBc2mCRH3oh?=
 =?us-ascii?Q?wFz/2RWuK7D1YasZUEZNtNmhtRg74PZHuzoEYYHRtbRJFdu37Lmpmv5c/BQP?=
 =?us-ascii?Q?mgWS8jIa+D6gSnPLmEqQd39qmW3/ir4VW/iUgapfKMaiALuq/MlSK9NqYE5X?=
 =?us-ascii?Q?4hKd9bdpfMSFqien/HHmttCMe9Q6N5SmlOKuEpKwkW0J2jh29mjz0vMo3G5u?=
 =?us-ascii?Q?NxPl9QC2kkXUXFVy8iR1KbRogWnfrL9qh3WgsN2cclD++Kj48JoVPrvyv93r?=
 =?us-ascii?Q?UDesVFeB4n8KTcF/TB//pWl+Bx2aMRGsU/Xukoa5ZIZtGq2VztYFjaBro2Fj?=
 =?us-ascii?Q?ps3p5SKOgELGQqQZbKFy5FF53M6qsQiEYGVYrbSfYHdNsOxkHylroeNYr4fN?=
 =?us-ascii?Q?OytHXhexQQO97IcxNJFTNhegPdWqFXPt/PhwB8uKVSvCbF4MQdMTkZa14Sws?=
 =?us-ascii?Q?EWNXu1kqynNwYvcc3K6wUnGgKwjhTVAdAJTauFPYRVhJhzVP0Ft4FwrvDwXD?=
 =?us-ascii?Q?xp4ikzmovPta+3rEgFZbUwyKqmI/sxKRu3ykhC98adWQUYuMr786R5C+IsRR?=
 =?us-ascii?Q?dFI2xZnY74Xfe0nDwk0FVmLdhPwIE0+CPSj3L8Hf+eznRC66Xpw4gMtVc9Vz?=
 =?us-ascii?Q?W8Q4o7jX+/FB6gqvHCJjn8qGSRAQKhX/KwbBzmbZHji3U0zL+hv+n8R/vy/n?=
 =?us-ascii?Q?noUZtoT5ZW065xwOhpYqYzwBNsC7IZVY0bl7JtPBGe6QfgXZ0dwFitON4/J7?=
 =?us-ascii?Q?Xsf/VG5jS/VumvNwHlpGcX3/buL3Ho0xR9AZ0UDUiiw82KfUpK2Lq9vJgfsH?=
 =?us-ascii?Q?YLXEuIjl4JNkXztfh7CUQL+JgYt4A4J7iVemA0THauUYul5cuKQR2KzQVvn8?=
 =?us-ascii?Q?y8SmfuI9n+5daaiI8Ap6rTUF9NHx963xodLtyeGRzPWWbatFmwTrpiRKv11X?=
 =?us-ascii?Q?e1h1zSgbFvNeB25vkh+yWzPOwlY3LyKOGkRS0YiG1AumRZcRrKfXpv7NmrwM?=
 =?us-ascii?Q?WgGv/wLSUYS3eYFdIwCUhSqyHtwLTVsOHvAJRXzozSB3np0i96egC6eRqeUM?=
 =?us-ascii?Q?DQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b90c667f-4f15-4034-9172-08db985275f1
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2023 21:00:13.9539 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EuoX7Ud7OzNL6pDm1HoEAsTe7pJZSn+Zhm4YpqvswfzlvFPWhm+Rt+801WIngfP/KyyswWJsCB0tEm7WCt2r8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7146
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/irq: add
 dg1_de_irq_postinstall()
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

On Tue, Aug 08, 2023 at 06:53:29PM +0300, Jani Nikula wrote:
> Add a dedicated de postinstall function.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_irq.c    | 17 ++++++++++++++++-
>  .../gpu/drm/i915/display/intel_display_irq.h    |  2 +-
>  drivers/gpu/drm/i915/i915_irq.c                 | 11 +----------
>  3 files changed, 18 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 168f6d4ce208..a706ba740dd6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1666,7 +1666,7 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>  	}
>  }
>  
> -void mtp_irq_postinstall(struct drm_i915_private *i915)
> +static void mtp_irq_postinstall(struct drm_i915_private *i915)

should this be in a separated patch?

up to you,
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  {
>  	struct intel_uncore *uncore = &i915->uncore;
>  	u32 sde_mask = SDE_GMBUS_ICP | SDE_PICAINTERRUPT;
> @@ -1699,6 +1699,21 @@ void gen11_de_irq_postinstall(struct drm_i915_private *dev_priv)
>  			   GEN11_DISPLAY_IRQ_ENABLE);
>  }
>  
> +void dg1_de_irq_postinstall(struct drm_i915_private *i915)
> +{
> +	if (!HAS_DISPLAY(i915))
> +		return;
> +
> +	if (DISPLAY_VER(i915) >= 14)
> +		mtp_irq_postinstall(i915);
> +	else
> +		icp_irq_postinstall(i915);
> +
> +	gen8_de_irq_postinstall(i915);
> +	intel_uncore_write(&i915->uncore, GEN11_DISPLAY_INT_CTL,
> +			   GEN11_DISPLAY_IRQ_ENABLE);
> +}
> +
>  void intel_display_irq_init(struct drm_i915_private *i915)
>  {
>  	i915->drm.vblank_disable_immediate = true;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
> index 8a2d069d3aac..ce190557826b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
> @@ -62,8 +62,8 @@ void ibx_irq_postinstall(struct drm_i915_private *i915);
>  void vlv_display_irq_postinstall(struct drm_i915_private *i915);
>  void icp_irq_postinstall(struct drm_i915_private *i915);
>  void gen8_de_irq_postinstall(struct drm_i915_private *i915);
> -void mtp_irq_postinstall(struct drm_i915_private *i915);
>  void gen11_de_irq_postinstall(struct drm_i915_private *i915);
> +void dg1_de_irq_postinstall(struct drm_i915_private *i915);
>  
>  u32 i915_pipestat_enable_mask(struct drm_i915_private *i915, enum pipe pipe);
>  void i915_enable_pipestat(struct drm_i915_private *i915, enum pipe pipe, u32 status_mask);
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 1723c215dcf6..8c074643b6d1 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -869,16 +869,7 @@ static void dg1_irq_postinstall(struct drm_i915_private *dev_priv)
>  
>  	GEN3_IRQ_INIT(uncore, GEN11_GU_MISC_, ~gu_misc_masked, gu_misc_masked);
>  
> -	if (HAS_DISPLAY(dev_priv)) {
> -		if (DISPLAY_VER(dev_priv) >= 14)
> -			mtp_irq_postinstall(dev_priv);
> -		else
> -			icp_irq_postinstall(dev_priv);
> -
> -		gen8_de_irq_postinstall(dev_priv);
> -		intel_uncore_write(&dev_priv->uncore, GEN11_DISPLAY_INT_CTL,
> -				   GEN11_DISPLAY_IRQ_ENABLE);
> -	}
> +	dg1_de_irq_postinstall(dev_priv);
>  
>  	dg1_master_intr_enable(intel_uncore_regs(uncore));
>  	intel_uncore_posting_read(uncore, DG1_MSTR_TILE_INTR);
> -- 
> 2.39.2
> 
