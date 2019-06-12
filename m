Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F11D241969
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2019 02:26:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59135891AA;
	Wed, 12 Jun 2019 00:26:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com
 [IPv6:2607:f8b0:4864:20::e42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3745B891AC
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jun 2019 00:25:59 +0000 (UTC)
Received: by mail-vs1-xe42.google.com with SMTP id l20so9151736vsp.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 17:25:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KRAxkF68gmKecn3z+xJVKQmHHe3fhnjLkR6e2Rk4Xyw=;
 b=P25BmMTsB7FAtZaar+4XznQk/hskKOA2h8yv8xXKdUkJH8IkTOIcwdqh+71byFIWcU
 FN3Y/WU1RSpxQmSyzSQP/duEph/qRZAAU0UWiKkDw4ZasppgAyMhX+Bk9H1EULU1Wxmu
 9lrNmMssjEXxsxlyuEiNuJz1Botx/0BXIhVz6Z+HNawr4VAhJcZgMUdLsoATYhmijbOb
 NTa6H1JY8nGKtTeHP5XevQJQN3XGkZVK528Ly27ARmxAkjMDvZPbeyf6b0B4qvioOE8s
 S2VEXiZSmS+qTdGXBnycer+zi0PSe/LlDkt66MlMmCS+PytwbjRwKZBikdoj0tABXESF
 OG7Q==
X-Gm-Message-State: APjAAAVz3v3LI7qcokMrv00kQMRRj3HwRdIpT9bJvb9aR6NB8nAJIT3v
 m1y1XW2+2oXZDM1ujIXFMcnvLT1r39eNXIeNOki+fg==
X-Google-Smtp-Source: APXvYqyBOE2/PeatQjMLag/dgZW9nIv+g21QttCDT2gu4AyyqqE25wxvF/WmWHqkySY61fNGAHCWU09UoCZNZ8g35DI=
X-Received: by 2002:a67:ea42:: with SMTP id r2mr31201742vso.207.1560299158074; 
 Tue, 11 Jun 2019 17:25:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190611040350.90064-1-dbasehore@chromium.org>
 <20190611040350.90064-4-dbasehore@chromium.org>
 <20190611085722.GX21222@phenom.ffwll.local>
In-Reply-To: <20190611085722.GX21222@phenom.ffwll.local>
From: "dbasehore ." <dbasehore@chromium.org>
Date: Tue, 11 Jun 2019 17:25:47 -0700
Message-ID: <CAGAzgsr2sh5B1xi_ztQPN0xoQsZd26DDXwWT_qqJ68XeKReJ_Q@mail.gmail.com>
To: Derek Basehore <dbasehore@chromium.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>, 
 David Airlie <airlied@linux.ie>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Matthias Brugger <matthias.bgg@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, 
 devicetree@vger.kernel.org, Intel Graphics <intel-gfx@lists.freedesktop.org>, 
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, 
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=KRAxkF68gmKecn3z+xJVKQmHHe3fhnjLkR6e2Rk4Xyw=;
 b=fJnj+niayR1N1ZzWwcqhYntA6jPdSi35aIBMUPGQoq+fZuXbt6Wr6mmgcT8Li0DIbl
 mZ2rnLWVOMBADToUfCnXK8dduYeGZIhdvwAbBqOL/0VDH2EXhFYIC3SscfoxzwRtMruh
 aQxEGghx7B2GqXT7GjKG0V9vlxKyPvJG2ZRNA=
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/panel: Add attach/detach callbacks
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdW4gMTEsIDIwMTkgYXQgMTo1NyBBTSBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3
bGwuY2g+IHdyb3RlOgo+Cj4gT24gTW9uLCBKdW4gMTAsIDIwMTkgYXQgMDk6MDM6NDhQTSAtMDcw
MCwgRGVyZWsgQmFzZWhvcmUgd3JvdGU6Cj4gPiBUaGlzIGFkZHMgdGhlIGF0dGFjaC9kZXRhY2gg
Y2FsbGJhY2tzLiBUaGVzZSBhcmUgZm9yIHNldHRpbmcgdXAKPiA+IGludGVybmFsIHN0YXRlIGZv
ciB0aGUgY29ubmVjdG9yL3BhbmVsIHBhaXIgdGhhdCBjYW4ndCBiZSBkb25lIGF0Cj4gPiBwcm9i
ZSAoc2luY2UgdGhlIGNvbm5lY3RvciBkb2Vzbid0IGV4aXN0KSBhbmQgd2hpY2ggZG9uJ3QgbmVl
ZCB0byBiZQo+ID4gcmVwZWF0ZWRseSBkb25lIGZvciBldmVyeSBnZXQvbW9kZXMsIHByZXBhcmUs
IG9yIGVuYWJsZSBjYWxsYmFjay4KPiA+IFZhbHVlcyBzdWNoIGFzIHRoZSBwYW5lbCBvcmllbnRh
dGlvbiwgYW5kIGRpc3BsYXkgc2l6ZSBjYW4gYmUgZmlsbGVkCj4gPiBpbiBmb3IgdGhlIGNvbm5l
Y3Rvci4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBEZXJlayBCYXNlaG9yZSA8ZGJhc2Vob3JlQGNo
cm9taXVtLm9yZz4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fcGFuZWwuYyB8IDE0
ICsrKysrKysrKysrKysrCj4gPiAgaW5jbHVkZS9kcm0vZHJtX3BhbmVsLmggICAgIHwgIDQgKysr
Kwo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3BhbmVsLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3Bh
bmVsLmMKPiA+IGluZGV4IDNiNjg5Y2U0YTUxYS4uNzJmNjc2NzhkOWQ1IDEwMDY0NAo+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2RybV9wYW5lbC5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
ZHJtX3BhbmVsLmMKPiA+IEBAIC0xMDQsMTIgKzEwNCwyMyBAQCBFWFBPUlRfU1lNQk9MKGRybV9w
YW5lbF9yZW1vdmUpOwo+ID4gICAqLwo+ID4gIGludCBkcm1fcGFuZWxfYXR0YWNoKHN0cnVjdCBk
cm1fcGFuZWwgKnBhbmVsLCBzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKQo+ID4gIHsK
PiA+ICsgICAgIGludCByZXQ7Cj4gPiArCj4gPiAgICAgICBpZiAocGFuZWwtPmNvbm5lY3RvcikK
PiA+ICAgICAgICAgICAgICAgcmV0dXJuIC1FQlVTWTsKPiA+Cj4gPiAgICAgICBwYW5lbC0+Y29u
bmVjdG9yID0gY29ubmVjdG9yOwo+ID4gICAgICAgcGFuZWwtPmRybSA9IGNvbm5lY3Rvci0+ZGV2
Owo+ID4KPiA+ICsgICAgIGlmIChwYW5lbC0+ZnVuY3MtPmF0dGFjaCkgewo+ID4gKyAgICAgICAg
ICAgICByZXQgPSBwYW5lbC0+ZnVuY3MtPmF0dGFjaChwYW5lbCk7Cj4gPiArICAgICAgICAgICAg
IGlmIChyZXQgPCAwKSB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgcGFuZWwtPmNvbm5lY3Rv
ciA9IE5VTEw7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgcGFuZWwtPmRybSA9IE5VTEw7Cj4g
PiArICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiA+ICsgICAgICAgICAgICAgfQo+
ID4gKyAgICAgfQo+Cj4gV2h5IGNhbid0IHdlIGp1c3QgaW1wbGVtZW50IHRoaXMgaW4gdGhlIGRy
bSBoZWxwZXJzIGZvciBldmVyeW9uZSwgYnkgZS5nLgo+IHN0b3JpbmcgYSBkdCBub2RlIGluIGRy
bV9wYW5lbD8gRmVlbHMgYSBiaXQgb3ZlcmtpbGwgdG8gaGF2ZSB0aGVzZSBuZXcKPiBob29rcyBo
ZXJlLgo+Cj4gQWxzbywgbXkgdW5kZXJzdGFuZGluZyBpcyB0aGF0IHRoaXMgZHQgc3R1ZmYgaXMg
c3VwcG9zZWQgdG8gYmUKPiBzdGFuZGFyZGl6ZWQsIHNvIHRoaXMgc2hvdWxkIHdvcmsuCgpTbyBk
byB5b3Ugd2FudCBhbGwgb2YgdGhpcyBpbmZvcm1hdGlvbiBhZGRlZCB0byB0aGUgZHJtX3BhbmVs
IHN0cnVjdD8KSWYgd2UgZG8gdGhhdCwgd2UgZG9uJ3QgbmVjZXNzYXJpbHkgZXZlbiBuZWVkIHRo
ZSBkcm0gaGVscGVyIGZ1bmN0aW9uLgpXZSBjb3VsZCBqdXN0IGNvcHkgdGhlIHZhbHVlcyBvdmVy
IGhlcmUgaW4gdGhlIGRybV9wYW5lbF9hdHRhY2gKZnVuY3Rpb24gKGFuZCBjbGVhciB0aGVtIGlu
IGRybV9wYW5lbF9kZXRhY2gpLgoKPiAtRGFuaWVsCj4KPiA+ICsKPiA+ICAgICAgIHJldHVybiAw
Owo+ID4gIH0KPiA+ICBFWFBPUlRfU1lNQk9MKGRybV9wYW5lbF9hdHRhY2gpOwo+ID4gQEAgLTEy
OCw2ICsxMzksOSBAQCBFWFBPUlRfU1lNQk9MKGRybV9wYW5lbF9hdHRhY2gpOwo+ID4gICAqLwo+
ID4gIGludCBkcm1fcGFuZWxfZGV0YWNoKHN0cnVjdCBkcm1fcGFuZWwgKnBhbmVsKQo+ID4gIHsK
PiA+ICsgICAgIGlmIChwYW5lbC0+ZnVuY3MtPmRldGFjaCkKPiA+ICsgICAgICAgICAgICAgcGFu
ZWwtPmZ1bmNzLT5kZXRhY2gocGFuZWwpOwo+ID4gKwo+ID4gICAgICAgcGFuZWwtPmNvbm5lY3Rv
ciA9IE5VTEw7Cj4gPiAgICAgICBwYW5lbC0+ZHJtID0gTlVMTDsKPiA+Cj4gPiBkaWZmIC0tZ2l0
IGEvaW5jbHVkZS9kcm0vZHJtX3BhbmVsLmggYi9pbmNsdWRlL2RybS9kcm1fcGFuZWwuaAo+ID4g
aW5kZXggMTM2MzFiMmVmYmFhLi5lMTM2ZTNhM2M5OTYgMTAwNjQ0Cj4gPiAtLS0gYS9pbmNsdWRl
L2RybS9kcm1fcGFuZWwuaAo+ID4gKysrIGIvaW5jbHVkZS9kcm0vZHJtX3BhbmVsLmgKPiA+IEBA
IC0zNyw2ICszNyw4IEBAIHN0cnVjdCBkaXNwbGF5X3RpbWluZzsKPiA+ICAgKiBzdHJ1Y3QgZHJt
X3BhbmVsX2Z1bmNzIC0gcGVyZm9ybSBvcGVyYXRpb25zIG9uIGEgZ2l2ZW4gcGFuZWwKPiA+ICAg
KiBAZGlzYWJsZTogZGlzYWJsZSBwYW5lbCAodHVybiBvZmYgYmFjayBsaWdodCwgZXRjLikKPiA+
ICAgKiBAdW5wcmVwYXJlOiB0dXJuIG9mZiBwYW5lbAo+ID4gKyAqIEBkZXRhY2g6IGRldGFjaCBw
YW5lbC0+Y29ubmVjdG9yIChjbGVhciBpbnRlcm5hbCBzdGF0ZSwgZXRjLikKPiA+ICsgKiBAYXR0
YWNoOiBhdHRhY2ggcGFuZWwtPmNvbm5lY3RvciAodXBkYXRlIGludGVybmFsIHN0YXRlLCBldGMu
KQo+ID4gICAqIEBwcmVwYXJlOiB0dXJuIG9uIHBhbmVsIGFuZCBwZXJmb3JtIHNldCB1cAo+ID4g
ICAqIEBlbmFibGU6IGVuYWJsZSBwYW5lbCAodHVybiBvbiBiYWNrIGxpZ2h0LCBldGMuKQo+ID4g
ICAqIEBnZXRfbW9kZXM6IGFkZCBtb2RlcyB0byB0aGUgY29ubmVjdG9yIHRoYXQgdGhlIHBhbmVs
IGlzIGF0dGFjaGVkIHRvIGFuZAo+ID4gQEAgLTcwLDYgKzcyLDggQEAgc3RydWN0IGRpc3BsYXlf
dGltaW5nOwo+ID4gIHN0cnVjdCBkcm1fcGFuZWxfZnVuY3Mgewo+ID4gICAgICAgaW50ICgqZGlz
YWJsZSkoc3RydWN0IGRybV9wYW5lbCAqcGFuZWwpOwo+ID4gICAgICAgaW50ICgqdW5wcmVwYXJl
KShzdHJ1Y3QgZHJtX3BhbmVsICpwYW5lbCk7Cj4gPiArICAgICB2b2lkICgqZGV0YWNoKShzdHJ1
Y3QgZHJtX3BhbmVsICpwYW5lbCk7Cj4gPiArICAgICBpbnQgKCphdHRhY2gpKHN0cnVjdCBkcm1f
cGFuZWwgKnBhbmVsKTsKPiA+ICAgICAgIGludCAoKnByZXBhcmUpKHN0cnVjdCBkcm1fcGFuZWwg
KnBhbmVsKTsKPiA+ICAgICAgIGludCAoKmVuYWJsZSkoc3RydWN0IGRybV9wYW5lbCAqcGFuZWwp
Owo+ID4gICAgICAgaW50ICgqZ2V0X21vZGVzKShzdHJ1Y3QgZHJtX3BhbmVsICpwYW5lbCk7Cj4g
PiAtLQo+ID4gMi4yMi4wLnJjMi4zODMuZ2Y0ZmJiZjMwYzItZ29vZwo+ID4KPgo+IC0tCj4gRGFu
aWVsIFZldHRlcgo+IFNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgo+IGh0dHA6
Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
