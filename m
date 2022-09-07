Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCB95B07B4
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 16:57:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 558A910E798;
	Wed,  7 Sep 2022 14:57:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 760DE10E798;
 Wed,  7 Sep 2022 14:57:39 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E5445618F2;
 Wed,  7 Sep 2022 14:57:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C68EEC433C1;
 Wed,  7 Sep 2022 14:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1662562658;
 bh=d520zUAtDGyDnmP0GEoAN9IgWzKwUag6Ww8oJgAQMtU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NPikXo+giUyhB8tIqtfqjoKYmgxotZpc/EAKwyObcIDtfSOd2px1ga7MkH6nksriY
 Fve55mzN/vDTECY8LDwbkJNevSUYGzwE60qMt+A437RiykKFHQEOs2s/QoyN0YVdIg
 FXUJwiABmxfPRnPeQ7aedMLsyIt2K5yySS+GaEvA=
Date: Wed, 7 Sep 2022 16:57:35 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jim Cromie <jim.cromie@gmail.com>
Message-ID: <YxixX3L5w5J+Efw1@kroah.com>
References: <20220904214134.408619-1-jim.cromie@gmail.com>
 <20220904214134.408619-22-jim.cromie@gmail.com>
 <YxiwiO+Ni/CvAO5Q@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YxiwiO+Ni/CvAO5Q@kroah.com>
Subject: Re: [Intel-gfx] [PATCH v6 21/57] dyndbg: test
 DECLARE_DYNDBG_CLASSMAP, sysfs nodes
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
Cc: daniel.vetter@ffwll.ch, intel-gfx@lists.freedesktop.org,
 linux@rasmusvillemoes.dk, linux-kernel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, jbaron@akamai.com, seanpaul@chromium.org,
 dri-devel@lists.freedesktop.org, joe@perches.com,
 intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 07, 2022 at 04:54:00PM +0200, Greg KH wrote:
> On Sun, Sep 04, 2022 at 03:40:58PM -0600, Jim Cromie wrote:
> > Demonstrate use of DECLARE_DYNDBG_CLASSMAP macro, and expose them as
> > sysfs-nodes for testing.
> 
> Wait, why sysfs?
> 
> sysfs isn't for testing, why not use debugfs?
> 
> 
> > 
> > For each of the 4 class-map-types:
> > 
> >   - declare a class-map of that type,
> >   - declare the enum corresponding to those class-names
> >   - share _base across 0..30 range
> >   - add a __pr_debug_cls() call for each class-name
> >   - declare 2 sysnodes for each class-map
> >     for 'p' flag, and future 'T' flag
> > 
> > These declarations create the following sysfs parameter interface:
> > 
> >   :#> pwd
> >   /sys/module/test_dynamic_debug/parameters
> >   :#> ls
> >   T_disjoint_bits  T_disjoint_names  T_level_names  T_level_num  do_prints
> >   p_disjoint_bits  p_disjoint_names  p_level_names  p_level_num
> 
> What is in these files?
> 
> For sysfs stuff, you need Documentation/ABI entries so that you can't
> abuse sysfs.  With debugfs, you can do anything you want :)

Ah, it's just module parameter abuse, not a "normal" sysfs file at all :)

Nevermind, sorry for the noise...

greg k-h
