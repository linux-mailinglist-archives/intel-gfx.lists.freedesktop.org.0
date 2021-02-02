Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D63C630C178
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 15:26:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8C6B89617;
	Tue,  2 Feb 2021 14:26:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38D5389617
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 14:26:13 +0000 (UTC)
IronPort-SDR: 5crbv6LAl+TxdO4bE96mvVc55ImgYfgiewmzYrHA/E2zN7eeQU4zI0Qa53K7B54TIV5PUaZXog
 vLV7jdMVybMQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="160025600"
X-IronPort-AV: E=Sophos;i="5.79,395,1602572400"; d="scan'208";a="160025600"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2021 06:26:12 -0800
IronPort-SDR: WqmjxWf6YQnm1etmbl+j+S4Z/dkgzPoB2omsOifP1DNOrYp3SLAI47iQ/A3ajuvjNPN49xAoDh
 Pb+dBhrfCw6g==
X-IronPort-AV: E=Sophos;i="5.79,395,1602572400"; d="scan'208";a="432942176"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2021 06:26:10 -0800
Date: Tue, 2 Feb 2021 16:26:07 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20210202142607.GB494606@ideak-desk.fi.intel.com>
References: <87lfcqobpl.fsf@intel.com>
 <87ft2fgcu1.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87ft2fgcu1.fsf@intel.com>
Subject: Re: [Intel-gfx] Fixes that failed to apply to v5.11-rc4
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Tue, Feb 02, 2021 at 09:15:18AM +0200, Jani Nikula wrote:
> On Mon, 18 Jan 2021, Jani Nikula <jani.nikula@intel.com> wrote:
> > The following commits have been marked as Cc: stable or fixing something
> > in v5.11-rc4 or earlier, but failed to cherry-pick to
> > drm-intel-fixes. Please see if they are worth backporting, and please do
> > so if they are.
> >
> > Conflicts:
> > dbe13ae1d6ab ("drm/i915/pmu: Don't grab wakeref when enabling events")
> > 9bb36cf66091 ("drm/i915: Check for rq->hwsp validity after acquiring RCU lock")
> > 5b4dc95cf7f5 ("drm/i915/gt: Prevent use of engine->wa_ctx after error")
> > 6a3daee1b38e ("drm/i915/selftests: Fix some error codes")
> > 67fba3f1c73b ("drm/i915/dp: Fix LTTPR vswing/pre-emp setting in non-transparent mode")
> >
> > Fails to build:
> > 3170a21f7059 ("drm/i915: Only enable DFP 4:4:4->4:2:0 conversion when outputting YCbCr 4:4:4")
> >
> > BR,
> > Jani.
> 
> Update.
> 
> Conflicts:
> 5b4dc95cf7f5 ("drm/i915/gt: Prevent use of engine->wa_ctx after error")
> 6a3daee1b38e ("drm/i915/selftests: Fix some error codes")
> 67fba3f1c73b ("drm/i915/dp: Fix LTTPR vswing/pre-emp setting in non-transparent mode")

This depends on
  1c6e527d6947 ("rm/i915/dp: Move intel_dp_set_signal_levels() to intel_dp_link_training.c")

> 699390f7f026 ("drm/i915: Fix the PHY compliance test vs. hotplug mishap")
> e7004ea4f5f5 ("drm/i915/gt: Close race between enable_breadcrumbs and cancel_breadcrumbs")
> fed387572040 ("drm/i915/display: Prevent double YUV range correction on HDR planes")
> 
> Fails to build:
> 0713eb979d2c ("drm/i915: Disable atomics in L3 for gen9")
> f8abfda84841 ("drm/i915: Fix the MST PBN divider calculation")

and this one depends on
  a321fc2b4e60 ("rm/dp/mst: Export drm_dp_get_vc_payload_bw()")

> 
> BR,
> Jani.
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
