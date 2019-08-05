Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE9AF825B5
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2019 21:44:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89C0A89CAC;
	Mon,  5 Aug 2019 19:44:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 056EF89CAC
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2019 19:44:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17896990-1500050 for multiple; Mon, 05 Aug 2019 20:43:58 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190805183943.24063-1-chris@chris-wilson.co.uk>
References: <20190805094333.17600-1-chris@chris-wilson.co.uk>
 <20190805183943.24063-1-chris@chris-wilson.co.uk>
Message-ID: <156503423708.30510.13460344881694011896@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 05 Aug 2019 20:43:57 +0100
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Defer final intel_wakeref_put
 to process context
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMDUgMTk6Mzk6NDMpCj4gQXMgd2UgbmVlZCB0
byBhY3F1aXJlIGEgbXV0ZXggdG8gc2VyaWFsaXNlIHRoZSBmaW5hbAo+IGludGVsX3dha2VyZWZf
cHV0LCB3ZSBuZWVkIHRvIGVuc3VyZSB0aGF0IHdlIGFyZSBpbiBwcm9jZXNzIGNvbnRleHQgYXQK
PiB0aGF0IHRpbWUuIEhvd2V2ZXIsIHdlIHdhbnQgdG8gYWxsb3cgb3BlcmF0aW9uIG9uIHRoZSBp
bnRlbF93YWtlcmVmIGZyb20KPiBpbnNpZGUgdGltZXIgYW5kIG90aGVyIGhhcmRpcnEgY29udGV4
dCwgd2hpY2ggbWVhbnMgdGhhdCBuZWVkIHRvIGRlZmVyCj4gdGhhdCBmaW5hbCBwdXQgdG8gYSB3
b3JrcXVldWUuCj4gCj4gSW5zaWRlIHRoZSBmaW5hbCB3YWtlcmVmIHB1dHMsIHdlIGFyZSBzYWZl
IHRvIG9wZXJhdGUgaW4gYW55IGNvbnRleHQsIGFzCj4gd2UgYXJlIHNpbXBseSBtYXJraW5nIHVw
IHRoZSBIVyBhbmQgc3RhdGUgdHJhY2tpbmcgZm9yIHRoZSBwb3RlbnRpYWwKPiBzbGVlcC4gSXQn
cyBvbmx5IHRoZSBzZXJpYWxpc2F0aW9uIHdpdGggdGhlIHBvdGVudGlhbCBzbGVlcGluZyBnZXR0
aW5nCj4gdGhhdCByZXF1aXJlcyBjYXJlZnVsIHdhaXQgYXZvaWRhbmNlLiBUaGlzIGFsbG93cyB1
cyB0byByZXRhaW4gdGhlCj4gaW1tZWRpYXRlIHByb2Nlc3NpbmcgYXMgYmVmb3JlICh3ZSBvbmx5
IG5lZWQgdG8gc2xlZXAgb3ZlciB0aGUgc2FtZQo+IHJhY2VzIGFzIHRoZSBjdXJyZW50IG11dGV4
X2xvY2spLgo+IAo+IHYyOiBBZGQgYSBzZWxmdGVzdCB0byBlbnN1cmUgd2UgZXhlcmNpc2UgdGhl
IGNvZGUgd2hpbGUgbG9ja2RlcCB3YXRjaGVzLgo+IHYzOiBUaGF0IHRlc3Qgd2FzIGV4dHJlbWVs
eSBsb3VkIGFuZCBjb21wbGFpbmVkIGFib3V0IG1hbnkgdGhpbmdzIQo+IAo+IEJ1Z3ppbGxhOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEyOTUKPiBGaXhl
czogMTgzOTg5MDRjYTllICgiZHJtL2k5MTU6IE9ubHkgcmVjb3ZlciBhY3RpdmUgZW5naW5lcyIp
Cj4gRml4ZXM6IDUxZmJkOGRlODdkYyAoImRybS9pOTE1L3BtdTogQXRvbWljYWxseSBhY3F1aXJl
IHRoZSBndF9wbSB3YWtlcmVmIikKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGludGVsLmNvbT4KPiBDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRl
bC5jb20+CgpGd2l3LCBJIHRoaW5rIHRoZSBpbnRlbF9ndF9wbV93YWl0X2Zvcl9pZGxlKCkgaG9v
a2VkIGludG8gRFJPUF9JRExFIHdpbGwKZml4IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTExMTI0NQotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
