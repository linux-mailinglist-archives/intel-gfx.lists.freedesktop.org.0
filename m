Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E8331EE68
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Feb 2021 19:37:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB2A26E580;
	Thu, 18 Feb 2021 18:37:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C03186E580
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Feb 2021 18:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613673430;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CVkQOwX1hQTrPgAWGy3LVtikmcXu4PtQLVTsBsjthQA=;
 b=S1zMc//KhyWZlpPMFHdQzUOiTNUzcvyVjvSV2J6Z1jhZ8xVM1IvQP/OE51Oj1jnYT1ElbX
 tvOXEDkpb+85V1yn/azv9udyUJW4NVyneotJA78JuV+BF2JpTFV0YSIt55QoxvrefzVVM3
 nd/1hnMuQJRFRY+RkIis6Fmfxpwqzpk=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-89-Hd7QZGl8OXGXDa2cNSDYJw-1; Thu, 18 Feb 2021 13:37:07 -0500
X-MC-Unique: Hd7QZGl8OXGXDa2cNSDYJw-1
Received: by mail-ed1-f72.google.com with SMTP id x18so1295306edq.19
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Feb 2021 10:37:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CVkQOwX1hQTrPgAWGy3LVtikmcXu4PtQLVTsBsjthQA=;
 b=gkejCWHRyrzSHp9hNQMizoIs9bGoAQ5q+7mKGJ5+AuyLF/meEZqOFjGN9cjM/aMKwA
 qPU2KORIdVqb8LnuU+TUgxS2ik8yVvRHQJ19h1D+8koJkBD3QJD3QTKEPoXF7Yj69z4c
 M+vrNSD4TIroCcDHE+8Uo+gcV/rGH1jTh7sMfazNsNCou3Y6uHUmRVRDwVp1/Z5/gX5b
 ju0wSyF8FXmZI9UZGua6EHYhNEavDSpJZ1/Y19l6u8ci7sJWj/Rg0OBUpciDueRRzcRO
 M+f9/09sdYxATGvt36blDndpvwQcC3bGwzWEmfQibBVFTr6fWxlwouXwT8TG3dkDiPKc
 yfmg==
X-Gm-Message-State: AOAM530xemQaJciZKlafV/JlAmR4Y3E9+ISv+e29QAGLjqyL1E+qWzND
 4PmykIYM9qc4cIRPEL9vFoTzL8DlihTRcf2r2yQJo/xhzFdHJGOGACREJezrSmFmtdPeXFZQlEV
 Zof8HlIKiVCbqaxfrjTS4DH1coeub
X-Received: by 2002:a17:906:5016:: with SMTP id
 s22mr5298135ejj.550.1613673426584; 
 Thu, 18 Feb 2021 10:37:06 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwXihVCGc9aD5Eun+zyTyUnzrMlX0GLS39BGVjTI9yZtWR6BfKkvN8aSVH+giSlfRLfa/oBEg==
X-Received: by 2002:a17:906:5016:: with SMTP id
 s22mr5298116ejj.550.1613673426319; 
 Thu, 18 Feb 2021 10:37:06 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id w3sm2729338eds.49.2021.02.18.10.37.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Feb 2021 10:37:05 -0800 (PST)
To: Sean Young <sean@mess.org>
References: <91b0f6c8-79ca-d04f-1ae0-66bf954dd421@redhat.com>
 <8d24dad6-cb2a-da91-bd38-887a7aa3282f@xs4all.nl>
 <20210217143223.GA28632@gofer.mess.org>
 <1c081320-d040-12b7-fbd6-e6b8c03c2ae8@redhat.com>
 <20210217151159.GA29680@gofer.mess.org>
 <876e34f6-c39b-8e97-7ebb-79ae2c356e53@xs4all.nl>
 <3e3c983f-b3bc-fe94-9247-69c8d97754df@redhat.com>
 <20210218163833.GA15560@gofer.mess.org>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <5d3333ea-8e02-6a4a-7da7-863304ec61cc@redhat.com>
Date: Thu, 18 Feb 2021 19:37:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210218163833.GA15560@gofer.mess.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] Issue with cec_register_adapter calling
 request_module() from an async context when called from intel_dp_detect
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
Cc: Hans Verkuil <hverkuil@xs4all.nl>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 2/18/21 5:38 PM, Sean Young wrote:
> Hi Hans,
> 
> On Thu, Feb 18, 2021 at 04:33:38PM +0100, Hans de Goede wrote:
>> On 2/17/21 5:29 PM, Hans Verkuil wrote:
>>> On 17/02/2021 16:11, Sean Young wrote:
>>>> Hi,
>>>>
>>>> On Wed, Feb 17, 2021 at 04:04:11PM +0100, Hans de Goede wrote:
>>>>> On 2/17/21 3:32 PM, Sean Young wrote:
>>>>>> On Wed, Feb 17, 2021 at 01:41:46PM +0100, Hans Verkuil wrote:
>>>>>>> Hi Hans,
>>>>>>>
>>>>>>> On 17/02/2021 13:24, Hans de Goede wrote:
>>>>>>>> <resend with the linux-media list added to the Cc>
>>>>>>>>
>>>>>>>> Hi Hans,
>>>>>>>>
>>>>>>>> Fedora has a (opt-in) system to automatically collect backtraces from software
>>>>>>>> crashing on users systems.
>>>>>>>>
>>>>>>>> This includes collecting kernel backtraces (including once triggered by
>>>>>>>> WARN macros) while looking a the top 10 of the most reported backtrace during the
>>>>>>>> last 2 weeks report from ABRT: https://retrace.fedoraproject.org/faf/problems/
>>>>>>>>
>>>>>>>> I noticed the following backtrace:
>>>>>>>> https://retrace.fedoraproject.org/faf/problems/8150/
>>>>>>>> which has been reported 170000 times by Fedora users who have opted-in during the
>>>>>>>> last 14 days.
>>>>>>>>
>>>>>>>> The issue here is that cec_register_adapter ends up calling request_module()
>>>>>>>> from an async context, triggering this warn in kernel/kmod.c __request_module():
>>>>>>>>
>>>>>>>>         /*
>>>>>>>>          * We don't allow synchronous module loading from async.  Module
>>>>>>>>          * init may invoke async_synchronize_full() which will end up
>>>>>>>>          * waiting for this task which already is waiting for the module
>>>>>>>>          * loading to complete, leading to a deadlock.
>>>>>>>>          */
>>>>>>>>         WARN_ON_ONCE(wait && current_is_async());
>>>>>>>>
>>>>>>>> The call-path leading to this goes like this:
>>>>>>>>
>>>>>>>>  ? kvasprintf+0x6d/0xa0
>>>>>>>>  ? kobject_set_name_vargs+0x6f/0x90
>>>>>>>>  rc_map_get+0x30/0x60
>>>>>>>
>>>>>>> It's not CEC, it is rc_map_get that calls request_module() for rc-cec.ko.
>>>>>>>
>>>>>>> I've added Sean Young to the CC list.
>>>>>>>
>>>>>>> Sean, is it possible to treat rc-cec as a built-in if MEDIA_CEC_RC is set?
>>>>>>>
>>>>>>> I think this issue is very specific to CEC. I would not expect to see this
>>>>>>> with any other rc keymap.
>>>>>>
>>>>>> So CEC creates an RC device with a keymap (cec keymap, of course) and then
>>>>>> the keymap needs to be loaded. We certainly don't want all keymaps as
>>>>>> builtins, that would be a waste.
>>>>>>
>>>>>> The cec keymap is scanned once to build a map from cec codes to linux
>>>>>> keycodes; making it builtin is not ideal, and makes the build system a
>>>>>> bit messy.
>>>>>>
>>>>>> I don't think we can load the keymap later, user space may start remapping
>>>>>> the keymap from udev.
>>>>>>
>>>>>> Possibly we could create the cec or rc device later but this could be a bit
>>>>>> messy.
>>>>>>
>>>>>> Could CEC specify:
>>>>>>
>>>>>> #if IS_ENABLED(CONFIG_MEDIA_CEC_RC)
>>>>>> MODULE_SOFTDEP("rc-cec")
>>>>>> #endif
>>>>>
>>>>> That would need to be:
>>>>>
>>>>> MODULE_SOFTDEP("pre: rc-cec")
>>>>>
>>>>> I see that the drm_kms_helper and i915 drivers both depend on the cec module already,
>>>>> so yes if that module will request for rc-cec to be loaded before it is loaded
>>>>> (and thus before i915 is loaded) then that should work around this.
>>>>>
>>>>> Assuming the user is using a module-loader which honors the softdep...
>>>>>
>>>>> Also this assumes that rc_map_get is smart enough to not call request_module()
>>>>> if the module is already loaded, is that the case ?
>>>>
>>>> Yes, see rc_map_get().
>>>
>>> I tried this. It works if CONFIG_RC_CORE is set to m, but setting it to
>>> y resulted in the same problem. It looks like MODULE_SOFTDEP only works if rc_main
>>> is a module as well.
>>
>> Yeah that is a known limit of module softdeps, they only work inside modules ...
> 
> Yes, I assume this is the problem.
> 
>> Still, assuming there is no easy other fix, we could still use this somehow.
>>
>> I do see that at least Fedora actually has CONFIG_RC_CORE=y for some reason.
> 
> This is to make BPF IR decoding possible.
> 
>> I guess we could maybe add the softdep to the CONFIG_RC_MAP module or
>> maybe to the module which contains the code enabled by CONFIG_DRM_DP_CEC ?
>>
>> At least Fedora has all drm stuff as modules and also has CONFIG_RC_MAP=m,
>>
>> I know this is not a real fix but a workaround to get rid of 170,000
>> backtraces / 14 days being reported by (opted-in) systems running the
>> Fedora generic kernel config would be welcome regardless of it being the
>> "perfect" fix.
> 
> Of course, I totally agree that a solution is needed.
> 
> How about:
> 
>  1) Use MODULE_SOFTDEP("rc-cec"); 
> 
>  2) If it's compiled as a module, rc-cec should be builtin

I assume with 2. you meant to write "If it is NOT compiled as a module, ..." ?

That sounds good to me. The Kconfig for this likely won't be pretty, but
that is often the case with more complex dependencies in Kconfig.

Note with my Fedora hat (Fedora fedora :) on I'm already happy with just
1) assuming it ends up somewhere which the Fedora kernel-config does
built as a module, such as say the module which contains the code
which gets enabled by CONFIG_DRM_DP_CEC.  But having 2. also would
certainly be nice.

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
