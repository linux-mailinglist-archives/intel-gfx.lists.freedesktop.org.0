Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3AAE92E517
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2024 12:53:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81B0010E171;
	Thu, 11 Jul 2024 10:53:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZP2WCwO2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3776810E171
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2024 10:53:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720695191; x=1752231191;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Pg1rHZeElTqwPKKSe0TEhJ4aeaRQ93nVFOmVGHxy0BE=;
 b=ZP2WCwO2tRznYzHl1mDxT7aWgMwb2puIFg4oLqBDaiowPXNrwQXemXNf
 Sd7c8keTbQyqnHV0bhMWsnKZj+0+odJBtJMlDLPJsGG0e9ieasihYUUT5
 XfE5e5881ESDAh/+Ab0LZg1ZJAiOR4Cuz0TAZU+jFY2Wu+gVpSHIbgjzo
 bj6dGC1REVz70oWffO+Jlk+MN8Ucp9JvxxGPOU52k4rlYa+h18YhkHL55
 nFY9Kx46+Qd+osiHsPR/uVXT7Y8k87n2ekQHOQ7rMcBhWwsMqHajrEwAW
 7O5z+gwk7XkmEwyqhIBqPWEjtXEm9NywcNhUtMW8vYl1ycDhFBg97bz/H w==;
X-CSE-ConnectionGUID: 6ZjfBVlbQrKsXRBBeXf6eQ==
X-CSE-MsgGUID: /bHL8WvUS2iBWlRR6maX0Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11129"; a="28665910"
X-IronPort-AV: E=Sophos;i="6.09,199,1716274800"; d="scan'208";a="28665910"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2024 03:53:10 -0700
X-CSE-ConnectionGUID: tYqLksfcS6qUI1NhiLeX0Q==
X-CSE-MsgGUID: iOwPUQsHR5+sRzWh0JE2bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,199,1716274800"; d="scan'208";a="48489068"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2024 03:53:09 -0700
Date: Thu, 11 Jul 2024 13:53:22 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2 6/6] drm/i915/dp: Dump the LTTPR PHY descriptors
Message-ID: <Zo-5olm-FxLDRq-K@ideak-desk.fi.intel.com>
References: <20240708190029.271247-1-imre.deak@intel.com>
 <20240708190029.271247-7-imre.deak@intel.com>
 <676ba993-1800-412f-9120-289ab0545847@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <676ba993-1800-412f-9120-289ab0545847@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 11, 2024 at 03:20:19PM +0530, Nautiyal, Ankit K wrote:
> 
> On 7/9/2024 12:30 AM, Imre Deak wrote:
> > Dump the descriptor of the detected LTTPRs in non-transparent mode to
> > help the debugging related to LTTPRs easier.
> > 
> > v2: Use drm_dp_dump_lttpr_desc() instead of the driver specific
> >      equivalent.
> > 
> > Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> # v1
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_dp_link_training.c | 5 ++++-
> >   1 file changed, 4 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index af0b71bdf1fcf..ab72aa1d664dc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -20,6 +20,7 @@
> >    * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
> >    * IN THE SOFTWARE.
> >    */
> > +#include <drm/display/drm_dp_helper.h>
> 
> nitpick : I wonder if we should leave a line after the license header.

Not sure if there is a rule for this, but makes sense, will add it.

> In any case patch looks good to me.
> 
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Thanks.

> 
> >   #include "i915_drv.h"
> >   #include "intel_display_types.h"
> > @@ -206,8 +207,10 @@ static int intel_dp_init_lttpr(struct intel_dp *intel_dp, const u8 dpcd[DP_RECEI
> >   	lttpr_count = intel_dp_init_lttpr_phys(intel_dp, dpcd);
> > -	for (i = 0; i < lttpr_count; i++)
> > +	for (i = 0; i < lttpr_count; i++) {
> >   		intel_dp_read_lttpr_phy_caps(intel_dp, dpcd, DP_PHY_LTTPR(i));
> > +		drm_dp_dump_lttpr_desc(&intel_dp->aux, DP_PHY_LTTPR(i));
> > +	}
> >   	return lttpr_count;
> >   }
