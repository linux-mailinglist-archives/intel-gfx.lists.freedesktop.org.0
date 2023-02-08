Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE9968EF98
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 14:15:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B3BE10E775;
	Wed,  8 Feb 2023 13:15:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F9C610E786
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 13:15:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675862131; x=1707398131;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=kAtmJbZWLfmcJfJW1xlyox1GjKyeBnrkVxJPd4pNv3o=;
 b=Xf2T/OMljesRkLz5GyPhLSvcNgLrpEASPEBRtwCEU2+FaJKUP12YKRW9
 JWT5bmAzZ0MMNJS6Zub0JRs3QjFDUn2nUW/9gLZ3ycTfZO+WYnpaqY+DI
 A+yaDTiW5QN0Rs06wy5N0Zp7lLS2lCwkNyPI0DvlbyTvfboMgjBHtw2u/
 Igs51bAugC0jo1bjHFXCWFXb3JM3peWlmZ4W0iP8LiwAHjuo5o996S43s
 FHhkaLIXaYxBbjfIwlRqiIaD6fpmgY2OkzlgDAOiYQteX2LB9yns8TgfD
 nqsp4ACkx66xUITk6rurqLDQ/3TE2JeIz4hGefoLlbg0UVZG/lwzuMkcD w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="392187353"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="392187353"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 05:15:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="697662026"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="697662026"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 08 Feb 2023 05:15:30 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 8 Feb 2023 05:15:30 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 8 Feb 2023 05:15:30 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 8 Feb 2023 05:15:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bBSbtJLFbr37Glz1WF8yi7Zke48LlMhFLX2thzd5vM8NmXxONQbl6DkE2s10SSuUqOpsIcuRcghyl81VXLcQJQUHG2sdoUM40huVGoXS4wZlbFLluHiEpOLvYc6GcvTo4bOz6iYreP3L+hEw7BYYlYiu7y3KEVyuIXcVWKVtiTjHpjO5PG50BUt7jcfw4sdoRR/OzyqcsMGQ3oy1QvChrsHWXH7Tp4a5/LgOUybsWUgO+K9O141RBADzW3XgWafUlDUgAlftkm38QtEcrNXOzNSRp4hbIzEBeN2ZDUhUNRvo21/oC99XBxt7BjxAQJ1ymw24TnmjAZcUB3DA4mJoAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mhHYuW2bz0lRmZ3fAI3bAE4rcoNhIVwUr9SafHLCOh8=;
 b=cEs1esXjl69tB0DOsD0lny/BTzkYDy7hNy+dT0oMClEqtQW1tk9bY8t+D3xhBgJruoLqmC1KU7uqIVL7bPsVSNx4WjNsWNUEq/4/ajhM2CF75PKRBpE9jwpHzQmXU0Qvu8k9txyXC7qPs+EyDXYc4cQ3EA9uChNIwF01cgNQ1Xp3uef2NO3YUuR7woBqgU3UlIHL0nqy6OTYQF3l77v/XBywjS51Jl9+/lMtWO1ALvttKL2/TVKo2XsQsAzYk1NHLS90Fk43v4su/Y8Qow008RNNvKyFt1ljHslzxfJ06DAeaK9leeuEb4cQ6GAQZvfjsdm9L+l0Sb3BHOe+p6Sy1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MW4PR11MB6811.namprd11.prod.outlook.com (2603:10b6:303:208::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.17; Wed, 8 Feb
 2023 13:15:27 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%9]) with mapi id 15.20.6064.031; Wed, 8 Feb 2023
 13:15:27 +0000
Date: Wed, 8 Feb 2023 08:15:23 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <Y+Ogay8+nKGJmhGe@intel.com>
References: <20230208094550.27730-1-stanislav.lisovskiy@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230208094550.27730-1-stanislav.lisovskiy@intel.com>
X-ClientProxiedBy: BY3PR05CA0020.namprd05.prod.outlook.com
 (2603:10b6:a03:254::25) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|MW4PR11MB6811:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a1e4df5-21eb-4b8d-edde-08db09d68b1f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pk+ksBcx4faDR4I54MRlCDS3ZSfXSisesFnd3QfomKc3tZ42QiORIhhV3c0+k1cVcxx7SPmxQTsJjXIG7+Fml1h2EM6IWgyUdyIhl3iHc5UsAS45PiwIljq228KETWAco1/tWK0ss7cC/wXAyM8xCa1QLiDu1/d2DHiiML1FKZmsTW4Z+EiY4p+CKwvcFUEy8s7gcbREj51dqW57qiFT5XKtUZjjOp7h98mTcSUXqnqHN+zT22miwOSI0f0N2RaFC3UR+FidVl57GM19Tg3yLN31ZDlz0MhBSzIzfJZeZpfNQBRFRLizcx48wBj0LR7YvdWhgNJt6G9+yCtfOO0UJ7PTITgZjXM1goHYstw70gRubDPt18oyDi0rHxoBx4s0UV5A1J7cvq/hmoozffN5NelkwR52bDHd+xgDSQDNLHMUXuSo0YB+ohF6DsnX1U8YzFroKmKKIdYveYF/9wrdnHl0TcRjm9SMFhsPDuvqoYx0ab1fk5l157wogcOFhUZI/6VSP0TFPo6MRhMDb+GYXlLBQgspfTwqnj4dDTOpMbS6fAq/Ye8QA7Tm85k/JESCjmwr4g9bCdAHX3dQpW9OLkNFZdLXZ3opqtdZHQn+kiozGc5m6kvyR1Ns0aRDgYC6SiyrNZGl6ASf1HJr6WNUTg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(376002)(39860400002)(396003)(366004)(346002)(451199018)(6862004)(8936002)(6506007)(6666004)(37006003)(6512007)(26005)(186003)(316002)(2906002)(6636002)(83380400001)(5660300002)(36756003)(44832011)(478600001)(86362001)(6486002)(66556008)(66476007)(66946007)(41300700001)(4326008)(8676002)(82960400001)(38100700002)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Os9p2HpPnnXpVrqcm2R2kGWDsL24X2brK/tQ7UyRTZ+ZMGJgMF8h31BW/dn1?=
 =?us-ascii?Q?bMxB1Nsa1l/Vib/ybELVNsyy9PMZQahfxDWjSOYRrF42PajdUYSz9GN+U/ES?=
 =?us-ascii?Q?4r4ItxUwl+2LqE6RxWO35zz2FBBwUQv6KB9Nmzq7y09MNqFjYrFbiy+Iy37F?=
 =?us-ascii?Q?3P2KSgNVygZBIs92BYwKMxDsrD5+F1AD5G5MNa5F9Bc0Tun0EUJUNJaD/Ub3?=
 =?us-ascii?Q?iiCx3a3tcu0AqdDHrmyvkEw1DzyB0uXS/dPZvkXhF245YhL8MHGk3FtW35YL?=
 =?us-ascii?Q?623nictUs9Lsda5yTAJQtlMC51TmgOu1A6H7mOdLKoOLufg73va5jBO/sCob?=
 =?us-ascii?Q?Er1MNU8LRE/KYLmz6pbDcpfp7pgeP/1kdvIsBSuYcc+xHESIbCb4fEFX8H9j?=
 =?us-ascii?Q?7cfULeJM2DkMkZSN6oPUM2L1As2ZtnEkCvIYC8872AGhr6bdwvAXlkf9Od1G?=
 =?us-ascii?Q?A4N4bZg0b7MgIIjXnX2/tnl0M78nZ8F90G7uRMPvAPnhWN5USPEPut5LDMAM?=
 =?us-ascii?Q?OwA3ZkYa45tABZYlms3GP8UAaUicgqHrN/UPIXQ0brp5I69EGBQ0x7DNRmfU?=
 =?us-ascii?Q?7vNuz878awDhz3ZwuIZMfMFau+0ssIDJLu9xf3x88P/TYCvwso6pPllcTG2+?=
 =?us-ascii?Q?elLk9T3C1RpFauZp8e3xc+fArQHPYsHuNx5U0quxV4CBoVlU6aqhyOsNHSZy?=
 =?us-ascii?Q?vEui/rIR2FIIIQWWnOYDDMJbWUTL7AgL6Z6FoBr3Bxc+ygLYmnKgYS0khxsF?=
 =?us-ascii?Q?Db6cCotqAVX4f+74DvJis0jZVdkGQnTnM7bIMxtV3g2XxTxSjbJ4zOhRgNFQ?=
 =?us-ascii?Q?TDGMEGknhwiIuucbLdOL4D5X9UL7OjVCtc75Se4dBx+z2bxZjIDg4IkGejBy?=
 =?us-ascii?Q?mnJsbeu9ts1R1ArJFMN4y8JWq05RofJ8DCECeVDcOyHMAliA7Ze9mW1/W2bl?=
 =?us-ascii?Q?K9Y5YTucxkMMCOoTkwNj9HNpbOv3aHOXyHNQGe4nK7hx+7NLWuFLdRpwUHRM?=
 =?us-ascii?Q?rXZjrQCfu6UF77VeLOnKQZmlyXC7NqjfKwuYT1KrZZ55ztTo4aIo8DDzUtRC?=
 =?us-ascii?Q?tq4tBIH7QJx5A4J28EPJI3ekpBgrmIl7sYcIYKh1ks2pjv3TaP+KkQIGWVAs?=
 =?us-ascii?Q?0yFijq0bIjqqagisuhfDgtfEtMm47EQiQSfwt77zkKC5gXKgN4sPb9Nk7w1+?=
 =?us-ascii?Q?Kx6RxDwfj22SxdR4OO4ylCqOv8bzPhPzyJAStycBiTzgnIuXqIRkKKfVZRFe?=
 =?us-ascii?Q?gXw7w3KUWTf0NBAjaXyLv2mhm8kSZGxB58Ntjfut1VFzF+ewG01h6UasuG/s?=
 =?us-ascii?Q?v0iVryVulDihWWS9rIdJYpVBA8DpkvM4aAjBuo8EFqtveyrPOTJfufbH+ue0?=
 =?us-ascii?Q?CkkOXkVxKFnlxesRnbSiWR3dYGLV0iT61Dhen8DQi/0sqpwziHZhllU0DHN1?=
 =?us-ascii?Q?j/34AgpaRiVAYRPgX2jMZpFho3vdmJt2Ni2mmwoedDrL2ur9gabPOB2Ykw3k?=
 =?us-ascii?Q?ps0A2QxVSR0UKNLpfh+wtcO4VN5WOe5+VIM1X1LjsVctNlqIRUEH/hjZtMOp?=
 =?us-ascii?Q?1WI2LCLJ8Rb0vjG3xO5q66ECwJWrUe1G9/9qzszmkfRvQVy3InCXMTum7QiK?=
 =?us-ascii?Q?DQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a1e4df5-21eb-4b8d-edde-08db09d68b1f
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Feb 2023 13:15:27.5627 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sqOZQ24xMiN8Mklnz+kYL64W1sjQBZ3yhfI3CwzqhSWetLb3n4SrIfWVEf0Nqx+tCg6LjuhKiLI5bIN4rlFMmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6811
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Communicate display
 configuration to pcode
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

On Wed, Feb 08, 2023 at 11:45:50AM +0200, Stanislav Lisovskiy wrote:
> From: Jigar Bhatt <jigar.bhatt@intel.com>
> 
> Display to communicate "display configuration" to Pcode for more accurate
> power accounting for DG2. Existing sequence is only sending the voltage
> value to the Pcode. Adding new sequence with current cdclk associate
> with voltage value masking. Adding pcode request when any power well
> will disable or enable.
> 
> v2: - Fixed identation(Stanislav Lisovskiy)
>     - Made conditions more specific(in the commit we declare that
>       we do this for DG2 only, however that commit changes >= to
>       == for many other platforms.(Stanislav Lisovskiy)


Is this a DG2 only thing? or more like DGFX in general?
what about DG1?

> 
> Signed-off-by: Jigar Bhatt <jigar.bhatt@intel.com>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c   | 89 +++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_cdclk.h   |  2 +
>  drivers/gpu/drm/i915/display/intel_display.c |  6 ++
>  drivers/gpu/drm/i915/i915_reg.h              |  4 +
>  4 files changed, 98 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 82da76b586ed..22ba0303ea28 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1908,10 +1908,10 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  		 * NOOP - No Pcode communication needed for
>  		 * Display versions 14 and beyond
>  		 */;
> -	else if (DISPLAY_VER(dev_priv) >= 11)
> +	else if (DISPLAY_VER(dev_priv) >= 11 && !IS_DG2(dev_priv))
>  		ret = snb_pcode_write(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
>  				      cdclk_config->voltage_level);
> -	else
> +	if (DISPLAY_VER(dev_priv) < 11) {
>  		/*
>  		 * The timeout isn't specified, the 2ms used here is based on
>  		 * experiment.
> @@ -1922,7 +1922,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  					      HSW_PCODE_DE_WRITE_FREQ_REQ,
>  					      cdclk_config->voltage_level,
>  					      150, 2);
> -
> +	}
>  	if (ret) {
>  		drm_err(&dev_priv->drm,
>  			"PCode CDCLK freq set failed, (err %d, freq %d)\n",
> @@ -2218,6 +2218,34 @@ void intel_cdclk_dump_config(struct drm_i915_private *i915,
>  		    cdclk_config->voltage_level);
>  }
>  
> +/**
> + * intel_display_to_pcode- inform pcode for display config
> + * @cdclk: current cdclk as per new or old state
> + * @voltage_level: current voltage_level send to Pcode
> + * @active_pipes: active pipes for more accurate power accounting
> + */
> +static void intel_display_to_pcode(struct drm_i915_private *dev_priv,
> +				   unsigned int cdclk, u8 voltage_level,
> +				   u8 active_pipes)
> +{
> +	int ret;
> +
> +	if (DISPLAY_VER(dev_priv) >= 12) {
> +		ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> +					SKL_CDCLK_PREPARE_FOR_CHANGE |
> +					DISPLAY_TO_PCODE_MASK
> +					(cdclk, active_pipes, voltage_level),
> +					SKL_CDCLK_READY_FOR_CHANGE,
> +					SKL_CDCLK_READY_FOR_CHANGE, 3);
> +		if (ret) {
> +			drm_err(&dev_priv->drm,
> +					"Failed to inform PCU about display config (err %d)\n",
> +					ret);
> +			return;
> +		}
> +	}
> +}
> +
>  /**
>   * intel_set_cdclk - Push the CDCLK configuration to the hardware
>   * @dev_priv: i915 device
> @@ -2287,6 +2315,61 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
>  	}
>  }
>  
> +/**
> + * intel_display_to_pcode_pre_notification: display to pcode notification
> + * before the enabling power wells.
> + * send notification with cdclk, number of pipes, voltage_level.
> + * @state: intel atomic state
> + */
> +void intel_display_to_pcode_pre_notification(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> +	const struct intel_cdclk_state *old_cdclk_state =
> +		intel_atomic_get_old_cdclk_state(state);
> +	const struct intel_cdclk_state *new_cdclk_state =
> +		intel_atomic_get_new_cdclk_state(state);
> +	if (!intel_cdclk_changed(&old_cdclk_state->actual,
> +				&new_cdclk_state->actual) &&
> +				(new_cdclk_state->active_pipes ==
> +				old_cdclk_state->active_pipes))
> +		return;
> +	if (old_cdclk_state->actual.cdclk <= new_cdclk_state->actual.cdclk) {
> +		intel_display_to_pcode(dev_priv, new_cdclk_state->actual.cdclk,
> +					new_cdclk_state->actual.voltage_level,
> +					new_cdclk_state->active_pipes);
> +		return;
> +	}
> +	if (old_cdclk_state->actual.cdclk >= new_cdclk_state->actual.cdclk) {
> +		intel_display_to_pcode(dev_priv, old_cdclk_state->actual.cdclk,
> +					old_cdclk_state->actual.voltage_level,
> +					old_cdclk_state->active_pipes);
> +		return;
> +	}
> +	if (old_cdclk_state->active_pipes != new_cdclk_state->active_pipes) {
> +		intel_display_to_pcode(dev_priv, new_cdclk_state->actual.cdclk,
> +					new_cdclk_state->actual.voltage_level,
> +					new_cdclk_state->active_pipes);
> +		return;
> +	}
> +	intel_display_to_pcode(dev_priv, DISPLAY_TO_PCODE_CDCLK_MAX,
> +				new_cdclk_state->actual.voltage_level,
> +				new_cdclk_state->active_pipes);
> +}
> +
> +/*intel_display_to_pcode_post_notification: after frequency change sending
> + * voltage_level, active pipes, current CDCLK frequency.
> + * @state: intel atomic state
> + */
> +void intel_display_to_pcode_post_notification(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> +	const struct intel_cdclk_state *new_cdclk_state =
> +		intel_atomic_get_new_cdclk_state(state);
> +		intel_display_to_pcode(dev_priv, new_cdclk_state->actual.cdclk,
> +					new_cdclk_state->actual.voltage_level,
> +					new_cdclk_state->active_pipes);
> +}
> +
>  /**
>   * intel_set_cdclk_pre_plane_update - Push the CDCLK state to the hardware
>   * @state: intel atomic state
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
> index 51e2f6a11ce4..95d9d39d63be 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> @@ -64,6 +64,8 @@ bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
>  			       const struct intel_cdclk_config *b);
>  void intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state);
>  void intel_set_cdclk_post_plane_update(struct intel_atomic_state *state);
> +void intel_display_to_pcode_pre_notification(struct intel_atomic_state *state);
> +void intel_display_to_pcode_post_notification(struct intel_atomic_state *state);
>  void intel_cdclk_dump_config(struct drm_i915_private *i915,
>  			     const struct intel_cdclk_config *cdclk_config,
>  			     const char *context);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 166662ade593..af0f0840e4b8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7462,6 +7462,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  
>  	intel_atomic_prepare_plane_clear_colors(state);
>  
> +	if (IS_DG2(dev_priv))
> +		intel_display_to_pcode_pre_notification(state);
> +
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  					    new_crtc_state, i) {
>  		if (intel_crtc_needs_modeset(new_crtc_state) ||
> @@ -7483,6 +7486,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  		intel_modeset_verify_disabled(dev_priv, state);
>  	}
>  
> +	if (IS_DG2(dev_priv))
> +		intel_display_to_pcode_post_notification(state);
> +
>  	intel_sagv_pre_plane_update(state);
>  
>  	/* Complete the events for pipes that have now been disabled */
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 596efc940ee7..b90c31862083 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6498,6 +6498,10 @@
>  #define     ICL_PCODE_MEM_SS_READ_GLOBAL_INFO	(0x0 << 8)
>  #define     ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point)	(((point) << 16) | (0x1 << 8))
>  #define     ADL_PCODE_MEM_SS_READ_PSF_GV_INFO	((0) | (0x2 << 8))
> +#define   DISPLAY_TO_PCODE_CDCLK_MAX		0x28D
> +#define   DISPLAY_TO_PCODE_MASK(cdclk, num_pipes, voltage_level) \
> +		((1 << 31) | (num_pipes << 28) | \
> +		(cdclk << 16) | (1 << 27) | voltage_level)
>  #define   ICL_PCODE_SAGV_DE_MEM_SS_CONFIG	0xe
>  #define     ICL_PCODE_REP_QGV_MASK		REG_GENMASK(1, 0)
>  #define     ICL_PCODE_REP_QGV_SAFE		REG_FIELD_PREP(ICL_PCODE_REP_QGV_MASK, 0)
> -- 
> 2.37.3
> 
