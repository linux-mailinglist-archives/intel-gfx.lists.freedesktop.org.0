Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F8157F542
	for <lists+intel-gfx@lfdr.de>; Sun, 24 Jul 2022 15:44:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4258113201;
	Sun, 24 Jul 2022 13:44:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63630113201
 for <intel-gfx@lists.freedesktop.org>; Sun, 24 Jul 2022 13:44:52 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E3B666104A;
 Sun, 24 Jul 2022 13:44:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4120C3411E;
 Sun, 24 Jul 2022 13:44:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1658670291;
 bh=O/cOxJ9L63ifoCe9+9dSUAXEslu7LZkosYany1YVKqk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2AI7e3RI40QvP6QDjf3L9ESDBHQgX9rnJULejuUNTcp+Nryo6T1folQJhAWos8WXR
 IpPuvjNDCu6KQ8I+ldfeqCs8cZGPC1UIB+8jy7gKcum4GbRbGfnB9MMGL0hsFNJD/o
 iYRY2zub1YqcB3DBAKdiwKf7zIEImWklVSA7CujI=
Date: Sun, 24 Jul 2022 15:44:47 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Tomas Winkler <tomas.winkler@intel.com>
Message-ID: <Yt1Mz3xni/UG4vPP@kroah.com>
References: <20220724082428.218628-1-tomas.winkler@intel.com>
 <20220724082428.218628-3-tomas.winkler@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220724082428.218628-3-tomas.winkler@intel.com>
Subject: Re: [Intel-gfx] [PATCH v6 02/14] mei: add slow_fw flag to the mei
 auxiliary device
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
 Alexander Usyskin <alexander.usyskin@intel.com>, linux-kernel@vger.kernel.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Jul 24, 2022 at 11:24:16AM +0300, Tomas Winkler wrote:
> From: Alexander Usyskin <alexander.usyskin@intel.com>
> 
> Add slow_fw flag to the mei auxiliary device info
> to inform the mei driver about slow underlying firmware.
> Such firmware will require to use larger operation timeouts.
> 
> Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
> Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
> Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> ---
>  include/linux/mei_aux.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/include/linux/mei_aux.h b/include/linux/mei_aux.h
> index 587f25128848..a29f4064b9c0 100644
> --- a/include/linux/mei_aux.h
> +++ b/include/linux/mei_aux.h
> @@ -11,6 +11,7 @@ struct mei_aux_device {
>  	struct auxiliary_device aux_dev;
>  	int irq;
>  	struct resource bar;
> +	bool slow_fw;

Please spell this out "slow_firmware", and also document it somewhere.

thanks,

greg k-h
