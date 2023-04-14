Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5EAD6E24BA
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 15:51:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 209DA10E1A7;
	Fri, 14 Apr 2023 13:51:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 171CA10E1A7
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Apr 2023 13:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681480314; x=1713016314;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=rmUPgBqtwC1LefVWgejbYis9FfJcKWchuVPTGVMSSC0=;
 b=D3lyoz5J/CgowO/4iIu+qj+8kUjP014MxR77wWzhU4ggCZCXguJNk84z
 sEIFi/zU9wmYfpv475kXAKEl7SkHIBrqjhz9szkNKcjPA5iifFiUnDMBk
 XqXHRX24NoM6VZZpZXbHqVR2X3OWvm0xspIxD2+4AZ+qFTrUQ5q5b8G78
 8Xq4zelDYa9+bXN1vzi/MznGZHaFdxf7C8NaHDxrklPeOa1xInfhrB3Ik
 xYkQx2M3LxRRqBvzJ9uorBdhYb45o8YT0EbGhdWAWsL7Pl0I6HH2Q+kaj
 Sw/TvoFIX3g8TuON+cwPQO7ixyZ2pC/OvkbMrFW+qBOGkv7JfUc6NK7b+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="372332994"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="372332994"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 06:51:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="689822971"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="689822971"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 14 Apr 2023 06:51:53 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 14 Apr 2023 06:51:52 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 14 Apr 2023 06:51:52 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 14 Apr 2023 06:51:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AHcH68QzlMjAmL2ycbY1kheMQ4qJel/jMRmRZTQgY0cBbACJc/CLMDDWnsVFB8ON3z2OTip+CEztxi9gbcMEfyLPOTu/aJY7gZtsE+k9xJ1VhIEGqXawvcKdgjg8v3QxWODm4XOoe8jCvFf3Ux0pNr9ywCGbXD0BCbB7jeuNmmeMz7DlXYtOhAl/+9LtsPbdVsKHd3UP0qLyVFggDqoyLuzTCxQRReyeYH/wHDlY7QfLhOO0iVcvB8cqqZC6nFHdpdIB9ni7JSO3cM09miUx1Aanmvih62cVxoL/K0vsrRKqCsF8Q/G/3jy1RQixIKfIA+8ECaE0dXxSepoVOvpoag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lcioPQZsOzoTix7cIQ9VEv4r5Uv8O6tTyC6XhxLmyi8=;
 b=OeXPkaR86NT87f1crBWpoQ1YeiOzWwk5ZZUuRLbN36G2OiTSvcZYkrNK87B7ZymShm+GktvUeq/6+zWPwQOBMdOVvporaDb940PODSz4DXuiEkPNGsPrN2+59+EtvOZpCV78eEwL+5cxrs/d7AD2hU1aki1Sjqxvq7EcfMSH2ic7UxPYNNDsjd1qKWLymq8ls7T66VlgnOHGzsh8ocyudv2Q5PhBujmga2enBSGBGA6ybeFI4WoLaAzqOWiwTwn314ZY+XxC9V0fM2oTz288pMZlXrBMz8lWUQ7xEPoa2ir1DuCsmk9nA+olJoOHCzYn2o04djEwUhZxkVtg4StC7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by MW6PR11MB8367.namprd11.prod.outlook.com (2603:10b6:303:249::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Fri, 14 Apr
 2023 13:51:47 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a%3]) with mapi id 15.20.6298.030; Fri, 14 Apr 2023
 13:51:47 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <c00df5cfc233520bc28dd972296197a8a619a6a0.1681465222.git.jani.nikula@intel.com>
References: <cover.1681465222.git.jani.nikula@intel.com>
 <c00df5cfc233520bc28dd972296197a8a619a6a0.1681465222.git.jani.nikula@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Fri, 14 Apr 2023 10:51:41 -0300
Message-ID: <168148030120.39942.15140274300831201379@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR21CA0006.namprd21.prod.outlook.com
 (2603:10b6:a03:114::16) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|MW6PR11MB8367:EE_
X-MS-Office365-Filtering-Correlation-Id: df4c07c4-91e6-48cf-c0ab-08db3cef63a7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ink823xf7+W1h3SAfxM4CT+CbQetaNfQrNZiJePP6mt5qgJNAeGM5Y7Lj1tWOVAN7l/fs61IWuG3wE0v1yFPGCJZFFnJdBphmY9MSbp1ZbFsksJnhUuCGiG6d/fSaar8++A42vORgFNk6T9uKWHhOROCC/G41U5tqp97rr7TnpLXS/tR60wRM76PHWyQVxMn3qPRfPmnKe/88VcYIAI8HI3rFmOz7lHigNjTjGXZROmmjlj4MQsqNtKU4iYoopHdF3xINp47cPFJaHjrSioIEfqKkTC9GI8AlAVGK2SNgcBKw/tbTpOjuTgMoIfSF3Kfdnai5CUt3DlX/TJ76M/CxUWifQMXUk8JuAgteaaGaPHnp+F6i0BuLs1GNoD0ImIfMIgGiFAdVCjup17/0tu3lADtzKtazzOkiR0lOyPDfRGa32KRYVzB8PuWHcH7sdwNwu/Z5Y5i+GTXa4xqAGs2OoygQwkjLD1cOhJks9ASwm2ceBe6ioUr8aQvCrNaau/kn4N+9WfvCLJSWWYl4qUfzcunBDDYOU6CEWo2c7FBgXn+kPG8WSXHz3deWxbVy2Ft
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(376002)(136003)(39860400002)(346002)(366004)(396003)(451199021)(316002)(41300700001)(6506007)(6512007)(26005)(38100700002)(6486002)(9686003)(86362001)(186003)(33716001)(107886003)(66556008)(66476007)(83380400001)(82960400001)(66946007)(4326008)(478600001)(8676002)(8936002)(5660300002)(2906002)(6666004)(30864003)(44832011)(66899021);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RldySXdZNWRRMlVONkplZmQxN1c1NHZPTW85Snh6NDFOa1VEdjJwQWEyeFBt?=
 =?utf-8?B?UkJwbVJMMWJPZVFKS0dnZHl6cDdMQWlwWkJCNEt3b1o1dUpLU3RleWl6Ly9n?=
 =?utf-8?B?YmNRU2M4L3JhMnRIQURhckdXVGF3RTFpNVBnODIxWTJvR3Zxci83TFlsWVZU?=
 =?utf-8?B?VzZ2VGFHQWZlaEtIakhVRHdzMjBvbW4xRkxsNEtGUWhNeXhOWXQ2VEFTN1cy?=
 =?utf-8?B?QjM0MjkyRC96a2FwbTFrYldObU1QOGpIRi8yTEhIQ0dDcHRtVGhTSUNEZUlK?=
 =?utf-8?B?a3pPM2Z2c1NYUXYzOE4wWENVeWlvSWxhejlNUXl0T2dlNkpTN2N6VThEcmVw?=
 =?utf-8?B?OU8vbzkxMkVnMWVqTmhQWEkyd2JKa0krQTJ2NVB6VDRaTElHanpzSkhLNTlh?=
 =?utf-8?B?Sm90V1BzbzdpTDBic1F6eW93V3U3V252WnJZK3hJMnh4SG0rTUVpdG9kemZ5?=
 =?utf-8?B?Z001MlBKd3VHdFBGMGFSeDNpb0d6Rm54Um9jSlJWV281ME9Fd0ZjdCthUmRD?=
 =?utf-8?B?YnduT0lYdVB6MGlZcjJWYm84WFNjN3NWa1VpYUE3RVg0Uk95ZTFOSDRxVENt?=
 =?utf-8?B?OHZ6NUlIMUpBZmNXYVU5YURiU3dmR0duSE9mcmd1VGZJQXl1QVl3SXFveGhX?=
 =?utf-8?B?dWFiS0lXRHIvZWN4dlN4SElkTnF4WXJRT1pmekZZY2tlZFJ3UDlWS3Z5bWZ3?=
 =?utf-8?B?Zm1tWng3ZDBsc1d5dnpXY3l2V0dwbVdPQm9tdzY4aHMzdWF2bDJrdE5ZcTlz?=
 =?utf-8?B?WnlrL3dlcWpleTl4TVZQeGNRUXJCUEdoL3NuNWkraUwxM09udGJlLzdJY3Zw?=
 =?utf-8?B?Qksxa2ZmbHBJSjBFbGNjeURaYXp5WFVaSFc0TGtRVVR5V0lEeVczd0VoK2JI?=
 =?utf-8?B?cVNWc3l6Tk9SSXJMU0d5MS8vaUxGQlYzd0xQZFBHMkZ3M1FBbHBsbklQc0JW?=
 =?utf-8?B?dTg5OHRGQUlCQ0YrVXZlZkZDZDVYUDFxZk55N3cxc21ieE9RWkhwUVpWRVRz?=
 =?utf-8?B?dG9ZdHN3UW9ycVFOSmNMTENxQ0ErZ0daUjAvQVRrdUVvMDNyT1ZRNHYycEl3?=
 =?utf-8?B?ZHBiVkNhZHpvYUo4Tnd4TXlUZjkxWmVzZ3hTSEJRR1ZUZGdPQ0lPV0ZRVlZ2?=
 =?utf-8?B?UHpRM01vczdjQ29ZYSt5ZXdrNnd1R3lJUWFHb1B6Z0h6RGxnUTY5SzVtdFdm?=
 =?utf-8?B?bHo5TDF0RkcwNDZ2TGkvcERJd0ltUzJVL2VLWHBicDJQcjJVclRTREp2YWFY?=
 =?utf-8?B?TVovbk5jdXU4cWQ3TGJSUlZIOUlMdTlQemNnTGpORUxqVEhaTDVjWWptdEhS?=
 =?utf-8?B?SC9pejA0cjhxNGpGNjhZWXFSYVJrV0NtOERLQ2hTaWZTNDgvNFFlcjVXaHR5?=
 =?utf-8?B?ZnlhenVQR2o0TGFSSmVFMVo0aGdyeVVrOUw4UXc5L1RtRjJiMDN4MlVnNmdW?=
 =?utf-8?B?ZlA2aHhta3NxWk9UdlhBdWZ5ekJ5bDRueTk4ZHd3cjZxamlISDFUekNLdWJP?=
 =?utf-8?B?QjdUSG1OZDhMZ1d5QlhRdUh4N0o2WUtjc0prNlFxNzBWQjlsNEZYbEhRdEd6?=
 =?utf-8?B?eVhoNjhocktURTJoNVVaRXFNS0NkVXJrQUlZYTEwTkVkTVcvQ0xPNWJiaVdC?=
 =?utf-8?B?Mi9iaHRQMHFEa0ZqdngrUTg5Q3Vwa1kxWXZoenBMKzFtdE0xRmVWMzdqbWNL?=
 =?utf-8?B?d2ZnTm5zTmNNeS82b2RLaVRVSTFwbGhTQjlSTFFkS1pxZ3dkTDlBcHowU2Vn?=
 =?utf-8?B?WmlZSGNUcFFvYnhLck1NN21aMk13MTB6UTNmUndlUkhybi9BbHVCNVE3RkpI?=
 =?utf-8?B?eFg2RmhPV29qSncxMmRQUDhENXJWYjExd0h1LzlmVUtNZFlWZTVRUmdHRTZZ?=
 =?utf-8?B?YkkyVU1MU0ZKWWNYZVNBdHp6bEZ1WjJvWkwvTmtDeG8zNnVXM0VJMWhYb0pp?=
 =?utf-8?B?R1p1eURoaGR2VTJXcU1vRENSckNKTXlHbjk0eHlKYlYxQ2RJbGh3QTdTcFlN?=
 =?utf-8?B?dnBNVVIyUTdvenIzODFpYjRmdithZ2xoQmZSTk0wdkJMa2JXRkVITmF4dFpI?=
 =?utf-8?B?WnBXdlYrbmlhSVR6QklDcUE4a0NKMTZ0WEo1OUtrZ2hoMGo0YS9sZXBQOHVH?=
 =?utf-8?B?clY2V0pRY3QvU0YybGFrWHlTZXJEOFJqR1JXY2V5N1hTaUhZVVc2Nm1La1py?=
 =?utf-8?B?L2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: df4c07c4-91e6-48cf-c0ab-08db3cef63a7
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2023 13:51:47.4730 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JEXTQ6idi5/BBpbt83nZte5mWz/L2fIk1gyqx+5/VcuB1jqCiWq//SaH3Ixwe9hQgOtB4qLuNgtJ8R8kBWjmmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8367
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 05/10] drm/i915/display: move modeset
 probe/remove functions to intel_display_driver.c
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2023-04-14 06:41:57)
> High level display functionality only called from driver top level code.
>=20
> v2:
> - Remove unnecessary declarations for intel_sanitize_watermarks() and
>   intel_atomic_check() (Gustavo)
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 373 +----------------
>  drivers/gpu/drm/i915/display/intel_display.h  |  21 +-
>  .../drm/i915/display/intel_display_driver.c   | 374 ++++++++++++++++++
>  .../drm/i915/display/intel_display_driver.h   |   7 +
>  4 files changed, 406 insertions(+), 369 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 36c8d70157c9..86cc2b6085a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -54,7 +54,6 @@
>  #include "i9xx_plane.h"
>  #include "i9xx_wm.h"
>  #include "icl_dsi.h"
> -#include "intel_acpi.h"
>  #include "intel_atomic.h"
>  #include "intel_atomic_plane.h"
>  #include "intel_audio.h"
> @@ -67,6 +66,7 @@
>  #include "intel_crtc_state_dump.h"
>  #include "intel_ddi.h"
>  #include "intel_de.h"
> +#include "intel_display_driver.h"
>  #include "intel_display_power.h"
>  #include "intel_display_types.h"
>  #include "intel_dmc.h"
> @@ -86,11 +86,8 @@
>  #include "intel_fdi.h"
>  #include "intel_fifo_underrun.h"
>  #include "intel_frontbuffer.h"
> -#include "intel_gmbus.h"
> -#include "intel_hdcp.h"
>  #include "intel_hdmi.h"
>  #include "intel_hotplug.h"
> -#include "intel_hti.h"
>  #include "intel_lvds.h"
>  #include "intel_lvds_regs.h"
>  #include "intel_modeset_setup.h"
> @@ -104,7 +101,6 @@
>  #include "intel_plane_initial.h"
>  #include "intel_pps.h"
>  #include "intel_psr.h"
> -#include "intel_quirks.h"
>  #include "intel_sdvo.h"
>  #include "intel_snps_phy.h"
>  #include "intel_tc.h"
> @@ -174,7 +170,7 @@ int vlv_get_cck_clock_hpll(struct drm_i915_private *d=
ev_priv,
>         return hpll;
>  }
> =20
> -static void intel_update_czclk(struct drm_i915_private *dev_priv)
> +void intel_update_czclk(struct drm_i915_private *dev_priv)
>  {
>         if (!(IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)))
>                 return;
> @@ -2582,7 +2578,7 @@ intel_link_compute_m_n(u16 bits_per_pixel, int nlan=
es,
>                     0x80000);
>  }
> =20
> -static void intel_panel_sanitize_ssc(struct drm_i915_private *dev_priv)
> +void intel_panel_sanitize_ssc(struct drm_i915_private *dev_priv)
>  {
>         /*
>          * There may be no VBT; and if the BIOS enabled SSC we can
> @@ -7235,7 +7231,7 @@ static void intel_atomic_helper_free_state(struct d=
rm_i915_private *dev_priv)
>                 drm_atomic_state_put(&state->base);
>  }
> =20
> -static void intel_atomic_helper_free_state_worker(struct work_struct *wo=
rk)
> +void intel_atomic_helper_free_state_worker(struct work_struct *work)
>  {
>         struct drm_i915_private *dev_priv =3D
>                 container_of(work, typeof(*dev_priv), display.atomic_help=
er.free_work);
> @@ -7583,9 +7579,8 @@ static void intel_atomic_track_fbs(struct intel_ato=
mic_state *state)
>                                         plane->frontbuffer_bit);
>  }
> =20
> -static int intel_atomic_commit(struct drm_device *dev,
> -                         struct drm_atomic_state *_state,
> -                         bool nonblock)
> +int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state =
*_state,
> +                  bool nonblock)
>  {
>         struct intel_atomic_state *state =3D to_intel_atomic_state(_state=
);
>         struct drm_i915_private *dev_priv =3D to_i915(dev);
> @@ -7687,19 +7682,6 @@ void intel_plane_destroy(struct drm_plane *plane)
>         kfree(to_intel_plane(plane));
>  }
> =20
> -static void intel_plane_possible_crtcs_init(struct drm_i915_private *dev=
_priv)
> -{
> -  struct intel_plane *plane;
> -
> -  for_each_intel_plane(&dev_priv->drm, plane) {
> -          struct intel_crtc *crtc =3D intel_crtc_for_pipe(dev_priv,
> -                                                        plane->pipe);
> -
> -          plane->base.possible_crtcs =3D drm_crtc_mask(&crtc->base);
> -  }
> -}
> -
> -
>  int intel_get_pipe_from_crtc_id_ioctl(struct drm_device *dev, void *data=
,
>                                       struct drm_file *file)
>  {
> @@ -7779,7 +7761,7 @@ static bool intel_ddi_crt_present(struct drm_i915_p=
rivate *dev_priv)
>         return true;
>  }
> =20
> -static void intel_setup_outputs(struct drm_i915_private *dev_priv)
> +void intel_setup_outputs(struct drm_i915_private *dev_priv)
>  {
>         struct intel_encoder *encoder;
>         bool dpd_is_edp =3D false;
> @@ -8031,9 +8013,8 @@ static int max_dotclock(struct drm_i915_private *i9=
15)
>         return max_dotclock;
>  }
> =20
> -static enum drm_mode_status
> -intel_mode_valid(struct drm_device *dev,
> -           const struct drm_display_mode *mode)
> +enum drm_mode_status intel_mode_valid(struct drm_device *dev,
> +                                const struct drm_display_mode *mode)
>  {
>         struct drm_i915_private *dev_priv =3D to_i915(dev);
>         int hdisplay_max, htotal_max;
> @@ -8173,18 +8154,6 @@ intel_mode_valid_max_plane_size(struct drm_i915_pr=
ivate *dev_priv,
>         return MODE_OK;
>  }
> =20
> -static const struct drm_mode_config_funcs intel_mode_funcs =3D {
> -  .fb_create =3D intel_user_framebuffer_create,
> -  .get_format_info =3D intel_fb_get_format_info,
> -  .output_poll_changed =3D intel_fbdev_output_poll_changed,
> -  .mode_valid =3D intel_mode_valid,
> -  .atomic_check =3D intel_atomic_check,
> -  .atomic_commit =3D intel_atomic_commit,
> -  .atomic_state_alloc =3D intel_atomic_state_alloc,
> -  .atomic_state_clear =3D intel_atomic_state_clear,
> -  .atomic_state_free =3D intel_atomic_state_free,
> -};
> -
>  static const struct intel_display_funcs skl_display_funcs =3D {
>         .get_pipe_config =3D hsw_get_pipe_config,
>         .crtc_enable =3D hsw_crtc_enable,
> @@ -8256,21 +8225,7 @@ void intel_init_display_hooks(struct drm_i915_priv=
ate *dev_priv)
>         intel_fdi_init_hook(dev_priv);
>  }
> =20
> -void intel_modeset_init_hw(struct drm_i915_private *i915)
> -{
> -  struct intel_cdclk_state *cdclk_state;
> -
> -  if (!HAS_DISPLAY(i915))
> -          return;
> -
> -  cdclk_state =3D to_intel_cdclk_state(i915->display.cdclk.obj.state);
> -
> -  intel_update_cdclk(i915);
> -  intel_cdclk_dump_config(i915, &i915->display.cdclk.hw, "Current CDCLK"=
);
> -  cdclk_state->logical =3D cdclk_state->actual =3D i915->display.cdclk.h=
w;
> -}
> -
> -static int intel_initial_commit(struct drm_device *dev)
> +int intel_initial_commit(struct drm_device *dev)
>  {
>         struct drm_atomic_state *state =3D NULL;
>         struct drm_modeset_acquire_ctx ctx;
> @@ -8341,246 +8296,6 @@ static int intel_initial_commit(struct drm_device=
 *dev)
>         return ret;
>  }
> =20
> -static const struct drm_mode_config_helper_funcs intel_mode_config_funcs=
 =3D {
> -  .atomic_commit_setup =3D drm_dp_mst_atomic_setup_commit,
> -};
> -
> -static void intel_mode_config_init(struct drm_i915_private *i915)
> -{
> -  struct drm_mode_config *mode_config =3D &i915->drm.mode_config;
> -
> -  drm_mode_config_init(&i915->drm);
> -  INIT_LIST_HEAD(&i915->display.global.obj_list);
> -
> -  mode_config->min_width =3D 0;
> -  mode_config->min_height =3D 0;
> -
> -  mode_config->preferred_depth =3D 24;
> -  mode_config->prefer_shadow =3D 1;
> -
> -  mode_config->funcs =3D &intel_mode_funcs;
> -  mode_config->helper_private =3D &intel_mode_config_funcs;
> -
> -  mode_config->async_page_flip =3D HAS_ASYNC_FLIPS(i915);
> -
> -  /*
> -   * Maximum framebuffer dimensions, chosen to match
> -   * the maximum render engine surface size on gen4+.
> -   */
> -  if (DISPLAY_VER(i915) >=3D 7) {
> -          mode_config->max_width =3D 16384;
> -          mode_config->max_height =3D 16384;
> -  } else if (DISPLAY_VER(i915) >=3D 4) {
> -          mode_config->max_width =3D 8192;
> -          mode_config->max_height =3D 8192;
> -  } else if (DISPLAY_VER(i915) =3D=3D 3) {
> -          mode_config->max_width =3D 4096;
> -          mode_config->max_height =3D 4096;
> -  } else {
> -          mode_config->max_width =3D 2048;
> -          mode_config->max_height =3D 2048;
> -  }
> -
> -  if (IS_I845G(i915) || IS_I865G(i915)) {
> -          mode_config->cursor_width =3D IS_I845G(i915) ? 64 : 512;
> -          mode_config->cursor_height =3D 1023;
> -  } else if (IS_I830(i915) || IS_I85X(i915) ||
> -             IS_I915G(i915) || IS_I915GM(i915)) {
> -          mode_config->cursor_width =3D 64;
> -          mode_config->cursor_height =3D 64;
> -  } else {
> -          mode_config->cursor_width =3D 256;
> -          mode_config->cursor_height =3D 256;
> -  }
> -}
> -
> -static void intel_mode_config_cleanup(struct drm_i915_private *i915)
> -{
> -  intel_atomic_global_obj_cleanup(i915);
> -  drm_mode_config_cleanup(&i915->drm);
> -}
> -
> -/* part #1: call before irq install */
> -int intel_modeset_init_noirq(struct drm_i915_private *i915)
> -{
> -  int ret;
> -
> -  if (i915_inject_probe_failure(i915))
> -          return -ENODEV;
> -
> -  if (HAS_DISPLAY(i915)) {
> -          ret =3D drm_vblank_init(&i915->drm,
> -                                INTEL_NUM_PIPES(i915));
> -          if (ret)
> -                  return ret;
> -  }
> -
> -  intel_bios_init(i915);
> -
> -  ret =3D intel_vga_register(i915);
> -  if (ret)
> -          goto cleanup_bios;
> -
> -  /* FIXME: completely on the wrong abstraction layer */
> -  ret =3D intel_power_domains_init(i915);
> -  if (ret < 0)
> -          goto cleanup_vga;
> -
> -  intel_power_domains_init_hw(i915, false);
> -
> -  if (!HAS_DISPLAY(i915))
> -          return 0;
> -
> -  intel_dmc_init(i915);
> -
> -  i915->display.wq.modeset =3D alloc_ordered_workqueue("i915_modeset", 0=
);
> -  i915->display.wq.flip =3D alloc_workqueue("i915_flip", WQ_HIGHPRI |
> -                                          WQ_UNBOUND, WQ_UNBOUND_MAX_ACT=
IVE);
> -
> -  intel_mode_config_init(i915);
> -
> -  ret =3D intel_cdclk_init(i915);
> -  if (ret)
> -          goto cleanup_vga_client_pw_domain_dmc;
> -
> -  ret =3D intel_color_init(i915);
> -  if (ret)
> -          goto cleanup_vga_client_pw_domain_dmc;
> -
> -  ret =3D intel_dbuf_init(i915);
> -  if (ret)
> -          goto cleanup_vga_client_pw_domain_dmc;
> -
> -  ret =3D intel_bw_init(i915);
> -  if (ret)
> -          goto cleanup_vga_client_pw_domain_dmc;
> -
> -  init_llist_head(&i915->display.atomic_helper.free_list);
> -  INIT_WORK(&i915->display.atomic_helper.free_work,
> -            intel_atomic_helper_free_state_worker);
> -
> -  intel_init_quirks(i915);
> -
> -  intel_fbc_init(i915);
> -
> -  return 0;
> -
> -cleanup_vga_client_pw_domain_dmc:
> -  intel_dmc_fini(i915);
> -  intel_power_domains_driver_remove(i915);
> -cleanup_vga:
> -  intel_vga_unregister(i915);
> -cleanup_bios:
> -  intel_bios_driver_remove(i915);
> -
> -  return ret;
> -}
> -
> -/* part #2: call after irq install, but before gem init */
> -int intel_modeset_init_nogem(struct drm_i915_private *i915)
> -{
> -  struct drm_device *dev =3D &i915->drm;
> -  enum pipe pipe;
> -  struct intel_crtc *crtc;
> -  int ret;
> -
> -  if (!HAS_DISPLAY(i915))
> -          return 0;
> -
> -  intel_wm_init(i915);
> -
> -  intel_panel_sanitize_ssc(i915);
> -
> -  intel_pps_setup(i915);
> -
> -  intel_gmbus_setup(i915);
> -
> -  drm_dbg_kms(&i915->drm, "%d display pipe%s available.\n",
> -              INTEL_NUM_PIPES(i915),
> -              INTEL_NUM_PIPES(i915) > 1 ? "s" : "");
> -
> -  for_each_pipe(i915, pipe) {
> -          ret =3D intel_crtc_init(i915, pipe);
> -          if (ret) {
> -                  intel_mode_config_cleanup(i915);
> -                  return ret;
> -          }
> -  }
> -
> -  intel_plane_possible_crtcs_init(i915);
> -  intel_shared_dpll_init(i915);
> -  intel_fdi_pll_freq_update(i915);
> -
> -  intel_update_czclk(i915);
> -  intel_modeset_init_hw(i915);
> -  intel_dpll_update_ref_clks(i915);
> -
> -  intel_hdcp_component_init(i915);
> -
> -  if (i915->display.cdclk.max_cdclk_freq =3D=3D 0)
> -          intel_update_max_cdclk(i915);
> -
> -  intel_hti_init(i915);
> -
> -  /* Just disable it once at startup */
> -  intel_vga_disable(i915);
> -  intel_setup_outputs(i915);
> -
> -  drm_modeset_lock_all(dev);
> -  intel_modeset_setup_hw_state(i915, dev->mode_config.acquire_ctx);
> -  intel_acpi_assign_connector_fwnodes(i915);
> -  drm_modeset_unlock_all(dev);
> -
> -  for_each_intel_crtc(dev, crtc) {
> -          if (!to_intel_crtc_state(crtc->base.state)->uapi.active)
> -                  continue;
> -          intel_crtc_initial_plane_config(crtc);
> -  }
> -
> -  /*
> -   * Make sure hardware watermarks really match the state we read out.
> -   * Note that we need to do this after reconstructing the BIOS fb's
> -   * since the watermark calculation done here will use pstate->fb.
> -   */
> -  if (!HAS_GMCH(i915))
> -          ilk_wm_sanitize(i915);
> -
> -  return 0;
> -}
> -
> -/* part #3: call after gem init */
> -int intel_modeset_init(struct drm_i915_private *i915)
> -{
> -  int ret;
> -
> -  if (!HAS_DISPLAY(i915))
> -          return 0;
> -
> -  /*
> -   * Force all active planes to recompute their states. So that on
> -   * mode_setcrtc after probe, all the intel_plane_state variables
> -   * are already calculated and there is no assert_plane warnings
> -   * during bootup.
> -   */
> -  ret =3D intel_initial_commit(&i915->drm);
> -  if (ret)
> -          drm_dbg_kms(&i915->drm, "Initial modeset failed, %d\n", ret);
> -
> -  intel_overlay_setup(i915);
> -
> -  ret =3D intel_fbdev_init(&i915->drm);
> -  if (ret)
> -          return ret;
> -
> -  /* Only enable hotplug handling once the fbdev is fully set up. */
> -  intel_hpd_init(i915);
> -  intel_hpd_poll_disable(i915);
> -
> -  skl_watermark_ipc_init(i915);
> -
> -  return 0;
> -}
> -
>  void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
>  {
>         struct intel_crtc *crtc =3D intel_crtc_for_pipe(dev_priv, pipe);
> @@ -8726,7 +8441,7 @@ void intel_display_resume(struct drm_device *dev)
>                 drm_atomic_state_put(state);
>  }
> =20
> -static void intel_hpd_poll_fini(struct drm_i915_private *i915)
> +void intel_hpd_poll_fini(struct drm_i915_private *i915)
>  {
>         struct intel_connector *connector;
>         struct drm_connector_list_iter conn_iter;
> @@ -8744,72 +8459,6 @@ static void intel_hpd_poll_fini(struct drm_i915_pr=
ivate *i915)
>         drm_connector_list_iter_end(&conn_iter);
>  }
> =20
> -/* part #1: call before irq uninstall */
> -void intel_modeset_driver_remove(struct drm_i915_private *i915)
> -{
> -  if (!HAS_DISPLAY(i915))
> -          return;
> -
> -  flush_workqueue(i915->display.wq.flip);
> -  flush_workqueue(i915->display.wq.modeset);
> -
> -  flush_work(&i915->display.atomic_helper.free_work);
> -  drm_WARN_ON(&i915->drm, !llist_empty(&i915->display.atomic_helper.free=
_list));
> -
> -  /*
> -   * MST topology needs to be suspended so we don't have any calls to
> -   * fbdev after it's finalized. MST will be destroyed later as part of
> -   * drm_mode_config_cleanup()
> -   */
> -  intel_dp_mst_suspend(i915);
> -}
> -
> -/* part #2: call after irq uninstall */
> -void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915)
> -{
> -  if (!HAS_DISPLAY(i915))
> -          return;
> -
> -  /*
> -   * Due to the hpd irq storm handling the hotplug work can re-arm the
> -   * poll handlers. Hence disable polling after hpd handling is shut dow=
n.
> -   */
> -  intel_hpd_poll_fini(i915);
> -
> -  /* poll work can call into fbdev, hence clean that up afterwards */
> -  intel_fbdev_fini(i915);
> -
> -  intel_unregister_dsm_handler();
> -
> -  /* flush any delayed tasks or pending work */
> -  flush_scheduled_work();
> -
> -  intel_hdcp_component_fini(i915);
> -
> -  intel_mode_config_cleanup(i915);
> -
> -  intel_overlay_cleanup(i915);
> -
> -  intel_gmbus_teardown(i915);
> -
> -  destroy_workqueue(i915->display.wq.flip);
> -  destroy_workqueue(i915->display.wq.modeset);
> -
> -  intel_fbc_cleanup(i915);
> -}
> -
> -/* part #3: call after gem init */
> -void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915)
> -{
> -  intel_dmc_fini(i915);
> -
> -  intel_power_domains_driver_remove(i915);
> -
> -  intel_vga_unregister(i915);
> -
> -  intel_bios_driver_remove(i915);
> -}
> -
>  bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915)
>  {
>         return DISPLAY_VER(i915) >=3D 6 && i915_vtd_active(i915);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 6ff8faa1b5ac..01c27a4757a5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -63,6 +63,7 @@ struct intel_power_domain_mask;
>  struct intel_remapped_info;
>  struct intel_rotation_info;
>  struct pci_dev;
> +struct work_struct;
> =20
> =20
>  #define pipe_name(p) ((p) + 'A')
> @@ -521,13 +522,6 @@ void intel_plane_fixup_bitmasks(struct intel_crtc_st=
ate *crtc_state);
>  void intel_update_watermarks(struct drm_i915_private *i915);
> =20
>  /* modesetting */
> -void intel_modeset_init_hw(struct drm_i915_private *i915);
> -int intel_modeset_init_noirq(struct drm_i915_private *i915);
> -int intel_modeset_init_nogem(struct drm_i915_private *i915);
> -int intel_modeset_init(struct drm_i915_private *i915);
> -void intel_modeset_driver_remove(struct drm_i915_private *i915);
> -void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915);
> -void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915);
>  void intel_display_resume(struct drm_device *dev);
>  int intel_modeset_all_pipes(struct intel_atomic_state *state,
>                             const char *reason);
> @@ -536,6 +530,19 @@ void intel_modeset_get_crtc_power_domains(struct int=
el_crtc_state *crtc_state,
>  void intel_modeset_put_crtc_power_domains(struct intel_crtc *crtc,
>                                           struct intel_power_domain_mask =
*domains);
> =20
> +/* interface for intel_display_driver.c */
> +void intel_setup_outputs(struct drm_i915_private *i915);
> +int intel_initial_commit(struct drm_device *dev);
> +void intel_panel_sanitize_ssc(struct drm_i915_private *i915);
> +void intel_update_czclk(struct drm_i915_private *i915);
> +void intel_atomic_helper_free_state_worker(struct work_struct *work);
> +enum drm_mode_status intel_mode_valid(struct drm_device *dev,
> +                                const struct drm_display_mode *mode);
> +int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state =
*_state,
> +                  bool nonblock);
> +
> +void intel_hpd_poll_fini(struct drm_i915_private *i915);
> +
>  /* modesetting asserts */
>  void assert_transcoder(struct drm_i915_private *dev_priv,
>                        enum transcoder cpu_transcoder, bool state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/driver=
s/gpu/drm/i915/display/intel_display_driver.c
> index 882a2586aba4..f7805c6f1b63 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -9,17 +9,47 @@
> =20
>  #include <linux/vga_switcheroo.h>
>  #include <acpi/video.h>
> +#include <drm/display/drm_dp_mst_helper.h>
>  #include <drm/drm_atomic_helper.h>
> +#include <drm/drm_mode_config.h>
>  #include <drm/drm_privacy_screen_consumer.h>
>  #include <drm/drm_probe_helper.h>
> +#include <drm/drm_vblank.h>
> =20
>  #include "i915_drv.h"
> +#include "i9xx_wm.h"
>  #include "intel_acpi.h"
> +#include "intel_atomic.h"
>  #include "intel_audio.h"
> +#include "intel_bios.h"
> +#include "intel_bw.h"
> +#include "intel_cdclk.h"
> +#include "intel_color.h"
> +#include "intel_crtc.h"
>  #include "intel_display_debugfs.h"
>  #include "intel_display_driver.h"
> +#include "intel_display_power.h"
> +#include "intel_display_types.h"
> +#include "intel_dmc.h"
> +#include "intel_dp.h"
> +#include "intel_dpll_mgr.h"
> +#include "intel_fb.h"
> +#include "intel_fbc.h"
>  #include "intel_fbdev.h"
> +#include "intel_fdi.h"
> +#include "intel_gmbus.h"
> +#include "intel_hdcp.h"
> +#include "intel_hotplug.h"
> +#include "intel_hti.h"
> +#include "intel_modeset_setup.h"
>  #include "intel_opregion.h"
> +#include "intel_overlay.h"
> +#include "intel_plane_initial.h"
> +#include "intel_pps.h"
> +#include "intel_quirks.h"
> +#include "intel_vga.h"
> +#include "intel_wm.h"
> +#include "skl_watermark.h"
> =20
>  bool intel_display_driver_probe_defer(struct pci_dev *pdev)
>  {
> @@ -42,6 +72,284 @@ bool intel_display_driver_probe_defer(struct pci_dev =
*pdev)
>         return false;
>  }
> =20
> +void intel_modeset_init_hw(struct drm_i915_private *i915)
> +{
> +  struct intel_cdclk_state *cdclk_state;
> +
> +  if (!HAS_DISPLAY(i915))
> +          return;
> +
> +  cdclk_state =3D to_intel_cdclk_state(i915->display.cdclk.obj.state);
> +
> +  intel_update_cdclk(i915);
> +  intel_cdclk_dump_config(i915, &i915->display.cdclk.hw, "Current CDCLK"=
);
> +  cdclk_state->logical =3D cdclk_state->actual =3D i915->display.cdclk.h=
w;
> +}
> +
> +static const struct drm_mode_config_funcs intel_mode_funcs =3D {
> +  .fb_create =3D intel_user_framebuffer_create,
> +  .get_format_info =3D intel_fb_get_format_info,
> +  .output_poll_changed =3D intel_fbdev_output_poll_changed,
> +  .mode_valid =3D intel_mode_valid,
> +  .atomic_check =3D intel_atomic_check,
> +  .atomic_commit =3D intel_atomic_commit,
> +  .atomic_state_alloc =3D intel_atomic_state_alloc,
> +  .atomic_state_clear =3D intel_atomic_state_clear,
> +  .atomic_state_free =3D intel_atomic_state_free,
> +};
> +
> +static const struct drm_mode_config_helper_funcs intel_mode_config_funcs=
 =3D {
> +  .atomic_commit_setup =3D drm_dp_mst_atomic_setup_commit,
> +};
> +
> +static void intel_mode_config_init(struct drm_i915_private *i915)
> +{
> +  struct drm_mode_config *mode_config =3D &i915->drm.mode_config;
> +
> +  drm_mode_config_init(&i915->drm);
> +  INIT_LIST_HEAD(&i915->display.global.obj_list);
> +
> +  mode_config->min_width =3D 0;
> +  mode_config->min_height =3D 0;
> +
> +  mode_config->preferred_depth =3D 24;
> +  mode_config->prefer_shadow =3D 1;
> +
> +  mode_config->funcs =3D &intel_mode_funcs;
> +  mode_config->helper_private =3D &intel_mode_config_funcs;
> +
> +  mode_config->async_page_flip =3D HAS_ASYNC_FLIPS(i915);
> +
> +  /*
> +   * Maximum framebuffer dimensions, chosen to match
> +   * the maximum render engine surface size on gen4+.
> +   */
> +  if (DISPLAY_VER(i915) >=3D 7) {
> +          mode_config->max_width =3D 16384;
> +          mode_config->max_height =3D 16384;
> +  } else if (DISPLAY_VER(i915) >=3D 4) {
> +          mode_config->max_width =3D 8192;
> +          mode_config->max_height =3D 8192;
> +  } else if (DISPLAY_VER(i915) =3D=3D 3) {
> +          mode_config->max_width =3D 4096;
> +          mode_config->max_height =3D 4096;
> +  } else {
> +          mode_config->max_width =3D 2048;
> +          mode_config->max_height =3D 2048;
> +  }
> +
> +  if (IS_I845G(i915) || IS_I865G(i915)) {
> +          mode_config->cursor_width =3D IS_I845G(i915) ? 64 : 512;
> +          mode_config->cursor_height =3D 1023;
> +  } else if (IS_I830(i915) || IS_I85X(i915) ||
> +             IS_I915G(i915) || IS_I915GM(i915)) {
> +          mode_config->cursor_width =3D 64;
> +          mode_config->cursor_height =3D 64;
> +  } else {
> +          mode_config->cursor_width =3D 256;
> +          mode_config->cursor_height =3D 256;
> +  }
> +}
> +
> +static void intel_mode_config_cleanup(struct drm_i915_private *i915)
> +{
> +  intel_atomic_global_obj_cleanup(i915);
> +  drm_mode_config_cleanup(&i915->drm);
> +}
> +
> +static void intel_plane_possible_crtcs_init(struct drm_i915_private *dev=
_priv)
> +{
> +  struct intel_plane *plane;
> +
> +  for_each_intel_plane(&dev_priv->drm, plane) {
> +          struct intel_crtc *crtc =3D intel_crtc_for_pipe(dev_priv,
> +                                                        plane->pipe);
> +
> +          plane->base.possible_crtcs =3D drm_crtc_mask(&crtc->base);
> +  }
> +}
> +
> +/* part #1: call before irq install */
> +int intel_modeset_init_noirq(struct drm_i915_private *i915)
> +{
> +  int ret;
> +
> +  if (i915_inject_probe_failure(i915))
> +          return -ENODEV;
> +
> +  if (HAS_DISPLAY(i915)) {
> +          ret =3D drm_vblank_init(&i915->drm,
> +                                INTEL_NUM_PIPES(i915));
> +          if (ret)
> +                  return ret;
> +  }
> +
> +  intel_bios_init(i915);
> +
> +  ret =3D intel_vga_register(i915);
> +  if (ret)
> +          goto cleanup_bios;
> +
> +  /* FIXME: completely on the wrong abstraction layer */
> +  ret =3D intel_power_domains_init(i915);
> +  if (ret < 0)
> +          goto cleanup_vga;
> +
> +  intel_power_domains_init_hw(i915, false);
> +
> +  if (!HAS_DISPLAY(i915))
> +          return 0;
> +
> +  intel_dmc_init(i915);
> +
> +  i915->display.wq.modeset =3D alloc_ordered_workqueue("i915_modeset", 0=
);
> +  i915->display.wq.flip =3D alloc_workqueue("i915_flip", WQ_HIGHPRI |
> +                                          WQ_UNBOUND, WQ_UNBOUND_MAX_ACT=
IVE);
> +
> +  intel_mode_config_init(i915);
> +
> +  ret =3D intel_cdclk_init(i915);
> +  if (ret)
> +          goto cleanup_vga_client_pw_domain_dmc;
> +
> +  ret =3D intel_color_init(i915);
> +  if (ret)
> +          goto cleanup_vga_client_pw_domain_dmc;
> +
> +  ret =3D intel_dbuf_init(i915);
> +  if (ret)
> +          goto cleanup_vga_client_pw_domain_dmc;
> +
> +  ret =3D intel_bw_init(i915);
> +  if (ret)
> +          goto cleanup_vga_client_pw_domain_dmc;
> +
> +  init_llist_head(&i915->display.atomic_helper.free_list);
> +  INIT_WORK(&i915->display.atomic_helper.free_work,
> +            intel_atomic_helper_free_state_worker);
> +
> +  intel_init_quirks(i915);
> +
> +  intel_fbc_init(i915);
> +
> +  return 0;
> +
> +cleanup_vga_client_pw_domain_dmc:
> +  intel_dmc_fini(i915);
> +  intel_power_domains_driver_remove(i915);
> +cleanup_vga:
> +  intel_vga_unregister(i915);
> +cleanup_bios:
> +  intel_bios_driver_remove(i915);
> +
> +  return ret;
> +}
> +
> +/* part #2: call after irq install, but before gem init */
> +int intel_modeset_init_nogem(struct drm_i915_private *i915)
> +{
> +  struct drm_device *dev =3D &i915->drm;
> +  enum pipe pipe;
> +  struct intel_crtc *crtc;
> +  int ret;
> +
> +  if (!HAS_DISPLAY(i915))
> +          return 0;
> +
> +  intel_wm_init(i915);
> +
> +  intel_panel_sanitize_ssc(i915);
> +
> +  intel_pps_setup(i915);
> +
> +  intel_gmbus_setup(i915);
> +
> +  drm_dbg_kms(&i915->drm, "%d display pipe%s available.\n",
> +              INTEL_NUM_PIPES(i915),
> +              INTEL_NUM_PIPES(i915) > 1 ? "s" : "");
> +
> +  for_each_pipe(i915, pipe) {
> +          ret =3D intel_crtc_init(i915, pipe);
> +          if (ret) {
> +                  intel_mode_config_cleanup(i915);
> +                  return ret;
> +          }
> +  }
> +
> +  intel_plane_possible_crtcs_init(i915);
> +  intel_shared_dpll_init(i915);
> +  intel_fdi_pll_freq_update(i915);
> +
> +  intel_update_czclk(i915);
> +  intel_modeset_init_hw(i915);
> +  intel_dpll_update_ref_clks(i915);
> +
> +  intel_hdcp_component_init(i915);
> +
> +  if (i915->display.cdclk.max_cdclk_freq =3D=3D 0)
> +          intel_update_max_cdclk(i915);
> +
> +  intel_hti_init(i915);
> +
> +  /* Just disable it once at startup */
> +  intel_vga_disable(i915);
> +  intel_setup_outputs(i915);
> +
> +  drm_modeset_lock_all(dev);
> +  intel_modeset_setup_hw_state(i915, dev->mode_config.acquire_ctx);
> +  intel_acpi_assign_connector_fwnodes(i915);
> +  drm_modeset_unlock_all(dev);
> +
> +  for_each_intel_crtc(dev, crtc) {
> +          if (!to_intel_crtc_state(crtc->base.state)->uapi.active)
> +                  continue;
> +          intel_crtc_initial_plane_config(crtc);
> +  }
> +
> +  /*
> +   * Make sure hardware watermarks really match the state we read out.
> +   * Note that we need to do this after reconstructing the BIOS fb's
> +   * since the watermark calculation done here will use pstate->fb.
> +   */
> +  if (!HAS_GMCH(i915))
> +          ilk_wm_sanitize(i915);
> +
> +  return 0;
> +}
> +
> +/* part #3: call after gem init */
> +int intel_modeset_init(struct drm_i915_private *i915)
> +{
> +  int ret;
> +
> +  if (!HAS_DISPLAY(i915))
> +          return 0;
> +
> +  /*
> +   * Force all active planes to recompute their states. So that on
> +   * mode_setcrtc after probe, all the intel_plane_state variables
> +   * are already calculated and there is no assert_plane warnings
> +   * during bootup.
> +   */
> +  ret =3D intel_initial_commit(&i915->drm);
> +  if (ret)
> +          drm_dbg_kms(&i915->drm, "Initial modeset failed, %d\n", ret);
> +
> +  intel_overlay_setup(i915);
> +
> +  ret =3D intel_fbdev_init(&i915->drm);
> +  if (ret)
> +          return ret;
> +
> +  /* Only enable hotplug handling once the fbdev is fully set up. */
> +  intel_hpd_init(i915);
> +  intel_hpd_poll_disable(i915);
> +
> +  skl_watermark_ipc_init(i915);
> +
> +  return 0;
> +}
> +
>  void intel_display_driver_register(struct drm_i915_private *i915)
>  {
>         if (!HAS_DISPLAY(i915))
> @@ -73,6 +381,72 @@ void intel_display_driver_register(struct drm_i915_pr=
ivate *i915)
>         drm_kms_helper_poll_init(&i915->drm);
>  }
> =20
> +/* part #1: call before irq uninstall */
> +void intel_modeset_driver_remove(struct drm_i915_private *i915)
> +{
> +  if (!HAS_DISPLAY(i915))
> +          return;
> +
> +  flush_workqueue(i915->display.wq.flip);
> +  flush_workqueue(i915->display.wq.modeset);
> +
> +  flush_work(&i915->display.atomic_helper.free_work);
> +  drm_WARN_ON(&i915->drm, !llist_empty(&i915->display.atomic_helper.free=
_list));
> +
> +  /*
> +   * MST topology needs to be suspended so we don't have any calls to
> +   * fbdev after it's finalized. MST will be destroyed later as part of
> +   * drm_mode_config_cleanup()
> +   */
> +  intel_dp_mst_suspend(i915);
> +}
> +
> +/* part #2: call after irq uninstall */
> +void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915)
> +{
> +  if (!HAS_DISPLAY(i915))
> +          return;
> +
> +  /*
> +   * Due to the hpd irq storm handling the hotplug work can re-arm the
> +   * poll handlers. Hence disable polling after hpd handling is shut dow=
n.
> +   */
> +  intel_hpd_poll_fini(i915);
> +
> +  /* poll work can call into fbdev, hence clean that up afterwards */
> +  intel_fbdev_fini(i915);
> +
> +  intel_unregister_dsm_handler();
> +
> +  /* flush any delayed tasks or pending work */
> +  flush_scheduled_work();
> +
> +  intel_hdcp_component_fini(i915);
> +
> +  intel_mode_config_cleanup(i915);
> +
> +  intel_overlay_cleanup(i915);
> +
> +  intel_gmbus_teardown(i915);
> +
> +  destroy_workqueue(i915->display.wq.flip);
> +  destroy_workqueue(i915->display.wq.modeset);
> +
> +  intel_fbc_cleanup(i915);
> +}
> +
> +/* part #3: call after gem init */
> +void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915)
> +{
> +  intel_dmc_fini(i915);
> +
> +  intel_power_domains_driver_remove(i915);
> +
> +  intel_vga_unregister(i915);
> +
> +  intel_bios_driver_remove(i915);
> +}
> +
>  void intel_display_driver_unregister(struct drm_i915_private *i915)
>  {
>         if (!HAS_DISPLAY(i915))
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/driver=
s/gpu/drm/i915/display/intel_display_driver.h
> index 744117b04ed4..947b666575ee 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
> @@ -12,7 +12,14 @@ struct drm_i915_private;
>  struct pci_dev;
> =20
>  bool intel_display_driver_probe_defer(struct pci_dev *pdev);
> +void intel_modeset_init_hw(struct drm_i915_private *i915);
> +int intel_modeset_init_noirq(struct drm_i915_private *i915);
> +int intel_modeset_init_nogem(struct drm_i915_private *i915);
> +int intel_modeset_init(struct drm_i915_private *i915);
>  void intel_display_driver_register(struct drm_i915_private *i915);
> +void intel_modeset_driver_remove(struct drm_i915_private *i915);
> +void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915);
> +void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915);
>  void intel_display_driver_unregister(struct drm_i915_private *i915);
> =20
>  #endif /* __INTEL_DISPLAY_DRIVER_H__ */
> --=20
> 2.39.2
>
