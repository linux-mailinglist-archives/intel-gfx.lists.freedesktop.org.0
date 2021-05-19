Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07EFA388F41
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 15:37:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54D026EDB3;
	Wed, 19 May 2021 13:37:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E4396EDB3
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 May 2021 13:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1621431447;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bU4pryl0+5U5KV31mW2OweQfTQ6FVvGmzl3RdTyAV38=;
 b=EMrNeZLxc1QI1CtG/j+3AQR4VhE1xcRFAw7YN6Dyfnq+5MjdjG7s6ynzrAhNl+6j+c2CKn
 h1Q+cWcHkjS6tYyvhE2Pa7PtGLljixmI99efF/mqPjMksaHsWh9KSmcPn6gvKDhxYkxj+Y
 f3xco9nx9Iezpu1nTfNz+Ow8IgFObdY=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-326-1H5JN6-RNASVVIbkcbj5zQ-1; Wed, 19 May 2021 09:37:25 -0400
X-MC-Unique: 1H5JN6-RNASVVIbkcbj5zQ-1
Received: by mail-ed1-f71.google.com with SMTP id
 x3-20020a50ba830000b029038caed0dd2eso7722374ede.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 May 2021 06:37:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bU4pryl0+5U5KV31mW2OweQfTQ6FVvGmzl3RdTyAV38=;
 b=tn//aSmvegobjHBxxZQJfQ30/McR86xj073hZl7AtMl1gXWZxjUEjaE9JWo7xkfwaa
 oW6RIBg6vZsfkMbLcNwwYUvELod+jPC0019YNs15homLVFtczmJcjl2Ni68UyDsTfV8s
 aHS/vy6usUH0QA/XslG15MhKyipoPq9ktNWrth5ZH61m9X8PJOKLzRcEKEk21EbLgZyc
 H4OK3o9j0uf1x+VI0qPQJ8EAyv0YqCgXWAruswshTfpZRp/yo5Hh1JY7xEUBUX6T9CwO
 tXP9REF9D5iC2vLUYK/LENPjNeHrJravLPmpg3BTRjqs2XRAovOKEZyWJr4I9lIjzDNu
 Lm1Q==
X-Gm-Message-State: AOAM530UpJEUZFb5UEBMrxA3Fu9LwP+RRwOZhvbC193tYvCjdF9YVzZO
 dR1NCYrMqS/vdbdcnx1q46rs6Ub3/b7eGF4sRm+J4DX3CVA0rH455GPJthSfzkFBfjSj+u+oVQe
 M8shP1XC4XqzG+fx4jec3caZzKf6s
X-Received: by 2002:a05:6402:3098:: with SMTP id
 de24mr14306452edb.339.1621431444237; 
 Wed, 19 May 2021 06:37:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxtmP5ppUfGnIYTS3emu23ErVRxU0Y2zdN/m68QRjcWJURyvbcDG+r+AD2UiWx7vPUAM3F1gg==
X-Received: by 2002:a05:6402:3098:: with SMTP id
 de24mr14306432edb.339.1621431444058; 
 Wed, 19 May 2021 06:37:24 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id a7sm4664820edr.15.2021.05.19.06.37.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 May 2021 06:37:23 -0700 (PDT)
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
References: <20210503154647.142551-1-hdegoede@redhat.com>
 <20210503154647.142551-10-hdegoede@redhat.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <2d02c9ba-1385-41cf-6150-ca8ed5e835ba@redhat.com>
Date: Wed, 19 May 2021 15:37:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210503154647.142551-10-hdegoede@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 9/9] platform/x86/intel_cht_int33fe: Correct
 "displayport" fwnode reference
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>, linux-usb@vger.kernel.org,
 dri-devel@lists.freedesktop.org, platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 5/3/21 5:46 PM, Hans de Goede wrote:
> The Type-C connector on these devices is connected to DP-2 not DP-1,
> so the reference must be to the DD04 child-node of the GPU, rather
> then the DD02 child-node.
> 
> Signed-off-by: Hans de Goede <hdegoede@redhat.com>

Since this is pretty much independent from the rest of the series,
I'll take this upstream through the pdx86 tree.

I've added this to my review-hans branch now, and it will get added
to for-next from there.

Regards,

Hans



> ---
>  drivers/platform/x86/intel_cht_int33fe_typec.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/platform/x86/intel_cht_int33fe_typec.c b/drivers/platform/x86/intel_cht_int33fe_typec.c
> index b61bad9cc8d2..d59544167430 100644
> --- a/drivers/platform/x86/intel_cht_int33fe_typec.c
> +++ b/drivers/platform/x86/intel_cht_int33fe_typec.c
> @@ -168,8 +168,8 @@ static int cht_int33fe_setup_dp(struct cht_int33fe_data *data)
>  		return -ENODEV;
>  	}
>  
> -	/* Then the DP child device node */
> -	data->dp = device_get_named_child_node(&pdev->dev, "DD02");
> +	/* Then the DP-2 child device node */
> +	data->dp = device_get_named_child_node(&pdev->dev, "DD04");
>  	pci_dev_put(pdev);
>  	if (!data->dp)
>  		return -ENODEV;
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
