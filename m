Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2F831DBE6
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 16:04:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 618086E115;
	Wed, 17 Feb 2021 15:04:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C19B46E115
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 15:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613574257;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GWJYJpfiavYGoze7DduR+6q+2HwCelf19ffydNBhPPc=;
 b=Lolxnb4uVUwCSQWa95lr5SDBHy5PPXoIUs8jJBsCq5Kk+euP5Iu0wmrJNJmzMpAqu6Buhn
 sVKIWiK8sIGC91ivnEwzRMVO446q842vVDdFcumMavXPHd+rqNwaqiepDU2AP5wQQlrmL7
 84GfVwiL97C0+L6g4hJyoVN8MNSUOwo=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-475-HCO-cWvIOiewOPkleD-RGg-1; Wed, 17 Feb 2021 10:04:15 -0500
X-MC-Unique: HCO-cWvIOiewOPkleD-RGg-1
Received: by mail-ej1-f71.google.com with SMTP id ce24so1227945ejc.17
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 07:04:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GWJYJpfiavYGoze7DduR+6q+2HwCelf19ffydNBhPPc=;
 b=IYliK36AcseRnabAee7BHd17Pdhge52wGzL0s1a+XtMcWl4U8p+DdGKOaUlbq2mR67
 aG9Bl/RfG4nFP12tRrwS3aHMXSt00JTQcy/SRQJOI2vpTYKEml+UXyzn8eyxVYpV0/zV
 ImFhIC2uTDnmOtMIeUR4txztzi+j0a0ft9R3xkM4ZXaGWeizANUg8IZ2DDVejq8NbSbi
 60ZKkhACZFYjFVr5e4gNQZlSKrHmEb8RqYHiEScS9tTMooEt7tSv2XTnHsFC0BAq+D/B
 fQWclJa/1qC+tVflisUwOb4BUjEeAY/XaJaoh6R57oAye2boaw2h0oA9vUURG3b9YYsX
 HCKA==
X-Gm-Message-State: AOAM531MICq2grGPsGswKsyTlAFPRka2WHYMZp9PCL5mhl79NXB/voIw
 0StM5nNqs4I/3Qx07MasHHe0gCiOdG0rtptiY6PnqRNZr6yzOGUV2Z/3GY+AWVRgjOK8rmzAP4F
 6uEZqVYYx37Z3lOkMrJdmnf9qybpB
X-Received: by 2002:a17:906:2787:: with SMTP id
 j7mr17682702ejc.291.1613574253075; 
 Wed, 17 Feb 2021 07:04:13 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyi0Rn++fwfvb33fhbVcvUdXk7bs4m++3DkFdd1P3x/xmgS8v6w9FGeGX0gjFf+wU0kzGxX7w==
X-Received: by 2002:a17:906:2787:: with SMTP id
 j7mr17682678ejc.291.1613574252793; 
 Wed, 17 Feb 2021 07:04:12 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id g3sm1126995ejz.91.2021.02.17.07.04.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Feb 2021 07:04:12 -0800 (PST)
To: Sean Young <sean@mess.org>, Hans Verkuil <hverkuil@xs4all.nl>
References: <91b0f6c8-79ca-d04f-1ae0-66bf954dd421@redhat.com>
 <8d24dad6-cb2a-da91-bd38-887a7aa3282f@xs4all.nl>
 <20210217143223.GA28632@gofer.mess.org>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <1c081320-d040-12b7-fbd6-e6b8c03c2ae8@redhat.com>
Date: Wed, 17 Feb 2021 16:04:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210217143223.GA28632@gofer.mess.org>
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 2/17/21 3:32 PM, Sean Young wrote:
> On Wed, Feb 17, 2021 at 01:41:46PM +0100, Hans Verkuil wrote:
>> Hi Hans,
>>
>> On 17/02/2021 13:24, Hans de Goede wrote:
>>> <resend with the linux-media list added to the Cc>
>>>
>>> Hi Hans,
>>>
>>> Fedora has a (opt-in) system to automatically collect backtraces from software
>>> crashing on users systems.
>>>
>>> This includes collecting kernel backtraces (including once triggered by
>>> WARN macros) while looking a the top 10 of the most reported backtrace during the
>>> last 2 weeks report from ABRT: https://retrace.fedoraproject.org/faf/problems/
>>>
>>> I noticed the following backtrace:
>>> https://retrace.fedoraproject.org/faf/problems/8150/
>>> which has been reported 170000 times by Fedora users who have opted-in during the
>>> last 14 days.
>>>
>>> The issue here is that cec_register_adapter ends up calling request_module()
>>> from an async context, triggering this warn in kernel/kmod.c __request_module():
>>>
>>>         /*
>>>          * We don't allow synchronous module loading from async.  Module
>>>          * init may invoke async_synchronize_full() which will end up
>>>          * waiting for this task which already is waiting for the module
>>>          * loading to complete, leading to a deadlock.
>>>          */
>>>         WARN_ON_ONCE(wait && current_is_async());
>>>
>>> The call-path leading to this goes like this:
>>>
>>>  ? kvasprintf+0x6d/0xa0
>>>  ? kobject_set_name_vargs+0x6f/0x90
>>>  rc_map_get+0x30/0x60
>>
>> It's not CEC, it is rc_map_get that calls request_module() for rc-cec.ko.
>>
>> I've added Sean Young to the CC list.
>>
>> Sean, is it possible to treat rc-cec as a built-in if MEDIA_CEC_RC is set?
>>
>> I think this issue is very specific to CEC. I would not expect to see this
>> with any other rc keymap.
> 
> So CEC creates an RC device with a keymap (cec keymap, of course) and then
> the keymap needs to be loaded. We certainly don't want all keymaps as
> builtins, that would be a waste.
> 
> The cec keymap is scanned once to build a map from cec codes to linux
> keycodes; making it builtin is not ideal, and makes the build system a
> bit messy.
> 
> I don't think we can load the keymap later, user space may start remapping
> the keymap from udev.
> 
> Possibly we could create the cec or rc device later but this could be a bit
> messy.
> 
> Could CEC specify:
> 
> #if IS_ENABLED(CONFIG_MEDIA_CEC_RC)
> MODULE_SOFTDEP("rc-cec")
> #endif

That would need to be:

MODULE_SOFTDEP("pre: rc-cec")

I see that the drm_kms_helper and i915 drivers both depend on the cec module already,
so yes if that module will request for rc-cec to be loaded before it is loaded
(and thus before i915 is loaded) then that should work around this.

Assuming the user is using a module-loader which honors the softdep...

Also this assumes that rc_map_get is smart enough to not call request_module()
if the module is already loaded, is that the case ?

Regards,

Hans




>>>  rc_register_device+0x108/0x510
>>>  cec_register_adapter+0x5c/0x280 [cec]
>>>  drm_dp_cec_set_edid+0x11e/0x178 [drm_kms_helper]
>>>  intel_dp_set_edid+0x8d/0xc0 [i915]
>>>  intel_dp_detect+0x188/0x5c0 [i915]
>>>  drm_helper_probe_single_connector_modes+0xc2/0x6d0 [drm_kms_helper]
>>>  ? krealloc+0x7b/0xb0
>>>  drm_client_modeset_probe+0x25b/0x1320 [drm]
>>>  ? kfree+0x1ea/0x200
>>>  ? sched_clock+0x5/0x10
>>>  ? sched_clock_cpu+0xc/0xa0
>>>  __drm_fb_helper_initial_config_and_unlock+0x37/0x470 [drm_kms_helper]
>>>  ? _cond_resched+0x16/0x40
>>>  intel_fbdev_initial_config+0x14/0x30 [i915]
>>>  async_run_entry_fn+0x39/0x160
>>>
>>> So 2 questions:
>>>
>>> 1. Can we get this fixed please ?
>>>    Related to this, what happens if we make this an async modprobe
>>>    (when running from async context) is that a problem, or is it fine
>>>    if the rc_map module gets loaded later ?
>>>
>>> 2. If the answer to 1. is "tricky", "maybe" or some such then can we
>>> look into a workaround here ? E.g. do we know in advance which module
>>> is going to be requested (1), or does that depend on the EDID data ?
>>>
>>> Regards,
>>>
>>> Hans
>>>
>>>
>>> 1) And can we thus do tricks with a softdep on it ?
>>>
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
