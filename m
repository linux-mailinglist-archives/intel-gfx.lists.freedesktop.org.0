Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2458F128357
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 21:40:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E83086E140;
	Fri, 20 Dec 2019 20:39:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com
 [IPv6:2a00:1450:4864:20::143])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1154A6E140
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 20:39:56 +0000 (UTC)
Received: by mail-lf1-x143.google.com with SMTP id v201so7974842lfa.11
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 12:39:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ZdFGitSiEwOWQgwR2NULowMZqqwYAEdw56eQQuZ8YjU=;
 b=KOWUq6o+22MbQgzjNfbRH+9j2+3Q8L655c0cApWjGBFmf8B/Lrwrni1XfkmRL0FOin
 z/FcFPsFaUN/kF0/beUwSNIBMD76d3r1ZuzoigXuzJ5j2eFRMsSJoN1b9jUj9x3ZrZzX
 I+Kap2IgOVrVUHQXGxIJKYIEEgfzeeyLGQpid/YwG11hfdi1X0FCG3lHvPSDBfrxR2R3
 m8wkDEEHYeeUaLSlBvtZvLgyjbASDBUPCHYK7dzlyqHzy4yQt6Cblh79zbNSxNU2sFB4
 FpSrloX7rQhlAP0RZ+FBW7ZPJSGK+uNDIo/WIFbqu/NcFlJHqg0ESr2Bt5v7DqRsgwu6
 P+Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ZdFGitSiEwOWQgwR2NULowMZqqwYAEdw56eQQuZ8YjU=;
 b=jTWu2EdASphwDGzfI5c585gp83a9gA76EKjtVB6QegQQb08z8mHkIPYU3kFxqeRSl2
 +G6JDVI+8wMuWLNkrIEuGaEpsRPGUa8Dw6LvJEuCz9HelIzj5ammR+OVLiMWR5Fga+9g
 D0HEQdyM80El+fvbBta+1NJqPkYZ6tb75+Exzc8LTsRuTFG9kHhX7NzZpvRaTebf7vRL
 uPpa9R/ZFJPBjUoeI8Tt4pKwg/6FOyi/f5SdU+80Gm+ytUsFOQXTNObw8tktEQ6THPwO
 wGuHdrKue2hr9WBhcSNOGljkVmKEfMKWVd34gdyy2bgSoSA+eAx1h5tDsJU7VXjWk9e+
 M7Rw==
X-Gm-Message-State: APjAAAUyAMZM80sSSHYvH71KgdoUZQLw1a6AXOCr1ETJk0JBykvW301K
 eRnzjSZjCcUfN9KQTHIsbAontt2BDU2J5v/OjenoUA==
X-Google-Smtp-Source: APXvYqxXWyPJcL5DWu7/U7pqUj2gpkoOjMV4XhpKUqXwxXMzKpgL+E8wPxLqCsEmkq++aal6Tr2Rbka9Yd5pPwDxtKE=
X-Received: by 2002:a05:6512:244:: with SMTP id
 b4mr9975253lfo.85.1576874393918; 
 Fri, 20 Dec 2019 12:39:53 -0800 (PST)
MIME-Version: 1.0
References: <20191023001206.15741-1-rajatja@google.com>
 <20191104194147.185642-1-rajatja@google.com>
 <20191104194147.185642-3-rajatja@google.com> <87r222wpvv.fsf@intel.com>
 <CACK8Z6EU3UvPZUqfPhNQ0x5hdbT+hJnRJ2J0f_WF3yr9+mTRog@mail.gmail.com>
In-Reply-To: <CACK8Z6EU3UvPZUqfPhNQ0x5hdbT+hJnRJ2J0f_WF3yr9+mTRog@mail.gmail.com>
From: Rajat Jain <rajatja@google.com>
Date: Fri, 20 Dec 2019 12:39:16 -0800
Message-ID: <CACK8Z6GZtRer0ZHF-vZzoGFqOqw3U=3o95ntr938ow21Ar6uow@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915: Add support for integrated
 privacy screens
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
Cc: Sean Paul <seanpaul@google.com>, David Airlie <airlied@linux.ie>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Daniel Thompson <daniel.thompson@linaro.org>, Jonathan Corbet <corbet@lwn.net>,
 Rajat Jain <rajatxjain@gmail.com>, intel-gfx@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, Mat King <mathewk@google.com>,
 Duncan Laurie <dlaurie@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Pavel Machek <pavel@denx.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SEkgSmFuaSwKCgpPbiBUaHUsIERlYyA1LCAyMDE5IGF0IDE6MzQgQU0gUmFqYXQgSmFpbiA8cmFq
YXRqYUBnb29nbGUuY29tPiB3cm90ZToKPgo+IE9uIFdlZCwgTm92IDIwLCAyMDE5IGF0IDc6MDQg
QU0gSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4gPgo+
ID4gT24gTW9uLCAwNCBOb3YgMjAxOSwgUmFqYXQgSmFpbiA8cmFqYXRqYUBnb29nbGUuY29tPiB3
cm90ZToKPiA+ID4gQ2VydGFpbiBsYXB0b3BzIG5vdyBjb21lIHdpdGggcGFuZWxzIHRoYXQgaGF2
ZSBpbnRlZ3JhdGVkIHByaXZhY3kKPiA+ID4gc2NyZWVucyBvbiB0aGVtLiBUaGlzIHBhdGNoIGFk
ZHMgc3VwcG9ydCBmb3Igc3VjaCBwYW5lbHMgYnkgYWRkaW5nCj4gPiA+IGEgcHJpdmFjeS1zY3Jl
ZW4gcHJvcGVydHkgdG8gdGhlIGludGVsX2Nvbm5lY3RvciBmb3IgdGhlIHBhbmVsLCB0aGF0Cj4g
PiA+IHRoZSB1c2Vyc3BhY2UgY2FuIHRoZW4gdXNlIHRvIGNvbnRyb2wgYW5kIGNoZWNrIHRoZSBz
dGF0dXMuCj4gPiA+Cj4gPiA+IElkZW50aWZ5aW5nIHRoZSBwcmVzZW5jZSBvZiBwcml2YWN5IHNj
cmVlbiwgYW5kIGNvbnRyb2xsaW5nIGl0LCBpcyBkb25lCj4gPiA+IHZpYSBBQ1BJIF9EU00gbWV0
aG9kcy4KPiA+ID4KPiA+ID4gQ3VycmVudGx5LCB0aGlzIGlzIGRvbmUgb25seSBmb3IgdGhlIElu
dGVsIGRpc3BsYXkgcG9ydHMuIEJ1dCBpbiBmdXR1cmUsCj4gPiA+IHRoaXMgY2FuIGJlIGRvbmUg
Zm9yIGFueSBvdGhlciBwb3J0cyBpZiB0aGUgaGFyZHdhcmUgYmVjb21lcyBhdmFpbGFibGUKPiA+
ID4gKGUuZy4gZXh0ZXJuYWwgbW9uaXRvcnMgc3VwcG9ydGluZyBpbnRlZ3JhdGVkIHByaXZhY3kg
c2NyZWVucz8pLgo+ID4gPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBSYWphdCBKYWluIDxyYWphdGph
QGdvb2dsZS5jb20+Cj4gPiA+IENoYW5nZS1JZDogSWM5ZmYwN2ZjNGE1MDc5N2QyZDBkZmI5MTlm
MTFhYTA4MjFhNGI1NDgKPiA+ID4gLS0tCj4gPiA+IHYyOiBGb3JtZWQgYnkgc3BsaXR0aW5nIHRo
ZSBvcmlnaW5hbCBwYXRjaCBpbnRvIG11bHRpcGxlIHBhdGNoZXMuCj4gPiA+ICAgICAtIEFsbCBj
b2RlIGhhcyBiZWVuIG1vdmVkIGludG8gaTkxNSBub3cuCj4gPiA+ICAgICAtIFByaXZhY3kgc2Ny
ZWVuIGlzIGEgaTkxNSBwcm9wZXJ0eQo+ID4gPiAgICAgLSBIYXZlIGEgbG9jYWwgc3RhdGUgdmFy
aWFibGUgdG8gc3RvcmUgdGhlIHBydmFjeSBzY3JlZW4uIERvbid0IHJlYWQKPiA+ID4gICAgICAg
aXQgZnJvbSBoYXJkd2FyZS4KPiA+ID4KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2Vm
aWxlICAgICAgICAgICAgICAgICB8ICAzICstCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2F0b21pYy5jICAgfCAxMyArKystCj4gPiA+ICAuLi4vZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY29ubmVjdG9yLmMgICAgfCAzNSArKysrKysrKysrCj4gPiA+ICAuLi4v
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29ubmVjdG9yLmggICAgfCAgMSArCj4gPiA+ICAu
Li4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgNCArKwo+ID4g
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAgICAgIHwgIDUgKysK
PiA+ID4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ByaXZhY3lfc2NyZWVuLmMgICB8IDcw
ICsrKysrKysrKysrKysrKysrKysKPiA+ID4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3By
aXZhY3lfc2NyZWVuLmggICB8IDI1ICsrKysrKysKPiA+ID4gIGluY2x1ZGUvdWFwaS9kcm0vaTkx
NV9kcm0uaCAgICAgICAgICAgICAgICAgICB8IDE0ICsrKysKPiA+ID4gIDkgZmlsZXMgY2hhbmdl
ZCwgMTY2IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gPiA+ICBjcmVhdGUgbW9kZSAx
MDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wcml2YWN5X3NjcmVlbi5j
Cj4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wcml2YWN5X3NjcmVlbi5oCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9NYWtlZmlsZSBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCj4gPiA+
IGluZGV4IDI1ODdlYTgzNGYwNi4uMzU4OWViY2YyN2JjIDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9NYWtlZmlsZQo+ID4gPiBAQCAtMTg1LDcgKzE4NSw4IEBAIGk5MTUteSArPSBcCj4gPiA+ICAg
ICAgIGRpc3BsYXkvaW50ZWxfdGMubwo+ID4gPiAgaTkxNS0kKENPTkZJR19BQ1BJKSArPSBcCj4g
PiA+ICAgICAgIGRpc3BsYXkvaW50ZWxfYWNwaS5vIFwKPiA+ID4gLSAgICAgZGlzcGxheS9pbnRl
bF9vcHJlZ2lvbi5vCj4gPiA+ICsgICAgIGRpc3BsYXkvaW50ZWxfb3ByZWdpb24ubyBcCj4gPiA+
ICsgICAgIGRpc3BsYXkvaW50ZWxfcHJpdmFjeV9zY3JlZW4ubwo+ID4KPiA+IE1tbWgsIHdvbmRl
ciBpZiB0aGVyZSdsbCBiZSBub24tQUNQSSBiYXNlZCBwcml2YWN5IHNjcmVlbnMuIEkgZ3Vlc3Mg
d2UKPiA+IGNhbiBzb3J0IHRoaXMgb3V0IHRoZW4uICpzaHJ1ZyoKPiA+Cj4gPiA+ICBpOTE1LSQo
Q09ORklHX0RSTV9GQkRFVl9FTVVMQVRJT04pICs9IFwKPiA+ID4gICAgICAgZGlzcGxheS9pbnRl
bF9mYmRldi5vCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2F0b21pYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9hdG9taWMuYwo+ID4gPiBpbmRleCBkM2ZiNzViYjllYjEuLjM3ODc3MmQzNDQ5YyAxMDA2NDQK
PiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYwo+
ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jCj4g
PiA+IEBAIC0zNyw2ICszNyw3IEBACj4gPiA+ICAjaW5jbHVkZSAiaW50ZWxfYXRvbWljLmgiCj4g
PiA+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5oIgo+ID4gPiAgI2luY2x1ZGUgImlu
dGVsX2hkY3AuaCIKPiA+ID4gKyNpbmNsdWRlICJpbnRlbF9wcml2YWN5X3NjcmVlbi5oIgo+ID4g
PiAgI2luY2x1ZGUgImludGVsX3Nwcml0ZS5oIgo+ID4gPgo+ID4gPiAgLyoqCj4gPiA+IEBAIC01
NywxMSArNTgsMTQgQEAgaW50IGludGVsX2RpZ2l0YWxfY29ubmVjdG9yX2F0b21pY19nZXRfcHJv
cGVydHkoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKPiA+ID4gICAgICAgc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShkZXYpOwo+ID4gPiAgICAgICBz
dHJ1Y3QgaW50ZWxfZGlnaXRhbF9jb25uZWN0b3Jfc3RhdGUgKmludGVsX2Nvbm5fc3RhdGUgPQo+
ID4gPiAgICAgICAgICAgICAgIHRvX2ludGVsX2RpZ2l0YWxfY29ubmVjdG9yX3N0YXRlKHN0YXRl
KTsKPiA+ID4gKyAgICAgc3RydWN0IGludGVsX2Nvbm5lY3RvciAqaW50ZWxfY29ubmVjdG9yID0g
dG9faW50ZWxfY29ubmVjdG9yKGNvbm5lY3Rvcik7Cj4gPiA+Cj4gPiA+ICAgICAgIGlmIChwcm9w
ZXJ0eSA9PSBkZXZfcHJpdi0+Zm9yY2VfYXVkaW9fcHJvcGVydHkpCj4gPiA+ICAgICAgICAgICAg
ICAgKnZhbCA9IGludGVsX2Nvbm5fc3RhdGUtPmZvcmNlX2F1ZGlvOwo+ID4gPiAgICAgICBlbHNl
IGlmIChwcm9wZXJ0eSA9PSBkZXZfcHJpdi0+YnJvYWRjYXN0X3JnYl9wcm9wZXJ0eSkKPiA+ID4g
ICAgICAgICAgICAgICAqdmFsID0gaW50ZWxfY29ubl9zdGF0ZS0+YnJvYWRjYXN0X3JnYjsKPiA+
ID4gKyAgICAgZWxzZSBpZiAocHJvcGVydHkgPT0gaW50ZWxfY29ubmVjdG9yLT5wcml2YWN5X3Nj
cmVlbl9wcm9wZXJ0eSkKPiA+ID4gKyAgICAgICAgICAgICAqdmFsID0gaW50ZWxfY29ubl9zdGF0
ZS0+cHJpdmFjeV9zY3JlZW5fc3RhdHVzOwo+ID4gPiAgICAgICBlbHNlIHsKPiA+ID4gICAgICAg
ICAgICAgICBEUk1fREVCVUdfQVRPTUlDKCJVbmtub3duIHByb3BlcnR5IFtQUk9QOiVkOiVzXVxu
IiwKPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHByb3BlcnR5LT5iYXNlLmlk
LCBwcm9wZXJ0eS0+bmFtZSk7Cj4gPiA+IEBAIC04OSwxNSArOTMsMTggQEAgaW50IGludGVsX2Rp
Z2l0YWxfY29ubmVjdG9yX2F0b21pY19zZXRfcHJvcGVydHkoc3RydWN0IGRybV9jb25uZWN0b3Ig
KmNvbm5lY3RvciwKPiA+ID4gICAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
ID0gdG9faTkxNShkZXYpOwo+ID4gPiAgICAgICBzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9jb25uZWN0
b3Jfc3RhdGUgKmludGVsX2Nvbm5fc3RhdGUgPQo+ID4gPiAgICAgICAgICAgICAgIHRvX2ludGVs
X2RpZ2l0YWxfY29ubmVjdG9yX3N0YXRlKHN0YXRlKTsKPiA+ID4gKyAgICAgc3RydWN0IGludGVs
X2Nvbm5lY3RvciAqaW50ZWxfY29ubmVjdG9yID0gdG9faW50ZWxfY29ubmVjdG9yKGNvbm5lY3Rv
cik7Cj4gPiA+Cj4gPiA+ICAgICAgIGlmIChwcm9wZXJ0eSA9PSBkZXZfcHJpdi0+Zm9yY2VfYXVk
aW9fcHJvcGVydHkpIHsKPiA+ID4gICAgICAgICAgICAgICBpbnRlbF9jb25uX3N0YXRlLT5mb3Jj
ZV9hdWRpbyA9IHZhbDsKPiA+ID4gICAgICAgICAgICAgICByZXR1cm4gMDsKPiA+ID4gLSAgICAg
fQo+ID4gPiAtCj4gPiA+IC0gICAgIGlmIChwcm9wZXJ0eSA9PSBkZXZfcHJpdi0+YnJvYWRjYXN0
X3JnYl9wcm9wZXJ0eSkgewo+ID4gPiArICAgICB9IGVsc2UgaWYgKHByb3BlcnR5ID09IGRldl9w
cml2LT5icm9hZGNhc3RfcmdiX3Byb3BlcnR5KSB7Cj4gPiA+ICAgICAgICAgICAgICAgaW50ZWxf
Y29ubl9zdGF0ZS0+YnJvYWRjYXN0X3JnYiA9IHZhbDsKPiA+ID4gICAgICAgICAgICAgICByZXR1
cm4gMDsKPiA+ID4gKyAgICAgfSBlbHNlIGlmIChwcm9wZXJ0eSA9PSBpbnRlbF9jb25uZWN0b3It
PnByaXZhY3lfc2NyZWVuX3Byb3BlcnR5KSB7Cj4gPiA+ICsgICAgICAgICAgICAgaW50ZWxfcHJp
dmFjeV9zY3JlZW5fc2V0X3ZhbChpbnRlbF9jb25uZWN0b3IsIHZhbCk7Cj4gPiA+ICsgICAgICAg
ICAgICAgaW50ZWxfY29ubl9zdGF0ZS0+cHJpdmFjeV9zY3JlZW5fc3RhdHVzID0gdmFsOwo+ID4g
PiArICAgICAgICAgICAgIHJldHVybiAwOwo+ID4gPiAgICAgICB9Cj4gPiA+Cj4gPiA+ICAgICAg
IERSTV9ERUJVR19BVE9NSUMoIlVua25vd24gcHJvcGVydHkgW1BST1A6JWQ6JXNdXG4iLAo+ID4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb25uZWN0
b3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29ubmVjdG9yLmMKPiA+
ID4gaW5kZXggMzA4ZWM2MzIwN2VlLi4zY2NiZjUyYWVkZjkgMTAwNjQ0Cj4gPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29ubmVjdG9yLmMKPiA+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb25uZWN0b3IuYwo+ID4gPiBAQCAt
MjgxLDMgKzI4MSwzOCBAQCBpbnRlbF9hdHRhY2hfY29sb3JzcGFjZV9wcm9wZXJ0eShzdHJ1Y3Qg
ZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKQo+ID4gPiAgICAgICAgICAgICAgIGRybV9vYmplY3Rf
YXR0YWNoX3Byb3BlcnR5KCZjb25uZWN0b3ItPmJhc2UsCj4gPiA+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgY29ubmVjdG9yLT5jb2xvcnNwYWNlX3Byb3BlcnR5LCAw
KTsKPiA+ID4gIH0KPiA+ID4gKwo+ID4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fcHJvcF9l
bnVtX2xpc3QgcHJpdmFjeV9zY3JlZW5fZW51bVtdID0gewo+ID4gPiArICAgICB7IFBSSVZBQ1lf
U0NSRUVOX0RJU0FCTEVELCAiRGlzYWJsZWQiIH0sCj4gPiA+ICsgICAgIHsgUFJJVkFDWV9TQ1JF
RU5fRU5BQkxFRCwgIkVuYWJsZWQiIH0sCj4gPiA+ICt9Owo+ID4gPiArCj4gPiA+ICsvKioKPiA+
ID4gKyAqIGludGVsX2F0dGFjaF9wcml2YWN5X3NjcmVlbl9wcm9wZXJ0eSAtCj4gPiA+ICsgKiAg
ICAgY3JlYXRlIGFuZCBhdHRhY2ggdGhlIGNvbm5lY3RlcidzIHByaXZhY3ktc2NyZWVuIHByb3Bl
cnR5LiAqCj4gPiA+ICsgKiBAY29ubmVjdG9yOiBjb25uZWN0b3IgZm9yIHdoaWNoIHRvIGluaXQg
dGhlIHByaXZhY3ktc2NyZWVuIHByb3BlcnR5Cj4gPiA+ICsgKgo+ID4gPiArICogVGhpcyBmdW5j
dGlvbiBjcmVhdGVzIGFuZCBhdHRhY2hlcyB0aGUgInByaXZhY3ktc2NyZWVuIiBwcm9wZXJ0eSB0
byB0aGUKPiA+ID4gKyAqIGNvbm5lY3Rvci4gSW5pdGlhbCBzdGF0ZSBvZiBwcml2YWN5LXNjcmVl
biBpcyBzZXQgdG8gZGlzYWJsZWQuCj4gPiA+ICsgKi8KPiA+ID4gK3ZvaWQKPiA+ID4gK2ludGVs
X2F0dGFjaF9wcml2YWN5X3NjcmVlbl9wcm9wZXJ0eShzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29u
bmVjdG9yKQo+ID4gPiArewo+ID4gPiArICAgICBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICppbnRl
bF9jb25uZWN0b3IgPSB0b19pbnRlbF9jb25uZWN0b3IoY29ubmVjdG9yKTsKPiA+ID4gKyAgICAg
c3RydWN0IGRybV9wcm9wZXJ0eSAqcHJvcDsKPiA+ID4gKwo+ID4gPiArICAgICBpZiAoIWludGVs
X2Nvbm5lY3Rvci0+cHJpdmFjeV9zY3JlZW5fcHJvcGVydHkpIHsKPiA+ID4gKyAgICAgICAgICAg
ICBwcm9wID0gZHJtX3Byb3BlcnR5X2NyZWF0ZV9lbnVtKGNvbm5lY3Rvci0+ZGV2LAo+ID4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgRFJNX01PREVfUFJP
UF9FTlVNLAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgInByaXZhY3ktc2NyZWVuIiwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHByaXZhY3lfc2NyZWVuX2VudW0sCj4gPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIEFSUkFZX1NJWkUocHJpdmFjeV9zY3JlZW5fZW51
bSkpOwo+ID4gPiArICAgICAgICAgICAgIGlmICghcHJvcCkKPiA+ID4gKyAgICAgICAgICAgICAg
ICAgICAgIHJldHVybjsKPiA+ID4gKwo+ID4gPiArICAgICAgICAgICAgIGludGVsX2Nvbm5lY3Rv
ci0+cHJpdmFjeV9zY3JlZW5fcHJvcGVydHkgPSBwcm9wOwo+ID4gPiArICAgICB9Cj4gPiA+ICsK
PiA+ID4gKyAgICAgZHJtX29iamVjdF9hdHRhY2hfcHJvcGVydHkoJmNvbm5lY3Rvci0+YmFzZSwg
cHJvcCwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUFJJVkFDWV9TQ1JF
RU5fRElTQUJMRUQpOwo+ID4gPiArfQo+ID4KPiA+IEkgdGhpbmsgdGhpcyBzaG91bGQgYmUgYSBk
cm0gY29yZSBsZXZlbCBwcm9wZXJ0eSBpbiBkcm1fY29ubmVjdG9yLltjaF0KPiA+IHNvIHRoYXQg
KmFsbCogZHJpdmVycyB3b3VsZCB1c2UgdGhlIHNhbWUgdGhpbmcgZm9yIHByaXZhY3kgc2NyZWVu
cy4gTm90Cj4gPiBpOTE1IHNwZWNpZmljLgo+ID4KPiA+IEkgdGhpbmsgdGhpcyBpcyB0aGUgYmln
Z2VzdCBpc3N1ZSBpbiB0aGUgcGF0Y2ggc2VyaWVzLgo+Cj4gSSBhY3R1YWxseSB3b3VsZCBiZSBo
YXBweSB0byBtYWtlIGl0IGEgZHJtX2Nvbm5lY3RvciBwcm9wZXJ0eSwgbGlrZSBJCj4gaGFkIGlu
IG15IG9yaWdpbmFsIHBhdGNoIHNlcmllcy4gSSBjaGFuZ2VkIGl0IHRvIGk5MTUgc3BlY2lmaWMg
YmVjYXVzZQo+IGl0IHNlZW1lZCB0byBtZSBiYXNlZCBvbiB0aGUgY29tbWVudHMgdGhhdCB0aGUg
Z2VuZXJhbCBzZW50aW1lbnQgaXMKPiB0aGF0IGFueXRoaW5nIHRvIGRvIHdpdGggYWNwaSBzaG91
bGQgYmUgaW4gaTkxNS4KPgo+IE5vdGUgdGhhdCB0aGUgcHJpdmFjeSBzY3JlZW4gcHJvcGVydHkg
ZXNzZW50aWFsbHkgbmVlZHMgYW4gQUNQSSBoYW5kbGUKPiB0byB3b3JrIG9uLCBzbyBpZiBJIHdl
cmUgdG8gbW92ZSB0aGUgcHJvcGVydHkgaW50byBkcm1fY29ubmVjdG9yLCBJJ2QKPiBsaWtlbHkg
cmVuYW1lIHRoZSBpbnRlbF9wcml2YWN5X3NjcmVlbiogY29kZSB0byBkcm1fcHJpdmFjeV9zY3Jl
ZW4qCj4gY29kZSwgYW5kIGl0J2xsIHN0aWxsIG9wZXJhdGUgb24gYW4gQUNQSSBoYW5kbGUgKHN0
b3JlZCBpbgo+IGRybV9jb25uZWN0b3Igc3RydWN0dXJlKS4gVGhlIGk5MTUncyBqb2Igd2lsbCB0
aGVuIGJlIHRvIGxvb2t1cCB0aGF0Cj4gQUNQSSBoYW5kbGUgKGJlY2F1c2UgbG9va3VwIHJlcXVp
cmVzIGRpc3BsYXkgaW5kZXgpIGFuZCBwb3B1bGF0ZSBpdCBpbgo+IGRybV9jb25uZWN0b3IuIERv
ZXMgdGhpcyBzb3VuZCBPSz8KCldvbmRlcmluZyBpZiB5b3UgZXZlciBnb3QgbXkgZW1haWwuIEkg
Zm91bmQgb3V0IHRoaXMgd2VlayB0aGF0IEkKbmVlZGVkIHRvIGJlIGEgbWVtYmVyIG9mIGludGVs
LWdmeCBtYWlsaW5nIGxpc3Qgb3RoZXJ3aXNlIG15IHBhdGNoZXMKd29uJ3Qgc2hvdyB1cCBvbiBw
YXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnLiBJJ20gbm93IGEgbWVtYmVyLCBhbmQgSQpoYXZlIHBv
c3RlZCBteSBsYXRlc3QgcGF0Y2hzZXQgYXQ6CgpodHRwczovL3BhdGNod29yay5mcmVlZGVza3Rv
cC5vcmcvcGF0Y2gvMzQ2Mjc1LwoKSSdkIGFwcHJlY2lhdGUgaWYgeW91IGNvdWxkIHBsZWFzZSBy
ZXZpZXcgYW5kIGNvbW1lbnQgYW5kIHByb3ZpZGUgeW91cgp2YWx1YWJsZSBzdWdnZXN0aW9ucy4K
ClRoYW5rcyAmIEJlc3QgUmVnYXJkcywKClJhamF0Cgo+Cj4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb25uZWN0b3IuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29ubmVjdG9yLmgKPiA+ID4gaW5kZXggOTNhNzM3
NWM4MTk2Li42MTAwNWYzN2EzMzggMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY29ubmVjdG9yLmgKPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jb25uZWN0b3IuaAo+ID4gPiBAQCAtMzEsNSArMzEsNiBAQCB2
b2lkIGludGVsX2F0dGFjaF9mb3JjZV9hdWRpb19wcm9wZXJ0eShzdHJ1Y3QgZHJtX2Nvbm5lY3Rv
ciAqY29ubmVjdG9yKTsKPiA+ID4gIHZvaWQgaW50ZWxfYXR0YWNoX2Jyb2FkY2FzdF9yZ2JfcHJv
cGVydHkoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3Rvcik7Cj4gPiA+ICB2b2lkIGludGVs
X2F0dGFjaF9hc3BlY3RfcmF0aW9fcHJvcGVydHkoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5l
Y3Rvcik7Cj4gPiA+ICB2b2lkIGludGVsX2F0dGFjaF9jb2xvcnNwYWNlX3Byb3BlcnR5KHN0cnVj
dCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpOwo+ID4gPiArdm9pZCBpbnRlbF9hdHRhY2hfcHJp
dmFjeV9zY3JlZW5fcHJvcGVydHkoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3Rvcik7Cj4g
PiA+Cj4gPiA+ICAjZW5kaWYgLyogX19JTlRFTF9DT05ORUNUT1JfSF9fICovCj4gPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4g
PiA+IGluZGV4IGMyNzA2YWZjMDY5Yi4uODNiOGM5ODA0OWE3IDEwMDY0NAo+ID4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+ID4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+
ID4gPiBAQCAtNDI2LDYgKzQyNiw5IEBAIHN0cnVjdCBpbnRlbF9jb25uZWN0b3Igewo+ID4gPiAg
ICAgICBzdHJ1Y3Qgd29ya19zdHJ1Y3QgbW9kZXNldF9yZXRyeV93b3JrOwo+ID4gPgo+ID4gPiAg
ICAgICBzdHJ1Y3QgaW50ZWxfaGRjcCBoZGNwOwo+ID4gPiArCj4gPiA+ICsgICAgIC8qIE9wdGlv
bmFsICJwcml2YWN5LXNjcmVlbiIgcHJvcGVydHkgZm9yIHRoZSBjb25uZWN0b3IgcGFuZWwgKi8K
PiA+ID4gKyAgICAgc3RydWN0IGRybV9wcm9wZXJ0eSAqcHJpdmFjeV9zY3JlZW5fcHJvcGVydHk7
Cj4gPiA+ICB9Owo+ID4gPgo+ID4gPiAgc3RydWN0IGludGVsX2RpZ2l0YWxfY29ubmVjdG9yX3N0
YXRlIHsKPiA+ID4gQEAgLTQzMyw2ICs0MzYsNyBAQCBzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9jb25u
ZWN0b3Jfc3RhdGUgewo+ID4gPgo+ID4gPiAgICAgICBlbnVtIGhkbWlfZm9yY2VfYXVkaW8gZm9y
Y2VfYXVkaW87Cj4gPiA+ICAgICAgIGludCBicm9hZGNhc3RfcmdiOwo+ID4gPiArICAgICBlbnVt
IGludGVsX3ByaXZhY3lfc2NyZWVuX3N0YXR1cyBwcml2YWN5X3NjcmVlbl9zdGF0dXM7Cj4gPiA+
ICB9Owo+ID4gPgo+ID4gPiAgI2RlZmluZSB0b19pbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9zdGF0
ZSh4KSBjb250YWluZXJfb2YoeCwgc3RydWN0IGludGVsX2RpZ2l0YWxfY29ubmVjdG9yX3N0YXRl
LCBiYXNlKQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gPiA+
IGluZGV4IDRmYWM0MDhhNDI5OS4uMTk2M2U5MjQwNGJhIDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiA+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gPiA+IEBAIC02Miw2ICs2Miw3IEBACj4g
PiA+ICAjaW5jbHVkZSAiaW50ZWxfbHNwY29uLmgiCj4gPiA+ICAjaW5jbHVkZSAiaW50ZWxfbHZk
cy5oIgo+ID4gPiAgI2luY2x1ZGUgImludGVsX3BhbmVsLmgiCj4gPiA+ICsjaW5jbHVkZSAiaW50
ZWxfcHJpdmFjeV9zY3JlZW4uaCIKPiA+ID4gICNpbmNsdWRlICJpbnRlbF9wc3IuaCIKPiA+ID4g
ICNpbmNsdWRlICJpbnRlbF9zaWRlYmFuZC5oIgo+ID4gPiAgI2luY2x1ZGUgImludGVsX3RjLmgi
Cj4gPiA+IEBAIC02MzU4LDYgKzYzNTksMTAgQEAgaW50ZWxfZHBfYWRkX3Byb3BlcnRpZXMoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCwgc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3QKPiA+
ID4KPiA+ID4gICAgICAgICAgICAgICAvKiBMb29rdXAgdGhlIEFDUEkgbm9kZSBjb3JyZXNwb25k
aW5nIHRvIHRoZSBjb25uZWN0b3IgKi8KPiA+ID4gICAgICAgICAgICAgICBpbnRlbF9jb25uZWN0
b3JfbG9va3VwX2FjcGlfbm9kZShpbnRlbF9jb25uZWN0b3IpOwo+ID4gPiArCj4gPiA+ICsgICAg
ICAgICAgICAgLyogQ2hlY2sgZm9yIGludGVncmF0ZWQgUHJpdmFjeSBzY3JlZW4gc3VwcG9ydCAq
Lwo+ID4gPiArICAgICAgICAgICAgIGlmIChpbnRlbF9wcml2YWN5X3NjcmVlbl9wcmVzZW50KGlu
dGVsX2Nvbm5lY3RvcikpCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICBpbnRlbF9hdHRhY2hf
cHJpdmFjeV9zY3JlZW5fcHJvcGVydHkoY29ubmVjdG9yKTsKPiA+ID4gICAgICAgfQo+ID4gPiAg
fQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wcml2YWN5X3NjcmVlbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wcml2YWN5X3NjcmVlbi5jCj4gPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiA+IGluZGV4
IDAwMDAwMDAwMDAwMC4uNGM0MjJlMzhjNTFhCj4gPiA+IC0tLSAvZGV2L251bGwKPiA+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wcml2YWN5X3NjcmVlbi5jCj4g
PiA+IEBAIC0wLDAgKzEsNzAgQEAKPiA+ID4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBH
UEwtMi4wLW9yLWxhdGVyCj4gPgo+ID4gUGxlYXNlIHJlYWQgaHR0cDovL21pZC5tYWlsLWFyY2hp
dmUuY29tL0NBS01LN3VILTgrdGJLc0FvaUNoc3hFTEVjXzc3UlZWeFAyd2FwSFdocUIrMFZpaWZv
Z0BtYWlsLmdtYWlsLmNvbQo+Cj4gT0ssIEkgY2hhbmdlZCBpdCB0byBTUERYLUxpY2Vuc2UtSWRl
bnRpZmllcjogR1BMLTIuMCBPUiBNSVQKPgo+Cj4gPgo+ID4gPiArLyoKPiA+ID4gKyAqIEludGVs
IEFDUEkgcHJpdmFjeSBzY3JlZW4gY29kZQo+ID4gPiArICoKPiA+ID4gKyAqIENvcHlyaWdodCDC
qSAyMDE5IEdvb2dsZSBJbmMuCj4gPiA+ICsgKi8KPiA+ID4gKwo+ID4gPiArI2luY2x1ZGUgPGxp
bnV4L2FjcGkuaD4KPiA+ID4gKwo+ID4gPiArI2luY2x1ZGUgImludGVsX3ByaXZhY3lfc2NyZWVu
LmgiCj4gPiA+ICsKPiA+ID4gKyNkZWZpbmUgQ09OTkVDVE9SX0RTTV9SRVZJRCAxCj4gPiA+ICsK
PiA+ID4gKyNkZWZpbmUgQ09OTkVDVE9SX0RTTV9GTl9QUklWQUNZX0VOQUJMRSAgICAgICAgICAg
ICAgMgo+ID4gPiArI2RlZmluZSBDT05ORUNUT1JfRFNNX0ZOX1BSSVZBQ1lfRElTQUJMRSAgICAg
ICAgICAgICAzCj4gPiA+ICsKPiA+ID4gK3N0YXRpYyBjb25zdCBndWlkX3QgZHJtX2Nvbm5fZHNt
X2d1aWQgPQo+ID4gPiArICAgICBHVUlEX0lOSVQoMHhDNzAzMzExMywgMHg4NzIwLCAweDRDRUIs
Cj4gPiA+ICsgICAgICAgICAgICAgICAweDkwLCAweDkwLCAweDlELCAweDUyLCAweEIzLCAweEU1
LCAweDJELCAweDczKTsKPiA+ID4gKwo+ID4gPiArLyogTWFrZXMgX0RTTSBjYWxsIHRvIHNldCBw
cml2YWN5IHNjcmVlbiBzdGF0dXMgKi8KPiA+ID4gK3N0YXRpYyB2b2lkIGFjcGlfcHJpdmFjeV9z
Y3JlZW5fY2FsbF9kc20oYWNwaV9oYW5kbGUgY29ubl9oYW5kbGUsIHU2NCBmdW5jKQo+ID4gPiAr
ewo+ID4gPiArICAgICB1bmlvbiBhY3BpX29iamVjdCAqb2JqOwo+ID4gPiArCj4gPiA+ICsgICAg
IG9iaiA9IGFjcGlfZXZhbHVhdGVfZHNtKGNvbm5faGFuZGxlLCAmZHJtX2Nvbm5fZHNtX2d1aWQs
Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIENPTk5FQ1RPUl9EU01fUkVWSUQs
IGZ1bmMsIE5VTEwpOwo+ID4gPiArICAgICBpZiAoIW9iaikgewo+ID4gPiArICAgICAgICAgICAg
IERSTV9ERUJVR19EUklWRVIoImZhaWxlZCB0byBldmFsdWF0ZSBfRFNNIGZvciBmbiAlbGx4XG4i
LCBmdW5jKTsKPiA+ID4gKyAgICAgICAgICAgICByZXR1cm47Cj4gPiA+ICsgICAgIH0KPiA+ID4g
Kwo+ID4gPiArICAgICBBQ1BJX0ZSRUUob2JqKTsKPiA+ID4gK30KPiA+ID4gKwo+ID4gPiArdm9p
ZCBpbnRlbF9wcml2YWN5X3NjcmVlbl9zZXRfdmFsKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmlu
dGVsX2Nvbm5lY3RvciwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBlbnVt
IGludGVsX3ByaXZhY3lfc2NyZWVuX3N0YXR1cyB2YWwpCj4gPgo+ID4gSnVzdCBuYW1lIHRoZSBw
YXJhbWV0ZXIgY29ubmVjdG9yLCBub3QgaW50ZWxfY29ubmVjdG9yLiBUaGlzIHRocm91Z2hvdXQu
Cj4KPiBEb25lLgo+Cj4gPgo+ID4gPiArewo+ID4gPiArICAgICBhY3BpX2hhbmRsZSBhY3BpX2hh
bmRsZSA9IGludGVsX2Nvbm5lY3Rvci0+YWNwaV9oYW5kbGU7Cj4gPiA+ICsKPiA+ID4gKyAgICAg
aWYgKCFhY3BpX2hhbmRsZSkKPiA+ID4gKyAgICAgICAgICAgICByZXR1cm47Cj4gPiA+ICsKPiA+
ID4gKyAgICAgaWYgKHZhbCA9PSBQUklWQUNZX1NDUkVFTl9ESVNBQkxFRCkKPiA+ID4gKyAgICAg
ICAgICAgICBhY3BpX3ByaXZhY3lfc2NyZWVuX2NhbGxfZHNtKGFjcGlfaGFuZGxlLAo+ID4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgQ09OTkVDVE9SX0RTTV9G
Tl9QUklWQUNZX0RJU0FCTEUpOwo+ID4gPiArICAgICBlbHNlIGlmICh2YWwgPT0gUFJJVkFDWV9T
Q1JFRU5fRU5BQkxFRCkKPiA+ID4gKyAgICAgICAgICAgICBhY3BpX3ByaXZhY3lfc2NyZWVuX2Nh
bGxfZHNtKGFjcGlfaGFuZGxlLAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgQ09OTkVDVE9SX0RTTV9GTl9QUklWQUNZX0VOQUJMRSk7Cj4gPgo+ID4gZWxz
ZSBjb21wbGFpbj8KPiA+Cj4KPiBEb25lLgo+Cj4gPiA+ICt9Cj4gPiA+ICsKPiA+ID4gK2Jvb2wg
aW50ZWxfcHJpdmFjeV9zY3JlZW5fcHJlc2VudChzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICppbnRl
bF9jb25uZWN0b3IpCj4gPiA+ICt7Cj4gPiA+ICsgICAgIGFjcGlfaGFuZGxlIGhhbmRsZSA9IGlu
dGVsX2Nvbm5lY3Rvci0+YWNwaV9oYW5kbGU7Cj4gPiA+ICsKPiA+ID4gKyAgICAgaWYgKCFoYW5k
bGUpCj4gPiA+ICsgICAgICAgICAgICAgcmV0dXJuIGZhbHNlOwo+ID4gPiArCj4gPiA+ICsgICAg
IGlmICghYWNwaV9jaGVja19kc20oaGFuZGxlLCAmZHJtX2Nvbm5fZHNtX2d1aWQsCj4gPiA+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgQ09OTkVDVE9SX0RTTV9SRVZJRCwKPiA+ID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAxIDw8IENPTk5FQ1RPUl9EU01fRk5fUFJJVkFDWV9FTkFCTEUg
fAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgIDEgPDwgQ09OTkVDVE9SX0RTTV9GTl9Q
UklWQUNZX0RJU0FCTEUpKSB7Cj4gPiA+ICsgICAgICAgICAgICAgRFJNX1dBUk4oIiVzOiBPZGQs
IGNvbm5lY3RvciBBQ1BJIG5vZGUgYnV0IG5vIHByaXZhY3kgc2Nybj9cbiIsCj4gPiA+ICsgICAg
ICAgICAgICAgICAgICAgICAgZGV2X25hbWUoaW50ZWxfY29ubmVjdG9yLT5iYXNlLmRldi0+ZGV2
KSk7Cj4gPiA+ICsgICAgICAgICAgICAgcmV0dXJuIGZhbHNlOwo+ID4gPiArICAgICB9Cj4gPiA+
ICsgICAgIERSTV9ERVZfSU5GTyhpbnRlbF9jb25uZWN0b3ItPmJhc2UuZGV2LT5kZXYsCj4gPiA+
ICsgICAgICAgICAgICAgICAgICAic3VwcG9ydHMgcHJpdmFjeSBzY3JlZW5cbiIpOwo+ID4gPiAr
ICAgICByZXR1cm4gdHJ1ZTsKPiA+ID4gK30KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHJpdmFjeV9zY3JlZW4uaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHJpdmFjeV9zY3JlZW4uaAo+ID4gPiBuZXcgZmlsZSBtb2Rl
IDEwMDY0NAo+ID4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLjIxMmY3MzM0OWEwMAo+ID4gPiAtLS0g
L2Rldi9udWxsCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHJpdmFjeV9zY3JlZW4uaAo+ID4gPiBAQCAtMCwwICsxLDI1IEBACj4gPiA+ICsvKiBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vci1sYXRlciAqLwo+ID4gPiArLyoKPiA+ID4gKyAq
IENvcHlyaWdodCDCqSAyMDE5IEdvb2dsZSBJbmMuCj4gPiA+ICsgKi8KPiA+ID4gKwo+ID4gPiAr
I2lmbmRlZiBfX0RSTV9QUklWQUNZX1NDUkVFTl9IX18KPiA+ID4gKyNkZWZpbmUgX19EUk1fUFJJ
VkFDWV9TQ1JFRU5fSF9fCj4gPiA+ICsKPiA+ID4gKyNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3R5
cGVzLmgiCj4gPiA+ICsKPiA+ID4gKyNpZmRlZiBDT05GSUdfQUNQSQo+ID4gPiArYm9vbCBpbnRl
bF9wcml2YWN5X3NjcmVlbl9wcmVzZW50KHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmludGVsX2Nv
bm5lY3Rvcik7Cj4gPiA+ICt2b2lkIGludGVsX3ByaXZhY3lfc2NyZWVuX3NldF92YWwoc3RydWN0
IGludGVsX2Nvbm5lY3RvciAqaW50ZWxfY29ubmVjdG9yLAo+ID4gPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGVudW0gaW50ZWxfcHJpdmFjeV9zY3JlZW5fc3RhdHVzIHZhbCk7Cj4g
PiA+ICsjZWxzZQo+ID4gPiArYm9vbCBpbnRlbF9wcml2YWN5X3NjcmVlbl9wcmVzZW50KHN0cnVj
dCBpbnRlbF9jb25uZWN0b3IgKmludGVsX2Nvbm5lY3Rvcik7Cj4gPiA+ICt7Cj4gPiA+ICsgICAg
IHJldHVybiBmYWxzZTsKPiA+ID4gK30KPiA+ID4gK3ZvaWQgaW50ZWxfcHJpdmFjeV9zY3JlZW5f
c2V0X3ZhbChzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICppbnRlbF9jb25uZWN0b3IsCj4gPiA+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZW51bSBpbnRlbF9wcml2YWN5X3NjcmVlbl9z
dGF0dXMgdmFsKQo+ID4gPiAreyB9Cj4gPiA+ICsjZW5kaWYgLyogQ09ORklHX0FDUEkgKi8KPiA+
ID4gKwo+ID4gPiArI2VuZGlmIC8qIF9fRFJNX1BSSVZBQ1lfU0NSRUVOX0hfXyAqLwo+ID4gPiBk
aWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oIGIvaW5jbHVkZS91YXBpL2Ry
bS9pOTE1X2RybS5oCj4gPiA+IGluZGV4IDQ2OWRjNTEyY2NhMy4uY2YwOGQ1NjM2MzYzIDEwMDY0
NAo+ID4gPiAtLS0gYS9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgKPiA+ID4gKysrIGIvaW5j
bHVkZS91YXBpL2RybS9pOTE1X2RybS5oCj4gPiA+IEBAIC0yMTIzLDYgKzIxMjMsMjAgQEAgc3Ry
dWN0IGRybV9pOTE1X3F1ZXJ5X2VuZ2luZV9pbmZvIHsKPiA+ID4gICAgICAgc3RydWN0IGRybV9p
OTE1X2VuZ2luZV9pbmZvIGVuZ2luZXNbXTsKPiA+ID4gIH07Cj4gPiA+Cj4gPiA+ICsvKioKPiA+
ID4gKyAqIGVudW0gaW50ZWxfcHJpdmFjeV9zY3JlZW5fc3RhdHVzIC0gcHJpdmFjeV9zY3JlZW4g
c3RhdHVzCj4gPiA+ICsgKgo+ID4gPiArICogVGhpcyBlbnVtIGlzIHVzZWQgdG8gdHJhY2sgYW5k
IGNvbnRyb2wgdGhlIHN0YXRlIG9mIHRoZSBpbnRlZ3JhdGVkIHByaXZhY3kKPiA+ID4gKyAqIHNj
cmVlbiBwcmVzZW50IG9uIHNvbWUgZGlzcGxheSBwYW5lbHMsIHZpYSB0aGUgInByaXZhY3ktc2Ny
ZWVuIiBwcm9wZXJ0eS4KPiA+ID4gKyAqCj4gPiA+ICsgKiBAUFJJVkFDWV9TQ1JFRU5fRElTQUJM
RUQ6IFRoZSBwcml2YWN5LXNjcmVlbiBvbiB0aGUgcGFuZWwgaXMgZGlzYWJsZWQKPiA+ID4gKyAq
IEBQUklWQUNZX1NDUkVFTl9FTkFCTEVEOiAgVGhlIHByaXZhY3ktc2NyZWVuIG9uIHRoZSBwYW5l
bCBpcyBlbmFibGVkCj4gPiA+ICsgKiovCj4gPiA+ICtlbnVtIGludGVsX3ByaXZhY3lfc2NyZWVu
X3N0YXR1cyB7Cj4gPiA+ICsgICAgIFBSSVZBQ1lfU0NSRUVOX0RJU0FCTEVEID0gMCwKPiA+ID4g
KyAgICAgUFJJVkFDWV9TQ1JFRU5fRU5BQkxFRCA9IDEsCj4gPiA+ICt9Owo+ID4gPiArCj4gPgo+
ID4gVGhlIGRybV9wcm9wZXJ0eSBpbnRlcmZhY2UgVUFQSSBpcyBiYXNlZCBvbiB0aGUgc3RyaW5n
cywgKm5vdCogb24gdGhlCj4gPiB2YWx1ZXMuIFBsZWFzZSBtb3ZlIHRoZSBlbnVtIG91dCBvZiB1
YXBpIGludG8gdGhlIGRybSBjb2RlLgo+Cj4gT2gsIHNvIHdlIGRvbid0IGhhdmUgdG8gZXhwb3Nl
IHRoaXMgdG8gdXNlcnNwYWNlPyBVbmRlcnN0YW5kLCBzbyBJCj4gbW92ZWQgaXQgdG8gaW50ZWxf
ZGlzcGxheV90eXBlcy5oCj4KPiBUaGFua3MsCj4KPiBSYWphdC4KPgo+Cj4gPgo+ID4gQlIsCj4g
PiBqYW5pLgo+ID4KPiA+ID4gICNpZiBkZWZpbmVkKF9fY3BsdXNwbHVzKQo+ID4gPiAgfQo+ID4g
PiAgI2VuZGlmCj4gPgo+ID4gLS0KPiA+IEphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBH
cmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
