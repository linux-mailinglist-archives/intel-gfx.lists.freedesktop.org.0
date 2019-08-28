Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CDC5A0998
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 20:35:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9380589DAB;
	Wed, 28 Aug 2019 18:35:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 965AB89DAB
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 18:35:13 +0000 (UTC)
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0353781F31
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 18:35:13 +0000 (UTC)
Received: by mail-qk1-f200.google.com with SMTP id f14so905488qkm.15
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 11:35:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=8hkCC+6RH1+I9XJYQP9KXoRyFfXCsCu2bKOzDa8PS88=;
 b=GZvsOffMnLSko88wve3/CIXg33578mQ93Npet16zbSa6KNSUcXuGmU9LU2Dw6sqoOU
 kdDmMuiFn9knmpUBtdDcKV446w45xXNLMahWLhiXQKiXEzkvSo5FwmO2FjRRsgIaHVSz
 WbvG1yQDqOzZISQq1VOE3COummhKVsQN63L3UhuSr8E6buPYZAfe6lMWJ8SLolxiXMJU
 wHorVz8IxQVlF2eRznUN0m9Oq8JQx/YyrOVN+DJ8kBXpdK8nqMqrOzCVlwbcksJAMKyF
 eJG/H2pjY4vRrn4+wgcY4u7SzkTe1cVqzew21/T9NiKnWhsoE0UuP47wgbYTI76ntJWu
 rcCg==
X-Gm-Message-State: APjAAAW3SFbyp+sfRlROgJ6VzTxCpybSyjHkDeJMs5kYuLEeQAiZFNTk
 D6x0fISMF9ipTKFmX8PbJJ6XTlbHOuSomhR0n85PEXQu82Vcj8WsNldTMpgpzScLoLGHbC2Rj5v
 91epueU8Rwjub4CVPlef0Bl6zDPav
X-Received: by 2002:a05:620a:12ca:: with SMTP id
 e10mr5385453qkl.125.1567017311913; 
 Wed, 28 Aug 2019 11:35:11 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz7ND/gqvozXNHQF0iDa00e2Qalk9m406iRqhKzLGxN4k/iFpd/mKGIdU7I/ZXi5V7innUWBg==
X-Received: by 2002:a05:620a:12ca:: with SMTP id
 e10mr5385430qkl.125.1567017311648; 
 Wed, 28 Aug 2019 11:35:11 -0700 (PDT)
Received: from dhcp-10-20-1-11.bss.redhat.com ([144.121.20.162])
 by smtp.gmail.com with ESMTPSA id y1sm4929qti.49.2019.08.28.11.35.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 11:35:10 -0700 (PDT)
Message-ID: <1557c35b2c9293034003f1ab34e1280920b09655.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Wed, 28 Aug 2019 14:35:09 -0400
In-Reply-To: <20190828102059.2512-1-ville.syrjala@linux.intel.com>
References: <20190828102059.2512-1-ville.syrjala@linux.intel.com>
Organization: Red Hat
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Limit MST to <= 8bpc once again
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
Cc: Geoffrey Bennett <gmux22@gmail.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmV2aWV3ZWQtYnk6IEx5dWRlIFBhdWwgPGx5dWRlQHJlZGhhdC5jb20+CgpPbiBXZWQsIDIwMTkt
MDgtMjggYXQgMTM6MjAgKzAzMDAsIFZpbGxlIFN5cmphbGEgd3JvdGU6Cj4gRnJvbTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAKPiBNeSBhdHRlbXB0
IGF0IGFsbG93aW5nIE1TVCB0byB1c2UgdGhlIGhpZ2hlciBjb2xvciBkZXB0aHMgaGFzCj4gcmVn
cmVzc2VkIHNvbWUgY29uZmlndXJhdGlvbnMuIEFwcGFyZW50bHkgcGVvcGxlIGhhdmUgc2V0dXBz
Cj4gd2hlcmUgYWxsIE1TVCBzdHJlYW1zIHdpbGwgZml0IGludG8gdGhlIERQIGxpbmsgd2l0aCA4
YnBjIGJ1dAo+IHdvbid0IGZpdCB3aXRoIGhpZ2hlciBjb2xvciBkZXB0aHMuCj4gCj4gV2hhdCB3
ZSByZWFsbHkgc2hvdWxkIGJlIGRvaW5nIGlzIHJlZHVjaW5nIHRoZSBicGMgZm9yIGFsbCB0aGUK
PiBzdHJlYW1zIG9uIHRoZSBzYW1lIGxpbmsgdW50aWwgdGhleSBzdGFydCB0byBmaXQuIEJ1dCB0
aGF0IHJlcXVpcmVzCj4gYSBiaXQgbW9yZSB3b3JrLCBzbyBpbiB0aGUgbWVhbnRpbWUgbGV0J3Mg
cmV2ZXJ0IGJhY2sgY2xvc2VyIHRvCj4gdGhlIG9sZCBiZWhhdmlvciBhbmQgbGltaXQgTVNUIHRv
IGF0IG1vc3QgOGJwYy4KPiAKPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+IENjOiBMeXVk
ZSBQYXVsIDxseXVkZUByZWRoYXQuY29tPgo+IENjOiBHZW9mZnJleSBCZW5uZXR0IDxnbXV4MjJA
Z21haWwuY29tPgo+IEZpeGVzOiBmMTQ3NzIxOTg2OWMgKCJkcm0vaTkxNTogUmVtb3ZlIHRoZSA4
YnBjIHNoYWNrbGVzIGZyb20gRFAgTVNUIikKPiBCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNTA1Cj4gU2lnbmVkLW9mZi1ieTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyB8IDEwICsrKysrKysrKy0KPiAg
MSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCj4gaW5kZXggMmM1YWMz
ZGQ2NDdmLi42ZGYyNDBhMDFiOGMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcF9tc3QuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBfbXN0LmMKPiBAQCAtMTI4LDcgKzEyOCwxNSBAQCBzdGF0aWMgaW50IGludGVs
X2RwX21zdF9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QKPiBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+
ICAJbGltaXRzLm1heF9sYW5lX2NvdW50ID0gaW50ZWxfZHBfbWF4X2xhbmVfY291bnQoaW50ZWxf
ZHApOwo+ICAKPiAgCWxpbWl0cy5taW5fYnBwID0gaW50ZWxfZHBfbWluX2JwcChwaXBlX2NvbmZp
Zyk7Cj4gLQlsaW1pdHMubWF4X2JwcCA9IHBpcGVfY29uZmlnLT5waXBlX2JwcDsKPiArCS8qCj4g
KwkgKiBGSVhNRTogSWYgYWxsIHRoZSBzdHJlYW1zIGNhbid0IGZpdCBpbnRvIHRoZSBsaW5rIHdp
dGgKPiArCSAqIHRoZWlyIGN1cnJlbnQgcGlwZV9icHAgd2Ugc2hvdWxkIHJlZHVjZSBwaXBlX2Jw
cCBhY3Jvc3MKPiArCSAqIHRoZSBib2FyZCB1bnRpbCB0aGluZ3Mgc3RhcnQgdG8gZml0LiBVbnRp
bCB0aGVuIHdlCj4gKwkgKiBsaW1pdCB0byA8PSA4YnBjIHNpbmNlIHRoYXQncyB3aGF0IHdhcyBo
YXJkY29kZWQgZm9yIGFsbAo+ICsJICogTVNUIHN0cmVhbXMgcHJldmlvdXNseS4gVGhpcyBoYWNr
IHNob3VsZCBiZSByZW1vdmVkIG9uY2UKPiArCSAqIHdlIGhhdmUgdGhlIHByb3BlciByZXRyeSBs
b2dpYyBpbiBwbGFjZS4KPiArCSAqLwo+ICsJbGltaXRzLm1heF9icHAgPSBtaW4ocGlwZV9jb25m
aWctPnBpcGVfYnBwLCAyNCk7Cj4gIAo+ICAJaW50ZWxfZHBfYWRqdXN0X2NvbXBsaWFuY2VfY29u
ZmlnKGludGVsX2RwLCBwaXBlX2NvbmZpZywgJmxpbWl0cyk7Cj4gIAotLSAKQ2hlZXJzLAoJTHl1
ZGUgUGF1bAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
