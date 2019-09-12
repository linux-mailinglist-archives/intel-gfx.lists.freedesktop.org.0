Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 024D2B0F2D
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 14:54:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98F946ED32;
	Thu, 12 Sep 2019 12:54:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A27196ED32
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 12:54:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Sep 2019 05:54:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="385056543"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
 by fmsmga005.fm.intel.com with ESMTP; 12 Sep 2019 05:54:31 -0700
Received: from ahiler-desk1.fi.intel.com (10.237.68.141) by
 IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 12 Sep 2019 13:54:30 +0100
From: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Thu, 12 Sep 2019 15:54:17 +0300
Message-ID: <20190912125418.23115-1-arkadiusz.hiler@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Originating-IP: [10.237.68.141]
Subject: [Intel-gfx] [PATCH 0/1] Fix i915_interrupt_info debugfs with
 display off on VLV
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

Q292ZXIgbGV0dGVyIHRvIHVzZSBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdGVzdC13aXRo
Lmh0bWwKCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC8zMzAzMzcvP3Nl
cmllcz02NjYwMgoKVGVzdC13aXRoOiAyMDE5MDkxMjEyMzMyMC4xMzEzMS0xLWFya2FkaXVzei5o
aWxlckBpbnRlbC5jb20KCkFya2FkaXVzeiBIaWxlciAoMSk6CiAgZHJtL2k5MTU6IEdldCB0aGUg
Y29ycmVjdCB3YWtlcmVmIGZvciByZWFkaW5nIEhPVFBMVUdfRU4gZXQgYWwuCgogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgfCA0ICsrKy0KIDEgZmlsZSBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
