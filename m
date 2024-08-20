Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3558B9590A6
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 00:48:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2675210E537;
	Tue, 20 Aug 2024 22:48:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V8KkgJCk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CA8610E533;
 Tue, 20 Aug 2024 22:48:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724194101; x=1755730101;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=UaVfPEhJyjnhUqggAfg8lP736BLp9zsJRpZc2R3lM48=;
 b=V8KkgJCkbeDil06fzvrefFuuVf80a8UlqOrZN2iPmFBkwSiZdrRgd7II
 dYOQpG5H5EzmuzAsE5lpLXoZOY9q7+WF9wReOrtVGy7Fb+KO2rFUV0VS4
 sDdaAmMJNb7qtVbDHGDGioqKOZ2R00KmYjO6W9xtEkl2jMyIEttz1SPs2
 dPB5lk7eSKA/x88wGel3lljNTZo6YtBlmN8EuL3lUrgfzsqgNBzN6SgHz
 BS7Oa0U96sjFvr8FGtqrWrS3wh2e4k2tMPXpoq9a1/pb6k3XX73ORdpn0
 438ZoUJUBaVLy4Lx8e5lm0BaqKntIx76bXz97v2WhAb1cTEHAa+H5PmqJ A==;
X-CSE-ConnectionGUID: FkKlsY3sSAiVsD7hqZeKsg==
X-CSE-MsgGUID: lzl4E8tvTba8aOG2nmWlXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="26395717"
X-IronPort-AV: E=Sophos;i="6.10,163,1719903600"; d="scan'208";a="26395717"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 15:48:21 -0700
X-CSE-ConnectionGUID: SAWPk0dlQeqjEnfFhkftpA==
X-CSE-MsgGUID: GfkQlSH8SP2rDiSJJH5nnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,163,1719903600"; d="scan'208";a="60738157"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Aug 2024 15:48:20 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 20 Aug 2024 15:48:19 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 20 Aug 2024 15:48:19 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 20 Aug 2024 15:48:19 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 20 Aug 2024 15:48:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hnqacANdA5cTGgV1ALoYx36jRStQatuaYxQEI6rqEj8nLu7UhKhx9XFtG9N39DuLxJY9Z0PSJk4aPe6YJXmTGvMFD/yPAS42gzS+QqnxMVGlV1XstAVyyRpVYxTKplnZpG/pPkoyVEtOd15jVvCbH9SkeXdthywCX2OCoGZYB4+5IE9y2nKdepW84DNTezXrxUm5IYvL4Uy8GuR2W5JCgqJTwhoteV55HpbKNIbjwgN3oJZIIWym5hvRNy9IEunkNK6KKeB1lKyLkh1dW+ngXUlabTIPwhXoENylDf2H9N7WqLsI5NiXYRvZq5M2Ai0gdHDeppCJs01PyISKyTXI/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xuODtmRnL6RyUoar0B6tJSorU53INlzB8YgGBAjS+7c=;
 b=Vz9idqVZLLY9FKecUoTTx1EY1B37zk0o/W8/WtGiMvojeeKgLsa1EZlGlrSvLIDXEhTushvMHMW9DZjesbAwcwgyVOOpGT4LzdOYbyD4rFogrIdU+aTC95cRsyQ9QLOQWm0oqWXIEMHVn6zwhP1+c5xN7JRvUMzfhIewbmMZ9NAWUmLysEGgjh9uiFxdcIPTqCKgX3muABv8GavU3mIM0Q4o30gIom5sXL1669cmjs0jwvFnOWM509T2tR5V8nNVkbVwJX581hpkK3SeyjacZm4d5d93IwEBwTTBlBM8mLxmDhuChEsT8uFWveG4/V9+k2MJcL+vGvpOq02nSOvREg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by IA1PR11MB7821.namprd11.prod.outlook.com (2603:10b6:208:3f0::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.25; Tue, 20 Aug
 2024 22:48:17 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.7875.019; Tue, 20 Aug 2024
 22:48:17 +0000
Date: Tue, 20 Aug 2024 15:48:14 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 04/10] drm/xe/step: define more steppings E-J
Message-ID: <20240820224814.GP5091@mdroper-desk1.amr.corp.intel.com>
References: <cover.1724180287.git.jani.nikula@intel.com>
 <88074394509d4849f8ec6ab5776394b961032cd0.1724180287.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <88074394509d4849f8ec6ab5776394b961032cd0.1724180287.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR03CA0015.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::25) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|IA1PR11MB7821:EE_
X-MS-Office365-Filtering-Correlation-Id: 5c7766f9-b29c-4f51-f5aa-08dcc16a2e7a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?sMNOn+tghMujwQuNYvvm4ESP310IF9k6BMb3ukFo7mGyGzj3tbIssUisMwhY?=
 =?us-ascii?Q?zpXGWU9dolTYfbixAmp92F6JWXaAcNTvdiI3NwWwLFJyPMQIu4dEAmLIv75K?=
 =?us-ascii?Q?anwAGhLuK9YEEJgpmt1ItSRdid/B9yJMMHSFoQ12puSse+XluYNNeAElGaNy?=
 =?us-ascii?Q?tYwHogSH0PMIl2PXFbou++1nJUUPgbEVoWcfo02G9L3ENVNTIxR46/7OfPEu?=
 =?us-ascii?Q?2q74G0YxsaLm7RBtow6+G2ZkCmGwK0kNkxVFIAnvTRFPSilwGPluEwoSOZuI?=
 =?us-ascii?Q?2i9Y9Eij6eo0KnezN73dYNgiXy2pCgCJe73oPN3ZbG4YP7Hc2cBJxZypky9j?=
 =?us-ascii?Q?6okXmHjaCingkXUJqPUImtzRabKehVKMuZfhVcePO39aYqASGPN9UiFbidJq?=
 =?us-ascii?Q?PAonA668jIFzaQ+aeb/KsKcvKm9OePe79Q9a4nqlyQYyoetiYZ8Ez8RMItCm?=
 =?us-ascii?Q?8yOYmmykFlMUUW5ASrmbpW0dXKq3/SIU0xPs5eJgf5dqCiNtN/L1lKpYAzGS?=
 =?us-ascii?Q?8zs5kyTJQUEcDccLmoV6Umm2Okm+LE3hpxQq2ThIb4iaGvyzxYforz++qEML?=
 =?us-ascii?Q?OgO2PXicFk+ZRJRMKKVFrZ6Iee4ejaAzoFCXxZB1OUKT3asKnmrL15PU7GXa?=
 =?us-ascii?Q?LI3c6cLd9QEk6gB/q3Vo/8LOSgXF+qvOZ1PjNses+B4HoMVdqG5alGJu07sM?=
 =?us-ascii?Q?WqckiPL4PhmE6bVEtvg4gQY5inyzTDOCeHEK4LoB3/kzs4aD638kQR+vTfd/?=
 =?us-ascii?Q?WNYz/K+MHEuUxU7nbkTtINf06Wyggw4y4df5hb7ky34ERnO9b7Ot2y6zsDNw?=
 =?us-ascii?Q?GWaWZcVx+aw/G1EjCmJ0n/SMsGn6u/ppPBnfGK5Y5pbJvEhlWMvj9gwTmtam?=
 =?us-ascii?Q?qZtgDF0G/7qcJaKyyywvuY61WXTJCFT3pbbAxJZKOSLcAyFB6i6YrmN1F1qX?=
 =?us-ascii?Q?XuL1ZLyU9BcBQjk/cftLt0A/0M68Xz3XVVgf12yYFrRu+/9p+w3Qnkxs7CWl?=
 =?us-ascii?Q?qrfO9tOenLO+/mUeoHhLLypmqhCpwzyR7Y+86qWom/MpPVfBmk9MBfQTF1GD?=
 =?us-ascii?Q?WvDLjfgBoRCZB5COus0R+vG7Ah7Uf7pI88t0Mpw2kQUvSrLAif9C94fDPOvs?=
 =?us-ascii?Q?9KyNNObHIeuA9N49oTCA7RxX7UugOCrZ06qca+FPjj/kluDnQtqIfTy5VXe2?=
 =?us-ascii?Q?4vWP2QSP+1aFyNdzqadPbIM3aDtjBBMDMvEFMOLoRXmUoy591EgwiLlDYwPk?=
 =?us-ascii?Q?1RKLor7OrnVSOEsrFjd2JUSHd0LnBe26tN1/PMiUqQ0dH6acwK+D0fFsCmG7?=
 =?us-ascii?Q?aK52VIvQ6hr6iodT5r3cBwyYPRvTqu3t5exwuPohFj1CPA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?m212F/M0K65I4nyGLc85gbKP5YuFNsnyBy4e+nVdpmnuQRwF+/T2M+82Y71K?=
 =?us-ascii?Q?Vm+fUDvuxjau4nI8TKcWJuKHK3IXTKQteI36USjOJhsSm/jF66YUkcczMPYt?=
 =?us-ascii?Q?Rafm9C6G1WJlrvapeqgwaYTx3iYRBq7e2mg6Yo+obsBWSugOTkjoYaXfBF1N?=
 =?us-ascii?Q?bk6X6gU6kf7EBR0QRPUuppihBsMfGgBNwP10nIfCCQWxAz4TPLNLnJNSImIU?=
 =?us-ascii?Q?6Sct3zHIwTE0wrsr6gPxIQxbVDXuQu09rQOT1YgNPcVAUc3/n6EuUhT5qq5O?=
 =?us-ascii?Q?RPzCXTTFFNVWz9nY/AIpS/u+DkDQnLMCaDseB5HzlrB2elCfIUGggxzM8mtj?=
 =?us-ascii?Q?NBUKsUZ6bCll0aQr2RuDr2JxIocAX3FZrXi6R3Z7WOMVtOO6ymf9lLYBds5s?=
 =?us-ascii?Q?ugEYk/EboSpRlCfpKzREH/WxOZdiiE0GkZ/F94RvNG5w3mT9g0QSiRElwqA/?=
 =?us-ascii?Q?Yhvb9yqZirJel5WR24aP6n//uDLStbESMwo/U7M8GArnvnEJfGE8sH39Ijg+?=
 =?us-ascii?Q?3YB21sYnkQSNZFL8RABlA1PcYafHQcg1oPXtM5/sJos+YGOS92olI+SKfZH7?=
 =?us-ascii?Q?ktZvV161Oc/QnRbcPLmzyK13ZtH1WrOIW0an72uzFVl8tdfiuL6KpNgGszZT?=
 =?us-ascii?Q?pzbDY7FXGtZ4AG320zAS0o++id7ZCA9S0x33gODZL3hqndG3s5NoGhFBB1Pv?=
 =?us-ascii?Q?pP6XszlruyRyU0eZBO8zIaCNmjFgk1dBz0X9a1mLYLE6Ljfl7oWlJ62Z5epe?=
 =?us-ascii?Q?S2bdH1m95gnTxpjNSKbwHBjbyg5dXvLnOiebETspMGbfyGGGdUk+/8BTcbAu?=
 =?us-ascii?Q?uLhrs2huYFXTTpb6sIz/fOIZ2boFFaHo/6vp2Yd46sinSs6W9Wyo4txoFl2+?=
 =?us-ascii?Q?JCPIK+i/z6Cm1TLP4KoZyXqqGdnOmx5tnyRa2Wim9b3kfxG2Xvv65eU9iITa?=
 =?us-ascii?Q?aid6TOmLaEldPmbaYHIBw9sUtHf3yG1w9yYAWZyjJhyge6ZpQBxUNd1fuoFi?=
 =?us-ascii?Q?2ymqAPPGFmIierf2CxWjIXkj+uzuBZxRyM8o7PruHB/BuXn0KD5f6ejKD2T0?=
 =?us-ascii?Q?skGgBMFEhYqDduel4vHEs4us3d3dyheuat95aFL/OkwgjtOBS7+Ea6jRUbxD?=
 =?us-ascii?Q?h5n2PMGl9zo/+i08CsFdcfA8LwcAAHjYUMUbzvDMaEZsEqwR69xwCHN4CePK?=
 =?us-ascii?Q?XZM1raPsuXKZgdYAyjeumzvQAZYU1JbtyAZrq+xgL6Q1k6RWsLUg6tRLih8p?=
 =?us-ascii?Q?wdmLU0lMKSnP+4VBPoJXV0OLD9lq58M8zVQtu6vLcSO5rh5UL40UN+fUUvvH?=
 =?us-ascii?Q?mwxDu3VAVglEi2qRzEmiBdXtYxvLn+0rUiCQ3rglirWCNw91WI0arWkFXsym?=
 =?us-ascii?Q?ogDLWvyHA9WYsoFERe5mZSSqLeaXwVww7KTZ6vQUwiWj+48vtzj6wdZm0kgH?=
 =?us-ascii?Q?S91wVxJrz2e0DMluTRSOAnoGzpMDNgmwhuhtdDctkY9TeyCXBQdeHwi7cx5u?=
 =?us-ascii?Q?/7y1wNb3n1rBBmTq3dwx9f6ZbIwA0/fgJhgXim1THyiWsIHS86rEt5s7CNNR?=
 =?us-ascii?Q?PMYX1Br1tYeGsIGy3EJKUwKjfWM4Df4mbM4foC9ACs7b02doC1mEn7Y5QKmR?=
 =?us-ascii?Q?AA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c7766f9-b29c-4f51-f5aa-08dcc16a2e7a
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2024 22:48:17.1861 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s5X91Xp72i1qx/mWd3XQoCFLnGYb33ekqZ+V6c5rPYEVJM84jEiTC12lPwv4g6Ib7QipIWj1mLSAi1c2ZZkE3SZuJZH2MgZRyjifAfb6M+Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7821
X-OriginatorOrg: intel.com
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

On Tue, Aug 20, 2024 at 10:00:37PM +0300, Jani Nikula wrote:
> These are primarily needed for compat reasons with display code in
> upcoming changes. There's no harm in having them.
> 
> While at it, add a comment about the requirement to match against GMD ID
> value spacing.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/xe/xe_step_types.h | 29 ++++++++++++++++++++++++++++-
>  1 file changed, 28 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_step_types.h b/drivers/gpu/drm/xe/xe_step_types.h
> index ccc9b4795e95..95b38d2d6c50 100644
> --- a/drivers/gpu/drm/xe/xe_step_types.h
> +++ b/drivers/gpu/drm/xe/xe_step_types.h
> @@ -17,6 +17,10 @@ struct xe_step_info {
>  
>  #define STEP_ENUM_VAL(name)  STEP_##name,
>  
> +/*
> + * Always define four minor steppings 0-3 for each stepping to match GMD ID
> + * spacing of values. See xe_step_gmdid_get().
> + */
>  #define STEP_NAME_LIST(func)		\
>  	func(A0)			\
>  	func(A1)			\
> @@ -34,7 +38,30 @@ struct xe_step_info {
>  	func(D1)			\
>  	func(D2)			\
>  	func(D3)			\
> -	func(E0)
> +	func(E0)			\
> +	func(E1)			\
> +	func(E2)			\
> +	func(E3)			\
> +	func(F0)			\
> +	func(F1)			\
> +	func(F2)			\
> +	func(F3)			\
> +	func(G0)			\
> +	func(G1)			\
> +	func(G2)			\
> +	func(G3)			\
> +	func(H0)			\
> +	func(H1)			\
> +	func(H2)			\
> +	func(H3)			\
> +	func(I0)			\
> +	func(I1)			\
> +	func(I2)			\
> +	func(I3)			\
> +	func(J0)			\
> +	func(J1)			\
> +	func(J2)			\
> +	func(J3)
>  
>  /*
>   * Symbolic steppings that do not match the hardware. These are valid both as gt
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
