Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 252F28BF973
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 11:17:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BDF21134EE;
	Wed,  8 May 2024 09:17:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mH3VSlTl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B2461134EE
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2024 09:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715159838; x=1746695838;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=6RnlyEPqsBcenP3usXPUcHv0bv1cOV1Ko+sTin/o4bk=;
 b=mH3VSlTl92fg19cZyszhcRlJBr9/9SGp5rz2C2hBzAGO2OhV+6Fu3Zrr
 /o/PMd/xheSKMHAyJMZXEYUAfsA9SxdezxyrebZtA3KF7ZStoELOXmwme
 /02oG5PMtB5ALnaJbcU6qFPw7QsnCL/OLtThab74hqffkP0oRYgHW4PJu
 LnA3mpSisvfarTusVZLVqMBp+HgvdzA9cFt9ZZxpRRKJMhK1fyV8bBL/3
 JIkhlNeyqh+TIuYVWCz1062eoiB7XKegfpUYsWiNM3l9Q0X5OhbL37Lcv
 oPgSEH9UpTP10J2LszA3nQ/QVTlcl0rX8fCtbsYZQfNm7SDCd6/jzFn/W Q==;
X-CSE-ConnectionGUID: FTIm7tIVRSqR2E9Wj8+f/g==
X-CSE-MsgGUID: YCP3YnciTtmoy4wqBvCXrA==
X-IronPort-AV: E=McAfee;i="6600,9927,11066"; a="11162514"
X-IronPort-AV: E=Sophos;i="6.08,144,1712646000"; d="scan'208";a="11162514"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 02:17:18 -0700
X-CSE-ConnectionGUID: 1+uJ05eZQTiGzIspyDbXPQ==
X-CSE-MsgGUID: vKh6ENJESrilnjj+9fw8uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,144,1712646000"; d="scan'208";a="29227932"
Received: from dhhellew-desk2.ger.corp.intel.com.ger.corp.intel.com (HELO
 localhost) ([10.245.246.76])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 02:17:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/3] drm/i915: pass dev_priv explicitly to PORT_DFT2_G4X
In-Reply-To: <ZjjJUO6_QRII3zrN@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1714990089.git.jani.nikula@intel.com>
 <0db8ee7b66b9660fc9fd80598257c6d36f0f506b.1714990089.git.jani.nikula@intel.com>
 <ZjjJUO6_QRII3zrN@intel.com>
Date: Wed, 08 May 2024 12:17:12 +0300
Message-ID: <871q6cll2f.fsf@intel.com>
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

On Mon, 06 May 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, May 06, 2024 at 01:09:04PM +0300, Jani Nikula wrote:
>> Avoid the implicit dev_priv local variable use, and pass dev_priv
>> explicitly to the PORT_DFT2_G4X register macro.
>
> Looks like we only use this on VLV/CHV, so could define a fixed
> offset _VLV variant.
>
> But this works too
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Took the easy route and pushed them as-is, thanks for the review.

BR,
Jani.


--=20
Jani Nikula, Intel
