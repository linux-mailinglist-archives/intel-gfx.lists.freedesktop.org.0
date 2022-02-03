Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B974A8FD2
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 22:26:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F387B10E454;
	Thu,  3 Feb 2022 21:25:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.smtp.larsendata.com (mx2.smtp.larsendata.com
 [91.221.196.228])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E75D710E4B8
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 21:25:56 +0000 (UTC)
Received: from mail01.mxhotel.dk (mail01.mxhotel.dk [91.221.196.236])
 by mx2.smtp.larsendata.com (Halon) with ESMTPS
 id 02d5ae26-8538-11ec-ac19-0050568cd888;
 Thu, 03 Feb 2022 21:26:55 +0000 (UTC)
Received: from ravnborg.org (80-162-45-141-cable.dk.customer.tdc.net
 [80.162.45.141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: sam@ravnborg.org)
 by mail01.mxhotel.dk (Postfix) with ESMTPSA id 1DC39194B78;
 Thu,  3 Feb 2022 22:25:55 +0100 (CET)
Date: Thu, 3 Feb 2022 22:25:52 +0100
X-Report-Abuse-To: abuse@mxhotel.dk
From: Sam Ravnborg <sam@ravnborg.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <YfxIYAKE1RIVUT+9@ravnborg.org>
References: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
 <20220131210552.482606-6-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220131210552.482606-6-daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 05/21] fbcon: Introduce wrapper for
 console->fb_info lookup
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
Cc: linux-fbdev@vger.kernel.org, Du Cheng <ducheng2@gmail.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Helge Deller <deller@gmx.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 31, 2022 at 10:05:36PM +0100, Daniel Vetter wrote:
> Half of it is protected by console_lock, but the other half is a lot
> more awkward: Registration/deregistration of fbdev are serialized, but
> we don't really clear out anything in con2fb_map and so there's
> potential for use-after free mixups.
> 
> First step is to encapsulate the lookup.
> 
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Helge Deller <deller@gmx.de>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
> Cc: Du Cheng <ducheng2@gmail.com>
> Cc: Claudio Suarez <cssk@net-c.es>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
