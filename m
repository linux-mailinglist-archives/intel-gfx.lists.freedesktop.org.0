Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 393E14A5ACB
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Feb 2022 12:02:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69D0B10E497;
	Tue,  1 Feb 2022 11:02:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98BFE10E497;
 Tue,  1 Feb 2022 11:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1643713298;
 bh=Kp5E+5zaimcSjWgRA4B80Sup1tIxJqfJENoYg4VfU6U=;
 h=X-UI-Sender-Class:Date:Subject:To:Cc:References:From:In-Reply-To;
 b=RNKVE4/zfr6slOkQOzhNETrvVgV9+bPJa76AGJwEVNC2Q3UTqrfhyzJ+gQuBcEToE
 rQhrk3t+TfPQxSP3Q2VmSdXXSo8Vnl2RPYxPG/8DzXxXYQSV3kI7LBtDNhVZ95sNao
 7SFFOQnVK4ZKiMJSLZc+YTCsv5BiTWe+9qCKK62U=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.20.60] ([92.116.146.124]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MTzb8-1mp6bQ1BLe-00QyQM; Tue, 01
 Feb 2022 12:01:38 +0100
Message-ID: <63018892-68e8-01b6-1e8f-853892e15c97@gmx.de>
Date: Tue, 1 Feb 2022 12:01:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: Daniel Vetter <daniel.vetter@ffwll.ch>
References: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
 <20220131210552.482606-4-daniel.vetter@ffwll.ch>
 <9c22b709-cbcf-6a29-a45e-5a57ba0b9c14@gmx.de>
 <CAKMK7uGvOVe8kkJCTkQBEFw+3i2iAMANsyG9vGqZkcROZ9he4A@mail.gmail.com>
From: Helge Deller <deller@gmx.de>
In-Reply-To: <CAKMK7uGvOVe8kkJCTkQBEFw+3i2iAMANsyG9vGqZkcROZ9he4A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:SP0hRz1pWzc7F2C4ZUe6LHY4QjV17NNxG+kMA+dzBcfbm6cEv3f
 OD7SVmW2xvmsal6nByY8VbSgXzXsSGQ/29cgn3HU30QknR8a/gTpVu+L6o/KYaXCVbOc9Et
 QtbNJbC4rsJeZC7HMNleVE+TwErGIk2xYG5Q8zybXnU1bt/5RimsjAp/jZvapqQvK2NICq2
 dpzf31K7qBL4dRnPxjmBg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4Gmuif59hFM=:FJ5WYWz0nO2pwe/3zyQdBE
 NvtiK0xhPUwCqrrEhF5/k6MTor8BnhdxmGHmUW03UI8qpCnIEzWefbae3FGEKMNAzXkDy0sRS
 8/JY/L+5IXlI6ORjpRvjew2/XVdfoqIU5crukO3+CgQ7E9ACK18Vu4EV2bbK5Su19dob7cYfx
 6UoR6Fx4IUk/LLB1Dvt3q6K+C3AAJmWLnBLinn2rMTq2YbsYuFHUUlsd0n4Nbo8qn/mGvybCf
 xSDpChJWPuE73+rA/WI9J5eHbjo4dhX05drxCF1jLbkgYdp3aKF8Y8Tj5AXBIis6xeHLkgPz4
 QMm8kWSDQxmoThR5dhH77PNiB44wBIjfk8Fwf4KJS++e6EO0dpIJEpBvTwUpjL59oi2ZUJhsz
 mlgXAU3zudur0YPJ6YPxA9vXa7Zc30QAfPNbgCcsJpZ5lW2lsg6246cOaKAGxBlSZ9PoIlEHS
 OnxM0ZPTzBNlI1/Za6iHr9oUxls8FqkfoIOw4SjhbJB/uXwEWQEh7GSGehGrQEhLzWNB09J9V
 DJPnTLo8hOjUEzRmarAstGCUxwySCpw1lkWW5OLdTXhQhjIuB0fI6f/wUQ5mBYUpBzOccdv9o
 ZU9wb46d8kml0AWeVdbtbNOuW7Gv8O6tB+VjSxolpP5ErJcW3LRk07jdVRx/EA79XR0+DREtx
 0cU4qW50eQkd2kdOK7lSxDL3ia5MLhwLvPfqcAjoaqnyvhSXxtqdj0+Ruj6SetBky/LwTu2dI
 6TYlCsAIpSkqvFGaxoDrFoPReEBSXGB01Ao24ErKy+bmH5PqpSvjtZj2yh3u4lllqvJZ5gdh7
 mcHogBRaN2o4Jz4/arht0lT1UNF6retxR35lZKJtiNYJnd8vVUKhOoaoiQhHMcCWYw1CBZOa3
 oWsxp/hK30iUAP3Tc345mpZxtmNC3KWXy05IGr3Km99YCre+WxvkYj0BQiucdi/nef9HBP9sc
 YlCSmmuMFQ0wM9z30RPYxitlCIMFVS3k3WG+0YJmaeHy7ec2qlauB9nPhIUNSf+ufKMMIIslr
 Rq09cOeqhzxm0V4TfEsYmuGVZF13h8fH2EN64xx1x/h6z83JEM/yynONTa4fdGZ9Dcol/x70C
 Ubfe6iB6RhBxjg=
Subject: Re: [Intel-gfx] [PATCH 03/21] fbcon: Restore fbcon scrolling
 acceleration
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
Cc: linux-fbdev@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Sam Ravnborg <sam@ravnborg.org>, Daniel Vetter <daniel.vetter@intel.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, stable@vger.kernel.org,
 Javier Martinez Canillas <javierm@redhat.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 DRI Development <dri-devel@lists.freedesktop.org>, Pavel Machek <pavel@ucw.cz>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Dave Airlie <airlied@gmail.com>,
 Sven Schnelle <svens@stackframe.org>, Gerd Hoffmann <kraxel@redhat.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2/1/22 11:36, Daniel Vetter wrote:
> On Tue, Feb 1, 2022 at 11:16 AM Helge Deller <deller@gmx.de> wrote:
>>
>> On 1/31/22 22:05, Daniel Vetter wrote:
>>> This functionally undoes 39aead8373b3 ("fbcon: Disable accelerated
>>> scrolling"), but behind the FRAMEBUFFER_CONSOLE_LEGACY_ACCELERATION
>>> option.
>>
>> you have two trivial copy-n-paste errors in this patch which still prev=
ent the
>> console acceleration.
>
> Duh :-(
>
> But before we dig into details I think the big picture would be
> better. I honestly don't like the #ifdef pile here that much.

Me neither.
The ifdefs give a better separation, but prevents that the compiler
checks the various paths when building.

> I wonder whether your approach, also with GETVX/YRES adjusted
> somehow, wouldn't look cleaner?
I think so.
You wouldn't even need to touch GETVX/YRES because the compiler
will optimize/reduce it from

#define GETVYRES(s,i) ({                           \
        (s =3D=3D SCROLL_REDRAW || s =3D=3D SCROLL_MOVE) ? \
        (i)->var.yres : (i)->var.yres_virtual; })

to just become:

#define GETVYRES(s,i) ((i)->var.yres)

> Like I said in the cover letter I got mostly distracted with fbcon
> locking last week, not really with this one here at all, so maybe
> going with your 4 (or 2 if we squash them like I did here) patches is
> neater?

The benefit of my patch series was, that it could be easily backported fir=
st,
and then cleaned up afterwards. Even a small additional backport patch to =
disable
the fbcon acceleration for DRM in the old releases would be easy.
But I'm not insisting on backporting the patches, if we find good way forw=
ard.

So, either with the 4 (or 2) patches would be OK for me (or even your appr=
oach).

Helge
