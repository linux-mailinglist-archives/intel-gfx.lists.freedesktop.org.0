Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 540A8C0044E
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 11:35:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA86B10E3AE;
	Thu, 23 Oct 2025 09:35:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PsxgRQiK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7532F10E3AE;
 Thu, 23 Oct 2025 09:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761212106; x=1792748106;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=P/Gcs5KJrzMF8Xfv+49DWuKSvc1F6k6zWcEQCjQY2aU=;
 b=PsxgRQiKLSQGpbiiZwjTaGW1bx8+yF5TQlFUS55sHCHDnZ96aKS5RcxY
 N7knnkekGEcKOAo5VK4Inhm8QRdArWQJT2P+YMUiXGDtB1i1tQ539AE62
 Ucgn3l2EmHr95XCi+lQxoEHLjPJ255WouZ/mGQ6UDLyb2+PVfl3TU0Zkj
 eDaADX4H+wNChRoAwfBpreOqaLtArCCeg6cvefeNdbVqqeUwnMZNYAhcs
 Qfa4e2fPa0qRTCk+742F1ghC2AihV5afOEw0Y0arhowTbzOvbUd0Xv38s
 M+T2BvL8wTdeL4pqqw6FM1YnhDbXZuvwNWTYeiW2Og1+3QYYVz1nJJ8rb A==;
X-CSE-ConnectionGUID: c7TL7NiQTqyHUNxCfAzttA==
X-CSE-MsgGUID: eW2XHOOmQAeJkfkeTcyzOg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62406414"
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="62406414"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 02:35:06 -0700
X-CSE-ConnectionGUID: Evvs9hACQ6K2rt0AnlD1gg==
X-CSE-MsgGUID: 6TVXmaaxRcq2I9z5ygtttw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="183812621"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.158])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 02:35:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/2] drm/i915/display: drop a few unnecessary i915_drv.h
 includes
In-Reply-To: <17db6106392803115414cb09d5975a927b001da0.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251022121450.452649-1-jani.nikula@intel.com>
 <17db6106392803115414cb09d5975a927b001da0.camel@intel.com>
Date: Thu, 23 Oct 2025 12:35:02 +0300
Message-ID: <cdbcbdc616f80cc983c143854c435be9e8609940@intel.com>
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

On Thu, 23 Oct 2025, "Hogander, Jouni" <jouni.hogander@intel.com> wrote:
> On Wed, 2025-10-22 at 15:14 +0300, Jani Nikula wrote:
>> We've stopped using struct drm_i915_private in intel_fb.c and
>> skl_universal_plane.c, so we can drop the i915_drv.h includes.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>

Thanks for the reviews, pushed to din.

BR,
Jani.

>
>> ---
>> =C2=A0drivers/gpu/drm/i915/display/intel_fb.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 1 -
>> =C2=A0drivers/gpu/drm/i915/display/skl_universal_plane.c | 3 ++-
>> =C2=A02 files changed, 2 insertions(+), 2 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c
>> b/drivers/gpu/drm/i915/display/intel_fb.c
>> index 3958628c73e9..6ade38198f39 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fb.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
>> @@ -10,7 +10,6 @@
>> =C2=A0#include <drm/drm_gem.h>
>> =C2=A0#include <drm/drm_modeset_helper.h>
>> =C2=A0
>> -#include "i915_drv.h"
>> =C2=A0#include "i915_utils.h"
>> =C2=A0#include "intel_bo.h"
>> =C2=A0#include "intel_display.h"
>> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> index 0319174adf95..765d288cce2b 100644
>> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> @@ -7,9 +7,9 @@
>> =C2=A0#include <drm/drm_blend.h>
>> =C2=A0#include <drm/drm_damage_helper.h>
>> =C2=A0#include <drm/drm_fourcc.h>
>> +#include <drm/drm_print.h>
>> =C2=A0
>> =C2=A0#include "pxp/intel_pxp.h"
>> -#include "i915_drv.h"
>> =C2=A0#include "i915_utils.h"
>> =C2=A0#include "intel_bo.h"
>> =C2=A0#include "intel_de.h"
>> @@ -24,6 +24,7 @@
>> =C2=A0#include "intel_plane.h"
>> =C2=A0#include "intel_psr.h"
>> =C2=A0#include "intel_psr_regs.h"
>> +#include "intel_step.h"
>> =C2=A0#include "skl_scaler.h"
>> =C2=A0#include "skl_universal_plane.h"
>> =C2=A0#include "skl_universal_plane_regs.h"
>

--=20
Jani Nikula, Intel
