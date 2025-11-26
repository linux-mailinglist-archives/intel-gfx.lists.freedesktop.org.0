Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A31AEC895C7
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 11:45:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02C0410E522;
	Wed, 26 Nov 2025 10:45:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NvR33Zcw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BE9310E522
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Nov 2025 10:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764153911; x=1795689911;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=K2I05FyzOw/B7mEwnNX/H/SxRDfdkwGp4wCutW+BGA4=;
 b=NvR33ZcwYdvh5DQM+UKfb6eLCKzWrdVmAjNg6vKVbSS+aVO2BB6NO8nh
 2xqHhHnMmQ/0Abfqus2uDF0n7Ikrd2WoGUFvg8tW8bsBxmuDqS27pmpNf
 Gt1vt7ZMZqKv8kEF03F5TxmCsGATsjT5jcoil+0iGC/qjt7qI23BDxury
 TzmehSjLMK7hUETJ7DcoLUfRgKGUJaKL7AfnJI6EpY3bYOUO/GbSEM7f3
 9Ok9xQwe1qSj4s5B9YtJyjD6bmbjP4zVIcU+CwJL18e1cwFf3weiqNvBA
 Xkd9K7opiZ/EGYmUF3C367bhLnP15VMnvRwfoDZxIJCOxNI6eKgcXoMHg Q==;
X-CSE-ConnectionGUID: h3/qetd3SHCUEVBRM6UAbg==
X-CSE-MsgGUID: 4YCdpc6gQaWdrKX/xxHJuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="66071889"
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800"; d="scan'208";a="66071889"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 02:45:10 -0800
X-CSE-ConnectionGUID: or3qt/oUTOGsLVEFGazTJw==
X-CSE-MsgGUID: k09cuyPFRziGmRLznoR7Og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800"; d="scan'208";a="193332152"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.1])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 02:45:07 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: stable@vger.kernel.org
Cc: intel-gfx@lists.freedesktop.org, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Subject: Re: please backport 8c9006283e4b ("Revert "drm/i915/dp: Reject HBR3
 when sink doesn't support TPS4"")
In-Reply-To: <ae09d103eb4427f690685dc7daf428764fed2421@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <ae09d103eb4427f690685dc7daf428764fed2421@intel.com>
Date: Wed, 26 Nov 2025 12:45:04 +0200
Message-ID: <5b080d938b4a6132e407d956a37fd079dbd71a67@intel.com>
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

On Wed, 26 Nov 2025, Jani Nikula <jani.nikula@intel.com> wrote:
> Stable team, please backport
>
> 8c9006283e4b ("Revert "drm/i915/dp: Reject HBR3 when sink doesn't support TPS4"")
>
> from v6.18-rc1 to v6.15+. It's missing the obvious
>
> Fixes: 584cf613c24a ("drm/i915/dp: Reject HBR3 when sink doesn't support TPS4")

Oh, please *also* backport

21c586d9233a ("drm/i915/dp: Add device specific quirk to limit eDP rate to HBR2")

along with it, as it'll fix what the revert breaks.

Thanks,
Jani.


-- 
Jani Nikula, Intel
