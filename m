Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC383B3730
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 21:43:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4E7D6ECCB;
	Thu, 24 Jun 2021 19:43:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com
 [IPv6:2607:f8b0:4864:20::b2f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A076B6EC61
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 19:43:47 +0000 (UTC)
Received: by mail-yb1-xb2f.google.com with SMTP id s129so992479ybf.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 12:43:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=h6q8HaZ+84zQCKOyUFwPa+dtWn3aDIb7oyq9WSst+ag=;
 b=EbzQRlgrV+M4PRE0Nh9q/rxRkPx8sB65Vp2f53rtUb/8gH/gQKU0+Rvh8CCUhB0eG7
 +FFlyxO9shULcV8auR0DBF1r98bk4+URCx8OK8yKOwrd6wPhWS2SDPoav/L8cRmG8qcP
 sEDTfTgsA0Lozl58MYS4m1ScZ+qLnUa3pAQ9rteI0OveW/mtaOuamMGdZLXiLIgE26Ph
 z6MrFlxIu0/n5RxKhfNM5Abfpi8sRCuSm06iuJh78JQ4v7VR/lizbk1h4h0GsrdkUjmt
 Ysy+8KgbUObW5F0iklZlDxZGsLvJoQKKqf/rpUP9v1ZPeCNoWj5VlkqdYoTT/e3xjygz
 kONg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=h6q8HaZ+84zQCKOyUFwPa+dtWn3aDIb7oyq9WSst+ag=;
 b=MqKz16LpY8BTxtfQAMxb097YY17veumXQVEXDcHI9oz/NpRMtzIj4MhZ7SXey3gELP
 0RAy/kC/WANsJa8JwowzflC0LdKXlY1lupSR+TAHfq+8fZvNJwLXGbMjCUahB+5or7Zk
 lsHHrSfTO2j4yuZOXfnhE4xkmas+VltL3r2vgTjT7d562asbzbEltvSXweym0hS9ecxR
 vlKUiSxYxdVg9z1tRyoePI5Y8s/hIeMzAh6yLpeArsWKuTYl/fmYuo1o0ja1yUsJqms6
 IUnaDANzn0AG2gXK3JNRbcZNsZnRQYm7d8qb5BhyDcKf5T7c7smZVxulsUVqENIxAAAU
 OMtA==
X-Gm-Message-State: AOAM531O2wcDy5vxDmQXIyIs5bKGqEszwQvyuz11Jv03QjIm9ftxgNYx
 k1dxLIbO9xZ5rHqRC3OgTf4c7zHWZYtFsRHPpTvL+A==
X-Google-Smtp-Source: ABdhPJxePJBkOtRSvvQEkYsUstpOosNTqCS5TxGA1ooVIoDMyPZxA8FmO5HbKjKT8qjSN7UVWydJZvQtFhCA0YXcrIg=
X-Received: by 2002:a5b:392:: with SMTP id k18mr7799605ybp.180.1624563826697; 
 Thu, 24 Jun 2021 12:43:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210624174732.1754546-1-jason@jlekstrand.net>
 <2b69abeb-7c97-fe6a-384c-2e1f86529dba@amd.com>
In-Reply-To: <2b69abeb-7c97-fe6a-384c-2e1f86529dba@amd.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Thu, 24 Jun 2021 14:43:34 -0500
Message-ID: <CAOFGe961e4D+OdC8DQPk9aohpUqMmu34eant_LRfAzaAHQ_Ezw@mail.gmail.com>
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

SSBkb24ndCBoYXZlIGRybS1taXNjIGFjY2Vzcy4gIE1pbmQgcHVzaGluZz8KCk9uIFRodSwgSnVu
IDI0LCAyMDIxIGF0IDEyOjU5IFBNIENocmlzdGlhbiBLw7ZuaWcKPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4gd3JvdGU6Cj4KPiBBbSAyNC4wNi4yMSB1bSAxOTo0NyBzY2hyaWViIEphc29uIEVr
c3RyYW5kOgo+ID4gRWFjaCBhZGRfZmVuY2UoKSBjYWxsIGRvZXMgYSBkbWFfZmVuY2VfZ2V0KCkg
b24gdGhlIHJlbGV2YW50IGZlbmNlLiAgSW4KPiA+IHRoZSBlcnJvciBwYXRoLCB3ZSB3ZXJlbid0
IGNhbGxpbmcgZG1hX2ZlbmNlX3B1dCgpIHNvIGFsbCB0aG9zZSBmZW5jZXMKPiA+IGdvdCBsZWFr
ZWQuICBBbHNvLCBpbiB0aGUga3JlYWxsb2NfYXJyYXkgZmFpbHVyZSBjYXNlLCB3ZSB3ZXJlbid0
Cj4gPiBmcmVlaW5nIHRoZSBmZW5jZXMgYXJyYXkuICBJbnN0ZWFkLCBlbnN1cmUgdGhhdCBpIGFu
ZCBmZW5jZXMgYXJlIGFsd2F5cwo+ID4gemVyby1pbml0aWFsaXplZCBhbmQgZG1hX2ZlbmNlX3B1
dCgpIGFsbCB0aGUgZmVuY2VzIGFuZCBrZnJlZShmZW5jZXMpIG9uCj4gPiBldmVyeSBlcnJvciBw
YXRoLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEphc29uIEVrc3RyYW5kIDxqYXNvbkBqbGVrc3Ry
YW5kLm5ldD4KPiA+IEZpeGVzOiBhMDJiOWRjOTBkODQgKCJkbWEtYnVmL3N5bmNfZmlsZTogcmVm
YWN0b3IgZmVuY2Ugc3RvcmFnZSBpbiBzdHJ1Y3Qgc3luY19maWxlIikKPiA+IENjOiBHdXN0YXZv
IFBhZG92YW4gPGd1c3Rhdm8ucGFkb3ZhbkBjb2xsYWJvcmEuY28udWs+Cj4gPiBDYzogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+Cj4gUmV2aWV3ZWQtYnk6IENo
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPgo+ID4gLS0tCj4gPiAg
IGRyaXZlcnMvZG1hLWJ1Zi9zeW5jX2ZpbGUuYyB8IDEzICsrKysrKystLS0tLS0KPiA+ICAgMSBm
aWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL3N5bmNfZmlsZS5jIGIvZHJpdmVycy9kbWEtYnVmL3N5
bmNfZmlsZS5jCj4gPiBpbmRleCAyMGQ5YmRkYmI5ODViLi4zOTRlNmUxZTk2ODYwIDEwMDY0NAo+
ID4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL3N5bmNfZmlsZS5jCj4gPiArKysgYi9kcml2ZXJzL2Rt
YS1idWYvc3luY19maWxlLmMKPiA+IEBAIC0yMTEsOCArMjExLDggQEAgc3RhdGljIHN0cnVjdCBz
eW5jX2ZpbGUgKnN5bmNfZmlsZV9tZXJnZShjb25zdCBjaGFyICpuYW1lLCBzdHJ1Y3Qgc3luY19m
aWxlICphLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0
IHN5bmNfZmlsZSAqYikKPiA+ICAgewo+ID4gICAgICAgc3RydWN0IHN5bmNfZmlsZSAqc3luY19m
aWxlOwo+ID4gLSAgICAgc3RydWN0IGRtYV9mZW5jZSAqKmZlbmNlcywgKipuZmVuY2VzLCAqKmFf
ZmVuY2VzLCAqKmJfZmVuY2VzOwo+ID4gLSAgICAgaW50IGksIGlfYSwgaV9iLCBudW1fZmVuY2Vz
LCBhX251bV9mZW5jZXMsIGJfbnVtX2ZlbmNlczsKPiA+ICsgICAgIHN0cnVjdCBkbWFfZmVuY2Ug
KipmZW5jZXMgPSBOVUxMLCAqKm5mZW5jZXMsICoqYV9mZW5jZXMsICoqYl9mZW5jZXM7Cj4gPiAr
ICAgICBpbnQgaSA9IDAsIGlfYSwgaV9iLCBudW1fZmVuY2VzLCBhX251bV9mZW5jZXMsIGJfbnVt
X2ZlbmNlczsKPiA+Cj4gPiAgICAgICBzeW5jX2ZpbGUgPSBzeW5jX2ZpbGVfYWxsb2MoKTsKPiA+
ICAgICAgIGlmICghc3luY19maWxlKQo+ID4gQEAgLTIzNiw3ICsyMzYsNyBAQCBzdGF0aWMgc3Ry
dWN0IHN5bmNfZmlsZSAqc3luY19maWxlX21lcmdlKGNvbnN0IGNoYXIgKm5hbWUsIHN0cnVjdCBz
eW5jX2ZpbGUgKmEsCj4gPiAgICAgICAgKiBJZiBhIHN5bmNfZmlsZSBjYW4gb25seSBiZSBjcmVh
dGVkIHdpdGggc3luY19maWxlX21lcmdlCj4gPiAgICAgICAgKiBhbmQgc3luY19maWxlX2NyZWF0
ZSwgdGhpcyBpcyBhIHJlYXNvbmFibGUgYXNzdW1wdGlvbi4KPiA+ICAgICAgICAqLwo+ID4gLSAg
ICAgZm9yIChpID0gaV9hID0gaV9iID0gMDsgaV9hIDwgYV9udW1fZmVuY2VzICYmIGlfYiA8IGJf
bnVtX2ZlbmNlczsgKSB7Cj4gPiArICAgICBmb3IgKGlfYSA9IGlfYiA9IDA7IGlfYSA8IGFfbnVt
X2ZlbmNlcyAmJiBpX2IgPCBiX251bV9mZW5jZXM7ICkgewo+ID4gICAgICAgICAgICAgICBzdHJ1
Y3QgZG1hX2ZlbmNlICpwdF9hID0gYV9mZW5jZXNbaV9hXTsKPiA+ICAgICAgICAgICAgICAgc3Ry
dWN0IGRtYV9mZW5jZSAqcHRfYiA9IGJfZmVuY2VzW2lfYl07Cj4gPgo+ID4gQEAgLTI3NywxNSAr
Mjc3LDE2IEBAIHN0YXRpYyBzdHJ1Y3Qgc3luY19maWxlICpzeW5jX2ZpbGVfbWVyZ2UoY29uc3Qg
Y2hhciAqbmFtZSwgc3RydWN0IHN5bmNfZmlsZSAqYSwKPiA+ICAgICAgICAgICAgICAgZmVuY2Vz
ID0gbmZlbmNlczsKPiA+ICAgICAgIH0KPiA+Cj4gPiAtICAgICBpZiAoc3luY19maWxlX3NldF9m
ZW5jZShzeW5jX2ZpbGUsIGZlbmNlcywgaSkgPCAwKSB7Cj4gPiAtICAgICAgICAgICAgIGtmcmVl
KGZlbmNlcyk7Cj4gPiArICAgICBpZiAoc3luY19maWxlX3NldF9mZW5jZShzeW5jX2ZpbGUsIGZl
bmNlcywgaSkgPCAwKQo+ID4gICAgICAgICAgICAgICBnb3RvIGVycjsKPiA+IC0gICAgIH0KPiA+
Cj4gPiAgICAgICBzdHJsY3B5KHN5bmNfZmlsZS0+dXNlcl9uYW1lLCBuYW1lLCBzaXplb2Yoc3lu
Y19maWxlLT51c2VyX25hbWUpKTsKPiA+ICAgICAgIHJldHVybiBzeW5jX2ZpbGU7Cj4gPgo+ID4g
ICBlcnI6Cj4gPiArICAgICB3aGlsZSAoaSkKPiA+ICsgICAgICAgICAgICAgZG1hX2ZlbmNlX3B1
dChmZW5jZXNbLS1pXSk7Cj4gPiArICAgICBrZnJlZShmZW5jZXMpOwo+ID4gICAgICAgZnB1dChz
eW5jX2ZpbGUtPmZpbGUpOwo+ID4gICAgICAgcmV0dXJuIE5VTEw7Cj4gPgo+Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
