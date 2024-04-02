Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1CD894D33
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 10:11:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B8E910FB26;
	Tue,  2 Apr 2024 08:11:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IEB53eQp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB5F910FB26;
 Tue,  2 Apr 2024 08:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712045478; x=1743581478;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=WwDVcgOkq79Py452oxvSKxeMw4tgPkxCd69nbaQfX1k=;
 b=IEB53eQpb0GVEPeSgrSF+fsYin/+ulJ5kOU3q/fZ7xUnM937PAFm2+m1
 IDRtQS7ZVAPVTNQ6YmAEAVoM3n4f+0tD7C9d+8ZDQ42kt3s0PmV7O3EL8
 k4Da5XucQaxvm9PDcRg5ROMDzPGNNAHZM6wWN4CXFPDlj+7gGcbWi5OCi
 R8E3JDxjtx9zybNG0J1hk8Sfw3z1Ff0yxSDPxGc8KqngrYwE5KLnSh+0R
 7QVqazxyVbcU7DKb1pf0XFJZ9A9HSIWohbaP+Ktk0gQz5wvDRCV/rfdax
 dGKlFwc6vviUof3OE0OtqKNS64AEKUnet6FdGco366P3YlyndpltvE8Gp Q==;
X-CSE-ConnectionGUID: HMR/tdbhTGK6NoTkESlhaw==
X-CSE-MsgGUID: fECWvdC/QjmG+2lOM0rH2w==
X-IronPort-AV: E=McAfee;i="6600,9927,11031"; a="7068101"
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; 
   d="scan'208";a="7068101"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 01:11:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="18388197"
Received: from zkatz1-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.111])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 01:11:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Arnd Bergmann <arnd@arndb.de>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Subject: Re: [PATCH] drm/i915: use fine grained -Woverride-init disable
In-Reply-To: <84c264bb-0316-42eb-85d2-ddd8f8dbf1d4@app.fastmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240328102455.944131-1-jani.nikula@intel.com>
 <b9138bc4-61e4-476a-9aa5-8842235bce2e@app.fastmail.com>
 <87o7ayfxbh.fsf@intel.com>
 <84c264bb-0316-42eb-85d2-ddd8f8dbf1d4@app.fastmail.com>
Date: Tue, 02 Apr 2024 11:11:02 +0300
Message-ID: <875xx0fall.fsf@intel.com>
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

On Thu, 28 Mar 2024, "Arnd Bergmann" <arnd@arndb.de> wrote:
> On Thu, Mar 28, 2024, at 11:46, Jani Nikula wrote:
>> On Thu, 28 Mar 2024, "Arnd Bergmann" <arnd@arndb.de> wrote:
>>> On Thu, Mar 28, 2024, at 11:24, Jani Nikula wrote:
>>>> Use localized __diag_push(), __diag_ignore_all() with rationale, and
>>>> __diag_pop() for specific initializations instead of blanket disabling
>>>> of -Woverride-init across several files.
>>>>
>>>> Note that we've tried this before with commit 88e9664434c9 ("drm/i915:
>>>> use localized __diag_ignore_all() instead of per file") and reverted in
>>>> commit 290d16104575 ("Revert "drm/i915: use localized
>>>> __diag_ignore_all() instead of per file""). The issue turned out to be
>>>> in __diag_ignore_all() and it was fixed by commit 689b097a06ba
>>>> ("compiler-gcc: Suppress -Wmissing-prototypes warning for all supported
>>>> GCC"). So we should be able to pull this off now.
>>>>
>>>> Cc: "Arnd Bergmann" <arnd@arndb.de>
>>>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>
>>> Looks good to me,
>>>
>>> Acked-by: Arnd Bergmann <arnd@arndb.de>
>>
>> Thanks! I'll take this via drm-intel-next for v6.10. Up to you what to
>> do with your patch [1], either drop the i915 and xe changes, or we can
>> handle the trivial conflict too if keeping the changes helps you
>> somehow.
>
> I'll just drop all of the parts for drivers/gpu and send another
> patch for the amdgpu driver to do the same as your patch.

Works for me, thanks! In the mean time, merged this one to
drm-intel-next, thanks for the ack and review!

BR,
Jani.



-- 
Jani Nikula, Intel
