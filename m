Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40429A1E17
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 16:57:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05B016E14A;
	Thu, 29 Aug 2019 14:57:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 077686E14A;
 Thu, 29 Aug 2019 14:57:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18305895-1500050 for multiple; Thu, 29 Aug 2019 15:57:48 +0100
MIME-Version: 1.0
To: igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190829145416.31626-1-chris@chris-wilson.co.uk>
References: <20190829145416.31626-1-chris@chris-wilson.co.uk>
Message-ID: <156709066640.12323.11423723264183184805@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 29 Aug 2019 15:57:46 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/2] lib/intel_mmio: add
 funtions for read/write register funtions
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMjkgMTU6NTQ6MTUpCj4gRnJvbTogRGFuaWVs
IE1yenlnbG9kIDxkYW5pZWwudC5tcnp5Z2xvZEBpbnRlbC5jb20+Cj4gCj4gVGhpcyBwYXRjaCBp
cyBmaXJzdCBtb3ZlIHRvIGV4dGVuZCBmdW5jdGlvbmFsaXR5IG9mIGludGVsX21taW8gbGlicmFy
eS4KPiAgICAgVGhlcmUgd2FzIGxpbWl0YXRpb24gZm9yIDEgZGV2aWNlLCBhZGRpbmcgcG9pbnRl
ciBmb3IgSU8gZnVuY3Rpb25zIHRvCj4gICAgIG1tYXBlZCBhcmVhIGdpdmVzIHVzIHBvc3NpYmls
aXR5IHRvIHVzZSB0aG9zZSBJTyBmdW5jdGlvbnMgZm9yIG90aGVyIG1tYXBlZAo+ICAgICBkZXZp
Y2VzLgo+IAo+ICAgICB2MTI6IGNoYW5nZSBtYWNyb3MgZm9yIGdlbmVyYXRpbmcgaW5saW5lcwo+
ICAgICB2MTE6IGZpeCBmb3IgcHJldmlvdXMgY29tbWVudHMKPiAgICAgdjEwOiBhZGQgbWFjcm9z
Cj4gICAgIHY5OiB0cmllZCB0byBmaXggY2FzdGluZ3MKPiAgICAgdjg6IHJlbW92ZSB1bm5lY2Vz
c2FyeSBjYXN0aW5ncwo+ICAgICB2NDogcmV3b3JkIGNvbW1pdG1zZywgc3BlbGxpbmcgZXJyb3Jz
Cj4gCj4gICAgIENjOiBBbnRvbmlvIEFyZ2Vuemlhbm8gPGFudG9uaW8uYXJnZW56aWFub0BpbnRl
bC5jb20+Cj4gICAgIENjOiBEYW5pZWxlIFNwdXJpbyBDZXJhb2xvIDxkYW5pZWxlLmNlcmFvbG9z
cHVyaW9AaW50ZWwuY29tPgo+ICAgICBDYzogS2F0YXJ6eW5hIERlYyA8a2F0YXJ6eW5hLmRlY0Bp
bnRlbC5jb20+Cj4gICAgIENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KPiAgICAgQ2M6IFBldHJpIExhdHZhbGEgPHBldHJpLmxhdHZhbGFAaW50ZWwuY29tPgo+ICAg
ICBDYzogWmJpZ25pZXcgS2VtcGN6ecWEc2tpIDx6Ymlnbmlldy5rZW1wY3p5bnNraUBpbnRlbC5j
b20+Cj4gICAgIENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+IAo+ICAg
ICBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgTXJ6eWdsb2QgPGRhbmllbC50Lm1yenlnbG9kQGludGVs
LmNvbT4KUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
