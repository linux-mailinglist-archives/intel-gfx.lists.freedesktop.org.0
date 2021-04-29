Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A194D36E9D6
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 13:54:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F30E46EE4D;
	Thu, 29 Apr 2021 11:54:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 154CD6EE42;
 Thu, 29 Apr 2021 11:54:49 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id DD9976100C;
 Thu, 29 Apr 2021 11:54:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1619697288;
 bh=EFuIJ2kGdn+wTnQa+8XZmr6F/jtLE+EI8uAIIF5uiT4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rNp7vun3lmDpJmVvZcBq7yxtklzexyKbWAMkm7XDgGoE4/mGw4OHLJNJgU0J/CfX7
 hlQ2V9WudP37kQLy9r6FsuocGapSgVp/pdm8zFrFxq74741n1L2o00gmNvmvKfyDXy
 nRw0lsXft2z+GtQ994efP6bEK7GjFA8mWjmQD2fQ=
Date: Thu, 29 Apr 2021 13:54:46 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Daniel Vetter <daniel@ffwll.ch>
Message-ID: <YIqehmw+kG53LF3t@kroah.com>
References: <20210428215257.500088-1-hdegoede@redhat.com>
 <20210428215257.500088-2-hdegoede@redhat.com>
 <YIqbLDIeGXNSjSTS@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YIqbLDIeGXNSjSTS@phenom.ffwll.local>
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
 dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 platform-driver-x86@vger.kernel.org, linux-usb@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 29, 2021 at 01:40:28PM +0200, Daniel Vetter wrote:
> On Wed, Apr 28, 2021 at 11:52:49PM +0200, Hans de Goede wrote:
> > Userspace could hold open a reference to the connector->kdev device,
> > through e.g. holding a sysfs-atrtribute open after
> > drm_sysfs_connector_remove() has been called. In this case the connector
> > could be free-ed while the connector->kdev device's drvdata is still
> > pointing to it.
> > 
> > Give drm_connector devices there own device type, which allows
> > us to specify our own release function and make drm_sysfs_connector_add()
> > take a reference on the connector object, and have the new release
> > function put the reference when the device is released.
> > 
> > Giving drm_connector devices there own device type, will also allow
> > checking if a device is a drm_connector device with a
> > "if (device->type == &drm_sysfs_device_connector)" check.
> > 
> > Note that the setting of the name member of the device_type struct will
> > cause udev events for drm_connector-s to now contain DEVTYPE=drm_connector
> > as extra info. So this extends the uevent part of the userspace API.
> > 
> > Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> 
> Are you sure? I thought sysfs is supposed to flush out any pending
> operations (they complete fast) and handle open fd internally?

Yes, it "should" :)

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
