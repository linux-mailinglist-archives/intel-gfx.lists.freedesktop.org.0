Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2687C13D1A5
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 02:44:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF5516E1EC;
	Thu, 16 Jan 2020 01:44:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F4616E1EC
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 01:44:04 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 17:44:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,323,1574150400"; d="scan'208";a="225793544"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga003.jf.intel.com with ESMTP; 15 Jan 2020 17:44:04 -0800
Date: Wed, 15 Jan 2020 17:44:04 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200116014404.GP2244136@mdroper-desk1.amr.corp.intel.com>
References: <20200115214556.2052-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200115214556.2052-1-stanislav.lisovskiy@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v12 0/5] Enable second DBuf slice for ICL
 and TGL
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

On Wed, Jan 15, 2020 at 11:45:51PM +0200, Stanislav Lisovskiy wrote:
> Those patch series, do some initial preparation DBuf manipulating code
> cleanups, i.e remove redundant structures/code, switch to mask
> based DBuf manupulation, get into use DBuf assignment according to
> BSpec rules.

I just noticed that bspec page 49213 indicates we should also be writing
a value of '8' to bits 23:19 on gen12.  We don't seem to handling that
yet.  We may need to add that change as an additional patch.


Matt

> 
> Stanislav Lisovskiy (5):
>   drm/i915: Remove skl_ddl_allocation struct
>   drm/i915: Move dbuf slice update to proper place
>   drm/i915: Manipulate DBuf slices properly
>   drm/i915: Introduce parameterized DBUF_CTL
>   drm/i915: Correctly map DBUF slices to pipes
> 
>  drivers/gpu/drm/i915/display/intel_display.c  |  52 +-
>  .../drm/i915/display/intel_display_power.c    |  88 ++--
>  .../drm/i915/display/intel_display_power.h    |   6 +
>  .../drm/i915/display/intel_display_types.h    |   3 +
>  drivers/gpu/drm/i915/i915_drv.h               |   7 +-
>  drivers/gpu/drm/i915/i915_pci.c               |   5 +-
>  drivers/gpu/drm/i915/i915_reg.h               |  12 +-
>  drivers/gpu/drm/i915/intel_device_info.h      |   1 +
>  drivers/gpu/drm/i915/intel_pm.c               | 457 +++++++++++++++---
>  drivers/gpu/drm/i915/intel_pm.h               |   7 +-
>  10 files changed, 496 insertions(+), 142 deletions(-)
> 
> -- 
> 2.24.1.485.gad05a3d8e5
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
