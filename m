Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5A22F8025
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 16:58:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A2636E416;
	Fri, 15 Jan 2021 15:58:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B130A6E408;
 Fri, 15 Jan 2021 13:09:49 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id ke15so5536879ejc.12;
 Fri, 15 Jan 2021 05:09:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=reply-to:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=pgCoV5aHb0L+p8XfllG2U0exllvT16j+0//NQwhT+p4=;
 b=NX9tyGwBDJ1VbkEbCDy9bBK+z6Y6u515MmhSgVUGh8tld9t1IoUK2W5Zj0Wh2FEdJP
 wHaATirWX3GwlkwmB43aOPJc1ADJ0V05v2dJCrTwTQX6MAz/l0ojwWKGFFJ9iMtkLOyR
 FfJTQqhXZDZ84ttFnYPmSRklQG9mveFHPvPsSrfF0Q/1XNCRWODEv24d34gc0zlWwEg9
 7ZaAej20JucABTrfFuWh9NoTm9vQhZm4dWVaM25UrzzlAHm2seESMH5tdJ9z7bdilN5D
 aGcNu6W59RE2ksSdefyjou53uyg76M1V8eRL6qWmzNSgqPPavtEXA1m6KSrWCAewlg43
 Cy1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=pgCoV5aHb0L+p8XfllG2U0exllvT16j+0//NQwhT+p4=;
 b=Q7I9KlsRUdKhIQAWJFEdh1leSy22Vj5g92vwXCw8ezZdivUJE1pDMn68mjlN5tRPHF
 40qVKTjCeE6a6eAZ4guB1jXoOZd5lqiwQ+e+AUOtdaWo940Zvfx5fYH63BMp1HSsexH9
 MG27utN82L0ce47zlPhN9O2hrvM0Cn2ahLxKkBLzRiDwGnyLs7xCbtuIf8K6tsC/+iT7
 P1LJJa7XRCRDJju+Ml5ZmqIutIRGg1kqqiKdCakDW4IoYx5qzR/WWAmJXUUDBeYJYtsR
 EKAXg1+m6ZCC7UjjYEWFenAVtbj57sieaMBw6y5krJinneBOwVaEtWzlGn1qoXJo3uEW
 Wgrg==
X-Gm-Message-State: AOAM531yjiVqKy7pUWjzZ9kGfX6xc2iF9so2S3gCyRu8GLNby1RqU1AB
 DlC234wf0ZhRaKYZgmSP6/i6hQpBDJk=
X-Google-Smtp-Source: ABdhPJzAydBw6nUSweXjn1PYgc2jFbYSLUOx8wtWpFju1Emu/08RwluD2kaHkakNIL8CAYEgla80aA==
X-Received: by 2002:a17:906:f98e:: with SMTP id
 li14mr8990194ejb.415.1610716188417; 
 Fri, 15 Jan 2021 05:09:48 -0800 (PST)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id u9sm780680ejc.57.2021.01.15.05.09.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 15 Jan 2021 05:09:47 -0800 (PST)
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20210115130219.3915789-1-daniel.vetter@ffwll.ch>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <8c60b2ac-d1b9-ffde-ad6d-2a3953f519de@gmail.com>
Date: Fri, 15 Jan 2021 14:09:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210115130219.3915789-1-daniel.vetter@ffwll.ch>
Content-Language: en-US
X-Mailman-Approved-At: Fri, 15 Jan 2021 15:58:50 +0000
Subject: Re: [Intel-gfx] [Linaro-mm-sig] [PATCH] drm-buf: Add debug option
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
Reply-To: christian.koenig@amd.com
Cc: linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 linux-media@vger.kernel.org, David Stevens <stevensd@chromium.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gMTUuMDEuMjEgdW0gMTQ6MDIgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IFdlIGhhdmUgdG9v
IG1hbnkgcGVvcGxlIGFidXNpbmcgdGhlIHN0cnVjdCBwYWdlIHRoZXkgY2FuIGdldCBhdCBidXQK
PiByZWFsbHkgc2hvdWxkbid0IGluIGltcG9ydGVycy4gQXNpZGUgZnJvbSB0aGF0IHRoZSBiYWNr
aW5nIHBhZ2UgbWlnaHQKPiBzaW1wbHkgbm90IGV4aXN0IChmb3IgZHluYW1pYyBwMnAgbWFwcGlu
Z3MpIGxvb2tpbmcgYXQgaXQgYW5kIHVzaW5nIGl0Cj4gZS5nLiBmb3IgbW1hcCBjYW4gYWxzbyB3
cmVhayB0aGUgcGFnZSBoYW5kbGluZyBvZiB0aGUgZXhwb3J0ZXIKPiBjb21wbGV0ZWx5LiBJbXBv
cnRlcnMgcmVhbGx5IG11c3QgZ28gdGhyb3VnaCB0aGUgcHJvcGVyIGludGVyZmFjZSBsaWtlCj4g
ZG1hX2J1Zl9tbWFwIGZvciBldmVyeXRoaW5nLgo+Cj4gSSdtIHNlbWktdGVtcHRlZCB0byBlbmZv
cmNlIHRoaXMgZm9yIGR5bmFtaWMgaW1wb3J0ZXJzIHNpbmNlIHRob3NlCj4gcmVhbGx5IGhhdmUg
bm8gZXhjdXNlIGF0IGFsbCB0byBicmVhayB0aGUgcnVsZXMuCj4KPiBVbmZvcnR1YW50ZWx5IHdl
IGNhbid0IHN0b3JlIHRoZSByaWdodCBwb2ludGVycyBzb21ld2hlcmUgc2FmZSB0byBtYWtlCj4g
c3VyZSB3ZSBvb3BzIG9uIHNvbWV0aGluZyByZWNvZ25pemFibGUsIHNvIGJlc3QgaXMgdG8ganVz
dCB3cmFuZ2xlCj4gdGhlbSBhIGJpdCBieSBmbGlwcGluZyBhbGwgdGhlIGJpdHMuIEF0IGxlYXN0
IG9uIHg4NiBrZXJuZWwgYWRkcmVzc2VzCj4gaGF2ZSBhbGwgdGhlaXIgaGlnaCBiaXRzIHNldHMg
YW5kIHRoZSBzdHJ1Y3QgcGFnZSBhcnJheSBpcyBmYWlybHkgbG93Cj4gaW4gdGhlIGtlcm5lbCBt
YXBwaW5nLCBzbyBmbGlwcGluZyBhbGwgdGhlIGJpdHMgZ2l2ZXMgdXMgYSB2ZXJ5IGhpZ2gKPiBw
b2ludGVyIGluIHVzZXJzcGFjZSBhbmQgaGVuY2UgZXhjZWxsZW50IGNoYW5jZXMgZm9yIGFuIGlu
dmFsaWQKPiBkZXJlZmVyZW5jZS4KPgo+IHYyOiBBZGQgYSBub3RlIHRvIHRoZSBAbWFwX2RtYV9i
dWYgaG9vayB0aGF0IGV4cG9ydGVycyBzaG91bGRuJ3QgZG8KPiBmYW5jeSBjYWNoaW5nIHRyaWNr
cywgd2hpY2ggd291bGQgYmxvdyB1cCB3aXRoIHRoaXMgYWRkcmVzcyBzY3JhbWJsaW5nCj4gdHJp
Y2sgaGVyZSAoQ2hyaXMpCj4KPiBFbmFibGUgYnkgZGVmYXVsdCB3aGVuIENPTkZJR19ETUFfQVBJ
X0RFQlVHIGlzIGVuYWJsZWQuCj4KPiBSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVs
LnZldHRlckBpbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgo+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgo+IENj
OiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiBDYzogRGF2
aWQgU3RldmVucyA8c3RldmVuc2RAY2hyb21pdW0ub3JnPgo+IENjOiBsaW51eC1tZWRpYUB2Z2Vy
Lmtlcm5lbC5vcmcKPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCj4gLS0tCj4g
ICBkcml2ZXJzL2RtYS1idWYvS2NvbmZpZyAgIHwgIDggKysrKysrKwo+ICAgZHJpdmVycy9kbWEt
YnVmL2RtYS1idWYuYyB8IDQ5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0t
LQo+ICAgaW5jbHVkZS9saW51eC9kbWEtYnVmLmggICB8ICA2ICsrKysrCj4gICAzIGZpbGVzIGNo
YW5nZWQsIDU5IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9kbWEtYnVmL0tjb25maWcgYi9kcml2ZXJzL2RtYS1idWYvS2NvbmZpZwo+IGluZGV4
IDRmODIyNGE2YWM5NS4uNGUxNmM3MWMyNGI3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1
Zi9LY29uZmlnCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL0tjb25maWcKPiBAQCAtNTAsNiArNTAs
MTQgQEAgY29uZmlnIERNQUJVRl9NT1ZFX05PVElGWQo+ICAgCSAgVGhpcyBpcyBtYXJrZWQgZXhw
ZXJpbWVudGFsIGJlY2F1c2Ugd2UgZG9uJ3QgeWV0IGhhdmUgYSBjb25zaXN0ZW50Cj4gICAJICBl
eGVjdXRpb24gY29udGV4dCBhbmQgbWVtb3J5IG1hbmFnZW1lbnQgYmV0d2VlbiBkcml2ZXJzLgo+
ICAgCj4gK2NvbmZpZyBETUFCVUZfREVCVUcKPiArCWJvb2wgIkRNQS1CVUYgZGVidWcgY2hlY2tz
Igo+ICsJZGVmYXVsdCB5IGlmIERNQV9BUElfREVCVUcKPiArCWhlbHAKPiArCSAgVGhpcyBvcHRp
b24gZW5hYmxlcyBhZGRpdGlvbmFsIGNoZWNrcyBmb3IgRE1BLUJVRiBpbXBvcnRlcnMgYW5kCj4g
KwkgIGV4cG9ydGVycy4gU3BlY2lmaWNhbGx5IGl0IHZhbGlkYXRlcyB0aGF0IGltcG9ydGVycyBk
byBub3QgcGVlayBhdCB0aGUKPiArCSAgdW5kZXJseWluZyBzdHJ1Y3QgcGFnZSB3aGVuIHRoZXkg
aW1wb3J0IGEgYnVmZmVyLgo+ICsKPiAgIGNvbmZpZyBETUFCVUZfU0VMRlRFU1RTCj4gICAJdHJp
c3RhdGUgIlNlbGZ0ZXN0cyBmb3IgdGhlIGRtYS1idWYgaW50ZXJmYWNlcyIKPiAgIAlkZWZhdWx0
IG4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtYnVmLmMKPiBpbmRleCAxYzliZDUxZGIxMTAuLjZlNDcyNWY3ZGZkZSAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4gKysrIGIvZHJpdmVycy9kbWEtYnVm
L2RtYS1idWYuYwo+IEBAIC02NjYsNiArNjY2LDMwIEBAIHZvaWQgZG1hX2J1Zl9wdXQoc3RydWN0
IGRtYV9idWYgKmRtYWJ1ZikKPiAgIH0KPiAgIEVYUE9SVF9TWU1CT0xfR1BMKGRtYV9idWZfcHV0
KTsKPiAgIAo+ICtzdGF0aWMgc3RydWN0IHNnX3RhYmxlICogX19tYXBfZG1hX2J1ZihzdHJ1Y3Qg
ZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsCj4gKwkJCQkgICAgICAgZW51bSBkbWFfZGF0YV9k
aXJlY3Rpb24gZGlyZWN0aW9uKQo+ICt7Cj4gKwlzdHJ1Y3Qgc2dfdGFibGUgKnNnX3RhYmxlOwo+
ICsKPiArCXNnX3RhYmxlID0gYXR0YWNoLT5kbWFidWYtPm9wcy0+bWFwX2RtYV9idWYoYXR0YWNo
LCBkaXJlY3Rpb24pOwo+ICsKPiArI2lmIENPTkZJR19ETUFCVUZfREVCVUcKPiArCWlmIChzZ190
YWJsZSkgewo+ICsJCWludCBpOwo+ICsJCXN0cnVjdCBzY2F0dGVybGlzdCAqc2c7Cj4gKwo+ICsJ
CS8qIFRvIGNhdGNoIGFidXNlIG9mIHRoZSB1bmRlcmx5aW5nIHN0cnVjdCBwYWdlIGJ5IGltcG9y
dGVycyBtaXgKPiArCQkgKiB1cCB0aGUgYml0cywgYnV0IHRha2UgY2FyZSB0byBwcmVzZXJ2ZSB0
aGUgbG93IFNHXyBiaXRzIHRvCj4gKwkJICogbm90IGNvcnJ1cHQgdGhlIHNndC4gVGhlIG1peGlu
ZyBpcyB1bmRvbmUgaW4gX191bm1hcF9kbWFfYnVmCj4gKwkJICogYmVmb3JlIHBhc3NpbmcgdGhl
IHNndCBiYWNrIHRvIHRoZSBleHBvcnRlci4gKi8KPiArCQlmb3JfZWFjaF9zZ3RhYmxlX3NnKHNn
X3RhYmxlLCBzZywgaSkKPiArCQkJc2ctPnBhZ2VfbGluayBePSB+MHhmZlVMOwo+ICsJfQo+ICsj
ZW5kaWYKPiArCj4gKwlyZXR1cm4gc2dfdGFibGU7Cj4gK30KPiArCj4gICAvKioKPiAgICAqIGRt
YV9idWZfZHluYW1pY19hdHRhY2ggLSBBZGQgdGhlIGRldmljZSB0byBkbWFfYnVmJ3MgYXR0YWNo
bWVudHMgbGlzdAo+ICAgICogQGRtYWJ1ZjoJCVtpbl0JYnVmZmVyIHRvIGF0dGFjaCBkZXZpY2Ug
dG8uCj4gQEAgLTczNyw3ICs3NjEsNyBAQCBkbWFfYnVmX2R5bmFtaWNfYXR0YWNoKHN0cnVjdCBk
bWFfYnVmICpkbWFidWYsIHN0cnVjdCBkZXZpY2UgKmRldiwKPiAgIAkJCQlnb3RvIGVycl91bmxv
Y2s7Cj4gICAJCX0KPiAgIAo+IC0JCXNndCA9IGRtYWJ1Zi0+b3BzLT5tYXBfZG1hX2J1ZihhdHRh
Y2gsIERNQV9CSURJUkVDVElPTkFMKTsKPiArCQlzZ3QgPSBfX21hcF9kbWFfYnVmKGF0dGFjaCwg
RE1BX0JJRElSRUNUSU9OQUwpOwo+ICAgCQlpZiAoIXNndCkKPiAgIAkJCXNndCA9IEVSUl9QVFIo
LUVOT01FTSk7Cj4gICAJCWlmIChJU19FUlIoc2d0KSkgewo+IEBAIC03ODQsNiArODA4LDIzIEBA
IHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmRtYV9idWZfYXR0YWNoKHN0cnVjdCBkbWFfYnVm
ICpkbWFidWYsCj4gICB9Cj4gICBFWFBPUlRfU1lNQk9MX0dQTChkbWFfYnVmX2F0dGFjaCk7Cj4g
ICAKPiArc3RhdGljIHZvaWQgX191bm1hcF9kbWFfYnVmKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1l
bnQgKmF0dGFjaCwKPiArCQkJICAgIHN0cnVjdCBzZ190YWJsZSAqc2dfdGFibGUsCj4gKwkJCSAg
ICBlbnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBkaXJlY3Rpb24pCj4gK3sKPiArCj4gKyNpZiBDT05G
SUdfRE1BQlVGX0RFQlVHCj4gKwlpZiAoc2dfdGFibGUpIHsKPiArCQlpbnQgaTsKPiArCQlzdHJ1
Y3Qgc2NhdHRlcmxpc3QgKnNnOwo+ICsKPiArCQlmb3JfZWFjaF9zZ3RhYmxlX3NnKHNnX3RhYmxl
LCBzZywgaSkKPiArCQkJc2ctPnBhZ2VfbGluayBePSB+MHhmZlVMOwo+ICsJfQo+ICsjZW5kaWYK
Ckluc3RlYWQgb2YgZHVwbGljYXRpbmcgdGhpcyBJIHdvdWxkIHJhdGhlciBzdHJ1Y3R1cmUgdGhl
IGNvZGUgc28gdGhhdCB3ZSAKaGF2ZSBhIGhlbHBlciB0byBtYW5nbGUgdGhlIHNndCB3aGVuIG5l
Y2Vzc2FyeS4KClRoaXMgY2FuIHRoZW4gYmUgY2FsbGVkIGZyb20gYm90aCB0aGUgbWFwKCkgYXMg
d2VsbCBhcyB0aGUgdW5tYXAoKSBwYXRoLgoKQXBhcnQgZnJvbSB0aGF0IGxvb2tzIGdvb2QgdG8g
bWUsCkNocmlzdGlhbi4KCj4gKwlhdHRhY2gtPmRtYWJ1Zi0+b3BzLT51bm1hcF9kbWFfYnVmKGF0
dGFjaCwgc2dfdGFibGUsIGRpcmVjdGlvbik7Cj4gK30KPiArCj4gICAvKioKPiAgICAqIGRtYV9i
dWZfZGV0YWNoIC0gUmVtb3ZlIHRoZSBnaXZlbiBhdHRhY2htZW50IGZyb20gZG1hYnVmJ3MgYXR0
YWNobWVudHMgbGlzdAo+ICAgICogQGRtYWJ1ZjoJW2luXQlidWZmZXIgdG8gZGV0YWNoIGZyb20u
Cj4gQEAgLTgwMiw3ICs4NDMsNyBAQCB2b2lkIGRtYV9idWZfZGV0YWNoKHN0cnVjdCBkbWFfYnVm
ICpkbWFidWYsIHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCkKPiAgIAkJaWYgKGRt
YV9idWZfaXNfZHluYW1pYyhhdHRhY2gtPmRtYWJ1ZikpCj4gICAJCQlkbWFfcmVzdl9sb2NrKGF0
dGFjaC0+ZG1hYnVmLT5yZXN2LCBOVUxMKTsKPiAgIAo+IC0JCWRtYWJ1Zi0+b3BzLT51bm1hcF9k
bWFfYnVmKGF0dGFjaCwgYXR0YWNoLT5zZ3QsIGF0dGFjaC0+ZGlyKTsKPiArCQlfX3VubWFwX2Rt
YV9idWYoYXR0YWNoLCBhdHRhY2gtPnNndCwgYXR0YWNoLT5kaXIpOwo+ICAgCj4gICAJCWlmIChk
bWFfYnVmX2lzX2R5bmFtaWMoYXR0YWNoLT5kbWFidWYpKSB7Cj4gICAJCQlkbWFfYnVmX3VucGlu
KGF0dGFjaCk7Cj4gQEAgLTkyNCw3ICs5NjUsNyBAQCBzdHJ1Y3Qgc2dfdGFibGUgKmRtYV9idWZf
bWFwX2F0dGFjaG1lbnQoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLAo+ICAgCQl9
Cj4gICAJfQo+ICAgCj4gLQlzZ190YWJsZSA9IGF0dGFjaC0+ZG1hYnVmLT5vcHMtPm1hcF9kbWFf
YnVmKGF0dGFjaCwgZGlyZWN0aW9uKTsKPiArCXNnX3RhYmxlID0gX19tYXBfZG1hX2J1ZihhdHRh
Y2gsIGRpcmVjdGlvbik7Cj4gICAJaWYgKCFzZ190YWJsZSkKPiAgIAkJc2dfdGFibGUgPSBFUlJf
UFRSKC1FTk9NRU0pOwo+ICAgCj4gQEAgLTk4Nyw3ICsxMDI4LDcgQEAgdm9pZCBkbWFfYnVmX3Vu
bWFwX2F0dGFjaG1lbnQoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLAo+ICAgCWlm
IChkbWFfYnVmX2lzX2R5bmFtaWMoYXR0YWNoLT5kbWFidWYpKQo+ICAgCQlkbWFfcmVzdl9hc3Nl
cnRfaGVsZChhdHRhY2gtPmRtYWJ1Zi0+cmVzdik7Cj4gICAKPiAtCWF0dGFjaC0+ZG1hYnVmLT5v
cHMtPnVubWFwX2RtYV9idWYoYXR0YWNoLCBzZ190YWJsZSwgZGlyZWN0aW9uKTsKPiArCV9fdW5t
YXBfZG1hX2J1ZihhdHRhY2gsIHNnX3RhYmxlLCBkaXJlY3Rpb24pOwo+ICAgCj4gICAJaWYgKGRt
YV9idWZfaXNfZHluYW1pYyhhdHRhY2gtPmRtYWJ1ZikgJiYKPiAgIAkgICAgIUlTX0VOQUJMRUQo
Q09ORklHX0RNQUJVRl9NT1ZFX05PVElGWSkpCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgv
ZG1hLWJ1Zi5oIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgKPiBpbmRleCA2Mjg2ODFiZjZjOTku
LmVmZGM1NmI5ZDk1ZiAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaAo+ICsr
KyBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oCj4gQEAgLTE1NCw2ICsxNTQsMTIgQEAgc3RydWN0
IGRtYV9idWZfb3BzIHsKPiAgIAkgKiBPbiBmYWlsdXJlLCByZXR1cm5zIGEgbmVnYXRpdmUgZXJy
b3IgdmFsdWUgd3JhcHBlZCBpbnRvIGEgcG9pbnRlci4KPiAgIAkgKiBNYXkgYWxzbyByZXR1cm4g
LUVJTlRSIHdoZW4gYSBzaWduYWwgd2FzIHJlY2VpdmVkIHdoaWxlIGJlaW5nCj4gICAJICogYmxv
Y2tlZC4KPiArCSAqCj4gKwkgKiBOb3RlIHRoYXQgZXhwb3J0ZXJzIHNob3VsZCBub3QgdHJ5IHRv
IGNhY2hlIHRoZSBzY2F0dGVyIGxpc3QsIG9yCj4gKwkgKiByZXR1cm4gdGhlIHNhbWUgb25lIGZv
ciBtdWx0aXBsZSBjYWxscy4gQ2FjaGluZyBpcyBkb25lIGVpdGhlciBieSB0aGUKPiArCSAqIERN
QS1CVUYgY29kZSAoZm9yIG5vbi1keW5hbWljIGltcG9ydGVycykgb3IgdGhlIGltcG9ydGVyLiBP
d25lcnNoaXAKPiArCSAqIG9mIHRoZSBzY2F0dGVyIGxpc3QgaXMgdHJhbnNmZXJyZWQgdG8gdGhl
IGNhbGxlciwgYW5kIHJldHVybmVkIGJ5Cj4gKwkgKiBAdW5tYXBfZG1hX2J1Zi4KPiAgIAkgKi8K
PiAgIAlzdHJ1Y3Qgc2dfdGFibGUgKiAoKm1hcF9kbWFfYnVmKShzdHJ1Y3QgZG1hX2J1Zl9hdHRh
Y2htZW50ICosCj4gICAJCQkJCSBlbnVtIGRtYV9kYXRhX2RpcmVjdGlvbik7CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
