Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 313EB7E517
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 00:01:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A15476E820;
	Thu,  1 Aug 2019 22:01:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 180206E820
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 22:01:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 15:01:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,335,1559545200"; d="scan'208";a="372168170"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga005.fm.intel.com with ESMTP; 01 Aug 2019 15:01:40 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.130.21])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x71M1diD001671
 for <intel-gfx@lists.freedesktop.org>; Thu, 1 Aug 2019 23:01:39 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Aug 2019 22:01:35 +0000
Message-Id: <20190801220138.38740-1-michal.wajdeczko@intel.com>
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

djM6IGZpeCBHZW45IGlzc3VlIGRpc2NvdmVyZWQgYnkgdGhlIHYyCnY0OiByZWJhc2VkCgpNaWNo
YWwgV2FqZGVjemtvICgzKToKICBkcm0vaTkxNTogQWRkIGk5MTUgdG8gaTkxNV9pbmplY3RfcHJv
YmVfZmFpbHVyZQogIGRybS9pOTE1L3VjOiBJbmplY3QgcHJvYmUgZXJyb3JzIGludG8gaW50ZWxf
dWNfaW5pdF9odwogIGRybS9pOTE1L3dvcGNtOiBEb24ndCBmYWlsIG9uIFdPUENNIHBhcnRpdGlv
bmluZyBmYWlsdXJlCgogLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nvbm5lY3Rvci5j
ICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jICAg
ICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWMuYyAgICAgICAg
fCAgNCArKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMgICAgICAgICB8
IDI5ICsrKysrKysrKysrKysrKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
dWNfZncuYyAgICAgIHwgIDUgKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAg
ICAgICAgICAgICAgIHwgMjcgKysrKysrKysrLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmggICAgICAgICAgICAgICB8IDEyICsrKystLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbS5jICAgICAgICAgICAgICAgfCAxOCArKysrLS0tLS0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9wY2kuYyAgICAgICAgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2d2dC5jICAgICAgICAgICAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF91bmNvcmUuYyAgICAgICAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfd29wY20uYyAgICAgICAgICAgIHwgMzAgKysrKysrKysrLS0tLS0tLS0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd29wY20uaCAgICAgICAgICAgIHwgIDIgKy0KIDEz
IGZpbGVzIGNoYW5nZWQsIDgyIGluc2VydGlvbnMoKyksIDU1IGRlbGV0aW9ucygtKQoKLS0gCjIu
MTkuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
