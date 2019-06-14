Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F86645B46
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 13:15:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ED5089214;
	Fri, 14 Jun 2019 11:15:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7CA689214
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 11:15:54 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id u124so1527433vsu.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 04:15:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Gzw14+IiFStbJ6pOFPh5RgGyjoaLpzLz/0y8aUVIRPc=;
 b=C829ovuTqsTXtl98ZGZ8GWVQ2jrY4dKSLEFbzzRSCMDsQYa584fVsHNLKOcFMxi8uT
 yNWL/Ry6vxwFfVfahhwahCpWWn+Hj6Mc2XYbOYOLrCn51JnADRJFffStyhshf/bj9N9/
 iyo7UkpA7c5AAHAm+UdtY78CbHG7xuYvPyIwAO+ioHFYoFgEV4UAx8hZjb32GmvjZ8oy
 HG8nU/awgUqRT73PlB5vEoPXkVLYlJIiJW6xq13PWo3T99xAaZvY2i2MH8aBzMSv5H2t
 k7oqJorFaRSA+4QsCItCVbCFDDhaVXr11HSxLuPPGnDrlWXG0458Ye7LcbleP282P6He
 u0qA==
X-Gm-Message-State: APjAAAUzaLhAY/I2nm/oGfMtDno9+55+PGf6YJc3A0n8lk0dQ0NiOPQ7
 mwZZ1SCfx9yF5EBM9W1BLIc7OSrJAHAbrCyTtH1U58iN
X-Google-Smtp-Source: APXvYqzexbX9fSu4yiXzKnPQ+/ejlHzQp3sqh59cr3duj7GVQBTeMZ3qDqC0vR0vWpY6FfJGH9i0AVKP/T0Ym8Lp7Io=
X-Received: by 2002:a67:3254:: with SMTP id y81mr13040355vsy.34.1560510953856; 
 Fri, 14 Jun 2019 04:15:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190614071023.17929-1-chris@chris-wilson.co.uk>
 <20190614071023.17929-30-chris@chris-wilson.co.uk>
In-Reply-To: <20190614071023.17929-30-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 14 Jun 2019 12:15:27 +0100
Message-ID: <CAM0jSHPR2MjaaeXCbzPFgaE0bUyot1ZkqZCFgUObXgYSp4cOpg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=Gzw14+IiFStbJ6pOFPh5RgGyjoaLpzLz/0y8aUVIRPc=;
 b=CaJnMpp/vPsoxn/fpWsrSysrteKjqBVjZ+gJlc1EO1xyslP9g0YRO3FxOsesm850jO
 /J6IaZB4FUz/hsUabx9dBnJMV0p5FJJrfeyX1QoiCPuHbQjbYj5P6eLRYU/mzxVds2zK
 qAisds4SCj5bUjWVcEnZWnx9FtgkI5mxYtjNVqP25IRq9raKR/ZoU5ZxGeqAY35DtPVN
 uSIZMZQj/B34w+Z/lTByn0L61WmmnibHj/tGjofW9Py3eeoPs9Zrb8BRFa+7ojqjfNCr
 i1+JswaciZvFJ+g+e4zABhshDWr3ydsOmEc5hj9Eioamrmn0O9os67SfER8pvFk5FDib
 PhoQ==
Subject: Re: [Intel-gfx] [PATCH 29/39] drm/i915: Make i915_vma track its own
 kref
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxNCBKdW4gMjAxOSBhdCAwODoxMCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gVGhyb3VnaG91dCB0aGUgY29kZSBiYXNlIHdlIGludGVy
bmFsbHkgdHJhY2sgdm1hIChvYmplY3RzIGJvdW5kIGludG8KPiBhIHBhcnRpY3VsYXIgR1RUKSwg
d2l0aCB0aGUgb2JqZWN0cyB0aGVtc2VsdmVzIGJlaW5nIHRoZSBjb21tb24gYmFja2luZwo+IHN0
b3JhZ2UuIEJ5IG1ha2luZyB0aGUgdm1hIGl0c2VsZiByZWZlcmVuY2UgY291bnRlZCB3ZSBjYW4g
c3RhcnQKPiBvcGVyYXRpbmcgb24gdGhlIHZtYSBjb25jdXJyZW50bHksIG1vdmluZyB3b3JrIGlu
dG8gYXN5bmMgdGhyZWFkcy4KPgo+IEp1c3QgdGhlIGNvbnZlcnNpb24gdG8gbWFraW5nIHN1cmUg
d2Uga2VlcCB0cmFjayBvZiB0aGUgdm1hIHJlZmVyZW5jZQo+IGNvdW50cyBpcyBub3QgcGFydGlj
dWxhcmx5IHBsZWFzYW50Lgo+IC0tLQoKW3NuaXBdCgo+IEBAIC0yMDYwLDYgKzIwNTcsNyBAQCBz
dGF0aWMgc3RydWN0IGk5MTVfdm1hICpwZF92bWFfY3JlYXRlKHN0cnVjdCBnZW42X3BwZ3R0ICpw
cGd0dCwgaW50IHNpemUpCj4gICAgICAgICBpZiAoIXZtYSkKPiAgICAgICAgICAgICAgICAgcmV0
dXJuIEVSUl9QVFIoLUVOT01FTSk7Cj4KPiArICAgICAgIGtyZWZfaW5pdCgmdm1hLT5yZWYpOwo+
ICAgICAgICAgaTkxNV9hY3RpdmVfaW5pdCgmdm1hLT5hY3RpdmUsIE5VTEwsIE5VTEwpOwo+Cj4g
ICAgICAgICB2bWEtPnZtID0gJmdndHQtPnZtOwoKSnVzdCBhIGZpcnN0IHBhc3MuICBEbyB3ZSBu
ZWVkIGk5MTVfdm1fZ2V0KCZnZ3R0LT52bSk7IHNvIHdlIG1hdGNoIHRoZQppOTE1X3ZtX3B1dCgp
IGluIF9faTkxNV92bWFfcmVsZWFzZSgpPwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
