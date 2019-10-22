Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4A7E061D
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 16:12:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 015896E81D;
	Tue, 22 Oct 2019 14:12:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29F5D6E81A
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 14:12:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 07:12:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,327,1566889200"; d="scan'208";a="227726410"
Received: from unknown (HELO linuxpresi1-desktop.iind.intel.com)
 ([10.223.74.143])
 by fmsmga002.fm.intel.com with ESMTP; 22 Oct 2019 07:12:26 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 20:04:04 +0530
Message-Id: <20191022143404.30442-7-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191022143404.30442-1-uma.shankar@intel.com>
References: <20191022143404.30442-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v2 6/6] [NOT FOR MERGE] drm/i915/display: Reduce
 blanking to support 4k60@10bpp for LSPCON
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

QmxhbmtpbmcgbmVlZHMgdG8gYmUgcmVkdWNlZCB0byBpbmNvcnBvcmF0ZSBEUCBhbmQgSERNSSB0
aW1pbmcvbGluawpiYW5kd2lkdGggbGltaXRhdGlvbnMgZm9yIENFQSBtb2RlcyAoNGtANjAgYXQg
MTAgYnBwKS4gRFAgY2FuIGRyaXZlCjE3LjI4R2JzIHdoaWxlIDRrIG1vZGVzIChWSUM5NyBldGMp
IGF0IDEwIGJwcCByZXF1aXJlZCAxNy44IEdicHMuClRoaXMgd2lsbCBjYXVzZSBtb2RlIHRvIGJs
YW5rIG91dC4gUmVkdWNlZCBIdG90YWwgYnkgc2hvcnRlbmluZyB0aGUKYmFjayBwb3JjaCBhbmQg
ZnJvbnQgcG9yY2ggd2l0aGluIHBlcm1pc3NpYmxlIGxpbWl0cy4KCnYyOiBUaGlzIGlzIG1hcmtl
ZCBhcyBOb3QgZm9yIG1lcmdlIGFuZCB0aGUgcmVzcG9uc2liaWx0eSB0byBwcm9ncmFtCnRoZXNl
IGN1c3RvbSB0aW1pbmdzIHdpbGwgYmUgb24gdXNlcnNwYWNlLiBUaGlzIHBhdGNoIGlzIGp1c3Qg
Zm9yCnJlZmVyZW5jZSBwdXJwb3Nlcy4gVGhpcyBpcyBiYXNlZCBvbiBWaWxsZSdzIHJlY29tbWVu
ZGF0aW9uLgoKU2lnbmVkLW9mZi1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAxNyArKysr
KysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKaW5kZXggY2M2MTZmZDMxZDhiLi5mMmQxZDdi
ZDg3ZDMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKQEAgLTYxNiw4
ICs2MTYsMTAgQEAgaW50ZWxfZHBfbW9kZV92YWxpZChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29u
bmVjdG9yLAogewogCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBpbnRlbF9hdHRhY2hlZF9k
cChjb25uZWN0b3IpOwogCXN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmludGVsX2Nvbm5lY3RvciA9
IHRvX2ludGVsX2Nvbm5lY3Rvcihjb25uZWN0b3IpOworCXN0cnVjdCBpbnRlbF9lbmNvZGVyICpp
bnRlbF9lbmNvZGVyID0gaW50ZWxfYXR0YWNoZWRfZW5jb2Rlcihjb25uZWN0b3IpOwogCXN0cnVj
dCBkcm1fZGlzcGxheV9tb2RlICpmaXhlZF9tb2RlID0gaW50ZWxfY29ubmVjdG9yLT5wYW5lbC5m
aXhlZF9tb2RlOwogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUo
Y29ubmVjdG9yLT5kZXYpOworCXN0cnVjdCBpbnRlbF9sc3Bjb24gKmxzcGNvbiA9IGVuY190b19p
bnRlbF9sc3Bjb24oJmludGVsX2VuY29kZXItPmJhc2UpOwogCWludCB0YXJnZXRfY2xvY2sgPSBt
b2RlLT5jbG9jazsKIAlpbnQgbWF4X3JhdGUsIG1vZGVfcmF0ZSwgbWF4X2xhbmVzLCBtYXhfbGlu
a19jbG9jazsKIAlpbnQgbWF4X2RvdGNsazsKQEAgLTYzOSw2ICs2NDEsMjEgQEAgaW50ZWxfZHBf
bW9kZV92YWxpZChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAogCQl0YXJnZXRfY2xv
Y2sgPSBmaXhlZF9tb2RlLT5jbG9jazsKIAl9CiAKKwkvKgorCSAqIFJlZHVjaW5nIEJsYW5raW5n
IHRvIGluY29ycG9yYXRlIERQIGFuZCBIRE1JIHRpbWluZy9saW5rIGJhbmR3aWR0aAorCSAqIGxp
bWl0YXRpb25zIGZvciBDRUEgbW9kZXMgKDRrQDYwIGF0IDEwIGJwcCkuIERQIGNhbiBkcml2ZSAx
Ny4yOEdicworCSAqIHdoaWxlIDRrIG1vZGVzIChWSUM5NyBldGMpIGF0IDEwIGJwcCByZXF1aXJl
ZCAxNy44IEdicHMuIFRoaXMgd2lsbAorCSAqIGNhdXNlIG1vZGUgdG8gYmxhbmsgb3V0LiBSZWR1
Y2VkIEh0b3RhbCBieSBzaG9ydGVuaW5nIHRoZSBiYWNrIHBvcmNoCisJICogYW5kIGZyb250IHBv
cmNoIHdpdGhpbiBwZXJtaXNzaWJsZSBsaW1pdHMuCisJICovCisJaWYgKGxzcGNvbi0+YWN0aXZl
ICYmIGxzcGNvbi0+aGRyX3N1cHBvcnRlZCAmJgorCSAgICBtb2RlLT5jbG9jayA+IDU3MDAwMCkg
eworCQltb2RlLT5jbG9jayA9IDU3MDAwMDsKKwkJbW9kZS0+aHRvdGFsIC09IDE4MDsKKwkJbW9k
ZS0+aHN5bmNfc3RhcnQgLT0gNzI7CisJCW1vZGUtPmhzeW5jX2VuZCAtPSA3MjsKKwl9CisKIAlt
YXhfbGlua19jbG9jayA9IGludGVsX2RwX21heF9saW5rX3JhdGUoaW50ZWxfZHApOwogCW1heF9s
YW5lcyA9IGludGVsX2RwX21heF9sYW5lX2NvdW50KGludGVsX2RwKTsKIAotLSAKMi4yMi4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
