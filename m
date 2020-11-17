Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C86072B6F01
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 20:44:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF2CA6E062;
	Tue, 17 Nov 2020 19:44:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FEC989D53
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 19:44:54 +0000 (UTC)
IronPort-SDR: 8Iz7I7A9qDT0ogSGLJFrZsY2serujMAgxvLECHF6oQ1KNdcIkIL3cwOm1Rt6KrfmwPrM9wroIB
 PhfStt+gUffA==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="232612536"
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="232612536"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 11:44:53 -0800
IronPort-SDR: Q4xYBix8V1ALLa2zLAmkoP++6452rJ/G5p24NOlh2fb2mWXWWuNYNU9zhnlfAkvBOpBdem0m7a
 WIom2G2ZOdcQ==
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="359034195"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 17 Nov 2020 11:44:52 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Nov 2020 11:47:03 -0800
Message-Id: <20201117194718.11462-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 00/15] Rebased remaining big joiner series
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpNYWFydGVuIExhbmtob3JzdCAoNCk6CiAgZHJtL2k5MTUvZHA6IEFsbG93IGJpZyBqb2luZXIg
bW9kZXMgaW4gaW50ZWxfZHBfbW9kZV92YWxpZCgpLCB2My4KICBkcm0vaTkxNTogVHJ5IHRvIG1h
a2UgYmlnam9pbmVyIHdvcmsgaW4gYXRvbWljIGNoZWNrCiAgZHJtL2k5MTU6IEFkZCBiaWdqb2lu
ZXIgYXdhcmUgcGxhbmUgY2xpcHBpbmcgY2hlY2tzCiAgZHJtL2k5MTU6IEFkZCBkZWJ1Z2ZzIGR1
bXBpbmcgZm9yIGJpZ2pvaW5lciwgdjMuCgpNYW5hc2kgTmF2YXJlICgzKToKICBkcm0vaTkxNS9k
cDogTW9kaWZ5IFZEU0MgaGVscGVycyB0byBjb25maWd1cmUgRFNDIGZvciBCaWdqb2luZXIgc2xh
dmUKICBkcm0vaTkxNS9kcDogTWFzdGVyL1NsYXZlIGVuYWJsZS9kaXNhYmxlIHNlcXVlbmNlIGZv
ciBiaWdqb2luZXIKICBkcm0vaTkxNTogSFcgc3RhdGUgcmVhZG91dCBmb3IgQmlnam9pbmVyIGNh
c2UKClZpbGxlIFN5cmrDpGzDpCAoOCk6CiAgZHJtL2k5MTU6IENvcHkgdGhlIHBsYW5lIGh3IHN0
YXRlIGRpcmVjdGx5IGZvciBZIHBsYW5lcwogIGRybS9pOTE1OiBBZGQgY3J0Y3MgYWZmZWN0ZWQg
YnkgYmlnam9pbmVyIHRvIHRoZSBzdGF0ZQogIGRybS9pOTE1OiBBZGQgcGxhbmVzIGFmZmVjdGVk
IGJ5IGJpZ2pvaW5lciB0byB0aGUgc3RhdGUKICBkcm0vaTkxNTogR2V0IHRoZSB1YXBpIHN0YXRl
IGZyb20gdGhlIGNvcnJlY3QgcGxhbmUgd2hlbiBiaWdqb2luZXIgaXMKICAgIHVzZWQKICBkcm0v
aTkxNTogRGlzYWJsZSBsZWdhY3kgY3Vyc29yIGZhc3RwYXRoIGZvciBiaWdqb2luZXIKICBkcm0v
aTkxNTogRml4IGN1cnNvciBzcmMvZHN0IHJlY3RhbmdsZSB3aXRoIGJpZ2pvaW5lcgogIGRybS9p
OTE1OiBBZGQgYmlnam9pbmVyIHN0YXRlIGR1bXAKICBkcm0vaTkxNTogRW5hYmxlIGJpZ2pvaW5l
cgoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jICAgICAgICB8ICAgMiAt
CiAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMgfCAxMzEgKysr
LQogLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5oIHwgICA5ICst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICAgfCAgNjkgKy0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8IDY5NiArKysr
KysrKysrKysrKy0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5oICB8ICAgMyArLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2Zz
LmMgIHwgIDI1ICstCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgg
ICAgfCAgMTAgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAgICAg
IHwgMTAwICsrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oICAgICAg
IHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgICB8
ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2kuYyAgICAgIHwg
ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyAgICAgfCAg
IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgICB8ICAy
MSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMgICAgIHwgMjAx
ICsrLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuaCAgICAgfCAg
IDYgKy0KIDE2IGZpbGVzIGNoYW5nZWQsIDk1MyBpbnNlcnRpb25zKCspLCAzMjcgZGVsZXRpb25z
KC0pCgotLSAKMi4xOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
