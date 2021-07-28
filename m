Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B233D8D7B
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jul 2021 14:09:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C2816E82F;
	Wed, 28 Jul 2021 12:09:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com
 [IPv6:2607:f8b0:4864:20::234])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B16A6E82F
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jul 2021 12:09:28 +0000 (UTC)
Received: by mail-oi1-x234.google.com with SMTP id x15so3415065oic.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jul 2021 05:09:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=epsE9NfA9DWMmQX7B7TUHrwoN0esHZLX/lAuY9R/APs=;
 b=DHWilW85wtL8urWXwK1H35IgOGWct4GNNoH6L2TweyrfSeqohh2SgHlytOyaXk14F4
 nvF7vjevWX82rvVHyvzx1ZbnZeRWF7GYGsfg94wZ9TZMMZCApBFIhorcnBSJAqeydEFq
 z5xPNkjc0P+ANkt/6IP97XE+Nt6V+eT5RGwyw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=epsE9NfA9DWMmQX7B7TUHrwoN0esHZLX/lAuY9R/APs=;
 b=L1lZMtbZFl44BCC+OpG+8r3+/fLU38IqXjW9UjDDlH1a9mGh79Z4yAQeo2ev3+YoFZ
 4Omxjty5MmZAy5RPrquM1oHXnDcX5u8DICdOSpgQUHzxhThAoWwJu6tRsOsPiUhZ0pw5
 XZN/utmOAWVZpbCr4skw4HOhVuzwdnrZik8421Mw/xwKvIyrWxfiXkZoyaG8J5KvlxuY
 wWoV8ytbvNKzyL9fUvm4KF5Qwqpkb10flV8UVX+g+0FWNw3+dYoiGS+SkeQMVMXsDT/D
 4lM7uuf+eBt1DPp8O0AghBl/PjacUWkt+6O9jKPY6Z0+mhuUveEV695X7I7zH9HjKgDz
 Ngdg==
X-Gm-Message-State: AOAM5318uHyZa6DZISTfXdVZdc+xP0qIzZQx2Oc51kIp0TzRVkAmNjl3
 rWQigW8QDcxsQJZeXOMEb2ZNwV0H8dfMbt/gofFdpw==
X-Google-Smtp-Source: ABdhPJyoP8j3HcVFOx21JkZ1fbw/u0UOrXcFrbpnUtr9/NGZi5d8IdfwW93rEYxekFa9C908SCfaP6dekAAbolqc/xs=
X-Received: by 2002:aca:d682:: with SMTP id
 n124mr18525460oig.128.1627474168027; 
 Wed, 28 Jul 2021 05:09:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210712175352.802687-1-daniel.vetter@ffwll.ch>
 <20210712175352.802687-4-daniel.vetter@ffwll.ch>
 <CAKMK7uG8bMuDP=7-z9nZ38WgMdbeUk96eNx3buTCiaKatYOJxw@mail.gmail.com>
 <2bcfba05-b7d5-1bd9-d74a-b9aac1147e20@gmail.com>
In-Reply-To: <2bcfba05-b7d5-1bd9-d74a-b9aac1147e20@gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 28 Jul 2021 14:09:16 +0200
Message-ID: <CAKMK7uE7GBZYih=KZm5t7-_0P8i7M0tA2KgSOgJsm+-HUE+HzA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Subject: Re: [Intel-gfx] [Linaro-mm-sig] [PATCH v4 03/18] drm/sched: Add
 dependency tracking
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
Cc: Andrey Grodzovsky <andrey.grodzovsky@amd.com>,
 Jack Zhang <Jack.Zhang1@amd.com>, David Airlie <airlied@linux.ie>,
 Lee Jones <lee.jones@linaro.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Melissa Wen <melissa.srw@gmail.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Nirmoy Das <nirmoy.aiemd@gmail.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Luben Tuikov <luben.tuikov@amd.com>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKdWwgMjgsIDIwMjEgYXQgMToyOSBQTSBDaHJpc3RpYW4gS8O2bmlnCjxja29lbmln
LmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6Cj4gQW0gMjcuMDcuMjEgdW0gMTM6MDkg
c2NocmllYiBEYW5pZWwgVmV0dGVyOgo+ID4gQWRkaW5nIGEgZmV3IG1vcmUgcGVvcGxlIHRvIHRo
aXMgYmlrZXNoZWQuCj4gPgo+ID4gT24gTW9uLCBKdWwgMTIsIDIwMjEgYXQgMTA6MDIgUE0gRGFu
aWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4gd3JvdGU6Cj4gPgo+ID4+IEBAIC0z
NDksNiArMzY3LDEzIEBAIGludCBkcm1fc2NoZWRfam9iX2luaXQoc3RydWN0IGRybV9zY2hlZF9q
b2IgKmpvYiwKPiA+PiAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX3NjaGVkX2Vu
dGl0eSAqZW50aXR5LAo+ID4+ICAgICAgICAgICAgICAgICAgICAgICAgIHZvaWQgKm93bmVyKTsK
PiA+PiAgIHZvaWQgZHJtX3NjaGVkX2pvYl9hcm0oc3RydWN0IGRybV9zY2hlZF9qb2IgKmpvYik7
Cj4gPj4gK2ludCBkcm1fc2NoZWRfam9iX2F3YWl0X2ZlbmNlKHN0cnVjdCBkcm1fc2NoZWRfam9i
ICpqb2IsCj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGRtYV9mZW5j
ZSAqZmVuY2UpOwo+ID4+ICtpbnQgZHJtX3NjaGVkX2pvYl9hd2FpdF9pbXBsaWNpdChzdHJ1Y3Qg
ZHJtX3NjaGVkX2pvYiAqam9iLAo+ID4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLAo+ID4+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGJvb2wgd3JpdGUpOwo+ID4+ICsKPiA+PiArCj4gPiBJJ20gc3RpbGwgd2FpdGlu
ZyBvbiB0aGUgcGFpbnQgZGVsaXZlcnkgZm9yIHRoZXNlIHR3byBmdW5jdGlvbnMgc28gSQo+ID4g
Y2FuIGZpbmlzaCB0aGlzIHNoZWQuCj4KPiBXZWxsIEkgd291bGRuJ3QgY2FsbCB0aGF0IGJpa2Ug
c2hlZGRpbmcsIGdvb2QgbmFtZXMgYXJlIGltcG9ydGFudC4KPgo+IEp1c3QgaW1hZ2luZyB3ZSB3
b3VsZCBoYXZlIGNhbGxlZCB0aGUgZXhjbHVzaXZlLWZlbmNlIHdyaXRlLWZlbmNlIGluc3RlYWQu
CgpTdXJlIG5hbWluZyBtYXR0ZXJzLCBidXQgYXQgbGVhc3QgdG8gbXkgRW5nbGlzaCB1bmRlcnN0
YW5kaW5nIHRoZXJlJ3MKbm90IGEgc2VtYW50aWMgZGlmZmVyZW50IGJldHdlZW4gdGVsbGluZyBz
b21ldGhpbmcgdG8gYXdhaXQgZm9yCnNvbWV0aGluZyBlbHNlIChpLmUuIGFkZCBhIGRlcGVuZGVu
Y3kpIG9yIHRvIHRlbGwgc29tZXRoaW5nIHRvIGFkZCBhCmRlcGVuZGVuY3kgKGkuZS4gYXdhaXQg
dGhhdCB0aGluZyBsYXRlciBvbiBiZWZvcmUgeW91IHN0YXJ0IGRvaW5nIHlvdXIKb3duIHRoaW5n
KS4KCkV4Y2x1c2l2ZSB2cyB3cml0ZSBmZW5jZSBvdG9oIGlzIGEgcHJldHR5IGJpZyBkaWZmZXJl
bmNlIGluIHdoYXQgaXQgbWVhbnMuCgpCdXQgYWxzbyBpZiB0aGVyZSdzIGNvbnNlbnN1cyB0aGF0
IEknbSB3cm9uZyB0aGVuIEknbSBoYXBweSB0byBwaWNrCnRoZSBtb3JlIHByZWZlcnJlZCBvZiB0
aGUgdHdvIG9wdGlvbnMgSSBkZWVtIGVxdWl2YWxlbnQuCgo+IFdoYXQgc3BlYWtzIGFnYWluc3Qg
Y2FsbGluZyB0aGVtIGFkZF9kZXBlbmRlbmN5KCkgYW5kCj4gX2FkZF9pbXBsaWNpdF9kZXBlbmNl
bmNpZXMoKSA/CgpOb3RoaW5nLiBJIGp1c3QgbGlrZSBhbm90aGVyIGFjayBvbiB0aGlzIGJlZm9y
ZSBJIHJlbmFtZSBpdCBhbGwuIEFsc28KSSB3YXNudCBzdXJlIHdoYXQgeW91J2Qgd2FudCB0byBu
YW1lIHRoZSBpbXBsaWNpdCBkZXBlbmRlbmN5IHRoaW5nLgoKTHVjYXMsIEJvcmlzLCBNZWxpc3Nh
LCBhbnkgYWNrcyBoZXJlPwotRGFuaWVsCgo+IFJlZ2FyZHMsCj4gQ2hyaXN0aWFuLgo+Cj4gPgo+
ID4gVGhhbmtzLCBEYW5pZWwKPiA+Cj4gPj4gICB2b2lkIGRybV9zY2hlZF9lbnRpdHlfbW9kaWZ5
X3NjaGVkKHN0cnVjdCBkcm1fc2NoZWRfZW50aXR5ICplbnRpdHksCj4gPj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBkcm1fZ3B1X3NjaGVkdWxlciAqKnNjaGVk
X2xpc3QsCj4gPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVk
IGludCBudW1fc2NoZWRfbGlzdCk7Cj4gPj4gLS0KPiA+PiAyLjMyLjAKPiA+Pgo+ID4KPgoKCi0t
IApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRw
Oi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
