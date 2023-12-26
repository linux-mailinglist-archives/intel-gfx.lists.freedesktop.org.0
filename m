Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F19081E7EB
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Dec 2023 16:09:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D48C10E051;
	Tue, 26 Dec 2023 15:09:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34B0610E051
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Dec 2023 15:09:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703603372; x=1735139372;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=eK6xGZfB4VRm3OUX7QJBcUD/wGmb/ze2aFwIVKkD00M=;
 b=VJIrBXqNt2ALyL7C6f0P+CF2+BScIW4sNXdwZ76XojDY/lKi4q0ZJkQv
 hZRHa+ZOwe/mJ87H2iY2gjQ0jMlAb6zUFISPLs4R2oIKhlEKrVnQvEC2I
 +eODdzixZPW7fFIjPv23aK4taFHZFRCCIRbACd3FHnkKfbhdUmB7JvktT
 /ABKDGs9fcj549BbZMYDXnfNi3Ct5GkjHHKAzT/X46dncsF9HWcWrlAtP
 I+82zfdFA0Z/zsGwwLqJn1xesdo6ObZstb8olXWC0IfCEpNO7/oI5PEWi
 ObT8ajsBt6BnVznpTqYZpowVOp7MX3M/oBf9CJEexljcfb86sqkLJGtuw w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10935"; a="3654383"
X-IronPort-AV: E=Sophos;i="6.04,306,1695711600"; 
   d="scan'208";a="3654383"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Dec 2023 07:09:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,306,1695711600"; d="scan'208";a="12462592"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Dec 2023 07:09:30 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Dec 2023 07:09:30 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 26 Dec 2023 07:09:30 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 26 Dec 2023 07:09:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SBIbLs0eHeezKSDcf3+gCVuGOVlXxO5SffWq1LSuPXtLeVtRIFfSyqaYpwl3mcScmzl7DbfJGWwotlEsptkxlrEeCyGLzbJ9PG2McuSRJ8wSxG7cwcbd1gz4RdAmhjNknh10LC/i9YM+56NfrZtA/o3MMLyHoq3bAWaA5nExeDkxxTEC7Wmd/unCs3faE06Q0wBEe2IpzL7CDSAd+cQUv7z5va+poI56GjkMfauJbzTYyCrhK84zmRG5dOpbdMf30gTunmMPsJsDmONTVQtpPKb2MFs78BlTz78nxb0aKd7dq/UW3WVJ5/njmBiavlkOoXiMQSz7zZDrNFtwjZy3Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fBzkWj3wEVcvL+OrNV1l2MqzYlCWNS0/syeir7TBF3E=;
 b=nScYnCdBpzCgl7flMJkYKwlaYhACgX8HwmfiPFKwOnU3jiUMWb5a07oWoif5za/BhrbXJkisniRb3c17HLgCP9CzXRefoW0gdSlAWmlETf+mOotoPz+ehnD3HDww3vTIlczEiLhcyad8zyIFe/MzMeR4As0yb3oGkrBCt0EcwrDmCFsSgrpd88aDhd2pmo9RcHeG2LBZ4MVstVgV7XGeuDS8ISioSvY8I4F0SlMrnWL9DJH3ejIdOKPm5dCqLkUCi4kH1ZT6tzfHQtUYakn68jnpk6v2NzeJP4luNMj3b3qQiIYpKb/tJC3pR6jVbJ9CcL+cN8Ib8OO+UWLIvtt89g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by IA1PR11MB7891.namprd11.prod.outlook.com (2603:10b6:208:3fa::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7135.18; Tue, 26 Dec
 2023 15:09:28 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179%5]) with mapi id 15.20.7113.027; Tue, 26 Dec 2023
 15:09:28 +0000
Date: Tue, 26 Dec 2023 10:09:24 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH] drm/i915/bios: remove some unused leftover declarations
Message-ID: <ZYrspCNWTbXAFrk7@intel.com>
References: <20231221105414.1518267-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231221105414.1518267-1-jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR07CA0061.namprd07.prod.outlook.com
 (2603:10b6:a03:60::38) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|IA1PR11MB7891:EE_
X-MS-Office365-Filtering-Correlation-Id: 594dac23-94f0-489b-9b38-08dc0624a78d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: P6KP0cDED9tOXRQjWTkRXY3+IpHJy5sWuDDnV8FoKr2+nhuzklpMfIQUVIyIneWwuLnIZdUQJr28d2dZmXSClgphBc2XgoFh5Kw4nBuFNNtGcrH4HsilFRq2J6tqnjqlGBE4+OB7AhOmew1PRY/elVHAQ7Ie6azT1LbkkzsADRPLhwmSOfMZklYZ+nx41UezVqmZE5ACI15cpU9/U6pYMdZu73tOZwKirkwdkbutuT/wYtwTsRLDW6r2UkaiBWQx2hw7gyfT530UiVPiCeiWs48rvR4MDxfo1Yoc87qGTFNR6I4/ERcftKHUm09G3ibFx8M7FFumj7m5pEVzuVYOgKGth+f2gnADRq4OJD0GA6q2UdNjAutuy1Urf51zfqspe9QdPlbLXx93uhVhx4DCvKBbaPxjuXMzwv12nLiyb6aKK1d0fSGlO712WKVtMJ5BK8E973c3HVvPbHxyKldIj5s4RyqmZ9SvmdAVSy77VQlANAesPWATaFZ7sAVjf/ydP3PcujWam1X8OTF5McyWh/WRnQm8cJhS0wAaqfB9VsH20ZtfugHi0ckUfT0Wjov9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(396003)(39860400002)(376002)(366004)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(37006003)(6636002)(66946007)(66476007)(66556008)(6666004)(6512007)(6506007)(6486002)(478600001)(83380400001)(36756003)(2616005)(26005)(86362001)(38100700002)(44832011)(2906002)(5660300002)(82960400001)(41300700001)(8936002)(8676002)(316002)(6862004)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bcwtXGroUJCyRhrwIKniAo1qLxNhpwHQZvmiJsjqD96PlKR3NLxDv2qs93Oo?=
 =?us-ascii?Q?jBWcohlGHK/Hj9MdPAE2bKMnjBgKDf6pounboH3MoGWaZRoDRA48em2EJu5x?=
 =?us-ascii?Q?Xxz71zTWB/+vzW57W/u/RbMKFU/Jc3+P5CjC+Ks3xFaiRzdVSSrjDT8v79vG?=
 =?us-ascii?Q?M0lbJMcDZZOfmdPMULND6buIKvQUX4/7zfFUMCvkWW5El4Ce9agX3rJyVTfC?=
 =?us-ascii?Q?KeUGzJRI5AW7zFqlfws/z7Kmo30T2ImdhpEntLWiU/kcf602sQYIrARr24So?=
 =?us-ascii?Q?QlV0mlHIzNJs4xFQz1oysdy3Fug/BwpuZiYTUFewvatv4afYJTKPPKioFbz+?=
 =?us-ascii?Q?bvpLBCL/p9rZ7Dq/1PT9f9iD5yXwtrAwXbyM3gGB7s4GG1iucCAUNokIZtJc?=
 =?us-ascii?Q?EinLKY/TW/raFiJP3QvFhgwlkR865BrdccjZIhjYX956JqN05PmLYDKAGKj8?=
 =?us-ascii?Q?ezLEnaIX0v5Jwatyi+w4+QbWrD0KFzqIo7kZghuh8rsJNjumsNahgZVmokJ0?=
 =?us-ascii?Q?5VADKMyMMRMXtHkuUkLkDS68YIP3L4WhiDYo+n+B4DCcqz4Pq7ny5INk6I62?=
 =?us-ascii?Q?vBaYhMrdKLsa6EkqwGQUEK+UkWlAo93VCZ2BDfLtcAsQgX2iCd3KfgtN7ept?=
 =?us-ascii?Q?+GEoimuC5yr+NcZ9aUeYTM5kyWkw/0E0kSe4PKCpd24UwmwE2UTvnRfQJqzl?=
 =?us-ascii?Q?GHDxH8WH9sqokDO5edNgGj1XfHNALhiaOIFWMDTj5VJsUyvlLE1edVwIcYf5?=
 =?us-ascii?Q?GjpU7+sIuN8w+K8AFV/IedrJMsdatnpoe1LA3WodvBPSOKdnJ0a/Pzc83hrJ?=
 =?us-ascii?Q?8HUXT/TkxDGYqu3H9WZmpr0N43Q6zVc6T20WA1Za/MK2aBxYZus6T2kAqoNS?=
 =?us-ascii?Q?gwLpUvyj8QqWcr6RlXlgx27CqnfbC9znPtVtAotGqmPRmmC0ydFAREFR/9mk?=
 =?us-ascii?Q?K8xVh78ZMYBkvV1ZV1FSZYPbfIPb4oHO7DTjRAEbU/E5/HRRaB5VZ+hz2dbE?=
 =?us-ascii?Q?1IXE3Ji2SFiXarlm3iynpVPn2MnVBACTm9ZO1x40zwbjbdqFaHDZ+6scKGnJ?=
 =?us-ascii?Q?P5tYgKnbL2VoOg48Ifj1c8Q5e0tToOjs4GRFrFgluhAJeIS04GHHPA9vP8vs?=
 =?us-ascii?Q?wOxNDxmhbSLKc+qnJR4hhmKZhJyvIZJXCeoGVCx8II2gmAZkfBEI8H58jHlW?=
 =?us-ascii?Q?/4eNIE5FcgXShvBnDMA7nWClUiPQ9RC5Gcw4Wf4bT34kWLd0RNEClbLHGxXv?=
 =?us-ascii?Q?jVXiRsr4BmgcH/vLMCM4o7rUKY7sc5hEgU4gjHvZCUY89PXJksUzArAZhuU0?=
 =?us-ascii?Q?bZPoZo5iNC6dU5nAdDmdgCjHx8pYGNyg01rEiMISUUhq8OdS1pB8bnpYLg0j?=
 =?us-ascii?Q?8ufOkR4PXlk1zXwPSXuOq/pviDF/FhUasNg5IcSyi161UN+bcNTbv/St2uTF?=
 =?us-ascii?Q?bdsPD1Na9jktrJjj0W7iRTfdGKHIWDieBuocPwHByP1hInOJLc9sQGdYId2v?=
 =?us-ascii?Q?smFBZGZY6oX4uuWv3eC7P/rvGcj5tTCUZfIOqwvPZiyVZP6sHGBhYOULJ/tg?=
 =?us-ascii?Q?lf7wuvsCImothTFws1f2oSW/ZVCfK29/hg0i0HWs?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 594dac23-94f0-489b-9b38-08dc0624a78d
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Dec 2023 15:09:28.2920 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fHQ7a5O3WoFSxpRcWfnPtDJl8gy0v/U1zr7ablA0cT8hjviKrHeS0zd7hvRkECD0O5BOGqWMZ/67BKSyUvaYlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7891
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 21, 2023 at 12:54:14PM +0200, Jani Nikula wrote:
> Remove some unused declarations probably left behind after some
> refactoring.

when you mention 'unused' I was wondering if we should move the
local functions to 'static', but then I notice they are 'inexistent'.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.h | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
> index 49e24b7cf675..96673dc707e7 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -246,13 +246,10 @@ bool intel_bios_is_valid_vbt(const void *buf, size_t size);
>  bool intel_bios_is_tv_present(struct drm_i915_private *dev_priv);
>  bool intel_bios_is_lvds_present(struct drm_i915_private *dev_priv, u8 *i2c_pin);
>  bool intel_bios_is_port_present(struct drm_i915_private *dev_priv, enum port port);
> -bool intel_bios_is_port_edp(struct drm_i915_private *dev_priv, enum port port);
>  bool intel_bios_is_dsi_present(struct drm_i915_private *dev_priv, enum port *port);
>  bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
>  			       struct intel_crtc_state *crtc_state,
>  			       int dsc_max_bpc);
> -bool intel_bios_port_supports_typec_usb(struct drm_i915_private *i915, enum port port);
> -bool intel_bios_port_supports_tbt(struct drm_i915_private *i915, enum port port);
>  
>  const struct intel_bios_encoder_data *
>  intel_bios_encoder_data_lookup(struct drm_i915_private *i915, enum port port);
> -- 
> 2.39.2
> 
