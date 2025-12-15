Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED83CBDCED
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 13:30:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37AC410E202;
	Mon, 15 Dec 2025 12:30:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gDsrEF89";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02F6C10E202;
 Mon, 15 Dec 2025 12:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765801827; x=1797337827;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=su6HnBxkN94uY6Qvacbkw1371xT83igkOzsBCVFYVSg=;
 b=gDsrEF89+pyvxIeEPacGonEoRqF/fOiUZztgxBPCeSIfULO4SICWYZ26
 VqOV30chnQH3AHsisbghHcpl2hmyuvTDrgBaJtwZyEfvnWJuEb20lpFV1
 EAAoOcxRC8EiVabK73wu0qM7FEgybFuLDlbShcFgMhy38oWG1tYvtxbVX
 OgS+fosoROvyJtUu90bKb6ng/n3zonnRQC+ZAllgBAI4cG9uBxU/wOqCO
 ogygQJEwTd/xF1JuxIFiAaHgkNdAxOMZMtm25zmGGvVrJYQq7zr0wdl7m
 34IcDDe/Dcg3nWk7QdDE5UGA4Erlb1jYhbI0E3TXJsGCAFdQ7td5yGEAD w==;
X-CSE-ConnectionGUID: ZvsDeYhXT7OrBjmUl9K/yg==
X-CSE-MsgGUID: Dn3v/Tp1RHG7CX3SgbrPKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11642"; a="67662971"
X-IronPort-AV: E=Sophos;i="6.21,150,1763452800"; d="scan'208";a="67662971"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 04:30:26 -0800
X-CSE-ConnectionGUID: mhXracdpS/+9kDMyFgnYaQ==
X-CSE-MsgGUID: TYBy7z1ST7S+uv64HjKbcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,150,1763452800"; d="scan'208";a="197704698"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.106])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 04:30:25 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 0/6] drm/{i915,xe}: clean up parent interface definitions
In-Reply-To: <aTwq2M8EBcCanVr3@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1765548786.git.jani.nikula@intel.com>
 <aTwq2M8EBcCanVr3@intel.com>
Date: Mon, 15 Dec 2025 14:30:21 +0200
Message-ID: <dfd36813ff56247b0384cf0d944b8b3be35196f4@intel.com>
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

On Fri, 12 Dec 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Dec 12, 2025 at 04:14:03PM +0200, Jani Nikula wrote:
>> Fix some issues spotted by Ville.
>>=20
>> Jani Nikula (6):
>>   drm/intel: fix parent interface kernel-doc
>>   drm/intel: group individual funcs in parent interface
>>   drm/intel: sort parent interface struct definitions and members
>>   drm/i915: sort parent interface initialization
>>   drm/xe: sort parent interface initialization
>>   drm/i915/display: group and sort the parent interface wrappers better
>
> series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to din.

BR,
Jani.

>
>>=20
>>  drivers/gpu/drm/i915/display/intel_parent.c  | 45 ++++++++-------
>>  drivers/gpu/drm/i915/display/intel_parent.h  | 13 +++--
>>  drivers/gpu/drm/i915/i915_driver.c           | 27 ++++-----
>>  drivers/gpu/drm/xe/display/xe_display.c      |  2 +-
>>  include/drm/intel/display_parent_interface.h | 59 +++++++++++---------
>>  5 files changed, 80 insertions(+), 66 deletions(-)
>>=20
>> --=20
>> 2.47.3

--=20
Jani Nikula, Intel
