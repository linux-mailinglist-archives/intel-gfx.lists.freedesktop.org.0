Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7CF100A97
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 18:42:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9758E6E789;
	Mon, 18 Nov 2019 17:42:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com
 [IPv6:2607:f8b0:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7759C6E084
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 17:42:24 +0000 (UTC)
Received: by mail-ot1-x344.google.com with SMTP id c19so15241888otr.11
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 09:42:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Pb642hYY6ry+5A2GFNjs15OQAUPTM46tF69OxEozddk=;
 b=hVJS145Mv1124PfcaXjJW3yzZykWTQXd/kipyyFexlB9/q4n9FkFZE51a8nIzKqxe4
 RJTnt1VCUKopiAlHdIZtQxEVIha1yt2JvK/MMLEJAjInL46fSb0dHbgoeqV6d/P63xfD
 onYSivZq8J8UfVjrkaMMGY+iV/DVxJTVB9RQ6DWWxUmvNp1wtKzRm2/e3+yE3hWEJp+m
 xTdp9xuL0TukrWwHuQwdsrVoxW9efcD3Rrgyvy66fk1b/MzkwRAa6O+nL9RZyYFeuKDZ
 XfpOQKMLm0ZZMShDolgtjnxvEVemhVY5c1c0++Kh69jb1/pjuyY4eltfea2q04DEf6vY
 R+5g==
X-Gm-Message-State: APjAAAUefE2GimYb0hpGp7tLo7qujEZy7QTpeiBdrzCVkZfC7+lK/1o/
 rmOh2WYQ4iYRzR9JBt1IK1Ob+5iZ+dcbCTngd7rFrQ==
X-Google-Smtp-Source: APXvYqzBojEDeSccqC2ygdXrqVuk+r2RDlMVZOJBSpbO3nK3WYu6rKKixk2cG85xZxKRp1TXgoEhfM5QhItO0rFReBA=
X-Received: by 2002:a05:6830:22d0:: with SMTP id
 q16mr385821otc.188.1574098943743; 
 Mon, 18 Nov 2019 09:42:23 -0800 (PST)
MIME-Version: 1.0
References: <20191118103536.17675-1-daniel.vetter@ffwll.ch>
 <20191118103536.17675-11-daniel.vetter@ffwll.ch>
 <4949ad6873cf75db0622499f47fb849a5463bb13.camel@vmware.com>
In-Reply-To: <4949ad6873cf75db0622499f47fb849a5463bb13.camel@vmware.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 18 Nov 2019 18:42:12 +0100
Message-ID: <CAKMK7uFr56=KE8=w0d87bdjG27411WhFLUxmD1EGYsYyNcsJrg@mail.gmail.com>
To: Thomas Hellstrom <thellstrom@vmware.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=Pb642hYY6ry+5A2GFNjs15OQAUPTM46tF69OxEozddk=;
 b=TM7d+y7N/C96cNGE1N3UBf3KRy3pq9461QAhV9D3i5KXtjttNps1AAyNwva14519kj
 p/RUsRL+NpxpQ0DqHwxmNuH4ySW32pWic9R6D0GGGzm515qycNu8TKP3dwDTJ2fXEsAw
 iDK/p+aXdEFOdD49HPIRUra/iwrSOm8b/EKZU=
Subject: Re: [Intel-gfx] [PATCH 10/15] drm/vmwgfx: Delete mmaping functions
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
Cc: "daniel.vetter@intel.com" <daniel.vetter@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Linux-graphics-maintainer <Linux-graphics-maintainer@vmware.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBOb3YgMTgsIDIwMTkgYXQgNjoyNSBQTSBUaG9tYXMgSGVsbHN0cm9tIDx0aGVsbHN0
cm9tQHZtd2FyZS5jb20+IHdyb3RlOgo+Cj4gT24gTW9uLCAyMDE5LTExLTE4IGF0IDExOjM1ICsw
MTAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4gTm8gbmVlZCBmb3Igc3R1YnMsIGRtYS1idWYu
YyB0YWtlcyBjYXJlIG9mIHRoYXQuCj4gPgo+ID4gQXNpZGUsIG5vdCBoYXZpbmcgYSAtPnJlbGVh
c2UgY2FsbGJhY2sgc21lbGxlZCBsaWtlIHJlZmNvdW50aW5nIGxlYWsKPiA+IHNvbWV3aGVyZS4g
SXQgd2lsbCBhbHNvIHNjb3JlIHlvdSBhIFdBUk5fT04gYmFja3RyYWNlIGluIGRtYS1idWYuYyBv
bgo+ID4gZXZlcnkgZXhwb3J0LiBCdXQgdGhlbiBJIGZvdW5kIHRoYXQgdHRtX2RldmljZV9vYmpl
Y3RfaW5pdCBvdmVyd3JpdGVzCj4gPiBpdC4gT3ZlcndyaXRpbmcgY29uc3QgbWVtb3J5IGlzIG5v
dCBnb2luZyB0byBnbyBkb3duIHdlbGwgaW4gcmVjZW50Cj4gPiBrZXJuZWxzLgo+Cj4gSXQncyBh
Y3R1YWxseSB0YWtpbmcgYSBub24tY29uc3QgY29weSBhbmQgdXBkYXRpbmcgaXQuIE5vdCB0aGF0
IHRoYXQncwo+IG11Y2ggYmV0dGVyLCBidXQgYXQgbGVhc3QgaXQgd29uJ3QgY3Jhc2ggZHVlIHRv
IHdyaXRpbmcgdG8gd3AgbWVtb3J5Lgo+IEknbGwgYWRkIGEgYmFja2xvZyBpdGVtIHRvIHJldmlz
aXQgdGhpcy4KCkhtIEkgd2FzIGxvb2tpbmcgZm9yIHRoYXQsIGJ1dCBkaWRuJ3Qgc3BvdCB3aGVy
ZSBpdCBkb2VzIHRoYXQuIEknbGwKdXBkYXRlIHRoZSBjb21taXQgbWVzc2FnZSB3aGVuIG1lcmdp
bmcuCgo+ID4gT25lIG1vcmUgYXNpZGU6IFRoZSAodW4pbWFwX2RtYV9idWYgY2FuJ3QgZXZlciBi
ZSBjYWxsZWQgYmVjYXVzZQo+ID4gLT5hdHRhY2ggcmVqZWN0cyBldmVyeXRoaW5nLiBNaWdodCB3
YW50IHRvIGRyb3AgYSBCVUdfT04oMSkgaW4gdGhlcmUuCj4gPiBTYW1lIGZvciAtPmRldGFjaC4K
Pgo+IEFuZCB0aGlzLgo+Cj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFu
aWVsLnZldHRlckBpbnRlbC5jb20+Cj4gPiBDYzogVk13YXJlIEdyYXBoaWNzIDxsaW51eC1ncmFw
aGljcy1tYWludGFpbmVyQHZtd2FyZS5jb20+Cj4gPiBDYzogVGhvbWFzIEhlbGxzdHJvbSA8dGhl
bGxzdHJvbUB2bXdhcmUuY29tPgo+ID4gLS0tCj4gPgo+Cj4KPiBSZXZpZXdlZC1ieTogVGhvbWFz
IEhlbGxzdHJvbSA8dGhlbGxzdHJvbUB2bXdhcmUuY29tPgoKVGhhbmtzIGZvciB5b3VyIHJldmll
dy4KCj4gV2lsbCB5b3UgYmUgdGFraW5nIHRoaXMgdGhyb3VnaCBkcm0tbWlzYz8KCll1cCwgdGhh
dCdzIHRoZSBwbGFuLgotRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVy
LCBJbnRlbCBDb3Jwb3JhdGlvbgorNDEgKDApIDc5IDM2NSA1NyA0OCAtIGh0dHA6Ly9ibG9nLmZm
d2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
