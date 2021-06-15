Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 318AF3A7921
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 10:36:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C21646E20E;
	Tue, 15 Jun 2021 08:36:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DD146E20E
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Jun 2021 08:36:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623746169;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zQ0Ep4gSklPhhhQetAYfHp3vlzd1+9BgVu3ya8aRWQM=;
 b=YB0uSgfxJooOMJhQiNMiPXPXgYPdA1IXRwsQu41KqHe3YYlfdKjSKtPH1ywuJMqts9adOc
 q8QeEdjzJDp5RoABRkFrlKNR0D7SjuccX+Ocp5rMogz7ODAcnnMOCxOYbRqXefUBwJeRf6
 UCrhP1b3CY7NwSAkdUKDnOW6lXi799c=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-596-y6CyNq1ZOjKaIgUzzSNzkA-1; Tue, 15 Jun 2021 04:36:06 -0400
X-MC-Unique: y6CyNq1ZOjKaIgUzzSNzkA-1
Received: by mail-ej1-f72.google.com with SMTP id
 l6-20020a1709062a86b029046ec0ceaf5cso330672eje.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Jun 2021 01:36:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=zQ0Ep4gSklPhhhQetAYfHp3vlzd1+9BgVu3ya8aRWQM=;
 b=aSeQ28VDt80ST48pfVGsXm5H1Oke1904V8JkZ9qBcTrqRy0vUK29DkQIN1ftUJHX72
 ir8YeTYn2OD01H3J5hOzhMb/7HgQfxkQqbyKPTkSfCOm+h2MFAgk1wWE7nLaBpCO15EU
 Kb8ckTuhuUY9YTdPI31gLJZcQuyVxuoRvn09x5L0zUbCorqQwqn8Kk/Cz2zv43wYs0T/
 ZtpX8djIvdp5tEm/Za4EwVJ6HN5p/VxgFlX+2oQh2A8duH02VKKqobY9VgPMBm6N1SLD
 KSwFfMuxa+Nu+Ghv2QUEUHR3cHy1hohPAmfdDLyZE29nR633zVB+mggCpU9kWjnOauxF
 wtmA==
X-Gm-Message-State: AOAM533Fh2aFBtqWdVkDeO1eTorHP5RO+LyhTXLe8LkSxV115NhvhuGE
 NkxnGLaskErPXKgYGAFjSmziIecWX4DqN8gT2e0WfY1BabKte9R+iV0D83d/DHXN85KwoPakxJz
 6W8AhcPj3yXU3XK3v4vHjMAxMJ8M7
X-Received: by 2002:a05:6402:177a:: with SMTP id
 da26mr22030427edb.40.1623746165096; 
 Tue, 15 Jun 2021 01:36:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyuia3ZZuLKlhW1jA90agTPeTWJUE4THW+wLb67BqgyyKefSYmWxSa7tNuFPsdEX1gg4N8JLw==
X-Received: by 2002:a05:6402:177a:: with SMTP id
 da26mr22030399edb.40.1623746164865; 
 Tue, 15 Jun 2021 01:36:04 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id cx7sm11218545edb.65.2021.06.15.01.36.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 15 Jun 2021 01:36:04 -0700 (PDT)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20210604194840.14655-1-hdegoede@redhat.com>
 <YMhZiAFshz1xklUK@kroah.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <11c9eb33-d88e-6c0f-a7a5-fec3480ee789@redhat.com>
Date: Tue, 15 Jun 2021 10:36:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <YMhZiAFshz1xklUK@kroah.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 0/8] drm + usb-type-c: Add support for
 out-of-band hotplug notification (v4)
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
Cc: dri-devel@lists.freedesktop.org,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 platform-driver-x86@vger.kernel.org, linux-usb@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 6/15/21 9:40 AM, Greg Kroah-Hartman wrote:
> On Fri, Jun 04, 2021 at 09:48:32PM +0200, Hans de Goede wrote:
>> Here is v3 of my patchset making DP over Type-C work on devices where the
>> Type-C controller does not drive the HPD pin on the GPU, but instead
>> we need to forward HPD events from the Type-C controller to the DRM driver.
>>
>> Changes in v4:
>> - Rebase on top of latest drm-tip
>> - Add forward declaration for struct fwnode_handle to drm_crtc_internal.h
>>   (fixes warning reported by kernel test robot <lkp@intel.com>)
>> - Add Heikki's Reviewed-by to patch 7 & 8
>> - Add Heikki's Tested-by to the series
>>
>> Changes in v3:
>> - Base on top of latest drm-tip, which should fix the CI being unable to
>>   apply (and thus to test) the patches
>> - Make intel_acpi_assign_connector_fwnodes() take a ref on the fwnode
>>   it stores in connector->fwnode and have drm_connector_cleanup() put
>>   this reference
>> - Drop data argument from drm_connector_oob_hotplug_event()
>> - Make the Type-C DP altmode code only call drm_connector_oob_hotplug_event()
>>   when the HPD bit in the status vdo changes
>> - Drop the platform/x86/intel_cht_int33fe: Correct "displayport" fwnode
>>   reference patch, this will be merged independently through the pdx86 tree
>>
>> Changes in v2:
>> - Replace the bogus "drm/connector: Make the drm_sysfs connector->kdev
>>   device hold a reference to the connector" patch with:
>>   "drm/connector: Give connector sysfs devices there own device_type"
>>   the new patch is a dep for patch 2/9 see the patches
>>
>> - Stop using a class-dev-iter, instead at a global connector list
>>   to drm_connector.c and use that to find the connector by the fwnode,
>>   similar to how we already do this in drm_panel.c and drm_bridge.c
>>
>> - Make drm_connector_oob_hotplug_event() take a fwnode pointer as
>>   argument, rather then a drm_connector pointer and let it do the
>>   lookup itself. This allows making drm_connector_find_by_fwnode() a
>>   drm-internal function and avoids code outside the drm subsystem
>>   potentially holding on the a drm_connector reference for a longer
>>   period.
>>
>> This series not only touches drm subsys files but it also touches
>> drivers/usb/typec/altmodes/typec_displayport.c, that file usually
>> does not see a whole lot of changes. So I believe it would be best
>> to just merge the entire series through drm-misc, Assuming we can
>> get an ack from Greg for merging the typec_displayport.c changes
>> this way.
> 
> No objection from me, I've replied with reviewed-by for those USB
> patches now.

Great, thank you.

drm-devs, can I get an ack / reviewed-by for the rest of the series
so that I can push this to drm-misc-next ?

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
