Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B2C35FA58
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 20:18:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F97A89117;
	Wed, 14 Apr 2021 18:18:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57EFB6E95D
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 18:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1618424281;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PqMQq5ZjcTbXc6ahUAb6RtVIAIQY30tln4IDoLvU+WA=;
 b=D0FS6MN7uUD3y/GnhIc14w0bP4GIFSVUAoSQRN0/i5TgMplZ9hbKiG9hCBHehDk8mYwzOg
 AIPak4q9NQucVrGicPcIc9XT+uPOayDWvgsojmM5kP4L4+c4FNutmzVJbZp0FwGYoB24iZ
 YlKuLnS3Qa4Vv9DxHWvs+0xG8TlvKBM=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-514-5dvTAVMON0O4DV_jg7Ryxw-1; Wed, 14 Apr 2021 14:17:47 -0400
X-MC-Unique: 5dvTAVMON0O4DV_jg7Ryxw-1
Received: by mail-qv1-f72.google.com with SMTP id
 x15-20020a0ce0cf0000b029019cb3e75c62so157090qvk.15
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 11:17:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=PqMQq5ZjcTbXc6ahUAb6RtVIAIQY30tln4IDoLvU+WA=;
 b=gOpJfgAR5nOTIC67frrlqXiMte1f+4JpUcz28XVufFkP+1PThQbrHOJwZat/b2I2y8
 SvKyaLs5fQnZw17VFOOYxXiQrDwAgF0a+k4Gs0DrlS78OB7Wi4F0RVKWUEeFYvVIc1Xf
 tFybZQgcwQP8fSIGkaqRfJ4mNlhqwaR2e21IoYlIOXjpYqOhwPcT2bPtD+Zmi6hOAP2o
 HxPNgQODZYAVDzB2ouZ2ykbPrdJcZUf5E80TvfSOmf/ttcKkgcczcnv9ffY/dV9yt1xG
 9wSWg2bfilbqxsEBeArjvtxHsN9oLmtAydCT7h9F3GqfCq4HInyV+2VIDcLY0nfThbDz
 6BHg==
X-Gm-Message-State: AOAM532nFs0J+ZUJ/0urAQwlzBvO4q6Z10QDbWD+MdDfed4cgvc7t/eD
 GtPrW5SD4qugNRILbnCKD2lpgV3xIcFA1Y+BjrX5LuJxSnExZSbgNGBhffsQP7fpPzmLudDQSOH
 Ap2LicPfik3l334zjV+b9es9rwLiv
X-Received: by 2002:ae9:ed16:: with SMTP id c22mr21123672qkg.292.1618424267410; 
 Wed, 14 Apr 2021 11:17:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwhCLrjqwhBZruoTsJbpDIweXUGa1EcovOGAxb7r+GzlNzNtaJxFvwGSpsXlU7qgvJApBoMyg==
X-Received: by 2002:ae9:ed16:: with SMTP id c22mr21123654qkg.292.1618424267200; 
 Wed, 14 Apr 2021 11:17:47 -0700 (PDT)
Received: from Ruby.lyude.net (pool-108-49-102-102.bstnma.fios.verizon.net.
 [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id e7sm113738qth.27.2021.04.14.11.17.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Apr 2021 11:17:46 -0700 (PDT)
Message-ID: <0a64b70c89699b4e6c7aaa3ba8e75531031faa3c.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Thierry Reding <thierry.reding@gmail.com>
Date: Wed, 14 Apr 2021 14:17:45 -0400
In-Reply-To: <YHcdCAQ7Dlb2vSzn@orome.fritz.box>
References: <20210219215326.2227596-1-lyude@redhat.com>
 <20210219215326.2227596-4-lyude@redhat.com>
 <YHcdCAQ7Dlb2vSzn@orome.fritz.box>
Organization: Red Hat
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH 03/30] drm/tegra: Don't register DP AUX
 channels before connectors
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
Cc: dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 open list <linux-kernel@vger.kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, amd-gfx@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>,
 "open list:DRM DRIVERS FOR NVIDIA TEGRA" <linux-tegra@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIxLTA0LTE0IGF0IDE4OjQ5ICswMjAwLCBUaGllcnJ5IFJlZGluZyB3cm90ZToK
PiBPbiBGcmksIEZlYiAxOSwgMjAyMSBhdCAwNDo1Mjo1OVBNIC0wNTAwLCBMeXVkZSBQYXVsIHdy
b3RlOgo+ID4gQXMgcG9pbnRlZCBvdXQgYnkgdGhlIGRvY3VtZW50YXRpb24gZm9yIGRybV9kcF9h
dXhfcmVnaXN0ZXIoKSwKPiA+IGRybV9kcF9hdXhfaW5pdCgpIHNob3VsZCBiZSB1c2VkIGluIHNp
dHVhdGlvbnMgd2hlcmUgdGhlIEFVWCBjaGFubmVsIGZvciBhCj4gPiBkaXNwbGF5IGRyaXZlciBj
YW4gcG90ZW50aWFsbHkgYmUgcmVnaXN0ZXJlZCBiZWZvcmUgaXQncyByZXNwZWN0aXZlIERSTQo+
ID4gZHJpdmVyLiBUaGlzIGlzIHRoZSBjYXNlIHdpdGggVGVncmEsIHNpbmNlIHRoZSBEUCBhdXgg
Y2hhbm5lbCBleGlzdHMgYXMgYQo+ID4gcGxhdGZvcm0gZGV2aWNlIGluc3RlYWQgb2YgYmVpbmcg
YSBncmFuZGNoaWxkIG9mIHRoZSBEUk0gZGV2aWNlLgo+ID4gCj4gPiBTaW5jZSB3ZSdyZSBhYm91
dCB0byBhZGQgYSBiYWNrcG9pbnRlciB0byBhIERQIEFVWCBjaGFubmVsJ3MgcmVzcGVjdGl2ZQo+
ID4gRFJNCj4gPiBkZXZpY2UsIGxldCdzIGZpeCB0aGlzIHNvIHRoYXQgd2UgZG9uJ3QgcG90ZW50
aWFsbHkgYWxsb3cgdXNlcnNwYWNlIHRvIHVzZQo+ID4gdGhlIEFVWCBjaGFubmVsIGJlZm9yZSB3
ZSd2ZSBhc3NvY2lhdGVkIGl0IHdpdGggaXQncyBEUk0gY29ubmVjdG9yLgo+ID4gCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBMeXVkZSBQYXVsIDxseXVkZUByZWRoYXQuY29tPgo+ID4gLS0tCj4gPiDCoGRy
aXZlcnMvZ3B1L2RybS90ZWdyYS9kcGF1eC5jIHwgMTEgKysrKysrLS0tLS0KPiA+IMKgMSBmaWxl
IGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90ZWdyYS9kcGF1eC5jIGIvZHJpdmVycy9ncHUvZHJtL3Rl
Z3JhL2RwYXV4LmMKPiA+IGluZGV4IDEwNWZiOWNkYmIzYi4uZWE1NmM2ZWMyNWU0IDEwMDY0NAo+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3RlZ3JhL2RwYXV4LmMKPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS90ZWdyYS9kcGF1eC5jCj4gPiBAQCAtNTM0LDkgKzUzNCw3IEBAIHN0YXRpYyBpbnQg
dGVncmFfZHBhdXhfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZQo+ID4gKnBkZXYpCj4gPiDC
oMKgwqDCoMKgwqDCoMKgZHBhdXgtPmF1eC50cmFuc2ZlciA9IHRlZ3JhX2RwYXV4X3RyYW5zZmVy
Owo+ID4gwqDCoMKgwqDCoMKgwqDCoGRwYXV4LT5hdXguZGV2ID0gJnBkZXYtPmRldjsKPiA+IMKg
Cj4gPiAtwqDCoMKgwqDCoMKgwqBlcnIgPSBkcm1fZHBfYXV4X3JlZ2lzdGVyKCZkcGF1eC0+YXV4
KTsKPiA+IC3CoMKgwqDCoMKgwqDCoGlmIChlcnIgPCAwKQo+ID4gLcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoHJldHVybiBlcnI7Cj4gPiArwqDCoMKgwqDCoMKgwqBkcm1fZHBfYXV4X2lu
aXQoJmRwYXV4LT5hdXgpOwo+IAo+IEkganVzdCBub3RpY2VkIHRoYXQgdGhpcyBjaGFuZ2UgY2F1
c2VzIGFuIGVycm9yIG9uIHNvbWUgc2V0dXBzIHRoYXQgSQo+IGhhdmVuJ3Qgc2VlbiBiZWZvcmUu
IFRoZSBwcm9ibGVtIGlzIHRoYXQgdGhlIFNPUiBkcml2ZXIgdHJpZXMgdG8gZ3JhYiBhCj4gcmVm
ZXJlbmNlIHRvIHRoZSBJMkMgZGV2aWNlIHRvIG1ha2Ugc3VyZSBpdCBkb2Vzbid0IGdvIGF3YXkg
d2hpbGUgaXQgaGFzCj4gYSBwb2ludGVyIHRvIGl0Lgo+IAo+IEhvd2V2ZXIsIHNpbmNlIG5vdyB0
aGUgSTJDIGFkYXB0ZXIgaGFzbid0IGJlZW4gcmVnaXN0ZXJlZCB5ZXQsIEkgZ2V0Cj4gdGhpczoK
PiAKPiDCoMKgwqDCoMKgwqDCoMKgW8KgwqAgMTUuMDEzOTY5XSBrb2JqZWN0OiAnKG51bGwpJyAo
MDAwMDAwMDA1YzkwM2U0Myk6IGlzIG5vdAo+IGluaXRpYWxpemVkLCB5ZXQga29iamVjdF9nZXQo
KSBpcyBiZWluZyBjYWxsZWQuCj4gCj4gSSByZWNhbGwgdGhhdCB5b3Ugd2FudGVkIHRvIG1ha2Ug
dGhpcyBjaGFuZ2Ugc28gdGhhdCBhIGJhY2twb2ludGVyIHRvCj4gdGhlIERSTSBkZXZpY2UgY291
bGQgYmUgYWRkZWQgKEkgdGhpbmsgdGhhdCdzIHBhdGNoIDE1IG9mIHRoZSBzZXJpZXMpLAo+IGJ1
dCBJIGRpZG4ndCBzZWUgdGhhdCBwYXRjaCBnZXQgbWVyZ2VkLCBzbyBpdCdzIGEgYml0IGRpZmZp
Y3VsdCB0byB0cnkKPiBhbmQgZml4IHRoaXMgdXAuCgpJJ20gcHJldHR5IHN1cmUgSSBhbHJlYWR5
IG1lcmdlZCB0aGUgdGVncmEgY2hhbmdlIGluIGRybS1taXNjLW5leHQsIHNvIGlmIGl0J3MKY2F1
c2luZyBpc3N1ZXMgeW91IHByb2JhYmx5IHNob3VsZCBzZW5kIG91dCBhIHJldmVydCBmb3Igbm93
IGFuZCBJIGNhbiByLWIgaXQKc28gd2UgY2FuIGZpZ3VyZSBvdXQgYSBiZXR0ZXIgc29sdXRpb24g
Zm9yIHRoaXMgaW4gdGhlIG1lYW4gdGltZQoKPiBIYXMgdGhlIHNpdHVhdGlvbiBjaGFuZ2VkPyBE
byB3ZSBubyBsb25nZXIgbmVlZCB0aGUgYmFja3BvaW50ZXI/IElmIHdlCj4gc3RpbGwgd2FudCBp
dCwgd2hhdCdzIHRoZSBwbGFuIGZvciBtZXJnaW5nIHRoZSBjaGFuZ2U/IFNob3VsZCBJIHdvcmsK
PiB1bmRlciB0aGUgYXNzdW1wdGlvbiB0aGF0IHBhdGNoIHdpbGwgbWFrZSBpdCBpbiBzb21ldGlt
ZSBhbmQgdHJ5IHRvIGZpeAo+IHRoaXMgb24gdG9wIG9mIHRoYXQ/Cgp5ZXMgd2UgZG8gc3RpbGwg
bmVlZCB0aGUgYmFja3BvaW50ZXIgLSBJJ20ganVzdCBzdGlsbCB3b3JraW5nIG9uIGdldHRpbmcK
cmV2aWV3cyBmb3Igc29tZSBvZiB0aGUgb3RoZXIgcGFydHMgb2YgdGhpcyBzZXJpZXMsIGFuZCBo
YXZlIGJlZW4gb24gUFRPL2J1c3kKd2l0aCBhIGNvdXBsZSBvZiBvdGhlciB0aGluZ3MuCgo+IAo+
IEknbSB0aGlua2luZyB0aGF0IHBlcmhhcHMgd2UgY2FuIG1vdmUgdGhlIEkyQyBhZGFwdGVyIHJl
Z2lzdHJhdGlvbiBpbnRvCj4gZHJtX2RwX2F1eF9pbml0KCkgc2luY2UgdGhhdCdzIGluZGVwZW5k
ZW50IG9mIHRoZSBEUk0gZGV2aWNlLgoKWWVhaCB0aGlzIG1ha2VzIHNlbnNlIGZvciBtZSAtIEkg
Y2FuIHRyeSB0byBtYWtlIHRoaXMgY2hhbmdlIG9uIHRoZSBuZXh0CnJlc3BpbiBvZiB0aGlzIHNl
cmllcy4gV2hhdCBraW5kIG9mIHNldHVwIHdlcmUgeW91IGFibGUgdG8gcmVwcm9kdWNlIGlzc3Vl
cyBvbgp0aGlzIHdpdGggYnR3PwoKPiAgSXQgd291bGQKPiBhbHNvIG1ha2UgYSBiaXQgbW9yZSBz
ZW5zZSBmcm9tIHRoZSBUZWdyYSBkcml2ZXIncyBwb2ludCBvZiB2aWV3IHdoZXJlCj4gYWxsIGRl
dmljZXMgd291bGQgYmUgY3JlYXRlZCBkdXJpbmcgdGhlIC0+cHJvYmUoKSBwYXRoLCBhbmQgb25s
eSBkdXJpbmcKPiB0aGUgLT5pbml0KCkgcGF0aCB3b3VsZCB0aGUgY29ubmVjdGlvbiBiZXR3ZWVu
IERSTSBkZXZpY2UgYW5kIERSTSBEUCBBVVgKPiBkZXZpY2UgYmUgZXN0YWJsaXNoZWQuCj4gCj4g
VGhpZXJyeQoKLS0gCkNoZWVycywKIEx5dWRlIFBhdWwgKHNoZS9oZXIpCiBTb2Z0d2FyZSBFbmdp
bmVlciBhdCBSZWQgSGF0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
