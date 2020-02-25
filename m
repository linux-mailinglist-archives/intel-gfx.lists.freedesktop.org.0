Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA67F16E9A0
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 16:09:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA9B16EB1C;
	Tue, 25 Feb 2020 15:09:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com
 [IPv6:2607:f8b0:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C4BD6EB13
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 15:09:38 +0000 (UTC)
Received: by mail-oi1-x244.google.com with SMTP id q81so12878503oig.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 07:09:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=9cDwZ28udznvhBb1aAzh17WbQCMgWdUOeNZ0A/sEav4=;
 b=FuW/DWwXsO0+PsvmY7s51CHvYYSBFYyIaw28mlnjGepveGeUI8TqvZH4xWam+EOZd3
 yMnLu8sbTWOmm9/uOWtssG2rRwVcHVIxTAxrjpdFT/1REpnmBoVGmX7yzuknBUUwvx1c
 CZ+q7B5MPZcU4AFZJqsUhZiS5Tp8qqoylEN7Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=9cDwZ28udznvhBb1aAzh17WbQCMgWdUOeNZ0A/sEav4=;
 b=G5J89qa41bSoopM+RimIKO9faji1folhyQ5ANFrIiiCanZtBG7TP3M5g5oTxytYUJr
 Y3cPo4gBa56+VvUM0F5FS5Q9OEq5JgKEQJkLFZbdz5bk6FyCHpzhZe7j7HWtthMgFszW
 dCvwFbWB/MyPsv0Av+zlgiVfpPMfDLjbpya9i16bFujkshk10AnifOutMXJzzsx2c+8q
 qYQUmJo9Yjb3GPyZbXR2+gntCltVKkMFm6Zpc1vPSsn6cBW84fZeU9t1ZLFIpXd1rMtx
 ksof7Hhhx52Te8i9dy+TOQw8Di6CVO9SETPH/LSQKmcZSgoIDcBuE9vl9bFfXItuLHR5
 1BrQ==
X-Gm-Message-State: APjAAAVW2lOK0yDskBUC+bd19GgvT2/b7gdMl/P1qRnk9vCVMJYoGZIy
 pYvAHCtVMm0unumcz+vhXzS0giW48PqJHObKZiaePQ==
X-Google-Smtp-Source: APXvYqzXoeHzDks1jVe82JmoFxt46VhHfpaYIYTIfpvJi7eCKumzsbsgXuiD5fiBxTklbaucHIRSdUF4M4oX5qmIL8Y=
X-Received: by 2002:a05:6808:10b:: with SMTP id
 b11mr4059228oie.110.1582643377746; 
 Tue, 25 Feb 2020 07:09:37 -0800 (PST)
MIME-Version: 1.0
References: <20200225115024.2386811-1-daniel.vetter@ffwll.ch>
 <20200225144814.GC13686@intel.com>
In-Reply-To: <20200225144814.GC13686@intel.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 25 Feb 2020 16:09:26 +0100
Message-ID: <CAKMK7uFKJd1G8qT2Kup8nOfp22V7eQmDZC=6bdU=UEpqO7K3QQ@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm: avoid spurious EBUSY due to
 nonblocking atomic modesets
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
Cc: Daniel Stone <daniels@collabora.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 stable <stable@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Pekka Paalanen <pekka.paalanen@collabora.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBGZWIgMjUsIDIwMjAgYXQgMzo0OCBQTSBWaWxsZSBTeXJqw6Rsw6QKPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPiB3cm90ZToKPgo+IE9uIFR1ZSwgRmViIDI1LCAyMDIwIGF0
IDEyOjUwOjI0UE0gKzAxMDAsIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gPiBXaGVuIGRvaW5nIGFu
IGF0b21pYyBtb2Rlc2V0IHdpdGggQUxMT1dfTU9ERVNFVCBkcml2ZXJzIGFyZSBhbGxvd2VkIHRv
Cj4gPiBwdWxsIGluIGFyYml0cmFyeSBvdGhlciByZXNvdXJjZXMsIGluY2x1ZGluZyBDUlRDcyAo
ZS5nLiB3aGVuCj4gPiByZWNvbmZpZ3VyaW5nIGdsb2JhbCByZXNvdXJjZXMpLgo+ID4KPiA+IEJ1
dCBpbiBub25ibG9ja2luZyBtb2RlIHVzZXJzcGFjZSBoYXMgdGhlbiBubyBpZGVhIHRoaXMgaGFw
cGVuZWQsCj4gPiB3aGljaCBjYW4gbGVhZCB0byBzcHVyaW91cyBFQlVTWSBjYWxscywgYm90aDoK
PiA+IC0gd2hlbiB0aGF0IG90aGVyIENSVEMgaXMgY3VycmVudGx5IGJ1c3kgZG9pbmcgYSBwYWdl
X2ZsaXAgdGhlCj4gPiAgIEFMTE9XX01PREVTRVQgY29tbWl0IGNhbiBmYWlsIHdpdGggYW4gRUJV
U1kKPiA+IC0gb24gdGhlIG90aGVyIENSVEMgYSBub3JtYWwgYXRvbWljIGZsaXAgY2FuIGZhaWwg
d2l0aCBFQlVTWSBiZWNhdXNlCj4gPiAgIG9mIHRoZSBhZGRpdGlvbmFsIGNvbW1pdCBpbnNlcnRl
ZCBieSB0aGUga2VybmVsIHdpdGhvdXQgdXNlcnNwYWNlJ3MKPiA+ICAga25vd2xlZGdlCj4gPgo+
ID4gRm9yIGJsb2NraW5nIGNvbW1pdHMgdGhpcyBpc24ndCBhIHByb2JsZW0sIGJlY2F1c2UgZXZl
cnlvbmUgZWxzZSB3aWxsCj4gPiBqdXN0IGJsb2NrIHVudGlsIGFsbCB0aGUgQ1JUQyBhcmUgcmVj
b25maWd1cmVkLiBPbmx5IHRoaW5nIHVzZXJzcGFjZQo+ID4gY2FuIG5vdGljZSBpcyB0aGUgZHJv
cHBlZCBmcmFtZXMgd2l0aG91dCBhbnkgcmVhc29uIGZvciB3aHkgZnJhbWVzIGdvdAo+ID4gZHJv
cHBlZC4KPiA+Cj4gPiBDb25zZW5zdXMgaXMgdGhhdCB3ZSBuZWVkIG5ldyB1YXBpIHRvIGhhbmRs
ZSB0aGlzIHByb3Blcmx5LCBidXQgbm8gb25lCj4gPiBoYXMgYW55IGlkZWEgd2hhdCBleGFjdGx5
IHRoZSBuZXcgdWFwaSBzaG91bGQgbG9vayBsaWtlLiBBcyBhIHN0b3AtZ2FwCj4gPiBwbHVnIHRo
aXMgcHJvYmxlbSBieSBkZW1vdGluZyBub25ibG9ja2luZyBjb21taXRzIHdoaWNoIG1pZ2h0IGNh
dXNlCj4gPiBpc3N1ZXMgYnkgaW5jbHVkaW5nIENSVENzIG5vdCBpbiB0aGUgb3JpZ2luYWwgcmVx
dWVzdCB0byBibG9ja2luZwo+ID4gY29tbWl0cy4KPiA+Cj4gPiB2MjogQWRkIGNvbW1lbnRzIGFu
ZCBhIFdBUk5fT04gdG8gZW5mb3JjZSB0aGlzIG9ubHkgd2hlbiBhbGxvd2VkIC0gd2UKPiA+IGRv
bid0IHdhbnQgdG8gc2lsZW50bHkgY29udmVydCBwYWdlIGZsaXBzIGludG8gYmxvY2tpbmcgcGxh
bmUgdXBkYXRlcwo+ID4ganVzdCBiZWNhdXNlIHRoZSBkcml2ZXIgaXMgYnVnZ3kuCj4gPgo+ID4g
djM6IEZpeCBpbnZlcnRlZCBXQVJOX09OIChQZWtrYSkuCj4gPgo+ID4gUmVmZXJlbmNlczogaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvYXJjaGl2ZXMvZHJpLWRldmVsLzIwMTgtSnVseS8x
ODIyODEuaHRtbAo+ID4gQnVnemlsbGE6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy93
YXlsYW5kL3dlc3Rvbi9pc3N1ZXMvMjQjbm90ZV85NTY4Cj4gPiBDYzogRGFuaWVsIFN0b25lIDxk
YW5pZWxAZm9vaXNoYmFyLm9yZz4KPiA+IENjOiBQZWtrYSBQYWFsYW5lbiA8cGVra2EucGFhbGFu
ZW5AY29sbGFib3JhLmNvLnVrPgo+ID4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPiA+IFJl
dmlld2VkLWJ5OiBEYW5pZWwgU3RvbmUgPGRhbmllbHNAY29sbGFib3JhLmNvbT4KPiA+IFNpZ25l
ZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+ID4gLS0t
Cj4gPiAgZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWMuYyB8IDM0ICsrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKystLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygrKSwg
MyBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9h
dG9taWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljLmMKPiA+IGluZGV4IDljY2ZiZjIx
M2Q3Mi4uNGMwMzVhYmY5OGI4IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9h
dG9taWMuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWMuYwo+ID4gQEAgLTEz
NjIsMTUgKzEzNjIsNDMgQEAgRVhQT1JUX1NZTUJPTChkcm1fYXRvbWljX2NvbW1pdCk7Cj4gPiAg
aW50IGRybV9hdG9taWNfbm9uYmxvY2tpbmdfY29tbWl0KHN0cnVjdCBkcm1fYXRvbWljX3N0YXRl
ICpzdGF0ZSkKPiA+ICB7Cj4gPiAgICAgICBzdHJ1Y3QgZHJtX21vZGVfY29uZmlnICpjb25maWcg
PSAmc3RhdGUtPmRldi0+bW9kZV9jb25maWc7Cj4gPiAtICAgICBpbnQgcmV0Owo+ID4gKyAgICAg
dW5zaWduZWQgcmVxdWVzdGVkX2NydGMgPSAwOwo+ID4gKyAgICAgdW5zaWduZWQgYWZmZWN0ZWRf
Y3J0YyA9IDA7Cj4gPiArICAgICBzdHJ1Y3QgZHJtX2NydGMgKmNydGM7Cj4gPiArICAgICBzdHJ1
Y3QgZHJtX2NydGNfc3RhdGUgKmNydGNfc3RhdGU7Cj4gPiArICAgICBib29sIG5vbmJsb2NraW5n
ID0gdHJ1ZTsKPiA+ICsgICAgIGludCByZXQsIGk7Cj4gPiArCj4gPiArICAgICAvKgo+ID4gKyAg
ICAgICogRm9yIGNvbW1pdHMgdGhhdCBhbGxvdyBtb2Rlc2V0cyBkcml2ZXJzIGNhbiBhZGQgb3Ro
ZXIgQ1JUQ3MgdG8gdGhlCj4gPiArICAgICAgKiBhdG9taWMgY29tbWl0LCBlLmcuIHdoZW4gdGhl
eSBuZWVkIHRvIHJlYWxsb2NhdGUgZ2xvYmFsIHJlc291cmNlcy4KPiA+ICsgICAgICAqCj4gPiAr
ICAgICAgKiBCdXQgd2hlbiB1c2Vyc3BhY2UgYWxzbyByZXF1ZXN0cyBhIG5vbmJsb2NraW5nIGNv
bW1pdCB0aGVuIHVzZXJzcGFjZQo+ID4gKyAgICAgICogY2Fubm90IGtub3cgdGhhdCB0aGUgY29t
bWl0IGFmZmVjdHMgb3RoZXIgQ1JUQ3MsIHdoaWNoIGNhbiByZXN1bHQgaW4KPiA+ICsgICAgICAq
IHNwdXJpb3VzIEVCVVNZIGZhaWx1cmVzLiBVbnRpbCB3ZSBoYXZlIGJldHRlciB1YXBpIHBsdWcg
dGhpcyBieQo+ID4gKyAgICAgICogZGVtb3Rpbmcgc3VjaCBjb21taXRzIHRvIGJsb2NraW5nIG1v
ZGUuCj4gPiArICAgICAgKi8KPiA+ICsgICAgIGZvcl9lYWNoX25ld19jcnRjX2luX3N0YXRlKHN0
YXRlLCBjcnRjLCBjcnRjX3N0YXRlLCBpKQo+ID4gKyAgICAgICAgICAgICByZXF1ZXN0ZWRfY3J0
YyB8PSBkcm1fY3J0Y19tYXNrKGNydGMpOwo+ID4KPiA+ICAgICAgIHJldCA9IGRybV9hdG9taWNf
Y2hlY2tfb25seShzdGF0ZSk7Cj4gPiAgICAgICBpZiAocmV0KQo+ID4gICAgICAgICAgICAgICBy
ZXR1cm4gcmV0Owo+ID4KPiA+IC0gICAgIERSTV9ERUJVR19BVE9NSUMoImNvbW1pdHRpbmcgJXAg
bm9uYmxvY2tpbmdcbiIsIHN0YXRlKTsKPiA+ICsgICAgIGZvcl9lYWNoX25ld19jcnRjX2luX3N0
YXRlKHN0YXRlLCBjcnRjLCBjcnRjX3N0YXRlLCBpKQo+ID4gKyAgICAgICAgICAgICBhZmZlY3Rl
ZF9jcnRjIHw9IGRybV9jcnRjX21hc2soY3J0Yyk7Cj4gPiArCj4gPiArICAgICBpZiAoYWZmZWN0
ZWRfY3J0YyAhPSByZXF1ZXN0ZWRfY3J0Yykgewo+ID4gKyAgICAgICAgICAgICAvKiBhZGRpbmcg
b3RoZXIgQ1JUQyBpcyBvbmx5IGFsbG93ZWQgZm9yIG1vZGVzZXQgY29tbWl0cyAqLwo+ID4gKyAg
ICAgICAgICAgICBXQVJOX09OKCFzdGF0ZS0+YWxsb3dfbW9kZXNldCk7Cj4KPiBOb3Qgc3VyZSB0
aGF0J3MgcmVhbGx5IHRydWUuIFdoYXQgaWYgdGhlIGRyaXZlciBuZWVkcyB0byBlZy4KPiByZWRp
c3RyaWJ1dGUgRklGTyBzcGFjZSBvciBzb21ldGhpbmcgYmV0d2VlbiB0aGUgcGlwZXM/IE9yIGRv
IHdlCj4gZXhwZWN0IGRyaXZlcnMgdG8gbm93IGV4YW1pbmUgc3RhdGUtPmFsbG93X21vZGVzZXQg
dG8gZmlndXJlIG91dAo+IGlmIHRoZXkncmUgYWxsb3dlZCB0byBkbyBjZXJ0YWluIHRoaW5ncz8K
Ck1heWJlIHdlIG5lZWQgbW9yZSBmaW5lLWdyYWluZWQgZmxhZ3MgaGVyZSwgYnV0IGFkZGluZyBv
dGhlciBzdGF0ZXMKKGFuZCBibG9ja2luZyBhIGNvbW1pdCBmbG93KSBpcyBleGFjdGx5IHRoZSB1
YXBpIGhlYWRhY2hlcyB0aGlzIHBhdGNoCnRyaWVzIHRvIHNvbHZlIGhlcmUuIFNvIGlmIG91ciBk
cml2ZXIgY3VycmVudGx5IGFkZHMgY3J0YyBzdGF0ZXMgdG8KcmVhbGxvY2F0ZSBmaWZvIGJldHdl
ZW4gcGlwZXMgZm9yIGFuIGF0b21pYyBmbGlwIHRoZW4geWVzIHdlJ3JlCmJyZWFraW5nIHVzZXJz
cGFjZS4gV2VsbCwgZXZlcnlvbmUgZmlndXJlZCBvdXQgYnkgbm93IHRoYXQgeW91IGdldApyYW5k
b20gRUJVU1kgYW5kIGRyb3BwZWQgZnJhbWVzIGZvciBubyBhcHBhcmVudCByZWFzb24gYXQgYWxs
LCBhbmQKd29yayBhcm91bmQgaXQuIEJ1dCBoYXBweSwgdGhleSBhcmUgbm90LgoKQWxzbyB3ZSd2
ZSBhbHJlYWR5IGNyb3NzZWQgdGhhdCBicmlkZ2UgYSBiaXQgd2l0aCBtdWNraW5nIGFyb3VuZCB3
aXRoCmFsbG93X21vZGVzZXQgZnJvbSBkcml2ZXIgY29kZSB3aXRoIHRoZSBzZWxmIHJlZnJlc2gg
aGVscGVycy4KCkNoZWVycywgRGFuaWVsCgo+Cj4gPiArCj4gPiArICAgICAgICAgICAgIERSTV9E
RUJVR19BVE9NSUMoImRlbW90aW5nICVwIHRvIGJsb2NraW5nIG1vZGUgdG8gYXZvaWQgRUJVU1lc
biIsIHN0YXRlKTsKPiA+ICsgICAgICAgICAgICAgbm9uYmxvY2tpbmcgPSBmYWxzZTsKPiA+ICsg
ICAgIH0gZWxzZSB7Cj4gPiArICAgICAgICAgICAgIERSTV9ERUJVR19BVE9NSUMoImNvbW1pdHRp
bmcgJXAgbm9uYmxvY2tpbmdcbiIsIHN0YXRlKTsKPiA+ICsgICAgIH0KPiA+Cj4gPiAtICAgICBy
ZXR1cm4gY29uZmlnLT5mdW5jcy0+YXRvbWljX2NvbW1pdChzdGF0ZS0+ZGV2LCBzdGF0ZSwgdHJ1
ZSk7Cj4gPiArICAgICByZXR1cm4gY29uZmlnLT5mdW5jcy0+YXRvbWljX2NvbW1pdChzdGF0ZS0+
ZGV2LCBzdGF0ZSwgbm9uYmxvY2tpbmcpOwo+ID4gIH0KPiA+ICBFWFBPUlRfU1lNQk9MKGRybV9h
dG9taWNfbm9uYmxvY2tpbmdfY29tbWl0KTsKPiA+Cj4gPiAtLQo+ID4gMi4yNC4xCj4gPgo+ID4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IEludGVs
LWdmeCBtYWlsaW5nIGxpc3QKPiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+
IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cj4KPiAtLQo+IFZpbGxlIFN5cmrDpGzDpAo+IEludGVsCgoKCi0tIApEYW5pZWwgVmV0dGVyClNv
ZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgorNDEgKDApIDc5IDM2NSA1NyA0OCAt
IGh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
