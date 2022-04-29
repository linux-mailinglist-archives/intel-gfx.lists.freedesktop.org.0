Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA3551443E
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Apr 2022 10:30:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFF3B10FC36;
	Fri, 29 Apr 2022 08:30:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DC2710FC35;
 Fri, 29 Apr 2022 08:30:39 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id E05B1B83317;
 Fri, 29 Apr 2022 08:30:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED0F6C385A7;
 Fri, 29 Apr 2022 08:30:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1651221036;
 bh=E+/mVnEPJmiEomQKTEm/f1Hrlo6iyY5JnqbAgew7j1M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eVmFd9aHNPV6gH6tYsg/HMOTi1DD0dsIci9UBwtr1S6hIXqZUlEHy6YHCpXggctC2
 W94JVuNdK7kOslobvTBfb78EufmiqzqUs+mJ/3YpK7azDGHV+YTUIwuIespz0N59nA
 UaBgNZzhRne1uhN4UgPi5bAAw6YwRML4vwUaPJNA=
Date: Fri, 29 Apr 2022 10:30:33 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Message-ID: <YmuiKcHgl+nABvo/@kroah.com>
References: <cover.1651212016.git.mchehab@kernel.org>
 <a078eb2e46d00ec59c8a91ea0afa5190730c9e58.1651212016.git.mchehab@kernel.org>
 <YmuZovuDaCYDDG4c@phenom.ffwll.local>
 <20220429090757.1acb943a@sal.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220429090757.1acb943a@sal.lan>
Subject: Re: [Intel-gfx] [PATCH 1/2] module: add a function to add module
 references
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
Cc: Kai Vehmanen <kai.vehmanen@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 Luis Chamberlain <mcgrof@kernel.org>, mauro.chehab@intel.com,
 Dan Williams <dan.j.williams@intel.com>, linux-modules@vger.kernel.org,
 Pierre-Louis Bossart <pierre-louis.bossart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 29, 2022 at 09:07:57AM +0100, Mauro Carvalho Chehab wrote:
> Hi Daniel,
> 
> Em Fri, 29 Apr 2022 09:54:10 +0200
> Daniel Vetter <daniel@ffwll.ch> escreveu:
> 
> > On Fri, Apr 29, 2022 at 07:31:15AM +0100, Mauro Carvalho Chehab wrote:
> > > Sometimes, device drivers are bound using indirect references,
> > > which is not visible when looking at /proc/modules or lsmod.
> > > 
> > > Add a function to allow setting up module references for such
> > > cases.
> > > 
> > > Reviewed-by: Dan Williams <dan.j.williams@intel.com>
> > > Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>  
> > 
> > This sounds like duct tape at the wrong level. We should have a
> > device_link connecting these devices, and maybe device_link internally
> > needs to make sure the respective driver modules stay around for long
> > enough too. But open-coding this all over the place into every driver that
> > has some kind of cross-driver dependency sounds terrible.
> > 
> > Or maybe the bug is that the snd driver keeps accessing the hw/component
> > side when that is just plain gone. Iirc there's still fundamental issues
> > there on the sound side of things, which have been attempted to paper over
> > by timeouts and stuff like that in the past instead of enforcing a hard
> > link between the snd and i915 side.
> 
> I agree with you that the device link between snd-hda and the DRM driver
> should properly handle unbinding on both directions. This is something
> that require further discussions with ALSA and DRM people, and we should
> keep working on it.
> 
> Yet, the binding between those drivers do exist, but, despite other
> similar inter-driver bindings being properly reported by lsmod, this one
> is invisible for userspace.
> 
> What this series does is to make such binding visible. As simple as that.

It also increases the reference count, and creates a user/kernel api
with the symlinks, right?  Will the reference count increase prevent the
modules from now being unloadable?

This feels like a very "weak" link between modules that should not be
needed if reference counting is implemented properly (so that things are
cleaned up in the correct order.)

Please don't paper over the real issue with this hack.

thanks,

greg k-h
