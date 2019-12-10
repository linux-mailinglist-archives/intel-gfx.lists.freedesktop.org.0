Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B383118B67
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 15:46:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 208726E8F4;
	Tue, 10 Dec 2019 14:46:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 301 seconds by postgrey-1.36 at gabe;
 Tue, 10 Dec 2019 14:46:14 UTC
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E34AF6E8F4
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 14:46:14 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 06:46:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,300,1571727600"; d="scan'208";a="244867884"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 10 Dec 2019 06:46:11 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Dec 2019 16:46:11 +0200
Date: Tue, 10 Dec 2019 16:46:11 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20191210144611.GB1208@intel.com>
References: <20191210144105.3239-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210144105.3239-1-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 0/6] drm/i915: Some cleanup near the SKL
 wm/ddb area
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 10, 2019 at 04:41:01PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Rebased leftovers from my earlier series to nuke the dirty_pipes junk.
> =

> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> =

> Ville Syrj=E4l=E4 (6):
>   drm/i915: Streamline skl_commit_modeset_enables()
>   drm/i915: Polish WM_LINETIME register stuff
>   drm/i915: Move linetime wms into the crtc state
>   drm/i915: Nuke skl wm.dirty_pipes bitmask
>   drm/i915: Kill struct skl_ddb_allocation
>   drm/i915: Implement pps w/a #1124 for bxt+

Drat. Last two aren't part of the series. Time to see how badly patchwork
reacts to this one...

> =

>  drivers/gpu/drm/i915/display/intel_display.c  | 170 +++++++++++----
>  .../drm/i915/display/intel_display_power.c    |  28 +--
>  .../drm/i915/display/intel_display_power.h    |   2 +-
>  .../drm/i915/display/intel_display_types.h    |  11 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |  11 +
>  drivers/gpu/drm/i915/gvt/handlers.c           |   6 +-
>  drivers/gpu/drm/i915/i915_drv.h               |  14 +-
>  drivers/gpu/drm/i915/i915_reg.h               |  14 +-
>  drivers/gpu/drm/i915/intel_pm.c               | 202 +++---------------
>  drivers/gpu/drm/i915/intel_pm.h               |   4 +-
>  10 files changed, 187 insertions(+), 275 deletions(-)
> =

> -- =

> 2.23.0

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
