Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B0F3467AB
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Mar 2021 19:32:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 757E36EB0C;
	Tue, 23 Mar 2021 18:32:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com
 [IPv6:2607:f8b0:4864:20::22e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54D986EB0C
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Mar 2021 18:32:04 +0000 (UTC)
Received: by mail-oi1-x22e.google.com with SMTP id i3so18034316oik.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Mar 2021 11:32:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=K+T9J28jjl61wFwR8sOn/dolEBn3Acb0Hwet+RnL6BY=;
 b=XYbt6yoyL5Y2v6flxP+44gcZ3dL+CnxLzJWpu2hooVP8sUQ+0swaj29laUsM46YnY4
 zWC/Vu5/PjYYMOBtdUU7wWRwAHKvDvz97/lWpjV8CmLmHufKiiNleofIGr/Pjikcj4CZ
 uhNWm6rQvsPbmLwFy9MwlMlbYNTktGP3u4qhI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=K+T9J28jjl61wFwR8sOn/dolEBn3Acb0Hwet+RnL6BY=;
 b=FI4ETdWsWhgazmnumiwoLRzWVDHBLHRD/olFKQaPDCYFGvv+nJNw0jm5gBvyjI5Aym
 3Vk79ZUovWPG9yZgJd7UToYWAXwn4uL60OP/X7iCD68APYgkvCzVm+IMUFr6x1pN3ebt
 PtrIHoXoDQl0womZhcMb/+MfnO2u2VHCQBUCgkc/AO0fnedgfOjUI1/rFRlSTzWq53es
 TR5t8Zu02HJurAJuy57boYd7vsWhct4cqDDjsIgaSF3vcUbLJfdQ/WRKu6AMSPkvi2vM
 n92QPiAjAAgEXFubeKtmhFaM1pZC8LNXuhL8bPkMoKzN8mv+CAvxs8Op+JDxe7FET2Tr
 HyAQ==
X-Gm-Message-State: AOAM530rYv8nZ3YQOoU1obk5yL/ShV0Rv+9Sng9dgelithLCYRW9pUTz
 0tlB5foap0Q15WXevZWxwZ/AVCFFrLS5S5R4cSRQj73zkz8X6A==
X-Google-Smtp-Source: ABdhPJwxfHSm9T5Jk3b71cbiHY5fTVEkyEwpKQ+6P5xsMEVY2dUm6EFDVxTW0STVyBpKDFqGug64KpWEsoMz4QpdzKA=
X-Received: by 2002:aca:4188:: with SMTP id o130mr4288312oia.101.1616524323733; 
 Tue, 23 Mar 2021 11:32:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210323084453.366863-1-daniel.vetter@ffwll.ch>
 <20210323084453.366863-2-daniel.vetter@ffwll.ch>
 <_qgkbhnFRPb-XwdmeoSsVd7rlelflxuh9B-f9G8GLZoFIeXj48RGtUoEjws4RV0kI1jZvvZSGbOIcHhLWmI_RKJzzawOO9OIyJjBkG9lQH8=@emersion.fr>
 <CAOFGe94kCGPW3YD31a9OjhKxpvyKGQS-HJVPg8OqVE1j1qpdJA@mail.gmail.com>
In-Reply-To: <CAOFGe94kCGPW3YD31a9OjhKxpvyKGQS-HJVPg8OqVE1j1qpdJA@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 23 Mar 2021 19:31:52 +0100
Message-ID: <CAKMK7uHfA5f68JzCQ26sTXXcE6DVZvtvGMpYZ1vwvt5a2P2OCw@mail.gmail.com>
To: Jason Ekstrand <jason@jlekstrand.net>
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
Cc: Daniel Vetter <daniel.vetter@intel.com>, Simon Ser <contact@emersion.fr>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBNYXIgMjMsIDIwMjEgYXQgNjo1NSBQTSBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxl
a3N0cmFuZC5uZXQ+IHdyb3RlOgo+Cj4gT24gVHVlLCBNYXIgMjMsIDIwMjEgYXQgMTI6MDEgUE0g
U2ltb24gU2VyIDxjb250YWN0QGVtZXJzaW9uLmZyPiB3cm90ZToKPiA+Cj4gPiBTaWRlIG5vdGU6
IEkgZmVlbCBsaWtlIHdlIGNvdWxkIGhhdmUgYmV0dGVyIGxpbmVzIG9mIGNvbW11bmljYXRpb24K
PiA+IGJldHdlZW4ga2VybmVsIGRldnMgYW5kIHVzZXItc3BhY2UgZGV2cy4gVGhlIG5ldyB1QVBJ
IHJlcXVpcmVtZW50cyBzZWVtCj4gPiB0byBiZSBhIGhpZ2ggYmFycmllciB0byBlbnRyeSBmb3Ig
a2VybmVsIGRldnMuIEhvd2V2ZXIgc29tZXRpbWVzCj4gPiB1c2VyLXNwYWNlIGRldnMgbWlnaHQg
YmUgaW50ZXJlc3RlZCBpbiBoZWxwaW5nIG91dCB3aXRoIHRoZSB1c2VyLXNwYWNlCj4gPiBwYXJ0
4oCmCj4gPgo+ID4gTWF5YmUgaXQgd291bGQgYmUgZ29vZCB0byBDQyBlLmcuIHdheWxhbmQtZGV2
ZWwgZm9yIG5ldyBSRkNzLCBzbyB0aGF0Cj4gPiB1c2VyLXNwYWNlIGRldnMgY2FuIGp1bXAgaW4g
aWYgdGhleSdyZSBpbnRlcmVzdGVkLiBBbmQgYWxzbyBwcm92aWRlCj4gPiBmZWVkYmFjaywgc2lu
Y2UgbmV3IHVBUEkgaXMgaGFyZCB0byBzcG90IGluIHRoZSBzZWEgb2YgbWVzc2FnZXMgaW4KPiA+
IGRyaS1kZXZlbC4KPgo+IFRoYXQncyBhIGdvb2Qgc3VnZ2VzdGlvbi4gIENDaW5nIHdheWxhbmQt
ZGV2IG9yIG1lc2EtZGV2LCBhcwo+IGFwcHJvcHJpYXRlLCB3aXRoIHN1Y2ggZG9jcyBwYXRjaGVz
IHNvdW5kcyBsaWtlIGEgZ29vZCBpZGVhLiAgSSdtIG5vdAo+IHN1cmUgd2hlcmUgd2Ugd291bGQg
cHV0IHRoYXQgaW4gaGVyZSBidXQgaXQgd291bGQgYmUgZ29vZCB0byBjYWxsIG91dC4KCkknbGwg
YWRkIGEgc3VnZ2VzdGlvbiB0byB0aGF0IGV4dGVuZCwgaXQncyBhIGdvb2Qgb25lLgotRGFuaWVs
Ci0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpo
dHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
