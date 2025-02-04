Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7F6A27F17
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 23:59:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FAEA10E703;
	Tue,  4 Feb 2025 22:59:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bAsbIPmh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A83C010E703;
 Tue,  4 Feb 2025 22:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738709942; x=1770245942;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=6NvbCCrJCpbdApi597UvTpH3wbVQzvEz5Smlqcy9p9o=;
 b=bAsbIPmhdkEWEVowQKtH8hKR0TpoVXXDvFXiL3CDqjAVvquvKZpxbJte
 QDgLwxxQ+hokjhNt4UBWlWQfm6pDNEdZKFqysO7r6kY/3VPk6rbiSjdvj
 3/igqR/Znx0E4zv32Dw3WiNa4/AzsPfpR43uD1qaw4BN0y/gb9kjwD/yQ
 WMNFWKiSiGV5Slp0KjXKxrQqFbggdDxxYgLpBPr7a71K8L7f4iAiFcdLY
 BXDsJR2qYkZTXs5RCNGzVVED42xfyTP/af5oamEjOoV8AbPb1YvQZfbd/
 687HIKmlAu+DhsqYraVRJ7jT7w5HDh2hGsOmP026K6F3XS149IMcrckRF Q==;
X-CSE-ConnectionGUID: fEh7rKPrTqaspRcKCQ/TUg==
X-CSE-MsgGUID: lSBBpRcmQQCYz93jBA8r2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="26860814"
X-IronPort-AV: E=Sophos;i="6.13,259,1732608000"; d="scan'208";a="26860814"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 14:58:44 -0800
X-CSE-ConnectionGUID: rqKOtv1NQKqNrXsLTf956w==
X-CSE-MsgGUID: muoLV6fuSgSUVaO3cfBi6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,259,1732608000"; d="scan'208";a="110509069"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Feb 2025 14:58:41 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 4 Feb 2025 14:58:41 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 4 Feb 2025 14:58:41 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Feb 2025 14:58:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S7b3TrapCwgZjgh02xBSz9ljLO9arLZ+NQcF73kO4vyeuDEcJd0uyti2+RVJ+g3/wW+IlfWFj1FzBowMLwagTOTo5Q4l+EFORcYvUvqHPQO3TXoMqRTqX9sM/NynrVJKKAjKimKoWfiLtNih356+gaYeJ6ZGz3+h8hUED9HOIwSrN/A4HaRNa9FitFtd6cXriyATUrJML9ITkTgVgJTb5zmS7I0nT+RbzxRF2X7bBY+YtzWT1kswSZ1uXrjd1x+9/WoXfg2J/YbINAyx+RGAAwKr8WcYg4irvNsNdL43Z7Z3CM79V4va633BhSlO9GaA70l1/jlA/kEQcc/7exW+pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kqs7L1iOz3XXH84kxHCXVVKYuAlYgZy043yq8VgN6r0=;
 b=OZneZH68WYD0zOUTJxxbIzZ6VLYuU6fGFuahu/E4ufEAZVELrzYulUvUw5HNn4/DXY2uIvCcMdvXbzl64ayam9ZVQEzvUxaOOaBogp0LA2rQtDlD90Rg84S1l0+AWALz8UiInnYD5R0q+8+ESxN7/ENCyjV7UtQLwGmLd56n5zqJL79IvjGRZdCOX/KRCDvoPrgxqye3ZJ+ni2gzYhFxK49VuDerS495kl9J4oCL9NDh4GK5X4Ce6jqCb3HXULNhZS/6+5D/RUBKoLjCzipmZmbrHOUb4BGvJphyTi+26m5ETX+8PboA+PaTKbkh8vkNcOcsMIhmnm5NHhFfeN44CQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by PH0PR11MB4870.namprd11.prod.outlook.com (2603:10b6:510:34::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.25; Tue, 4 Feb
 2025 22:58:38 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8398.025; Tue, 4 Feb 2025
 22:58:38 +0000
Date: Tue, 4 Feb 2025 17:58:34 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 4/6] drm/i915/lspcon: change signature of
 lspcon_wait_pcon_mode()
Message-ID: <Z6KbmjHjZkkRajai@intel.com>
References: <cover.1738677489.git.jani.nikula@intel.com>
 <84a00791d3d7ee4e34c1224ef7471918546635aa.1738677489.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <84a00791d3d7ee4e34c1224ef7471918546635aa.1738677489.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW2PR16CA0032.namprd16.prod.outlook.com (2603:10b6:907::45)
 To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|PH0PR11MB4870:EE_
X-MS-Office365-Filtering-Correlation-Id: 9057f264-a8e1-410d-afb3-08dd456f75ed
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?O/+6Nod0tOuc4KOiTRlzpdjVRwwzZI/6RnvRdAONWbHhp540SFRADjG0AjJO?=
 =?us-ascii?Q?0VkFvUjz179USCxvGsJ0/kRFPcnNUk37Xqm+k1YOeyBs9dfLCA3hD28TLlVs?=
 =?us-ascii?Q?HE8B7uNGDwdSR51WCzKMg766UOOW96IsjD3l7u0NLn1gNXyeIcdSfaBcfEjA?=
 =?us-ascii?Q?znfsbMQFpv4h71/v+LNRrVeQkotEO8MG1yg2K1gyMwJrimLkaC1uwhF9/BZr?=
 =?us-ascii?Q?/ihrV7SLYuWhJeJmtUmxS57LJ2b7AVwb+UP7dSlkub70FtNYY0rD3KZvTq3q?=
 =?us-ascii?Q?ZgyPBOuKs+Jwv+eQWs1oNnpMzoRfy8Tu+I2yqG1GLMpBeI83/JGBK2IV4uzw?=
 =?us-ascii?Q?TcmgHlBfW/RsewNToZs9PLeaNNZ7IrS9mjtSfiDXGm/Py0hDgGJ/wqylh2Et?=
 =?us-ascii?Q?VvdbvPaXSdT5TKqWyRilfZ6jg6zl7M8Gszu2z7vvjZYq/g0MFVeNQEbxXHJN?=
 =?us-ascii?Q?38xp3t67mZvBWrKutKmyKtfwOiSQJ32TQFgTOx+SaZBnTbdbycRlGdwjIOFd?=
 =?us-ascii?Q?KeFEMaOYg7kYcjQKC2JuSgxPvH/bVzrS1DVsoFr4vUpz0Xaz8Z4Hy/UgH04F?=
 =?us-ascii?Q?9IkAbLpRUMHIn+gJrnD8SKnGhkmOK+fYT98V1GP5Zbc5QyI9bWDzjF2383Do?=
 =?us-ascii?Q?9x1ZRmZOc73/JAQiqAxU2wxsFt2pjYdSA5F658Bb9oqy7UEGlRcQfzViQo3a?=
 =?us-ascii?Q?e5C68kROmaranqcq41nUSYJ5teaqjrdNXIIhbCCNu8cO1XeJ8aBmQ9FfwzkO?=
 =?us-ascii?Q?h0OL8di5It1QOTYJkyPTDGNoMaPypRrJmSn8L3PkhMFS+41LBnmwYS+JPru6?=
 =?us-ascii?Q?Zp0TUzqNT1pur/1i/4Ob+LUVUG992cXLV0vNxRUbSEI8glrgNBHlE4ML+Rzr?=
 =?us-ascii?Q?FoE4xa4FBtAbll5qXJX37XjW6/SVN0WQBs4AyW4VBlbk8+VIBRBZpMcwz+Ne?=
 =?us-ascii?Q?oJ/+r77rS0cG+ZyQ+sDJj4oOyEUQlf8fdbGOWUjXcYvqCRKhOf7UycW8Zn/w?=
 =?us-ascii?Q?7XkzVR9d+CjBO6X3WULwqLcavdlQXN9bpw2luVfg1R0xsVBNlMHMxPfDv+Dg?=
 =?us-ascii?Q?BYFVDQXIGeHgydYTOIkNGpRMRoTP4MImTFsFiGUGU/I7kXrvTBcz08drVEGS?=
 =?us-ascii?Q?0OvuTZ/UyUAQBBiP72otyKveDIfZXf2jPojWy0nqvgjljLpJQZ2MPDaH8x2f?=
 =?us-ascii?Q?NZUy1nTufb/3cTpr2IcmTagrZ73Hlf5GWPeFOWo3vcO8+A3MLovTPYolUk+X?=
 =?us-ascii?Q?aBkPCkDjg5q6Ud3QBoipimhfcR6kIWchxbSCVAPotKsS4/88Ic5cFFzION37?=
 =?us-ascii?Q?10vSZlPqTQXA61GLLirGhBkyCsf+jpplNli/NfRUXfxTigCAIV+O+yZ/ZDfg?=
 =?us-ascii?Q?rMadj4ol9q6A/8DBBm6KahbOe4WR?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Y9nVF+dPtnCVpiX9zyUHIxvFDcfUvDnKwf4yP/iQfgCmOBkCtof5B9E0NkGL?=
 =?us-ascii?Q?ybLcE6z+9Zdz/sWFeJBp5yeaOCsePfMtYEhPigGFgU6YN/UpCm8WPDLmj9f6?=
 =?us-ascii?Q?mbj3fmbPA4b39BRXdxkV07U8VlQfzVzUHDe+ONagHzM5cKLtzS0IFDs92SBK?=
 =?us-ascii?Q?ItF+fywAJRdlv5d1TH9RQw3HVgAfRXlLPaPYoQosJ+aZzeRe/FWZLaB9sQ1r?=
 =?us-ascii?Q?CCR0JGuo1sZrGQI+9a1Wfo+rsADtA29YHZd3KlNZfI0PB8B1DisQR3RwhMlZ?=
 =?us-ascii?Q?mMDCtMgcMTM/A9lAgxj0BuPtKYhXvBeGUugEG92PjjMp7ri7vORxDIzexPrZ?=
 =?us-ascii?Q?zn5bxWoKggbmosx6xU9ov4tu3VGXYjj9evVuSm1da7wNOKUyiVcx42gYCv1A?=
 =?us-ascii?Q?YBFO0k5Z/PQJp9jqRlqqvTn/1ht4+qJ8lfO3fQqEVMNyrY2eu32/iSohEW+G?=
 =?us-ascii?Q?oWzLLs/RxQOrb/3R50fFpRhOaXs/NTFeBJmO4GnjtN+teu9cV360zY4Vj7N6?=
 =?us-ascii?Q?1sP4eh8RL2uRZk1tItvVxDFuPk1NudjTdCvzlGI2VjLquzNhZRHxyYikc0OO?=
 =?us-ascii?Q?guAHxuYOcVLRywBhMzvUXKiPLeRE2U/xbfR8teXuSoLn2Mhf9I/d6bNY77/U?=
 =?us-ascii?Q?6OD6azGczFCsrBAJNrNdon/fB+yoS+yUSdsbjKXGTsg95+hTHsoRWLbdw4Iv?=
 =?us-ascii?Q?M54Hst2ItQAJ548ts3JsAsOqns/RpN8zBFj5hMyM15k4czdz4wO2ZEkxYE9o?=
 =?us-ascii?Q?vj2oMErN4SdSS66J9sS/rDEp4MfqOtbK5/h1Hoq3GOZV3LRVS/MdKZMDcYgJ?=
 =?us-ascii?Q?OR7FfuylgYTDLJz15pSbVPBuxhpDdE2Mn6JoeWynVJDNlLvtMRFQ/UlRXhcr?=
 =?us-ascii?Q?m5hojMpJyvyzyb59XuHSMb7gcLkDqko5jtrZinNfgPwh0axjVw8Tu5Cbrh0B?=
 =?us-ascii?Q?3oOY5capozXsXfkFhE0NJRBIZ5vyL2rryVBbM01llJXsTatGSyOeTHjGxSVN?=
 =?us-ascii?Q?toAcIJ1EbkX4JsyDvu3ZZF8NbeucX6fR8W7LXmvK2smfUHRkgYMoIUeXaq10?=
 =?us-ascii?Q?FVcBh44r2pzGz4kRD8kPgk7nMKpG77MCKmpuUIfpj09Q9yHp6Ov/Y17Zl24u?=
 =?us-ascii?Q?MLLfE6Q5TZ8MqTSHP+7Zu8ysRq0VN9eNlzMFP7jnfaW9xZk2nd8J7J43r02r?=
 =?us-ascii?Q?q2ZY+JGDYvHat06ALKUfAzVC7siK7N6yUfqmJ/qrPVNxACzqHIS24V6PxsWi?=
 =?us-ascii?Q?gDm94UE1vL1Dl9mU+mojDhVisewZiY7YJvUNmrmOREkxSe2Li0sdAqI5cacP?=
 =?us-ascii?Q?fOBZoVMdo1CV6MAj06SIRTLk1opJGao0zNsmuU3Z2yFIkTREw3JR2os5wzfR?=
 =?us-ascii?Q?vXgpia3Zt9CQ+F23+c39pZlKFoRje941ZXLajoyxqhNM1i55dfVsUzBrGGh/?=
 =?us-ascii?Q?bPbT9lAJ0d6Gbf3ZIqpixZCqzOnAz59xdymZSszLFrNOtM1I1DbnKDkE+dCV?=
 =?us-ascii?Q?VhI8S84bITfQca0pS5wR8cvwTawWQ6al1JOB4uq3/WCt48VngwgtcS1XmEat?=
 =?us-ascii?Q?0cVV8FI99uLsO5CzPMMZU5yLYhbJfyU+AYsUoSbu7Bq1kxjsoTsGy/1jf/1t?=
 =?us-ascii?Q?LA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9057f264-a8e1-410d-afb3-08dd456f75ed
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2025 22:58:38.0930 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZaO5GvoNQYgil/O3KeUZWYIilsZOq28flYVvw6lG0g38ALsbwPf6w0md5GiV5BaqOzxZ6OXKAkmSEY0YN649/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4870
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

On Tue, Feb 04, 2025 at 03:58:41PM +0200, Jani Nikula wrote:
> Switch from struct intel_lspcon to struct intel_digital_port to unify.

in the previous patch and in this one I'm asking myself if we
are not going to the opposite direction that we should...
and make the lspcon component to use lspcon structs as entry
but looking to the patch itself the code gets cleaner because
digport is an information that is broadly available. So, let's
continue:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 3 +--
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 4 +++-
>  drivers/gpu/drm/i915/display/intel_lspcon.h | 4 +---
>  3 files changed, 5 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 2db7741c25bd..14d81538c912 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3501,7 +3501,6 @@ void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode)
>  		ret = drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER, mode);
>  	} else {
>  		struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> -		struct intel_lspcon *lspcon = dp_to_lspcon(intel_dp);
>  
>  		lspcon_resume(dig_port);
>  
> @@ -3520,7 +3519,7 @@ void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode)
>  		}
>  
>  		if (ret == 1 && intel_lspcon_active(dig_port))
> -			lspcon_wait_pcon_mode(lspcon);
> +			lspcon_wait_pcon_mode(dig_port);
>  	}
>  
>  	if (ret != 1)
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
> index 2dd2b700b0f3..45b63fea3642 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -656,8 +656,10 @@ u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
>  	return val;
>  }
>  
> -void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon)
> +void lspcon_wait_pcon_mode(struct intel_digital_port *dig_port)
>  {
> +	struct intel_lspcon *lspcon = &dig_port->lspcon;
> +
>  	lspcon_wait_mode(lspcon, DRM_LSPCON_MODE_PCON);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/drm/i915/display/intel_lspcon.h
> index 18cc15e5221d..20581af1ddb2 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.h
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
> @@ -8,18 +8,16 @@
>  
>  #include <linux/types.h>
>  
> -struct drm_connector;
>  struct drm_connector_state;
>  struct intel_crtc_state;
>  struct intel_digital_port;
>  struct intel_encoder;
> -struct intel_lspcon;
>  
>  bool lspcon_init(struct intel_digital_port *dig_port);
>  bool intel_lspcon_active(struct intel_digital_port *dig_port);
>  bool lspcon_detect_hdr_capability(struct intel_digital_port *dig_port);
>  void lspcon_resume(struct intel_digital_port *dig_port);
> -void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon);
> +void lspcon_wait_pcon_mode(struct intel_digital_port *dig_port);
>  void lspcon_write_infoframe(struct intel_encoder *encoder,
>  			    const struct intel_crtc_state *crtc_state,
>  			    unsigned int type,
> -- 
> 2.39.5
> 
