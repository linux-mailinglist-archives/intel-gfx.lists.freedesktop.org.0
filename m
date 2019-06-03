Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C89A32AB3
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 10:24:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 227AC891EF;
	Mon,  3 Jun 2019 08:24:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A6BA89203
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2019 08:24:36 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id y17so7666756edr.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Jun 2019 01:24:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=HE9MrYWk0LwOZ6ZhU7UYpiJ/R36kzKVGkvtKKkNs/QA=;
 b=dDaikeKvdr+OwZtxuNJ8970vcMm7ldvzp0QY0tnhW6GeyoRF/DvkbmssqD8URziTsY
 HA+adLov3OMU5A53W3G0/de1F1Fvv1LnkqSfzH5/bUqmnyubUV7B8oEZZCN8S1Jybows
 Qg19R2h5mH+qvZcfOwTxikiy9x5fi2SqHMAuU71NcT7bov+H/5mD8RI5Lmx9pZwmgiT2
 skrsGoIMrKZk+c/3xmVTM9PICpBQ4/qFGvutXTE3NGFLVP9JwBGMfgrg1KDDl9ucIJAF
 2F8/Rc9PwFaDfuSNQULlwQ4Whl3I9kMVYavQ+2PY7ueN8ceTOidodaeSuQsz40lZzY79
 WHGA==
X-Gm-Message-State: APjAAAUePlRPFm4GjrrvoqMOn9ql9LBo2cHPIlWHQyyAFqU2RuaeL/Jd
 Mcp43R4ygs04VE8HVxmxexZIVQ==
X-Google-Smtp-Source: APXvYqxJ/wAlk43GpRnV3PV5gXHHLDDhkUM038SKU6uDuQU9SIeBaTDO6XQ/DC/CcsjreVBz++xa8w==
X-Received: by 2002:aa7:d401:: with SMTP id z1mr27727697edq.129.1559550275278; 
 Mon, 03 Jun 2019 01:24:35 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id f22sm2491026eja.16.2019.06.03.01.24.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Jun 2019 01:24:34 -0700 (PDT)
Date: Mon, 3 Jun 2019 10:24:32 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20190603082432.GJ21222@phenom.ffwll.local>
References: <1559159944-21103-1-git-send-email-uma.shankar@intel.com>
 <1559159944-21103-5-git-send-email-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559159944-21103-5-git-send-email-uma.shankar@intel.com>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HE9MrYWk0LwOZ6ZhU7UYpiJ/R36kzKVGkvtKKkNs/QA=;
 b=OV5Bpa5gdwyJ4k+zQCpLjxuAGAOUSWdTsmVq0xjy5xgbXwd4xjp1ckZ0tqEHR6T9c7
 Ebpw+LA09/83cmem1xfQgxB1szzNG35e14Y7cVvAIwQfedK51BZndr4raWTFOXa1qZCW
 JZuhKeAKtGARqoOGolY1INJRCE9bq39oN7+zg=
Subject: Re: [Intel-gfx] [PATCH 4/4] video/hdmi: Dropped static functions
 from kernel doc
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
Cc: dcastagna@chromium.org, jonas@kwiboo.se, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, seanpaul@chromium.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBNYXkgMzAsIDIwMTkgYXQgMDE6Mjk6MDRBTSArMDUzMCwgVW1hIFNoYW5rYXIgd3Jv
dGU6Cj4gRHJvcHBlZCBzdGF0aWMgZnVuY3Rpb25zIGZyb20ga2VybmVsIGRvY3VtZW50YXRpb24u
Cj4gCj4gU3VnZ2VzdGVkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+Cj4gU2ln
bmVkLW9mZi1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4KPiAtLS0KPiAg
ZHJpdmVycy92aWRlby9oZG1pLmMgfCAzMiArKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0t
LQo+ICAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmlkZW8vaGRtaS5jIGIvZHJpdmVycy92aWRlby9oZG1p
LmMKPiBpbmRleCBiOTliYTAxLi43MmM2NTRiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdmlkZW8v
aGRtaS5jCj4gKysrIGIvZHJpdmVycy92aWRlby9oZG1pLmMKPiBAQCAtMTE5MSwxMSArMTE5MSwx
MSBAQCBzdGF0aWMgY29uc3QgY2hhciAqaGRtaV9udXBzX2dldF9uYW1lKGVudW0gaGRtaV9udXBz
IG51cHMpCj4gIAlyZXR1cm4gIkludmFsaWQiOwo+ICB9Cj4gIAo+IC0vKioKPiArLyoKPiAgICog
aGRtaV9hdmlfaW5mb2ZyYW1lX2xvZygpIC0gbG9nIGluZm8gb2YgSERNSSBBVkkgaW5mb2ZyYW1l
Cj4gLSAqIEBsZXZlbDogbG9nZ2luZyBsZXZlbAo+IC0gKiBAZGV2OiBkZXZpY2UKPiAtICogQGZy
YW1lOiBIRE1JIEFWSSBpbmZvZnJhbWUKPiArICogbGV2ZWw6IGxvZ2dpbmcgbGV2ZWwKPiArICog
ZGV2OiBkZXZpY2UKPiArICogZnJhbWU6IEhETUkgQVZJIGluZm9mcmFtZQo+ICAgKi8KPiAgc3Rh
dGljIHZvaWQgaGRtaV9hdmlfaW5mb2ZyYW1lX2xvZyhjb25zdCBjaGFyICpsZXZlbCwKPiAgCQkJ
CSAgIHN0cnVjdCBkZXZpY2UgKmRldiwKPiBAQCAtMTI2OCwxMSArMTI2OCwxMSBAQCBzdGF0aWMg
Y29uc3QgY2hhciAqaGRtaV9zcGRfc2RpX2dldF9uYW1lKGVudW0gaGRtaV9zcGRfc2RpIHNkaSkK
PiAgCXJldHVybiAiUmVzZXJ2ZWQiOwo+ICB9Cj4gIAo+IC0vKioKPiArLyoKPiAgICogaGRtaV9z
cGRfaW5mb2ZyYW1lX2xvZygpIC0gbG9nIGluZm8gb2YgSERNSSBTUEQgaW5mb2ZyYW1lCj4gLSAq
IEBsZXZlbDogbG9nZ2luZyBsZXZlbAo+IC0gKiBAZGV2OiBkZXZpY2UKPiAtICogQGZyYW1lOiBI
RE1JIFNQRCBpbmZvZnJhbWUKPiArICogbGV2ZWw6IGxvZ2dpbmcgbGV2ZWwKPiArICogZGV2OiBk
ZXZpY2UKPiArICogZnJhbWU6IEhETUkgU1BEIGluZm9mcmFtZQo+ICAgKi8KCkZvciBpbnRlcm5h
bCBmdW5jdGlvbnMgSSB0aGluayB0aGVyZSdzIG5vdCByZWFsbHkgYW55IHZhbHVlIGluIGRvY3Vt
ZW50aW5nCnRoaXMuIFRoZSB2YXJpYWJsZSBuYW1lcyBhcmUgb2J2aW91cyBlbm91Z2guIEltbyBi
ZXR0ZXIgdG8gZGl0Y2ggdGhpcwpvdXRyaWdodC4KLURhbmllbAoKPiAgc3RhdGljIHZvaWQgaGRt
aV9zcGRfaW5mb2ZyYW1lX2xvZyhjb25zdCBjaGFyICpsZXZlbCwKPiAgCQkJCSAgIHN0cnVjdCBk
ZXZpY2UgKmRldiwKPiBAQCAtMTQwNCwxMSArMTQwNCwxMSBAQCBzdGF0aWMgdm9pZCBoZG1pX3Nw
ZF9pbmZvZnJhbWVfbG9nKGNvbnN0IGNoYXIgKmxldmVsLAo+ICAJcmV0dXJuICJSZXNlcnZlZCI7
Cj4gIH0KPiAgCj4gLS8qKgo+ICsvKgo+ICAgKiBoZG1pX2F1ZGlvX2luZm9mcmFtZV9sb2coKSAt
IGxvZyBpbmZvIG9mIEhETUkgQVVESU8gaW5mb2ZyYW1lCj4gLSAqIEBsZXZlbDogbG9nZ2luZyBs
ZXZlbAo+IC0gKiBAZGV2OiBkZXZpY2UKPiAtICogQGZyYW1lOiBIRE1JIEFVRElPIGluZm9mcmFt
ZQo+ICsgKiBsZXZlbDogbG9nZ2luZyBsZXZlbAo+ICsgKiBkZXY6IGRldmljZQo+ICsgKiBmcmFt
ZTogSERNSSBBVURJTyBpbmZvZnJhbWUKPiAgICovCj4gIHN0YXRpYyB2b2lkIGhkbWlfYXVkaW9f
aW5mb2ZyYW1lX2xvZyhjb25zdCBjaGFyICpsZXZlbCwKPiAgCQkJCSAgICAgc3RydWN0IGRldmlj
ZSAqZGV2LAo+IEBAIC0xNDM3LDExICsxNDM3LDExIEBAIHN0YXRpYyB2b2lkIGhkbWlfYXVkaW9f
aW5mb2ZyYW1lX2xvZyhjb25zdCBjaGFyICpsZXZlbCwKPiAgCQkJZnJhbWUtPmRvd25taXhfaW5o
aWJpdCA/ICJZZXMiIDogIk5vIik7Cj4gIH0KPiAgCj4gLS8qKgo+ICsvKgo+ICAgKiBoZG1pX2Ry
bV9pbmZvZnJhbWVfbG9nKCkgLSBsb2cgaW5mbyBvZiBIRE1JIERSTSBpbmZvZnJhbWUKPiAtICog
QGxldmVsOiBsb2dnaW5nIGxldmVsCj4gLSAqIEBkZXY6IGRldmljZQo+IC0gKiBAZnJhbWU6IEhE
TUkgRFJNIGluZm9mcmFtZQo+ICsgKiBsZXZlbDogbG9nZ2luZyBsZXZlbAo+ICsgKiBkZXY6IGRl
dmljZQo+ICsgKiBmcmFtZTogSERNSSBEUk0gaW5mb2ZyYW1lCj4gICAqLwo+ICBzdGF0aWMgdm9p
ZCBoZG1pX2RybV9pbmZvZnJhbWVfbG9nKGNvbnN0IGNoYXIgKmxldmVsLAo+ICAJCQkJICAgc3Ry
dWN0IGRldmljZSAqZGV2LAo+IC0tIAo+IDEuOS4xCj4gCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0
d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
