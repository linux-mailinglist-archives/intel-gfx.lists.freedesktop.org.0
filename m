Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B557C1984A1
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 21:38:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E0C06E478;
	Mon, 30 Mar 2020 19:38:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 483 seconds by postgrey-1.36 at gabe;
 Mon, 30 Mar 2020 19:38:35 UTC
Received: from mail-40134.protonmail.ch (mail-40134.protonmail.ch
 [185.70.40.134])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0ADD66E478;
 Mon, 30 Mar 2020 19:38:35 +0000 (UTC)
Date: Mon, 30 Mar 2020 19:38:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail; t=1585597112;
 bh=uRxchlmJlrLpyPG3Yt8X2ZF+uOCp+7w5Up5lBsHFuPs=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
 b=VMNbAVfCVomQuZ1EKe2lGzEmvsoumCenhlMKTAIsIlCYWQ2N8wQRdzvTLVsCRVrT3
 CHYN4QFeyWswroHTdV48k6tL7tewVEUX/mkQM3o9tV9UDYmPyEqQai5ZlUMY9MeBCW
 FGTtEPI2LFZop3bdeTeiORurmZUufGIOVyn0vZJc=
To: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
From: Simon Ser <contact@emersion.fr>
Message-ID: <zFLZ_IslN6elEqm_OOvTO2sNHFcy65lv-gNmSyC9Y_S2TdFgH3IteH_z76mojJ6IKFkQtEQZFn8kvF8y_-b6vvXPRbHTqQV94bF_4fX86UE=@emersion.fr>
In-Reply-To: <20200330183857.13270-3-pankaj.laxminarayan.bharadiya@intel.com>
References: <20200330183857.13270-1-pankaj.laxminarayan.bharadiya@intel.com>
 <20200330183857.13270-3-pankaj.laxminarayan.bharadiya@intel.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=7.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on mail.protonmail.ch
Subject: Re: [Intel-gfx] [PATCH v3 2/5] drm/drm-kms.rst: Add plane and CRTC
 scaling filter property documentation
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
 "daniels@collabora.com" <daniels@collabora.com>,
 Jonathan Corbet <corbet@lwn.net>, David Airlie <airlied@linux.ie>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Monday, March 30, 2020 8:38 PM, Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com> wrote:

> diff --git a/Documentation/gpu/drm-kms.rst b/Documentation/gpu/drm-kms.rst
> index 906771e03103..b0335e9d887c 100644
> --- a/Documentation/gpu/drm-kms.rst
> +++ b/Documentation/gpu/drm-kms.rst
> @@ -509,6 +509,18 @@ Variable Refresh Properties
> .. kernel-doc:: drivers/gpu/drm/drm_connector.c
> :doc: Variable refresh properties
>
> +Plane Scaling Filter Property
> +-----------------------
> +
> +.. kernel-doc:: drivers/gpu/drm/drm_plane.c
>
> -   :doc: Plane scaling filter property
> -
>
> +CRTC Scaling Filter Property
> +-----------------------
> +
> +.. kernel-doc:: drivers/gpu/drm/drm_crtc.c
>
> -   :doc: CRTC scaling filter property
> -
>

This adds whole new sections just for the scaling filter property.
Shouldn't we use the existing "Plane properties" section defined in
drm_blend.c for plane props? (Same for CRTC props.)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
