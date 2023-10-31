Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 509BF7DC92F
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Oct 2023 10:13:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7877C10E106;
	Tue, 31 Oct 2023 09:13:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 621BA10E106
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Oct 2023 09:13:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698743625; x=1730279625;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=RgXt4UtXwNgq6J5k02eNrpHevaIC8960GSuaGh9ej1Y=;
 b=gcCGFUFBbz/sD8t1NgDkfgjXbr0h1GFpVDush4+SvpFmAIk3dPfnFpqm
 ekAxYpPUXyl66u7Q0zcU2SODq68KcwnJ9qsqp+HGwjrd6Xp7ZrWis+M9W
 tC+LceycuUse+MdPZBYEfSjA/rWU1+qFeGOKdaKJX4cneo68eKWKfHVj5
 gapF3ete9RF7k4RiXwhP2VE74QATdHTt306rQDN9rlBwlmMp7hrBQXISE
 f0ZqwrDbShjw+/MZgxPzuwETfzFYhKRQDJtiUsLgtNsxggc1FeXxg07yN
 SjWaHZvNmdJ50ZMOCgYnd3dvYaYjwIB1L3AmhUb6NhpkaYg8l9SJpGYpb A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="392109520"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="392109520"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 02:13:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="737015174"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="737015174"
Received: from moelschl-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.51.45])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 02:13:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>
In-Reply-To: <ZTpGWZn2cm1VhUVN@ashyti-mobl2.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231023150256.438331-1-jani.nikula@intel.com>
 <20231023150256.438331-2-jani.nikula@intel.com>
 <ZTe4uzgC7sIPGzwV@ashyti-mobl2.lan> <87h6mg9op4.fsf@intel.com>
 <6b642bcd-6152-42b8-88ad-21b039d9898b@linux.intel.com>
 <ZTjuBar5FeoMPYo6@ashyti-mobl2.lan> <8734xx8yz4.fsf@intel.com>
 <05993162-ce64-4b34-bfe5-5f33240c519e@linux.intel.com>
 <ZTpBG_cqdVfBb2uE@ashyti-mobl2.lan>
 <a752d570-132b-46b6-b7c3-a45cab34f29c@linux.intel.com>
 <ZTpGWZn2cm1VhUVN@ashyti-mobl2.lan>
Date: Tue, 31 Oct 2023 11:13:37 +0200
Message-ID: <875y2n5f3y.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/pmu: add event_to_pmu() helper
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 26 Oct 2023, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> On Thu, Oct 26, 2023 at 11:51:02AM +0100, Tvrtko Ursulin wrote:
>> Now seriously, I don't mind perf_event, as long as _whole_ i915_pmu.c is
>> switched over. At which point I questioned would the churn be worth it.
>
> I like Jani's patch, of course your grep search concludes the
> the discussion, so that I'm not going to argue agains "event"
> as name :-)
>
> Acked-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks. Pushed with the original patch; if someone feels inclined to
change the naming, patches are, as always, welcome.

BR,
Jani.


-- 
Jani Nikula, Intel
