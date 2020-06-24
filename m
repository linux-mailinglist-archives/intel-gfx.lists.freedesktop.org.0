Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 276F7206F4C
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2020 10:49:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B58F6E155;
	Wed, 24 Jun 2020 08:49:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71B536E155;
 Wed, 24 Jun 2020 08:49:15 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id C8A325C00F8;
 Wed, 24 Jun 2020 04:49:12 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 24 Jun 2020 04:49:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:content-transfer-encoding:in-reply-to; s=fm3; bh=J
 FVEq4Tr2Dex2Ir3DNRu4+DYdMotdf0jHX8g+4Oa32U=; b=h0y7jR0yYwR1nC7K0
 19eV2D4KaOsptX4MkSYH2SDTnAxbdtjZ2ht9hAG713N2sDqtrpsLBdfapxR6m2i2
 6trsZMP0DB3n49IJ9fyRtAMOaQhtyFrj2FsmVeqYZeZ1kR+aDbwoguwx5L6XeosC
 QWjvgHOeIYRfO6gsyVB9cvtD2lJagHa+t73XF+OstuO6SRXr9hSqmeQP5XvKJ/Jj
 kwqnH216ig19xbYzAZA3Jf0c+plN7QFyefTVkK0KQKAbYHBTk88onq8HhrlPH7gs
 kp5VvSltwo122ezO/F+WMJffu6dKXfIoXPcjzBdoCoeQbjUQSmXHnO4LDrQJveS4
 OK4Dg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; bh=JFVEq4Tr2Dex2Ir3DNRu4+DYdMotdf0jHX8g+4Oa3
 2U=; b=OLHIvbqDQEoGvoXUxZCGUkXR+AbDeir6DDq0Mn7FIx65NTAGpAy0sub+s
 yYyaTDrrSa1UI/Eg1nwwOE+Jh9znCMi+XswtoN3AHLBHaUcENJM73xoYU6N6HAuF
 ZDdIx/SgSy22GHCDSvqh/Y9E18zBror/moOCu+MoXFL7UTSe69k/lHuLiQIfew5c
 t/V0qojuWAVzyQsKaYg3KCeaOXB3oPYAwqULJO1UjH/WPgpAaFJb7bpfvWXuTpOC
 WVuaS6Ow558C4WRno8wps5v1poNkbbiF3XL2jfOHgMkolGmImOSRKVBzy7yIjr7K
 C8bqW7J3ly4eS7O66aMuk201RpwwQ==
X-ME-Sender: <xms:hxPzXmb73r77-8yCebJOdUdI1Y64cwXW0Fx5G8uyJpMK-tmUpQm41g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudekjedgtdehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtugfgjgesthhqredttddtvdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpefgjeettdejgffgffdvteeutdehtdehgeehueetkeefgefhtdetjeekledu
 gedvudenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:hxPzXpbKzBhKyHTZJ0J0jV6oGGoncY4wT3AYNbX_63C28MSUgdqSIQ>
 <xmx:hxPzXg9e3Vo6q346hJ7o83G_OsSPTWlCViknEgsmVZt1mkpyj0e1yA>
 <xmx:hxPzXoryeY9tM2w8iep8DMzFPCLNNLN5CIC3ldRftLEHBTOCMkfQ6A>
 <xmx:iBPzXgSObEUk4pHaGOiXCqKzSptY-YfQ0_ZJi96IVOuLIFo4f6h3WQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 979E63280059;
 Wed, 24 Jun 2020 04:49:11 -0400 (EDT)
Date: Wed, 24 Jun 2020 10:49:09 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20200624084909.2vzvv3c7eqnarbko@gilmour.lan>
References: <20200612160056.2082681-1-daniel.vetter@ffwll.ch>
 <20200612160056.2082681-5-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200612160056.2082681-5-daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 5/8] drm/vc4: Use
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 12, 2020 at 06:00:53PM +0200, Daniel Vetter wrote:
> Now also comes with the added benefit of doing a drm_crtc_vblank_off(),
> which means vblank state isn't ill-defined and fail-y at driver load
> before the first modeset on each crtc.
> 
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Eric Anholt <eric@anholt.net>

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Maxime
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
