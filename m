Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C42168EB9
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Feb 2020 13:10:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BC086E479;
	Sat, 22 Feb 2020 12:10:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCC596E87C
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Feb 2020 12:10:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582373414;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CevzRXErN2zEQ9b2Zyu+CZDJ5DRbPZGXJYEPCN9AQEA=;
 b=bnTbFt7aZu0GqBAzJdD1A/eSEMrXbqkGyCQ/9UY93001NCr9VcYJEdFhrkH6SK3eMc2Y1P
 yfLJWPWZuTwr8idc1Y7qDUORFSBmHqE9wb7ktWcKCIx+fUH9lDY7jwwNmw2SfbzUTbcQid
 b7m5yHVqolDbfYJVG86IygboOBpTkmE=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-295-dFUiVruPMlGjGYS17ZYloA-1; Sat, 22 Feb 2020 07:10:10 -0500
X-MC-Unique: dFUiVruPMlGjGYS17ZYloA-1
Received: by mail-wr1-f69.google.com with SMTP id t3so2389946wrm.23
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Feb 2020 04:10:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ug4aGYpQ+GbkJPu8s5R856wxIte6vJIxE6SbWUO12r0=;
 b=ZD4W5IbeIUO8WFOPAzeOijpdqZ2+SybIrcbQcDMTtevwzYh0NR+pU7VZ8MNr/aT7k9
 pWXaLqxejVr0tNT9WEPRYzTbZ7eKCzGkq4Y64K8UXOsJXNXaVDuQh05JTQIMI6oCu8uP
 uA0xLqmb0GczG5qz3xYVao5otPpGhlAvoevNafP5Ek9QkeySnA+VLi/TjuzKotGHfcUT
 Ug7c8ticCvjTIpMp1BPVjlza5eT/URKOHtzL8SQ9aLbR0SLFqhty1QeXvadaSKaUfzzK
 +CwZfzTuOW8Fy1qANdq4d/nI+tIoFcHlLxF7WL2XmJNiM+7+ZbYvqX8GG24cocBfMLK+
 qYrQ==
X-Gm-Message-State: APjAAAXbE0y8o5yfkz2rgBTBhBIGpzTNucLiM7tJIPoyTx79W+SxQ6Tp
 dL7W4FU90NwVKjaTjRG185xUI/RA5iTUgRwGr9r7GMSzxxDqwo9/Hg9GRThw0nwAqwynuaWmvvz
 Cd3UeRseIKAyM6gTMdTG8H2dIVP13
X-Received: by 2002:a05:6000:108b:: with SMTP id
 y11mr55999985wrw.187.1582373403358; 
 Sat, 22 Feb 2020 04:10:03 -0800 (PST)
X-Google-Smtp-Source: APXvYqwiusljWsbxncxTlhtoZigjfw0n6EoIgKD8I5dmcwkFYT0a1Y7T6QdxVgujR2TOCBKo/uuThg==
X-Received: by 2002:a05:6000:108b:: with SMTP id
 y11mr55999958wrw.187.1582373403092; 
 Sat, 22 Feb 2020 04:10:03 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-7a91-34f6-66f7-d87c.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:7a91:34f6:66f7:d87c])
 by smtp.gmail.com with ESMTPSA id u23sm8523729wmu.14.2020.02.22.04.10.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 22 Feb 2020 04:10:01 -0800 (PST)
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
 <20200221210319.2245170-43-daniel.vetter@ffwll.ch>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <8bb30a39-a1f0-1624-6a2e-055f2b9a8722@redhat.com>
Date: Sat, 22 Feb 2020 13:10:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200221210319.2245170-43-daniel.vetter@ffwll.ch>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH 42/51] drm/gm12u320: More drmm_
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
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpPbiAyLzIxLzIwIDEwOjAzIFBNLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+IFRoZSBkcm1f
bW9kZV9jb25maWdfY2xlYW51cCBjYWxsIHdlIGNhbiBkcm9wLCBhbmQgYWxsIHRoZSBhbGxvY2F0
aW9ucwo+IHdlIGNhbiBzd2l0Y2ggb3ZlciB0byBkcm1tX2t6YWxsb2MuIFVuZm9ydHVuYXRlbHkg
dGhlIHdvcmsgcXVldWUgaXMKPiBzdGlsbCBwcmVzZW50LCBzbyBjYW4ndCBnZXQgcmlkIG9mIHRo
ZSBkcm1fZHJpdmVyLT5yZWxlYXNlIGZ1bmN0aW9uCj4gb3V0cmlnaHQuCj4gCj4gU2lnbmVkLW9m
Zi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Cj4gQ2M6IEhhbnMg
ZGUgR29lZGUgPGhkZWdvZWRlQHJlZGhhdC5jb20+Cj4gQ2M6ICJOb3JhbGYgVHLDuG5uZXMiIDxu
b3JhbGZAdHJvbm5lcy5vcmc+CgpQYXRjaCBsb29rcyBnb29kIHRvIG1lOgoKUmV2aWV3ZWQtYnk6
IEhhbnMgZGUgR29lZGUgPGhkZWdvZWRlQHJlZGhhdC5jb20+CgpSZWdhcmRzLAoKSGFucwoKCgo+
IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL3RpbnkvZ20xMnUzMjAuYyB8IDE4ICsrKysrKystLS0t
LS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25z
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90aW55L2dtMTJ1MzIwLmMgYi9k
cml2ZXJzL2dwdS9kcm0vdGlueS9nbTEydTMyMC5jCj4gaW5kZXggMzkyOGY2OWJiZDNkLi41YmQy
NmZjNmZhZmEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3RpbnkvZ20xMnUzMjAuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS90aW55L2dtMTJ1MzIwLmMKPiBAQCAtMTYwLDcgKzE2MCw3
IEBAIHN0YXRpYyBpbnQgZ20xMnUzMjBfdXNiX2FsbG9jKHN0cnVjdCBnbTEydTMyMF9kZXZpY2Ug
KmdtMTJ1MzIwKQo+ICAgCWludCBpLCBibG9ja19zaXplOwo+ICAgCWNvbnN0IGNoYXIgKmhkcjsK
PiAgIAo+IC0JZ20xMnUzMjAtPmNtZF9idWYgPSBrbWFsbG9jKENNRF9TSVpFLCBHRlBfS0VSTkVM
KTsKPiArCWdtMTJ1MzIwLT5jbWRfYnVmID0gZHJtbV9rbWFsbG9jKCZnbTEydTMyMC0+ZGV2LCBD
TURfU0laRSwgR0ZQX0tFUk5FTCk7Cj4gICAJaWYgKCFnbTEydTMyMC0+Y21kX2J1ZikKPiAgIAkJ
cmV0dXJuIC1FTk9NRU07Cj4gICAKPiBAQCAtMTczLDcgKzE3Myw4IEBAIHN0YXRpYyBpbnQgZ20x
MnUzMjBfdXNiX2FsbG9jKHN0cnVjdCBnbTEydTMyMF9kZXZpY2UgKmdtMTJ1MzIwKQo+ICAgCQkJ
aGRyID0gZGF0YV9ibG9ja19oZWFkZXI7Cj4gICAJCX0KPiAgIAo+IC0JCWdtMTJ1MzIwLT5kYXRh
X2J1ZltpXSA9IGt6YWxsb2MoYmxvY2tfc2l6ZSwgR0ZQX0tFUk5FTCk7Cj4gKwkJZ20xMnUzMjAt
PmRhdGFfYnVmW2ldID0gZHJtbV9remFsbG9jKCZnbTEydTMyMC0+ZGV2LAo+ICsJCQkJCQkgICAg
IGJsb2NrX3NpemUsIEdGUF9LRVJORUwpOwo+ICAgCQlpZiAoIWdtMTJ1MzIwLT5kYXRhX2J1Zltp
XSkKPiAgIAkJCXJldHVybiAtRU5PTUVNOwo+ICAgCj4gQEAgLTE5MiwxNSArMTkzLDggQEAgc3Rh
dGljIGludCBnbTEydTMyMF91c2JfYWxsb2Moc3RydWN0IGdtMTJ1MzIwX2RldmljZSAqZ20xMnUz
MjApCj4gICAKPiAgIHN0YXRpYyB2b2lkIGdtMTJ1MzIwX3VzYl9mcmVlKHN0cnVjdCBnbTEydTMy
MF9kZXZpY2UgKmdtMTJ1MzIwKQo+ICAgewo+IC0JaW50IGk7Cj4gLQo+ICAgCWlmIChnbTEydTMy
MC0+ZmJfdXBkYXRlLndvcmtxKQo+ICAgCQlkZXN0cm95X3dvcmtxdWV1ZShnbTEydTMyMC0+ZmJf
dXBkYXRlLndvcmtxKTsKPiAtCj4gLQlmb3IgKGkgPSAwOyBpIDwgR00xMlUzMjBfQkxPQ0tfQ09V
TlQ7IGkrKykKPiAtCQlrZnJlZShnbTEydTMyMC0+ZGF0YV9idWZbaV0pOwo+IC0KPiAtCWtmcmVl
KGdtMTJ1MzIwLT5jbWRfYnVmKTsKPiAgIH0KPiAgIAo+ICAgc3RhdGljIGludCBnbTEydTMyMF9t
aXNjX3JlcXVlc3Qoc3RydWN0IGdtMTJ1MzIwX2RldmljZSAqZ20xMnUzMjAsCj4gQEAgLTYzNiw3
ICs2MzAsNiBAQCBzdGF0aWMgdm9pZCBnbTEydTMyMF9kcml2ZXJfcmVsZWFzZShzdHJ1Y3QgZHJt
X2RldmljZSAqZGV2KQo+ICAgCXN0cnVjdCBnbTEydTMyMF9kZXZpY2UgKmdtMTJ1MzIwID0gZGV2
LT5kZXZfcHJpdmF0ZTsKPiAgIAo+ICAgCWdtMTJ1MzIwX3VzYl9mcmVlKGdtMTJ1MzIwKTsKPiAt
CWRybV9tb2RlX2NvbmZpZ19jbGVhbnVwKGRldik7Cj4gICB9Cj4gICAKPiAgIERFRklORV9EUk1f
R0VNX0ZPUFMoZ20xMnUzMjBfZm9wcyk7Cj4gQEAgLTY5Myw3ICs2ODYsMTAgQEAgc3RhdGljIGlu
dCBnbTEydTMyMF91c2JfcHJvYmUoc3RydWN0IHVzYl9pbnRlcmZhY2UgKmludGVyZmFjZSwKPiAg
IAlkZXYtPmRldl9wcml2YXRlID0gZ20xMnUzMjA7Cj4gICAJZHJtbV9hZGRfZmluYWxfa2ZyZWUo
ZGV2LCBnbTEydTMyMCk7Cj4gICAKPiAtCWRybV9tb2RlX2NvbmZpZ19pbml0KGRldik7Cj4gKwly
ZXQgPSBkcm1fbW9kZV9jb25maWdfaW5pdChkZXYpOwo+ICsJaWYgKHJldCkKPiArCQlnb3RvIGVy
cl9wdXQ7Cj4gKwo+ICAgCWRldi0+bW9kZV9jb25maWcubWluX3dpZHRoID0gR00xMlUzMjBfVVNF
Ul9XSURUSDsKPiAgIAlkZXYtPm1vZGVfY29uZmlnLm1heF93aWR0aCA9IEdNMTJVMzIwX1VTRVJf
V0lEVEg7Cj4gICAJZGV2LT5tb2RlX2NvbmZpZy5taW5faGVpZ2h0ID0gR00xMlUzMjBfSEVJR0hU
Owo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
