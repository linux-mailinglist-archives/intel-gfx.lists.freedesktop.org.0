Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 724C6367D03
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Apr 2021 10:58:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87AE489C14;
	Thu, 22 Apr 2021 08:58:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail1.protonmail.ch (mail1.protonmail.ch [185.70.40.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D265189B78
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Apr 2021 08:58:24 +0000 (UTC)
Date: Thu, 22 Apr 2021 08:58:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail3; t=1619081903;
 bh=ksZ9xjdVDUAJPNnPQapUG7QZ0jJsFkES9FCjco4bUd8=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
 b=ThGsy0bV1R7JQgItfFdc4kE6e1U10QSIiKd7DrKRoUcBPsZsjY2KU3MZ9nPDQBOgu
 3MMI+e7VHtDVaT3dHK0YtZkwLSMV6qzaxq6XKb69zNIX1Ny/AlTsCNOi0+dwezNIz6
 hFjnLz16dd5PIjK3PUftTGEKqvViNTCI37tX9cvwODSz7jnVP4Drnyoi+9mg+IE624
 Yh/e39aBsG3LiMhzHOKIEfegyy77RPY5/r2Mlp8tyrFpD8T4tymUskyQlivW+cPofU
 NARdXFaiWKoyo1oh4lTITLURXLwc3PH3ef8VQ9aCSvIa5YljBmcpDuTVvdY0kXXb11
 f7khO2orGmdbg==
To: Hans de Goede <hdegoede@redhat.com>
From: Simon Ser <contact@emersion.fr>
Message-ID: <xVZdxPoOewlP5LmxWy2EHKEIxRw1oeQH9xfPG5a6i8O5IJf5AqpFelwBSIoacwhIqCWJG0sqzHpfGL3WqAxM0CZOUyCOPUuCToD8Ia1Dwjw=@emersion.fr>
In-Reply-To: <88ad0981-0763-9c8d-fb57-70278bcaffd4@redhat.com>
References: <20210421204804.589962-1-hdegoede@redhat.com>
 <OwVTQDmCbSZMBV41nuJO75afEwmVzcrgF9gLIDqAL4fODvfI-Md_R-Z-ifcVhy6VLc6FyOINwx6lUUz0B1hpykdQYe4b3iZALLftfk6yp_E=@emersion.fr>
 <88ad0981-0763-9c8d-fb57-70278bcaffd4@redhat.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
 mailout.protonmail.ch
Subject: Re: [Intel-gfx] [PATCH v2 0/9] drm: Add privacy-screen class and
 connector properties
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
Reply-To: Simon Ser <contact@emersion.fr>
Cc: dri-devel@lists.freedesktop.org,
 Marco Trevisan <marco.trevisan@canonical.com>,
 Mark Gross <mgross@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Sebastien Bacher <seb128@ubuntu.com>, David Airlie <airlied@linux.ie>,
 Mario Limonciello <mario.limonciello@outlook.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, platform-driver-x86@vger.kernel.org,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Mark Pearson <markpearson@lenovo.com>, Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thursday, April 22nd, 2021 at 10:54 AM, Hans de Goede <hdegoede@redhat.com> wrote:

> I guess Marco was waiting for the kernel bits too land before submitting these,
> but I agree that it would probably be good to have these submitted now, we
> can mark them as WIP to avoid them getting merged before the kernel side
> is finalized.

Yes, this is how it should be done, see [1]. In particular:

> The userspace side must be fully reviewed and tested to the standards
> of that userspace project.

And yeah, the user-space side still can't be merged before the kernel
side:

> The kernel patch can only be merged after all the above requirements
> are met, but it must be merged to either drm-next or drm-misc-next
> before the userspace patches land.

[1]: https://dri.freedesktop.org/docs/drm/gpu/drm-uapi.html#open-source-userspace-requirements
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
