Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E93ADA397D
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 16:47:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54C816E352;
	Fri, 30 Aug 2019 14:47:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFDC06E351
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 14:47:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 07:47:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,447,1559545200"; d="scan'208";a="188894189"
Received: from unknown (HELO delly.ger.corp.intel.com) ([10.252.38.85])
 by FMSMGA003.fm.intel.com with ESMTP; 30 Aug 2019 07:47:31 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Aug 2019 17:47:15 +0300
Message-Id: <20190830144726.18291-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v12 00/11] drm/i915: Vulkan performance query
 support
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

SGkgYWxsLAoKVGhpcyBtb3ZlcyBsb2NraW5nIGEgYml0LCBob3BlZnVsbHkgaW4gdGhlIHJpZ2h0
IGRpcmVjdGlvbiBzbyB0aGF0IGl0CmhlbHBzIGRyb3BwaW5nIHRoZSB1c2Ugb2Ygc3RydWN0X211
dGV4LgoKQ2hlZXJzLAoKTGlvbmVsIExhbmR3ZXJsaW4gKDExKToKICBkcm0vaTkxNTogaW50cm9k
dWNlIGEgbWVjaGFuaXNtIHRvIGV4dGVuZCBleGVjYnVmMgogIGRybS9pOTE1OiBhZGQgc3luY29i
aiB0aW1lbGluZSBzdXBwb3J0CiAgZHJtL2k5MTUvcGVyZjogZHJvcCBsaXN0IG9mIHN0cmVhbXMK
ICBkcm0vaTkxNS9wZXJmOiBzdG9yZSB0aGUgYXNzb2NpYXRlZCBlbmdpbmUgb2YgYSBzdHJlYW0K
ICBkcm0vaTkxNS9wZXJmOiBpbnRyb2R1Y2UgYSB2ZXJzaW9uaW5nIG9mIHRoZSBpOTE1LXBlcmYg
dWFwaQogIGRybS9pOTE1L3BlcmY6IGFsbG93IGZvciBDUyBPQSBjb25maWdzIHRvIGJlIGNyZWF0
ZWQgbGF6aWx5CiAgZHJtL2k5MTUvcGVyZjogaW1wbGVtZW50IGFjdGl2ZSB3YWl0IGZvciBub2Eg
Y29uZmlndXJhdGlvbnMKICBkcm0vaTkxNS9wZXJmOiBleGVjdXRlIE9BIGNvbmZpZ3VyYXRpb24g
ZnJvbSBjb21tYW5kIHN0cmVhbQogIGRybS9pOTE1OiBhZGQgYSBuZXcgcGVyZiBjb25maWd1cmF0
aW9uIGV4ZWNidWYgcGFyYW1ldGVyCiAgZHJtL2k5MTUvcGVyZjogYWxsb3cgaG9sZGluZyBwcmVl
bXB0aW9uIG9uIGZpbHRlcmVkIGN0eAogIGRybS9pOTE1OiBhZGQgc3VwcG9ydCBmb3IgcGVyZiBj
b25maWd1cmF0aW9uIHF1ZXJpZXMKCiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVj
YnVmZmVyLmMgICAgfCA1MDUgKysrKysrKysrKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZ3B1X2NvbW1hbmRzLmggIHwgIDI1ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2d0X3R5cGVzLmggICAgICB8ICAgNSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rl
YnVnZnMuYyAgICAgICAgICAgfCAgMzEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
YyAgICAgICAgICAgICAgIHwgICAzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
ICAgICAgICAgICAgICAgfCAgNjMgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2V0cGFy
YW0uYyAgICAgICAgICB8ICAgOSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyAg
ICAgICAgICAgICAgfCA3MTMgKysrKysrKysrKysrKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3BlcmYuaCAgICAgICAgICAgICAgfCAgMjcgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9xdWVyeS5jICAgICAgICAgICAgIHwgMjgzICsrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICB8ICAgNCArLQogaW5jbHVkZS91YXBpL2RybS9p
OTE1X2RybS5oICAgICAgICAgICAgICAgICAgIHwgMTk2ICsrKystCiAxMiBmaWxlcyBjaGFuZ2Vk
LCAxNjgzIGluc2VydGlvbnMoKyksIDE4MSBkZWxldGlvbnMoLSkKCi0tCjIuMjMuMApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
