Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B287E8AD64D
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 23:07:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38D54112D6F;
	Mon, 22 Apr 2024 21:07:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="numkNhsP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3010112D6F
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 21:07:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713820041; x=1745356041;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=8ZUS7x8LPc4Q8TejE7UwZ0K3E/nflNCNa3KAz8UK7cU=;
 b=numkNhsP6jGmFQYUlt6Na9DtR28hAdg8Iz5wUMrKMh32tH4v1TZBr4uZ
 eKaKc2gjdx2E81VTR25ASy8lRjnTMohoWhdV+VKP8W/V1PjRQjyXKhs3W
 cJrcNklwyxXForFtyPPim7EnOzO5CeNmWAoTtHCLKibxBAGQ2t+GNXbSw
 Av+QXwr/IbTjMzw/t6jQf8E2vl2LXttgOXmlJ/mWo//+Ffwcz3pXhh7t9
 cIWbFP6dPgER1sPOJoFA3P1NMkGWJ2fpX7fKn0zgyteTG9wmQXFGtMPGt
 OJvcCcsGSVvIWxzRsngVWUxoAQpO/0UYfaXHRtpKvol5AHlDb/dmpzT4H w==;
X-CSE-ConnectionGUID: pMe/A4mVQEyvWChsW3+zWQ==
X-CSE-MsgGUID: Zn5w+LfgSgSHsgrDqXJPpw==
X-IronPort-AV: E=McAfee;i="6600,9927,11052"; a="9489680"
X-IronPort-AV: E=Sophos;i="6.07,221,1708416000"; 
   d="scan'208";a="9489680"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 14:07:16 -0700
X-CSE-ConnectionGUID: dyYFdLvWQkKn0oIa5sCqjA==
X-CSE-MsgGUID: SeglQPFoTaWcEIQfxgcYUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,221,1708416000"; d="scan'208";a="24759994"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Apr 2024 14:07:11 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Apr 2024 14:07:11 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 22 Apr 2024 14:07:11 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 22 Apr 2024 14:07:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dofoi+a+oGncv/RcSNWQUfrIVIWIZSBvewc+pUvF3wzFMfGFP2KmTvfPb2baCSj0LyCyCoHLjVWmsL0Unv9+KRxpJPsniziSzjhPFpMZ7d8LpgsCFV/apEug05Ldbt+2MykRxQHd6e/min3nOWyzZXHGD9REj+1GcReWQ83HInw4j/diI3DjmBpPTS9ND5zR2Qv0plZyIyVAtCotPP8OsdWgkBHP3A2HZ/aUy244tme2/tQrN/7zW5K7O276IFtgp6NzyCKb2Ow5meVaE63Xei+JK1bh2OstSHQZCqvBI+JC3qyFgs6v3lBS+kDrJ1omvhl0AX8cNKSm5tC0/FZmuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hcTSKEQh39S0DQtiVBDZCxVGNikF1qcKwvnlr22a0So=;
 b=UcmcpLecs5aeeTpMhRJWMUOHwT0IkwD+ytHIhXK40PBVUxoZ6/7EfKWPI2JJ1piC3EksWcCu1nuknvuvIEzJePne8OU7rSBsWftUVN3ssoynLMIb8TTHuSJ6l+0w987XCDuNAy+ULjfEnJehntY94UWPCsJO+aE9Wyciyb0ZcsAdKRbzzmETdPL69ik6jc7Mw6gdGuZ9Axtyq2YdgOPF6Jc9E3xMiWJnrVC1Gm1B8oRy4X6+ohVLjkywi+Ez4JufmVervPRbIvIWBRgxzLD/R2fZGnwFUtLeyMs3YKdyNwbhYFDdAaIPZDHpfvBpUzbb1JK2MYdyM70OPtwoMOGSsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH7PR11MB6428.namprd11.prod.outlook.com (2603:10b6:510:1f4::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.20; Mon, 22 Apr
 2024 21:07:08 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.018; Mon, 22 Apr 2024
 21:07:08 +0000
Date: Mon, 22 Apr 2024 17:07:05 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 3/4] drm/i915/dsi: unify connector/encoder type and
 name usage
Message-ID: <ZibReTeU56pIWnjG@intel.com>
References: <cover.1713520813.git.jani.nikula@intel.com>
 <7aa8fbaa2ecbe2400255964d49aba40cfe0479c5.1713520813.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <7aa8fbaa2ecbe2400255964d49aba40cfe0479c5.1713520813.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY3PR10CA0022.namprd10.prod.outlook.com
 (2603:10b6:a03:255::27) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH7PR11MB6428:EE_
X-MS-Office365-Filtering-Correlation-Id: 7d40657d-37da-42d1-adf6-08dc63102bb1
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?/toLLjgPwOIlE7ofuVNpWIns4oKELoWpA1VFE8IWhAy2KgB6v6lWT957MLeJ?=
 =?us-ascii?Q?EKNQb1tez4GH24kcaJbjgCFtHSx8ZwW10ffptbch37Ia8VgpyUuljqm9ZLiq?=
 =?us-ascii?Q?oSu1c2m+l7tKzGPAm9vf51qrqFUpLRFbMxuaWXviMrn6PsHFjFmssM2k1E5Z?=
 =?us-ascii?Q?GXcIJYN3XfTqeJ33FpBmvzK8G26BSne39s6fxlP79bK6HMnhlenBRKJ9543O?=
 =?us-ascii?Q?G76TQmrgxZpayxmjS35uMXqOaEDNIneEYlhttOuXqhTQ8YxRsvr/I+xhYnvh?=
 =?us-ascii?Q?t9h/hK+cT9PNvxEfW9iceiySSzdFFbcPVQgCLlmmfgw5AzVyEIrVAsgbxc8+?=
 =?us-ascii?Q?G3zgM02HYCwLK1V2c78ThrYWQ89N8AlHLHYe7fgl6C6fPm9MfT2xBGjJknBd?=
 =?us-ascii?Q?24yjn/+EObU25GQP0OU4HjGybYdpMqp7s2skbrYxOYVumwxloOzxbXcpDAzG?=
 =?us-ascii?Q?U8/Wn3KkjQzrE0TnmoAz/dbVAU5xz1fVpmkDfUiwWiE0mgfAiyX/JqnknkvS?=
 =?us-ascii?Q?Q+Rrv2avC7DTKQvSc4CZkgmM1Q/NoObhuFpo5lsRdI4Qj7AzIx3g4sEiOqv2?=
 =?us-ascii?Q?dg0mDP/zN+TJf/eyXBNzzZO9BX3TGfMr40fAeUhrLKiMLy6uawRLbIuhpuxt?=
 =?us-ascii?Q?fuOZUeRCXPg++fQ0iN4Ub01RZArtxDJE6PA94XVGL2svOY6UKJ2bjmY2sLvG?=
 =?us-ascii?Q?G0TdF0l3ZdL5LnZ/+IoyCFBwXubOqrKjprXN09jIrA+buqMxqTTPBOPeuQMF?=
 =?us-ascii?Q?i4lQUFZD9/f1YzcGFUzITQwhtzIsRi3DDfDjsybQ70BUmhLVlcytUtVUge9M?=
 =?us-ascii?Q?Woc5F0q/Ch1ywUHy1U57lXYQJEz8TjM495v79hZGy13IlJiib2ByPjy8fuVO?=
 =?us-ascii?Q?C39H2pUf7cy3bNwGBeow1CPg/0TsV+z1e3waUiq1Xl2iJNgs7T2b82YyxK/f?=
 =?us-ascii?Q?Z5stv/Nadw/K9EAGZj9psEafnbiXfD/clow283Sk7GWJOmzXYOnLqqMP2zFa?=
 =?us-ascii?Q?0gmUXuAJTS48yl+qjBKszjNI4i8X41P0JcTOEr/eCYjtGj7jYZPf3tzLkCMH?=
 =?us-ascii?Q?mpRIDIj7OHzJ5TbdlGjfHe2/qtfSlEYM8tcCirH5NfUGToaX+XDWeRxpEyna?=
 =?us-ascii?Q?7qrvp3BRD1OJUFOdyHFuLm7BkgYUdfvrTX/UgHOu4UWJLRnmJ/Xxb/qdl+Pq?=
 =?us-ascii?Q?y/jVJ6Bxcm0UH+FyAnciR4U2F33IddqKHdo8ztdoo8renknrFaqau/TZVinP?=
 =?us-ascii?Q?re14afo/08hu9BvKGj0YZQtZZMgDVm3SdOUetuJdiA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?oMzQXAItTXlKBjhimuFDejCv2kXNTGi8bnsnFV/VRRh5ew3SehBCMVrujTFu?=
 =?us-ascii?Q?/u0I/QOVs2jpqBWZCGFNA3/4VWbomnbxZuEzL9h+niQ3wY4WSP29fSAab4yt?=
 =?us-ascii?Q?E8dWQiGvL6KrC2ZnrtpgZS4pKYbe9kTnGjm+tZXFjdUgdx3nR9+c1FBujWyH?=
 =?us-ascii?Q?TE6dbW1IdfYc63c8nHVM8+EEFICt9NpDEUEvtdUR+di1IG9kjIt8uDWFE0Oh?=
 =?us-ascii?Q?SBrqDPiSZVGfB/KP6pPLRu8mYubPO5fU0RQK4TNVyEevSiNoe9cRrNI9wT9P?=
 =?us-ascii?Q?NBX43xk38HYmrM4AC/+rcp4JLHVHo286zBqRdJMCOMt6NQ3AcjF+dhO0zal7?=
 =?us-ascii?Q?MbQjmBglO5iVEnF8FS7wZ7P5sq7l8eOljR7IBkAEYCnNDMKanntB1Y0Co9zJ?=
 =?us-ascii?Q?lp0DxD8kWInlPkWiDJB6ISBa4ajZEMI28hiJ5LgLoLm6Hpw05lea6bcJlzaY?=
 =?us-ascii?Q?b4ITrNkHyXccPHOSG/fngWXtOGkZxZxrts2VZbMqYooQTEb0JVooIQREEeFh?=
 =?us-ascii?Q?2wjeidyxWMG2RNFgdzrSrNd3oi9uqNPC3CXl3ku4/fHFjSmd/pN7ZvhdM4Db?=
 =?us-ascii?Q?8qd/lAXxJxY5U45qhryKq7zlP77Bf19hkhkAJt9ZQO5vCjyPf91B98Alrbax?=
 =?us-ascii?Q?Jd6J45BWW83qrcd8iA9cmguw/OG0qtZhUDh1SzLa13nTU9KMaZmQkBwSNCwz?=
 =?us-ascii?Q?O+iOSGMeNk4jnCWV27T0zkjtY4R9FaiQnW7h/Gw23PjrjXaD/7V7OMn2QbuA?=
 =?us-ascii?Q?CcT4ePe0JVc23j+QFIXusk2N2TcLeG9L1tr092rKI+aYz4CZhBxFoZAX7kF1?=
 =?us-ascii?Q?f0WeqN6qIEW8vTPBD3IvWqMKYYjMOMcE/ZmPuXOjG75XYpWSBykv2EKwPMPd?=
 =?us-ascii?Q?5X1+EJ5d0Xj6fDAqWLunjDuaiSS5mUsgGvCIpw2Br4TgOXGOFgN/162a0CC3?=
 =?us-ascii?Q?exU14UBDXZbGnKIdr2aSiOq93Pjd6ujyk5DgUmH1ogNkpFjU2x5VOwLoyigL?=
 =?us-ascii?Q?FTD1nP8zpTnuqpWUvEO3JuW1vlqKrnYzvOiZTuyIfZzScHZlYq242lbOQOSH?=
 =?us-ascii?Q?JbX/PYBP+FTNRVzGwsPEBH8SUruSW/RZ1WNPgcIN+/jBURAiobubCEcl6eUK?=
 =?us-ascii?Q?JELViM2Bt46XTAdzBRqhW6eYC6smXH2f4ADzf/T/PZFKeVt/Sjg06KmV6QSM?=
 =?us-ascii?Q?D+rTnWpitfPoUm6eGl5+zZh8Ug+K1RgmjbmYCXPW0sO/7zbKCHTUGohI52QQ?=
 =?us-ascii?Q?ygTz0Yp8BamllndlG8qtroCjwcygXcTBpGxU+5OEYp/lr+tz8leH6+DJ+iNK?=
 =?us-ascii?Q?wjNOMzFCUDxIHM/+xXPCcrhBNetJ5pE4ix5FrwpAmaoynjYzF45JVWzDP/0c?=
 =?us-ascii?Q?J8rcVvnCEOaqOXfDnjQmgvmS23K3a0KdiD4j5Ja62z4a5PJq6zP9QTHY7cCP?=
 =?us-ascii?Q?WBtm//KoESZS/crnozMB4LF382pPTKN+eReGNZdJKJF7KuykLPYAKeMzEl79?=
 =?us-ascii?Q?GPIM5Mqp4XzsOsbjOOhtjVNuuy6gEzOsbYkGcyjOH/5nunZKOlOhKBrWfbDe?=
 =?us-ascii?Q?aQ/fsujrVPi1fYyw0u74ObqwX2dKFpkIIYY2CQF9G+f6nqtjLWwcvCJISxj2?=
 =?us-ascii?Q?VQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d40657d-37da-42d1-adf6-08dc63102bb1
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2024 21:07:08.6624 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K9SxRWVeoyWrpV1O6bMEC2+0FXcARWjWDqOML+fUGwZlqo4AKoeOgmGjJx+cLxbmpXy80VT8MnWu9dOqQBllfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6428
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

On Fri, Apr 19, 2024 at 01:04:05PM +0300, Jani Nikula wrote:
> Stop using struct drm_* local variables and parameters where
> possible. Drop the intel_ prefix from struct intel_encoder and
> intel_connector local variable and parameter names. Drop useless
> intermediate variables.

nice clean-up

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/vlv_dsi.c | 134 +++++++++++--------------
>  1 file changed, 60 insertions(+), 74 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> index 665247a2e834..9967ef58f1ec 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -85,9 +85,7 @@ enum mipi_dsi_pixel_format pixel_format_from_register_bits(u32 fmt)
>  
>  void vlv_dsi_wait_for_fifo_empty(struct intel_dsi *intel_dsi, enum port port)
>  {
> -	struct drm_encoder *encoder = &intel_dsi->base.base;
> -	struct drm_device *dev = encoder->dev;
> -	struct drm_i915_private *dev_priv = to_i915(dev);
> +	struct drm_i915_private *dev_priv = to_i915(intel_dsi->base.base.dev);
>  	u32 mask;
>  
>  	mask = LP_CTRL_FIFO_EMPTY | HS_CTRL_FIFO_EMPTY |
> @@ -132,8 +130,8 @@ static ssize_t intel_dsi_host_transfer(struct mipi_dsi_host *host,
>  				       const struct mipi_dsi_msg *msg)
>  {
>  	struct intel_dsi_host *intel_dsi_host = to_intel_dsi_host(host);
> -	struct drm_device *dev = intel_dsi_host->intel_dsi->base.base.dev;
> -	struct drm_i915_private *dev_priv = to_i915(dev);
> +	struct intel_dsi *intel_dsi = intel_dsi_host->intel_dsi;
> +	struct drm_i915_private *dev_priv = to_i915(intel_dsi->base.base.dev);
>  	enum port port = intel_dsi_host->port;
>  	struct mipi_dsi_packet packet;
>  	ssize_t ret;
> @@ -225,9 +223,7 @@ static const struct mipi_dsi_host_ops intel_dsi_host_ops = {
>  static int dpi_send_cmd(struct intel_dsi *intel_dsi, u32 cmd, bool hs,
>  			enum port port)
>  {
> -	struct drm_encoder *encoder = &intel_dsi->base.base;
> -	struct drm_device *dev = encoder->dev;
> -	struct drm_i915_private *dev_priv = to_i915(dev);
> +	struct drm_i915_private *dev_priv = to_i915(intel_dsi->base.base.dev);
>  	u32 mask;
>  
>  	/* XXX: pipe, hs */
> @@ -662,8 +658,7 @@ static void intel_dsi_port_enable(struct intel_encoder *encoder,
>  
>  static void intel_dsi_port_disable(struct intel_encoder *encoder)
>  {
> -	struct drm_device *dev = encoder->base.dev;
> -	struct drm_i915_private *dev_priv = to_i915(dev);
> +	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
>  	enum port port;
>  
> @@ -675,7 +670,8 @@ static void intel_dsi_port_disable(struct intel_encoder *encoder)
>  		intel_de_posting_read(dev_priv, port_ctrl);
>  	}
>  }
> -static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
> +
> +static void intel_dsi_prepare(struct intel_encoder *encoder,
>  			      const struct intel_crtc_state *pipe_config);
>  static void intel_dsi_unprepare(struct intel_encoder *encoder);
>  
> @@ -1009,8 +1005,7 @@ static bool intel_dsi_get_hw_state(struct intel_encoder *encoder,
>  static void bxt_dsi_get_pipe_config(struct intel_encoder *encoder,
>  				    struct intel_crtc_state *pipe_config)
>  {
> -	struct drm_device *dev = encoder->base.dev;
> -	struct drm_i915_private *dev_priv = to_i915(dev);
> +	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct drm_display_mode *adjusted_mode =
>  					&pipe_config->hw.adjusted_mode;
>  	struct drm_display_mode *adjusted_mode_sw;
> @@ -1209,12 +1204,11 @@ static u16 txclkesc(u32 divider, unsigned int us)
>  	}
>  }
>  
> -static void set_dsi_timings(struct drm_encoder *encoder,
> +static void set_dsi_timings(struct intel_encoder *encoder,
>  			    const struct drm_display_mode *adjusted_mode)
>  {
> -	struct drm_device *dev = encoder->dev;
> -	struct drm_i915_private *dev_priv = to_i915(dev);
> -	struct intel_dsi *intel_dsi = enc_to_intel_dsi(to_intel_encoder(encoder));
> +	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
>  	enum port port;
>  	unsigned int bpp = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
>  	unsigned int lane_count = intel_dsi->lane_count;
> @@ -1298,14 +1292,12 @@ static u32 pixel_format_to_reg(enum mipi_dsi_pixel_format fmt)
>  	}
>  }
>  
> -static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
> +static void intel_dsi_prepare(struct intel_encoder *encoder,
>  			      const struct intel_crtc_state *pipe_config)
>  {
> -	struct drm_encoder *encoder = &intel_encoder->base;
> -	struct drm_device *dev = encoder->dev;
> -	struct drm_i915_private *dev_priv = to_i915(dev);
> +	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
> -	struct intel_dsi *intel_dsi = enc_to_intel_dsi(to_intel_encoder(encoder));
> +	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
>  	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
>  	enum port port;
>  	unsigned int bpp = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
> @@ -1591,8 +1583,7 @@ static void vlv_dsi_add_properties(struct intel_connector *connector)
>  
>  static void vlv_dphy_param_init(struct intel_dsi *intel_dsi)
>  {
> -	struct drm_device *dev = intel_dsi->base.base.dev;
> -	struct drm_i915_private *dev_priv = to_i915(dev);
> +	struct drm_i915_private *dev_priv = to_i915(intel_dsi->base.base.dev);
>  	struct intel_connector *connector = intel_dsi->attached_connector;
>  	struct mipi_config *mipi_config = connector->panel.vbt.dsi.config;
>  	u32 tlpx_ns, extra_byte_count, tlpx_ui;
> @@ -1878,10 +1869,8 @@ static const struct dmi_system_id vlv_dsi_dmi_quirk_table[] = {
>  void vlv_dsi_init(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_dsi *intel_dsi;
> -	struct intel_encoder *intel_encoder;
> -	struct drm_encoder *encoder;
> -	struct intel_connector *intel_connector;
> -	struct drm_connector *connector;
> +	struct intel_encoder *encoder;
> +	struct intel_connector *connector;
>  	struct drm_display_mode *current_mode;
>  	const struct dmi_system_id *dmi_id;
>  	enum port port;
> @@ -1902,64 +1891,61 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
>  	if (!intel_dsi)
>  		return;
>  
> -	intel_connector = intel_connector_alloc();
> -	if (!intel_connector) {
> +	connector = intel_connector_alloc();
> +	if (!connector) {
>  		kfree(intel_dsi);
>  		return;
>  	}
>  
> -	intel_encoder = &intel_dsi->base;
> -	encoder = &intel_encoder->base;
> -	intel_dsi->attached_connector = intel_connector;
> -
> -	connector = &intel_connector->base;
> +	encoder = &intel_dsi->base;
> +	intel_dsi->attached_connector = connector;
>  
> -	drm_encoder_init(&dev_priv->drm, encoder, &intel_dsi_funcs, DRM_MODE_ENCODER_DSI,
> -			 "DSI %c", port_name(port));
> +	drm_encoder_init(&dev_priv->drm, &encoder->base, &intel_dsi_funcs,
> +			 DRM_MODE_ENCODER_DSI, "DSI %c", port_name(port));
>  
> -	intel_encoder->compute_config = intel_dsi_compute_config;
> -	intel_encoder->pre_enable = intel_dsi_pre_enable;
> +	encoder->compute_config = intel_dsi_compute_config;
> +	encoder->pre_enable = intel_dsi_pre_enable;
>  	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> -		intel_encoder->enable = bxt_dsi_enable;
> -	intel_encoder->disable = intel_dsi_disable;
> -	intel_encoder->post_disable = intel_dsi_post_disable;
> -	intel_encoder->get_hw_state = intel_dsi_get_hw_state;
> -	intel_encoder->get_config = intel_dsi_get_config;
> -	intel_encoder->update_pipe = intel_backlight_update;
> -	intel_encoder->shutdown = intel_dsi_shutdown;
> +		encoder->enable = bxt_dsi_enable;
> +	encoder->disable = intel_dsi_disable;
> +	encoder->post_disable = intel_dsi_post_disable;
> +	encoder->get_hw_state = intel_dsi_get_hw_state;
> +	encoder->get_config = intel_dsi_get_config;
> +	encoder->update_pipe = intel_backlight_update;
> +	encoder->shutdown = intel_dsi_shutdown;
>  
> -	intel_connector->get_hw_state = intel_connector_get_hw_state;
> +	connector->get_hw_state = intel_connector_get_hw_state;
>  
> -	intel_encoder->port = port;
> -	intel_encoder->type = INTEL_OUTPUT_DSI;
> -	intel_encoder->power_domain = POWER_DOMAIN_PORT_DSI;
> -	intel_encoder->cloneable = 0;
> +	encoder->port = port;
> +	encoder->type = INTEL_OUTPUT_DSI;
> +	encoder->power_domain = POWER_DOMAIN_PORT_DSI;
> +	encoder->cloneable = 0;
>  
>  	/*
>  	 * On BYT/CHV, pipe A maps to MIPI DSI port A, pipe B maps to MIPI DSI
>  	 * port C. BXT isn't limited like this.
>  	 */
>  	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> -		intel_encoder->pipe_mask = ~0;
> +		encoder->pipe_mask = ~0;
>  	else if (port == PORT_A)
> -		intel_encoder->pipe_mask = BIT(PIPE_A);
> +		encoder->pipe_mask = BIT(PIPE_A);
>  	else
> -		intel_encoder->pipe_mask = BIT(PIPE_B);
> +		encoder->pipe_mask = BIT(PIPE_B);
>  
>  	intel_dsi->panel_power_off_time = ktime_get_boottime();
>  
> -	intel_bios_init_panel_late(dev_priv, &intel_connector->panel, NULL, NULL);
> +	intel_bios_init_panel_late(dev_priv, &connector->panel, NULL, NULL);
>  
> -	if (intel_connector->panel.vbt.dsi.config->dual_link)
> +	if (connector->panel.vbt.dsi.config->dual_link)
>  		intel_dsi->ports = BIT(PORT_A) | BIT(PORT_C);
>  	else
>  		intel_dsi->ports = BIT(port);
>  
> -	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.bl_ports & ~intel_dsi->ports))
> -		intel_connector->panel.vbt.dsi.bl_ports &= intel_dsi->ports;
> +	if (drm_WARN_ON(&dev_priv->drm, connector->panel.vbt.dsi.bl_ports & ~intel_dsi->ports))
> +		connector->panel.vbt.dsi.bl_ports &= intel_dsi->ports;
>  
> -	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.cabc_ports & ~intel_dsi->ports))
> -		intel_connector->panel.vbt.dsi.cabc_ports &= intel_dsi->ports;
> +	if (drm_WARN_ON(&dev_priv->drm, connector->panel.vbt.dsi.cabc_ports & ~intel_dsi->ports))
> +		connector->panel.vbt.dsi.cabc_ports &= intel_dsi->ports;
>  
>  	/* Create a DSI host (and a device) for each port. */
>  	for_each_dsi_port(port, intel_dsi->ports) {
> @@ -1979,7 +1965,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
>  	}
>  
>  	/* Use clock read-back from current hw-state for fastboot */
> -	current_mode = intel_encoder_current_mode(intel_encoder);
> +	current_mode = intel_encoder_current_mode(encoder);
>  	if (current_mode) {
>  		drm_dbg_kms(&dev_priv->drm, "Calculated pclk %d GOP %d\n",
>  			    intel_dsi->pclk, current_mode->clock);
> @@ -1995,22 +1981,22 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
>  	vlv_dphy_param_init(intel_dsi);
>  
>  	intel_dsi_vbt_gpio_init(intel_dsi,
> -				intel_dsi_get_hw_state(intel_encoder, &pipe));
> +				intel_dsi_get_hw_state(encoder, &pipe));
>  
> -	drm_connector_init(&dev_priv->drm, connector, &intel_dsi_connector_funcs,
> +	drm_connector_init(&dev_priv->drm, &connector->base, &intel_dsi_connector_funcs,
>  			   DRM_MODE_CONNECTOR_DSI);
>  
> -	drm_connector_helper_add(connector, &intel_dsi_connector_helper_funcs);
> +	drm_connector_helper_add(&connector->base, &intel_dsi_connector_helper_funcs);
>  
> -	connector->display_info.subpixel_order = SubPixelHorizontalRGB; /*XXX*/
> +	connector->base.display_info.subpixel_order = SubPixelHorizontalRGB; /*XXX*/
>  
> -	intel_connector_attach_encoder(intel_connector, intel_encoder);
> +	intel_connector_attach_encoder(connector, encoder);
>  
>  	mutex_lock(&dev_priv->drm.mode_config.mutex);
> -	intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
> +	intel_panel_add_vbt_lfp_fixed_mode(connector);
>  	mutex_unlock(&dev_priv->drm.mode_config.mutex);
>  
> -	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
> +	if (!intel_panel_preferred_fixed_mode(connector)) {
>  		drm_dbg_kms(&dev_priv->drm, "no fixed mode\n");
>  		goto err_cleanup_connector;
>  	}
> @@ -2023,18 +2009,18 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
>  		quirk_func(intel_dsi);
>  	}
>  
> -	intel_panel_init(intel_connector, NULL);
> +	intel_panel_init(connector, NULL);
>  
> -	intel_backlight_setup(intel_connector, INVALID_PIPE);
> +	intel_backlight_setup(connector, INVALID_PIPE);
>  
> -	vlv_dsi_add_properties(intel_connector);
> +	vlv_dsi_add_properties(connector);
>  
>  	return;
>  
>  err_cleanup_connector:
> -	drm_connector_cleanup(&intel_connector->base);
> +	drm_connector_cleanup(&connector->base);
>  err:
> -	drm_encoder_cleanup(&intel_encoder->base);
> +	drm_encoder_cleanup(&encoder->base);
>  	kfree(intel_dsi);
> -	kfree(intel_connector);
> +	kfree(connector);
>  }
> -- 
> 2.39.2
> 
