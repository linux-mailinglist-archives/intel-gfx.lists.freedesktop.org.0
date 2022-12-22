Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B299B654436
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Dec 2022 16:22:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A7E910E04D;
	Thu, 22 Dec 2022 15:22:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from domac.alu.hr (domac.alu.hr [161.53.235.3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F3AD10E04D
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 15:22:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by domac.alu.hr (Postfix) with ESMTP id CC2A5604F1;
 Thu, 22 Dec 2022 16:22:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=alu.unizg.hr; s=mail;
 t=1671722524; bh=vNDIYTwEss2KZvwae1b8e3lfz3SV2TKIW9N1SEMH9n4=;
 h=Date:From:Subject:To:Cc:References:In-Reply-To:From;
 b=ZlBJ2hzltLu41o8Yjexvn42Ix3eFfdoKw/ece7ISvy8oJDp4K+X0cOmfz3V5PNJ2P
 twGfDM+4ZQuf6NbIWbh02WU+IomQimj7GqXMUE3P5junXYq6lMORRrcNhj7nlx2r8z
 0J3qeGGuTglrWii/EB3mXgq5Fno25r0PKvXtvUsdlLSY6issH+JEvR1clpXdEdo0Pn
 43saIu9zuDjM9Y+Wp7FrWlf1qRfOCilKpJLGRduzC+ROttFW3k98BToEZYx2t/RY+u
 1g7KKx8hQXUd1KKB4njNfWf8C9RHJ7514YrjEQ3k6UkxbQA1IkAlgXM667BCK7Gah4
 dFq54i6ME4cMw==
X-Virus-Scanned: Debian amavisd-new at domac.alu.hr
Received: from domac.alu.hr ([127.0.0.1])
 by localhost (domac.alu.hr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zE2Ll1VIcGzM; Thu, 22 Dec 2022 16:22:02 +0100 (CET)
Received: from [193.198.186.200] (PC-MTODOROV.slava.alu.hr [193.198.186.200])
 by domac.alu.hr (Postfix) with ESMTPSA id 3763A604F5;
 Thu, 22 Dec 2022 16:22:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=alu.unizg.hr; s=mail;
 t=1671722522; bh=vNDIYTwEss2KZvwae1b8e3lfz3SV2TKIW9N1SEMH9n4=;
 h=Date:From:Subject:To:Cc:References:In-Reply-To:From;
 b=Kv7FFRhruDr2IkZL7MoVf343AkSP3/kAWB6dznjs+KAVV0LhHNa5hj7aQrqdTLGe/
 5XflJFsRgP/xHEX3XRKij1vb3pwSa8BLLOzBKCAaWM+w/piSRa1vBQc2bE/K6jaqG3
 e1z9dw6yT55Nr4IoIyZuHjm5FjpoTLfJVk2o01t0ryKQRglaV9yppagevkgz6oqVx1
 UY9MWLCmSJ+y2bL8QBe3qzMuHzWmWNyn4iczj1myEyDSy4ZCTNuZDZ0HlL61X25RrE
 zzxPNWfXurrj8ZYAbpCo/oVn/VMbTRB/VtRTV0BIEohiYdVt7rjJHvkRSS/cXmXPA2
 S8h0q7CrmNw6g==
Message-ID: <d8d62c8a-32e0-9975-5ed5-b832bb8df549@alu.unizg.hr>
Date: Thu, 22 Dec 2022 16:21:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
From: Mirsad Goran Todorovac <mirsad.todorovac@alu.unizg.hr>
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
Content-Language: en-US, hr, en-GB, de-DE
In-Reply-To: <96661293-32d7-0bb4-fb0e-28086eaaecc3@linux.intel.com>
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

On 12/22/2022 09:04, Tvrtko Ursulin wrote:

>
> On 22/12/2022 00:12, Mirsad Goran Todorovac wrote:
>> On 20. 12. 2022. 20:34, Mirsad Todorovac wrote:
>>
>> As I hear no reply from Tvrtko, and there is already 1d5h uptime with 
>> no leaks (but
>> the kworker with memstick_check nag I couldn't bisect on the only box 
>> that reproduced it,
>> because something in hw was not supported in pre 4.16 kernels on the 
>> Lenovo V530S-07ICB.
>> Or I am doing something wrong.)
>>
>> However, now I can find the memstick maintainers thanks to Tvrtko's 
>> hint.
>>
>> If you no longer require my service, I would close this on my behalf.
>>
>> I hope I did not cause too much trouble. The knowledgeable knew that 
>> this was not a security
>> risk, but only a bug. (30 leaks of 64 bytes each were hardly to 
>> exhaust memory in any realistic
>> time.)
>>
>> However, having some experience with software development, I always 
>> preferred bugs reported
>> and fixed rather than concealed and lying in wait (or worse, found 
>> first by a motivated
>> adversary.) Forgive me this rant, I do not live from writing kernel 
>> drivers, this is just a
>> pet project as of time being ...
Hi,
> It is not forgotten - I was trying to reach out to the original author 
> of the fixlet which worked for you. If that fails I will take it up on 
> myself, but need to set aside some time to get into the exact problem 
> space before I can vouch for the fix and send it on my own.
That's good news. Possibly with some assistance I could bisect on pre 
4.16 kernels with the additional drivers.
> In the meantime definitely thanks a lot for testing this quickly and 
> reporting back!
Not at all, I considered it a privilege to assist your team.
> What will happen next is, that when either the original author or 
> myself are ready to send out the fix as a proper patch, you will be 
> copied on it via the "Reported-by" and possibly "Tested-by" tags. 
> Latter is if the patch remains identical. If it changes we might 
> kindly ask you to re-test if possible.

I've seen the published patch and it seems like the same two lines 
change (-1/+1).
In case of a change, I will attempt to test with the same config, setup 
and running programs.

I may need to correct myself in regard as to security aspect of this 
patch as addressed in 786555987207.

QUOTE:

     Currently we create a new mmap_offset for every call to
     mmap_offset_ioctl. This exposes ourselves to an abusive client that may
     simply create new mmap_offsets ad infinitum, which will exhaust 
physical
     memory and the virtual address space. In addition to the exhaustion, a
     very long linear list of mmap_offsets causes other clients using the
     object to incur long list walks -- these long lists can also be
     generated by simply having many clients generate their own mmap_offset.

It is unobvious whether the bug that caused chrome to trigger 30 
memleaks could be exploited by an
abusive script to exhaust larger parts of kernel memory and possibly 
crash the kernel?

Thanks,
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
tel. +385 (0)1 3711 451
mob. +385 91 57 88 355

