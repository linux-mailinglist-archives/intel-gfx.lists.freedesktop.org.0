Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A14C5347B6
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 15:11:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C73F68957B;
	Tue,  4 Jun 2019 13:11:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B3C78957B
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 13:11:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 06:11:45 -0700
X-ExtLoop1: 1
Received: from bblokx-mobl.ger.corp.intel.com (HELO delly.ger.corp.intel.com)
 ([10.249.139.199])
 by FMSMGA003.fm.intel.com with ESMTP; 04 Jun 2019 06:11:43 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jun 2019 16:11:33 +0300
Message-Id: <20190604131140.12647-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 0/7] drm/i915: Vulkan performance query
 support
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

SGkgYWxsLAoKVGhpcyBpcyBhIHByZXR0eSBiaWcgdXBkYXRlIGZvbGxvd2luZyB2Mi4KClRoZSBm
aXJzdCBiaWcgY2hhbmdlIGlzIHRvIGRyb3AgdGhlIEhXIGFyYml0cmF0aW9uIHVzYWdlIGluIGZh
dm9yIG9mIGEKc29mdHdhcmUgbWVjaGFuaXNtIHVzaW5nIGEgc3BlY2lhbCBwcmlvcml0eSBpbiB0
aGUgc2NoZWR1bGVyLgoKVGhlIHNlY29uZCBpcyBhIHJld29yayBvZiB0aGUgdUFQSS4gU2luY2Ug
d2UgaGF2ZSBhIGNvdXBsZSBvZiBleGVjYnVmCnVBUEkgY2hhbmdlcyBmb3IgdGhpcyBzZXJpZXMg
KFZLX0lOVEVMX3BlcmZvcm1hbmNlX3F1ZXJ5KSAmIHRpbWVsaW5lCnNlbWFwaG9yZXMsIHdlIGNh
biBjb21lIHVwIHdpdGggYSBtb3JlIGdlbmVyaWMgbWVjaGFuaXNtIHRoYXQgY291bGQgYmUKZXh0
ZW5kZWQgaW4gdGhlIGZ1dHVyZS4gUmF0aGVyIHRoYW4gcmV1c2luZyBwYXJ0aWFsbHkgZGVwcmVj
YXRlZApmaWVsZHMuCgpVbmZvcnR1bmF0ZWx5IChvciBub3QhKSB0aGF0IHJlcXVpcmVzIHRpbWVs
aW5lIHNlbWFwaG9yZXMgdG8gYmUgYWRkZWQKdG8gdGhlIHNlcmllcyBiZWNhdXNlIHdlIG5lZWQg
dG8gdXNlIGNsaXByZWN0c19wdHIgdGhhdCBpcyBhbHJlYWR5CnVzZWQgYnkgRkVOQ0VfQVJSQVku
CgpDaGVlcnMsCgpMaW9uZWwgTGFuZHdlcmxpbiAoNyk6CiAgZHJtL2k5MTUvcGVyZjogaW50cm9k
dWNlIGEgdmVyc2lvbmluZyBvZiB0aGUgaTkxNS1wZXJmIHVhcGkKICBkcm0vaTkxNS9wZXJmOiBh
bGxvdyBmb3IgQ1MgT0EgY29uZmlncyB0byBiZSBjcmVhdGVkIGxhemlseQogIGRybS9pOTE1OiBp
bnRyb2R1Y2UgYSBtZWNoYW5pc20gdG8gZXh0ZW5kIGV4ZWNidWYyCiAgZHJtL2k5MTU6IGFkZCBz
eW5jb2JqIHRpbWVsaW5lIHN1cHBvcnQKICBkcm0vaTkxNTogYWRkIGEgbmV3IHBlcmYgY29uZmln
dXJhdGlvbiBleGVjYnVmIHBhcmFtZXRlcgogIGRybS9pOTE1L3BlcmY6IGFsbG93IGhvbGRpbmcg
cHJlZW1wdGlvbiBvbiBmaWx0ZXJlZCBjdHgKICBkcm0vaTkxNTogYWRkIHN1cHBvcnQgZm9yIHBl
cmYgY29uZmlndXJhdGlvbiBxdWVyaWVzCgogLi4uL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
ZXhlY2J1ZmZlci5jICAgIHwgNDM3ICsrKysrKysrKysrKysrKy0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmggIHwgICA3ICsKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oICB8ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuYyAgICAgICAgICAgfCAgIDcgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfcmluZ2J1ZmZlci5jICAgIHwgICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5jICAgICAgICAgICAgICAgfCAgMTEgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmggICAgICAgICAgICAgICB8ICAzNyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9wZXJmLmMgICAgICAgICAgICAgIHwgMTk3ICsrKysrKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3ByaW9saXN0X3R5cGVzLmggICAgfCAgIDcgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9xdWVyeS5jICAgICAgICAgICAgIHwgMjc5ICsrKysrKysrKysrCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlcXVlc3QuYyAgICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZXF1ZXN0LmggICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2d1Y19zdWJtaXNzaW9uLmMgICB8ICAgNiArCiBpbmNsdWRlL3VhcGkvZHJtL2k5
MTVfZHJtLmggICAgICAgICAgICAgICAgICAgfCAyMTEgKysrKysrKystCiAxNCBmaWxlcyBjaGFu
Z2VkLCAxMTA5IGluc2VydGlvbnMoKyksIDk3IGRlbGV0aW9ucygtKQoKLS0KMi4yMS4wLjM5Mi5n
ZjhmNjc4NzE1OWUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
