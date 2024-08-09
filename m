Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D503D94D120
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2024 15:23:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B086910E903;
	Fri,  9 Aug 2024 13:23:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AvPISNak";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B57810E904;
 Fri,  9 Aug 2024 13:23:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723209835; x=1754745835;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=cIeA1uckDXKatI1RGgFhcMLgMJGFmmmnMArZaO8ynrc=;
 b=AvPISNakFVXcLMdcfl4w/lyAkBxLaNo0JEhxhrW9ZEQUykXVJEg6nkuX
 jETfu/5vUjXSuULh8f4NsPl0XllFwoHeJZN3AwtaEjY1j4NGn1+Ffzmg4
 MYC9sbgs2kyD/OriKYyiJfG5zZVs9SCoalZJyHsMeNZy4ftpyLWHkCzrq
 9T0klbFJy2ELuDESysyb4yNfw+uQqNt4R5SBOhRNBEyH5DXZ/SD224hEk
 k3rdg572FaJhKs5I/pgSc83CgU96R9NmzCYSDOYUotCju38o1dSz/xYIP
 oJBYW1x4UniMc/1bprPqZWoLJrb8ZZg3Nfn1DV5EkQiDIs8WdDA9ILxPZ A==;
X-CSE-ConnectionGUID: mZ56ytrzQVa11XEqp5dJMQ==
X-CSE-MsgGUID: KhAFuNusSqG19hGYyUqCZw==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="21556936"
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="21556936"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 06:23:54 -0700
X-CSE-ConnectionGUID: p/yHu0F6SDmBmDkvOiAPvg==
X-CSE-MsgGUID: TzajNxIDSYmw4UIbHYJykg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="57780086"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.18])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 06:23:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Gustavo
 Sousa <gustavo.sousa@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v2 00/10] drm/xe & drm/i915: drvdata usage changes
In-Reply-To: <87mslm2hg0.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1723129920.git.jani.nikula@intel.com>
 <2pep6oj5dd7ocei2a3egnm3agoa46nxad2e6e2riwby66khfpt@22g2ari2u4ps>
 <87mslm2hg0.fsf@intel.com>
Date: Fri, 09 Aug 2024 16:23:47 +0300
Message-ID: <87jzgp3k4c.fsf@intel.com>
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

On Fri, 09 Aug 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> On Thu, 08 Aug 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> On Thu, Aug 08, 2024 at 06:15:45PM GMT, Jani Nikula wrote:
>>>v2 of https://patchwork.freedesktop.org/series/136621/
>>>
>>>Removed "drm/xe/tests: fix drvdata usage" from v1 in favour of
>>>"drm/xe/tests: remove unused leftover xe_call_for_each_device()" here.
>>>
>>>Due to the display dependency, I think it would be best to merge the
>>>whole thing via drm-intel-next, and do the first drm-intel-next pull
>>>request and backmerge from drm-next to drm-xe-next in fairly quick
>>>succession.
>>
>> I was waiting the drm-intel-next pull to do a backmerge as we started to
>> have some big divergences. I will try to review the missing patches to
>> expedite that. Are you planning a pull this week?
>
> Rodrigo? I think it's your shift.

In the mean time, ack for merging this via drm-intel-next?

BR,
Jani.

>
> BR,
> Jani.

-- 
Jani Nikula, Intel
