Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC23A7B7D77
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 12:44:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FC3210E0F5;
	Wed,  4 Oct 2023 10:44:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90E5910E0F5
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 10:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696416258; x=1727952258;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=uED7X+2UxeP8mSytQWw2fqRS+GKxeqooER74VgHF3Vw=;
 b=JzfDi9/TJjwYii3eo+03kb0oITHWknRjNvoJpS6ktGxwvacA4GekNlAn
 hZtQ8NK4YyjpT22Zg92FydjOGVCFltR/KThzlarMs9yX/8ZxEkFtOWMPz
 N4RmS9S7WjRwtKnV0RpqOQNd9uyK4UX/7JzgR+LGM8KOyhP/I6OKt8clt
 HNwGS9VmTtHfVNYbUzxlqjglPVNKLKBFWkgQes2MF2/7xq/S9nHo5EYHe
 RPN9qGdblHKcFypKXIISwHoYtpw3ep/BRYbe94mTpp6YDi8QrEQRzSPYI
 K8DObTo9pfnZWfQhW+uYEI2594hB40mK2QHSbr7QrdkIA/pX2m1itpQvN g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="383033927"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="383033927"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 03:44:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="744918327"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="744918327"
Received: from msterni-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.56.48])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 03:44:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <ZRxyJE3p15e1CBph@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1696336887.git.jani.nikula@intel.com>
 <ZRxyJE3p15e1CBph@intel.com>
Date: Wed, 04 Oct 2023 13:44:14 +0300
Message-ID: <874jj6fz0h.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 0/4] drm/i915: move display info related
 stuff under display/
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

On Tue, 03 Oct 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Oct 03, 2023 at 03:42:06PM +0300, Jani Nikula wrote:
>> Continue separation of display code from the rest.
>>=20
>> Jani Nikula (4):
>>   drm/i915: convert INTEL_DISPLAY_ENABLED() into a function
>>   drm/i915: move display info related macros to display
>>   drm/i915: separate display runtime info init
>>   drm/i915: separate subplatform init and runtime feature init
>
> Didn't spot anything wrong. I was a bit suspicious about
> deferring the port_mask mangling, but doesn't look like we
> need it that early anywhere.
>
> Series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to din.

>
>>=20
>>  drivers/gpu/drm/i915/display/intel_crt.c      |  2 +-
>>  .../drm/i915/display/intel_display_device.c   | 43 ++++++++++++++++++-
>>  .../drm/i915/display/intel_display_device.h   | 10 +++++
>>  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  2 +-
>>  drivers/gpu/drm/i915/display/intel_dvo.c      |  2 +-
>>  drivers/gpu/drm/i915/display/intel_hdmi.c     |  2 +-
>>  drivers/gpu/drm/i915/display/intel_hotplug.c  |  2 +-
>>  drivers/gpu/drm/i915/display/intel_panel.c    |  2 +-
>>  drivers/gpu/drm/i915/display/intel_sdvo.c     |  2 +-
>>  drivers/gpu/drm/i915/display/intel_tv.c       |  2 +-
>>  drivers/gpu/drm/i915/i915_driver.c            |  1 +
>>  drivers/gpu/drm/i915/i915_drv.h               | 14 ------
>>  drivers/gpu/drm/i915/intel_device_info.c      | 22 ----------
>>  14 files changed, 62 insertions(+), 46 deletions(-)
>>=20
>> --=20
>> 2.39.2

--=20
Jani Nikula, Intel
