Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6908985B
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 09:56:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF39F89EAC;
	Mon, 12 Aug 2019 07:56:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E8AB89EAC
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 07:56:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17965138-1500050 for multiple; Mon, 12 Aug 2019 08:55:59 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190812073949.24076-1-michal.wajdeczko@intel.com>
References: <20190811195132.9660-3-michal.wajdeczko@intel.com>
 <20190812073949.24076-1-michal.wajdeczko@intel.com>
Message-ID: <156559655756.2301.3687471610468467080@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 12 Aug 2019 08:55:57 +0100
Subject: Re: [Intel-gfx] [PATCH v2 2/4] drm/i915/uc: Include HuC firmware
 version in summary
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA4LTEyIDA4OjM5OjQ5KQo+IEFmdGVyIHN1
Y2Nlc3NmdWwgdUMgaW5pdGlhbGl6YXRpb24gd2UgYXJlIHJlcG9ydGluZyBHdUMKPiBmaXJtd2Fy
ZSB2ZXJzaW9uIGFuZCBzdGF0dXMgb2YgR3VDIHN1Ym1pc3Npb24gYW5kIEh1Qy4KPiBBZGQgSHVD
IGZ3IHZlcnNpb24gdG8gdGhpcyByZXBvcnQgdG8gbWFrZSBpdCBjb21wbGV0ZSwKPiBidXQgYWxz
byBza2lwIGFsbCBIdUMgaW5mbyBpZiBIdUMgaXMgbm90IHN1cHBvcnRlZC4KPiAKPiB2Mjogc3F1
ZWV6ZSB0byBvbmUgbGluZSAoQ2hyaXMpCj4gCj4gU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRl
Y3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gQ2M6IERhbmllbGUgQ2VyYW9sbyBT
cHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF91Yy5jIHwgMTggKysrKysrKysrKysrKy0tLS0tCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxMyBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfdWMuYwo+IGluZGV4IGFhOTcwMWNmYzc1NC4uYTNhNTkxOGM2NzgyIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCj4gQEAgLTUwMywxMiArNTAzLDIw
IEBAIGludCBpbnRlbF91Y19pbml0X2h3KHN0cnVjdCBpbnRlbF91YyAqdWMpCj4gICAgICAgICAg
ICAgICAgICAgICAgICAgZ290byBlcnJfY29tbXVuaWNhdGlvbjsKPiAgICAgICAgIH0KPiAgCj4g
LSAgICAgICBkZXZfaW5mbyhpOTE1LT5kcm0uZGV2LCAiR3VDIGZpcm13YXJlIHZlcnNpb24gJXUu
JXVcbiIsCj4gLSAgICAgICAgICAgICAgICBndWMtPmZ3Lm1ham9yX3Zlcl9mb3VuZCwgZ3VjLT5m
dy5taW5vcl92ZXJfZm91bmQpOwo+IC0gICAgICAgZGV2X2luZm8oaTkxNS0+ZHJtLmRldiwgIkd1
QyBzdWJtaXNzaW9uICVzXG4iLAo+ICsgICAgICAgZGV2X2luZm8oaTkxNS0+ZHJtLmRldiwgIiVz
IGZpcm13YXJlICVzIHZlcnNpb24gJXUuJXUgJXM6JXNcbiIsCgpJIHdvdWxkIGhhdmUgcHV0IGEg
Y29tbWEgYmV0d2VlbiB0aGUgdmVyc2lvbiBhbmQgdGhlIHRhZzpzdGF0ZS4KLUNocmlzCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
