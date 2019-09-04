Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3FAA85A9
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 16:31:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4A2089C1E;
	Wed,  4 Sep 2019 14:31:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com
 [IPv6:2607:f8b0:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE62989C14
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 14:31:47 +0000 (UTC)
Received: by mail-oi1-x242.google.com with SMTP id o6so15992943oic.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Sep 2019 07:31:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=iPyy1UZfnABf00zz4AoBhzaKUklUsdjZIhZeVnvuDSk=;
 b=aXL3e8wUSLqukGvh9BbYrpGMOHNKCLQeQ+AvhX9b5djd0ysJhWn1Qu22Lz6Uyu9J/2
 PvcrLfxJo+fpmB7tuZVHj/w8oy8X3izZkKB9C9leRzLD6WAxLiL5EoGFemzAO7KZRV2i
 IkHLBaoM5ZNJU7LP9Yifp1M9qWzgy5ZViKCaEVSRh1au/RMPg+wovMEPrbcF0fERxpMQ
 xI+F1GCbiKAx8N3wVzksobVWX7fK7TdZyHOkRsTZn48RhBsW4JuVgVheV/xok+MeJhvj
 0Avlyk+hC959iH4F0M1lrHKemjHqxkLtqqKlVKwqkW6Xi/LCjOEP3QXPD5I2kA/7QIzw
 zsTw==
X-Gm-Message-State: APjAAAWd5MTSWA7rZ1MecT/Ha+KVhXdKIs2XcMXwLfDKROJhKxRmvXzg
 e5Tc06Bw1n7MDKsixb03HQ4IH+yMXUgeD/ts6jpgDA==
X-Google-Smtp-Source: APXvYqw2Juz4gStBckgnoV8lAJLDRFW/hS588prj0JHiK9MgGoQJue95ELzOnceLrdabvzcRZaMJzkMgzAKFIfFRyrQ=
X-Received: by 2002:a05:6808:206:: with SMTP id
 l6mr3651562oie.110.1567607506967; 
 Wed, 04 Sep 2019 07:31:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190820170631.26570-1-daniel.vetter@ffwll.ch>
 <20190820195451.15671-1-daniel.vetter@ffwll.ch>
 <055acb8e-8ba4-52b7-8cba-a5fef504e95e@intel.com>
 <20190821135537.GI5942@intel.com>
 <CAKMK7uFBXmDXA32dUhfvkxqxYDidbt0R6rowXBk7BwUBMU9qqA@mail.gmail.com>
 <CAOFGe97==LTH0pUh2idtA0SqQLf=+Tq90h0cBVwhv4gkHLq-7Q@mail.gmail.com>
 <e01a7b6890346444f3fa3f78cca1a2315412a37a.camel@intel.com>
 <156702323116.15406.18211831116094527542@skylake-alporthouse-com>
 <6c22439c4f38d0be6f8183bbe279c9e0f3db983b.camel@intel.com>
 <20190829065004.GG2112@phenom.ffwll.local>
 <f3057a98459f5ace5d89b0ae981d0dfcf61de197.camel@intel.com>
 <CAKMK7uH2XAKf+ninB9FySYCzC6ZLrJtb8AXXRmzwxrWdBPZYjg@mail.gmail.com>
In-Reply-To: <CAKMK7uH2XAKf+ninB9FySYCzC6ZLrJtb8AXXRmzwxrWdBPZYjg@mail.gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 4 Sep 2019 16:31:35 +0200
Message-ID: <CAKMK7uEG8JrsMjqgynf37q2CmpU65xS==JrwynDf45tnzgMuFg@mail.gmail.com>
To: "Souza, Jose" <jose.souza@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=iPyy1UZfnABf00zz4AoBhzaKUklUsdjZIhZeVnvuDSk=;
 b=X42QGMsq/yAG8fZKv6OHzrSqLPDgICF7plArunbaEBOw62F74RO8BAO2+VwfoovH6s
 pj8Z3p/9N9kRER6iQQWYqAK4RpgT9JvSeeoWaJSPAUISG5wUhH6ei63ToSAnWejudgDA
 TvwnikVmWtok+L43YknRxExLsMixxhoOTd4UI=
Subject: Re: [Intel-gfx] [PATCH] drm/i915: disable set/get_tiling ioctl on
 gen12+
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "kenneth@whitecape.org" <kenneth@whitecape.org>, "Auld,
 Matthew" <matthew.auld@intel.com>, "Vetter, Daniel" <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBTZXAgNCwgMjAxOSBhdCA0OjI5IFBNIERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZnds
bC5jaD4gd3JvdGU6Cj4KPiBPbiBUdWUsIFNlcCAzLCAyMDE5IGF0IDk6MjEgUE0gU291emEsIEpv
c2UgPGpvc2Uuc291emFAaW50ZWwuY29tPiB3cm90ZToKPiA+Cj4gPiBPbiBUaHUsIDIwMTktMDgt
MjkgYXQgMDg6NTAgKzAyMDAsIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gPiA+IE9uIFdlZCwgQXVn
IDI4LCAyMDE5IGF0IDA4OjMxOjI3UE0gKzAwMDAsIFNvdXphLCBKb3NlIHdyb3RlOgo+ID4gPiA+
IE9uIFdlZCwgMjAxOS0wOC0yOCBhdCAyMToxMyArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+
ID4gPiA+ID4gUXVvdGluZyBTb3V6YSwgSm9zZSAoMjAxOS0wOC0yOCAyMToxMTo1MykKPiA+ID4g
PiA+ID4gUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50
ZWwuY29tPgo+ID4gPiA+ID4KPiA+ID4gPiA+IEl0J3MgdXNpbmcgYSBub24tc3RhbmRhcmQgZm9y
IGk5MTUgZXJyb3IgY29kZSwgYW5kIGdldF90aWxpbmcgaXMKPiA+ID4gPiA+IG5vdAo+ID4gPiA+
Cj4gPiA+ID4gSHV1bSBzaG91bGQgaXQgdXNlIEVOT1RTVVBQIHRoZW4/IQo+ID4gPgo+ID4gPiBo
dHRwczovL2RyaS5mcmVlZGVza3RvcC5vcmcvZG9jcy9kcm0vZ3B1L2RybS11YXBpLmh0bWwjcmVj
b21tZW5kZWQtaW9jdGwtcmV0dXJuLXZhbHVlcwo+ID4gPgo+ID4gPiBQZXIgYWJvdmUgImZlYXR1
cmUgbm90IHN1cHBvcnRlZCIgLT4gRU9QTk9UU1VQUC4KPiA+Cj4gPiBCdXQgbGlrZSBDaHJpcyBz
YWlkIHdlIGFyZSBub3QgdXNpbmcgRU9QTk9UU1VQUCBpbiBpOTE1LAo+ID4gaTkxNV9wZXJmX29w
ZW5faW9jdGwoKSBhbmQgb3RoZXIgMiBwZXJmIGlvY3RsIHVzZXMgRU5PU1VQUCwgc2hvdWxkIHdl
Cj4gPiBjb252ZXJ0IHRob3NlIHRvIEVPUE5PVFNVUFA/Cj4KPiAkIGdpdCBncmVwIEVPUE5PVFNV
UCAtLSBkcml2ZXJzL2dwdS9kcm0vIHwgd2MgLWwKPiAxMTQKPiAkIGdpdCBncmVwIEVOT1RTVVAg
LS0gZHJpdmVycy9ncHUvZHJtLyB8IHdjIC1sCj4gMzIKCk5vdGUgdGhhdCBtb3N0IG9mIHRoZSBF
Tk9UU1VQIGlzIGluIGRyaXZlcnMsIGZvciB0aGUgZHJtIGNvcmUgaXQncwpldmVuIG1vcmUgY2xl
YXI6CgokIGdpdCBncmVwIEVPUE5PVFNVUCAtLSBkcml2ZXJzL2dwdS9kcm0vKmMgfCB3YyAtbAo4
MwokIGdpdCBncmVwIEVOT1RTVVAgLS0gZHJpdmVycy9ncHUvZHJtLypjIHwgd2MgLWwKNQoKQ2hl
ZXJzLCBEYW5pZWwKCj4gUGx1cyBpOTE1X3BtdS5jIGFsc28gaGFzIGEgdXNlIG9mIEVPUE5PVFNV
UFAgYWxyZWFkeS4KPgo+IEZ1cnRoZXJtb3JlIHRoZSBoZWFkZXIgZm9yIEVPUE5PVFNVUCBoYXMg
YSBwcmV0dHkgY2xlYXIgY29tbWVudDoKPgo+IC8qIERlZmluZWQgZm9yIHRoZSBORlN2MyBwcm90
b2NvbCAqLwo+Cj4gQWJvdmUgdGhlIGVudG9yZSBibG9jayBvZiBlcnJvciBjb2RlcyBjb250YWlu
aW5nIEVOT1RTVVBQLgo+Cj4gU28gZ2l2ZW4gYWxsIHRoYXQsIHBsdXMgdGhhdCB3ZSd2ZSBkZWNp
ZGVkIHRvIGdvIHdpdGggRU9QTk9UU1VQUCBhcwo+IHRoZSBkcm0td2lkZSByZWNvbW1lbmRhdGlv
bjogRU9QTk9UU1VQUCBpdCBpcy4KPgo+IElmIHlvdSBkaXNhZ3JlZSwgSSB0aGluayB0aGVyZSdz
IGEgcHJldHR5IHN1YnN0YW50aWFsIHBhdGNoIHNlcmllcyBmb3IKPiB5b3UgdG8gdHlwZSBhbmQg
Zml4IHRoZSBkb2NzIGFuZCBtb3N0IHVzZXJzIHBsdXMgZXhwbGFpbiB3aHkgd2Ugc2hvdWxkCj4g
dXNlIGFuIG5zZi1zcGVjaWZpYyBlcnJvciBjb2RlICh3aGljaCBpc24ndCBtdWNoIHdvcnNlIHRo
YW4gdGhlCj4gYWJ1c2UvcmVpbnRlcnByZXRhdGlvbiB3ZSBjdXJyZW50bHkgZG8sIGJ1dCBzdGls
bCBJIHRoaW5rIGl0J3MgYSBiaXQKPiBtb3JlIGJlbmRpbmcgb2YgZXJybm8gY29kZSBpbnRlbnRp
b25zKS4KPgo+IENoZWVycywgRGFuaWVsCj4KPgo+Cj4gPgo+ID4gPgo+ID4gPiA+ID4gYWZmZWN0
ZWQsIGl0IHdpbGwgYWx3YXlzIHJldHVybiBMSU5FQVIuIFlvdSBjYW5ub3Qgc2V0IHRpbGluZyBh
cwo+ID4gPiA+Cj4gPiA+ID4gRm9sbG93aW5nIHRoaXMgc2V0X3RpbGluZygpIExJTkVBUiBzaG91
bGQgYmUgYWxsb3dlZCB0b28uCj4gPiA+ID4gSSBwcmVmZXIgdGhlIGN1cnJlbnQgYXBwcm9hY2gg
b2YgcmV0dXJuaW5nIGVycm9yLgo+ID4gPgo+ID4gPiBJJ20gbm90IHNlZWluZyB0aGUgdmFsdWUg
aW4ga2VlcGluZyBnZXRfdGlsaW5nIHN1cHBvcnRlZC4gRWl0aGVyCj4gPiA+IHVzZXJzcGFjZQo+
ID4gPiBzdGlsbCB1c2VzIHRoZSBsZWdhY3kgYmFja2hhbm5lbCBhbmQgZHJpMiwgaW4gd2hpY2gg
Y2FzZSBpdCBuZWVkcyB0bwo+ID4gPiBiZQo+ID4gPiBmaXhlZCBubyBtYXR0ZXIgd2hhdC4gT3Ig
aXQncyB1c2luZyBtb2RpZmllcnMsIGluIHdoaWNoIGNhc2UgdGhpcyBpcwo+ID4gPiBkZWFkCj4g
PiA+IGNvZGUuIE9ubHkgb3RoZXIgdXNlciBJIGNhbiB0aGluayBvZiBpcyB0YWtlb3ZlciBmb3Ig
ZmFzdGJvb3QsIGJ1dCBpZgo+ID4gPiB5b3UKPiA+ID4gZ2V0IGFueXRoaW5nIGVsc2UgdGhhbiB1
bnRpbGVkIGl0J3MgYWxzbyBicm9rZW4gKHdlIGRvbid0IGhhdmUgYW4KPiA+ID4gaW9jdGwgdG8K
PiA+ID4gcmVhZCBvdXQgdGhlIG1vZGlmaWVycywgaGVjayBldmVuIGFsbCB0aGUgcGxhbmVzLCB0
aGVyZSdzIG5vIGdldGZiMikuCj4gPiA+Cj4gPiA+IFNvIHJlYWxseSBub3Qgc2VlaW5nIHRoZSBw
b2ludCBpbiBrZWVwaW5nIHRoYXQgd29ya2luZy4KPiA+ID4gLURhbmllbAo+Cj4KPgo+IC0tCj4g
RGFuaWVsIFZldHRlcgo+IFNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgo+ICs0
MSAoMCkgNzkgMzY1IDU3IDQ4IC0gaHR0cDovL2Jsb2cuZmZ3bGwuY2gKCgoKLS0gCkRhbmllbCBW
ZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCis0MSAoMCkgNzkgMzY1
IDU3IDQ4IC0gaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
