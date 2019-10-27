Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70844E6566
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Oct 2019 21:53:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED5196E2B2;
	Sun, 27 Oct 2019 20:53:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 243486E2B2
 for <intel-gfx@lists.freedesktop.org>; Sun, 27 Oct 2019 20:53:10 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id w18so7801559wrt.3
 for <intel-gfx@lists.freedesktop.org>; Sun, 27 Oct 2019 13:53:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=eTg9VrzMxHEVZEusgZTHW0FjFPkFP73RXC3sYH6vBoo=;
 b=sI53IUFKrqCkRGd7zxHFqIOFIzxM0bNBdCz5FKkINoPfStq47vpgzlsQ4gJnLb9p2y
 KaCvoFcUy8bJi+VZxeS8tI64WsB1ca1o6rLdKXdgldTQhYyjrcolMhV/SYAvnIWKQg5k
 rezKBlRr5wx0yeB8d+ETkijPsUWVPFrG+jG46yz9rikgI8gMrZNrobukX3G9A6VMc7nN
 BvHq80TRWwtfZiAIm6OXbN/NEoBbWV7sIYuNOoRtuq2cCgot3PSE2XPl1OGN8zp7WHQo
 zFq+JLlEr5L+WklnPBk8fw7Zf23jUpNpvtzfNBguM5YIy5JKaT8JB6Av5u0R19SqWKYo
 ZJJw==
X-Gm-Message-State: APjAAAUBY+L71a+hXQh21blvIzB3dCC7scUcpdTKQ+ZYxchIt2ScszJx
 OzQfNxz4bcRD3NUcbCZsTtMLiw48pV4=
X-Google-Smtp-Source: APXvYqyqhnERvPXkSGM/e/utECfnX+E7V+DBp/pkohufQOw6/0k0Eh+eFy3ckz41pOIebi+WximbAQ==
X-Received: by 2002:adf:e882:: with SMTP id d2mr12686127wrm.132.1572209588017; 
 Sun, 27 Oct 2019 13:53:08 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.139.76])
 by smtp.googlemail.com with ESMTPSA id r11sm6567489wrx.67.2019.10.27.13.53.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 27 Oct 2019 13:53:07 -0700 (PDT)
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191008161441.12721-1-ville.syrjala@linux.intel.com>
 <20191008161441.12721-9-ville.syrjala@linux.intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Message-ID: <ea67a3d7-d6a2-c425-dd89-7b68948b3599@gmail.com>
Date: Sun, 27 Oct 2019 22:53:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191008161441.12721-9-ville.syrjala@linux.intel.com>
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=reply-to:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=eTg9VrzMxHEVZEusgZTHW0FjFPkFP73RXC3sYH6vBoo=;
 b=bT00TlJiIeCaYqxYNYWhvgiQu6n3PkLKNSmRUgMbi9Nu+ui9ou70TEDsQ7yOJ0Uz7x
 86dgVoj1Xg2A9jFMa1C2u6tybfjh0XwmcHcYfwjAGXKeI0PO0esgBuR/+NDcITQwgdSa
 ql9siSXdXt1N/GW3YBxtD1QUnaGbySj85uyUMiL+2kh4T6dCpMjC0r+xSLcY+BJOeRjA
 UTlqByDMVJv9IlkT9TfuPVJ4/vk3CjBa4iI1fI6zvoMzj/XjJ4tgkmcAkzcjfSoiWucG
 6FfYvOEBb5Z9V/jrGEDJcVRCRVeEhuvXuCaNyVctUhViUU8bBq/lKqraJrmXeVU9RLQ/
 4glQ==
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915: Eliminate redundancy in
 intel_primary_plane_create()
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
Reply-To: juhapekka.heikkila@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmV2aWV3ZWQtYnk6IEp1aGEtUGVra2EgSGVpa2tpbGEgPGp1aGFwZWtrYS5oZWlra2lsYUBnbWFp
bC5jb20+CgpPbiA4LjEwLjIwMTkgMTkuMTQsIFZpbGxlIFN5cmphbGEgd3JvdGU6Cj4gRnJvbTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAKPiBMb3Rz
IG9mIHJlZHVuZGFudCBhc3NpZ25tZW50cyBpbnNpZGUgaW50ZWxfcHJpbWFyeV9wbGFuZV9jcmVh
dGUoKS4KPiBHZXQgcmlkIG9mIHRoZW0uCj4gCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNDMgKysrKysrKy0tLS0tLS0tLS0t
LS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAyOSBkZWxldGlvbnMoLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IGlu
ZGV4IGM1NTNhMzQxNzg5MS4uMmFjZWM4MzhmYjhlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBAQCAtMTQ4NzMsNyArMTQ4NzMsNiBAQCBp
bnRlbF9wcmltYXJ5X3BsYW5lX2NyZWF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsIGVudW0gcGlwZSBwaXBlKQo+ICAgCWNvbnN0IHN0cnVjdCBkcm1fcGxhbmVfZnVuY3MgKnBs
YW5lX2Z1bmNzOwo+ICAgCXVuc2lnbmVkIGludCBzdXBwb3J0ZWRfcm90YXRpb25zOwo+ICAgCXVu
c2lnbmVkIGludCBwb3NzaWJsZV9jcnRjczsKPiAtCWNvbnN0IHU2NCAqbW9kaWZpZXJzOwo+ICAg
CWNvbnN0IHUzMiAqZm9ybWF0czsKPiAgIAlpbnQgbnVtX2Zvcm1hdHM7Cj4gICAJaW50IHJldCwg
enBvczsKPiBAQCAtMTQ5MDgsNTMgKzE0OTA3LDM5IEBAIGludGVsX3ByaW1hcnlfcGxhbmVfY3Jl
YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwaXBlIHBpcGUpCj4g
ICAJaWYgKElTX1ZBTExFWVZJRVcoZGV2X3ByaXYpIHx8IElTX0NIRVJSWVZJRVcoZGV2X3ByaXYp
KSB7Cj4gICAJCWZvcm1hdHMgPSB2bHZfcHJpbWFyeV9mb3JtYXRzOwo+ICAgCQludW1fZm9ybWF0
cyA9IEFSUkFZX1NJWkUodmx2X3ByaW1hcnlfZm9ybWF0cyk7Cj4gLQkJbW9kaWZpZXJzID0gaTl4
eF9mb3JtYXRfbW9kaWZpZXJzOwo+IC0KPiAtCQlwbGFuZS0+bWF4X3N0cmlkZSA9IGk5eHhfcGxh
bmVfbWF4X3N0cmlkZTsKPiAtCQlwbGFuZS0+dXBkYXRlX3BsYW5lID0gaTl4eF91cGRhdGVfcGxh
bmU7Cj4gLQkJcGxhbmUtPmRpc2FibGVfcGxhbmUgPSBpOXh4X2Rpc2FibGVfcGxhbmU7Cj4gLQkJ
cGxhbmUtPmdldF9od19zdGF0ZSA9IGk5eHhfcGxhbmVfZ2V0X2h3X3N0YXRlOwo+IC0JCXBsYW5l
LT5jaGVja19wbGFuZSA9IGk5eHhfcGxhbmVfY2hlY2s7Cj4gLQo+IC0JCXBsYW5lX2Z1bmNzID0g
Jmk5NjVfcGxhbmVfZnVuY3M7Cj4gICAJfSBlbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49
IDQpIHsKPiAgIAkJZm9ybWF0cyA9IGk5NjVfcHJpbWFyeV9mb3JtYXRzOwo+ICAgCQludW1fZm9y
bWF0cyA9IEFSUkFZX1NJWkUoaTk2NV9wcmltYXJ5X2Zvcm1hdHMpOwo+IC0JCW1vZGlmaWVycyA9
IGk5eHhfZm9ybWF0X21vZGlmaWVyczsKPiAtCj4gLQkJcGxhbmUtPm1heF9zdHJpZGUgPSBpOXh4
X3BsYW5lX21heF9zdHJpZGU7Cj4gLQkJcGxhbmUtPnVwZGF0ZV9wbGFuZSA9IGk5eHhfdXBkYXRl
X3BsYW5lOwo+IC0JCXBsYW5lLT5kaXNhYmxlX3BsYW5lID0gaTl4eF9kaXNhYmxlX3BsYW5lOwo+
IC0JCXBsYW5lLT5nZXRfaHdfc3RhdGUgPSBpOXh4X3BsYW5lX2dldF9od19zdGF0ZTsKPiAtCQlw
bGFuZS0+Y2hlY2tfcGxhbmUgPSBpOXh4X3BsYW5lX2NoZWNrOwo+IC0KPiAtCQlwbGFuZV9mdW5j
cyA9ICZpOTY1X3BsYW5lX2Z1bmNzOwo+ICAgCX0gZWxzZSB7Cj4gICAJCWZvcm1hdHMgPSBpOHh4
X3ByaW1hcnlfZm9ybWF0czsKPiAgIAkJbnVtX2Zvcm1hdHMgPSBBUlJBWV9TSVpFKGk4eHhfcHJp
bWFyeV9mb3JtYXRzKTsKPiAtCQltb2RpZmllcnMgPSBpOXh4X2Zvcm1hdF9tb2RpZmllcnM7Cj4g
LQo+IC0JCXBsYW5lLT5tYXhfc3RyaWRlID0gaTl4eF9wbGFuZV9tYXhfc3RyaWRlOwo+IC0JCXBs
YW5lLT51cGRhdGVfcGxhbmUgPSBpOXh4X3VwZGF0ZV9wbGFuZTsKPiAtCQlwbGFuZS0+ZGlzYWJs
ZV9wbGFuZSA9IGk5eHhfZGlzYWJsZV9wbGFuZTsKPiAtCQlwbGFuZS0+Z2V0X2h3X3N0YXRlID0g
aTl4eF9wbGFuZV9nZXRfaHdfc3RhdGU7Cj4gLQkJcGxhbmUtPmNoZWNrX3BsYW5lID0gaTl4eF9w
bGFuZV9jaGVjazsKPiArCX0KPiAgIAo+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gNCkK
PiArCQlwbGFuZV9mdW5jcyA9ICZpOTY1X3BsYW5lX2Z1bmNzOwo+ICsJZWxzZQo+ICAgCQlwbGFu
ZV9mdW5jcyA9ICZpOHh4X3BsYW5lX2Z1bmNzOwo+IC0JfQo+ICsKPiArCXBsYW5lLT5tYXhfc3Ry
aWRlID0gaTl4eF9wbGFuZV9tYXhfc3RyaWRlOwo+ICsJcGxhbmUtPnVwZGF0ZV9wbGFuZSA9IGk5
eHhfdXBkYXRlX3BsYW5lOwo+ICsJcGxhbmUtPmRpc2FibGVfcGxhbmUgPSBpOXh4X2Rpc2FibGVf
cGxhbmU7Cj4gKwlwbGFuZS0+Z2V0X2h3X3N0YXRlID0gaTl4eF9wbGFuZV9nZXRfaHdfc3RhdGU7
Cj4gKwlwbGFuZS0+Y2hlY2tfcGxhbmUgPSBpOXh4X3BsYW5lX2NoZWNrOwo+ICAgCj4gICAJcG9z
c2libGVfY3J0Y3MgPSBCSVQocGlwZSk7Cj4gICAKPiAgIAlpZiAoSU5URUxfR0VOKGRldl9wcml2
KSA+PSA1IHx8IElTX0c0WChkZXZfcHJpdikpCj4gICAJCXJldCA9IGRybV91bml2ZXJzYWxfcGxh
bmVfaW5pdCgmZGV2X3ByaXYtPmRybSwgJnBsYW5lLT5iYXNlLAo+ICAgCQkJCQkgICAgICAgcG9z
c2libGVfY3J0Y3MsIHBsYW5lX2Z1bmNzLAo+IC0JCQkJCSAgICAgICBmb3JtYXRzLCBudW1fZm9y
bWF0cywgbW9kaWZpZXJzLAo+ICsJCQkJCSAgICAgICBmb3JtYXRzLCBudW1fZm9ybWF0cywKPiAr
CQkJCQkgICAgICAgaTl4eF9mb3JtYXRfbW9kaWZpZXJzLAo+ICAgCQkJCQkgICAgICAgRFJNX1BM
QU5FX1RZUEVfUFJJTUFSWSwKPiAgIAkJCQkJICAgICAgICJwcmltYXJ5ICVjIiwgcGlwZV9uYW1l
KHBpcGUpKTsKPiAgIAllbHNlCj4gICAJCXJldCA9IGRybV91bml2ZXJzYWxfcGxhbmVfaW5pdCgm
ZGV2X3ByaXYtPmRybSwgJnBsYW5lLT5iYXNlLAo+ICAgCQkJCQkgICAgICAgcG9zc2libGVfY3J0
Y3MsIHBsYW5lX2Z1bmNzLAo+IC0JCQkJCSAgICAgICBmb3JtYXRzLCBudW1fZm9ybWF0cywgbW9k
aWZpZXJzLAo+ICsJCQkJCSAgICAgICBmb3JtYXRzLCBudW1fZm9ybWF0cywKPiArCQkJCQkgICAg
ICAgaTl4eF9mb3JtYXRfbW9kaWZpZXJzLAo+ICAgCQkJCQkgICAgICAgRFJNX1BMQU5FX1RZUEVf
UFJJTUFSWSwKPiAgIAkJCQkJICAgICAgICJwbGFuZSAlYyIsCj4gICAJCQkJCSAgICAgICBwbGFu
ZV9uYW1lKHBsYW5lLT5pOXh4X3BsYW5lKSk7Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
