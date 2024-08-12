Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E161C94EB43
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2024 12:36:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76BC110E095;
	Mon, 12 Aug 2024 10:36:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KphytD+K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57DD410E090;
 Mon, 12 Aug 2024 10:36:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723458968; x=1754994968;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=nlwqwKsSU6nF0XQXqo5YoLVsRaLBNAM8SineY57qlO8=;
 b=KphytD+KUZ0xviuADR4sZ4U/tNK6nJXgIKDJjLXraYQVgnawN+eTgkFA
 LrpF15anh4EYVE8zmfx+Mg9wHVzkrUfJ1wd5X17m+5r5D6cBkmvR7nHgB
 HuSh+Gc9PM1bkrWzpdyZaWbxQSu307eB4E6oE/BO9r8Q+RAXsLbzTbTn8
 SoY3lSLrnNbdxb+TTmsdLQmbxEBlGiHVGVMSW5jb1R7K/1sAZ2NN65tmt
 TXVLAHgr13eUQ91jEA7OoXRMOeLFSkaHqtW7kTQcV++T3XZv1Mw+xnlBP
 bPcqScJZZckf7BM11S5N5/HzRAKnsiYFbkOJ5RExyv5azbK4GPRpD1Ijl A==;
X-CSE-ConnectionGUID: zgkJ/QNrRkqFvFvGLbT/wA==
X-CSE-MsgGUID: ySg3ssOBSJC9lhKDeAF0mQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11161"; a="44078160"
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; d="scan'208";a="44078160"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 03:36:07 -0700
X-CSE-ConnectionGUID: G2PGOnIdT5agY7WBf0dnEw==
X-CSE-MsgGUID: 3YCv/kmVSumyU4mBfO5cBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; d="scan'208";a="95738700"
Received: from iklimasz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.117])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 03:36:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Gustavo
 Sousa <gustavo.sousa@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v2 00/10] drm/xe & drm/i915: drvdata usage changes
In-Reply-To: <luk4l4jlidukwvo5y3cxajcvou2s4gxseopifb6fmltbwysode@lfjilqcrjvgj>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1723129920.git.jani.nikula@intel.com>
 <2pep6oj5dd7ocei2a3egnm3agoa46nxad2e6e2riwby66khfpt@22g2ari2u4ps>
 <87mslm2hg0.fsf@intel.com> <87jzgp3k4c.fsf@intel.com>
 <7a6in4kafx2umpil7tmjxpbt55oumgovcgbyjawiihbjz4gm67@vidlbchuk6me>
 <luk4l4jlidukwvo5y3cxajcvou2s4gxseopifb6fmltbwysode@lfjilqcrjvgj>
Date: Mon, 12 Aug 2024 13:36:01 +0300
Message-ID: <8734na2fla.fsf@intel.com>
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

On Fri, 09 Aug 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Fri, Aug 09, 2024 at 10:58:24AM GMT, Lucas De Marchi wrote:
>>On Fri, Aug 09, 2024 at 04:23:47PM GMT, Jani Nikula wrote:
>>>On Fri, 09 Aug 2024, Jani Nikula <jani.nikula@intel.com> wrote:
>>>>On Thu, 08 Aug 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>>>>On Thu, Aug 08, 2024 at 06:15:45PM GMT, Jani Nikula wrote:
>>>>>>v2 of https://patchwork.freedesktop.org/series/136621/
>>>>>>
>>>>>>Removed "drm/xe/tests: fix drvdata usage" from v1 in favour of
>>>>>>"drm/xe/tests: remove unused leftover xe_call_for_each_device()" here.
>>>>>>
>>>>>>Due to the display dependency, I think it would be best to merge the
>>>>>>whole thing via drm-intel-next, and do the first drm-intel-next pull
>>>>>>request and backmerge from drm-next to drm-xe-next in fairly quick
>>>>>>succession.
>>>>>
>>>>>I was waiting the drm-intel-next pull to do a backmerge as we started to
>>>>>have some big divergences. I will try to review the missing patches to
>>>>>expedite that. Are you planning a pull this week?
>>>>
>>>>Rodrigo? I think it's your shift.
>>>
>>>In the mean time, ack for merging this via drm-intel-next?
>>
>>
>>Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>
>
> oh. wait... but I don't think you will be able to merge the first patch
> through drm-intel-next.
>
> $ git branch --contains 57ecead343e7
> + drm-tip
> + drm-xe-next
> * tip
> + topic/xe-for-CI
>
> Sorry for not noticing that before. Alternatives:
>
> 1)
> merge this patch via drm-xe-next, and possibly (if it unblocks more
> patches on top), your 'drm/xe/tests: fix drvdata usage" from v1' via
> drm-intel.
>
> 2) do not apply this and patch 10 until we are back in sync.
>
> ... something else?

Yeah, something else. I resent patches 1-3 separately to be merged via
drm-xe-next [1] and patch 4 to be merged via drm-intel-next [2]. Clean
and straightforward.

Let's do the rest once we're back in sync.

BR,
Jani.


[1] https://lore.kernel.org/r/cover.1723458544.git.jani.nikula@intel.com
[2] https://lore.kernel.org/r/20240812103415.1540096-1-jani.nikula@intel.com



>
> I don't have a preference.
>
> Lucas De Marchi
>
>>
>>thanks
>>Lucas De Marchi
>>
>>>
>>>BR,
>>>Jani.
>>>
>>>>
>>>>BR,
>>>>Jani.
>>>
>>>-- 
>>>Jani Nikula, Intel

-- 
Jani Nikula, Intel
