Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3592C28CDD6
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Oct 2020 14:11:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 213F46E093;
	Tue, 13 Oct 2020 12:11:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 533 seconds by postgrey-1.36 at gabe;
 Tue, 13 Oct 2020 12:11:02 UTC
Received: from mail-41103.protonmail.ch (mail-41103.protonmail.ch
 [185.70.41.103])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4A146E093
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Oct 2020 12:11:02 +0000 (UTC)
Received: from mail-03.mail-europe.com (mail-03.mail-europe.com
 [91.134.188.129])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits))
 (No client certificate requested)
 by mail-41103.protonmail.ch (Postfix) with ESMTPS id 27B532000745
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Oct 2020 12:02:08 +0000 (UTC)
Authentication-Results: mail-41103.protonmail.ch;
 dkim=pass (2048-bit key) header.d=emersion.fr header.i=@emersion.fr
 header.b="LPYCieDY"
Date: Tue, 13 Oct 2020 12:01:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail2; t=1602590523;
 bh=9yNp+3guKlZH6Yh913kKM9tW4diOYxSVBxkspzPmL58=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
 b=LPYCieDYO0Xbzme3imBwNo+WoMpaFKDpo+r+VySpxat8rM+LheSpEjIZIE5YO4F6Z
 zKwD9GndiCrBJIeneA/8zL5awwxfvlzh3H3ngzQsUj7UYBK0v1x96gC4qU8tbVGKG/
 9MBZUnbUTlmD7HIujF2jwgX6ZHDJnpispAjb3iklbp9Eo6drYZ1geiQ/JjEQWaNRnE
 dmJaNxkPL8U5ScFKhmfIFIkLZFZpUEZpwGpwFJtKQuyr/ZkDsQu2Kk/8oLCYeQx9BG
 yL5y1DJ9z3CqwpbJ+WHvX65AivlnRqw35gfNI7+JgSanqre2Dq7kXGYGWnQ6x1zTRc
 js4BZSALU/Xqg==
To: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
From: Simon Ser <contact@emersion.fr>
Message-ID: <0iLdVk_D6CK0SMJ_pGgP02tBfYnMRw9u2E7eK_PkVQcKxXRRc5j2Td1466kkOFsQXn7joJzWDxTIHyfrVqD4h6CuIMiNXmoUD80yOlapgvw=@emersion.fr>
In-Reply-To: <20201012184130.937-2-pankaj.laxminarayan.bharadiya@intel.com>
References: <20201012184130.937-1-pankaj.laxminarayan.bharadiya@intel.com>
 <20201012184130.937-2-pankaj.laxminarayan.bharadiya@intel.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
 mailout.protonmail.ch
Subject: Re: [Intel-gfx] [PATCH v6 1/5] drm: Introduce plane and CRTC
 scaling filter properties
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
 David Airlie <airlied@linux.ie>, Thomas Zimmermann <tzimmermann@suse.de>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "lorusak@gmail.com" <lorusak@gmail.com>,
 "themagnificentmrg@gmail.com" <themagnificentmrg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Monday, October 12, 2020 8:41 PM, Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com> wrote:

> +/**
> + * DOC: CRTC scaling filter property
> + *
> + * SCALING_FILTER:
> + *
> + *	Indicates scaling filter to be used for CRTC scaler
> + *
> + *	The value of this property can be one of the following:
> + *	Default:
> + *		Driver's default scaling filter
> + *	Nearest Neighbor:
> + *		Nearest Neighbor scaling filter
> + *
> + * Drivers can set up this property for a CRTC by calling
> + * drm_crtc_create_scaling_filter_property
> + */

Can we put this under the existing "Standard CRTC Properties" doc comment
instead? I'd prefer to avoid having a lot of different headings for properties.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
