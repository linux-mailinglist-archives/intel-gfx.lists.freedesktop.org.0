Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E96852F26CC
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 04:48:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B530189F31;
	Tue, 12 Jan 2021 03:48:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2803A89F31
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 03:47:59 +0000 (UTC)
IronPort-SDR: Dmuz75FDlIzm3f4K+fw4YtObONwaFxzKAJCgy+F4xuJkeQyxxuV3eNAJ1F16AoXHuA/Ley4Y02
 AbsRzojTOgYQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9861"; a="177202941"
X-IronPort-AV: E=Sophos;i="5.79,340,1602572400"; d="scan'208";a="177202941"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 19:47:58 -0800
IronPort-SDR: 37lFOj5GIQmhVtixvwOuiF+EGWyWYHcUAkOchMYNVKYcMUwLvgtTw5Q74DSvAlVNqoZ9TR+gL6
 U13qzvrLMAjw==
X-IronPort-AV: E=Sophos;i="5.79,340,1602572400"; d="scan'208";a="363364695"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 19:47:58 -0800
Date: Mon, 11 Jan 2021 19:47:56 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20210112034756.GC21197@mdroper-desk1.amr.corp.intel.com>
References: <20201205010844.361880-1-aditya.swarup@intel.com>
 <20201205010844.361880-9-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201205010844.361880-9-aditya.swarup@intel.com>
Subject: Re: [Intel-gfx] [PATCH 08/22] drm/i915/adl_s: Configure DPLL for
 ADL-S
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 04, 2020 at 05:08:30PM -0800, Aditya Swarup wrote:
> Add changes for configuring DPLL for ADL-S
> - Reusing DG1 DPLL 2 & DPLL 3 for ADL-S
> - Extend CNL macro to choose DPLL_ENABLE
>   for ADL-S.
> - Select CFGCR0 and CFGCR1 for ADL-S plls.
> 
> On BSpec: 53720 PLL arrangement dig for adls:
> DPLL2 cfgcr is programmed using _ADLS_DPLL3_CFGCR(0/1)
> DPLL3 cfgcr is programmed using _ADLS_DPLL4_CFGCR(0/1)

53720 shows DPLL's 0/1/2/3 in the diagram but the registers are named as
DPLL 0/1/3/4 (no #2).  I don't see anywhere on 53720 that it explicitly
gives the mapping you mention here, but on page 53723 I see a note:

        Due to current BSpec filtering limitations, the DPLL4_CRCFG0/1
        (164294h/164298h) are used to control the DPLL2.

Assuming that's correct, the patch below has the registers for the last
two DPLL's swapped.

...
> +
> +#define _ADLS_DPLL3_CFGCR1		0x1642C4
> +#define _ADLS_DPLL4_CFGCR1		0x164298
> +#define ADLS_DPLL_CFGCR1(pll)		_MMIO_PLL3(pll, _TGL_DPLL0_CFGCR1, \
> +						   _TGL_DPLL1_CFGCR1, \
> +						   _ADLS_DPLL3_CFGCR1, \
> +						   _ADLS_DPLL4_CFGCR1)

I.e., this should be 

        #define ADLS_DPLL_CFGCR1(pll)	_MMIO_PLL3(pll, _TGL_DPLL0_CFGCR1, \
                                                        _TGL_DPLL1_CFGCR1, \
                                                        _ADLS_DPLL4_CFGCR1, \
                                                        _ADLS_DPLL3_CFGCR1)

Given the strange spec naming, I think this calls for a comment in the
code as well to clarify that yes, we really do want 4 before 3 and that
there's no 2.


Matt

> +
>  #define _DKL_PHY1_BASE			0x168000
>  #define _DKL_PHY2_BASE			0x169000
>  #define _DKL_PHY3_BASE			0x16A000
> -- 
> 2.27.0
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
