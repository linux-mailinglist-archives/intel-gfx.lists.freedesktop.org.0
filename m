Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE6B4D57D
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 19:56:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCD406E5E3;
	Thu, 20 Jun 2019 17:56:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-xc44.google.com (mail-yw1-xc44.google.com
 [IPv6:2607:f8b0:4864:20::c44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87D946E5E3
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 17:56:52 +0000 (UTC)
Received: by mail-yw1-xc44.google.com with SMTP id t126so1551831ywf.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 10:56:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8y8WbjPWzwvHKYmojfNld46+NnGHc6uvV3n1gXrnbeE=;
 b=POuYHYKJ/za1/pr1ulyBG6SYX23gXIK4OR+PSmjFV237DirwtAS3CBweMxhgikekJR
 YBTPURAnzjNnihILHC2TvLx2otwl4vAj4MIfESsKXZBDtUotMSR9FRRB/Uk9keiy61Z7
 PHZ1z8b+ybRN7ZUamWd+TBzWiaB/dbVZbxSukQyhYtM8HYI48zKTM1Ovt7wrOGJuxwqp
 f5o0tskj+x6M/DVRppTfVlSgjxMVdTgZ0xbCzwjBliIyLW1auMYjSGfOc+cSUkAAxVPy
 PlydOE5yQKX/xPdGtCMTNtXozAJ66Vib5vMJ2RLMCmLIcTe+NU5MfR3pdWG20nSlGefG
 APgQ==
X-Gm-Message-State: APjAAAXfIS7nJA4sG8nnvqf4uw7i/n5wt36UMDqYDCISKi9eEEQjt8bf
 vOb6nRuZnglO7ABkWupS0HDpyIId2IUFl0hNS6Q=
X-Google-Smtp-Source: APXvYqzVqrf8h8RhQiwMWVWVJncw+IzGlh5SjqPwxsXa+OPIEt447xWCylc11cQ6WiduB1TO/swSRAC8y5r6A32yDFU=
X-Received: by 2002:a81:9b43:: with SMTP id s64mr77074373ywg.73.1561053411544; 
 Thu, 20 Jun 2019 10:56:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190620092730.4700-1-lionel.g.landwerlin@intel.com>
 <20190620092730.4700-3-lionel.g.landwerlin@intel.com>
In-Reply-To: <20190620092730.4700-3-lionel.g.landwerlin@intel.com>
From: Anuj Phogat <anuj.phogat@gmail.com>
Date: Thu, 20 Jun 2019 10:56:24 -0700
Message-ID: <CAP5d04HuC2Esyf9YnXCFNbd4ZoQk3pz7mT6Dieaf-B-Kz8q--Q@mail.gmail.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=8y8WbjPWzwvHKYmojfNld46+NnGHc6uvV3n1gXrnbeE=;
 b=PR1oFXWDujNFKj6R+Dy5DPO2YRCEe9S6XdSXrtUup0Sc6DNYqdmwZv8IxLglpo/3o9
 N8x9+5TxDoF5Xb81I3P8B7XyOtS6tX9i5uxlDQzXOuNxSFtwQ/ocG+b5e+Up3O7HrE0e
 wHKD4bijK9TW/IHFn2U1qWbc/jr6rWyP/CB3l4+CuyA193FU6kv0CKvHF+lFEewlST8I
 Nhx6p+urtAXUQ6Mj96i1s9+aHS2M6PlQ0EiTKXPmY2OmBoHNXp1cU/jZOci4cetKM5aR
 iPo7UT1gG+fQw/sZHryV+Cy3qWoCMs6eq/Xjy6NjwuhhDpbHESPSoVbotT/pZyY3RDtZ
 xqww==
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/icl: whitelist
 PS_(DEPTH|INVOCATION)_COUNT
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdW4gMjAsIDIwMTkgYXQgMjoyNyBBTSBMaW9uZWwgTGFuZHdlcmxpbgo8bGlvbmVs
LmcubGFuZHdlcmxpbkBpbnRlbC5jb20+IHdyb3RlOgo+Cj4gVGhlIHNhbWUgdGVzdHMgZmFpbGlu
ZyBvbiBDRkwrIHBsYXRmb3JtcyBhcmUgYWxzbyBmYWlsaW5nIG9uIElDTC4KPiBEb2N1bWVudGF0
aW9uIGRvZXNuJ3QgbGlzdCB0aGUKPiBXYUFsbG93UE1EZXB0aEFuZEludm9jYXRpb25Db3VudEFj
Y2Vzc0Zyb21VTUQgd29ya2Fyb3VuZCBmb3IgSUNMIGJ1dAo+IGFwcGx5aW5nIGl0IGZpeGVzIHRo
ZSBzYW1lIHRlc3RzIGFzIENGTC4KPgo+IFNpZ25lZC1vZmYtYnk6IExpb25lbCBMYW5kd2VybGlu
IDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDYgKysrKysrCj4gIDEgZmlsZSBjaGFuZ2Vk
LCA2IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29y
a2Fyb3VuZHMuYwo+IGluZGV4IDM2N2Y1Y2M1OTY1Zi4uMzMxYTAwNTAxNTRkIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gQEAgLTExMzEsNiAr
MTEzMSwxMiBAQCBzdGF0aWMgdm9pZCBpY2xfd2hpdGVsaXN0X2J1aWxkKHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmVuZ2luZSkKPgo+ICAgICAgICAgICAgICAgICAvKiBXYUVuYWJsZVN0YXRlQ2Fj
aGVSZWRpcmVjdFRvQ1M6aWNsICovCj4gICAgICAgICAgICAgICAgIHdoaXRlbGlzdF9yZWcodywg
R0VOOV9TTElDRV9DT01NT05fRUNPX0NISUNLRU4xKTsKPiArCj4gKyAgICAgICAgICAgICAgIC8q
IFdhQWxsb3dQTURlcHRoQW5kSW52b2NhdGlvbkNvdW50QWNjZXNzRnJvbVVNRDppY2wgKi8KPiAr
ICAgICAgICAgICAgICAgd2hpdGVsaXN0X3JlZyh3LCBQU19ERVBUSF9DT1VOVCk7Cj4gKyAgICAg
ICAgICAgICAgIHdoaXRlbGlzdF9yZWcodywgUFNfREVQVEhfQ09VTlRfVURXKTsKPiArICAgICAg
ICAgICAgICAgd2hpdGVsaXN0X3JlZyh3LCBQU19JTlZPQ0FUSU9OX0NPVU5UKTsKPiArICAgICAg
ICAgICAgICAgd2hpdGVsaXN0X3JlZyh3LCBQU19JTlZPQ0FUSU9OX0NPVU5UX1VEVyk7Cj4gICAg
ICAgICAgICAgICAgIGJyZWFrOwo+Cj4gICAgICAgICBjYXNlIFZJREVPX0RFQ09ERV9DTEFTUzoK
PiAtLQo+IDIuMjEuMC4zOTIuZ2Y4ZjY3ODcxNTllCj4KPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKClRlc3RlZC1ieTogIEFudWogUGhvZ2F0IDxh
bnVqLnBob2dhdEBnbWFpbC5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
