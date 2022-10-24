Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F034609CB5
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 10:29:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96AD989A94;
	Mon, 24 Oct 2022 08:29:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B6FC89A94
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 08:29:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666600187; x=1698136187;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=pDycIZDno5liCqpGAn7PtwhOt6dQm0UBN7oyFV8ct7c=;
 b=IkvKC8Ez1eWGV6uPYz2ZKDuCIx4QD9mMd+hb3GfJZlGNS50fKg/xAN9r
 I0YBwIhy0q7j/jXmF1+dV/Md6CFTz4vJa7oPPqrQZxehdI8gqwKcRrWha
 lXBVfAtvoEYKRJjtRp0siB44lxz3QY4iSnVnLMlL3TxgEadNbXoBIvmFb
 zDe3uXtk0GIAJt8XifKALoow8fmG1LVKIyXdYjtlRJ4bd9JM6MoN47OQX
 d/BTjvO/suU20Icof0v6kBH9VXhC8qNszsPFQytdE3uFGkbNZ4pUpH5E6
 bz4NGp5beetvGcJYyTNIayXl3BUlXARZarG6HueJTY+nGGa73vcwmMR9J A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="307357420"
X-IronPort-AV: E=Sophos;i="5.95,207,1661842800"; d="scan'208";a="307357420"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 01:29:47 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="773743909"
X-IronPort-AV: E=Sophos;i="5.95,207,1661842800"; d="scan'208";a="773743909"
Received: from emontau-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.52.221])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 01:29:44 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>
In-Reply-To: <167818fb-6eb5-7836-16a1-620853821734@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221019143818.244339-1-andrzej.hajda@intel.com>
 <Y1Lldx9p5Fm5u0Oh@ashyti-mobl2.lan>
 <167818fb-6eb5-7836-16a1-620853821734@intel.com>
Date: Mon, 24 Oct 2022 11:29:41 +0300
Message-ID: <8735bdfwui.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: use intel_uncore_rmw when
 appropriate
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 24 Oct 2022, Andrzej Hajda <andrzej.hajda@intel.com> wrote:
> Hi,
>
> Thx for review.
>
> On 21.10.2022 20:31, Andi Shyti wrote:
>> Hi Andrzej,
>>
>> On Wed, Oct 19, 2022 at 04:38:17PM +0200, Andrzej Hajda wrote:
>>> This patch replaces all occurences of the form
>>> intel_uncore_write(reg, intel_uncore_read(reg) OP val)
>>> with intel_uncore_rmw.
>>>
>>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>>
>> There are some lines that go over 80 characters... do you mind if I fix them
>> before pushing it?
>
> No problem, I guess you know that for some time the 'hard' limit has 
> been raised to 100 chars/line [1], and this is for aesthetic reasons :)
> If you do, please follow advice from Ville to break the line after the 
> 2nd argument - to keep 'clear' and 'set' args on the same line, if possible.

Please don't get into the habit of changing stuff while pushing. Please
prefer pushing stuff that was sent to the list and the CI crunched
through as-is.

Changing the commit message is fine. Doing some glaring
comment/whitespace fixes is acceptable. But going through entire patches
and fixing issues while pushing, not so much.

And in this case in particular, please don't go out of your way to limit
to 80 characters.

BR,
Jani.






>
> [1]: 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=bdc48fa11e46f867ea4d75fa59ee87a7f48be144
>
> Regards
> Andrzej
>
>>
>> Andi
>

-- 
Jani Nikula, Intel Open Source Graphics Center
