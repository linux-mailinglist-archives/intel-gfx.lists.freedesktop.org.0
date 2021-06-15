Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 053633A781D
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 09:40:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27F9C6E183;
	Tue, 15 Jun 2021 07:40:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AFC16E183;
 Tue, 15 Jun 2021 07:40:32 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 66BBA610CD;
 Tue, 15 Jun 2021 07:40:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1623742832;
 bh=wn7o8JIjggMn0Rfi5/qQqBJylu3YviZ3WirnVcRCtRA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mDxjRHpKWMCop/mIT5zc2YizTnLWx7rJNQPinh659S6EfAW9CaJvEH3tonE/DMXlP
 /xCEReeji/aU5sr0uFsiqE86GiPUkU2bbFQax5ItP5mTEXMYqT/a1JIW1mSGVubN/4
 l9GjeZRVu7/KxnoZl07rAABnzGMCFd8CFYr5jx7o=
Date: Tue, 15 Jun 2021 09:40:29 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <YMhZbWvI85fk4aUy@kroah.com>
References: <20210604194840.14655-1-hdegoede@redhat.com>
 <20210604194840.14655-9-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210604194840.14655-9-hdegoede@redhat.com>
Subject: Re: [Intel-gfx] [PATCH 8/8] usb: typec: altmodes/displayport:
 Notify drm subsys of hotplug events
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
 platform-driver-x86@vger.kernel.org, linux-usb@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 04, 2021 at 09:48:40PM +0200, Hans de Goede wrote:
> Use the new drm_connector_oob_hotplug_event() functions to let drm/kms
> drivers know about DisplayPort over Type-C hotplug events.
> 
> Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> Tested-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> Signed-off-by: Hans de Goede <hdegoede@redhat.com>

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
