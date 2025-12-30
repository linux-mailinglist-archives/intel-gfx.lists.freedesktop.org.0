Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EEF5CEAB73
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Dec 2025 22:24:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFB6C10E242;
	Tue, 30 Dec 2025 21:24:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JDmVqka+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF06510E242;
 Tue, 30 Dec 2025 21:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767129853; x=1798665853;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=DSwuUGiHf4FZPILBJOKH/xxiJYlTrpKkInvgEsOZp1Q=;
 b=JDmVqka+8pfjvTIQT2IgQ7zorNEzbegmicQKkHcscrqLPX7EBVC1vcDX
 /zZnQDGh85nan09Dx2H1NPZLcVj6MqZMq7odMkPRKI2UB4vF+G3Y2Jcv8
 +s7oPsr4uuKxW59NP6x4P8ofVvknClcTI8DQkFDCeg2YAjCB2TyfqszWV
 IvO3BlHqaDI3Ux56k4P6pMOgJX5qzzeU+MnzSO4O215XtofX1R24pqizL
 qAx+lEFQiuGx87uPB1vAhk7g9ngnFtghcCEeA/ujqUtrQZhCoN8yHYWuM
 0N2BDNyNPGV3X9oVnohVEeyO3ak5tVnxm992Hl+JmPI+NnkAbfnnAfN77 A==;
X-CSE-ConnectionGUID: Ffg/EskYT0G2E+2TLqKBQg==
X-CSE-MsgGUID: TQZcjf1NQJyiEqNc40n0YA==
X-IronPort-AV: E=McAfee;i="6800,10657,11657"; a="67910132"
X-IronPort-AV: E=Sophos;i="6.21,189,1763452800"; d="scan'208";a="67910132"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2025 13:24:12 -0800
X-CSE-ConnectionGUID: r+7UhRv9QMOCxmPkoNfsTg==
X-CSE-MsgGUID: L3jw1z1TTful0vAhMO3hkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,189,1763452800"; d="scan'208";a="206182069"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.171])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2025 13:24:10 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 rodrigo.vivi@intel.com, ville.syrjala@linux.intel.com
Subject: Re: [PATCH 2/3] drm/xe: remove compat i915_drv.h and
 -Ddrm_i915_private=xe_device hack
In-Reply-To: <20251230164508.GW4164497@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1767009044.git.jani.nikula@intel.com>
 <8d2da5404439ed334d7682922b599f36eeb60e9d.1767009044.git.jani.nikula@intel.com>
 <20251229172318.GH1180203@mdroper-desk1.amr.corp.intel.com>
 <5b3d9ac4e919ac69d35232251f1b8181b7276e9b@intel.com>
 <20251230164508.GW4164497@mdroper-desk1.amr.corp.intel.com>
Date: Tue, 30 Dec 2025 23:24:07 +0200
Message-ID: <00447b0453e8cfbadef56a8c6ca99dfd1fe9d9c4@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 30 Dec 2025, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Tue, Dec 30, 2025 at 03:59:33PM +0200, Jani Nikula wrote:
>> On Mon, 29 Dec 2025, Matt Roper <matthew.d.roper@intel.com> wrote:
>> > On Mon, Dec 29, 2025 at 01:54:44PM +0200, Jani Nikula wrote:
>> >> The xe display build no longer needs the compat i915_drv.h or the ugly
>> >> -Ddrm_i915_private=xe_device hack. Remove them, with great pleasure.
>> >> 
>> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> >
>> > There's still a comment referring to this aliasing in xe_device_types.h
>> > (above the intel_uncore substruct) that should probably be removed too
>> > now that the alias is gone.  Otherwise,
>> 
>> I already looked at it, but Ville's going to nuke the whole uncore
>> member from xe_device soonish, along with the whole comment, so decided
>> to just let it be. That okay with you?
>
> Yeah, that's fine with me.

Thanks, pushed to drm-intel-next. \o/

BR,
Jani.


-- 
Jani Nikula, Intel
