Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A56BA1FA2FD
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2020 23:40:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C34B86E51C;
	Mon, 15 Jun 2020 21:40:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa42.google.com (mail-vk1-xa42.google.com
 [IPv6:2607:f8b0:4864:20::a42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D60586E519;
 Mon, 15 Jun 2020 21:40:09 +0000 (UTC)
Received: by mail-vk1-xa42.google.com with SMTP id p187so4320668vkf.0;
 Mon, 15 Jun 2020 14:40:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Q3V9qLca5bFwDTwdI0R2PkJG/x+EGIesoeRcKiOrW2U=;
 b=tTrS8kMsaT888jkMLWcMuOVca8Su0PHYX9jlops5GCpQk112deqqr/CJXhPOmpL91Y
 W0BuYCFt4eHj6h4tuPIoLE54mgirMq8omPVGfoBlWTXP4iC6t3e1Vhg8wxKXX5DCYguq
 fr30TVupXqYSBrH2F6YqsAUZm0hilwyLN28iYjmfqGJOr13NlRzVESA217lNZgfJhEvY
 9UQZytz+vzti4yT4HDsoJcYxOmBxW7GC3ts01X4CEi8pE+IzVRpMGYvKjnOUQTS2sYxc
 ral8rD/qUdk/B3x0Pe4rEF0f6tY4S9xi5nAF4CBHn/2Y5QQfwcleHZZKFUJFdtv/nu1F
 VPNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Q3V9qLca5bFwDTwdI0R2PkJG/x+EGIesoeRcKiOrW2U=;
 b=Bt0TluUrQ4j9F/FxLQJKlS82xOCmFv0RtyB4hpPepo8Zd5PRZ92NtPWeoPE+wzjvUl
 kbEWt62mLeKOOCdUy+tAV5x+0cQc52HqbqdSxWeje3MGkRnbCO6cMCQXtGhu3qDrV9/h
 mw3yXflDrQCVpFF3LO/MptlwLYw6jS8GSjsqBZcQ0WybJDKqPWsoPBhNgY5lebyGzpVt
 aNvUMjamSYg/kPFHOmGxfaFkeqZGOBdQMsnQDZ3EE5LjUjpYF5GtcP21kht+5LbLXfgU
 vb9GAmoPdJ6wT7BYsF8bgaHIoHgvuk1LVaROfY1rXEqIqXyt800UehdX0NphX6ImH32h
 n9EA==
X-Gm-Message-State: AOAM530kZDRSmokHht89FLab32OSH73qx3U/0RlaDiUDdbz1QtZ2dUjH
 Oq0u3cNBQAKhZJC+YR3s5LcX8epmY4Bt1tidkHhaUm42
X-Google-Smtp-Source: ABdhPJwxjEXB3xFTxy3esCI8RY2VlOeuvDL8fcF9L6jQLlsaLFmIIu1t34jMu8XOlHN+GGpPiBkR4T0HxWNvgqeqHak=
X-Received: by 2002:a1f:8f13:: with SMTP id r19mr20428095vkd.38.1592257208928; 
 Mon, 15 Jun 2020 14:40:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200612230444.10121-4-manasi.d.navare@intel.com>
 <20200612235606.25120-1-manasi.d.navare@intel.com>
In-Reply-To: <20200612235606.25120-1-manasi.d.navare@intel.com>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Mon, 15 Jun 2020 22:36:28 +0100
Message-ID: <CACvgo522mYhCRkNXuwJDCt2fh4-Piq9ZOH9rNbO+HrcbrytJgQ@mail.gmail.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Subject: Re: [Intel-gfx] [PATCH v7 3/3] drm/i915/dp: Expose connector VRR
 monitor range via debugfs
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Bhanuprakash Modem <bhanuprakash.modem@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgTWFuYXNpLAoKT24gU2F0LCAxMyBKdW4gMjAyMCBhdCAwMDo1NSwgTWFuYXNpIE5hdmFyZSA8
bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiBCaGFudXByYWthc2gg
TW9kZW0gPGJoYW51cHJha2FzaC5tb2RlbUBpbnRlbC5jb20+Cj4KPiBbV2h5XQo+IEl0J3MgdXNl
ZnVsIHRvIGtub3cgdGhlIG1pbiBhbmQgbWF4IHZyciByYW5nZSBmb3IgSUdUIHRlc3RpbmcuCj4K
PiBbSG93XQo+IEV4cG9zZSB0aGUgbWluIGFuZCBtYXggdmZyZXEgZm9yIHRoZSBjb25uZWN0b3Ig
dmlhIGEgZGVidWdmcyBmaWxlCj4gb24gdGhlIGNvbm5lY3RvciwgInZycl9yYW5nZSIuCj4KPiBF
eGFtcGxlIHVzYWdlOiBjYXQgL3N5cy9rZXJuZWwvZGVidWcvZHJpLzAvRFAtMS92cnJfcmFuZ2UK
Pgo+IHY3Ogo+ICogRml4IGNtcGlsYXRpb24gZHVlIHRvIHJlYmFzZQo+IHY2Ogo+ICogUmViYXNl
IChtYW5hc2kpCj4gdjU6Cj4gKiBSZW5hbWUgdG8gdnJyX3JhbmdlIHRvIG1hdGNoIEFNRCBkZWJ1
Z2ZzCj4gdjQ6Cj4gKiBSZWJhc2UKPiB2MzoKPiAqIFJlbW92ZSB0aGUgdW5uZWNlc3NhcnkgZGVi
dWcgcHJpbnQgKE1hbmFzaSkKPiB2MjoKPiAqIEZpeCB0aGUgdHlwbyBpbiBtYXhfdmZyZXEgKE1h
bmFzaSkKPiAqIENoYW5nZSB0aGUgbmFtZSBvZiBub2RlIHRvIGk5MTVfdnJyX2luZm8gc28gd2Ug
Y2FuIGFkZAo+IG90aGVyIHZyciBpbmZvIGZvciBtb3JlIGRlYnVnIGluZm8gKE1hbmFzaSkKPiAq
IENoYW5nZSB0aGUgVlJSIGNhcGFibGUgdG8gZGlzcGxheSBZZXMgb3IgTm8gKE1hbmFzaSkKPiAq
IEZpeCBpbmRlbnRhdGlvbiBjaGVja3BhdGNoIGVycm9ycyAoTWFuYXNpKQo+Ck5pdDogZ2VuZXJh
bGx5IHJldmlzaW9uIGxvZyBpcyBsaXN0ZWQgaW4gdjIgLT4gdjYgb3JkZXIuCgo+IFNpZ25lZC1v
ZmYtYnk6IEJoYW51cHJha2FzaCBNb2RlbSA8YmhhbnVwcmFrYXNoLm1vZGVtQGludGVsLmNvbT4K
PiBTaWduZWQtb2ZmLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29t
Pgo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tPgo+IENjOiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IFRlc3RlZC1i
eTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KPiAtLS0KPiAgLi4u
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMgIHwgMjIgKysrKysrKysr
KysrKysrKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfZGVidWdmcy5jCj4gaW5kZXggMjhkZDcxN2U5NDNhLi4yOTIxZjdkMmEyNmUgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVn
ZnMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9k
ZWJ1Z2ZzLmMKPiBAQCAtMjE4NSw2ICsyMTg1LDIxIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZmls
ZV9vcGVyYXRpb25zIGk5MTVfZHNjX2ZlY19zdXBwb3J0X2ZvcHMgPSB7Cj4gICAgICAgICAud3Jp
dGUgPSBpOTE1X2RzY19mZWNfc3VwcG9ydF93cml0ZQo+ICB9Owo+Cj4gK3N0YXRpYyBpbnQgdnJy
X3JhbmdlX3Nob3coc3RydWN0IHNlcV9maWxlICptLCB2b2lkICpkYXRhKQo+ICt7Cj4gKyAgICAg
ICBzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yID0gbS0+cHJpdmF0ZTsKPiArCj4gKyAg
ICAgICBpZiAoY29ubmVjdG9yLT5zdGF0dXMgIT0gY29ubmVjdG9yX3N0YXR1c19jb25uZWN0ZWQp
Cj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRU5PREVWOwo+ICsKPiArICAgICAgIHNlcV9wcmlu
dGYobSwgIlZycl9jYXBhYmxlOiAlc1xuIiwgeWVzbm8oaW50ZWxfZHBfaXNfdnJyX2NhcGFibGUo
Y29ubmVjdG9yKSkpOwo+ICsgICAgICAgc2VxX3ByaW50ZihtLCAiTWluOiAldVxuIiwgKHU4KWNv
bm5lY3Rvci0+ZGlzcGxheV9pbmZvLm1vbml0b3JfcmFuZ2UubWluX3ZmcmVxKTsKPiArICAgICAg
IHNlcV9wcmludGYobSwgIk1heDogJXVcbiIsICh1OCljb25uZWN0b3ItPmRpc3BsYXlfaW5mby5t
b25pdG9yX3JhbmdlLm1heF92ZnJlcSk7Cj4gKwo+ICsgICAgICAgcmV0dXJuIDA7Cj4gK30KPiAr
REVGSU5FX1NIT1dfQVRUUklCVVRFKHZycl9yYW5nZSk7Cj4gKwo+ICAvKioKPiAgICogaW50ZWxf
Y29ubmVjdG9yX2RlYnVnZnNfYWRkIC0gYWRkIGk5MTUgc3BlY2lmaWMgY29ubmVjdG9yIGRlYnVn
ZnMgZmlsZXMKPiAgICogQGNvbm5lY3RvcjogcG9pbnRlciB0byBhIHJlZ2lzdGVyZWQgZHJtX2Nv
bm5lY3Rvcgo+IEBAIC0yMjIwLDEwICsyMjM1LDE1IEBAIGludCBpbnRlbF9jb25uZWN0b3JfZGVi
dWdmc19hZGQoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcikKPiAgICAgICAgIGlmIChJ
TlRFTF9HRU4oZGV2X3ByaXYpID49IDEwICYmCj4gICAgICAgICAgICAgKChjb25uZWN0b3ItPmNv
bm5lY3Rvcl90eXBlID09IERSTV9NT0RFX0NPTk5FQ1RPUl9EaXNwbGF5UG9ydCAmJgo+ICAgICAg
ICAgICAgICAgIXRvX2ludGVsX2Nvbm5lY3Rvcihjb25uZWN0b3IpLT5tc3RfcG9ydCkgfHwKPiAt
ICAgICAgICAgICAgY29ubmVjdG9yLT5jb25uZWN0b3JfdHlwZSA9PSBEUk1fTU9ERV9DT05ORUNU
T1JfZURQKSkKPiArICAgICAgICAgICAgY29ubmVjdG9yLT5jb25uZWN0b3JfdHlwZSA9PSBEUk1f
TU9ERV9DT05ORUNUT1JfZURQKSkgewo+ICAgICAgICAgICAgICAgICBkZWJ1Z2ZzX2NyZWF0ZV9m
aWxlKCJpOTE1X2RzY19mZWNfc3VwcG9ydCIsIFNfSVJVR08sIHJvb3QsCj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgY29ubmVjdG9yLCAmaTkxNV9kc2NfZmVjX3N1cHBvcnRf
Zm9wcyk7Cj4KPiArICAgICAgICAgICAgICAgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIp
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgZGVidWdmc19jcmVhdGVfZmlsZSgidnJyX3Jhbmdl
IiwgU19JUlVHTywKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHJvb3QsIGNvbm5lY3RvciwgJnZycl9yYW5nZV9mb3BzKTsKPiArICAgICAgIH0KPiArCgpJIHRo
aW5rIHRoaXMgc2hvdWxkIGJlIGFkZGVkIGJ5IGNvcmUgZHJtLiBJZGVhbGx5IGRybSB3aWxsIGFk
ZCBpdAphdXRvbWF0aWNhbGx5IGZvciBlYWNoIGNvbm5lY3RvciB0aGF0IHRoZSBkcml2ZXIgaGFz
IGNhbGxlZApkcm1fY29ubmVjdG9yX2F0dGFjaF92cnJfY2FwYWJsZV9wcm9wZXJ0eSgpIHVwb24u
CgotRW1pbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
