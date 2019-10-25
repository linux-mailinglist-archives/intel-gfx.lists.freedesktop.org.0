Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF3FE4BE8
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 15:18:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 759576EA09;
	Fri, 25 Oct 2019 13:18:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E7E96EA09
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 13:18:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 06:18:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,228,1569308400"; d="scan'208";a="198020720"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
 by fmsmga007.fm.intel.com with ESMTP; 25 Oct 2019 06:18:42 -0700
Received: from ahiler-desk1.fi.intel.com (10.237.68.141) by
 IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 25 Oct 2019 14:18:41 +0100
From: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Fri, 25 Oct 2019 16:18:26 +0300
Message-ID: <20191025131826.19934-1-arkadiusz.hiler@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Originating-IP: [10.237.68.141]
Subject: [Intel-gfx] [PATCH] CI: Test revert some of the documentation fixes
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

VGhpcyByZXZlcnRzIGNvbW1pdCA5MDA1NTRkYzZiZmM5OTZhZDA3YjllMTg3YmJmZDM4NjRjZDVi
ZWQwIHRvIG1ha2UKc3VyZSB0aGF0IEZpLkNJLkRPQ1MgY29tcGxhaW5zIDotKQotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuaCB8IDUgLS0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBsbF9tZ3IuaAppbmRleCAyYTEwNGM2NDI5MWQuLjEwNGNmNmQ0MjMzMyAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5oCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuaApAQCAtMzM3
LDExICszMzcsNiBAQCBzdHJ1Y3QgaW50ZWxfc2hhcmVkX2RwbGwgewogCSAqIEBpbmZvOiBwbGF0
Zm9ybSBzcGVjaWZpYyBpbmZvCiAJICovCiAJY29uc3Qgc3RydWN0IGRwbGxfaW5mbyAqaW5mbzsK
LQotCS8qKgotCSAqIEB3YWtlcmVmOiBJbiBzb21lIHBsYXRmb3JtcyBhIGRldmljZS1sZXZlbCBy
dW50aW1lIHBtIHJlZmVyZW5jZSBtYXkKLQkgKiBuZWVkIHRvIGJlIGdyYWJiZWQgdG8gZGlzYWJs
ZSBEQyBzdGF0ZXMgd2hpbGUgdGhpcyBEUExMIGlzIGVuYWJsZWQKLQkgKi8KIAlpbnRlbF93YWtl
cmVmX3Qgd2FrZXJlZjsKIH07CiAKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
