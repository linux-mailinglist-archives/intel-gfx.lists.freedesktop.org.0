Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AC4980050
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 20:41:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D95A56EF4A;
	Fri,  2 Aug 2019 18:41:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AE746EF4B
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 18:41:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Aug 2019 11:41:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,339,1559545200"; d="scan'208";a="201746169"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga002.fm.intel.com with ESMTP; 02 Aug 2019 11:41:05 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x72If4tF012718; Fri, 2 Aug 2019 19:41:04 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Aug 2019 18:40:49 +0000
Message-Id: <20190802184055.31988-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 0/6] add more probe failures
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

djM6IGZpeCBHZW45IGlzc3VlIGRpc2NvdmVyZWQgYnkgdGhlIHYyCnY0OiByZWJhc2VkCnY1OiBt
b3JlIGluamVjdGVkIGVycm9ycyBhbmQgbW9yZSBmaXhlcwp2NzogaG90IGZpeGVzIG1vdmVkIHRv
IHNlcGFyYXRlIHBhdGNoZXMKCk1pY2hhbCBXYWpkZWN6a28gKDYpOgogIGRybS9pOTE1OiBBZGQg
aTkxNSB0byBpOTE1X2luamVjdF9wcm9iZV9mYWlsdXJlCiAgZHJtL2k5MTUvdWM6IERvIGZ1bGwg
c2FuaXRpemUgaW5zdGVhZCBvZiBwdXJlIHJlc2V0CiAgZHJtL2k5MTUvdWM6IFJlb3JkZXIgZmly
bXdhcmUgc3RhdHVzIGNvZGVzCiAgZHJtL2k5MTUvdWM6IE1vdmUgR3VDIGVycm9yIGxvZyB0byB1
YyBhbmQgcmVsZWFzZSBpdCBvbiBmaW5pCiAgZHJtL2k5MTUvdWM6IEluamVjdCBwcm9iZSBlcnJv
cnMgaW50byBpbnRlbF91Y19pbml0X2h3CiAgZHJtL2k5MTUvd29wY206IERvbid0IGZhaWwgb24g
V09QQ00gcGFydGl0aW9uaW5nIGZhaWx1cmUKCiAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY29ubmVjdG9yLmMgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
ZW5naW5lX2NzLmMgICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X2d1Yy5oICAgICAgICB8ICAzIC0tCiAuLi4vZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19z
dWJtaXNzaW9uLmMgfCAgNCArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVj
LmMgICAgICAgIHwgIDggKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5j
ICAgICAgICAgfCA1MSArKysrKysrKysrKystLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF91Yy5oICAgICAgICAgfCAgMyArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfdWNfZncuYyAgICAgIHwgMTggKysrKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfdWNfZncuaCAgICAgIHwgMTQgKystLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZGVidWdmcy5jICAgICAgICAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5jICAgICAgICAgICAgICAgfCAyNyArKysrKy0tLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAxMiArKystLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW0uYyAgICAgICAgICAgICAgIHwgMTggKysrLS0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wY2kuYyAgICAgICAgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2d2dC5jICAgICAgICAgICAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF91bmNvcmUuYyAgICAgICAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfd29wY20uYyAgICAgICAgICAgIHwgMzAgKysrKystLS0tLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3dvcGNtLmggICAgICAgICAgICB8ICAyICstCiAxOCBmaWxlcyBjaGFu
Z2VkLCAxMTMgaW5zZXJ0aW9ucygrKSwgODkgZGVsZXRpb25zKC0pCgotLSAKMi4xOS4yCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
