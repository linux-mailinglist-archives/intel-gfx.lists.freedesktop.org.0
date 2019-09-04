Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 996CFA85A7
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 16:30:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 006FE89C08;
	Wed,  4 Sep 2019 14:30:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com
 [IPv6:2607:f8b0:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3B1389C08
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 14:30:11 +0000 (UTC)
Received: by mail-oi1-x241.google.com with SMTP id a127so16021922oii.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Sep 2019 07:30:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=C92u2yjpuJRTig3vbfSjS1cV6g+CiitEo0L2V+hKHK4=;
 b=ZxE0DErgjYpTUx547z4Dpymc1zoFwNQBaZJUYaGllmGAT0uk94i6YJ7YZmP/cDdGNh
 XY8YJ0FY5BZdwrCrOarxGPw5Gx67Qb51lG+25ncOF1QVxI1EgKp723UOFc2QibyWARIt
 SRx8VboO1Q+3GK8aEsC0pWxU3LqZPpEcDfI9hwaCyQYIJktUXjuJuNYLmReHADcgL5yd
 vndkOWF0lqrerFzJzXohtar5cbIPasJlZ/IAzY5Cxnj5IspZLigi5GmaUBf+noHuCHqS
 DknLI5tv/4n8KExa97SsYQWKkWYWQByW03bfHsHRLa/OcuG3Iq5+QgfPO1tJHQ9BLPRq
 yQHQ==
X-Gm-Message-State: APjAAAWI82FWo74S7BD8D65ec958IFUJruy36QIBDInEkKMRaGW73sWZ
 ki0Fte4Ivz/BvDRU8IjQJzgKpUYrY6VLDO/JZXH9mg==
X-Google-Smtp-Source: APXvYqxFVPEAcqa/s7wHuv8IMdEXECskXXy7hFNcR3YCfOlNeRrYaXHjz4eRZ9U43AFsSrMwszlQ9/QzShOYEZqzB5k=
X-Received: by 2002:aca:afd6:: with SMTP id y205mr3572895oie.14.1567607411075; 
 Wed, 04 Sep 2019 07:30:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190820170631.26570-1-daniel.vetter@ffwll.ch>
 <20190820195451.15671-1-daniel.vetter@ffwll.ch>
 <055acb8e-8ba4-52b7-8cba-a5fef504e95e@intel.com>
 <20190821135537.GI5942@intel.com>
 <CAKMK7uFBXmDXA32dUhfvkxqxYDidbt0R6rowXBk7BwUBMU9qqA@mail.gmail.com>
 <CAOFGe97==LTH0pUh2idtA0SqQLf=+Tq90h0cBVwhv4gkHLq-7Q@mail.gmail.com>
 <e01a7b6890346444f3fa3f78cca1a2315412a37a.camel@intel.com>
 <156702323116.15406.18211831116094527542@skylake-alporthouse-com>
 <6c22439c4f38d0be6f8183bbe279c9e0f3db983b.camel@intel.com>
 <20190829065004.GG2112@phenom.ffwll.local>
 <f3057a98459f5ace5d89b0ae981d0dfcf61de197.camel@intel.com>
In-Reply-To: <f3057a98459f5ace5d89b0ae981d0dfcf61de197.camel@intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 4 Sep 2019 16:29:59 +0200
Message-ID: <CAKMK7uH2XAKf+ninB9FySYCzC6ZLrJtb8AXXRmzwxrWdBPZYjg@mail.gmail.com>
To: "Souza, Jose" <jose.souza@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=C92u2yjpuJRTig3vbfSjS1cV6g+CiitEo0L2V+hKHK4=;
 b=NEBB1y+XtB/Rgek6trSE2YU+ZwBrJwDPsATdouO8AKu6Wcf44xke862VQd6PXEeZOl
 9ODhnLNB73dq1pRqdbopYb7RUVVG9qt/gOlKz2ePkq5hn3ibPo2ePl5YoY0SBpWeFbbI
 oZRGZTVXnJweTaPK5jiqTskpVpc59Wwh1wMiw=
Subject: Re: [Intel-gfx] [PATCH] drm/i915: disable set/get_tiling ioctl on
 gen12+
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "kenneth@whitecape.org" <kenneth@whitecape.org>, "Auld,
 Matthew" <matthew.auld@intel.com>, "Vetter, Daniel" <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBTZXAgMywgMjAxOSBhdCA5OjIxIFBNIFNvdXphLCBKb3NlIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4gd3JvdGU6Cj4KPiBPbiBUaHUsIDIwMTktMDgtMjkgYXQgMDg6NTAgKzAyMDAsIERh
bmllbCBWZXR0ZXIgd3JvdGU6Cj4gPiBPbiBXZWQsIEF1ZyAyOCwgMjAxOSBhdCAwODozMToyN1BN
ICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToKPiA+ID4gT24gV2VkLCAyMDE5LTA4LTI4IGF0IDIx
OjEzICswMTAwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiA+ID4gUXVvdGluZyBTb3V6YSwgSm9z
ZSAoMjAxOS0wOC0yOCAyMToxMTo1MykKPiA+ID4gPiA+IFJldmlld2VkLWJ5OiBKb3PDqSBSb2Jl
cnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPiA+ID4gPgo+ID4gPiA+IEl0J3Mg
dXNpbmcgYSBub24tc3RhbmRhcmQgZm9yIGk5MTUgZXJyb3IgY29kZSwgYW5kIGdldF90aWxpbmcg
aXMKPiA+ID4gPiBub3QKPiA+ID4KPiA+ID4gSHV1bSBzaG91bGQgaXQgdXNlIEVOT1RTVVBQIHRo
ZW4/IQo+ID4KPiA+IGh0dHBzOi8vZHJpLmZyZWVkZXNrdG9wLm9yZy9kb2NzL2RybS9ncHUvZHJt
LXVhcGkuaHRtbCNyZWNvbW1lbmRlZC1pb2N0bC1yZXR1cm4tdmFsdWVzCj4gPgo+ID4gUGVyIGFi
b3ZlICJmZWF0dXJlIG5vdCBzdXBwb3J0ZWQiIC0+IEVPUE5PVFNVUFAuCj4KPiBCdXQgbGlrZSBD
aHJpcyBzYWlkIHdlIGFyZSBub3QgdXNpbmcgRU9QTk9UU1VQUCBpbiBpOTE1LAo+IGk5MTVfcGVy
Zl9vcGVuX2lvY3RsKCkgYW5kIG90aGVyIDIgcGVyZiBpb2N0bCB1c2VzIEVOT1NVUFAsIHNob3Vs
ZCB3ZQo+IGNvbnZlcnQgdGhvc2UgdG8gRU9QTk9UU1VQUD8KCiQgZ2l0IGdyZXAgRU9QTk9UU1VQ
IC0tIGRyaXZlcnMvZ3B1L2RybS8gfCB3YyAtbAoxMTQKJCBnaXQgZ3JlcCBFTk9UU1VQIC0tIGRy
aXZlcnMvZ3B1L2RybS8gfCB3YyAtbAozMgoKUGx1cyBpOTE1X3BtdS5jIGFsc28gaGFzIGEgdXNl
IG9mIEVPUE5PVFNVUFAgYWxyZWFkeS4KCkZ1cnRoZXJtb3JlIHRoZSBoZWFkZXIgZm9yIEVPUE5P
VFNVUCBoYXMgYSBwcmV0dHkgY2xlYXIgY29tbWVudDoKCi8qIERlZmluZWQgZm9yIHRoZSBORlN2
MyBwcm90b2NvbCAqLwoKQWJvdmUgdGhlIGVudG9yZSBibG9jayBvZiBlcnJvciBjb2RlcyBjb250
YWluaW5nIEVOT1RTVVBQLgoKU28gZ2l2ZW4gYWxsIHRoYXQsIHBsdXMgdGhhdCB3ZSd2ZSBkZWNp
ZGVkIHRvIGdvIHdpdGggRU9QTk9UU1VQUCBhcwp0aGUgZHJtLXdpZGUgcmVjb21tZW5kYXRpb246
IEVPUE5PVFNVUFAgaXQgaXMuCgpJZiB5b3UgZGlzYWdyZWUsIEkgdGhpbmsgdGhlcmUncyBhIHBy
ZXR0eSBzdWJzdGFudGlhbCBwYXRjaCBzZXJpZXMgZm9yCnlvdSB0byB0eXBlIGFuZCBmaXggdGhl
IGRvY3MgYW5kIG1vc3QgdXNlcnMgcGx1cyBleHBsYWluIHdoeSB3ZSBzaG91bGQKdXNlIGFuIG5z
Zi1zcGVjaWZpYyBlcnJvciBjb2RlICh3aGljaCBpc24ndCBtdWNoIHdvcnNlIHRoYW4gdGhlCmFi
dXNlL3JlaW50ZXJwcmV0YXRpb24gd2UgY3VycmVudGx5IGRvLCBidXQgc3RpbGwgSSB0aGluayBp
dCdzIGEgYml0Cm1vcmUgYmVuZGluZyBvZiBlcnJubyBjb2RlIGludGVudGlvbnMpLgoKQ2hlZXJz
LCBEYW5pZWwKCgoKPgo+ID4KPiA+ID4gPiBhZmZlY3RlZCwgaXQgd2lsbCBhbHdheXMgcmV0dXJu
IExJTkVBUi4gWW91IGNhbm5vdCBzZXQgdGlsaW5nIGFzCj4gPiA+Cj4gPiA+IEZvbGxvd2luZyB0
aGlzIHNldF90aWxpbmcoKSBMSU5FQVIgc2hvdWxkIGJlIGFsbG93ZWQgdG9vLgo+ID4gPiBJIHBy
ZWZlciB0aGUgY3VycmVudCBhcHByb2FjaCBvZiByZXR1cm5pbmcgZXJyb3IuCj4gPgo+ID4gSSdt
IG5vdCBzZWVpbmcgdGhlIHZhbHVlIGluIGtlZXBpbmcgZ2V0X3RpbGluZyBzdXBwb3J0ZWQuIEVp
dGhlcgo+ID4gdXNlcnNwYWNlCj4gPiBzdGlsbCB1c2VzIHRoZSBsZWdhY3kgYmFja2hhbm5lbCBh
bmQgZHJpMiwgaW4gd2hpY2ggY2FzZSBpdCBuZWVkcyB0bwo+ID4gYmUKPiA+IGZpeGVkIG5vIG1h
dHRlciB3aGF0LiBPciBpdCdzIHVzaW5nIG1vZGlmaWVycywgaW4gd2hpY2ggY2FzZSB0aGlzIGlz
Cj4gPiBkZWFkCj4gPiBjb2RlLiBPbmx5IG90aGVyIHVzZXIgSSBjYW4gdGhpbmsgb2YgaXMgdGFr
ZW92ZXIgZm9yIGZhc3Rib290LCBidXQgaWYKPiA+IHlvdQo+ID4gZ2V0IGFueXRoaW5nIGVsc2Ug
dGhhbiB1bnRpbGVkIGl0J3MgYWxzbyBicm9rZW4gKHdlIGRvbid0IGhhdmUgYW4KPiA+IGlvY3Rs
IHRvCj4gPiByZWFkIG91dCB0aGUgbW9kaWZpZXJzLCBoZWNrIGV2ZW4gYWxsIHRoZSBwbGFuZXMs
IHRoZXJlJ3Mgbm8gZ2V0ZmIyKS4KPiA+Cj4gPiBTbyByZWFsbHkgbm90IHNlZWluZyB0aGUgcG9p
bnQgaW4ga2VlcGluZyB0aGF0IHdvcmtpbmcuCj4gPiAtRGFuaWVsCgoKCi0tIApEYW5pZWwgVmV0
dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgorNDEgKDApIDc5IDM2NSA1
NyA0OCAtIGh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
