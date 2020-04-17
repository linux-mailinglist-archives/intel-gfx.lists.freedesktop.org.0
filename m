Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F171AE51A
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 20:51:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AB8A6E12E;
	Fri, 17 Apr 2020 18:51:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 096016E12E
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 18:51:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587149503;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5rMU6sMmxbpz1bK+Py3sttOKMYdTW3oiORFeW/c7lF0=;
 b=Y/sjOX3ep5MXAoDupylpdW+dfztqz7fobBHhBpH5jtN68eDGo/aYFZJMOR2zFR8esAkR2U
 zM3bfghTnPkKfNMgXlNO9QaICm7nXQ2NLqAiyM5ypfoB9izibb+7/c6+I4lUbOIRDjqq+G
 yVKwHRTlGYF4ml9fCLTG9kM19ukyCOU=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-14-0fW4nyIoMMO2nvR7ZZTnnQ-1; Fri, 17 Apr 2020 14:51:42 -0400
X-MC-Unique: 0fW4nyIoMMO2nvR7ZZTnnQ-1
Received: by mail-qv1-f72.google.com with SMTP id e9so2259582qvp.16
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 11:51:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=pRj7bGgFvW2FQM2r+6p84SYcwONocOznESjntpseEBo=;
 b=oKAOnj2xaKuHFwpwVj/x6d0o5lH0Kj99QXRSPVhttYnjfGUnT3FbOCDQlns6m74/N0
 qvajIRE8HxAv5HE2V2hJ67r9M+euG5H0eYU265f9ezgTP/6zTYlBY4w95/UW4uFmrkar
 rINF8XpkRkF/j8/OhW/5qd9lDXlEJZHZ+PyttaBSAeSmyPD0MHuFA6/iowpu8FttD2MT
 zXlSm48EggthoziuFrfhr8djoqogFk8wvpziDqxhv11T9rluDeLwN7gCDwH6p0+ZpFME
 MPel6w23GSPrW6bR2XZ/5YxSwe1maJAbPuj6tOd2xwwwdf6dk2mp/WfRwBkAZV/ic1mR
 2/wA==
X-Gm-Message-State: AGi0PubsC9w02w029+AN4OSMSflv/myH432TzqNiv9X2Rn84rqNRyzrj
 fF28tVDQL4+cTVGyN184FCLFwt667dlVlUf4GVn7SwyQYOhmU0wRVlkh80hz/E+v82mopLKmNb8
 dcgdon7aQnUikcoJVjo8BZVfdp9E3
X-Received: by 2002:a37:61cf:: with SMTP id v198mr4434196qkb.485.1587149501848; 
 Fri, 17 Apr 2020 11:51:41 -0700 (PDT)
X-Google-Smtp-Source: APiQypJXyfKyAPsCxa428yai539B8FGjia4f4kDwrUb63Rt8e7JV1yifo/VAq4/OByOZd+uDpve/iw==
X-Received: by 2002:a37:61cf:: with SMTP id v198mr4434182qkb.485.1587149501596; 
 Fri, 17 Apr 2020 11:51:41 -0700 (PDT)
Received: from Ruby.lyude.net (static-173-76-190-23.bstnma.ftas.verizon.net.
 [173.76.190.23])
 by smtp.gmail.com with ESMTPSA id o6sm12030781qkj.126.2020.04.17.11.51.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 11:51:41 -0700 (PDT)
Message-ID: <d033598219f08c28e801490cc9592efefc513684.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Fri, 17 Apr 2020 14:51:39 -0400
In-Reply-To: <20200417152734.464-1-ville.syrjala@linux.intel.com>
References: <20200417152734.464-1-ville.syrjala@linux.intel.com>
Organization: Red Hat
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Flatten
 intel_dp_check_mst_status() a bit
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmV2aWV3ZWQtYnk6IEx5dWRlIFBhdWwgPGx5dWRlQHJlZGhhdC5jb20+CgpPbiBGcmksIDIwMjAt
MDQtMTcgYXQgMTg6MjcgKzAzMDAsIFZpbGxlIFN5cmphbGEgd3JvdGU6Cj4gRnJvbTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAKPiBNYWtlIGludGVs
X2RwX2NoZWNrX21zdF9zdGF0dXMoKSBzb21ld2hhdCBsZWdpYmxlIGJ5IGh1bWFucy4KPiAKPiBO
b3RlIHRoYXQgdGhlIHJldHVybiB2YWx1ZSBvZiBkcm1fZHBfbXN0X2hwZF9pcnEoKSBpcyBhbHdh
eXMKPiBlaXRoZXIgMCBvciAtRU5PTUVNLCBhbmQgd2UgbmV2ZXIgZGlkIGFueXRoaW5nIHdpdGgg
dGhlIGxhdHRlcgo+IHNvIHdlIGNhbiBqdXN0IGlnbm9yZSB0aGUgd2hvbGUgdGhpbmcuCj4gCj4g
V2UgY2FuIGFsc28gZ2V0IHJpZCBvZiB0aGUgZGlyZWN0IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdy
X3NldF9tc3QoZmFsc2UpCj4gY2FsbCBzaW5jZSByZXR1cm5pbmcgLUVJTlZBTCBjYXVzZXMgdGhl
IGNhbGxlciB0byBkbyB0aGUgdmVyeSBzYW1lIGNhbGwKPiBmb3IgdXMuCj4gCj4gQ2M6IEx5dWRl
IFBhdWwgPGx5dWRlQHJlZGhhdC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgODggKysrKysrKysrKysrLS0tLS0tLS0tLS0tLQo+
ICAxIGZpbGUgY2hhbmdlZCwgNDEgaW5zZXJ0aW9ucygrKSwgNDcgZGVsZXRpb25zKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gaW5kZXggNDgzOTdiMmMw
OGNmLi40ZDQ4OThkYjM4ZTkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jCj4gQEAgLTU2MjgsNjEgKzU2MjgsNTUgQEAgc3RhdGljIGludAo+ICBpbnRlbF9kcF9j
aGVja19tc3Rfc3RhdHVzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCj4gIHsKPiAgCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7Cj4gLQlib29s
IGJyZXQ7Cj4gIAo+IC0JaWYgKGludGVsX2RwLT5pc19tc3QpIHsKPiAtCQl1OCBlc2lbRFBfRFBS
WF9FU0lfTEVOXSA9IHsgMCB9Owo+IC0JCWludCByZXQgPSAwOwo+ICsJaWYgKCFpbnRlbF9kcC0+
aXNfbXN0KQo+ICsJCXJldHVybiAtRUlOVkFMOwo+ICsKPiArCVdBUk5fT05fT05DRShpbnRlbF9k
cC0+YWN0aXZlX21zdF9saW5rcyA8IDApOwo+ICsKPiArCWZvciAoOzspIHsKPiArCQl1OCBlc2lb
RFBfRFBSWF9FU0lfTEVOXSA9IHt9Owo+ICsJCWJvb2wgYnJldCwgaGFuZGxlZDsKPiAgCQlpbnQg
cmV0cnk7Cj4gLQkJYm9vbCBoYW5kbGVkOwo+ICAKPiAtCQlXQVJOX09OX09OQ0UoaW50ZWxfZHAt
PmFjdGl2ZV9tc3RfbGlua3MgPCAwKTsKPiAgCQlicmV0ID0gaW50ZWxfZHBfZ2V0X3NpbmtfaXJx
X2VzaShpbnRlbF9kcCwgZXNpKTsKPiAtZ29fYWdhaW46Cj4gLQkJaWYgKGJyZXQgPT0gdHJ1ZSkg
ewo+IC0KPiAtCQkJLyogY2hlY2sgbGluayBzdGF0dXMgLSBlc2lbMTBdID0gMHgyMDBjICovCj4g
LQkJCWlmIChpbnRlbF9kcC0+YWN0aXZlX21zdF9saW5rcyA+IDAgJiYKPiAtCQkJICAgICFkcm1f
ZHBfY2hhbm5lbF9lcV9vaygmZXNpWzEwXSwgaW50ZWxfZHAtCj4gPmxhbmVfY291bnQpKSB7Cj4g
LQkJCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLAo+IC0JCQkJCSAgICAiY2hhbm5lbCBFUSBub3Qg
b2ssCj4gcmV0cmFpbmluZ1xuIik7Cj4gLQkJCQlpbnRlbF9kcF9zdGFydF9saW5rX3RyYWluKGlu
dGVsX2RwKTsKPiAtCQkJCWludGVsX2RwX3N0b3BfbGlua190cmFpbihpbnRlbF9kcCk7Cj4gLQkJ
CX0KPiAtCj4gLQkJCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sICJnb3QgZXNpICUzcGhcbiIsIGVz
aSk7Cj4gLQkJCXJldCA9IGRybV9kcF9tc3RfaHBkX2lycSgmaW50ZWxfZHAtPm1zdF9tZ3IsIGVz
aSwKPiAmaGFuZGxlZCk7Cj4gLQo+IC0JCQlpZiAoaGFuZGxlZCkgewo+IC0JCQkJZm9yIChyZXRy
eSA9IDA7IHJldHJ5IDwgMzsgcmV0cnkrKykgewo+IC0JCQkJCWludCB3cmV0Owo+IC0JCQkJCXdy
ZXQgPSBkcm1fZHBfZHBjZF93cml0ZSgmaW50ZWxfZHAtCj4gPmF1eCwKPiAtCQkJCQkJCQkgRFBf
U0lOS19DT1VOVAo+IF9FU0krMSwKPiAtCQkJCQkJCQkgJmVzaVsxXSwgMyk7Cj4gLQkJCQkJaWYg
KHdyZXQgPT0gMykgewo+IC0JCQkJCQlicmVhazsKPiAtCQkJCQl9Cj4gLQkJCQl9Cj4gLQo+IC0J
CQkJYnJldCA9IGludGVsX2RwX2dldF9zaW5rX2lycV9lc2koaW50ZWxfZHAsCj4gZXNpKTsKPiAt
CQkJCWlmIChicmV0ID09IHRydWUpIHsKPiAtCQkJCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLAo+
IC0JCQkJCQkgICAgImdvdCBlc2kyICUzcGhcbiIsIGVzaSk7Cj4gLQkJCQkJZ290byBnb19hZ2Fp
bjsKPiAtCQkJCX0KPiAtCQkJfSBlbHNlCj4gLQkJCQlyZXQgPSAwOwo+IC0KPiAtCQkJcmV0dXJu
IHJldDsKPiAtCQl9IGVsc2Ugewo+ICsJCWlmICghYnJldCkgewo+ICAJCQlkcm1fZGJnX2ttcygm
aTkxNS0+ZHJtLAo+ICAJCQkJICAgICJmYWlsZWQgdG8gZ2V0IEVTSSAtIGRldmljZSBtYXkgaGF2
ZQo+IGZhaWxlZFxuIik7Cj4gLQkJCWludGVsX2RwLT5pc19tc3QgPSBmYWxzZTsKPiAtCQkJZHJt
X2RwX21zdF90b3BvbG9neV9tZ3Jfc2V0X21zdCgmaW50ZWxfZHAtPm1zdF9tZ3IsCj4gLQkJCQkJ
CQlpbnRlbF9kcC0+aXNfbXN0KTsKPiArCQkJcmV0dXJuIC1FSU5WQUw7Cj4gKwkJfQo+ICsKPiAr
CQkvKiBjaGVjayBsaW5rIHN0YXR1cyAtIGVzaVsxMF0gPSAweDIwMGMgKi8KPiArCQkvKgo+ICsJ
CSAqIEZJWE1FIGtpbGwgdGhpcyBhbmQgdXNlIHRoZSBTU1QgcmV0cmFpbmluZyBhcHByb2FjaAo+
ICsJCSAqIGZvciBNU1QgYXMgd2VsbC4KPiArCQkgKi8KPiArCQlpZiAoaW50ZWxfZHAtPmFjdGl2
ZV9tc3RfbGlua3MgPiAwICYmCj4gKwkJICAgICFkcm1fZHBfY2hhbm5lbF9lcV9vaygmZXNpWzEw
XSwgaW50ZWxfZHAtPmxhbmVfY291bnQpKSB7Cj4gKwkJCWRybV9kYmdfa21zKCZpOTE1LT5kcm0s
Cj4gKwkJCQkgICAgImNoYW5uZWwgRVEgbm90IG9rLCByZXRyYWluaW5nXG4iKTsKPiArCQkJaW50
ZWxfZHBfc3RhcnRfbGlua190cmFpbihpbnRlbF9kcCk7Cj4gKwkJCWludGVsX2RwX3N0b3BfbGlu
a190cmFpbihpbnRlbF9kcCk7Cj4gKwkJfQo+ICsKPiArCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJt
LCAiZ290IGVzaSAlM3BoXG4iLCBlc2kpOwo+ICsKPiArCQlkcm1fZHBfbXN0X2hwZF9pcnEoJmlu
dGVsX2RwLT5tc3RfbWdyLCBlc2ksICZoYW5kbGVkKTsKPiArCQlpZiAoIWhhbmRsZWQpCj4gKwkJ
CWJyZWFrOwo+ICsKPiArCQlmb3IgKHJldHJ5ID0gMDsgcmV0cnkgPCAzOyByZXRyeSsrKSB7Cj4g
KwkJCWludCB3cmV0Owo+ICsKPiArCQkJd3JldCA9IGRybV9kcF9kcGNkX3dyaXRlKCZpbnRlbF9k
cC0+YXV4LAo+ICsJCQkJCQkgRFBfU0lOS19DT1VOVF9FU0krMSwKPiArCQkJCQkJICZlc2lbMV0s
IDMpOwo+ICsJCQlpZiAod3JldCA9PSAzKQo+ICsJCQkJYnJlYWs7Cj4gIAkJfQo+ICAJfQo+IC0J
cmV0dXJuIC1FSU5WQUw7Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gIHN0YXRpYyBib29s
Cj4gLS0gCj4gMi4yNC4xCj4gCi0tIApDaGVlcnMsCglMeXVkZSBQYXVsIChzaGUvaGVyKQoJQXNz
b2NpYXRlIFNvZnR3YXJlIEVuZ2luZWVyIGF0IFJlZCBIYXQKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
