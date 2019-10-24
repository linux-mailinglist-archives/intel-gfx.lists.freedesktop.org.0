Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B002E4056
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 01:25:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1C676E853;
	Thu, 24 Oct 2019 23:25:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2DCC6E851
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 23:25:20 +0000 (UTC)
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com
 [209.85.210.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-118-SQbqwD04Ok26JaZQ0dbrMQ-1; Thu, 24 Oct 2019 19:25:18 -0400
Received: by mail-ot1-f70.google.com with SMTP id m7so182514otc.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 16:25:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TwrfGTmOlHaZ+6U1/pxyOJqaBGALpo9mwGxawPndh3A=;
 b=kcRbkgIghm6ssCjNoR+99BWHtMKRKW5RCB6SbbqTPlFFsZ6lM5d2RIdNXFpRxZNzZX
 KtqOo/G1c5XVAnBUJ9bV0DBmOAGiMV/cMEcejZ9NxWlfJ9IpZmk2Tz5FfF83lKjLOpQ1
 zXWKNgOd7BxYL7ALb06tdPUjxLAvE/Zj1FsfliVn6vTEFTmvkdNUAE/0fkqrnkqC26zV
 ccz01NlOJlal0xbiQpWk+eEoeE3nPFdNvWwKHJkFi2bIAECx+dUb121eQjPiyqYivUNT
 S3zl6mH/xyhennuUOxS/87pfwggQsnYjEbYd5wlYY5VSuOdB9e/T9XcwBX7G0eY+dBVP
 8Wow==
X-Gm-Message-State: APjAAAWaYYeWbNwxOohJI+STYh2AECP5vX7WFEqhQwbAa9zVCgccXRdj
 AqDWQAata4w0ro2/XEwys/FJtX+pLcUl2wwtmv4nMUIWCJwyAf03YsmUP6EP3TDpJKNxLDPhUvB
 PM1eZ8p8OE9WTyRZWI8DtyvA0ba366SUnknNTpjK3NPfV
X-Received: by 2002:a54:4706:: with SMTP id k6mr481601oik.160.1571959517399;
 Thu, 24 Oct 2019 16:25:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwCFgxwKtHSfkXPMwMGOimpWTPZ7iFD6Chfolb8W7xTl/U0gVomiY6TvZQLOZsqNC9XCxfWKgUD0ybYvH5pUKA=
X-Received: by 2002:a54:4706:: with SMTP id k6mr481586oik.160.1571959517074;
 Thu, 24 Oct 2019 16:25:17 -0700 (PDT)
MIME-Version: 1.0
References: <20191024114028.6170-1-chris@chris-wilson.co.uk>
 <20191024114028.6170-3-chris@chris-wilson.co.uk>
In-Reply-To: <20191024114028.6170-3-chris@chris-wilson.co.uk>
From: David Airlie <airlied@redhat.com>
Date: Fri, 25 Oct 2019 09:25:06 +1000
Message-ID: <CAMwc25qC_McyWuhvnQ-ED_P0nvzqB607U7Rg9oR=czhQtPrMsw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-MC-Unique: SQbqwD04Ok26JaZQ0dbrMQ-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571959519;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LP0PyF9WPc+Cfi0pbkCVPh300MNyp5F6YnLSNNSr9YQ=;
 b=Jwn4LaHM7MZygiIyJmG4fEq3/DK8A8iSeSNCKBIhx+toMh+8CGYDgWRGqb1JKbeLKLtQbN
 ntq/eWHm8S9Lvghc/bBUZeRR/Mmd7IkzwuA5Rqt7OlXi/JPIW+MJax7gyCScjphcYzv3I4
 eo+0hpsSnjSXwFYpFgGgMC+FyaiJgkY=
Subject: Re: [Intel-gfx] [PATCH 02/11] drm/i915: Put future HW and their
 uAPIs under STAGING & BROKEN
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
Cc: Jani Nikula <jani.nikula@intel.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 "Development, Intel" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWNrZWQtYnk6IERhdmUgQWlybGllIDxhaXJsaWVkQHJlZGhhdC5jb20+CgpPbiBUaHUsIE9jdCAy
NCwgMjAxOSBhdCA5OjQwIFBNIENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PiB3cm90ZToKPgo+IFdlIHdvdWxkIGxpa2Ugc29tZSBmcmVlZG9tIHRvIGJyZWFrIHRoZSB1c2Vy
IEFQSS9BQkkgZm9yIGZ1dHVyZSBIVyBidXQKPiB5ZXQgc3RpbGwgZXhwb3NlIHRoZSBkcml2ZXIg
Zm9yIHVwc3RyZWFtIGRldmVsb3BtZW50IG9uIHRoYXQgSFcuCj4gQ3VycmVudGx5LCB3ZSBoYXZl
IHRoZSBpOTE1LmZvcmNlX3Byb2JlIG1vZHVsZSBwYXJhbWV0ZXIgdG8gYXZvaWQgYmluZGluZwo+
IHRvIEhXIHdoaWxlIHRoZSBkcml2ZXIgaXMgdW5kZXIgZGV2ZWxvcG1lbnQsIGJ1dCB0aGF0IGlz
IHN0aWxsIGEgbGl0dGxlCj4gdG9vIHNvZnQgd2l0aCByZXNwZWN0IHRvIHRoZSBzdHJpbmdlbnQg
bm8tcmVncmVzc2lvbiBydWxlcyBpZiB3ZSBhbHNvCj4gcGxhbiB0byBiZSByZWRlc2lnbmluZyB0
aGUgdUFQSSB0byBnbyBhbG9uZyB3aXRoIHRoZSBuZXcgSFcuCj4KPiBUbyBhbGxvdyB0aGUgdUFQ
SSB0byBiZSBjaGFuZ2VkIGR1cmluZyBkZXZlbG9wbWVudCwgb25seSBleHBvc2UgdGhhdCBBUEkK
PiBhbmQgaW4gZGV2ZWxvcG1lbnQgSFcgdW5kZXIgU1RBR0lORyAoYW5kIEJST0tFTikuIEhvcGVm
dWxseSwgbWFraW5nIGl0Cj4gZXhwbGljaXQgdGhhdCBzdWNoIGludGVyZmFjZXMgdG8gdGhhdCBI
VyBhcmUgdW5kZXIgZGV2ZWxvcG1lbnQgYW5kIG5vdAo+IHRvIGJlIGJsaW5kbHkgZW5hYmxlZCBi
eSBkaXN0cmlidXRpb25zLgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3
bGwuY2g+Cj4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVs
LmNvbT4KPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiBDYzogUm9k
cmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+IENjOiBEYXZlIEFpcmxpZSA8YWly
bGllZEByZWRoYXQuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnICAg
ICAgICAgIHwgIDggKysrKysrKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1
ZyAgICB8ICAxICsKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy51bnN0YWJsZSB8IDIw
ICsrKysrKysrKysrKysrKysrKysrCj4gIDMgZmlsZXMgY2hhbmdlZCwgMjkgaW5zZXJ0aW9ucygr
KQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy51bnN0
YWJsZQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnCj4gaW5kZXggM2M2ZDU3ZGYyNjJkLi4xZmQ5ZTY2NWI3
NDIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcKPiBAQCAtMTQ4LDMgKzE0OCwxMSBAQCBtZW51ICJk
cm0vaTkxNSBQcm9maWxlIEd1aWRlZCBPcHRpbWlzYXRpb24iCj4gICAgICAgICBkZXBlbmRzIG9u
IERSTV9JOTE1Cj4gICAgICAgICBzb3VyY2UgImRyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcu
cHJvZmlsZSIKPiAgZW5kbWVudQo+ICsKPiArbWVudSAiZHJtL2k5MTUgVXN0YWJsZSBFdm9sdXRp
b24iCj4gKyAgICAgICB2aXNpYmxlIGlmIEVYUEVSVAo+ICsgICAgICAgdmlzaWJsZSBpZiBTVEFH
SU5HCj4gKyAgICAgICB2aXNpYmxlIGlmIEJST0tFTgo+ICsgICAgICAgZGVwZW5kcyBvbiBEUk1f
STkxNQo+ICsgICAgICAgc291cmNlICJkcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLnVuc3Rh
YmxlIgo+ICtlbmRtZW51Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25m
aWcuZGVidWcgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLmRlYnVnCj4gaW5kZXggZDJi
YThmN2U1ZTUwLi5lZjEyM2ViMjkxNjggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvS2NvbmZpZy5kZWJ1Zwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcuZGVi
dWcKPiBAQCAtNDQsNiArNDQsNyBAQCBjb25maWcgRFJNX0k5MTVfREVCVUcKPiAgICAgICAgIHNl
bGVjdCBEUk1fSTkxNV9TRUxGVEVTVAo+ICAgICAgICAgc2VsZWN0IERSTV9JOTE1X0RFQlVHX1JV
TlRJTUVfUE0KPiAgICAgICAgIHNlbGVjdCBEUk1fSTkxNV9ERUJVR19NTUlPCj4gKyAgICAgICBz
ZWxlY3QgQlJPS0VOICMgZm9yIHByb3RvdHlwZSB1QVBJCj4gICAgICAgICBkZWZhdWx0IG4KPiAg
ICAgICAgIGhlbHAKPiAgICAgICAgICAgQ2hvb3NlIHRoaXMgb3B0aW9uIHRvIHR1cm4gb24gZXh0
cmEgZHJpdmVyIGRlYnVnZ2luZyB0aGF0IG1heSBhZmZlY3QKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvS2NvbmZpZy51bnN0YWJsZSBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tj
b25maWcudW5zdGFibGUKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAw
MC4uZWNjODQ1OGI1YTMyCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L0tjb25maWcudW5zdGFibGUKPiBAQCAtMCwwICsxLDIwIEBACj4gKyMgU1BEWC1MaWNlbnNl
LUlkZW50aWZpZXI6IEdQTC0yLjAtb25seQo+ICtjb25maWcgRFJNX0k5MTVfVU5TVEFCTEUKPiAr
ICAgICAgIGJvb2wgIkVuYWJsZSB1bnN0YWJsZSBBUEkgZm9yIGVhcmx5IHByb3RvdHlwZSBkZXZl
bG9wbWVudCIKPiArICAgICAgIGRlcGVuZHMgb24gRVhQRVJUCj4gKyAgICAgICBkZXBlbmRzIG9u
IFNUQUdJTkcKPiArICAgICAgIGRlcGVuZHMgb24gQlJPS0VOICMgc2hvdWxkIG5ldmVyIGJlIGVu
YWJsZWQgYnkgZGlzdHJvcyEKPiArICAgICAgICMgV2UgdXNlIHRoZSBkZXBlbmRlbmN5IG9uICFD
T01QSUxFX1RFU1QgdG8gbm90IGJlIGVuYWJsZWQgaW4KPiArICAgICAgICMgYWxsbW9kY29uZmln
IG9yIGFsbHllc2NvbmZpZyBjb25maWd1cmF0aW9ucwo+ICsgICAgICAgZGVwZW5kcyBvbiAhQ09N
UElMRV9URVNUCj4gKyAgICAgICBkZWZhdWx0IG4KPiArICAgICAgIGhlbHAKPiArICAgICAgICAg
RW5hYmxlIHByb3RvdHlwZSB1QVBJIHVuZGVyIGdlbmVyYWwgZGlzY3Vzc2lvbiBiZWZvcmUgdGhl
eSBhcmUKPiArICAgICAgICAgZmluYWxpemVkLiBTdWNoIHByb3RvdHlwZXMgbWF5IGJlIHdpdGhk
cmF3biBvciBzdWJzdGFudGlhbGx5Cj4gKyAgICAgICAgIGNoYW5nZWQgYmVmb3JlIHJlbGVhc2Uu
IFRoZXkgYXJlIG9ubHkgZW5hYmxlZCBoZXJlIHNvIHRoYXQgYSB3aWRlCj4gKyAgICAgICAgIG51
bWJlciBvZiBpbnRlcmVzdGVkIHBhcnRpZXMgKHVzZXJzcGFjZSBkcml2ZXIgZGV2ZWxvcGVycykg
Y2FuCj4gKyAgICAgICAgIHZlcmlmeSB0aGF0IHRoZSB1QVBJIG1lZXQgdGhlaXIgZXhwZWN0YXRp
b25zLgo+ICsKPiArICAgICAgICAgUmVjb21tZW5kZWQgZm9yIGRyaXZlciBkZXZlbG9wZXJzIF9v
bmx5Xy4KPiArCj4gKyAgICAgICAgIElmIGluIHRoZSBzbGlnaHRlc3QgYml0IG9mIGRvdWJ0LCBz
YXkgIk4iLgo+IC0tCj4gMi4yNC4wLnJjMAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
