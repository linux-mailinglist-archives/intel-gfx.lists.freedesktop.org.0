Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F187763DC41
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Nov 2022 18:43:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19ADA10E11C;
	Wed, 30 Nov 2022 17:43:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C27810E132
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 17:43:14 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 26AFBB81C59;
 Wed, 30 Nov 2022 17:43:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5249EC433C1;
 Wed, 30 Nov 2022 17:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1669830191;
 bh=h1BzRWi3z5+fEMDy7NI8l+Tfel2ZkrLHsxCE4NCtSuE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iSKjjwnsMwZm5Qeny4IYIVYei6hX9O3ilAovTVoGFDfBS64HOugsUSjcRCQYwrk4N
 zN3Nww9Ww7oON7fMd11RTj/T2yPwRV1jQxRpYTDuz8/IRBC6XOV+zt6wx+Io7M5Zm6
 RiyHTHb9cxgzT0XsBzb9m0HYvfmH/HzIYNsyhP+M=
Date: Wed, 30 Nov 2022 18:43:09 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <Y4eWLWhCy2NLbENs@kroah.com>
References: <20221116124735.2493847-1-alexander.usyskin@intel.com>
 <Y4dmrP9RzXi7wrwJ@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y4dmrP9RzXi7wrwJ@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 0/2] mei: add timeout to send
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
Cc: intel-gfx@lists.freedesktop.org,
 Alexander Usyskin <alexander.usyskin@intel.com>, linux-kernel@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@redhat.com>,
 Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 30, 2022 at 09:20:28AM -0500, Rodrigo Vivi wrote:
> On Wed, Nov 16, 2022 at 02:47:33PM +0200, Alexander Usyskin wrote:
> > When driver wakes up the firmware from the low power state,
> > it is sending a memory ready message.
> > The send is done via synchronous/blocking function to ensure
> > that firmware is in ready state. However, in case of firmware
> > undergoing reset send might be block forever.
> > To address this issue a timeout is added to blocking
> > write command on the internal bus.
> > 
> > Introduce the __mei_cl_send_timeout function to use instead of
> > __mei_cl_send in cases where timeout is required.
> > The mei_cl_write has only two callers and there is no need to split
> > it into two functions.
> > 
> > V2: address review comments:
> >  - split __mei_cl_send and __mei_cl_send_timeout
> >  - add units to timeout KDoc
> >  - use MAX_SCHEDULE_TIMEOUT to squash wait to one macro
> > 
> > V3: - split the state fix into separate patch
> >     - document define unit
> >     - expand timeout KDoc
> 
> These 2 patches looks good to me now.
> 
> Greg, whenever you review it, please let me know if it is
> okay to me to push these through the drm-fixes, or if you
> prefer these to the mei branches.

These have been in my tree for over a week now, sorry.  No one told me
not to take them...

{sigh}

greg k-h
