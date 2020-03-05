Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8944417B05C
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 22:16:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3B536E3B8;
	Thu,  5 Mar 2020 21:16:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com
 [IPv6:2607:f8b0:4864:20::1043])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C38A86E3B8
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2020 21:16:37 +0000 (UTC)
Received: by mail-pj1-x1043.google.com with SMTP id nm6so127441pjb.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Mar 2020 13:16:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=f8JK/BgMKxX5ylAjV4mHdZr2uRlIL+cK7yYUiOO7Mfs=;
 b=X2UrjpDcKSwS0UuY4T4EEEM5TNSujx094MfSOyyERXj1XUbXQX+ZAtS99DAke8yz+2
 pFmUD6V1qKBjwl7abVbXruN6KCb9zIrgUa1Qkd10Hc3cLKA4g7CTfFM4GLd2ycQEvz4C
 UaujbmQ/DREOBJIALb6Mdm7YyD1ctp8TOzeRE6+d/8rJxRrN5MWnyOGQ01dFqa2RePBO
 8Dd7W1gfSMBUDZJqOc2Crx5ktHWe+ufFPBVFQukW4Douv7HsMFsFxeAA145UyNSOS2Ax
 USRXO5R8MwDOT5/YeRv+LaINl8t36CFrQgEACCF60IdSkbJh4WyDfKVSUp2LzErrF6C2
 dhhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=f8JK/BgMKxX5ylAjV4mHdZr2uRlIL+cK7yYUiOO7Mfs=;
 b=QDfwSpwj8pnkQ/XPIsEnCo0m+C8kilQhkkgeC5DpNF129DpnlKMXIJ9KI5A+tDmf+4
 n8AuYyZVd1FYIphKCy8dHhD3y+0bki+FP7VnsyTHQXaLaulTZQxpTLPaHFdgCHnV1Prg
 iYoTi/aP03udsjK+aZl0ypnI5h75ETIDwi3pUbzLJi+0tovgSunR2sOmSssNFlfImi40
 hHpDk/+eDTXRt/NDb95+mQDS+ipCmGvzHukXEGAsbNO3leonkxuLqW19wzfMybI7gkFB
 4clz2GkGU22njj2dK28Vvuj94mhgqgB1VL3riRhk/D+l2y9JYum5F6XykqQNDf2I7k6p
 UkaA==
X-Gm-Message-State: ANhLgQ3olMFdZ/ABvmp8yhqavSM5XLEo2kGe/OKCnPSn5sSXuuj6y5x3
 Z3zI9TNV5EgjhwI0AAAtqdXjl2eO1dJ+xeW8q+FRdg==
X-Google-Smtp-Source: ADFU+vsy80FfZ71vtcTyJlC0eRrXKf92ZywkEQraL0E/+fRON994O0JoxrO2rarHmqSlqSeVdHozslrcFjdhwWm6zck=
X-Received: by 2002:a17:90a:ead0:: with SMTP id
 ev16mr72448pjb.164.1583442996863; 
 Thu, 05 Mar 2020 13:16:36 -0800 (PST)
MIME-Version: 1.0
References: <20200305202435.1284242-1-matthew.d.roper@intel.com>
In-Reply-To: <20200305202435.1284242-1-matthew.d.roper@intel.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 5 Mar 2020 13:16:25 -0800
Message-ID: <CAKwvOd=HkFWvWei0DHv2FiP188pHQBAwCO5e+K4hSMoq2n0mOg@mail.gmail.com>
To: Matt Roper <matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Don't treat unslice registers
 as masked
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
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 intel-gfx@lists.freedesktop.org, kernelci@groups.io
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBNYXIgNSwgMjAyMCBhdCAxMjoyNSBQTSBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9w
ZXJAaW50ZWwuY29tPiB3cm90ZToKPgo+IFRoZSBVTlNMSUNFX1VOSVRfTEVWRUxfQ0xLR0FURSBh
bmQgVU5TTElDRV9VTklUX0xFVkVMX0NMS0dBVEUyIHJlZ2lzdGVycwo+IHRoYXQgd2UgdXBkYXRl
IGluIGEgZmV3IGVuZ2luZSB3b3JrYXJvdW5kcyBhcmUgbm90IG1hc2tlZCByZWdpc3RlcnMKPiAo
aS5lLiwgd2UgZG9uJ3QgaGF2ZSB0byB3cml0ZSBhIG1hc2sgYml0IGluIHRoZSB0b3AgMTYgYml0
cyB3aGVuCj4gdXBkYXRpbmcgb25lIG9mIHRoZSBsb3dlciAxNiBiaXRzKS4gIEFzIHN1Y2gsIHRo
ZXNlIHdvcmthcm91bmRzIHNob3VsZAo+IGJlIGFwcGxpZWQgdmlhIHdhX3dyaXRlX29yKCkgcmF0
aGVyIHRoYW4gd2FfbWFza2VkX2VuKCkKPgo+IFJlcG9ydGVkLWJ5OiBOaWNrIERlc2F1bG5pZXJz
IDxuZGVzYXVsbmllcnNAZ29vZ2xlLmNvbT4KPiBGaXhlczogNTAxNDhhMjVmODQxICgiZHJtL2k5
MTUvdGdsOiBNb3ZlIGFuZCByZXN0cmljdCBXYV8xNDA4NjE1MDcyIikKPiBGaXhlczogMzU1MWZm
OTI4NzQ0ICgiZHJtL2k5MTUvZ2VuMTE6IE1vdmluZyBXQXMgdG8gcmNzX2VuZ2luZV93YV9pbml0
KCkiKQo+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4K
PiBTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgoK
SSBhcHByZWNpYXRlIHRoZSBmYXN0IHR1cm5hcm91bmQgdGltZSEKVGVzdGVkLWJ5OiBOaWNrIERl
c2F1bG5pZXJzIDxuZGVzYXVsbmllcnNAZ29vZ2xlLmNvbT4KCklmIHRoZSBtYWludGFpbmVyIHdv
dWxkbid0IG1pbmQgYWRkaW5nIHRoZSBmb2xsb3dpbmcgdGFncyB0byBoZWxwIHVzCnRyYWNrIGFu
ZCBzaG93IHNvbWUgbG92ZSBmb3Igb3VyIGJvdHM6Ckxpbms6IGh0dHBzOi8vZ2l0aHViLmNvbS9D
bGFuZ0J1aWx0TGludXgvbGludXgvaXNzdWVzLzkxOApSZXBvcnRlZC1ieToga2VybmVsY2kub3Jn
IGJvdCA8Ym90QGtlcm5lbGNpLm9yZz4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3dvcmthcm91bmRzLmMgfCAxMiArKysrKystLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQs
IDYgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+IGluZGV4IDkwOGE3MDkxNDM5OS4uYjQ3ODUyMTJm
YjdkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91
bmRzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5j
Cj4gQEAgLTEzODIsOCArMTM4Miw4IEBAIHJjc19lbmdpbmVfd2FfaW5pdChzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2NzICplbmdpbmUsIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKPiAgICAgICAgICAg
ICAgICAgd2FfbWFza2VkX2VuKHdhbCwgR0VOOV9ST1dfQ0hJQ0tFTjQsIEdFTjEyX0RJU0FCTEVf
VERMX1BVU0gpOwo+Cj4gICAgICAgICAgICAgICAgIC8qIFdhXzE0MDg2MTUwNzI6dGdsICovCj4g
LSAgICAgICAgICAgICAgIHdhX21hc2tlZF9lbih3YWwsIFVOU0xJQ0VfVU5JVF9MRVZFTF9DTEtH
QVRFMiwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgIFZTVU5JVF9DTEtHQVRFX0RJU19U
R0wpOwo+ICsgICAgICAgICAgICAgICB3YV93cml0ZV9vcih3YWwsIFVOU0xJQ0VfVU5JVF9MRVZF
TF9DTEtHQVRFMiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgVlNVTklUX0NMS0dBVEVf
RElTX1RHTCk7Cj4gICAgICAgICB9Cj4KPiAgICAgICAgIGlmIChJU19USUdFUkxBS0UoaTkxNSkp
IHsKPiBAQCAtMTQ2NywxMiArMTQ2NywxMiBAQCByY3NfZW5naW5lX3dhX2luaXQoc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lLCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCj4gICAgICAg
ICAgICAgICAgICAqIFdhXzE0MDg2MTUwNzI6aWNsLGVobCAgKHZzdW5pdCkKPiAgICAgICAgICAg
ICAgICAgICogV2FfMTQwNzU5NjI5NDppY2wsZWhsICAoaHN1bml0KQo+ICAgICAgICAgICAgICAg
ICAgKi8KPiAtICAgICAgICAgICAgICAgd2FfbWFza2VkX2VuKHdhbCwgVU5TTElDRV9VTklUX0xF
VkVMX0NMS0dBVEUsCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICBWU1VOSVRfQ0xLR0FU
RV9ESVMgfCBIU1VOSVRfQ0xLR0FURV9ESVMpOwo+ICsgICAgICAgICAgICAgICB3YV93cml0ZV9v
cih3YWwsIFVOU0xJQ0VfVU5JVF9MRVZFTF9DTEtHQVRFLAo+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICBWU1VOSVRfQ0xLR0FURV9ESVMgfCBIU1VOSVRfQ0xLR0FURV9ESVMpOwo+Cj4gICAg
ICAgICAgICAgICAgIC8qIFdhXzE0MDczNTI0Mjc6aWNsLGVobCAqLwo+IC0gICAgICAgICAgICAg
ICB3YV9tYXNrZWRfZW4od2FsLCBVTlNMSUNFX1VOSVRfTEVWRUxfQ0xLR0FURTIsCj4gLSAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBQU0RVTklUX0NMS0dBVEVfRElTKTsKPiArICAgICAgICAg
ICAgICAgd2Ffd3JpdGVfb3Iod2FsLCBVTlNMSUNFX1VOSVRfTEVWRUxfQ0xLR0FURTIsCj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgIFBTRFVOSVRfQ0xLR0FURV9ESVMpOwo+Cj4gICAgICAg
ICAgICAgICAgIC8qIFdhXzE0MDY2ODAxNTk6aWNsLGVobCAqLwo+ICAgICAgICAgICAgICAgICB3
YV93cml0ZV9vcih3YWwsCj4gLS0KPiAyLjI0LjEKPgoKCi0tClRoYW5rcywKfk5pY2sgRGVzYXVs
bmllcnMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
