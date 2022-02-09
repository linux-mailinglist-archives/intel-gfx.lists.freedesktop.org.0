Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E684AF69B
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 17:27:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBCB610E315;
	Wed,  9 Feb 2022 16:27:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03D5A10E315
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 16:27:07 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 78B6661716;
 Wed,  9 Feb 2022 16:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87F0EC340E7;
 Wed,  9 Feb 2022 16:27:04 +0000 (UTC)
Date: Wed, 9 Feb 2022 11:27:03 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20220209112703.1679e48b@gandalf.local.home>
In-Reply-To: <87iltonoaa.fsf@intel.com>
References: <20220208184208.79303-1-namhyung@kernel.org>
 <20220208184208.79303-6-namhyung@kernel.org>
 <87y22lp4xx.fsf@intel.com>
 <CAM9d7ci0By5zioo+52+14RuFrTqZfzbupJuP-908HhYB2Ovc9A@mail.gmail.com>
 <87iltonoaa.fsf@intel.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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
 LKML <linux-kernel@vger.kernel.org>, Radoslaw Burny <rburny@google.com>,
 Byungchul Park <byungchul.park@lge.com>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Waiman Long <longman@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 09 Feb 2022 15:49:01 +0200
Jani Nikula <jani.nikula@linux.intel.com> wrote:

> > Because I want to use the lockdep annotation for other purposes.
> > But the workqueue lockdep_map was defined under LOCKDEP
> > only.  Please see the description in the cover letter.
> >
> > https://lore.kernel.org/all/20220208184208.79303-1-namhyung@kernel.org/  
> 
> So lockdep_init_map() might still be there and build just fine for
> CONFIG_LOCKDEP=n, but now we're actually required to wrap all call sites
> in #ifdefs depending on the purpose? I'm not convinced yet.

I addressed this already. I suggested to add a "raw" variant that turns to
a nop when LOCKDEP is not enabled. That is, for those locations that are
only for working with LOCKDEP, the call will be:

	lockdep_init_map_raw()

This will differentiate the locations that are for just lockdep and those
that are for both lockdep and tracing.

-- Steve
