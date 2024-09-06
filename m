Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC24096F77A
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 16:54:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5508A10EA7A;
	Fri,  6 Sep 2024 14:54:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h9WBuN2Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFF7510EA7A
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2024 14:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725634449; x=1757170449;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=gvpt8OGPJs9w/8WtBN1+eYT48NJpIFMNOsOa1y//P7Y=;
 b=h9WBuN2ZyCxlGYcJmRDiz/sTeyQppDOeWjLBo2wYOU2JgnO8RNiChn0C
 zwkUzU86tNAHKFtxW59TxYlSTnBgb/u9ZYFq6c1V95/ecyqkg1e7q73je
 WOP09VVdV5/jrNWa5zeYNigfe3LE+//oavIoJzXyrzfuYL/QMA5KkUDRE
 PJgz1Rn1QuUzqx0zFTZYYw6Af/sFInA9ebw9NPZ6BuU61VZ2VXwpfSO3k
 1hS7YvVqhMtXvaU7wcEKDtbV+M9Stq7qmq2KVfj9aeI8TZQ+CmIl1oFar
 pNZl5umqxJ3JDRHDuIy+49WbKcT90FiHvbdjtNFJ6hGDn0J2/D1K/iZ3i A==;
X-CSE-ConnectionGUID: WcrcnlCPSo2un3AsS0pD0A==
X-CSE-MsgGUID: pcvLWxFsR62Hf6Xqezf0Gw==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="41904936"
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="41904936"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 07:54:08 -0700
X-CSE-ConnectionGUID: OGO75Iy/Qk2KTf6LFuGByQ==
X-CSE-MsgGUID: GbFC2FjiSWK7bfFtf/Zqbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="66006957"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Sep 2024 07:54:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 06 Sep 2024 17:54:05 +0300
Date: Fri, 6 Sep 2024 17:54:05 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com
Subject: Re: [PATCH 01/14] drm/i915/display: Modify debugfs for joiner to
 force n pipes
Message-ID: <ZtsXjQoYgtEVdjRK@intel.com>
References: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
 <20240906125807.3960642-2-ankit.k.nautiyal@intel.com>
 <ZtsVs38KicPJZff1@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZtsVs38KicPJZff1@intel.com>
X-Patchwork-Hint: comment
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 06, 2024 at 05:46:11PM +0300, Ville Syrjälä wrote:
> On Fri, Sep 06, 2024 at 06:27:54PM +0530, Ankit Nautiyal wrote:
> > At the moment, the debugfs for joiner allows only to force enable/disable
> > pipe joiner for 2 pipes. Modify it to force join 'n' number of pipes,
> > where n is a valid pipe joiner configuration.
> > This will help in case of ultra joiner where 4 pipes are joined.
> > 
> > v2:
> > -Fix commit message to state that only valid joiner config can be
> > forced. (Suraj)
> > -Rename the identifiers to have INTEL_BIG/NONE_JOINER_PIPES. (Suraj)
> > 
> > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_debugfs.c  | 71 ++++++++++++++++++-
> >  .../drm/i915/display/intel_display_types.h    |  8 ++-
> >  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
> >  3 files changed, 77 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > index 830b9eb60976..0ef573afd8a1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > @@ -1504,6 +1504,73 @@ static int intel_crtc_pipe_show(struct seq_file *m, void *unused)
> >  }
> >  DEFINE_SHOW_ATTRIBUTE(intel_crtc_pipe);
> >  
> > +static int i915_joiner_show(struct seq_file *m, void *data)
> > +{
> > +	struct intel_connector *connector = m->private;
> > +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> > +	int ret;
> > +
> > +	ret = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
> > +	if (ret)
> > +		return ret;
> 
> What does that lock do for us?
> 
> > +
> > +	seq_printf(m, "Force_joined_pipes: %d\n", connector->force_joined_pipes);
> 
> This should just be thae bare number. Adding other junk in there just
> complicates matters if anyone has to parse this.
> 
> > +
> > +	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
> > +
> > +	return ret;
> > +}
> > +
> > +static ssize_t i915_joiner_write(struct file *file,
> > +				 const char __user *ubuf,
> > +				 size_t len, loff_t *offp)
> > +{
> > +	struct seq_file *m = file->private_data;
> > +	struct intel_connector *connector = m->private;
> > +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> > +	int force_join_pipes = 0;
> > +	int ret;
> > +
> > +	if (len == 0)
> > +		return 0;
> > +
> > +	drm_dbg(&i915->drm,
> > +		"Copied %zu bytes from user to force joiner\n", len);
> 
> Leftover debug junk.
> 
> > +
> > +	ret = kstrtoint_from_user(ubuf, len, 0, &force_join_pipes);
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	drm_dbg(&i915->drm, "Got %d for force joining pipes\n", force_join_pipes);
> 
> More.
> 
> > +
> > +	if (force_join_pipes < INTEL_NONE_JOINER_PIPES ||
> > +	    force_join_pipes >= INTEL_INVALID_JOINER_PIPES) {
> > +		drm_dbg(&i915->drm, "Ignoring Invalid num of pipes %d for force joining\n",
> > +			force_join_pipes);
> > +		connector->force_joined_pipes = INTEL_NONE_JOINER_PIPES;
> > +	} else {
> > +		connector->force_joined_pipes = force_join_pipes;
> > +	}
> 
> I think just something like
> switch (num_pipes) {
> case 0: /* or should 1 be the default? */

I suppose both 0 and 1 should be accepted. 0==not forced, 1==forced to
exactly one pipe (ie. no joiner despite what the automagic logic
is saying).

> case 2:
> case 4:
> 	break;
> default:
> 	bad;
> }
> 
> should do for validation.
> 

-- 
Ville Syrjälä
Intel
