Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F94336E1A4
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 00:51:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C4C489267;
	Wed, 28 Apr 2021 22:51:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D01CB89471
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Apr 2021 22:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1619650261;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Z/dqeIM6pbFmq7/IC7tXSdaEwcFaLHbCA4+yGBPyH5k=;
 b=aEcSlS/2hSrcWhYxUTa3bHvHH7s2IudF5xMHkpG+3GOq5oEqDREVrq3RnZtO+3C1Py9WKr
 q/z4L7tk0DpAd1ELv/Rkb3Fhlek9fPlomG9NwBTJg+keWgCPHB46IXwm12BvohINgYIL5c
 hfGW1whf4tith23l7ryOb5w12g7GNI4=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-449-x2JxXkJPO76DXWUrU9qP-Q-1; Wed, 28 Apr 2021 18:50:59 -0400
X-MC-Unique: x2JxXkJPO76DXWUrU9qP-Q-1
Received: by mail-qv1-f70.google.com with SMTP id
 t1-20020a0ca6810000b029019e892416e6so28936382qva.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Apr 2021 15:50:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=Z/dqeIM6pbFmq7/IC7tXSdaEwcFaLHbCA4+yGBPyH5k=;
 b=CyND8JGaRPvRWwMN3dC4AH4Bmx+PwtbFcQ2MBjWMqNJco8CC0imtoSuBMDuAUfNjn6
 dCjoUd69uXq2b19onSqctOZQz0ztnbI8YwMw14FEgW663Js8aQ9s4EQz/KVxvgbQJNbz
 zrX+5NxsWAdZbHSATAAz/gAHS2sVTiTlIiIVZkcRx9YkDHhBO4I6iE+g34J9eYsOAmvr
 9/sirQPGRIqJkaqnw+m0BX1TCxa2bvtPCRIzW+ue6U8OPrYzoAguIkB1BGUtDBXi8S62
 N3UqTDLf9J7WzLZPaAx7vQJiGhpmMSlekKPfBoOu4YF4eJSAQHB82zAlAdefjyC7oEKm
 FH9Q==
X-Gm-Message-State: AOAM530Gg3V/5JdhNwLMy1JFnRUECAXS5Yj/PICcD20x88jUNPSp7RAa
 0W6e6E5Hn3X/KlPK0OJYfbfKzbWNwVFtXTHhQwdRrv0+6xfxI288HIEb8TvIFRwZLeQ97EsQkIc
 qliXrlTpVDwY4aGKsxsVk8pDpyAsH
X-Received: by 2002:a37:a04b:: with SMTP id j72mr30044718qke.194.1619650258354; 
 Wed, 28 Apr 2021 15:50:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz2V3Eao3NnEEoT5XUrPsOuYEsBDYU1NVmsno+YfOpwUw1Ht3hmy8ltE4XbRzFaXH71sK/SeQ==
X-Received: by 2002:a37:a04b:: with SMTP id j72mr30044697qke.194.1619650258079; 
 Wed, 28 Apr 2021 15:50:58 -0700 (PDT)
Received: from Ruby.lyude.net (pool-108-49-102-102.bstnma.fios.verizon.net.
 [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id t1sm935231qto.78.2021.04.28.15.50.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Apr 2021 15:50:57 -0700 (PDT)
Message-ID: <f8d8fce4c3e79852cab27434a0942a0850336023.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Nikola Cornij <nikola.cornij@amd.com>, amd-gfx@lists.freedesktop.org
Date: Wed, 28 Apr 2021 18:50:56 -0400
In-Reply-To: <20210428204406.1067318-2-nikola.cornij@amd.com>
References: <20210428204406.1067318-1-nikola.cornij@amd.com>
 <20210428204406.1067318-2-nikola.cornij@amd.com>
Organization: Red Hat
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH v6 1/1] drm/drm_mst: Use Extended Base
 Receiver Capability DPCD space
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
Cc: koba.ko@canonical.com, mikita.lipski@amd.com, aurabindo.pillai@amd.com,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmVzZW5kLCBzaW5jZSBJIGhpdCBlbnRlciB0b28gZWFybHkgb24gdGhlIGZpcnN0IG9uZSA6KS4K
Ck9uIFdlZCwgMjAyMS0wNC0yOCBhdCAxNjo0NCAtMDQwMCwgTmlrb2xhIENvcm5paiB3cm90ZToK
PiBbd2h5XQo+IERQIDEuNGEgc3BlYyBtYWRhdGVzIHRoYXQgaWYgRFBfRVhURU5ERURfUkVDRUlW
RVJfQ0FQX0ZJRUxEX1BSRVNFTlQgaXMKPiBzZXQsIEV4dGVuZGVkIEJhc2UgUmVjZWl2ZXIgQ2Fw
YWJpbGl0eSBEUENEIHNwYWNlIG11c3QgYmUgdXNlZC4gV2l0aG91dAo+IGRvaW5nIHRoYXQsIHRo
ZSB0aHJlZSBEUENEIHZhbHVlcyB0aGF0IGRpZmZlciB3aWxsIGJlIHdyb25nLCBsZWFkaW5nIHRv
Cj4gaW5jb3JyZWN0IG9yIGxpbWl0ZWQgZnVuY3Rpb25hbGl0eS4gTVNUIGxpbmsgcmF0ZSwgZm9y
IGV4YW1wbGUsIGNvdWxkCj4gaGF2ZSBhIGxvd2VyIHZhbHVlLiBBbHNvLCBTeW5hcHRpY3MgcXVp
cmsgd291bGRuJ3Qgd29yayBvdXQgd2VsbCB3aGVuCj4gRXh0ZW5kZWQgRFBDRCB3YXMgbm90IHJl
YWQsIHJlc3VsdGluZyBpbiBubyBEU0MgZm9yIHN1Y2ggaHVicy4KPiAKPiBbaG93XQo+IE1vZGlm
eSBNU1QgdG9wb2xvZ3kgbWFuYWdlciB0byB1c2UgdGhlIHZhbHVlcyBmcm9tIEV4dGVuZGVkIERQ
Q0Qgd2hlcmUKPiBhcHBsaWNhYmxlLgo+IAo+IFRvIHByZXZlbnQgcmVncmVzc2lvbiBvbiB0aGUg
c291cmNlcyB0aGF0IGhhdmUgYSBsb3dlciBtYXhpbXVtIGxpbmsgcmF0ZQo+IGNhcGFiaWxpdHkg
dGhhbiBNQVhfTElOS19SQVRFIGZyb20gRXh0ZW5kZWQgRFBDRCwgaGF2ZSB0aGUgZHJpdmVycwo+
IHN1cHBseSBtYXhpbXVtIGxhbmUgY291bnQgYW5kIHJhdGUgYXQgaW5pdGlhbGl6YXRpb24gdGlt
ZS4KPiAKPiBUaGlzIGFsc28gcmV2ZXJ0cyAnY29tbWl0IDJkY2FiODc1ZTc2MyAoIlJldmVydCAi
ZHJtL2RwX21zdDogUmV0cmlldmUKPiBleHRlbmRlZCBEUENEIGNhcHMgZm9yIHRvcG9sb2d5IG1h
bmFnZXIiIiknLCBicmluaW5nIHRoZSBjaGFuZ2UgYmFjayB0bwo+IHRoZSBvcmlnaW5hbCAnY29t
bWl0IGFkNDRjMDMyMDhlNCAoImRybS9kcF9tc3Q6IFJldHJpZXZlIGV4dGVuZGVkIERQQ0QKPiBj
YXBzIGZvciB0b3BvbG9neSBtYW5hZ2VyIiknLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE5pa29sYSBD
b3JuaWogPG5pa29sYS5jb3JuaWpAYW1kLmNvbT4KPiAtLS0KPiDCoC4uLi9kaXNwbGF5L2FtZGdw
dV9kbS9hbWRncHVfZG1fbXN0X3R5cGVzLmPCoMKgIHzCoCA1ICsrKwo+IMKgLi4uL2dwdS9kcm0v
YW1kL2Rpc3BsYXkvZGMvY29yZS9kY19saW5rX2RwLmPCoCB8IDE4ICsrKysrKysrKysrCj4gwqBk
cml2ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvZGMvZGNfbGluay5owqDCoMKgwqDCoCB8wqAgMiAr
Kwo+IMKgZHJpdmVycy9ncHUvZHJtL2RybV9kcF9tc3RfdG9wb2xvZ3kuY8KgwqDCoMKgwqDCoMKg
wqAgfCAzMiArKysrKysrKysrKystLS0tLS0tCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwX21zdC5jwqDCoCB8wqAgNiArKystCj4gwqBkcml2ZXJzL2dwdS9kcm0vbm91
dmVhdS9kaXNwbnY1MC9kaXNwLmPCoMKgwqDCoMKgwqAgfMKgIDMgKy0KPiDCoGRyaXZlcnMvZ3B1
L2RybS9yYWRlb24vcmFkZW9uX2RwX21zdC5jwqDCoMKgwqDCoMKgwqAgfMKgIDggKysrKysKPiDC
oGluY2x1ZGUvZHJtL2RybV9kcF9tc3RfaGVscGVyLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHwgMTIgKysrKysrLQo+IMKgOCBmaWxlcyBjaGFuZ2VkLCA3MSBpbnNlcnRpb25zKCspLCAx
NSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9kaXNw
bGF5L2FtZGdwdV9kbS9hbWRncHVfZG1fbXN0X3R5cGVzLmMKPiBiL2RyaXZlcnMvZ3B1L2RybS9h
bWQvZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtX21zdF90eXBlcy5jCj4gaW5kZXggOTk3NTY3
ZjZmMGJhLi5iN2UwMWI2ZmIzMjggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9k
aXNwbGF5L2FtZGdwdV9kbS9hbWRncHVfZG1fbXN0X3R5cGVzLmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vYW1kL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9kbV9tc3RfdHlwZXMuYwo+IEBAIC00
MjksNiArNDI5LDggQEAgdm9pZCBhbWRncHVfZG1faW5pdGlhbGl6ZV9kcF9jb25uZWN0b3Ioc3Ry
dWN0Cj4gYW1kZ3B1X2Rpc3BsYXlfbWFuYWdlciAqZG0sCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBz
dHJ1Y3QgYW1kZ3B1X2RtX2Nvbm5lY3RvciAqYWNvbm5lY3RvciwKPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGludCBsaW5rX2luZGV4KQo+IMKgewo+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBkY19saW5r
X3NldHRpbmdzIG1heF9saW5rX2VuY19jYXAgPSB7MH07Cj4gKwo+IMKgwqDCoMKgwqDCoMKgwqBh
Y29ubmVjdG9yLT5kbV9kcF9hdXguYXV4Lm5hbWUgPQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKga2FzcHJpbnRmKEdGUF9LRVJORUwsICJBTURHUFUgRE0gYXV4IGh3IGJ1cyAlZCIs
Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbGlu
a19pbmRleCk7Cj4gQEAgLTQ0Myw2ICs0NDUsNyBAQCB2b2lkIGFtZGdwdV9kbV9pbml0aWFsaXpl
X2RwX2Nvbm5lY3RvcihzdHJ1Y3QKPiBhbWRncHVfZGlzcGxheV9tYW5hZ2VyICpkbSwKPiDCoMKg
wqDCoMKgwqDCoMKgaWYgKGFjb25uZWN0b3ItPmJhc2UuY29ubmVjdG9yX3R5cGUgPT0gRFJNX01P
REVfQ09OTkVDVE9SX2VEUCkKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVy
bjsKPiDCoAo+ICvCoMKgwqDCoMKgwqDCoGRjX2xpbmtfZHBfZ2V0X21heF9saW5rX2VuY19jYXAo
YWNvbm5lY3Rvci0+ZGNfbGluaywKPiAmbWF4X2xpbmtfZW5jX2NhcCk7Cj4gwqDCoMKgwqDCoMKg
wqDCoGFjb25uZWN0b3ItPm1zdF9tZ3IuY2JzID0gJmRtX21zdF9jYnM7Cj4gwqDCoMKgwqDCoMKg
wqDCoGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyX2luaXQoCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAmYWNvbm5lY3Rvci0+bXN0X21nciwKPiBAQCAtNDUwLDYgKzQ1Myw4IEBAIHZv
aWQgYW1kZ3B1X2RtX2luaXRpYWxpemVfZHBfY29ubmVjdG9yKHN0cnVjdAo+IGFtZGdwdV9kaXNw
bGF5X21hbmFnZXIgKmRtLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgJmFjb25u
ZWN0b3ItPmRtX2RwX2F1eC5hdXgsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAx
NiwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoDQsCj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoG1heF9saW5rX2VuY19jYXAubGFuZV9jb3VudCwKPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgbWF4X2xpbmtfZW5jX2NhcC5saW5rX3JhdGUsCj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBhY29ubmVjdG9yLT5jb25uZWN0b3JfaWQpOwo+IMKg
Cj4gwqDCoMKgwqDCoMKgwqDCoGRybV9jb25uZWN0b3JfYXR0YWNoX2RwX3N1YmNvbm5lY3Rvcl9w
cm9wZXJ0eSgmYWNvbm5lY3Rvci0+YmFzZSk7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9hbWQvZGlzcGxheS9kYy9jb3JlL2RjX2xpbmtfZHAuYwo+IGIvZHJpdmVycy9ncHUvZHJtL2Ft
ZC9kaXNwbGF5L2RjL2NvcmUvZGNfbGlua19kcC5jCj4gaW5kZXggN2QyZTQzM2MyMjc1Li42ZmU2
NmI3ZWU1M2UgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9kaXNwbGF5L2RjL2Nv
cmUvZGNfbGlua19kcC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9kaXNwbGF5L2RjL2Nv
cmUvZGNfbGlua19kcC5jCj4gQEAgLTE4OTQsNiArMTg5NCwyNCBAQCBib29sIGRjX2xpbmtfZHBf
c3luY19sdF9lbmQoc3RydWN0IGRjX2xpbmsgKmxpbmssIGJvb2wKPiBsaW5rX2Rvd24pCj4gwqDC
oMKgwqDCoMKgwqDCoHJldHVybiB0cnVlOwo+IMKgfQo+IMKgCj4gK2Jvb2wgZGNfbGlua19kcF9n
ZXRfbWF4X2xpbmtfZW5jX2NhcChjb25zdCBzdHJ1Y3QgZGNfbGluayAqbGluaywgc3RydWN0Cj4g
ZGNfbGlua19zZXR0aW5ncyAqbWF4X2xpbmtfZW5jX2NhcCkKPiArewo+ICvCoMKgwqDCoMKgwqDC
oGlmICghbWF4X2xpbmtfZW5jX2NhcCkgewo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBEQ19MT0dfRVJST1IoIiVzOiBDb3VsZCBub3QgcmV0dXJuIG1heCBsaW5rIGVuY29kZXIgY2Fw
cyIsCj4gX19mdW5jX18pOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4g
ZmFsc2U7Cj4gK8KgwqDCoMKgwqDCoMKgfQo+ICsKPiArwqDCoMKgwqDCoMKgwqBpZiAobGluay0+
bGlua19lbmMtPmZ1bmNzLT5nZXRfbWF4X2xpbmtfY2FwKSB7Cj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoGxpbmstPmxpbmtfZW5jLT5mdW5jcy0+Z2V0X21heF9saW5rX2NhcChsaW5r
LT5saW5rX2VuYywKPiBtYXhfbGlua19lbmNfY2FwKTsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgcmV0dXJuIHRydWU7Cj4gK8KgwqDCoMKgwqDCoMKgfQo+ICsKPiArwqDCoMKgwqDC
oMKgwqBEQ19MT0dfRVJST1IoIiVzOiBNYXggbGluayBlbmNvZGVyIGNhcHMgdW5rbm93biIsIF9f
ZnVuY19fKTsKPiArwqDCoMKgwqDCoMKgwqBtYXhfbGlua19lbmNfY2FwLT5sYW5lX2NvdW50ID0g
MTsKPiArwqDCoMKgwqDCoMKgwqBtYXhfbGlua19lbmNfY2FwLT5saW5rX3JhdGUgPSA2Owo+ICvC
oMKgwqDCoMKgwqDCoHJldHVybiBmYWxzZTsKPiArfQo+ICsKPiDCoHN0YXRpYyBzdHJ1Y3QgZGNf
bGlua19zZXR0aW5ncyBnZXRfbWF4X2xpbmtfY2FwKHN0cnVjdCBkY19saW5rICpsaW5rKQo+IMKg
ewo+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZGNfbGlua19zZXR0aW5ncyBtYXhfbGlua19jYXAg
PSB7MH07Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9kYy9kY19s
aW5rLmgKPiBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9kYy9kY19saW5rLmgKPiBpbmRl
eCBiMDAxM2U2NzQ4NjQuLmNiNmQwNTQzZDgzOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vYW1kL2Rpc3BsYXkvZGMvZGNfbGluay5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9k
aXNwbGF5L2RjL2RjX2xpbmsuaAo+IEBAIC0zNDYsNiArMzQ2LDggQEAgYm9vbCBkY19saW5rX2Rw
X3NldF90ZXN0X3BhdHRlcm4oCj4gwqDCoMKgwqDCoMKgwqDCoGNvbnN0IHVuc2lnbmVkIGNoYXIg
KnBfY3VzdG9tX3BhdHRlcm4sCj4gwqDCoMKgwqDCoMKgwqDCoHVuc2lnbmVkIGludCBjdXN0X3Bh
dHRlcm5fc2l6ZSk7Cj4gwqAKPiArYm9vbCBkY19saW5rX2RwX2dldF9tYXhfbGlua19lbmNfY2Fw
KGNvbnN0IHN0cnVjdCBkY19saW5rICpsaW5rLCBzdHJ1Y3QKPiBkY19saW5rX3NldHRpbmdzICpt
YXhfbGlua19lbmNfY2FwKTsKPiArCj4gwqB2b2lkIGRjX2xpbmtfZW5hYmxlX2hwZF9maWx0ZXIo
c3RydWN0IGRjX2xpbmsgKmxpbmssIGJvb2wgZW5hYmxlKTsKPiDCoAo+IMKgYm9vbCBkY19saW5r
X2lzX2RwX3NpbmtfcHJlc2VudChzdHJ1Y3QgZGNfbGluayAqbGluayk7Cj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMKPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMKPiBpbmRleCA1NTM5YTkxYjQwMzEuLmI3ODY5YTExMzVi
ZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9neS5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9tc3RfdG9wb2xvZ3kuYwo+IEBAIC0zNzA4LDE5
ICszNzA4LDIzIEBAIGludCBkcm1fZHBfbXN0X3RvcG9sb2d5X21ncl9zZXRfbXN0KHN0cnVjdAo+
IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyICptZ3IsIGJvb2wgbXMKPiDCoMKgwqDCoMKgwqDCoMKg
Lyogc2V0IHRoZSBkZXZpY2UgaW50byBNU1QgbW9kZSAqLwo+IMKgwqDCoMKgwqDCoMKgwqBpZiAo
bXN0X3N0YXRlKSB7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJt
X2RwX3BheWxvYWQgcmVzZXRfcGF5Owo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBp
bnQgbGFuZV9jb3VudDsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50IGxpbmtf
cmF0ZTsKPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgV0FSTl9PTihtZ3It
Pm1zdF9wcmltYXJ5KTsKPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLyog
Z2V0IGRwY2QgaW5mbyAqLwo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXQgPSBk
cm1fZHBfZHBjZF9yZWFkKG1nci0+YXV4LCBEUF9EUENEX1JFViwgbWdyLT5kcGNkLAo+IERQX1JF
Q0VJVkVSX0NBUF9TSVpFKTsKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKHJl
dCAhPSBEUF9SRUNFSVZFUl9DQVBfU0laRSkgewo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJtX2RiZ19rbXMobWdyLT5kZXYsICJmYWlsZWQgdG8gcmVh
ZCBEUENEXG4iKTsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0ID0gZHJtX2Rw
X3JlYWRfZHBjZF9jYXBzKG1nci0+YXV4LCBtZ3ItPmRwY2QpOwo+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBpZiAocmV0IDwgMCkgewo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJtX2RiZ19rbXMobWdyLT5kZXYsICIlczogZmFpbGVkIHRv
IHJlYWQgRFBDRCwgcmV0Cj4gJWRcbiIsCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1nci0+YXV4LT5uYW1lLCBy
ZXQpOwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdv
dG8gb3V0X3VubG9jazsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoH0KPiDCoAo+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBsYW5lX2NvdW50ID0gbWluX3QoaW50LCBt
Z3ItPmRwY2RbMl0gJiBEUF9NQVhfTEFORV9DT1VOVF9NQVNLLAo+IG1nci0+bWF4X2xhbmVfY291
bnQpOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBsaW5rX3JhdGUgPSBtaW5fdChp
bnQsIG1nci0+ZHBjZFsxXSwgbWdyLT5tYXhfbGlua19yYXRlKTsKPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoG1nci0+cGJuX2RpdiA9IGRybV9kcF9nZXRfdmNfcGF5bG9hZF9idyht
Z3IsCj4gLQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgZHJtX2RwX2J3X2NvZGVfdG9fbGlua19yCj4gYXRlKG1nci0+ZHBjZFsxXSksCj4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbWdyLT5k
cGNkWzJdICYKPiBEUF9NQVhfTEFORV9DT1VOVF9NQVNLKTsKPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgZHJtX2RwX2J3X2NvZGVfdG9fbGlua19yYXRlKGxpbmtfcmF0ZSkKPiAsIGxhbmVfY291bnQp
OwoKXiBzbyByZWZvcm1hdCB0aGlzIGxpa2UgSSBtZW50aW9uZWQgYmVmb3JlOgoKbWdyLT5wYm5f
ZGl2ID0gZHJtX2RwX2dldF92Y19wYXlsb2FkX2J3KG1nciwgZHJtX2RwX2J3X2NvZGVfdG9fbGlu
a19yYXRlKGxpbmtfcmF0ZSksCgkJCQkJbGFuZV9jb3VudCk7CgoKwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBpZiAobWdyLT5wYm5fZGl2ID09IDApIHsKwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0ID0gLUVJTlZBTDsKwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZ290byBvdXRfdW5sb2NrOwo+CkBA
IC01NDQ4LDE0ICs1NDUyLDE3IEBAIEVYUE9SVF9TWU1CT0woZHJtX2F0b21pY19nZXRfbXN0X3Rv
cG9sb2d5X3N0YXRlKTsKwqAgKiBAYXV4OiBEUCBoZWxwZXIgYXV4IGNoYW5uZWwgdG8gdGFsayB0
byB0aGlzIGRldmljZQrCoCAqIEBtYXhfZHBjZF90cmFuc2FjdGlvbl9ieXRlczogaHcgc3BlY2lm
aWMgRFBDRCB0cmFuc2FjdGlvbiBsaW1pdArCoCAqIEBtYXhfcGF5bG9hZHM6IG1heGltdW0gbnVt
YmVyIG9mIHBheWxvYWRzIHRoaXMgR1BVIGNhbiBzb3VyY2UKKyAqIEBtYXhfbGFuZV9jb3VudDog
bWF4aW11bSBudW1iZXIgb2YgbGFuZXMgdGhpcyBHUFUgc3VwcG9ydHMKKyAqIEBtYXhfbGlua19y
YXRlOiBtYXhpbXVtIGxpbmsgcmF0ZSB0aGlzIEdQVSBzdXBwb3J0cywgdW5pdHMgYXMgaW4gRFBD
RArCoCAqIEBjb25uX2Jhc2VfaWQ6IHRoZSBjb25uZWN0b3Igb2JqZWN0IElEIHRoZSBNU1QgZGV2
aWNlIGlzIGNvbm5lY3RlZCB0by4KwqAgKgrCoCAqIFJldHVybiAwIGZvciBzdWNjZXNzLCBvciBu
ZWdhdGl2ZSBlcnJvciBjb2RlIG9uIGZhaWx1cmUKwqAgKi8KwqBpbnQgZHJtX2RwX21zdF90b3Bv
bG9neV9tZ3JfaW5pdChzdHJ1Y3QgZHJtX2RwX21zdF90b3BvbG9neV9tZ3IgKm1nciwKwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCBzdHJ1Y3QgZHJtX2RwX2F1eAoqYXV4LAotwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
aW50IG1heF9kcGNkX3RyYW5zYWN0aW9uX2J5dGVzLAotwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50IG1heF9wYXlsb2Fkcywg
aW50IGNvbm5fYmFzZV9pZCkKK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludCBtYXhfZHBjZF90cmFuc2FjdGlvbl9ieXRlcywg
aW50Cm1heF9wYXlsb2FkcywKK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludCBtYXhfbGFuZV9jb3VudCwgaW50IG1heF9saW5r
X3JhdGUsCivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBpbnQgY29ubl9iYXNlX2lkKQrCoHsKwqDCoMKgwqDCoMKgwqDCoHN0cnVj
dCBkcm1fZHBfbXN0X3RvcG9sb2d5X3N0YXRlICptc3Rfc3RhdGU7CsKgCkBAIC01NDkwLDYgKzU0
OTcsOCBAQCBpbnQgZHJtX2RwX21zdF90b3BvbG9neV9tZ3JfaW5pdChzdHJ1Y3QKZHJtX2RwX21z
dF90b3BvbG9neV9tZ3IgKm1nciwKwqDCoMKgwqDCoMKgwqDCoG1nci0+YXV4ID0gYXV4OwrCoMKg
wqDCoMKgwqDCoMKgbWdyLT5tYXhfZHBjZF90cmFuc2FjdGlvbl9ieXRlcyA9IG1heF9kcGNkX3Ry
YW5zYWN0aW9uX2J5dGVzOwrCoMKgwqDCoMKgwqDCoMKgbWdyLT5tYXhfcGF5bG9hZHMgPSBtYXhf
cGF5bG9hZHM7CivCoMKgwqDCoMKgwqDCoG1nci0+bWF4X2xhbmVfY291bnQgPSBtYXhfbGFuZV9j
b3VudDsKK8KgwqDCoMKgwqDCoMKgbWdyLT5tYXhfbGlua19yYXRlID0gbWF4X2xpbmtfcmF0ZTsK
wqDCoMKgwqDCoMKgwqDCoG1nci0+Y29ubl9iYXNlX2lkID0gY29ubl9iYXNlX2lkOwrCoMKgwqDC
oMKgwqDCoMKgaWYgKG1heF9wYXlsb2FkcyArIDEgPiBzaXplb2YobWdyLT5wYXlsb2FkX21hc2sp
ICogOCB8fArCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1heF9wYXlsb2FkcyArIDEgPiBzaXplb2Yo
bWdyLT52Y3BpX21hc2spICogOCkKQEAgLTU4OTYsMTQgKzU5MDUsMTMgQEAgc3RydWN0IGRybV9k
cF9hdXggKmRybV9kcF9tc3RfZHNjX2F1eF9mb3JfcG9ydChzdHJ1Y3QKZHJtX2RwX21zdF9wb3J0
ICpwb3J0KQrCoMKgwqDCoMKgwqDCoMKgaWYgKGRybV9kcF9oYXNfcXVpcmsoJmRlc2MsIERQX0RQ
Q0RfUVVJUktfRFNDX1dJVEhPVVRfVklSVFVBTF9EUENEKSAmJgrCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHBvcnQtPm1nci0+ZHBjZFtEUF9EUENEX1JFVl0gPj0gRFBfRFBDRF9SRVZfMTQgJiYKwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBwb3J0LT5wYXJlbnQgPT0gcG9ydC0+bWdyLT5tc3RfcHJpbWFy
eSkgewotwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdTggZG93bnN0cmVhbXBvcnQ7CivC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB1OCBkcGNkX2V4dFtEUF9SRUNFSVZFUl9DQVBf
U0laRV07CsKgCi3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoZHJtX2RwX2RwY2Rf
cmVhZCgmcG9ydC0+YXV4LCBEUF9ET1dOU1RSRUFNUE9SVF9QUkVTRU5ULAotwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAmZG93bnN0cmVhbXBvcnQsIDEpIDwgMCkKK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGlmIChkcm1fZHBfcmVhZF9kcGNkX2NhcHMocG9ydC0+bWdyLT5hdXgsIGRwY2RfZXh0KSA8IDAp
CsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBO
VUxMOwrCoAotwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKChkb3duc3RyZWFtcG9y
dCAmIERQX0RXTl9TVFJNX1BPUlRfUFJFU0VOVCkgJiYKLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgKChkb3duc3RyZWFtcG9ydCAmIERQX0RXTl9TVFJNX1BPUlRfVFlQRV9NQVNL
KQorwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKChkcGNkX2V4dFtEUF9ET1dOU1RS
RUFNUE9SVF9QUkVTRU5UXSAmCkRQX0RXTl9TVFJNX1BPUlRfUFJFU0VOVCkgJiYKK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAoKGRwY2RfZXh0W0RQX0RPV05TVFJFQU1QT1JU
X1BSRVNFTlRdICYKRFBfRFdOX1NUUk1fUE9SVF9UWVBFX01BU0spCsKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIT0gRFBfRFdOX1NUUk1fUE9SVF9UWVBFX0FOQUxPRykp
CsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBw
b3J0LT5tZ3ItPmF1eDsKwqDCoMKgwqDCoMKgwqDCoH0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwX21zdC5jCmluZGV4IDg2MDM4MWQ2OGQ5ZC4uYTQyNDVlYjQ4ZWY0IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKQEAgLTk0Miw2
ICs5NDIsNyBAQCBpbnRlbF9kcF9tc3RfZW5jb2Rlcl9pbml0KHN0cnVjdCBpbnRlbF9kaWdpdGFs
X3BvcnQKKmRpZ19wb3J0LCBpbnQgY29ubl9iYXNlX2lkKQrCoMKgwqDCoMKgwqDCoMKgc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCA9ICZkaWdfcG9ydC0+ZHA7CsKgwqDCoMKgwqDCoMKgwqBlbnVt
IHBvcnQgcG9ydCA9IGRpZ19wb3J0LT5iYXNlLnBvcnQ7CsKgwqDCoMKgwqDCoMKgwqBpbnQgcmV0
OworwqDCoMKgwqDCoMKgwqBpbnQgYmlvc19tYXhfbGlua19yYXRlOwrCoArCoMKgwqDCoMKgwqDC
oMKgaWYgKCFIQVNfRFBfTVNUKGk5MTUpIHx8IGludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpCsKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIDA7CkBAIC05NTYsOCArOTU3LDEx
IEBAIGludGVsX2RwX21zdF9lbmNvZGVyX2luaXQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydAoq
ZGlnX3BvcnQsIGludCBjb25uX2Jhc2VfaWQpCsKgCsKgwqDCoMKgwqDCoMKgwqAvKiBjcmVhdGUg
ZW5jb2RlcnMgKi8KwqDCoMKgwqDCoMKgwqDCoGludGVsX2RwX2NyZWF0ZV9mYWtlX21zdF9lbmNv
ZGVycyhkaWdfcG9ydCk7CivCoMKgwqDCoMKgwqDCoGJpb3NfbWF4X2xpbmtfcmF0ZSA9IGludGVs
X2Jpb3NfZHBfbWF4X2xpbmtfcmF0ZSgmZGlnX3BvcnQtPmJhc2UpOwrCoMKgwqDCoMKgwqDCoMKg
cmV0ID0gZHJtX2RwX21zdF90b3BvbG9neV9tZ3JfaW5pdCgmaW50ZWxfZHAtPm1zdF9tZ3IsICZp
OTE1LT5kcm0sCi3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICZpbnRlbF9kcC0+YXV4LCAxNiwg
MywKY29ubl9iYXNlX2lkKTsKK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgJmludGVsX2RwLT5h
dXgsIDE2LCAzLAorwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkaWdfcG9ydC0+bWF4X2xhbmVz
LAorwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBiaW9zX21heF9saW5rX3JhdGUgLyAyNzAwMCwK
Y29ubl9iYXNlX2lkKTsKwqDCoMKgwqDCoMKgwqDCoGlmIChyZXQpCsKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgcmV0dXJuIHJldDsKwqAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9ub3V2ZWF1L2Rpc3BudjUwL2Rpc3AuYwpiL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L2Rpc3Bu
djUwL2Rpc3AuYwppbmRleCAxYzljMGNkZjg1ZGIuLmUwMmY5ZDJkNzRlYiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvZGlzcG52NTAvZGlzcC5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9ub3V2ZWF1L2Rpc3BudjUwL2Rpc3AuYwpAQCAtMTYxNyw3ICsxNjE3LDggQEAgbnY1MF9t
c3RtX25ldyhzdHJ1Y3Qgbm91dmVhdV9lbmNvZGVyICpvdXRwLCBzdHJ1Y3QKZHJtX2RwX2F1eCAq
YXV4LCBpbnQgYXV4X21heCwKwqDCoMKgwqDCoMKgwqDCoG1zdG0tPm1nci5jYnMgPSAmbnY1MF9t
c3RtOwrCoArCoMKgwqDCoMKgwqDCoMKgcmV0ID0gZHJtX2RwX21zdF90b3BvbG9neV9tZ3JfaW5p
dCgmbXN0bS0+bWdyLCBkZXYsIGF1eCwgYXV4X21heCwKLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgbWF4X3BheWxvYWRzLCBjb25uX2Jhc2VfaWQpOworwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBtYXhfcGF5bG9hZHMsIG91dHAtPmRjYi0KPmRwY29uZi5saW5rX25yLAorwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBvdXRwLT5kY2ItPmRwY29uZi5saW5rX2J3LApjb25uX2Jhc2VfaWQpOwrC
oMKgwqDCoMKgwqDCoMKgaWYgKHJldCkKwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBy
ZXR1cm4gcmV0OwrCoApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25f
ZHBfbXN0LmMKYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9kcF9tc3QuYwppbmRleCA1
OWNmMWQyODg0NjUuLmNmM2JlOGIxNDY3NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Jh
ZGVvbi9yYWRlb25fZHBfbXN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25f
ZHBfbXN0LmMKQEAgLTYyOSwxMyArNjI5LDIxIEBAIGludArCoHJhZGVvbl9kcF9tc3RfaW5pdChz
dHJ1Y3QgcmFkZW9uX2Nvbm5lY3RvciAqcmFkZW9uX2Nvbm5lY3RvcikKwqB7CsKgwqDCoMKgwqDC
oMKgwqBzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gcmFkZW9uX2Nvbm5lY3Rvci0+YmFzZS5kZXY7
CivCoMKgwqDCoMKgwqDCoHN0cnVjdCByYWRlb25fY29ubmVjdG9yX2F0b21fZGlnICpkaWdfY29u
bmVjdG9yID0gcmFkZW9uX2Nvbm5lY3Rvci0KPmNvbl9wcml2OwoKVW51c2VkIHZhcmlhYmxlOgoK
ZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fZHBfbXN0LmM6IEluIGZ1bmN0aW9uIOKAmHJh
ZGVvbl9kcF9tc3RfaW5pdOKAmToKZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fZHBfbXN0
LmM6NjMyOjM2OiB3YXJuaW5nOiB1bnVzZWQgdmFyaWFibGUK4oCYZGlnX2Nvbm5lY3RvcuKAmSBb
LVd1bnVzZWQtdmFyaWFibGVdCiAgNjMyIHwgIHN0cnVjdCByYWRlb25fY29ubmVjdG9yX2F0b21f
ZGlnICpkaWdfY29ubmVjdG9yID0gcmFkZW9uX2Nvbm5lY3Rvci0KPmNvbl9wcml2OwogICAgICB8
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fgoKCivCoMKg
wqDCoMKgwqDCoGludCBtYXhfbGlua19yYXRlOwrCoArCoMKgwqDCoMKgwqDCoMKgaWYgKCFyYWRl
b25fY29ubmVjdG9yLT5kZGNfYnVzLT5oYXNfYXV4KQrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoHJldHVybiAwOwrCoAorwqDCoMKgwqDCoMKgwqBpZiAocmFkZW9uX2Nvbm5lY3Rvcl9p
c19kcDEyX2NhcGFibGUoJnJhZGVvbl9jb25uZWN0b3ItPmJhc2UpKQorwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgbWF4X2xpbmtfcmF0ZSA9IDB4MTQ7CivCoMKgwqDCoMKgwqDCoGVsc2UK
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG1heF9saW5rX3JhdGUgPSAweDBhOworCsKg
wqDCoMKgwqDCoMKgwqByYWRlb25fY29ubmVjdG9yLT5tc3RfbWdyLmNicyA9ICZtc3RfY2JzOwrC
oMKgwqDCoMKgwqDCoMKgcmV0dXJuIGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyX2luaXQoJnJhZGVv
bl9jb25uZWN0b3ItPm1zdF9tZ3IsIGRldiwKwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
JnJhZGVvbl9jb25uZWN0b3ItPmRkY19idXMtPmF1eCwKMTYsIDYsCivCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgNCwgbWF4X2xpbmtfcmF0ZSwKwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgcmFkZW9uX2Nvbm5lY3Rvci0+YmFzZS5iYXNlLmlkKTsKwqB9CsKgCmRpZmYgLS1naXQgYS9p
bmNsdWRlL2RybS9kcm1fZHBfbXN0X2hlbHBlci5oIGIvaW5jbHVkZS9kcm0vZHJtX2RwX21zdF9o
ZWxwZXIuaAppbmRleCAyMGRjNzA1NjQyYmQuLmI1YjBiZjM3ODEzYiAxMDA2NDQKLS0tIGEvaW5j
bHVkZS9kcm0vZHJtX2RwX21zdF9oZWxwZXIuaAorKysgYi9pbmNsdWRlL2RybS9kcm1fZHBfbXN0
X2hlbHBlci5oCkBAIC01OTMsNiArNTkzLDE0IEBAIHN0cnVjdCBkcm1fZHBfbXN0X3RvcG9sb2d5
X21nciB7CsKgwqDCoMKgwqDCoMKgwqAgKiBAbWF4X3BheWxvYWRzOiBtYXhpbXVtIG51bWJlciBv
ZiBwYXlsb2FkcyB0aGUgR1BVIGNhbiBnZW5lcmF0ZS4KwqDCoMKgwqDCoMKgwqDCoCAqLwrCoMKg
wqDCoMKgwqDCoMKgaW50IG1heF9wYXlsb2FkczsKK8KgwqDCoMKgwqDCoMKgLyoqCivCoMKgwqDC
oMKgwqDCoCAqIEBtYXhfbGFuZV9jb3VudDogbWF4aW11bSBudW1iZXIgb2YgbGFuZXMgdGhlIEdQ
VSBjYW4gZHJpdmUuCivCoMKgwqDCoMKgwqDCoCAqLworwqDCoMKgwqDCoMKgwqBpbnQgbWF4X2xh
bmVfY291bnQ7CivCoMKgwqDCoMKgwqDCoC8qKgorwqDCoMKgwqDCoMKgwqAgKiBAbWF4X2xpbmtf
cmF0ZTogbWF4aW11bSBsaW5rIHJhdGUgcGVyIGxhbmUgR1BVIGNhbiBvdXRwdXQuCivCoMKgwqDC
oMKgwqDCoCAqLworwqDCoMKgwqDCoMKgwqBpbnQgbWF4X2xpbmtfcmF0ZTsKClNob3VsZCBwcm9i
YWJseSBtYWtlIHRoZXNlIChhbmQgdGhlIGFyZ3VtZW50cyB0aGF0IHdlcmUgYWRkZWQgdG8KZHJt
X2RwX21zdF90b3BvbG9neV9tZ3JfaW5pdCgpKSB1OCwganVzdCB0byBtYWtlIGl0IGEgbGl0dGxl
IGNsZWFyZXIgdGhhdAp0aGVzZSBhcmUgRFAgY29kZXMKCldpdGggdGhlIGNvbW1lbnRzIGluIGhl
cmUgYWRkcmVzc2VkOgoKUmV2aWV3ZWQtYnk6IEx5dWRlIFBhdWwgPGx5dWRlQHJlZGhhdC5jb20+
CgpvbmNlIHlvdSBwb3N0IHRoZSByZXNwaW4gSSBjYW4gZ28gcHVzaCB0aGlzIHRvIGRybS1taXNj
LW5leHQKCsKgwqDCoMKgwqDCoMKgwqAvKioKwqDCoMKgwqDCoMKgwqDCoCAqIEBjb25uX2Jhc2Vf
aWQ6IERSTSBjb25uZWN0b3IgSUQgdGhpcyBtZ3IgaXMgY29ubmVjdGVkIHRvLiBPbmx5IHVzZWQK
wqDCoMKgwqDCoMKgwqDCoCAqIHRvIGJ1aWxkIHRoZSBNU1QgY29ubmVjdG9yIHBhdGggdmFsdWUu
CkBAIC03NjUsNyArNzczLDkgQEAgc3RydWN0IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyIHsKwqBp
bnQgZHJtX2RwX21zdF90b3BvbG9neV9tZ3JfaW5pdChzdHJ1Y3QgZHJtX2RwX21zdF90b3BvbG9n
eV9tZ3IgKm1nciwKwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCBzdHJ1Y3QgZHJtX2Rw
X2F1eAoqYXV4LArCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGludCBtYXhfZHBjZF90cmFuc2FjdGlvbl9ieXRlcywKLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGludCBtYXhfcGF5bG9hZHMsIGludCBjb25uX2Jhc2VfaWQpOworwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50IG1heF9wYXls
b2FkcywKK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGludCBtYXhfbGFuZV9jb3VudCwgaW50IG1heF9saW5rX3JhdGUsCivCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBpbnQgY29ubl9iYXNlX2lkKTsKwqAKwqB2b2lkIGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyX2Rl
c3Ryb3koc3RydWN0IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyICptZ3IpOwrCoAoKLS0gCkNoZWVy
cywKIEx5dWRlIFBhdWwgKHNoZS9oZXIpCiBTb2Z0d2FyZSBFbmdpbmVlciBhdCBSZWQgSGF0Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
