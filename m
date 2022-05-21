Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA92652FABC
	for <lists+intel-gfx@lfdr.de>; Sat, 21 May 2022 12:47:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45E6F10E085;
	Sat, 21 May 2022 10:47:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [IPv6:2a01:488:42:1000:50ed:8234::])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3D3B10E035;
 Sat, 21 May 2022 10:47:46 +0000 (UTC)
Received: from [2a02:8108:963f:de38:eca4:7d19:f9a2:22c5]; authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1nsMdj-0001BZ-PR; Sat, 21 May 2022 12:47:19 +0200
Message-ID: <dae4cc45-a1cd-e33f-25ef-c536df9b49e6@leemhuis.info>
Date: Sat, 21 May 2022 12:47:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Chuck Zmudzinski <brchuckz@netscape.net>, Jan Beulich
 <jbeulich@suse.com>, regressions@lists.linux.dev, stable@vger.kernel.org
References: <20220503132207.17234-1-jgross@suse.com>
 <20220503132207.17234-3-jgross@suse.com>
 <1d86d8ff-6878-5488-e8c4-cbe8a5e8f624@suse.com>
 <0dcb05d0-108f-6252-e768-f75b393a7f5c@suse.com>
 <77255e5b-12bf-5390-6910-dafbaff18e96@netscape.net>
 <a2e95587-418b-879f-2468-8699a6df4a6a@suse.com>
 <8b1ebea5-7820-69c4-2e2b-9866d55bc180@netscape.net>
 <c5fa3c3f-e602-ed68-d670-d59b93c012a0@netscape.net>
 <3bff3562-bb1e-04e6-6eca-8d9bc355f2eb@suse.com>
 <3ca084a9-768e-a6f5-ace4-cd347978dec7@netscape.net>
 <9af0181a-e143-4474-acda-adbe72fc6227@suse.com>
 <b2585c19-d38b-9640-64ab-d0c9be24be34@netscape.net>
From: Thorsten Leemhuis <regressions@leemhuis.info>
In-Reply-To: <b2585c19-d38b-9640-64ab-d0c9be24be34@netscape.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-bounce-key: webpack.hosteurope.de; regressions@leemhuis.info; 1653130066;
 c18c2a9e; 
X-HE-SMSGID: 1nsMdj-0001BZ-PR
Subject: Re: [Intel-gfx] [PATCH 2/2] x86/pat: add functions to query
 specific cache mode availability
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
Cc: Juergen Gross <jgross@suse.com>, Peter Zijlstra <peterz@infradead.org>,
 intel-gfx@lists.freedesktop.org, Dave Hansen <dave.hansen@linux.intel.com>,
 x86@kernel.org, linux-kernel@vger.kernel.org, David Airlie <airlied@linux.ie>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, dri-devel@lists.freedesktop.org,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 xen-devel@lists.xenproject.org, Thomas Gleixner <tglx@linutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 20.05.22 16:48, Chuck Zmudzinski wrote:
> On 5/20/2022 10:06 AM, Jan Beulich wrote:
>> On 20.05.2022 15:33, Chuck Zmudzinski wrote:
>>> On 5/20/2022 5:41 AM, Jan Beulich wrote:
>>>> On 20.05.2022 10:30, Chuck Zmudzinski wrote:
>>>>> On 5/20/2022 2:59 AM, Chuck Zmudzinski wrote:
>>>>>> On 5/20/2022 2:05 AM, Jan Beulich wrote:
>>>>>>> On 20.05.2022 06:43, Chuck Zmudzinski wrote:
>>>>>>>> On 5/4/22 5:14 AM, Juergen Gross wrote:
>>>>>>>>> On 04.05.22 10:31, Jan Beulich wrote:
>>>>>>>>>> On 03.05.2022 15:22, Juergen Gross wrote:
>>>>>>>>>>
>>>>>>>>>> ... these uses there are several more. You say nothing on why
>>>>>>>>>> those want
>>>>>>>>>> leaving unaltered. When preparing my earlier patch I did
>>>>>>>>>> inspect them
>>>>>>>>>> and came to the conclusion that these all would also better
>>>>>>>>>> observe the
>>>>>>>>>> adjusted behavior (or else I couldn't have left pat_enabled()
>>>>>>>>>> as the
>>>>>>>>>> only predicate). In fact, as said in the description of my
>>>>>>>>>> earlier
>>>>>>>>>> patch, in
>>>>>>>>>> my debugging I did find the use in i915_gem_object_pin_map()
>>>>>>>>>> to be
>>>>>>>>>> the
>>>>>>>>>> problematic one, which you leave alone.
>>>>>>>>> Oh, I missed that one, sorry.
>>>>>>>> That is why your patch would not fix my Haswell unless
>>>>>>>> it also touches i915_gem_object_pin_map() in
>>>>>>>> drivers/gpu/drm/i915/gem/i915_gem_pages.c
>>>>>>>>
>>>>>>>>> I wanted to be rather defensive in my changes, but I agree at
>>>>>>>>> least
>>>>>>>>> the
>>>>>>>>> case in arch_phys_wc_add() might want to be changed, too.
>>>>>>>> I think your approach needs to be more aggressive so it will fix
>>>>>>>> all the known false negatives introduced by bdd8b6c98239
>>>>>>>> such as the one in i915_gem_object_pin_map().
>>>>>>>>
>>>>>>>> I looked at Jan's approach and I think it would fix the issue
>>>>>>>> with my Haswell as long as I don't use the nopat option. I
>>>>>>>> really don't have a strong opinion on that question, but I
>>>>>>>> think the nopat option as a Linux kernel option, as opposed
>>>>>>>> to a hypervisor option, should only affect the kernel, and
>>>>>>>> if the hypervisor provides the pat feature, then the kernel
>>>>>>>> should not override that,
>>>>>>> Hmm, why would the kernel not be allowed to override that? Such
>>>>>>> an override would affect only the single domain where the
>>>>>>> kernel runs; other domains could take their own decisions.
>>>>>>>
>>>>>>> Also, for the sake of completeness: "nopat" used when running on
>>>>>>> bare metal has the same bad effect on system boot, so there
>>>>>>> pretty clearly is an error cleanup issue in the i915 driver. But
>>>>>>> that's orthogonal, and I expect the maintainers may not even care
>>>>>>> (but tell us "don't do that then").
>>>>> Actually I just did a test with the last official Debian kernel
>>>>> build of Linux 5.16, that is, a kernel before bdd8b6c98239 was
>>>>> applied. In fact, the nopat option does *not* break the i915 driver
>>>>> in 5.16. That is, with the nopat option, the i915 driver loads
>>>>> normally on both the bare metal and on the Xen hypervisor.
>>>>> That means your presumption (and the presumption of
>>>>> the author of bdd8b6c98239) that the "nopat" option was
>>>>> being observed by the i915 driver is incorrect. Setting "nopat"
>>>>> had no effect on my system with Linux 5.16. So after doing these
>>>>> tests, I am against the aggressive approach of breaking the i915
>>>>> driver with the "nopat" option because prior to bdd8b6c98239,
>>>>> nopat did not break the i915 driver. Why break it now?
>>>> Because that's, in my understanding, is the purpose of "nopat"
>>>> (not breaking the driver of course - that's a driver bug -, but
>>>> having an effect on the driver).
>>> I wouldn't call it a driver bug, but an incorrect configuration of the
>>> kernel by the user.  I presume X86_FEATURE_PAT is required by the
>>> i915 driver
>> The driver ought to work fine without PAT (and hence without being
>> able to make WC mappings). It would use UC instead and be slow, but
>> it ought to work.
>>
>>> and therefore the driver should refuse to disable
>>> it if the user requests to disable it and instead warn the user that
>>> the driver did not disable the feature, contrary to what the user
>>> requested with the nopat option.
>>>
>>> In any case, my test did not verify that when nopat is set in Linux
>>> 5.16,
>>> the thread takes the same code path as when nopat is not set,
>>> so I am not totally sure that the reason nopat does not break the
>>> i915 driver in 5.16 is that static_cpu_has(X86_FEATURE_PAT)
>>> returns true even when nopat is set. I could test it with a custom
>>> log message in 5.16 if that is necessary.
>>>
>>> Are you saying it was wrong for static_cpu_has(X86_FEATURE_PAT)
>>> to return true in 5.16 when the user requests nopat?
>> No, I'm not saying that. It was wrong for this construct to be used
>> in the driver, which was fixed for 5.17 (and which had caused the
>> regression I did observe, leading to the patch as a hopefully least
>> bad option).
>>
>>> I think that is
>>> just permitting a bad configuration to break the driver that a
>>> well-written operating system should not allow. The i915 driver
>>> was, in my opinion, correctly ignoring the nopat option in 5.16
>>> because that option is not compatible with the hardware the
>>> i915 driver is trying to initialize and setup at boot time. At least
>>> that is my understanding now, but I will need to test it on 5.16
>>> to be sure I understand it correctly.
>>>
>>> Also, AFAICT, your patch would break the driver when the nopat
>>> option is set and only fix the regression introduced by bdd8b6c98239
>>> when nopat is not set on my box, so your patch would
>>> introduce a regression relative to Linux 5.16 and earlier for the
>>> case when nopat is set on my box. I think your point would
>>> be that it is not a regression if it is an incorrect user configuration.
>> Again no - my view is that there's a separate, pre-existing issue
>> in the driver which was uncovered by the change. This may be a
>> perceived regression, but is imo different from a real one.

Sorry, for you maybe, but I'm pretty sure for Linus it's not when it
comes to the "no regressions rule". Just took a quick look at quotes
from Linus
https://www.kernel.org/doc/html/latest/process/handling-regressions.html
and found this statement from Linus to back this up:

```
One _particularly_ last-minute revert is the top-most commit (ignoring
the version change itself) done just before the release, and while
it's very annoying, it's perhaps also instructive.

What's instructive about it is that I reverted a commit that wasn't
actually buggy. In fact, it was doing exactly what it set out to do,
and did it very well. In fact it did it _so_ well that the much
improved IO patterns it caused then ended up revealing a user-visible
regression due to a real bug in a completely unrelated area.
```

He said that here:
https://www.kernel.org/doc/html/latest/process/handling-regressions.html

The situation is of course different here, but similar enough.

> Since it is a regression, I think for now bdd8b6c98239 should
> be reverted and the fix backported to Linux 5.17 stable until
> the underlying memory subsystem can provide the i915 driver
> with an updated test for the PAT feature that also meets the
> requirements of the author of bdd8b6c98239 without breaking
> the i915 driver.

I'm not a developer and I'm don't known the details of this thread and
the backstory of the regression, but it sounds like that's the approach
that is needed here until someone comes up with a fix for the regression
exposed by bdd8b6c98239.

But if I'm wrong, please tell me.

Ciao, Thorsten (wearing his 'the Linux kernel's regression tracker' hat)

P.S.: As the Linux kernel's regression tracker I deal with a lot of
reports and sometimes miss something important when writing mails like
this. If that's the case here, don't hesitate to tell me in a public
reply, it's in everyone's interest to set the public record straight.

> The i915 driver relies on the memory subsytem
> to provide it with an accurate test for the existence of
> X86_FEATURE_PAT. I think your patch provides that more accurate
> test so that bdd8b6c98239 could be re-applied when your patch is
> committed. Juergen's patch would have to touch bdd8b6c98239
> with new functions that probably have unknown and unintended
> consequences, so I think your approach is also better in that regard.
> As regards your patch, there is just a disagreement about how the
> i915 driver should behave if nopat is set. I agree the i915 driver
> could do a better job handling that case, at least with better error
> logs.
> 
> Chuck
> 
>>
>>> I respond by saying a well-written driver should refuse to honor
>>> the incorrect configuration requested by the user and instead
>>> warn the user that it did not honor the incorrect kernel option.
>>>
>>> I am only presuming what your patch would do on my box based
>>> on what I learned about this problem from my debugging. I can
>>> also test your patch on my box to verify that my understanding of
>>> it is correct.
>>>
>>> I also have not yet verified Juergen's patch will not fix it, but
>>> I am almost certain it will not unless it is expanded so it also
>>> touches i915_gem_object_pin_map() with the fix. I plan to test
>>> his patch, but expanded so it touches that function also.
>>>
>>> I also plan to test your patch with and without nopat and report the
>>> results in the thread where you posted your patch. Hopefully
>>> by tomorrow I will have the results.
>>>
>>> Chuck
