Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE63042663E
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Oct 2021 10:52:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B01AE6E866;
	Fri,  8 Oct 2021 08:52:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F8646E866
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Oct 2021 08:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1633683156;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ixPfMuIL4aFwKbcBY0rHOnVPHcxJb+OU2o5YUy5UMfU=;
 b=IJDSQYLxK9cnuZBOqRooZEU4Srq9cqa3zk2FUiXCsFLy32d22GR8rHWx5eKodOqfS/8m+N
 kCBAXuXHPpVbu4xd7agt7/nX9OCuBXWKDyhAFldAtfr2iewY8omyIc9blo1zUTSn3/A12g
 2qAXGX4jArm4XO151BBscrjgVC0LXGc=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-519-E-vrqaAVOCGy2QBYJy07MA-1; Fri, 08 Oct 2021 04:52:35 -0400
X-MC-Unique: E-vrqaAVOCGy2QBYJy07MA-1
Received: by mail-ed1-f70.google.com with SMTP id
 u23-20020a50a417000000b003db23c7e5e2so8559896edb.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 08 Oct 2021 01:52:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ixPfMuIL4aFwKbcBY0rHOnVPHcxJb+OU2o5YUy5UMfU=;
 b=YfwonJ7TrKKb3+HkXwGI47XR86UaB1JyJk3HqsisPtcHdazjfYAbXXm9ITPeI7qJNN
 A1gk5Mgule7iKaOECYrsqtKMoae7wCMyc2IdG4jW/tq/OOOlrrajUF8vO7vFXHIs2EOW
 0QRLea76R1hq0CO46dtPPtXfA8L47vjfD4uD5gnkVeRfvE2OC7BracyCq2RM4T5Rd2ac
 TtOFQBa3sVyGqCTM7biLNfbcRrJWqAEo6vYyZDzX7HgTlf+/oZiu7fF8yOedjLBFQ7LX
 TrKdmL6zzmwmQVpgFO99aPQUw+bxKj14Gq3igIH8kkw4lX3AE5T4wsRz6ZdsE39ckwOz
 YrHQ==
X-Gm-Message-State: AOAM530YX+Im6v95yg3ru3lCOLPOQtWtEa4PTkahUmCvUdqRuHl/Bbtn
 6RJPhe/5yFQu6Fm+DodvQumzrEFzio+yew7Lc5kXEYmZOdYIotPgejn5O/9aYhwo7FmsDnDfQjU
 WspXp5X1jDOn98Qz2gPJGo40zyR89
X-Received: by 2002:a17:907:9908:: with SMTP id
 ka8mr2814606ejc.164.1633683153894; 
 Fri, 08 Oct 2021 01:52:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwHrU5dtdXI1UVaptX6VjfPguzM+7v3UzJx3CmGWdjfG1KpNCHWhS2YzBXhFjWBPoHF9yEo/w==
X-Received: by 2002:a17:907:9908:: with SMTP id
 ka8mr2814581ejc.164.1633683153674; 
 Fri, 08 Oct 2021 01:52:33 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id u16sm684667ejy.14.2021.10.08.01.52.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 08 Oct 2021 01:52:33 -0700 (PDT)
To: lindsey.stanpoor@gmail.com, intel-gfx@lists.freedesktop.org,
 linux-usb@vger.kernel.org
Cc: heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org,
 cnemo@tutanota.com
References: <20211006043257.23242-1-lindsey.stanpoor@gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <da805c7c-e5fb-74fc-4122-88f920fae533@redhat.com>
Date: Fri, 8 Oct 2021 10:52:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20211006043257.23242-1-lindsey.stanpoor@gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/1] usb: typec: altmodes/displayport:
 reorder dp_altmode_configured()
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

On 10/6/21 6:32 AM, lindsey.stanpoor@gmail.com wrote:
> From: Cameron Nemo <cnemo@tutanota.com>
> 
> A recent commit [1] introduced an unintended behavioral change by
> reordering certain function calls. The sysfs_notify call for
> pin_assignment should only be invoked when the dp_altmode_notify call
> returns 0, and in the dp->data.conf == 0 case.
> 
> [1] https://lore.kernel.org/r/20210817215201.795062-8-hdegoede@redhat.com
> 
> Signed-off-by: Cameron Nemo <cnemo@tutanota.com>

You are right that my commit changed the behavior I should have added
something about that to the commit message, *but* I believe
that the new behavior is correct and should be kept.

Even if the dp_altmode_notify() fails, then reading from
the pin_assignment sysfs file will still show the new pin-assignment,
so the contents of the sysfs file has changed and thus the notify is
the correct thing to do independent of the dp_altmode_notify() 
return value.

Likewise if we have selected a pin_assignment ourselves and the
user tries to change this by writing to the pin_assignment sysfs
file, then we may get an async (so not signalled as an error
on the sysfs write syscall) CMDT_RSP_NAK to the new pin_assignment
at which point we set dp->data.conf = 0; and then call
dp_altmode_configured() and in this case again the
sysfs file "contents" has changed so we should do a notify.

More-over doing a syfs-notify when nothing has changed is really
not the end of the world, it is not like we are going to do this
100s of times per second.

IOW I believe that the new behavior although different is
correct (and the new code is also a lot more straight forward).

So NACK from me for this change.

Question, does this patch fix an actual problem which you were
seeing, or did you just notice this while reviewing the change ?

Regards,

Hans




> ---
>  drivers/usb/typec/altmodes/displayport.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/typec/altmodes/displayport.c b/drivers/usb/typec/altmodes/displayport.c
> index c1d8c23baa39..a15ae78066e3 100644
> --- a/drivers/usb/typec/altmodes/displayport.c
> +++ b/drivers/usb/typec/altmodes/displayport.c
> @@ -154,10 +154,17 @@ static int dp_altmode_status_update(struct dp_altmode *dp)
>  
>  static int dp_altmode_configured(struct dp_altmode *dp)
>  {
> +	int ret;
> +
>  	sysfs_notify(&dp->alt->dev.kobj, "displayport", "configuration");
> +
> +	ret = dp_altmode_notify(dp);
> +	if (ret || !dp->data.conf)
> +		return ret;
> +
>  	sysfs_notify(&dp->alt->dev.kobj, "displayport", "pin_assignment");
>  
> -	return dp_altmode_notify(dp);
> +	return 0;
>  }
>  
>  static int dp_altmode_configure_vdm(struct dp_altmode *dp, u32 conf)
> 

