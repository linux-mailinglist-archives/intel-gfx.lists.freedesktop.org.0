Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3238675EDB3
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jul 2023 10:34:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49AB710E283;
	Mon, 24 Jul 2023 08:34:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 592EF10E28B
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jul 2023 08:34:43 +0000 (UTC)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1qNr1d-0008D2-KF; Mon, 24 Jul 2023 10:34:41 +0200
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1qNr1a-001iLG-LE; Mon, 24 Jul 2023 10:34:38 +0200
Received: from pza by lupine with local (Exim 4.96)
 (envelope-from <p.zabel@pengutronix.de>) id 1qNr1a-000NGv-0X;
 Mon, 24 Jul 2023 10:34:38 +0200
Message-ID: <3edf59510eda9806e254479cde3e1c8a3670f2d1.camel@pengutronix.de>
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Jani Nikula
 <jani.nikula@intel.com>, Imre Deak <imre.deak@intel.com>, Jiri Slaby
 <jirislaby@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Ilpo =?ISO-8859-1?Q?J=E4rvinen?=
 <ilpo.jarvinen@linux.intel.com>, Alexey Dobriyan <adobriyan@gmail.com>, 
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, 
 linux-fbdev@vger.kernel.org
Date: Mon, 24 Jul 2023 10:34:38 +0200
In-Reply-To: <20230724082511.3225-1-andriy.shevchenko@linux.intel.com>
References: <20230724082511.3225-1-andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: intel-gfx@lists.freedesktop.org
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
Cc: Nikita Shubin via B4 Relay <devnull+nikita.shubin.maquefel.me@kernel.org>,
 Nikita Shubin <nikita.shubin@maquefel.me>, Stephen Boyd <sboyd@kernel.org>,
 Helge Deller <deller@gmx.de>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@gmail.com>,
 Andi Shyti <andi.shyti@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mo, 2023-07-24 at 11:25 +0300, Andy Shevchenko wrote:
> abs_diff() belongs to math.h. Move it there.
> This will allow others to use it.
>=20
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Reviewed-by: Jiri Slaby <jirislaby@kernel.org> # tty/serial

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de> # gpu/ipu-v3

regards
Philipp
