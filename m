Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B6960FD62
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 18:48:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 747E810E1DE;
	Thu, 27 Oct 2022 16:48:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18E9410E1DE
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 16:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666889291; x=1698425291;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=nUuE/dTXnYUCUY7Fr2DBdwUvudjsTVZgIrtpGdl5S38=;
 b=Yc0rpmOaTYAVlKNMSg1UNbkFT3BaDnh8TLaVcjzv76Dd94Q+zZ/uLhcU
 txUrSuAbzs7r+sT2ewI1r+0fzKVuPstWu9YWOIn7eFiUSGmGwbg6F83RZ
 GHQxk3NPtW1vgrsNCX3oftM7sxtM3E4H3MrtDNPfkIeoaH7YXAS0WwF8x
 QVdaINyX7q1hMFDDZFiynFBt/NWfkV8/o3MniUMEjtGBW3/Xgx0Gpe2f0
 9q7wkrDU3yP1n2E4XgUyCamERAA7zD2Lg9wo1dfxpuAmhqxhZqFrx9bT8
 dajrBqCAF7xhO2CWk8MAB87pTbRLk2u8b4e+ZZ1g3YOAKPv8TuWy/695v Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="394592473"
X-IronPort-AV: E=Sophos;i="5.95,218,1661842800"; d="scan'208";a="394592473"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 09:48:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="775059381"
X-IronPort-AV: E=Sophos;i="5.95,218,1661842800"; d="scan'208";a="775059381"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 27 Oct 2022 09:48:10 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 27 Oct 2022 09:48:10 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 27 Oct 2022 09:48:09 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 27 Oct 2022 09:48:09 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 27 Oct 2022 09:48:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YzW/IGe4N+tN0btvkhaT80lvOesxDQr327lYz3VesTQQpTkDUJINQbWeyarOj+kIH9LPBdfqGbqJum58hM1jRowlc6PEQh0Nf2XfRucD+mWDHJUpxdaFnvI0Ex05L1FUXC55LtAz9/mhFxSOpMJUr3XjePaenvtmdpsxg3qvC4FcNmk1JriR0hTmBzQsZc0cJaCNeFcRxBDQ570/m2hR0i5lTbUKb4dNYGnb0nzBlvhGFqvmuCcs0954vmt7pAfKBVBttkdKRNyh5vx+AYJc3bJ4dv5kmEWh7iQDI4ppa5RN8tnAHLCEneg097zgm/JvjUuJtEmtrhEAD1Y7+mEZpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z77rwyFwpA+dOx9iXEbvciy7cvIbTSyBEFIvwaPLQQ8=;
 b=iFHApLXF+WFuYwRgQcmB3DBlhGN9y0W+5tu2AvYT6AGvwq5SfK/fXaO9R4jakvvK0Fxk/GLZelqFjUQifIiHZideSoSFol9R1KI5prfLBf7BoX3r3vp3NRg6MzjOIviTd5AjXXCQkCXwCoXGjweVy6wCtx2A533nRBTriRxs2P2VCWUO5y6Wo2RusU1GqSjuzsiWBXvMPwaosB2aXiA87KaUtXYFySTz7K4/8XaGz3PjRsRAkx3Y6YKy4iblB2DZdbsj4rGJzHrUhhWjwZab4ny1Qh0UPdjSkgceoiUOIVh+4i8FFNLVauZ6eymULuZxGV33v7F41qKUQRedPrDTHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BL1PR11MB5555.namprd11.prod.outlook.com (2603:10b6:208:317::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.28; Thu, 27 Oct
 2022 16:48:07 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::29e1:56c3:823b:45d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::29e1:56c3:823b:45d%4]) with mapi id 15.20.5746.023; Thu, 27 Oct 2022
 16:48:07 +0000
Date: Thu, 27 Oct 2022 12:48:02 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <tilak.tangudu@intel.com>
Message-ID: <Y1q2QqJKne6/Geel@intel.com>
References: <20220721095955.3986943-1-tilak.tangudu@intel.com>
 <20220721095955.3986943-2-tilak.tangudu@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220721095955.3986943-2-tilak.tangudu@intel.com>
X-ClientProxiedBy: SJ0PR03CA0257.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::22) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|BL1PR11MB5555:EE_
X-MS-Office365-Filtering-Correlation-Id: a5da3a87-7087-4216-e5af-08dab83b063d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZywXe43RaOvxv3WfLYKbHguXH3hAeoxZiNR1pvE8XwV7jFNdhE7dqwGweuJ/YwH20Nld/iuWhs/SRY34HQsORR+PfMlZy/Sn6FN+/jnlMjx3Ua6qcBWzAwD/05ONrkz6jzmX6IkDSDyPVrb8FSLxXrrsG1WRkVbU+x+Lt1t4OR/L2LBDkxlqtcNrEc/A77EbRvwd9NMBQiTAUdvkNLkxVQRLGl8FwLcOmfKgZ9URKSVd1j4Q/FayL4zaf0uYX/Sr/xWP1oXJEYwxVGth6OKooWPJYuXKvCdrZ0qIRgGdWE/EIKvl+6N2aw/EYMO3b5aVL/W2pEY8DmP9F2wpVe+H21SPZbI8uVE29cLcz+FKI2bSQZm0hum+CTDaj2QsftGQA7d6JUF1fawlDD1A5RdWJWKhk4tXK2FgbBEB4zNbINmWRGHbbYZCac0AZq52Iaadi0FhMkXGK4hUWl4izFD1Zwhjm37i5sfFSGLqxocpjeseW0WcDmYfrN+OPo11bCFIKbwDeTfkyihOqgl0HfqqSR07uN9pE/Sw2kk3Wxdj00rYn3HthRpejYsJf804/q69a2QP6yhmTuUVcVr/SJjHo/HEbvBdEZfSXyZKgCCrLGzE+5jknVpHAfRZjEEIDqtWLbjhEpIEoIIztOYYGm2ppE3XLI24jcd1cloLdGZFLzE+cflmRuqp1nD+n0/kWBYrNZ8pn8X8Ra2SdFwQe9zltA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(396003)(366004)(39860400002)(376002)(451199015)(44832011)(2906002)(36756003)(41300700001)(66946007)(66556008)(66476007)(37006003)(8676002)(86362001)(6512007)(26005)(4326008)(6506007)(316002)(34206002)(38100700002)(6636002)(8936002)(82960400001)(5660300002)(186003)(478600001)(2616005)(6486002)(6666004)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DeQo1lwuKuAYahPZHhEL9QxgdnyXwlFi5dFpemh6lZJkEIDs3KZraLoGMwah?=
 =?us-ascii?Q?wGJpyTc/0aCA+FnXlw07smF3ELu0ejvWQD9Uhg2PK/h2FUocgGswDJMa+Cxb?=
 =?us-ascii?Q?59BcCPB+VH2rVIVB8bC4EpSwvwlS3+Iwaf6Qzkv1RUVjaR7t+Ze95Xlgos7C?=
 =?us-ascii?Q?onHvJYaq5k2nGrQ9FSB3P6P7fnbs5ta09HslYfK4RYBo7cViUG1lyE2fm88z?=
 =?us-ascii?Q?UIumVan4zEmCERum4Qa6g5JcZZgi1rEjJzkebexq1hjRAD6+E3tXCUm6ur7I?=
 =?us-ascii?Q?pYbhpskn/iUWW1/NPl5/E9uef+nnEugC99bJ9QVjSU93VqZvTfxDdlGhjnsU?=
 =?us-ascii?Q?esrhViibdWz0DMFdnc/NDoY1/am/mmeAdF25HNEUHBDttCfiK3rioV40R3nH?=
 =?us-ascii?Q?+obQJGc+bSPenQrPo+TFqW8J8V91mDzmQP4u+Lry4yFyRL7nio/tXOpkE0vE?=
 =?us-ascii?Q?7kzRjuEG9Z2xfC2uR8d6QaRz2MJlo7sXK2PnDipAKo9XEQ4o/yc008W662Pv?=
 =?us-ascii?Q?cPrj1+l0b1RbqK5bJJup4mZ2nDfj6TXdhIPgVtdinaH1sfQAH7LP1mnIXsHc?=
 =?us-ascii?Q?o4MOn4GFDmN89zOT9r/XNn4D9f8J9q6fLZzJVOtvtr4u854GAozLJl8KKVX9?=
 =?us-ascii?Q?Pee0RSvgmhc54oCN+EcYNb2vNQ7lRkIZll9rTRthHZDnWRyCkdIzWOqqzVoY?=
 =?us-ascii?Q?9sKQcnU+kAadT+YKbvfpmd9sS5hAcXzE7V3BeH1nPeeq5SnYVlT4zrgyJmd5?=
 =?us-ascii?Q?pCQDEZq5ROOYkXa+S+tWRAukM2kPE+3v6FnbPm/yYeVFQgs5DUJJXp5wh7/V?=
 =?us-ascii?Q?4QQMuGu0ImRkqADAWNfBBQgEOwvCPZttgRI2h662+KLailkpuSkNI3RnnaLR?=
 =?us-ascii?Q?/QWBcYoPfgyNpJdDvOqNNscmZdbJNTv+6EddmWo2pmNP5uVNEwBgP/s6oaLf?=
 =?us-ascii?Q?kAZkPnaTwJAjXJhozh/19g1qQQFPwEi4kjPm5UpXcBsuisLLu6+lJzbGeCgc?=
 =?us-ascii?Q?l16FcWasUg6vRQDCEgZanVSlupHObVsvRXrpnLSMdu7NQzFU70VUCD8jK/6O?=
 =?us-ascii?Q?vx9eaXSLDnxnS68b6dNdLnP3Z+gpFeqS30Mwqau6rzoTG7eo8yJCP3fFQb5O?=
 =?us-ascii?Q?Fb9vB63lSB87nyi8VsmyEm4D8Fop4dRf4U+XBmrVOD9RZapUbiDUMohMZFcs?=
 =?us-ascii?Q?2sfuk0wqinZtl4ATKNoQq2l1PbKT5Vdvgzn4ICfgNyAqKEKpSeoK8KUCnbva?=
 =?us-ascii?Q?AlyeVoj+tVL5amzgh5Tk2jKUZ1VVGZbc63wfo4UiYwRoRoQ11fvepznVBNoH?=
 =?us-ascii?Q?AwkUsuQ5z8h89d/3ffi36xwaY6YJa+8Nk4WqUaNtZoeH/71En3E2gAYUJHGS?=
 =?us-ascii?Q?f7x1ITt50LhyemQk1IwTpNAOgBQf3JzgPAfPQy/tllq5lxj0P3EZmJfxdBps?=
 =?us-ascii?Q?7dPbYsb6xavrpxUJ7p+uR9vGvDvjaePHg0Njal0ewhMy19aUNBXcs4+crWcQ?=
 =?us-ascii?Q?tfZaLyCwuDw61vbXuYm7Uyqvoa4WGBbLOfBEk6HMylMb31ViNMey2me/JG9F?=
 =?us-ascii?Q?NWUTOEbKDAQKHdOLLntLpTTQFXTqTB8WPzSIHBhe?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a5da3a87-7087-4216-e5af-08dab83b063d
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2022 16:48:07.6303 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6sY8dEb1plBzv08d4XXlYayACBWi1D/gALCeRFZaEU0g2hRVIp7bPjuUuqOe3kmzyxKKcgIbiOQlf0YNHz3Gyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5555
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915: Added is_intel_rpm_allowed
 helper
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
Cc: jani.nikula@intel.com, chris.p.wilson@intel.com, saurabhg.gupta@intel.com,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


+Rafael

On Thu, Jul 21, 2022 at 03:29:48PM +0530, tilak.tangudu@intel.com wrote:
> From: Tilak Tangudu <tilak.tangudu@intel.com>
> 
> Added is_intel_rpm_allowed function to query the runtime_pm
> status and disllow during suspending and resuming.
> 
> v2: Return -2 if runtime pm is not allowed in runtime_pm_get
> and skip wakeref release in runtime_pm_put if wakeref value
> is -2. - Jani N
> Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_runtime_pm.c | 23 ++++++++++++++++++++++-
>  drivers/gpu/drm/i915/intel_runtime_pm.h |  1 +
>  2 files changed, 23 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
> index 6ed5786bcd29..704beeeb560b 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> @@ -113,7 +113,7 @@ static void untrack_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm,
>  	unsigned long flags, n;
>  	bool found = false;
>  
> -	if (unlikely(stack == -1))
> +	if (unlikely(stack == -1) || unlikely(stack == -2))
>  		return;
>  
>  	spin_lock_irqsave(&rpm->debug.lock, flags);
> @@ -320,6 +320,21 @@ untrack_all_intel_runtime_pm_wakerefs(struct intel_runtime_pm *rpm)
>  }
>  
>  #endif
> +static int intel_runtime_pm_status(struct intel_runtime_pm *rpm)
> +{
> +	return rpm->kdev->power.runtime_status;
> +}
> +
> +bool is_intel_rpm_allowed(struct intel_runtime_pm *rpm)
> +{
> +	int rpm_status;
> +
> +	rpm_status = intel_runtime_pm_status(rpm);
> +	if (rpm_status == RPM_RESUMING || rpm_status == RPM_SUSPENDING)

Rafael, do you believe we could add something like this to linux/pm_runtime.h :

static inline bool pm_runtime_is_transitioning(struct device *dev)
{
	return dev->power.runtime_status == RPM_RESUMING ||
		dev->power.runtime_status == RPM_SUSPENDING;
}

> +		return false;
> +	else
> +		return true;
> +}
>  
>  static void
>  intel_runtime_pm_acquire(struct intel_runtime_pm *rpm, bool wakelock)
> @@ -354,6 +369,9 @@ static intel_wakeref_t __intel_runtime_pm_get(struct intel_runtime_pm *rpm,
>  						     runtime_pm);
>  	int ret;
>  
> +	if (!is_intel_rpm_allowed(rpm))
> +		return -2;
> +
>  	ret = pm_runtime_get_sync(rpm->kdev);
>  	drm_WARN_ONCE(&i915->drm, ret < 0,
>  		      "pm_runtime_get_sync() failed: %d\n", ret);
> @@ -490,6 +508,9 @@ static void __intel_runtime_pm_put(struct intel_runtime_pm *rpm,
>  
>  	untrack_intel_runtime_pm_wakeref(rpm, wref);
>  
> +	if (wref == -2)
> +		return;
> +
>  	intel_runtime_pm_release(rpm, wakelock);
>  
>  	pm_runtime_mark_last_busy(kdev);
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i915/intel_runtime_pm.h
> index d9160e3ff4af..99418c3a934a 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.h
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
> @@ -173,6 +173,7 @@ void intel_runtime_pm_init_early(struct intel_runtime_pm *rpm);
>  void intel_runtime_pm_enable(struct intel_runtime_pm *rpm);
>  void intel_runtime_pm_disable(struct intel_runtime_pm *rpm);
>  void intel_runtime_pm_driver_release(struct intel_runtime_pm *rpm);
> +bool is_intel_rpm_allowed(struct intel_runtime_pm *rpm);
>  
>  intel_wakeref_t intel_runtime_pm_get(struct intel_runtime_pm *rpm);
>  intel_wakeref_t intel_runtime_pm_get_if_in_use(struct intel_runtime_pm *rpm);
> -- 
> 2.25.1
> 
