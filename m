Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED5544DAE
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 22:42:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E046488924;
	Thu, 13 Jun 2019 20:42:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 056B788924
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 20:42:13 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id k8so61422edr.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 13:42:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=vHlzNvSIV0ExsTixvxLrveMad1jscZ58LtvTwNhtS4g=;
 b=XdiOZGzr9fyInj2LdEqM0oa3mxOm8jH/SrbC8HrD3dldzk4aBJguqBd6ZwHeMj+0Tz
 tPaYqnXuziBffM20/BMOYeFDeEawtLxSFaoFVho+8P7spd7Vz3wvpTLCWsjzpxEqgFSL
 ttIGF3K42Ox8nssWPou0tRBIOELfdUlhlYn9Hgv8cBuu9NitRIa0Mac/HXTfPkJ8fmJ7
 s9CNmLDm1W2jt0Tc/XVbYZfSIlAaRqylzJvNVH+ZseowQYD4r1jrPfCUASnFGWXFWtvd
 QrM3NJ0+XGvrl4ttrPagNeoc3VIiKoGLGxvN1vVhSF+X1fDYdvcoRG5Q/J87g03PlCOl
 0Jng==
X-Gm-Message-State: APjAAAVMly3bwfBgZIcjMXit/ucSgcM8nIoAVyxKkqBtbhGx6nZRY+1+
 JQqGPP3PcelMoSPMcqYZgcwmYw==
X-Google-Smtp-Source: APXvYqz7vQzL7eqXEC3wH/C/VUTCDinY6N1IWW3KWo9Pv0FDKBlUtMi/bDhCHOgb2ZBcICZfn4wB/w==
X-Received: by 2002:a17:906:65d7:: with SMTP id
 z23mr10014239ejn.18.1560458531541; 
 Thu, 13 Jun 2019 13:42:11 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id bs5sm173874ejb.10.2019.06.13.13.42.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 13:42:10 -0700 (PDT)
Date: Thu, 13 Jun 2019 22:42:08 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20190613204208.GR23020@phenom.ffwll.local>
References: <20190613184335.7970-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613184335.7970-1-ville.syrjala@linux.intel.com>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=vHlzNvSIV0ExsTixvxLrveMad1jscZ58LtvTwNhtS4g=;
 b=OZ6Zx6szk1tDbC2wCIrT0zoqgbiCPv61DteeG4xsBIe4JZd5iqM3TKr6KVZHDZsdzi
 sz510jzPgHTi4vtcl5aXK2J3jSq680bs3HvS9qOpbXps56J46gsJkmRkDb3k2rP2jesm
 /rGIJ48u4La8DGFWNTfJFz6z4rsi/fZM7rl1Y=
Subject: Re: [Intel-gfx] [RFC][PATCH 0/2] drm: PATH prop for all connectors?
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
Cc: intel-gfx@lists.freedesktop.org, Ilia Mirkin <imirkin@alum.mit.edu>,
 Pekka Paalanen <ppaalanen@gmail.com>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdW4gMTMsIDIwMTkgYXQgMDk6NDM6MzNQTSArMDMwMCwgVmlsbGUgU3lyamFsYSB3
cm90ZToKPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IAo+IEhlcmUncyBhIHBvc3NpYmxlIGFwcG9yb2FjaCBmb3IgcHJvdmlkaW5nIHVzZXJz
cGFjZSB3aXRoCj4gc29tZSBzdGFibGUgY29ubmVjdG9yIGlkZW50aWZpZXJzLiBDb21iaW5lIHdp
dGggdGhlIGJ1cwo+IG5hbWUgb2YgdGhlIEdQVSBhbmQgeW91IHNob3VsZCBoYXZlIHNvbWUga2lu
ZCBvZiByZWFsCj4gcGh5c2ljYWwgcGF0aCBkZXNjcmlwdGlvbi4gVW5mb3J0dW5hdGVseSB0aGUg
c2hpcCBoYXMKPiBzYWlsZWQgZm9yIE1TVCBjb25uZWN0b3JzIGJlY2F1c2UgdXNlcnNwYWNlIGlz
IGFscmVhZHkKPiBwYXJzaW5nIHRoZSBwcm9wZXJ0eSBhbmQgZXhwZWN0cyB0byBmaW5kIGNlcnRh
aW4gdGhpbmdzCj4gdGhlcmUuIFNvIGlmIHdlIHdhbnQgc3RhYmxlIG5hbWVzIGZvciB0aG9zZSB3
ZSdkIHByb2JhYmx5Cj4gaGF2ZSBpbnRyb2R1Y2UgYW5vdGhlciBQQVRIIHByb3AgKFBIWVNfUEFU
SD8pLgo+IAo+IEkgc3VwcG9zZSBvbmUgYWx0ZXJuYXRpdmUgd291bGQgdG8gbWFrZSB0aGUgY29u
bmVjdG9yIAo+IHR5cGVfaWQgc3RhYmxlLiBDdXJyZW50bHkgdGhhdCBpcyBiZWluZyBwb3B1bGF0
ZWQgYnkgZHJtIAo+IGNvcmUgYW5kIGl0J3MganVzdCBhIGdsb2JhbCBjb3VudGVyLiBOb3Qgc3Vy
ZSBob3cgYmFkbHkKPiB0aGluZ3Mgd291bGQgdHVybiBvdXQgaWYgd2UnZCBhbGxvdyBlYWNoIGRy
aXZlciB0byBzZXQKPiB0aGF0LiBJdCBjb3VsZCByZXN1bHQgaW4gY29uZmxpY3RpbmcgeHJhbmRy
IGNvbm5lY3Rvcgo+IG5hbWVzIGJldHdlZW4gZGlmZmVyZW50IEdQVXMgd2hpY2ggSSBzdXBwb3Nl
IHdvdWxkCj4gY29uZnVzZSBleGlzdGluZyB1c2Vyc3BhY2U/CgpJIHRoaW5rIHRoZSBvbmx5IHJl
YXNvbiB0aGlzIGdsb2JhbCBpZCBzdHVmZiBleGlzdHMgaXMgYmVjYXVzZSB3aXRoCm9yaWdpbmFs
IHhyYW5kciwgdGhhdCBzdHVmZiB3YXMgZ2xvYmFsLiBBbmQgdGhlbiBpdCBnb3QgY29weXBhc3Rl
ZApmb3JldmVyLgoKV291bGQgbmVlZCB0byBkbyBhIGJ1bmNoIG9mIHJldmlld2luZywgYnV0IEkn
ZCBleHBlY3Qgd2UnbGwgZ2V0IGF3YXkgd2l0aApqdXN0IG1ha2luZyBhbGwgdGhlc2UgYWxsb2Nh
dG9ycyBwZXItZGV2aWNlLgotRGFuaWVsCgo+IAo+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxA
ZmZ3bGwuY2g+Cj4gQ2M6IFBla2thIFBhYWxhbmVuIDxwcGFhbGFuZW5AZ21haWwuY29tPgo+IENj
OiBJbGlhIE1pcmtpbiA8aW1pcmtpbkBhbHVtLm1pdC5lZHU+Cj4gCj4gVmlsbGUgU3lyasOkbMOk
ICgyKToKPiAgIGRybTogSW1wcm92ZSBQQVRIIHByb3AgZG9jcwo+ICAgZHJtL2k5MTU6IFBvcHVs
YXRlIFBBVEggcHJvcCBmb3IgZXZlcnkgY29ubmVjdG9yCj4gCj4gIGRyaXZlcnMvZ3B1L2RybS9k
cm1fY29ubmVjdG9yLmMgICAgICAgIHwgMTMgKysrKysrKystLQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pY2xfZHNpLmMgICAgICAgICB8ICAzICsrKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9jb25uZWN0b3IuYyB8IDIwICsrKysrKysrKysrKysrKwo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9jb25uZWN0b3IuaCB8ICAzICsrKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9jcnQuYyAgICAgICB8ICAyICsrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rw
LmMgICAgICAgIHwgIDYgKysrKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHBfbXN0
LmMgICAgfCAgMyArLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHZvLmMgICAgICAg
fCAgMyArKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaGRtaS5jICAgICAgfCAgNCAr
KysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbHZkcy5jICAgICAgfCAgMiArKwo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zZHZvLmMgICAgICB8IDM1ICsrKysrKysrKysrKysr
KysrKy0tLS0tLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3R2LmMgICAgICAgIHwg
IDIgKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvdmx2X2RzaS5jICAgICAgICAgfCAgMyArKysK
PiAgMTMgZmlsZXMgY2hhbmdlZCwgODMgaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pCj4g
Cj4gLS0gCj4gMi4yMS4wCj4gCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwg
SW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
