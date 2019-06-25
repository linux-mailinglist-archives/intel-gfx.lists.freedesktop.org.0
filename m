Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 678CF5586F
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 22:11:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F3D56E204;
	Tue, 25 Jun 2019 20:11:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF94E6E204
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 20:11:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17023178-1500050 for multiple; Tue, 25 Jun 2019 21:11:07 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190625174547.22164-1-chris@chris-wilson.co.uk>
 <op.z3ydosirxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <156148843527.2637.1647850966438714639@skylake-alporthouse-com>
 <50e16efa-e399-e9ca-7053-81400ff12083@intel.com>
In-Reply-To: <50e16efa-e399-e9ca-7053-81400ff12083@intel.com>
Message-ID: <156149346309.2637.7209968352789206254@skylake-alporthouse-com>
Date: Tue, 25 Jun 2019 21:11:03 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Compact init params debug to
 a single line
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA2LTI1IDIxOjA2OjEwKQo+IAo+
IAo+IE9uIDYvMjUvMTkgMTE6NDcgQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPiA+IERvIHdlIGV2
ZW4gbmVlZCB0byBkdW1wIHRoZW0/IFRoZXkgYXJlIGFsbW9zdCBhbGwgc3RhdGljLCB3aXRoIHRo
ZQo+ID4gZXhjZXB0aW9uIG9mIGRlYnVnIGxldmVsIGFuZCBhZHMgYWRkcmVzcz8gSXMgaXQgdXNl
ZnVsPwo+IAo+IEluIG15IGV4cGVyaWVuY2UgaXQgY2FuIGJlIHVzZWZ1bCB3aGVuIHdlIGdldCBh
IGJ1ZyByZXBvcnQgd2hlcmUgZ3VjIAo+IGZhaWxlZCB0byBsb2FkIG9yIHdoZW4gd2UncmUgdGVz
dGluZyBhbiBpbnRlcmZhY2UgY2hhbmdlIHRvIGRvdWJsZS1jaGVjayAKPiB0aGF0IHRoZSBwYXJh
bWV0ZXJzIGFyZSBzZXQgYXMgZXhwZWN0ZWQuIEJ1dCBJIGFncmVlIHRoZXJlIGlzIG5vIG5lZWQg
dG8gCj4gZHVtcCBhbGwgdGhlIGR3b3JkcyB3ZSBkb24ndCBzZXQuIE1heWJlIHdlIGNhbiByZWR1
Y2UgR1VDX0NUTF9NQVhfRFdPUkRTIAo+IHRvIHRoZSBudW1iZXIgb2YgdXNlZCBkd29yZHMsIG9y
IGFkZCBhIG5ldyBkZWZpbmUgc2V0IHRvIHRoYXQgYW5kIHVzZSBpdCAKPiBmb3IgYnVmIHNpemU/
CgpJZiB5b3UgaGF2ZSB1c2VkIHRoZW0sIHRoZW4gYnkgZGVmaW5pdGlvbiB0aGV5IGFyZSB1c2Vm
dWwgOikKCklmIHlvdSBrbm93IHdoZW4geW91IG5lZWQgdGhlIGluZm9ybWF0aW9uLCBlLmcuIHRo
ZSBpbml0IHNlcXVlbmNlCmZhaWxlZDsgdGhlbiBkdW1wIHRoZW4/Ci1DaHJpcwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
