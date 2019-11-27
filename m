Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B09D10B5E8
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 19:43:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59C6A6E421;
	Wed, 27 Nov 2019 18:43:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B8536E421
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 18:43:30 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 10:43:29 -0800
X-IronPort-AV: E=Sophos;i="5.69,250,1571727600"; d="scan'208";a="199277871"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.8.108])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 10:43:28 -0800
Date: Wed, 27 Nov 2019 10:43:23 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191127184323.zcnibpc6p5khub4z@ldmartin-desk1>
References: <20191127021609.162700-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191127021609.162700-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Suspend MST topology
 manager before destroy fbdev
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBOb3YgMjYsIDIwMTkgYXQgMDY6MTY6MDlQTSAtMDgwMCwgSm9zZSBTb3V6YSB3cm90
ZToKPk1TVCBkbyB0b3BvbG9neSBwcm9iZSBpbiB0aHJlYWRzLCBzbyB0aGlzIHJ1bm5pbmcgdGhy
ZWFkcyBuZWVkcyB0byBiZQo+Zmx1c2hlZCBiZWZvcmUgZmJkZXYgaXMgZGVzdHJveWVkIGFzIHdo
ZW4gYSBuZXcgTVNUIG5vZGUgaXMgZm91bmQgaXQKPmNhbGxzIGRybV9rbXNfaGVscGVyX2hvdHBs
dWdfZXZlbnQoKSB0aGF0IGNhbGxzIGZiZGV2IGZ1bmN0aW9ucwo+Cj5CdWd6aWxsYTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5OTY0Cj5TaWduZWQtb2Zm
LWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPi0tLQo+
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNyArKysrKysr
Cj4gMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQo+Cj5kaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+aW5kZXggOGYyNzcwOTUxNDU5Li4zNzJkZDQ4
NjkxY2YgMTAwNjQ0Cj4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYwo+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKPkBAIC0xNzk4OSw2ICsxNzk4OSwxMyBAQCB2b2lkIGludGVsX21vZGVzZXRfZHJpdmVyX3Jl
bW92ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiAJICovCj4gCWludGVsX2hwZF9w
b2xsX2ZpbmkoaTkxNSk7Cj4KPisJLyoKPisJICogTVNUIGRvIHRvcG9sb2d5IHByb2JlIGluIHRo
cmVhZHMsIHNvIHRoaXMgcnVubmluZyB0aHJlYWRzIG5lZWRzIHRvCj4rCSAqIGJlIGZsdXNoZWQg
YmVmb3JlIGZiZGV2IGlzIGRlc3Ryb3llZCBhcyB3aGVuIGEgbmV3IE1TVCBub2RlIGlzIGZvdW5k
Cj4rCSAqIGl0IGNhbGwgZHJtX2ttc19oZWxwZXJfaG90cGx1Z19ldmVudCgpIHRoYXQgY2FsbHMg
ZmJkZXYgZnVuY3Rpb25zCj4rCSAqLwoKdGhpcyB3b3VsZCBub3JtYWxseSBiZSBwYXJ0IG9mIGRy
bV9tb2RlX2NvbmZpZ19jbGVhbnVwKCkgaW4gd2hpY2ggdGhlCmVuY29kZXJzIHdpbGwgYmUgZGVz
dHJveWVkLCB0b2dldGhlciB3aXRoIHRoZWlyIG1zdF9tZ3IgdmlhIApkcm1fZHBfbXN0X3RvcG9s
b2d5X21ncl9kZXN0cm95KCkKClNvIEkgdGhpbmsgdGhlIGNvbW1lbnQgc2hvdWxkIGFjdHVhbGx5
IG1lbnRpb24gd2h5CmRybV9tb2RlX2NvbmZpZ19jbGVhbnVwKCkgY2FuJ3QgYmUgZG9uZSBiZWZv
cmUgb3IganVzdCBzdGF0ZSB3aGVyZSBpdAp3aWxsIGFjdHVhbGx5IGJlIGRlc3Ryb3llZC4gU28u
Li4gSSBndWVzcyBzb21ldGhpbmcgbGlrZToKCi8qCiAgKiBNU1QgdG9wb2xvZ3kgbmVlZHMgdG8g
YmUgc3VzcGVuZGVkIHNvIHdlIGRvbid0IGhhdmUgYW55IGNhbGxzIHRvCiAgKiBmYmRldiBhZnRl
ciBpdCdzIGZpbmFsaXplZC4gTVNUIHdpbGwgYmUgZGVzdHJveWVkIGxhdGVyIGFzIHBhcnQgb2YK
ICAqIGRybV9tb2RlX2NvbmZpZ19jbGVhbnVwKCkKICAqLwoKT2YgY291cnNlLCBpZiB3ZSBjYW4g
ZmlndXJlIG91dCBhIGJldHRlciBvcmRlcmluZyB0byBwZWVsIHRoZSBvbmlvbgp3b3VsZCBiZSBi
ZXR0ZXIsIGJ1dCBJIHRoaW5rIHRoaXMgaXMgc3VmZmljaWVudC4KCldpdGggdGhlIGNvbW1lbnQg
dXBkYXRlLAoKClJldmlld2VkLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGlu
dGVsLmNvbT4KCkx1Y2FzIERlIE1hcmNoaQoKPisJaW50ZWxfZHBfbXN0X3N1c3BlbmQoaTkxNSk7
Cj4rCj4gCS8qIHBvbGwgd29yayBjYW4gY2FsbCBpbnRvIGZiZGV2LCBoZW5jZSBjbGVhbiB0aGF0
IHVwIGFmdGVyd2FyZHMgKi8KPiAJaW50ZWxfZmJkZXZfZmluaShpOTE1KTsKPgo+LS0gCj4yLjI0
LjAKPgo+X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKPkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
