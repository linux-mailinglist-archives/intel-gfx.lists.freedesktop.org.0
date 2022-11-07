Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1AD61ECB6
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 09:16:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3CED10E1FC;
	Mon,  7 Nov 2022 08:15:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 166AD10E1FC
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 08:15:55 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 559D5B80D77;
 Mon,  7 Nov 2022 08:15:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F231C433D6;
 Mon,  7 Nov 2022 08:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1667808953;
 bh=sDAKw5K/VHEkLRudBsQgRtFT6FKfiF09ob6HSWj7wnA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Po9jk6mqeJ1qjonTmaUVqECLpxtNzj6fm43gE1EO9fTCiHhLzs7f3126ej3kiEET3
 ngX91nBYTznrWwdN3d56m05OUj0ZZLjg9+blnRXsGSJjhSyQ7LY9mzFb0vMT5T9th1
 A7SZFkoxQbQ5Hd8E2opoyDQGxHelBH/oJYNiJSiU=
Date: Mon, 7 Nov 2022 09:15:49 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Alexander Usyskin <alexander.usyskin@intel.com>
Message-ID: <Y2i+tY2tZzQnUFKC@kroah.com>
References: <20221103155534.1966589-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221103155534.1966589-1-alexander.usyskin@intel.com>
Subject: Re: [Intel-gfx] [PATCH] mei: add timeout to send
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 03, 2022 at 05:55:34PM +0200, Alexander Usyskin wrote:
> When driver wakes up the firmware from the low power stand,
> it is sending a memory ready message.
> The send is done via synchronous/blocking function to ensure
> that firmware is in ready state. However firmware might be
> in unstable state and send might be block forever.
> To address this issue a timeout is added to blocking write command on
> the internal bus.
> 
> Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
> ---
>  drivers/misc/mei/bus-fixup.c | 19 +++++++++++--------
>  drivers/misc/mei/bus.c       |  9 +++++----
>  drivers/misc/mei/client.c    | 21 +++++++++++++++++----
>  drivers/misc/mei/client.h    |  2 +-
>  drivers/misc/mei/main.c      |  2 +-
>  drivers/misc/mei/mei_dev.h   |  2 +-
>  6 files changed, 36 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/misc/mei/bus-fixup.c b/drivers/misc/mei/bus-fixup.c
> index 71fbf0bc8453..3174cad8a5cc 100644
> --- a/drivers/misc/mei/bus-fixup.c
> +++ b/drivers/misc/mei/bus-fixup.c
> @@ -128,7 +128,7 @@ static int mei_osver(struct mei_cl_device *cldev)
>  	os_ver = (struct mei_os_ver *)fwcaps->data;
>  	os_ver->os_type = OSTYPE_LINUX;
>  
> -	return __mei_cl_send(cldev->cl, buf, size, 0, mode);
> +	return __mei_cl_send(cldev->cl, buf, size, 0, mode, 0);

Ick, adding another parameter to a function is not helpful here, what
does 0 mean unless you look it up?

> --- a/drivers/misc/mei/bus.c
> +++ b/drivers/misc/mei/bus.c
> @@ -29,11 +29,12 @@
>   * @length: buffer length
>   * @vtag: virtual tag
>   * @mode: sending mode
> + * @timeout: send timeout for blocking writes, 0 for infinite timeout

What units are these in?  Jiffies?  seconds?  hours?  Don't make us
guess :(

Why not write a function that is mei_cl_send_timeout() that has the new
option?  That way it's obvious that the other ones are blocking, right?

thanks,

greg k-h
