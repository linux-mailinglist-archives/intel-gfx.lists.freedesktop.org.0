Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D034461A079
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Nov 2022 20:02:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6A2F10E0C4;
	Fri,  4 Nov 2022 19:02:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDEF010E0C4;
 Fri,  4 Nov 2022 19:02:13 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 428366230D;
 Fri,  4 Nov 2022 19:02:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25E15C433D6;
 Fri,  4 Nov 2022 19:02:12 +0000 (UTC)
Date: Fri, 4 Nov 2022 15:02:10 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20221104150210.1b147688@rorschach.local.home>
In-Reply-To: <ab708fad-9390-2b11-19d8-3e2635254f29@linux.intel.com>
References: <20221104054053.431922658@goodmis.org>
 <20221104054914.271196777@goodmis.org>
 <ab708fad-9390-2b11-19d8-3e2635254f29@linux.intel.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [RFC][PATCH v3 13/33] timers: drm: Use
 timer_shutdown_sync() before freeing timer
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 David Airlie <airlied@gmail.com>,
 Noralf =?UTF-8?B?VHLDuG5uZXM=?= <noralf@tronnes.org>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Anna-Maria Gleixner <anna-maria@linutronix.de>,
 Andrew Morton <akpm@linux-foundation.org>, Guenter Roeck <linux@roeck-us.net>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 4 Nov 2022 08:48:28 +0000
Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:

> If it stays all DRM drivers in one patch then I guess it needs to go via 
> drm-misc, which for i915 would be okay I think in this case since patch 
> is extremely unlikely to clash with anything. Or split it up per driver 
> and then we can handle it in drm-intel-next once core functionality is in.
> 
> We do however have some more calls to del_timer_sync, where freeing is 
> perhaps not immediately next to the site in code, but things definitely 
> get freed like on module unload. Would we need to convert all of them to 
> avoid some, presumably new, warnings?


I'm happy to split this patch up. I just got a bit lazy and started
just grouping via entire subsystems. You should see the networking
patch ;-)

-- Steve
