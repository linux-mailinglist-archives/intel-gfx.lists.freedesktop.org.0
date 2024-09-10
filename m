Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C13C97366C
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 13:47:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B11210E7A5;
	Tue, 10 Sep 2024 11:47:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fWMoQK3v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A71B110E0D9
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2024 11:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725968825; x=1757504825;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Crgm5UrtUxhBBiB9fn33yo5Pkk2ZthnaNvS7CUle16E=;
 b=fWMoQK3vgvkV/49LsLD/yV0K9BP4asznzmfKIF4ZLirWgnKMjKd0PwqO
 7gsjht+RNV2aDNToKAlNvia8ub1cSoimPOfvYtbL51JJnRsJVcMGSbciL
 XaEY7CynCbFw+5itkOiwYds93GH/SYoZApTC9zpz75Xr5kxuFNGNQ+XnL
 05LHUs4blwepAop8/Dd6ED8GYGTmzMKquKmuHkepCUimGB7c+Z5LNg1W5
 uEJhZn8zzSKDXeq/x74RyeKnPVfZDwNMiVvQJBjEvtfrbiKFc5HvXjIgq
 P5swV8JMe13aquLUh6pDvcv6yyqHjE6psMQCEvQUR7P0TAd8Hny47cAZd w==;
X-CSE-ConnectionGUID: OJOqhP8kTPqh4ZaLc1GppQ==
X-CSE-MsgGUID: GEQcTibNThy4D3I2sdBAig==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="24524142"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="24524142"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 04:47:02 -0700
X-CSE-ConnectionGUID: Ess+BN6RT5Cx+8fW7yXClQ==
X-CSE-MsgGUID: BUDpJG3+T3a68hG+Ki9YOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="67053494"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Sep 2024 04:46:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Sep 2024 14:46:56 +0300
Date: Tue, 10 Sep 2024 14:46:56 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com
Subject: Re: [PATCH 01/14] drm/i915/display: Modify debugfs for joiner to
 force n pipes
Message-ID: <ZuAxsG4lQsqJhhJK@intel.com>
References: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
 <20240906125807.3960642-2-ankit.k.nautiyal@intel.com>
 <ZtsVs38KicPJZff1@intel.com> <ZtsXjQoYgtEVdjRK@intel.com>
 <b62b3ba6-7954-4dc8-8ce9-2aba2b7c712c@intel.com>
 <Zt760UZiDGIvQGth@intel.com>
 <4f8e660d-94af-4eb0-be6a-a503c01ed617@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4f8e660d-94af-4eb0-be6a-a503c01ed617@intel.com>
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

On Tue, Sep 10, 2024 at 11:12:30AM +0530, Nautiyal, Ankit K wrote:
> 
> On 9/9/2024 7:10 PM, Ville Syrjälä wrote:
> > On Mon, Sep 09, 2024 at 11:10:16AM +0530, Nautiyal, Ankit K wrote:
> >> On 9/6/2024 8:24 PM, Ville Syrjälä wrote:
> >>> On Fri, Sep 06, 2024 at 05:46:11PM +0300, Ville Syrjälä wrote:
> >>>> On Fri, Sep 06, 2024 at 06:27:54PM +0530, Ankit Nautiyal wrote:
> >>>>> At the moment, the debugfs for joiner allows only to force enable/disable
> >>>>> pipe joiner for 2 pipes. Modify it to force join 'n' number of pipes,
> >>>>> where n is a valid pipe joiner configuration.
> >>>>> This will help in case of ultra joiner where 4 pipes are joined.
> >>>>>
> >>>>> v2:
> >>>>> -Fix commit message to state that only valid joiner config can be
> >>>>> forced. (Suraj)
> >>>>> -Rename the identifiers to have INTEL_BIG/NONE_JOINER_PIPES. (Suraj)
> >>>>>
> >>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >>>>> ---
> >>>>>    .../drm/i915/display/intel_display_debugfs.c  | 71 ++++++++++++++++++-
> >>>>>    .../drm/i915/display/intel_display_types.h    |  8 ++-
> >>>>>    drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
> >>>>>    3 files changed, 77 insertions(+), 4 deletions(-)
> >>>>>
> >>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >>>>> index 830b9eb60976..0ef573afd8a1 100644
> >>>>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >>>>> @@ -1504,6 +1504,73 @@ static int intel_crtc_pipe_show(struct seq_file *m, void *unused)
> >>>>>    }
> >>>>>    DEFINE_SHOW_ATTRIBUTE(intel_crtc_pipe);
> >>>>>    
> >>>>> +static int i915_joiner_show(struct seq_file *m, void *data)
> >>>>> +{
> >>>>> +	struct intel_connector *connector = m->private;
> >>>>> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> >>>>> +	int ret;
> >>>>> +
> >>>>> +	ret = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
> >>>>> +	if (ret)
> >>>>> +		return ret;
> >>>> What does that lock do for us?
> >>>>
> >>>>> +
> >>>>> +	seq_printf(m, "Force_joined_pipes: %d\n", connector->force_joined_pipes);
> >>>> This should just be thae bare number. Adding other junk in there just
> >>>> complicates matters if anyone has to parse this.
> >>>>
> >>>>> +
> >>>>> +	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
> >>>>> +
> >>>>> +	return ret;
> >>>>> +}
> >>>>> +
> >>>>> +static ssize_t i915_joiner_write(struct file *file,
> >>>>> +				 const char __user *ubuf,
> >>>>> +				 size_t len, loff_t *offp)
> >>>>> +{
> >>>>> +	struct seq_file *m = file->private_data;
> >>>>> +	struct intel_connector *connector = m->private;
> >>>>> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> >>>>> +	int force_join_pipes = 0;
> >>>>> +	int ret;
> >>>>> +
> >>>>> +	if (len == 0)
> >>>>> +		return 0;
> >>>>> +
> >>>>> +	drm_dbg(&i915->drm,
> >>>>> +		"Copied %zu bytes from user to force joiner\n", len);
> >>>> Leftover debug junk.
> >>>>
> >>>>> +
> >>>>> +	ret = kstrtoint_from_user(ubuf, len, 0, &force_join_pipes);
> >>>>> +	if (ret < 0)
> >>>>> +		return ret;
> >>>>> +
> >>>>> +	drm_dbg(&i915->drm, "Got %d for force joining pipes\n", force_join_pipes);
> >>>> More.
> >>>>
> >>>>> +
> >>>>> +	if (force_join_pipes < INTEL_NONE_JOINER_PIPES ||
> >>>>> +	    force_join_pipes >= INTEL_INVALID_JOINER_PIPES) {
> >>>>> +		drm_dbg(&i915->drm, "Ignoring Invalid num of pipes %d for force joining\n",
> >>>>> +			force_join_pipes);
> >>>>> +		connector->force_joined_pipes = INTEL_NONE_JOINER_PIPES;
> >>>>> +	} else {
> >>>>> +		connector->force_joined_pipes = force_join_pipes;
> >>>>> +	}
> >>>> I think just something like
> >>>> switch (num_pipes) {
> >>>> case 0: /* or should 1 be the default? */
> >>> I suppose both 0 and 1 should be accepted. 0==not forced, 1==forced to
> >>> exactly one pipe (ie. no joiner despite what the automagic logic
> >>> is saying).
> >> I understand 0 as not forced. I didnt get the meaning of forcing to one
> >> pipe.
> >>
> >> Does this mean, disable joiner? (Perhaps do not use joiner even for the
> >> cases where driver thinks joiner is required)
> >>
> >> How should we handle the case in driver, where it is 1?
> > Whatever code that determines how many pipes will should:
> > 1) if the override is non-zero just use it
> > 2) otherwise determine the number by using whatever
> >     logic is appropriate
> 
> 
> Alright, If I get correctly the driver logic will be something like:
> 
> int intel_dp_compute_joiner_pipes(struct intel_dp *intel_dp,
>                                    struct intel_connector *connector,
>                                    int hdisplay, int clock)
> {
>          int num_joined_pipes = 0;

This variable looks redundant. You can just directly return
the correct number from the switch statement.

> 
>          switch (connector->force_joined_pipes) {
>          case 1:
>                  num_joined_pipes = connector->force_joined_pipes;

This would now return 1, which is probably a value we never
want to return from here. Either that or we want to never
return 0 (which this code would do in some of the other
cases). Not sure which way is better tbh.

>                  break;
>          case 2:
>                  if (intel_dp_has_joiner(intel_dp))
>                          num_joined_pipes = connector->force_joined_pipes;

Hmm. We might want to make the debugfs knob already reject the
!has_joiner case so that the user won't even be allowed to
pick a completely unsupported value.

>                  break;
>          default:
>                  MISSING_CASE(connector->force_joined_pipes);
>                  fallthrough;
>          case 0:
>                  if (intel_dp_has_joiner(intel_dp) &&
>                      intel_dp_needs_bigjoiner(intel_dp, connector, 
> hdisplay, clock))
>                          num_joined_pipes = 2;
>          }
> 
>          return num_joined_pipes;
> }
> 
> With a value of 1 we are kind of forcing to not use joiner.
> 
> Currently for testing sent this to trybot: 
> https://patchwork.freedesktop.org/patch/613627/?series=138444&rev=1
> 
> Regards,
> 
> Ankit
> 
> >
> >>
> >> Regards,
> >>
> >> Ankit
> >>
> >>>> case 2:
> >>>> case 4:
> >>>> 	break;
> >>>> default:
> >>>> 	bad;
> >>>> }
> >>>>
> >>>> should do for validation.
> >>>>

-- 
Ville Syrjälä
Intel
