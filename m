Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE301454D7
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 14:10:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 921A46E038;
	Wed, 22 Jan 2020 13:10:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from imap3.hz.codethink.co.uk (imap3.hz.codethink.co.uk [176.9.8.87])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D07E66E038
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2020 13:10:49 +0000 (UTC)
Received: from [167.98.27.226] (helo=[10.35.4.116])
 by imap3.hz.codethink.co.uk with esmtpsa  (Exim 4.92 #3 (Debian))
 id 1iuFmR-00060i-M2; Wed, 22 Jan 2020 13:10:47 +0000
From: Thomas Preston <thomas.preston@codethink.co.uk>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200121102858.3027175-1-thomas.preston@codethink.co.uk>
 <157960604632.3096.5992754158480904746@skylake-alporthouse-com>
 <5453ecfc-d6cf-8e70-2654-e991954a9c89@codethink.co.uk>
Message-ID: <12e11195-612f-0e6e-5d41-ed05047844c7@codethink.co.uk>
Date: Wed, 22 Jan 2020 13:10:47 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <5453ecfc-d6cf-8e70-2654-e991954a9c89@codethink.co.uk>
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

On 21/01/2020 14:11, Thomas Preston wrote:
> We're actually debugging this to close-in on *another* ZaphodHead+TearFree
> issue which appears on a 4.14 kernel (among other userland upgrades). At
> some point :0.0 head gets stuck between two buffers (current + shadow) and
> switches between the two causing a flicker or ghosting effect. It's
> possibly got something to do with these patches:
> 
> 	8bfac0f2 sna/dri2: Only force the TearFree/swcursor hack when using TearFree
> 	26f8ab54 sna: Restore local damage processing for TearFree/DRI2/swcursor early
> 	7cf67022 sna/dri2: Prevent the sw cursor from copyig to a buffer as we discard it
> 
> and it goes away when `-Dasync-swap=true` (APPLY_DAMAGE is 0) or we set:
> 
> 	 sna->ignore_copy_area = false; //sna->flags & SNA_TEAR_FREE;
> 

fyi the following patch fixes the flickering issue, so we just moved to
upstream + our struct sna fixup in sna_mode_wakeup

	95ea0564 sna: Rebalance prefer_blt to weight I915_TILING_Y higher
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
