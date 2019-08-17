Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3CD9107F
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Aug 2019 15:19:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18B276E4E1;
	Sat, 17 Aug 2019 13:19:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72ADC6E4E1
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Aug 2019 13:19:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18173079-1500050 for multiple; Sat, 17 Aug 2019 14:19:22 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190817131144.26884-3-michal.wajdeczko@intel.com>
References: <20190817131144.26884-1-michal.wajdeczko@intel.com>
 <20190817131144.26884-3-michal.wajdeczko@intel.com>
Message-ID: <156604796013.24359.7532983511507679073@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 17 Aug 2019 14:19:20 +0100
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/uc: Cleanup fw fetch on every
 GuC/HuC init failure
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA4LTE3IDE0OjExOjQzKQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYwo+IGluZGV4IDQ0OWM0MzJkZDc2OC4uZDhlOWJlMWQ3
YjBlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCj4gQEAgLTMwNSwx
NiArMzA1LDEwIEBAIGludCBpbnRlbF91Y19pbml0KHN0cnVjdCBpbnRlbF91YyAqdWMpCj4gICAg
ICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gIAo+ICAgICAgICAgaWYgKGludGVsX3VjX3VzZXNf
aHVjKHVjKSkgewo+IC0gICAgICAgICAgICAgICByZXQgPSBpbnRlbF9odWNfaW5pdChodWMpOwo+
IC0gICAgICAgICAgICAgICBpZiAocmV0KQo+IC0gICAgICAgICAgICAgICAgICAgICAgIGdvdG8g
b3V0X2h1YzsKPiArICAgICAgICAgICAgICAgaW50ZWxfaHVjX2luaXQoaHVjKTsKPiAgICAgICAg
IH0KCkluc2VydCBjaGVja3BhdGNoIGNvbW1lbnRzIGFib3V0IHJlc2lkdWFsIHt9CgpSZXZpZXdl
ZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
