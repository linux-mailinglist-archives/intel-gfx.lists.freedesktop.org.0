Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F4A36E9F6
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 14:05:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2073C6EE6B;
	Thu, 29 Apr 2021 12:05:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA18C6EE64
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 12:04:59 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id h15so14412160wre.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 05:04:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=MiEGZ+NS79WfLSCC9MIwqhDMsalGqkYSHOP1/CwaZU4=;
 b=YgwMixYszQENkHqy9w2Jcs0yAfAy1kkME8DMPpQ5ZZLD193GRfpHBf4uqFL3SRq2Cy
 MM+bj/rtvHESAWxPWym3OBx8oRK+LwSF0/sJoHB5CqkFIFcySppu5xnLyQbDsdRqeY9C
 GNh3BbYzxbHMCioyzp9U4suZ3fcl/+bL0ydOE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=MiEGZ+NS79WfLSCC9MIwqhDMsalGqkYSHOP1/CwaZU4=;
 b=fS+XuwJ4GxVvMsCM9BBp+fY7BKjpt6n8mRuP1jH6x6iQy4vDwAaIbUYv3ohmPNrHxm
 B7HQ6Kv7UYDCdpIPbgJr/1xArEBAMwBDFn1V/e9QzXZZTx4Lb7tYB8HavMLy3IbAX14P
 DkXV9YheHBb2disiJM/ZcUnhU3aIay97H/hs1kIeYGZ2SMV9UvzScUoHOFgJ3Mw5MDu+
 Fe4s1d2Jtzk9Zkh0m7L4R6Y7c0TYWKlyMsgts0W5qKkYCX+CAR1UDGECOr01VJsUH+Ln
 63Z7e3oFG+pqMyRoqmWJp3kSx3tKhlBICUWkI465DigwhQ7nFQmSucUAGcu3aQ56/KoF
 RGRw==
X-Gm-Message-State: AOAM530VRoYGyTVgzxy8k855D6i6CyspyFEllOFibdHGruGXsbrNZ6c1
 aj2H1NRm2i+7XwJLdnQjRlmmEsDZ1OEshw==
X-Google-Smtp-Source: ABdhPJzmDVcXuCXiplPzF0O0arZ1mMffMpsXfHhp9ao117QhIvz6OE2+jM6MkrgthQaHAg5tIffCHw==
X-Received: by 2002:adf:d0c8:: with SMTP id z8mr43468889wrh.68.1619697898559; 
 Thu, 29 Apr 2021 05:04:58 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id e10sm4495558wrw.20.2021.04.29.05.04.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Apr 2021 05:04:57 -0700 (PDT)
Date: Thu, 29 Apr 2021 14:04:55 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <YIqg59yageIUwiwy@phenom.ffwll.local>
References: <20210428215257.500088-1-hdegoede@redhat.com>
 <20210428215257.500088-2-hdegoede@redhat.com>
 <YIqbLDIeGXNSjSTS@phenom.ffwll.local> <YIqehmw+kG53LF3t@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YIqehmw+kG53LF3t@kroah.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
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
Cc: dri-devel@lists.freedesktop.org,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, platform-driver-x86@vger.kernel.org,
 linux-usb@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 29, 2021 at 01:54:46PM +0200, Greg Kroah-Hartman wrote:
> On Thu, Apr 29, 2021 at 01:40:28PM +0200, Daniel Vetter wrote:
> > On Wed, Apr 28, 2021 at 11:52:49PM +0200, Hans de Goede wrote:
> > > Userspace could hold open a reference to the connector->kdev device,
> > > through e.g. holding a sysfs-atrtribute open after
> > > drm_sysfs_connector_remove() has been called. In this case the connector
> > > could be free-ed while the connector->kdev device's drvdata is still
> > > pointing to it.
> > > 
> > > Give drm_connector devices there own device type, which allows
> > > us to specify our own release function and make drm_sysfs_connector_add()
> > > take a reference on the connector object, and have the new release
> > > function put the reference when the device is released.
> > > 
> > > Giving drm_connector devices there own device type, will also allow
> > > checking if a device is a drm_connector device with a
> > > "if (device->type == &drm_sysfs_device_connector)" check.
> > > 
> > > Note that the setting of the name member of the device_type struct will
> > > cause udev events for drm_connector-s to now contain DEVTYPE=drm_connector
> > > as extra info. So this extends the uevent part of the userspace API.
> > > 
> > > Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> > 
> > Are you sure? I thought sysfs is supposed to flush out any pending
> > operations (they complete fast) and handle open fd internally?
> 
> Yes, it "should" :)

Thanks for confirming my vague memories :-)

Hans, pls drop this one.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
