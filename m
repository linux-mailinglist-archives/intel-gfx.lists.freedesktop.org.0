Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D58CC2953D8
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 23:07:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A8C66EE78;
	Wed, 21 Oct 2020 21:07:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 718F76EE78
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 21:07:30 +0000 (UTC)
IronPort-SDR: Z6wtMWAwuuDKB1s3UUTc68FFD8V7Qw9dwU1u+ZD65gGr3u6NR0lmBwfCVVVWSRN6ZOIisEetFf
 QE28EAGpgA4w==
X-IronPort-AV: E=McAfee;i="6000,8403,9781"; a="231627126"
X-IronPort-AV: E=Sophos;i="5.77,402,1596524400"; d="scan'208";a="231627126"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 14:07:29 -0700
IronPort-SDR: NSJK5Bg5Nqr2e89cBmgljCR7toaLGwXdufWDC3Wcefi7fzhm/vt38KxSQiRnE3HIZZdO74TG/b
 DM2bsKtDPXhA==
X-IronPort-AV: E=Sophos;i="5.77,402,1596524400"; d="scan'208";a="524037475"
Received: from vibhasma-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.136.128])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 14:07:28 -0700
Date: Wed, 21 Oct 2020 14:07:24 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20201021210724.fkgijmojwzoxc426@ldmartin-desk1>
References: <20201021082034.3170478-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201021082034.3170478-1-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH 0/6] dg1: remaining basic enabling patches
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 21, 2020 at 01:20:28AM -0700, Lucas De Marchi wrote:
>These are the remaining patches from
>https://patchwork.freedesktop.org/series/82594/
>
>Main change here is how we enable hpd interrupt handling since that
>changed on recent refactors for other platforms. This commit is
>currently not tested as for DG1 we are still missing the lmem part and
>other bits to get a usable drivers. I will test it soon with the rebased
>patches and update here.

Tested on DDI-E and it's working. The only possible issues would be on
DDI-D and DDI-E, so this seems good.

Lucas De Marchi

>
>I'm also a couple of WAs that were added/changed to the spec.
>
>Aditya Swarup (1):
>  drm/i915/dg1: Enable ports
>
>Clinton A Taylor (1):
>  drm/i915/dg1: invert HPD pins
>
>Lucas De Marchi (3):
>  drm/i915/dg1: add hpd interrupt handling
>  drm/i915/dg1: map/unmap pll clocks
>  drm/i915/dg1: make Wa_22010271021 permanent
>
>Swathi Dhanavanthri (1):
>  drm/i915/dg1: Implement WA_16011163337
>
> drivers/gpu/drm/i915/display/intel_ddi.c     | 105 ++++++++++++++++++-
> drivers/gpu/drm/i915/display/intel_display.c |  33 +++++-
> drivers/gpu/drm/i915/gt/intel_workarounds.c  |  21 ++--
> drivers/gpu/drm/i915/i915_irq.c              |  46 ++++++--
> drivers/gpu/drm/i915/i915_reg.h              |  27 +++++
> 5 files changed, 209 insertions(+), 23 deletions(-)
>
>-- 
>2.28.0
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
