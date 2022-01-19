Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F30E493AF5
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jan 2022 14:18:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3D8310E13C;
	Wed, 19 Jan 2022 13:18:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.220.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A0CD10E13A;
 Wed, 19 Jan 2022 13:18:05 +0000 (UTC)
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out1.suse.de (Postfix) with ESMTP id 54C8621123;
 Wed, 19 Jan 2022 13:18:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
 t=1642598283; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5030rwRdQVdGOVRRFHRTkRKqifOJXNno9J3Z4c5+1YA=;
 b=X+sTq95MaR4ipOc0sga1XDfWcMiW9FTvop0fDJWvb/D9s4D7IGDBilB2aVkSGlh5aFcJD/
 n/WEnrXPiJsFn6TQAANEUr68P561Vum2hTmCOBIaTd3It9Hqa5/LYx0lz0+wL5aAgSaYNR
 fPvU2djzpoRxXztcSp7BAsmfXILijxY=
Received: from suse.cz (unknown [10.100.224.162])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by relay2.suse.de (Postfix) with ESMTPS id DB985A3B89;
 Wed, 19 Jan 2022 13:18:01 +0000 (UTC)
Date: Wed, 19 Jan 2022 14:18:01 +0100
From: Petr Mladek <pmladek@suse.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <YegPiR7LU8aVisMf@alley>
References: <20220119072450.2890107-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220119072450.2890107-1-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH 0/3] lib/string_helpers: Add a few string
 helpers
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
Cc: Emma Anholt <emma@anholt.net>, David Airlie <airlied@linux.ie>,
 nouveau@lists.freedesktop.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 dri-devel@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Vishal Kulkarni <vishal@chelsio.com>,
 Francis Laniel <laniel_francis@privacyrequired.com>,
 Kentaro Takeda <takedakn@nttdata.co.jp>, Mikita Lipski <mikita.lipski@amd.com>,
 amd-gfx@lists.freedesktop.org, Andy Shevchenko <andy.shevchenko@gmail.com>,
 Ben Skeggs <bskeggs@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 Harry Wentland <harry.wentland@amd.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Leo Li <sunpeng.li@amd.com>,
 intel-gfx@lists.freedesktop.org, Raju Rangoju <rajur@chelsio.com>,
 Julia Lawall <julia.lawall@lip6.fr>,
 Rahul Lakkireddy <rahul.lakkireddy@chelsio.com>,
 Steven Rostedt <rostedt@goodmis.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Eryk Brol <eryk.brol@amd.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 linux-security-module@vger.kernel.org, netdev@vger.kernel.org,
 Alex Deucher <alexander.deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S . Miller" <davem@davemloft.net>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue 2022-01-18 23:24:47, Lucas De Marchi wrote:
> Add some helpers under lib/string_helpers.h so they can be used
> throughout the kernel. When I started doing this there were 2 other
> previous attempts I know of, not counting the iterations each of them
> had:
> 
> 1) https://lore.kernel.org/all/20191023131308.9420-1-jani.nikula@intel.com/
> 2) https://lore.kernel.org/all/20210215142137.64476-1-andriy.shevchenko@linux.intel.com/#t
> 
> Going through the comments I tried to find some common ground and
> justification for what is in here, addressing some of the concerns
> raised.
> 
> d. This doesn't bring onoff() helper as there are some places in the
>    kernel with onoff as variable - another name is probably needed for
>    this function in order not to shadow the variable, or those variables
>    could be renamed.  Or if people wanting  <someprefix>
>    try to find a short one

I would call it str_on_off().

And I would actually suggest to use the same style also for
the other helpers.

The "str_" prefix would make it clear that it is something with
string. There are other <prefix>_on_off() that affect some
functionality, e.g. mute_led_on_off(), e1000_vlan_filter_on_off().

The dash '_' would significantly help to parse the name. yesno() and
onoff() are nicely short and kind of acceptable. But "enabledisable()"
is a puzzle.

IMHO, str_yes_no(), str_on_off(), str_enable_disable() are a good
compromise.

The main motivation should be code readability. You write the
code once. But many people will read it many times. Open coding
is sometimes better than misleading macro names.

That said, I do not want to block this patchset. If others like
it... ;-)


> e. One alternative to all of this suggested by Christian K�nig
>    (43456ba7-c372-84cc-4949-dcb817188e21@amd.com) would be to add a
>    printk format. But besides the comment, he also seemed to like
>    the common function. This brought the argument from others that the
>    simple yesno()/enabledisable() already used in the code is easier to
>    remember and use than e.g. %py[DOY]

Thanks for not going this way :-)

> Last patch also has some additional conversion of open coded cases. I
> preferred starting with drm/ since this is "closer to home".
> 
> I hope this is a good summary of the previous attempts and a way we can
> move forward.
> 
> Andrew Morton, Petr Mladek, Andy Shevchenko: if this is accepted, my
> proposal is to take first 2 patches either through mm tree or maybe
> vsprintf. Last patch can be taken later through drm.

I agree with Andy that it should go via drm tree. It would make it
easier to handle potential conflicts.

Just in case, you decide to go with str_yes_no() or something similar.
Mass changes are typically done at the end on the merge window.
The best solution is when it can be done by a script.

Best Regards,
Petr
