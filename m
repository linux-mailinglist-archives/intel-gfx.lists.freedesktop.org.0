Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3704761FD5
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 19:10:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC38010E3E6;
	Tue, 25 Jul 2023 17:10:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2684C10E168;
 Tue, 25 Jul 2023 17:10:38 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 6C3016181A;
 Tue, 25 Jul 2023 17:10:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F1D9C433C7;
 Tue, 25 Jul 2023 17:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1690305036;
 bh=gFDIOFJUg+DOfAXFPWC3hL0j9ovfHQMSJqI2XgTzQpk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S+N5g77nllkgBlBRqV1c+fDVHcxuV+oE53LaqoIBIfWcSWr5PXsJzP4RjNKR6/+Ng
 9FJ1gf0hM+UBWpUwZ10DoAq9tTEbGL4EjAiIncisE+kGvL17r/cq6Nm0PfGrD1+12Z
 amKEpM3IfKLNJU6L8nqeg/RcmcoSdVfbfPdrv9zs=
Date: Tue, 25 Jul 2023 19:10:33 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <2023072525-gimmick-debatable-0b87@gregkh>
References: <20230724082511.3225-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230724082511.3225-1-andriy.shevchenko@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 1/1] drm/i915: Move abs_diff() to math.h
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
Cc: linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
 David Airlie <airlied@gmail.com>, Andi Shyti <andi.shyti@kernel.org>,
 Nikita Shubin <nikita.shubin@maquefel.me>, Jiri Slaby <jirislaby@kernel.org>,
 Helge Deller <deller@gmx.de>, linux-serial@vger.kernel.org,
 Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Alexey Dobriyan <adobriyan@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Nikita Shubin via B4 Relay <devnull+nikita.shubin.maquefel.me@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jul 24, 2023 at 11:25:11AM +0300, Andy Shevchenko wrote:
> abs_diff() belongs to math.h. Move it there.
> This will allow others to use it.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Reviewed-by: Jiri Slaby <jirislaby@kernel.org> # tty/serial

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
