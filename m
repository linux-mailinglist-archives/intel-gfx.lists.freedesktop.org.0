Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FD36A8898
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 19:38:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06DB710E542;
	Thu,  2 Mar 2023 18:38:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84AB210E542
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Mar 2023 18:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677782280; x=1709318280;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=JH8ghpvswIHZ3nL3ua82oDvoFvxzOIfLW2S6CzeBMNY=;
 b=jqY/n4MLxCOM3G+9nLjpo0dU80SGDCoFrR6qOrMrP/C3BMFnm/8ZDQ9w
 BDt9Fwa9BTJ4dAW9PBeKhlq3py/OMujM3wHzyHgZJ6E/WMOqb8UOg9nQr
 yR5Q8WbWuPhfWOV98OVrrKYBTHp/5U4Rm+/P8j6/8LJMh7hwXDq/TFhSv
 EgzuH7fD9SrHHNVhj+lnx/43rvK6ZPBWW4gueZJYvBrhW872EkgKTDjxd
 zatSun4kfHxM99msclR+wwqFaCmdNtbnU4gT8ZOf/NkVoU3xfZ5R5LLzm
 /QkpnTHHph7H70+zBYUKUpzsZbGb0X5cyiXTk8Rr+VzUvOnZdwI9NbB7+ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="332293439"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="332293439"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 10:37:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="625047334"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="625047334"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 02 Mar 2023 10:37:31 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 2 Mar 2023 10:37:31 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 2 Mar 2023 10:37:31 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 2 Mar 2023 10:37:31 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 2 Mar 2023 10:37:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EtfYaQWqLI0C5qhKgVNoZKeHkix/+sNT98xaZxXZbSrJVtkj4kRGM28CnzH82e3tE16uk59EfMQgP6R9N7FENgCpuLOJ9AfgUbIkQ54CeRh+n5hE3bLfbB+czrhRb8C5PhFyp3upaUlCiaL/mZGOtG0TLWrKHT08NZcbAY0YjzsQl50D3EaAP6RtEJ4ZoFBufv8oJzGJG5/UlTWJVxtTS17SiWgia5TMTHcJqMnBcVxYwixUZjjehHB3Wv1vzzU3KbrWahA2xSesWqVeVspOfCNCMzH76NLYtMuR9rqrozGnNKZQoHRl7bPdWJkzX2wN8IYhx9jQTfNbUZEKyU2yzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9oEGCq5AR1quGMtzjByEjkvoCZ8QzY4KQz3Uh80zGjc=;
 b=HfAXH1jAZxEQPHR5KuwjZdF2ttMK1LFp1bL548XixltytCTxG12ZbR19U1RKXSt6+TpVa1FqukIvGsnLFqj7yRT9kRqVCLuVuYzPyee6kb3VuhOSMTjiyf/69cLndzfHarS2q7VEK86E0WXB9l9FYrERCMn6ftVnVgYrjERSJ8RfJNtAziJrVMQHYw+5a9NBFa2xRS+/ZrafcWLRW9I8ZLDsreAynlvz4BOGndeuMxbWscoGdgN2pZdddHPlW5S40If4VVkHhpBMi2meD7okfaancr61YqtDecnVtS/V2+vypC2sUhkZmy+UEV0rA7j1rMDOVu4bpZ9mWZuhQ4e9QQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6156.19; Thu, 2 Mar 2023 18:37:28 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b%6]) with mapi id 15.20.6134.030; Thu, 2 Mar 2023
 18:37:28 +0000
Date: Thu, 2 Mar 2023 10:37:25 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <20230302183725.GA1175070@mdroper-desk1.amr.corp.intel.com>
References: <20230302150550.51621-1-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230302150550.51621-1-gustavo.sousa@intel.com>
X-ClientProxiedBy: DM6PR11CA0049.namprd11.prod.outlook.com
 (2603:10b6:5:14c::26) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CH0PR11MB5409:EE_
X-MS-Office365-Filtering-Correlation-Id: 16843890-7bec-4208-f479-08db1b4d2c5b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8j4zRv+JWporxs3kqJWa1HuHoqC2iVul5Is00mdm8CJKWPvK/aEqjmvEzuI8lS1PYkgvoZRQx1U5rTOWQ+Go5aRdw1wgrLVLnMta5PsWe/neS8WXhjA43+crqIizAOrpo2ifF5F5e5XL0TkOrbfKiCTOWwaoy8K1jBBYoXkR4/vtWDze9B4L74+SrYi1xUOMBZlVyjiUFk20ffma7LnIQdXteKx16pCZfJpku8fdZ8sXm47fMIRonkogb8BPdQgpacCWIHUUgC0KQe10Kw6njRID8X7H6JAa3dcLWnSBRXvxermnnh1PCzK0zlscnr1++NpYpf6ZCLywH6Bn4CIif7KNnO50vBNHiB2qFEaqPwZRb9J+ypN59HmZfevjX7xkKgUROyDoCcwyXm+2y6tOVFWsCl+92kcD9WehhPQq+w9Jf8ywKPNJo2vR9RMIfp79RmqoYuKwHzoea+39Xhs8rX3jyLYTirtV6LloMMwGXXZT0i9sgC6WbFbt3X6bfvsnGqB6Gk4tttxqCg0gp9cT1NrJCFV/W11H/4JTGR+Vl5PBpyah6/7Ut7rYf/TPLOmEH7nKHtr0DSGubskm20rWGzHRaZHEhf52jVDpjtvEYS3ub8Osrp/6vpWbhBrMo14lPoSJdvj87Zp3tKODNe/bkA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(346002)(136003)(366004)(39860400002)(396003)(451199018)(6666004)(1076003)(6506007)(6486002)(6512007)(186003)(26005)(41300700001)(316002)(6636002)(4326008)(66556008)(66476007)(8676002)(2906002)(5660300002)(6862004)(82960400001)(8936002)(38100700002)(478600001)(86362001)(33656002)(66946007)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?663h5sMq0/WX/G6fFMzVXuS2mhsLIfrf6uOGusDevy3sfOEdmmSXjeA5UzHx?=
 =?us-ascii?Q?pS8ak96v8ajTQ7rZzc/rmaD9oPorLeyGfXvlLlQqpVpZc1FtcJZDveYlGYQs?=
 =?us-ascii?Q?/8E/R0S+jRJRkw4MsgLMKaGqDIVeEkcFq6wzinA/eQapWVAk44Uh7s+44mBL?=
 =?us-ascii?Q?L6c19mouuIoKdWtZccLUgWDISnqLOkSvyzNuPGXLtiA6XU1tP/089fdcR6ZO?=
 =?us-ascii?Q?VRvbN/U9yEhl/grDYtXHTwMGIT1hs6lNkoZqFXzDFRz9pW1DzvyNL2q9QfnG?=
 =?us-ascii?Q?MTOb5INNSAIfZ3XvHfos+1xgQJlAzMN6UBKcuFQ/EWckwrufIU4Uhbg5GnmO?=
 =?us-ascii?Q?kBm+QUXkgJpHPDIuZrYjWAKdFga88I192cdLbJ8tkO53jtfo+2S8b/sC6mgI?=
 =?us-ascii?Q?UVJI7kZji0IdGJxf7StiQoYaMjZl1iFAIS9FCuTvYuKRbC4NjIL1KPVWKAGF?=
 =?us-ascii?Q?T9DmnnuOwQAIZRCE+wKwwr3/KVqOqOLmM8zW4uF4EcUkVl49g6++E+SFJT1E?=
 =?us-ascii?Q?3GSn6YwpkoKMPpdnTkK1xPrPOHZiEuEjH0hFlk4YhVmKuov9gNLw/ikx/967?=
 =?us-ascii?Q?mJA4ep1zQaJ72Vr/NgPehv6pD2kpJmqr8lS4JTgz+dh+P5mWNOrP8rV3Y2I3?=
 =?us-ascii?Q?3IJvDpC/hqvgyF4yXP5BS86uzGmdGgm3uSovj67T+Sfbqap48MDI1FSg2dGX?=
 =?us-ascii?Q?JRV9blp8egaQBO6NwJzbl3qdlGES11Zx2fMY79ZAXV/vPBoiRMUZLOdSrx7j?=
 =?us-ascii?Q?e9aeOkfd2dSpbpxAg5nngizf4fsCtmb+eiVRi8yRwyXl0hsLJGZ0rK8FE6UJ?=
 =?us-ascii?Q?ahiyjrHGQ3AgqvL78IHn+G2qLM/sbrL5axDtIgdf/AcBY0lHB2j4ni8GVFa3?=
 =?us-ascii?Q?n4loHx0ilo56zTjdOKoldnEM///KdxvrGRK8sFC4z9r4tYSNcd9v40bAJJkj?=
 =?us-ascii?Q?bjp2AeZbtIz2hxdNBTRUGbTzUpehK/+1nKxq7P73Vtum3mU0oeO5Mislpye1?=
 =?us-ascii?Q?G370sn87yOOL7Mo9assj3vK+zbd+KH/6Fc7rf1dp7UDKNvzP18ue3KeGwMd0?=
 =?us-ascii?Q?+oiYAWGy7JoM148b+0Kf8AJ0bVGXuQRzZRQogCTQvir4j1kQ4V7X8NzvBW/4?=
 =?us-ascii?Q?R1vKBAefCUDj2Ev5aGYeZWrj0pFGnI/EA1pHh2msFIK7PtqkeReR28YHMjFL?=
 =?us-ascii?Q?Ny1rCj0AROuEUHHUX2NDobUl7CNf0x2NDJ/CZ1SzqcTiOMAi+GnV9FSVtPxJ?=
 =?us-ascii?Q?k6FL0ChjCiDhxLT4p/I3kQEP/nA8Pmcetv8McbGVMwzgmzjAkgeYkrJXSzqq?=
 =?us-ascii?Q?teewAwaArbz6H81FepsfyedM4EslksAtaLWnDAPr8OiNcyBUXgY2kSedGaML?=
 =?us-ascii?Q?42WpnMronz41BuWB926hZUCldD6qP04fu7BkKR9bOO4jZzPAR9diC54lyZyv?=
 =?us-ascii?Q?6PfVjmqQLtNXx3DkBVhwspsmLk9NLnc00zotFxlvQ70P4NGAGemCdAu41htM?=
 =?us-ascii?Q?7L9kACfwapq6GOY3q6ZHE6kORVQL1Ipxf+1aNkGOtPRRqPIpB3+N422FgQeR?=
 =?us-ascii?Q?gImUtGb7DgQxiSrrxGIiZ7FddjC9ns+s0jD3QvwcjxCe01AYgi37UehO2PuN?=
 =?us-ascii?Q?Mw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 16843890-7bec-4208-f479-08db1b4d2c5b
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2023 18:37:27.5431 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5t+CquWIFKYwVzhj3/ePcYmqX7dEUn1krcqLLmCNYP3n5S7ceTEI9yHtR2uy9p2ppQ0/ChOkx1yMO4+a+KifxSXivNFG45HdQuC1H5OX2N0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5409
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Load DMC on MTL
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

On Thu, Mar 02, 2023 at 12:05:50PM -0300, Gustavo Sousa wrote:
> From: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
> 
> Add support to load DMC on MTL.
> 
> Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index f70ada2357dc..dedf40cb85a2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -60,6 +60,10 @@
>  
>  #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
>  
> +#define MTL_DMC_PATH			DMC_PATH(mtl)
> +#define MTL_DMC_MAX_FW_SIZE		0x10000

Is there a reference somewhere in the bspec for the max DMC payload
size?  It seems unusual that it would have reduced from ADL to MTL,
although the payloads in the current firmware do indeed fit within this
reduced limit.


Matt

> +MODULE_FIRMWARE(MTL_DMC_PATH);
> +
>  #define DG2_DMC_PATH			DMC_LEGACY_PATH(dg2, 2, 08)
>  MODULE_FIRMWARE(DG2_DMC_PATH);
>  
> @@ -943,7 +947,10 @@ void intel_dmc_init(struct drm_i915_private *dev_priv)
>  	 */
>  	intel_dmc_runtime_pm_get(dev_priv);
>  
> -	if (IS_DG2(dev_priv)) {
> +	if (IS_METEORLAKE(dev_priv)) {
> +		dmc->fw_path = MTL_DMC_PATH;
> +		dmc->max_fw_size = MTL_DMC_MAX_FW_SIZE;
> +	} else if (IS_DG2(dev_priv)) {
>  		dmc->fw_path = DG2_DMC_PATH;
>  		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
>  	} else if (IS_ALDERLAKE_P(dev_priv)) {
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
