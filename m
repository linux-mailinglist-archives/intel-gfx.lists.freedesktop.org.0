Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C14D27DFCF
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 18:11:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12CE46E4B3;
	Thu,  1 Aug 2019 16:11:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDFD56E710
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 16:11:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 09:11:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,334,1559545200"; d="scan'208";a="324288830"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga004.jf.intel.com with ESMTP; 01 Aug 2019 09:11:01 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x71GB0tG017762
 for <intel-gfx@lists.freedesktop.org>; Thu, 1 Aug 2019 17:11:00 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Aug 2019 16:10:56 +0000
Message-Id: <20190801161059.36844-1-michal.wajdeczko@intel.com>
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

djM6IGZpeCBHZW45IGlzc3VlIGRpc2NvdmVyZWQgYnkgdGhlIHYyCgpNaWNoYWwgV2FqZGVjemtv
ICgzKToKICBkcm0vaTkxNTogQWRkIGk5MTUgdG8gaTkxNV9pbmplY3RfcHJvYmVfZmFpbHVyZQog
IGRybS9pOTE1L3VjOiBJbmplY3QgcHJvYmUgZXJyb3JzIGludG8gaW50ZWxfdWNfaW5pdF9odwog
IGRybS9pOTE1L3dvcGNtOiBEb24ndCBmYWlsIG9uIFdPUENNIHBhcnRpdGlvbmluZyBmYWlsdXJl
CgogLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nvbm5lY3Rvci5jICAgIHwgIDIgKy0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jICAgICB8ICAyICstCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWMuYyAgICAgICAgfCAgNCArKysKIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMgICAgICAgICB8IDI5ICsrKysrKysr
KysrKysrKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYyAgICAg
IHwgIDUgKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICAgICAg
IHwgMjcgKysrKysrKysrLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2Lmgg
ICAgICAgICAgICAgICB8IDEyICsrKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bS5jICAgICAgICAgICAgICAgfCAxOCArKysrLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9wY2kuYyAgICAgICAgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2d2dC5jICAgICAgICAgICAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF91bmNvcmUuYyAgICAgICAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
d29wY20uYyAgICAgICAgICAgIHwgMzAgKysrKysrKysrLS0tLS0tLS0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfd29wY20uaCAgICAgICAgICAgIHwgIDIgKy0KIDEzIGZpbGVzIGNoYW5n
ZWQsIDgyIGluc2VydGlvbnMoKyksIDU1IGRlbGV0aW9ucygtKQoKLS0gCjIuMTkuMgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
