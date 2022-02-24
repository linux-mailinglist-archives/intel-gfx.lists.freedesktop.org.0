Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B34B4C2E6C
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 15:29:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A1B010E9D0;
	Thu, 24 Feb 2022 14:29:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AFD610E9D0
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Feb 2022 14:29:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645712979; x=1677248979;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=R3AGGNBHslR9yQqrkk1cuVdZ0EVUD7Fh6OPYlGieAg0=;
 b=JpqIyMxoQex9pT3FNuXwytucHuPksp3S4No3oDJpalNoIz772z7PwZml
 AbqUXc5ofXa3OX4vRlt1ujZpC1RY0J+bmNmY5zuvZoP19HxfPQcmiYy6f
 OhAvHuN5dDXcViet6I+sbwP7T7P5hSzmWYIPvpEHINsiz//ebBiaDa9Wv
 acQUTxev6Nnub+JAq3du/jBpD+bu4Q2lsulTN+ZcyaWBosmQUqkFQ4xR+
 cFgUHB0h8d+qniodjlg0sndzvZhm7Bmcpc0aW8T7xOdtKayYzPCUNLgVK
 AJd0PFo4AZC/CKEtqfy6QZDVsBD7HFnt/J/6B19cACpA2Mo8CRy+xEHqn Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="252166120"
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="252166120"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 06:29:38 -0800
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="548768042"
Received: from vishaliy-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.255.35.126])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 06:29:37 -0800
Date: Thu, 24 Feb 2022 09:29:34 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <YheWTjUKQ2U2etF9@intel.com>
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
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
> 
> > 
> 

My trauma with PSR makes me to ask if we really wants this option.
Is PSR1 really more stable at this point? Shouldn't we just disable everything
while we fix the PSR2 and avoid touching the parameter?

If we are confident that PSR1 is better than simply disabling, then
I like the idea of a new parameter that overrides the previous one so
we can delete in a couple months and keep only one.

i915.psr
default=-1 (per-chip default), 0=disabled, 1=psr1, 2=psr2

but I also would be okay breaking a parameter that is marked as unstable
and which main use externally is to disable the psr (i915.enable_psr=0).

Thanks,
Rodrigo.
