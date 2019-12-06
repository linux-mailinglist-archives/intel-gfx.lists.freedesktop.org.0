Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFD011518F
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2019 14:55:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69C516FA24;
	Fri,  6 Dec 2019 13:55:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com
 [IPv6:2607:f8b0:4864:20::b42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 041B26FA24
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2019 13:55:11 +0000 (UTC)
Received: by mail-yb1-xb42.google.com with SMTP id o63so2976290ybc.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 06 Dec 2019 05:55:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=VjQf3RhA2z9xFHieYv2ZGj3ufiTxnyYOgCnNAiMQNz8=;
 b=HCDGXvBKaG4MZbzlC5+jtYWnfaCBpxihqwIImXbaWLLg2RDSSfzoJAxapZ3q5gv4oD
 qgUM6I6xkTmfzOW/3ffrQLcmI6nJKyc444zXmkhv+AIcs0qRowaqV8ILyK7GE1xfS1Sd
 XGU/UlTRNB2EnoMx4jM3D2AtPnGqxYtLB+BUySh3tKzQ/Bgp8oQ1m88bJAfHDWgLg0wW
 Vi0oQx7h2NmN38IPkfVrqmy6tmSIMOTXMAzHdfQK14gwDgdZDxNzQX54HP6770Ojqs3Q
 jEYPcGhR5ZR9x6IJ9n1H8F8U/QQ8ROozo92O6FTfwyUwpxvNoUWTAEaT0QYYP/SIv41b
 i8Xg==
X-Gm-Message-State: APjAAAXExsmAm6XbyZjhjA6Rv/eqDVfwQjNauHFocay1SsCgFJGPqgvW
 NuYfScR+srti+RlZT4tXLlFR2A==
X-Google-Smtp-Source: APXvYqy6f2pLioynihSgw6uuQ8D8xZxDyGY8Ws2QGtlBe8sGM/x4qPVt8HVrsVNT/PJW72Xn3WLiiw==
X-Received: by 2002:a25:7788:: with SMTP id s130mr9172395ybc.369.1575640510143; 
 Fri, 06 Dec 2019 05:55:10 -0800 (PST)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id 129sm6197687ywm.67.2019.12.06.05.55.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Dec 2019 05:55:09 -0800 (PST)
Date: Fri, 6 Dec 2019 08:55:09 -0500
From: Sean Paul <sean@poorly.run>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20191206135509.GE162979@art_vandelay>
References: <20191203173638.94919-1-sean@poorly.run>
 <20191203173638.94919-4-sean@poorly.run>
 <20191205193319.GK1208@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191205193319.GK1208@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=VjQf3RhA2z9xFHieYv2ZGj3ufiTxnyYOgCnNAiMQNz8=;
 b=aPDoFFrjNsRts8Lx80uCU+H/1pcP+l8KCO+gdV4w1FGp97RRz47TiWiNNRnXO4iOwT
 E1U3yRw52O2ccdnwZw1PPASh+EjH9cSlVR6r5SFnjnAfHPSQyfTVoCTiZPYUtwfJHRaO
 d5qgjeorzGtL5XLcVa3Q++tb9X58Kzq47z6wcJJZNU096D4wnzb9DGDJZ21hHXHoXPWg
 7uYIzs8Dob516cpSPqmWKOq/eYhfFOMWJnsLi6FnuLzWe5Mzk8CGw957ZqkN143IJfOv
 nScXPDMBzyBO7VpGi39oubCQE5hhnChYcfrhK/vOCAAusF9P8HiY5D4Pm9knH2YlZ/Nv
 kYqw==
Subject: Re: [Intel-gfx] [PATCH 03/11] drm/i915: Disable HDCP signalling on
 transcoder disable
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, ramalingm.c@intel.com,
 Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBEZWMgMDUsIDIwMTkgYXQgMDk6MzM6MTlQTSArMDIwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+IE9uIFR1ZSwgRGVjIDAzLCAyMDE5IGF0IDEyOjM2OjI2UE0gLTA1MDAsIFNlYW4g
UGF1bCB3cm90ZToKPiA+IEZyb206IFNlYW4gUGF1bCA8c2VhbnBhdWxAY2hyb21pdW0ub3JnPgo+
ID4gCj4gPiBDdXJyZW50bHkgd2UgcmVseSBvbiBpbnRlbF9oZGNwX2Rpc2FibGUoKSB0byBkaXNh
YmxlIEhEQ1Agc2lnbmFsbGluZyBpbgo+ID4gdGhlIERESSBGdW5jdGlvbiBDb250cm9sIHJlZ2lz
dGVyLiBUaGlzIHBhdGNoIGFkZHMgYSBzYWZldHkgbmV0IGJ5IGFsc28KPiA+IGNsZWFyaW5nIHRo
ZSBiaXQgd2hlbiB3ZSBkaXNhYmxlIHRoZSB0cmFuc2NvZGVyLgo+ID4gCj4gPiBPbmNlIHdlIGhh
dmUgSERDUCBvdmVyIE1TVCBhbmQgZGlzYXBwZWFyaW5nIGNvbm5lY3RvcnMsIHdlIHdhbnQgdG8g
bWFrZQo+ID4gc3VyZSB0aGF0IHRoZSBzaWduYWxsaW5nIGlzIHRydWx5IGRpc2FibGVkIGV2ZW4g
aWYgSERDUCB0ZWFyZG93biBkb2Vzbid0Cj4gPiBnbyBhcyBwbGFubmVkLgo+IAo+IFdoeSB3b3Vs
ZG4ndCBpdCBnbyBhcyBwbGFubmVkPwo+IAoKQmVjYXVzZSB0aGluZ3MgY2FuIGZhaWwgaW4gd2Vp
cmQgYW5kIHdvbmRlcmZ1bCB3YXlzIG9uIHVucGx1ZyA6LSkKCkl0J3MgYSBzYWZldHkgbmV0LiBJ
IHNhdyB0aGlzIGZ1bmN0aW9uIGFuZCBmaWd1cmVkIEhEQ1Agc2lnbmFsbGluZyBzaG91bGQgYmUK
ZXhwbGljaXRseSBjbGVhcmVkIGhlcmUgYXMgd2VsbC4KClNlYW4KCj4gPiAKPiA+IFNpZ25lZC1v
ZmYtYnk6IFNlYW4gUGF1bCA8c2VhbnBhdWxAY2hyb21pdW0ub3JnPgo+ID4gLS0tCj4gPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDEzICsrKysrKy0tLS0tLS0K
PiA+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+ID4g
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPiA+IGluZGV4IGI1
MWYyNDRhZDdhNS4uZThhYzk4YThlZTdmIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYwo+ID4gQEAgLTE5NTIsMTMgKzE5NTIsMTIgQEAgdm9pZCBpbnRl
bF9kZGlfZGlzYWJsZV90cmFuc2NvZGVyX2Z1bmMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUKPiA+ICAJaTkxNV9yZWdfdCByZWcgPSBUUkFOU19ERElfRlVOQ19DVEwo
Y3B1X3RyYW5zY29kZXIpOwo+ID4gIAl1MzIgdmFsID0gSTkxNV9SRUFEKHJlZyk7Cj4gPiAgCj4g
PiAtCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKSB7Cj4gPiAtCQl2YWwgJj0gfihUUkFO
U19ERElfRlVOQ19FTkFCTEUgfCBUR0xfVFJBTlNfRERJX1BPUlRfTUFTSyB8Cj4gPiAtCQkJIFRS
QU5TX0RESV9EUF9WQ19QQVlMT0FEX0FMTE9DKTsKPiA+IC0JfSBlbHNlIHsKPiA+IC0JCXZhbCAm
PSB+KFRSQU5TX0RESV9GVU5DX0VOQUJMRSB8IFRSQU5TX0RESV9QT1JUX01BU0sgfAo+ID4gLQkJ
CSBUUkFOU19ERElfRFBfVkNfUEFZTE9BRF9BTExPQyk7Cj4gPiAtCX0KPiA+ICsJdmFsICY9IH4o
VFJBTlNfRERJX0ZVTkNfRU5BQkxFIHwgVFJBTlNfRERJX0RQX1ZDX1BBWUxPQURfQUxMT0MgfAo+
ID4gKwkJIFRSQU5TX0RESV9IRENQX1NJR05BTExJTkcpOwo+ID4gKwlpZiAoSU5URUxfR0VOKGRl
dl9wcml2KSA+PSAxMikKPiA+ICsJCXZhbCAmPSB+VEdMX1RSQU5TX0RESV9QT1JUX01BU0s7Cj4g
PiArCWVsc2UKPiA+ICsJCXZhbCAmPSB+VFJBTlNfRERJX1BPUlRfTUFTSzsKPiA+ICAJSTkxNV9X
UklURShyZWcsIHZhbCk7Cj4gPiAgCj4gPiAgCWlmIChkZXZfcHJpdi0+cXVpcmtzICYgUVVJUktf
SU5DUkVBU0VfRERJX0RJU0FCTEVEX1RJTUUgJiYKPiA+IC0tIAo+ID4gU2VhbiBQYXVsLCBTb2Z0
d2FyZSBFbmdpbmVlciwgR29vZ2xlIC8gQ2hyb21pdW0gT1MKPiA+IAo+ID4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IEludGVsLWdmeCBtYWlsaW5n
IGxpc3QKPiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+IGh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cj4gCj4gLS0gCj4g
VmlsbGUgU3lyasOkbMOkCj4gSW50ZWwKCi0tIApTZWFuIFBhdWwsIFNvZnR3YXJlIEVuZ2luZWVy
LCBHb29nbGUgLyBDaHJvbWl1bSBPUwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
