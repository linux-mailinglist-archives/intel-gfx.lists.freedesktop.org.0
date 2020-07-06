Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F80E215930
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 16:11:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B9026E415;
	Mon,  6 Jul 2020 14:10:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com
 [IPv6:2a00:1450:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C61F56E415
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 14:10:57 +0000 (UTC)
Received: by mail-lj1-x244.google.com with SMTP id e4so45571854ljn.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 06 Jul 2020 07:10:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hardline-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:content-transfer-encoding:cc:in-reply-to:references
 :from:to:subject:date:message-id:user-agent;
 bh=pHOnEnXh2m7AIEyOvbsE8JtdPTLdd8SiyPvQvzo1eFU=;
 b=og5JYbOoeyAWHoVAwvkSIiL+D24eqwv3XczeygqikKzzEcw3bsK2ZTdKK/zuZPYNH1
 d6Csv5wGcz4LzBwPiIASYuadK4WpYU66AU4Z33zT7e0oIrQWFADwT92j3SZwMgEvu4Um
 O9B17tRWkgTqQdyJqb91yC3UbRxooAxL8XlJ7xXxMaqZoKYqmeRgb7k27rmMH4yH89De
 pdWNVOvqn3mXzHjt9Cm4qXZ5b+8r7wCp6OTqeHZpMyL1GdCy/nWBPTY/qvJ7kA1xFwPZ
 MSC3GxC4AYSR705p/eLiMemr/UMtYO9auTRmeH/uoZEjA+36fvWrWK+8QOjc8EX4B1l6
 PVzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding:cc
 :in-reply-to:references:from:to:subject:date:message-id:user-agent;
 bh=pHOnEnXh2m7AIEyOvbsE8JtdPTLdd8SiyPvQvzo1eFU=;
 b=qbhuYFBR8qpLrX9MKYpkyCnCHRjxuneiDTNHNY4yMSgePmXz8gUUheYEp08ZIznjyt
 tqcGAzFEW9N4obUu8BMpNyoKs4R3t8D2Y0OGzMZDXWLEbpdytvfbBpNHjm5Wzp0PQezF
 UJ2ZiF25T1k3FpYbOGB0fHTZAGS4IuxKhyBRb+nwf0HYTOYmhBzQe9XLqKPtybOHQUxX
 dV8FbWQUCJHwtlxSROtTlhLMuBK/+9BBoV+2QWJJMvhfy7NlypimaYPGKsntIL4AiUUH
 xjIZnJJwHfwC7SqLYVz/fvOXnUFoixwq4jlpQ9gKNPqzqMJ/3Ro04/PnDwZ33Qjp8ptV
 pW2Q==
X-Gm-Message-State: AOAM532kEWlwyUPdRSVIhegF8E4ArsYw/wh5TWi0bM07fESIOdlsaPIv
 o+uPDMQQlX2uY2cakTAd67uMdA==
X-Google-Smtp-Source: ABdhPJxZbl281OK8N1mfEgEkXyMdWlp/0sR8W0uX2hoj3g3SHWHWT+HTehYrkJw5Dpfg22Oa1Wt7VQ==
X-Received: by 2002:a2e:97d7:: with SMTP id m23mr16149296ljj.103.1594044656241; 
 Mon, 06 Jul 2020 07:10:56 -0700 (PDT)
Received: from localhost (109241244009.gdansk.vectranet.pl. [109.241.244.9])
 by smtp.gmail.com with ESMTPSA id t10sm435417ljg.60.2020.07.06.07.10.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jul 2020 07:10:55 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <c04c137d-9124-7b6b-04d7-a885d6dbb98f@intel.com>
References: <20200701142752.419878-1-michal@hardline.pl>
 <c04c137d-9124-7b6b-04d7-a885d6dbb98f@intel.com>
From: =?utf-8?q?Micha=C5=82?= Winiarski <michal@hardline.pl>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Mon, 06 Jul 2020 16:10:54 +0200
Message-ID: <159404465470.141426.9340493405425213853@macragge.hardline.pl>
User-Agent: alot/0.9.1
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Expand guc_info debugfs with
 more information
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
Cc: =?utf-8?q?Micha=C5=82?= Winiarski <michal.winiarski@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDIwLTA3LTAxIDE4OjQ1OjUyKQo+IAo+
IAo+IE9uIDcvMS8yMDIwIDc6MjcgQU0sIE1pY2hhxYIgV2luaWFyc2tpIHdyb3RlOgo+ID4gRnJv
bTogTWljaGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29tPgo+ID4KPiA+
IFRoZSBpbmZvcm1hdGlvbiBhYm91dCBwbGF0Zm9ybS9kcml2ZXIvdXNlciB2aWV3IG9mIEd1QyBm
aXJtd2FyZSB1c2FnZQo+ID4gY3VycmVudGx5IHJlcXVpcmVzIHVzZXIgdG8gZWl0aGVyIGdvIHRo
cm91Z2gga2VybmVsIGxvZyBvciBwYXJzZSB0aGUKPiA+IGNvbWJpbmF0aW9uIG9mICJlbmFibGVf
Z3VjIiBtb2RwYXJhbSBhbmQgdmFyaW91cyBkZWJ1Z2ZzIGVudHJpZXMuCj4gPiBMZXQncyBrZWVw
IHRoaW5ncyBzaW1wbGUgYW5kIGFkZCBhICJzdXBwb3J0ZWQvdXNlZC93YW50ZWQiIG1hdHJpeAo+
ID4gKGFscmVhZHkgdXNlZCBpbnRlcm5hbGx5IGJ5IGk5MTUpIGluIGd1Y19pbmZvIGRlYnVnZnMu
Cj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogTWljaGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5pYXJz
a2lAaW50ZWwuY29tPgo+ID4gQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2Vy
YW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gPiBDYzogTHVrYXN6IEZpZWRvcm93aWN6IDxsdWthc3ou
ZmllZG9yb3dpY3pAaW50ZWwuY29tPgo+ID4gQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53
YWpkZWN6a29AaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX2d1Yy5jIHwgMjMgKysrKysrKysrKysrKysrKy0tLS0tLS0KPiA+ICAgMSBmaWxl
IGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmMKPiA+IGluZGV4IDg2MTY1Nzg5N2MwZi4uNDQ2
YTQxOTQ2ZjU2IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfZ3VjLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5j
Cj4gPiBAQCAtNzMzLDE5ICs3MzMsMjggQEAgaW50IGludGVsX2d1Y19hbGxvY2F0ZV9hbmRfbWFw
X3ZtYShzdHJ1Y3QgaW50ZWxfZ3VjICpndWMsIHUzMiBzaXplLAo+ID4gICAgKi8KPiA+ICAgdm9p
ZCBpbnRlbF9ndWNfbG9hZF9zdGF0dXMoc3RydWN0IGludGVsX2d1YyAqZ3VjLCBzdHJ1Y3QgZHJt
X3ByaW50ZXIgKnApCj4gPiAgIHsKPiA+ICsgICAgIHN0cnVjdCBpbnRlbF91YyAqdWMgPSBjb250
YWluZXJfb2YoZ3VjLCBzdHJ1Y3QgaW50ZWxfdWMsIGd1Yyk7Cj4gPiAgICAgICBzdHJ1Y3QgaW50
ZWxfZ3QgKmd0ID0gZ3VjX3RvX2d0KGd1Yyk7Cj4gPiAgICAgICBzdHJ1Y3QgaW50ZWxfdW5jb3Jl
ICp1bmNvcmUgPSBndC0+dW5jb3JlOwo+ID4gICAgICAgaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7
Cj4gPiAgIAo+ID4gLSAgICAgaWYgKCFpbnRlbF9ndWNfaXNfc3VwcG9ydGVkKGd1YykpIHsKPiA+
IC0gICAgICAgICAgICAgZHJtX3ByaW50ZihwLCAiR3VDIG5vdCBzdXBwb3J0ZWRcbiIpOwo+ID4g
KyAgICAgZHJtX3ByaW50ZihwLCAiW2d1Y10gc3VwcG9ydGVkOiVzIHdhbnRlZDolcyB1c2VkOiVz
XG4iLAo+ID4gKyAgICAgICAgICAgICAgICB5ZXNubyhpbnRlbF91Y19zdXBwb3J0c19ndWModWMp
KSwKPiA+ICsgICAgICAgICAgICAgICAgeWVzbm8oaW50ZWxfdWNfd2FudHNfZ3VjKHVjKSksCj4g
PiArICAgICAgICAgICAgICAgIHllc25vKGludGVsX3VjX3VzZXNfZ3VjKHVjKSkpOwo+IAo+IFRo
ZXJlIGFyZSBpbnRlbF9ndWMgZXF1aXZhbGVudHMgZm9yIHRoZXJlIHVjIGZ1bmN0aW9ucywgc28g
d2UgY2FuIHVzZSAKPiB0aG9zZSBhbmQgYXZvaWQgdGhlIGludGVsX3VjIHZhciBpZiB3ZSBkaXRj
aCB0aGUgSHVDIChzZWUgY29tbWVudCBiZWxvdyk6Cj4gCj4gaW50ZWxfZ3VjX2lzX3N1cHBvcnRl
ZAo+IGludGVsX2d1Y19pc193YW50ZWQKPiBpbnRlbF9ndWNfaXNfdXNlZAo+IAo+IFNhbWUgZm9y
IHRoZSBvdGhlcnMuCj4gCj4gPiArICAgICBkcm1fcHJpbnRmKHAsICJbaHVjXSBzdXBwb3J0ZWQ6
JXMgd2FudGVkOiVzIHVzZWQ6JXNcbiIsCj4gPiArICAgICAgICAgICAgICAgIHllc25vKGludGVs
X3VjX3N1cHBvcnRzX2h1Yyh1YykpLAo+ID4gKyAgICAgICAgICAgICAgICB5ZXNubyhpbnRlbF91
Y193YW50c19odWModWMpKSwKPiA+ICsgICAgICAgICAgICAgICAgeWVzbm8oaW50ZWxfdWNfdXNl
c19odWModWMpKSk7Cj4gCj4gVGhlIEh1QyB2aWV3IHNob3VsZCBnbyB0byB0aGUgaHVjX2luZm8g
ZGVidWdmcwoKVGhpcyB3YXMgaW50ZW50aW9uYWwuIEZvciBIdUMgdGhlICJ3YW50cyIgcGFydCBp
cyBjb250cm9sbGVkIGJ5ICJlbmFibGVfZ3VjIiwKYW5kIGl0J3MgYWN0dWFsbHkgaGVscGZ1bCB0
byBzZWUgdGhhdCAiZ3VjIGlzIHVzZWQgYmVjYXVzZSB0aGUgdXNlci9wbGF0Zm9ybQp3YW50cyBo
dWMiLCBhbGwgaW4gdGhlIHNpbmdsZSAiY2F0IGd1Y19pbmZvIi4KSW4gb3RoZXIgd29yZHMgLSB0
aGlzIGlzIHN0aWxsIChhdCBsZWFzdCBwYXJ0aWFsbHkpIEd1QyB2aWV3IDopCgpTbywgZ2l2ZW4g
dGhlIGFib3ZlLCBkbyB5b3Ugc3RpbGwgdGhpbmsgd2Ugc2hvdWxkIG1vdmUgaXQgdG8gaHVjX2lu
Zm8/CgotTWljaGHFggoKPiAKPiA+ICsgICAgIGRybV9wcmludGYocCwgIltzdWJtaXNzaW9uXSBz
dXBwb3J0ZWQ6JXMgd2FudGVkOiVzIHVzZWQ6JXNcbiIsCj4gPiArICAgICAgICAgICAgICAgIHll
c25vKGludGVsX3VjX3N1cHBvcnRzX2d1Y19zdWJtaXNzaW9uKHVjKSksCj4gPiArICAgICAgICAg
ICAgICAgIHllc25vKGludGVsX3VjX3dhbnRzX2d1Y19zdWJtaXNzaW9uKHVjKSksCj4gPiArICAg
ICAgICAgICAgICAgIHllc25vKGludGVsX3VjX3VzZXNfZ3VjX3N1Ym1pc3Npb24odWMpKSk7Cj4g
PiArCj4gPiArICAgICBpZiAoIWludGVsX2d1Y19pc19zdXBwb3J0ZWQoZ3VjKSB8fCAhaW50ZWxf
Z3VjX2lzX3dhbnRlZChndWMpKQo+IAo+IGludGVsX2d1Y19pc193YW50ZWQgaW1wbGllcyBpbnRl
bF9ndWNfaXNfc3VwcG9ydGVkIHNvIHlvdSBjYW4gCj4gcG90ZW50aWFsbHkgdGVzdCBvbmx5IHRo
YXQsIGJ1dCBJIGFncmVlIHRoYXQgaGF2aW5nIGJvdGggaXMgY2xlYXJlciB0byByZWFkLgo+IAo+
IERhbmllbGUKPiAKPiA+ICAgICAgICAgICAgICAgcmV0dXJuOwo+ID4gLSAgICAgfQo+ID4gICAK
PiA+IC0gICAgIGlmICghaW50ZWxfZ3VjX2lzX3dhbnRlZChndWMpKSB7Cj4gPiAtICAgICAgICAg
ICAgIGRybV9wcmludGYocCwgIkd1QyBkaXNhYmxlZFxuIik7Cj4gPiAtICAgICAgICAgICAgIHJl
dHVybjsKPiA+IC0gICAgIH0KPiA+ICsgICAgIGRybV9wdXRzKHAsICJcbiIpOwo+ID4gICAKPiA+
ICAgICAgIGludGVsX3VjX2Z3X2R1bXAoJmd1Yy0+ZncsIHApOwo+ID4gICAKPgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
