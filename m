Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2887AD73
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 18:22:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B21516E5C0;
	Tue, 30 Jul 2019 16:22:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD32A6E5BE
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 16:22:45 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id i11so63105591edq.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 09:22:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=L9zKf4sIvs0WPV4bLfx3hpfPSkRoDP5mCmasnZpySQk=;
 b=eEGya8S0MsIyuVAGJXyqgUtUd+Cc8kZ64Q3bhAVQaDGrgbs8snDbo8uGFhiXRJlCZ3
 oOMQ4QIptoTi5NaOEPecmKFik0XUxgISUjSHtd2GyAK4XPys2VPlJTzeV8FfCGA1cDan
 OYd5jSOlehWPR/mr2k78qECUoZWr77KduidCdLM8IRgMy0tsGIwsYeA0S5BaeeU2hOEQ
 FMnAHZKTTTJgHyztEY0mmsoyvBVoQNft+HyBNqUXWI3F6ckIbxvAc4vpszY5XsxLlRDU
 G070tes/dp7cu6KoL3hAy3CLNEm0QcQyLXWyOJxKzYWbiCbUHobAsNWcuyet40AsRG7B
 KOfw==
X-Gm-Message-State: APjAAAW+kHSJ2lKS6DS1+y+Wt1EeepQ+dsicFqhNlKM3uX6VMaISlqyv
 m2+hEUSrWwAgCsGD7lSWK1DoXujbqxE=
X-Google-Smtp-Source: APXvYqzdlj1Rk7IMQ6DgFAqo6xeR36VE21VCcMzo8BewBtSQk/SGinH2j697JDAVtjPqek4QyemeYg==
X-Received: by 2002:a50:ec98:: with SMTP id
 e24mr102106152edr.264.1564503764420; 
 Tue, 30 Jul 2019 09:22:44 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id k11sm15955442edq.54.2019.07.30.09.22.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 30 Jul 2019 09:22:43 -0700 (PDT)
Date: Tue, 30 Jul 2019 18:22:41 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <20190730162241.GB7444@phenom.ffwll.local>
References: <20190627205633.1143-1-matthew.auld@intel.com>
 <20190627205633.1143-30-matthew.auld@intel.com>
 <20190730094901.GQ15868@phenom.ffwll.local>
 <cb58b75f-0951-6591-02ad-7055da8503c3@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cb58b75f-0951-6591-02ad-7055da8503c3@intel.com>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=L9zKf4sIvs0WPV4bLfx3hpfPSkRoDP5mCmasnZpySQk=;
 b=iikfcNKMgOEuPsUJ5k3v4+p4mDRHlFGuOagxizF4rvZKKfscAHrbhHxexzSoantJo2
 I7Pev1d8K8iacOEPDrDe53Tv74Xvw0LF/02FdmNgGDCMQnoda47S7dZG10Px37U8skK/
 N3L/kyC1XzKnVMPy+vs6NkL7Q3ImsWNF3fqyg=
Subject: Re: [Intel-gfx] [PATCH v2 29/37] drm/i915: Introduce
 DRM_I915_GEM_MMAP_OFFSET
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

T24gVHVlLCBKdWwgMzAsIDIwMTkgYXQgMDM6Mjg6MTFQTSArMDEwMCwgTWF0dGhldyBBdWxkIHdy
b3RlOgo+IE9uIDMwLzA3LzIwMTkgMTA6NDksIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gPiBPbiBU
aHUsIEp1biAyNywgMjAxOSBhdCAwOTo1NjoyNVBNICswMTAwLCBNYXR0aGV3IEF1bGQgd3JvdGU6
Cj4gPiA+IEZyb206IEFiZGllbCBKYW51bGd1ZSA8YWJkaWVsLmphbnVsZ3VlQGxpbnV4LmludGVs
LmNvbT4KPiA+ID4gCj4gPiA+IEFkZCBhIG5ldyBDUFUgbW1hcCBpbXBsZW1lbnRhdGlvbiB0aGF0
IGFsbG93cyBtdWx0aXBsZSBmYXVsdCBoYW5kbGVycwo+ID4gPiB0aGF0IGRlcGVuZHMgb24gdGhl
IG9iamVjdCdzIGJhY2tpbmcgcGFnZXMuCj4gPiA+IAo+ID4gPiBOb3RlIHRoYXQgd2UgbXVsdGlw
bGV4IG1tYXBfZ3R0IGFuZCBtbWFwX29mZnNldCB0aHJvdWdoIHRoZSBzYW1lIGlvY3RsLAo+ID4g
PiBhbmQgdXNlIHRoZSB6ZXJvIGV4dGVuZGluZyBiZWhhdmlvdXIgb2YgZHJtIHRvIGRpZmZlcmVu
dGlhdGUgYmV0d2Vlbgo+ID4gPiB0aGVtLCB3aGVuIHdlIGluc3BlY3QgdGhlIGZsYWdzLgo+ID4g
PiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogQWJkaWVsIEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVA
bGludXguaW50ZWwuY29tPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRo
ZXcuYXVsZEBpbnRlbC5jb20+Cj4gPiA+IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0
aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4gPiAKPiA+IFNvIEkgdGhvdWdodCB0aGF0IHRoZSBwbGFu
IGlzIHRvIHJlamVjdCBpbnZhbGlkIG1tYXBzLCBpLmUuIG1tYXAgbW9kZXMKPiA+IHdoaWNoIGFy
ZSBub3QgY29tcGF0aWJhbGUgd2l0aCBhbGwgcGxhY2VtZW50IG9wdGlvbnMuIEdpdmVuIHRoYXQs
IHdoeSBkbwo+ID4gd2UgbmVlZCB0aGlzPwo+IAo+IFdlIGFyZSBtZWFudCB0byByZWplY3QgYW55
dGhpbmcgIXdjIGZvciBMTUVNLiBUaGVyZSB3ZXJlIHNvbWUgcGF0Y2hlcyBmb3IKPiB0aGF0IGJ1
dCBJIGd1ZXNzIGdvdCBsb3N0IHVuZGVyIHRoZSByYWRhci4uLgo+IAo+ID4gCj4gPiAtIGNwdSBt
bWFwIHdpdGggYWxsIHRoZSBmbGFncyBzdGlsbCBrZWVwIHdvcmtpbmcsIGFzIGxvbmcgYXMgdGhl
IG9ubHkKPiA+ICAgIHBsYWNlbWVudCB5b3Ugc2VsZWN0IGlzIHNtZW0uCj4gPiAKPiA+IC0gZm9y
IGxtZW0vc3RvbGVuIHRoZSBvbmx5IG9wdGlvbiB3ZSBoYXZlIGlzIGEgd2MgbWFwcGluZywgZWl0
aGVyIHRocm91Z2gKPiA+ICAgIHRoZSBwY2kgYmFyIG9yIHRocm91Z2ggdGhlIGd0dC4gU28gZm9y
IG9iamVjdHMgb25seSBzaXR0aW5nIGluIHRoZXJlCj4gPiAgICBhbHNvIG5vIHByb2JsZW0sIHdl
IGNhbiBqdXN0IGtlZXAgdXNpbmcgdGhlIGN1cnJlbnQgZ3R0IG1tYXAgc3R1ZmYgKGJ1dAo+ID4g
ICAgcmVkaXJlY3QgaXQgaW50ZXJuYWxseSkuCj4gPiAKPiA+IC0gdGhhdCBsZWF2ZXMgdXMgd2l0
aCBvYmplY3RzIHdoaWNoIGNhbiBtb3ZlIGFyb3VuZC4gT25seSBvcHRpb24gYWxsb3dzIGlzCj4g
PiAgICBXQywgYW5kIHRoZSBndHQgbW1hcCBpb2N0bCBkb2VzIHRoYXQgYWxyZWFkeS4gV2hlbiB0
aGUgb2JqZWN0IGlzIGluIHNtZW0KPiA+ICAgIHdlJ2xsIG5lZWQgdG8gcmVkaXJlY3QgaXQgdG8g
YSBjcHUgd2MgbW1hcCwgYnV0IEkgdGhpbmsgd2UgbmVlZCB0byBkbwo+ID4gICAgdGhhdCBhbnl3
YXkuCj4gCj4gU28gZm9yIGxlZ2FjeSwgZ3R0X21tYXAgd2lsbCBzdGlsbCBnbyB0aHJvdWdoIHRo
ZSBhcGVydHVyZSwgb3RoZXJ3aXNlIGlmCj4gTE1FTSBpcyBzdXBwb3J0ZWQgdGhlbiB0aGVyZSBp
cyBubyBhcGVydHVyZSwgc28gd2UganVzdCB3YyBtbWFwIHZpYSBjcHUgb3IKPiBMTUVNQkFSIGRl
cGVuZGluZyBvbiB0aGUgZmluYWwgb2JqZWN0IHBsYWNlbWVudC4gQW5kIGNwdV9tbWFwIHN0aWxs
IHdvcmtzIGlmCj4gd2UgZG9uJ3QgY2FyZSBhYm91dCBMTUVNLiBIbW0sIHNvIGRvIHdlIGV2ZW4g
bmVlZCBtb3N0IG9mIHRoZSBwcmV2aW91cyBwYXRjaAo+IHRoZW4/IEFMc28gZG9lcyB0aGF0IG1l
YW4gd2UgYWxzbyBoYXZlIHRvIHRyYWNrIHRoZSBwbGFjZW1lbnQgb2YgYW4gb2JqZWN0Cj4gaW4g
aWd0Pwo+IAo+IGdlbV9tbWFwX193YzoKPiAKPiBpZiAoc3VwcG9ydHNfbG1lbShkZXYpKQo+IAln
dHRfbW1hcCgpOwo+IGVsc2UKPiAJZ2VtX21tYXAod2MpOwo+IAo+IGdlbV9tbWFwX193YzoKPiAK
PiBpZiAocGxhY2VtZW50X2NvbnRhaW5zKG9iaiwgTE1FTSkpCj4gCWd0dF9tbWFwKCk7Cj4gZWxz
ZQo+IAlnZW1fbW1hcCh3Yyk7Cj4gCj4gPwoKV2VsbCBpZiB5b3Ugd2FudCBjcHUgd2MgbW1hcHMs
IHRoZW4ganVzdCBhbGxvY2F0ZSBpdCBhcyBzbWVtIC4uLiB3ZSBtaWdodApuZWVkIGEgbmV3IGdl
bV9tbWFwX19sbWVtIEkgZ3Vlc3MgdG8gZXhlcmNpc2UgYWxsIHRoZSBwb3NzaWJsZSB3YXlzIHRv
IGdldAphdCBzdHVmZiBpbiBsbWVtIChpbmNsdWRpbmcgd2hlbiBpdCBtaWdyYXRlcyBhcm91bmQg
dW5kZXJuZWF0aCB1cyB3aGlsZSB3ZQphY2Nlc3MgaXQgdGhyb3VnaCB0aGUgbW1hcCkuIEkgd291
bGRuJ3QgdHJ5IHRvbyBoYXJkIHRvIHNtYXNoIGFsbCB0aGVzZQp1c2UvdGVzdGNhc2VzIGludG8g
b25lLgoKPiA+IFNvIG5vdCByZWFsbHkgc2VlaW5nIHdoYXQgdGhlIHVhcGkgcHJvYmxlbSBpcyB5
b3UncmUgdHJ5aW5nIHRvIHNvbHZlIGhlcmU/Cj4gPiAKPiA+IENhbiB5b3UgcGxzIGV4cGxhaW4g
d2h5IHdlIG5lZWQgdGhpcz8KPiAKPiBUaGUgbmFtaW5nIG9mIGd0dF9tbWFwIHNlZW1lZCBjb25m
dXNpbmcsIHNpbmNlIHRoZXJlIGlzIG5vIGFwZXJ0dXJlLCBhbmQKPiBoYXZpbmcgb25lIG1tYXAg
aW9jdGwgdG8gY292ZXIgYm90aCBzbWVtIGFuZCBsbWVtIHNlZW1lZCBsaWtlIGEgbmljZQo+IGlk
ZWEuLi5hbHNvIEkgdGhpbmsgdW1kJ3Mgc3RvcHBlZCB1c2luZyBndHRfbW1hcChvciB3ZXJlIHRv
bGQgdG8/KSBidXQgbWF5YmUKPiB0aG9zZSBhcmVuJ3QgZ29vZCBlbm91Z2ggcmVhc29ucy4KCldl
IHN0b3BwZWQgdXNpbmcgZ3R0IG1tYXAgYmVjYXVzZSBmb3IgbWFueSBjYXNlcyBjcHUgV0MgbW1h
cCBpcyBmYXN0ZXIuCgpXcnQgaGF2aW5nIGEgY2xlYW4gc2xhdGU6IE5vdCBzdXJlIHdoeSB0aGlz
IHdvdWxkIGJlbmVmaXQgdXMsIHdlIGp1c3QKZGl2ZXJnZSBhIGJpdCBtb3JlIGZyb20gaG93IHRo
aXMgd29ya3Mgb24gIWxtZW0sIHNvIGEgYml0IG1vcmUgY29tcGxleGl0eQoobm90IG11Y2gpIGV2
ZXJ5d2hlcmUgZm9yIG5vdCBtdWNoIGdhaW4uCgpJJ20gYWxzbyBub3Qgc3VyZSB3aGV0aGVyIHRo
ZXJlIHdpbGwgYmUgYSB3aG9sZSBsb3Qgb2YgdXNlcyBvZiBzdWNoIGEKbWFnaWMgTE1FTUJBUiB3
YyBtYXBwaW5nLiBJdCdzIHByb2JhYmx5IHNsb3cgZm9yIHRoZSBleGFjdCBzYW1lIHJlYXNvbnMK
Z3R0IG1tYXAgaXMgc2xvdy4KLURhbmllbAotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdp
bmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
