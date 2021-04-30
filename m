Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F1E36FBAE
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Apr 2021 15:45:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CFBA6F49B;
	Fri, 30 Apr 2021 13:45:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45D1A6E0AC
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Apr 2021 13:45:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1619790343;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ngr4LyEkdELa/6PdIZcv+wXD2znntuZQwvgVg8NJ51s=;
 b=O38SfeJ7RsOZZBNFUBNURfWBD6A9a1hG3Kgjoc91Ae8n2pxx5/MZrugdzziy6ATRcY5yAx
 8Jxo/1VTzCzItlD6n4MqNQlUFH0qqN77XbtlW2XtrYCkC/mmU5eQgkWowqlyiJE5NN7iFB
 EJc7sPmeD45tYT32BaBmTI5tKzmM8w4=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-486-7xeYLqF8O0uKEnNl8OHY_Q-1; Fri, 30 Apr 2021 09:45:36 -0400
X-MC-Unique: 7xeYLqF8O0uKEnNl8OHY_Q-1
Received: by mail-ed1-f69.google.com with SMTP id
 s20-20020a0564025214b029038752a2d8f3so11107616edd.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Apr 2021 06:45:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ngr4LyEkdELa/6PdIZcv+wXD2znntuZQwvgVg8NJ51s=;
 b=JjBCBD5Rxjr5LT3kyobpyBKws1Fr+X+YK92ydCAk+6w5EynIdiaG8De20xo/Hyqd0V
 jWY0OQ+Nm5ApdpRKs2ZJQepOOrtcYrfmVPkU8nSq0kWWDZG1Qyoa2svYTubhJ8B44hX1
 C1G4z0EhyYuScvEUXKAom1OMt/zFNhe38w3mKXwOBU+oHnxvEkpCG6y//sL/MyXn67N2
 4uGUyuhiwVkHj9rlEkNzujmvtUjjQRilxpIpqY48/EnhftL/MZ7clTv0B32KxQhDJymB
 F6fVVSXkFzgmFQgkQAzPN7N2LhHWCVBiojfzgI/3WLstcK8p1hG2lYBYkIBm4//SNVyK
 2a/A==
X-Gm-Message-State: AOAM531+8gu8DLos76ke4BpI2iLeO2QptI2VcNBcZZ9FZsHEWfjTo2FL
 Xn1+L6z20vDxea/Ni577hRoJTvE3c96UXiwi8RNlcXTa71/Ks28T0lgRXutmexClBJv8qYzCzgM
 t8SZHMrP4lHyGFMDjjRPqOio8b7pN
X-Received: by 2002:a05:6402:40d6:: with SMTP id
 z22mr6005355edb.275.1619790335111; 
 Fri, 30 Apr 2021 06:45:35 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyVgln2PsbGBWtD0Y9vGbxqHA4KEKia8ZfjelCngqnsAV0j0ddhk9OZLNm9FE8nL8viwO/OZw==
X-Received: by 2002:a05:6402:40d6:: with SMTP id
 z22mr6005318edb.275.1619790334881; 
 Fri, 30 Apr 2021 06:45:34 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id n10sm1933338ejg.124.2021.04.30.06.45.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 30 Apr 2021 06:45:34 -0700 (PDT)
To: Daniel Vetter <daniel@ffwll.ch>
References: <20210428215257.500088-1-hdegoede@redhat.com>
 <20210428215257.500088-2-hdegoede@redhat.com>
 <YIqbLDIeGXNSjSTS@phenom.ffwll.local> <YIqehmw+kG53LF3t@kroah.com>
 <YIqg59yageIUwiwy@phenom.ffwll.local>
 <4e78d188-f257-ad33-e703-bcbc54a30c31@redhat.com>
 <YIsEfAjFthAyHxUi@phenom.ffwll.local>
 <43ee221e-7151-c0c2-cc52-37b191778221@redhat.com>
 <CAKMK7uFf8n6QfRdSXeB6J+L7NPGbeEyJKhx1Vu7x8env=_7tkA@mail.gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <9c6d5361-c435-521e-d7d7-f8976927f9de@redhat.com>
Date: Fri, 30 Apr 2021 15:45:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CAKMK7uFf8n6QfRdSXeB6J+L7NPGbeEyJKhx1Vu7x8env=_7tkA@mail.gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/connector: Make the drm_sysfs
 connector->kdev device hold a reference to the connector
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
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 USB list <linux-usb@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

p.s.

On 4/30/21 1:38 PM, Daniel Vetter wrote:

Offtopic:

> I'm also not sure why we have to use the kdev stuff here. For other
> random objects we need to look up we're building that functionality on
> that object. It means you need to keep another list_head around for
> that lookup, but that's really not a big cost. E.g. drm_bridge/panel
> work like that.

So I took a peek at the bridge/panel code and that actually seems to
have an issue with removal vs lookup. It is not even just a race,
it seems a lookup does not take a reference and there is nothing
stopping a user from doing an unbind or rmmod causing the panel
to be removed while other code which got a pointer to the panel
through of_drm_find_panel() will not be prepared to deal with
that pointer all of a sudden no longer being valid.

Now this would be a case of the user shooting his-self in the
foot (where as connectors can actually dynamically disappear
under normal circumstances), but ideally we really should do
better here.

Is there a TODO list somewhere for issues like this ?  Or shall
I submit a patch adding a FIXME comment, or is this considered
not worth the trouble of fixing it?

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
