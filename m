Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FBE9AC0D86
	for <lists+intel-gfx@lfdr.de>; Thu, 22 May 2025 16:04:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB78D10EECD;
	Thu, 22 May 2025 14:04:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=protonmail.com header.i=@protonmail.com header.b="LRZmiVpB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-10629.protonmail.ch (mail-10629.protonmail.ch
 [79.135.106.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8717010E6C8
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 May 2025 08:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
 s=protonmail3; t=1747816511; x=1748075711;
 bh=C6F7qOxhKi0G0Edw4hDexbc+uS7sm+NLDARyGdbgw8I=;
 h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
 Message-ID:BIMI-Selector:List-Unsubscribe:List-Unsubscribe-Post;
 b=LRZmiVpB9pZ4EnhXk+XOqevlu4fPlQl/qgZyAO1Xm+av9piIII1xy8JfSStH/EOXx
 7PW4ZrnuZtCyoPFzHU+nOwNMQY+thRtcQ0sZCIxjYObUFrS6419neDZRCFo8RxmCeV
 7ul9aUUFIX30qjxqwysJ1c5G+vsMTqYd0m2yFY+1+XqRaac945+07Wic0vPlnAk0JM
 u8247XkYv03TFRyYb9ksewutxEulY33LzjK8X/3gw8ii4WLKPK1On7sUuEdKLAq9LF
 p/bh/sAedfMKGxe/h75PMOnDRtETHoUuarHdqVyiyiR88s9vT8KIIkzA3hOBZspN/s
 GswKlfrfw/5hw==
Date: Wed, 21 May 2025 08:35:05 +0000
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-xe@lists.freedesktop.org
From: Harry Austen <hpausten@protonmail.com>
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?utf-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH v4] drm/xe: Allow building as kernel built-in
Message-ID: <DA1P8NCLUFU8.N64BOSMN6G9J@protonmail.com>
In-Reply-To: <32da3736-9ac1-4524-94e6-28a81f23bf31@linux.intel.com>
References: <20250516104210.17969-1-hpausten@protonmail.com>
 <32da3736-9ac1-4524-94e6-28a81f23bf31@linux.intel.com>
Feedback-ID: 53116287:user:proton
X-Pm-Message-ID: d802d84413cc02feaff5453a3f3c04ec84f677a9
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

On Mon May 19, 2025 at 4:14 PM BST, Maarten Lankhorst wrote:
> Hey,
>
> On 2025-05-16 12:42, Harry Austen wrote:
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
>> Acked-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>> v4: Add Jani Nikula's Acked-by tag
>> v3: Simplify KUNIT dependency, as suggested by Jani Nikula
>> v2: Ensure DRM_XE_DISPLAY and DRM_I915 can't both be built-in
>>
>>  drivers/gpu/drm/xe/Kconfig | 5 +++--
>>  1 file changed, 3 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/xe/Kconfig b/drivers/gpu/drm/xe/Kconfig
>> index 9bce047901b22..214f40264fa12 100644
>> --- a/drivers/gpu/drm/xe/Kconfig
>> +++ b/drivers/gpu/drm/xe/Kconfig
>> @@ -1,7 +1,8 @@
>>  # SPDX-License-Identifier: GPL-2.0-only
>>  config DRM_XE
>>  =09tristate "Intel Xe Graphics"
>> -=09depends on DRM && PCI && MMU && (m || (y && KUNIT=3Dy))
>> +=09depends on DRM && PCI && MMU
>> +=09depends on KUNIT || KUNIT=3Dn
>>  =09select INTERVAL_TREE
>>  =09# we need shmfs for the swappable backing store, and in particular
>>  =09# the shmem_readpage() which depends upon tmpfs
>> @@ -51,7 +52,7 @@ config DRM_XE
>>
>>  config DRM_XE_DISPLAY
>>  =09bool "Enable display support"
>> -=09depends on DRM_XE && DRM_XE=3Dm && HAS_IOPORT
>> +=09depends on DRM_XE && (DRM_XE=3Dm || DRM_I915!=3Dy) && HAS_IOPORT
>>  =09select FB_IOMEM_HELPERS if DRM_FBDEV_EMULATION
>>  =09select I2C
>>  =09select I2C_ALGOBIT
> Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Thanks!

>
> Can we also get rid of the IOSF_MBI select? Not even xe_display depends o=
n it, leftover from initial porting. :)

As this seems unrelated, I'd be happy to submit a separate patch for this
afterwards. Thanks for the suggestion.

Harry

