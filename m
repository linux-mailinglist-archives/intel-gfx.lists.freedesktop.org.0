Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CF14AF33F
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 14:49:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06BEE10E478;
	Wed,  9 Feb 2022 13:49:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 400C010E478
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 13:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644414563; x=1675950563;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=xB0C6L4R4DIOk4u7CJIneOR/rhpe5z/8zU+Ja7drdaU=;
 b=L2U5V4euCTphCC3qg2OpQLkI+D03dV0zdE6NYwKseA/XsIg6gzyu7J6d
 6Vd0yRRhyIPE4ETC6WuwK6r54CnCeRslKEO2r6euoOk3Tw/6if2K8GVFx
 bEkzek5l5otMyU66Id9U23vx1ukjeLiDAD75O6K5CClDg5OE5r3rsJ54O
 5StD67Oq3uQDfLWmMTCnP6CcWv/P57alh50huD3irD8ZSFujZI3QwnNye
 dgCUwT379pme3pOZS9bq3XVtHT/qMtw0UmJfUnowZJ/D2GEvPWOUx+yo3
 zqUCURvp9+T5+HTT1vnxW9wgBJINrLkceqcQgCujbZtDIvRhv3Mj6SJZ+ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="249154262"
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="249154262"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 05:49:08 -0800
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="629277063"
Received: from rcallina-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.18.41])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 05:49:04 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Namhyung Kim <namhyung@kernel.org>
In-Reply-To: <CAM9d7ci0By5zioo+52+14RuFrTqZfzbupJuP-908HhYB2Ovc9A@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220208184208.79303-1-namhyung@kernel.org>
 <20220208184208.79303-6-namhyung@kernel.org> <87y22lp4xx.fsf@intel.com>
 <CAM9d7ci0By5zioo+52+14RuFrTqZfzbupJuP-908HhYB2Ovc9A@mail.gmail.com>
Date: Wed, 09 Feb 2022 15:49:01 +0200
Message-ID: <87iltonoaa.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 05/12] drm/i915: Protect lockdep functions
 with #ifdef
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
Cc: paulmck@kernel.org, intel-gfx@lists.freedesktop.org,
 Peter Zijlstra <peterz@infradead.org>, Boqun Feng <boqun.feng@gmail.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Radoslaw Burny <rburny@google.com>, Byungchul Park <byungchul.park@lge.com>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Waiman Long <longman@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 08 Feb 2022, Namhyung Kim <namhyung@kernel.org> wrote:
> Hello,
>
> On Tue, Feb 8, 2022 at 10:51 AM Jani Nikula <jani.nikula@linux.intel.com> wrote:
>>
>> On Tue, 08 Feb 2022, Namhyung Kim <namhyung@kernel.org> wrote:
>> > With upcoming lock tracepoints config, it'd define some of lockdep
>> > functions without enabling CONFIG_LOCKDEP actually.  The existing code
>> > assumes those functions will be removed by the preprocessor but it's
>> > not the case anymore.  Let's protect the code with #ifdef's explicitly.
>>
>> I don't understand why you can't keep the no-op stubs for
>> CONFIG_LOCKDEP=n.
>
> Because I want to use the lockdep annotation for other purposes.
> But the workqueue lockdep_map was defined under LOCKDEP
> only.  Please see the description in the cover letter.
>
> https://lore.kernel.org/all/20220208184208.79303-1-namhyung@kernel.org/

So lockdep_init_map() might still be there and build just fine for
CONFIG_LOCKDEP=n, but now we're actually required to wrap all call sites
in #ifdefs depending on the purpose? I'm not convinced yet.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
