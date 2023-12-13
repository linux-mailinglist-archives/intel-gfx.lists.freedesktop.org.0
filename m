Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D54E3811BA0
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 18:55:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3666010E803;
	Wed, 13 Dec 2023 17:55:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DC2910E803
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 17:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702490104; x=1734026104;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=E5Ai2A3t2Ckj+YcL9uGla5o24hmlAJZRuKyfmLEGGaM=;
 b=V9IcfWELcaFl465RW834EwDsnOLszht39q+111BijtUXwmzx+7awgC+g
 DryePU0ygtUJumWCJNl9nCog8rcb/6q2gBilyxUH+WbsqIxHalhKMAcgZ
 nDRlRypnmZGf7fz5jppsG9NEjf1SLtMPpNwIImvW0MmjKiPJh37P3CdeF
 TRBsQRcNWv9LdXRwUZWjco2avY1amUDAlbOsddUVPIXsIcIXY56GhlCOp
 8DP7o5lRmXcDswWsnL5dbvCCnjaG8jfnyp6l0SagdBEemC0B7s5Rs0FaP
 nz+Qg2o5hkON4n1YENZratQl0kOpnNetlYmCfZLJ2nlNVR7UFNRyy9wPP g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="397785589"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; d="scan'208";a="397785589"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 09:55:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="723745123"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; d="scan'208";a="723745123"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Dec 2023 09:55:03 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Dec 2023 09:55:03 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 13 Dec 2023 09:55:03 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 13 Dec 2023 09:55:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hTLf4y5n1nGxN9Hcr/fN7WgyjRcxu/LEE+22Z0F+oMPoS2eb5kWnOkHqKjcAik6jwcc02AhT3yW331cra/RsrnQiZUGoGTmin4jtQ5oUzmiY+3xbZYpjWAmpoEQCFpjBgUswMxysYSTTC0HSCUWPNuWrLcgClRsPH/dAAIBkgLWyaIDXlmU+xG58++Dk41796T9x3skKyV2mmdbMrv5wHVFS0D7JFp2/iNZ50Qo7MO05Yfn267WYZMOrraCJ8tF3ny62dpLUuCZVfaE3T1+4A21ogmeu1r0hSe0y1z8x83iolZM5U59e3GzKGJOvasPv5HoZccj9H0XJqSAPDDjbcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+keJvJnbYRJJY6eL+LhuP6x9Z0ly9F4G2kE7Gycf8is=;
 b=PZ5JuFr4F0FRQwtn3DZ5KRosCbdHNHAXscA4BzVuApWwYhCUVBepFz250naPCAHuaNN6y2z50+0BO6N8wEqT3YxWglMT2yQC8NiXjxPsVyLrxPCXoMpfgWLHMJaJ9e5RdrzD4a33EunYqrpHnysECzXIW9bAd6i8wvCGLqtRd2w5NaxurZ7KOmAOzlTFb0NLC/aYOg0sIP3zsrU/7CMjKxvQeGy3Bs8Q80qXEU3l9H1HzxZ2UNGgfYp3wfSbgDHyeVvcK0kwpqIhmcrOcwcekk67LTAcOWr6ymT6Mv1LJ9lppVBH1VbEWUyYgfzt4LWZvDXVmooky3rB8gO7nxvjZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH7PR11MB6930.namprd11.prod.outlook.com (2603:10b6:510:205::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.26; Wed, 13 Dec
 2023 17:54:56 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179%5]) with mapi id 15.20.7091.022; Wed, 13 Dec 2023
 17:54:55 +0000
Date: Wed, 13 Dec 2023 12:54:52 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>
Subject: Re: [PATCH v3 1/2] drm/i915/display: Add support for darskscreen
 detection
Message-ID: <ZXnv7CnuOGKb70Hj@intel.com>
References: <20231213090641.1153030-1-nemesa.garg@intel.com>
 <20231213090641.1153030-2-nemesa.garg@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231213090641.1153030-2-nemesa.garg@intel.com>
X-ClientProxiedBy: SJ0PR05CA0072.namprd05.prod.outlook.com
 (2603:10b6:a03:332::17) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH7PR11MB6930:EE_
X-MS-Office365-Filtering-Correlation-Id: ffed8d39-7eb7-4cbf-6b87-08dbfc049d7d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xJwbIFHgQ+zs4AluPBATOtH7pWcTmQfk8kOMGs4aIeQNCT6s743OXgJVt+b+uZgwDD5khfybG9OWsswyCiOxOB/jRDefF2/tjgr/JzmK8vCVQAxt1NgCMfIZrLNGXcbq+RMnW7ykJtapY/G7ikGyYkegTkCD+nJZUHdMX0BGXGEp4tfEoNMTDY/Eu6K6w9tbGB8TpSvoE91FvWuowoRJAkSs11FdOJdcTuLLyGfoNPNt4Wa/7R65/ye+T2F55gcYEo3wAn7WR5v3Dr6lga/9z6+SRmnbmVH11q83HC2QvfYLV6MJ5klk9VPeRAJYBH1vhslezgDUz8u/fesl9JvEvrjIHwMcKqRODg1yGFPu+z/VB31KF4w/YaM7Mcpb6Z4qDaejkZaFOwzQ87xpbVAETfMH04TSG3FrpLy4RR4SJpTH2FN5ilWeLovgk1nBIIvdcwJyE37RdiCmI+WqTM5eHFwvNZmSR9pGrieVpzVViRuvFNi/pK07iuJxSk+PdPoFm5qE5UcQp0bR+d1fbRFENVcr7Kup/GbreML4eQRd3X53i1W4E/CXE8qfV3VBbTMh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(136003)(346002)(396003)(39860400002)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(5660300002)(2906002)(4326008)(6486002)(6862004)(8936002)(44832011)(37006003)(316002)(66556008)(66946007)(66476007)(8676002)(6666004)(6512007)(6506007)(478600001)(41300700001)(6636002)(2616005)(26005)(83380400001)(38100700002)(86362001)(36756003)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?QjgZo4CFUML9KLfDjOpeBL3afo1GgKF2k3vZrH3CL7u1I/R9x++Wydjuq4?=
 =?iso-8859-1?Q?cFUiWdvq4An1VZ6LPCSPfFOMbgUUz4jvMNqjeSZQpt3PrjI7+F/3CqhFQk?=
 =?iso-8859-1?Q?bglESBR1JvuyqLx/VaOv8mn9anRLOY+0XE+y9FU4K3R/L8wMeLoDYu29PB?=
 =?iso-8859-1?Q?YB+RVj32v1xQl+shOdwmfytRHlC+uN1LgWgJTBZg7XrXSo8uk9I0L3upY1?=
 =?iso-8859-1?Q?JiIp4N5x0Xp+mjjOyLTaXASMG0zU+xQxTL/dgzuMe8jaVrCMc4+nSaJ/qN?=
 =?iso-8859-1?Q?4cavAt+ZOwghLkng3wADKW/knIG6IyLDHm/vff3ynvo+AQqPK/0daSk/gz?=
 =?iso-8859-1?Q?/YgZtQJwgaZ3u14UUGGEz3WAFF+hZMoQ3vKVyY8Df8287J8PDGVaVP7nGA?=
 =?iso-8859-1?Q?6jI+DPyiHoguFw5MA8Cjgxo20lrU2jtY72OD6XqfG95sGtsO4D69NQ65qU?=
 =?iso-8859-1?Q?AySUF7mqy/dE9ql/CFHzWMOZVhZbgIgDhejhkxvFrz4tR4VbWq/wyNcqXF?=
 =?iso-8859-1?Q?nizuNfhKZ6QMEOweHIrRJIMGuEFJn3tJ3UCr6V/o+ALJNroCG28dl0bVqu?=
 =?iso-8859-1?Q?JIpN8fCSb6B9jHb+S442gqGStmnR6BkqHjNfCZjTMwHfWakAtNG18LBSV+?=
 =?iso-8859-1?Q?lZ+J/GN6JasNoNSxBot3ADiE09TNSzedrZt0no5Eqwo/Y7Z/OxYo3NCepG?=
 =?iso-8859-1?Q?3OhO9zKyxGSybZyfXQ27a/Zro1r95kkK84nXJSv0N4nuHdyr+8vBLd3IVh?=
 =?iso-8859-1?Q?+qhdFRI1Ml7C+dELvt84/+hg++/hE38ZzGxh5WR13k0fZVedmn6HCDyZBc?=
 =?iso-8859-1?Q?JBsqLLVUeIcSyjmtfVW81sAKzj7LGnjlQT6bP6EYuVRkDuVnWJy25gESaP?=
 =?iso-8859-1?Q?JpFyaBNzpgHyoLEWplwWShYcC9WJ6NvXtRaWu9fQvot+1GGBcJZ2XIhYCX?=
 =?iso-8859-1?Q?ZAWC70oSOSEW2A5PInljpYO8lX7250QPbS9IXhQ/Mu0vhdhjJlCZNOWOJ5?=
 =?iso-8859-1?Q?8su654gMmklkImSgQYuw7CvBSOTaf8VqvR6XsKARBFJ2seXyeqWzBvl4fi?=
 =?iso-8859-1?Q?bDGcIBpfaGp2uf3go2AGkHp/LmM1kkUBOg0bvy8DYnt3r2YksitGCaZANK?=
 =?iso-8859-1?Q?XCvk6B2hIeeSjln0rlTRI0Z4/nJhs3guwPo00iIl3hmXiGSulZ6ZCjeNZy?=
 =?iso-8859-1?Q?/j8crgWyeq0Q3R6BQ6OCJ38r9+Q1EhaNulA4QUFKPddK8gbQsntwFdIOB5?=
 =?iso-8859-1?Q?KrRS0q4LWjovz8f4/b1bZQjwiBiTM+8OgojvZU7nMopMHY+yYJrNK9rGQ9?=
 =?iso-8859-1?Q?xpQHx6DLjTvnTwiQOVWEcgrDBGaBaDO3461R5885EqRCPLAPc5FNiVII2P?=
 =?iso-8859-1?Q?wnWS31Owr1F6zqjFue+FGcxIOsYKFClyCMwmsOJy0X0GDw9JMcqXBFcpKg?=
 =?iso-8859-1?Q?dcmh9zY8Kx279hAG6pbVJ93V1z3WdwgYJUQLSrCxthvHhXv91vckbevtBM?=
 =?iso-8859-1?Q?nVadsHWfAnJn9PSZnoUWUsnOfXqMRZdYjvgM4MaEw/myLKTtvp7uVYLdmY?=
 =?iso-8859-1?Q?+NEWjrTd4TJ6N49j+GOWhI98UjKCl2UpVvDwyyvIaJuDyLqzfVC9I+yTeP?=
 =?iso-8859-1?Q?bwrK8QQLaqTZYphpOLGvTIpqp87G83W/m2?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ffed8d39-7eb7-4cbf-6b87-08dbfc049d7d
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Dec 2023 17:54:55.8237 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2mrMjYm2cuMsLL+EzSV/p3NYUy41Q0av0KreaA2PkqH1rZuYmrJSPQhKCwNh6F71d2tfMvrOT8Rrim49Gn/7Ug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6930
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

On Wed, Dec 13, 2023 at 02:36:40PM +0530, Nemesa Garg wrote:
> Darkscreen detection checks if all the pixels of the frame are less then
> or equal to the comparision value. The comparision value is set to 256
> i.e black. So upon getting black pixels from the pipe, the dark screen
> detect bit is set and an error message will be printed.

Why? Who is using that? How?

I had to go to the mailing list archive to see that you had provided
an initial answer to Jani, but failed to add this information back
to the patch.

Even though,  without the actual usage of the (un-implemented) debugfs
it is hard to accept that answer as the why.

Please make IGT cases that really exercise this idea where you know
that the screen shouldn't be ever black but suddently you are getting
some black screens.

But also, why not simply using the CRC checks? even if the CRC checks
are not global, you could create a test case where you deliver a blank
screen and get the result and then you keep checking if the CRC is
different from that blank crc.

So, besides the documented why reason, and examples this commit message
needs to tell what is this solving that is not already solved by
other approaches that we have in IGT, etc.

The idea doesn't look solid or at least not entirely 'sold' yet.

> 
> v2: Addressed review comments [Jani]
> v3: Addressed review comments [Arun]
> 
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |  1 +
>  .../gpu/drm/i915/display/intel_darkscreen.c   | 95 +++++++++++++++++++
>  .../gpu/drm/i915/display/intel_darkscreen.h   | 26 +++++
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  drivers/gpu/drm/i915/i915_reg.h               |  8 ++
>  drivers/gpu/drm/xe/Makefile                   |  1 +
>  6 files changed, 133 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index dc2469a4ead7..0322105a4c05 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -244,6 +244,7 @@ i915-y += \
>  	display/intel_crtc.o \
>  	display/intel_crtc_state_dump.o \
>  	display/intel_cursor.o \
> +	display/intel_darkscreen.o \
>  	display/intel_display.o \
>  	display/intel_display_driver.o \
>  	display/intel_display_irq.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_darkscreen.c b/drivers/gpu/drm/i915/display/intel_darkscreen.c
> new file mode 100644
> index 000000000000..7c42988af354
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_darkscreen.c
> @@ -0,0 +1,95 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2023 Intel Corporation
> + *
> + */
> +
> +#include "i915_reg.h"
> +#include "intel_de.h"
> +#include "intel_display_types.h"
> +
> +#define COLOR_DEPTH_6BPC 6
> +#define COLOR_DEPTH_8BPC 8
> +#define COLOR_DEPTH_10BPC 10
> +#define COLOR_DEPTH_12BPC 12
> +
> +#define COMPARE_VALUE_6_BPC 4
> +#define COMPARE_VALUE_8_BPC 16
> +#define COMPARE_VALUE_10_BPC 64
> +#define COMPARE_VALUE_12_BPC 256
> +
> +#define COMPARE_VALUE_CALCULATION_FACTOR 12
> +
> +/*
> + * Check the color format and compute the compare value based on bpc.
> + */
> +void intel_dark_screen_enable(struct intel_crtc_state *crtc_state)
> +{
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	unsigned int frame_time_in_us;
> +	u32 comparevalue;
> +
> +	if (!crtc->dark_screen.enable)
> +		return;
> +
> +	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB) {
> +		drm_err(&dev_priv->drm,
> +			"RGB format not supported:%c\n",
> +			pipe_name(crtc->pipe));
> +		return;
> +	}
> +
> +	switch (crtc_state->pipe_bpp / 3) {
> +	case COLOR_DEPTH_6BPC:
> +		comparevalue = COMPARE_VALUE_6_BPC;
> +		break;
> +	case COLOR_DEPTH_8BPC:
> +		comparevalue = COMPARE_VALUE_8_BPC;
> +		break;
> +	case COLOR_DEPTH_10BPC:
> +		comparevalue = COMPARE_VALUE_10_BPC;
> +		break;
> +	case COLOR_DEPTH_12BPC:
> +		comparevalue = COMPARE_VALUE_12_BPC;
> +		break;
> +	default:
> +		drm_dbg(&dev_priv->drm,
> +			"Bpc value is incorrect:%d\n",
> +			crtc_state->pipe_bpp / 3);
> +		return;
> +	}
> +
> +	comparevalue = comparevalue <<
> +		(COMPARE_VALUE_CALCULATION_FACTOR - crtc_state->pipe_bpp / 3);
> +
> +	intel_de_write(dev_priv, DARK_SCREEN(cpu_transcoder),
> +		       DARK_SCREEN_ENABLE | DARK_SCREEN_DETECT |
> +		       DARK_SCREEN_DONE | DARK_SCREEN_COMPARE_VAL(comparevalue));
> +
> +	frame_time_in_us = (1000 / drm_mode_vrefresh(&crtc_state->hw.adjusted_mode)) * 2;
> +
> +	intel_de_wait_for_set(dev_priv,
> +			      DARK_SCREEN(crtc->config->cpu_transcoder), DARK_SCREEN_DONE,
> +			      frame_time_in_us);
> +
> +	if (intel_de_read(dev_priv, DARK_SCREEN(crtc->config->cpu_transcoder)) &
> +			  DARK_SCREEN_DETECT) {
> +		drm_err(&dev_priv->drm,
> +			"Dark Screen detected:%c\n",
> +			pipe_name(crtc->pipe));
> +	}
> +
> +	intel_de_rmw(dev_priv, DARK_SCREEN(crtc->config->cpu_transcoder), 1, DARK_SCREEN_DETECT |
> +		     DARK_SCREEN_DONE);
> +}
> +
> +void intel_dark_screen_disable(struct intel_crtc_state *crtc_state)
> +{
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +
> +	intel_de_write(dev_priv, DARK_SCREEN(cpu_transcoder), 0);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_darkscreen.h b/drivers/gpu/drm/i915/display/intel_darkscreen.h
> new file mode 100644
> index 000000000000..366e43499fc4
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_darkscreen.h
> @@ -0,0 +1,26 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2023 Intel Corporation
> + *
> + */
> +
> +#ifndef __INTEL_DARKSCREEN_H__
> +#define __INTEL_DARKSCREEN_H__
> +
> +#include <linux/types.h>
> +
> +struct intel_crtc_state;
> +struct intel_crtc;
> +
> +struct intel_darkscreen {
> +	bool enable;
> +};
> +
> +#ifdef CONFIG_DEBUG_FS
> +void intel_dark_screen_enable(struct intel_crtc_state *crtc_state);
> +void intel_dark_screen_disable(struct intel_crtc_state *crtc_state);
> +void intel_darkscreen_crtc_debugfs_add(struct intel_crtc *crtc);
> +
> +#endif
> +
> +#endif /* __INTEL_DARKSCREEN_H_ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 3600497ff512..d441e08fef58 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -49,6 +49,7 @@
>  #include "i915_vma.h"
>  #include "i915_vma_types.h"
>  #include "intel_bios.h"
> +#include "intel_darkscreen.h"
>  #include "intel_display.h"
>  #include "intel_display_limits.h"
>  #include "intel_display_power.h"
> @@ -1539,6 +1540,7 @@ struct intel_crtc {
>  
>  #ifdef CONFIG_DEBUG_FS
>  	struct intel_pipe_crc pipe_crc;
> +	struct intel_darkscreen dark_screen;
>  #endif
>  };
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index c203dcfd6c7b..4e273c0ac801 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2097,6 +2097,14 @@
>  #define   TRANS_PUSH_EN			REG_BIT(31)
>  #define   TRANS_PUSH_SEND		REG_BIT(30)
>  
> +#define _DARK_SCREEN_PIPE_A		0x60120
> +#define DARK_SCREEN(trans)		_MMIO_TRANS2(trans, _DARK_SCREEN_PIPE_A)
> +#define   DARK_SCREEN_ENABLE		REG_BIT(31)
> +#define   DARK_SCREEN_DETECT		REG_BIT(29)
> +#define   DARK_SCREEN_DONE		REG_BIT(28)
> +#define DARK_SCREEN_COMPARE_MASK	REG_GENMASK(9, 0)
> +#define DARK_SCREEN_COMPARE_VAL(x)	REG_FIELD_PREP(DARK_SCREEN_COMPARE_MASK, (x))
> +
>  /* VGA port control */
>  #define ADPA			_MMIO(0x61100)
>  #define PCH_ADPA                _MMIO(0xe1100)
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index fe659a97001c..ff533733245c 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -176,6 +176,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
>  	i915-display/intel_crtc_state_dump.o \
>  	i915-display/intel_cursor.o \
>  	i915-display/intel_cx0_phy.o \
> +	i915-display/intel_darkscreen.o \
>  	i915-display/intel_ddi.o \
>  	i915-display/intel_ddi_buf_trans.o \
>  	i915-display/intel_display.o \
> -- 
> 2.25.1
> 
