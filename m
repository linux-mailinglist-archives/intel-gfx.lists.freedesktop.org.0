Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A09B9655E4F
	for <lists+intel-gfx@lfdr.de>; Sun, 25 Dec 2022 22:12:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 012D110E0C4;
	Sun, 25 Dec 2022 21:12:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from domac.alu.hr (domac.alu.hr [161.53.235.3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE83A10E0C4
 for <intel-gfx@lists.freedesktop.org>; Sun, 25 Dec 2022 21:12:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by domac.alu.hr (Postfix) with ESMTP id D2EDF604F1;
 Sun, 25 Dec 2022 22:11:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=alu.unizg.hr; s=mail;
 t=1672002702; bh=7XAQuOpTkk04qwhyYlhxpDR5QWSb0hnYhMAf3LhBBq8=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=tRqG2xDEgG4JAp4iUCDwi429V7yn9nuKA0vyERNfqktEFk2isrx/EdCctlntp0Hlt
 AWScxLAEHUmFckzb/UPRPzoHepxbxE689hHGT2AJFTcdMqHxPeX1t50nMpYfZ/R8Am
 9ySfmcd1JOdt8KgQTP2LbFMf6uk2qf1dqG586SSk1iBFuRAw/z0Ve8+CH1pNIVPIPO
 /yieHmG6BQkUfhf9yY0Swx0GmQwAoNol1PshNIP/nXY+R+q6x2tM+Enh0SyOdSn2KP
 yoxHHdOp97cUQNSAVSO29nLToIWP6X0Lo0bFev9+7m9aWY6N9aXO68r2MBeseEOIhq
 XHK/71uCtDLvQ==
X-Virus-Scanned: Debian amavisd-new at domac.alu.hr
Received: from domac.alu.hr ([127.0.0.1])
 by localhost (domac.alu.hr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ehGeV4IUWZcc; Sun, 25 Dec 2022 22:11:40 +0100 (CET)
Received: from [192.168.0.12] (unknown [188.252.198.170])
 by domac.alu.hr (Postfix) with ESMTPSA id DFA5E604F0;
 Sun, 25 Dec 2022 22:11:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=alu.unizg.hr; s=mail;
 t=1672002700; bh=7XAQuOpTkk04qwhyYlhxpDR5QWSb0hnYhMAf3LhBBq8=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=od3K+iEDNmf81yDPaSiN1AB7r1nU8V2DBO9h4pO26HnHHBz6Ag1FRPxuX6qzXzT9+
 3StENUVTkISqcd1jnYb5SWkxSt2V7a6MUZ2Fs7uVXm0ySL50t3wrlbTDpVh41b2gVO
 P6ulcVmuhqdqCVOpCGsCZomgmaOMWownw7iEwWBOJLdI0U3PuuQ8In/39UydhrPcRw
 ps10ncJFWBfmDolZH4v7uTDVPVkwS3iE3lNuohbAAOzLLSDUfR69UDTLJw/q/qT60X
 oZr8Uu2hj1VDNxtioO/lRb5sSci1IGW0VJV8HsBmfV3YME/ONMg+of1Tt6xidDqlF6
 9iolBxrRoKLWQ==
Message-ID: <a8eeae5d-60ee-fad7-47ea-31fcd381d516@alu.unizg.hr>
Date: Sun, 25 Dec 2022 22:11:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 srinivas pandruvada <srinivas.pandruvada@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <f849cc70-b21f-6476-ba26-08989d1243c2@alu.unizg.hr>
 <05424a5351a847786377a548dba0759917d8046c.camel@linux.intel.com>
 <15ef1bb9-7312-5d98-8bf0-0af1a37cfd2a@linux.intel.com>
 <619bdecc-cf87-60a4-f50d-836f4c073ea7@alu.unizg.hr>
 <8e080674-36ab-9260-046e-f4e3c931a3b9@alu.unizg.hr>
 <96661293-32d7-0bb4-fb0e-28086eaaecc3@linux.intel.com>
 <d8d62c8a-32e0-9975-5ed5-b832bb8df549@alu.unizg.hr>
 <0095266f-1422-8be6-f4ac-5e561da1165a@linux.intel.com>
Content-Language: en-US
From: Mirsad Goran Todorovac <mirsad.todorovac@alu.unizg.hr>
In-Reply-To: <0095266f-1422-8be6-f4ac-5e561da1165a@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] LOOKS GOOD: Possible regression in drm/i915 driver:
 memleak
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
Cc: intel-gfx@lists.freedesktop.org,
 Thorsten Leemhuis <regressions@leemhuis.info>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 23. 12. 2022. 13:18, Tvrtko Ursulin wrote:
> 

>>> It is not forgotten - I was trying to reach out to the original author of the fixlet which worked for you. If that fails I will 
>>> take it up on myself, but need to set aside some time to get into the exact problem space before I can vouch for the fix and send 
>>> it on my own.

>> That's good news. Possibly with some assistance I could bisect on pre 4.16 kernels with the additional drivers.
> 
> Sorry, maybe I am confused, but from where does 4.16 come?

Sorry, I forgot to refer to the memstick_check() memleak in drivers/memstick/core/memstick.c,
also discovered through CONFIG_KMEMLEAK=y option enabled.

The 4.16 is the last kernel I managed to start on my Lenovo desktop box which only reproduced
the memstick_check() leak.

Needless to say, this is not a i915-related bug.

Sorry for imprecision in my paragraph.

Regards,
Mirsad

--
Mirsad Goran Todorovac
Sistem inženjer
Grafički fakultet | Akademija likovnih umjetnosti
Sveučilište u Zagrebu
-- 
System engineer
Faculty of Graphic Arts | Academy of Fine Arts
University of Zagreb, Republic of Croatia
The European Union

