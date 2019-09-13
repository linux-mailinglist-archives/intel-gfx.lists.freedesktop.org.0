Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DCADB2869
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Sep 2019 00:33:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D47B76F488;
	Fri, 13 Sep 2019 22:32:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A58C16F488
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2019 22:32:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Sep 2019 15:32:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="337037952"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by orsmga004.jf.intel.com with ESMTP; 13 Sep 2019 15:32:56 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Sep 2019 15:32:37 -0700
Message-Id: <20190913223251.354877-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/14] TGL TC enabling
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

VGhpcyBpcyBhbGwgdGhlIHBhdGNoZXMgcmVxdWlyZWQgdG8gaGF2ZSBUQyBhbHQtbW9kZSB3b3Jr
aW5nIG9uIFRHTCwgbm8gVEJUIG9yIGxlZ2FjeSBzdXBwb3J0IGludGVudGVkIGhlcmUgYnV0IG11
Y2ggb2YgdGhlIHdvcmsgaGVyZSB3aWxsIGhlbHAgdGhvc2UuCgpUaGUgZGtsIHBsbCBjYWxjdWxh
dGlvbiBpcyBub3QgMTAwJSByZWFkeSwgc28gaXQgaXMgdXNpbmcgdGhlIGhhcmRjb2RlZCB0YWJs
ZSBwcm92aWRlZCBidXQgZXZlbiB3aXRoIHRoaXMgdGFibGUgaXQgcmVzdWx0cyBpbiBhIHBvcnRf
Y2xvY2sgc3RhdGUgbWlzbWF0Y2ggd2hlbiBydW5uaW5nIGF0IDUuNEdoei4KQWxzbyBJJ20gc3Rp
bGwgZGVidWdnaW5nIHdoeSBlbmFibGUgY2xvY2sgZ2F0aW5nIGFmdGVyIGxpbmsgdHJhaW5pbmcg
Y29tcGxldGUgYnJlYWtzIGFsbCB0aGUgZm9sbG93aW5nIHRyYWluaW5ncy4KQWxsIG9mIGFib3Zl
IGlzIG5vdGVkIGluIHRoZSByZXNwZWN0aXZlIGNvbW1pdCBtZXNzYWdlLgoKT3RoZXIgdGhhbiB0
aGUgYWJvdmUgdGhlIHNlcmllcyBpcyBwcmV0dHkgbXVjaCByZWFkeSBmb3IgcmV2aWV3cyBhbmQg
dGVzdGluZy4KTWFrZSBzdXJlIHlvdSBoYXZlIGZpcm13YXJlIG9mIFRDIHJldGltZXJzIHVwZGF0
ZWQuCgpKb3PDqSBSb2JlcnRvIGRlIFNvdXphICg1KToKICBkcm0vaTkxNS90Z2w6IEZpbmlzaCBt
b2R1bGFyIEZJQSBzdXBwb3J0IG9uIHJlZ2lzdGVycwogIGRybS9pOTE1L2ljbDogVW5pZnkgZGlz
YWJsZSBhbmQgZW5hYmxlIHBoeSBjbG9jayBnYXRpbmcgZnVuY3Rpb25zCiAgZHJtL2k5MTUvdGds
OiBGaXggZGtsIHBoeSByZWdpc3RlciBzcGFjZSBhZGRyZXNzaW5nCiAgZHJtL2k5MTUvdGdsOiBD
aGVjayB0aGUgVUMgaGVhbHRoIG9mIHRjIGNvbnRyb2xsZXJzIGFmdGVyIHBvd2VyIG9uCiAgZHJt
L2k5MTU6IEFkZCBka2wgcGh5IHBsbCBjYWxjdWxhdGlvbnMKCkx1Y2FzIERlIE1hcmNoaSAoMik6
CiAgZHJtL2k5MTUvdGdsOiBBZGQgaW5pdGlhbCBka2wgcGxsIHN1cHBvcnQKICBkcm0vaTkxNS90
Z2w6IGluaXRpYWxpemUgVEMgYW5kIFRCVCBwb3J0cwoKVGF5bG9yLCBDbGludG9uIEEgKDUpOgog
IGRybS9pOTE1L3RnbDogQWRkIG1pc3NpbmcgZGRpIGNsb2NrIHNlbGVjdCBkdXJpbmcgRFAgaW5p
dCBzZXF1ZW5jZQogIGRybS9pOTE1L3RnbDogVEMgaGVscGVyIGZ1bmN0aW9uIHRvIHJldHVybiBw
aW4gbWFwcGluZwogIGRybS9pOTE1L3RnbDogRml4IGRyaXZlciBjcmFzaCB3aGVuIHVwZGF0ZV9h
Y3RpdmVfZHBsbCBpcyBjYWxsZWQKICBkcm0vaTkxNS90Z2w6IEFkZCBka2wgcGh5IHByb2dyYW1t
aW5nIHNlcXVlbmNlcwogIGRybS9pOTE1L3RnbDogVXNlIGRrbCBwbGwgaGFyZGNvZGVkIHZhbHVl
cwoKVmFuZGl0YSBLdWxrYXJuaSAoMik6CiAgZHJtL2k5MTUvdGdsOiBBZGQgZGtsIHBoeSByZWdp
c3RlcnMKICBkcm0vaTkxNS90Z2w6IEFkZCBzdXBwb3J0IGZvciBka2wgcGxsIHdyaXRlCgogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgICAgIHwgMzQzICsrKysrKysr
KysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8ICAg
OSArLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jICAgIHwgIDE2
ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyB8IDQ1NiAr
KysrKysrKysrKysrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMu
YyAgICAgICB8ICA2NCArKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMu
aCAgICAgICB8ICAgMyArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAg
ICAgICAgfCAgIDMgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAg
ICAgIHwgMjA2ICsrKysrKystCiA4IGZpbGVzIGNoYW5nZWQsIDEwMDYgaW5zZXJ0aW9ucygrKSwg
OTQgZGVsZXRpb25zKC0pCgotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
