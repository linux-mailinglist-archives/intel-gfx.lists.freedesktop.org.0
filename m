Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 763FF40890C
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Sep 2021 12:33:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 118706E154;
	Mon, 13 Sep 2021 10:33:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 235BA6E154
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Sep 2021 10:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1631529231;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WmccRh4NFFHd/GLsqDlsJId99Nc/0CkvaEVlagcImLE=;
 b=MSGWNq1prbmzHviOL9D47sN7xubWnHWcxFqUSWsyv7+9PGvIAnjtmCILalKFN/tCeOHRic
 /sQ/0Kmeql4QsMu+djAMYhUSIrwQt+EQsECNV1Zcs22tBD76ruzw/EzGN91F8OGLyBsiyI
 in/rgtcV+9j2+qPAOqElzxOOJSQ8CiE=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-460-5foHIqH7MT6Myk16k8s_4g-1; Mon, 13 Sep 2021 06:33:48 -0400
X-MC-Unique: 5foHIqH7MT6Myk16k8s_4g-1
Received: by mail-ej1-f72.google.com with SMTP id
 cf17-20020a170906b2d100b005d42490f86bso3487807ejb.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Sep 2021 03:33:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=WmccRh4NFFHd/GLsqDlsJId99Nc/0CkvaEVlagcImLE=;
 b=TfXahyvvxtmVv1KL7wD+5ZzDa/LlKWpJi55uQY2FhwmAHFa1Mr2kn3Ka4FKi9qy3ns
 10xEIMQNQLxUkiv+KLi87q+wuijdAGnrxfnXdXJJMyvrHoFeK77qVGAaDlEz1GS/QUjl
 w4nYyBfG/BYIj9KoxUIIcUJfj8d3qHOzQvfVd0pGxylFz6bVxTYGp5XrvXZiOUuOIElr
 T73FuG0Ytfyw7fB9xC4w7A2TIRg23l9FVaY9fgifUMG2evr4VfyvfQwoX4LP4wlAzEBN
 BFR3OnOclKVswBlXJAyo3mh+98QfYBm+ALEG4UC8tMiA8BrSlGR3lgD/iYEtbM2lRESo
 0vuw==
X-Gm-Message-State: AOAM530yVQuh2WStFzxtQLzW3raZWJIoKaWuadhOwnxqPhUS4G12rSB9
 wSi2CusMC8NlPDNF+G9Lgm+Ug4h7RfVZnAuBEGP+pg+65inGo13QnTuNeAdL2l2/GrLKUUGRx05
 JgKq0c7ROq6rVVIZ0Ks3tEAydb8v+
X-Received: by 2002:a05:6402:40e:: with SMTP id
 q14mr10383622edv.11.1631529227671; 
 Mon, 13 Sep 2021 03:33:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzAkGIUyY457cbpjejmUdefwTgXeIoIb67nfCUewmNi8VAMWd7WVbLzYn8kSdDFUlkBMiX9EQ==
X-Received: by 2002:a05:6402:40e:: with SMTP id
 q14mr10383594edv.11.1631529227339; 
 Mon, 13 Sep 2021 03:33:47 -0700 (PDT)
Received: from x1.localdomain ([81.30.35.201])
 by smtp.gmail.com with ESMTPSA id i26sm3661682edt.62.2021.09.13.03.33.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Sep 2021 03:33:46 -0700 (PDT)
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "maxime@cerno.tech" <maxime@cerno.tech>
Cc: "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>
References: <34f13e21-9b1a-5f54-7e03-9705a6b51428@redhat.com>
 <871r6jgrin.fsf@intel.com> <15400f71-dfe6-3142-d191-596ef9af7e7a@redhat.com>
 <b24d3733d0b0c79fa6fce4f4e696b0c3a338469a.camel@intel.com>
 <20210826082357.xttccb5thrv2eo2e@gilmour>
 <aee6d8d5cad5cb989208a6e5533c59c7828ec69b.camel@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <3d490f59-5a1e-da51-6086-5bb947e0c1fd@redhat.com>
Date: Mon, 13 Sep 2021 12:33:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <aee6d8d5cad5cb989208a6e5533c59c7828ec69b.camel@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [GIT PULL] drm-misc + drm-intel: Add support for
 out-of-band hotplug notification
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

On 8/26/21 1:43 PM, Vivi, Rodrigo wrote:
> On Thu, 2021-08-26 at 10:23 +0200, Maxime Ripard wrote:
>> On Wed, Aug 25, 2021 at 04:03:43PM +0000, Vivi, Rodrigo wrote:
>>> On Tue, 2021-08-24 at 18:48 +0200, Hans de Goede wrote:
>>>> Hi,
>>>>
>>>> On 8/24/21 10:45 AM, Jani Nikula wrote:
>>>>> On Fri, 20 Aug 2021, Hans de Goede <hdegoede@redhat.com> wrote:
>>>>>> Hello drm-misc and drm-intel maintainers,
>>>>>>
>>>>>> My "Add support for out-of-band hotplug notification"
>>>>>> patchset:
>>>>>> https://patchwork.freedesktop.org/series/93763/
>>>>>>
>>>>>> Is ready for merging now, as discussed on IRC I based this
>>>>>> series
>>>>>> on top drm-tip and when trying to apply the i915 parts on top
>>>>>> of drm-misc this fails due to conflict.
>>>>>>
>>>>>> So as Jani suggested here is a pull-req for a topic-branch
>>>>>> with
>>>>>> the
>>>>>> entire set, minus the troublesome i915 bits. Once this has
>>>>>> been
>>>>>> merged
>>>>>> into both drm-misc-next and drm-intel-next I can push the 2
>>>>>> i915
>>>>>> patch do drm-intel-next on top of the merge.
>>>>>>
>>>>>> Note there are also 2 drivers/usb/typec patches in here these
>>>>>> have Greg KH's Reviewed-by for merging through the drm tree,
>>>>>> Since this USB code does not change all that much. I also
>>>>>> checked
>>>>>> and the drm-misc-next-2021-08-12 base of this tree contains
>>>>>> the
>>>>>> same last commit to the modified file as usb-next.
>>>>>>
>>>>>> Daniel Vetter mentioned on IRC that it might be better for
>>>>>> you to
>>>>>> simply
>>>>>> pick-up the series directly from patchwork, that is fine too
>>>>>> in
>>>>>> that
>>>>>> case don't forget to add:
>>>>>>
>>>>>> Reviewed-by: Lyude Paul <lyude@redhat.com>
>>>>>>
>>>>>> To the entire series (given in a reply to the cover-letter)
>>>>>>
>>>>>> And:
>>>>>>
>>>>>> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>>>>>>
>>>>>> To the usb/typec patches (patch 7/8), this was given in reply
>>>>>> to a previous posting of the series and I forgot to add this
>>>>>> in the resend.
>>>>>
>>>>> Since this is mostly touching drm core, I think it should be
>>>>> merged
>>>>> to
>>>>> drm-misc-next first, and drm-intel-next after. Please let us
>>>>> know.
>>>>
>>>> I agree this should go to drm-misc-next first.
>>>>
>>>> (I was planning on pushing this to drm-misc-next myself,
>>>> but then ended up going with the topic branch because of the
>>>> conflict in the i915 bits.)
>>>
>>> Just to be clear and avoid confusion: This pull request does apply
>>> cleanly on drm-misc-next nd drm-intel-next right now.
>>>
>>> I'm just waiting for drm-misc-next maintainers to pull this to drm-
>>> misc-next so I can pull it to drm-intel-next.
>>>
>>> Maxime, is that your round now?
>>> or Thomas?
>>
>> That's me, I just pushed it to drm-misc-next
> 
> Thank you!
> I also pushed to drm-intel-next.

Thanks, I pushed the remaining 2 i915 patches depending on this
to drm-intel-next last week (but I forgot to reply to this email then).

Regards,

Hans

