Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0121BBE4B
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 00:08:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D124A6E9A4;
	Mon, 23 Sep 2019 22:08:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C7C16E9A4
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 22:08:40 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id b24so10868563wmj.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 15:08:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3njPpJHAzgbIqi2z5AFZRnyYQJrHjS+QuOopEGCy4Vo=;
 b=YBXk949YcM9vOf9u6hTCF0aXCtpey7CWTEqje65CefJpPLU1b0t4XgSBbYKmNx0ThK
 6iChkPuR5GELKjJwUXC1G5vY+BvqpqchPNEt6MMSUkd4tLMcJEQ/6XYgSnfEhDOehKSx
 04sS1OjpUMBn2K22dF1bWpxiK3RkumhYJb0rKM4Ai94V+FQMhnNR4/c3k/YggZBaYMxL
 AIoUbkKVK3iHqQa+GuTX5T1a6adfetD3SivEphJNhBpgnLTCFT736R+HoW9DJMqC4Eys
 W25ElDMlNuY3fL0Nbe/6uGQ9o7vslzBZf/geqrjo0NOOHNUxVgtubZUK2f9a0jXkhDKb
 +1Cg==
X-Gm-Message-State: APjAAAVRwvGoAoxy+t5RD0DiHHfWFA/Mh2eSmy+3s1rG8TzyZ6aGKBI7
 IamEQnkraCLSkm8LTNGTk+Z3bzBxPjrysTfubv4=
X-Google-Smtp-Source: APXvYqyNTxPk2DWSqHhGHdaEY9X2enB3dMlwMqqOBxFAyrwCAxio+dc8rvX1tvJgm1S6W4T2p/uigxldllly2273BNw=
X-Received: by 2002:a05:600c:10cc:: with SMTP id
 l12mr1180895wmd.165.1569276518851; 
 Mon, 23 Sep 2019 15:08:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190923195513.207536-1-jose.souza@intel.com>
 <20190923195513.207536-10-jose.souza@intel.com>
In-Reply-To: <20190923195513.207536-10-jose.souza@intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Mon, 23 Sep 2019 15:08:20 -0700
Message-ID: <CAKi4VALYT_muZd_awWAFDL8ZfOFRa4VSRWQBOWDBmHVHkdYCqQ@mail.gmail.com>
To: =?UTF-8?Q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3njPpJHAzgbIqi2z5AFZRnyYQJrHjS+QuOopEGCy4Vo=;
 b=CLLpXTb9mQOJntMGS9hSplWMI31bOIxBK4Te882DBTbB2uvJ/QDhRyUJJaHS2YcHQb
 muLpwnGdcZ4i3jxG1qEiWAEwi9Sw/ftyZo6JzmTDtk5xafeWptRn5U9gbcOa/RG/TWfd
 9Ubh6mlHHKrJ3sVSMn9yLMWM8bV0eZTU1G6hEI59VqZlXx5Jfk6Nfh8kNTz13F/16IUH
 YTK6qBiHZCvK/zA7r1fCy+74GLKNyMFQk/iHDb2GnRzXAKQUN4ftdZQtzgvHIpgyWqSU
 syHRdTgVF+lZ2ivo5vBlOLNxmA2FW7fXd5CAywbzFGfEsS+O4p7kRcx2+NPYwuRQqD9z
 Kkyg==
Subject: Re: [Intel-gfx] [PATCH v3 9/9] drm/i915/tgl: initialize TC and TBT
 ports
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBTZXAgMjMsIDIwMTkgYXQgMTI6NTUgUE0gSm9zw6kgUm9iZXJ0byBkZSBTb3V6YQo8
am9zZS5zb3V6YUBpbnRlbC5jb20+IHdyb3RlOgo+Cj4gRnJvbTogTHVjYXMgRGUgTWFyY2hpIDxs
dWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4KPiBOb3cgdGhhdCBUQyBzdXBwb3J0IHdhcyBhZGRl
ZCwgaW5pdGlhbGl6ZSBERElzLgo+Cj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxs
dWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpBbm90aGVyIHRyaXZpYWwgcGF0Y2ggdGhh
dCB5b3UgY291bGQgYWxzbyBhZGQgYSByLWI/CgpMdWNhcyBEZSBNYXJjaGkKCj4gLS0tCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNyArKysrKystCj4g
IDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggNWVjZjU0
MjcwMTgxLi40Mzg3NmZlOGZhMWUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC0xNTM0Myw5ICsxNTM0MywxNCBAQCBzdGF0aWMgdm9p
ZCBpbnRlbF9zZXR1cF9vdXRwdXRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikK
PiAgICAgICAgICAgICAgICAgcmV0dXJuOwo+Cj4gICAgICAgICBpZiAoSU5URUxfR0VOKGRldl9w
cml2KSA+PSAxMikgewo+IC0gICAgICAgICAgICAgICAvKiBUT0RPOiBpbml0aWFsaXplIFRDIHBv
cnRzIGFzIHdlbGwgKi8KPiAgICAgICAgICAgICAgICAgaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYs
IFBPUlRfQSk7Cj4gICAgICAgICAgICAgICAgIGludGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JU
X0IpOwo+ICsgICAgICAgICAgICAgICBpbnRlbF9kZGlfaW5pdChkZXZfcHJpdiwgUE9SVF9EKTsK
PiArICAgICAgICAgICAgICAgaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBPUlRfRSk7Cj4gKyAg
ICAgICAgICAgICAgIGludGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX0YpOwo+ICsgICAgICAg
ICAgICAgICBpbnRlbF9kZGlfaW5pdChkZXZfcHJpdiwgUE9SVF9HKTsKPiArICAgICAgICAgICAg
ICAgaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBPUlRfSCk7Cj4gKyAgICAgICAgICAgICAgIGlu
dGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX0kpOwo+ICAgICAgICAgICAgICAgICBpY2xfZHNp
X2luaXQoZGV2X3ByaXYpOwo+ICAgICAgICAgfSBlbHNlIGlmIChJU19FTEtIQVJUTEFLRShkZXZf
cHJpdikpIHsKPiAgICAgICAgICAgICAgICAgaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBPUlRf
QSk7Cj4gLS0KPiAyLjIzLjAKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAoKCgotLSAKTHVjYXMgRGUgTWFyY2hpCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
