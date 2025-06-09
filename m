Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0D0AD1B8D
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jun 2025 12:27:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6ACBD10E105;
	Mon,  9 Jun 2025 10:27:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="la56NMqX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA6FC10E067;
 Mon,  9 Jun 2025 10:27:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749464822; x=1781000822;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=4S7zpdpM/cZLi/1DLbeXqhDJDhqDnp4EcChy9gpoEPM=;
 b=la56NMqXTBHnpNqrnXmvEKYoEevKwI1DMqz84QQidwyW4vSOgVf0diay
 UBcZpCme5aK7dIV3aG3d5qEvGfBgRzqV/NtgYRNuxy290ON2wFPRqjD8g
 3DeZscucQl0XViZ87KmIN4SnoZU3ALeuzPa4VufYuNuPTekfPslk+Qd9G
 wCAmMzoxXHokbxSgP1+m+MYF7lMaO9uU22yc+2WgCR6T2WljkD65yJ5ot
 79FRAxyN/a7w6Lrq4QGKuYy6wCi7D9AbCx+71PyAQxsk9NkPHwynHc1cJ
 R+KJIgWvUU622TCcPDsjbLu6PxPxt8+9ajhw94v7j0LLMAFpx6CKBBbZi A==;
X-CSE-ConnectionGUID: h7bpM+nVS1avaX5EfzhFmA==
X-CSE-MsgGUID: LwQRgbYpQeKeLF2SQfWbZw==
X-IronPort-AV: E=McAfee;i="6800,10657,11458"; a="50761198"
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="50761198"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 03:27:00 -0700
X-CSE-ConnectionGUID: kr+7wSDsT9SBHKhxruj1bw==
X-CSE-MsgGUID: hWGTm7HeRKmrdGHXyFKgqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="177410945"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.154])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 03:26:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Suraj
 Kandpal <suraj.kandpal@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v4] drm/i915: split out display register macros to a
 separate file
In-Reply-To: <cqww6aekcmcy7h3mlttlp6v3udmxw2yh6hlzbhz2dnpmanbkda@lbuwmw2i7bcg>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250606102256.2080073-1-jani.nikula@intel.com>
 <cqww6aekcmcy7h3mlttlp6v3udmxw2yh6hlzbhz2dnpmanbkda@lbuwmw2i7bcg>
Date: Mon, 09 Jun 2025 13:26:55 +0300
Message-ID: <ce5c6405b693f85edc17cdf6ae93e1c2e72fd9f9@intel.com>
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

On Fri, 06 Jun 2025, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Fri, Jun 06, 2025 at 01:22:56PM +0300, Jani Nikula wrote:
>>This is a scripted split of the display related register macros from
>>i915_reg.h to display/intel_display_regs.h. As a starting point, move
>>all the macros that are only used in display code (or GVT). If there are
>>users in core i915 code or soc/, or no users anywhere, keep the macros
>>in i915_reg.h. This is done in groups of macros separated by blank
>>lines, moving the comments along with the groups.
>>
>>Some manually picked macro groups are kept/moved regardless of the
>>heuristics above.
>>
>>This is obviously a very crude approach. It's not perfect. But there are
>>4.2k lines in i915_reg.h, and its refactoring has ground to a halt. This
>>is the big hammer that splits the file to two, and enables further
>>cleanup.
>>
>>Cc: Suraj Kandpal <suraj.kandpal@intel.com>
>>Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> I skimmed over the registers and didn't spot non-display related ones.
> For the code move, there are a few unrelated changes due to sorting the
> includes, but that should be fine as it's easier to just sort the block.
>
> Changes in drivers/gpu/drm/i915/display/intel_display_regs.h indeed come
> verbatim from the other file, as colored by git show --color-moved.
>
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
>
> Let's get this in before it conflicts again.

Thanks for the review. It's not perfect, but I think it's good enough to
make forward progress. Pushed to din.

BR,
Jani.


--=20
Jani Nikula, Intel
