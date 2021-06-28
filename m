Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F8C3B6313
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jun 2021 16:49:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B1986E484;
	Mon, 28 Jun 2021 14:49:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56D476E484
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Jun 2021 14:49:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10029"; a="269097965"
X-IronPort-AV: E=Sophos;i="5.83,306,1616482800"; d="scan'208";a="269097965"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 07:49:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,306,1616482800"; d="scan'208";a="456358332"
Received: from kbommu-nuc8i7beh.iind.intel.com ([10.145.162.97])
 by fmsmga008.fm.intel.com with ESMTP; 28 Jun 2021 07:49:12 -0700
From: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Jun 2021 20:08:25 +0530
Message-Id: <20210628143829.22995-1-krishnaiah.bommu@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/4] The Following Patches are to Fix the
 Critical KclockWork Errors in i915_gem and gt
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

S2xvY2sgd29yayBGaXggZm9yIE5VTEwgZGVyZWZlcmVuY2luZyBpbiBpOTE1X2dlbV90dG0uYwpv
cmlnaW5hbCBpc3N1ZSBzdGF0ZW1lbnQgIlBvaW50ZXIgJ3NnJyByZXR1cm5lZCBmcm9tIGNhbGwg
dG8gZnVuY3Rpb24gJ19faTkxNV9nZW1fb2JqZWN0X2dldF9zZycgYXQgbGluZSA1OTIgbWF5IGJl
IE5VTEwgYW5kIHdpbGwgYmUgZGVyZWZlcmVuY2VkIGF0IGxpbmUgNTk0LiIKCktsb2NrIHdvcmsg
Rml4IGZvciBOVUxMIGRlcmVmZXJlbmNpbmcgaW4gaTkxNV9nZW1fbW1hbi5jCm9yaWdpbmFsIGlz
c3VlIHN0YXRlbWVudCAiTnVsbCBwb2ludGVyICdtbW8nIHRoYXQgY29tZXMgZnJvbSBsaW5lIDg5
MiBtYXkgYmUgZGVyZWZlcmVuY2VkIGF0IGxpbmUgOTY0LiIKCktsb2NrIHdvcmsgRml4IGZvciBw
b3NzaWJsZSBtZW1vcnkgbGVhayBpbiBpbnRlbF9leGVjbGlzdHNfc3VibWlzc2lvbi5jCm9yaWdp
bmFsIGlzc3VlIHN0YXRlbWVudCDigJxQb3NzaWJsZSBtZW1vcnkgbGVhay4gRHluYW1pYyBtZW1v
cnkgc3RvcmVkIGluICd2ZScgYWxsb2NhdGVkIHRocm91Z2ggZnVuY3Rpb24gJ2t6YWxsb2MnIGF0
IGxpbmUgMzcyMSBjYW4gYmUgbG9zdCBhdCBsaW5lIDM4NTDigJ0KCktsb2NrIHdvcmsgRml4IGZv
ciB1bmluaXRpYWxpemVkIGFycmF5IGludGVsX21pZ3JhdGUuYwpvcmlnaW5hbCBpc3N1ZSBzdGF0
ZW1lbnQgIidlbmdpbmVzJyBhcnJheSBlbGVtZW50cyBtaWdodCBiZSB1c2VkIHVuaW5pdGlhbGl6
ZWQgaW4gdGhpcyBmdW5jdGlvbi4iCgpCb21tdSBLcmlzaG5haWFoICg0KToKICBLbG9jayB3b3Jr
IEZpeCBmb3IgTlVMTCBkZXJlZmVyZW5jaW5nIGluIGk5MTVfZ2VtX3R0bS5jCiAgS2xvY2sgd29y
ayBGaXggZm9yIE5VTEwgZGVyZWZlcmVuY2luZyBpbiBpOTE1X2dlbV9tbWFuLmMKICBLbG9jayB3
b3JrIEZpeCBmb3IgcG9zc2libGUgbWVtb3J5IGxlYWsgaW4KICAgIGludGVsX2V4ZWNsaXN0c19z
dWJtaXNzaW9uLmMKICBLbG9jayB3b3JrIEZpeCBmb3IgdW5pbml0aWFsaXplZCBhcnJheSBpbnRl
bF9taWdyYXRlLmMKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jICAg
ICAgICAgICAgIHwgMiArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5j
ICAgICAgICAgICAgICB8IDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZXhlY2xp
c3RzX3N1Ym1pc3Npb24uYyB8IDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbWln
cmF0ZS5jICAgICAgICAgICAgICB8IDQgKysrKwogNCBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlv
bnMoKykKCi0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
