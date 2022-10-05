Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7375F5B59
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Oct 2022 23:01:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E16510E785;
	Wed,  5 Oct 2022 21:01:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF75B10E785
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Oct 2022 21:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665003682; x=1696539682;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=BiyyNDdpoWDbwoMjKNlmuFrhc9+9zH1dPWqGjNVhC7M=;
 b=LCDh8U1Q+rmDSDcjcJV/vY15j3pDyRaf2i+VFkAE09nZ56IouTvnTskw
 Pu7u64JKzpN4h3V0Gkl3WGU+BTwBg5o8cNsJFlRMtPWPXaG+skuyZiwim
 DrZgsDJzGpjf9FjfRCxJq9NDklewzsJCOOBPMjDYK12lPhdWYYN0WC3xC
 AiLNXjxWWoW/ZDGYuuadN2GYTFBp8AsOblgeaB8R67CK6mzLUpWENGoMY
 vBPReCxYDjlUV6ynPFhB6VLHD3mc9WY6wllXLTWFV5fmvGvhx1EMgE8JQ
 RI+RxohwU9OLOjIvaYxPwX2oE0gthWIM7/AJZdeu9RrQJbecGPQ9FRel1 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="304265774"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="304265774"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 14:01:22 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="799642409"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="799642409"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 14:01:21 -0700
Date: Thu, 6 Oct 2022 00:01:17 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <Yz3wnbs+66FdHmHG@ideak-desk.fi.intel.com>
References: <20221005175251.3586272-1-imre.deak@intel.com>
 <20221005175251.3586272-2-imre.deak@intel.com>
 <Yz3Xo4sj71e83rsV@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Yz3Xo4sj71e83rsV@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Suspend/resume encoders
 during GPU reset
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 05, 2022 at 10:14:43PM +0300, Ville Syrjälä wrote:
> On Wed, Oct 05, 2022 at 08:52:51PM +0300, Imre Deak wrote:
> > The GPU reset involves a display suspend/resume sequence, but this is
> > done without suspending/resuming the encoders.
> 
> The display reset path is there for the old platforms which
> can't reset the gt stuff separately from the display engine. 
> And the only reason we started to force that codepath on more
> modern platforms was to make sure it doesn't break all the time.
> That used to happen quite regularly, but not sure if we even had
> any pre-g4x hw in CI at the time.
> 
> I suspect it's probably a mistake to start piling on more
> code in there just to make it work on really modern hw.
> The old hw where it actually matters doesn't need any of
> that code after all.

Ok, but for the !clobbers_display case the current resume sequence is
broken imo. So if this fix is not acceptable how about only restoring
modeset_restore_state in this case without reading out the HW state
first (to keep some test coverage still) or removing the
force_reset_modeset_test?

> Well, unless we manage to make it just call some simple high
> level "suspend display + resume display" pair of functions
> and nothing else. That would probably be nice simplification
> in general, but iirc currently it's much more ad-hoc than that.

I agree, but I'd say that should be done as a follow-up (just calling
the same functions during both system supend/resume and reset I suppose)
and have a simpler fix for the current issue.

> 
> -- 
> Ville Syrjälä
> Intel
