Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B25F1DC041
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 10:51:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB8E76EAFF;
	Fri, 18 Oct 2019 08:51:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com
 [IPv6:2607:f8b0:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25B546EAFF
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 08:51:16 +0000 (UTC)
Received: by mail-oi1-x242.google.com with SMTP id t84so4540365oih.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 01:51:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BtjjvWx+7MBxzSVgq35KlYAkEIj5DI5s8t69fWwKpjs=;
 b=lobfIEsKqLh/PjSmfHN6SBpMEFmGoQzn+RZaNLW4dyz9FMcIFBVcFnkp8GinMOCij1
 Li6VzvyaeNyYKc4l6uGL2qkssyKddDLvp0TCuSecUktwzGM9PKa6fiMX05jURVrAfJSF
 LLCk+nMdqurW/OwhXrqKKW+wHAK6xoJhzQN4h8yi1/lfUdvGndeQ726RPbzexHSPfzF3
 9B7WMndkQ6UagzY9L7p/wz203ZJ3hPggpiGZ2Re0FN1qPVdB1kxff6dwIV9kZZ+TxPAr
 7zSodc0abrbVr8g5ysgivuyy1GnajRMC7o/67QIvjRv72B9FqIHpvayx6rxkAiTo8vWb
 BOOw==
X-Gm-Message-State: APjAAAVD2d51hBR2Ii+8j8kQ3AM5rJx8JpC48CpsHEc7Ltjxtto8m27j
 CaUGgRXqyNL21fTwV6nXEp9j7oiVw4hhtoQKjIhjF56r
X-Google-Smtp-Source: APXvYqy1zPegcBUUCoL2oq/Ich/eH7aiRnEGk+pYujfkjSsRIbnHXQWbnMXzITLGL/tYqLV9P5xsU1S6hd0hNqXSsEs=
X-Received: by 2002:aca:3a55:: with SMTP id h82mr7154549oia.128.1571388675229; 
 Fri, 18 Oct 2019 01:51:15 -0700 (PDT)
MIME-Version: 1.0
References: <20191004134015.13204-1-chris@chris-wilson.co.uk>
 <20191004134015.13204-4-chris@chris-wilson.co.uk>
 <CAKMK7uF4dQLHPGU7QmyW1Y8xngiPgzjhUHfGHtw1a8FV3rNHFw@mail.gmail.com>
In-Reply-To: <CAKMK7uF4dQLHPGU7QmyW1Y8xngiPgzjhUHfGHtw1a8FV3rNHFw@mail.gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 18 Oct 2019 10:51:04 +0200
Message-ID: <CAKMK7uF9ctXqNS6F=sLtp_U8OAAE1axGxSUo3FkCw89yUOR0_g@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=BtjjvWx+7MBxzSVgq35KlYAkEIj5DI5s8t69fWwKpjs=;
 b=foT2EbGHMbj99ch4yalbxH0GJ7ITwIsSP+vyJ/R790ZF8ig5nIr6OiA8QFDl3yF+lJ
 ue8ZM4h3txmBjFkGU0w5eDnopPeW0AgYa0u1yA3zMQimHJm5+hzAIlSvWc6tmOb/uZSa
 2P6d+R1miCtPFA6URQq+vfEH9szReFhNZAETk=
Subject: Re: [Intel-gfx] [PATCH 03/20] drm/i915: Pull i915_vma_pin under the
 vm->mutex
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBPY3QgMTgsIDIwMTkgYXQgMTA6NDQgQU0gRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZm
d2xsLmNoPiB3cm90ZToKPgo+IE9uIEZyaSwgT2N0IDQsIDIwMTkgYXQgMzo0MCBQTSBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cj4gPiBSZXBsYWNlIHRoZSBz
dHJ1Y3RfbXV0ZXggcmVxdWlyZW1lbnQgZm9yIHBpbm5pbmcgdGhlIGk5MTVfdm1hIHdpdGggdGhl
Cj4gPiBsb2NhbCB2bS0+bXV0ZXggaW5zdGVhZC4gTm90ZSB0aGF0IHRoZSB2bS0+bXV0ZXggaXMg
dGFpbnRlZCBieSB0aGUKPiA+IHNocmlua2VyICh3ZSByZXF1aXJlIHVuYmluZGluZyBmcm9tIGlu
c2lkZSBmcy1yZWNsYWltKSBhbmQgc28gd2UgY2Fubm90Cj4gPiBhbGxvY2F0ZSB3aGlsZSBob2xk
aW5nIHRoYXQgbXV0ZXguIEluc3RlYWQgd2UgaGF2ZSB0byBwcmVhbGxvY2F0ZQo+ID4gd29ya2Vy
cyB0byBkbyBhbGxvY2F0ZSBhbmQgYXBwbHkgdGhlIFBURSB1cGRhdGVzIGFmdGVyIHdlIGhhdmUg
d2UKPiA+IHJlc2VydmVkIHRoZWlyIHNsb3QgaW4gdGhlIGRybV9tbSAodXNpbmcgZmVuY2VzIHRv
IG9yZGVyIHRoZSBQVEUgd3JpdGVzCj4gPiB3aXRoIHRoZSBHUFUgd29yayBhbmQgd2l0aCBsYXRl
ciB1bmJpbmQpLgo+ID4KPiA+IEluIGFkZGluZyB0aGUgYXN5bmNocm9ub3VzIHZtYSBiaW5kaW5n
LCBvbmUgc3VidGxlIHJlcXVpcmVtZW50IGlzIHRvCj4gPiBhdm9pZCBjb3VwbGluZyB0aGUgYmlu
ZGluZyBmZW5jZSBpbnRvIHRoZSBiYWNraW5nIG9iamVjdC0+cmVzdi4gVGhhdCBpcwo+ID4gdGhl
IGFzeW5jaHJvbm91cyBiaW5kaW5nIG9ubHkgYXBwbGllcyB0byB0aGUgdm1hIHRpbWVsaW5lIGl0
c2VsZiBhbmQgbm90Cj4gPiB0byB0aGUgcGFnZXMgYXMgdGhhdCBpcyBhIG1vcmUgZ2xvYmFsIHRp
bWVsaW5lICh0aGUgYmluZGluZyBvZiBvbmUgdm1hCj4gPiBkb2VzIG5vdCBuZWVkIHRvIGJlIG9y
ZGVyZWQgd2l0aCBhbm90aGVyIHZtYSwgbm9yIGRvZXMgdGhlIGltcGxpY2l0IEdFTQo+ID4gZmVu
Y2luZyBkZXBlbmQgb24gYSB2bWEsIG9ubHkgb24gd3JpdGVzIHRvIHRoZSBiYWNraW5nIHN0b3Jl
KS4gS2VlcGluZwo+ID4gdGhlIHZtYSBiaW5kaW5nIGRpc3RpbmN0IGZyb20gdGhlIGJhY2tpbmcg
c3RvcmUgdGltZWxpbmVzIGlzIHZlcmlmaWVkIGJ5Cj4gPiBhIG51bWJlciBvZiBhc3luYyBnZW1f
ZXhlY19mZW5jZSBhbmQgZ2VtX2V4ZWNfc2NoZWR1bGUgdGVzdHMuIFRoZSB3YXkgd2UKPiA+IGRv
IHRoaXMgaXMgcXVpdGUgc2ltcGxlLCB3ZSBrZWVwIHRoZSBmZW5jZSBmb3IgdGhlIHZtYSBiaW5k
aW5nIHNlcGFyYXRlCj4gPiBhbmQgb25seSB3YWl0IG9uIGl0IGFzIHJlcXVpcmVkLCBhbmQgbmV2
ZXIgYWRkIGl0IHRvIHRoZSBvYmotPnJlc3YKPiA+IGl0c2VsZi4KPiA+Cj4gPiBBbm90aGVyIGNv
bnNlcXVlbmNlIGluIHJlZHVjaW5nIHRoZSBsb2NraW5nIGFyb3VuZCB0aGUgdm1hIGlzIHRoZQo+
ID4gZGVzdHJ1Y3Rpb24gb2YgdGhlIHZtYSBpcyBubyBsb25nZXIgZ2xvYmFsbHkgc2VyaWFsaXNl
ZCBieSBzdHJ1Y3RfbXV0ZXguCj4gPiBBIG5hdHVyYWwgc29sdXRpb24gd291bGQgYmUgdG8gYWRk
IGEga3JlZiB0byBpOTE1X3ZtYSwgYnV0IHRoYXQgcmVxdWlyZXMKPiA+IGRlY291cGxpbmcgdGhl
IHJlZmVyZW5jZSBjeWNsZXMsIHBvc3NpYmx5IGJ5IGludHJvZHVjaW5nIGEgbmV3Cj4gPiBpOTE1
X21tX3BhZ2VzIG9iamVjdCB0aGF0IGlzIG93biBieSBib3RoIG9iai0+bW0gYW5kIHZtYS0+cGFn
ZXMuCj4gPiBIb3dldmVyLCB3ZSBoYXZlIG5vdCB0YWtlbiB0aGF0IHJvdXRlIGR1ZSB0byB0aGUg
b3ZlcnNoYWRvd2luZyBsbWVtL3R0bQo+ID4gZGlzY3Vzc2lvbnMsIGFuZCBpbnN0ZWFkIHBsYXkg
YSBzZXJpZXMgb2YgY29tcGxpY2F0ZWQgZ2FtZXMgd2l0aAo+ID4gdHJ5bG9ja3MgdG8gKGhvcGVm
dWxseSkgZW5zdXJlIHRoYXQgb25seSBvbmUgZGVzdHJ1Y3Rpb24gcGF0aCBpcyBjYWxsZWQhCj4g
Pgo+ID4gdjI6IEFkZCBzb21lIGNvbW1lbnRhcnksIGFuZCBzb21lIGhlbHBlcnMgdG8gcmVkdWNl
IHBhdGNoIGNodXJuLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxp
bkBpbnRlbC5jb20+Cj4gPiBSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1
bGluQGludGVsLmNvbT4KPgo+IEhpIENocmlzICYgVHZydGtvCj4KPiBDdXQgbW9zdCBvZiB0aGUg
cGF0Y2gsIGp1c3QgYSBkZXRhaWwgcXVlc3Rpb24gb24gdGhpcyBiaXQgaW4gdGhlIGZhdWx0IGhh
bmRsZXI6Cj4KPiA+ICBzdGF0aWMgdW5zaWduZWQgaW50Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9tbWFuLmMKPiA+IGluZGV4IGRkMGMyODQwYmE0ZC4uYzE5NDMxZDYwOWZj
IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4u
Ywo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYwo+ID4g
QEAgLTI0OSwxNiArMjQ5LDYgQEAgdm1fZmF1bHRfdCBpOTE1X2dlbV9mYXVsdChzdHJ1Y3Qgdm1f
ZmF1bHQgKnZtZikKPiA+ICAgICAgICAgaWYgKHJldCkKPiA+ICAgICAgICAgICAgICAgICBnb3Rv
IGVycl9ycG07Cj4gPgo+ID4gLSAgICAgICByZXQgPSBpOTE1X211dGV4X2xvY2tfaW50ZXJydXB0
aWJsZShkZXYpOwo+ID4gLSAgICAgICBpZiAocmV0KQo+ID4gLSAgICAgICAgICAgICAgIGdvdG8g
ZXJyX3Jlc2V0Owo+Cj4KPiBEb2Vzbid0IHRoaXMgb3BlbiB1c2UgdG8gcG9zc2libHkgc3B1cmlv
dXMgZmFpbHVyZXMgb24gb2xkIGNyYXAgd2hlcmUKPiBnZ3R0IGlzIHN1cGVyIGxpbWl0ZWQ/IFdl
ICJsZWFrIiB0aGUgcGluIGNvdW50IG5vdyBvdXRzaWRlIG9mIHRoZQo+IG11dGV4IHRoYXQgcHJv
dGVjdHMgaXQsIHdoaWNoIG1lYW5zIG90aGVyIHRocmVhZHMgd29uJ3QgYmUgYmxvY2tlZCBieQo+
IHNhaWQgbXV0ZXgsIGFuZCBoZW5jZSBjb3VsZCBub3cgc2VlIGEgbG90IG9mIHRlbXBvcmFyaWx5
IHBpbm5lZCB2bWEKPiB0aGF0IHByZXZpb3VzbHkgd2hlcmUgYWx3YXlzIGhpZGRlbiBieSB0aGUg
YmlnIGxvY2sgYW5kIHRoZXJlZm9yZQo+IG5ldmVyIHZpc2libGUgb3V0c2lkZSBvZiB0aGUgdGhy
ZWFkIHRoYXQgZGlkIHRoZSB0ZW1wb3JhcnkgcGluLiBLaW5kYQo+IGxpa2UgdGhlIGV4ZWNidWYg
aXNzdWUuCj4KPiBOb3RlIEkgbWVhbiB0aGUgdGVtcG9yYXJ5IHZtYSBwaW4gaGVyZSwgbm90IHRo
ZSBnZXRfcGFnZXMgcGluLiBUaGF0Cj4gb25lIGlzIGltbyBvayBzaW5jZSBtZW1vcnkgaXMgYXNz
dW1lZCB0byBiZSBwbGVudGlmdWwgYW5kIG1hbmFnZW1lbnQKPiB0aHJvdWdoIHdhdGVybWFya3Mg
R29vZCBFbm91Z2ggKHByb2JhYmx5IGlzbid0LCBidXQgd2UgY2FuJ3QgZWFzaWx5Cj4gZml4IGNv
cmUgbW0pLgo+Cj4gT3IgSSdtIEkgdG90YWxseSBtaXNzaW5nIHNvbWV0aGluZz8gQWRtaXR0ZWRs
eSBpdCdzIGVhcmx5IGFuZCBJCj4gZGVmaW5pdGVseSBoYXZlbid0IGFjcXVpcmVkIHRoZSBmdWxs
IG5ldyBsb2NraW5nIG1vZGVsIGludG8gbXkgYnJhaW4KPiAuLi4KClNjZW5hcmlvIEkgaGF2ZSBp
biBtaW5kOgotIExvdHMgb2YgY29uY3VycmVudCBndHQgZmF1bHRzLCBlbm91Z2ggdGhhdCBhbGwg
dGhlIHRlbXBvcmFyeSBwaW5zCmV4aGF1c3QgdGhlIGd0dCBhbmQgd2UgZmFpbC4gT2YgY291cnNl
IHRoaXMgd291bGQgY3Jhd2wsIGJ1dCBpZiB3ZSdyZQp1bmx1Y2t5IGFuZCBzd2l0Y2ggd29ya2xv
YWRzIGl0IG1pZ2h0IGhhcHBlbi4KLSBndHQgZmF1bHRzIHZzIGV4ZWNidWYsIGlmIHRoZSBleGVj
YnVmIHJlYWxseSBuZWVkcyB0aGUgZW50aXJlIGd0dAphbmQgdGhlIHRlbXBvcmFyeSBwaW5zIG1p
Z2h0IHB1c2ggaXQgb3ZlciB0aGUgZWRnZS4gR2l2ZW4gYWxsIHRoZQpyZXRyeSBsb29wcyB3ZSBk
byBpbiBleGVjYnVmIHRoaXMgb25lIG1pZ2h0IGJlIHJlYWwgaGFyZCB0byBoaXQgc2luY2UKdGhl
IGd0dCBmYXVsdCB0ZW1wb3Jhcnkgdm1hIHBpbiBzaG91bGQgYmUgcmVhbCBxdWljayB1c3VhbGx5
LgotRGFuaWVsCgo+Cj4gQ2hlZXJzLCBEYW5pZWwKPgo+ID4gLQo+ID4gLSAgICAgICAvKiBBY2Nl
c3MgdG8gc25vb3BhYmxlIHBhZ2VzIHRocm91Z2ggdGhlIEdUVCBpcyBpbmNvaGVyZW50LiAqLwo+
ID4gLSAgICAgICBpZiAob2JqLT5jYWNoZV9sZXZlbCAhPSBJOTE1X0NBQ0hFX05PTkUgJiYgIUhB
U19MTEMoaTkxNSkpIHsKPiA+IC0gICAgICAgICAgICAgICByZXQgPSAtRUZBVUxUOwo+ID4gLSAg
ICAgICAgICAgICAgIGdvdG8gZXJyX3VubG9jazsKPiA+IC0gICAgICAgfQo+Cj4gLS0KPiBEYW5p
ZWwgVmV0dGVyCj4gU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCj4gKzQxICgw
KSA3OSAzNjUgNTcgNDggLSBodHRwOi8vYmxvZy5mZndsbC5jaAoKCgotLSAKRGFuaWVsIFZldHRl
cgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KKzQxICgwKSA3OSAzNjUgNTcg
NDggLSBodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
