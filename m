Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7D52C406
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2019 12:11:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC69089D3E;
	Tue, 28 May 2019 10:11:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CA6289D3E
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 10:11:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 May 2019 03:11:10 -0700
X-ExtLoop1: 1
Received: from unknown (HELO [10.252.33.94]) ([10.252.33.94])
 by orsmga005.jf.intel.com with ESMTP; 28 May 2019 03:11:09 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190527111053.12486-1-chris@chris-wilson.co.uk>
 <20190527115114.13448-1-chris@chris-wilson.co.uk>
 <755ef77a-c639-080c-4f50-0d5de5e4b4da@linux.intel.com>
 <155903562398.2573.6149672701796769076@skylake-alporthouse-com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <0b7e029c-7c2a-500f-bd6f-b5f9119999cd@linux.intel.com>
Date: Tue, 28 May 2019 12:11:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <155903562398.2573.6149672701796769076@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [CI] drm/i915: Keep user GGTT alive for a minimum
 of 250ms
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

T3AgMjgtMDUtMjAxOSBvbSAxMToyNyBzY2hyZWVmIENocmlzIFdpbHNvbjoKPiBRdW90aW5nIE1h
YXJ0ZW4gTGFua2hvcnN0ICgyMDE5LTA1LTI4IDEwOjI0OjQwKQo+PiBPcCAyNy0wNS0yMDE5IG9t
IDEzOjUxIHNjaHJlZWYgQ2hyaXMgV2lsc29uOgo+Pj4gRG8gbm90IGFsbG93IHJ1bnRpbWUgcG0g
YXV0b3N1c3BlbmQgdG8gcmVtb3ZlIHVzZXJzcGFjZSBHR1RUIG1tYXBzIHRvbwo+Pj4gcXVpY2ts
eS4gRm9yIGV4YW1wbGUsIGlndCBzZXRzIHRoZSBhdXRvc3VzcGVuZCBkZWxheSB0byAwLCBhbmQg
c28gd2UKPj4+IGltbWVkaWF0ZWx5IGF0dGVtcHQgdG8gcGVyZm9ybSBydW50aW1lIHN1c3BlbmQg
dXBvbiByZWxlYXNpbmcgdGhlCj4+PiB3YWtlcmVmLiBVbmZvcnR1bmF0ZWx5LCB0aGF0IGludm9s
dmVzIHRlYXJpbmcgZG93biBHR1RUIG1tYXBzIGFzIHRoZXkKPj4+IHJlcXVpcmUgYW4gYWN0aXZl
IGRldmljZS4KPj4+Cj4+PiBPdmVycmlkZSB0aGUgYXV0b3N1c3BlbmQgZm9yIEdHVFQgbW1hcHMs
IGJ5IGtlZXBpbmcgdGhlIHdha2VyZWYgYXJvdW5kCj4+PiBmb3IgMjUwbXMgYWZ0ZXIgcG9wdWxh
dGluZyB0aGUgUFRFIGZvciBhIGZyZXNoIG1tYXAuCj4+Pgo+Pj4gdjI6IFByZWZlciByZWZjb3Vu
dF90IGZvciBpdHMgdW5kZXIvb3ZlcmZsb3cgZXJyb3IgZGV0ZWN0aW9uCj4+PiB2MzogRmx1c2gg
dGhlIHVzZXIgcnVudGltZSBhdXRvc3VzcGVuZCBwcmlvciB0byBzeXN0ZW0gc3lzdGVtLgo+Pj4K
Pj4+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
Pgo+Pj4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+
Pj4gUmV2aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwu
Y29tPgo+PiBDYW4ndCB0aGlzIGV4dHJhIGRlbGF5IGJlIGFkZGVkIHRvIHRoZSBrZXJuZWwgY29y
ZT8gRmVlbHMgbGlrZSB3ZSdyZSBqdXN0IGR1cGxpY2F0aW5nIGF1dG9zdXNwZW5kIGJlaGF2aW9y
IGhlcmUuLgo+IFllcy4gSW4gdGhlIGVuZCwgd2Ugd291bGQgbmVlZCB0byBhZGp1c3QgdGhlIGRl
dmljZSBwbSB0byBjbGFtcCB0aGUgdXNlcgo+IHN5c2ZzIHZhbHVlLiBCdXQgcmVhbGx5LCB3ZSB3
YW50IGRpZmZlcmVudCBmbG9vcnMgZm9yIGRpZmZlcmVudAo+IG9wZXJhdGlvbnMgYXMgd2Ugd291
bGQgZXhwZWN0IGRpZmZlcmVudCB3YWtldXAgbGF0ZW5jaWVzIC8gcGVuYWx0aWVzLgo+IEUuZy4g
cmVhcGluZyBHVFQgbW1hcHMgaXMgZXhwZW5zaXZlLCBidXQgaWYgbm9uZSBhcmUgaW4gdXNlLi4u
Cj4gLUNocmlzCgpTZWVtcyBhIGJpdCBsaWtlIHRoZSBQTSBRb1MgbWFuYWdlbWVudCB0aGVuLCBi
dXQgZm9yIGF1dG9zdXNwZW5kLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
