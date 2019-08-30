Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 376CBA3EF5
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 22:27:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 958606E122;
	Fri, 30 Aug 2019 20:27:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E0046E122
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 20:27:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18322749-1500050 for multiple; Fri, 30 Aug 2019 21:27:36 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190830182719.32608-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20190830182719.32608-1-ville.syrjala@linux.intel.com>
Message-ID: <156719685349.29078.13778904979594930276@skylake-alporthouse-com>
Date: Fri, 30 Aug 2019 21:27:33 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Prefer encoder->name over
 port_name()
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDE5LTA4LTMwIDE5OjI3OjE5KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gZW51bSBwb3J0
IGlzIGEgbWVzcyBub3cgYmVjYXVzZSBpdCBubyBsb25nZXIgbWF0Y2hlcyB0aGUgc3BlYwo+IGF0
IGFsbC4gTGV0J3Mgc3RhcnQgdG8gZGlnIG91cnNlbHZlcyBvdXQgb2YgdGhpcyBob2xlIGJ5Cj4g
cmVkdWNpbmcgb3VyIHJlbGlhbmNlIG9uIHBvcnRfbmFtZSgpLiBUaGlzIHNob3VsZCBhdCBsZWFz
dCBtYWtlCj4gYSBidW5jaCBvZiBkZWJ1ZyBtZXNzYWdlcyBhIGJpdCBtb3JlIHNlbnNpYmxlIHdo
aWxlIHdlIHRoaW5rIGhvdwo+IHRvIGZpbGwgdGhlIHRoZSBob2xlIHByb3Blcmx5Lgo+IAo+IEJh
c2VkIG9uIHRoZSBmb2xsb3dpbmcgY29jY2kgc2NyaXB0IHdpdGggYSBsb3Qgb2YgbWFudWFsIGNs
ZWFudXAKPiAoYWxsIHRoZSBmb3JtYXQgc3RyaW5ncyBldGMuKToKPiBAQAo+IGV4cHJlc3Npb24g
RTsKPiBAQAo+ICgKPiAtIHBvcnRfbmFtZShFLT5wb3J0KQo+ICsgRS0+YmFzZS5iYXNlLmlkLCBF
LT5iYXNlLm5hbWUKPiB8Cj4gLSBwb3J0X25hbWUoRS5wb3J0KQo+ICsgRS5iYXNlLmJhc2UuaWQs
IEUuYmFzZS5uYW1lCj4gKQo+IAo+IEBACj4gZW51bSBwb3J0IFA7Cj4gZXhwcmVzc2lvbiBFOwo+
IEBACj4gICBQID0gRS0+cG9ydAo+IDwuLi4KPiAtIHBvcnRfbmFtZShQKQo+ICsgRS0+YmFzZS5i
YXNlLmlkLCBFLT5iYXNlLm5hbWUKPiAuLi4+Cj4gCj4gQEAKPiBlbnVtIHBvcnQgUDsKPiBleHBy
ZXNzaW9uIEU7Cj4gQEAKPiAgIFAgPSBFLnBvcnQKPiA8Li4uCj4gLSBwb3J0X25hbWUoUCkKPiAr
IEUuYmFzZS5iYXNlLmlkLCBFLmJhc2UubmFtZQo+IC4uLj4KPiAKPiBAQAo+IGV4cHJlc3Npb24g
RTsKPiBAQAo+IHsKPiAtIGVudW0gcG9ydCBQID0gRTsKPiAuLi4gd2hlbiAhPSBQCj4gfQo+IAoK
VGhlIGNvbnZlcnNpb25zIGxvb2tzIGNvcnJlY3QgYW5kIEVOQ09ERVI6JWQgd2lsbCBoZWxwIHRh
bGx5IHRoZSB2YXJpb3VzCmRlYnVnIG1lc3NhZ2VzLCBzbwoKPiBTaWduZWQtb2ZmLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
