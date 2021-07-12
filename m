Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B44903C5D6A
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 15:38:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5357889C29;
	Mon, 12 Jul 2021 13:38:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com
 [IPv6:2607:f8b0:4864:20::b34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2A8589BDB
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 13:38:20 +0000 (UTC)
Received: by mail-yb1-xb34.google.com with SMTP id i18so28918417yba.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 06:38:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=9iDz7N7jAiAmF7iXzoycGHM7j74isYO2j9m2ZwxhoPI=;
 b=UTuthniEHltDdrMRL+t/MamlP3YaeRy3Xo4QR4ssPbR5dnlilv8CGL5F5xvMxQ+ujg
 WR5bmTcxz6SCeoDLDNXMQyhAurTGw2AcnrXyi7+oRtAry3SAkwkWqQlZ8i43haj99NOo
 7T7kvMhHcVXdxPKAJx1D09sNac3xniFzngrEn0ZdjR5P7nuvD/CT3OYuHIYher27RgCZ
 zQU2hepQhHzhAmwXtNFvxhF4flDR+duKPA3waj4oTZ723Izd7F0L/GbCmcLibRcUAoqa
 5DMPJTuKGcxml/tgk1szXluKWfKGddOR5RG9ASpF/9u8xFI2niAH2GH/olcCyGlQN383
 QUEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=9iDz7N7jAiAmF7iXzoycGHM7j74isYO2j9m2ZwxhoPI=;
 b=fBTq2lK6JiytVUkgaiNY3ikUhpEYd0qsUvivufOE2bZB+dAtGrmM1otDrWp0gXrF2I
 4Tt/J3lORbXMTuVKXZ8Oq565rfN1/XclxPqyjnTqAxjP1Yv5qO51iLhqby+zE3biWBTC
 jwoaAOdBXlriiOasfI7nLDVf8Ezq6wpks4ssIN+uKCuY9ptMTVHH6iklS/ugCbk7SOgX
 s3XxJvJIRJxkKIlwStnL8+RQavkFC5A8CIR/yr24Z3rTW8KNo/et0iHonlBgo9q0M1xx
 ZFLxnOELSdWDAref0M2o1y9ajkM82qgycfT1ncP5N0UhQt1gHIq/qLw6GSt2kdI/CJVA
 CBBA==
X-Gm-Message-State: AOAM531Sp2RwiWqXHAgAnY+VhAQuZ6Ak6mPTu52xvMvb6pAYDZz2uG6G
 PH7KMovbRIDxRC2+uY8/BhHBVSqJ6EOkxSLuQ4wv/Q==
X-Google-Smtp-Source: ABdhPJzRd+7UKSz4M+r2BJm+sqsTw+svQPfb2QnXLbMDIJGvk/L67k45DUIQYU8PIpss4OijlZRPHYtUFnNyhmKXDWI=
X-Received: by 2002:a25:208b:: with SMTP id
 g133mr64175499ybg.211.1626097099839; 
 Mon, 12 Jul 2021 06:38:19 -0700 (PDT)
MIME-Version: 1.0
References: <20210624174732.1754546-1-jason@jlekstrand.net>
 <2b69abeb-7c97-fe6a-384c-2e1f86529dba@amd.com>
 <CAOFGe961e4D+OdC8DQPk9aohpUqMmu34eant_LRfAzaAHQ_Ezw@mail.gmail.com>
 <dcf0cbf9-3a0d-2e5e-8e57-16616bb85a30@amd.com>
In-Reply-To: <dcf0cbf9-3a0d-2e5e-8e57-16616bb85a30@amd.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Mon, 12 Jul 2021 08:38:08 -0500
Message-ID: <CAOFGe953PSbkbpVKipynwQYPmk1df69ibSK2z_iRfLwcf9hUiQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Subject: Re: [Intel-gfx] [PATCH] dma-buf/sync_file: Don't leak fences on
 merge failure
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>,
 Gustavo Padovan <gustavo.padovan@collabora.co.uk>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Tm8gd29ycmllcy4gIFRoYW5rcyBmb3IgcHVzaGluZyEKCk9uIE1vbiwgSnVsIDEyLCAyMDIxIGF0
IDY6MzcgQU0gQ2hyaXN0aWFuIEvDtm5pZwo8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90
ZToKPgo+IFNvcnJ5IGZvciB0aGUgdmFjYXRpb24gYW5kIHNpY2sgbGVhdmUgaW5kdWNlZCBkZWxh
eS4KPgo+IEkndmUganVzdCBwdXNoZWQgdGhpcyB0byBkcm0tbWlzYy1maXhlcy4KPgo+IFRoYW5r
cywKPiBDaHJpc3RpYW4uCj4KPiBBbSAyNC4wNi4yMSB1bSAyMTo0MyBzY2hyaWViIEphc29uIEVr
c3RyYW5kOgo+ID4gSSBkb24ndCBoYXZlIGRybS1taXNjIGFjY2Vzcy4gIE1pbmQgcHVzaGluZz8K
PiA+Cj4gPiBPbiBUaHUsIEp1biAyNCwgMjAyMSBhdCAxMjo1OSBQTSBDaHJpc3RpYW4gS8O2bmln
Cj4gPiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToKPiA+PiBBbSAyNC4wNi4yMSB1
bSAxOTo0NyBzY2hyaWViIEphc29uIEVrc3RyYW5kOgo+ID4+PiBFYWNoIGFkZF9mZW5jZSgpIGNh
bGwgZG9lcyBhIGRtYV9mZW5jZV9nZXQoKSBvbiB0aGUgcmVsZXZhbnQgZmVuY2UuICBJbgo+ID4+
PiB0aGUgZXJyb3IgcGF0aCwgd2Ugd2VyZW4ndCBjYWxsaW5nIGRtYV9mZW5jZV9wdXQoKSBzbyBh
bGwgdGhvc2UgZmVuY2VzCj4gPj4+IGdvdCBsZWFrZWQuICBBbHNvLCBpbiB0aGUga3JlYWxsb2Nf
YXJyYXkgZmFpbHVyZSBjYXNlLCB3ZSB3ZXJlbid0Cj4gPj4+IGZyZWVpbmcgdGhlIGZlbmNlcyBh
cnJheS4gIEluc3RlYWQsIGVuc3VyZSB0aGF0IGkgYW5kIGZlbmNlcyBhcmUgYWx3YXlzCj4gPj4+
IHplcm8taW5pdGlhbGl6ZWQgYW5kIGRtYV9mZW5jZV9wdXQoKSBhbGwgdGhlIGZlbmNlcyBhbmQg
a2ZyZWUoZmVuY2VzKSBvbgo+ID4+PiBldmVyeSBlcnJvciBwYXRoLgo+ID4+Pgo+ID4+PiBTaWdu
ZWQtb2ZmLWJ5OiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+Cj4gPj4+IEZp
eGVzOiBhMDJiOWRjOTBkODQgKCJkbWEtYnVmL3N5bmNfZmlsZTogcmVmYWN0b3IgZmVuY2Ugc3Rv
cmFnZSBpbiBzdHJ1Y3Qgc3luY19maWxlIikKPiA+Pj4gQ2M6IEd1c3Rhdm8gUGFkb3ZhbiA8Z3Vz
dGF2by5wYWRvdmFuQGNvbGxhYm9yYS5jby51az4KPiA+Pj4gQ2M6IENocmlzdGlhbiBLw7ZuaWcg
PGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiA+PiBSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvD
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+ID4+Cj4gPj4+IC0tLQo+ID4+PiAgICBk
cml2ZXJzL2RtYS1idWYvc3luY19maWxlLmMgfCAxMyArKysrKysrLS0tLS0tCj4gPj4+ICAgIDEg
ZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4gPj4+Cj4gPj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvc3luY19maWxlLmMgYi9kcml2ZXJzL2RtYS1i
dWYvc3luY19maWxlLmMKPiA+Pj4gaW5kZXggMjBkOWJkZGJiOTg1Yi4uMzk0ZTZlMWU5Njg2MCAx
MDA2NDQKPiA+Pj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL3N5bmNfZmlsZS5jCj4gPj4+ICsrKyBi
L2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2ZpbGUuYwo+ID4+PiBAQCAtMjExLDggKzIxMSw4IEBAIHN0
YXRpYyBzdHJ1Y3Qgc3luY19maWxlICpzeW5jX2ZpbGVfbWVyZ2UoY29uc3QgY2hhciAqbmFtZSwg
c3RydWN0IHN5bmNfZmlsZSAqYSwKPiA+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHN0cnVjdCBzeW5jX2ZpbGUgKmIpCj4gPj4+ICAgIHsKPiA+Pj4gICAgICAgIHN0
cnVjdCBzeW5jX2ZpbGUgKnN5bmNfZmlsZTsKPiA+Pj4gLSAgICAgc3RydWN0IGRtYV9mZW5jZSAq
KmZlbmNlcywgKipuZmVuY2VzLCAqKmFfZmVuY2VzLCAqKmJfZmVuY2VzOwo+ID4+PiAtICAgICBp
bnQgaSwgaV9hLCBpX2IsIG51bV9mZW5jZXMsIGFfbnVtX2ZlbmNlcywgYl9udW1fZmVuY2VzOwo+
ID4+PiArICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICoqZmVuY2VzID0gTlVMTCwgKipuZmVuY2VzLCAq
KmFfZmVuY2VzLCAqKmJfZmVuY2VzOwo+ID4+PiArICAgICBpbnQgaSA9IDAsIGlfYSwgaV9iLCBu
dW1fZmVuY2VzLCBhX251bV9mZW5jZXMsIGJfbnVtX2ZlbmNlczsKPiA+Pj4KPiA+Pj4gICAgICAg
IHN5bmNfZmlsZSA9IHN5bmNfZmlsZV9hbGxvYygpOwo+ID4+PiAgICAgICAgaWYgKCFzeW5jX2Zp
bGUpCj4gPj4+IEBAIC0yMzYsNyArMjM2LDcgQEAgc3RhdGljIHN0cnVjdCBzeW5jX2ZpbGUgKnN5
bmNfZmlsZV9tZXJnZShjb25zdCBjaGFyICpuYW1lLCBzdHJ1Y3Qgc3luY19maWxlICphLAo+ID4+
PiAgICAgICAgICogSWYgYSBzeW5jX2ZpbGUgY2FuIG9ubHkgYmUgY3JlYXRlZCB3aXRoIHN5bmNf
ZmlsZV9tZXJnZQo+ID4+PiAgICAgICAgICogYW5kIHN5bmNfZmlsZV9jcmVhdGUsIHRoaXMgaXMg
YSByZWFzb25hYmxlIGFzc3VtcHRpb24uCj4gPj4+ICAgICAgICAgKi8KPiA+Pj4gLSAgICAgZm9y
IChpID0gaV9hID0gaV9iID0gMDsgaV9hIDwgYV9udW1fZmVuY2VzICYmIGlfYiA8IGJfbnVtX2Zl
bmNlczsgKSB7Cj4gPj4+ICsgICAgIGZvciAoaV9hID0gaV9iID0gMDsgaV9hIDwgYV9udW1fZmVu
Y2VzICYmIGlfYiA8IGJfbnVtX2ZlbmNlczsgKSB7Cj4gPj4+ICAgICAgICAgICAgICAgIHN0cnVj
dCBkbWFfZmVuY2UgKnB0X2EgPSBhX2ZlbmNlc1tpX2FdOwo+ID4+PiAgICAgICAgICAgICAgICBz
dHJ1Y3QgZG1hX2ZlbmNlICpwdF9iID0gYl9mZW5jZXNbaV9iXTsKPiA+Pj4KPiA+Pj4gQEAgLTI3
NywxNSArMjc3LDE2IEBAIHN0YXRpYyBzdHJ1Y3Qgc3luY19maWxlICpzeW5jX2ZpbGVfbWVyZ2Uo
Y29uc3QgY2hhciAqbmFtZSwgc3RydWN0IHN5bmNfZmlsZSAqYSwKPiA+Pj4gICAgICAgICAgICAg
ICAgZmVuY2VzID0gbmZlbmNlczsKPiA+Pj4gICAgICAgIH0KPiA+Pj4KPiA+Pj4gLSAgICAgaWYg
KHN5bmNfZmlsZV9zZXRfZmVuY2Uoc3luY19maWxlLCBmZW5jZXMsIGkpIDwgMCkgewo+ID4+PiAt
ICAgICAgICAgICAgIGtmcmVlKGZlbmNlcyk7Cj4gPj4+ICsgICAgIGlmIChzeW5jX2ZpbGVfc2V0
X2ZlbmNlKHN5bmNfZmlsZSwgZmVuY2VzLCBpKSA8IDApCj4gPj4+ICAgICAgICAgICAgICAgIGdv
dG8gZXJyOwo+ID4+PiAtICAgICB9Cj4gPj4+Cj4gPj4+ICAgICAgICBzdHJsY3B5KHN5bmNfZmls
ZS0+dXNlcl9uYW1lLCBuYW1lLCBzaXplb2Yoc3luY19maWxlLT51c2VyX25hbWUpKTsKPiA+Pj4g
ICAgICAgIHJldHVybiBzeW5jX2ZpbGU7Cj4gPj4+Cj4gPj4+ICAgIGVycjoKPiA+Pj4gKyAgICAg
d2hpbGUgKGkpCj4gPj4+ICsgICAgICAgICAgICAgZG1hX2ZlbmNlX3B1dChmZW5jZXNbLS1pXSk7
Cj4gPj4+ICsgICAgIGtmcmVlKGZlbmNlcyk7Cj4gPj4+ICAgICAgICBmcHV0KHN5bmNfZmlsZS0+
ZmlsZSk7Cj4gPj4+ICAgICAgICByZXR1cm4gTlVMTDsKPiA+Pj4KPgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
