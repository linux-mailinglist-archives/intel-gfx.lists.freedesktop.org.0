Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 112304EEC2
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 20:25:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF7646E90F;
	Fri, 21 Jun 2019 18:25:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BC276E90F
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 18:25:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16983067-1500050 for multiple; Fri, 21 Jun 2019 19:25:01 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190621182123.31368-2-daniele.ceraolospurio@intel.com>
References: <20190621182123.31368-1-daniele.ceraolospurio@intel.com>
 <20190621182123.31368-2-daniele.ceraolospurio@intel.com>
Message-ID: <156114149866.2401.1169264655105015975@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 21 Jun 2019 19:24:58 +0100
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/guc: handle GuC messages
 received with CTB disabled
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA2LTIxIDE5OjIxOjIzKQo+IFRo
ZXJlIGlzIGEgdmVyeSBzbWFsbCBjaGFuY2Ugb2YgdHJpZ2dlcmluZyBhIGxvZyBmbHVzaCBldmVu
dCB3aGVuCj4gZW5hYmxpbmcgb3IgZGlzYWJsaW5nIENUIGJ1ZmZlcnMuIEV2ZW50cyB0cmlnZ2Vy
ZWQgd2hpbGUgQ1QgYnVmZmVycwo+IGFyZSBkaXNhYmxlZCBhcmUgbG9nZ2VkIGluIHRoZSBTQ1JB
VENIXzE1IHJlZ2lzdGVyIHVzaW5nIHRoZSBzYW1lIGJpdHMKPiB1c2VkIGluIHRoZSBDVCBtZXNz
YWdlIHBheWxvYWQuIFNpbmNlIG91ciBjb21tdW5pY2F0aW9uIGNoYW5uZWwgd2l0aAo+IEd1QyBp
cyB0dXJuZWQgb2ZmLCB3ZSBjYW4gc2F2ZSB0aGUgbWVzc2FnZSBhbmQgaGFuZGxlIGl0IGFmdGVy
IHdlIHR1cm4KPiBpdCBiYWNrIG9uLgo+IEd1QyBzaG91bGQgYmUgaWRsZSBhbmQgbm90IGdlbmVy
YXRlIG1vcmUgZXZlbnRzIGluIHRoZSBtZWFudGltZSBiZWNhdXNlCj4gd2UncmUgbm90IHRhbGtp
bmcgdG8gaXQuCj4gCj4gdjI6IGNsZWFyIHRoZSBtbWlvIHJlZ2lzdGVyIG9uIHN0b3BfY29tbXVu
aWNhdGlvbiBhcyB3ZWxsIChDaHJpcykKPiAKPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWxlIENlcmFv
bG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+IENjOiBNaWNoYWwg
V2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPiBDYzogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpJJ2xsIHRha2UgeW91ciB3b3JkIHRoYXQgdGhl
IGd1YyBsZWF2ZXMgdXNlZnVsIHRpZGJpdHMgb2YgaW5mbyB0aGVyZS4KUmV2aWV3ZWQtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
