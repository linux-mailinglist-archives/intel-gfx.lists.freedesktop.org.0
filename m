Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD72A12DBB
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 14:36:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07EB389E98;
	Fri,  3 May 2019 12:36:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D22F89E98
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 12:36:03 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id p26so5839598edr.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 May 2019 05:36:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=eb1wH6exbX6KJy08U+CdRavu586q/qmHW8NeHYSCizE=;
 b=hTzJDXeVhdPPGTCkTSixscP4Uf/wFQueLH/VN8FtTiSmXRWOqWjl1mwarbTs57xPEQ
 JdCklXbdUhsAATl4SFnYHow8mS8EQqX13Ks93PNFaNphrOCOz1M3mECmWS01VexLH2iT
 ipYu531KdCf1zuXNedXpsJtCVte6yA/P+nntNonV1SqqolL3S2MOtxVFUPnuz3oE8Djt
 3ApQJlpDekLQN9qYcDoLnpLQe+Kr81JTOz95V5VnqIcMtXa7WhSTSdNKNrIv6Qx7FLYn
 j2y2bfc7gPq8A0ps7igss1s7V4kOptONnvSJvCUzH+2xjUlNlJOQaIkzitSI985JoB7k
 znTA==
X-Gm-Message-State: APjAAAXsK3y3Xvk6fJCeATtlPIPC2jyeDICW1qMoEyT+oFKItKwvT5Cf
 nsVgbKNK821BdYrsFWcLT5z/V6uY9aU=
X-Google-Smtp-Source: APXvYqx0Kbbs6R4JFtOgGwLXY2EeldgcF3tsaKhEd8QiMEbNfFJC/4O2sdzuO4owLG58/bZtPYAEiQ==
X-Received: by 2002:a50:cc46:: with SMTP id n6mr8278435edi.11.1556886962232;
 Fri, 03 May 2019 05:36:02 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id t2sm575486eda.41.2019.05.03.05.36.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 May 2019 05:36:01 -0700 (PDT)
Date: Fri, 3 May 2019 14:35:59 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20190503123559.GN3271@phenom.ffwll.local>
References: <20190502101754.29219-1-imre.deak@intel.com>
 <877eb9oy77.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <877eb9oy77.fsf@intel.com>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=eb1wH6exbX6KJy08U+CdRavu586q/qmHW8NeHYSCizE=;
 b=XLp5CdU8156ChZHelHDPl6qT2AfvyeSaaqmdHGbD1HuCLxcKxbiI+nEO85XwUkK3uo
 Oy67ot5VBeOc3NgHGF66j3NoZ+7G8Ac+Z5gCNPJydxf9Tsar7rVoEEa8i312DYbhje76
 QIiXldtGYaM47d0nPkAIcKHlXO1His4888lys=
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Tune down WARN about incorrect
 VBT TC legacy flag
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBNYXkgMDIsIDIwMTkgYXQgMDM6MDk6MDBQTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gT24gVGh1LCAwMiBNYXkgMjAxOSwgSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29t
PiB3cm90ZToKPiA+IExvb2tzIGxpa2UgVkJUIGNvbnRhaW5zIGFnYWluIHRoZSB3cm9uZyBpbmZv
cm1hdGlvbiBhYm91dCBhIHBvcnQncyBUeXBlQwo+ID4gbGVnYWN5IHZzLiBEUC1hbHQvVEJULWFs
dCB0eXBlLiBUaGVyZSBpcyBubyBmdXJ0aGVyIGlzc3VlcyBhZnRlciB3ZQo+ID4gbm90aWNlIHRo
aXMgYW5kIGZpeCBpdCB1cCwgc28gdHVuZSBkb3duIHRoZSBXQVJOIHRvIGJlIGEgYSBEUk1fRVJS
T1IuCj4gPgo+ID4gVGhpcyBhbHNvIGF2b2lkcyBDSSB0YWludGluZyB0aGUga2VybmVsIGFuZCBz
dG9wcGluZyB0aGUgdGVzdCBydW4uCj4gPgo+ID4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDU3OAo+ID4gQ2M6IEphbmkgTmlrdWxhIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUu
ZGVha0BpbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
cC5jIHwgNyArKysrKy0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMKPiA+IGluZGV4IDRlN2I4
ZDI5ZDczMy4uMDdmYTI2NzBhNjc3IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZHAuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYwo+
ID4gQEAgLTUyMzAsOSArNTIzMCwxMiBAQCBzdGF0aWMgYm9vbCBpY2xfdGNfcG9ydF9jb25uZWN0
ZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ID4gIAkgKiBXQVJOIGlmIHdl
IGdvdCBhIGxlZ2FjeSBwb3J0IEhQRCwgYnV0IFZCVCBkaWRuJ3QgbWFyayB0aGUgcG9ydCBhcwo+
ICAgICAgICAgICAgXl5eXgo+IAo+IFdpdGggdGhlIGNvbW1lbnQgZml4ZWQsCj4gCj4gUmV2aWV3
ZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gCj4gPiAgCSAqIGxl
Z2FjeS4gVHJlYXQgdGhlIHBvcnQgYXMgbGVnYWN5IGZyb20gbm93IG9uLgo+ID4gIAkgKi8KPiA+
IC0JaWYgKFdBUk5fT04oIWludGVsX2RpZ19wb3J0LT50Y19sZWdhY3lfcG9ydCAmJgo+ID4gLQkJ
ICAgIEk5MTVfUkVBRChTREVJU1IpICYgU0RFX1RDX0hPVFBMVUdfSUNQKHRjX3BvcnQpKSkKPiA+
ICsJaWYgKCFpbnRlbF9kaWdfcG9ydC0+dGNfbGVnYWN5X3BvcnQgJiYKPiA+ICsJICAgIEk5MTVf
UkVBRChTREVJU1IpICYgU0RFX1RDX0hPVFBMVUdfSUNQKHRjX3BvcnQpKSB7Cj4gPiArCQlEUk1f
RVJST1IoIlZCVCBpbmNvcnJlY3RseSBjbGFpbXMgcG9ydCAlYyBpcyBub3QgVHlwZUMgbGVnYWN5
XG4iLAo+ID4gKwkJCSAgcG9ydF9uYW1lKHBvcnQpKTsKPiA+ICAJCWludGVsX2RpZ19wb3J0LT50
Y19sZWdhY3lfcG9ydCA9IHRydWU7CgpEUk1fRVJSUk9SIHN0aWxsIGNhdXNlcyBDSSBmYWlsdXJl
cyAoZS5nLiBtb2R1bGUgcmVsb2FkLCB3aGVyZSBJIGd1ZXNzCnRoaXMgZW5kcyB1cCBpbiB0aGUg
bG9ncykuCgpJZiB3ZSByZWFsbHkgY2FuIGZ1bGx5IGZpeCBpdCB1cCBJIHRoaW5rIGEgRFJNX0lO
Rk8gaXMgdGhlIHJpZ2h0IGxldmVsLgotRGFuaWVsCgo+ID4gKwl9Cj4gPiAgCWlzX2xlZ2FjeSA9
IGludGVsX2RpZ19wb3J0LT50Y19sZWdhY3lfcG9ydDsKPiA+ICAKPiA+ICAJLyoKPiAKPiAtLSAK
PiBKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFp
bGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgotLSAKRGFuaWVs
IFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cu
ZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
