Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96AB69BCB3C
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 12:05:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BF5F10E411;
	Tue,  5 Nov 2024 11:05:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TG8xi31g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89E0810E411
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Nov 2024 11:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730804706; x=1762340706;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=nTE0Bxqej7KjoS3159oMNb84q+xNu2RhMnJw5yStVSA=;
 b=TG8xi31ghJp0erftq2lXRHKnfqXw4Z488yR+pV3hv6MrQsb3Np/BHJOs
 nwylKjA6D1IC6r9nlSSDFANUwOhTmvnuxElFg27RirJLb9U77did4QjSy
 2508EsjsU9aphHn6PhgkmHTTlghhIxAnuCUpCxo2bemcpaQzhMCkp3oTx
 sLmuXJP1k1ddKdn0aCxl8/U9lDQFS4ZSNGTYElEF7mUrnXjiQIiy64Um+
 CEp1WyK6PTQn4TAPIhp9IvbQWBa+bfnuICDEzzdA2h1BT4XYaKSHl6SGV
 RT/IgH9kdD20HfWYw3PnT5JnqXEFKcL55lElviLAgGAaGJsdfn8MsZOnl Q==;
X-CSE-ConnectionGUID: weFNcejSSEa7Q5gbWr4ddA==
X-CSE-MsgGUID: 9qRPBkO7QLmovSHmfEsCOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="30767769"
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208";a="30767769"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 03:05:05 -0800
X-CSE-ConnectionGUID: fgSj3RI/QemPMaM0L9Stvg==
X-CSE-MsgGUID: nORTtCMxR7anEtQxC4zhdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208";a="84096307"
Received: from iklimasz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 03:05:03 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [RESEND 0/4] drm/i915: add dedicated lock for each sideband
In-Reply-To: <b8c94f1da0b0da9b5dadbe01dd11772d02bb53d1.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1730193891.git.jani.nikula@intel.com>
 <b8c94f1da0b0da9b5dadbe01dd11772d02bb53d1.camel@intel.com>
Date: Tue, 05 Nov 2024 13:05:01 +0200
Message-ID: <87ikt2gcv6.fsf@intel.com>
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

On Tue, 29 Oct 2024, "Hogander, Jouni" <jouni.hogander@intel.com> wrote:
> On Tue, 2024-10-29 at 11:25 +0200, Jani Nikula wrote:
>> It's misleading to use the same sideband mutex for LPT/WPT IOSF,
>> VLV/CHV
>> IOSF, and punit. Add dedicated locks for clarity.
>
> For the whole series:
>
> Reviewed-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>

Thanks for the review, pushed to din.

BR,
Jani.

>
>>
>> Jani Nikula (4):
>>   drm/i915/sbi: add intel_sbi_{lock,unlock}()
>>   drm/i915/sbi: add a dedicated mutex for LPT/WPT IOSF sideband
>>   drm/i915: add a dedicated mutex for VLV/CHV IOSF sideband
>>   drm/i915: hide VLV PUNIT IOSF sideband qos handling better
>>
>>  .../gpu/drm/i915/display/intel_pch_refclk.c   | 26 ++++++++---------
>>  drivers/gpu/drm/i915/i915_driver.c            |  8 ++++--
>>  drivers/gpu/drm/i915/i915_drv.h               | 10 ++++++-
>>  drivers/gpu/drm/i915/intel_sbi.c              | 22 ++++++++++++++-
>>  drivers/gpu/drm/i915/intel_sbi.h              |  4 +++
>>  drivers/gpu/drm/i915/vlv_sideband.c           | 28 +++++++++++++++--
>> --
>>  drivers/gpu/drm/i915/vlv_sideband.h           |  3 ++
>>  7 files changed, 79 insertions(+), 22 deletions(-)
>>
>

--=20
Jani Nikula, Intel
