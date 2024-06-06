Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91D5F8FED9A
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 16:38:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECF0A10E07E;
	Thu,  6 Jun 2024 14:38:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bc2y+LF8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 836E910E07E
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 14:38:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717684712; x=1749220712;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=IKV8hVRKNqb4CCc7darwRaChq99g0PN5wojSjPQolq4=;
 b=Bc2y+LF81MbJoPOUJdG3B4tS/BAbiJ9PtVd/q6To7aq5MNlo+I7GLCQa
 gNgNxq7d+VB/4ziKGaJWU75o9KEIT4cuSMR3g5FTDMdu/t5TX5/gOACia
 xretNk5+XyR2QVbqmECDZmotCJ7kmerqCfLKfbO4gyZveLjd1lTdmhQSB
 CArNKUMqANo958GpQ3eSBK838ajnFfimkkG2AoQcPOmtutvYnHy5o+l61
 qNSSQLq2SdqEe46rSy3sdDhfbqYDRC63nunniQG1IXfG1qvMzYJE40piW
 TcnfC5YYBJV8Bst3I9qzizfWNkW4r2UlShO8zCnvFP54XWs3WKCY8ojJp A==;
X-CSE-ConnectionGUID: 1C8yxqHaRxCPv0jIr37qPQ==
X-CSE-MsgGUID: TDPVvrAaQj+GhfbVbj62NA==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14316227"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14316227"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 07:38:32 -0700
X-CSE-ConnectionGUID: e8hiDWbQRuSTyfGndxKX4Q==
X-CSE-MsgGUID: +1KNwU8wQc6uJ47CCDaftg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="37933694"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 07:38:31 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 07:38:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 07:38:31 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 07:38:31 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 07:38:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MxHcftswFaxI1PGc7r1GlaC2VVbGB/qRHXFH8OS3jSsawih5VmruIKTkwhKg7SOzaG8CvzaIVCrUS/L3tC7HLPeq1WyLxNJoTGKWZde8N9obqK580+KTbydniCGS48vt7zFQsWEQJ63ZyBC7ImN8YCb5eQD3wgGSUOou9kjAP3/lPpT3PvLMXalQ6L9pZkPxfIJDvbpb9bVG9nuuCGltyyqD/szXOaPlBvKb+GV9YYOus+EvZliGZ4znVkkd1c22YmaY4NcFhZZj7g0SJmKCq3q5eEtQJZe2l6bIvWMWmIpJbLbdufyeqiLtsvhl5i/Bc0SMnPUuaFO3C1idlaFFPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rWOzt28VDsM0t5oou9NMpaER4l49JCI1Dt6rU16opy0=;
 b=JzMsm7gFShTNTQpaC0bPcgqqKRq3roVrIJjLnEkEQI6zYNLPpGWRXbK/IS5Y9lvc0zwIj+HxRunbPjswnjnE1Bga/Ka06wG7P64SIEUb4nNAPt4LqKLsSLbyNzxNbef4QhjTMbmHnT6fCp9Ur+ar0cpaSsxOUcvvEh/IIp5HTr8qwF1g3T+FvhuHuSfLOOmIVXpsIk6yzmfd6Lc6VqCAZCS7u4nplQEJ7LHB4C2S16RVAtS44YJwXIMopzkdc42GtPYPojR3+/Xi+739X36jJl5RGHtuFECw3shjx7i246qxgUXrJA2ia2Qtob0E8Jfr+v22H37kqlGRtlGGiADm4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by MW4PR11MB6714.namprd11.prod.outlook.com (2603:10b6:303:20f::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.27; Thu, 6 Jun
 2024 14:38:22 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 14:38:22 +0000
Date: Thu, 6 Jun 2024 10:38:20 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 01/65] drm/i915: pass dev_priv explicitly to DPLL
Message-ID: <ZmHJ3LKb_QE2zL2g@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <7deea1d86c2706994450ec938f8f174a2ac54d27.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <7deea1d86c2706994450ec938f8f174a2ac54d27.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR20CA0009.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::22) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|MW4PR11MB6714:EE_
X-MS-Office365-Filtering-Correlation-Id: 2d1d2b5f-a829-4fbc-9aaf-08dc86365106
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?OHlzFintf11Rs34ShGPEQIcKNWdHqxbzOORKAiSt5Oxzxr+eXfCBqkfkkoTi?=
 =?us-ascii?Q?oiscOVQHwpRcpe9WUXSqW4dUaVzAukuRHgdVCcASg8a2ZbRt9sUnPc156oks?=
 =?us-ascii?Q?V5A2/WaFt4XpER1SdtmEld2J7XSt9DmUNexig88r1VfFnUbUR/1qU/NP1I4y?=
 =?us-ascii?Q?JTGuoylF+89fdIDIFNCabB5EYkSGSw5nDk0EdkiYeog5ojK00WjwoIou6/oz?=
 =?us-ascii?Q?NdW0qkApIfVkkNE8CIbEUFOQgjH2mCVU3it/b95rTo6OF1orY7WG0POBR1ZY?=
 =?us-ascii?Q?obw1kdwTRBXAj7iavSIYdrsF6n0dbDEwsUC2vDlryqQF9LpaJVlTOyZSeXlQ?=
 =?us-ascii?Q?B8Sh4Imch6NG77nD+pkfAA6vvfDS5w7LyS/D6pX8yTEoFlyhwyRoU0UDOox+?=
 =?us-ascii?Q?D1Q7JjYmq8jU7gAQzNISX377o0f5PndJyZ4LqMo6SaQ3zMzkAjMZVj/euNYi?=
 =?us-ascii?Q?BgJfOQ9n8LSsHCJe8nA7cAF1MQMkavOnNqG5VUIL3UwuXen8kECKc11vzKFq?=
 =?us-ascii?Q?A4imCIKhL2O50ONHYadOibmKEDh9QnGwPjExw0PY6cuoMp9mpIChf929GGHC?=
 =?us-ascii?Q?KlHqqQZI6qlzoFkzYpWNBaUzKDIvQpw2vL/EgGhljWAiC9hOUHKBEyeHfGAl?=
 =?us-ascii?Q?yvbNk7343vrM0NKbGMRhNu0QxNGgA10mYs8CVfKsluoQkuNPYdEDdiMJtAdv?=
 =?us-ascii?Q?sLKTFcaO1DcoEPk1yFmfGj6s4J3/M4J4R92BaJlKeRQ9OxH4Fw3KahuBvId7?=
 =?us-ascii?Q?vaQTla/v7NwiUd0KzQXqoVzsezW83QRSVnSyW4L+a8wCbWiqybS9g/Kh+WtG?=
 =?us-ascii?Q?HeGwKEjmv/3JF43LCPE3kOPBAIVxGoJU6GcPCb+QISIJhEQLSRrNxT2H2XuM?=
 =?us-ascii?Q?RlYmbBoSTvZNTNIlaRo10kD+WNKUk4E49oSQeyBFNPdCTTqrzcojv3pM11/9?=
 =?us-ascii?Q?DNKJFORBtUPNYqq2qvAhZY0i6iCBB7IF1Z+6zJL9JQB23G+H1rKuQR5AGgtK?=
 =?us-ascii?Q?DBH8Qi8EXjm41myNyJ8bS8CEFlh2dsCrCOalGx22TcBqlk7o3EJ6SO16hnmy?=
 =?us-ascii?Q?Xlhzxb/sKmT4LEG5RSpHT8FOScVbrusL99zeNMUUnawl8mqByzBPkQtpYRsB?=
 =?us-ascii?Q?9PBNxFWAaMcNFeLN8GTSIncbZnAlBqOkAPwK0U1MFlrsN4Kcv20jVLlLDlOm?=
 =?us-ascii?Q?Gw5WDJP+cRwDRStQKPNLUoQk/gsVGtWYGzrJYPFdW8Sf4IHN1UgK6cOIdl4U?=
 =?us-ascii?Q?+aBJ5yrInDjehH1jn9mE5UxUulE6NXgCvm0naozXaAjnoEzatG8Y3idfROp6?=
 =?us-ascii?Q?majzDMZetBPnvp1b4aD3fm9K?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Hlh+UrL1QYxF+M+HqJdyAnwlL9bZyODVINL5e28r8DMODbFMhwjIoNX6fpj1?=
 =?us-ascii?Q?S1LiJB51mjF2+24ZykS4Q3ID3/pg1EzXFC79XXZTY3g9El4fD7cuv7f1tnlo?=
 =?us-ascii?Q?vU4uKFoAqpe9coy86Xch4H8WE12uDb7i8JKNOS9N+PL1kM3nzCmixwCI6igI?=
 =?us-ascii?Q?r/MMvYr3r3qn4I/+sqD4t5czIMrMEUnqIJXhSls0LxPKhsSRK3JVLe38Fyfs?=
 =?us-ascii?Q?neKwABwzKSdvhdLBfmW1dKoddJDs9ISOiUPeVIxIrXrRr6Ujvxz7RTnvQZf8?=
 =?us-ascii?Q?IIOpo3mfxOXZ7jIGND0NUWoRjl2/NcyVY2SLQF8Cctki9eqzeBdbhgk6l8C8?=
 =?us-ascii?Q?9ugSkMcTd/FKx0zIgGRXmKU5Cgpt6h3yvMS1hKFVqyrG1XWAXJyeLM86vEVs?=
 =?us-ascii?Q?pSpO+Rpr86jAKif5igCUmDpvj22t3VJnD0l3sev7vWIGU+MGwthSBiuYvX5U?=
 =?us-ascii?Q?Wma4FCmnBANmTG9WwkrHcpv5nBBeue7P//HjW1PeO9Brp9QDJKz152tlHK/f?=
 =?us-ascii?Q?A/muC3lfdjJzs0xPdiTnM9eo/PB8MpwstAwf95bWgd0+PBqr5YfttLRBGkZv?=
 =?us-ascii?Q?IDqlaUQQKQHAbrdg3OXOmxJqSAQTc41ZVx+C1ZBgnz+hKl3q/RxgDX6tNGpq?=
 =?us-ascii?Q?LHintEsLA9HD5BlRvxbztzqCDN7d9EFSlZejZ2HOSFv1UdOD7WceLfOtzuUm?=
 =?us-ascii?Q?9Pdtg9/yW9XNQm/fGWEN5JTloSSJu0JSSNqgC3Bz0SYYSbCzsfb6BLOlK7sY?=
 =?us-ascii?Q?Np9HIBzSBsb6oq8yIX7Gf97fu+ygXqu1eVsVJFtUm/nWdBXNzVcpGeoNJ61b?=
 =?us-ascii?Q?S7WXRmaVh8wVIbx+BdNJLIiHc97KFLYGF+y6JtxknCIZfBOABbGM1yE8iz8Y?=
 =?us-ascii?Q?e/18n5TisZYYESp0PPfFD6pkIzRP81nEc6xUeNsQFbBEMbqIH9oWtBs9BYcK?=
 =?us-ascii?Q?XUBBqm75LaWJM3KQhli/kKLK37cZN1atLEZoTnuuag/KSBTM+xZi+ftFcALR?=
 =?us-ascii?Q?p3nvNoY+lL6SV1forIEsvNCnBZ59z8fZ671zJxlwvYF/H2dVqQ/ziGMEhxph?=
 =?us-ascii?Q?5khF2ewQ45WXgmLdCJaEtHWsGhSLjWUe3ZYWcTVkvkS03liuwK9bfGgFfKVe?=
 =?us-ascii?Q?dCLmNLa7KTufeFpTWa5XEMNI30ZXd6YyByzNgFDlZ9FfzMm9+HFJ3cPbQDK6?=
 =?us-ascii?Q?5UGyvEhh66I4QwF7iLGy+bm1tJbtDuMpO+mL333eU/1rn4s4VU76tyOIfbYa?=
 =?us-ascii?Q?Oj0X9X2y0ueCYdFti76lSyA2LKD36j01r2xj/ZCTTH/5cZHOabDFclN5yOlQ?=
 =?us-ascii?Q?454GHAp9SjVr5OlQDo7c1DkmUFjOEUkxDxqk5gbNf3uv1yMjwKwtiKeLu3oH?=
 =?us-ascii?Q?ycCNzIJ3am1njMFKnzuSyErp7884eeeZp/yID1Xe0jhSRQPTx+aGoUFnVYP0?=
 =?us-ascii?Q?1HyUiP2LwhNwenP7gbRssi6rBhpqSGLM20DyYMDn+B+ZWymppFQ6w7a1oT/H?=
 =?us-ascii?Q?C0UnJTuwAyL1QBpaT7Kl1oy76nSbNYFgU+mQEbnCvFhgj33neVMMXONWnGDW?=
 =?us-ascii?Q?+WDwpU6u/DlBWP9pbG7DYGpe8OO5uB8aNQm9N9nO?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d1d2b5f-a829-4fbc-9aaf-08dc86365106
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 14:38:22.8075 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oAEns3QN0IKa4N57WCqmcqM+p3zHNALErfw8pmTNlKyEZUkzWWDzqORnPPisam7nkerHnUAAQT08g/YGC7G/Sw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6714
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

On Tue, Jun 04, 2024 at 06:25:19PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the DPLL register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

(
even though it is a big series and overall it looks all right,
I will put one by one for 2 reasons:
- so I ensure I don't miss details and I know where I stopped
- so you can use dim b4 directly without extra rebase and adding my rv-b one by one...
)

> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 21 ++++-----
>  .../drm/i915/display/intel_display_power.c    |  2 +-
>  .../i915/display/intel_display_power_well.c   |  6 +--
>  drivers/gpu/drm/i915/display/intel_dpll.c     | 45 ++++++++++---------
>  drivers/gpu/drm/i915/display/intel_dvo.c      |  5 ++-
>  drivers/gpu/drm/i915/display/intel_pps.c      |  2 +-
>  drivers/gpu/drm/i915/i915_reg.h               |  2 +-
>  7 files changed, 43 insertions(+), 40 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 7370acdd6b8b..42e2d884c98e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -382,11 +382,11 @@ void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
>  		fallthrough;
>  	case PORT_B:
>  		port_mask = DPLL_PORTB_READY_MASK;
> -		dpll_reg = DPLL(0);
> +		dpll_reg = DPLL(dev_priv, 0);
>  		break;
>  	case PORT_C:
>  		port_mask = DPLL_PORTC_READY_MASK;
> -		dpll_reg = DPLL(0);
> +		dpll_reg = DPLL(dev_priv, 0);
>  		expected_mask <<= 4;
>  		break;
>  	case PORT_D:
> @@ -8212,11 +8212,12 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
>  	 * the P1/P2 dividers. Otherwise the DPLL will keep using the old
>  	 * dividers, even though the register value does change.
>  	 */
> -	intel_de_write(dev_priv, DPLL(pipe), dpll & ~DPLL_VGA_MODE_DIS);
> -	intel_de_write(dev_priv, DPLL(pipe), dpll);
> +	intel_de_write(dev_priv, DPLL(dev_priv, pipe),
> +		       dpll & ~DPLL_VGA_MODE_DIS);
> +	intel_de_write(dev_priv, DPLL(dev_priv, pipe), dpll);
>  
>  	/* Wait for the clocks to stabilize. */
> -	intel_de_posting_read(dev_priv, DPLL(pipe));
> +	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
>  	udelay(150);
>  
>  	/* The pixel multiplier can only be updated once the
> @@ -8224,12 +8225,12 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
>  	 *
>  	 * So write it again.
>  	 */
> -	intel_de_write(dev_priv, DPLL(pipe), dpll);
> +	intel_de_write(dev_priv, DPLL(dev_priv, pipe), dpll);
>  
>  	/* We do this three times for luck */
>  	for (i = 0; i < 3 ; i++) {
> -		intel_de_write(dev_priv, DPLL(pipe), dpll);
> -		intel_de_posting_read(dev_priv, DPLL(pipe));
> +		intel_de_write(dev_priv, DPLL(dev_priv, pipe), dpll);
> +		intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
>  		udelay(150); /* wait for warmup */
>  	}
>  
> @@ -8262,8 +8263,8 @@ void i830_disable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
>  
>  	intel_wait_for_pipe_scanline_stopped(crtc);
>  
> -	intel_de_write(dev_priv, DPLL(pipe), DPLL_VGA_MODE_DIS);
> -	intel_de_posting_read(dev_priv, DPLL(pipe));
> +	intel_de_write(dev_priv, DPLL(dev_priv, pipe), DPLL_VGA_MODE_DIS);
> +	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
>  }
>  
>  void intel_hpd_poll_fini(struct drm_i915_private *i915)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 34b6d843bc9e..3c5cb587f9bd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1772,7 +1772,7 @@ static void chv_phy_control_init(struct drm_i915_private *dev_priv)
>  	 * current lane status.
>  	 */
>  	if (intel_power_well_is_enabled(dev_priv, cmn_bc)) {
> -		u32 status = intel_de_read(dev_priv, DPLL(PIPE_A));
> +		u32 status = intel_de_read(dev_priv, DPLL(dev_priv, PIPE_A));
>  		unsigned int mask;
>  
>  		mask = status & DPLL_PORTB_READY_MASK;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 83f616097a29..3b6cb237d80a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -1196,13 +1196,13 @@ static void vlv_display_power_well_init(struct drm_i915_private *dev_priv)
>  	 * CHV DPLL B/C have some issues if VGA mode is enabled.
>  	 */
>  	for_each_pipe(dev_priv, pipe) {
> -		u32 val = intel_de_read(dev_priv, DPLL(pipe));
> +		u32 val = intel_de_read(dev_priv, DPLL(dev_priv, pipe));
>  
>  		val |= DPLL_REF_CLK_ENABLE_VLV | DPLL_VGA_MODE_DIS;
>  		if (pipe != PIPE_A)
>  			val |= DPLL_INTEGRATED_CRI_CLK_VLV;
>  
> -		intel_de_write(dev_priv, DPLL(pipe), val);
> +		intel_de_write(dev_priv, DPLL(dev_priv, pipe), val);
>  	}
>  
>  	vlv_init_display_clock_gating(dev_priv);
> @@ -1355,7 +1355,7 @@ static void assert_chv_phy_status(struct drm_i915_private *dev_priv)
>  		 */
>  		if (BITS_SET(phy_control,
>  			     PHY_CH_POWER_DOWN_OVRD(0xf, DPIO_PHY0, DPIO_CH1)) &&
> -		    (intel_de_read(dev_priv, DPLL(PIPE_B)) & DPLL_VCO_ENABLE) == 0)
> +		    (intel_de_read(dev_priv, DPLL(dev_priv, PIPE_B)) & DPLL_VCO_ENABLE) == 0)
>  			phy_status |= PHY_STATUS_CMN_LDO(DPIO_PHY0, DPIO_CH1);
>  
>  		if (BITS_SET(phy_control,
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
> index a981f45facb3..a007ca5208b8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -403,7 +403,7 @@ void i9xx_dpll_get_hw_state(struct intel_crtc *crtc,
>  		hw_state->dpll_md = tmp;
>  	}
>  
> -	hw_state->dpll = intel_de_read(dev_priv, DPLL(crtc->pipe));
> +	hw_state->dpll = intel_de_read(dev_priv, DPLL(dev_priv, crtc->pipe));
>  
>  	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv)) {
>  		hw_state->fp0 = intel_de_read(dev_priv, FP0(crtc->pipe));
> @@ -1842,11 +1842,12 @@ void i9xx_enable_pll(const struct intel_crtc_state *crtc_state)
>  	 * the P1/P2 dividers. Otherwise the DPLL will keep using the old
>  	 * dividers, even though the register value does change.
>  	 */
> -	intel_de_write(dev_priv, DPLL(pipe), hw_state->dpll & ~DPLL_VGA_MODE_DIS);
> -	intel_de_write(dev_priv, DPLL(pipe), hw_state->dpll);
> +	intel_de_write(dev_priv, DPLL(dev_priv, pipe),
> +		       hw_state->dpll & ~DPLL_VGA_MODE_DIS);
> +	intel_de_write(dev_priv, DPLL(dev_priv, pipe), hw_state->dpll);
>  
>  	/* Wait for the clocks to stabilize. */
> -	intel_de_posting_read(dev_priv, DPLL(pipe));
> +	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
>  	udelay(150);
>  
>  	if (DISPLAY_VER(dev_priv) >= 4) {
> @@ -1857,13 +1858,13 @@ void i9xx_enable_pll(const struct intel_crtc_state *crtc_state)
>  		 *
>  		 * So write it again.
>  		 */
> -		intel_de_write(dev_priv, DPLL(pipe), hw_state->dpll);
> +		intel_de_write(dev_priv, DPLL(dev_priv, pipe), hw_state->dpll);
>  	}
>  
>  	/* We do this three times for luck */
>  	for (i = 0; i < 3; i++) {
> -		intel_de_write(dev_priv, DPLL(pipe), hw_state->dpll);
> -		intel_de_posting_read(dev_priv, DPLL(pipe));
> +		intel_de_write(dev_priv, DPLL(dev_priv, pipe), hw_state->dpll);
> +		intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
>  		udelay(150); /* wait for warmup */
>  	}
>  }
> @@ -1991,11 +1992,11 @@ static void _vlv_enable_pll(const struct intel_crtc_state *crtc_state)
>  	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
>  	enum pipe pipe = crtc->pipe;
>  
> -	intel_de_write(dev_priv, DPLL(pipe), hw_state->dpll);
> -	intel_de_posting_read(dev_priv, DPLL(pipe));
> +	intel_de_write(dev_priv, DPLL(dev_priv, pipe), hw_state->dpll);
> +	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
>  	udelay(150);
>  
> -	if (intel_de_wait_for_set(dev_priv, DPLL(pipe), DPLL_LOCK_VLV, 1))
> +	if (intel_de_wait_for_set(dev_priv, DPLL(dev_priv, pipe), DPLL_LOCK_VLV, 1))
>  		drm_err(&dev_priv->drm, "DPLL %d failed to lock\n", pipe);
>  }
>  
> @@ -2012,7 +2013,7 @@ void vlv_enable_pll(const struct intel_crtc_state *crtc_state)
>  	assert_pps_unlocked(dev_priv, pipe);
>  
>  	/* Enable Refclk */
> -	intel_de_write(dev_priv, DPLL(pipe),
> +	intel_de_write(dev_priv, DPLL(dev_priv, pipe),
>  		       hw_state->dpll & ~(DPLL_VCO_ENABLE | DPLL_EXT_BUFFER_ENABLE_VLV));
>  
>  	if (hw_state->dpll & DPLL_VCO_ENABLE) {
> @@ -2138,10 +2139,10 @@ static void _chv_enable_pll(const struct intel_crtc_state *crtc_state)
>  	udelay(1);
>  
>  	/* Enable PLL */
> -	intel_de_write(dev_priv, DPLL(pipe), hw_state->dpll);
> +	intel_de_write(dev_priv, DPLL(dev_priv, pipe), hw_state->dpll);
>  
>  	/* Check PLL is locked */
> -	if (intel_de_wait_for_set(dev_priv, DPLL(pipe), DPLL_LOCK_VLV, 1))
> +	if (intel_de_wait_for_set(dev_priv, DPLL(dev_priv, pipe), DPLL_LOCK_VLV, 1))
>  		drm_err(&dev_priv->drm, "PLL %d failed to lock\n", pipe);
>  }
>  
> @@ -2158,7 +2159,7 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
>  	assert_pps_unlocked(dev_priv, pipe);
>  
>  	/* Enable Refclk and SSC */
> -	intel_de_write(dev_priv, DPLL(pipe),
> +	intel_de_write(dev_priv, DPLL(dev_priv, pipe),
>  		       hw_state->dpll & ~DPLL_VCO_ENABLE);
>  
>  	if (hw_state->dpll & DPLL_VCO_ENABLE) {
> @@ -2183,7 +2184,7 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
>  		 * We should always have it disabled.
>  		 */
>  		drm_WARN_ON(&dev_priv->drm,
> -			    (intel_de_read(dev_priv, DPLL(PIPE_B)) &
> +			    (intel_de_read(dev_priv, DPLL(dev_priv, PIPE_B)) &
>  			     DPLL_VGA_MODE_DIS) == 0);
>  	} else {
>  		intel_de_write(dev_priv, DPLL_MD(pipe), hw_state->dpll_md);
> @@ -2241,8 +2242,8 @@ void vlv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
>  	if (pipe != PIPE_A)
>  		val |= DPLL_INTEGRATED_CRI_CLK_VLV;
>  
> -	intel_de_write(dev_priv, DPLL(pipe), val);
> -	intel_de_posting_read(dev_priv, DPLL(pipe));
> +	intel_de_write(dev_priv, DPLL(dev_priv, pipe), val);
> +	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
>  }
>  
>  void chv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
> @@ -2259,8 +2260,8 @@ void chv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
>  	if (pipe != PIPE_A)
>  		val |= DPLL_INTEGRATED_CRI_CLK_VLV;
>  
> -	intel_de_write(dev_priv, DPLL(pipe), val);
> -	intel_de_posting_read(dev_priv, DPLL(pipe));
> +	intel_de_write(dev_priv, DPLL(dev_priv, pipe), val);
> +	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
>  
>  	vlv_dpio_get(dev_priv);
>  
> @@ -2285,8 +2286,8 @@ void i9xx_disable_pll(const struct intel_crtc_state *crtc_state)
>  	/* Make sure the pipe isn't still relying on us */
>  	assert_transcoder_disabled(dev_priv, crtc_state->cpu_transcoder);
>  
> -	intel_de_write(dev_priv, DPLL(pipe), DPLL_VGA_MODE_DIS);
> -	intel_de_posting_read(dev_priv, DPLL(pipe));
> +	intel_de_write(dev_priv, DPLL(dev_priv, pipe), DPLL_VGA_MODE_DIS);
> +	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
>  }
>  
>  
> @@ -2312,7 +2313,7 @@ static void assert_pll(struct drm_i915_private *dev_priv,
>  {
>  	bool cur_state;
>  
> -	cur_state = intel_de_read(dev_priv, DPLL(pipe)) & DPLL_VCO_ENABLE;
> +	cur_state = intel_de_read(dev_priv, DPLL(dev_priv, pipe)) & DPLL_VCO_ENABLE;
>  	I915_STATE_WARN(dev_priv, cur_state != state,
>  			"PLL state assertion failure (expected %s, current %s)\n",
>  			str_on_off(state), str_on_off(cur_state));
> diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
> index 1840f5b59229..091824334f26 100644
> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> @@ -456,13 +456,14 @@ static bool intel_dvo_init_dev(struct drm_i915_private *dev_priv,
>  	 * the device.
>  	 */
>  	for_each_pipe(dev_priv, pipe)
> -		dpll[pipe] = intel_de_rmw(dev_priv, DPLL(pipe), 0, DPLL_DVO_2X_MODE);
> +		dpll[pipe] = intel_de_rmw(dev_priv, DPLL(dev_priv, pipe), 0,
> +					  DPLL_DVO_2X_MODE);
>  
>  	ret = dvo->dev_ops->init(&intel_dvo->dev, i2c);
>  
>  	/* restore the DVO 2x clock state to original */
>  	for_each_pipe(dev_priv, pipe) {
> -		intel_de_write(dev_priv, DPLL(pipe), dpll[pipe]);
> +		intel_de_write(dev_priv, DPLL(dev_priv, pipe), dpll[pipe]);
>  	}
>  
>  	intel_gmbus_force_bit(i2c, false);
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 73046ef58d8e..42306bc4ba86 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -119,7 +119,7 @@ vlv_power_sequencer_kick(struct intel_dp *intel_dp)
>  	else
>  		DP |= DP_PIPE_SEL(pipe);
>  
> -	pll_enabled = intel_de_read(dev_priv, DPLL(pipe)) & DPLL_VCO_ENABLE;
> +	pll_enabled = intel_de_read(dev_priv, DPLL(dev_priv, pipe)) & DPLL_VCO_ENABLE;
>  
>  	/*
>  	 * The DPLL for the pipe must be enabled for this to work.
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 6877e2f0fbc3..8ff04bb19cbe 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -668,7 +668,7 @@
>  #define _DPLL_A			0x6014
>  #define _DPLL_B			0x6018
>  #define _CHV_DPLL_C		0x6030
> -#define DPLL(pipe)		_MMIO_BASE_PIPE3(DISPLAY_MMIO_BASE(dev_priv), \
> +#define DPLL(dev_priv, pipe)		_MMIO_BASE_PIPE3(DISPLAY_MMIO_BASE(dev_priv), \
>  						 (pipe), _DPLL_A, _DPLL_B, _CHV_DPLL_C)
>  
>  #define VGA0	_MMIO(0x6000)
> -- 
> 2.39.2
> 
