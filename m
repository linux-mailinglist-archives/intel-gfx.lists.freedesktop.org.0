Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D30ACAEA9
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Jun 2025 15:10:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CB8E10E520;
	Mon,  2 Jun 2025 13:10:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SC5Gahko";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9C0410E520
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Jun 2025 13:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748869827; x=1780405827;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=JTf+/sW1h9AZeu+i9OMWXb/oYWCvRJVBIij7i3b+iRk=;
 b=SC5GahkogeWTyE0exmgK9fPyCiepqYnlONQIV79C6CS6gH9apLZBDRwB
 n7dFYoYtEhS0DeAku1sG2yB8yIi01QodXawrQEGMiTh/l27OgYFwE3we2
 KZ/kks6aUD8OGZoOhAGWy+b+X33/SQY1/v6rwck9q3eJIoLRNcNgOakn9
 85RJD8/AIPwfY6kCyYaO176sKsjUPz6RhjcO1C9SsGXMmxmcWayqSl66B
 1j07Jjs5Nve/55Ii76VuLfHVyEFYANUlpiRcil6TT2WsI9XdI9a9BGAhf
 /9Tdg08YNXDXON6DVPPEoN4UptIRUWEt13LQVH7e2DOlY3JoACLMPEGrY A==;
X-CSE-ConnectionGUID: +CFKLKxwTaerxkNCRExXSw==
X-CSE-MsgGUID: IOqKZYahQM2wm3MJ/34tVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11451"; a="61926878"
X-IronPort-AV: E=Sophos;i="6.16,203,1744095600"; d="scan'208";a="61926878"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2025 06:10:27 -0700
X-CSE-ConnectionGUID: 6pSu9W09TIymrqWLNrNwlw==
X-CSE-MsgGUID: fPmvRllDRmeDuC+dNpLUdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,203,1744095600"; d="scan'208";a="145478266"
Received: from oandoniu-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.193])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2025 06:10:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Kees Cook <kees@kernel.org>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 linux-hardening@vger.kernel.org, intel-gfx@lists.freedesktop.org
Subject: Re: i915 utils: range_overflows*()
In-Reply-To: <202505301026.126AB6FFC@keescook>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cd0ea72c6cab6c478336cd1bb5b517a9fe7a150d@intel.com>
 <202505301026.126AB6FFC@keescook>
Date: Mon, 02 Jun 2025 16:10:21 +0300
Message-ID: <d127e624d6a851f488c60631a9bf84f6316748eb@intel.com>
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

On Fri, 30 May 2025, Kees Cook <kees@kernel.org> wrote:
> On Fri, May 30, 2025 at 10:44:31AM +0300, Jani Nikula wrote:
>> 
>> Hi Kees -
>> 
>> drivers/gpu/drm/i915/i915_utils.h has a handful of helper macros for
>> checking range overflows: range_overflows(), range_overflows_t(),
>> range_overflows_end(), and range_overflows_end_t().
>> 
>> Looks like the first one has also been copy-pasted to
>> include/drm/drm_buddy.h.
>> 
>> Feels like include/linux/overflow.h would be the right place for (some
>> version of) them.
>> 
>> Thoughts?
>
> Sure, yes! They need some documentation too. :) And probably some
> renaming. It looks like range_overflows() is not end-inclusive, but
> range_overflows_end() is? And the _t variants are forcing explicit
> types (like max_t, but unlike struct_size_t).

Ah, naming.

As we all know, NP in NP-complete actually stands for "naming
problem". It's hard to come up with a good name, but presented with one,
it's quick to verify it is indeed good.

Ideas for the hard part?


BR,
Jani.


-- 
Jani Nikula, Intel
