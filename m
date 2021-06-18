Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F7A3ACF81
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jun 2021 17:54:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2F2E6EA3D;
	Fri, 18 Jun 2021 15:54:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E0356EA3D
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jun 2021 15:54:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1624031663;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pTxeyNpIA2yWa83l1BM9jQJLYRuEXdkId0aXocQ8b1U=;
 b=cEk1MoGFnmKRPgajJ3eQTJoZzqox+9BBIHrv58WHBQM/q4RO+1oK6zw0LhkXmmgxGArRrp
 197Erp7InyMtSTaub656faEczpbOBsvikrLHIIT8aPG6r+qUBTBMYvvXYhX0kyIQREa+9o
 yzxeHAqTYuuV4SyzkACDvyt+2mfUxvo=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-207-4SXQcSMKPBWUYjIoKPXXwA-1; Fri, 18 Jun 2021 11:54:22 -0400
X-MC-Unique: 4SXQcSMKPBWUYjIoKPXXwA-1
Received: by mail-qk1-f197.google.com with SMTP id
 e13-20020a37e50d0000b02903ad5730c883so3804777qkg.22
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jun 2021 08:54:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=pTxeyNpIA2yWa83l1BM9jQJLYRuEXdkId0aXocQ8b1U=;
 b=Z3n75wS0r1vUc+WnuY+7vN6MUZH0lNFHReZGmRBhkElKXl8NBFei6AiDMNSe8W3+bO
 fimvL2cr/Ei71ibHr/JKdjr/SFjyOu2DDDl4qT2UKFiUIKEDPb5O7S1o90Qlna6rzpSi
 t4OsBJVswo5JTTtb0fv0lbaQUeFtx4Awqkm7trPw1Vs9w4MIFki2LM74/S6qPc2tOIUI
 OvJDCDJGm39Tto8FPzQF5NuYnpLLpIGx9y3QhqDOJnFk0f9sMhq17RlxSNfkR63WD04U
 mDWBu/u7DnuUpkxSwCPnTXKEyzPYbXu/SNJfjPoMSTsr1nhvfDakUMPpPNAmjSHwuYZD
 1Rtw==
X-Gm-Message-State: AOAM531s1+REVoRkzcPVgydbV0wYZ+lga0EIt5vVhRdvDWN+abHz/eN9
 hayCSYBnydtorCqNRHYCeXCvhc+nfRblccciN/97anfn8KcnftrmlH8U5Rfbl25ABpuQa8iAKFU
 4rSYHRWMO/ZauGGlnQbtW6lI1aXEg
X-Received: by 2002:a0c:eb85:: with SMTP id x5mr6350507qvo.1.1624031661843;
 Fri, 18 Jun 2021 08:54:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwZ9ggc3AKjIwn7XQloIJoaZ3eTaNDM+vfsDB9bdUhWVkiU/K4XhcFH14Yq54qwSR5AjGFZNg==
X-Received: by 2002:a0c:eb85:: with SMTP id x5mr6350494qvo.1.1624031661632;
 Fri, 18 Jun 2021 08:54:21 -0700 (PDT)
Received: from Ruby.lyude.net (pool-108-49-102-102.bstnma.fios.verizon.net.
 [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id w133sm4103706qkb.105.2021.06.18.08.54.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Jun 2021 08:54:21 -0700 (PDT)
Message-ID: <e7c1b92571c4230c7091e4972e4e131fc2902bea.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: "Lin, Wayne" <Wayne.Lin@amd.com>, =?ISO-8859-1?Q?Jos=E9?= Roberto de
 Souza <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Date: Fri, 18 Jun 2021 11:54:20 -0400
In-Reply-To: <CO6PR12MB5489B93BAF0D296FDC1BDA79FC0E9@CO6PR12MB5489.namprd12.prod.outlook.com>
References: <20210616194415.36926-1-jose.souza@intel.com>
 ,<6b5b8d478b3ecb33858c3f55f432178c0917ffb4.camel@redhat.com>
 <CO6PR12MB5489B93BAF0D296FDC1BDA79FC0E9@CO6PR12MB5489.namprd12.prod.outlook.com>
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
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQncyBubyBwcm9ibGVtISBXZSBhbGwgbWFrZSBtaXN0YWtlcyBzb21ldGltZXMgOiksIEkgc2hv
dWxkIGhhdmUgYmVlbiBtb3JlCmRpbGlnZW50IG9uIGNvbXBpbGUtY2hlY2tpbmcgdGhpcyBteXNl
bGYgYXMgd2VsbAoKT24gVGh1LCAyMDIxLTA2LTE3IGF0IDA4OjIwICswMDAwLCBMaW4sIFdheW5l
IHdyb3RlOgo+IFtQdWJsaWNdCj4gCj4gUmVhbGx5IHNvcnJ5IGZvciB0aGUgbWlzdGFrZSB0aGF0
IEkgbWFkZSBhbmQgYW55IGluY29udmVuaWVuY2UgaXQgYnJvdWdodC4KPiBUaGFua3MgSm9zw6kg
YW5kIEx5dWRlLgo+IAo+IFJlZ2FyZHMsCj4gV2F5bmUKPiAKPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gPiBGcm9tOiBMeXVkZSBQYXVsIDxseXVkZUByZWRoYXQu
Y29tPgo+ID4gU2VudDogVGh1cnNkYXksIEp1bmUgMTcsIDIwMjEgMDM6NDcKPiA+IFRvOiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphOyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiBD
YzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgTGluLCBXYXluZQo+ID4gU3ViamVj
dDogUmU6IFtQQVRDSF0gZHJtL2RwX21zdDogQWRkIG1pc3NpbmcgZHJtIHBhcmFtZXRlcnMgdG8g
cmVjZW50bHkKPiA+IGFkZGVkIGNhbGwgdG8gZHJtX2RiZ19rbXMoKQo+ID4gCj4gPiBSZXZpZXdl
ZC1ieTogTHl1ZGUgUGF1bCA8bHl1ZGVAcmVkaGF0LmNvbT4KPiA+IAo+ID4gV2lsbCBnbyBhaGVh
ZCBhbmQgcHVzaCB0aGlzIHRvIGRybS1taXNjLW5leHQtZml4ZXMsIHRoYW5rcwo+ID4gCj4gPiBP
biBXZWQsIDIwMjEtMDYtMTYgYXQgMTI6NDQgLTA3MDAsIEpvc8OpIFJvYmVydG8gZGUgU291emEg
d3JvdGU6Cj4gPiA+IENvbW1pdCAzNzY5ZTRjMGFmNWIgKCJkcm0vZHBfbXN0OiBBdm9pZCB0byBt
ZXNzIHVwIHBheWxvYWQgdGFibGUgYnkKPiA+ID4gcG9ydHMgaW4gc3RhbGUgdG9wb2xvZ3kiKSBh
ZGRlZCB0byBjYWxscyB0byBkcm1fZGJnX2ttcygpIGJ1dCBpdAo+ID4gPiBtaXNzZWQgdGhlIGZp
cnN0IHBhcmFtZXRlciwgdGhlIGRybSBkZXZpY2UgYnJlYWtpbmcgdGhlIGJ1aWxkLgo+ID4gPiAK
PiA+ID4gRml4ZXM6IDM3NjllNGMwYWY1YiAoImRybS9kcF9tc3Q6IEF2b2lkIHRvIG1lc3MgdXAg
cGF5bG9hZCB0YWJsZSBieQo+ID4gPiBwb3J0cyBpbgo+ID4gPiBzdGFsZSB0b3BvbG9neSIpCj4g
PiA+IENjOiBXYXluZSBMaW4gPFdheW5lLkxpbkBhbWQuY29tPgo+ID4gPiBDYzogTHl1ZGUgUGF1
bCA8bHl1ZGVAcmVkaGF0LmNvbT4KPiA+ID4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKPiA+ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5z
b3V6YUBpbnRlbC5jb20+Cj4gPiA+IC0tLQo+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9kcm1fZHBf
bXN0X3RvcG9sb2d5LmMgfCA3ICsrKysrLS0KPiA+ID4gwqAxIGZpbGUgY2hhbmdlZCwgNSBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMKPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0v
ZHJtX2RwX21zdF90b3BvbG9neS5jCj4gPiA+IGluZGV4IDlhYzE0OGVmZDllNDMuLmFkMDc5NWFm
YzIxY2YgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBfbXN0X3RvcG9s
b2d5LmMKPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9tc3RfdG9wb2xvZ3kuYwo+
ID4gPiBAQCAtMzM4OSw3ICszMzg5LDkgQEAgaW50IGRybV9kcF91cGRhdGVfcGF5bG9hZF9wYXJ0
MShzdHJ1Y3QKPiA+ID4gZHJtX2RwX21zdF90b3BvbG9neV9tZ3IgKm1ncikKPiA+ID4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtdXRleF91bmxvY2soJm1n
ci0+bG9jayk7Cj4gPiA+IAo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGlmIChza2lwKSB7Cj4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZHJtX2RiZ19rbXMoIlZpcnR1YWwg
Y2hhbm5lbCAlZCBpcyBub3QKPiA+ID4gaW4KPiA+ID4gY3VycmVudCB0b3BvbG9neVxuIiwgaSk7
Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgZHJtX2RiZ19rbXMobWdyLT5kZXYsCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgIlZpcnR1YWwgY2hhbm5lbCAlZCBpcyBub3QKPiA+ID4gaW4KPiA+ID4gY3Vy
cmVudCB0b3BvbG9neVxuIiwKPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpKTsK
PiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgY29udGludWU7Cj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgfQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIC8qIFZhbGlkYXRlZCBwb3J0cyBkb24ndCBtYXR0ZXIgaWYgd2UncmUK
PiA+ID4gcmVsZWFzaW5nCj4gPiA+IEBAIC0zNDA0LDcgKzM0MDYsOCBAQCBpbnQgZHJtX2RwX3Vw
ZGF0ZV9wYXlsb2FkX3BhcnQxKHN0cnVjdAo+ID4gPiBkcm1fZHBfbXN0X3RvcG9sb2d5X21nciAq
bWdyKQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBheWxvYWQt
PnN0YXJ0X3Nsb3QgPQo+ID4gPiByZXFfcGF5bG9hZC5zdGFydF9zbG90Owo+ID4gPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnRpbnVlOwo+ID4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgfSBlbHNlIHsKPiA+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGRybV9kYmdfa21zKCJGYWlsOnNldAo+ID4gPiBwYXlsb2FkIHRvIGludmFsaWQgc2lu
ayIpOwo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZHJtX2RiZ19r
bXMobWdyLT5kZXYsCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiRmFpbDpzZXQKPiA+ID4gcGF5bG9hZCB0byBpbnZhbGlk
IHNpbmsiKTsKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtdXRl
eF91bmxvY2soJm1nci0KPiA+ID4gPiBwYXlsb2FkX2xvY2spOwo+ID4gPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRUlOVkFMOwo+ID4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgfQo+ID4gCj4gPiAtLQo+ID4gQ2hlZXJzLAo+ID4gwqBMeXVkZSBQYXVsIChz
aGUvaGVyKQo+ID4gwqBTb2Z0d2FyZSBFbmdpbmVlciBhdCBSZWQgSGF0Cj4gCgotLSAKQ2hlZXJz
LAogTHl1ZGUgUGF1bCAoc2hlL2hlcikKIFNvZnR3YXJlIEVuZ2luZWVyIGF0IFJlZCBIYXQKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
