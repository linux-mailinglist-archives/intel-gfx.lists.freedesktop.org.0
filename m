Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D9A4C2E6D
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 15:30:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05DAE10E9D2;
	Thu, 24 Feb 2022 14:30:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCFE610E9D2
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Feb 2022 14:30:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645713002; x=1677249002;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=D8yECrO7LVsfF2coIsy7kLYhDgSdolvXaC2lrNI6Jxo=;
 b=MGBhO0NuFPFJsBnt2KfMXbv8cYJmvOxC0dLXRpe/98trKzMqXjWDxcll
 +8cRNle4Yzygm9PF/id6iwKizIF9PH+UWoYNenYrbdVouHDRmBaLgn4Rw
 k25aNNfWfVsAEmLoCKQvy87u6vllV/kqlg4SXqcNZi49kMPfqXw27Z4MN
 h2jHYfMETto+b4vBdnqRhoiCoUfqzyYwjL9OwEQY0xSGHeIcW55BK6m7U
 4Usy7ln8eCGcIRN3vIdtoEROXE+jn2v462qhl1kvdNh4gmsDRx+8jfsuP
 fB7RCHAXVTsOf5I41fnWlKgVm/tcYdZ7csiSKswqmBuZEYovMlQv7HoM6 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="252438049"
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="252438049"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 06:30:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="628487396"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by FMSMGA003.fm.intel.com with SMTP; 24 Feb 2022 06:29:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 24 Feb 2022 16:29:59 +0200
Date: Thu, 24 Feb 2022 16:29:59 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <YheWZ9aUHe4xZKUt@intel.com>
References: <20220223194103.715109-1-jose.souza@intel.com>
 <YhdaA6hbK0bhjWsQ@intel.com>
 <6dfd659cd15317139cade1c4c1e2825475167940.camel@intel.com>
 <YheC1ujieOVpAHjV@intel.com> <YheD5iiAFhLD5SMu@intel.com>
 <f1a70a21b762017c9a1af38721095506fb147389.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f1a70a21b762017c9a1af38721095506fb147389.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Allow users to disable
 PSR2
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 24, 2022 at 02:15:44PM +0000, Souza, Jose wrote:
> + Rodrigo
> 
> On Thu, 2022-02-24 at 15:11 +0200, Ville Syrjälä wrote:
> > On Thu, Feb 24, 2022 at 03:06:30PM +0200, Ville Syrjälä wrote:
> > > On Thu, Feb 24, 2022 at 01:01:24PM +0000, Souza, Jose wrote:
> > > > On Thu, 2022-02-24 at 12:12 +0200, Ville Syrjälä wrote:
> > > > > On Wed, Feb 23, 2022 at 11:41:03AM -0800, José Roberto de Souza wrote:
> > > > > > Some users are suffering with PSR2 issues that are under debug or
> > > > > > issues that were root caused to panel firmware, to make life of those
> > > > > > users easier here adding a option to disable PSR1 with kernel
> > > > > > parameter.
> > > > > > 
> > > > > > Using the same enable_psr that is current used to turn PSR1 and PSR2
> > > > > > off or on and adding a new value to only disable PSR2.
> > > > > > The previous valid values did not had their behavior changed.
> > > > > > 
> > > > > > Link: https://gitlab.freedesktop.org/drm/intel/-/issues/4951
> > > > > > Cc: Jouni Högander <jouni.hogander@intel.com>
> > > > > > Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> > > > > > ---
> > > > > >  drivers/gpu/drm/i915/display/intel_psr.c | 4 ++++
> > > > > >  drivers/gpu/drm/i915/i915_params.c       | 2 +-
> > > > > >  2 files changed, 5 insertions(+), 1 deletion(-)
> > > > > > 
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> > > > > > index 2e0b092f4b6be..fc6b684bb7bec 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > > > > @@ -100,11 +100,15 @@ static bool psr_global_enabled(struct intel_dp *intel_dp)
> > > > > >  
> > > > > >  static bool psr2_global_enabled(struct intel_dp *intel_dp)
> > > > > >  {
> > > > > > +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > > > > > +
> > > > > >  	switch (intel_dp->psr.debug & I915_PSR_DEBUG_MODE_MASK) {
> > > > > >  	case I915_PSR_DEBUG_DISABLE:
> > > > > >  	case I915_PSR_DEBUG_FORCE_PSR1:
> > > > > >  		return false;
> > > > > >  	default:
> > > > > > +		if (i915->params.enable_psr == 2)
> > > > > > +			return false;
> > > > > >  		return true;
> > > > > >  	}
> > > > > >  }
> > > > > > diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
> > > > > > index eea355c2fc28a..a9b97e6eb3df0 100644
> > > > > > --- a/drivers/gpu/drm/i915/i915_params.c
> > > > > > +++ b/drivers/gpu/drm/i915/i915_params.c
> > > > > > @@ -94,7 +94,7 @@ i915_param_named_unsafe(enable_hangcheck, bool, 0400,
> > > > > >  
> > > > > >  i915_param_named_unsafe(enable_psr, int, 0400,
> > > > > >  	"Enable PSR "
> > > > > > -	"(0=disabled, 1=enabled) "
> > > > > > +	"(0=disabled, 1=enable up to PSR2 if supported, 2=enable up to PSR1) "
> > > > > 
> > > > > That seems very unintuitive. I would just make it 1==PSR1 and 2==PSR2.
> > > > 
> > > > This will break current behavior.
> > > 
> > > It's a modparam. We routinely break those since they are not meant
> > > to used by normal users as any kind of permanent "make my machine
> > > work" knob.
> > 
> > But I guess if we want to make it a bit less painful your idea of a new
> > modparam might work. + deprecate the old param and remove after one or
> > two kernel releases.
> 
> Was thinking about a new one to limit the version of PSR:
> 
> enable_psr_version
> default = 0(per-chip default), 1 = up to PSR1, 2 = PSR2

I would use the standard -1==default, 0==disable convention here.
Then we can drop the old param after a short transition period.

-- 
Ville Syrjälä
Intel
