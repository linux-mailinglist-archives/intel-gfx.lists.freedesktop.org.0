Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE8F3619DA
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Apr 2021 08:30:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3C756EB25;
	Fri, 16 Apr 2021 06:30:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail1.protonmail.ch (mail1.protonmail.ch [185.70.40.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88E526EB25
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Apr 2021 06:30:22 +0000 (UTC)
Date: Fri, 16 Apr 2021 06:30:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail3; t=1618554619;
 bh=zRwWsMDd5Kf2yQpedEA3Ka2dLpgNvYvwuOL0uYq4mxY=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
 b=r8GpbchaiE6TeGeH2mTTPaYfY4MlNMJ7+h/tnOCSZb0KFXDbRb9F7tST7dd6vzJ6R
 PBrYm1zDrFz6LUR1D4KIuZx9DmMFFILOthD4mv+BiZ/07wxMWU/PMD/jCXc9IfuiB7
 xJd1R7ucECxapsOhpkt+sOnfAIizGn2qaO+0iilWjZdw4KJwMz3rwYgbE9Tdh9L8Li
 MAK9yREp+/vzlWhyrJqoxHAs3uTnbX84QFv6JUxuleulwwZQtUOEGe0MY6DDpDMYYt
 +Exfq9HssaFYF3r+BsesZ1iFxeCBQBVYu9w8REZSRgqVF/Iuhj0jfaU44PsIekJ4nb
 iR3zU090AgA+A==
To: Daniel Vetter <daniel.vetter@ffwll.ch>
From: Simon Ser <contact@emersion.fr>
Message-ID: <csmR47SnJtt7IWUT4j5GAXY1PUo1353cZy6TyrjqQVynHAAqHEiqWQyuFkfZLj8UWMhzdRiAGPlG31d1hTU7PatWRbjK6v3Zq3WuGT4EACE=@emersion.fr>
In-Reply-To: <20210414090815.453744-1-daniel.vetter@ffwll.ch>
References: <20210413094904.3736372-12-daniel.vetter@ffwll.ch>
 <20210414090815.453744-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
 mailout.protonmail.ch
Subject: Re: [Intel-gfx] [PATCH] drm/modifiers: Enforce consistency between
 the cap an IN_FORMATS
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
Reply-To: Simon Ser <contact@emersion.fr>
Cc: Maxime Ripard <mripard@kernel.org>,
 Pekka Paalanen <pekka.paalanen@collabora.com>, David Airlie <airlied@linux.ie>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <maxime@cerno.tech>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reviewed-by: Simon Ser <contact@emersion.fr>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
