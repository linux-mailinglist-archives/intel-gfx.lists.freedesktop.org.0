Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6D350814B
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Apr 2022 08:38:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FDED10E2AD;
	Wed, 20 Apr 2022 06:38:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67D9D10E2AD;
 Wed, 20 Apr 2022 06:38:42 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D0A68617D6;
 Wed, 20 Apr 2022 06:38:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BAA4C385A1;
 Wed, 20 Apr 2022 06:38:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1650436719;
 bh=Ulp2uHH2QMrPkqjxvlQjTR4D2G7L2h9l4LRiYfoqp7E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ji+urf2156sh2jw2j2gwVYmGyxKuQ89gjDU/z0qWU6xSAs0d5Hw2uEOb5i0y3xhyw
 lxMS3PvtggpUPrlbHeS3slVkZnTdU4/VwXzGL8ZoipsPw6CiVJmIzrGmvcxAbkQzDF
 urEHfPL46ethOtyluuL72bBvC5E4r/wJ1qnS8gCk=
Date: Wed, 20 Apr 2022 08:38:36 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kalle Valo <kvalo@kernel.org>
Message-ID: <Yl+qbPG19ot5N3ut@kroah.com>
References: <20220414123033.654198-1-jani.nikula@intel.com>
 <YlgfXxjefuxiXjtC@kroah.com> <87a6cneoco.fsf@intel.com>
 <87sfq8qqus.fsf@tynnyri.adurom.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87sfq8qqus.fsf@tynnyri.adurom.net>
Subject: Re: [Intel-gfx] [PATCH 0/1] add support for enum module parameters
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
Cc: Jani Nikula <jani.nikula@intel.com>, linux-wireless@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 netdev@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 20, 2022 at 08:13:47AM +0300, Kalle Valo wrote:
> + linux-wireless, netdev
> 
> Jani Nikula <jani.nikula@intel.com> writes:
> 
> > On Thu, 14 Apr 2022, Greg Kroah-Hartman <gregkh@linuxfoundation.org> wrote:
> >> On Thu, Apr 14, 2022 at 03:30:32PM +0300, Jani Nikula wrote:
> >>> Hey, I've sent this before, ages ago, but haven't really followed
> >>> through with it. I still think it would be useful for many scenarios
> >>> where a plain number is a clumsy interface for a module param.
> >>> 
> >>> Thoughts?
> >>
> >> We should not be adding new module parameters anyway (they operate on
> >> code, not data/devices), so what would this be used for?
> >
> > I think it's just easier to use names than random values, and this also
> > gives you range check on the input.
> >
> > I also keep telling people not to add new module parameters, but it's
> > not like they're going away anytime soon.
> >
> > If there's a solution to being able to pass device specific debug
> > parameters at probe time, I'm all ears. At least i915 has a bunch of
> > things which can't really be changed after probe, when debugfs for the
> > device is around. Module parameters aren't ideal, but debugfs doesn't
> > work for this.
> 
> Wireless drivers would also desperately need to pass device specific
> parameters at (or before) probe time. And not only debug parameters but
> also configuration parameters, for example firmware memory allocations
> schemes (optimise for features vs number of clients etc) and whatnot.
> 
> Any ideas how to implement that? Is there any prior work for anything
> like this? This is pretty hard limiting usability of upstream wireless
> drivers and I really want to find a proper solution.

Again, configfs?  That should be what that subsystem was designed for...

thanks,

greg k-h
