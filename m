Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44744BF2D7
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 14:22:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EF796ECF1;
	Thu, 26 Sep 2019 12:22:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 646196EC7A
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 12:22:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Sep 2019 05:22:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,551,1559545200"; d="scan'208";a="189989849"
Received: from akaras-dev.fi.intel.com ([10.237.72.61])
 by fmsmga007.fm.intel.com with ESMTP; 26 Sep 2019 05:22:28 -0700
From: Anna Karas <anna.karas@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Sep 2019 15:21:58 +0300
Message-Id: <20190926122158.13028-1-anna.karas@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/perf: Fix use of kernel-doc format in
 structure members
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW5zZXJ0IHN0cnVjdHVyZSBtZW1iZXJzIG5hbWVzIGludG8gdGhlaXIgZGVzY3JpcHRpb25zIHRv
IGZvbGxvdwprZXJuZWwtZG9jIGZvcm1hdC4KCkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KU2lnbmVkLW9mZi1ieTogQW5uYSBLYXJhcyA8YW5uYS5rYXJhc0BpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCB8IDE0ICsrKysrKyst
LS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4IGZjZjc0MjMwNzVlZi4uYjNjN2RiYzE4MzJhIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTExMzQsNyArMTEzNCw3IEBAIHN0cnVjdCBpOTE1
X3BlcmZfc3RyZWFtIHsKIAlzdHJ1Y3QgaTkxNV9vYV9jb25maWcgKm9hX2NvbmZpZzsKIAogCS8q
KgotCSAqIFRoZSBPQSBjb250ZXh0IHNwZWNpZmljIGluZm9ybWF0aW9uLgorCSAqIEBwaW5uZWRf
Y3R4OiBUaGUgT0EgY29udGV4dCBzcGVjaWZpYyBpbmZvcm1hdGlvbi4KIAkgKi8KIAlzdHJ1Y3Qg
aW50ZWxfY29udGV4dCAqcGlubmVkX2N0eDsKIAl1MzIgc3BlY2lmaWNfY3R4X2lkOwpAQCAtMTE0
OCw3ICsxMTQ4LDcgQEAgc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gewogCWludCBwZXJpb2RfZXhw
b25lbnQ7CiAKIAkvKioKLQkgKiBTdGF0ZSBvZiB0aGUgT0EgYnVmZmVyLgorCSAqIEBvYV9idWZm
ZXI6IFN0YXRlIG9mIHRoZSBPQSBidWZmZXIuCiAJICovCiAJc3RydWN0IHsKIAkJc3RydWN0IGk5
MTVfdm1hICp2bWE7CkBAIC0xMTU5LDcgKzExNTksNyBAQCBzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVh
bSB7CiAJCWludCBzaXplX2V4cG9uZW50OwogCiAJCS8qKgotCQkgKiBMb2NrcyByZWFkcyBhbmQg
d3JpdGVzIHRvIGFsbCBoZWFkL3RhaWwgc3RhdGUKKwkJICogQHB0cl9sb2NrOiBMb2NrcyByZWFk
cyBhbmQgd3JpdGVzIHRvIGFsbCBoZWFkL3RhaWwgc3RhdGUKIAkJICoKIAkJICogQ29uc2lkZXI6
IHRoZSBoZWFkIGFuZCB0YWlsIHBvaW50ZXIgc3RhdGUgbmVlZHMgdG8gYmUgcmVhZAogCQkgKiBj
b25zaXN0ZW50bHkgZnJvbSBhIGhydGltZXIgY2FsbGJhY2sgKGF0b21pYyBjb250ZXh0KSBhbmQK
QEAgLTExODEsNyArMTE4MSw3IEBAIHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtIHsKIAkJc3Bpbmxv
Y2tfdCBwdHJfbG9jazsKIAogCQkvKioKLQkJICogT25lICdhZ2luZycgdGFpbCBwb2ludGVyIGFu
ZCBvbmUgJ2FnZWQnIHRhaWwgcG9pbnRlciByZWFkeSB0bworCQkgKiBAdGFpbHM6IE9uZSAnYWdp
bmcnIHRhaWwgcG9pbnRlciBhbmQgb25lICdhZ2VkJyB0YWlsIHBvaW50ZXIgcmVhZHkgdG8KIAkJ
ICogdXNlZCBmb3IgcmVhZGluZy4KIAkJICoKIAkJICogSW5pdGlhbCB2YWx1ZXMgb2YgMHhmZmZm
ZmZmZiBhcmUgaW52YWxpZCBhbmQgaW1wbHkgdGhhdCBhbgpAQCAtMTE5MywxOCArMTE5MywxOCBA
QCBzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSB7CiAJCX0gdGFpbHNbMl07CiAKIAkJLyoqCi0JCSAq
IEluZGV4IGZvciB0aGUgYWdlZCB0YWlsIHJlYWR5IHRvIHJlYWQoKSBkYXRhIHVwIHRvLgorCQkg
KiBAYWdlZF90YWlsX2lkeDogSW5kZXggZm9yIHRoZSBhZ2VkIHRhaWwgcmVhZHkgdG8gcmVhZCgp
IGRhdGEgdXAgdG8uCiAJCSAqLwogCQl1bnNpZ25lZCBpbnQgYWdlZF90YWlsX2lkeDsKIAogCQkv
KioKLQkJICogQSBtb25vdG9uaWMgdGltZXN0YW1wIGZvciB3aGVuIHRoZSBjdXJyZW50IGFnaW5n
IHRhaWwgcG9pbnRlcgorCQkgKiBAYWdpbmdfdGltZXN0YW1wOiBBIG1vbm90b25pYyB0aW1lc3Rh
bXAgZm9yIHdoZW4gdGhlIGN1cnJlbnQgYWdpbmcgdGFpbCBwb2ludGVyCiAJCSAqIHdhcyByZWFk
OyB1c2VkIHRvIGRldGVybWluZSB3aGVuIGl0IGlzIG9sZCBlbm91Z2ggdG8gdHJ1c3QuCiAJCSAq
LwogCQl1NjQgYWdpbmdfdGltZXN0YW1wOwogCiAJCS8qKgotCQkgKiBBbHRob3VnaCB3ZSBjYW4g
YWx3YXlzIHJlYWQgYmFjayB0aGUgaGVhZCBwb2ludGVyIHJlZ2lzdGVyLAorCQkgKiBAaGVhZDog
QWx0aG91Z2ggd2UgY2FuIGFsd2F5cyByZWFkIGJhY2sgdGhlIGhlYWQgcG9pbnRlciByZWdpc3Rl
ciwKIAkJICogd2UgcHJlZmVyIHRvIGF2b2lkIHRydXN0aW5nIHRoZSBIVyBzdGF0ZSwganVzdCB0
byBhdm9pZCBhbnkKIAkJICogcmlzayB0aGF0IHNvbWUgaGFyZHdhcmUgY29uZGl0aW9uIGNvdWxk
ICogc29tZWhvdyBidW1wIHRoZQogCQkgKiBoZWFkIHBvaW50ZXIgdW5wcmVkaWN0YWJseSBhbmQg
Y2F1c2UgdXMgdG8gZm9yd2FyZCB0aGUgd3JvbmcKLS0gCjIuMTkuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
