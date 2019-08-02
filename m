Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F397F6BD
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 14:21:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E94D76EDE7;
	Fri,  2 Aug 2019 12:21:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E44C6EDE7
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 12:21:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Aug 2019 05:21:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,338,1559545200"; d="scan'208";a="197183657"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga004.fm.intel.com with ESMTP; 02 Aug 2019 05:21:27 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x72CLQXS020902
 for <intel-gfx@lists.freedesktop.org>; Fri, 2 Aug 2019 13:21:26 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Aug 2019 12:21:22 +0000
Message-Id: <20190802122125.21952-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 0/3] add more probe failures
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
b3JlIGluamVjdGVkIGVycm9ycyBhbmQgbW9yZSBmaXhlcwoKTWljaGFsIFdhamRlY3prbyAoMyk6
CiAgZHJtL2k5MTU6IEFkZCBpOTE1IHRvIGk5MTVfaW5qZWN0X3Byb2JlX2ZhaWx1cmUKICBkcm0v
aTkxNS91YzogSW5qZWN0IHByb2JlIGVycm9ycyBpbnRvIGludGVsX3VjX2luaXRfaHcKICBkcm0v
aTkxNS93b3BjbTogRG9uJ3QgZmFpbCBvbiBXT1BDTSBwYXJ0aXRpb25pbmcgZmFpbHVyZQoKIC4u
Li9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb25uZWN0b3IuYyAgICB8ICAyICstCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyAgICAgfCAgMiArLQogLi4uL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jIHwgIDQgKysrCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWMuYyAgICAgICAgfCAgOCArKystLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyAgICAgICAgIHwgMjUgKysrKysrKysrKysr
Ky0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYyAgICAgIHwgMTgg
KysrKysrKy0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmggICAg
ICB8IDE0ICsrKystLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAg
ICAgICAgIHwgMjcgKysrKysrKysrLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmggICAgICAgICAgICAgICB8IDEyICsrKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbS5jICAgICAgICAgICAgICAgfCAxOCArKysrLS0tLS0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9wY2kuYyAgICAgICAgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2d2dC5jICAgICAgICAgICAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF91bmNvcmUuYyAgICAgICAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfd29wY20uYyAgICAgICAgICAgIHwgMzAgKysrKysrKysrLS0tLS0tLS0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfd29wY20uaCAgICAgICAgICAgIHwgIDIgKy0KIDE1IGZpbGVz
IGNoYW5nZWQsIDk3IGluc2VydGlvbnMoKyksIDcxIGRlbGV0aW9ucygtKQoKLS0gCjIuMTkuMgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
