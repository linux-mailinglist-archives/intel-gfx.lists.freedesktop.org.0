Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 476A275BF6
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 02:12:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 923866E82C;
	Fri, 26 Jul 2019 00:12:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE83A6E82C
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 00:12:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 17:12:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,308,1559545200"; d="scan'208";a="178181700"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.9.40])
 by FMSMGA003.fm.intel.com with ESMTP; 25 Jul 2019 17:12:16 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Jul 2019 17:12:04 -0700
Message-Id: <20190726001208.6971-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/4] Tiger Lake: MOCS table handling
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

djIgb2YgdGhlIE1PQ1MgcGF0Y2hlcyBvcmlnaW5hbGx5IGF0Cmh0dHBzOi8vcGF0Y2h3b3JrLmZy
ZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjM2NzAvIGhhbmRsaW5nIHRoZSByZXZpZXcKY29tbWVudHMg
cmVjZWl2ZWQuCgpUaGlzIG5lZWRzIHRoZSBhY2NvbXBhbnlpbmcgSUdUIHBhdGNoZXMgc28gaXQg
ZG9lc24ndCByZWdyZXNzIG9uIEljZQpMYWtlOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3Rv
cC5vcmcvc2VyaWVzLzY0MjYzLwoKTHVjYXMgRGUgTWFyY2hpICgxKToKICBkcm0vaTkxNS90Z2w6
IE1vdmUgZmF1bHQgcmVnaXN0ZXJzIHRvIHRoZWlyIG5ldyBvZmZzZXQKCk1pY2hlbCBUaGllcnJ5
ICgxKToKICBkcm0vaTkxNS90Z2w6IFRpZ2VybGFrZSBvbmx5IGhhcyBnbG9iYWwgTU9DUyByZWdp
c3RlcnMKClRvbWFzeiBMaXMgKDEpOgogIGRybS9pOTE1L3RnbDogRGVmaW5lIE1PQ1MgZW50cmll
cyBmb3IgVGlnZXJsYWtlCgpUdnJ0a28gVXJzdWxpbiAoMSk6CiAgZHJtL2k5MTU6IE1vdmUgTU9D
UyBzZXR1cCB0byBpbnRlbF9tb2NzLmMKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9n
dC5jICAgICAgIHwgMjQgKysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2Nz
LmMgICAgIHwgOTMgKysrKysrKysrKysrKysrKysrKysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9tb2NzLmggICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmggICAgICAgICAgfCAgMiArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jICAg
ICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMgICAg
fCAxOCArKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyAgICAgICAgICB8ICAz
ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgIHwgIDUgKysKIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmggfCAgMSArCiA5IGZpbGVzIGNo
YW5nZWQsIDEzNSBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkKCi0tIAoyLjIxLjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
