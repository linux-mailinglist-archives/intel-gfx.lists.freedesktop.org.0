Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C5B3466E3
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Mar 2021 18:55:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B8AE6EC6F;
	Tue, 23 Mar 2021 17:55:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com
 [IPv6:2607:f8b0:4864:20::333])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B09D66EC70
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Mar 2021 17:55:48 +0000 (UTC)
Received: by mail-ot1-x333.google.com with SMTP id
 t23-20020a0568301e37b02901b65ab30024so20312056otr.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Mar 2021 10:55:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=7/Hh3MCE8kRrr9gdMisNBW9+iRzCBxyJ6tsm/xA1i1Q=;
 b=dvbUlJbddwEcIjYY6DkZqh7viPuhkvh+Cvmt26t1aasuZLjlZiMegFPQ711kN22O5C
 x0PUd9+Xvz8mW1XjQUh6E73iruZiHewc2ryo3+UvgxImRWuNmbh0lPGYsYAPWYfOI8QI
 kUaZLUlYsPwSR3jdQWIQkLHFqWcOGbtotSBCIxtyNqvv1AyRsb8bLrVMJ0U5S8YjaSUi
 8OhnLXNQVwTyNG+g3ZyKlLHxXyKLSDowu/5tnKwxmqPCwgo6Q4UybOrbazAAiO+1sGSM
 tViRfkjC2NYB00OQRh+1tIULDTbxZzwjmx/CmeW8rXv+/2sYuFMm2vJa2qnxD80U2M+F
 VRaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=7/Hh3MCE8kRrr9gdMisNBW9+iRzCBxyJ6tsm/xA1i1Q=;
 b=klMe+sotZS9PGK9I5A92lYZB5KMFIGiX1qh741XTEqI6zTp8QCKxqGJcOYflYtjX6K
 3hGBmqxc2iYubVl5ipAf1xe658yVZnUF0Fz5sfV/AmxlxITiD9qyFMhHlHOba/5Yfga0
 TEcGhgq76S01RgMFN4TzzRwARPK5eU1cyXHr5lzePuKXntutd5e6wNuUfHgslROQ4LTz
 zvuUCcoGEeDwvUCReNi8mtmTMdqB21xkMZbUoTgy1gt6xO+2PU02RSHungOeWTg1yIPo
 Hd4pm7WrWn+8vO/JLNX5Ym9NZkoPt1fGb2K92TqnwOLIZmLuK28ob/3AwvQ/JziNLFIJ
 MpFA==
X-Gm-Message-State: AOAM530T2SAHtf0Ae3hp78puMotzEBsMrlu0WjTjXjtu105IRxXxQUWN
 JhRgLcvGKpxhyC59ByaGY0NdA/MWJAhDam7w5wyzMg==
X-Google-Smtp-Source: ABdhPJy1VJfgRxR2IBFCbhFEBHQdJrJOZQfDDfipkAaAZ0rSc/CVeiFImY/ATAyG9r5UpR7sXhsevQaSZvh1X8GYyH0=
X-Received: by 2002:a9d:5e89:: with SMTP id f9mr5452069otl.241.1616522147945; 
 Tue, 23 Mar 2021 10:55:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210323084453.366863-1-daniel.vetter@ffwll.ch>
 <20210323084453.366863-2-daniel.vetter@ffwll.ch>
 <_qgkbhnFRPb-XwdmeoSsVd7rlelflxuh9B-f9G8GLZoFIeXj48RGtUoEjws4RV0kI1jZvvZSGbOIcHhLWmI_RKJzzawOO9OIyJjBkG9lQH8=@emersion.fr>
In-Reply-To: <_qgkbhnFRPb-XwdmeoSsVd7rlelflxuh9B-f9G8GLZoFIeXj48RGtUoEjws4RV0kI1jZvvZSGbOIcHhLWmI_RKJzzawOO9OIyJjBkG9lQH8=@emersion.fr>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Tue, 23 Mar 2021 12:55:37 -0500
Message-ID: <CAOFGe94kCGPW3YD31a9OjhKxpvyKGQS-HJVPg8OqVE1j1qpdJA@mail.gmail.com>
To: Simon Ser <contact@emersion.fr>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/doc: Add RFC section
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBNYXIgMjMsIDIwMjEgYXQgMTI6MDEgUE0gU2ltb24gU2VyIDxjb250YWN0QGVtZXJz
aW9uLmZyPiB3cm90ZToKPgo+IFNpZGUgbm90ZTogSSBmZWVsIGxpa2Ugd2UgY291bGQgaGF2ZSBi
ZXR0ZXIgbGluZXMgb2YgY29tbXVuaWNhdGlvbgo+IGJldHdlZW4ga2VybmVsIGRldnMgYW5kIHVz
ZXItc3BhY2UgZGV2cy4gVGhlIG5ldyB1QVBJIHJlcXVpcmVtZW50cyBzZWVtCj4gdG8gYmUgYSBo
aWdoIGJhcnJpZXIgdG8gZW50cnkgZm9yIGtlcm5lbCBkZXZzLiBIb3dldmVyIHNvbWV0aW1lcwo+
IHVzZXItc3BhY2UgZGV2cyBtaWdodCBiZSBpbnRlcmVzdGVkIGluIGhlbHBpbmcgb3V0IHdpdGgg
dGhlIHVzZXItc3BhY2UKPiBwYXJ04oCmCj4KPiBNYXliZSBpdCB3b3VsZCBiZSBnb29kIHRvIEND
IGUuZy4gd2F5bGFuZC1kZXZlbCBmb3IgbmV3IFJGQ3MsIHNvIHRoYXQKPiB1c2VyLXNwYWNlIGRl
dnMgY2FuIGp1bXAgaW4gaWYgdGhleSdyZSBpbnRlcmVzdGVkLiBBbmQgYWxzbyBwcm92aWRlCj4g
ZmVlZGJhY2ssIHNpbmNlIG5ldyB1QVBJIGlzIGhhcmQgdG8gc3BvdCBpbiB0aGUgc2VhIG9mIG1l
c3NhZ2VzIGluCj4gZHJpLWRldmVsLgoKVGhhdCdzIGEgZ29vZCBzdWdnZXN0aW9uLiAgQ0Npbmcg
d2F5bGFuZC1kZXYgb3IgbWVzYS1kZXYsIGFzCmFwcHJvcHJpYXRlLCB3aXRoIHN1Y2ggZG9jcyBw
YXRjaGVzIHNvdW5kcyBsaWtlIGEgZ29vZCBpZGVhLiAgSSdtIG5vdApzdXJlIHdoZXJlIHdlIHdv
dWxkIHB1dCB0aGF0IGluIGhlcmUgYnV0IGl0IHdvdWxkIGJlIGdvb2QgdG8gY2FsbCBvdXQuCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
