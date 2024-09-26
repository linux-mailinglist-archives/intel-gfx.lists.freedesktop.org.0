Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B240D987A2A
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 22:46:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E90C10E130;
	Thu, 26 Sep 2024 20:46:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Av1K6HIe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8092110E130;
 Thu, 26 Sep 2024 20:46:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727383589; x=1758919589;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=CfYvq9kDmThEkWvGkt6OCDbpJj7a9Fk/bK1A6HPyc78=;
 b=Av1K6HIenp4h9oib7cufLrTduuflJvtH+R7o6lPGzB+mfZxCrYXoUHhq
 0G5dsPcrZuG1Oc1Acafc3CHea+N2q0JBuWemBMMtnQWnowpZTHXmTvSlh
 FxgqB8xnWTak2WYQwVgXngpPgmIP5kXtQrACseHfq5LINzVfFeCX2V//8
 zOBoEKZ1/gVmtAOoIcGz4c90Xrg9/srZkid+Q7KZHiBGAMSgrzuRIur0f
 4uPdhVv3cbR/vHS+YgqLoxIuCpFDXxdresfd2izkpvYf8GQPXeqC33BnN
 PCPHNrCThCq19q59sVF7g9ACWe2jikVBxsAN/lLMdTISrOLN3nlOIOR1z A==;
X-CSE-ConnectionGUID: TUhwt+vZRZ+dmCNMLExKKw==
X-CSE-MsgGUID: zRsNsmf4R96jsbdiVJDMFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="26678923"
X-IronPort-AV: E=Sophos;i="6.11,156,1725346800"; d="scan'208";a="26678923"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 13:46:28 -0700
X-CSE-ConnectionGUID: 9GYi+e80R+GF0O21zbgvqQ==
X-CSE-MsgGUID: BBoawS2VSeOe5nG5rh6rNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,156,1725346800"; d="scan'208";a="73083787"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2024 13:46:28 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 13:46:27 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 13:46:26 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 26 Sep 2024 13:46:26 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 26 Sep 2024 13:46:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oT/1cmTwp1pwKdJvIC/TlxBWON7zEefyCveJ2Wpe1K678ry8tbMnltP1qh1FLSt5XnE0dJcWtwMXWFoPAFMzV2WwPjVQw7nNsEBr9k9B0ZyWX0SrRFNUE33fcQ90fAOtNlRpYnQuVxIgGZ2lRsH7GFsfnX7IW9UUyvE0rqWfqkhcZtUGuw+W2Xt9qjSCB5E5lWNJDKsY0MWHvXW1kAe2H/aAxyOP6AwugYSKBVIdhNekS1d+h/J+u5RH6MGPw5wXgb/HClPtPNquDEp/KRsihrXv3BR0P3TS5gr5o+F13kPCt+CkYuN0Ep313/Cucv4wfVwSK5lu4nXt8DGbGFzbCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F8jolUMYPVhaUN89CmAbj2S9va8KluuWVjsS6kUNpbQ=;
 b=j+t4KYZoGaqquAQpi9eM7cu/sXopsvybnN7wLBXSUgKpKsxYZfYLhSHOqgKVyXMdS4C//TTpOCPsddhKjNTmv4hL0ntFCDM53AOgtekBq+oPmY4RfygaSP/gZhYhr7OQAFhBCBCDOQOUpnUzWuGNTlm/5Kf7bomj5PWp4ttXoEd67PJz5+XF9lTRNYYDc82DCfzJJsk6uazxGWQAaqeExHLw62MnMwMAf5CHFvINMJf/IuO0cTQ8gRo6XH/UuvzyuZMZh0WgZSoC0e5Y9+7clFWxsiSV5pu9Y5y73q7NvJ61IMx4HYA+xv4HPHeyazK2YnNYJ45jQWP/zxOQz/fsUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SA3PR11MB8002.namprd11.prod.outlook.com (2603:10b6:806:2f6::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Thu, 26 Sep
 2024 20:46:22 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Thu, 26 Sep 2024
 20:46:22 +0000
Date: Thu, 26 Sep 2024 16:46:18 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 kernel test robot <lkp@intel.com>
Subject: Re: [PATCH v2 3/6] drm/i915/display: return 0 instead of false for
 disabled power wakeref
Message-ID: <ZvXIGqqQQSV4aTCk@intel.com>
References: <cover.1726680898.git.jani.nikula@intel.com>
 <263b062a37e7b9c345b5d3335282558ac38c5b73.1726680898.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <263b062a37e7b9c345b5d3335282558ac38c5b73.1726680898.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0357.namprd03.prod.outlook.com
 (2603:10b6:303:dc::32) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SA3PR11MB8002:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a768e74-ea73-42e5-e2a1-08dcde6c4783
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?gP1b8RPCX/O9ffizPHkaeuuQ0B6tkeGd4cUQfSwRahBNKVYhT8gjASAJJInE?=
 =?us-ascii?Q?LRlxUp2wMbdAOrsDcnWci6Vbx9DKXRef/BioloweM8yALDwjr8tA8IbLpNoq?=
 =?us-ascii?Q?UQ04paM28Ljv09CFVqfoAIENnehuDaAKjFTSiWqJcJYXCJelEi1gOCBaSnoQ?=
 =?us-ascii?Q?v3Phw03A9ntjBck6binko4jyB1syteuo3OtH1YGCHKCg2RRFJ/c2AWFjjjZ0?=
 =?us-ascii?Q?N5PP8eWF/5XyO45N8eukyQ/rOfan8WAbTCC+gqpL2qz/LLZ8Y+xvqUT5fDUu?=
 =?us-ascii?Q?5oVOlD7pDb2a5gUR/M3pIjVcvnapoOCUEs74n9hL0d3oKOO6jN5mKNKfso1F?=
 =?us-ascii?Q?CKquopiJF0UtgiaNgX/z8AiqEvvP/6+UeBgIML1uxQW2od5WgKLaIpnDPxiA?=
 =?us-ascii?Q?W40GT/NCeSVw+TWhCqXWZB+nV0dyYn12CEBAnxw9eaDAExdYVnwdQQnjarU3?=
 =?us-ascii?Q?q9nOCC7e8XXv2tZl0ItXWJqGOrep7ysu1hELnXW+MELABsdQ2CxBCj2pD9u9?=
 =?us-ascii?Q?TIqcOK4+lbOUk4sR65L08sIo93cqAOYtW/A2xPg9dxZ9nfda9J/7lMqmtPZu?=
 =?us-ascii?Q?oOlDhJUWRIq/Wz0LKg6AJcx3lmPEUNUUUGPbSevYvqVMFvE3TlIkIMOrfOuV?=
 =?us-ascii?Q?PJinHXuW0WzDGtCF9C1LgNfwm6hT31j015ZALh5pKLrijAbWkXZfqinhmvOt?=
 =?us-ascii?Q?hA1uwOxjiwO+ussZM74nZVKWii0qc4bOAibfwVY0PqFAYCAfQowR9lkYxt4S?=
 =?us-ascii?Q?Y6oVjSZMDFOuIN057ige1ZBBb04+vc0TYMsQzd9itwrO8wCvIC1f6K6tAZUF?=
 =?us-ascii?Q?VctBkGHqs4MWsKmOxTBJtGAt9IJNqhz0ZalPNqQB4pvu5Ve3TTHcXkfSZW/R?=
 =?us-ascii?Q?nCcWnPwlbKflGxHF8qc3+0rZd2qBksbrgOl2N/OKfkLw88FXYd+dDCuujgik?=
 =?us-ascii?Q?UgCcpIaG1hc/MVC4nmWxJWxf6hIC3vBumb7nf2gu4IjuDC2L25KiOrhKtQ9b?=
 =?us-ascii?Q?ycHGK1RbjJ+lMSjPgNgFaCQbKT3f8YHr2Nvmzq/Rg7MWs78yDq1i/qDIUvmq?=
 =?us-ascii?Q?65hk3o0O3HqqAQMq29UOStZxWv09wkuG60SiCprSnaYif5cfGe/SvrF2KdHs?=
 =?us-ascii?Q?/oU7DtMHWuwYd2yMj8hLtl8R2pUd7gH/9lI8/dJZ3FM3yYDlzwkJzFdW/NXo?=
 =?us-ascii?Q?noHmGUl0DRelh4P/BxAJOUfcfVV/n/Yo2BonmQFaxGYs98jsGSa1PubeIgfn?=
 =?us-ascii?Q?bEPjfL8eJ82stFY7S/ijP32fV9xbSpBD0xH1wfY+mw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4AbLg98nr5dcpvPeaCLXS8vAnCKQoJuelxyhSrGz4RP1+zM+7egh/Dz7/a77?=
 =?us-ascii?Q?hjlcvGha2SCXd65TGTTTNk379YrjLTidKmLRXDw41ONd3KFmtcu3vCQo5JwE?=
 =?us-ascii?Q?dij7T59fP5Y5IKV+TOp3S1XraNmDnT7X3V5Xvt0Uojn42iBMcepAtw1QiQzv?=
 =?us-ascii?Q?OqsOkl4NyVFHhyq3aADizjajh34dLyQVVlpjzIu0E0aBuur6vNQtfW0WmgFA?=
 =?us-ascii?Q?QdtY3U2x3jVI203IhGgJwa4YJJ6gJeO5p4XfGwSNLT2yE03mDCEhcjAoM6wl?=
 =?us-ascii?Q?ZZx07ASjLn8Onr56p05H3GxKUWN4WMXPogIpG2f+KnpVxwgGZ0HzdyI/WAV+?=
 =?us-ascii?Q?N5ase9zmIij5KkaLXjdvn2lFgVcSONIH6HD4Zo+lzmdwy1m0JfE+KWbdtaQE?=
 =?us-ascii?Q?uYb6UI6YWI4CZa636BgLgESrQC82hTo5I4X/ay5RKZ4BeuA344MugFiiYYN7?=
 =?us-ascii?Q?S489EZ3uYUb1oySS1AUUfO1798XG8TuVtOig7Ednz3ViHVi3X9jIpwVwQwX0?=
 =?us-ascii?Q?ZhhtZKCnRm5hxH+rrDSsJRo564fqlEa8fme7tnienzl8fp59zY++HL2wXEO0?=
 =?us-ascii?Q?Mz0IMPYDfJzpSE4kFQ2SNvzKzxWpVqD/ByhtgVhw2VuvHwNa8zjTtndOUdL7?=
 =?us-ascii?Q?2cz8/yxG7Qj1fvWStiw/rM5AMfqg6utOP4DwPxpWZImbAqpamWCt8fhkrHfN?=
 =?us-ascii?Q?2sGbQgh2DqRfsDcU6imcvMgdcdMc/7SX3IpQREoMQzRqYcpWP0dhCmiO3njn?=
 =?us-ascii?Q?lFN6pYRJdmTPEjo27kh7huynKKsE/+mi4gLa+Fnr5G7dzVb1Z+9htYIkOcF6?=
 =?us-ascii?Q?c6YajGImdqYKNbpGOSyE3pBHNz0Ygddu4/DU1cvjeahEoEqOCemXd+8zsR3b?=
 =?us-ascii?Q?os+NVdY9nTxlkJO2PwXuuJ15jTqvdhpSieU3RUnKdrMepGjpdQENdtTOBe7w?=
 =?us-ascii?Q?ycQTeggt1vJtro3rcGkFGrz7jW6wE4jVWY0ASd9kW6KaaNAEbP//djnqV+B+?=
 =?us-ascii?Q?3/YPOX3+YDQJu9bm8B/nCFTP4zX05IZBKAawua997EzqKL7se222fwUUsj3L?=
 =?us-ascii?Q?sRzvrjTE/X8ag+iFb2aLhLv91oxTKSAoh2ki+x3pET4FxTUb6A+H2InEwzzT?=
 =?us-ascii?Q?qy+AOFNUoXeY+hZdDot7EvO+ifHk0S51GBgwMqKC5MSJSAmwuMf58S4YyjGi?=
 =?us-ascii?Q?hGYW090L+dsE2vf3Q0HYAWDHBPe1sE+9tviMGl2cOxRTMl0A7z/c1UnOYD74?=
 =?us-ascii?Q?OpLD8HGEqEB6Q6T1ILa3+hmVyiepb3G8rok25n3URteKCd1z6gIOW4HkZ7FT?=
 =?us-ascii?Q?+qTfylvHSxiRd9QyGLxnRnLfMSDs/1aiXAqcRcVZYUjrGPeVVnw4GxAF1FQh?=
 =?us-ascii?Q?e2A7MzWuofjL225Sy3VG9GB9IuBYRGeDFyzi79q8/6mJhy3AjbjtlLlbX/Do?=
 =?us-ascii?Q?RJ4deVsQtnMdJyy6Vc6Vm+Pj4ULrYfIDQOrhTl8wx48PveXR+0tlKoWTwQrH?=
 =?us-ascii?Q?jJTcSiCMZIoR3UVK6FRHYV5yK5Zi/CFKHLT3gzfmZvMYh5GMOKTR4CRqFYXI?=
 =?us-ascii?Q?HXoAfQ6NTG8f0c/prb73kec1TzHQIYcFAa4PCWKTZn3ymmxmav/APjyzCFok?=
 =?us-ascii?Q?jA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a768e74-ea73-42e5-e2a1-08dcde6c4783
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2024 20:46:21.9898 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sfak7smov2Bc/bnSeunkqfIsDQO4NVej81qmHr9gOctKx09vk92sZaIhn5R5ptgI+2BMKSKymzEtfKMD3aDDGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8002
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

On Wed, Sep 18, 2024 at 08:35:45PM +0300, Jani Nikula wrote:
> We can use 0 for intel_wakeref_t, but not false. Fix it.
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202409190032.ZCHBxK9e-lkp@intel.com/

my bad, sorry!

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 40727a22f18b..7b16ba1a8226 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -545,7 +545,7 @@ intel_display_power_get_if_enabled(struct drm_i915_private *dev_priv,
>  
>  	wakeref = intel_runtime_pm_get_if_in_use(&dev_priv->runtime_pm);
>  	if (!wakeref)
> -		return false;
> +		return 0;
>  
>  	mutex_lock(&power_domains->lock);
>  
> -- 
> 2.39.2
> 
