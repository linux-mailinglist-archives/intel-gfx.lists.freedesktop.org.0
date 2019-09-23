Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 151F6BB23C
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 12:30:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0E806E84D;
	Mon, 23 Sep 2019 10:30:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10877893D1
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 10:30:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 03:30:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,539,1559545200"; d="scan'208";a="182494624"
Received: from mrnaghsh-mobl1.amr.corp.intel.com (HELO
 dk-ThinkPad-X260.fios-router.home) ([10.254.177.243])
 by orsmga008.jf.intel.com with ESMTP; 23 Sep 2019 03:30:09 -0700
From: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Sep 2019 03:29:26 -0700
Message-Id: <20190923102935.5860-1-dhinakaran.pandiyan@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC v3 0/9] Gen12 E2E compression
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UGF0Y2hlcyBpbiB0aGlzIHNlcmllcyBhcmUgYXQgdHdvIGxldmVscyBvZiBjb21wbGV0aW9uLgpU
aGUgcmVuZGVyIGRlY29tcHJlc3Npb24gcGF0Y2hlcyAxLCAyLCAzIGFuZCA0IGFkZHJlc3MgZmVl
ZGJhY2sgcHJvdmlkZWQKZm9yIGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJp
ZXMvNjYzNjcvCgpNZWRpYSBkZWNvbXByZXNzaW9uIHBhdGNoZXMgNSwgNiwgNywgOCBhbmQgOSBh
cmUgYSBjb21wbGV0ZSByZXdyaXRlIHRvCmhhbmRsZSBwbGFuYXIgZm9ybWF0cyBhbmQgaGF2ZSBu
b3QgYmVlbiB0ZXN0ZWQuIEkgd291bGQgbGlrZSB0byBnZXQKZmVlZGJhY2sgb24gdGhlIGFwcHJv
YWNoIGJlZm9yZSBmaW5pc2hpbmcgdGhlIGltcGxlbWVudGF0aW9uLgoKRGhpbmFrYXJhbiBQYW5k
aXlhbiAoOSk6CiAgZHJtL2ZyYW1lYnVmZmVyOiBGb3JtYXQgbW9kaWZpZXIgZm9yIEludGVsIEdl
bi0xMiByZW5kZXIgY29tcHJlc3Npb24KICBkcm0vaTkxNTogVXNlIGludGVsX3RpbGVfaGVpZ2h0
KCkgaW5zdGVhZCBvZiByZS1pbXBsZW1lbnRpbmcKICBkcm0vaTkxNTogTW92ZSBDQ1Mgc3RyaWRl
IGFsaWdubWVudCBXL0EgaW5zaWRlCiAgICBpbnRlbF9mYl9zdHJpZGVfYWxpZ25tZW50CiAgZHJt
L2k5MTUvdGdsOiBHZW4tMTIgcmVuZGVyIGRlY29tcHJlc3Npb24KICBkcm0vaTkxNTogRXh0cmFj
dCBmcmFtZWJ1ZmVyIENDUyAgb2Zmc2V0IGNoZWNrcyBpbnRvIGEgZnVuY3Rpb24KICBkcm0vZnJh
bWVidWZmZXI6IEZvcm1hdCBtb2RpZmllciBmb3IgSW50ZWwgR2VuLTEyIG1lZGlhIGNvbXByZXNz
aW9uCiAgZHJtL2k5MTU6IFNraXAgcm90YXRlZCBvZmZzZXQgYWRqdXN0bWVudCBmb3IgdW5zdXBw
b3J0ZWQgbW9kaWZpZXJzCiAgZHJtL2ZiOiBFeHRlbmQgZm9ybWF0X2luZm8gbWVtYmVyIGFycmF5
cyB0byBoYW5kbGUgZm91ciBwbGFuZXMKICBHZW4tMTIgZGlzcGxheSBjYW4gZGVjb21wcmVzcyBz
dXJmYWNlcyBjb21wcmVzc2VkIGJ5IHRoZSBtZWRpYSBlbmdpbmUuCgogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgMzg4ICsrKysrKysrKysrKystLS0tLQog
Li4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgICAyICstCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jICAgfCAgNjEgKystCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgfCAgIDIgKwogaW5j
bHVkZS9kcm0vZHJtX2ZvdXJjYy5oICAgICAgICAgICAgICAgICAgICAgIHwgICA4ICstCiBpbmNs
dWRlL3VhcGkvZHJtL2RybV9mb3VyY2MuaCAgICAgICAgICAgICAgICAgfCAgMjIgKwogNiBmaWxl
cyBjaGFuZ2VkLCAzNjggaW5zZXJ0aW9ucygrKSwgMTE1IGRlbGV0aW9ucygtKQoKLS0gCjIuMTcu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
