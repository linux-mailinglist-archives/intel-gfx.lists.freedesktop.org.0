Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D955A9AB577
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 19:51:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FF6B10E6F9;
	Tue, 22 Oct 2024 17:51:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ME7dYaZ2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFCE110E6F7;
 Tue, 22 Oct 2024 17:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729619504; x=1761155504;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=scl1kABF5Hsg1STx730WUhE59EpXp7mgXZNf8OKtz5I=;
 b=ME7dYaZ2/TrNuB5XkDYCCo8/AK6Zhjb+tRtdjqSX7Wo9HHfQ8CdG8RCP
 Wd4tDjWR9uhH8eZQ/bpFkmK+UyEYqCxYRVAFwO7BaVVlXS3zoCa2MhILw
 mux66idWUpYLgGRhXHxQlj6E4nsq8AUEayGUVJZomhkIg2WZteCRee1Sn
 lfT4mqSH9qnAQRGG3v3Ho1UL2Msh6u5O5iMCERhTDqJ5KVBpuCaY38fHk
 zcpiERQcDxFgbBupxjwB+7i8POqL9Q4ke3Eu3+EwQ+1MUooU/sygS8fMB
 MjLTbJ2iyRZBzEJXVlWdUGv7zy9WRJAQ/WClP6TopMdaQL3WEdlQJndhh Q==;
X-CSE-ConnectionGUID: PcoPNc4CQmWpAm270q7RJQ==
X-CSE-MsgGUID: Bez+rNa6R4uZ60bNpEJAog==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="32982854"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="32982854"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 10:51:44 -0700
X-CSE-ConnectionGUID: dDxSbn9AT6+iYPUbkmHsSg==
X-CSE-MsgGUID: A/UzVPxNRKenXLa77GxdWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="110764914"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 10:51:44 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 10:51:42 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 10:51:42 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 10:51:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HCqxF1pVKqhsfM0XCJlD3/G3kb4bh2KmZ1sFrXCZyySl2TnUameY9blI6b6kKtfCKsbZlA56ctqbLa2EHgWZgi9AJMoZxfUBpH9Vxgv91Y60VydaldIAFw494lROWvKdSLyCjSt43y1dyLMArIPTMOYKoacIk0Pbm4GE4yMpR+M/LF0hFXy/V3A+jrb+eFSRqCwbqZyQlOeTpfTtce0PBZjsIzIUwDy6uZlJ3xICHpX4rUg6caNFiB2GBgnAznVXjM6oJXRQBUCrO1WM3HCnBuIKKs1xOAUsVP9a48m1pl+L1j6PqjtXH07AvBex0BY7VcPBiZKdea9ZfmHpf1DRVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yEYqZTxlogjqnH8gnJ6gwUmW1yPQ1esYDJRnZna9iHo=;
 b=FRFsZWDsGUS1gWQAnmLUQp2408h7/Ruw7oPfRbVyOTSLAqvyrU8CvV8iJCGh2tvA/3TiHWHeivDyOP0agrpc5OuccVFkUKYna0/mj1KqWdDC95gcJogtpDcdqIuKoUkWEN3XfucskBqTK2gFWPmkP6AVUCn6Gy0/7H46NIHgxESpZ+IzPLkx8FaDBEXINOWG3q6m86k1JIwRbiKfgbQucxRFdfXBq7vb4zG2iROp8D34gySsxKTInbIUPh0X3N0MtB25NNo9IsSJxMA7we65UblxGIEmlXFpGLGtp4xXInSbzOQ8TJ1JotOKyi0CoZ6bQNSu5x47M728MY3UjGjL5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CY8PR11MB7244.namprd11.prod.outlook.com (2603:10b6:930:97::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Tue, 22 Oct
 2024 17:51:39 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8069.020; Tue, 22 Oct 2024
 17:51:39 +0000
Date: Tue, 22 Oct 2024 13:51:35 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH v4 07/15] drm/i915/display: add platform member to struct
 intel_display
Message-ID: <ZxfmJ2n0T-3Xsgjy@intel.com>
References: <cover.1729518793.git.jani.nikula@intel.com>
 <bfc651942b227b35d5e6a6c2649530c47db9d207.1729518793.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <bfc651942b227b35d5e6a6c2649530c47db9d207.1729518793.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0153.namprd04.prod.outlook.com
 (2603:10b6:303:85::8) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CY8PR11MB7244:EE_
X-MS-Office365-Filtering-Correlation-Id: 0922d24a-45e6-438d-4e55-08dcf2c22e71
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?38sgKav10kSM8YiiACbJWftPeAYji2YoAcNjy1PLQVSzOpZDTCz0KotqfidL?=
 =?us-ascii?Q?Cxoj16ZZNFkYCZR1FciaM2j1v/cHS+SZIB/WQx4nCKkkssqV+0gD/YhpnlPl?=
 =?us-ascii?Q?CKdd+uSZ/2s+s5c0tUYi8YQdHmsZjSIZMS9yhf0FLUYZo9ktaDn+pQ+HNzFx?=
 =?us-ascii?Q?MhDCrWsPLbONKkMqv5xxWZ6D7AD3W0j8XdQFKY7AUXkHSObbeIodhHIew4no?=
 =?us-ascii?Q?uSKly9r1rLty3xrzZAlv8hffRiEVp0NtnxE6uGdaR2nBaWmCYOJ66Mtf9N9W?=
 =?us-ascii?Q?TMUff0E4cMo53fm7pRuQBQJIOLdnGzhjKznwz3tu+ZQ/n0QWGye6k65KC2iN?=
 =?us-ascii?Q?bIpoBZOMZWrcVoLGTMTH5SGteLNYweBSUfRp+qge9sNlp/D2suFikTFX80Li?=
 =?us-ascii?Q?ej6h1HjP++W5y0U+n/goOVCe6U4xv0ManUBASpwniBgh8wMT5iwVRuEDtHFm?=
 =?us-ascii?Q?xHq9YudI3CwLpcx6erBOg9X3HmOACLR5lxl6QBodUmDIh7VrS5dAn3oriL/I?=
 =?us-ascii?Q?UcdWHTNnRqUsBSUGMxZqy6a0G3gsZbd1iNJvX/H0ZHpQK4HpTtINu1jiHLS2?=
 =?us-ascii?Q?X6Iu/vFkOurYTk/LVNGAqOhveD0fccy2g7ynd9S2pIjwdSAMOZQxGJq5oiXM?=
 =?us-ascii?Q?7hWnCzCeFYnpY8zKQRMLaokvMRwkk5RJgpiSK1jUClx60XRxCaRBUv+jIbxh?=
 =?us-ascii?Q?gBsTLfNTq0Wn3KciWpjYXD2Xz5PVZUTYu3aHM9mS0jctqZSZMGCTT4vWuFOu?=
 =?us-ascii?Q?QXaiXJd1VSQMgvFdzrnz3RZ8J4FhKU0tQGMCGB0ARIbPLJQHDEZXitJGaN2y?=
 =?us-ascii?Q?+B9irjPapIFJLKiX2XjhXwd8bwZuFq4bH9c4tHSu/QRBoXCi0Xnb2fB9m4X8?=
 =?us-ascii?Q?Ea/KxDl5z2j4FNGXoGORJdJXbPal077gMzupmYfiy1fpwGOqE8o5rJMopJIM?=
 =?us-ascii?Q?jTYzwlTtDn9uLVrM6lGsP5iJtdZBfkllpGj1fk5V5bZjKkpdFvpTTI/Y5cbG?=
 =?us-ascii?Q?wVEA0rWmy8+06BJwrfrfN5/KBAdOjKna38/w+XCrr91AI7m/QJmewNwZBIcr?=
 =?us-ascii?Q?XkLfdrXKfu+sNd8sLp2WKHwCR2Y2VvwBYsSvdkDi3XcqHAdQsCpU65oNbvWb?=
 =?us-ascii?Q?nahY3Tb8/vVnJWtArKqNsT+rfI/QNxjq/sHrlqal5LCqOSU5I7LiYDuHt77j?=
 =?us-ascii?Q?SkE6WHoi+A6TtdqYfv5Yu5RmiV3CNbdMt2WLsL/En4fOunAh3bj9xbHx6ITe?=
 =?us-ascii?Q?IV5EFHBdqWql/CWNyE7eeDghGHl27R3Wv5JMha2W8Cvp5Lrnwi7ixs6s/yAx?=
 =?us-ascii?Q?5ewVfsJbQR17FsjFohfVP9dB?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kyUaCYkmOi9ZLSf1Nk+6SJ49u6tJ1lA+ZNjmQxESA0rJx8RPnOBr9oWUw3FX?=
 =?us-ascii?Q?w33bsUUQxl9nnDHZQhHQRRcVRz538DgAwVF3Be+oSt005N5zqp3VT1orsWpY?=
 =?us-ascii?Q?EJxIfPQIJTkoEHYhYiKZ4lGFldh66cQBtX0SpsXeRoXDSLeVBwyV8GyF/8yW?=
 =?us-ascii?Q?GPz+VQzXLDRKCP5QvJmeDoOkIR8j+LPCq/r/VaoEVJkCwpxSyllBrkZ+Alq0?=
 =?us-ascii?Q?5sghJL2xv29FZJc+J4JJolRrTSMlLe9kjDwsuOAdLXe1WiEqiGSeK/9ZiBnW?=
 =?us-ascii?Q?fITKXN2Ys04s8Hw5rRcbT4/YDNeok8cHbZsYxNeEaTe910WmAg8O08+gLY+x?=
 =?us-ascii?Q?76fkrAHRz2KAEbh/TCgv1jRpzzfnUwtjG3e+ty8gq4j5Ba0a8VaN4DOJlhF0?=
 =?us-ascii?Q?GfzJPJ2Z3Gi8I5oMoR0B9pF+3NSymZ+jmKU/bmq2rVf5TPr/0V+yg0xLdHPq?=
 =?us-ascii?Q?HLraD7njkUpxjoawGL+gON1gdn0giV9jchEogIEcV5KfwQQ2DHGivvNxQfVR?=
 =?us-ascii?Q?OtDk1SXlkL8IYFOx2FF/e2iinc6OTE9jnv1zJ6mt/lPLmyNMMGJzilIPYRhv?=
 =?us-ascii?Q?r9SZ95wdKSgqXOWC0AX+mO1ePfFVzInKHMHwZcbHufe6WHFEKkIwqbuyl5aQ?=
 =?us-ascii?Q?/o+eUn3ZlonIm98JjSdU43MkF8zl6r40ewjKFqTgt4eGuhTsw+1al2f0PlW2?=
 =?us-ascii?Q?Pi2dFXkpCnO+59o/2BF2qZYLFKT4onV/Tcf4dfSxdqcvZacB1AnK45RVyNSN?=
 =?us-ascii?Q?oA4BTPArUFry6GmMnd6unWjpAD2MgHQWn6B051R3wZ/YUUOmNub41GdujWHe?=
 =?us-ascii?Q?X4kM1lIF85EZc7r8v6mIzGo3SCdf/VagDj6uxkiAfv/Ow0D0dNfELb/Pmdr/?=
 =?us-ascii?Q?dExZ/9fPXSa6+7cnPWtKkFNDE95m47L8m9dRGS1xuGQnPVb+voTyj/UeZ0Pj?=
 =?us-ascii?Q?D+N1zhdPfhrr8XX+v0AeCTsvCHVaO01To1LtjcWHAwLRWCcR4LM1DIzXzQgE?=
 =?us-ascii?Q?2u5epoVvKAiymdbYOwPWxXTFaOzbjc4wqoRapEu9s+Xmp0wdhSkzEBsVGd7X?=
 =?us-ascii?Q?3zhSeX7babC0FHm879q/sWcLjFUdc6+ugjkXYN0sSf4gmLUP+2PMSBTYSh1+?=
 =?us-ascii?Q?Siq04ArXMYaFPlPGyrY+BIPKR9JxeW9vnvafOdhoIm4nr5np/wEUpFVxM39Z?=
 =?us-ascii?Q?2dWvosuLoCvc63rQruX7AqLDSqk2svlao6xlbHJ7UGvAd8j2kzJZD9qcq9a0?=
 =?us-ascii?Q?ZhCJTkxE+KImIRJ1GY5PeV9DWOjtsyBjgQyreSP6dmLQpd9zAJJDE6OpBEZt?=
 =?us-ascii?Q?nNBzQR1RfMHsrQT2vJfQ9GJpldU2BFxqUT6AawIySHvypyhlGUxofbSE5ua7?=
 =?us-ascii?Q?x2hMWWgrtSfir44tZfMtfqj180seamhyrbxyBZk+ujIRxyQp4D74/UElILlO?=
 =?us-ascii?Q?IqdA6DexYTBkQws1DowC/G6n3QY3oRWvATRA2cKtGNvSZ2H5/b30NA5TzMvU?=
 =?us-ascii?Q?emg43yJWePQo6CdlmnhLCpk8K4wbUjON/aXFV+qY8QD4HByWk1AYXZnP45se?=
 =?us-ascii?Q?hh7avQVy+PpnphXYxfIPM0lCt8iMpuCsPk1sdjHnnHvtppZFV2557b8b045i?=
 =?us-ascii?Q?tg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0922d24a-45e6-438d-4e55-08dcf2c22e71
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 17:51:39.8170 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RAAaZ1FO4ODm6tQvS2AiIzGR4Q1+IyE8gLvJ+WEuMHIlTt1lD6vVwo7KusasYdNvAZQMbwKSTXYcn8jEbzZi6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7244
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

On Mon, Oct 21, 2024 at 04:54:08PM +0300, Jani Nikula wrote:
> Facilitate using display->platform.haswell and
> display->platform.haswell_ult etc. for identifying platforms and
> subplatforms.
> 
> Merge the platform and subplatform bitmaps together, and check that
> there's no overlap.
> 
> v4:
> - Lower case, s/is/platform/
> 
> v3:
> - Fix sanity check on display->is after merging subplatform members
> 
> v2:
> - Use bitmap ops
> - Add some sanity checks with warnings
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_display_core.h |  3 ++
>  .../drm/i915/display/intel_display_device.c   | 35 +++++++++++++++++--
>  2 files changed, 36 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 45697af25fa9..45b7c6900adc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -284,6 +284,9 @@ struct intel_display {
>  	/* drm device backpointer */
>  	struct drm_device *drm;
>  
> +	/* Platform (and subplatform, if any) identification */
> +	struct intel_display_platforms platform;
> +
>  	/* Display functions */
>  	struct {
>  		/* Top level crtc-ish functions */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 0e835f714bf5..c124df204166 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -1525,6 +1525,25 @@ static enum intel_step get_pre_gmdid_step(struct intel_display *display,
>  	return step;
>  }
>  
> +/* Size of the entire bitmap, not the number of platforms */
> +static unsigned int display_platforms_num_bits(void)
> +{
> +	return sizeof(((struct intel_display_platforms *)0)->bitmap) * BITS_PER_BYTE;
> +}
> +
> +/* Number of platform bits set */
> +static unsigned int display_platforms_weight(const struct intel_display_platforms *p)
> +{
> +	return bitmap_weight(p->bitmap, display_platforms_num_bits());
> +}
> +
> +/* Merge the subplatform information from src to dst */
> +static void display_platforms_or(struct intel_display_platforms *dst,
> +				 const struct intel_display_platforms *src)
> +{
> +	bitmap_or(dst->bitmap, dst->bitmap, src->bitmap, display_platforms_num_bits());
> +}
> +
>  void intel_display_device_probe(struct drm_i915_private *i915)
>  {
>  	struct intel_display *display = &i915->display;
> @@ -1564,13 +1583,25 @@ void intel_display_device_probe(struct drm_i915_private *i915)
>  	       &DISPLAY_INFO(i915)->__runtime_defaults,
>  	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
>  
> -	drm_WARN_ON(&i915->drm, !desc->platform || !desc->name);
> +	drm_WARN_ON(&i915->drm, !desc->platform || !desc->name ||
> +		    !display_platforms_weight(&desc->platforms));
>  	DISPLAY_RUNTIME_INFO(i915)->platform = desc->platform;
>  
> +	display->platform = desc->platforms;
> +
>  	subdesc = find_subplatform_desc(pdev, desc);
>  	if (subdesc) {
> -		drm_WARN_ON(&i915->drm, !subdesc->subplatform || !subdesc->name);
> +		drm_WARN_ON(&i915->drm, !subdesc->subplatform || !subdesc->name ||
> +			    !display_platforms_weight(&subdesc->platforms));
>  		DISPLAY_RUNTIME_INFO(i915)->subplatform = subdesc->subplatform;
> +
> +		display_platforms_or(&display->platform, &subdesc->platforms);
> +
> +		/* Ensure platform and subplatform are distinct */
> +		drm_WARN_ON(&i915->drm,
> +			    display_platforms_weight(&display->platform) !=
> +			    display_platforms_weight(&desc->platforms) +
> +			    display_platforms_weight(&subdesc->platforms));
>  	}
>  
>  	if (ip_ver.ver || ip_ver.rel || ip_ver.step) {
> -- 
> 2.39.5
> 
