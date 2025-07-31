Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0559FB16D70
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 10:24:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FF8610E38B;
	Thu, 31 Jul 2025 08:24:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vc43gIb6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F58310E38B;
 Thu, 31 Jul 2025 08:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753950242; x=1785486242;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=vZdZhm9xDF4gkYxa7DvvCi+1X0MEoSDFakhsxDjtwt4=;
 b=Vc43gIb6W51+zw3pRVg3Ys6brLoeYw9oFdIyjtifuSCcBG3cdvjlfMkr
 EpJQypXcbfCPCl4uYNMuVscgluYzDS9Yz9XzpO+3ADpS8hQ0yV8YE9kvf
 VYZkcr+MHFZ+gS310hu0PPcrQ2upmXsTEm2SzeuDjrjnIgyOvuvX1KNnr
 QBIRAelNHFlcehlodaGfSR4BgEche19G0MzqETK/nPXnT3tNsw/GiQKOu
 GoijkoJTQM9Y6c3cEUJuOM91oZo7n2bVwbnYMsBl4A+oqYXA27o4i1EWH
 HlQpco/luRfBNYPqqvGYfxuidQ4pM+oZ6tf2MS7a8fDe3a+xsYERnv047 w==;
X-CSE-ConnectionGUID: 7Q4i6ZXLRgKNNqKcIYdAXw==
X-CSE-MsgGUID: 0arz9yxjTSq6TvggOtpYgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="56196357"
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="56196357"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 01:24:02 -0700
X-CSE-ConnectionGUID: CZfv+/DSRk+rl6+M54rjlQ==
X-CSE-MsgGUID: +yLlr+rmT4aWzQ5IT7BDfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="167430187"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.108])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 01:23:58 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger
 <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Tomas Winkler <tomasw@gmail.com>, Alexander
 Usyskin <alexander.usyskin@intel.com>, Raag Jadav <raag.jadav@intel.com>,
 linux-mtd@lists.infradead.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] mtd: MTD_INTEL_DG should depend on DRM_I915 or DRM_XE
In-Reply-To: <CAMuHMdUJF6V4v1+zbKKG1A_UvHUXU-ySXe7Xj_ryZtRnk2B2nQ@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <07f67ab8ee78f6bf2559131e193381aafff7479a.1753870424.git.geert+renesas@glider.be>
 <d947168fd02d6f820159b456099e6aa8f465b633@intel.com>
 <CAMuHMdUJF6V4v1+zbKKG1A_UvHUXU-ySXe7Xj_ryZtRnk2B2nQ@mail.gmail.com>
Date: Thu, 31 Jul 2025 11:23:54 +0300
Message-ID: <b58c7cdee44b573c84e0f79dad2655f8286bc89a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 30 Jul 2025, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> Hi Jani,
>
> On Wed, 30 Jul 2025 at 12:32, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>> On Wed, 30 Jul 2025, Geert Uytterhoeven <geert+renesas@glider.be> wrote:
>> > Intel Discrete Graphics non-volatile memory is onlt present on intel
>> > discrete graphics devices, and its auxiliary device is instantiated by
>> > the Intel i915 and Xe2 DRM drivers.  Hence add dependencies on DRM_I915
>> > and DRM_XE, to prevent asking the user about this driver when
>> > configuring a kernel without Intel graphics support.
>> >
>> > Fixes: ceb5ab3cb6463795 ("mtd: add driver for intel graphics non-volatile memory device")
>> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
>> > ---
>> >  drivers/mtd/devices/Kconfig | 4 ++--
>> >  1 file changed, 2 insertions(+), 2 deletions(-)
>> >
>> > diff --git a/drivers/mtd/devices/Kconfig b/drivers/mtd/devices/Kconfig
>> > index 46cebde79f34b0b7..f0ab74d695347117 100644
>> > --- a/drivers/mtd/devices/Kconfig
>> > +++ b/drivers/mtd/devices/Kconfig
>> > @@ -185,8 +185,8 @@ config MTD_POWERNV_FLASH
>> >
>> >  config MTD_INTEL_DG
>> >       tristate "Intel Discrete Graphics non-volatile memory driver"
>> > -     depends on AUXILIARY_BUS
>> > -     depends on MTD
>> > +     depends on AUXILIARY_BUS && MTD
>> > +     depends on DRM_I915 || DRM_XE || COMPILE_TEST
>>
>> I understand the intent, but IIUC auxiliary bus usage should not require
>> a "depends on" relationship. Couldn't you have MTD_INTEL_DG=y and
>> DRM_I915=m just fine?
>
> That is indeed a good point!
>
> What about
>
>     depends on DRM_I915!=n || DRM_XE!=n || COMPILE_TEST
>
> instead?

Fine by me, up to Alexander.

BR,
Jani.



-- 
Jani Nikula, Intel
