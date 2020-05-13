Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB5D1D162D
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 15:44:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E48D46E1F5;
	Wed, 13 May 2020 13:44:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1574A6E1F5
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 13:44:16 +0000 (UTC)
IronPort-SDR: wVhslDZJZ6FFnc8DEtutVL9101c+GchYZhCvTBzOfs1E3Ob1qHvxvxulOFfZv3N5oAqtXPu6bk
 UcnXAE0ZRRKA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2020 06:44:15 -0700
IronPort-SDR: uh6qPM99jYtHMFazpl42ZP93OgM6Xc8TqSUK6TPvHIalGg58NJIBsGoNzxOaEGI3nTWwGb6SbD
 /puGeLz6rSIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,387,1583222400"; d="scan'208";a="265875967"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 13 May 2020 06:44:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 May 2020 16:44:12 +0300
Date: Wed, 13 May 2020 16:44:12 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200513134412.GG6112@intel.com>
References: <20200513093816.11466-1-stanislav.lisovskiy@intel.com>
 <20200513093816.11466-6-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513093816.11466-6-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v29 5/6] drm/i915: Restrict qgv points which
 don't have enough bandwidth.
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

On Wed, May 13, 2020 at 12:38:15PM +0300, Stanislav Lisovskiy wrote:
> According to BSpec 53998, we should try to
> restrict qgv points, which can't provide
> enough bandwidth for desired display configuration.
> =

> Currently we are just comparing against all of
> those and take minimum(worst case).
> =

> v2: Fixed wrong PCode reply mask, removed hardcoded
>     values.
> =

> v3: Forbid simultaneous legacy SAGV PCode requests and
>     restricting qgv points. Put the actual restriction
>     to commit function, added serialization(thanks to Ville)
>     to prevent commit being applied out of order in case of
>     nonblocking and/or nomodeset commits.
> =

> v4:
>     - Minor code refactoring, fixed few typos(thanks to James Ausmus)
>     - Change the naming of qgv point
>       masking/unmasking functions(James Ausmus).
>     - Simplify the masking/unmasking operation itself,
>       as we don't need to mask only single point per request(James Ausmus)
>     - Reject and stick to highest bandwidth point if SAGV
>       can't be enabled(BSpec)
> =

> v5:
>     - Add new mailbox reply codes, which seems to happen during boot
>       time for TGL and indicate that QGV setting is not yet available.
> =

> v6:
>     - Increase number of supported QGV points to be in sync with BSpec.
> =

> v7: - Rebased and resolved conflict to fix build failure.
>     - Fix NUM_QGV_POINTS to 8 and moved that to header file(James Ausmus)
> =

> v8: - Don't report an error if we can't restrict qgv points, as SAGV
>       can be disabled by BIOS, which is completely legal. So don't
>       make CI panic. Instead if we detect that there is only 1 QGV
>       point accessible just analyze if we can fit the required bandwidth
>       requirements, but no need in restricting.
> =

> v9: - Fix wrong QGV transition if we have 0 planes and no SAGV
>       simultaneously.
> =

> v10: - Fix CDCLK corruption, because of global state getting serialized
>        without modeset, which caused copying of non-calculated cdclk
>        to be copied to dev_priv(thanks to Ville for the hint).
> =

> v11: - Remove unneeded headers and spaces(Matthew Roper)
>      - Remove unneeded intel_qgv_info qi struct from bw check and zero
>        out the needed one(Matthew Roper)
>      - Changed QGV error message to have more clear meaning(Matthew Roper)
>      - Use state->modeset_set instead of any_ms(Matthew Roper)
>      - Moved NUM_SAGV_POINTS from i915_reg.h to i915_drv.h where it's used
>      - Keep using crtc_state->hw.active instead of .enable(Matthew Roper)
>      - Moved unrelated changes to other patch(using latency as parameter
>        for plane wm calculation, moved to SAGV refactoring patch)
> =

> v12: - Fix rebase conflict with own temporary SAGV/QGV fix.
>      - Remove unnecessary mask being zero check when unmasking
>        qgv points as this is completely legal(Matt Roper)
>      - Check if we are setting the same mask as already being set
>        in hardware to prevent error from PCode.
>      - Fix error message when restricting/unrestricting qgv points
>        to "mask/unmask" which sounds more accurate(Matt Roper)
>      - Move sagv status setting to icl_get_bw_info from atomic check
>        as this should be calculated only once.(Matt Roper)
>      - Edited comments for the case when we can't enable SAGV and
>        use only 1 QGV point with highest bandwidth to be more
>        understandable.(Matt Roper)
> =

> v13: - Moved max_data_rate in bw check to closer scope(Ville Syrj=E4l=E4)
>      - Changed comment for zero new_mask in qgv points masking function
>        to better reflect reality(Ville Syrj=E4l=E4)
>      - Simplified bit mask operation in qgv points masking function
>        (Ville Syrj=E4l=E4)
>      - Moved intel_qgv_points_mask closer to gen11 SAGV disabling,
>        however this still can't be under modeset condition(Ville Syrj=E4l=
=E4)
>      - Packed qgv_points_mask as u8 and moved closer to pipe_sagv_mask
>        (Ville Syrj=E4l=E4)
>      - Extracted PCode changes to separate patch.(Ville Syrj=E4l=E4)
>      - Now treat num_planes 0 same as 1 to avoid confusion and
>        returning max_bw as 0, which would prevent choosing QGV
>        point having max bandwidth in case if SAGV is not allowed,
>        as per BSpec(Ville Syrj=E4l=E4)
>      - Do the actual qgv_points_mask swap in the same place as
>        all other global state parts like cdclk are swapped.
>        In the next patch, this all will be moved to bw state as
>        global state, once new global state patch series from Ville
>        lands
> =

> v14: - Now using global state to serialize access to qgv points
>      - Added global state locking back, otherwise we seem to read
>        bw state in a wrong way.
> =

> v15: - Added TODO comment for near atomic global state locking in
>        bw code.
> =

> v16: - Fixed intel_atomic_bw_* functions to be intel_bw_* as discussed
>        with Jani Nikula.
>      - Take bw_state_changed flag into use.
> =

> v17: - Moved qgv point related manipulations next to SAGV code, as
>        those are semantically related(Ville Syrj=E4l=E4)
>      - Renamed those into intel_sagv_(pre)|(post)_plane_update
>        (Ville Syrj=E4l=E4)
> =

> v18: - Move sagv related calls from commit tail into
>        intel_sagv_(pre)|(post)_plane_update(Ville Syrj=E4l=E4)
> =

> v19: - Use intel_atomic_get_bw_(old)|(new)_state which is intended
>        for commit tail stage.
> =

> v20: - Return max bandwidth for 0 planes(Ville)
>      - Constify old_bw_state in bw_atomic_check(Ville)
>      - Removed some debugs(Ville)
>      - Added data rate to debug print when no QGV points(Ville)
>      - Removed some comments(Ville)
> =

> v21, v22, v23: - Fixed rebase conflict
> =

> v24: - Changed PCode mask to use ICL_ prefix
> v25: - Resolved rebase conflict
> =

> v26: - Removed redundant NULL checks(Ville)
>      - Removed redundant error prints(Ville)
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@intel.com>
> Cc: James Ausmus <james.ausmus@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c       | 137 +++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_bw.h       |   9 ++
>  .../drm/i915/display/intel_display_types.h    |   3 +
>  drivers/gpu/drm/i915/intel_pm.c               |  54 ++++++-
>  drivers/gpu/drm/i915/intel_pm.h               |   2 +
>  5 files changed, 167 insertions(+), 38 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index 6e7cc3a4f1aa..d28ca4d0b1c4 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -8,6 +8,9 @@
>  #include "intel_bw.h"
>  #include "intel_display_types.h"
>  #include "intel_sideband.h"
> +#include "intel_atomic.h"
> +#include "intel_pm.h"
> +
>  =

>  /* Parameters for Qclk Geyserville (QGV) */
>  struct intel_qgv_point {
> @@ -113,6 +116,26 @@ static int icl_pcode_read_qgv_point_info(struct drm_=
i915_private *dev_priv,
>  	return 0;
>  }
>  =

> +int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
> +				  u32 points_mask)
> +{
> +	int ret;
> +
> +	/* bspec says to keep retrying for at least 1 ms */
> +	ret =3D skl_pcode_request(dev_priv, ICL_PCODE_SAGV_DE_MEM_SS_CONFIG,
> +				points_mask,
> +				ICL_PCODE_POINTS_RESTRICTED_MASK,
> +				ICL_PCODE_POINTS_RESTRICTED,
> +				1);
> +
> +	if (ret < 0) {
> +		DRM_ERROR("Failed to disable qgv points (%d)\n", ret);

Pls use the per-device logging. drm_err() or whatever it's called.

Apart from that (and the checkpatch issue ci reported) this looks
ready to go in.

> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
>  static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
>  			      struct intel_qgv_info *qi)
>  {

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
