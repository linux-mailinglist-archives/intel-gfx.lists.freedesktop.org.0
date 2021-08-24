Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8673F6334
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Aug 2021 18:49:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CFE56E063;
	Tue, 24 Aug 2021 16:49:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 015D86E063
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Aug 2021 16:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1629823774;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kmI8hocKzE/m+bwvMVeJGFmHx34XKrmkWhq5ToJHaEI=;
 b=OZPmHm+2ZW9mm27NuCG5TopXMS/Asky9vlfDZtF+L25abxb3IqRS2ACyEFvMcLLNXJAXjO
 t7/GRfq8MWxPZaJm60uc1A1NEFJTR3C4uW//7pNFdebcGqJMgLYwWYtL3td0kDJdzniN02
 100gOi4AZjXo9L+ypfWBhON5ILWFxFo=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-362-e64j_0fvMrCKt6YnK0tkBg-1; Tue, 24 Aug 2021 12:49:02 -0400
X-MC-Unique: e64j_0fvMrCKt6YnK0tkBg-1
Received: by mail-ed1-f69.google.com with SMTP id
 eg56-20020a05640228b8b02903be79801f9aso10779795edb.21
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Aug 2021 09:49:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=kmI8hocKzE/m+bwvMVeJGFmHx34XKrmkWhq5ToJHaEI=;
 b=dAC5VDanKv3xu/x3tCeva9U7Cyl8T7c1rAeBHN5tuqkC6xyPSwfGVzG76VvAAZl1pE
 +haNayrSCF24qPO2hS+u6/CkJgxzc38bnSZc7ZpxbUdmTanNBA+2H8+NYR/3zgUUa4Zr
 GMKCrM94Otins9JBaWS7nsCS1l8Y0t8L5uWyy1squX4MgmYyDWN+jRKgVeiJmjQIz0W1
 ix/1dkORLpCl+WQFm95py2B+6RpM+o53V6fEbAcnvxk94vy/D0mhEFwydmNzjEiGEVR9
 8vOpUnxfMZYmmEvlm108CmgFk60A6WNHzYOuoZwBuDX9E/9v3/HyGUEEJHHzuXlYveqz
 uNRA==
X-Gm-Message-State: AOAM5304TYxstBj2gZhuBMkC5hpSjiLyG+xTQ/E7O/J9kAonLoi7gsjs
 Abi53jEBDLtf6dsTdZ7sQJocwh5DBp4wk2JuY2NDD6njTd/k9t3183+gyV5VQ5CtcVj8gcLBHjZ
 fP4Tuy2Awv8d+vvkIF4b7D7EUJuA5
X-Received: by 2002:a50:d587:: with SMTP id v7mr10156665edi.120.1629823741220; 
 Tue, 24 Aug 2021 09:49:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy8p9ZhB+YjhzpWWotEUbkffC5uCyVDihhEeekgXfX+ojksKruVky8vDsNitTFruPAJncVoXA==
X-Received: by 2002:a50:d587:: with SMTP id v7mr10156650edi.120.1629823741044; 
 Tue, 24 Aug 2021 09:49:01 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id dh8sm11642769edb.14.2021.08.24.09.49.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Aug 2021 09:49:00 -0700 (PDT)
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel@ffwll.ch>
References: <34f13e21-9b1a-5f54-7e03-9705a6b51428@redhat.com>
 <871r6jgrin.fsf@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <15400f71-dfe6-3142-d191-596ef9af7e7a@redhat.com>
Date: Tue, 24 Aug 2021 18:48:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <871r6jgrin.fsf@intel.com>
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

On 8/24/21 10:45 AM, Jani Nikula wrote:
> On Fri, 20 Aug 2021, Hans de Goede <hdegoede@redhat.com> wrote:
>> Hello drm-misc and drm-intel maintainers,
>>
>> My "Add support for out-of-band hotplug notification" patchset:
>> https://patchwork.freedesktop.org/series/93763/
>>
>> Is ready for merging now, as discussed on IRC I based this series
>> on top drm-tip and when trying to apply the i915 parts on top
>> of drm-misc this fails due to conflict.
>>
>> So as Jani suggested here is a pull-req for a topic-branch with the
>> entire set, minus the troublesome i915 bits. Once this has been merged
>> into both drm-misc-next and drm-intel-next I can push the 2 i915
>> patch do drm-intel-next on top of the merge.
>>
>> Note there are also 2 drivers/usb/typec patches in here these
>> have Greg KH's Reviewed-by for merging through the drm tree,
>> Since this USB code does not change all that much. I also checked
>> and the drm-misc-next-2021-08-12 base of this tree contains the
>> same last commit to the modified file as usb-next.
>>
>> Daniel Vetter mentioned on IRC that it might be better for you to simply
>> pick-up the series directly from patchwork, that is fine too in that
>> case don't forget to add:
>>
>> Reviewed-by: Lyude Paul <lyude@redhat.com>
>>
>> To the entire series (given in a reply to the cover-letter)
>>
>> And:
>>
>> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>>
>> To the usb/typec patches (patch 7/8), this was given in reply
>> to a previous posting of the series and I forgot to add this
>> in the resend.
> 
> Since this is mostly touching drm core, I think it should be merged to
> drm-misc-next first, and drm-intel-next after. Please let us know.

I agree this should go to drm-misc-next first.

(I was planning on pushing this to drm-misc-next myself,
but then ended up going with the topic branch because of the
conflict in the i915 bits.)

Regards,

Hans



>> The following changes since commit c7782443a88926a4f938f0193041616328cf2db2:
>>
>>   drm/bridge: ti-sn65dsi86: Avoid creating multiple connectors (2021-08-12 09:56:09 -0700)
>>
>> are available in the Git repository at:
>>
>>   git://git.kernel.org/pub/scm/linux/kernel/git/hansg/linux.git drm-misc-intel-oob-hotplug-v1
>>
>> for you to fetch changes up to 7f811394878535ed9a6849717de8c2959ae38899:
>>
>>   usb: typec: altmodes/displayport: Notify drm subsys of hotplug events (2021-08-20 12:35:59 +0200)
>>
>> ----------------------------------------------------------------
>> Topic branch for drm-misc / drm-intel for OOB hotplug support for Type-C connectors
>>
>> ----------------------------------------------------------------
>> Hans de Goede (6):
>>       drm/connector: Give connector sysfs devices there own device_type
>>       drm/connector: Add a fwnode pointer to drm_connector and register with ACPI (v2)
>>       drm/connector: Add drm_connector_find_by_fwnode() function (v3)
>>       drm/connector: Add support for out-of-band hotplug notification (v3)
>>       usb: typec: altmodes/displayport: Make dp_altmode_notify() more generic
>>       usb: typec: altmodes/displayport: Notify drm subsys of hotplug events
>>
>>  drivers/gpu/drm/drm_connector.c          | 79 +++++++++++++++++++++++++++++
>>  drivers/gpu/drm/drm_crtc_internal.h      |  2 +
>>  drivers/gpu/drm/drm_sysfs.c              | 87 +++++++++++++++++++++++++++-----
>>  drivers/usb/typec/altmodes/Kconfig       |  1 +
>>  drivers/usb/typec/altmodes/displayport.c | 58 +++++++++++++--------
>>  include/drm/drm_connector.h              | 25 +++++++++
>>  6 files changed, 217 insertions(+), 35 deletions(-)
>>
> 

