Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE8C3449B1
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 16:51:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C863589EBB;
	Mon, 22 Mar 2021 15:51:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7214F89EBB
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 15:51:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1616428292;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kO5Xrlmz7hmF+NFPKjBSQVePMMPDWNdtb/VyLp7n+tw=;
 b=hxU5RlL8C5AyBAIC4cIv+KrThSf5nDkf6rW9SdzH+3Gzka7dgEljUIqTrZUsqcHJQ0kZQs
 xKHUl+GBzU93q74icRmo099n7Kbvil+927PzNSVIzOrmEJYJpAOtQVveREd7kyI3aA0OWD
 ZQsC3oIdYjV4aeaYIQqUGJK26r0Jkj8=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-122-f9HCEj6FNKSEi5TRjYEb3g-1; Mon, 22 Mar 2021 11:51:29 -0400
X-MC-Unique: f9HCEj6FNKSEi5TRjYEb3g-1
Received: by mail-ej1-f71.google.com with SMTP id sa29so20043342ejb.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 08:51:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=kO5Xrlmz7hmF+NFPKjBSQVePMMPDWNdtb/VyLp7n+tw=;
 b=WecNPI7cxdK5njKLfM3VQgNQx2DLmggJmRbfACeTaDkkD/SdZPZ7KloXyLwiMvbQdh
 4KMZJXkyYSP+AMlFfVuBvrvKIeyWV1JWOM/Neu5Qd9nrhnPEy/wVqG14TFQaF3mXBit9
 CdAywR6wVAxcWEiAJWKQJ0sqlWmJxsEMo+WRnLu+zKq2Zfg71OG9SBHhel7KPvp6sVbr
 x7RO5PCtvFyxP4uU0e/aoEE01dXjzBmzBsa2m9YRCl1xtt4REanHDzVQZx1jOV2gUl3+
 2pUgS+pXSlOmnmDydkG9sXGxWIndnV1SWy9ppoYU538uYASLt6OhTmbRWPphOnnGK2hk
 gukQ==
X-Gm-Message-State: AOAM533E5CHhy6DuG35TmaQT9nBJKBnL8VPcoE0oaZ7QRGONNUp9pxEw
 +Z5nE9Rgysj0TsmaixMx1+TujYbtvnzEIiorbCLgjEIlqr1VzvvDBL5yzLcJSEGRDluR5Jwtjri
 i/PQkxfSJov6kmrI8KKsfEPZaubuQ5vQx2FvDqJ6A56lceJXIH7anc9GSR2BHu4U/NVoj0Hd1q+
 w2Yl2x
X-Received: by 2002:a17:906:684b:: with SMTP id
 a11mr394282ejs.329.1616428287888; 
 Mon, 22 Mar 2021 08:51:27 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzNircWRwI6zJbxGPuDS32Ewt2xhOqG7MumzvTBCVyt9h5Ix20wN20lJ3YDcKh1PvK5GPbS2Q==
X-Received: by 2002:a17:906:684b:: with SMTP id
 a11mr394264ejs.329.1616428287719; 
 Mon, 22 Mar 2021 08:51:27 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id k26sm9907776ejk.29.2021.03.22.08.51.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 22 Mar 2021 08:51:27 -0700 (PDT)
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <28b8cfd3f29d3e5ed4224c687ef173d6c45e028d.camel@gmx.net>
 <5ad5226b-91ce-8685-4c3f-e6890dd642a2@redhat.com>
 <YFivVDZ/j6sybifB@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <5c73b653-26ff-1e9f-1e38-7379d828a344@redhat.com>
Date: Mon, 22 Mar 2021 16:51:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <YFivVDZ/j6sybifB@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [bug report] drm/i915: Computer does not shutdown,
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
Cc: intel-gfx@lists.freedesktop.org,
 =?UTF-8?Q?Mario_H=c3=bcttel?= <mario.huettel@gmx.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpPbiAzLzIyLzIxIDM6NTMgUE0sIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPiBPbiBNb24s
IE1hciAyMiwgMjAyMSBhdCAxMTo0NTozOUFNICswMTAwLCBIYW5zIGRlIEdvZWRlIHdyb3RlOgo+
PiBIaSwKPj4KPj4gT24gMy8xNC8yMSAxMTozMCBBTSwgTWFyaW8gSMO8dHRlbCB3cm90ZToKPj4+
IEhlbGxvLAo+Pj4KPj4+IEl0IHNlZW1zLCBsaWtlIHRoZSBtYWlsaW5nIGxpc3QsIGRpZG4ndCBh
Y2NlcHQgbXkgZW1haWwuIFNvIEknbGwgc2VuZAo+Pj4gaXQgYWdhaW46Cj4+Pgo+Pj4gSSB3YW50
IHRvIHJlcG9ydCBhIGJ1Zy4gSSBoYXZlIGEgUEMgd2l0aCBJbnRlbCBpNy02NzAwSyBwcm9jZXNz
b3IgKHdpdGgKPj4+IGludGVncmF0ZWQgZ3JhcGhpY3MpIGFuZCBhbiBBc1JvY2sgRmF0YWwxdHkg
WjE3MCBHYW1pbmcgSzYgbWFpbmJvYXJkLiBJCj4+PiB1c2UgdGhlIENQVSdzIGludGVncmF0ZWQg
Z3JhcGhpY3MuCj4+PiBNeSBzeXN0ZW0gaXMgQXJjaGxpbnV4IHdpdGggS2VybmVsIHY1LjExLjYu
Cj4+Pgo+Pj4gVXNpbmcgdGhpcyBzZXR1cCwgbXkgUEMgd29ya3Mgbm9ybWFsbHkuIEhvd2V2ZXIs
IHdoZW4gSSBzaHV0IGl0IGRvd24sCj4+PiB0aGUgcG93ZXIgaXMgbm90IGN1dC4gRmFucyBrZWVw
IHNwaW5uaW5nIGFuZCBMRURzIHN0YXkgb24uIEkgY291bGRuJ3QKPj4+IGRldGVjdCBhbnkgb3Ro
ZXIgcHJvYmxlbSB3aGVuIHNodXR0aW5nIGRvd24uIERyaXZlcyBldGMuIHN0b3AgYXMKPj4+IGV4
cGVjdGVkIGFuZCB0aGUgdmlkZW8gaXMgYmxhbmsuIEV2ZW4gYWZ0ZXIgd2FpdGluZyBzZXZlcmFs
IGhvdXJzLCB0aGUKPj4+IHN5c3RlbSBkb2Vzbid0IHBvd2VyIGRvd24uCj4+Pgo+Pj4gUmVzdGFy
dHMgd29yayBub3JtYWxseS4KPj4+Cj4+PiBJIGhhdmVuJ3QgeWV0IGZvdW5kIGFueSBvdGhlciBw
ZW9wbGUgb24gdGhlIGludGVybmV0IHRoYXQgaGF2ZSB0aGUgc2FtZQo+Pj4gYnVnLgo+Pj4KPj4+
IEkgdXNlZCBnaXQgYmlzZWN0IHRvIGZpbmQgdGhlIGNvbW1pdCB0aGF0IGNhdXNlcyB0aGlzIGJl
aGF2aW9yIG9uIG15Cj4+PiBtYWNoaW5lLgo+Pgo+PiBUaGFuayB5b3UgZm9yIGRvaW5nIGEgYmlz
ZWN0IHRoYXQgaXMgYWx3YXlzIHZlcnkgaGVscGZ1bC4KPj4KPj4+IFRoZSByZXN1bHQgaXM6IGZl
MGYxZTNiZmRmZWI1M2UxOGYxMjA2YWVhNGY0MGI5YmQxZjI5MWMgaXMgdGhlCj4+PiBmaXJzdCBi
YWQgY29tbWl0Lgo+Pgo+PiBUbyBzYXZlIG90aGVycyB0aGUgdHJvdWJsZSBvZiBoYXZpbmcgdG8g
bG9vayB1cCB0aGUgaGFzaiwgdGhhdCBpczoKPj4KPj4gImRybS9pOTE1OiBTaHV0IGRvd24gZGlz
cGxheXMgZ3JhY2VmdWxseSBvbiByZWJvb3QiCj4+Cj4+IFdoaWNoIGlzIHRoZSBzYW1lIGNvbW1p
dCBhcyB3aGljaCBJJ3ZlIHJlcG9ydGVkIGlzIGNhdXNpbmcgaXNzdWVzCj4+IHdpdGggRFNJIHBh
bmVscyBub3QgbGlnaHRpbmcgdXAgb24gcmVib290cyBvbiBzb21lIEJZVC9DSFQgZGV2aWNlcy4K
Pj4KPj4gU2luY2UgdGhpcyBzZWVtcyB0byBtb3N0bHkgYmUgaW50ZW5kZWQgdG8gZml4IGlzc3Vl
cyBzdXJyb3VuZGluZwo+PiBEUCBNU1Qgc3R1ZmYsIG1heWJlIHRoZSBncmFjZWZ1bCBzaHV0ZG93
biBzaG91bGQgb25seSBiZSBkb25lIHdoZW4KPj4gTVNUIGlzIGluIHVzZT8KPiAKPiBOby4gSXQg
YWxzbyBmaXhlcyBXaW5kb3dzLCBsb2xzLgoKT2ssIGNhbiB5b3UgYXQgbGVhc3QgdGFrZSBhIGxv
b2sgYXQgbXkgcGF0Y2ggd2hpY2ggZml4ZXMgKHdvcmtzLWFyb3VuZCkKdGhlIGlzc3VlcyBmb3Ig
RFNJIHBhbmVsIG9uIEJZVC9DSFQgRFNJIGRldmljZXM6CgpodHRwczovL3BhdGNod29yay5mcmVl
ZGVza3RvcC5vcmcvcGF0Y2gvNDIyNDgxLwoKPwoKSW4gdGhhdCBjYXNlIHRoZSBkaXNwbGF5IHN0
YXlzIGJsYWNrIGFmdGVyIHJlYm9vdCBpbiB0aGUgQklPUyAvIGluIGFwcHMKdXNpbmcgdGhlIEVG
SSBmYi9jb25zb2xlIHN1Y2ggYXMgdGhlIGdydWIgbWVudSBhbmQgd2hlbiB1c2luZyBmYXN0Ym9v
dAppdCBhbHNvIHN0YXlzIGJsYWNrIHVuZGVyIExpbnV4IChJIGRpZCBub3QgdGVzdCBXaW5kb3dz
KSBvbmx5IGFmdGVyIGZvcmNpbmcKYSBtb2Rlc2V0IHVuZGVyIExpbnV4IHRoZSBEU0kgTENEIHBh
bmVsIHdvcmtzIGFnYWluLgoKQXMgSSBtZW50aW9uIGluIHRoZSBjb21taXQgbXNnIGdpdmVuIHRo
ZSBhZ2Ugb2YgdGhlIHBsYXRmb3JtcyBpbnZvbHZlZApJIHRoaW5rIHRoYXQgYSBzaW1wbGUgd29y
a2Fyb3VuZCBhcyBJIHN1Z2dlc3QgdGhlcmUgaXMgYmVzdC4KClJlZ2FyZHMsCgpIYW5zCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
