Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13161E5796
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2019 02:35:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB97F6EBDD;
	Sat, 26 Oct 2019 00:35:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97C3A6EBDD
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Oct 2019 00:35:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 17:35:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,230,1569308400"; d="scan'208";a="224083574"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga004.fm.intel.com with ESMTP; 25 Oct 2019 17:35:43 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Oct 2019 17:35:06 -0700
Message-Id: <20191026003507.21769-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/uc: define GuC and HuC binaries
 for TGL
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

R3VDIDM1LjIuMCBhbmQgSHVDIDcuMC4zIGFyZSB0aGUgZmlyc3QgcHJvZHVjdGlvbiByZWxlYXNl
cyBmb3IgVEdMLgpHdUMgMzUuMiBmb3IgZ2VuMTIgaXMgaW50ZXJmYWNlLWNvbXBhdGlibGUgd2l0
aCAzMy4wIG9uIG9sZGVyIGdlbnMsCmJlY2F1c2UgdGhlIGRpZmZlcmVuY2VzIGFyZSByZWxhdGVk
IHRvIGFkZGl0aW9uYWwgYmxvY2tzL2NvbW1hbmRzIGluCnRoZSBpbnRlcmZhY2UgdG8gc3VwcG9y
dCBuZXcgR2VuMTIgZmVhdHVyZXMuIFRoZXNlIHBhcnRzIG9mIHRoZQppbnRlcmZhY2Ugd2lsbCBi
ZSBhZGRlZCB3aGVuIHRoZSByZWxldmFudCBmZWF0dXJlcyBhcmUgZW5hYmxlZC4KClNpZ25lZC1v
ZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRl
bC5jb20+CkNjOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4K
Q2M6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jIHwgNSArKysrKwogMSBmaWxlIGNo
YW5nZWQsIDUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX3VjX2Z3LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91
Y19mdy5jCmluZGV4IGJiNDg4OWQyMzQ2ZC4uMDkyMDFmMTJmNWNjIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKQEAgLTM3LDggKzM3LDEzIEBAIHZvaWQgaW50ZWxf
dWNfZndfY2hhbmdlX3N0YXR1cyhzdHJ1Y3QgaW50ZWxfdWNfZncgKnVjX2Z3LAogLyoKICAqIExp
c3Qgb2YgcmVxdWlyZWQgR3VDIGFuZCBIdUMgYmluYXJpZXMgcGVyLXBsYXRmb3JtLgogICogTXVz
dCBiZSBvcmRlcmVkIGJhc2VkIG9uIHBsYXRmb3JtICsgcmV2aWQsIGZyb20gbmV3ZXIgdG8gb2xk
ZXIuCisgKgorICogVEdMIDM1LjIgaXMgaW50ZXJmYWNlLWNvbXBhdGlibGUgd2l0aCAzMy4wIGZv
ciBwcmV2aW91cyBnZW5zLiBUaGUgZGVsdGFzCisgKiBiZXR3ZWVuIDMzLjAgYW5kIDM1LjIgYXJl
IG9ubHkgcmVsYXRlZCB0byBuZXcgYWRkaXRpb25zIHRvIHN1cHBvcnQgbmV3IGdlbjEyCisgKiBm
ZWF0dXJlcy4KICAqLwogI2RlZmluZSBJTlRFTF9VQ19GSVJNV0FSRV9ERUZTKGZ3X2RlZiwgZ3Vj
X2RlZiwgaHVjX2RlZikgXAorCWZ3X2RlZihUSUdFUkxBS0UsICAgMCwgZ3VjX2RlZih0Z2wsIDM1
LCAyLCAwKSwgaHVjX2RlZih0Z2wsICA3LCAwLCAzKSkgXAogCWZ3X2RlZihFTEtIQVJUTEFLRSwg
MCwgZ3VjX2RlZihlaGwsIDMzLCAwLCA0KSwgaHVjX2RlZihlaGwsICA5LCAwLCAwKSkgXAogCWZ3
X2RlZihJQ0VMQUtFLCAgICAgMCwgZ3VjX2RlZihpY2wsIDMzLCAwLCAwKSwgaHVjX2RlZihpY2ws
ICA5LCAwLCAwKSkgXAogCWZ3X2RlZihDT0ZGRUVMQUtFLCAgNSwgZ3VjX2RlZihjbWwsIDMzLCAw
LCAwKSwgaHVjX2RlZihjbWwsICA0LCAwLCAwKSkgXAotLSAKMi4yMy4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
