Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9A4A9D124
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Apr 2025 21:08:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65E7810E98C;
	Fri, 25 Apr 2025 19:08:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=protonmail.com header.i=@protonmail.com header.b="BZ6IBnwQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-106110.protonmail.ch (mail-106110.protonmail.ch
 [79.135.106.110])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03A7589128
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Apr 2025 08:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
 s=protonmail3; t=1745569894; x=1745829094;
 bh=6a75d/sPBXMfpiYTV2jvtt8ItESsFJTSxpA5+JF4rWw=;
 h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
 Message-ID:BIMI-Selector:List-Unsubscribe:List-Unsubscribe-Post;
 b=BZ6IBnwQ4AJWDjDTQN7gwoi++dWBs9TGO4130pvCu7PAyJIzbrEV3D24Zt9TQz05U
 yYuSipnmohHTtYecJ8aGDCOwtnSUZ85N6ug5YFPBsxkrd1cXjwyaJXX33TnWVWbMRw
 yQkHDXSkCD7LC/CR2AkCslxvFTJYpxYG29XjpsnBkKaB9AUy7cZJakZtmX5UJ/HsdV
 bnDrM3utKpeNYWWLpjUIO7U51oKBeiDwAHhoEqfUV9qyXrcs1VwUwhsocroqWIDSPs
 3yTnKeBxWbKLvXi70tklZcy5s8mBmzBqBM9nNdd5XMcmBFBQifpSOFT6hVrVHT5LNX
 PzosMyxziCZ1A==
Date: Fri, 25 Apr 2025 08:31:28 +0000
To: Jani Nikula <jani.nikula@linux.intel.com>, intel-xe@lists.freedesktop.org
From: Harry Austen <hpausten@protonmail.com>
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?utf-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Subject: Re: [PATCH v2] drm/xe: Allow building as kernel built-in
Message-ID: <D9FKVQL9LOK4.BSCX5E1QNGN1@protonmail.com>
In-Reply-To: <87y0voy8mn.fsf@intel.com>
References: <20250425073534.101976-1-hpausten@protonmail.com>
 <87y0voy8mn.fsf@intel.com>
Feedback-ID: 53116287:user:proton
X-Pm-Message-ID: ed5b41a7773e5d22ff3d0b33e09b86ec6758089e
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Fri, 25 Apr 2025 19:08:12 +0000
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

On Fri Apr 25, 2025 at 8:59 AM BST, Jani Nikula wrote:
> On Fri, 25 Apr 2025, Harry Austen <hpausten@protonmail.com> wrote:
>> Fix Kconfig symbol dependency on KUNIT, which isn't actually required
>> for XE to be built-in. However, if KUNIT is enabled, it must be built-in
>> too.
>>
>> Also, allow DRM_XE_DISPLAY to be built-in. But only as long as DRM_I915
>> isn't, since that results in duplicate symbol errors.
>>
>> Fixes: 08987a8b6820 ("drm/xe: Fix build with KUNIT=3Dm")
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Cc: Thomas Hellstr=C3=B6m <thomas.hellstrom@linux.intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Signed-off-by: Harry Austen <hpausten@protonmail.com>
>> ---
>> v2: Ensure DRM_XE_DISPLAY and DRM_I915 can't both be built-in
>>
>>  drivers/gpu/drm/xe/Kconfig | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/xe/Kconfig b/drivers/gpu/drm/xe/Kconfig
>> index 9bce047901b22..bc63c396d7fef 100644
>> --- a/drivers/gpu/drm/xe/Kconfig
>> +++ b/drivers/gpu/drm/xe/Kconfig
>> @@ -1,7 +1,7 @@
>>  # SPDX-License-Identifier: GPL-2.0-only
>>  config DRM_XE
>>  =09tristate "Intel Xe Graphics"
>> -=09depends on DRM && PCI && MMU && (m || (y && KUNIT=3Dy))
>> +=09depends on DRM && PCI && MMU && (m || (y && KUNIT!=3Dm))
>
> I can't make heads or tails about that. I think expressing the kunit
> dependency on a separate line like this is both much more common and
> clear:
>
> =09depends on KUNIT || KUNIT=3Dn

Ah, yes that looks like it should do the trick and does seem clearer. Will =
do in
v3.

>
>>  =09select INTERVAL_TREE
>>  =09# we need shmfs for the swappable backing store, and in particular
>>  =09# the shmem_readpage() which depends upon tmpfs
>> @@ -51,7 +51,7 @@ config DRM_XE
>>
>>  config DRM_XE_DISPLAY
>>  =09bool "Enable display support"
>> -=09depends on DRM_XE && DRM_XE=3Dm && HAS_IOPORT
>> +=09depends on DRM_XE && (DRM_XE=3Dm || DRM_I915!=3Dy) && HAS_IOPORT
>>  =09select FB_IOMEM_HELPERS if DRM_FBDEV_EMULATION
>>  =09select I2C
>>  =09select I2C_ALGOBIT
>
> --
> Jani Nikula, Intel

Thanks,
Harry

