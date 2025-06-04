Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97733ACDF75
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jun 2025 15:41:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDEB110E746;
	Wed,  4 Jun 2025 13:41:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JfCrE6OK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7372B10E724;
 Wed,  4 Jun 2025 13:41:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749044484; x=1780580484;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=SgjA6Tq+TTk+yXMQggi0uwcJjfz0coWIughjtiwre7o=;
 b=JfCrE6OK3K22+gZi2DwO9zAoxU4sgi0a5Lso+qiOWIHfZYmlxNonXhkP
 QcKOjXkeJC3OCmkubEJN4z1PviiQjn9KSBks1ZqLGZYoTI9G9hV0l/C2m
 yrYBp7Q2UqV/gsptNjZgfvtLLgOBHcXXpMGhs14cQJJh3PDBlddq5wIb+
 Vw4vlVb1hXULFipVIWIWUWWgh77SIlAzT2IsZ/pLg8I4e7oRS250iCli0
 ZtZqukTSbaNpR6V1kEdONj/QsEc9mmNwkm654/IPkA6Qrd4eofDBAICYK
 I1UhxaVd6T9HdsXtLh4YCpq8Hy7e2NEeHhbuVSEMkJUY/e0sOLGNv1yJK A==;
X-CSE-ConnectionGUID: FlU1mYBBQ72IA45SQQPyVQ==
X-CSE-MsgGUID: /kFNlylESy6fDDYqYNCfsA==
X-IronPort-AV: E=McAfee;i="6800,10657,11454"; a="50990448"
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="50990448"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 06:41:21 -0700
X-CSE-ConnectionGUID: t7dC2S2SQt+CGw7HTlGBEA==
X-CSE-MsgGUID: B0MAR7y9SR6FkdZI1CO5BA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="145091190"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.101])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 06:41:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Luca Coelho <luca@coelho.fi>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 0/8] drm/i915/sbi: move under display, cleanup
In-Reply-To: <cfbc556cc87c30ce5b122dd95f81e73327a5e3cb.camel@coelho.fi>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1747138550.git.jani.nikula@intel.com>
 <cfbc556cc87c30ce5b122dd95f81e73327a5e3cb.camel@coelho.fi>
Date: Wed, 04 Jun 2025 16:41:15 +0300
Message-ID: <a94b4b15c6f29b2d2ae92792752201facddbc212@intel.com>
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

On Wed, 04 Jun 2025, Luca Coelho <luca@coelho.fi> wrote:
> On Tue, 2025-05-13 at 15:16 +0300, Jani Nikula wrote:
>> Move SBI under display, and convert to display structures and
>> interfaces.
>> 
>> TODO: Also find places for sbi init/fini within display.
>> 
>> BR,
>> Jani.
>
> Very straightforward, clean patches.  Easy to review, kudos!
>
> Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

Many thanks, pushed to drm-intel-next. Well, actually pushed the rebased
patches [1], there are no meaningful differences, I think just a couple
of conflicts in #include lists.

BR,
Jani.

[1] https://lore.kernel.org/r/cover.1748343520.git.jani.nikula@intel.com


-- 
Jani Nikula, Intel
