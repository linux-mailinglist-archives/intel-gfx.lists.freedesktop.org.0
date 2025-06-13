Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D92C2AD8770
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jun 2025 11:14:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79CFC10E906;
	Fri, 13 Jun 2025 09:14:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gI/Nidm2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12AA710E906;
 Fri, 13 Jun 2025 09:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749806046; x=1781342046;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=akZdz53H5d0JUQFKm7VrJX6HGKVQ5+7nDEE2cge6EQ4=;
 b=gI/Nidm2QfM4/SdFTnfWZw+mydGHcoX/CQir8uLA2ev7Um5LepoJvK6F
 fp4VcZCj1OQtbkK75pBSWQPQopGc+HmrkAWBx/9aO4zUpIici3xfhxmRw
 80Pg6dkn135wM5TTfrXxnhsajtk//2TkaMVXqnTCIo5Gi++2t41ie7F6t
 dgXfZkK6ljni+RdLXqHlV039t7aexQd6BEPmb3LaZCBGJ54gus8mThw8L
 pbcjMNQwxOExPC5xTZnpyeUCQ5gnqHqZKBCGplYPJRzEqHLeh0sL4B6A6
 cJd/LsPK1fscN72kpXiYLXlTJUGrBhfTnWUvduc0BXeBzsQ2IvL7NilQx Q==;
X-CSE-ConnectionGUID: Hdy1DEcVS5y17cyuhdUGtg==
X-CSE-MsgGUID: Ukx10FmWQJOg5vL/8lXu+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="51129654"
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="51129654"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 02:14:00 -0700
X-CSE-ConnectionGUID: 1XuVc/SlSdu6OwCxW/oJDQ==
X-CSE-MsgGUID: mkzcpkI2SeK3irDpTC5XkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="148253033"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.26])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 02:13:58 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, Gustavo Sousa
 <gustavo.sousa@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/gmbus: Add Wa_16025573575 for PTL for bit-bashing
In-Reply-To: <bd3a2162-7fc6-42fd-808c-934720cbc5c2@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250612075330.837179-1-ankit.k.nautiyal@intel.com>
 <174972962084.14553.9763596946172547950@intel.com>
 <bd3a2162-7fc6-42fd-808c-934720cbc5c2@intel.com>
Date: Fri, 13 Jun 2025 12:13:55 +0300
Message-ID: <7f079861f91861e9e895240cd3272f6e29deab7e@intel.com>
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

On Fri, 13 Jun 2025, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
> On 6/12/2025 5:30 PM, Gustavo Sousa wrote:
>> Instead of open-coding the conditions for the workaround in three
>> different places in the file, I think we should have a function
>> needs_wa_16025573575() and use it.
>>
>> Also, note that the workaround is also required for WCL (display version
>> 30.02), and we would then include that in needs_wa_16025573575().
>
> I agree, will make a separate function needs_wa_16025573575().
>
> Thanks for the suggestions. I will make suggested changes in next revision.

Please let's aim for something a little more generic and unified than
that, and one that can be easily extended and switched to a generated
version in the future.

intel_display_wa.h:

enum intel_display_wa {
	INTEL_DISPLAY_WA_16025573575,
};

bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa);

#define intel_display_wa(__display, __wa) __intel_display_wa((__display), INTEL_DISPLAY_WA_ ## __wa)

In code you'd use:

	if (intel_display_wa(display, 16025573575))

For now, you'd manually check for each enum in __intel_display_wa()
implementation, but in the future that code could be generated similar
to what xe currently has. I'm just not very enthusiastic about adding C
language hostprogs with custom .rules files and parsing.


BR,
Jani.


-- 
Jani Nikula, Intel
