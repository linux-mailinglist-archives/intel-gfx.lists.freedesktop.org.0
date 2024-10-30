Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2910E9B6306
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 13:25:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A18510E051;
	Wed, 30 Oct 2024 12:25:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MjzzEr2a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAF9410E051;
 Wed, 30 Oct 2024 12:25:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730291130; x=1761827130;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=6BoHKOnCklHPGtYZtFjwPZb1kaUp9/UCaK2WHzvG+rc=;
 b=MjzzEr2avr86BmT0Xp7Zuy8AZavDjbXBVhQYrXKx1pKW7peDOjbfKCcH
 IV4JtVPiqkAqyV5uR6ZU9zg7+40j/uE1qtYszkWcKz1HM1VoQx7tcACTh
 lqucUie37JohtBaFJci9IVz4gArKV43SCtnrRiBHT2m+9sbnSfS48g+m2
 V1sReVZ7CoTPnL0hwos+osU2wEtAM9Ah6rvTpIX07ACKwfi/l2DwpAR7A
 k4gDBrKMcwzgtQ4AtjN7Yh0oO+TsS95t64tDnTAQmCUhhdNaWb2ijT38N
 ew/wBLVw8cz2YZVIHLI5YPpaPop6fpDe/nR9it+HqoT3mVB/gFuUzd8Ix w==;
X-CSE-ConnectionGUID: qEi2HkxxRlaH01GKLM6ngA==
X-CSE-MsgGUID: yXq/z1PwQpiCMsi7rBzEnQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="52545778"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="52545778"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 05:25:29 -0700
X-CSE-ConnectionGUID: +f3TicRJTZq2NjAptPqMFg==
X-CSE-MsgGUID: VkB/78qRQWa3Inerqq6zaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="82405310"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 05:25:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Cc: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>
Subject: RE: [PATCH v3] drm/i915/display: use x100 version for full version
 and release
In-Reply-To: <SN7PR11MB6750CA63975504433B808DAFE3542@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241029155536.753413-1-jani.nikula@intel.com>
 <SN7PR11MB6750CA63975504433B808DAFE3542@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Wed, 30 Oct 2024 14:25:24 +0200
Message-ID: <87jzdplqvf.fsf@intel.com>
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

On Wed, 30 Oct 2024, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of J=
ani
>> Nikula
>> Sent: Tuesday, October 29, 2024 9:26 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>; ville.syrjala@linux.intel.com;=
 Roper,
>> Matthew D <matthew.d.roper@intel.com>; De Marchi, Lucas
>> <lucas.demarchi@intel.com>
>> Subject: [PATCH v3] drm/i915/display: use x100 version for full version =
and
>> release
>>
>> Use x100, or ver * 100 + rel, versions for full IP version checks, simil=
ar to what
>> xe driver does:
>>
>> - Replace IP_VER(14, 1) inline with 1401, etc.
>>
>> - Convert DISPLAY_VER_FULL() to DISPLAY_VERx100()
>>
>> - Convert IS_DISPLAY_VER_FULL() to IS_DISPLAY_VERx100()
>>
>> - Convert IS_DISPLAY_VER_STEP() to IS_DISPLAY_VERx100_STEP()
>>
>> This makes ver.rel versions easier to use, follows the xe driver pattern=
, and
>> drops the dependency on the IP_VER() macro.
>>
>> v2: Rebase, drop IP_VER() from xe compat headers
>>
>> v3: Rebase
>>
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Acked-by: Matt Roper <matthew.d.roper@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> LGTM,
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

Thanks for the review, pushed to din.

BR,
Jani.


--=20
Jani Nikula, Intel
