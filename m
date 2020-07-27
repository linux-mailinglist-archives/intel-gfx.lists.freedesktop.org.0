Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB4D22FB7D
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jul 2020 23:34:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 863FC6E049;
	Mon, 27 Jul 2020 21:34:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com
 [IPv6:2607:f8b0:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 606716E051
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jul 2020 21:34:46 +0000 (UTC)
Received: by mail-oi1-x241.google.com with SMTP id l63so15592295oih.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jul 2020 14:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=jqzAQoASCZMDCC5gd+Db8ofdYxtUVzThsog5yDyyqtI=;
 b=TrZAj+O+bsTW6aFobbRJi733rYptKtQSUIvBmPgTc7Qr+SSm1Im6MC9KhwyS05OSRi
 ka7JT41VoLZ2duBWIDStbEbbLkKsAJ9CpzHbqzEvSzJ778VBosSaNEA0604thsw6l+VM
 +x6qm7VEirzHDBL/1Usud7ie5F77kLOhzO640=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=jqzAQoASCZMDCC5gd+Db8ofdYxtUVzThsog5yDyyqtI=;
 b=ONGYHwfRR9zz8/MxeGK7YeAjBnshOxrJ547OG8bG8AHI3lVVXv81kRt7JwDt59D66Q
 Nd7DTax0ovYugRLWyQbN3Pb2XRsL389xS+IiVgwws7FcaZHNr43NCcam17hfDL7eoYKY
 ZXZBqwXAvxxnzDzvUOma7X8gZ2m+mUOPkI1nuU3YdyB3Wusu2VAyVses5pQib0Q0zvt6
 xptVp3htmC9GlJyxJwJXgHzYq7wWUnEw20ZBKW0stUDxJimAVGI6Hjby8Q7/CHzT6X8W
 DGPUH3hCppjIwknbReMFHCHoL+qrHjh8Abs5vujlIvs1t2vIgI8GwACjbhqFxVafKVyb
 KLdQ==
X-Gm-Message-State: AOAM531VvyeZ6t+wL30qxX4ioKrfnCRPpM8mvxwB6rppD1aGYRJneQ26
 z7h04P1zdFwLGtUBpDs5nUjWXkWKjAqVzv0Jvb9FbfWT
X-Google-Smtp-Source: ABdhPJxP6Z321smyS2JX83N5KGUJr1LeGc9DClR/D3AOsmYXbnS5CuIWgqDgmVuDfRZaJmQLVh1rwnJfUD2D4Fsg4T4=
X-Received: by 2002:a05:6808:88:: with SMTP id s8mr980848oic.101.1595885685675; 
 Mon, 27 Jul 2020 14:34:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200720113117.16131-1-karthik.b.s@intel.com>
 <20200720113117.16131-2-karthik.b.s@intel.com>
 <d67715965a3de220137db377953da700944e89e6.camel@intel.com>
 <f00f637e-639e-5d12-83bd-274ad0a23abe@daenzer.net>
In-Reply-To: <f00f637e-639e-5d12-83bd-274ad0a23abe@daenzer.net>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 27 Jul 2020 23:34:34 +0200
Message-ID: <CAKMK7uFzvuT81J38Y_4NnZx3xQhJ4Ha4dVyDy+pwCRF8gbuRVw@mail.gmail.com>
To: =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>
Subject: Re: [Intel-gfx] [PATCH v5 1/5] drm/i915: Add enable/disable flip
 done and flip done handler
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
Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>, "Kazlauskas,
 Nicholas" <nicholas.kazlauskas@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBKdWwgMjcsIDIwMjAgYXQgMjoyNyBQTSBNaWNoZWwgRMOkbnplciA8bWljaGVsQGRh
ZW56ZXIubmV0PiB3cm90ZToKPgo+IE9uIDIwMjAtMDctMjUgMToyNiBhLm0uLCBQYXVsbyBaYW5v
bmkgd3JvdGU6Cj4gPiBFbSBzZWcsIDIwMjAtMDctMjAgw6BzIDE3OjAxICswNTMwLCBLYXJ0aGlr
IEIgUyBlc2NyZXZldToKPiA+Pgo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwo+ID4+IGluZGV4
IDFmYTY3NzAwZDhmNC4uOTU5NTNiMzkzOTQxIDEwMDY0NAo+ID4+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfaXJxLmMKPiA+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2lycS5jCj4gPj4gQEAgLTY5NywxNCArNjk3LDI0IEBAIHUzMiBpOTE1X2dldF92YmxhbmtfY291
bnRlcihzdHJ1Y3QgZHJtX2NydGMgKmNydGMpCj4gPj4gICAgICByZXR1cm4gKCgoaGlnaDEgPDwg
OCkgfCBsb3cpICsgKHBpeGVsID49IHZibF9zdGFydCkpICYgMHhmZmZmZmY7Cj4gPj4gIH0KPiA+
Pgo+ID4+ICtzdGF0aWMgdTMyIGc0eF9nZXRfZmxpcF9jb3VudGVyKHN0cnVjdCBkcm1fY3J0YyAq
Y3J0YykKPiA+PiArewo+ID4+ICsgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
ID0gdG9faTkxNShjcnRjLT5kZXYpOwo+ID4+ICsgICAgZW51bSBwaXBlIHBpcGUgPSB0b19pbnRl
bF9jcnRjKGNydGMpLT5waXBlOwo+ID4+ICsKPiA+PiArICAgIHJldHVybiBJOTE1X1JFQUQoUElQ
RV9GTElQQ09VTlRfRzRYKHBpcGUpKTsKPiA+PiArfQo+ID4+ICsKPiA+PiAgdTMyIGc0eF9nZXRf
dmJsYW5rX2NvdW50ZXIoc3RydWN0IGRybV9jcnRjICpjcnRjKQo+ID4+ICB7Cj4gPj4gICAgICBz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmRldik7Cj4g
Pj4gICAgICBlbnVtIHBpcGUgcGlwZSA9IHRvX2ludGVsX2NydGMoY3J0YyktPnBpcGU7Cj4gPj4K
PiA+PiArICAgIGlmIChjcnRjLT5zdGF0ZS0+YXN5bmNfZmxpcCkKPiA+PiArICAgICAgICAgICAg
cmV0dXJuIGc0eF9nZXRfZmxpcF9jb3VudGVyKGNydGMpOwo+ID4+ICsKPiA+PiAgICAgIHJldHVy
biBJOTE1X1JFQUQoUElQRV9GUk1DT1VOVF9HNFgocGlwZSkpOwo+ID4KPiA+IEkgZG9uJ3QgdW5k
ZXJzdGFuZCB0aGUgaW50ZW50aW9uIGJlaGluZCB0aGlzLCBjYW4geW91IHBsZWFzZSBjbGFyaWZ5
Pwo+ID4gVGhpcyBnb2VzIGJhY2sgdG8gbXkgcmVwbHkgb2YgdGhlIGNvdmVyIGxldHRlci4gSXQg
c2VlbXMgdGhhdCBoZXJlCj4gPiB3ZSdyZSBnb2luZyB0byBhbHRlcm5hdGUgYmV0d2VlbiB0d28g
ZGlmZmVyZW50IGNvdW50ZXJzIGluIG91ciB2YmxhbmsKPiA+IGNvdW50LiBTbyBpZiB1c2VyIHNw
YWNlIGFsdGVybmF0ZXMgYmV0d2VlbiBzb21ldGltZXMgdXNpbmcgYXN5bmMgZmxpcHMKPiA+IGFu
ZCBzb21ldGltZXMgdXNpbmcgbm9ybWFsIGZsaXAgaXQncyBnb2luZyB0byBnZXQgc29tZSB2ZXJ5
IHdlaXJkCj4gPiBkZWx0YXMsIGlzbid0IGl0PyBBdCBsZWFzdCB0aGlzIGlzIHdoYXQgSSByZW1l
bWJlciBmcm9tIHdoZW4gSSBwbGF5ZWQKPiA+IHdpdGggdGhlc2UgcmVnaXN0ZXJzOiBGTElQQ09V
TlQgZHJpZnRzIGF3YXkgZnJvbSBGUk1DT1VOVCB3aGVuIHdlIHN0YXJ0Cj4gPiB1c2luZyBhc3lu
YyBmbGlwcy4KPgo+IFRoaXMgZGVmaW5pdGVseSBsb29rcyB3cm9uZy4gVGhlIGNvdW50ZXIgdmFs
dWUgcmV0dXJuZWQgYnkgdGhlCj4gZ2V0X3ZibGFua19jb3VudGVyIGhvb2sgaXMgc3VwcG9zZWQg
dG8gaW5jcmVtZW50IHdoZW4gYSB2ZXJ0aWNhbCBibGFuawo+IHBlcmlvZCBvY2N1cnM7IHBhZ2Ug
ZmxpcHMgYXJlIG5vdCBzdXBwb3NlZCB0byBhZmZlY3QgdGhpcyBpbiBhbnkgd2F5LgoKQWxzbyB5
b3UganVzdCBmbGF0IG91dCBjYW4ndCBhY2Nlc3MgY3J0Yy0+c3RhdGUgZnJvbSBpbnRlcnJ1cHQK
Y29udGV4dC4gQW55dGhpbmcgeW91IG5lZWQgaW4gdGhlcmUgbmVlZHMgdG8gYmUgcHJvdGVjdGVk
IGJ5IHRoZSByaWdodAppcnEtdHlwZSBzcGluX2xvY2ssIHVwZGF0ZXMgY29ycmVjdGx5IHN5bmNo
cm9uaXplZCBhZ2FpbnN0IGJvdGggdGhlCmludGVycnVwdCBoYW5kbGVyIGFuZCBhdG9taWMgdXBk
YXRlcywgYW5kIGRhdGEgY29waWVkIG92ZXIsIG5vdApwb2ludGVycy4gT3RoZXJ3aXNlIGp1c3Qg
Y3Jhc2gmYnVybi4KLURhbmllbAotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwg
SW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
