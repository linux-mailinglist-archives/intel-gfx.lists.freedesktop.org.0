Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D14372D04
	for <lists+intel-gfx@lfdr.de>; Tue,  4 May 2021 17:34:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9D436EB1C;
	Tue,  4 May 2021 15:34:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03BC96EB23
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 May 2021 15:34:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1620142456;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yTR7KxNHedPcWlig0HG3YpWXMEHessQmv89zJz6Bk7k=;
 b=LoODFldtXygSkck+G2np7dyHRrScyE4iv1sbQpmG3wZ83MQAvH/C/myVdvvOH2j30vPd1g
 HOxed6Oc8EeNUf9qjkYs2wOlE+1lwWzgY8xwxuxLXADI0Ctq3x6LazjdLvA1qpECKca6Hi
 BPzUjdl0cLlzC3PIkgqAgKv0piEnSio=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-232-VmfcdHclMjq8BohRldso9A-1; Tue, 04 May 2021 11:34:14 -0400
X-MC-Unique: VmfcdHclMjq8BohRldso9A-1
Received: by mail-ej1-f71.google.com with SMTP id
 nd10-20020a170907628ab02903a324b229bfso3292237ejc.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 May 2021 08:34:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yTR7KxNHedPcWlig0HG3YpWXMEHessQmv89zJz6Bk7k=;
 b=lR690P3aJGqERPKXVsjFU8L5sDon7kbslt9w7n2dekdKlym8HEJQsfw8CsPus6TUKp
 8HWUnGBLx0V3ckOr9yZo94UzTm4LS8nL4YEGJ9cxMN3zT+mpD6ByV5EOT3Paenhy4PZD
 Cj1pgaJcOwI9BoKhdI1Yg81WAdLBCzoyTPSF+OFYG3vp2GSAqepJvAbpxiHoQfq+CLS2
 LdD4Lv+WfhOdGv4wj7C1ky4m2KDiw7y3j+kXnrx+A/wWufkrRy0BxJjdcIKIR5hEpwOL
 DRSNtsrgN9vXZuf4q4FMP2y3j2sfEFRKp9AxjVPdNG362ugLBRxh3PWdt0h+w/8a7+t4
 jenw==
X-Gm-Message-State: AOAM531nseepnPpY5HzjmsbIz4d03WGXriy2T1i7ibLg6MvyvFYQKrYg
 /6PQBJx20Pk2RML+cj5h3dSH5k1M+079sKQxi2kcUtBVIMDsfhYealKYmbrxlQyfq/6oWDD8AGt
 dJypkHKJ2rjPkskEPq85fFKhnTDxF
X-Received: by 2002:a17:906:5495:: with SMTP id
 r21mr22710109ejo.471.1620142453388; 
 Tue, 04 May 2021 08:34:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx/9ENOolVDsOP9e1/qJjV8sFUtPE9yGpoQtUWrlmSggZGp55BI4Pp+2sNfMIGO+z3VLrCpDQ==
X-Received: by 2002:a17:906:5495:: with SMTP id
 r21mr22710085ejo.471.1620142453131; 
 Tue, 04 May 2021 08:34:13 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id f19sm14604035edu.12.2021.05.04.08.34.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 04 May 2021 08:34:12 -0700 (PDT)
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>
References: <20210428215257.500088-1-hdegoede@redhat.com>
 <20210428215257.500088-5-hdegoede@redhat.com>
 <YI+tlE35i+6F/WUO@kuha.fi.intel.com>
 <00e380b2-0376-0ddb-9b0e-342779b7fc06@redhat.com>
 <YJFfuF3UGP0TZrVw@kuha.fi.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <077edd03-c24f-01ac-18da-5b6fca8ce7c0@redhat.com>
Date: Tue, 4 May 2021 17:34:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <YJFfuF3UGP0TZrVw@kuha.fi.intel.com>
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
 Maxime Ripard <mripard@kernel.org>, platform-driver-x86@vger.kernel.org,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 5/4/21 4:52 PM, Heikki Krogerus wrote:
> On Mon, May 03, 2021 at 04:35:29PM +0200, Hans de Goede wrote:
>> Hi,
>>
>> On 5/3/21 10:00 AM, Heikki Krogerus wrote:
>>> Hi Hans,
>>>
>>> On Wed, Apr 28, 2021 at 11:52:52PM +0200, Hans de Goede wrote:
>>>> +/**
>>>> + * struct drm_connector_oob_hotplug_event_data: OOB hotplug event data
>>>> + *
>>>> + * Contains data about out-of-band hotplug events, signalled through
>>>> + * drm_connector_oob_hotplug_event().
>>>> + */
>>>> +struct drm_connector_oob_hotplug_event_data {
>>>> +	/**
>>>> +	 * @connected: New connected status for the connector.
>>>> +	 */
>>>> +	bool connected;
>>>> +	/**
>>>> +	 * @dp_lanes: Number of available displayport lanes, 0 if unknown.
>>>> +	 */
>>>> +	int dp_lanes;
>>>> +	/**
>>>> +	 * @orientation: Connector orientation.
>>>> +	 */
>>>> +	enum typec_orientation orientation;
>>>> +};
>>>
>>> I don't think the orientation is relevant. It will always be "normal"
>>> from DP PoW after muxing, no?
>>
>> That is what I thought to, but during the discussion of my previous attempt
>> at this one of the i915 devs mentioned that in some cases the muxes manage
>> to swap the lane order when the connector upside-down and at least the
>> Intel GPUs can correct for this on the GPU side, so they asked for this
>> info to be included.
>>
>>> I'm also not sure those deatils are enough in the long run. Based on
>>> what I've understood from our graphics team guys, for example knowing
>>> if multi-function is preferred may be important in some cases.
>>
>> The current data being passed is just intended as a starting point,
>> this is purely a kernel internal API so we can easily add more
>> data to the struct. As I mentioned in the cover-letter the current
>> oob_hotplug handler which the i915 patch adds to the i915 driver does
>> not actually do anything with the data.  ATM it is purely there to
>> demonstrate that the ability to pass relevant data is there now
>> (which was an issue with the previous attempt). I believe the current
>> code is fine as a PoC of "pass event data" once GPU drivers actually
>> start doing something with the data we can extend or outright replace
>> it without issues.
> 
> Ah, if there is nothing using that information yet, then just don't
> pass it at all for now. As you said, it's kernel internal API, we can
> change it later if needed.
> 
>>> All of that, and more, is already available in the Configuration VDO
>>> Status VDO that the we have negotiated with the DP partner. Both those
>>> VDOs are part of struct typec_displayport_data. I think we should
>>> simply supply that structure to the DRM code instead of picking those
>>> details out of it...
>>
>> I'm not sure I like the idea of passing the raw VDO, but if the
>> DRM folks think that would be useful we can certainly add it.
> 
> Why are you against passing all the data that we have? What is the
> benefit in picking only certain details out of an object that has a
> standard format, and constructing a customised object for those
> details instead?

The VDO is Type-C specific and the drm_connector_oob_hotplug_event()
is intended to be a generic API.

There are other OOB event sources, e.g. the drivers/apci/acpi_video.c
code receives hotplug events for connectors on powered-down GPUs
on dual/hybrid GPU laptops. ATM the GPU drivers register an ACPI
notifier to catch these; and there are no immediate plans to change
this, but this does illustrate how OOB hotplug notification is not
just a Type-C thing, where as the VDO and its format very much
are Type-C things.

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
