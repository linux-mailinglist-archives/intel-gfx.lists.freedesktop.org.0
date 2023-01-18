Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5DB67179E
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 10:27:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D7A710E1E4;
	Wed, 18 Jan 2023 09:27:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E319210E1E4
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 09:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674034025; x=1705570025;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=IyUg4A3s9ZqVV5L3cPETZHuv15Bj7AFQcr68ZB0Bwm0=;
 b=mH+Akkas2mqdo8ZTQnEYJgP9h/3m7NP6t4HtqaESqfzCL3tVTxvoKLqj
 OBxHVuFUBQwnRBVGZs26JNcKyQ8xQP8x4h4hW6hwb6aNUFDRwE6hy08SA
 ncptFW7QfKKU6WA+uO3uQE4dkMYmh7dnBaX2rjJKSIy/2v5N4CC70X0fb
 fra5bbwRvRXg9XCJODOdK4TGaQqfC2gyfabqbiqnEe1d07YJLU5RFAvEs
 HmnOcfF1+gOKWPd76IFMLHdlaGkYH0ElfU8hFPhiO4d2+pMgkX1DDhmL6
 mUSMqtx60wIYQHEMWJEc+28j2iv2zdE1cOooqK0iCYTj9/NWuP5VEQmC9 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="389442254"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="389442254"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 01:27:05 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="661640704"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="661640704"
Received: from kozlovdm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.28.132])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 01:27:03 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Y8bcI7udqQu8SzvP@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1673873708.git.jani.nikula@intel.com>
 <Y8bcI7udqQu8SzvP@intel.com>
Date: Wed, 18 Jan 2023 11:27:01 +0200
Message-ID: <871qnsdwgq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 0/5] drm/i915: extract vblank/scanline
 code to a separate file
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 17 Jan 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Jan 16, 2023 at 02:56:11PM +0200, Jani Nikula wrote:
>> Basically just https://patchwork.freedesktop.org/series/111854/ with the
>> two controversial patches dropped for now.
>>=20
>> BR,
>> Jani.
>>=20
>> Jani Nikula (5):
>>   drm/i915/irq: split out vblank/scanline code to intel_vblank.[ch]
>>   drm/i915/display: move more scanline functions to intel_vblank.[ch]
>>   drm/i915/display: use common function for checking scanline is moving
>>   drm/i915/vblank: use intel_de_read()
>>   drm/i915/vblank: add and use intel_de_read64_2x32() to read vblank
>>     counter
>
> Series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to din.

BR,
Jani.

>
>>=20
>>  drivers/gpu/drm/i915/Makefile                 |   1 +
>>  drivers/gpu/drm/i915/display/intel_crtc.c     |   1 +
>>  drivers/gpu/drm/i915/display/intel_de.h       |   7 +
>>  drivers/gpu/drm/i915/display/intel_display.c  |  54 +--
>>  .../drm/i915/display/intel_display_trace.h    |   1 +
>>  drivers/gpu/drm/i915/display/intel_vblank.c   | 441 ++++++++++++++++++
>>  drivers/gpu/drm/i915/display/intel_vblank.h   |  23 +
>>  drivers/gpu/drm/i915/i915_irq.c               | 408 ----------------
>>  drivers/gpu/drm/i915/i915_irq.h               |   6 -
>>  9 files changed, 476 insertions(+), 466 deletions(-)
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_vblank.c
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_vblank.h
>>=20
>> --=20
>> 2.34.1

--=20
Jani Nikula, Intel Open Source Graphics Center
