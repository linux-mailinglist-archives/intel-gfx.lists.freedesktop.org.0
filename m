Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A73E153851
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 19:40:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66A2F6F930;
	Wed,  5 Feb 2020 18:40:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A8656F931
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 18:40:11 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 10:40:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,406,1574150400"; d="scan'208";a="249799237"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 05 Feb 2020 10:40:06 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Feb 2020 20:40:06 +0200
Date: Wed, 5 Feb 2020 20:40:06 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200205184005.GM13686@intel.com>
References: <20200202230630.8975-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200202230630.8975-1-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v17 0/6] Enable second DBuf slice for ICL
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 03, 2020 at 01:06:24AM +0200, Stanislav Lisovskiy wrote:
> Those patch series, do some initial preparation DBuf manipulating code
> cleanups, i.e remove redundant structures/code, switch to mask
> based DBuf manupulation, get into use DBuf assignment according to
> BSpec rules.
> =

> Stanislav Lisovskiy (6):
>   drm/i915: Remove skl_ddl_allocation struct
>   drm/i915: Move dbuf slice update to proper place
>   drm/i915: Update dbuf slices only with full modeset
>   drm/i915: Introduce parameterized DBUF_CTL
>   drm/i915: Manipulate DBuf slices properly
>   drm/i915: Correctly map DBUF slices to pipes

Pushed the lot to dinq. Thanks for the patches and reviews.

> =

>  drivers/gpu/drm/i915/display/intel_display.c  |  54 ++-
>  .../drm/i915/display/intel_display_power.c    | 100 ++--
>  .../drm/i915/display/intel_display_power.h    |   5 +
>  .../drm/i915/display/intel_display_types.h    |   4 +-
>  drivers/gpu/drm/i915/gvt/handlers.c           |   2 +-
>  drivers/gpu/drm/i915/i915_drv.h               |  11 +-
>  drivers/gpu/drm/i915/i915_pci.c               |   5 +-
>  drivers/gpu/drm/i915/i915_reg.h               |   6 +-
>  drivers/gpu/drm/i915/intel_device_info.h      |   1 +
>  drivers/gpu/drm/i915/intel_pm.c               | 449 +++++++++++++++---
>  drivers/gpu/drm/i915/intel_pm.h               |   5 +-
>  11 files changed, 479 insertions(+), 163 deletions(-)
> =

> -- =

> 2.24.1.485.gad05a3d8e5

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
