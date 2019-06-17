Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0692E4859E
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 16:39:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B952989298;
	Mon, 17 Jun 2019 14:38:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96A3489298
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 14:38:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 07:38:56 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Jun 2019 07:38:55 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x5HEcsS2006612; Mon, 17 Jun 2019 15:38:54 +0100
To: intel-gfx@lists.freedesktop.org, "Chris Wilson" <chris@chris-wilson.co.uk>
References: <20190617100917.13110-1-chris@chris-wilson.co.uk>
Date: Mon, 17 Jun 2019 16:38:53 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z3i9m3f4xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190617100917.13110-1-chris@chris-wilson.co.uk>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Reduce verbosity on log
 overflows
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAxNyBKdW4gMjAxOSAxMjowOToxNyArMDIwMCwgQ2hyaXMgV2lsc29uICAKPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cgo+IElmIHRoZSB1c2VyIGlzIGNsZWFyaW5nIHRo
ZSBsb2cgYnVmZmVyIHRvbyBzbG93bHksIHdlIG92ZXJmbG93LiBBcyB0aGlzCj4gaXMgYW4gZXhw
ZWN0ZWQgY29uZGl0aW9uLCBhbmQgdGhlIGRyaXZlciB0cmllcyB0byBoYW5kbGUgaXQsIHJlZHVj
ZSB0aGUKPiBlcnJvciBtZXNzYWdlIGRvd24gdG8gYSBub3RpY2UuCj4KPiBCdWd6aWxsYTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwODE3Cj4gU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1p
Y2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+IENjOiBUdnJ0a28g
VXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9ndWNfbG9nLmMgfCA0ICsrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2d1Y19sb2cuYyAgCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9n
dWNfbG9nLmMKPiBpbmRleCBiZjE0NDY2Mjk3MDMuLmUzYjgzZWNiOTBiNSAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfbG9nLmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9ndWNfbG9nLmMKPiBAQCAtMjA4LDcgKzIwOCw5IEBAIHN0YXRpYyBi
b29sIGd1Y19jaGVja19sb2dfYnVmX292ZXJmbG93KHN0cnVjdCAgCj4gaW50ZWxfZ3VjX2xvZyAq
bG9nLAo+ICAJCQkvKiBidWZmZXJfZnVsbF9jbnQgaXMgYSA0IGJpdCBjb3VudGVyICovCj4gIAkJ
CWxvZy0+c3RhdHNbdHlwZV0uc2FtcGxlZF9vdmVyZmxvdyArPSAxNjsKPiAgCQl9Cj4gLQkJRFJN
X0VSUk9SX1JBVEVMSU1JVEVEKCJHdUMgbG9nIGJ1ZmZlciBvdmVyZmxvd1xuIik7Cj4gKwo+ICsJ
CWRldl9ub3RpY2VfcmF0ZWxpbWl0ZWQoZ3VjX3RvX2k5MTUobG9nX3RvX2d1Yyhsb2cpKS0+ZHJt
LmRldiwKPiArCQkJCSAgICAgICAiR3VDIGxvZyBidWZmZXIgb3ZlcmZsb3dcbiIpOwoKV2hpbGUg
dGhpcyBjaGFuZ2UgYWxvbmUgaXMgbm90IGhhcm1mdWwsIEknbSBhZnJhaWQgdGhhdCB0aGVyZSBt
aWdodApiZSBhbm90aGVyIHJlYXNvbiB3aHkgd2Ugc2VlIHRoaXMgbWVzc2FnZSA6IG9uY2UgYnVm
ZmVyX2Z1bGxfY250IGlzCnR1cm5lZCBvbiBieSB0aGUgZncgYW5kIHRoZW4gd2UgcmVzZXQgdGhl
IEd1YywgdGhpcyBmaWVsZCBtYXkgaGF2ZQpzdGFsZSB2YWx1ZSBhcyBpdCBpcyBub3QgY2xlYXJl
ZCBieSB1cy91YyBhbmQgd2UgbWF5IHdyb25nbHkgYXNzdW1lCnRoYXQgdGhlcmUgd2FzIGFuIG92
ZXJmbG93LgoKPiAgCX0KPiAJcmV0dXJuIG92ZXJmbG93OwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
