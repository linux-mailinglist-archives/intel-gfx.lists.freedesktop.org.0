Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E44E1F076D
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 21:58:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A32A6E13D;
	Tue,  5 Nov 2019 20:58:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com
 [IPv6:2607:f8b0:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11EF46E13D
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Nov 2019 20:58:37 +0000 (UTC)
Received: by mail-ot1-x342.google.com with SMTP id u13so18930798ote.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Nov 2019 12:58:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3X+L4JDP/5X+/ckuq/BR+0CZNNx3fzVpdhwpoW2+lc0=;
 b=ERokPVvV+n831PTk8e7Q+g2UkHEbN/yq/pSa0zMjJFBb0qssI+Q+dKMhTEMI0ChcG0
 xq3TbbuCD1lA9/ASNXhChblOB47OJOYWDGIHONAG9xlf9dcWHXTM5X3OpjztzvoVRfpy
 nNZ+U6MzIrCrUKoK8e7hXiAzN5PgAITOS0XOYpPkcv1/qvwiVKMCdfqHfrLOBbbvR5bK
 zFXJt/thT1GVS/KgT9r9px3QK/gmIzNEmClQ/3xeU9kBb3JEklSMpIJ9BGUrbDSaQvs0
 3QrpJmk8lJMwqPHVazFHd4jO2ObCN506BCPo2irLvsM105gHNU6Q2Xyv6SYDN4D36+vn
 xRcA==
X-Gm-Message-State: APjAAAVLf4E1fNVPqqR5wdc/t/9j/uQeSySVXnIlFqY5CeNWq+Tk3FfY
 UzUfODgTUXUdUWmKlP2MmR5hDO2UyRmp+PV14Pjl0uXH3Ls=
X-Google-Smtp-Source: APXvYqyJUHjucl1jflblfeBPmndUIb6s4Oii/e+HUhcoVb98yV/tcD4REWZLIGo28NJHbMfjnbuqYTSzbIsmkT2jMsQ=
X-Received: by 2002:a05:6830:1649:: with SMTP id
 h9mr3032648otr.281.1572987516228; 
 Tue, 05 Nov 2019 12:58:36 -0800 (PST)
MIME-Version: 1.0
References: <20191105193829.11599-1-daniel.vetter@ffwll.ch>
 <157298628160.18566.1185169568557179711@skylake-alporthouse-com>
In-Reply-To: <157298628160.18566.1185169568557179711@skylake-alporthouse-com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 5 Nov 2019 21:58:25 +0100
Message-ID: <CAKMK7uFW7PqFjcci4SdLGMoSK6gqMK-gPU0OHpoJFjVZJnYT=w@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=3X+L4JDP/5X+/ckuq/BR+0CZNNx3fzVpdhwpoW2+lc0=;
 b=X9SPx3ck5P9l/iE9D54hH+cd3ggVq35pdtYOys21yGhFVoUN6M4cAWW2AIk8Q8KTNe
 oofv7CDVNpXihOjaFnQzm85cmelA54ejpD8nxWEyjGQQrbak+SX2GmMNf8tR71oeW0sR
 YDCpntlWs1MecJhydADV4kasFkzjrae7Te7Qk=
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Don't select BROKEN
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBOb3YgNSwgMjAxOSBhdCA5OjM4IFBNIENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPiB3cm90ZToKPgo+IFF1b3RpbmcgRGFuaWVsIFZldHRlciAoMjAxOS0xMS0w
NSAxOTozODoyOSkKPiA+IEl0J3MgYnJva2VuLgo+ID4KPiA+IFJlcG9ydGVkLWJ5OiBTdGVwaGVu
IFJvdGh3ZWxsIDxzZnJAY2FuYi5hdXVnLm9yZy5hdT4KPiA+IFJlZmVyZW5jZXM6IGh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL2FyY2hpdmVzL2RyaS1kZXZlbC8yMDE5LU5vdmVtYmVyLzI0
MjYyNS5odG1sCj4gPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVy
QGludGVsLmNvbT4KPiA+IC0tLQo+ID4gTm90ZTogUHJvYmFibHkgYmVzdCB0byBhcHBseSB0aGlz
IGRpcmVjdGx5IG9udG8gZHJtLW5leHQgdG8gYXZvaWQKPiA+IGhhdmluZyBkcm0tbmV4dCBkcm9w
cGVkIGZyb20gbGludXgtbmV4dCB1bnRpbCB0aGUgbmV4dCBwdWxsIHJlcXVlc3QuCj4gPiAtRGFu
aWVsCj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLmRlYnVnIHwgMSAt
Cj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgZGVsZXRpb24oLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1ZyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L0tjb25maWcuZGVidWcKPiA+IGluZGV4IGVmMTIzZWIyOTE2OC4uZDJiYThmN2U1ZTUwIDEwMDY0
NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1Zwo+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1Zwo+ID4gQEAgLTQ0LDcgKzQ0LDYgQEAg
Y29uZmlnIERSTV9JOTE1X0RFQlVHCj4gPiAgICAgICAgIHNlbGVjdCBEUk1fSTkxNV9TRUxGVEVT
VAo+ID4gICAgICAgICBzZWxlY3QgRFJNX0k5MTVfREVCVUdfUlVOVElNRV9QTQo+ID4gICAgICAg
ICBzZWxlY3QgRFJNX0k5MTVfREVCVUdfTU1JTwo+ID4gLSAgICAgICBzZWxlY3QgQlJPS0VOICMg
Zm9yIHByb3RvdHlwZSB1QVBJCj4KPiBZb3UgaGF2ZSB0byByZXBsYWNlIGl0IHdpdGggYW5vdGhl
ciBzZWNyZXQgYm9vbCBhcyB5b3UgY2Fubm90IG90aGVyd2lzZQo+IGVuYWJsZSBDT05GSUdfQlJP
S0VOIGluIC5jb25maWcuCgpPciB0aGlzOgoKZGlmZiAtLWdpdCBhL2luaXQvS2NvbmZpZyBiL2lu
aXQvS2NvbmZpZwppbmRleCBiNGRhYWQyYmFjMjMuLjRkYmVhMWI5ZTZiYiAxMDA2NDQKLS0tIGEv
aW5pdC9LY29uZmlnCisrKyBiL2luaXQvS2NvbmZpZwpAQCAtNzUsNiArNzUsNyBAQCBtZW51ICJH
ZW5lcmFsIHNldHVwIgoKIGNvbmZpZyBCUk9LRU4KICAgICAgICBib29sCisgICAgICAgZGVmYXVs
dCB5CgogY29uZmlnIEJST0tFTl9PTl9TTVAKICAgICAgICBib29sCgpFaXRoZXIgd2F5IGl0IG5l
ZWRzIHRvIGJlIGluIHRvcGljL2NvcmUtZm9yLUNJLCBub3QgaW4gYW55IG9mZmljaWFsCnRyZWUu
IEJlY2F1c2UgaWYgeW91IGFsbG93IGF1dG9idWlsZGVycyB0byBlbmFibGUgQ09ORklHX0JST0tF
Tiwgbm8KbWF0dGVyIGhvdyB3ZWxsIGhpZGRlbiwgdGhleSdsbCBhbGwgYnJlYWsuIFlvdSBjYW4g
YWxzbyBqdXN0IHJldmVydCBteQpwYXRjaCB0aGF0IERhdmUgcHVzaGVkIHRvIGRybS1uZXh0ICh0
byBnZXQgdXMgYmFjayBpbnRvIHRoZSBsaW51eC1uZXh0CmNsdWIpLgotRGFuaWVsCi0tIApEYW5p
ZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgorNDEgKDApIDc5
IDM2NSA1NyA0OCAtIGh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
