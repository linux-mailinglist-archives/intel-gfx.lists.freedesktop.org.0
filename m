Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F235BE94F
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 02:03:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16EB86EF12;
	Thu, 26 Sep 2019 00:03:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D04816EF12
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 00:03:46 +0000 (UTC)
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-52-Wun2gUfPOJCNRsr5n85z8Q-1; Wed, 25 Sep 2019 20:03:43 -0400
Received: by mail-qt1-f198.google.com with SMTP id k53so116493qtk.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 17:03:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=AgrVbM2COZ9tITTAZoDVtPSXmPfOYcHCro3GCmcrIlA=;
 b=YrF7f3O56nvAXAABbCW9RAQ56sJA3x+bH6ngC63UORezY9FVJuwctD7EYGoU1E61et
 SksJHuH/sAxjGTlgO3OfvTkgyFcAPSVhZIM9kXQ55ymhdaF2NOJT/hiZiarcoZUg2z4p
 R07CygjOcyu/KvjuM2cjb6SqOw/dwtP0L1WSyjkpUWZh2seFsnMff0kcDMXn8VxlviLm
 UMDgjL2+SjV2eWm90DjQcSTKbeEYl8ZcNtEPfu8GRYj5J+L3bnvia8zg60zSW76Fc7I1
 PHUD8cCul4YrQx1BkuF0kfiIzsZ9h1TKUysT58mtsmsYgCMdQY/QWD5FVNvtMqIAEPtC
 j8Ow==
X-Gm-Message-State: APjAAAXLkHOgYmjsuBpbJmM5RvNp2mu+deH3XhhMFwev9TqHvcPCzN3n
 X9KrEnfpG25DGoHmxE28faqEOxVKQQIot6znvqVH8RuQUYXpaxrmJPlNYl4h6aMuw/g/kGHSQKQ
 8lEaJ/z6AA3n9AgRqjvocnJWE6ypl
X-Received: by 2002:ac8:3644:: with SMTP id n4mr1202995qtb.92.1569456223271;
 Wed, 25 Sep 2019 17:03:43 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzhPTTT0o1F49j6Shocj5Kh5ewHPFtFcQ/aKliKcadE08aEBO8l22kGuS+xUdLf8SIrDlMdPQ==
X-Received: by 2002:ac8:3644:: with SMTP id n4mr1202980qtb.92.1569456223007;
 Wed, 25 Sep 2019 17:03:43 -0700 (PDT)
Received: from dhcp-10-20-1-34.bss.redhat.com ([144.121.20.162])
 by smtp.gmail.com with ESMTPSA id d69sm186545qkc.87.2019.09.25.17.03.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 17:03:42 -0700 (PDT)
Message-ID: <2aace6a5c6aab05924a2b06e6d43409e72821447.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 dri-devel@lists.freedesktop.org
Date: Wed, 25 Sep 2019 20:03:41 -0400
In-Reply-To: <20190925141442.23236-2-ville.syrjala@linux.intel.com>
References: <20190925141442.23236-1-ville.syrjala@linux.intel.com>
 <20190925141442.23236-2-ville.syrjala@linux.intel.com>
Organization: Red Hat
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30)
MIME-Version: 1.0
X-MC-Unique: Wun2gUfPOJCNRsr5n85z8Q-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1569456225;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bF1/SayH8wiQ6q1Nl9E7Nj7g4gs2xZzz7pKQvMJjIDs=;
 b=PqiTgUBj0vNRF+0iMAz3lQClW+nCFRgs1OlNHh2dbaz1rhB2sKt8UrusDhE3Bm7AAfo+Vj
 j9teH4czEv29AQglTZeV+FUoH5NTNnTyxTH8yNpeew0y9kKDv0goWNJNfyOWqikc5UlMdG
 SxTu1NSCUiCg7wFP5mklOC9mFZaTnzI=
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/dp/mst: Handle arbitrary DP_LINK_BW
 values
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
Cc: intel-gfx@lists.freedesktop.org, Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmV2aWV3ZWQtYnk6IEx5dWRlIFBhdWwgPGx5dWRlQHJlZGhhdC5jb20+CgpPbiBXZWQsIDIwMTkt
MDktMjUgYXQgMTc6MTQgKzAzMDAsIFZpbGxlIFN5cmphbGEgd3JvdGU6Cj4gRnJvbTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAKPiBNYWtlIGRybV9k
cF9nZXRfdmNfcGF5bG9hZCgpIHRvbGVyYXRlIGFyYml0cmFyeSBEUF9MSU5LX0JXXyoKPiB2YWx1
ZXMsIGp1c3QgbGlrZSBkcm1fZHBfYndfY29kZV90b19saW5rX3JhdGUoKSBkb2VzIHNpbmNlIGNv
bW1pdAo+IDU3YTFiMDg5Mzc4MiAoImRybTogTWFrZSB0aGUgYncvbGluayByYXRlIGNhbGN1bGF0
aW9ucyBtb3JlIGZvcmdpdmluZyIpLgo+IAo+IENjOiBMeXVkZSBQYXVsIDxseXVkZUByZWRoYXQu
Y29tPgo+IENjOiBTZWFuIFBhdWwgPHNlYW5wYXVsQGNocm9taXVtLm9yZz4KPiBTaWduZWQtb2Zm
LWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9neS5jIHwgMjkgKysrKysrLS0t
LS0tLS0tLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDIz
IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21z
dF90b3BvbG9neS5jCj4gYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9neS5jCj4g
aW5kZXggZTI1NTk3ZWIzY2ExLi5kNDY0NGEzYzEzMjQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2RybV9kcF9tc3RfdG9wb2xvZ3kuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1f
ZHBfbXN0X3RvcG9sb2d5LmMKPiBAQCAtMjk3NCwzMCArMjk3NCwxMyBAQCBzdGF0aWMgaW50IGRy
bV9kcF9zZW5kX3VwX2Fja19yZXBseShzdHJ1Y3QKPiBkcm1fZHBfbXN0X3RvcG9sb2d5X21nciAq
bWdyLAo+ICAJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gLXN0YXRpYyBib29sIGRybV9kcF9nZXRfdmNf
cGF5bG9hZF9idyhpbnQgZHBfbGlua19idywKPiAtCQkJCSAgICAgaW50IGRwX2xpbmtfY291bnQs
Cj4gLQkJCQkgICAgIGludCAqb3V0KQo+ICtzdGF0aWMgaW50IGRybV9kcF9nZXRfdmNfcGF5bG9h
ZF9idyh1OCBkcF9saW5rX2J3LCB1OCAgZHBfbGlua19jb3VudCkKPiAgewo+IC0Jc3dpdGNoIChk
cF9saW5rX2J3KSB7Cj4gLQlkZWZhdWx0Ogo+ICsJaWYgKGRwX2xpbmtfYncgPT0gMCB8fCBkcF9s
aW5rX2NvdW50ID09IDApCj4gIAkJRFJNX0RFQlVHX0tNUygiaW52YWxpZCBsaW5rIGJhbmR3aWR0
aCBpbiBEUENEOiAleCAobGluayBjb3VudDoKPiAlZClcbiIsCj4gIAkJCSAgICAgIGRwX2xpbmtf
YncsIGRwX2xpbmtfY291bnQpOwo+IC0JCXJldHVybiBmYWxzZTsKPiAgCj4gLQljYXNlIERQX0xJ
TktfQldfMV82MjoKPiAtCQkqb3V0ID0gMyAqIGRwX2xpbmtfY291bnQ7Cj4gLQkJYnJlYWs7Cj4g
LQljYXNlIERQX0xJTktfQldfMl83Ogo+IC0JCSpvdXQgPSA1ICogZHBfbGlua19jb3VudDsKPiAt
CQlicmVhazsKPiAtCWNhc2UgRFBfTElOS19CV181XzQ6Cj4gLQkJKm91dCA9IDEwICogZHBfbGlu
a19jb3VudDsKPiAtCQlicmVhazsKPiAtCWNhc2UgRFBfTElOS19CV184XzE6Cj4gLQkJKm91dCA9
IDE1ICogZHBfbGlua19jb3VudDsKPiAtCQlicmVhazsKPiAtCX0KPiAtCXJldHVybiB0cnVlOwo+
ICsJcmV0dXJuIGRwX2xpbmtfYncgKiBkcF9saW5rX2NvdW50IC8gMjsKPiAgfQo+ICAKPiAgLyoq
Cj4gQEAgLTMwMjksOSArMzAxMiw5IEBAIGludCBkcm1fZHBfbXN0X3RvcG9sb2d5X21ncl9zZXRf
bXN0KHN0cnVjdAo+IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyICptZ3IsIGJvb2wgbXMKPiAgCQkJ
Z290byBvdXRfdW5sb2NrOwo+ICAJCX0KPiAgCj4gLQkJaWYgKCFkcm1fZHBfZ2V0X3ZjX3BheWxv
YWRfYncobWdyLT5kcGNkWzFdLAo+IC0JCQkJCSAgICAgIG1nci0+ZHBjZFsyXSAmCj4gRFBfTUFY
X0xBTkVfQ09VTlRfTUFTSywKPiAtCQkJCQkgICAgICAmbWdyLT5wYm5fZGl2KSkgewo+ICsJCW1n
ci0+cGJuX2RpdiA9IGRybV9kcF9nZXRfdmNfcGF5bG9hZF9idyhtZ3ItPmRwY2RbMV0sCj4gKwkJ
CQkJCQltZ3ItPmRwY2RbMl0gJgo+IERQX01BWF9MQU5FX0NPVU5UX01BU0spOwo+ICsJCWlmICht
Z3ItPnBibl9kaXYgPT0gMCkgewo+ICAJCQlyZXQgPSAtRUlOVkFMOwo+ICAJCQlnb3RvIG91dF91
bmxvY2s7Cj4gIAkJfQotLSAKQ2hlZXJzLAoJTHl1ZGUgUGF1bAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
