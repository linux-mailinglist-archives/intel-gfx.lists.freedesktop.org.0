Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C64A4250AE
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 12:07:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 830196F3EA;
	Thu,  7 Oct 2021 10:07:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C159E6F3DA
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 10:07:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1633601230;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=o3VrI5ZTUo9hJdT9VY8yipNhfJZYb3WUwLw+2fn4NLM=;
 b=MSkf054TftsjaVr+X5od+1liE1wx360HU90jTizzK+6NY7D6rs8LouxicOSDvb9r/ufHsg
 Gmt6KeflgaQGcYdCXMiRfBxpdBzjxlsP4cuHTGAH8KYEQEj/3tGVzFZ8trCVoOfFa7vWIy
 kElUriZrgEeR6viIwZiL3lLK+Vzvw1I=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-465-2qxUGKK0OGqNgIS6pI2Ofw-1; Thu, 07 Oct 2021 06:07:09 -0400
X-MC-Unique: 2qxUGKK0OGqNgIS6pI2Ofw-1
Received: by mail-ed1-f71.google.com with SMTP id
 c30-20020a50f61e000000b003daf3955d5aso5427469edn.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 Oct 2021 03:07:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=o3VrI5ZTUo9hJdT9VY8yipNhfJZYb3WUwLw+2fn4NLM=;
 b=z55dzQc5JecQHduwFOaC4sqVnnQNEDejrjxJsO1WCkKUk+aauBNOCcGxKbePhn57WO
 se7ci3MiVdQ74IZkoUfkFInVqR4WjOlIe3ctf+HIx6THBNuXdY7kSxblpqE3m9lmnOEe
 98AnCYCHmWWZAuIEAxSVmPtvC7yaEi6i4Srp7wIoFjKDXZov4wOJ5FBMErRvo3QkC8xz
 BEuc+DweNyXAtb4wYMqVpr0n+HS4hPMsfcSE1zL6svbpBOO7jdz34tvAsdh9I20USlm/
 JYwLltfRfzSD1fv/2CoHknJfkIcUM9FSWgE3l5aUVgEViAlUBgfc64lhOGqlg3Ttgpkx
 2xZQ==
X-Gm-Message-State: AOAM532DQXVDyO5HDP/YaMPN3OpnsaPheRdAk/re+1tur8QXj9RzqNNF
 jJCzr8N3CjELVueK++0x0XBf6QqrTywxoQtyfBji70a5zoLHx3R5ohI34ZaZwZZ3dsRx336RWIL
 b+CxRZxsJl44Kd1FQQNkFe7tHfnq3
X-Received: by 2002:a50:bf0f:: with SMTP id f15mr4989992edk.43.1633601228497; 
 Thu, 07 Oct 2021 03:07:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwDHHV/XFtb6yIqdpTbq3v7ekQKn35D8LvKbzmKny+BACxY7Ivc+IPzx40YzoPLr+PAdeADIw==
X-Received: by 2002:a50:bf0f:: with SMTP id f15mr4989946edk.43.1633601228148; 
 Thu, 07 Oct 2021 03:07:08 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id q14sm550485eji.63.2021.10.07.03.07.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 Oct 2021 03:07:07 -0700 (PDT)
From: Hans de Goede <hdegoede@redhat.com>
To: Lyude Paul <lyude@redhat.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, nouveau@lists.freedesktop.org
References: <20211001225344.1752203-1-lyude@redhat.com>
 <a6ea3fa3-fbbd-f5e8-54ab-3929ed9f7294@redhat.com>
 <2b04c75841f4c1661c242a3371b12d52bb0573ef.camel@redhat.com>
 <6216276e-6998-cb40-3299-81ac03a1f3a9@redhat.com>
Message-ID: <1eeaec2b-4ee5-8bfc-3121-239e85ea48dd@redhat.com>
Date: Thu, 7 Oct 2021 12:07:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <6216276e-6998-cb40-3299-81ac03a1f3a9@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2 0/4] drm/dp,
 drm/i915: Finish basic PWM support for VESA backlight helpers
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 10/7/21 11:54 AM, Hans de Goede wrote:
> Hi,
> 
> On 10/5/21 10:26 PM, Lyude Paul wrote:
>> On Sat, 2021-10-02 at 11:14 +0200, Hans de Goede wrote:
>>> Hi Lyude,
>>>
>>> On 10/2/21 12:53 AM, Lyude Paul wrote:
>>>> When I originally moved all of the VESA backlight code in i915 into DRM
>>>> helpers, one of the things I didn't have the hardware or time for
>>>> testing was machines that used a combination of PWM and DPCD in order to
>>>> control their backlights. This has since then caused some breakages and
>>>> resulted in us disabling DPCD backlight support on such machines. This
>>>> works fine, unless you have a machine that actually needs this
>>>> functionality for backlight controls to work at all. Additionally, we
>>>> will need to support PWM for when we start adding support for VESA's
>>>> product (as in the product of multiplication) control mode for better
>>>> brightness ranges.
>>>>
>>>> So - let's finally finish up implementing basic support for these types
>>>> of backlights to solve these problems in our DP helpers, along with
>>>> implementing support for this in i915. And since digging into this issue
>>>> solved the last questions we really had about probing backlights in i915
>>>> for the most part, let's update some of the comments around that as
>>>> well!
>>>
>>> Backlight control is a topic which I'm reasonably familiar with,
>>> do you want me to review this series for you ?
>>
>> Possibly, although I definitely want to make sure that someone from Intel gets
>> a chance to review this as well.
> 
> I already expected you would also want someone from Intel to take a look
> as well :)
> 
> So to figure out if I have system to test this I ended up taking a close
> look at the code, which was a nice learning experience. Interesting how
> some panels use a combination of DCPD + pwm/gpio for enable/disable and/or
> pwm for brightness level control.
> 
> I wonder though what DCPD still does if pwm is used for both the
> enable/disable and brightness-level control ?
> 
> Since I was taking a close look already I decided to do turn this into
> a full, the entire set looks good to me:
> 
> Reviewed-by: Hans de Goede <hdegoede@redhat.com>
> 
>> I'm more curious if you might happen to have
>> any systems that would be able to test this.
> 
> I don't believe I have a system where I can test this, The only systems
> which I have which presumably (I did not check) use eDP / DCPD backlight
> control are boring ThinkPads with only i915 gfx.

Continuing with reading my email I see that you've also posted a v5
with 1 new patch:

[PATCH v3 3/5] drm/dp: Disable unsupported features in DP_EDP_BACKLIGHT_MODE_SET_REGISTER

That patch looks good to me too, so you may also add my:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

To that one / to the entire v3 series.

Regards,

Hans



>>>> Changes:
>>>> * Fixup docs
>>>> * Add patch to stop us from breaking nouveau
>>>>
>>>> Lyude Paul (4):
>>>>   drm/i915: Add support for panels with VESA backlights with PWM
>>>>     enable/disable
>>>>   drm/nouveau/kms/nv50-: Explicitly check DPCD backlights for aux
>>>>     enable/brightness
>>>>   drm/dp, drm/i915: Add support for VESA backlights using PWM for
>>>>     brightness control
>>>>   drm/i915: Clarify probing order in intel_dp_aux_init_backlight_funcs()
>>>>
>>>>  drivers/gpu/drm/drm_dp_helper.c               | 75 +++++++++++------
>>>>  .../drm/i915/display/intel_dp_aux_backlight.c | 80 ++++++++++++++-----
>>>>  drivers/gpu/drm/nouveau/nouveau_backlight.c   |  5 +-
>>>>  include/drm/drm_dp_helper.h                   |  7 +-
>>>>  4 files changed, 122 insertions(+), 45 deletions(-)
>>>>
>>>
>>

