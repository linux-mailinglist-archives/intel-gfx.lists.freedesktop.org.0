Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 219D6AC0D87
	for <lists+intel-gfx@lfdr.de>; Thu, 22 May 2025 16:04:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 808CB10EED0;
	Thu, 22 May 2025 14:04:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=protonmail.com header.i=@protonmail.com header.b="g+0YMcZc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-244102.protonmail.ch (mail-244102.protonmail.ch
 [109.224.244.102])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB0D310E7AF
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 May 2025 20:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
 s=protonmail3; t=1747860689; x=1748119889;
 bh=shLth5GYiA0/oF5VkTKOAhq5KcX03Q9lknDocYKhcV8=;
 h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
 Message-ID:BIMI-Selector:List-Unsubscribe:List-Unsubscribe-Post;
 b=g+0YMcZcj4W2qbq5FaD6gIC7oq5ln5Av3cJHL4/iIqMAdMuKtm8TGxe1L+cfYic4u
 bJp55SRZG9ghzbUfzt5SWcuMV6i8uV15wyfwJWSL7n2lq1MCLEvKhYUKNHxUNoNE8Q
 SFhUP7w0wKmrbSAy016XUSLxQaO0fA0a6IXRO5a25s2GUAAZfY+5UyC0DBS4TOJUHd
 KzIJ4Yjvq3W9WxY5bMhAHsn+R2q888L4XhadcppCXKjKU+SokXWGgBdj6kqNQDmSiv
 suXhM6O7/nvb/+/rlhQXThqLW5EkHB8nh3sw/GBOPgMgLl12NV/Xqw3YQc0sg9+APl
 cYSI83jb7ZYtg==
Date: Wed, 21 May 2025 20:51:24 +0000
To: Lucas De Marchi <lucas.demarchi@intel.com>
From: Harry Austen <hpausten@protonmail.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org,
 =?utf-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH v4] drm/xe: Allow building as kernel built-in
Message-ID: <DA24WEEONQS4.2KGRJLM9YNTG3@protonmail.com>
In-Reply-To: <s43s6p2p6frhqg64r42s5owhyiczkfrsgmt5fecosmout73x5m@aq22nie755nt>
References: <20250516104210.17969-1-hpausten@protonmail.com>
 <32da3736-9ac1-4524-94e6-28a81f23bf31@linux.intel.com>
 <DA1P8NCLUFU8.N64BOSMN6G9J@protonmail.com>
 <s43s6p2p6frhqg64r42s5owhyiczkfrsgmt5fecosmout73x5m@aq22nie755nt>
Feedback-ID: 53116287:user:proton
X-Pm-Message-ID: c36c5d77ccb5adfb61a9d1cfe8fb0d9f2efaadf9
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Thu, 22 May 2025 14:04:23 +0000
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed May 21, 2025 at 4:11 PM BST, Lucas De Marchi wrote:
> On Wed, May 21, 2025 at 08:35:05AM +0000, Harry Austen wrote:
> >On Mon May 19, 2025 at 4:14 PM BST, Maarten Lankhorst wrote:
> >> Hey,
> >>
> >> On 2025-05-16 12:42, Harry Austen wrote:
> >>> Fix Kconfig symbol dependency on KUNIT, which isn't actually required
> >>> for XE to be built-in. However, if KUNIT is enabled, it must be built=
-in
> >>> too.
> >>>
> >>> Also, allow DRM_XE_DISPLAY to be built-in. But only as long as DRM_I9=
15
> >>> isn't, since that results in duplicate symbol errors.
> >>>
> >>> Fixes: 08987a8b6820 ("drm/xe: Fix build with KUNIT=3Dm")
> >>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> >>> Cc: Thomas Hellstr=C3=B6m <thomas.hellstrom@linux.intel.com>
> >>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> >>> Signed-off-by: Harry Austen <hpausten@protonmail.com>
> >>> Acked-by: Jani Nikula <jani.nikula@intel.com>
> >>> ---
> >>> v4: Add Jani Nikula's Acked-by tag
> >>> v3: Simplify KUNIT dependency, as suggested by Jani Nikula
> >>> v2: Ensure DRM_XE_DISPLAY and DRM_I915 can't both be built-in
> >>>
> >>>  drivers/gpu/drm/xe/Kconfig | 5 +++--
> >>>  1 file changed, 3 insertions(+), 2 deletions(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/xe/Kconfig b/drivers/gpu/drm/xe/Kconfig
> >>> index 9bce047901b22..214f40264fa12 100644
> >>> --- a/drivers/gpu/drm/xe/Kconfig
> >>> +++ b/drivers/gpu/drm/xe/Kconfig
> >>> @@ -1,7 +1,8 @@
> >>>  # SPDX-License-Identifier: GPL-2.0-only
> >>>  config DRM_XE
> >>>  =09tristate "Intel Xe Graphics"
> >>> -=09depends on DRM && PCI && MMU && (m || (y && KUNIT=3Dy))
> >>> +=09depends on DRM && PCI && MMU
> >>> +=09depends on KUNIT || KUNIT=3Dn
> >>>  =09select INTERVAL_TREE
> >>>  =09# we need shmfs for the swappable backing store, and in particula=
r
> >>>  =09# the shmem_readpage() which depends upon tmpfs
> >>> @@ -51,7 +52,7 @@ config DRM_XE
> >>>
> >>>  config DRM_XE_DISPLAY
> >>>  =09bool "Enable display support"
> >>> -=09depends on DRM_XE && DRM_XE=3Dm && HAS_IOPORT
> >>> +=09depends on DRM_XE && (DRM_XE=3Dm || DRM_I915!=3Dy) && HAS_IOPORT
> >>>  =09select FB_IOMEM_HELPERS if DRM_FBDEV_EMULATION
> >>>  =09select I2C
> >>>  =09select I2C_ALGOBIT
> >> Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> >
> >Thanks!
> >
> >>
> >> Can we also get rid of the IOSF_MBI select? Not even xe_display depend=
s on it, leftover from initial porting. :)
> >
> >As this seems unrelated, I'd be happy to submit a separate patch for thi=
s
> >afterwards. Thanks for the suggestion.
>
> same comment as in the previous version of this patch. What I don't like
> is that it doesn't prevent you to do a bad selection. Instead if you set
> DRM_XE=3Dy and DRM_I915=3Dy, you lose DRM_XE_DISPLAY. Silently. This is
> equivalent of chosing the options via make menuconfig:
>
> =09# initial state
> =09./scripts/config --state CONFIG_DRM_XE --state CONFIG_DRM_XE_DISPLAY -=
-state CONFIG_DRM_I915
> =09m
> =09y
> =09m
>
> =09# set CONFIG_DRM_XE to built-in
> =09./scripts/config -e CONFIG_DRM_XE && make -s olddefconfig
> =09./scripts/config --state CONFIG_DRM_XE --state CONFIG_DRM_XE_DISPLAY -=
-state CONFIG_DRM_I915
> =09y
> =09y
> =09m
>
> =09# set CONFIG_DRM_I915 to built-in, we lose display with xe
> =09$ ~/p/linux-dim/drm-xe-next/scripts/config --state CONFIG_DRM_XE --sta=
te CONFIG_DRM_XE_DISPLAY --state CONFIG_DRM_I915
> =09y
> =09undef
> =09y
>
> I'm not sure how to prevent setting CONFIG_DRM_I915=3Dy if
> CONFIG_DRM_XE_DISPLAY is selected.

Ah interesting, thanks for the example. I'll try a few different things and=
 see
if I can get more sensible behaviour.

>
> Lucas De Marchi
>
> >
> >Harry
> >


