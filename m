Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93BE02B4CB1
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Nov 2020 18:27:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E314C89F35;
	Mon, 16 Nov 2020 17:27:08 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9890D89F31;
 Mon, 16 Nov 2020 17:27:07 +0000 (UTC)
IronPort-SDR: CRK6DBfztZX5Yy9rrnrHcJmNdTbZM8kCTHh02XHDAgGhNbU8YNVKEGA68WCSoZdbwhVfVRiQUi
 3DX1k2rTcaEw==
X-IronPort-AV: E=McAfee;i="6000,8403,9807"; a="168205756"
X-IronPort-AV: E=Sophos;i="5.77,483,1596524400"; d="scan'208";a="168205756"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 09:27:07 -0800
IronPort-SDR: c9uLvpVmArEESga6v4xvBrvR0uUaF8m9M2qyOr9SLCdWr7EXMa45S2K5IuGZGapGxARFSYx36r
 w1LEvsPhzgDQ==
X-IronPort-AV: E=Sophos;i="5.77,483,1596524400"; d="scan'208";a="543681950"
Received: from abaldovi-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.52.236])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 09:27:05 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 16 Nov 2020 17:26:51 +0000
Message-Id: <20201116172653.4030093-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201116172653.4030093-1-tvrtko.ursulin@linux.intel.com>
References: <20201116172653.4030093-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 3/5] lib/igt_device_scan: Remember PCI
 card index after scanning
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkFmdGVyIGRl
dmljZXMgYXJlIHNvcnRlZCBwb3N0IHNjYW5uaW5nLCBhc3NpbmcgYSBjYXJkIGluZGV4IHRvIGVh
Y2ggc28gaXQKY2FuIGJlIGVhc2lseSBhY2Nlc3NlZCBpZiBQQ0kgZmlsdGVyIGZvciBhIGNhcmQg
bmVlZHMgdG8gYmUgcHJpbnRlZCBvdXQuCgp2MjoKICogUHJlc2VydmUgZXhpc3RpbmcgcGNpOi4u
Y2FyZD1OIGJlaGF2aW91ci4gKFpiaWduaWV3KQoKU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3Vs
aW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KQ2M6IFBldHJpIExhdHZhbGEgPHBldHJpLmxh
dHZhbGFAaW50ZWwuY29tPgpDYzogWmJpZ25pZXcgS2VtcGN6ecWEc2tpIDx6Ymlnbmlldy5rZW1w
Y3p5bnNraUBpbnRlbC5jb20+Ci0tLQogbGliL2lndF9kZXZpY2Vfc2Nhbi5jIHwgMjkgKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyOSBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvbGliL2lndF9kZXZpY2Vfc2Nhbi5jIGIvbGliL2lndF9kZXZpY2Vfc2Nh
bi5jCmluZGV4IGMwY2Q2NzU3ZmMyNy4uZWNiOGRiMjk3Zjg2IDEwMDY0NAotLS0gYS9saWIvaWd0
X2RldmljZV9zY2FuLmMKKysrIGIvbGliL2lndF9kZXZpY2Vfc2Nhbi5jCkBAIC0xNjYsNiArMTY2
LDcgQEAgc3RydWN0IGlndF9kZXZpY2UgewogCWNoYXIgKnZlbmRvcjsKIAljaGFyICpkZXZpY2U7
CiAJY2hhciAqcGNpX3Nsb3RfbmFtZTsKKwlpbnQgZ3B1X2luZGV4OyAvKiBGb3IgbW9yZSB0aGFu
IG9uZSBHUFUgd2l0aCBzYW1lIHZlbmRvciBhbmQgZGV2aWNlLiAqLwogCiAJc3RydWN0IGlndF9s
aXN0X2hlYWQgbGluazsKIH07CkBAIC02MDEsNiArNjAyLDMzIEBAIHN0YXRpYyB2b2lkIHNvcnRf
YWxsX2RldmljZXModm9pZCkKIAlmcmVlKGRldnMpOwogfQogCitzdGF0aWMgdm9pZCBpbmRleF9w
Y2lfZGV2aWNlcyh2b2lkKQoreworCXN0cnVjdCBpZ3RfZGV2aWNlICpkZXY7CisKKwlpZ3RfbGlz
dF9mb3JfZWFjaF9lbnRyeShkZXYsICZpZ3RfZGV2cy5hbGwsIGxpbmspIHsKKwkJc3RydWN0IGln
dF9kZXZpY2UgKmRldjI7CisJCWludCBpbmRleCA9IDA7CisKKwkJaWYgKCFpc19wY2lfc3Vic3lz
dGVtKGRldikpCisJCQljb250aW51ZTsKKworCQlpZ3RfbGlzdF9mb3JfZWFjaF9lbnRyeShkZXYy
LCAmaWd0X2RldnMuYWxsLCBsaW5rKSB7CisJCQlpZiAoIWlzX3BjaV9zdWJzeXN0ZW0oZGV2Mikp
CisJCQkJY29udGludWU7CisKKwkJCWlmIChkZXYyID09IGRldikKKwkJCQlicmVhazsKKworCQkJ
aWYgKCFzdHJjYXNlY21wKGRldi0+dmVuZG9yLCBkZXYyLT52ZW5kb3IpICYmCisJCQkgICAgIXN0
cmNhc2VjbXAoZGV2LT5kZXZpY2UsIGRldjItPmRldmljZSkpCisJCQkJaW5kZXgrKzsKKwkJfQor
CisJCWRldi0+Z3B1X2luZGV4ID0gaW5kZXg7CisJfQorfQorCiAvKiBDb3JlIHNjYW5uaW5nIGZ1
bmN0aW9uLgogICoKICAqIEFsbCBzY2FubmVkIGRldmljZXMgYXJlIGtlcHQgaW5zaWRlIGlndF9k
ZXZzLmFsbCBwb2ludGVyIGFycmF5LgpAQCAtNjU3LDYgKzY4NSw3IEBAIHN0YXRpYyB2b2lkIHNj
YW5fZHJtX2RldmljZXModm9pZCkKIAl1ZGV2X3VucmVmKHVkZXYpOwogCiAJc29ydF9hbGxfZGV2
aWNlcygpOworCWluZGV4X3BjaV9kZXZpY2VzKCk7CiAKIAlpZ3RfbGlzdF9mb3JfZWFjaF9lbnRy
eShkZXYsICZpZ3RfZGV2cy5hbGwsIGxpbmspIHsKIAkJc3RydWN0IGlndF9kZXZpY2UgKmRldl9k
dXAgPSBkdXBsaWNhdGVfZGV2aWNlKGRldik7Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
