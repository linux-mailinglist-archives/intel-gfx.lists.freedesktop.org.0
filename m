Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD08B36143
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2019 18:28:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A484989D43;
	Wed,  5 Jun 2019 16:28:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAE5D89D43
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2019 16:28:46 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id p26so6665929edr.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Jun 2019 09:28:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=texzsntjPS9Je7YpaNLDNEXRJq4Tev+pqkzAMfzQDk8=;
 b=QutGwKTMWLuDkkEhX9aIQOLMqxUsQGlBYZ3ood/AjzGDNP5idFWpv7l9Np3MFDq5OC
 fjxaPnbw9h3tu2tVVCDDwgcCHmG3ZPqSV7M9wAP93UwjFO5ZCUaaP4M/DT7fT7hcZ8u3
 scbKg9xMhj6rrYOM5KZVpVrHISGCXqHsYfqUHMNsV61cmqFfgy9GlLirhurAyuWtvurg
 k3mSFCoYZVO+0btml0ydHa2H/uvXllPPHnuvX+ujv1U4C5nDxc2o4YtiPCEbNzqWFfgr
 u9OOLlvEdxWp9CQbzLgglwJrf5NUfc0zUnoPjrOPj/CMVqHbrWJKJQmtcnOCc2SuqZLb
 zv/w==
X-Gm-Message-State: APjAAAXuQAtfkch7c64mu5xoW0alzpXFtTy0J1SyWJ62UAN36ntTOZ5b
 SBZH3xPr8YJO0RYeDHmESclepA==
X-Google-Smtp-Source: APXvYqwNWYkv9AscaU9vSqP5ICOzHT3WGsx1ZaVgmSxe1NnF9O1OaJjhQVtIZJ3s7VgRkv5Ckxs7Tg==
X-Received: by 2002:a05:6402:1851:: with SMTP id
 v17mr28574191edy.3.1559752125561; 
 Wed, 05 Jun 2019 09:28:45 -0700 (PDT)
Received: from shalem.localdomain (84-106-84-65.cable.dynamic.v4.ziggo.nl.
 [84.106.84.65])
 by smtp.gmail.com with ESMTPSA id b1sm34003ejo.9.2019.06.05.09.28.43
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 09:28:44 -0700 (PDT)
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20190524174028.21659-1-hdegoede@redhat.com>
 <20190524174028.21659-2-hdegoede@redhat.com>
 <20190604172936.GH5942@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <5961343b-f5ed-d55c-689d-0ebc2ee9c661@redhat.com>
Date: Wed, 5 Jun 2019 18:28:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190604172936.GH5942@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dsi: Use a fuzzy check for
 burst mode clock check
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
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel.vetter@intel.com>,
 stable@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpUaGFuayB5b3UgZm9yIHRoZSByZXZpZXdzLgoKT24gMDQtMDYtMTkgMTk6MjksIFZpbGxl
IFN5cmrDpGzDpCB3cm90ZToKPiBPbiBGcmksIE1heSAyNCwgMjAxOSBhdCAwNzo0MDoyOFBNICsw
MjAwLCBIYW5zIGRlIEdvZWRlIHdyb3RlOgo+PiBQcmlvciB0byB0aGlzIGNvbW1pdCB3ZSBmYWls
IHRvIGluaXQgdGhlIERTSSBwYW5lbCBvbiB0aGUgR1BEIE1pY3JvUEM6Cj4+IGh0dHBzOi8vd3d3
LmluZGllZ29nby5jb20vcHJvamVjdHMvZ3BkLW1pY3JvcGMtNi1pbmNoLWhhbmRoZWxkLWluZHVz
dHJ5LWxhcHRvcCMvCj4+Cj4+IFRoZSBwcm9ibGVtIGlzIGludGVsX2RzaV92YnRfaW5pdCgpIGZh
aWxpbmcgd2l0aCB0aGUgZm9sbG93aW5nIGVycm9yOgo+PiAqRVJST1IqIEJ1cnN0IG1vZGUgZnJl
cSBpcyBsZXNzIHRoYW4gY29tcHV0ZWQKPj4KPj4gVGhlIHBjbGsgaW4gdGhlIFZCVCBwYW5lbCBt
b2RlbGluZSBpcyA3MDAwMCwgdG9nZXRoZXIgd2l0aCAyNCBicHAgYW5kCj4+IDQgbGluZXMgdGhp
cyByZXN1bHRzIGluIGEgYml0cmF0ZSB2YWx1ZSBvZiA3MDAwMCAqIDI0IC8gNCA9IDQyMDAwMC4K
Pj4gQnV0IHRoZSB0YXJnZXRfYnVyc3RfbW9kZV9mcmVxIGluIHRoZSBWQlQgaXMgNDE4MDAwLgo+
Pgo+PiBUaGlzIGNvbW1pdCB3b3JrcyBhcm91bmQgdGhpcyBwcm9ibGVtIGJ5IGFkZGluZyBhbiBp
bnRlbF9mdXp6eV9jbG9ja19jaGVjawo+PiB3aGVuIHRhcmdldF9idXJzdF9tb2RlX2ZyZXEgPCBi
aXRyYXRlIGFuZCBzZXR0aW5nIHRhcmdldF9idXJzdF9tb2RlX2ZyZXEgdG8KPj4gYml0cmF0ZSB3
aGVuIHRoYXQgY2hlY2tzIHN1Y2NlZWRzLCBmaXhpbmcgdGhlIHBhbmVsIG5vdCB3b3JraW5nLgo+
Pgo+PiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+PiBTaWduZWQtb2ZmLWJ5OiBIYW5zIGRl
IEdvZWRlIDxoZGVnb2VkZUByZWRoYXQuY29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9kc2lfdmJ0LmMgfCAxMSArKysrKysrKysrKwo+PiAgIDEgZmlsZSBjaGFuZ2Vk
LCAxMSBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kc2lfdmJ0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kc2lfdmJ0LmMK
Pj4gaW5kZXggMDIyYmY1OTQxOGRmLi5hMmE5YjlkMGVlYWEgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2RzaV92YnQuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9kc2lfdmJ0LmMKPj4gQEAgLTg5NSw2ICs4OTUsMTcgQEAgYm9vbCBpbnRlbF9k
c2lfdmJ0X2luaXQoc3RydWN0IGludGVsX2RzaSAqaW50ZWxfZHNpLCB1MTYgcGFuZWxfaWQpCj4+
ICAgCQlpZiAobWlwaV9jb25maWctPnRhcmdldF9idXJzdF9tb2RlX2ZyZXEpIHsKPj4gICAJCQl1
MzIgYml0cmF0ZSA9IGludGVsX2RzaV9iaXRyYXRlKGludGVsX2RzaSk7Cj4+ICAgCj4+ICsJCQkv
Kgo+PiArCQkJICogU29tZXRpbWVzIHRoZSBWQlQgY29udGFpbnMgYSBzbGlnaHRseSBsb3dlciBj
bG9jaywKPj4gKwkJCSAqIHRoZW4gdGhlIGJpdHJhdGUgd2UgaGF2ZSBjYWxjdWxhdGVkLCBpbiB0
aGlzIGNhc2UKPj4gKwkJCSAqIGp1c3QgcmVwbGFjZSBpdCB3aXRoIHRoZSBjYWxjdWxhdGVkIGJp
dHJhdGUuCj4+ICsJCQkgKi8KPj4gKwkJCWlmIChtaXBpX2NvbmZpZy0+dGFyZ2V0X2J1cnN0X21v
ZGVfZnJlcSA8IGJpdHJhdGUgJiYKPj4gKwkJCSAgICBpbnRlbF9mdXp6eV9jbG9ja19jaGVjaygK
Pj4gKwkJCQkJbWlwaV9jb25maWctPnRhcmdldF9idXJzdF9tb2RlX2ZyZXEsCj4+ICsJCQkJCWJp
dHJhdGUpKQo+PiArCQkJCW1pcGlfY29uZmlnLT50YXJnZXRfYnVyc3RfbW9kZV9mcmVxID0gYml0
cmF0ZTsKPiAKPiBNYXliZSBzaG91bGQgc3F1YXNoIHRoZXNlIHBhdGNoZXMgdG9nZXRoZXIgdG8g
bWFrZSB0aGUgc3RhYmxlCj4gYmFja3BvcnQgbGVzcyBwYWluZnVsPwoKR29vZCBpZGVhLCBkb25l
LgoKPiBBbnl3YXlzLCBzZWVtcyBPSyB0byBtZS4KPiBSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFuZCBwdXNoZWQgd2l0aCB5b3Vy
IFJldmlld2VkLWJ5LgoKUmVnYXJkcywKCkhhbnMKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
