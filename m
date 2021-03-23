Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 167B1346627
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Mar 2021 18:20:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8CDA6E921;
	Tue, 23 Mar 2021 17:20:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DACBE6E921
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Mar 2021 17:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1616519999;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=NporAmmj4L3RcGRFRknw2IvghUGU1cT9aJdVv6NKWMw=;
 b=C5X49+1gRWvESXoDrA/1rbnlDfWXSKbr1fsUhBV2J3B9jKrqA0FujWcSt27WOl3ZievlJ6
 lF+Zo2CgtluYm6zvS7eniked6yrcqEWLxnLhSSTdloRPJmthOijVnBIu60hmf58WEXmxrq
 zByQog60KJ9GSlMfbX6/111216N8ylQ=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-506-pRayXhNEO8CjyU-5G5ygeg-1; Tue, 23 Mar 2021 13:19:56 -0400
X-MC-Unique: pRayXhNEO8CjyU-5G5ygeg-1
Received: by mail-qt1-f198.google.com with SMTP id m8so1630851qtp.14
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Mar 2021 10:19:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=NporAmmj4L3RcGRFRknw2IvghUGU1cT9aJdVv6NKWMw=;
 b=E1hvHu/WdDviosg4v2IDxxnSKxwJhgpGRcIDtBwC/pCBNhIczxdhNbTb2Z8ipnr2wV
 9fKzaDQI7jKtePGExJEvbBUpfRl13UBA9//Qr441YmBTw1vS/dpdZAsQ3S9CmYkTGrOW
 YENS2BLAbqhsdBJTpl55tlcMcmfW4sPtA9DvJhyhuVTtpAkkcWFz9f/XH3tsrZ1gKVB1
 PuW8J1QN0yTheot5r4X3RxAMc5NWKWQo7Itw1rV6eBKLgt1O8MAoB+Xs7W0yjqjeiYFi
 k2SGWUFWM2y3zraOY3ePzuARuPeZVJ7BxCVEVKkvfgkeIG5o6Ra0slktyyhbABT5jn3J
 GQNg==
X-Gm-Message-State: AOAM531bJE5/AuIqgfGFVSHlw68cwB27sdHkzd1ptdWqFGkpXlD+nspZ
 OCBAABy38WxSwz2MP+Ez7Uw2EUUKo+TwYkHvG3JD890AWi7CEw9GZK7RPax69ev+/aiyuOrv2Xe
 suxNbsPpFlWal7VyE7ekkduAGiAvQ
X-Received: by 2002:ac8:1405:: with SMTP id k5mr5442892qtj.262.1616519995036; 
 Tue, 23 Mar 2021 10:19:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwiLznM9M+kk+bDsK0zDhwCbPTH1MxTleA2r2FpQmjUe9jLcoI66vGcNor+jHw3s4hmjHGqPA==
X-Received: by 2002:ac8:1405:: with SMTP id k5mr5442877qtj.262.1616519994809; 
 Tue, 23 Mar 2021 10:19:54 -0700 (PDT)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id f136sm14236517qke.24.2021.03.23.10.19.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Mar 2021 10:19:54 -0700 (PDT)
Message-ID: <4b95f72806c07348e4d26f1770326223b40fa845.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 23 Mar 2021 13:19:53 -0400
In-Reply-To: <87k0py3qya.fsf@intel.com>
References: <20210318170204.513000-1-lyude@redhat.com>
 <dfec442a4888c8387a6002b0424415ee5d8be343.camel@redhat.com>
 <87k0py3qya.fsf@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dpcd_bl: Don't try vesa interface
 unless specified by VBT
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
Cc: David Airlie <airlied@linux.ie>, open list <linux-kernel@vger.kernel.org>,
 "open list:DRM
 DRIVERS" <dri-devel@lists.freedesktop.org>, Sean Paul <seanpaul@chromium.org>,
 Aaron Ma <aaron.ma@canonical.com>, Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIxLTAzLTIzIGF0IDE2OjA2ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPiBP
biBUaHUsIDE4IE1hciAyMDIxLCBMeXVkZSBQYXVsIDxseXVkZUByZWRoYXQuY29tPiB3cm90ZToK
PiA+IEFjdHVhbGx5LU5BSyB0aGlzLiBJIGp1c3QgcmVhbGl6ZWQgSSd2ZSBiZWVuIG1pc3JlYWRp
bmcgdGhlIGJ1ZyBhbmQgdGhhdAo+ID4gdGhpcwo+ID4gZG9lc24ndCBhY3R1YWxseSBzZWVtIHRv
IGJlIGZpeGVkLiBXaWxsIHJlc2VuZCBvbmNlIEkgZmlndXJlIG91dCB3aGF0J3MKPiA+IGdvaW5n
IG9uCj4gCj4gV2VsbCwgSSB0aGluayB0aGVyZSBhcmUgYWN0dWFsbHkgbXVsdGlwbGUgaXNzdWVz
IG9uIG11bHRpcGxlCj4gbWFjaGluZXMuIFRoaXMgZml4ZXMgdGhlIGlzc3VlIG9uIFRoaW5rUGFk
IFgxIFRpdGFuaXVtIEdlbjEgWzFdLgo+IAo+IEkgc3VzcGVjdCByZXZlcnRpbmcgOThlNDk3ZTIw
M2E1ICgiZHJtL2k5MTUvZHBjZF9ibDogdW5jaGVjayBQV01fUElOX0NBUAo+IHdoZW4gZGV0ZWN0
IGVEUCBiYWNrbGlnaHQgY2FwYWJpbGl0aWVzIikgd291bGQgdG9vLiBCdXQgdGhlbiB0aGF0IHdv
dWxkCj4gYnJlYWsgKm90aGVyKiBtYWNoaW5lcyB0aGF0IGNsYWltIHN1cHBvcnQgZm9yICpib3Ro
KiBlRFAgUFdNIHBpbiBhbmQKPiBEUENEIGJhY2tsaWdodCBjb250cm9sLCBJIHRoaW5rLgo+IAo+
IEkgdGhpbmsgdGhlcmUgYXJlIGlzc3VlcyB3aXRoIGhvdyB3ZSB0cnkgc2V0dXAgRFBDRCBiYWNr
bGlnaHQgaWYgdGhlIEdPUAo+IGhhcyBzZXQgdXAgUFdNIGJhY2tsaWdodC4gRm9yIGV4YW1wbGUs
IHdlIGRvbid0IHNldCB0aGUgYmFja2xpZ2h0Cj4gY29udHJvbCBtb2RlIGNvcnJlY3RseSB1bnRp
bCB0aGUgbmV4dCBkaXNhYmxlL2VuYWJsZSBzZXF1ZW5jZS4gSG93ZXZlciwKPiBJIHRyaWVkIHRv
IGZpeCB0aGlzLCBhbmQgSSB0aGluayBJIHdhcyBkb2luZyBhbGwgdGhlIHJpZ2h0IHRoaW5ncywg
YW5kCj4gRFBDRCByZWFkcyBzZWVtZWQgdG8gY29uZmlybSB0aGlzLCB5ZXQgSSB3YXMgbm90IGFi
bGUgdG8gY29udHJvbAo+IGJyaWdodG5lc3MgdXNpbmcgRFBDRC4gSSBkb24ndCBrbm93IHdoYXQg
Z2l2ZXMsIGJ1dCBJIGRvIGtub3cgZURQIFBXTQo+IHBpbiBjb250cm9sIHdvcmtzLgoKU2hvdWxk
IHdlIGdvIGFoZWFkIGFuZCBwdXNoIHRoZSBWRVNBIGZpeCBmb3IgdGhpcyB0aGVuPyBJZiB5b3Un
cmUgd2lsbGluZyB0bwp0ZXN0IGZ1dHVyZSBwYXRjaGVzIG9uIHRoYXQgbWFjaGluZSwgd2UgY291
bGQgZ2l2ZSBhbm90aGVyIHNob3QgYXQgZW5hYmxpbmcgdGhpcwppbiB0aGUgZnV0dXJlIGlmIHdl
IGZpbmQgcmVhc29uIHRvLgoKPiAKPiAKPiBCUiwKPiBKYW5pLgo+IAo+IAo+IFsxXSBodHRwczov
L2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzMxNTgKPiAKPiAKPiA+
IAo+ID4gT24gVGh1LCAyMDIxLTAzLTE4IGF0IDEzOjAyIC0wNDAwLCBMeXVkZSBQYXVsIHdyb3Rl
Ogo+ID4gPiBMb29rcyBsaWtlIHRoYXQgdGhlcmUgYWN0dWFsbHkgYXJlIGFub3RoZXIgc3Vic2V0
IG9mIGxhcHRvcHMgb24gdGhlIG1hcmtldAo+ID4gPiB0aGF0IGRvbid0IHN1cHBvcnQgdGhlIElu
dGVsIEhEUiBiYWNrbGlnaHQgaW50ZXJmYWNlLCBidXQgZG8gYWR2ZXJ0aXNlCj4gPiA+IHN1cHBv
cnQgZm9yIHRoZSBWRVNBIERQQ0QgYmFja2xpZ2h0IGludGVyZmFjZSBkZXNwaXRlIHRoZSBmYWN0
IGl0IGRvZXNuJ3QKPiA+ID4gc2VlbSB0byB3b3JrLgo+ID4gPiAKPiA+ID4gTm90ZSB0aG91Z2gg
SSdtIG5vdCBlbnRpcmVseSBjbGVhciBvbiB0aGlzIC0gb24gb25lIG9mIHRoZSBtYWNoaW5lcyB3
aGVyZQo+ID4gPiB0aGlzIGlzc3VlIHdhcyBvYnNlcnZlZCwgSSBhbHNvIG5vdGljZWQgdGhhdCB3
ZSBhcHBlYXJlZCB0byBiZSByZWplY3RpbmcKPiA+ID4gdGhlIFZCVCBkZWZpbmVkIGJhY2tsaWdo
dCBmcmVxdWVuY3kgaW4KPiA+ID4gaW50ZWxfZHBfYXV4X3Zlc2FfY2FsY19tYXhfYmFja2xpZ2h0
KCkuIEl0J3Mgbm90ZWQgaW4gdGhpcyBmdW5jdGlvbiB0aGF0Ogo+ID4gPiAKPiA+ID4gLyogVXNl
IGhpZ2hlc3QgcG9zc2libGUgdmFsdWUgb2YgUG4gZm9yIG1vcmUgZ3JhbnVsYXJpdHkgb2YgYnJp
Z2h0bmVzcwo+ID4gPiDCoCogYWRqdXN0bWVudCB3aGlsZSBzYXRpZnlpbmcgdGhlIGNvbmRpdGlv
bnMgYmVsb3cuCj4gPiA+IMKgKiAuLi4KPiA+ID4gwqAqIC0gRnhQIGlzIHdpdGhpbiAyNSUgb2Yg
ZGVzaXJlZCB2YWx1ZS4KPiA+ID4gwqAqwqDCoCBOb3RlOiAyNSUgaXMgYXJiaXRyYXJ5IHZhbHVl
IGFuZCBtYXkgbmVlZCBzb21lIHR3ZWFrLgo+ID4gPiDCoCovCj4gPiA+IAo+ID4gPiBTbyBpdCdz
IHBvc3NpYmxlIHRoYXQgdGhpcyB2YWx1ZSBtaWdodCBqdXN0IG5lZWQgdG8gYmUgdHdlYWtlZCwg
YnV0IGZvcgo+ID4gPiBub3cKPiA+ID4gbGV0J3MganVzdCBkaXNhYmxlIHRoZSBWRVNBIGJhY2ts
aWdodCBpbnRlcmZhY2UgdW5sZXNzIGl0J3Mgc3BlY2lmaWVkIGluCj4gPiA+IHRoZSBWQlQganVz
dCB0byBiZSBzYWZlLiBXZSBtaWdodCBiZSBhYmxlIHRvIHRyeSBlbmFibGluZyB0aGlzIGFnYWlu
IGJ5Cj4gPiA+IGRlZmF1bHQgaW4gdGhlIGZ1dHVyZS4KPiA+ID4gCj4gPiA+IEZpeGVzOiAyMjI3
ODE2ZTY0N2EgKCJkcm0vaTkxNS9kcDogQWxsb3cgZm9yY2luZyBzcGVjaWZpYyBpbnRlcmZhY2Vz
Cj4gPiA+IHRocm91Z2gKPiA+ID4gZW5hYmxlX2RwY2RfYmFja2xpZ2h0IikKPiA+ID4gQ2M6IEph
bmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gPiA+IENjOiBSb2RyaWdvIFZpdmkg
PHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cj4gPiA+IEJ1Z3ppbGxhOiBodHRwczovL2dpdGxhYi5m
cmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzMxNjkKPiA+ID4gU2lnbmVkLW9mZi1i
eTogTHl1ZGUgUGF1bCA8bHl1ZGVAcmVkaGF0LmNvbT4KPiA+ID4gLS0tCj4gPiA+IMKgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXhfYmFja2xpZ2h0LmMgfCAxIC0KPiA+
ID4gwqAxIGZpbGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4X2JhY2tsaWdodC5j
Cj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXhfYmFja2xp
Z2h0LmMKPiA+ID4gaW5kZXggNjUxODg0MzkwMTM3Li40ZjgzMzdjN2ZkMmUgMTAwNjQ0Cj4gPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4X2JhY2tsaWdo
dC5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4
X2JhY2tsaWdodC5jCj4gPiA+IEBAIC02NDYsNyArNjQ2LDYgQEAgaW50IGludGVsX2RwX2F1eF9p
bml0X2JhY2tsaWdodF9mdW5jcyhzdHJ1Y3QKPiA+ID4gaW50ZWxfY29ubmVjdG9yICpjb25uZWN0
b3IpCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGJyZWFrOwo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNhc2UgSU5URUxf
QkFDS0xJR0hUX0RJU1BMQVlfRERJOgo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqB0cnlfaW50ZWxfaW50ZXJmYWNlID0gdHJ1ZTsKPiA+ID4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB0cnlfdmVzYV9pbnRl
cmZhY2UgPSB0cnVlOwo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBicmVhazsKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBk
ZWZhdWx0Ogo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqByZXR1cm4gLUVOT0RFVjsKPiAKCi0tIApTaW5jZXJlbHksCiAgIEx5dWRlIFBhdWwgKHNo
ZS9oZXIpCiAgIFNvZnR3YXJlIEVuZ2luZWVyIGF0IFJlZCBIYXQKICAgCk5vdGU6IEkgZGVhbCB3
aXRoIGEgbG90IG9mIGVtYWlscyBhbmQgaGF2ZSBhIGxvdCBvZiBidWdzIG9uIG15IHBsYXRlLiBJ
ZiB5b3UndmUKYXNrZWQgbWUgYSBxdWVzdGlvbiwgYXJlIHdhaXRpbmcgZm9yIGEgcmV2aWV3L21l
cmdlIG9uIGEgcGF0Y2gsIGV0Yy4gYW5kIEkKaGF2ZW4ndCByZXNwb25kZWQgaW4gYSB3aGlsZSwg
cGxlYXNlIGZlZWwgZnJlZSB0byBzZW5kIG1lIGFub3RoZXIgZW1haWwgdG8gY2hlY2sKb24gbXkg
c3RhdHVzLiBJIGRvbid0IGJpdGUhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
