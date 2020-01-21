Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB510143FFA
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 15:51:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A5396EAE7;
	Tue, 21 Jan 2020 14:51:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 2397 seconds by postgrey-1.36 at gabe;
 Tue, 21 Jan 2020 14:51:01 UTC
Received: from imap3.hz.codethink.co.uk (imap3.hz.codethink.co.uk [176.9.8.87])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 198116EAE7
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 14:51:01 +0000 (UTC)
Received: from [167.98.27.226] (helo=[10.35.4.116])
 by imap3.hz.codethink.co.uk with esmtpsa  (Exim 4.92 #3 (Debian))
 id 1ituFC-000085-4T; Tue, 21 Jan 2020 14:11:02 +0000
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200121102858.3027175-1-thomas.preston@codethink.co.uk>
 <157960604632.3096.5992754158480904746@skylake-alporthouse-com>
From: Thomas Preston <thomas.preston@codethink.co.uk>
Message-ID: <5453ecfc-d6cf-8e70-2654-e991954a9c89@codethink.co.uk>
Date: Tue, 21 Jan 2020 14:11:01 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <157960604632.3096.5992754158480904746@skylake-alporthouse-com>
Content-Language: en-US
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

On 21/01/2020 11:27, Chris Wilson wrote:
> Quoting Thomas Preston (2020-01-21 10:28:58)
>> When deciding if we should defer_vblanks we should reference the event's
>> struct sna, rather than the caller's struct sna. In order to do this, we
>> must grab a new struct sna for each event in the buffer. Move this logic
>> out of `case DRM_EVENT_FLIP_COMPLETE` and create a new variable
>> sna_event, so that it is clear which struct sna we are referring to.
>> Also add another ZaphodHead comment by the struct sna argument, in case
>> someone misses the comment below.
>>
>> Fixes issue #184 with ZaphodHead and TearFree, introduced in this commit:
>>
>>         12db28ab sna: Reorder vblank/flip event handling to avoid TearFree recursion
>>
>> Signed-off-by: Thomas Preston <thomas.preston@codethink.co.uk>
>> ---
>>  src/sna/sna_display.c | 48 +++++++++++++++++++++++--------------------
>>  1 file changed, 26 insertions(+), 22 deletions(-)
>>
>> diff --git a/src/sna/sna_display.c b/src/sna/sna_display.c
>> index 874292bc..b40a6c4a 100644
>> --- a/src/sna/sna_display.c
>> +++ b/src/sna/sna_display.c
>> @@ -9711,9 +9711,12 @@ fixup_flip:
>>         RegionEmpty(region);
>>  }
>>  
>> +/* In the case of ZaphodHead, there is only one event queue in the main
>> + * struct sna. Only refer to this struct sna when dealing with the event queue.
>> + * Otherwise, extract the struct sna from the event user_data.
>> + */
>>  int sna_mode_wakeup(struct sna *sna)
>>  {
>> -       bool defer_vblanks = sna->mode.flip_active && sna->mode.shadow_enabled;
> 
> My thinking was that I only cared about re-entrancy on the local sna for
> processing this event queue. And there is no threading, so only one
> sna is processed at a time... Hmm, I don't think we can in the situation
> of being inside one shadow flip and care much about the other.
> 

If it helps, the hanging display described in #184 only happens when
TearFree (shadow_enabled) is enabled for both displays. Maybe
sna_mode_wakeup is called on a :0.1 head event, but sna_dri2_vblank_handler
is never called because :0.0 flip_active >= 1, causing us to always defer
the event.

It's not entirely clear to me why this would stop :0.0 flip_active changing
though.

Anyway, paying more attention to which event's sna has
flip_active/shadow_enabled (as the original comments describe) makes the
problem go away.

We're actually debugging this to close-in on *another* ZaphodHead+TearFree
issue which appears on a 4.14 kernel (among other userland upgrades). At
some point :0.0 head gets stuck between two buffers (current + shadow) and
switches between the two causing a flicker or ghosting effect. It's
possibly got something to do with these patches:

	8bfac0f2 sna/dri2: Only force the TearFree/swcursor hack when using TearFree
	26f8ab54 sna: Restore local damage processing for TearFree/DRI2/swcursor early
	7cf67022 sna/dri2: Prevent the sw cursor from copyig to a buffer as we discard it

and it goes away when `-Dasync-swap=true` (APPLY_DAMAGE is 0) or we set:

	 sna->ignore_copy_area = false; //sna->flags & SNA_TEAR_FREE;
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
