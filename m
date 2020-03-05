Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 829FD179D24
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 02:05:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3355A6E03C;
	Thu,  5 Mar 2020 01:05:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EDA26E03C
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2020 01:05:05 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id t11so4948337wrw.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Mar 2020 17:05:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=O2Zphl8uM/5aCiZbQaAmqjXnnx9yRMOeiF9BBgVV9nk=;
 b=vfsxZGDDWWIGodXuLhFJdc3okpLUzwVBXt3AW+qWasQkdqY7mY19OYFtnO75yavoTY
 O3UuGc+1PMXgZI8+svNsjl1d7r051L8Cj+7BXXZgeHIN4U66YZaV+LJjlhmZM44A5xMe
 xKh1NOHxvKHNlQghmt7gW+XSxBq5wt6J2Vw8MWZaQC1Sxk9K6ndg59BqFmPc0PSa/tZP
 dNDDUDTBdpJAvi15/dbXImmEJk0Xl+BB5KGDbf+ewKIR3NpK7qkB6gplFbNcfZMFJIm6
 0lJlh7p/srHb2tCbuTyA+pj856pdynqL5sIrc603Mo+RyvQPbocUAgCh2dXRngNS77VE
 QmHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=O2Zphl8uM/5aCiZbQaAmqjXnnx9yRMOeiF9BBgVV9nk=;
 b=L9xIIGnQr6fZ/0XZYqISrFSGwFr4TINcVlog+fx3OCUtIUM5GQ/XFan7SfNn2JMmJc
 dyMvV8rNXXtiB42JlgeI5UZdbnnW2+Ech2AgsGxyvW7wP2qKuk2dj+qXme7Iwwq+ZfBo
 owkmt4M1gPWuVpuZ1SD8QMOAERfRbjP5lJeZlXiZw28fozQ6AxTS7TTjMtn2kU+q78JK
 1uJJpvOAO+XapxK4Sry/FnBLTPlAXmjtwzo0xs+tTqosLZjOqAJAVNOII2AoXa+vwk2Z
 Qbf21jW++JF9QZBkNVVncukGkfE0GYrIcjzznTBmbwx6CwU3ID8a1+dnd13dY7N28+d6
 Tprg==
X-Gm-Message-State: ANhLgQ3ftkN1kRfESAF4UlM4mLg7mLw1Vf4jRrBtqgIzj9WM4nvvBurK
 xjbY3ztIwpjpeZAr27mOwEQZL49FEJjGhIPaXeI=
X-Google-Smtp-Source: ADFU+vvd6Z5RBfk/ALkyw4FRDi9tjSy5tDUi5niJQhZz2VKSA0EUfA0ZbyIBy3t4WXRhQPuafrsgK/bibIAOnv7s8Wo=
X-Received: by 2002:adf:aa0e:: with SMTP id p14mr6847374wrd.399.1583370303592; 
 Wed, 04 Mar 2020 17:05:03 -0800 (PST)
MIME-Version: 1.0
References: <1c751032ce79c80c5485cae315f1a9904ce07cac.1583359940.git.caz.yokoyama@intel.com>
In-Reply-To: <1c751032ce79c80c5485cae315f1a9904ce07cac.1583359940.git.caz.yokoyama@intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Wed, 4 Mar 2020 17:04:52 -0800
Message-ID: <CAKi4VALn9McMaQ=Em=cZet8-jyosWCdxwzDS4JnDG0mfKYWcDg@mail.gmail.com>
To: Caz Yokoyama <caz.yokoyama@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/1] Revert "drm/i915/tgl: Add extra hdc
 flush workaround"
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBNYXIgNCwgMjAyMCBhdCAyOjMzIFBNIENheiBZb2tveWFtYSA8Y2F6Lnlva295YW1h
QGludGVsLmNvbT4gd3JvdGU6Cj4KPiBUaGlzIHJldmVydHMgY29tbWl0IDM2YTZiNWQ5NjRkOTk1
YjUzNmIxOTI1ZWM0MjA1MmVlNDBiYTkyYzQuCj4gRml4ZXM6IDM2YTZiNWQ5NjRkOSAoImRybS9p
OTE1L3RnbDogQWRkIGV4dHJhIGhkYyBmbHVzaCB3b3JrYXJvdW5kIikKPgo+IFRoZSBjb21taXQg
dGFrZXMgY2FyZSBXYV8xNjA0NTQ0ODg5IHdoaWNoIHdhcyBmaXhlZCBvbiBhMCBzdGVwcGluZyBi
YXNlZCBvbgo+IGEwIHJlcGxhbi4gU28gbm8gU1cgd29ya2Fyb3VuZCBpcyByZXF1aXJlZCBvbiBh
bnkgc3RlcHBpbmcgbm93Lgo+Cj4gUmV2aWV3ZWQtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5y
b3BlckBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogQ2F6IFlva295YW1hIDxjYXoueW9rb3lh
bWFAaW50ZWwuY29tPgoKWW91IGRpZG4ndCBhZGQgd2hhdCB0aGUgcmV2aWV3ZXJzIGFza2VkIGZv
ci4gUGxlYXNlIGdvIGJhY2sgdG8gdGhlCnJldmlld3MgYW5kIGNoZWNrIHRoYXQgeW91CnN0aWxs
IGhhdmUgdGhpbmdzIHRvIGNoYW5nZSBpbiB0aGlzIGNvbW1pdCBpbiBvcmRlciB0byBhZGQgaGlz
IHItYi4KQWxzbyBjaGVjayB3aGF0IEpvc8OpIHNhaWQuCgoKTHVjYXMgRGUgTWFyY2hpCgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDIwIC0tLS0tLS0tLS0t
LS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyMCBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gaW5kZXggYjliM2Y3OGYxMzI0Li5mOTQyNWU1ZWQ3ZWEg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+IEBAIC00MTQ1LDI2ICs0MTQ1
LDYgQEAgc3RhdGljIGludCBnZW4xMl9lbWl0X2ZsdXNoX3JlbmRlcihzdHJ1Y3QgaTkxNV9yZXF1
ZXN0ICpyZXF1ZXN0LAo+Cj4gICAgICAgICAgICAgICAgICpjcysrID0gcHJlcGFyc2VyX2Rpc2Fi
bGUoZmFsc2UpOwo+ICAgICAgICAgICAgICAgICBpbnRlbF9yaW5nX2FkdmFuY2UocmVxdWVzdCwg
Y3MpOwo+IC0KPiAtICAgICAgICAgICAgICAgLyoKPiAtICAgICAgICAgICAgICAgICogV2FfMTYw
NDU0NDg4OTp0Z2wKPiAtICAgICAgICAgICAgICAgICovCj4gLSAgICAgICAgICAgICAgIGlmIChJ
U19UR0xfUkVWSUQocmVxdWVzdC0+aTkxNSwgVEdMX1JFVklEX0EwLCBUR0xfUkVWSURfQTApKSB7
Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgZmxhZ3MgPSAwOwo+IC0gICAgICAgICAgICAgICAg
ICAgICAgIGZsYWdzIHw9IFBJUEVfQ09OVFJPTF9DU19TVEFMTDsKPiAtICAgICAgICAgICAgICAg
ICAgICAgICBmbGFncyB8PSBQSVBFX0NPTlRST0xfSERDX1BJUEVMSU5FX0ZMVVNIOwo+IC0KPiAt
ICAgICAgICAgICAgICAgICAgICAgICBmbGFncyB8PSBQSVBFX0NPTlRST0xfU1RPUkVfREFUQV9J
TkRFWDsKPiAtICAgICAgICAgICAgICAgICAgICAgICBmbGFncyB8PSBQSVBFX0NPTlRST0xfUVdf
V1JJVEU7Cj4gLQo+IC0gICAgICAgICAgICAgICAgICAgICAgIGNzID0gaW50ZWxfcmluZ19iZWdp
bihyZXF1ZXN0LCA2KTsKPiAtICAgICAgICAgICAgICAgICAgICAgICBpZiAoSVNfRVJSKGNzKSkK
PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiBQVFJfRVJSKGNzKTsKPiAt
Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgY3MgPSBnZW44X2VtaXRfcGlwZV9jb250cm9sKGNz
LCBmbGFncywKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgTFJDX1BQSFdTUF9TQ1JBVENIX0FERFIpOwo+IC0gICAgICAgICAgICAgICAgICAgICAg
IGludGVsX3JpbmdfYWR2YW5jZShyZXF1ZXN0LCBjcyk7Cj4gLSAgICAgICAgICAgICAgIH0KPiAg
ICAgICAgIH0KPgo+ICAgICAgICAgcmV0dXJuIDA7Cj4gLS0KPiAyLjIxLjAuNS5nYWViNTgyYTk4
Mwo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJ
bnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+
IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
CgoKCi0tIApMdWNhcyBEZSBNYXJjaGkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
