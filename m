Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC0354F3BD
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 10:58:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD14F11ABB3;
	Fri, 17 Jun 2022 08:58:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28DD211ABB1
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jun 2022 08:58:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655456305; x=1686992305;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Fpt9HYSCeIA8AqnYhgQ7NyZfZ/Aen3nZsDvgyVNw7uY=;
 b=DI9bC0HmOLBA7cNhNOayjAUns60SLj7XP9kH8zLqrtcgfRjs2yn49vZJ
 KNySaMPnR2AyYV/draZzsipfR9kenT9nLiJwDJLHiDJaCQDdrF711O3td
 9wEnFMmDEf8mh76rlRqnkCYwHhxzY5dYQ+eDsDAUm1qvQq0pBq0pCsj5H
 KfSJpZ8WIi8qUXD9+4NYKoo1pyfMwqPvkzA95yKlkHWl2M8XjK8yk36Zx
 On3Mi/5jzU3/vGTUYwFFxNIPg4lE0HGS3V5kHBW6GI+Z4rbTNJYDuC2dV
 Ubo8uP3iALVZBOSMD7MDjG19mYbnIV/YYHdfl1/roZ00U6jWCslNLdhiv Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="304910039"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="304910039"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 01:58:21 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="641957992"
Received: from dfischbe-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.34.67])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 01:58:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Yqr/my9kwkXzvNfz@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1655372759.git.jani.nikula@intel.com>
 <Yqr/my9kwkXzvNfz@intel.com>
Date: Fri, 17 Jun 2022 11:57:59 +0300
Message-ID: <87czf7vf8o.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 00/11] drm/i915: drm/i915/display: split
 out verification, hw readout and dump from intel_display.c
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

On Thu, 16 Jun 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Jun 16, 2022 at 12:48:10PM +0300, Jani Nikula wrote:
>> v2 of [1]. Address review comments, drop crtc state compare move, add hw
>> state readout&sanitization split, and sprinkle some struct
>> drm_i915_private *i915 cleanups on top.
>>=20
>> BR,
>> Jani.
>>=20
>> [1] https://patchwork.freedesktop.org/series/105156/
>>=20
>>=20
>> Jani Nikula (11):
>>   drm/i915/wm: move wm state verification to intel_pm.c
>>   drm/i915/dpll: move shared dpll state verification to intel_dpll_mgr.c
>>   drm/i915/mpllb: use I915_STATE_WARN() for state mismatch warnings
>>   drm/i915/mpllb: move mpllb state check to intel_snps_phy.c
>>   drm/i915/display: split out modeset verification code
>>   drm/i915/display: split out crtc state dump to a separate file
>>   drm/i915/display: change who adds [] around crtc state dump context
>>     string
>>   drm/i915/display: rename dev_priv -> i915 in crtc state dump
>>   drm/i915/display: split out hw state readout and sanitize
>>   drm/i915/display: some struct drm_i915_private *i915 conversions
>>   drm/i915/display: convert modeset setup to struct drm_i915_private
>>     *i915
>
> Series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks for the review, pushed everything except patches 9 and 11 which
conflicted, will respin those shortly.

BR,
Jani.

>
>>=20
>>  drivers/gpu/drm/i915/Makefile                 |    3 +
>>  .../drm/i915/display/intel_crtc_state_dump.c  |  314 +++
>>  .../drm/i915/display/intel_crtc_state_dump.h  |   16 +
>>  drivers/gpu/drm/i915/display/intel_display.c  | 1680 +----------------
>>  drivers/gpu/drm/i915/display/intel_display.h  |   18 +
>>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   88 +
>>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |    5 +
>>  .../drm/i915/display/intel_modeset_setup.c    |  724 +++++++
>>  .../drm/i915/display/intel_modeset_setup.h    |   15 +
>>  .../drm/i915/display/intel_modeset_verify.c   |  246 +++
>>  .../drm/i915/display/intel_modeset_verify.h   |   21 +
>>  drivers/gpu/drm/i915/display/intel_snps_phy.c |   43 +
>>  drivers/gpu/drm/i915/display/intel_snps_phy.h |    5 +-
>>  drivers/gpu/drm/i915/intel_pm.c               |  138 +-
>>  drivers/gpu/drm/i915/intel_pm.h               |   14 +-
>>  15 files changed, 1724 insertions(+), 1606 deletions(-)
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_crtc_state_dump.h
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_modeset_setup.c
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_modeset_setup.h
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_modeset_verify.c
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_modeset_verify.h
>>=20
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
