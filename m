Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F880B48C5D
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 13:39:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C08C10E4CD;
	Mon,  8 Sep 2025 11:39:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mpFU85Is";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 201CC10E4CF
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 11:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757331582; x=1788867582;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=imd6bcuLjWYtLfF+tRtO55veUpXfGL+jiHTBEAOHWKc=;
 b=mpFU85Is8ict5JdSrcSFg5iy1lwDG7ab+tmBV8wFg8wAumgwgTuhWhyl
 2YeYVVakutEYj83a3rwxaN4y7odk43meHuISHBNpvxawDWJaGtUFS6J/N
 Sz1wFPu+452obA9jLBtLGLRMMumQ/VLHRVnPS8zc2jAaKkl/2VyEXJeaz
 QB8Ooh+NWAo5YDJ0zftpivp7q8XitC56uRO4svV9m8JMwDQDjCSaU/BXX
 f6Ek7rmAVnUyriX+anyZor1HzXgq3dydbpLce692K0sZ8Fhdr2nrVmH0I
 Ju7It1J9U/9oRnbaMxjeVs87peTetR49pI6PrdcwAFvIKSPmxj+Ob7jLl A==;
X-CSE-ConnectionGUID: hDbLajYjTRq8LSYrFM0SQg==
X-CSE-MsgGUID: eCbcn7rARnm6KFySoI5b9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11546"; a="69837973"
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="69837973"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 04:39:42 -0700
X-CSE-ConnectionGUID: Ckk+yJ9HQHiPYe8S84wK+w==
X-CSE-MsgGUID: uH9MZub0T9+kakBfkqX3TA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="171943549"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.204])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 04:39:38 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Thomas Zimmermann <tzimmermann@suse.de>, Noralf =?utf-8?Q?Tr=C3=B8nnes?=
 <noralf@tronnes.org>, Simona Vetter <simona.vetter@ffwll.ch>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: Re: [PATCH 6/6] drm: Avoid undefined behavior on u16 multiplication
In-Reply-To: <bc353160d0c3d7f662f66edd8b33ecee2b851b67@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1756995162.git.krzysztof.karas@intel.com>
 <9a7a56a1a958f7aa0389bb5732f4b716bf2be0f6.1756995162.git.krzysztof.karas@intel.com>
 <bc353160d0c3d7f662f66edd8b33ecee2b851b67@intel.com>
Date: Mon, 08 Sep 2025 14:39:34 +0300
Message-ID: <4a6f41cf353a6ba2ade0af08f8eebf99c82e5cac@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Mon, 08 Sep 2025, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Mon, 08 Sep 2025, Krzysztof Karas <krzysztof.karas@intel.com> wrote:
>> Fields hdiplay and vdisplay are defined as u16. Their
>> multiplication causes implicit promotion to signed 32-bit value,
>> which may overflow and cause undefined behavior.
>>
>> The same goes for vpos, which is multiplied by signed integer.
>>
>> Prevent possible undefined behavior by explicitly casting one of
>> the operands to (unsigned int) type.
>>
>> Fixes: 3ed4351a83ca ("drm: Extract drm_vblank.[hc]")
>> Fixes: cc4312127108 ("drm/tinydrm/mipi-dbi: Add mipi_dbi_init_with_forma=
ts()")
>> Fixes: 80f7c3f77697 ("drm/vram: Add helpers to validate a display mode's=
 memory requirements")
>> Cc: Thomas Zimmermann <tzimmermann@suse.de>
>> Cc: Noralf Tr=C3=B8nnes <noralf@tronnes.org>
>> Cc: Simona Vetter <simona.vetter@ffwll.ch>
>> Cc: <stable@vger.kernel.org> # v4.13+
>> Cc: <stable@vger.kernel.org> # v5.4+
>> Cc: <stable@vger.kernel.org> # v5.7+
>
> The multitude of files, Fixes and subsequent Cc: stables with different
> target kernels is just an indication this should be three separate
> patches.
>
> The cause may be the same, but they're still unrelated fixes.
>
> Moreover, imagine the consequences of one of these fixes ending up being
> incorrect, and you have to revert or fix it. It's a logistics PITA.

Also, depending on things introduced in v5.7 means this can't be
backported to v5.4 either. Not very important here, but something to
consider for the future.

BR,
Jani.


--=20
Jani Nikula, Intel
