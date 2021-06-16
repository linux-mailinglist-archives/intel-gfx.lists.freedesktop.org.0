Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 239A33AA48D
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jun 2021 21:47:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF9826E817;
	Wed, 16 Jun 2021 19:47:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DB066E817
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jun 2021 19:47:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623872851;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LuBZSqko5Wg5MjHG2EzME1ka0sMbkGR6g1xPzacnHGU=;
 b=FD9tRlLnLbxttJC4EhlAbn282YcvYHEKEbMhEdo0pXIG/XWwX/LkHtV2S4jTqRgcOf17Z3
 4nFIGmit2BkDSgVjh1vGsdKCufBkmgOsi4oo7aHWcLJQ+VFBWZgJWFz/DzhP/+QVGFjXE9
 jo3rQWdAJyobvNF46s6PukGCqyFl1aI=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-123-mFPp8_SUNQ-YvPPk88oD8w-1; Wed, 16 Jun 2021 15:47:28 -0400
X-MC-Unique: mFPp8_SUNQ-YvPPk88oD8w-1
Received: by mail-qk1-f200.google.com with SMTP id
 v1-20020a372f010000b02903aa9be319adso401399qkh.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jun 2021 12:47:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=LuBZSqko5Wg5MjHG2EzME1ka0sMbkGR6g1xPzacnHGU=;
 b=B7Z0PRIQ+GJWhuIT73eYKkH6kgZgd2rR2Uwi0Zyp/+KZrHMjcUzlok/JHvM9j22P/C
 a+E19WGA3sQgZ3PHD2P2OAR9op/3hN4fQs/UqUYx1oZo74e3VDeujQPy+FAlxfupGWlJ
 wRUbPoJqI5Hdt9nZLnKFRr67UFMSMcBabV5if7v4YWIuTTYlrgMduW3q04LKQ8kbOa3L
 gmtIC+MZheW0NMDFlESt10QvfrQqxgaBX8H1q8YkqY+rir/uDi8bqcGlyWBSTl7Bk7Zx
 cmmKxAvQz6lgbLA+AqXez30xaS5tyfepbVK+XHiWuFWGO1AvcRM/eyk8XE/qtmKGpoBK
 xeaQ==
X-Gm-Message-State: AOAM5301jmI6+5wdmRy+uzg9P2JK2gAIicf4XRW9qpFm9yKHJ6kKVJ9m
 LQs7v2EHro+LvEGbPE/sJT3xRJ3xs3MUhiIR0O9PG/6VXzWeeaNnV8Xz71U1UUjA6AVS6ukF6Af
 RObaezY4Q82fHU97pRIQYGloVUrMT
X-Received: by 2002:ad4:5561:: with SMTP id w1mr1745608qvy.47.1623872847809;
 Wed, 16 Jun 2021 12:47:27 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzWcIYQKYsFWAuXGbK2jNa9W+sx7lKlI6iTJv9x/60P+QU2mk5SGDgr/O3Z4JCaLErsQ5BRrQ==
X-Received: by 2002:ad4:5561:: with SMTP id w1mr1745585qvy.47.1623872847576;
 Wed, 16 Jun 2021 12:47:27 -0700 (PDT)
Received: from Ruby.lyude.net (pool-108-49-102-102.bstnma.fios.verizon.net.
 [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id o21sm201003qkp.51.2021.06.16.12.47.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Jun 2021 12:47:27 -0700 (PDT)
Message-ID: <6b5b8d478b3ecb33858c3f55f432178c0917ffb4.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: =?ISO-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Wed, 16 Jun 2021 15:47:26 -0400
In-Reply-To: <20210616194415.36926-1-jose.souza@intel.com>
References: <20210616194415.36926-1-jose.souza@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH] drm/dp_mst: Add missing drm parameters to
 recently added call to drm_dbg_kms()
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
Cc: dri-devel@lists.freedesktop.org, Wayne Lin <Wayne.Lin@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmV2aWV3ZWQtYnk6IEx5dWRlIFBhdWwgPGx5dWRlQHJlZGhhdC5jb20+CgpXaWxsIGdvIGFoZWFk
IGFuZCBwdXNoIHRoaXMgdG8gZHJtLW1pc2MtbmV4dC1maXhlcywgdGhhbmtzCgpPbiBXZWQsIDIw
MjEtMDYtMTYgYXQgMTI6NDQgLTA3MDAsIEpvc8OpIFJvYmVydG8gZGUgU291emEgd3JvdGU6Cj4g
Q29tbWl0IDM3NjllNGMwYWY1YiAoImRybS9kcF9tc3Q6IEF2b2lkIHRvIG1lc3MgdXAgcGF5bG9h
ZCB0YWJsZSBieQo+IHBvcnRzIGluIHN0YWxlIHRvcG9sb2d5IikgYWRkZWQgdG8gY2FsbHMgdG8g
ZHJtX2RiZ19rbXMoKSBidXQgaXQKPiBtaXNzZWQgdGhlIGZpcnN0IHBhcmFtZXRlciwgdGhlIGRy
bSBkZXZpY2UgYnJlYWtpbmcgdGhlIGJ1aWxkLgo+IAo+IEZpeGVzOiAzNzY5ZTRjMGFmNWIgKCJk
cm0vZHBfbXN0OiBBdm9pZCB0byBtZXNzIHVwIHBheWxvYWQgdGFibGUgYnkgcG9ydHMgaW4KPiBz
dGFsZSB0b3BvbG9neSIpCj4gQ2M6IFdheW5lIExpbiA8V2F5bmUuTGluQGFtZC5jb20+Cj4gQ2M6
IEx5dWRlIFBhdWwgPGx5dWRlQHJlZGhhdC5jb20+Cj4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3Nl
LnNvdXphQGludGVsLmNvbT4KPiAtLS0KPiDCoGRyaXZlcnMvZ3B1L2RybS9kcm1fZHBfbXN0X3Rv
cG9sb2d5LmMgfCA3ICsrKysrLS0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBf
bXN0X3RvcG9sb2d5LmMKPiBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMK
PiBpbmRleCA5YWMxNDhlZmQ5ZTQzLi5hZDA3OTVhZmMyMWNmIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
ZHJtX2RwX21zdF90b3BvbG9neS5jCj4gQEAgLTMzODksNyArMzM4OSw5IEBAIGludCBkcm1fZHBf
dXBkYXRlX3BheWxvYWRfcGFydDEoc3RydWN0Cj4gZHJtX2RwX21zdF90b3BvbG9neV9tZ3IgKm1n
cikKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBtdXRl
eF91bmxvY2soJm1nci0+bG9jayk7Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoc2tpcCkgewo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRybV9kYmdfa21zKCJWaXJ0
dWFsIGNoYW5uZWwgJWQgaXMgbm90IGluCj4gY3VycmVudCB0b3BvbG9neVxuIiwgaSk7Cj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgZHJtX2RiZ19rbXMobWdyLT5kZXYsCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAi
VmlydHVhbCBjaGFubmVsICVkIGlzIG5vdCBpbgo+IGN1cnJlbnQgdG9wb2xvZ3lcbiIsCj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpKTsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY29udGludWU7Cj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgfQo+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qIFZhbGlkYXRlZCBwb3J0cyBk
b24ndCBtYXR0ZXIgaWYgd2UncmUgcmVsZWFzaW5nCj4gQEAgLTM0MDQsNyArMzQwNiw4IEBAIGlu
dCBkcm1fZHBfdXBkYXRlX3BheWxvYWRfcGFydDEoc3RydWN0Cj4gZHJtX2RwX21zdF90b3BvbG9n
eV9tZ3IgKm1ncikKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBwYXls
b2FkLT5zdGFydF9zbG90ID0KPiByZXFfcGF5bG9hZC5zdGFydF9zbG90Owo+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNvbnRpbnVlOwo+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgfSBlbHNlIHsKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRy
bV9kYmdfa21zKCJGYWlsOnNldAo+IHBheWxvYWQgdG8gaW52YWxpZCBzaW5rIik7Cj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1fZGJnX2ttcyhtZ3ItPmRldiwKPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgIkZhaWw6c2V0Cj4gcGF5bG9hZCB0byBpbnZhbGlkIHNpbmsiKTsKPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBtdXRleF91bmxvY2soJm1nci0KPiA+cGF5bG9hZF9s
b2NrKTsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gLUVJ
TlZBTDsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoH0KCi0tIApDaGVlcnMsCiBMeXVkZSBQYXVs
IChzaGUvaGVyKQogU29mdHdhcmUgRW5naW5lZXIgYXQgUmVkIEhhdAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
