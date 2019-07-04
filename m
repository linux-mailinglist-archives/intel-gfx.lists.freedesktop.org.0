Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A03005F816
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 14:27:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF69B6E336;
	Thu,  4 Jul 2019 12:27:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com
 [IPv6:2607:f8b0:4864:20::941])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D2EA6E336
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 12:27:35 +0000 (UTC)
Received: by mail-ua1-x941.google.com with SMTP id j8so1080955uan.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Jul 2019 05:27:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o5CvAPizjmXMlgKSs5LLV/trAbLtrqEdRQaryCaEQdU=;
 b=ryWJxRfDBHwxVo+RWC/qpgCXiiPeftXCVWGwIPNhaVuuRBpFlIRYx0ykqvZjRW/enh
 J33DM8Y2egrbPDb0vjuTU/c5KLxlVvKqddLT3Sn+6YjIGAQJZ+e/vG3xWgHgdNIch3XE
 b+XBDM/4IEfHcidZ4IBIN/uW6+BdZ02l5CbePpvUkHHPSyuN98B5ciZCyHmmBfAj3WnL
 g/4NxipFWm8QTlkUSPZESLwrYuFkO+qdBrWrU34uZTHlgI1f8Y3GhNKq3fsnJ9IjrxfD
 4d01aSyZpXQ64DTu/9SO+15gj4StjWrPECNt3qf5rDBchrHeeVJvCJegbFRr/SKXLKrm
 59MQ==
X-Gm-Message-State: APjAAAUG3sQ2D1un4nE0LaEWd96YQI16gijeyL7WyP6eXG2j0ElhdVEH
 2LLcQZYvS1buCL4VBRfD2TIEMHKTCUr+RwSveeMQIdYz
X-Google-Smtp-Source: APXvYqwUUjunMPGPGkEmXjB0N4WMk08Z7FnWwVQgITvZ7TFp+GyoaWSr93cfdSL1Bw19FwBE8zQHhl4ETJuOEyLdwWM=
X-Received: by 2002:a9f:25e9:: with SMTP id 96mr21657285uaf.95.1562243254679; 
 Thu, 04 Jul 2019 05:27:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190704104345.6603-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190704104345.6603-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 4 Jul 2019 13:27:07 +0100
Message-ID: <CAM0jSHO7-Hn1J0W8r-VD1KK4=W=Xc1zqBRyr3456kGbz9dzxog@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=o5CvAPizjmXMlgKSs5LLV/trAbLtrqEdRQaryCaEQdU=;
 b=QVZWHMPLV3pVpkhdlhFyrKe3KNi65p+bRLBvW/nIsodqB/66DqZtKT0W3Lzc/GoZFw
 qmz5hT9QspDZF18xqucFTUk/7vsfmhqiX/JmTbLNU+Xiuebir0sG2dcFRC4k91WjVEpJ
 U0AGlegOFm/3EqB7M6tyTYZQ/wC8x0Cd0V3XNtz5vETg7X2Q4+SwRgsjIrVqIPsK/ZqF
 +rVBTOKJQzs3qLLEcFer6xZUVYY9tatNyccoaYPptZEXQh3MN9qqwNsRJxFoz+Ais0js
 r35LhmO3jmjzXEAKmyF3V/QEE8qr15Wwlj1MVef8YZB//K/PX+fVTmqL6z5eEbxDqZgg
 eYUQ==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gtt: Handle double alloc failures
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

T24gVGh1LCA0IEp1bCAyMDE5IGF0IDExOjQzLCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBNYXR0aGV3IHBvaW50ZWQgb3V0IHRoYXQgd2UgY291bGQg
ZmFjZSBhIGRvdWJsZSBmYWlsdXJlIHdpdGggY29uY3VycmVudAo+IGFsbG9jYXRpb25zL2ZyZWVz
LCBhbmQgc28gdGhlIGFzc3VtcHRpb24gdGhhdCB0aGUgbG9jYWwgdmFyIGFsbG9jIHdhcwo+IE5V
TEwgd2FzIGZyYXVnaHQgd2l0aCBkYW5nZXIuIFJhdGhlciB0aGFuIGNvbXBsaWNhdGUgdGhlIGVy
cm9yIHBhdGhzIHRvbwo+IG11Y2ggdG8gYWRkIGEgc2Vjb25kIGxvY2FsIGZvciBhIHNlY29uZCBm
cmVlLCBqdXN0IGRvIHRoZSBzZWNvbmQgZnJlZQo+IGVhcmxpZXIgb24gdGhlIHVud2luZCBwYXRo
Lgo+Cj4gUmVwb3J0ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy53aWxsaWFtLmF1bGRAZ21h
aWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgo+IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcud2lsbGlhbS5hdWxkQGdtYWlsLmNv
bT4KCkkgcXVpdGUgbGlrZWQgeW91ciBwcmV2aW91cyBwYXR0ZXJuOgoKQEAgLTE0NDIsNiArMTQ0
Miw3IEBAIHN0YXRpYyBpbnQgZ2VuOF9wcGd0dF9hbGxvY19wZHAoc3RydWN0Cmk5MTVfYWRkcmVz
c19zcGFjZSAqdm0sCiB7CiAgICAgICAgc3RydWN0IGk5MTVfcGFnZV9kaXJlY3RvcnkgKnBkLCAq
YWxsb2MgPSBOVUxMOwogICAgICAgIHU2NCBmcm9tID0gc3RhcnQ7CisgICAgICAgYm9vbCBmcmVl
ID0gZmFsc2U7CiAgICAgICAgdW5zaWduZWQgaW50IHBkcGU7CiAgICAgICAgaW50IHJldCA9IDA7
CgpAQCAtMTQ4OSwxMCArMTQ5MCwxMSBAQCBzdGF0aWMgaW50IGdlbjhfcHBndHRfYWxsb2NfcGRw
KHN0cnVjdAppOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAogICAgICAgICAgICAgICAgZ2VuOF9wcGd0
dF9zZXRfcGRwZShwZHAsIHZtLT5zY3JhdGNoX3BkLCBwZHBlKTsKICAgICAgICAgICAgICAgIEdF
TV9CVUdfT04oIWF0b21pY19yZWFkKCZwZHAtPnVzZWQpKTsKICAgICAgICAgICAgICAgIGF0b21p
Y19kZWMoJnBkcC0+dXNlZCk7Ci0gICAgICAgICAgICAgICBHRU1fQlVHX09OKGFsbG9jKTsKLSAg
ICAgICAgICAgICAgIGFsbG9jID0gcGQ7IC8qIGRlZmVyIHRoZSBmcmVlIHRvIGFmdGVyIHRoZSBs
b2NrICovCisgICAgICAgICAgICAgICBmcmVlID0gdHJ1ZTsKICAgICAgICB9CiAgICAgICAgc3Bp
bl91bmxvY2soJnBkcC0+bG9jayk7CisgICAgICAgaWYgKGZyZWUpCisgICAgICAgICAgICAgICBm
cmVlX3BkKHZtLCBwZCk7CiB1bndpbmQ6CiAgICAgICAgZ2VuOF9wcGd0dF9jbGVhcl9wZHAodm0s
IHBkcCwgZnJvbSwgc3RhcnQgLSBmcm9tKTsKIG91dDoKCkFueXdheSwKUmV2aWV3ZWQtYnk6IE1h
dHRoZXcgQXVsZCA8bWF0dGhldy53aWxsaWFtLmF1bGRAZ21haWwuY29tPgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
