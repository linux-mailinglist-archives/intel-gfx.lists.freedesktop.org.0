Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E762997E6A9
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 09:33:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93C8C10E20C;
	Mon, 23 Sep 2024 07:33:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ktG4s/0y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4112810E090;
 Mon, 23 Sep 2024 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727076833; x=1758612833;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=P9Sc0aNK2NGpSOm2oBtbGjnEwQ7R/RgBxYoQKZF4ZlE=;
 b=ktG4s/0ywiQhIy0TcZH0JXCrRBFrwboJ3q+F0IbOpefq1laxQnpg9Rmo
 remYPBqfB/c89ZIOLsAZLm/CZ8jWoQPYPum6Di5+6hCSVVRFIeDpQ9Zcp
 dj2Z6pjD1fA8hGShca+Ddmn2aWdOlVN59Lc6Ufrp6mD5KehJmodPAjE49
 OEsKUrntbkeMY5HuPQHbAetKum9yAqcySBuYRO1EdInnpZyRMuYja5QiE
 PlDtaF2ajltK7P7OvQZ+OxG9b/6OEg+aZmfRaJIzT3ABfxWJQIwplalDO
 3Ze1lJq6kBonCAQOGjv8ogc+4USOMfY1W2FTfsO1LT/tjnenidDWM/b9K w==;
X-CSE-ConnectionGUID: t4+eLZm8QsWecBf3b2wWLw==
X-CSE-MsgGUID: l1sK3wzBSna8SRvuJ2zP/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="25960535"
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="25960535"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 00:33:46 -0700
X-CSE-ConnectionGUID: fD4Tnt0ORK6ipDDv5vEUBg==
X-CSE-MsgGUID: 9RxMNozLQ7O+I+Jl9fOT6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="75745829"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 00:33:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 0/9] drm/i915/dp: clean up DP testing
In-Reply-To: <Zu16AP_oUcWOWpAl@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1726833193.git.jani.nikula@intel.com>
 <Zu16AP_oUcWOWpAl@intel.com>
Date: Mon, 23 Sep 2024 10:33:42 +0300
Message-ID: <87r09a7rjd.fsf@intel.com>
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

On Fri, 20 Sep 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Sep 20, 2024 at 02:56:42PM +0300, Jani Nikula wrote:
>> Whenever I look at doing anything in intel_dp.c I think it's grown too
>> big. It's over 7k lines.
>>=20
>> The DP test functionality is fairly isolated, and mostly irrelevant for
>> normal operation. Move it all to its own file. This reduces intel_dp.c
>> by about 500 lines, and intel_display_debugfs.c by about 200 lines. And
>> intel_dp->compliance is now fully handled within intel_dp_test.c.
>>=20
>> BR,
>> Jani.
>>=20
>> Jani Nikula (9):
>>   drm/i915/dp: split out intel_dp_test.[ch] to a dedicated file
>>   drm/i915/dp: fix style issues in intel_dp_test.c
>>   drm/i915/dp: convert intel_dp_test.c struct intel_display
>>   drm/i915/dp: clean up intel_dp_test.[ch] interface
>>   drm/i915/dp: move DP test debugfs files next to the functionality
>>   drm/i915/dp: fix style issues in DP test debugfs
>>   drm/i915/display: remove the loop in fifo underrun debugfs file
>>     creation
>>   drm/i915/dp: convert DP test debugfs to struct intel_display
>>   drm/i915/dp: add intel_dp_test_reset() and intel_dp_test_short_pulse()
>
> Gave this a quick once over, didn't see anything obviously wrong.
>
> Series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to din.

BR,
Jani.

>
>>=20
>>  drivers/gpu/drm/i915/Makefile                 |   1 +
>>  drivers/gpu/drm/i915/display/g4x_dp.c         |   7 +-
>>  drivers/gpu/drm/i915/display/intel_ddi.c      |   7 +-
>>  .../drm/i915/display/intel_display_debugfs.c  | 214 +----
>>  drivers/gpu/drm/i915/display/intel_dp.c       | 520 +-----------
>>  drivers/gpu/drm/i915/display/intel_dp.h       |   9 +-
>>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |   5 +-
>>  drivers/gpu/drm/i915/display/intel_dp_test.c  | 765 ++++++++++++++++++
>>  drivers/gpu/drm/i915/display/intel_dp_test.h  |  23 +
>>  drivers/gpu/drm/xe/Makefile                   |   1 +
>>  10 files changed, 816 insertions(+), 736 deletions(-)
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_dp_test.c
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_dp_test.h
>>=20
>> --=20
>> 2.39.2

--=20
Jani Nikula, Intel
