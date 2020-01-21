Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34EB0143C00
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 12:27:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB0036EC76;
	Tue, 21 Jan 2020 11:27:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90EF96EC76
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 11:27:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19956836-1500050 for multiple; Tue, 21 Jan 2020 11:27:28 +0000
MIME-Version: 1.0
To: Thomas Preston <thomas.preston@codethink.co.uk>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200121102858.3027175-1-thomas.preston@codethink.co.uk>
References: <20200121102858.3027175-1-thomas.preston@codethink.co.uk>
Message-ID: <157960604632.3096.5992754158480904746@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 21 Jan 2020 11:27:26 +0000
Subject: Re: [Intel-gfx] [PATCH xf86-video-intel] sna: Use correct struct
 sna in sna_mode_wakeup
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
Cc: james.thomas@codethink.co.uk, michael.drake@codethink.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Thomas Preston (2020-01-21 10:28:58)
> When deciding if we should defer_vblanks we should reference the event's
> struct sna, rather than the caller's struct sna. In order to do this, we
> must grab a new struct sna for each event in the buffer. Move this logic
> out of `case DRM_EVENT_FLIP_COMPLETE` and create a new variable
> sna_event, so that it is clear which struct sna we are referring to.
> Also add another ZaphodHead comment by the struct sna argument, in case
> someone misses the comment below.
> 
> Fixes issue #184 with ZaphodHead and TearFree, introduced in this commit:
> 
>         12db28ab sna: Reorder vblank/flip event handling to avoid TearFree recursion
> 
> Signed-off-by: Thomas Preston <thomas.preston@codethink.co.uk>
> ---
>  src/sna/sna_display.c | 48 +++++++++++++++++++++++--------------------
>  1 file changed, 26 insertions(+), 22 deletions(-)
> 
> diff --git a/src/sna/sna_display.c b/src/sna/sna_display.c
> index 874292bc..b40a6c4a 100644
> --- a/src/sna/sna_display.c
> +++ b/src/sna/sna_display.c
> @@ -9711,9 +9711,12 @@ fixup_flip:
>         RegionEmpty(region);
>  }
>  
> +/* In the case of ZaphodHead, there is only one event queue in the main
> + * struct sna. Only refer to this struct sna when dealing with the event queue.
> + * Otherwise, extract the struct sna from the event user_data.
> + */
>  int sna_mode_wakeup(struct sna *sna)
>  {
> -       bool defer_vblanks = sna->mode.flip_active && sna->mode.shadow_enabled;

My thinking was that I only cared about re-entrancy on the local sna for
processing this event queue. And there is no threading, so only one
sna is processed at a time... Hmm, I don't think we can in the situation
of being inside one shadow flip and care much about the other.

Nevertheless, you are confident enough in your test results. And there
should be nothing wrong with deferring the event to the head that is
expecting it. (If I were to tackle the problem again, I would split into
tasklets to avoid re-entrancy of the event handling and flip queue
entirely. Oh well, all I can advise is not to make the same mistakes I
did :)

Give me a moment to think about just how it ends up confused.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
