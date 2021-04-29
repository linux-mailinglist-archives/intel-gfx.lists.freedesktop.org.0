Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C8836F022
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 21:09:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 980D96F492;
	Thu, 29 Apr 2021 19:09:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 463A66F492
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 19:09:52 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id x5so17730213wrv.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 12:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=1dmo5Wmh/ugIBygOrQPFARR/Rc5riBKotg0rKsNd/fk=;
 b=PPtwmHEckRIBUH8hQOzBxajX3TdRoTA+lpU9blquQ+gpggdOqsBiyeO6vAuNR39SWT
 MUpTHvhvJz3qHnwbNoCSFLBkB6Cn3faK3Ct6UdCPmH4S7Hx5MA2PPBuAU9r3hUY1dEeA
 lkpoT+R6uCrjzxEM95uLBoygM7AlIq0XZx4oI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1dmo5Wmh/ugIBygOrQPFARR/Rc5riBKotg0rKsNd/fk=;
 b=nyji1VQywv1fgjKfYDSNuiNbTeEeMC+SKp2jyVsRfLQRMQX9YtTSsx30dTFbBAFJ7o
 tBzNH1xydjsuV2yiRJQWgGEgZM9RR6Q6DOmOITccByRVaaM+pyh259ztZCx4Qv4cyxDs
 hACyZh4yv7VqEeF5WN0ikAeh/WWb/HV3stF06rrwdWl2EGF7QkzsTvDRTdXWIOoLyJ5Y
 f7IgXi1IDU/QextWjItT03a1R2OzWtDajXJ9gzDEl2ISfdR/8wYANuFtwT7376Jj/1Yi
 PhRRNE0DpUm9koMV4EhWKMvK+I7dYSBEhikjKnyAX/Tx5ImHH4tV7uzmtJ6K/CMzKPpl
 PtcQ==
X-Gm-Message-State: AOAM530+NYa7qzoUD6XFEr1YSup17HULYic4AKqC4g/vuWdvqfSLz3tE
 falHPwuRTGO+he1gVGlNiFZ0Lg==
X-Google-Smtp-Source: ABdhPJyY4KyyQAlwKgbmUY3ebe0VTq4Ebh9Ea/4USdywIkju0V7arqiGrMXzluPAlCUiCDuzrhydlQ==
X-Received: by 2002:adf:f192:: with SMTP id h18mr1447610wro.270.1619723391031; 
 Thu, 29 Apr 2021 12:09:51 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p14sm6320337wrx.88.2021.04.29.12.09.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Apr 2021 12:09:50 -0700 (PDT)
Date: Thu, 29 Apr 2021 21:09:48 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <YIsEfAjFthAyHxUi@phenom.ffwll.local>
References: <20210428215257.500088-1-hdegoede@redhat.com>
 <20210428215257.500088-2-hdegoede@redhat.com>
 <YIqbLDIeGXNSjSTS@phenom.ffwll.local> <YIqehmw+kG53LF3t@kroah.com>
 <YIqg59yageIUwiwy@phenom.ffwll.local>
 <4e78d188-f257-ad33-e703-bcbc54a30c31@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4e78d188-f257-ad33-e703-bcbc54a30c31@redhat.com>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, platform-driver-x86@vger.kernel.org,
 linux-usb@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 29, 2021 at 02:33:17PM +0200, Hans de Goede wrote:
> Hi,
> 
> On 4/29/21 2:04 PM, Daniel Vetter wrote:
> > On Thu, Apr 29, 2021 at 01:54:46PM +0200, Greg Kroah-Hartman wrote:
> >> On Thu, Apr 29, 2021 at 01:40:28PM +0200, Daniel Vetter wrote:
> >>> On Wed, Apr 28, 2021 at 11:52:49PM +0200, Hans de Goede wrote:
> >>>> Userspace could hold open a reference to the connector->kdev device,
> >>>> through e.g. holding a sysfs-atrtribute open after
> >>>> drm_sysfs_connector_remove() has been called. In this case the connector
> >>>> could be free-ed while the connector->kdev device's drvdata is still
> >>>> pointing to it.
> >>>>
> >>>> Give drm_connector devices there own device type, which allows
> >>>> us to specify our own release function and make drm_sysfs_connector_add()
> >>>> take a reference on the connector object, and have the new release
> >>>> function put the reference when the device is released.
> >>>>
> >>>> Giving drm_connector devices there own device type, will also allow
> >>>> checking if a device is a drm_connector device with a
> >>>> "if (device->type == &drm_sysfs_device_connector)" check.
> >>>>
> >>>> Note that the setting of the name member of the device_type struct will
> >>>> cause udev events for drm_connector-s to now contain DEVTYPE=drm_connector
> >>>> as extra info. So this extends the uevent part of the userspace API.
> >>>>
> >>>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> >>>
> >>> Are you sure? I thought sysfs is supposed to flush out any pending
> >>> operations (they complete fast) and handle open fd internally?
> >>
> >> Yes, it "should" :)
> > 
> > Thanks for confirming my vague memories :-)
> > 
> > Hans, pls drop this one.
> 
> Please see my earlier reply to your review of this patch, it is
> still needed but for a different reason:
> 
> """
> We still need this change though to make sure that the 
> "drm/connector: Add drm_connector_find_by_fwnode() function"
> does not end up following a dangling drvdat pointer from one
> if the drm_connector kdev-s.
> 
> The class_dev_iter_init() in drm_connector_find_by_fwnode() gets
> a reference on all devices and between getting that reference
> and it calling drm_connector_get() - drm_connector_unregister()
> may run and drop the possibly last reference to the
> drm_connector object, freeing it and leaving the kdev's
> drvdata as a dangling pointer.
> """
> 
> This is actually why I added it initially, and while adding it
> I came up with this wrong theory of why it was necessary independently
> of the drm_connector_find_by_fwnode() addition, sorry about that.

Generally that's handled by a kref_get_unless_zero under the protection of
the lock which protects the weak reference. Which I think is the right
model here (at a glance at least) since this is a lookup function.

Lookup tables holding full references tends to lead to all kinds of bad
side effects.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
