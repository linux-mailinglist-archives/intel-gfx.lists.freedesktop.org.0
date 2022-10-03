Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BDF35F35E4
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 20:53:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D455310E47F;
	Mon,  3 Oct 2022 18:53:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1444 seconds by postgrey-1.36 at gabe;
 Mon, 03 Oct 2022 18:53:03 UTC
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [IPv6:2a01:488:42:1000:50ed:8234::])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A111710E47F
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 18:53:03 +0000 (UTC)
Received: from [2a02:8108:963f:de38:eca4:7d19:f9a2:22c5]; authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1ofQBO-0001wA-OH; Mon, 03 Oct 2022 20:28:50 +0200
Message-ID: <714903fa-16c8-4247-d69d-74af6ef50bfa@leemhuis.info>
Date: Mon, 3 Oct 2022 20:28:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US, de-DE
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <55905860-adf9-312c-69cc-491ac8ce1a8b@cern.ch>
 <YzZynE2FAMNQKm2E@kroah.com> <YzaFq7fzw5TbrJyv@kroah.com>
 <03147889-B21C-449B-B110-7E504C8B0EF4@sladewatkins.net>
 <aa8b9724-50c6-ae2e-062d-3791144ac97e@cern.ch>
 <e3e2915d-1411-a758-3991-48d6c2688a1e@leemhuis.info>
 <YzsfrkJcwqKOO+E/@intel.com> <YzsgeXOK6JeVQGHF@intel.com>
From: Thorsten Leemhuis <regressions@leemhuis.info>
In-Reply-To: <YzsgeXOK6JeVQGHF@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-bounce-key: webpack.hosteurope.de; regressions@leemhuis.info; 1664823183;
 6e209fc3; 
X-HE-SMSGID: 1ofQBO-0001wA-OH
Subject: Re: [Intel-gfx] Regression on 5.19.12,
 display flickering on Framework laptop
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
Cc: regressions@lists.linux.dev,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 intel-gfx@lists.freedesktop.org, Slade Watkins <srw@sladewatkins.net>,
 stable@vger.kernel.org, David Matthew Mattli <dmm@mattli.us>,
 Jerry Ling <jiling@cern.ch>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 03.10.22 19:48, Ville Syrjälä wrote:
> On Mon, Oct 03, 2022 at 08:45:18PM +0300, Ville Syrjälä wrote:
>> On Sat, Oct 01, 2022 at 12:07:39PM +0200, Thorsten Leemhuis wrote:
>>> On 30.09.22 14:26, Jerry Ling wrote:
>>>>
>>>> looks like someone has done it:
>>>> https://bbs.archlinux.org/viewtopic.php?pid=2059823#p2059823
>>>>
>>>> and the bisect points to:
>>>>
>>>> |# first bad commit: [fc6aff984b1c63d6b9e54f5eff9cc5ac5840bc8c]
>>>> drm/i915/bios: Split VBT data into per-panel vs. global parts Best, Jerry |
>>>
>>> FWIW, that's 3cf050762534 in mainline. Adding Ville, its author to the
>>> list of recipients.
>>
>> I definitely had no plans to backport any of that stuff,
>> but I guess the automagics did it anyway.
>>
>> Looks like stable is at least missing this pile of stuff:
>> 50759c13735d drm/i915/pps: Keep VDD enabled during eDP probe
>> 67090801489d drm/i915/pps: Reinit PPS delays after VBT has been fully parsed
>> 8e75e8f573e1 drm/i915/pps: Split PPS init+sanitize in two
>> 586294c3c186 drm/i915/pps: Stash away original BIOS programmed PPS delays
>> 89fcdf430599 drm/i915/pps: Don't apply quirks/etc. to the VBT PPS delays if they haven't been initialized
>> 60b02a09598f drm/i915/pps: Introduce pps_delays_valid()
>>
>> But dunno if even that is enough.

If you need testers: David (now CCed) apparently has a affected machine
and offered to test patches in a different subthread of this thread.

>> This bug report is probably the same thing:
>> https://gitlab.freedesktop.org/drm/intel/-/issues/7013

Sounds like it.

 > Also cc intel-gfx...

Ahh, sorry, should have done that when I CCed you.

Ciao, Thorsten


>>> Did anyone check if a revert on top of 5.19.12 works easily and solves
>>> the problem?
>>>
>>> And does anybody known if mainline affected, too?
>>>
>>> Ciao, Thorsten
>>>
>>>
>>>> On 9/30/22 07:11, Slade Watkins wrote:
>>>>> Hey Greg,
>>>>>
>>>>>> On Sep 30, 2022, at 1:59 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
>>>>>>
>>>>>> On Fri, Sep 30, 2022 at 06:37:48AM +0200, Greg KH wrote:
>>>>>>> On Thu, Sep 29, 2022 at 10:26:25PM -0400, Jerry Ling wrote:
>>>>>>>> Hi,
>>>>>>>>
>>>>>>>> It has been reported by multiple users across a handful of distros
>>>>>>>> that
>>>>>>>> there seems to be regression on Framework laptop (which presumably
>>>>>>>> is not
>>>>>>>> that special in terms of mobo and display)
>>>>>>>>
>>>>>>>> Ref:
>>>>>>>> https://community.frame.work/t/psa-dont-upgrade-to-linux-kernel-5-19-12-arch1-1-on-arch-linux-gen-11-model/23171
>>>>>>> Can anyone do a 'git bisect' to find the offending commit?
>>>>>> Also, this works for me on a gen 12 framework laptop:
>>>>>>     $ uname -a
>>>>>>     Linux frame 5.19.12 #68 SMP PREEMPT_DYNAMIC Fri Sep 30 07:02:33
>>>>>> CEST 2022 x86_64 GNU/Linux
>>>>>>
>>>>>> so there's something odd with the older hardware?
>>>>>>
>>>>>> greg k-h
>>>>> Could be. Running git bisect for 5.19.11 and 5.19.12 (as suggested by
>>>>> the linked forum thread) returned nothing on gen 11 for me.
>>>>>
>>>>> This is very odd,
>>>>> -srw
>>>>
>>>>
>>
>> -- 
>> Ville Syrjälä
>> Intel
> 
