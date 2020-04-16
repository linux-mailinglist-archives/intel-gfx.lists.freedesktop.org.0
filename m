Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 023071AD112
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 22:31:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6082E6EB61;
	Thu, 16 Apr 2020 20:31:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBDDC6EB61
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Apr 2020 20:31:13 +0000 (UTC)
IronPort-SDR: YDE8Txw92rwarRB3BIBxCBfdfMksefSoLppq/Dq6unCuNPPl7i//PV1dxTHFTaWx+oJ+Suyc7H
 al7KYTAMmlSA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2020 13:31:13 -0700
IronPort-SDR: w0An4FWhGa0/7NlxD7136rAH5BEh4vdJ2SV+Nys8Gv+H53eaYtkXOjXaxG93dQ8tNxWN5WCHLX
 Am39GOB7lxIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,392,1580803200"; d="scan'208";a="299410250"
Received: from vlangtox-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.252.12.96])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Apr 2020 13:31:11 -0700
Date: Thu, 16 Apr 2020 23:31:10 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200416203110.GQ50947@intel.intel>
References: <20200416155100.22331-1-chris@chris-wilson.co.uk>
 <20200416155100.22331-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416155100.22331-2-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Use the RPM config
 register to determine clk frequencies
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

> For many configuration details within RC6 and RPS we are programming
> intervals for the internal clocks. From gen11, these clocks are
> configuration via the RPM_CONFIG and so for convenience, we would like
> to convert to/from more natural units (ns).
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Andi Shyti <andi.shyti@intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile           |  1 +
>  drivers/gpu/drm/i915/gt/debugfs_gt_pm.c | 27 +++++----
>  drivers/gpu/drm/i915/gt/intel_gt_clk.c  | 76 +++++++++++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_gt_clk.h  | 21 +++++++
>  drivers/gpu/drm/i915/gt/intel_rps.c     | 37 +++++++-----
>  drivers/gpu/drm/i915/gt/selftest_rps.c  |  6 +-
>  drivers/gpu/drm/i915/i915_debugfs.c     | 34 +++++++----
>  drivers/gpu/drm/i915/i915_reg.h         | 25 --------
>  8 files changed, 161 insertions(+), 66 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/gt/intel_gt_clk.c
>  create mode 100644 drivers/gpu/drm/i915/gt/intel_gt_clk.h

I like the patch, it's a nice refactoring but the file name is
misleading. When I see a *clk.[ch] file I think of a clock device
rather than a set of utilities for frequency and interval
conversion.

Can we call the file intel_gt_timing.[ch] or clk_utils.[ch]?

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
