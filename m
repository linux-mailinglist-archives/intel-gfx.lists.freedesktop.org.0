Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 411686C0C2
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 20:06:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAE51899DE;
	Wed, 17 Jul 2019 18:06:29 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07620897B5
 for <Intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 18:06:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 11:06:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,275,1559545200"; d="scan'208";a="343110824"
Received: from esulliva-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.94.109])
 by orsmga005.jf.intel.com with ESMTP; 17 Jul 2019 11:06:27 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jul 2019 19:06:18 +0100
Message-Id: <20190717180624.20354-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/6] MCR fixes and more
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkEgZmV3IGJ1
Z3MgaW4gcHJvZ3JhbW1pbmcgdGhlIE1DUiByZWdpc3RlciBzbmVha2VkIGluIHBhc3QgY29kZSBy
ZXZpZXcuCgpGaXJzdCBvZiBhbGwgZmxzKCkgdXNhZ2UgaXMgd3JvbmcgYW5kIHN1ZmZlcnMgZnJv
bSBvZmYtYnktb25lIHByb2JsZW0uCgpTZWNvbmRseSB0aGUgYXNzZXJ0IGluIFdhUHJvZ3JhbU1n
c3JGb3JMM0JhbmtTcGVjaWZpY01taW9SZWFkcyBpcyBhbHNvIHdyb25nCmR1ZSBpbnZlcnRlZCBs
b2dpYy4KCldpdGggTUNSIHByb2dyYW1taW5nIGZpeGVkIHdlIGNhbiBzdG9wIGlnbm9yaW5nIHRo
ZSBlbmdpbmUgd29ya2Fyb3VuZHMKdmVyaWZpY2F0aW9uIG9mIEdFTjhfTDNTUUNSRUc0LiBCdXQg
bm90IHJlZ2lzdGVycyBpbiB0aGUgMHhiMTAwLTB4YjNmZiByYW5nZQp3aGljaCBjYW5ub3QgYmUg
cmVhZCByZWxpYWJseSBieSB0aGUgY29tbWFuZCBzdHJlYW1lcnMuCgpUaGUgbG9naWMgaXMgYWxz
byBpbXByb3ZlZCB0byBub3Qgb25seSBhc3NlcnQgd2hlbiBzdGF0aWMgTUNSIGNvbmZpZ3VyYXRp
b24Kd291bGQgbm90IHdvcmsgZ2l2ZW4gc3BlY2lmaWMgc3Vic2xpY2UgYW5kIEwzIGJhbmsgY29u
ZmlndXJhdGlvbiwgYnV0IHRvIGZpbmQgYQp2YWxpZCBzdGF0aWMgY29uZmlndXJhdGlvbiBpZiBw
b3NzaWJsZS4KCkZpbmFsbHkgdGhlcmUgd2FzIGEgbWlzc2luZyBwZXJmb21hbmNlIGJhc2VkIHdv
cmthcm91bmQgd2hpY2ggbG9vc2VseSBiZWxvbmdzCnRvIHRoaXMgb3ZlcmFsbCBzdG9yeSBvZiBJ
Q0wsIHN1YnNsaWNlcywgTDMgYmFua3MgYW5kIHdvcmthcm91bmRzLgoKVHZydGtvIFVyc3VsaW4g
KDYpOgogIGRybS9pOTE1OiBGaXggR0VOOF9NQ1JfU0VMRUNUT1IgcHJvZ3JhbW1pbmcKICBkcm0v
aTkxNTogVHJ1c3QgcHJvZ3JhbW1lZCBNQ1IgaW4gcmVhZF9zdWJzbGljZV9yZWcKICBkcm0vaTkx
NTogRml4IGFuZCBpbXByb3ZlIE1DUiBzZWxlY3Rpb24gbG9naWMKICBkcm0vaTkxNTogU2tpcCBD
UyB2ZXJpZmljYXRpb24gb2YgTDMgYmFuayByZWdpc3RlcnMKICBkcm0vaTkxNS9pY2w6IFZlcmlm
eSBlbmdpbmUgd29ya2Fyb3VuZHMgaW4gR0VOOF9MM1NRQ1JFRzQKICBkcm0vaTkxNS9pY2w6IEFk
ZCBXYV8xNDA5MTc4MDkyCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2Nz
LmMgICB8ICA1NiArKy0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJv
dW5kcy5jIHwgMTYxICsrKysrKysrKysrKy0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oICAgICAgICAgICAgIHwgICAyIC0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmggICAgICAgICAgICAgfCAgIDMgKwogNCBmaWxlcyBjaGFuZ2VkLCAxMDkgaW5zZXJ0aW9u
cygrKSwgMTEzIGRlbGV0aW9ucygtKQoKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
