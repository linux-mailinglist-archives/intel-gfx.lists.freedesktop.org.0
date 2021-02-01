Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA3F30B27C
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 23:04:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85D416E890;
	Mon,  1 Feb 2021 22:04:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B45026E88B
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 22:04:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1612217066;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qfsnAlAu/McYcGw2KOXJYqmGsyF1QR4l7YGKSVjsOzo=;
 b=VTm13CX+uLtBxPBdUUactZeo+J+HjqcJvHLRKX0CSB3CO0FA8J+06KvhLVaWt5wfFt3o5e
 sHpkbGkjsr/rVRwubKHK14VPkJ6cXwEP5UAVOeYRTjHxu5UhjLEV/QOcdH89blHNKqsxR9
 6KiW09lD19yKkFT/UNcet/T0RjrFWm0=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-264-4Wt72ZoJMueG3no9pgJ5LQ-1; Mon, 01 Feb 2021 17:04:22 -0500
X-MC-Unique: 4Wt72ZoJMueG3no9pgJ5LQ-1
Received: by mail-qk1-f199.google.com with SMTP id m64so14446773qke.12
 for <intel-gfx@lists.freedesktop.org>; Mon, 01 Feb 2021 14:04:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=qfsnAlAu/McYcGw2KOXJYqmGsyF1QR4l7YGKSVjsOzo=;
 b=LULIBTSPugFEVi1r4EFZzx1U7PN8aaAdPSyuIKaMB6IGk5vHMMSiIZk+hCIQIbKafj
 2/uKVDUgWaAkYqwItdMdChNp8VDJTuHzGnAusoAc//zG83HlbJHOXNbg9ayaDsKuuGKq
 dR6Nanqu4oqImJHOm+n0B4CiUaIynsyxQq8DnyqMpSESUJEew1oVKsCxRILK2VRLC4K0
 JQKpBu3RCWv/Cj83lVJhye1H2L8NfF6FJBD48+zb2N7P+aHPmp40q70vBWnqYdG8haAr
 hknFUOgLnOyexPI0ykxUOuoKENgVnr3vJsqIv5yrRe+Y3i6EiP2n0To2PPoa14rwMi40
 k52w==
X-Gm-Message-State: AOAM5316IL82QdF336P0dJW3oiVUsQOnnq+OtHAGqy1JENucM4Q7h5zm
 7tJSk30RE/PHVcSkh86h5k5elkNSNtfyj/sgGbTlI39+vFjcLgaNsHiO+MpHXHqNXlbf55k4TAh
 6j6XOaNgYHeNRc5BgDiocup5Bsdiw
X-Received: by 2002:a05:620a:9cc:: with SMTP id
 y12mr18096797qky.484.1612217061557; 
 Mon, 01 Feb 2021 14:04:21 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxx/YAAPANhE5btY2ANJn+PQ9MAKqUA1ToMGepGc4545upibD3KSYzj+Fvtch0454gUx+De0w==
X-Received: by 2002:a05:620a:9cc:: with SMTP id
 y12mr18096783qky.484.1612217061352; 
 Mon, 01 Feb 2021 14:04:21 -0800 (PST)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id b17sm1613323qkh.57.2021.02.01.14.04.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Feb 2021 14:04:20 -0800 (PST)
Message-ID: <6d9dfeddd11ebe548b70898457452167af75e1ad.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Imre Deak <imre.deak@intel.com>, dri-devel@lists.freedesktop.org
Date: Mon, 01 Feb 2021 17:04:19 -0500
In-Reply-To: <20210201120145.350258-1-imre.deak@intel.com>
References: <20210201120145.350258-1-imre.deak@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.38.3 (3.38.3-1.fc33)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/dp_mst: Don't report ports
 connected if nothing is attached to them
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
Reply-To: lyude@redhat.com
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org,
 Wayne Lin <Wayne.Lin@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rm9yIHRoZSB3aG9sZSBzZXJpZXM6CgpSZXZpZXdlZC1ieTogTHl1ZGUgUGF1bCA8bHl1ZGVAcmVk
aGF0LmNvbT4KCk9uIE1vbiwgMjAyMS0wMi0wMSBhdCAxNDowMSArMDIwMCwgSW1yZSBEZWFrIHdy
b3RlOgo+IFJlcG9ydGluZyBhIHBvcnQgYXMgY29ubmVjdGVkIGlmIG5vdGhpbmcgaXMgYXR0YWNo
ZWQgdG8gdGhlbSBsZWFkcyB0bwo+IGFueSBpMmMgdHJhbnNhY3Rpb25zIG9uIHRoaXMgcG9ydCB0
cnlpbmcgdG8gdXNlIGFuIHVuaW5pdGlhbGl6ZWQgaTJjCj4gYWRhcHRlciwgZml4IHRoaXMuCj4g
Cj4gTGV0J3MgYWNjb3VudCBmb3IgdGhpcyBjYXNlIGV2ZW4gaWYgYnJhbmNoIGRldmljZXMgaGF2
ZSBubyBnb29kIHJlYXNvbgo+IHRvIHJlcG9ydCBhIHBvcnQgYXMgdW5wbHVnZ2VkIHdpdGggdGhl
aXIgcGVlciBkZXZpY2UgdHlwZSBzZXQgdG8gJ25vbmUnLgo+IAo+IEZpeGVzOiBkYjFhMDc5NTY5
NjggKCJkcm0vZHBfbXN0OiBIYW5kbGUgU1NULW9ubHkgYnJhbmNoIGRldmljZSBjYXNlIikKPiBS
ZWZlcmVuY2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNz
dWVzLzI5ODcKPiBSZWZlcmVuY2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJt
L2ludGVsLy0vaXNzdWVzLzE5NjMKPiBDYzogV2F5bmUgTGluIDxXYXluZS5MaW5AYW1kLmNvbT4K
PiBDYzogTHl1ZGUgUGF1bCA8bHl1ZGVAcmVkaGF0LmNvbT4KPiBDYzogPHN0YWJsZUB2Z2VyLmtl
cm5lbC5vcmc+ICMgdjUuNSsKPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+
IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KPiAtLS0KPiDC
oGRyaXZlcnMvZ3B1L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMgfCAxICsKPiDCoDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
ZHJtX2RwX21zdF90b3BvbG9neS5jCj4gYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3Bv
bG9neS5jCj4gaW5kZXggZTgyYjU5NmQ2NDZjLi5kZWI3OTk1ZjQyZmEgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2RybV9kcF9tc3RfdG9wb2xvZ3kuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMKPiBAQCAtNDIyNCw2ICs0MjI0LDcgQEAgZHJtX2Rw
X21zdF9kZXRlY3RfcG9ydChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAo+IMKgCj4g
wqDCoMKgwqDCoMKgwqDCoHN3aXRjaCAocG9ydC0+cGR0KSB7Cj4gwqDCoMKgwqDCoMKgwqDCoGNh
c2UgRFBfUEVFUl9ERVZJQ0VfTk9ORToKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
YnJlYWs7Cj4gwqDCoMKgwqDCoMKgwqDCoGNhc2UgRFBfUEVFUl9ERVZJQ0VfTVNUX0JSQU5DSElO
RzoKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmICghcG9ydC0+bWNzKQo+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldCA9IGNvbm5l
Y3Rvcl9zdGF0dXNfY29ubmVjdGVkOwoKLS0gClNpbmNlcmVseSwKICAgTHl1ZGUgUGF1bCAoc2hl
L2hlcikKICAgU29mdHdhcmUgRW5naW5lZXIgYXQgUmVkIEhhdAogICAKTm90ZTogSSBkZWFsIHdp
dGggYSBsb3Qgb2YgZW1haWxzIGFuZCBoYXZlIGEgbG90IG9mIGJ1Z3Mgb24gbXkgcGxhdGUuIElm
IHlvdSd2ZQphc2tlZCBtZSBhIHF1ZXN0aW9uLCBhcmUgd2FpdGluZyBmb3IgYSByZXZpZXcvbWVy
Z2Ugb24gYSBwYXRjaCwgZXRjLiBhbmQgSQpoYXZlbid0IHJlc3BvbmRlZCBpbiBhIHdoaWxlLCBw
bGVhc2UgZmVlbCBmcmVlIHRvIHNlbmQgbWUgYW5vdGhlciBlbWFpbCB0byBjaGVjawpvbiBteSBz
dGF0dXMuIEkgZG9uJ3QgYml0ZSEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
