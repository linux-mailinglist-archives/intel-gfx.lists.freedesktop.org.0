Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19EB779AF1
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 23:19:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5689B6E2B0;
	Mon, 29 Jul 2019 21:19:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8DA16E2A8
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2019 21:19:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 14:19:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,324,1559545200"; d="scan'208";a="182895923"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.10.102])
 by orsmga002.jf.intel.com with ESMTP; 29 Jul 2019 14:19:43 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Jul 2019 14:19:32 -0700
Message-Id: <20190729211937.19731-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/5] Tiger Lake: MOCS table handling
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

djIgb2YgaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NDI3NS8KCkFj
Y29tcGFueWluZyBJR1QgcGF0Y2hlczogdjIgb2YgaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnL3Nlcmllcy82NDI2My8KCkNoYW5nZXM6CgogIC0gYWRkIGEgbmV3IHRhYmxlIGZvciBU
aWdlciBMYWtlIGluc3RlYWQgb2Ygc2hhcmluZyB0aGUgdGFibGUKICAgIHdpdGggSWNlIExha2Uu
CiAgLSBzcGxpdCBjaGFuZ2VzIGFzIHJlcXVlc3RlZAoKTHVjYXMgRGUgTWFyY2hpICgyKToKICBk
cm0vaTkxNS90Z2w6IE1vdmUgZmF1bHQgcmVnaXN0ZXJzIHRvIHRoZWlyIG5ldyBvZmZzZXQKICBk
cm0vaTkxNS90Z2w6IHN0b3AgdXNpbmcgRVJST1JfR0VONiBhbmQgRE9ORV9SRUcKCk1pY2hlbCBU
aGllcnJ5ICgxKToKICBkcm0vaTkxNS90Z2w6IFRpZ2VybGFrZSBvbmx5IGhhcyBnbG9iYWwgTU9D
UyByZWdpc3RlcnMKClRvbWFzeiBMaXMgKDEpOgogIGRybS9pOTE1L3RnbDogRGVmaW5lIE1PQ1Mg
ZW50cmllcyBmb3IgVGlnZXJsYWtlCgpUdnJ0a28gVXJzdWxpbiAoMSk6CiAgZHJtL2k5MTU6IE1v
dmUgTU9DUyBzZXR1cCB0byBpbnRlbF9tb2NzLmMKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9ndC5jICAgICAgIHwgIDI0ICsrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9tb2NzLmMgICAgIHwgMTIxICsrKysrKysrKysrKysrKysrKysrLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9tb2NzLmggICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5oICAgICAgICAgIHwgICAyICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtLmMgICAgICAgICAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vy
cm9yLmMgICAgfCAgMjggKysrKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jICAg
ICAgICAgIHwgICAzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAg
IHwgICA1ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmggfCAgIDEg
KwogOSBmaWxlcyBjaGFuZ2VkLCAxNjAgaW5zZXJ0aW9ucygrKSwgMjggZGVsZXRpb25zKC0pCgot
LSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
