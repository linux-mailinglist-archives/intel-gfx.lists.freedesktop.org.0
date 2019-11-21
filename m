Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 171251053AC
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 14:56:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1343E6EF3A;
	Thu, 21 Nov 2019 13:56:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ED466EF3D
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2019 13:56:30 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id b18so4498117wrj.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2019 05:56:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=UubM55Y2EgXgiJCPt2qtJJuRBgNrWumSBH0CC5Jm0oA=;
 b=pXt0QVJHh8StkzaxZlWKw3GunHHoMpyDWgNvwAceZA7x2mqBEaBA7cFl1Lw0qfG9dk
 FeAAk+TDmDHAHSR0gQVSVbaQARBNL+/nN5w8FwhOqtsR0iyrIsRKy9ck4SbSP2Udgzxv
 LCo/LAKvdtmN4kIwqVJY71HE7j0KpnJ/mdM7ThZTQc9utM6fJsQrfdeldpLXlHFqc1tq
 o99JSqBraeD68gll84XXq6ig3FyU6HCQQB4g9cWPa5UrvBKkrPvO3mHwShiXv5fC5o03
 LlHLOk+CJh5J39f7y47FU9GTK2hriGWKtISswxRT2LJywxsmUSX6Hdv1sKuDUsTt7ABD
 vK5A==
X-Gm-Message-State: APjAAAU+5YS8YZ2AAcrg/4ThGz0KIfoRV3gg/SfL0bdSPYeQ4Q5fDbiK
 GCxb3KuR5SeIRnKlPa0rJno2iA==
X-Google-Smtp-Source: APXvYqwPyE2J/RcbdCdVdML0zcd1qcpUV5e1LfiFukam1/WYzTdrOBF+B6EQQb5NDgqCoQE6NflWUw==
X-Received: by 2002:adf:e881:: with SMTP id d1mr11072912wrm.296.1574344589143; 
 Thu, 21 Nov 2019 05:56:29 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id q25sm3438463wra.3.2019.11.21.05.56.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 05:56:28 -0800 (PST)
Date: Thu, 21 Nov 2019 14:56:26 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Gerd Hoffmann <kraxel@redhat.com>, Rob Herring <robh@kernel.org>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>,
 Christian Koenig <christian.koenig@amd.com>, Huang Rui <ray.huang@amd.com>,
 open list <linux-kernel@vger.kernel.org>
Message-ID: <20191121135626.GG6236@phenom.ffwll.local>
Mail-Followup-To: Gerd Hoffmann <kraxel@redhat.com>,
 Rob Herring <robh@kernel.org>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>,
 Christian Koenig <christian.koenig@amd.com>,
 Huang Rui <ray.huang@amd.com>,
 open list <linux-kernel@vger.kernel.org>
References: <20191121103807.18424-1-kraxel@redhat.com>
 <20191121103807.18424-2-kraxel@redhat.com>
 <20191121135259.GE6236@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191121135259.GE6236@phenom.ffwll.local>
X-Operating-System: Linux phenom 5.3.0-1-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=date:from:to:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UubM55Y2EgXgiJCPt2qtJJuRBgNrWumSBH0CC5Jm0oA=;
 b=ftQWZpErN2LjL6KC+9a4WcOLpNT2jG9JyPfAtggsGPCizPAAFJ3TjDIew5M9QF0iIg
 nEAa1EPjVexrGO7DLNdw0wUlBET9OXlGNGK+TArUybGrL6TSySVtRA/PAr/mPriUSfKm
 QGdCsf/cVfDRGBwbYoh7gNgfrv6bQkSlAst+E=
Subject: Re: [Intel-gfx] [PATCH 1/2] drm: call drm_gem_object_funcs.mmap
 with fake offset
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBOb3YgMjEsIDIwMTkgYXQgMDI6NTI6NTlQTSArMDEwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiBPbiBUaHUsIE5vdiAyMSwgMjAxOSBhdCAxMTozODowNkFNICswMTAwLCBHZXJkIEhv
ZmZtYW5uIHdyb3RlOgo+ID4gVGhlIGZha2Ugb2Zmc2V0IGlzIGdvaW5nIHRvIHN0YXksIHNvIGNo
YW5nZSB0aGUgY2FsbGluZyBjb252ZW50aW9uIGZvcgo+ID4gZHJtX2dlbV9vYmplY3RfZnVuY3Mu
bW1hcCB0byBpbmNsdWRlIHRoZSBmYWtlIG9mZnNldC4gIFVwZGF0ZSBhbGwgdXNlcnMKPiA+IGFj
Y29yZGluZ2x5Lgo+IAo+IFBsZWFzZSBhZGQgdG8gdGhlIGNvbW1pdCBtZXNzYWdlOgo+IAo+IE5v
dGUgdGhhdCB0aGlzIHJldmVydHMgODNiOGE2ZjI0MmVhICgiZHJtL2dlbTogRml4IG1tYXAgZmFr
ZSBvZmZzZXQKPiBoYW5kbGluZyBmb3IgZHJtX2dlbV9vYmplY3RfZnVuY3MubW1hcCIpIGFuZCBv
biB0b3AgdGhlbiBhZGRzIHRoZSBmYWtlCj4gb2Zmc2V0IHRvICBkcm1fZ2VtX3ByaW1lX21tYXAg
dG8gbWFrZSBzdXJlIGFsbCBwYXRocyBsZWFkaW5nIHRvCj4gb2JqLT5mdW5jcy0+bW1hcCBhcmUg
Y29uc2lzdGVudC4KPiAKPiBGaXhlczogODNiOGE2ZjI0MmVhICgiZHJtL2dlbTogRml4IG1tYXAg
ZmFrZSBvZmZzZXQgaGFuZGxpbmcgZm9yIGRybV9nZW1fb2JqZWN0X2Z1bmNzLm1tYXAiKQo+IENj
OiBHZXJkIEhvZmZtYW5uIDxrcmF4ZWxAcmVkaGF0LmNvbT4KPiBDYzogRGFuaWVsIFZldHRlciA8
ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KPiBDYzogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9y
Zz4KPiAKPiBXaXRoIHRoYXQgYWxzbyBSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVs
LnZldHRlckBmZndsbC5jaD4KCkFsc28gYWRkZWQgUm9iIHRvIGNjIGhlcmUuCgpSb2IsIGNhbiB5
b3UgcGxzIHRha2UgYSBsb29rIGFuIGFjaz8gVGhlIHNhZ2UgdG9vayBhbm90aGVyIHR1cm4gOi0p
Ci1EYW5pZWwKCj4gLURhbmllbAo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBHZXJkIEhvZmZtYW5u
IDxrcmF4ZWxAcmVkaGF0LmNvbT4KPiA+IC0tLQo+ID4gIGluY2x1ZGUvZHJtL2RybV9nZW0uaCAg
ICAgICAgICAgICAgICAgIHwgNCArLS0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYyAg
ICAgICAgICAgICAgfCAzIC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hl
bHBlci5jIHwgMyArKysKPiA+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMgICAgICAgICAg
ICB8IDMgKysrCj4gPiAgZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdm0uYyAgICAgICAgfCA3
IC0tLS0tLS0KPiA+ICA1IGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRp
b25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fZ2VtLmggYi9pbmNs
dWRlL2RybS9kcm1fZ2VtLmgKPiA+IGluZGV4IDk3YTQ4MTY1NjQyYy4uMGIzNzUwNjljZDQ4IDEw
MDY0NAo+ID4gLS0tIGEvaW5jbHVkZS9kcm0vZHJtX2dlbS5oCj4gPiArKysgYi9pbmNsdWRlL2Ry
bS9kcm1fZ2VtLmgKPiA+IEBAIC0xNTksOSArMTU5LDcgQEAgc3RydWN0IGRybV9nZW1fb2JqZWN0
X2Z1bmNzIHsKPiA+ICAJICoKPiA+ICAJICogVGhlIGNhbGxiYWNrIGlzIHVzZWQgYnkgYnkgYm90
aCBkcm1fZ2VtX21tYXBfb2JqKCkgYW5kCj4gPiAgCSAqIGRybV9nZW1fcHJpbWVfbW1hcCgpLiAg
V2hlbiBAbW1hcCBpcyBwcmVzZW50IEB2bV9vcHMgaXMgbm90Cj4gPiAtCSAqIHVzZWQsIHRoZSBA
bW1hcCBjYWxsYmFjayBtdXN0IHNldCB2bWEtPnZtX29wcyBpbnN0ZWFkLiBUaGUgQG1tYXAKPiA+
IC0JICogY2FsbGJhY2sgaXMgYWx3YXlzIGNhbGxlZCB3aXRoIGEgMCBvZmZzZXQuIFRoZSBjYWxs
ZXIgd2lsbCByZW1vdmUKPiA+IC0JICogdGhlIGZha2Ugb2Zmc2V0IGFzIG5lY2Vzc2FyeS4KPiA+
ICsJICogdXNlZCwgdGhlIEBtbWFwIGNhbGxiYWNrIG11c3Qgc2V0IHZtYS0+dm1fb3BzIGluc3Rl
YWQuCj4gPiAgCSAqLwo+ID4gIAlpbnQgKCptbWFwKShzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9i
aiwgc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEpOwo+ID4gIAo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jCj4gPiBp
bmRleCAyZjJiODg5MDk2YjAuLjU2ZjQyZTBmMjU4NCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9kcm1fZ2VtLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMKPiA+
IEBAIC0xMTA2LDkgKzExMDYsNiBAQCBpbnQgZHJtX2dlbV9tbWFwX29iaihzdHJ1Y3QgZHJtX2dl
bV9vYmplY3QgKm9iaiwgdW5zaWduZWQgbG9uZyBvYmpfc2l6ZSwKPiA+ICAJCXJldHVybiAtRUlO
VkFMOwo+ID4gIAo+ID4gIAlpZiAob2JqLT5mdW5jcyAmJiBvYmotPmZ1bmNzLT5tbWFwKSB7Cj4g
PiAtCQkvKiBSZW1vdmUgdGhlIGZha2Ugb2Zmc2V0ICovCj4gPiAtCQl2bWEtPnZtX3Bnb2ZmIC09
IGRybV92bWFfbm9kZV9zdGFydCgmb2JqLT52bWFfbm9kZSk7Cj4gPiAtCj4gPiAgCQlyZXQgPSBv
YmotPmZ1bmNzLT5tbWFwKG9iaiwgdm1hKTsKPiA+ICAJCWlmIChyZXQpCj4gPiAgCQkJcmV0dXJu
IHJldDsKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxw
ZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBlci5jCj4gPiBpbmRleCAw
ODEwZDNlZjY5NjEuLmE0MjFhMmVlZDQ4YSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9kcm1fZ2VtX3NobWVtX2hlbHBlci5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dl
bV9zaG1lbV9oZWxwZXIuYwo+ID4gQEAgLTUyOCw2ICs1MjgsOSBAQCBpbnQgZHJtX2dlbV9zaG1l
bV9tbWFwKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3Qg
KnZtYSkKPiA+ICAJc3RydWN0IGRybV9nZW1fc2htZW1fb2JqZWN0ICpzaG1lbTsKPiA+ICAJaW50
IHJldDsKPiA+ICAKPiA+ICsJLyogUmVtb3ZlIHRoZSBmYWtlIG9mZnNldCAqLwo+ID4gKwl2bWEt
PnZtX3Bnb2ZmIC09IGRybV92bWFfbm9kZV9zdGFydCgmb2JqLT52bWFfbm9kZSk7Cj4gPiArCj4g
PiAgCXNobWVtID0gdG9fZHJtX2dlbV9zaG1lbV9vYmoob2JqKTsKPiA+ICAKPiA+ICAJcmV0ID0g
ZHJtX2dlbV9zaG1lbV9nZXRfcGFnZXMoc2htZW0pOwo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9kcm1fcHJpbWUuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYwo+ID4gaW5k
ZXggMDgxNDIxMWIwZjNmLi5hOTYzM2JkMjQxYmIgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vZHJtX3ByaW1lLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYwo+
ID4gQEAgLTcxNCw2ICs3MTQsOSBAQCBpbnQgZHJtX2dlbV9wcmltZV9tbWFwKHN0cnVjdCBkcm1f
Z2VtX29iamVjdCAqb2JqLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkKPiA+ICAJaW50IHJl
dDsKPiA+ICAKPiA+ICAJaWYgKG9iai0+ZnVuY3MgJiYgb2JqLT5mdW5jcy0+bW1hcCkgewo+ID4g
KwkJLyogQWRkIHRoZSBmYWtlIG9mZnNldCAqLwo+ID4gKwkJdm1hLT52bV9wZ29mZiArPSBkcm1f
dm1hX25vZGVfc3RhcnQoJm9iai0+dm1hX25vZGUpOwo+ID4gKwo+ID4gIAkJcmV0ID0gb2JqLT5m
dW5jcy0+bW1hcChvYmosIHZtYSk7Cj4gPiAgCQlpZiAocmV0KQo+ID4gIAkJCXJldHVybiByZXQ7
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdm0uYyBiL2RyaXZl
cnMvZ3B1L2RybS90dG0vdHRtX2JvX3ZtLmMKPiA+IGluZGV4IGU2NDk1Y2EyNjMwYi4uM2U4YzNk
ZTkxYWU0IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdm0uYwo+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdm0uYwo+ID4gQEAgLTUxNCwxMyAr
NTE0LDYgQEAgRVhQT1JUX1NZTUJPTCh0dG1fYm9fbW1hcCk7Cj4gPiAgaW50IHR0bV9ib19tbWFw
X29iaihzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSwgc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0
ICpibykKPiA+ICB7Cj4gPiAgCXR0bV9ib19nZXQoYm8pOwo+ID4gLQo+ID4gLQkvKgo+ID4gLQkg
KiBGSVhNRTogJmRybV9nZW1fb2JqZWN0X2Z1bmNzLm1tYXAgaXMgY2FsbGVkIHdpdGggdGhlIGZh
a2Ugb2Zmc2V0Cj4gPiAtCSAqIHJlbW92ZWQuIEFkZCBpdCBiYWNrIGhlcmUgdW50aWwgdGhlIHJl
c3Qgb2YgVFRNIHdvcmtzIHdpdGhvdXQgaXQuCj4gPiAtCSAqLwo+ID4gLQl2bWEtPnZtX3Bnb2Zm
ICs9IGRybV92bWFfbm9kZV9zdGFydCgmYm8tPmJhc2Uudm1hX25vZGUpOwo+ID4gLQo+ID4gIAl0
dG1fYm9fbW1hcF92bWFfc2V0dXAoYm8sIHZtYSk7Cj4gPiAgCXJldHVybiAwOwo+ID4gIH0KPiA+
IC0tIAo+ID4gMi4xOC4xCj4gPiAKPiAKPiAtLSAKPiBEYW5pZWwgVmV0dGVyCj4gU29mdHdhcmUg
RW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCj4gaHR0cDovL2Jsb2cuZmZ3bGwuY2gKCi0tIApE
YW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8v
YmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
