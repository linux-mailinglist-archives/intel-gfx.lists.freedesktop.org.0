Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A0DDE579
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2019 09:45:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54C3A89AB6;
	Mon, 21 Oct 2019 07:45:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E9EA89AB7
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2019 07:45:10 +0000 (UTC)
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-351-Cy58K6m3MoK33LooAmY1bA-1; Mon, 21 Oct 2019 03:45:07 -0400
Received: by mail-wm1-f71.google.com with SMTP id b10so181515wmh.6
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2019 00:45:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=H+WioQzlgV3qYK4Ce3QRxulnNDl670DMMnMKAJ6KX1k=;
 b=MD4J3KB6pJRTcZ5OToVcUR+T8fLDW6rjErGHBL4wU7iJHDyywwCghJr268iT0cfArb
 X7t1ox1vsctPRB54s4HJAim3/u86Hadl41hQ4p0OIMCxK0Lf/aLGiCpkEzBqLZIOsUMH
 WndCmYUNebgoBGgRSbNoD9aprC1nsABwKGWEUGLdwxqC4Ei8wwQtXxn4kWWvy720A7ut
 gVFqAXaOHpIoOV8goitmy/VO/1+aEhpFcWLAkAOgZz4Eba0sgbUTpEyCSOmRA7hN340J
 Fd2pEjDguPjd7w3SvzegAguPCn7ExavyODv9Plhr/69OEqVkHTTp83fM6TnqMP2YNRH+
 DPsw==
X-Gm-Message-State: APjAAAX39MCa6kv5Y+nt+SQV0IqloxTApB9lLnhO1LWS0a1vBCjhuhKh
 CXIVU07TLMufToxGZ173LqULydgtO7tjF0VXk42IThXMqsTy6DEdBNLY9EN/ERRAOyphxcCG4ut
 KKJJ3f+3eWMP9Cn0QZ3M+st+6lztt
X-Received: by 2002:a7b:c352:: with SMTP id l18mr7599002wmj.13.1571643906359; 
 Mon, 21 Oct 2019 00:45:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzYks79Sl0BdCh/4MS+4tXXdTUSQPEyQ9UmUTrU59oC8L7ilyfdg6Koen5Yp08PeczEFOyswA==
X-Received: by 2002:a7b:c352:: with SMTP id l18mr7598982wmj.13.1571643906086; 
 Mon, 21 Oct 2019 00:45:06 -0700 (PDT)
Received: from shalem.localdomain
 (2001-1c00-0c14-2800-ec23-a060-24d5-2453.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c14:2800:ec23:a060:24d5:2453])
 by smtp.gmail.com with ESMTPSA id i3sm10135637wrw.69.2019.10.21.00.45.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 21 Oct 2019 00:45:05 -0700 (PDT)
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20191020181933.54829-1-hdegoede@redhat.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <11a796f0-48da-1b58-0f1f-0320f2189dbd@redhat.com>
Date: Mon, 21 Oct 2019 09:45:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191020181933.54829-1-hdegoede@redhat.com>
Content-Language: en-US
X-MC-Unique: Cy58K6m3MoK33LooAmY1bA-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571643909;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=glyB9FKyAHzZlvjzgVGDzHPCHQvTo/xMmoksgAyTWZE=;
 b=ZhY3Aqmao9lT4qX0aI7hU0oLhKWnUcBQQye9F+Wi9j+hGEOlkHCRKReUpS6weriDesLxWI
 5JoSC3xj6OqHVtLV3D3TJIsMiA04gAze97RP+aLNM2LkgT5wBiMwV0Gd9WWun+RceW9aYi
 oIPALoAEa3ukPwuW/1jVgEQK9O3+KnE=
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Program LUT before
 intel_color_commit() if LUT was not previously set
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpPbiAyMC0xMC0yMDE5IDIwOjE5LCBIYW5zIGRlIEdvZWRlIHdyb3RlOgo+IFNpbmNlIGNv
bW1pdCAwNTFhNmQ4ZDNjYTAgKCJkcm0vaTkxNTogTW92ZSBMVVQgcHJvZ3JhbW1pbmcgdG8gaGFw
cGVuIGFmdGVyCj4gdmJsYW5rIHdhaXRzIiksIEkgYW0gc2VlaW5nIGFuIHVnbHkgY29sb3JlZCBm
bGFzaCBvZiB0aGUgZmlyc3QgZmV3IGRpc3BsYXkKPiBsaW5lcyBvbiAyIENoZXJyeSBUcmFpbCBk
ZXZpY2VzIHdoZW4gdGhlIGdhbW1hIHRhYmxlIGdldHMgc2V0IGZvciB0aGUgZmlyc3QKPiB0aW1l
LiBBIGJsdWUgZmxhc2ggb24gYSBHUEQgd2luIGFuZCBhIHllbGxvdyBmbGFzaCBvbiBhbiBBc3Vz
IFQxMDBIQS4KPiAKPiBUaGUgcHJvYmxlbSBpcyB0aGF0IHNpbmNlIHRoaXMgY2hhbmdlLCB0aGUg
TFVUIGlzIHByb2dyYW1tZWQgYWZ0ZXIgdGhlCj4gd3JpdGUgKmFuZCBsYXRjaGluZyogb2YgdGhl
IGRvdWJsZS1idWZmZXJlZCByZWdpc3RlciB3aGljaCBjYXVzZXMgdGhlIExVVAo+IHRvIGJlIHVz
ZWQgc3RhcnRpbmcgYXQgdGhlIG5leHQgZnJhbWUuIFRoaXMgbWVhbnMgdGhhdCB0aGUgb2xkIExV
VCBpcyBzdGlsbAo+IHVzZWQgZm9yIHRoZSBmaXJzdCBjb3VwbGUgb2YgbGluZXMgb2YgdGhlIGRp
c3BsYXkuIElmIG5vIExVVCB3YXMgaW4gdXNlCj4gYmVmb3JlIHRoZW4gdGhlIExVVCByZWdpc3Rl
cnMgbWF5IGNvbnRhaW4gYm9ndXMgdmFsdWVzLiBUaGlzIGxlYWRzIHRvCj4gbWVzc2VkIHVwIGNv
bG9ycyB1bnRpbCB0aGUgbmV3IExVVCB2YWx1ZXMgYXJlIHdyaXR0ZW4uIEF0IGxlYXN0IG9uIENI
VCBEU0kKPiBwYW5lbHMgdGhpcyBjYXVzZXMgbWVzc2VkIHVwIGNvbG9ycyBvbiB0aGUgZmlyc3Qg
ZmV3IGxpbmVzLgo+IAo+IFRoaXMgY29tbWl0IGZpeGVzIHRoaXMgYnkgYWRkaW5nIGEgbG9hZF9s
dXRfYmVmb3JlX2NvbW1pdCBib29sZWFuLAo+IG1vZGlmeWluZyBpbnRlbF9iZWdpbl9jcnRjX2Nv
bW1pdCB0byBsb2FkIHRoZSBsdXRzIGVhcmxpZXIgaWYgdGhpcyBpcyBzZXQsCj4gYW5kIHNldHRp
bmcgdGhpcyBmcm9tIGludGVsX2NvbG9yX2NoZWNrIHdoZW4gYSBMVVQgdGFibGUgd2FzIG5vdCBp
biB1c2UKPiBiZWZvcmUgKGFuZCB0aHVzIG1heSBjb250YWluIGJvZ3VzIHZhbHVlcyksIG9yIHdo
ZW4gdGhlIHRhYmxlIHNpemUKPiBjaGFuZ2VzLgo+IAo+IEZpeGVzOiAwNTFhNmQ4ZDNjYTAgKCJk
cm0vaTkxNTogTW92ZSBMVVQgcHJvZ3JhbW1pbmcgdG8gaGFwcGVuIGFmdGVyIHZibGFuayB3YWl0
cyIpCj4gU2lnbmVkLW9mZi1ieTogSGFucyBkZSBHb2VkZSA8aGRlZ29lZGVAcmVkaGF0LmNvbT4K
ClNvIHRoaXMgZmFpbGVkIHRvIGFwcGx5IGluIENJLCBJIGJhc2VkIHRoaXMgb24gNS40IGFuZCBJ
IGNsZWFybHkgbmVlZCB0byByZWJhc2UKaXQgb24gdG9wIG9mIGRpbnEuIEJlZm9yZSBJIGRvIHRo
aXMgSSB3b3VsZCBhcHByZWNpYXRlIGEgcmV2aWV3IHRob3VnaCwgYXMgSSdtCm5vdCBlbnRpcmVs
eSBzdXJlIHRoYXQgdGhpcyBpcyB0aGUgcmlnaHQgYXBwcm9hY2ggdG8gZml4aW5nIHRoZSBpc3N1
ZS4KClJlZ2FyZHMsCgpIYW5zCgoKCj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NvbG9yLmMgICAgfCAyNiArKysrKysrKysrKysrKysrKysrCj4gICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAgNyArKysrKwo+ICAgLi4u
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgIDMgKysrCj4gICAz
IGZpbGVzIGNoYW5nZWQsIDM2IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCj4gaW5kZXggNzFhMDIwMTQzN2E5Li4wZGE2ZGNjNWJl
YmQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xv
ci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCj4g
QEAgLTEwNTIsNiArMTA1MiwzMiBAQCBpbnRlbF9jb2xvcl9hZGRfYWZmZWN0ZWRfcGxhbmVzKHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSkKPiAgIAkJbmV3X2NydGNfc3Rh
dGUtPnVwZGF0ZV9wbGFuZXMgfD0gQklUKHBsYW5lLT5pZCk7Cj4gICAJfQo+ICAgCj4gKwkvKgo+
ICsJICogTm9ybWFsbHkgd2UgbG9hZCB0aGUgTFVUcyBhZnRlciB2YmxhbmsgLyBhZnRlciB0aGUg
ZG91YmxlLWJ1ZmZlcgo+ICsJICogcmVnaXN0ZXJzIHdyaXR0ZW4gYnkgY29tbWl0IGhhdmUgYmVl
biBsYXRjaGVkLCB0aGlzIGF2b2lkcyBhCj4gKwkgKiBnYW1tYSBjaGFuZ2UgbWlkLXdheSB0aGUg
c2NyZWVuLiBUaGlzIGRvZXMgbWVhbiB0aGF0IHRoZSBmaXJzdAo+ICsJICogZmV3IGxpbmVzIG9m
IHRoZSBkaXNwbGF5IHdpbGwgKHNvbWV0aW1lcykgc3RpbGwgdXNlIHRoZSBvbGQKPiArCSAqIHRh
YmxlLiBUaGlzIGlzIGZpbmUgd2hlbiBjaGFuZ2luZyBhbiBleGlzdGluZyBMVVQsIGJ1dCBpZiB0
aGlzCj4gKwkgKiBpcyB0aGUgZmlyc3QgdGltZSB0aGUgTFVUIGdldHMgbG9hZGVkLCB0aGVuIHRo
ZSBodyBtYXkgY29udGFpbgo+ICsJICogcmFuZG9tIHZhbHVlcywgY2F1c2luZyB0aGUgZmlyc3Qg
bGluZXMgdG8gaGF2ZSBmdW5reSBjb2xvcnMuCj4gKwkgKgo+ICsJICogU28gaWYgd2VyZSBlbmFi
bGluZyBhIExVVCBmb3IgdGhlIGZpcnN0IHRpbWUgb3IgY2hhbmdpbmcgdGhlIHRhYmxlCj4gKwkg
KiBzaXplLCB0aGVuIHdlIG11c3QgZG8gdGhpcyBiZWZvcmUgdGhlIGNvbW1pdCB0byBhdm9pZCBj
b3JydXB0aW5nCj4gKwkgKiB0aGUgZmlyc3QgbGluZXMgb2YgdGhlIGRpc3BsYXkuCj4gKwkgKi8K
PiArCWlmICghb2xkX2NydGNfc3RhdGUtPmJhc2UuZ2FtbWFfbHV0ICYmIG5ld19jcnRjX3N0YXRl
LT5iYXNlLmdhbW1hX2x1dCkKPiArCQluZXdfY3J0Y19zdGF0ZS0+bG9hZF9sdXRfYmVmb3JlX2Nv
bW1pdCA9IHRydWU7Cj4gKwllbHNlIGlmICghb2xkX2NydGNfc3RhdGUtPmJhc2UuZGVnYW1tYV9s
dXQgJiYKPiArCQkgbmV3X2NydGNfc3RhdGUtPmJhc2UuZGVnYW1tYV9sdXQpCj4gKwkJbmV3X2Ny
dGNfc3RhdGUtPmxvYWRfbHV0X2JlZm9yZV9jb21taXQgPSB0cnVlOwo+ICsJZWxzZSBpZiAob2xk
X2NydGNfc3RhdGUtPmJhc2UuZ2FtbWFfbHV0ICYmCj4gKwkJIG5ld19jcnRjX3N0YXRlLT5iYXNl
LmdhbW1hX2x1dCAmJgo+ICsJCSBsdXRfaXNfbGVnYWN5KG9sZF9jcnRjX3N0YXRlLT5iYXNlLmdh
bW1hX2x1dCkgIT0KPiArCQkJbHV0X2lzX2xlZ2FjeShuZXdfY3J0Y19zdGF0ZS0+YmFzZS5nYW1t
YV9sdXQpKQo+ICsJCW5ld19jcnRjX3N0YXRlLT5sb2FkX2x1dF9iZWZvcmVfY29tbWl0ID0gdHJ1
ZTsKPiArCWVsc2UKPiArCQluZXdfY3J0Y19zdGF0ZS0+bG9hZF9sdXRfYmVmb3JlX2NvbW1pdCA9
IGZhbHNlOwo+ICsKPiAgIAlyZXR1cm4gMDsKPiAgIH0KPiAgIAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggYWE1NGJiMjI3OTZkLi4yMTQ0
MmIwZGQxMzQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYwo+IEBAIC0xNDAzMyw2ICsxNDAzMyw3IEBAIHN0YXRpYyB2b2lkIGludGVsX2F0b21p
Y19jb21taXRfdGFpbChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKPiAgIAlmb3Jf
ZWFjaF9uZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0YywgbmV3X2NydGNfc3RhdGUs
IGkpIHsKPiAgIAkJaWYgKG5ld19jcnRjX3N0YXRlLT5iYXNlLmFjdGl2ZSAmJgo+ICAgCQkgICAg
IW5lZWRzX21vZGVzZXQobmV3X2NydGNfc3RhdGUpICYmCj4gKwkJICAgICFuZXdfY3J0Y19zdGF0
ZS0+bG9hZF9sdXRfYmVmb3JlX2NvbW1pdCAmJgo+ICAgCQkgICAgKG5ld19jcnRjX3N0YXRlLT5i
YXNlLmNvbG9yX21nbXRfY2hhbmdlZCB8fAo+ICAgCQkgICAgIG5ld19jcnRjX3N0YXRlLT51cGRh
dGVfcGlwZSkpCj4gICAJCQlpbnRlbF9jb2xvcl9sb2FkX2x1dHMobmV3X2NydGNfc3RhdGUpOwo+
IEBAIC0xNDUyOSw2ICsxNDUzMCwxMiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9iZWdpbl9jcnRjX2Nv
bW1pdChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKPiAgIAkJaW50ZWxfYXRvbWlj
X2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7Cj4gICAJYm9vbCBtb2Rlc2V0ID0gbmVl
ZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0ZSk7Cj4gICAKPiArCWlmICghbW9kZXNldCAmJgo+ICsJ
ICAgIG5ld19jcnRjX3N0YXRlLT5sb2FkX2x1dF9iZWZvcmVfY29tbWl0ICYmCj4gKwkgICAgKG5l
d19jcnRjX3N0YXRlLT5iYXNlLmNvbG9yX21nbXRfY2hhbmdlZCB8fAo+ICsJICAgICBuZXdfY3J0
Y19zdGF0ZS0+dXBkYXRlX3BpcGUpKQo+ICsJCWludGVsX2NvbG9yX2xvYWRfbHV0cyhuZXdfY3J0
Y19zdGF0ZSk7Cj4gKwo+ICAgCS8qIFBlcmZvcm0gdmJsYW5rIGV2YXNpb24gYXJvdW5kIGNvbW1p
dCBvcGVyYXRpb24gKi8KPiAgIAlpbnRlbF9waXBlX3VwZGF0ZV9zdGFydChuZXdfY3J0Y19zdGF0
ZSk7Cj4gICAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfdHlwZXMuaAo+IGluZGV4IDQ0OWFiYWVhNjE5Zi4uYmJkZWIzYmU2NGU2IDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5o
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVz
LmgKPiBAQCAtOTczLDYgKzk3Myw5IEBAIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlIHsKPiAgIAkv
KiBlbmFibGUgcGlwZSBjc2M/ICovCj4gICAJYm9vbCBjc2NfZW5hYmxlOwo+ICAgCj4gKwkvKiBs
b2FkIGx1dHMgYmVmb3JlIGNvbG9yIHNldHRpbmdzIGNvbW1pdCAqLwo+ICsJYm9vbCBsb2FkX2x1
dF9iZWZvcmVfY29tbWl0Owo+ICsKPiAgIAkvKiBEaXNwbGF5IFN0cmVhbSBjb21wcmVzc2lvbiBz
dGF0ZSAqLwo+ICAgCXN0cnVjdCB7Cj4gICAJCWJvb2wgY29tcHJlc3Npb25fZW5hYmxlOwo+IAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
