Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3943A29A56
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 16:49:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E66CF6E0DF;
	Fri, 24 May 2019 14:49:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA2636E0DF
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 14:49:14 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id y3so9706031wmm.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 07:49:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=M1OVfqkksdeurBVUMPNqtFo9e47tslxfnlj6Q1FVC7s=;
 b=cR7Xe0+TEQRSAN+GGRSH8tKUYjJgQPiiEWMOWkxD2aagBVFbhfWYPqZasTHFXuD/AE
 Uba/ys2tuPjF1bK+dt7sxhqpqTfNVL/QoZ6EbevovRmFYPlPOi7DaMvxZNpJdur1Gim7
 3kFD9W0LqmISWbKORYCgmmBmLkdbSvo45v3wNTljO+kyMsgBXX3/WKMYONRGW4VKQ8JA
 aRP6j6Wlp4UuYD1sIfyeKDBUQ/rn0E0a2vXCChMjqx+PJ1d+Ky/ZYkY3gmvKqtRGruk/
 oJjNbChJOE32C8zrTda3Alnqky+kZKdAw0e11BPRFIR3b+LJxrgFJoLPfnuC7F88O80a
 t+fg==
X-Gm-Message-State: APjAAAViHCKpIEDavaRUPN3hfb8wu0FXwRXfTj2YcBYEs4uTUxhMgeRo
 uGJMzpNA0K68HkZXMCn0oQC4og==
X-Google-Smtp-Source: APXvYqxYJ1yQsTD5Dm2L9ePvKHSZvu8av4zCv2xTmS5i9JL+H8Cen0n+w4WLmVz0CdD8t0e2ooexWw==
X-Received: by 2002:a1c:1bc5:: with SMTP id b188mr144055wmb.174.1558709353426; 
 Fri, 24 May 2019 07:49:13 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:1c0c:6c86:46e0:a7ad:5246:f04d])
 by smtp.gmail.com with ESMTPSA id z4sm2558108wru.69.2019.05.24.07.49.11
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 07:49:12 -0700 (PDT)
To: Daniel Vetter <daniel.vetter@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20190524130607.4021-1-hdegoede@redhat.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <2c8453e4-286b-2a05-4481-ac7f4b1843d9@redhat.com>
Date: Fri, 24 May 2019 16:49:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190524130607.4021-1-hdegoede@redhat.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: Use a fuzzy check for burst
 mode clock check
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>, stable@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpPbiA1LzI0LzE5IDM6MDYgUE0sIEhhbnMgZGUgR29lZGUgd3JvdGU6Cj4gUHJpb3IgdG8g
dGhpcyBjb21taXQgd2UgZmFpbCB0byBpbml0IHRoZSBEU0kgcGFuZWwgb24gdGhlIEdQRCBNaWNy
b1BDOgo+IGh0dHBzOi8vd3d3LmluZGllZ29nby5jb20vcHJvamVjdHMvZ3BkLW1pY3JvcGMtNi1p
bmNoLWhhbmRoZWxkLWluZHVzdHJ5LWxhcHRvcCMvCj4gCj4gVGhlIHByb2JsZW0gaXMgaW50ZWxf
ZHNpX3ZidF9pbml0KCkgZmFpbGluZyB3aXRoIHRoZSBmb2xsb3dpbmcgZXJyb3I6Cj4gKkVSUk9S
KiBCdXJzdCBtb2RlIGZyZXEgaXMgbGVzcyB0aGFuIGNvbXB1dGVkCj4gCj4gVGhlIHBjbGsgaW4g
dGhlIFZCVCBwYW5lbCBtb2RlbGluZSBpcyA3MDAwMCwgdG9nZXRoZXIgd2l0aCAyNCBicHAgYW5k
Cj4gNCBsaW5lcyB0aGlzIHJlc3VsdHMgaW4gYSBiaXRyYXRlIHZhbHVlIG9mIDcwMDAwICogMjQg
LyA0ID0gNDIwMDAwLgo+IEJ1dCB0aGUgdGFyZ2V0X2J1cnN0X21vZGVfZnJlcSBpbiB0aGUgVkJU
IGlzIDQxODAwMC4KPiAKPiBUaGlzIGNvbW1pdCB3b3JrcyBhcm91bmQgdGhpcyBwcm9ibGVtIGJ5
IGFkZGluZyBhbiBpbnRlbF9mdXp6eV9jbG9ja19jaGVjawo+IHdoZW4gdGFyZ2V0X2J1cnN0X21v
ZGVfZnJlcSA8IGJpdHJhdGUgYW5kIHNldHRpbmcgdGFyZ2V0X2J1cnN0X21vZGVfZnJlcSB0bwo+
IGJpdHJhdGUgd2hlbiB0aGF0IGNoZWNrcyBzdWNjZWVkcywgZml4aW5nIHRoZSBwYW5lbCBub3Qg
d29ya2luZy4KPiAKPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+IFNpZ25lZC1vZmYtYnk6
IEhhbnMgZGUgR29lZGUgPGhkZWdvZWRlQHJlZGhhdC5jb20+CgpJIGp1c3QgcmVhbGl6ZWQgdGhh
dCB0aGlzIHBhdGNoIGRlcGVuZHMgb24gYSBwYXRjaCBmcm9tIGFub3RoZXIgc2VyaWVzIG9mCm1p
bmUgd2hpY2ggZXhwb3J0cyBpbnRlbF9mdXp6eV9jbG9ja19jaGVjaywgSSB3aWxsIHJlc2VuZCB0
aGlzIGFzIGEgc2VyaWVzCndpdGggdGhlIHBhdGNoIGRvaW5nIHRoZSBleHBvcnRpbmcgYXMgZmly
c3QgcGF0Y2gsIHNvIHRoYXQgdGhlIENJIGNhbiB0ZXN0CnRoaXMuCgpSZWdhcmRzLAoKSGFucwoK
Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kc2lfdmJ0LmMgfCAxMSArKysr
KysrKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHNpX3ZidC5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZHNpX3ZidC5jCj4gaW5kZXggMDIyYmY1OTQxOGRmLi5hMmE5YjlkMGVl
YWEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHNpX3ZidC5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHNpX3ZidC5jCj4gQEAgLTg5NSw2ICs4
OTUsMTcgQEAgYm9vbCBpbnRlbF9kc2lfdmJ0X2luaXQoc3RydWN0IGludGVsX2RzaSAqaW50ZWxf
ZHNpLCB1MTYgcGFuZWxfaWQpCj4gICAJCWlmIChtaXBpX2NvbmZpZy0+dGFyZ2V0X2J1cnN0X21v
ZGVfZnJlcSkgewo+ICAgCQkJdTMyIGJpdHJhdGUgPSBpbnRlbF9kc2lfYml0cmF0ZShpbnRlbF9k
c2kpOwo+ICAgCj4gKwkJCS8qCj4gKwkJCSAqIFNvbWV0aW1lcyB0aGUgVkJUIGNvbnRhaW5zIGEg
c2xpZ2h0bHkgbG93ZXIgY2xvY2ssCj4gKwkJCSAqIHRoZW4gdGhlIGJpdHJhdGUgd2UgaGF2ZSBj
YWxjdWxhdGVkLCBpbiB0aGlzIGNhc2UKPiArCQkJICoganVzdCByZXBsYWNlIGl0IHdpdGggdGhl
IGNhbGN1bGF0ZWQgYml0cmF0ZS4KPiArCQkJICovCj4gKwkJCWlmIChtaXBpX2NvbmZpZy0+dGFy
Z2V0X2J1cnN0X21vZGVfZnJlcSA8IGJpdHJhdGUgJiYKPiArCQkJICAgIGludGVsX2Z1enp5X2Ns
b2NrX2NoZWNrKAo+ICsJCQkJCW1pcGlfY29uZmlnLT50YXJnZXRfYnVyc3RfbW9kZV9mcmVxLAo+
ICsJCQkJCWJpdHJhdGUpKQo+ICsJCQkJbWlwaV9jb25maWctPnRhcmdldF9idXJzdF9tb2RlX2Zy
ZXEgPSBiaXRyYXRlOwo+ICsKPiAgIAkJCWlmIChtaXBpX2NvbmZpZy0+dGFyZ2V0X2J1cnN0X21v
ZGVfZnJlcSA8IGJpdHJhdGUpIHsKPiAgIAkJCQlEUk1fRVJST1IoIkJ1cnN0IG1vZGUgZnJlcSBp
cyBsZXNzIHRoYW4gY29tcHV0ZWRcbiIpOwo+ICAgCQkJCXJldHVybiBmYWxzZTsKPiAKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
