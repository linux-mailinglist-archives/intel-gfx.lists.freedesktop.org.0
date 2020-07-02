Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 180CF2120AD
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 12:12:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06FAA6EAC1;
	Thu,  2 Jul 2020 10:12:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2163D6EAC4
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 10:12:36 +0000 (UTC)
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jqwCo-0001j4-3l; Thu, 02 Jul 2020 12:12:34 +0200
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jqwCm-0000RV-En; Thu, 02 Jul 2020 12:12:32 +0200
Message-ID: <475c3651fc753db64f97e60235b25cb9360d36fb.camel@pengutronix.de>
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, DRI Development
 <dri-devel@lists.freedesktop.org>, Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 02 Jul 2020 12:12:32 +0200
In-Reply-To: <CAKMK7uGn3vBQzBehQuF36dmjTm3ocGekPPFMFNc40xK8hx1Gzg@mail.gmail.com>
References: <20200612160056.2082681-1-daniel.vetter@ffwll.ch>
 <20200612160056.2082681-3-daniel.vetter@ffwll.ch>
 <20200624072531.GU20149@phenom.ffwll.local>
 <CAKMK7uGn3vBQzBehQuF36dmjTm3ocGekPPFMFNc40xK8hx1Gzg@mail.gmail.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] [PATCH 3/8] drm/imx: Use
 __drm_atomic_helper_crtc_reset
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
Cc: Shawn Guo <shawnguo@kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 2020-07-02 at 11:41 +0200, Daniel Vetter wrote:
> On Wed, Jun 24, 2020 at 9:25 AM Daniel Vetter <daniel@ffwll.ch> wrote:
> > On Fri, Jun 12, 2020 at 06:00:51PM +0200, Daniel Vetter wrote:
> > > Now also comes with the added benefit of doing a drm_crtc_vblank_off(),
> > > which means vblank state isn't ill-defined and fail-y at driver load
> > > before the first modeset on each crtc.
> > > 
> > > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > > Cc: Philipp Zabel <p.zabel@pengutronix.de>
> > > Cc: Shawn Guo <shawnguo@kernel.org>
> > > Cc: Sascha Hauer <s.hauer@pengutronix.de>
> > > Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> > > Cc: Fabio Estevam <festevam@gmail.com>
> > > Cc: NXP Linux Team <linux-imx@nxp.com>
> > > Cc: linux-arm-kernel@lists.infradead.org
> > 
> > Ping for some ack/review on this pls.
> 
> Still looking for an ack here so I can land this entire pile.
> -Daniel

Acked-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
