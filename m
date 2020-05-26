Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 762CD1E1AD9
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2020 07:58:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF02E89915;
	Tue, 26 May 2020 05:58:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 065F689915
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 May 2020 05:58:05 +0000 (UTC)
IronPort-SDR: FsQQdfFrV5H9Q9SfM8Zv1Iv7nMSQ6QJxKDLHcsCf5TflrhVaFNA3J7jzlSjX78YyBpeS/jrM8T
 904sNu63KJqA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2020 22:58:05 -0700
IronPort-SDR: J3BR6kzAZ5CgffETOeT6o/yEY9HGKMcEz3/f3cKi9MsSbE9u3+Zqr34eFJRw24RDRsih3m21hg
 TDD54hMD6lBw==
X-IronPort-AV: E=Sophos;i="5.73,436,1583222400"; d="scan'208";a="441956483"
Received: from amanna-mobl1.gar.corp.intel.com (HELO [10.215.137.24])
 ([10.215.137.24])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2020 22:58:02 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200524233900.25598-1-chris@chris-wilson.co.uk>
From: "Manna, Animesh" <animesh.manna@intel.com>
Message-ID: <7176606b-53c6-ef9b-4cfe-57bdb17ed671@intel.com>
Date: Tue, 26 May 2020 11:27:57 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200524233900.25598-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix early deref of 'dsb'
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDI1LTA1LTIwMjAgMDU6MDksIENocmlzIFdpbHNvbiB3cm90ZToKPiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jOjE3NyBpbnRlbF9kc2JfcmVnX3dyaXRlKCkgd2Fy
bjogdmFyaWFibGUgZGVyZWZlcmVuY2VkIGJlZm9yZSBjaGVjayAnZHNiJyAoc2VlIGxpbmUgMTc1
KQo+Cj4gRml4ZXM6IGFmZWRhNGYzYjFjOCAoImRybS9pOTE1L2RzYjogUHJlIGFsbG9jYXRlIGFu
ZCBsYXRlIGNsZWFudXAgb2YgY21kIGJ1ZmZlciIpCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gu
bWFubmFAaW50ZWwuY29tPgo+IENjOiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29t
PgoKVGhhbmtzIENocmlzIGZvciBjYXRjaGluZy4KUmV2aWV3ZWQtYnk6IEFuaW1lc2ggTWFubmEg
PGFuaW1lc2gubWFubmFAaW50ZWwuY29tPgoKPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHNiLmMgfCA2ICsrKystLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDQgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kc2IuYwo+IGluZGV4IDQ3NTEwNmU5MWZhNy4uMjRlNmQ2M2UyZDQ3IDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCj4gQEAgLTE2OSwxNSArMTY5
LDE3IEBAIHZvaWQgaW50ZWxfZHNiX2luZGV4ZWRfcmVnX3dyaXRlKGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+ICAgdm9pZCBpbnRlbF9kc2JfcmVnX3dyaXRlKGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+ICAgCQkJIGk5MTVfcmVn
X3QgcmVnLCB1MzIgdmFsKQo+ICAgewo+IC0Jc3RydWN0IGludGVsX2RzYiAqZHNiID0gY3J0Y19z
dGF0ZS0+ZHNiOwo+ICAgCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0Yyhj
cnRjX3N0YXRlLT51YXBpLmNydGMpOwo+ICAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwo+IC0JdTMyICpidWYgPSBkc2ItPmNtZF9i
dWY7Cj4gKwlzdHJ1Y3QgaW50ZWxfZHNiICpkc2I7Cj4gKwl1MzIgKmJ1ZjsKPiAgIAo+ICsJZHNi
ID0gY3J0Y19zdGF0ZS0+ZHNiOwo+ICAgCWlmICghZHNiKSB7Cj4gICAJCWludGVsX2RlX3dyaXRl
KGRldl9wcml2LCByZWcsIHZhbCk7Cj4gICAJCXJldHVybjsKPiAgIAl9Cj4gKwo+ICAgCWJ1ZiA9
IGRzYi0+Y21kX2J1ZjsKPiAgIAlpZiAoZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0sIGRzYi0+
ZnJlZV9wb3MgPj0gRFNCX0JVRl9TSVpFKSkgewo+ICAgCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYt
PmRybSwgIkRTQiBidWZmZXIgb3ZlcmZsb3dcbiIpOwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
