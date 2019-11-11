Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B4CF79BA
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 18:21:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DD026E69C;
	Mon, 11 Nov 2019 17:21:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E34F46E69C
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 17:20:59 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id k15so8886680vsp.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 09:20:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oC1dwPehPeTuIog0F0SFvN1fEjvNbJ2OCVQV230HMZI=;
 b=DOfGDsp+Fcq/Uk3SZwA8lg5FETeJf3LE3iE9HTMp3Sl3UDoYExPIKP8yZCI8yPaWjp
 1Af4RiCJ7EpFkKDQMOvZLU3UFrCM7PXRxNhm/gNFD7upgdFeqbw6PlS0vbA+/ndRasub
 Chr6UqfZZfR9qB1ZtnOxpgsEd09zkMm6B/xpDO1Y9vqZ84nvMVB89RGmwkMEKwE8kgPn
 +viry5Ewc/haiePCqtzfdIf6Z07pvXTGVRp9jkKRYBRpLf8vbOJsbGpOncUI+8qYxvBM
 +vazL7PIOBd6uT95QZz4zcHwGfVqjrSfdRpctZgm0MiH7NlxTVbL7I4QuJbJ0VSgs58v
 p3Fg==
X-Gm-Message-State: APjAAAXMfcp8kxWhTjEYZKdKjurC5+89Ut1c1f3qyMcm/m56NqW0Zf/f
 2eq5AjmXtebSLabnM9gxnMZunOzae63C32OjauQ=
X-Google-Smtp-Source: APXvYqwGTKs8kpGsd8unkd8U9rNrEXDPz/HYzkVbzH1/LZZIKem41v8llrDiTD2RhCegkI1Mc+jWPs4Ufk/C42qKB0E=
X-Received: by 2002:a05:6102:36d:: with SMTP id
 f13mr19518850vsa.34.1573492858901; 
 Mon, 11 Nov 2019 09:20:58 -0800 (PST)
MIME-Version: 1.0
References: <20191110185806.17413-1-chris@chris-wilson.co.uk>
 <20191110185806.17413-15-chris@chris-wilson.co.uk>
 <CAM0jSHOSyh0x9r78ap1iG-EENXyS3GBGSY9pQ9YWNOHc7v66=w@mail.gmail.com>
 <157349258982.28106.7818839510642728062@skylake-alporthouse-com>
In-Reply-To: <157349258982.28106.7818839510642728062@skylake-alporthouse-com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 11 Nov 2019 17:20:32 +0000
Message-ID: <CAM0jSHPCd6mbw4bc85ax-5ghnP3EMVc7VpCVsmJTD452uTeCeQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=oC1dwPehPeTuIog0F0SFvN1fEjvNbJ2OCVQV230HMZI=;
 b=SEMMHY6DBTTQqh1DvpZt5VRlPeubQ7XI1bXBN60OIfNe2rDN69EJBUstrB8sEPHnt3
 TNR0+A9zcdC81eSxADKvgT0+cKLPMgj9hs1Ag9fCURB4mg1Y+c0cy8o/SRvzxjTp3f6R
 oVDW0A8VMXjX+gzjHDncpyGUKA9FrTXQQ1uRv7hs9AMDPRJuFU2XnSgT2cge4YggZQnQ
 FkR7qntXcolFOOJmAGUb4nSuAFv3C0IdWZfo1bCLPnZwPy+0Qq/5Yrs9KAIqLGZWIUI8
 zeShsulC1oZrq6ZXibB2tqMW0LW1wf/Bb0jK8oPZ6EZsEhdOXUkVYnyvSRUrq62bPf4i
 CDzg==
Subject: Re: [Intel-gfx] [PATCH 15/25] drm/i915/selftests: Perform some
 basic cycle counting of MI ops
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
 Anna Karas <anna.karas@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAxMSBOb3YgMjAxOSBhdCAxNzoxNiwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gUXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMTEtMTEg
MTc6MTA6MzcpCj4gPiBPbiBTdW4sIDEwIE5vdiAyMDE5IGF0IDE4OjU4LCBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cj4gPiA+ICtzdGF0aWMgc3RydWN0IGk5
MTVfdm1hICpjcmVhdGVfZW1wdHlfYmF0Y2goc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQo+ID4g
PiArewo+ID4gPiArICAgICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7Cj4gPiA+
ICsgICAgICAgc3RydWN0IGk5MTVfdm1hICp2bWE7Cj4gPiA+ICsgICAgICAgdTMyICpjczsKPiA+
ID4gKyAgICAgICBpbnQgZXJyOwo+ID4gPiArCj4gPiA+ICsgICAgICAgb2JqID0gaTkxNV9nZW1f
b2JqZWN0X2NyZWF0ZV9pbnRlcm5hbChjZS0+ZW5naW5lLT5pOTE1LCBQQUdFX1NJWkUpOwo+ID4g
PiArICAgICAgIGlmIChJU19FUlIob2JqKSkKPiA+ID4gKyAgICAgICAgICAgICAgIHJldHVybiBF
UlJfQ0FTVChvYmopOwo+ID4gPiArCj4gPiA+ICsgICAgICAgY3MgPSBpOTE1X2dlbV9vYmplY3Rf
cGluX21hcChvYmosIEk5MTVfTUFQX1dCKTsKPiA+ID4gKyAgICAgICBpZiAoSVNfRVJSKGNzKSkg
ewo+ID4gPiArICAgICAgICAgICAgICAgaTkxNV9nZW1fb2JqZWN0X3B1dChvYmopOwo+ID4gPiAr
ICAgICAgICAgICAgICAgcmV0dXJuIEVSUl9DQVNUKGNzKTsKPiA+ID4gKyAgICAgICB9Cj4gPiA+
ICsKPiA+ID4gKyAgICAgICBjc1swXSA9IE1JX0JBVENIX0JVRkZFUl9FTkQ7Cj4gPiA+ICsKPiA+
ID4gKyAgICAgICBpOTE1X2dlbV9vYmplY3RfZmx1c2hfbWFwKG9iaik7Cj4gPiA+ICsgICAgICAg
aTkxNV9nZW1fb2JqZWN0X3VucGluX21hcChvYmopOwo+ID4gPiArCj4gPiA+ICsgICAgICAgdm1h
ID0gaTkxNV92bWFfaW5zdGFuY2Uob2JqLCBjZS0+dm0sIE5VTEwpOwo+ID4gPiArICAgICAgIGlm
IChJU19FUlIodm1hKSkgewo+ID4gPiArICAgICAgICAgICAgICAgaTkxNV9nZW1fb2JqZWN0X3B1
dChvYmopOwo+ID4gPiArICAgICAgICAgICAgICAgcmV0dXJuIHZtYTsKPiA+ID4gKyAgICAgICB9
Cj4gPiA+ICsKPiA+ID4gKyAgICAgICBlcnIgPSBpOTE1X3ZtYV9waW4odm1hLCAwLCAwLCBQSU5f
VVNFUik7Cj4gPiA+ICsgICAgICAgaWYgKGVycikgewo+ID4gPiArICAgICAgICAgICAgICAgaTkx
NV9nZW1fb2JqZWN0X3B1dChvYmopOwo+ID4gPiArICAgICAgICAgICAgICAgcmV0dXJuIEVSUl9Q
VFIoZXJyKTsKPiA+ID4gKyAgICAgICB9Cj4gPgo+ID4gTGl2aW5nIGRhbmdlcm91c2x5PyBPYmpl
Y3QgaXMgdm9sYXRpbGUsIGJlbG93IGFsc28uCj4KPiBXaGF0J3MgYSBzaHJpbmtlcj8gOikKPgo+
ID4gPiArICAgICAgICAgICAgICAgZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUoY3ljbGVzKTsg
aSsrKSB7Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBpOTE1X3JlcXVlc3Qg
KnJxOwo+ID4gPiArCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHJxID0gaTkxNV9yZXF1
ZXN0X2NyZWF0ZShjZSk7Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGlmIChJU19FUlIo
cnEpKSB7Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZXJyID0gUFRSX0VS
UihycSk7Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgIH0KPiA+ID4gKwo+ID4gPiArICAgICAgICAgICAgICAg
ICAgICAgICBlcnIgPSB3cml0ZV90aW1lc3RhbXAocnEsIDIpOwo+ID4gPiArICAgICAgICAgICAg
ICAgICAgICAgICBpZiAoZXJyKQo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IGdvdG8gb3V0Owo+ID4gPiArCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGVyciA9IHJx
LT5lbmdpbmUtPmVtaXRfYmJfc3RhcnQocnEsCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYmFzZS0+bm9kZS5zdGFydCwgOCwKPiA+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAwKTsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgaWYgKGVycikKPiA+ID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBnb3RvIG91dDsKPiA+ID4gKwo+ID4gPiArICAgICAg
ICAgICAgICAgICAgICAgICBlcnIgPSB3cml0ZV90aW1lc3RhbXAocnEsIDMpOwo+ID4gPiArICAg
ICAgICAgICAgICAgICAgICAgICBpZiAoZXJyKQo+ID4gPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGdvdG8gb3V0Owo+ID4gPiArCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
IGVyciA9IHJxLT5lbmdpbmUtPmVtaXRfYmJfc3RhcnQocnEsCj4gPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbm9wLT5ub2RlLnN0YXJ0
LCA0MDk2LAo+ID4KPiA+IFRoYXQgc2hvdWxkIGJlIDY0Sz8gQ2FuJ3Qgd2UganVzdCBtYWtlIHRo
ZXNlIG5vZGUuc2l6ZT8KPgo+IE5vdCBsaWtlIHRoZSB0ZXN0IGNhbiBydW4gb24gZ2VuMiBhbnl3
YXkgOikKPgo+ID4gQWxzbyB3aHkgZG8gd2UgbWVhc3VyZSBib3RoIGVtcHR5ICsgbm9wIGhlcmU/
Cj4KPiBTbyB0aGUgdGVzdCBpcyBzdGFuZGFsb25lOyB3ZSBzdWJ0cmFjdCB0aGUgb3ZlcmhlYWQg
b2YgdGhlIE1JX0JCX1NUQVJUCj4gZnJvbSB0aGUgbWVhc3VyZW1lbnQsIG90aGVyd2lzZSB0aGUg
b3ZlcmhlYWQgd291bGQgZG9taW5hdGUuCgpBaCBvZmMsIG1ha2VzIHNlbnNlLgpSZXZpZXdlZC1i
eTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
