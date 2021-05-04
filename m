Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7768E372D14
	for <lists+intel-gfx@lfdr.de>; Tue,  4 May 2021 17:35:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD2486EB1C;
	Tue,  4 May 2021 15:35:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F2996EB1C
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 May 2021 15:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1620142554;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FjANuhmunmxl1tjd4moAyPGINXbx5GlWhcPk5Awa2JU=;
 b=J3cm8yJMBhCYCRRMruAKc4Pyo/MeksX/PT2NysDL8jTzxGQ9GkKWvuSeSCHiN6tSrEvbE1
 YNumQDDvUc/pdyuczhZe5iyB4VQT8nmAdQEttEPPeLFtXwYZwvTPxcEB6prZRqygUj3BXY
 ccAeRRom/ifU10SpSLFtSUW09l02o0U=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-519-rbttNzXFNLavlyBZGUf6dA-1; Tue, 04 May 2021 11:35:53 -0400
X-MC-Unique: rbttNzXFNLavlyBZGUf6dA-1
Received: by mail-ed1-f71.google.com with SMTP id
 g19-20020a0564021813b029038811907178so6579154edy.14
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 May 2021 08:35:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=FjANuhmunmxl1tjd4moAyPGINXbx5GlWhcPk5Awa2JU=;
 b=lMSO1wUlEx1ebeHgFx3nKTUad6ikxbR1IP9SN5vcw5dK9YmkY2INH92P7H0UBa8iOx
 dDSWvGoAlvTKj8G42GJnBQOFNHc/md9oe/p2j/GeO3QXqZEhdjbR+MB9c89n0CeclAmJ
 i09Oh8GsZmVtkxrAjJFZWD80hmWbAvUBh6DGtIlQU2fMs2ylk3QgMhdZ5vVbi9xSdZaG
 /eAkoMc7MzhYkjP5tD3NVyNuJwDEYw/0vOh/2npFs5kMjA25VcPdglP9zYab4z0AHIYL
 frLGTkjSPR5uJisa+IM7Q5y6ZEEyxGs1eYledbnEOV159KYV0O5ye1oG+x+kBt/cO0e7
 95/w==
X-Gm-Message-State: AOAM533a6if9i84EGZMJh0XkuLxt/1iqM4tX6qLnNIG0rt63gvxHFs45
 IuKiPRUu2tLVZ/ocUKduTBwSR/CBqFmpqaHyuQy57/nUga/4ku1x+x+aTbeieNsMYFQaernXUNv
 Jg6zypNal8hkDCBIKPL+413Cb1uSm
X-Received: by 2002:a17:906:cd27:: with SMTP id
 oz39mr18874307ejb.129.1620142550774; 
 Tue, 04 May 2021 08:35:50 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxmyw0dujywRY0BkQgCLf9VxiL7liqXtJ0bEMhZiU1xqc+xgw8QvX8u6muUU7TbNtZxdprzkg==
X-Received: by 2002:a17:906:cd27:: with SMTP id
 oz39mr18874288ejb.129.1620142550583; 
 Tue, 04 May 2021 08:35:50 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id d18sm1584825eja.71.2021.05.04.08.35.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 04 May 2021 08:35:50 -0700 (PDT)
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Imre Deak <imre.deak@intel.com>
References: <20210503154647.142551-1-hdegoede@redhat.com>
 <20210503154647.142551-5-hdegoede@redhat.com>
 <YJFj5Vk7xOcj+ISZ@kuha.fi.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <326621fe-cc4e-ad77-c87e-922a655bfbc8@redhat.com>
Date: Tue, 4 May 2021 17:35:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <YJFj5Vk7xOcj+ISZ@kuha.fi.intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/9] drm/connector: Add support for
 out-of-band hotplug notification (v2)
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
Cc: dri-devel@lists.freedesktop.org, linux-usb@vger.kernel.org,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 platform-driver-x86@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 5/4/21 5:10 PM, Heikki Krogerus wrote:
>> +/**
>> + * drm_connector_oob_hotplug_event - Report out-of-band hotplug event to connector
>> + * @connector: connector to report the event on
>> + * @data: data related to the event
>> + *
>> + * On some hardware a hotplug event notification may come from outside the display
>> + * driver / device. An example of this is some USB Type-C setups where the hardware
>> + * muxes the DisplayPort data and aux-lines but does not pass the altmode HPD
>> + * status bit to the GPU's DP HPD pin.
>> + *
>> + * This function can be used to report these out-of-band events after obtaining
>> + * a drm_connector reference through calling drm_connector_find_by_fwnode().
>> + */
>> +void drm_connector_oob_hotplug_event(struct fwnode_handle *connector_fwnode,
>> +				     struct drm_connector_oob_hotplug_event_data *data)
>> +{
>> +	struct drm_connector *connector;
>> +
>> +	connector = drm_connector_find_by_fwnode(connector_fwnode);
>> +	if (IS_ERR(connector))
>> +		return;
>> +
>> +	if (connector->funcs->oob_hotplug_event)
>> +		connector->funcs->oob_hotplug_event(connector, data);
>> +
>> +	drm_connector_put(connector);
>> +}
>> +EXPORT_SYMBOL(drm_connector_oob_hotplug_event);
> 
> So it does looks like the "data" parameter is not needed at all:

Well Imre did indicate that having the number of lanes is useful, so
for the next version I'll drop the orientation but I plan to keep
the number of lanes if that is ok with you.

Not having passing along this info was one of the reasons why my
previous attempt at this was nacked, so dropping it all together
feels wrong.

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
