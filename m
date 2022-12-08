Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C86647098
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 14:15:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 182EA10E49E;
	Thu,  8 Dec 2022 13:15:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3640310E49E;
 Thu,  8 Dec 2022 13:15:01 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 02A09B823CA;
 Thu,  8 Dec 2022 13:14:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26C58C433C1;
 Thu,  8 Dec 2022 13:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1670505297;
 bh=glSCtV+QzoCCztEb8hKzqZvn/Kmi//N93WanQimJ3rk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EAwqHfgMtkZyHyvjY/V2PP92GiVHFAxUQ7AfeBuSj2egHNczQ63uPStxjudUu/19G
 iUO41j6S9tvKd6wB2+l2kEQOY1mH8qlOHgmC+MPr8+X0+cdrOKq94DDdWV4lGraL3p
 LX4/TT3k/jY5ZPbxpqpUXk0oy6EdKm9cVysL2+dM=
Date: Thu, 8 Dec 2022 14:14:54 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <Y5HjTpzmgZWft+nF@kroah.com>
References: <20221130134838.23805-1-andriy.shevchenko@linux.intel.com>
 <Y5HelZhkxnPf6hIs@smile.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y5HelZhkxnPf6hIs@smile.fi.intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 1/4] i915: Move list_count() to list.h as
 list_count_nodes() for broader use
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
Cc: Mathias Nyman <mathias.nyman@linux.intel.com>,
 Mathias Nyman <mathias.nyman@intel.com>, Jani Nikula <jani.nikula@intel.com>,
 Kevin Cernekee <cernekee@gmail.com>, intel-gfx@lists.freedesktop.org,
 linux-usb@vger.kernel.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 08, 2022 at 02:54:45PM +0200, Andy Shevchenko wrote:
> On Wed, Nov 30, 2022 at 03:48:35PM +0200, Andy Shevchenko wrote:
> > Some of the existing users, and definitely will be new ones, want to
> > count existing nodes in the list. Provide a generic API for that by
> > moving code from i915 to list.h.
> 
> Greg, I believe this one is ready to be taken. Or please tell me what I need
> to do.

Wait for me to get through the current backlog of patches that I have in
my review queue.  Odds are, it will have to wait until after 6.2-rc1 is
out based on when 6.1 is going to be released.

Don't worry, it's not lost.

thanks,

greg k-h
