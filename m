Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 167E2847567
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 17:53:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 968E510EF1F;
	Fri,  2 Feb 2024 16:53:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FtoUj86Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C97C10EF4A
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 16:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706892790; x=1738428790;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=D1wXu4fRPG+lacVuKFnTfSHUzPCkSfXxZvrWWIAPQsM=;
 b=FtoUj86QemPmbaw0s+wjNYWRZ7fW1+g4JsD7WEWUWC33mhql/WTDSCIO
 0feOLIqMBqcdrFUIH3eiBOWf6LrMzALGf2kt20SDcY56k3JjeQ+zsV5Iq
 LEOCPBJXcMldr8ugP3hdVptgfNk0D6RnhjekSVRXH1zIoxTrxMqbOEBqS
 6QwgZPHJFepBvCvlJQ/6GcXJA/8dFLTDSJju9pz9qki4l9ulVFKKRcbYY
 tPyOoDM/xUxzYJLI9XW7HppXLBzToQwAxlCWfiugMrhZIBnXDbHnaGdJX
 yEzVHlEC3Yj2IiGhFjyurwGOACDwBIkI/AxPDBvl8HRYJGa2WEtuEcXSM g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="357761"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="357761"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 08:53:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="823256642"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="823256642"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Feb 2024 08:53:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 02 Feb 2024 18:53:03 +0200
Date: Fri, 2 Feb 2024 18:53:03 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Greg KH <greg@kroah.com>
Cc: Sasha Levin <sashal@kernel.org>, stable-commits@vger.kernel.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Oded Gabbay <ogabbay@kernel.org>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Subject: Re: Patch "drm: Fix color LUT rounding" has been added to the
 6.7-stable tree
Message-ID: <Zb0d7xIFMhZpTXsW@intel.com>
References: <20240201170320.69864-1-sashal@kernel.org>
 <ZbvdXx7-GSUljUh1@intel.com> <2024020119-user-aviation-b3c5@gregkh>
 <ZbvkbJFs-hQ1wi4o@intel.com>
 <2024020120-unclog-junction-8a5f@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2024020120-unclog-junction-8a5f@gregkh>
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

On Thu, Feb 01, 2024 at 11:17:28AM -0800, Greg KH wrote:
> On Thu, Feb 01, 2024 at 08:35:24PM +0200, Ville Syrjälä wrote:
> > On Thu, Feb 01, 2024 at 10:16:48AM -0800, Greg KH wrote:
> > > On Thu, Feb 01, 2024 at 08:05:19PM +0200, Ville Syrjälä wrote:
> > > > On Thu, Feb 01, 2024 at 12:03:20PM -0500, Sasha Levin wrote:
> > > > > This is a note to let you know that I've just added the patch titled
> > > > > 
> > > > >     drm: Fix color LUT rounding
> > > > > 
> > > > > to the 6.7-stable tree which can be found at:
> > > > >     http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary
> > > > > 
> > > > > The filename of the patch is:
> > > > >      drm-fix-color-lut-rounding.patch
> > > > > and it can be found in the queue-6.7 subdirectory.
> > > > > 
> > > > > If you, or anyone else, feels it should not be added to the stable tree,
> > > > > please let <stable@vger.kernel.org> know about it.
> > > > 
> > > > I guess I wasn't clear enough in the other mail...
> > > > 
> > > > NAK for all of backports of this patch.
> > > 
> > > Ok, but why?  It seems that you are fixing a real issue here, right?  If
> > > not, the changelog is not clear with that at all...
> > > 
> > > I'll go drop it now, thanks.
> > 
> > Because backporting it would require other backports that depend on
> > the rounding behaviour.
> > 
> > Can I somehow fully opt out of these automagic backports?
> > If I want my stuff backported I'll ask for it.
> 
> You can, just let me know what exact files should be ignored, or you can
> send a patch against this file:
> 	https://git.kernel.org/pub/scm/linux/kernel/git/stable/stable-queue.git/tree/ignore_list

I think we should add at least i915 and xe there. cc: maintainers

But I can't really make that kind of decision for the whole
drm subsystem (even though I'd like to), so I was hoping to
have a name/email based blacklit to make sure nothing I
wrote gets automagically backported. But I guess that's
not a thing.

-- 
Ville Syrjälä
Intel
