Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E12A74BDD
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Mar 2025 15:01:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFBC210EA2A;
	Fri, 28 Mar 2025 14:01:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K+Pug9jD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EA5F10EA2A;
 Fri, 28 Mar 2025 14:01:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743170500; x=1774706500;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=LWWQFNNB4t1d2iFNHMCgy1hsGERa36tzE0mhV/d1EIM=;
 b=K+Pug9jD6klKesO6MQOUg2a1c6b4l+qpn7liXdl7dHnFpjA5f1luCapf
 fXiIwzSZj845n3gm+m928MMZtzlUk8WS6GGL/ew0pIfOO2NbzH+GT95nV
 h7rQC44VRIs45Rb3pn81yf8S8iQN0s1LT6Zhc39MQ0smCkbs9w0HXbn3c
 sFXwUfKy2/Cd0TlB3VnAH/g7FAvEaLXSn/9GiuvUfs5NUbP12ugsu799D
 ecqYXOucmxGEr1OcbW33aiV4uNMK0JtF+WynJsce3ohna8GxlqfnWApwN
 fYZQIJtebMekQX+Jy/OIqszFjc2QH2XXvHbSL4gGnfO+WvPpWLIXTjvB8 A==;
X-CSE-ConnectionGUID: LPwU9fJsQvC0XNT5xSV81g==
X-CSE-MsgGUID: 31TJbAzoS8mKuX7G1ogh+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11387"; a="44713816"
X-IronPort-AV: E=Sophos;i="6.14,283,1736841600"; d="scan'208";a="44713816"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2025 07:01:38 -0700
X-CSE-ConnectionGUID: QFqSGBi7R0OZ7iPAHQjaXw==
X-CSE-MsgGUID: dwZbNaXCT3acJWNzelAu7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,283,1736841600"; d="scan'208";a="130663414"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.94])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2025 07:01:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 0/6] drm/i915: dpll, ddi, crc, psr etc conversions to
 struct intel_display
In-Reply-To: <Z-aAvijGRTTANm0_@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1742906146.git.jani.nikula@intel.com>
 <Z-aAvijGRTTANm0_@intel.com>
Date: Fri, 28 Mar 2025 16:01:28 +0200
Message-ID: <87jz8945l3.fsf@intel.com>
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

On Fri, 28 Mar 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Mar 25, 2025 at 02:36:32PM +0200, Jani Nikula wrote:
>> We're getting there!
>>=20
>> Jani Nikula (6):
>>   drm/i915/dpll: convert intel_dpll.[ch] to struct intel_display
>>   drm/i915/ddi: convert intel_ddi.c to struct intel_display
>>   drm/i915/crc: convert intel_pipe_crc.c to struct intel_display
>>   drm/i915/psr: further conversions to struct intel_display
>>   drm/i915/wa: convert intel_display_wa.[ch] to struct intel_display
>>   drm/i915/display: drop some unnecessary intel_de_* compatibility
>>     wrappers
>
> Series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to din.

BR,
Jani.

>
>>=20
>>  drivers/gpu/drm/i915/display/intel_ddi.c      | 904 +++++++++---------
>>  drivers/gpu/drm/i915/display/intel_de.h       |  16 +-
>>  drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
>>  .../drm/i915/display/intel_display_driver.c   |   7 +-
>>  .../gpu/drm/i915/display/intel_display_wa.c   |  30 +-
>>  .../gpu/drm/i915/display/intel_display_wa.h   |  11 +-
>>  drivers/gpu/drm/i915/display/intel_dpll.c     | 312 +++---
>>  drivers/gpu/drm/i915/display/intel_dpll.h     |  13 +-
>>  drivers/gpu/drm/i915/display/intel_fbc.c      |   2 +-
>>  drivers/gpu/drm/i915/display/intel_pipe_crc.c | 137 ++-
>>  drivers/gpu/drm/i915/display/intel_pps.c      |   5 +-
>>  drivers/gpu/drm/i915/display/intel_psr.c      |  85 +-
>>  drivers/gpu/drm/xe/display/xe_display_wa.c    |   6 +-
>>  13 files changed, 729 insertions(+), 803 deletions(-)
>>=20
>> --=20
>> 2.39.5

--=20
Jani Nikula, Intel
