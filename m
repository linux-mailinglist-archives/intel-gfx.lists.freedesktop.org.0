Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 737F438610
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 10:23:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF76389C59;
	Fri,  7 Jun 2019 08:23:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE8DA89C59
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 08:23:12 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id p26so1837492edr.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 07 Jun 2019 01:23:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=/Tq3pZVzYGhF+zxFbKdcHBQjRXbmBqbCu2P9dGifwx0=;
 b=kSWsjPyyXC0UMOzClXpzxf8EuE62rsirsxgiJUIyuZpKxfP2e+Hva4O2I2VCnPbShO
 Jt2j9q29D4jlvBw16PGLBChFJ/0mGo3vYiO0T2UY4Hhsaxa+EF7aseiztG2GWQEOzZIh
 /H8+fn4KsDjO7FUAiLVF6AIefF1pWUQFtlfe9PoqMSnDpqqGF8ttvoG2/1Z0hMyXjuBy
 xr/vqJWmXRxm9fN8woJx8YIZONrp00LgcW2Z+cNaiE+J1qtpx7mPyiA7R0XfTBvS8Nw7
 kJfxWN3AUCCV2ahc6J7uMV1lOtY6xJw/yYH90E45y5eqNudVp7uzPafasZ5KFVvSvSPG
 Pnyw==
X-Gm-Message-State: APjAAAXeTn/vlOQoCz0jpRJoEn3UzTQ5vLaj9Z78WPFy+Ks1XSiiXMoX
 mahhZkPsrpE1GGb6u6rq/Lu1LQ==
X-Google-Smtp-Source: APXvYqyAVMPgup3d0H/N/KxdMf27ItVdD4b8+DUMKrpR7FvmshurGP/vmgTNhd7pWF3ovD+721dVow==
X-Received: by 2002:a50:bdc5:: with SMTP id z5mr39259134edh.61.1559895791397; 
 Fri, 07 Jun 2019 01:23:11 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id bo11sm252583ejb.12.2019.06.07.01.23.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 01:23:10 -0700 (PDT)
Date: Fri, 7 Jun 2019 10:23:08 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20190607082308.GF21222@phenom.ffwll.local>
References: <20190606073800.64781-1-harish.chegondi@intel.com>
 <CAKMK7uFW3D73tUpV9w0G2B-2Z=jJum1v732gMxV9Lf9zd9Laow@mail.gmail.com>
 <87blzb0vwa.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87blzb0vwa.fsf@intel.com>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=/Tq3pZVzYGhF+zxFbKdcHBQjRXbmBqbCu2P9dGifwx0=;
 b=XLi4ZCFcVf1H7JQYqIopPycvLFnm0BUPy1osql9CY813KdECB8dtBjd8vfdA/FLhWT
 +WBtKKrdsmuFWB5vbsUPMkIJe8ONNBRsHUB1Xx+igpkEHTdIOWT78x2g6/7T0V5YDMnC
 /Cp6aqmHlv4Wjz374eNwr4XCMR/VzSBi/nL9w=
Subject: Re: [Intel-gfx] [RFC] drm: Do not call drm_probe_ddc() when
 connector force isn't specified
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

T24gVGh1LCBKdW4gMDYsIDIwMTkgYXQgMDI6NTY6NTNQTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gT24gVGh1LCAwNiBKdW4gMjAxOSwgRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNo
PiB3cm90ZToKPiA+IE9uIFRodSwgSnVuIDYsIDIwMTkgYXQgOTozOCBBTSBIYXJpc2ggQ2hlZ29u
ZGkKPiA+IDxoYXJpc2guY2hlZ29uZGlAaW50ZWwuY29tPiB3cm90ZToKPiA+Pgo+ID4+IFRoaXMg
d291bGQgYWxsb3cgdGhlIEVESUQgb3ZlcnJpZGUgdG8gYmUgaGFuZGxlZCBjb3JyZWN0bHkgaW4K
PiA+PiBkcm1fZG9fZ2V0X2VkaWQoKSBmb3IgY2FzZXMgd2hlcmUgRURJRCBkYXRhIGlzIG1pc3Np
bmcgb3IgY29ycnVwdC4KPiA+Pgo+ID4+IEFsbCBkcm1fcHJvYmVfZGRjKCkgZG9lcyBpcyBjYWxs
IGRybV9kb19wcm9iZV9kZGNfZWRpZCggLCAsICwgMSkKPiA+PiB3aGljaCBwcm9iZXMgdGhlIGRp
c3BsYXkgYnkgcmVhZGluZyAxIGJ5dGUgb2YgRURJRCBkYXRhIHZpYSBJMkMuCj4gPj4gVGhpcyBw
YXRjaCByZW1vdmVzIHRoZSBjYWxsIHRvIGRybV9wcm9iZV9kZGMoKSBmcm9tIGRybV9nZXRfZWRp
ZCgpCj4gPj4gYnV0IGRybV9nZXRfZWRpZCgpIGNhbGxzIGRybV9kb19nZXRfZWRpZCgpIHdoaWNo
IGZpcnN0IGhhbmRsZXMKPiA+PiB0aGUgRURJRCBvdmVycmlkZSBjYXNlIGFuZCB0aGVuIGNhbGxz
Cj4gPj4gZHJtX2RvX3Byb2JlX2RkY19lZGlkKCAsICwgLEVESURfTEVOR1RIKSB2aWEgZnVuY3Rp
b24gcG9pbnRlcgo+ID4+IGFyZ3VtZW50IGdldF9lZGlkX2Jsb2NrLiBTbywgdGhlIGRpc3BsYXkg
ZGV2aWNlIGlzIHN0aWxsIGJlaW5nCj4gPj4gcHJvYmVkIGJ5IHJlYWRpbmcgRURJRF9MRU5HVEgg
Ynl0ZXMgb2YgRURJRCBkYXRhIHZpYSBJMkMuCj4gPj4KPiA+PiBDYzogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGludGVsLmNvbT4KPiA+PiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KPiA+PiBTaWduZWQtb2ZmLWJ5OiBIYXJpc2ggQ2hlZ29uZGkg
PGhhcmlzaC5jaGVnb25kaUBpbnRlbC5jb20+Cj4gPj4gUmVmZXJlbmNlczogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NTgzCj4gPgo+ID4gU2luY2UgaXQn
cyBhIHJlZ3Jlc3Npb24gd2UgbmVlZCB0byBhbm5vdGF0ZSB0aGlzIGNvcnJlY3RseSwgZm9yIHRo
ZQo+ID4gbmV4dCB2ZXJzaW9uIHBsZWFzZSBpbmNsdWRlOgo+ID4KPiA+IEZpeGVzOiA1M2ZkNDBh
OTBmM2MgKCJkcm06IGhhbmRsZSBvdmVycmlkZSBhbmQgZmlybXdhcmUgRURJRCBhdAo+ID4gZHJt
X2RvX2dldF9lZGlkKCkgbGV2ZWwiKQo+ID4gQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwub3JnPiAj
IHY0LjE1Kwo+ID4KPiA+IFNvIHRoZXJlJ3MgYSBwaWxlIG1vcmUgZHJtX3Byb2JlX2RkYyBjYWxs
cyBhbGwgYXJvdW5kIGluIGRyaXZlcnMsIGJ1dAo+ID4gSSByZXZpZXdlZCB0aGVtIGFsbCwgYW5k
IHRoZXkncmUgYWxsIGluIC0+ZGV0ZWN0IGNhbGxiYWNrcy4gU28gbm90Cj4gPiBhZmZlY3Rpbmcg
dGhlIHJlZ3Jlc3Npb24gd2UncmUgZGlzY3Vzc2luZyBoZXJlLiBMb29raW5nIGF0Cj4gPiBkcm1f
ZG9fZ2V0X2VkaWQgdGhpcyBzaG91bGQgYWxzbyBub3QgcmVzdWx0IGluIG1vcmUgZmFpbHVyZXMu
IFRoZSBvbmx5Cj4gPiB0aGluZyB0aGlzIGNoYW5nZXMgaXMgdGhhdCBkcm1fZG9fZ2V0X2VkaWQg
d2lsbCByZXRyeSBhIGJ1bmNoIG1vcmUKPiA+IHRpbWVzIGlmIG5vdGhpbmcgaXMgY29ubmVjdGVk
ICg0IHRpbWVzLCBpbnN0ZWFkIG9mIGp1c3QgdGhlIG9uZSBwcm9iZQo+ID4gdGhhdCBkcm1fcHJv
YmVfZGRjIGRvZXMpLiBJIGd1ZXNzIHdlIGNhbiByZXN0b3JlIHRoYXQgaWYgYW55b25lIGNhcmVz
LAo+ID4gc2hvdWxkIGF0IGxlYXN0IG1lbnRpb24gaXQgaW4gdGhlIGNvbW1pdCBtZXNzYWdlLgo+
ID4KPiA+IFJldmlld2VkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNo
Pgo+IAo+IExpa2UgSSBleHBsYWluZWQgaW4gbXkgcmVwbHksIHRoaXMgZXNzZW50aWFsbHkgbWFr
ZXMgb3ZlcnJpZGUvZmlybXdhcmUKPiBFRElEIGEgY29ubmVjdG9yIGZvcmNlIGZvciB0aGUgY2Fz
ZSB3aGVyZSBob3RwbHVnIGRldGVjdCBpc24ndCB1c2VkIG9yCj4gcmVsaWFibGUuIFRoYXQncyBh
IHJlZ3Jlc3Npb24gZm9yIGFub3RoZXIgc2V0IG9mIHBlb3BsZS4uLgoKU28gcmV2ZXJ0IHRvIHRo
ZSBvbGQgdGhpbmcgaWYgd2UgY2FuJ3QgZmlndXJlIHRoaXMgb3V0PyBJIGtpbmRhIGZpZ3VyZWQg
aXQKcHJvYmFibHkgZG9lc24ndCBtYXR0ZXIgbXVjaCwgZWRpZCBvdmVycmlkZSBwZW9wbGUgdXN1
YWxseSB3YW50IHRoYXQgZWRpZCwKYW5kIGRvbid0IGV4cGVjdCBpdCB0byBub3Qgd29yay4KCkFu
b3RoZXIgb3B0aW9uIHdvdWxkIGJlIGhhdmUgdGhlIG92ZXJyaWRlIGVkaWQgYXMgYSBmYWxsYmFj
ayBpZgotPmdldF9tb2RlcyByZXR1cm5zIG5vdGhpbmcgYW5kIHdlIGRvIGhhdmUgYW4gZWRpZCBw
cmVzZW50LiBUaGF0IHNob3VsZCBiZQpjbG9zZXIgdG8gZXhhY3RseSBtYXRjaGluZyB0aGUgb2xk
IHNlbWFudGljcy4gQnV0IGFnYWluLCB0aGlzIGhlcmUgaXMKcHJvYmFibHkgZ29vZCBlbm91Z2gu
Ci1EYW5pZWwKCj4gCj4gQlIsCj4gSmFuaS4KPiAKPiAKPiA+Cj4gPgo+ID4+IC0tLQo+ID4+ICBk
cml2ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYyB8IDMgLS0tCj4gPj4gIDEgZmlsZSBjaGFuZ2VkLCAz
IGRlbGV0aW9ucygtKQo+ID4+Cj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1f
ZWRpZC5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9lZGlkLmMKPiA+PiBpbmRleCBkODdmNTc0ZmVl
Y2EuLjQxYzQyMDcwNjUzMiAxMDA2NDQKPiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2Vk
aWQuYwo+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jCj4gPj4gQEAgLTE3MjQs
OSArMTcyNCw2IEBAIHN0cnVjdCBlZGlkICpkcm1fZ2V0X2VkaWQoc3RydWN0IGRybV9jb25uZWN0
b3IgKmNvbm5lY3RvciwKPiA+PiAgICAgICAgIGlmIChjb25uZWN0b3ItPmZvcmNlID09IERSTV9G
T1JDRV9PRkYpCj4gPj4gICAgICAgICAgICAgICAgIHJldHVybiBOVUxMOwo+ID4+Cj4gPj4gLSAg
ICAgICBpZiAoY29ubmVjdG9yLT5mb3JjZSA9PSBEUk1fRk9SQ0VfVU5TUEVDSUZJRUQgJiYgIWRy
bV9wcm9iZV9kZGMoYWRhcHRlcikpCj4gPj4gLSAgICAgICAgICAgICAgIHJldHVybiBOVUxMOwo+
ID4KPiA+IFRyb3VibGUgaXMgdGhlcmUncyBhIGxvdCBtb3JlIGRybV9wcm9iZV9kZGMgY2FsbHMg
YWxsIG92ZXIsIGFuZCBhIGxvdCBvZiB0aGVzZQo+ID4+IC0KPiA+PiAgICAgICAgIGVkaWQgPSBk
cm1fZG9fZ2V0X2VkaWQoY29ubmVjdG9yLCBkcm1fZG9fcHJvYmVfZGRjX2VkaWQsIGFkYXB0ZXIp
Owo+ID4+ICAgICAgICAgaWYgKGVkaWQpCj4gPj4gICAgICAgICAgICAgICAgIGRybV9nZXRfZGlz
cGxheWlkKGNvbm5lY3RvciwgZWRpZCk7Cj4gPj4gLS0KPiA+PiAyLjIxLjAKPiA+Pgo+ID4+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4gSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdAo+ID4+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+
PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo+IAo+IC0tIAo+IEphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50
ZXIKCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlv
bgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
