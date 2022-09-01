Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E36135A9B37
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 17:08:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA57010E062;
	Thu,  1 Sep 2022 15:08:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C3FE10E062
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Sep 2022 15:08:38 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id D3B68B82793;
 Thu,  1 Sep 2022 15:08:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95A78C433D6;
 Thu,  1 Sep 2022 15:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1662044915;
 bh=2E4qzAZlqdzxaDQ6Sk931UgRfflnwTiFuDiHRMtDZNg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ebHUbAH9QOnvsnL5152n5Kl/rW8hItFAS2/zBDML30hTqqsKHoJSTrnNnTYiy/uZE
 yQ/J8cPchHWdbooUcCIBkDK5VD0/ncoVTMHmiRPUKWuB3LGuoGppno1wV1h7nGWbYL
 QIk2N/Bck2xORKQWHWtYll6MmK0w/vlR5b3OIw4c=
Date: Thu, 1 Sep 2022 17:08:32 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Tomas Winkler <tomas.winkler@intel.com>
Message-ID: <YxDK8GEkLZ8hEIeC@kroah.com>
References: <20220806122636.43068-1-tomas.winkler@intel.com>
 <20220806122636.43068-11-tomas.winkler@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220806122636.43068-11-tomas.winkler@intel.com>
Subject: Re: [Intel-gfx] [PATCH v7 10/15] mei: mkhi: add memory ready command
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
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Aug 06, 2022 at 03:26:31PM +0300, Tomas Winkler wrote:
> Add GSC memory ready command.
> The command indicates to the firmware that extend operation
> memory was setup and the firmware may enter PXP mode.
> 
> CC: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
> Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
> ---
>  drivers/misc/mei/mkhi.h | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/misc/mei/mkhi.h b/drivers/misc/mei/mkhi.h
> index 27a9b476904e..056b76e73d40 100644
> --- a/drivers/misc/mei/mkhi.h
> +++ b/drivers/misc/mei/mkhi.h
> @@ -1,6 +1,6 @@
>  /* SPDX-License-Identifier: GPL-2.0 */
>  /*
> - * Copyright (c) 2003-2020, Intel Corporation. All rights reserved.
> + * Copyright (c) 2003-2021, Intel Corporation. All rights reserved.

It is 2022 :(

