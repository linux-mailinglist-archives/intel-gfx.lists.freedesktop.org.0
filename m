Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1BD337608
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 15:45:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E8326E03B;
	Thu, 11 Mar 2021 14:45:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 249046E03B
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 14:45:34 +0000 (UTC)
IronPort-SDR: d+h20CFG5kslWjdAimmzwNsmlhbrA6Y0zcmWuTOVq9yCNHaR5HKaXaIOLSnDgqvNiQYUxfj5/y
 AK2OR+s7UwOA==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="250039595"
X-IronPort-AV: E=Sophos;i="5.81,240,1610438400"; d="scan'208";a="250039595"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 06:45:33 -0800
IronPort-SDR: ckUWavJi8VH0LWKQb+4lYYXU6UXw69KUfvqYkLoI8wTcw4+tHMKR0KbVg1Y9Rt9PReZieh/HHR
 xMyDwxZybx/A==
X-IronPort-AV: E=Sophos;i="5.81,240,1610438400"; d="scan'208";a="448300482"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 06:45:32 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 16:45:29 +0200
Message-Id: <20210311144529.3059024-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Uninit the DMC FW loader state during
 shutdown
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: kernel test robot <oliver.sang@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgbmVlZCB0byB3YWl0IGZvciB0aGUgRE1DIEZXIGxvYWRlciB3b3JrIHRvIGNvbXBsZXRlIGR1
cmluZyBzaHV0ZG93biwKZXZlbiBpZiBpdCdzIHVubGlrZWx5IHRvIGJlIHN0aWxsIHBlbmRpbmcg
YnkgdGhhdCB0aW1lLCBmaXggdGhpcy4KClRoaXMgYWxzbyBmaXhlcyB0aGUgd2FrZXJlZiB0cmFj
a2luZyBXQVJOIGR1cmluZyBzaHV0ZG93biBhYm91dCB0aGUKbGVha2VkIHJlZmVyZW5jZSB3ZSBo
b2xkIGR1ZSB0byBhIG1pc3NpbmcgRE1DIGZpcm13YXJlLgoKV2hpbGUgYXQgaXQgYWRkIGEgVE9E
TyBjb21tZW50IGFib3V0IHVuaWZ5aW5nIHRoZSBzaHV0ZG93biBhbmQgUE0KcG93ZXItb2ZmIHNl
cXVlbmNlcyBhbmQgbGF0ZXIgdGhlc2Ugc2VxdWVuY2VzIHdpdGggdGhlIGRyaXZlciByZW1vdmUg
YW5kCnN5c3RlbS9ydW50aW1lIHN1c3BlbmQgc2VxdWVuY2VzLgoKQ2M6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClJlZmVyZW5jZXM6IGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2xrbWwvMjAyMTAzMDMwNTU1MTcuR0IyNzA4QHhzYW5nLU9wdGlQbGV4LTkw
MjAKUmVwb3J0ZWQtYnk6IGtlcm5lbCB0ZXN0IHJvYm90IDxvbGl2ZXIuc2FuZ0BpbnRlbC5jb20+
ClNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIHwgMTAgKysrKysrKysrLQogMSBmaWxlIGNoYW5n
ZWQsIDkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5j
CmluZGV4IDNlZGQ1ZTQ3YWQ2OC4uNGEwZTQ5MWU5NjkyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmMKQEAgLTEwMzgsMTAgKzEwMzgsMTggQEAgdm9pZCBpOTE1X2RyaXZlcl9zaHV0ZG93bihzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAlpbnRlbF9zdXNwZW5kX2VuY29kZXJzKGk5MTUp
OwogCWludGVsX3NodXRkb3duX2VuY29kZXJzKGk5MTUpOwogCisJaW50ZWxfY3NyX3Vjb2RlX3N1
c3BlbmQoaTkxNSk7CisKIAkvKgogCSAqIFRoZSBvbmx5IHJlcXVpcmVtZW50IGlzIHRvIHJlYm9v
dCB3aXRoIGRpc3BsYXkgREMgc3RhdGVzIGRpc2FibGVkLAogCSAqIGZvciBub3cgbGVhdmluZyBh
bGwgZGlzcGxheSBwb3dlciB3ZWxscyBpbiB0aGUgSU5JVCBwb3dlciBkb21haW4KLQkgKiBlbmFi
bGVkIG1hdGNoaW5nIHRoZSBkcml2ZXIgcmVsb2FkIHNlcXVlbmNlLgorCSAqIGVuYWJsZWQuCisJ
ICoKKwkgKiBUT0RPOgorCSAqIC0gdW5pZnkgdGhlIHBjaV9kcml2ZXI6OnNodXRkb3duIHNlcXVl
bmNlIGhlcmUgd2l0aCB0aGUKKwkgKiAgIHBjaV9kcml2ZXIuZHJpdmVyLnBtLnBvd2Vyb2ZmLHBv
d2Vyb2ZmX2xhdGUgc2VxdWVuY2UuCisJICogLSB1bmlmeSB0aGUgZHJpdmVyIHJlbW92ZSBhbmQg
c3lzdGVtL3J1bnRpbWUgc3VzcGVuZCBzZXF1ZW5jZXMgd2l0aAorCSAqICAgdGhlIGFib3ZlIHVu
aWZpZWQgc2h1dGRvd24vcG93ZXJvZmYgc2VxdWVuY2UuCiAJICovCiAJaW50ZWxfcG93ZXJfZG9t
YWluc19kcml2ZXJfcmVtb3ZlKGk5MTUpOwogCWVuYWJsZV9ycG1fd2FrZXJlZl9hc3NlcnRzKCZp
OTE1LT5ydW50aW1lX3BtKTsKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
