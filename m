Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F07A7123
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 18:56:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57C138933D;
	Tue,  3 Sep 2019 16:56:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DECF8933D
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2019 16:56:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 09:56:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,463,1559545200"; d="scan'208";a="383151914"
Received: from shashanks-u1804-dt.iind.intel.com ([10.223.74.135])
 by fmsmga006.fm.intel.com with ESMTP; 03 Sep 2019 09:56:42 -0700
From: Shashank Sharma <shashank.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Sep 2019 22:22:26 +0530
Message-Id: <20190903165227.6056-2-shashank.sharma@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190903165227.6056-1-shashank.sharma@intel.com>
References: <20190903165227.6056-1-shashank.sharma@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 1/2] drm/i915: Indicate integer up-scaling ratios
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
Cc: Jani Nikula <jani.nikula@intel.com>, Vivi@freedesktop.org,
	Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SWYgdGhlIHVwc2NhbGluZyByYXRpbyBpcyBhIGNvbXBsZXRlIGludGVnZXIsIEludGVsIGRpc3Bs
YXkgSFcgY2FuCnBpY2t1cCBzcGVjaWFsIHNjYWxpbmcgbW9kZSwgd2hpY2ggY2FuIHByb2R1Y2Ug
YmV0dGVyIG5vbi1ibHVycnkKb3V0cHV0cy4gVGhpcyBwYXRjaCBhZGRzIGEgY2hlY2sgdG8gaW5k
aWNhdGUgaWYgdGhpcyBpcyBzdWNoIGFuIHVwc2NhbGluZwpvcHBvcnR1bml0eSwgd2hpbGUgY2Fs
Y3VsYXRpbmcgdGhlIHNjYWxlciBjb25maWcsIGFuZCBzdG9yZXMgaXQgaW50byBzY2FsZXIKc3Rh
dGUuCgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBEYW5pZWwgVmV0dGVy
IDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IFZpdmksIFJvZHJpZ28gPHJvZHJpZ28udml2
aUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFNoYXNoYW5rIFNoYXJtYSA8c2hhc2hhbmsuc2hh
cm1hQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYyAgfCAyMSArKysrKysrKysrKysrKysrKysrCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgNyArKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDI4
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCmluZGV4IGVlNTRkOTY1OWM5OS4uNjEzMTMwZGIzYzA1IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtNTM4OCw2ICs1Mzg4LDE5IEBA
IHUxNiBza2xfc2NhbGVyX2NhbGNfcGhhc2UoaW50IHN1YiwgaW50IHNjYWxlLCBib29sIGNocm9t
YV9jb3NpdGVkKQogI2RlZmluZSBTS0xfTUlOX1lVVl80MjBfU1JDX1cgMTYKICNkZWZpbmUgU0tM
X01JTl9ZVVZfNDIwX1NSQ19IIDE2CiAKK3N0YXRpYyBpbmxpbmUgYm9vbAorc2NhbGluZ19yYXRp
b19pbnRlZ2VyKGludCBzcmNfdywgaW50IGRzdF93LCBpbnQgc3JjX2gsIGludCBkc3RfaCkKK3sK
KwkvKiBJbnRlZ2VyIG1vZGUgc2NhbGluZyBpcyBhcHBsaWNhYmxlIG9ubHkgZm9yIHVwc2NhbGlu
ZyBzY2VuYXJpb3MgKi8KKwlpZiAoZHN0X3cgPCBzcmNfdyB8fCBkc3RfaCA8IHNyY19oKQorCQly
ZXR1cm4gZmFsc2U7CisKKwlpZiAoZHN0X3cgJSBzcmNfdyA9PSAwICYmIGRzdF9oICUgc3JjX2gg
PT0gMCkKKwkJcmV0dXJuIHRydWU7CisKKwlyZXR1cm4gZmFsc2U7Cit9CisKIHN0YXRpYyBpbnQK
IHNrbF91cGRhdGVfc2NhbGVyKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLCBi
b29sIGZvcmNlX2RldGFjaCwKIAkJICB1bnNpZ25lZCBpbnQgc2NhbGVyX3VzZXIsIGludCAqc2Nh
bGVyX2lkLApAQCAtNTQyMiw2ICs1NDM1LDE0IEBAIHNrbF91cGRhdGVfc2NhbGVyKHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLCBib29sIGZvcmNlX2RldGFjaCwKIAkJcmV0dXJu
IC1FSU5WQUw7CiAJfQogCisJLyoKKwkgKiBJZiB3ZSBhcmUgdXBzY2FsaW5nLCBhbmQgdGhlIHNj
YWxpbmcgcmF0aW9zIGFyZSBpbnRlZ2VyLCB3ZSBjYW4KKwkgKiBwaWNrIG5lYXJlc3QtbmVpZ2hi
b3VyIG1ldGhvZCBpbiBIVyBmb3Igc2NhbGluZywgd2hpY2ggcHJvZHVjZXMKKwkgKiBibHVybGVz
cyBvdXRwdXRzIGluIHN1Y2ggc2NlbmFyaW9zLgorCSAqLworCWlmIChzY2FsaW5nX3JhdGlvX2lu
dGVnZXIoc3JjX3csIGRzdF93LCBzcmNfaCwgZHN0X2gpKQorCQlzY2FsZXJfc3RhdGUtPmludGVn
ZXJfc2NhbGluZyA9IHRydWU7CisKIAkvKgogCSAqIGlmIHBsYW5lIGlzIGJlaW5nIGRpc2FibGVk
IG9yIHNjYWxlciBpcyBubyBtb3JlIHJlcXVpcmVkIG9yIGZvcmNlIGRldGFjaAogCSAqICAtIGZy
ZWUgc2NhbGVyIGJpbmRlZCB0byB0aGlzIHBsYW5lL2NydGMKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKaW5kZXggM2MxYTVmM2UxZDIy
Li42YmIzMmZiZjMxNTMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV90eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV90eXBlcy5oCkBAIC02MTMsNiArNjEzLDEzIEBAIHN0cnVjdCBpbnRlbF9j
cnRjX3NjYWxlcl9zdGF0ZSB7CiAKIAkvKiBzY2FsZXIgdXNlZCBieSBjcnRjIGZvciBwYW5lbCBm
aXR0aW5nIHB1cnBvc2UgKi8KIAlpbnQgc2NhbGVyX2lkOworCisJLyoKKwkgKiBOZWFyZXN0LW5l
aWdoYm9yIG1ldGhvZCBvZiB1cHNjYWxpbmcgZ2lldmVzIGJsdXJsZXNzIG91dHB1dCBpZgorCSAq
IHRoZSB1cHNjYWxpbmcgcmF0aW8gaXMgYSBjb21wbGV0ZSBpbnRlZ2VyLiBUaGlzIGJvb2wgaXMg
dG8gaW5kaWNhdGUKKwkgKiBzdWNoIGFuIG9wcG9ydHVuaXR5LgorCSAqLworCWJvb2wgaW50ZWdl
cl9zY2FsaW5nOwogfTsKIAogLyogZHJtX21vZGUtPnByaXZhdGVfZmxhZ3MgKi8KLS0gCjIuMTcu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
