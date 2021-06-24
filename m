Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A39D53B2F53
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 14:46:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04FC16EB2F;
	Thu, 24 Jun 2021 12:46:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com
 [64.147.123.25])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFE606EB2F;
 Thu, 24 Jun 2021 12:46:25 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 4873B320082A;
 Thu, 24 Jun 2021 08:46:22 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Thu, 24 Jun 2021 08:46:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:content-transfer-encoding:in-reply-to; s=fm3; bh=T
 EwddBOwGS/LE6uMv0Mg+16hiY8TobVC07jf41lyJDY=; b=V7wPGAgw3OuFAR6Hj
 RvYssx9RhaaCkIXyhN8cgSX7gQc8/Z/5b9bg985nUZoiZ1EKM3MLrbGaN3mtznxv
 SpJfo2X3zJAdMTzmNIJQRTNVlkD7joSDaXXwFbnVkPVATxmsqocmo1ZPmZBm8RXP
 4PG7xIAu5eQjfBlx+yREfvmO0pGCDaUBmw/Smkvj7efQVWJjfws4vsLx7yDHG7Xh
 O/dwRJ2XNHRKnOUhq9VOAZn4US+w7bXaUqE3YP2BiU+wAM2uBlTKnKQu07Kq1Ybq
 2+qh3MmbCO0XPcSzjVn/IfXAscCUCOVJm9EmxmT+H796eJLVOiWeEOry3H+VxGtP
 aKYLw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; bh=TEwddBOwGS/LE6uMv0Mg+16hiY8TobVC07jf41lyJ
 DY=; b=QfLxe4HhKlAua6qDSFIrzkuK90b4ilIgJNMY7S7pjdVL09Hn4s/7cHBZz
 bxpE7SQCHmPwm5UxXNW8lCt8JFVFm0IQUaFrCpUWtLqHS3jFb5OQ/3H10SHdKhU4
 Me5eJSfNlX0ZhnW+W1bHIchF+Ziz5y7qbZp3bM2U0TqIw/tIAdJBJL/Mch7RWwfi
 rLtCPjZypbcc+SjkaZM+UfpH+9W1MHv/DC/4SexW/V3Waxal/zs/DcX1F3NHeC5Q
 CRCD9EgMBDlofL9R+vd8g8EZSDpRquRBNjI6gQhs73UeTdB0leeLLp38Eg/+toYP
 llBokNOUVCl1NTUTHVbAh+xHik1mw==
X-ME-Sender: <xms:nH7UYGfZdTVbJmeZlFFP0s73NzVbNdgzQNlIqwUaVA_saa4wvAEbZQ>
 <xme:nH7UYAM3aqmzxl5Y3bT-9mgSqiRUNQyymhR8wYN7YuHZOfV8KS2MgC8dgtR1dRtTy
 xEWTRPPDIn79mLjits>
X-ME-Received: <xmr:nH7UYHh2yteDFFZRL7BiWq-xyH3wDvxFOlp8q1ImzRiVDdpeBDiK_wD48bnwU1q2cEA0o3yk_0jypTupL-8qeFtD_joIFU83QNgK>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrfeeghedgheejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtugfgjgesthhqredttddtvdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpefgjeettdejgffgffdvteeutdehtdehgeehueetkeefgefhtdetjeekledu
 gedvudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:nH7UYD-tJ1N73PKElrS8w6bUvc49oF7oh8dTH9LAqzz6C6-AfXU8eA>
 <xmx:nH7UYCsi46E_vsWpd9s_LbMJ7JvemiPZfwWyGJgdwQOCROOdOw1-3g>
 <xmx:nH7UYKHK8kiGY8ucyPdvlBgH1hNiaWWfB9zzmx4krxeKwVkfMJ8Gog>
 <xmx:nX7UYGKDE2Gdjt9tvw2T0vm1Dk9_junCY4Ci-Q0yjMzBFNSmF-vusg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 24 Jun 2021 08:46:20 -0400 (EDT)
Date: Thu, 24 Jun 2021 14:46:18 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20210624124618.5bwvt5q6jklheyhl@gilmour>
References: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
 <20210622165511.3169559-10-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210622165511.3169559-10-daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 09/15] drm/armada: Remove prepare/cleanup_fb
 hooks
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
 Russell King <linux@armlinux.org.uk>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 22, 2021 at 06:55:05PM +0200, Daniel Vetter wrote:
> All they do is refcount the fb, which the atomic helpers already do.
> 
> This is was necessary with the legacy helpers and I guess just carry
> over in the conversion. drm_plane_state always has a full reference
> for its ->fb pointer during its entire lifetime,
> see __drm_atomic_helper_plane_destroy_state()
> 
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Russell King <linux@armlinux.org.uk>

Acked-by: Maxime Ripard <maxime@cerno.tech>

Maxime
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
