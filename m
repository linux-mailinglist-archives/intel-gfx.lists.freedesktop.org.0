Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D00D129BEE
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2019 01:05:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDC386E50C;
	Tue, 24 Dec 2019 00:05:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEB4E6E50C
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Dec 2019 00:05:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 16:05:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,349,1571727600"; d="scan'208";a="417409505"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga005.fm.intel.com with ESMTP; 23 Dec 2019 16:05:43 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Dec 2019 16:05:21 -0800
Message-Id: <20191224000528.10630-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191224000528.10630-1-lucas.demarchi@intel.com>
References: <20191224000528.10630-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 03/10] drm/i915: prefer 3-letter acronym for
 haswell
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgYXJlIGN1cnJlbnRseSB1c2luZyBhIG1peCBvZiBwbGF0Zm9ybSBuYW1lIGFuZCBhY3Jvbnlt
IHRvIG5hbWUgdGhlCmZ1bmN0aW9ucy4gTGV0J3MgcHJlZmVyIHRoZSBhY3JvbnltIGFzIGl0IHNo
b3VsZCBiZSBjbGVhciB3aGF0IHBsYXRmb3JtCml0J3MgYWJvdXQgYW5kIGl0J3Mgc2hvcnRlciwg
c28gaXQgZG9lc24ndCBnbyBvdmVyIDgwIGNvbHVtbnMgaW4gYSBmZXcKY2FzZXMuIFRoaXMgY29u
dmVydHMgaGFzd2VsbCB0byBoc3cgd2hlcmUgYXBwcm9wcmlhdGUuCgpTaWduZWQtb2ZmLWJ5OiBM
dWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KQWNrZWQtYnk6IEphbmkg
TmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+CkFja2VkLWJ5OiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTWF0dCBS
b3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICB8ICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDU3ICsrKysrKysrKystLS0tLS0tLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jICAgICB8ICA0ICstCiAzIGZpbGVzIGNo
YW5nZWQsIDMyIGluc2VydGlvbnMoKyksIDMzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCmluZGV4IDNhNTM4Nzg5YzU4NS4uZTA1ZWQwMGFmOWZj
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTM0NjUsMTQg
KzM0NjUsMTQgQEAgc3RhdGljIHZvaWQgdGdsX2RkaV9wcmVfZW5hYmxlX2RwKHN0cnVjdCBpbnRl
bF9lbmNvZGVyICplbmNvZGVyLAogCSAqIChERkxFWERQU1AuRFBYNFRYTEFUQykKIAkgKgogCSAq
IFRoaXMgd2FzIGRvbmUgYmVmb3JlIHRnbF9kZGlfcHJlX2VuYWJsZV9kcCBieQotCSAqIGhhc3dl
bGxfY3J0Y19lbmFibGUoKS0+aW50ZWxfZW5jb2RlcnNfcHJlX3BsbF9lbmFibGUoKS4KKwkgKiBo
c3dfY3J0Y19lbmFibGUoKS0+aW50ZWxfZW5jb2RlcnNfcHJlX3BsbF9lbmFibGUoKS4KIAkgKi8K
IAogCS8qCiAJICogNC4gRW5hYmxlIHRoZSBwb3J0IFBMTC4KIAkgKgogCSAqIFRoZSBQTEwgZW5h
YmxpbmcgaXRzZWxmIHdhcyBhbHJlYWR5IGRvbmUgYmVmb3JlIHRoaXMgZnVuY3Rpb24gYnkKLQkg
KiBoYXN3ZWxsX2NydGNfZW5hYmxlKCktPmludGVsX2VuYWJsZV9zaGFyZWRfZHBsbCgpLiAgV2Ug
bmVlZCBvbmx5CisJICogaHN3X2NydGNfZW5hYmxlKCktPmludGVsX2VuYWJsZV9zaGFyZWRfZHBs
bCgpLiAgV2UgbmVlZCBvbmx5CiAJICogY29uZmlndXJlIHRoZSBQTEwgdG8gcG9ydCBtYXBwaW5n
IGhlcmUuCiAJICovCiAJaW50ZWxfZGRpX2Nsa19zZWxlY3QoZW5jb2RlciwgY3J0Y19zdGF0ZSk7
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDkz
MDM2MjEyNDgwOC4uMDdiZDcyODkxNDNmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTU5LDcgKzE1OSw3IEBAIHN0YXRpYyB2b2lkIGludGVs
X2NwdV90cmFuc2NvZGVyX3NldF9tX24oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhCiAJCQkJCSBjb25zdCBzdHJ1Y3QgaW50ZWxfbGlua19tX24gKm0yX24yKTsKIHN0YXRp
YyB2b2lkIGk5eHhfc2V0X3BpcGVjb25mKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlKTsKIHN0YXRpYyB2b2lkIGlyb25sYWtlX3NldF9waXBlY29uZihjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7Ci1zdGF0aWMgdm9pZCBoYXN3ZWxsX3Nl
dF9waXBlY29uZihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7Citz
dGF0aWMgdm9pZCBoc3dfc2V0X3BpcGVjb25mKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlKTsKIHN0YXRpYyB2b2lkIGJkd19zZXRfcGlwZW1pc2MoY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOwogc3RhdGljIHZvaWQgdmx2X3ByZXBhcmVf
cGxsKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCQkJICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpwaXBlX2NvbmZpZyk7CkBAIC02NzcxLDggKzY3NzEsOCBAQCBzdGF0aWMgdm9p
ZCBoc3dfc2V0X2ZyYW1lX3N0YXJ0X2RlbGF5KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlKQogCUk5MTVfV1JJVEUocmVnLCB2YWwpOwogfQogCi1zdGF0aWMgdm9pZCBo
YXN3ZWxsX2NydGNfZW5hYmxlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAotCQkJ
CXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQorc3RhdGljIHZvaWQgaHN3X2NydGNfZW5hYmxlKHN0
cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAorCQkJICAgIHN0cnVjdCBpbnRlbF9jcnRj
ICpjcnRjKQogewogCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0
ZSA9CiAJCWludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOwpAQCAt
NjgxMyw3ICs2ODEzLDcgQEAgc3RhdGljIHZvaWQgaGFzd2VsbF9jcnRjX2VuYWJsZShzdHJ1Y3Qg
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAogCWlmICghdHJhbnNjb2Rlcl9pc19kc2koY3B1
X3RyYW5zY29kZXIpKSB7CiAJCWhzd19zZXRfZnJhbWVfc3RhcnRfZGVsYXkobmV3X2NydGNfc3Rh
dGUpOwotCQloYXN3ZWxsX3NldF9waXBlY29uZihuZXdfY3J0Y19zdGF0ZSk7CisJCWhzd19zZXRf
cGlwZWNvbmYobmV3X2NydGNfc3RhdGUpOwogCX0KIAogCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYp
ID49IDkgfHwgSVNfQlJPQURXRUxMKGRldl9wcml2KSkKQEAgLTY5NTEsOCArNjk1MSw4IEBAIHN0
YXRpYyB2b2lkIGlyb25sYWtlX2NydGNfZGlzYWJsZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSwKIAlpbnRlbF9zZXRfcGNoX2ZpZm9fdW5kZXJydW5fcmVwb3J0aW5nKGRldl9wcml2
LCBwaXBlLCB0cnVlKTsKIH0KIAotc3RhdGljIHZvaWQgaGFzd2VsbF9jcnRjX2Rpc2FibGUoc3Ry
dWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCi0JCQkJIHN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjKQorc3RhdGljIHZvaWQgaHN3X2NydGNfZGlzYWJsZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0
YXRlICpzdGF0ZSwKKwkJCSAgICAgc3RydWN0IGludGVsX2NydGMgKmNydGMpCiB7CiAJLyoKIAkg
KiBGSVhNRSBjb2xsYXBzZSBldmVyeXRoaW5nIHRvIG9uZSBob29rLgpAQCAtOTc2Nyw3ICs5NzY3
LDcgQEAgc3RhdGljIHZvaWQgaXJvbmxha2Vfc2V0X3BpcGVjb25mKGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogCVBPU1RJTkdfUkVBRChQSVBFQ09ORihwaXBlKSk7
CiB9CiAKLXN0YXRpYyB2b2lkIGhhc3dlbGxfc2V0X3BpcGVjb25mKGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQorc3RhdGljIHZvaWQgaHN3X3NldF9waXBlY29uZihj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsKIAlzdHJ1Y3QgaW50
ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsKIAlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2
KTsKQEAgLTEwNDAxLDggKzEwNDAxLDkgQEAgc3RhdGljIGJvb2wgaXJvbmxha2VfZ2V0X3BpcGVf
Y29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCiAJcmV0dXJuIHJldDsKIH0KLXN0YXRp
YyBpbnQgaGFzd2VsbF9jcnRjX2NvbXB1dGVfY2xvY2soc3RydWN0IGludGVsX2NydGMgKmNydGMs
Ci0JCQkJICAgICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCisKK3N0YXRp
YyBpbnQgaHN3X2NydGNfY29tcHV0ZV9jbG9jayhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKKwkJ
CQkgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogewogCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwogCXN0cnVj
dCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlID0KQEAgLTEwNTE2LDkgKzEwNTE3LDggQEAgc3Rh
dGljIHZvaWQgc2t5bGFrZV9nZXRfZGRpX3BsbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsCiAJcGlwZV9jb25maWctPnNoYXJlZF9kcGxsID0gaW50ZWxfZ2V0X3NoYXJlZF9kcGxs
X2J5X2lkKGRldl9wcml2LCBpZCk7CiB9CiAKLXN0YXRpYyB2b2lkIGhhc3dlbGxfZ2V0X2RkaV9w
bGwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAotCQkJCWVudW0gcG9ydCBwb3J0
LAotCQkJCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZykKK3N0YXRpYyB2b2lk
IGhzd19nZXRfZGRpX3BsbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0g
cG9ydCBwb3J0LAorCQkJICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZykK
IHsKIAllbnVtIGludGVsX2RwbGxfaWQgaWQ7CiAJdTMyIGRkaV9wbGxfc2VsID0gSTkxNV9SRUFE
KFBPUlRfQ0xLX1NFTChwb3J0KSk7CkBAIC0xMDcwNiw4ICsxMDcwNiw4IEBAIHN0YXRpYyBib29s
IGJ4dF9nZXRfZHNpX3RyYW5zY29kZXJfc3RhdGUoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJ
cmV0dXJuIHRyYW5zY29kZXJfaXNfZHNpKHBpcGVfY29uZmlnLT5jcHVfdHJhbnNjb2Rlcik7CiB9
CiAKLXN0YXRpYyB2b2lkIGhhc3dlbGxfZ2V0X2RkaV9wb3J0X3N0YXRlKHN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjLAotCQkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25m
aWcpCitzdGF0aWMgdm9pZCBoc3dfZ2V0X2RkaV9wb3J0X3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRj
ICpjcnRjLAorCQkJCSAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZykKIHsK
IAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2Uu
ZGV2KTsKIAllbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSBwaXBlX2NvbmZpZy0+Y3B1
X3RyYW5zY29kZXI7CkBAIC0xMDczNSw3ICsxMDczNSw3IEBAIHN0YXRpYyB2b2lkIGhhc3dlbGxf
Z2V0X2RkaV9wb3J0X3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCWVsc2UgaWYgKElT
X0dFTjlfTFAoZGV2X3ByaXYpKQogCQlieHRfZ2V0X2RkaV9wbGwoZGV2X3ByaXYsIHBvcnQsIHBp
cGVfY29uZmlnKTsKIAllbHNlCi0JCWhhc3dlbGxfZ2V0X2RkaV9wbGwoZGV2X3ByaXYsIHBvcnQs
IHBpcGVfY29uZmlnKTsKKwkJaHN3X2dldF9kZGlfcGxsKGRldl9wcml2LCBwb3J0LCBwaXBlX2Nv
bmZpZyk7CiAKIAlwbGwgPSBwaXBlX2NvbmZpZy0+c2hhcmVkX2RwbGw7CiAJaWYgKHBsbCkgewpA
QCAtMTA4MTMsOCArMTA4MTMsOCBAQCBzdGF0aWMgdm9pZCBpY2VsYWtlX2dldF90cmFuc19wb3J0
X3N5bmNfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YQogCQljcnRjX3N0
YXRlLT5zeW5jX21vZGVfc2xhdmVzX21hc2spOwogfQogCi1zdGF0aWMgYm9vbCBoYXN3ZWxsX2dl
dF9waXBlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKLQkJCQkgICAgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnKQorc3RhdGljIGJvb2wgaHN3X2dldF9waXBlX2Nv
bmZpZyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKKwkJCQlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqcGlwZV9jb25maWcpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0g
dG9faTkxNShjcnRjLT5iYXNlLmRldik7CiAJaW50ZWxfd2FrZXJlZl90IHdha2VyZWZzW1BPV0VS
X0RPTUFJTl9OVU1dLCB3ZjsKQEAgLTEwODQ5LDcgKzEwODQ5LDcgQEAgc3RhdGljIGJvb2wgaGFz
d2VsbF9nZXRfcGlwZV9jb25maWcoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAKIAlpZiAoIXRy
YW5zY29kZXJfaXNfZHNpKHBpcGVfY29uZmlnLT5jcHVfdHJhbnNjb2RlcikgfHwKIAkgICAgSU5U
RUxfR0VOKGRldl9wcml2KSA+PSAxMSkgewotCQloYXN3ZWxsX2dldF9kZGlfcG9ydF9zdGF0ZShj
cnRjLCBwaXBlX2NvbmZpZyk7CisJCWhzd19nZXRfZGRpX3BvcnRfc3RhdGUoY3J0YywgcGlwZV9j
b25maWcpOwogCQlpbnRlbF9nZXRfcGlwZV90aW1pbmdzKGNydGMsIHBpcGVfY29uZmlnKTsKIAl9
CiAKQEAgLTE0MDM4LDcgKzE0MDM4LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfbW9kZXNldF9jbGVh
cl9wbGxzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQogICogbXVsdGlwbGUgcGlw
ZXMsIGFuZCBwbGFuZXMgYXJlIGVuYWJsZWQgYWZ0ZXIgdGhlIHBpcGUsIHdlIG5lZWQgdG8gd2Fp
dCBhdAogICogbGVhc3QgMiB2YmxhbmtzIG9uIHRoZSBmaXJzdCBwaXBlIGJlZm9yZSBlbmFibGlu
ZyBwbGFuZXMgb24gdGhlIHNlY29uZCBwaXBlLgogICovCi1zdGF0aWMgaW50IGhhc3dlbGxfbW9k
ZV9zZXRfcGxhbmVzX3dvcmthcm91bmQoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUp
CitzdGF0aWMgaW50IGhzd19tb2RlX3NldF9wbGFuZXNfd29ya2Fyb3VuZChzdHJ1Y3QgaW50ZWxf
YXRvbWljX3N0YXRlICpzdGF0ZSkKIHsKIAlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZTsKIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsKQEAgLTE0MTMzLDcgKzE0MTMzLDcgQEAg
c3RhdGljIGludCBpbnRlbF9tb2Rlc2V0X2NoZWNrcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSkKIAlpbnRlbF9tb2Rlc2V0X2NsZWFyX3BsbHMoc3RhdGUpOwogCiAJaWYgKElTX0hB
U1dFTEwoZGV2X3ByaXYpKQotCQlyZXR1cm4gaGFzd2VsbF9tb2RlX3NldF9wbGFuZXNfd29ya2Fy
b3VuZChzdGF0ZSk7CisJCXJldHVybiBoc3dfbW9kZV9zZXRfcGxhbmVzX3dvcmthcm91bmQoc3Rh
dGUpOwogCiAJcmV0dXJuIDA7CiB9CkBAIC0xNjkxNSwyMSArMTY5MTUsMjAgQEAgdm9pZCBpbnRl
bF9pbml0X2Rpc3BsYXlfaG9va3Moc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQog
CWludGVsX2luaXRfY2RjbGtfaG9va3MoZGV2X3ByaXYpOwogCiAJaWYgKElOVEVMX0dFTihkZXZf
cHJpdikgPj0gOSkgewotCQlkZXZfcHJpdi0+ZGlzcGxheS5nZXRfcGlwZV9jb25maWcgPSBoYXN3
ZWxsX2dldF9waXBlX2NvbmZpZzsKKwkJZGV2X3ByaXYtPmRpc3BsYXkuZ2V0X3BpcGVfY29uZmln
ID0gaHN3X2dldF9waXBlX2NvbmZpZzsKIAkJZGV2X3ByaXYtPmRpc3BsYXkuZ2V0X2luaXRpYWxf
cGxhbmVfY29uZmlnID0KIAkJCXNreWxha2VfZ2V0X2luaXRpYWxfcGxhbmVfY29uZmlnOwotCQlk
ZXZfcHJpdi0+ZGlzcGxheS5jcnRjX2NvbXB1dGVfY2xvY2sgPQotCQkJaGFzd2VsbF9jcnRjX2Nv
bXB1dGVfY2xvY2s7Ci0JCWRldl9wcml2LT5kaXNwbGF5LmNydGNfZW5hYmxlID0gaGFzd2VsbF9j
cnRjX2VuYWJsZTsKLQkJZGV2X3ByaXYtPmRpc3BsYXkuY3J0Y19kaXNhYmxlID0gaGFzd2VsbF9j
cnRjX2Rpc2FibGU7CisJCWRldl9wcml2LT5kaXNwbGF5LmNydGNfY29tcHV0ZV9jbG9jayA9IGhz
d19jcnRjX2NvbXB1dGVfY2xvY2s7CisJCWRldl9wcml2LT5kaXNwbGF5LmNydGNfZW5hYmxlID0g
aHN3X2NydGNfZW5hYmxlOworCQlkZXZfcHJpdi0+ZGlzcGxheS5jcnRjX2Rpc2FibGUgPSBoc3df
Y3J0Y19kaXNhYmxlOwogCX0gZWxzZSBpZiAoSEFTX0RESShkZXZfcHJpdikpIHsKLQkJZGV2X3By
aXYtPmRpc3BsYXkuZ2V0X3BpcGVfY29uZmlnID0gaGFzd2VsbF9nZXRfcGlwZV9jb25maWc7CisJ
CWRldl9wcml2LT5kaXNwbGF5LmdldF9waXBlX2NvbmZpZyA9IGhzd19nZXRfcGlwZV9jb25maWc7
CiAJCWRldl9wcml2LT5kaXNwbGF5LmdldF9pbml0aWFsX3BsYW5lX2NvbmZpZyA9CiAJCQlpOXh4
X2dldF9pbml0aWFsX3BsYW5lX2NvbmZpZzsKIAkJZGV2X3ByaXYtPmRpc3BsYXkuY3J0Y19jb21w
dXRlX2Nsb2NrID0KLQkJCWhhc3dlbGxfY3J0Y19jb21wdXRlX2Nsb2NrOwotCQlkZXZfcHJpdi0+
ZGlzcGxheS5jcnRjX2VuYWJsZSA9IGhhc3dlbGxfY3J0Y19lbmFibGU7Ci0JCWRldl9wcml2LT5k
aXNwbGF5LmNydGNfZGlzYWJsZSA9IGhhc3dlbGxfY3J0Y19kaXNhYmxlOworCQkJaHN3X2NydGNf
Y29tcHV0ZV9jbG9jazsKKwkJZGV2X3ByaXYtPmRpc3BsYXkuY3J0Y19lbmFibGUgPSBoc3dfY3J0
Y19lbmFibGU7CisJCWRldl9wcml2LT5kaXNwbGF5LmNydGNfZGlzYWJsZSA9IGhzd19jcnRjX2Rp
c2FibGU7CiAJfSBlbHNlIGlmIChIQVNfUENIX1NQTElUKGRldl9wcml2KSkgewogCQlkZXZfcHJp
di0+ZGlzcGxheS5nZXRfcGlwZV9jb25maWcgPSBpcm9ubGFrZV9nZXRfcGlwZV9jb25maWc7CiAJ
CWRldl9wcml2LT5kaXNwbGF5LmdldF9pbml0aWFsX3BsYW5lX2NvbmZpZyA9CmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYwppbmRleCAxYWNiNWRiNzc0MzEuLmNhN2E0MmUx
ZDc2OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8u
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCkBAIC02MDAs
NyArNjAwLDcgQEAgc3RhdGljIHZvaWQgYnJvYWR3ZWxsX3NzZXVfaW5mb19pbml0KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlzc2V1LT5oYXNfZXVfcGcgPSAwOwogfQogCi1z
dGF0aWMgdm9pZCBoYXN3ZWxsX3NzZXVfaW5mb19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdikKK3N0YXRpYyB2b2lkIGhzd19zc2V1X2luZm9faW5pdChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7CiAJc3RydWN0IHNzZXVfZGV2X2luZm8gKnNzZXUgPSAm
UlVOVElNRV9JTkZPKGRldl9wcml2KS0+c3NldTsKIAl1MzIgZnVzZTE7CkBAIC0xMDIxLDcgKzEw
MjEsNyBAQCB2b2lkIGludGVsX2RldmljZV9pbmZvX3J1bnRpbWVfaW5pdChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAKIAkvKiBJbml0aWFsaXplIHNsaWNlL3N1YnNsaWNlL0VV
IGluZm8gKi8KIAlpZiAoSVNfSEFTV0VMTChkZXZfcHJpdikpCi0JCWhhc3dlbGxfc3NldV9pbmZv
X2luaXQoZGV2X3ByaXYpOworCQloc3dfc3NldV9pbmZvX2luaXQoZGV2X3ByaXYpOwogCWVsc2Ug
aWYgKElTX0NIRVJSWVZJRVcoZGV2X3ByaXYpKQogCQljaGVycnl2aWV3X3NzZXVfaW5mb19pbml0
KGRldl9wcml2KTsKIAllbHNlIGlmIChJU19CUk9BRFdFTEwoZGV2X3ByaXYpKQotLSAKMi4yNC4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
