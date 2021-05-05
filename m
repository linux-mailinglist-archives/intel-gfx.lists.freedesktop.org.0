Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6053738B4
	for <lists+intel-gfx@lfdr.de>; Wed,  5 May 2021 12:42:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19E5989F75;
	Wed,  5 May 2021 10:42:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91DE789F75
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 May 2021 10:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1620211335;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mTN0y4oCcFWbB08r7lkZ4UjVsFr6S/2p9fg9DPkTRUA=;
 b=f7ieV3PsBlgkdaZUZkq3M2w9iSPaJpnjCUrT/Jr/+Roxr7P7P1gQPugd/yIbb0P4zgNYOO
 lzNTKPfpg8nFNe+Q70WpQfIxR0FncsRXOEb5eNi+eaCzjKajluhVYLpcLQlCEuxQzeLX+d
 XQKHTIoLbWoyIDPoj7HU/pF7oZ1C8uY=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-583-dJPK1g_6M26I1OI3FKDlDQ-1; Wed, 05 May 2021 06:42:14 -0400
X-MC-Unique: dJPK1g_6M26I1OI3FKDlDQ-1
Received: by mail-ej1-f71.google.com with SMTP id
 w23-20020a1709061857b029039ea04b02fdso284065eje.22
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 May 2021 03:42:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mTN0y4oCcFWbB08r7lkZ4UjVsFr6S/2p9fg9DPkTRUA=;
 b=aCpLmfkgvr5cWO1+JzoR8mAscE2O+EwxXf79V6WI0GmeQd2GI80dBnj/hFZTLLqmYx
 ERy14oHRc0Gl6mEsaUzxLika4+6X0uJ4pO5WgIEA3nbMCNCTG6pCbQd7zUEgqIGkHcNf
 MiU+EbAvuI3YY195noasaagl6A/nIChKD6LG4DDQjmrzdWYrJEebSqg8UvpZxrEVrn/u
 Vjzu+CRJQyjMN+Fjqi0Fwhqp1VqP6cmgDj5zFpKeJ+TPtZ1j4TjkVnKCchiU0OgB9cMH
 5ALAyuv2V0oxLZrWqXuu7CqBTRZX/nUsMx4dMbN1XHkAbDgKu9vtlhYW2w8i/3OK5bVu
 MAWw==
X-Gm-Message-State: AOAM531Sw396GNnaOi3GfAjYQd/RmkyR/7mVoLSyHM0qu+/18NE8uZjk
 TBanT9ejirOiCRXZm7O+6A3D+ENWRVn0ts+dara7Ls4NIQGSOY/jWqoIwv5kmHBsNqgx4qQmokd
 hEZyBFXALkzovU/nzyYpCjFJo02lD
X-Received: by 2002:a17:906:abcc:: with SMTP id
 kq12mr10305572ejb.97.1620211332825; 
 Wed, 05 May 2021 03:42:12 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwT5NzeVG+LfxMtGXKXQs9mkRuGS75LOBk4BPyRER/VEFGmrGVCJeDof9BEBpxs3KV/LWSyYw==
X-Received: by 2002:a17:906:abcc:: with SMTP id
 kq12mr10305549ejb.97.1620211332659; 
 Wed, 05 May 2021 03:42:12 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id d15sm2632188ejj.42.2021.05.05.03.42.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 05 May 2021 03:42:12 -0700 (PDT)
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>
References: <20210503154647.142551-1-hdegoede@redhat.com>
 <20210503154647.142551-5-hdegoede@redhat.com>
 <YJFj5Vk7xOcj+ISZ@kuha.fi.intel.com>
 <326621fe-cc4e-ad77-c87e-922a655bfbc8@redhat.com>
 <YJJqeVzS8do3F8wx@kuha.fi.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <a56b7d60-39a0-8520-8b38-82c0789e4442@redhat.com>
Date: Wed, 5 May 2021 12:42:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <YJJqeVzS8do3F8wx@kuha.fi.intel.com>
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
 Maxime Ripard <mripard@kernel.org>, platform-driver-x86@vger.kernel.org,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 5/5/21 11:50 AM, Heikki Krogerus wrote:
> On Tue, May 04, 2021 at 05:35:49PM +0200, Hans de Goede wrote:
>> Hi,
>>
>> On 5/4/21 5:10 PM, Heikki Krogerus wrote:
>>>> +/**
>>>> + * drm_connector_oob_hotplug_event - Report out-of-band hotplug event to connector
>>>> + * @connector: connector to report the event on
>>>> + * @data: data related to the event
>>>> + *
>>>> + * On some hardware a hotplug event notification may come from outside the display
>>>> + * driver / device. An example of this is some USB Type-C setups where the hardware
>>>> + * muxes the DisplayPort data and aux-lines but does not pass the altmode HPD
>>>> + * status bit to the GPU's DP HPD pin.
>>>> + *
>>>> + * This function can be used to report these out-of-band events after obtaining
>>>> + * a drm_connector reference through calling drm_connector_find_by_fwnode().
>>>> + */
>>>> +void drm_connector_oob_hotplug_event(struct fwnode_handle *connector_fwnode,
>>>> +				     struct drm_connector_oob_hotplug_event_data *data)
>>>> +{
>>>> +	struct drm_connector *connector;
>>>> +
>>>> +	connector = drm_connector_find_by_fwnode(connector_fwnode);
>>>> +	if (IS_ERR(connector))
>>>> +		return;
>>>> +
>>>> +	if (connector->funcs->oob_hotplug_event)
>>>> +		connector->funcs->oob_hotplug_event(connector, data);
>>>> +
>>>> +	drm_connector_put(connector);
>>>> +}
>>>> +EXPORT_SYMBOL(drm_connector_oob_hotplug_event);
>>>
>>> So it does looks like the "data" parameter is not needed at all:
>>
>> Well Imre did indicate that having the number of lanes is useful, so
>> for the next version I'll drop the orientation but I plan to keep
>> the number of lanes if that is ok with you.
>>
>> Not having passing along this info was one of the reasons why my
>> previous attempt at this was nacked, so dropping it all together
>> feels wrong.
> 
> If you need to pass any information to the function, then you need to
> pass all the information that we have. Don't start with abstraction.
> First create a dedicated API, and then, only if we really have another
> user for it, we can add an abstraction layer that both users can use.
> All cases are going to be different. We don't know how the abstraction
> / generalisation should look like before we have at least two real
> users (ideally more than two, actually). Right now we can not even say
> for sure that generalising the API is even possible.
> 
> I would not make a huge deal out of this unless I wasn't myself being
> told by guys like Greg KH in the past to drop my attempts to
> "generalize" things from the beginning when I only had a single user.
> By doing so you'll not only force all ends, the source of the data
> (the typec drivers in this case) as well as the consumer (i915), to be
> always changed together, it will also confuse things. We are not
> always going to be able to tell the lane count for example like we can
> with USB Type-C, so i915 can't really rely on that information.
> 
> Right now we also don't know what exact details i915 (or what ever GPU
> driver) needs. We can only say for sure that some details are going to
> be needed. Trying to guess and cherry-pick the details now does not
> makes sense because of that reason too.
> 
> So just make this API USB Type-C DP Alt Mode specific API first, and
> supply it everything we have.

Hmm, ok I'll just drop the data argument all together for now (as you
already suggested); and then we can see what is best once an actual user
for the info shows up.

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
