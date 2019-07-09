Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B778363257
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 09:48:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E0C689DA5;
	Tue,  9 Jul 2019 07:48:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com
 [IPv6:2607:f8b0:4864:20::743])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0A7089683
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 07:48:43 +0000 (UTC)
Received: by mail-qk1-x743.google.com with SMTP id 201so13183470qkm.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 Jul 2019 00:48:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=akNNxWI8FjVJdNrnzs4OMznj/Y8SRYnn+aw4RnGr19Q=;
 b=gOB3ILGL0ZaIAiIC96JLl80Gu9th7PqB37rov0t52bX9GE74+9vVpyE/gUZzq/sq8Q
 nclKlfwo1uV6R3pSgpjZdess+J5lgQJmtJZEGCfLATgyGiKV0Z44JsIBWkGB1A6Phgri
 Vtk/ZlPNmAtKbB5NYMtHxRHTx/xnyvtEWdjxJjTNxV9Uuq3ipRfIEY434OcF2DU8k8xO
 Ud8uvb+u+yCNinsrNyB957T5XAUHuVa3M7+eMReDSGuqv4xRriHRECGKUFzeHhkqCgUI
 q9mSnpBuDabiEFqscNsvZ7VbpSZneQkQtFR5IJLdLV1prUMC4Mz0Wb+mMKAFnpjEF4z6
 6W+Q==
X-Gm-Message-State: APjAAAXDEzEcS7E2joqjRelGSQkj+9AJmc8+e+Ox5n3+cBwvEkOKMGgW
 MHSMsSB8veeywOnTddUGqbbyfHBUtDfxrR+199ZARg==
X-Google-Smtp-Source: APXvYqzH9U1yfdeMFWbwffS1cW02Nnh8zVOt7HDxKwDBchz9uvnhAvUkLYvvxP25jUjHHQobpsK6Oz3tyqw/maac43E=
X-Received: by 2002:a05:620a:1286:: with SMTP id
 w6mr16869990qki.219.1562658523203; 
 Tue, 09 Jul 2019 00:48:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190708162048.4286-1-ville.syrjala@linux.intel.com>
 <20190708162048.4286-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20190708162048.4286-5-ville.syrjala@linux.intel.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Tue, 9 Jul 2019 09:48:32 +0200
Message-ID: <CA+M3ks628SRx4-rvVzQ9stKn3+ALBAKMUv8kWmoH9Ui_kgnWhw@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=akNNxWI8FjVJdNrnzs4OMznj/Y8SRYnn+aw4RnGr19Q=;
 b=sRSG+RJmjivH0AD8M8v+ygf+bVdxItSuuf4Oju4MeBbLLik5CVnGKVo6nXyOainuLO
 30fOBNSXzlJ+10bAzROCK8AhEcd6N7WzfiHkF6kiFYPsAolMgppMvhLnJ29zi6lWyatM
 QjSIBcJ3caclqzkXJF+AMJYN0sj5033jpeXDv0/y4gma/XKlXEwHHKFchO7gA3zBAw9n
 HuBNMCrksDaQNa6cV41Gy9Vjh42OcU07UAsOv7VhD30PQexU6gjAmrLtqfbV2ABvIsmu
 6Yrdt+cQBQX2j4ng8yxUwwIDKxHQBaP+GnSMv4eYKfK4hWkdYpmYwdzXvL8dbUQPO3yl
 8aNg==
Subject: Re: [Intel-gfx] [PATCH v2 04/14] drm/sti: Try to fix up the tvout
 possible clones
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Vincent Abriou <vincent.abriou@st.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TGUgbHVuLiA4IGp1aWwuIDIwMTkgw6AgMTg6MjEsIFZpbGxlIFN5cmphbGEKPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPiBhIMOpY3JpdCA6Cj4KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+Cj4gVGhlIGN1cnJlbnQgcG9zc2libGVf
Y2xvbmVzIHNldHVwIGRvZXNuJ3QgbG9vayBzZW5zaWJsZS4gSSdtIGFzc3VtaW5nCj4gdGhlIDAg
YW5kIDEgYXJlIHN1cHBvc2VkIHRvIHJlZmVyIHRvIHRoZSBpbmRleGVzIG9mIHRoZSBoZG1pIGFu
ZCBoZGEKPiBlbmNvZGVycz8gU28gaXQga2luZGEgbG9va3MgbGlrZSB3ZSB3YW50IGhkYStoZG1p
IGNsb25pbmcsIGJ1dCB0aGVuCj4gZHZvIGFsc28gY2xhaW1zIHRvIGJlIGNsb25lYWJsZSB3aXRo
IGhkbWksIGJ1dCBoZG1pIHdvbid0IHJlY2lwcmljYXRlLgo+Cj4gQmVuamFtaW4gdGVsbHMgbWUg
YWxsIGVuY29kZXJzIHNob3VsZCBiZSBjbG9uZWFibGUgd2l0aCBlYWNoIG90aGVyLAo+IHNvIGxl
dCdzIGZpeCB1cCB0aGUgbWFza3MgdG8gaW5kaWNhdGUgdGhhdC4KPgpBcHBsaWVkIG9uIGRybS1t
aXNjLW5leHQsClRoYW5rcywKCkJlbmphbWluCgo+IENjOiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVu
amFtaW4uZ2FpZ25hcmRAbGluYXJvLm9yZz4KPiBDYzogVmluY2VudCBBYnJpb3UgPHZpbmNlbnQu
YWJyaW91QHN0LmNvbT4KPiBBY2tlZC1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdh
aWduYXJkQGxpbmFyby5vcmc+Cj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL3N0aS9z
dGlfdHZvdXQuYyB8IDEwICsrKysrKystLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9u
cygrKSwgMyBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc3Rp
L3N0aV90dm91dC5jIGIvZHJpdmVycy9ncHUvZHJtL3N0aS9zdGlfdHZvdXQuYwo+IGluZGV4IDQy
ZjRjMjY0YTc4My4uYWJhNzljMTcyNTEyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9z
dGkvc3RpX3R2b3V0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc3RpL3N0aV90dm91dC5jCj4g
QEAgLTY3Miw3ICs2NzIsNiBAQCBzdGlfdHZvdXRfY3JlYXRlX2R2b19lbmNvZGVyKHN0cnVjdCBk
cm1fZGV2aWNlICpkZXYsCj4gICAgICAgICBkcm1fZW5jb2RlciA9ICZlbmNvZGVyLT5lbmNvZGVy
Owo+Cj4gICAgICAgICBkcm1fZW5jb2Rlci0+cG9zc2libGVfY3J0Y3MgPSBFTkNPREVSX0NSVENf
TUFTSzsKPiAtICAgICAgIGRybV9lbmNvZGVyLT5wb3NzaWJsZV9jbG9uZXMgPSAxIDw8IDA7Cj4K
PiAgICAgICAgIGRybV9lbmNvZGVyX2luaXQoZGV2LCBkcm1fZW5jb2RlciwKPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgJnN0aV90dm91dF9lbmNvZGVyX2Z1bmNzLCBEUk1fTU9ERV9FTkNPREVS
X0xWRFMsCj4gQEAgLTcyNSw3ICs3MjQsNiBAQCBzdGF0aWMgc3RydWN0IGRybV9lbmNvZGVyICpz
dGlfdHZvdXRfY3JlYXRlX2hkYV9lbmNvZGVyKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4gICAg
ICAgICBkcm1fZW5jb2RlciA9ICZlbmNvZGVyLT5lbmNvZGVyOwo+Cj4gICAgICAgICBkcm1fZW5j
b2Rlci0+cG9zc2libGVfY3J0Y3MgPSBFTkNPREVSX0NSVENfTUFTSzsKPiAtICAgICAgIGRybV9l
bmNvZGVyLT5wb3NzaWJsZV9jbG9uZXMgPSAxIDw8IDA7Cj4KPiAgICAgICAgIGRybV9lbmNvZGVy
X2luaXQoZGV2LCBkcm1fZW5jb2RlciwKPiAgICAgICAgICAgICAgICAgICAgICAgICAmc3RpX3R2
b3V0X2VuY29kZXJfZnVuY3MsIERSTV9NT0RFX0VOQ09ERVJfREFDLCBOVUxMKTsKPiBAQCAtNzc0
LDcgKzc3Miw2IEBAIHN0YXRpYyBzdHJ1Y3QgZHJtX2VuY29kZXIgKnN0aV90dm91dF9jcmVhdGVf
aGRtaV9lbmNvZGVyKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4gICAgICAgICBkcm1fZW5jb2Rl
ciA9ICZlbmNvZGVyLT5lbmNvZGVyOwo+Cj4gICAgICAgICBkcm1fZW5jb2Rlci0+cG9zc2libGVf
Y3J0Y3MgPSBFTkNPREVSX0NSVENfTUFTSzsKPiAtICAgICAgIGRybV9lbmNvZGVyLT5wb3NzaWJs
ZV9jbG9uZXMgPSAxIDw8IDE7Cj4KPiAgICAgICAgIGRybV9lbmNvZGVyX2luaXQoZGV2LCBkcm1f
ZW5jb2RlciwKPiAgICAgICAgICAgICAgICAgICAgICAgICAmc3RpX3R2b3V0X2VuY29kZXJfZnVu
Y3MsIERSTV9NT0RFX0VOQ09ERVJfVE1EUywgTlVMTCk7Cj4gQEAgLTc5MCw2ICs3ODcsMTMgQEAg
c3RhdGljIHZvaWQgc3RpX3R2b3V0X2NyZWF0ZV9lbmNvZGVycyhzdHJ1Y3QgZHJtX2RldmljZSAq
ZGV2LAo+ICAgICAgICAgdHZvdXQtPmhkbWkgPSBzdGlfdHZvdXRfY3JlYXRlX2hkbWlfZW5jb2Rl
cihkZXYsIHR2b3V0KTsKPiAgICAgICAgIHR2b3V0LT5oZGEgPSBzdGlfdHZvdXRfY3JlYXRlX2hk
YV9lbmNvZGVyKGRldiwgdHZvdXQpOwo+ICAgICAgICAgdHZvdXQtPmR2byA9IHN0aV90dm91dF9j
cmVhdGVfZHZvX2VuY29kZXIoZGV2LCB0dm91dCk7Cj4gKwo+ICsgICAgICAgdHZvdXQtPmhkbWkt
PnBvc3NpYmxlX2Nsb25lcyA9IGRybV9lbmNvZGVyX21hc2sodHZvdXQtPmhkbWkpIHwKPiArICAg
ICAgICAgICAgICAgZHJtX2VuY29kZXJfbWFzayh0dm91dC0+aGRhKSB8IGRybV9lbmNvZGVyX21h
c2sodHZvdXQtPmR2byk7Cj4gKyAgICAgICB0dm91dC0+aGRhLT5wb3NzaWJsZV9jbG9uZXMgPSBk
cm1fZW5jb2Rlcl9tYXNrKHR2b3V0LT5oZG1pKSB8Cj4gKyAgICAgICAgICAgICAgIGRybV9lbmNv
ZGVyX21hc2sodHZvdXQtPmhkYSkgfCBkcm1fZW5jb2Rlcl9tYXNrKHR2b3V0LT5kdm8pOwo+ICsg
ICAgICAgdHZvdXQtPmR2by0+cG9zc2libGVfY2xvbmVzID0gZHJtX2VuY29kZXJfbWFzayh0dm91
dC0+aGRtaSkgfAo+ICsgICAgICAgICAgICAgICBkcm1fZW5jb2Rlcl9tYXNrKHR2b3V0LT5oZGEp
IHwgZHJtX2VuY29kZXJfbWFzayh0dm91dC0+ZHZvKTsKPiAgfQo+Cj4gIHN0YXRpYyB2b2lkIHN0
aV90dm91dF9kZXN0cm95X2VuY29kZXJzKHN0cnVjdCBzdGlfdHZvdXQgKnR2b3V0KQo+IC0tCj4g
Mi4yMS4wCj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
