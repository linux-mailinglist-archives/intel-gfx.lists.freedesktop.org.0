Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FC93716B1
	for <lists+intel-gfx@lfdr.de>; Mon,  3 May 2021 16:35:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 813296E209;
	Mon,  3 May 2021 14:35:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 385816E1B3
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 May 2021 14:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1620052534;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=k5l9mji1oYztNVl+ToG36ApOd6oMuk+iglNseyqhqhM=;
 b=Ce+aS45lJzWrm+EDQV2lz3AqV/WSj7JxpQyRtJa3j6PClukJQ6STPnrX9wkNDiFGO5haxi
 H6RcK4GVcXvGgPlpNb8PQa6Do/9bxmRIE343FH9JguCPmG7o6QxxExZKbveb8A5so4UJh6
 /pMSdPUL7UvtCtC2TZjGqduhfsNu2mc=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-598-6x5hilxOMR60STj3MuT19w-1; Mon, 03 May 2021 10:35:32 -0400
X-MC-Unique: 6x5hilxOMR60STj3MuT19w-1
Received: by mail-ed1-f69.google.com with SMTP id
 c15-20020a056402100fb029038518e5afc5so4667540edu.18
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 May 2021 07:35:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=k5l9mji1oYztNVl+ToG36ApOd6oMuk+iglNseyqhqhM=;
 b=U1lws0A7cYEI+sTcbDraactcSiBX+dljnY3DI4nanT21TxZMhy548mqJb5frrqg/KY
 ih3tp6NvCqt0YpxgUUL6dF4F/2umVunNSrj0RBgNjcvjRuFUxgkhYkAnJ6yR3ErFi1At
 fu0TFgnNnaCKAfF5bv97PZtqPNQWQDI9PF7whS5AhxXjunLF6Q9eIAsZ7Ihl/jqOBMVW
 62/xwwt06pbxcZZ1AGf9aZqGW2KYhajwbq5YgdHQSEcSBV9AGKqX+Bd0geD9YTjsSQ1N
 2yCu5pdCNnAtTtHmwK562gF68ubCj2x2Pkguk1cnIpsiIv07hEtqvhyjKuALuvQ6llO+
 B1EA==
X-Gm-Message-State: AOAM5318KT6eul+51MJUuIhqI4T0wIkK3MA2kH4UhOdtXScfdDGSAIdR
 B+7u3niyd3KXdxYoZCWwyfCe/4rxS8OlKc3IHlnrZlbSun9oFPKUsgesxL0Yi+jOpp8BKPJ7S3k
 j+jnoTRcX3QsDv6aM38MMJ2QqXAK2
X-Received: by 2002:a17:906:6a93:: with SMTP id
 p19mr17291186ejr.319.1620052530821; 
 Mon, 03 May 2021 07:35:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzUvT+qkq3EqqF/+Zg6Vh+R8TnTUOqUDXXPQpBdiWawf3Ow/BHIM9//4R5/6uwXK5914Y8riw==
X-Received: by 2002:a17:906:6a93:: with SMTP id
 p19mr17291172ejr.319.1620052530649; 
 Mon, 03 May 2021 07:35:30 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id q25sm12499548edt.51.2021.05.03.07.35.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 03 May 2021 07:35:30 -0700 (PDT)
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Imre Deak <imre.deak@intel.com>
References: <20210428215257.500088-1-hdegoede@redhat.com>
 <20210428215257.500088-5-hdegoede@redhat.com>
 <YI+tlE35i+6F/WUO@kuha.fi.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <00e380b2-0376-0ddb-9b0e-342779b7fc06@redhat.com>
Date: Mon, 3 May 2021 16:35:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <YI+tlE35i+6F/WUO@kuha.fi.intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/9] drm/connector: Add support for
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

On 5/3/21 10:00 AM, Heikki Krogerus wrote:
> Hi Hans,
> 
> On Wed, Apr 28, 2021 at 11:52:52PM +0200, Hans de Goede wrote:
>> +/**
>> + * struct drm_connector_oob_hotplug_event_data: OOB hotplug event data
>> + *
>> + * Contains data about out-of-band hotplug events, signalled through
>> + * drm_connector_oob_hotplug_event().
>> + */
>> +struct drm_connector_oob_hotplug_event_data {
>> +	/**
>> +	 * @connected: New connected status for the connector.
>> +	 */
>> +	bool connected;
>> +	/**
>> +	 * @dp_lanes: Number of available displayport lanes, 0 if unknown.
>> +	 */
>> +	int dp_lanes;
>> +	/**
>> +	 * @orientation: Connector orientation.
>> +	 */
>> +	enum typec_orientation orientation;
>> +};
> 
> I don't think the orientation is relevant. It will always be "normal"
> from DP PoW after muxing, no?

That is what I thought to, but during the discussion of my previous attempt
at this one of the i915 devs mentioned that in some cases the muxes manage
to swap the lane order when the connector upside-down and at least the
Intel GPUs can correct for this on the GPU side, so they asked for this
info to be included.

> I'm also not sure those deatils are enough in the long run. Based on
> what I've understood from our graphics team guys, for example knowing
> if multi-function is preferred may be important in some cases.

The current data being passed is just intended as a starting point,
this is purely a kernel internal API so we can easily add more
data to the struct. As I mentioned in the cover-letter the current
oob_hotplug handler which the i915 patch adds to the i915 driver does
not actually do anything with the data.  ATM it is purely there to
demonstrate that the ability to pass relevant data is there now
(which was an issue with the previous attempt). I believe the current
code is fine as a PoC of "pass event data" once GPU drivers actually
start doing something with the data we can extend or outright replace
it without issues.

> +Imre.
> 
> All of that, and more, is already available in the Configuration VDO
> Status VDO that the we have negotiated with the DP partner. Both those
> VDOs are part of struct typec_displayport_data. I think we should
> simply supply that structure to the DRM code instead of picking those
> details out of it...

I'm not sure I like the idea of passing the raw VDO, but if the
DRM folks think that would be useful we can certainly add it.

Regards,

Hans


> 
>>  /**
>>   * struct drm_tv_connector_state - TV connector related states
>>   * @subconnector: selected subconnector
>> @@ -1110,6 +1132,15 @@ struct drm_connector_funcs {
>>  	 */
>>  	void (*atomic_print_state)(struct drm_printer *p,
>>  				   const struct drm_connector_state *state);
>> +
>> +	/**
>> +	 * @oob_hotplug_event:
>> +	 *
>> +	 * This will get called when a hotplug-event for a drm-connector
>> +	 * has been received from a source outside the display driver / device.
>> +	 */
>> +	void (*oob_hotplug_event)(struct drm_connector *connector,
>> +				  struct drm_connector_oob_hotplug_event_data *data);
> 
> So I would not try to generalise this like that. This callback should
> be USB Type-C DP altmode specific:
> 
> 	void (*oob_hotplug_event)(struct drm_connector *connector,
>                                   struct typec_displayport_data *data);
> 
> Or like this if the orientation can really be reversed after muxing:
> 
> 	void (*oob_hotplug_event)(struct drm_connector *connector,
> 				  struct typec_altmode *altmode,
>                                   struct typec_displayport_data *data);
> 
> You can now check the orientation separately with
> typec_altmode_get_orientation() if necessary.
> 
> 
> thanks,
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
