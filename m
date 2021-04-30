Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8D23703A4
	for <lists+intel-gfx@lfdr.de>; Sat,  1 May 2021 00:41:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01C756F608;
	Fri, 30 Apr 2021 22:41:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B49F26F60B
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Apr 2021 22:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1619822476;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cZO1BuVJTllMA3zAGlAqKBDB3f+eMU9ZxK48qJUbJGI=;
 b=L6fQ0idtMyEpzfVR4SbhGhcS1x+C0uBBCRgpbr6z/+dTMT9IQ1z7a+6bhmzzJsXsaNouDu
 k/N5UR8STD7avNyJm6Fs3C3CGFBibohBFpPR6cQCaLf9JgL1jrdv8gLPHULzURxSbY1pey
 +6THhSyDAgwQJlaSbORBwLoYDZIkh9E=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-390-3gIgUrHIM1ehvHLCTil8pA-1; Fri, 30 Apr 2021 18:41:15 -0400
X-MC-Unique: 3gIgUrHIM1ehvHLCTil8pA-1
Received: by mail-qt1-f200.google.com with SMTP id
 h2-20020a05622a1702b02901b9123889b0so22859709qtk.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Apr 2021 15:41:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=cZO1BuVJTllMA3zAGlAqKBDB3f+eMU9ZxK48qJUbJGI=;
 b=UGebPmYUWd9MR9eM6mmeTZFJ8mgovLl0bSMt37jd/wsbGZcpQqFXyF9ZrPmi8PVy8O
 iesIEQ81uocRs3QRU+omBIutfheY93Pz90BVAdsUOYHKHa38R1Yio/6p/fdhVpC1N99b
 bX+T17OArCmDa+bfr6sGWv52iQo4qRDfueZmlnXNnavOnvut6cG6/mP03VEGnGSUjAiI
 PYw27b7KRYlVZvvH7Vmw39hrlygakWUmnnMvaP+JoHmJMdZy62m/rM2iFrrWldzBX/2U
 QL329c/ZLfZ6mF2FwAKhGdEgnsWFnPnD3q/puMqOB+Xotphw4UFVGKLyhSiUOGO4NILt
 j4Ew==
X-Gm-Message-State: AOAM531crvJzwGhi38FiJYwcSCz3SyJsC1+EtU1MDRV+0oLOc6mj/zd8
 8KKZKFkVPsaK+E/OBoD+AVfAWkoAtw0TUSVfklsgmWfMm07/jBU3QtlZ+PZxoxuRKmDhhTCOsbu
 Nx0k7tb3QBnxb9nKGjclCZcAxGsHK
X-Received: by 2002:a0c:f589:: with SMTP id k9mr7908053qvm.9.1619822474848;
 Fri, 30 Apr 2021 15:41:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzefrM3IUj4eNQWOUjRADsmRL3Wp2RGdzXmGFi8q1g9X4V8L4RRGxTEseodo76eP+kA0yQP0Q==
X-Received: by 2002:a0c:f589:: with SMTP id k9mr7908024qvm.9.1619822474584;
 Fri, 30 Apr 2021 15:41:14 -0700 (PDT)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id k11sm42098qtp.7.2021.04.30.15.41.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Apr 2021 15:41:14 -0700 (PDT)
Message-ID: <20bfb456d1f05856ffdc4cd330e1155b99367a01.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Nikola Cornij <nikola.cornij@amd.com>, amd-gfx@lists.freedesktop.org
Date: Fri, 30 Apr 2021 18:41:13 -0400
In-Reply-To: <20210430214531.24565-2-nikola.cornij@amd.com>
References: <20210430214531.24565-1-nikola.cornij@amd.com>
 <20210430214531.24565-2-nikola.cornij@amd.com>
Organization: Red Hat
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH v2 1/1] drm/i915: Use the correct max source
 link rate for MST
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 koba.ko@canonical.com, aurabindo.pillai@amd.com, mikita.lipski@amd.com,
 bskeggs@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWxyaWdodCAtIEkgaGFkIFZpbGxlIGRvdWJsZSBjaGVjayB0aGlzIGFuZCBnaXZlIHRoZWlyIEEt
QiBvbiBJUkMgKEkganVzdCBuZWVkCnRvIGZpeCB0aGUgb3BlbiBjb2RlZCBsaW5rX3JhdGVfdG9f
YncoKSBoZXJlKS4gU2luY2UgdGhpcyBnb3QgYnJva2VuIG9uIGRybS0KbWlzYy1uZXh0IEknbSBn
b2luZyB0byBnbyBhaGVhZCBhbmQgcHVzaCB0aGUgZml4IHRoZXJlLCBzaW5jZSBJJ20gbm90IGdv
aW5nIHRvCmJlIGFyb3VuZCBuZXh0IE1vbmRheSBvciBUdWVzZGF5IGFuZCBJIGRvbid0IHdhbnQg
dG8gbGVhdmUgaTkxNSBicm9rZW4gaW4gdGhlCmludGVyaW0uIFNvcnJ5IGFib3V0IHRoZSBub2lz
ZSB3aXRoIHRoaXMgSmFuaSEKCkFzIHdlbGwgLSBJJ2xsIGdldCB0byBmaXhpbmcgdGhlIGRwY2Qg
dW5pdCB1c2FnZSBvbmNlIEkgZ2V0IGJhY2sgb24gV2VkbmVzZGF5Cih1bmxlc3MgTmlrb2xhJ3Mg
YWxyZWFkeSBnb3R0ZW4gdG8gaXQgYnkgdGhlbikgc28gd2UgdXNlIEtIeiBpbnN0ZWFkLiBBbHRo
b3VnaAphcyB2aWxsZSBoYXMgcG9pbnRlZCBvdXQsIEkgdGhpbmsgd2Ugc2hvdWxkIHRlYWNoIHRo
ZSB0b3BvbG9neSBtYW5hZ2VyIHRvIGFsbG93CnBhc3NpbmcgZm9yIHRoZSBjdXJyZW50IGxpbmsg
cmF0ZS9sYW5lIGNvdW50IGR1cmluZyBzdGF0ZSBjb21wdXRhdGlvbiBpbiB0aGUKbG9uZyB0ZXJt
LgoKT24gRnJpLCAyMDIxLTA0LTMwIGF0IDE3OjQ1IC0wNDAwLCBOaWtvbGEgQ29ybmlqIHdyb3Rl
Ogo+IFt3aHldCj4gUHJldmlvdXNseSB1c2VkIHZhbHVlIHdhcyBub3Qgc2FmZSB0byBwcm92aWRl
IHRoZSBjb3JyZWN0IHZhbHVlLCBpLmUuIGl0Cj4gY291bGQgYmUgMCBpZiBub3Qgbm90IGNvbmZp
Z3VyZWQsIGxlYWRpbmcgdG8gbm8gTVNUIG9uIHRoaXMgcGxhdGZvcm0uCj4gCj4gW2hvd10KPiBE
byBub3QgdXNlIHRoZSB2YWx1ZSBmcm9tIEJJT1MsIGJ1dCBmcm9tIHRoZSBzdHJ1Y3R1cmUgcG9w
dWxhdGVkIGF0Cj4gZW5jb2RlciBpbml0aWFsaXphdGlvbiB0aW1lLgo+IAo+IEZpeGVzOiA5ODAy
NWE2MmNiMDAgKCJkcm0vZHBfbXN0OiBVc2UgRXh0ZW5kZWQgQmFzZSBSZWNlaXZlciBDYXBhYmls
aXR5IERQQ0QKPiBzcGFjZSIpCj4gU2lnbmVkLW9mZi1ieTogTmlrb2xhIENvcm5paiA8bmlrb2xh
LmNvcm5pakBhbWQuY29tPgo+IFJldmlld2VkLWJ5OiBMeXVkZSBQYXVsIDxseXVkZUByZWRoYXQu
Y29tPgo+IC0tLQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3Qu
YyB8IDYgKysrLS0tCj4gwqAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0
aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwX21zdC5jCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21z
dC5jCj4gaW5kZXggYmY3Zjg0ODc5NDVjLi4zNjQyZDc1Nzg2NTggMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKPiBAQCAtOTQyLDcgKzk0Miw3IEBA
IGludGVsX2RwX21zdF9lbmNvZGVyX2luaXQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydAo+ICpk
aWdfcG9ydCwgaW50IGNvbm5fYmFzZV9pZCkKPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCA9ICZkaWdfcG9ydC0+ZHA7Cj4gwqDCoMKgwqDCoMKgwqDCoGVudW0gcG9y
dCBwb3J0ID0gZGlnX3BvcnQtPmJhc2UucG9ydDsKPiDCoMKgwqDCoMKgwqDCoMKgaW50IHJldDsK
PiAtwqDCoMKgwqDCoMKgwqBpbnQgYmlvc19tYXhfbGlua19yYXRlOwo+ICvCoMKgwqDCoMKgwqDC
oGludCBtYXhfc291cmNlX3JhdGUgPSBpbnRlbF9kcC0+c291cmNlX3JhdGVzW2ludGVsX2RwLQo+
ID5udW1fc291cmNlX3JhdGVzIC0gMV07Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgaWYgKCFIQVNf
RFBfTVNUKGk5MTUpIHx8IGludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpCj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gMDsKPiBAQCAtOTU3LDExICs5NTcsMTEgQEAgaW50
ZWxfZHBfbXN0X2VuY29kZXJfaW5pdChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0Cj4gKmRpZ19w
b3J0LCBpbnQgY29ubl9iYXNlX2lkKQo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoC8qIGNyZWF0ZSBl
bmNvZGVycyAqLwo+IMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kcF9jcmVhdGVfZmFrZV9tc3RfZW5j
b2RlcnMoZGlnX3BvcnQpOwo+IC3CoMKgwqDCoMKgwqDCoGJpb3NfbWF4X2xpbmtfcmF0ZSA9IGlu
dGVsX2Jpb3NfZHBfbWF4X2xpbmtfcmF0ZSgmZGlnX3BvcnQtPmJhc2UpOwo+IMKgwqDCoMKgwqDC
oMKgwqByZXQgPSBkcm1fZHBfbXN0X3RvcG9sb2d5X21ncl9pbml0KCZpbnRlbF9kcC0+bXN0X21n
ciwgJmk5MTUtPmRybSwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgJmludGVsX2RwLT5h
dXgsIDE2LCAzLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAodTgpZGlnX3BvcnQtPm1h
eF9sYW5lcywKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAodTgpKGJpb3NfbWF4X2xpbmtf
cmF0ZSAvIDI3MDAwKSwKPiBjb25uX2Jhc2VfaWQpOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgICh1OCkobWF4X3NvdXJjZV9yYXRlIC8gMjcwMDApLAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGNvbm5fYmFzZV9pZCk7Cj4gwqDCoMKgwqDCoMKgwqDCoGlmIChyZXQpCj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gcmV0Owo+IMKgCgotLSAKU2luY2VyZWx5
LAogICBMeXVkZSBQYXVsIChzaGUvaGVyKQogICBTb2Z0d2FyZSBFbmdpbmVlciBhdCBSZWQgSGF0
CiAgIApOb3RlOiBJIGRlYWwgd2l0aCBhIGxvdCBvZiBlbWFpbHMgYW5kIGhhdmUgYSBsb3Qgb2Yg
YnVncyBvbiBteSBwbGF0ZS4gSWYgeW91J3ZlCmFza2VkIG1lIGEgcXVlc3Rpb24sIGFyZSB3YWl0
aW5nIGZvciBhIHJldmlldy9tZXJnZSBvbiBhIHBhdGNoLCBldGMuIGFuZCBJCmhhdmVuJ3QgcmVz
cG9uZGVkIGluIGEgd2hpbGUsIHBsZWFzZSBmZWVsIGZyZWUgdG8gc2VuZCBtZSBhbm90aGVyIGVt
YWlsIHRvIGNoZWNrCm9uIG15IHN0YXR1cy4gSSBkb24ndCBiaXRlIQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
