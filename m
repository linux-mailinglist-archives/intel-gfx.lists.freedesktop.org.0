Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5596B70D5
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 03:27:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC19B6F4BA;
	Thu, 19 Sep 2019 01:27:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71AF16F4BA
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 01:27:02 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id 7so2275202wme.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2019 18:27:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=c2dYBd81R+N/OLxSkRi6IKMJ6D8PXeFDvBs7ltFTzZk=;
 b=ds8psja5CHw3OXwBwbSiJac9UQkMVmt41Zr788JWpyqAf5G4XnW/StjOvlHQ4PZ/IB
 B7ome4Y71xFaM5KyUFumdSeDMovIIRVhf0eOc6BZb05N5867HA004jpI6H0aAvfC9Ga8
 L830mb2InAmBxbnCYhbCp1xucfSEnMt8UIXlHvkQitvGF5ePhC1GEVtWVW7zJlQJhTrK
 vF1vzT1Ow9Xw3Ipy5k6Tk7fmW5JJfK9ApVAPatWDT/Q66bbIjJY+4wGYI2Dzb79z7BKm
 qKVZBIGsleYBuBQYjZXrMw1DYpoW2Z/ihlZVbQzf6GefDkp4104kaugStl21ceNN3qEX
 T2mw==
X-Gm-Message-State: APjAAAWTrie9fXpikKt/oLarbTWMOjk2nlkSe2Gy8WaL4GGohj0fAbNQ
 d8fbaKasyKA9waJGV8DWUe8gdZek4rVm+N73R7Ed5RpqwIA=
X-Google-Smtp-Source: APXvYqy9H5ogrx4TSywLWb/dg/md6jxethTrGu4y0teclsm/Pqdld4oCB6gosU1QlYig5CqL39GpWjvwcUjQsUvn06c=
X-Received: by 2002:a1c:cb05:: with SMTP id b5mr509262wmg.79.1568856421062;
 Wed, 18 Sep 2019 18:27:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190919000726.267988-1-jose.souza@intel.com>
 <20190919000726.267988-4-jose.souza@intel.com>
In-Reply-To: <20190919000726.267988-4-jose.souza@intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Wed, 18 Sep 2019 18:26:49 -0700
Message-ID: <CAKi4VA+WX-H8gfwcmaaXva5LH2hb9EmWXgN0-+EKxuPutxOkug@mail.gmail.com>
To: =?UTF-8?Q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=c2dYBd81R+N/OLxSkRi6IKMJ6D8PXeFDvBs7ltFTzZk=;
 b=nyTnP6hnRT9Ejmnz3s50BzvrngD9ZBpsS/IIE7NjK5vLsaykIg8hhs5llSg+iHXP3J
 coMcovk0qeV+Gy3I5nG1s8mfd9kDZfvuBJcBGrpL0n/bq7uhOC2Cd0klQdxu24TgwAbz
 eLM45HdoIVohFhbmymtkzRJgVhe+3wv1BOMDxFY7dbGE/gPIwL73lEchH4Ca9SUzn0Gx
 Viou3/DzMWspK6dWvkKVj3px4oXJvRpBdXt3jcOIZe61eYz+ARXInj7FkZDDMbkt6yqO
 vVw71/ydEVQBZr8cdITW+BVMF+q7HVihpXnPTc5DR0ETgBqTNv5VR6LnF0owqRSg5DwE
 E5Fw==
Subject: Re: [Intel-gfx] [PATCH v2 03/13] drm/i915/tgl/pll: Set
 update_active_dpll
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBTZXAgMTgsIDIwMTkgYXQgNTowNyBQTSBKb3PDqSBSb2JlcnRvIGRlIFNvdXphCjxq
b3NlLnNvdXphQGludGVsLmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiBDbGludG9uIEEgVGF5bG9yIDxj
bGludG9uLmEudGF5bG9yQGludGVsLmNvbT4KPgo+IENvbW1pdCAyNGE3YmZlMGMyZDcgKCJkcm0v
aTkxNTogS2VlcCB0aGUgVHlwZUMgcG9ydCBtb2RlIGZpeGVkIHdoZW4gdGhlCj4gcG9ydCBpcyBh
Y3RpdmUiKSBhZGRlZCB0aGlzIG5ldyBob29rIHdoaWxlIGluIHBhcmFsbGVsIFRHTCB1cHN0cmVh
bSB3YXMKPiBoYXBwZW5pbmcgYW5kIHRoaXMgd2FzIG1pc3NlZC4KPgo+IFdpdGhvdXQgdGhpcyBk
cml2ZXIgd2lsbCBjcmFzaCB3aGVuIFRDIERESSBpcyBhZGRlZCBhbmQgZHJpdmVyIGlzCj4gcHJl
cGFyaW5nIHRvIGRvIGEgZnVsbCBtb2Rlc2V0Lgo+Cj4gQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVj
YXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+IENjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5j
b20+Cj4gU2lnbmVkLW9mZi1ieTogQ2xpbnRvbiBBIFRheWxvciA8Y2xpbnRvbi5hLnRheWxvckBp
bnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5z
b3V6YUBpbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1h
cmNoaUBpbnRlbC5jb20+CgpMdWNhcyBEZSBNYXJjaGkKCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyB8IDEgKwo+ICAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwbGxfbWdyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwbGxfbWdyLmMKPiBpbmRleCA5ODI4OGVkZjg4ZjAuLjg0ZTczNGQ0NDgyOCAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMKPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMKPiBAQCAtMzQ3
OSw2ICszNDc5LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kcGxsX21nciB0Z2xfcGxs
X21nciA9IHsKPiAgICAgICAgIC5kcGxsX2luZm8gPSB0Z2xfcGxscywKPiAgICAgICAgIC5nZXRf
ZHBsbHMgPSBpY2xfZ2V0X2RwbGxzLAo+ICAgICAgICAgLnB1dF9kcGxscyA9IGljbF9wdXRfZHBs
bHMsCj4gKyAgICAgICAudXBkYXRlX2FjdGl2ZV9kcGxsID0gaWNsX3VwZGF0ZV9hY3RpdmVfZHBs
bCwKPiAgICAgICAgIC5kdW1wX2h3X3N0YXRlID0gaWNsX2R1bXBfaHdfc3RhdGUsCj4gIH07Cj4K
PiAtLQo+IDIuMjMuMAo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4CgoKCi0tIApMdWNhcyBEZSBNYXJjaGkKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
