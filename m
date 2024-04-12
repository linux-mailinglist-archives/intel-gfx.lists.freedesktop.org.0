Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0A48A32D7
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 17:51:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F0A310F711;
	Fri, 12 Apr 2024 15:51:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I+zWzIUk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0161C10F72A;
 Fri, 12 Apr 2024 15:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712937066; x=1744473066;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=HSWBcvWTCPj2LEGdRWKwEODZTa1VBqOJ9gX28XY/bOk=;
 b=I+zWzIUkEve80rlVQf1WpncJ6J8tT+zZaVc6xzLSLeCUh4SeKbaKyGid
 qCdPKBbe6v4K8XhRhJM3wTGMUBj6mihHJHoYE3ZDneru71BOwQPasLLJt
 ybg2fxK38jMnMo+ZxtkkNq44Z5PesF+1GFMe9ssbC2CGHSR5+QZI2rgcS
 P40Z0p0U8dILwJvvP01oS+/w1X8S/VGpWn+l+mw/XxaDQdFb9eJ508Kbh
 kwa71R/YL5KulEnFgGqo9H9Cgm41HYDO97wrMbzxWza6ilfdxwPe5nAQo
 nrep8uqZWpNVAGOZOWXz2M+qvch1lSvMScYl/L85S49X4rlqf15Giu3dW w==;
X-CSE-ConnectionGUID: ZXJsUkI0S7ac2c1PzMYtyA==
X-CSE-MsgGUID: 05xuAXzFQdCwG1qWv9NrQQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="19792133"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="19792133"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 08:51:05 -0700
X-CSE-ConnectionGUID: O/i98OUIRv2EsvfiQjkDrQ==
X-CSE-MsgGUID: WxAnGhpFS06U6ZKT7keGlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21844266"
Received: from mohdaris-mobl1.gar.corp.intel.com (HELO localhost)
 ([10.252.61.65])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 08:51:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/6] drm/i915/display: split out intel_fbc_regs.h from
 i915_reg.h
In-Reply-To: <ZhlO_c62Tdlx_ck8@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1712933479.git.jani.nikula@intel.com>
 <eaf07dab79ff057547501892056dd06afec4f213.1712933479.git.jani.nikula@intel.com>
 <ZhlO_c62Tdlx_ck8@intel.com>
Date: Fri, 12 Apr 2024 18:50:57 +0300
Message-ID: <87bk6e4m1q.fsf@intel.com>
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

On Fri, 12 Apr 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Apr 12, 2024 at 05:52:55PM +0300, Jani Nikula wrote:
>> +/*
>> + * Framebuffer compression (915+ only)
>> + */
>
> Outdated comment. Looks like pretty much all the comments
> in this file are misleading/outdated. Maybe just nuke them
> all while at it.

Ack.

>> +#define ILK_DISPLAY_CHICKEN1	_MMIO(0x42000)
>
> Not an FBC register.

Whoops, this one was an accident.

>> +#define CHICKEN_MISC_4		_MMIO(0x4208c)
>
> Also not an FBC register.

However this one was intentional. So the register isn't "an fbc
register", but the contents are all about fbc, and it's only used in
intel_fbc.c.

I guess after all reasonable topical things have been split out from
i915_reg.h, whatever display stuff is left will need to be put to a new
intel_display_regs.h or something. Things like this would then end up
there. Better or worse that way, I don't know.

BR,
Jani.

--=20
Jani Nikula, Intel
