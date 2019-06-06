Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9DB37FF1
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 23:52:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29C17899B7;
	Thu,  6 Jun 2019 21:52:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E670E899B7
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 21:52:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 14:52:39 -0700
X-ExtLoop1: 1
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga002.jf.intel.com with ESMTP; 06 Jun 2019 14:52:39 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Jun 2019 14:52:09 -0700
Message-Id: <20190606215218.34486-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 0/8] Display uncore
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

VmVyeSByb3VnaCBSRkMgb24gc3BsaXR0aW5nIEdUIGFuZCBkaXNwbGF5IHJlZ2lzdGVyIGFjY2Vz
cyB0byBnaXZlIGFuCmlkZWEgb2Ygd2hhdCBJIHdhcyBhaW1pbmcgYXQgc2luY2UgdGhpcyBjYW1l
IGJhY2sgaW50byBkaXNjdXNzaW9uIG9uCklSQy4KClRoZSBmaXJzdCBmZXcgcGF0Y2hlcyBhcmUg
bWFpbmx5IGNsZWFudXAgYW5kIHJlZHVjdGlvbiBvZiB0aGUgdXNhZ2Ugb2YKdW5jb3JlX3RvX2k5
MTUuIEkgb3JpZ2luYWxseSBwbGFubmVkIHRvIGtpbGwgdW5jb3JlX3RvX2k5MTUgZW50aXJlbHkK
YnV0IEkgc2VlIG1vcmUgdXNlcnMgYXJlIGFwcGVhcmluZyBpbiBwYXRjaGVzIGluIGZsaWdodCBz
byBJJ3ZlIGRyb3BwZWQKdGhlIHJlbW92YWwgcGF0Y2ggYW5kIGFkZGVkIGFuIGhhY2sgdG8gdGhl
IGZ1bmN0aW9uIG90IGhhbmRsZSAyIHVuY29yZXMKKHllcywgSSByZWFsbHkgcmVhbGx5IHdhbnQg
dG8gYXZvaWQgZ2V0dGluZyBhIHBvaW50ZXIgdG8gaTkxNSEpLgoKSSdtIG5vdCBjb252aW5jZWQg
aW4gcmVnYXJkIHRvIHRoZSBtbWlvX2RlYnVnIGltcGxlbWVudGF0aW9uIChwYXRjaCA1KSwKc28g
aWYgcGVvcGxlIHRoaW5rIHRoaXMgc3BsaXQgbWFrZSBzZW5zZSBhbnkgZmVlZGJhY2sgaW4gdGhh
dCBhcmVhIGlzCndlbGNvbWUuIEFueSBmZWVkYmFjayBpbiBvdGhlciBhcmVhcyBpcyBvYnZpb3Vz
bHkganVzdCBhcyB3ZWxjb21lLgoKVGhlIGxhc3QgcGF0Y2ggaXMgYW4gZXhhbXBsZSBvZiBhZGFw
dGF0aW9uIGZvciB0aGUgSERNSSBjb2RlLgoKU3VnZ2VzdGVkLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KCkRhbmllbGUgQ2VyYW9sbyBTcHVyaW8gKDgpOgogIGRybS9pOTE1OiB1c2UgdmZ1bmNz
IGZvciByZWdfcmVhZC93cml0ZV9md19kb21haW5zCiAgZHJtL2k5MTU6IGtpbGwgdW5jb3JlX3Nh
bml0aXplCiAgZHJtL2k5MTU6IGR5bmFtaWNhbGx5IGFsbG9jYXRlIGZvcmNld2FrZSBkb21haW5z
CiAgZHJtL2k5MTU6IGV4cGxpY2l0bHkgcHJ1bmUgZm9yY2V3YWtlIGRvbWFpbgogIGRybS9pOTE1
OiBzcGxpdCBvdXQgdW5jb3JlX21taW9fZGVidWcKICBkcm0vaTkxNTogZHJvcCBmb3JjZXdha2Vf
dXNlcl9nZXQvcHV0CiAgZHJtL2k5MTU6IGludHJvZHVjZSBkaXNwbGF5X3VuY29yZQogIGRybS9p
OTE1OiBtb3ZlIGludGVsX2hkbWkgdG8gZGVfdW5jb3JlCgogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kZWJ1Z2ZzLmMgICAgICAgICAgfCAgMTkgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmMgICAgICAgICAgICAgIHwgIDMxICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oICAgICAgICAgICAgICB8ICAgOCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
ZGV2aWNlX2luZm8uYyAgICAgfCAgIDQgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaGRt
aS5jICAgICAgICAgICAgfCAyNzUgKysrKystLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfdW5jb3JlLmMgICAgICAgICAgfCA1MDcgKysrKysrKysrLS0tLS0tLS0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmggICAgICAgICAgfCAgNTUgKy0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX3VuY29yZS5jIHwgICA0ICstCiA4IGZpbGVzIGNoYW5n
ZWQsIDQ3NSBpbnNlcnRpb25zKCspLCA0MjggZGVsZXRpb25zKC0pCgotLSAKMi4yMC4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
