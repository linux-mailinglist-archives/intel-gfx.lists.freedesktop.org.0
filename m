Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 596A489941D
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 06:29:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53847113888;
	Fri,  5 Apr 2024 04:29:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="0st0y7iI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D1EA113888
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 04:29:53 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 6B068CE359C;
 Fri,  5 Apr 2024 04:29:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B496C433F1;
 Fri,  5 Apr 2024 04:29:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1712291389;
 bh=dnzJr1njtimP/ttE0yuQEACvsEmhII7RV6ev0GeA3z4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0st0y7iI0ag76C8m7e7e9SqTzq+CHpEo2PxcpmmMvArR31U85F995bBNRb/cFNw7N
 YbT5776URTlsClfvTfm+CCmWq9IM0fa9qvLcEMoko2qgH0LPB0eOSbHHQtSTu/wrJZ
 jAcvSCYOOf9iq8YHGUWtQX3ylUL7CBmcV1kKNwY8=
Date: Fri, 5 Apr 2024 06:29:47 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Imre Deak <imre.deak@intel.com>, stable@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@intel.com>
Subject: Re: v6.8 stable backport request for drm/i915
Message-ID: <2024040536-creature-starlet-9967@gregkh>
References: <Zg6rIG0idN3NSTbP@ideak-desk.fi.intel.com>
 <Zg6ww+JomUKR//nh@ideak-desk.fi.intel.com>
 <Zg8aye1ee7T4dNJD@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zg8aye1ee7T4dNJD@intel.com>
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

On Thu, Apr 04, 2024 at 05:25:29PM -0400, Rodrigo Vivi wrote:
> On Thu, Apr 04, 2024 at 04:53:07PM +0300, Imre Deak wrote:
> > On Thu, Apr 04, 2024 at 04:29:04PM +0300, Imre Deak wrote:
> > > Stable team, please backport the following upstream commit to 6.8:
> > > 
> > > commit 7a51a2aa2384 ("drm/i915/dp: Fix DSC state HW readout for SST connectors")
> > 
> > Just noticed that the above commit is not yet upstream, still only
> > queued in drm-intel-next. I presumed patches will be cherry-picked from
> > drm-intel-next to drm-intel-fixes based on the Fixes: tag, so I only
> > pushed the above patch to drm-intel-next; maybe the cherry picking
> > doesn't (always) happen automatically.
> 
> This patch was cherry-picked this week and sent with the drm-intel-fixes
> pull request targeting v6.9-rc3
> 
> Since it has the proper 'Fixes:' tag, it will likely get propagated to
> the stable branches 'automagically' in some near future.

<formletter>

This is not the correct way to submit patches for inclusion in the
stable kernel tree.  Please read:
    https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html
for how to do this properly.

</formletter>
