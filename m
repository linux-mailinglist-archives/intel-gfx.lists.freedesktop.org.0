Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B0174148
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2019 00:15:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EF706E65C;
	Wed, 24 Jul 2019 22:15:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com
 [IPv6:2607:f8b0:4864:20::944])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 428AE6E665
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 22:15:32 +0000 (UTC)
Received: by mail-ua1-x944.google.com with SMTP id 8so19040954uaz.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 15:15:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h6iTGbrUj20I8zXniTeQ544bNCuLGyZB+YlcvBGsDjw=;
 b=UP1ptmSDT5HYsiJ4Cy4r0EsFMUOXw0aTpu/cFtXmu6LSnhw1pfFTOshzM5xOH87HIF
 0vdO6ws6HLTtFS2hHNz2Pdim3jdlD1xjcUfry/nL30VfW3ToQBt4l+M2eRkb5aF1C/3s
 Y1xzbGvPQVGbFMMrF5egCwUncLkX5dIb9ujHcmFMIx4p4eg1tT2wReVPZD4rFu7Fg429
 V2hTdtJgasAb8fsE6v/fA52dKtFWiHvGY/IF0/qc3xlpUJlnv5NvzhCn4F9aGukKzgaB
 mXyHTqvVGhVB+RU5sQkG/5Zo/VDxbD/ypvp903AiRPCJvCliCskgVTborO8OlsY6nup2
 wROw==
X-Gm-Message-State: APjAAAW5ZfStYPVttDzwsiUyZ4uY+FHRKFaYwzj+aTPhqH5rZepQF0bA
 9jft4YqdGpLSXbs3RNQC3oLnPc5hvGo6hpCxYsgKMg==
X-Google-Smtp-Source: APXvYqx7BFn9iOZ2wlwR0mjBuA9rIFMZM3RWFpJKuC+0oBv8yw1N5p6TIxqSauPfez/DPzzJ4xYri1jiwaditw5mz3E=
X-Received: by 2002:ab0:614d:: with SMTP id w13mr34675942uan.66.1564006530811; 
 Wed, 24 Jul 2019 15:15:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190710021659.177950-1-dbasehore@chromium.org>
 <20190710021659.177950-3-dbasehore@chromium.org>
 <20190723091945.GD787@ravnborg.org>
In-Reply-To: <20190723091945.GD787@ravnborg.org>
From: "dbasehore ." <dbasehore@chromium.org>
Date: Wed, 24 Jul 2019 15:15:19 -0700
Message-ID: <CAGAzgsonxAcOLxPSoP6Swab+AFPxWaxmC_tg87J=6Nes_awACg@mail.gmail.com>
To: Sam Ravnborg <sam@ravnborg.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=h6iTGbrUj20I8zXniTeQ544bNCuLGyZB+YlcvBGsDjw=;
 b=QjMnrXveL05m7SHFOkDi+a02nbwWABa8uU8sNtH30U4t6yef45p+bYczQ9t7NU/950
 mTkzHvr0KUu9Gz63UOr+C9TUeTOcrYKzHzRbGoLZrL02mYYBlsT+wdqezNU65Lmixk/C
 UBThtKqkwyQehSA5xllnpBSs2w4OYjl1HLulM=
Subject: Re: [Intel-gfx] [PATCH v7 2/4] drm/panel: set display info in panel
 attach
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgU2FtLCB0aGFua3MgZm9yIHBvaW50aW5nIG91dCB0aGUgcG90ZW50aWFsIGNvbmZsaWN0LgoK
T24gVHVlLCBKdWwgMjMsIDIwMTkgYXQgMjoxOSBBTSBTYW0gUmF2bmJvcmcgPHNhbUByYXZuYm9y
Zy5vcmc+IHdyb3RlOgo+Cj4gSGkgRGVyZWsuCj4KPiBPbiBUdWUsIEp1bCAwOSwgMjAxOSBhdCAw
NzoxNjo1N1BNIC0wNzAwLCBEZXJlayBCYXNlaG9yZSB3cm90ZToKPiA+IERldmljZXRyZWUgc3lz
dGVtcyBjYW4gc2V0IHBhbmVsIG9yaWVudGF0aW9uIHZpYSBhIHBhbmVsIGJpbmRpbmcsIGJ1dAo+
ID4gdGhlcmUncyBubyB3YXksIGFzIGlzLCB0byBwcm9wYWdhdGUgdGhpcyBzZXR0aW5nIHRvIHRo
ZSBjb25uZWN0b3IsCj4gPiB3aGVyZSB0aGUgcHJvcGVydHkgbmVlZCB0byBiZSBhZGRlZC4KPiA+
IFRvIGFkZHJlc3MgdGhpcywgdGhpcyBwYXRjaCBzZXRzIG9yaWVudGF0aW9uLCBhcyB3ZWxsIGFz
IG90aGVyIGZpeGVkCj4gPiB2YWx1ZXMgZm9yIHRoZSBwYW5lbCwgaW4gdGhlIGRybV9wYW5lbF9h
dHRhY2ggZnVuY3Rpb24uIFRoZXNlIHZhbHVlcwo+ID4gYXJlIHN0b3JlZCBmcm9tIHByb2JlIGlu
IHRoZSBkcm1fcGFuZWwgc3RydWN0Lgo+Cj4gVGhpcyBhcHByb2NoIHNlZW1zIHRvIGNvbmZsaWN0
IHdpdGggd29yayBkb25lIGJ5IExhdXJlbnQgd2hlcmUgdGhlCj4gb3duZXJzaGlwL2NyZWF0aW9u
IG9mIHRoZSBjb25uZWN0b3Igd2lsbCBiZSBtb3ZlZCB0byB0aGUgZGlzcGxheSBjb250cm9sbGVy
Lgo+Cj4gSWYgSSB1bmRlcnN0YW5kIGl0IGNvcnJlY3QgdGhlbiB0aGVyZSBzaG91bGQgbm90IGJl
IGEgMToxIHJlbGF0aW9uCj4gYmV0d2VlbiBhIHBhbmVsIGFuZCBhIGNvbm5lY3RvciBhbnltb3Jl
LgoKCkNhbiB5b3UgcG9pbnQgbWUgdG8gdGhpcyB3b3JrPyBJIHN0aWxsIHNlZSB0aGUgbG9uZSBk
cm1fZGlzcGxheV9pbmZvCnN0cnVjdCBpbiB0aGUgZHJtX2Nvbm5lY3RvciBzdHJ1Y3QuIFRoaXMg
c2VlbXMgdG8gaW5kaWNhdGUgdGhhdCB0aGUKa2VybmVsIHN0aWxsIGFzc3VtZSBvbmUgZGlzcGxh
eSBwZXIgY29ubmVjdG9yLgoKPgo+IFdlIHNob3VsZCBub3QgdHJ5IHRvIHdvcmsgaW4gdHdvIGRp
ZmZlcmVudCBkaXJlY3Rpb25zIHdpdGggdGhpcy4KPiBMYXVyZW50LCBjYW4geW91IGNvbW1lbnQg
b24gdGhpcz8KPgo+IElmIHdlIG1vdmUgZm9yYXJkIHdpdGggdGhpcyBwYXRjaCwgdGhlbiBhbGwg
ZmllbGRzIGluIGRybV9wYW5lbCBuZWVkcwo+IGtlcm5lbC1kb2MgLSBwcmVmZXJhYmx5IGlubGlu
ZS4KPgo+ICAgICAgICAgU2FtCj4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBEZXJlayBCYXNlaG9y
ZSA8ZGJhc2Vob3JlQGNocm9taXVtLm9yZz4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9k
cm1fcGFuZWwuYyB8IDI4ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiA+ICBpbmNsdWRl
L2RybS9kcm1fcGFuZWwuaCAgICAgfCAxNCArKysrKysrKysrKysrKwo+ID4gIDIgZmlsZXMgY2hh
bmdlZCwgNDIgaW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vZHJtX3BhbmVsLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3BhbmVsLmMKPiA+IGluZGV4IDE2
OWJhYjU0ZDUyZC4uY2EwMTA5NTQ3MGE5IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2RybV9wYW5lbC5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3BhbmVsLmMKPiA+IEBA
IC0xMDQsMTEgKzEwNCwyMyBAQCBFWFBPUlRfU1lNQk9MKGRybV9wYW5lbF9yZW1vdmUpOwo+ID4g
ICAqLwo+ID4gIGludCBkcm1fcGFuZWxfYXR0YWNoKHN0cnVjdCBkcm1fcGFuZWwgKnBhbmVsLCBz
dHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKQo+ID4gIHsKPiA+ICsgICAgIHN0cnVjdCBk
cm1fZGlzcGxheV9pbmZvICppbmZvOwo+ID4gKwo+ID4gICAgICAgaWYgKHBhbmVsLT5jb25uZWN0
b3IpCj4gPiAgICAgICAgICAgICAgIHJldHVybiAtRUJVU1k7Cj4gPgo+ID4gICAgICAgcGFuZWwt
PmNvbm5lY3RvciA9IGNvbm5lY3RvcjsKPiA+ICAgICAgIHBhbmVsLT5kcm0gPSBjb25uZWN0b3It
PmRldjsKPiA+ICsgICAgIGluZm8gPSAmY29ubmVjdG9yLT5kaXNwbGF5X2luZm87Cj4gPiArICAg
ICBpbmZvLT53aWR0aF9tbSA9IHBhbmVsLT53aWR0aF9tbTsKPiA+ICsgICAgIGluZm8tPmhlaWdo
dF9tbSA9IHBhbmVsLT5oZWlnaHRfbW07Cj4gPiArICAgICBpbmZvLT5icGMgPSBwYW5lbC0+YnBj
Owo+ID4gKyAgICAgaW5mby0+cGFuZWxfb3JpZW50YXRpb24gPSBwYW5lbC0+b3JpZW50YXRpb247
Cj4gPiArICAgICBpbmZvLT5idXNfZmxhZ3MgPSBwYW5lbC0+YnVzX2ZsYWdzOwo+ID4gKyAgICAg
aWYgKHBhbmVsLT5idXNfZm9ybWF0cykKPiA+ICsgICAgICAgICAgICAgZHJtX2Rpc3BsYXlfaW5m
b19zZXRfYnVzX2Zvcm1hdHMoJmNvbm5lY3Rvci0+ZGlzcGxheV9pbmZvLAo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwYW5lbC0+YnVzX2Zvcm1hdHMs
Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBhbmVs
LT5udW1fYnVzX2Zvcm1hdHMpOwo+ID4KPiA+ICAgICAgIHJldHVybiAwOwo+ID4gIH0KPiA+IEBA
IC0xMjgsNiArMTQwLDIyIEBAIEVYUE9SVF9TWU1CT0woZHJtX3BhbmVsX2F0dGFjaCk7Cj4gPiAg
ICovCj4gPiAgaW50IGRybV9wYW5lbF9kZXRhY2goc3RydWN0IGRybV9wYW5lbCAqcGFuZWwpCj4g
PiAgewo+ID4gKyAgICAgc3RydWN0IGRybV9kaXNwbGF5X2luZm8gKmluZm87Cj4gPiArCj4gPiAr
ICAgICBpZiAoIXBhbmVsLT5jb25uZWN0b3IpCj4gPiArICAgICAgICAgICAgIGdvdG8gb3V0Owo+
ID4gKwo+ID4gKyAgICAgaW5mbyA9ICZwYW5lbC0+Y29ubmVjdG9yLT5kaXNwbGF5X2luZm87Cj4g
PiArICAgICBpbmZvLT53aWR0aF9tbSA9IDA7Cj4gPiArICAgICBpbmZvLT5oZWlnaHRfbW0gPSAw
Owo+ID4gKyAgICAgaW5mby0+YnBjID0gMDsKPiA+ICsgICAgIGluZm8tPnBhbmVsX29yaWVudGF0
aW9uID0gRFJNX01PREVfUEFORUxfT1JJRU5UQVRJT05fVU5LTk9XTjsKPiA+ICsgICAgIGluZm8t
PmJ1c19mbGFncyA9IDA7Cj4gPiArICAgICBrZnJlZShpbmZvLT5idXNfZm9ybWF0cyk7Cj4gPiAr
ICAgICBpbmZvLT5idXNfZm9ybWF0cyA9IE5VTEw7Cj4gPiArICAgICBpbmZvLT5udW1fYnVzX2Zv
cm1hdHMgPSAwOwo+ID4gKwo+ID4gK291dDoKPiA+ICAgICAgIHBhbmVsLT5jb25uZWN0b3IgPSBO
VUxMOwo+ID4gICAgICAgcGFuZWwtPmRybSA9IE5VTEw7Cj4gPgo+ID4gZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvZHJtL2RybV9wYW5lbC5oIGIvaW5jbHVkZS9kcm0vZHJtX3BhbmVsLmgKPiA+IGluZGV4
IGZjN2RhNTVmNDFkOS4uYTZhODgxYjk4N2RkIDEwMDY0NAo+ID4gLS0tIGEvaW5jbHVkZS9kcm0v
ZHJtX3BhbmVsLmgKPiA+ICsrKyBiL2luY2x1ZGUvZHJtL2RybV9wYW5lbC5oCj4gPiBAQCAtMzks
NiArMzksOCBAQCBlbnVtIGRybV9wYW5lbF9vcmllbnRhdGlvbjsKPiA+ICAgKiBzdHJ1Y3QgZHJt
X3BhbmVsX2Z1bmNzIC0gcGVyZm9ybSBvcGVyYXRpb25zIG9uIGEgZ2l2ZW4gcGFuZWwKPiA+ICAg
KiBAZGlzYWJsZTogZGlzYWJsZSBwYW5lbCAodHVybiBvZmYgYmFjayBsaWdodCwgZXRjLikKPiA+
ICAgKiBAdW5wcmVwYXJlOiB0dXJuIG9mZiBwYW5lbAo+ID4gKyAqIEBkZXRhY2g6IGRldGFjaCBw
YW5lbC0+Y29ubmVjdG9yIChjbGVhciBpbnRlcm5hbCBzdGF0ZSwgZXRjLikKPiA+ICsgKiBAYXR0
YWNoOiBhdHRhY2ggcGFuZWwtPmNvbm5lY3RvciAodXBkYXRlIGludGVybmFsIHN0YXRlLCBldGMu
KQo+ID4gICAqIEBwcmVwYXJlOiB0dXJuIG9uIHBhbmVsIGFuZCBwZXJmb3JtIHNldCB1cAo+ID4g
ICAqIEBlbmFibGU6IGVuYWJsZSBwYW5lbCAodHVybiBvbiBiYWNrIGxpZ2h0LCBldGMuKQo+ID4g
ICAqIEBnZXRfbW9kZXM6IGFkZCBtb2RlcyB0byB0aGUgY29ubmVjdG9yIHRoYXQgdGhlIHBhbmVs
IGlzIGF0dGFjaGVkIHRvIGFuZAo+ID4gQEAgLTk1LDYgKzk3LDE4IEBAIHN0cnVjdCBkcm1fcGFu
ZWwgewo+ID4KPiA+ICAgICAgIGNvbnN0IHN0cnVjdCBkcm1fcGFuZWxfZnVuY3MgKmZ1bmNzOwo+
ID4KPiA+ICsgICAgIC8qCj4gPiArICAgICAgKiBwYW5lbCBpbmZvcm1hdGlvbiB0byBiZSBzZXQg
aW4gdGhlIGNvbm5lY3RvciB3aGVuIHRoZSBwYW5lbCBpcwo+ID4gKyAgICAgICogYXR0YWNoZWQu
Cj4gPiArICAgICAgKi8KPiA+ICsgICAgIHVuc2lnbmVkIGludCB3aWR0aF9tbTsKPiA+ICsgICAg
IHVuc2lnbmVkIGludCBoZWlnaHRfbW07Cj4gPiArICAgICB1bnNpZ25lZCBpbnQgYnBjOwo+ID4g
KyAgICAgaW50IG9yaWVudGF0aW9uOwo+ID4gKyAgICAgY29uc3QgdTMyICpidXNfZm9ybWF0czsK
PiA+ICsgICAgIHVuc2lnbmVkIGludCBudW1fYnVzX2Zvcm1hdHM7Cj4gPiArICAgICB1MzIgYnVz
X2ZsYWdzOwo+ID4gKwo+ID4gICAgICAgc3RydWN0IGxpc3RfaGVhZCBsaXN0Owo+ID4gIH07Cj4g
Pgo+ID4gLS0KPiA+IDIuMjIuMC40MTAuZ2Q4ZmRiZTIxYjUtZ29vZwo+ID4KPiA+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBkcmktZGV2ZWwgbWFp
bGluZyBsaXN0Cj4gPiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiBodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
