Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09EB4A6ED26
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 11:00:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E74710E1C0;
	Tue, 25 Mar 2025 10:00:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ImFI6aaY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2907010E1C0;
 Tue, 25 Mar 2025 10:00:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742896844; x=1774432844;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=MP7popNL/c2uBdf/g5BO9iOu5CWeT2Ee1lfce/5fXhE=;
 b=ImFI6aaYK8HiytlPKH1a5wIOmTdDwglnaZRODvdrIvVYE0+99vbLBH8j
 iCi13VuMz7eWRCzk0ui7FSUb60l8j0hzJ03VC7tottfY4xzEiEYACh0xS
 ne/uTfSDnzruFdIeyTqzgJhGWcmYN6NP+qUW93MTvLr5QQOXT9/lUb5LP
 WDyFiNn2lO5JQDrYLemQe0WbH4OftTZTSJ0gBC4Ros6IuJxSHZc+eZlBy
 Ybb2YXS9YE502Pk2TT4FLx8StoZnLGH1aMYevmAoHGeJfERo6VGS/Wbsn
 R9LdtBhiNt0sOt8OIdVGF8Ki3t3tI0j5QSSu6lXOM95AED9qfZDHEI8V/ Q==;
X-CSE-ConnectionGUID: oM1OEAM4QECruV0GjPIuqQ==
X-CSE-MsgGUID: HoxxMgjpQ7SpkxzKUgFGqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="55130701"
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="55130701"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 03:00:43 -0700
X-CSE-ConnectionGUID: T+HC3+UrQLS6flTofUYI7Q==
X-CSE-MsgGUID: xYzJBbqMRLOIP7EtDOTPIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="124499519"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.134])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 03:00:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 00/12] drm/i915/display: yet another batch of struct
 intel_display conversions
In-Reply-To: <Z-GMuR8Okww3Bgku@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1742554320.git.jani.nikula@intel.com>
 <Z-GMuR8Okww3Bgku@intel.com>
Date: Tue, 25 Mar 2025 12:00:38 +0200
Message-ID: <87zfh98m61.fsf@intel.com>
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

On Mon, 24 Mar 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Mar 21, 2025 at 12:52:44PM +0200, Jani Nikula wrote:
>> More conversions to struct intel_display.
>>=20
>> Jani Nikula (12):
>>   drm/i915/dsi: convert vlv_dsi.[ch] to struct intel_display
>>   drm/i915/dsi: convert vlv_dsi_pll.[ch] to struct intel_display
>>   drm/i915/dsi: convert parameter printing to drm_printer
>>   drm/i915/dsi: convert intel_dsi_vbt.[ch] to struct intel_display
>>   drm/i915/dsi: convert intel_dsi_dcs_backlight.c to struct
>>     intel_display
>>   drm/i915/dvo: convert intel_dvo.[ch] to struct intel_display
>>   drm/i915/lvds: convert intel_lvds.[ch] to struct intel_display
>>   drm/i915/tc: convert intel_tc.c to struct intel_display
>>   drm/i915/atomic: convert intel_atomic.c to struct intel_display
>>   drm/i915/display: convert intel_crtc_state_dump.c to struct
>>     intel_display
>>   drm/i915/pch: convert intel_pch_display.[ch] to struct intel_display
>>   drm/i915/pch: convert intel_pch_refclk.c to struct intel_display
>
> Series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks for the review, pushed to drm-intel-next.

BR,
Jani.


--=20
Jani Nikula, Intel
