Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB505969D0
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 08:50:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 321CD10FD5B;
	Wed, 17 Aug 2022 06:50:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [IPv6:2a01:488:42:1000:50ed:8234::])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0711D10FD58
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 06:50:06 +0000 (UTC)
Received: from [2a02:8108:963f:de38:eca4:7d19:f9a2:22c5]; authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1oOCsO-00059W-SL; Wed, 17 Aug 2022 08:50:04 +0200
Message-ID: <6ca707ac-d9f0-0c39-49c9-d514baf1e9a9@leemhuis.info>
Date: Wed, 17 Aug 2022 08:50:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.0
Content-Language: en-US
From: Thorsten Leemhuis <regressions@leemhuis.info>
References: <YnHK1Z3o99eMXsVK@mail-itl>
 <f4b00553-4e77-84bc-e25c-01383d7e92dd@leemhuis.info>
To: regressions@lists.linux.dev
In-Reply-To: <f4b00553-4e77-84bc-e25c-01383d7e92dd@leemhuis.info>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-bounce-key: webpack.hosteurope.de; regressions@leemhuis.info; 1660719007;
 765909e0; 
X-HE-SMSGID: 1oOCsO-00059W-SL
Subject: Re: [Intel-gfx] Xorg SEGV in Xen PV dom0 after updating from
 5.16.18 to 5.17.5 #forregzbot
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TWIMC: this mail is primarily send for documentation purposes and for
regzbot, my Linux kernel regression tracking bot. These mails usually
contain '#forregzbot' in the subject, to make them easy to spot and filter.

On 04.05.22 07:46, Thorsten Leemhuis wrote:
> On 04.05.22 02:37, Marek Marczykowski-Górecki wrote:
>>
>> After updating from 5.16.18 to 5.17.5 in Xen PV dom0, my Xorg started
>> crashing when displaying any window mapped from a guest (domU) system.
>> This is 100% reproducible.
>> The system is Qubes OS, and it uses a trick that maps windows content
>> from other guests using Xen grant tables, wrapped as "shared memory"
>> from Xorg point of view (so, the memory that Xorg mmaps is not just from
>> another process, but from another VM). That's the ShmPutImage you can
>> see on the stack trace below.
>> [...]
>> I don't see any related kernel or Xen messages at this time. Xorg's SEGV
>> handler prints also:
>>
>>     (EE) Segmentation fault at address 0x3c010
>>
>> Git bisect says it's bdd8b6c98239cad ("drm/i915: replace X86_FEATURE_PAT
>> with pat_enabled()"), and indeed with this commit reverted on top of
>> 5.17.5 everything works fine.
>>
>> I guess this part of dom0's boot dmesg may be relevant:
>>
>> [    0.000949] x86/PAT: MTRRs disabled, skipping PAT initialization too.
>> [    0.000953] x86/PAT: Configuration [0-7]: WB  WT  UC- UC  WC  WP  UC  UC  
>>
>> Originally reported at
>> https://github.com/QubesOS/qubes-issues/issues/7479
>>  
>> #regzbot introduced bdd8b6c98239cad
>> #regzbot monitor: https://github.com/QubesOS/qubes-issues/issues/7479

#regzbot fixed-by: 72cbc8f04fe2fa9
