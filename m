Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47FE162714
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2019 19:28:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52A336E02F;
	Mon,  8 Jul 2019 17:28:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A186589FF6
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 17:28:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 10:28:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,466,1557212400"; d="scan'208";a="165515749"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by fmsmga008.fm.intel.com with ESMTP; 08 Jul 2019 10:28:25 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jul 2019 10:28:15 -0700
Message-Id: <20190708172815.6814-5-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190708172815.6814-1-lucas.demarchi@intel.com>
References: <20190708172815.6814-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 4/4] drm/i915: Add modular FIA
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgoKU29tZSBw
bGF0Zm9ybXMgbWF5IGhhdmUgTW9kdWxhciBGSUEuIElmIE1vZHVsYXIgRklBIGlzIHVzZWQgaW4g
dGhlIFNPQywKdGhlbiBEaXNwbGF5IERyaXZlciB3aWxsIGFjY2VzcyB0aGUgYWRkaXRpb25hbCBp
bnN0YW5jZXMgb2YKRklBIGJhc2VkIG9uIHByZS1hc3NpZ25lZCBvZmZzZXQgaW4gR1RUTUFERFIg
c3BhY2UuCgpFYWNoIE1vZHVsYXIgRklBIGluc3RhbmNlIGhhcyBpdHMgb3duIElPU0YgU2lkZWJh
bmQgUG9ydCBJRAphbmQgaXQgaG91c2VzIG9ubHkgMiBUeXBlLUMgUG9ydC4gSW4gU09DIHRoYXQg
aGFzIG1vcmUgdGhhbgp0d28gVHlwZS1DIFBvcnRzLCB0aGVyZSBhcmUgbXVsdGlwbGUgaW5zdGFu
Y2VzIG9mIE1vZHVsYXIgRklBLgpHdW5pdCB3aWxsIG5lZWQgdG8gdXNlIGRpZmZlcmVudCBkZXN0
aW5hdGlvbiBJRCB3aGVuIGl0IGFjY2VzcwpkaWZmZXJlbnQgcGFpciBvZiBUeXBlLUMgUG9ydC4K
ClRoZSBERkxFWERQU1AgcmVnaXN0ZXIgaGFzIE1vZHVsYXIgRklBIGJpdCBzdGFydGluZyBvbiBU
aWdlciBMYWtlLiAgSWYKTW9kdWxhciBGSUEgaXMgdXNlZCBpbiB0aGUgU09DLCB0aGlzIHJlZ2lz
dGVyIGJpdCBleGlzdHMgaW4gYWxsIHRoZQppbnN0YW5jZXMgb2YgTW9kdWxhciBGSUEuIElPTSBG
VyBpcyByZXF1aXJlZCB0byBwcm9ncmFtIG9ubHkgdGhlIE1GIGJpdAppbiBmaXJzdCBGSUEgaW5z
dGFuY2UgdGhhdCBob3VzZXMgdGhlIFR5cGUtQyBQb3J0IDAgYW5kIFBvcnQgMSwgZm9yCkRpc3Bs
YXkgRHJpdmVyIHRvIHJlYWQgZnJvbS4KCnYyIChMdWNhcyk6CiAgLSBNb3ZlIGFsbCBhY2Nlc3Nl
cyB0byBGSUEgdG8gYmUgY29udGFpbmVkIGluIGludGVsX3RjLmMsIGFsb25nIHdpdGgKICAgIGRp
c3BsYXlfZmlhIHRoYXQgaXMgbm93IGNhbGxlZCB0Y19waHlfZmlhCiAgLSBTYXZlIHRoZSBmaWEg
aW5zdGFuY2UgbnVtYmVyIG9uIGludGVsX2RpZ2l0YWxfcG9ydCwgc28gd2UgZG9uJ3QgaGF2ZQog
ICAgdG8gcXVlcnkgaWYgbW9kdWxhciBGSUEgaXMgdXNlZCBvbiBldmVyeSBhY2Nlc3MKdjMgKEx1
Y2FzKToKICAtIE1ha2UgZnVuY3Rpb24gc3RhdGljCgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlr
dWxhQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3Jp
dmF0c2FAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRl
bWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3RjLmMgIHwgNDkgKysrKysrKysrKysrKysrKysrKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oICAgICAgICAgIHwgMTMgKysrKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZGV2aWNlX2luZm8uaCB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Ry
di5oICAgICAgICAgfCAgMSArCiA0IGZpbGVzIGNoYW5nZWQsIDUyIGluc2VydGlvbnMoKyksIDEy
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfdGMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYwppbmRl
eCBmNDRlZTRiZmU3YzguLjY3MTI2MWI1NWQxMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfdGMuYwpAQCAtOCw2ICs4LDEyIEBACiAjaW5jbHVkZSAiaW50ZWxfZHBfbXN0Lmgi
CiAjaW5jbHVkZSAiaW50ZWxfdGMuaCIKIAorZW51bSBwaHlfZmlhIHsKKwlGSUExLAorCUZJQTIs
CisJRklBMywKK307CisKIHN0YXRpYyBjb25zdCBjaGFyICp0Y19wb3J0X21vZGVfbmFtZShlbnVt
IHRjX3BvcnRfbW9kZSBtb2RlKQogewogCXN0YXRpYyBjb25zdCBjaGFyICogY29uc3QgbmFtZXNb
XSA9IHsKQEAgLTIyLDYgKzI4LDI0IEBAIHN0YXRpYyBjb25zdCBjaGFyICp0Y19wb3J0X21vZGVf
bmFtZShlbnVtIHRjX3BvcnRfbW9kZSBtb2RlKQogCXJldHVybiBuYW1lc1ttb2RlXTsKIH0KIAor
c3RhdGljIGJvb2wgaGFzX21vZHVsYXJfZmlhKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
KQoreworCWlmICghSU5URUxfSU5GTyhpOTE1KS0+ZGlzcGxheS5oYXNfbW9kdWxhcl9maWEpCisJ
CXJldHVybiBmYWxzZTsKKworCXJldHVybiBpbnRlbF91bmNvcmVfcmVhZCgmaTkxNS0+dW5jb3Jl
LAorCQkJCSBQT1JUX1RYX0RGTEVYRFBTUChGSUExKSkgJiBNT0RVTEFSX0ZJQV9NQVNLOworfQor
CitzdGF0aWMgZW51bSBwaHlfZmlhIHRjX3BvcnRfdG9fZmlhKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1LAorCQkJCSAgIGVudW0gdGNfcG9ydCB0Y19wb3J0KQoreworCWlmICghaGFzX21v
ZHVsYXJfZmlhKGk5MTUpKQorCQlyZXR1cm4gRklBMTsKKworCXJldHVybiB0Y19wb3J0IC8gMjsK
K30KKwogdTMyIGludGVsX3RjX3BvcnRfZ2V0X2xhbmVfbWFzayhzdHJ1Y3QgaW50ZWxfZGlnaXRh
bF9wb3J0ICpkaWdfcG9ydCkKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRv
X2k5MTUoZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXYpOwpAQCAtMjksNyArNTMsOCBAQCB1MzIgaW50
ZWxfdGNfcG9ydF9nZXRfbGFuZV9tYXNrKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19w
b3J0KQogCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9ICZpOTE1LT51bmNvcmU7CiAJdTMy
IGxhbmVfbWFzazsKIAotCWxhbmVfbWFzayA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgUE9S
VF9UWF9ERkxFWERQU1ApOworCWxhbmVfbWFzayA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwK
KwkJCQkgICAgICBQT1JUX1RYX0RGTEVYRFBTUChkaWdfcG9ydC0+dGNfcGh5X2ZpYSkpOwogCiAJ
V0FSTl9PTihsYW5lX21hc2sgPT0gMHhmZmZmZmZmZik7CiAKQEAgLTc4LDcgKzEwMyw4IEBAIHZv
aWQgaW50ZWxfdGNfcG9ydF9zZXRfZmlhX2xhbmVfY291bnQoc3RydWN0IGludGVsX2RpZ2l0YWxf
cG9ydCAqZGlnX3BvcnQsCiAKIAlXQVJOX09OKGxhbmVfcmV2ZXJzYWwgJiYgZGlnX3BvcnQtPnRj
X21vZGUgIT0gVENfUE9SVF9MRUdBQ1kpOwogCi0JdmFsID0gaW50ZWxfdW5jb3JlX3JlYWQodW5j
b3JlLCBQT1JUX1RYX0RGTEVYRFBNTEUxKTsKKwl2YWwgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNv
cmUsCisJCQkJUE9SVF9UWF9ERkxFWERQTUxFMShkaWdfcG9ydC0+dGNfcGh5X2ZpYSkpOwogCXZh
bCAmPSB+REZMRVhEUE1MRTFfRFBNTEVUQ19NQVNLKHRjX3BvcnQpOwogCiAJc3dpdGNoIChyZXF1
aXJlZF9sYW5lcykgewpAQCAtOTcsNyArMTIzLDggQEAgdm9pZCBpbnRlbF90Y19wb3J0X3NldF9m
aWFfbGFuZV9jb3VudChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwKIAkJTUlT
U0lOR19DQVNFKHJlcXVpcmVkX2xhbmVzKTsKIAl9CiAKLQlpbnRlbF91bmNvcmVfd3JpdGUodW5j
b3JlLCBQT1JUX1RYX0RGTEVYRFBNTEUxLCB2YWwpOworCWludGVsX3VuY29yZV93cml0ZSh1bmNv
cmUsCisJCQkgICBQT1JUX1RYX0RGTEVYRFBNTEUxKGRpZ19wb3J0LT50Y19waHlfZmlhKSwgdmFs
KTsKIH0KIAogc3RhdGljIHZvaWQgdGNfcG9ydF9maXh1cF9sZWdhY3lfZmxhZyhzdHJ1Y3QgaW50
ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwKQEAgLTEyOSw3ICsxNTYsOCBAQCBzdGF0aWMgdTMy
IHRjX3BvcnRfbGl2ZV9zdGF0dXNfbWFzayhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdf
cG9ydCkKIAl1MzIgbWFzayA9IDA7CiAJdTMyIHZhbDsKIAotCXZhbCA9IGludGVsX3VuY29yZV9y
ZWFkKHVuY29yZSwgUE9SVF9UWF9ERkxFWERQU1ApOworCXZhbCA9IGludGVsX3VuY29yZV9yZWFk
KHVuY29yZSwKKwkJCQlQT1JUX1RYX0RGTEVYRFBTUChkaWdfcG9ydC0+dGNfcGh5X2ZpYSkpOwog
CiAJaWYgKHZhbCA9PSAweGZmZmZmZmZmKSB7CiAJCURSTV9ERUJVR19LTVMoIlBvcnQgJXM6IFBI
WSBpbiBUQ0NPTEQsIG5vdGhpbmcgY29ubmVjdGVkXG4iLApAQCAtMTU5LDcgKzE4Nyw4IEBAIHN0
YXRpYyBib29sIGljbF90Y19waHlfc3RhdHVzX2NvbXBsZXRlKHN0cnVjdCBpbnRlbF9kaWdpdGFs
X3BvcnQgKmRpZ19wb3J0KQogCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9ICZpOTE1LT51
bmNvcmU7CiAJdTMyIHZhbDsKIAotCXZhbCA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgUE9S
VF9UWF9ERkxFWERQUE1TKTsKKwl2YWwgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsCisJCQkJ
UE9SVF9UWF9ERkxFWERQUE1TKGRpZ19wb3J0LT50Y19waHlfZmlhKSk7CiAJaWYgKHZhbCA9PSAw
eGZmZmZmZmZmKSB7CiAJCURSTV9ERUJVR19LTVMoIlBvcnQgJXM6IFBIWSBpbiBUQ0NPTEQsIGFz
c3VtaW5nIG5vdCBjb21wbGV0ZVxuIiwKIAkJCSAgICAgIGRpZ19wb3J0LT50Y19wb3J0X25hbWUp
OwpAQCAtMTc3LDcgKzIwNiw4IEBAIHN0YXRpYyBib29sIGljbF90Y19waHlfc2V0X3NhZmVfbW9k
ZShzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwKIAlzdHJ1Y3QgaW50ZWxfdW5j
b3JlICp1bmNvcmUgPSAmaTkxNS0+dW5jb3JlOwogCXUzMiB2YWw7CiAKLQl2YWwgPSBpbnRlbF91
bmNvcmVfcmVhZCh1bmNvcmUsIFBPUlRfVFhfREZMRVhEUENTU1MpOworCXZhbCA9IGludGVsX3Vu
Y29yZV9yZWFkKHVuY29yZSwKKwkJCQlQT1JUX1RYX0RGTEVYRFBDU1NTKGRpZ19wb3J0LT50Y19w
aHlfZmlhKSk7CiAJaWYgKHZhbCA9PSAweGZmZmZmZmZmKSB7CiAJCURSTV9ERUJVR19LTVMoIlBv
cnQgJXM6IFBIWSBpbiBUQ0NPTEQsIGNhbid0IHNldCBzYWZlLW1vZGUgdG8gJXNcbiIsCiAJCQkg
ICAgICBkaWdfcG9ydC0+dGNfcG9ydF9uYW1lLApAQCAtMTkwLDcgKzIyMCw4IEBAIHN0YXRpYyBi
b29sIGljbF90Y19waHlfc2V0X3NhZmVfbW9kZShzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpk
aWdfcG9ydCwKIAlpZiAoIWVuYWJsZSkKIAkJdmFsIHw9IERQX1BIWV9NT0RFX1NUQVRVU19OT1Rf
U0FGRSh0Y19wb3J0KTsKIAotCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsIFBPUlRfVFhfREZM
RVhEUENTU1MsIHZhbCk7CisJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwKKwkJCSAgIFBPUlRf
VFhfREZMRVhEUENTU1MoZGlnX3BvcnQtPnRjX3BoeV9maWEpLCB2YWwpOwogCiAJaWYgKGVuYWJs
ZSAmJiB3YWl0X2ZvcighaWNsX3RjX3BoeV9zdGF0dXNfY29tcGxldGUoZGlnX3BvcnQpLCAxMCkp
CiAJCURSTV9ERUJVR19LTVMoIlBvcnQgJXM6IFBIWSBjb21wbGV0ZSBjbGVhciB0aW1lZCBvdXRc
biIsCkBAIC0yMDYsNyArMjM3LDggQEAgc3RhdGljIGJvb2wgaWNsX3RjX3BoeV9pc19pbl9zYWZl
X21vZGUoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpCiAJc3RydWN0IGludGVs
X3VuY29yZSAqdW5jb3JlID0gJmk5MTUtPnVuY29yZTsKIAl1MzIgdmFsOwogCi0JdmFsID0gaW50
ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBQT1JUX1RYX0RGTEVYRFBDU1NTKTsKKwl2YWwgPSBpbnRl
bF91bmNvcmVfcmVhZCh1bmNvcmUsCisJCQkJUE9SVF9UWF9ERkxFWERQQ1NTUyhkaWdfcG9ydC0+
dGNfcGh5X2ZpYSkpOwogCWlmICh2YWwgPT0gMHhmZmZmZmZmZikgewogCQlEUk1fREVCVUdfS01T
KCJQb3J0ICVzOiBQSFkgaW4gVENDT0xELCBhc3N1bWUgc2FmZSBtb2RlXG4iLAogCQkJICAgICAg
ZGlnX3BvcnQtPnRjX3BvcnRfbmFtZSk7CkBAIC01MDMsNCArNTM1LDUgQEAgdm9pZCBpbnRlbF90
Y19wb3J0X2luaXQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQsIGJvb2wgaXNf
bGVnYWN5KQogCW11dGV4X2luaXQoJmRpZ19wb3J0LT50Y19sb2NrKTsKIAlkaWdfcG9ydC0+dGNf
bGVnYWN5X3BvcnQgPSBpc19sZWdhY3k7CiAJZGlnX3BvcnQtPnRjX2xpbmtfcmVmY291bnQgPSAw
OworCWRpZ19wb3J0LT50Y19waHlfZmlhID0gdGNfcG9ydF90b19maWEoaTkxNSwgdGNfcG9ydCk7
CiB9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCA1ODk4ZjU5ZTNkZDcuLjc0ZjJiMzE0NDNm
YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC0yMjAzLDkgKzIyMDMsMTMgQEAgZW51bSBp
OTE1X3Bvd2VyX3dlbGxfaWQgewogI2RlZmluZSAgIERXNl9PTERPX0RZTl9QV1JfRE9XTl9FTgko
MSA8PCAyOCkKIAogI2RlZmluZSBGSUExX0JBU0UJCQkweDE2MzAwMAorI2RlZmluZSBGSUEyX0JB
U0UJCQkweDE2RTAwMAorI2RlZmluZSBGSUEzX0JBU0UJCQkweDE2RjAwMAorI2RlZmluZSBfRklB
KGZpYSkJCQlfUElDSygoZmlhKSwgRklBMV9CQVNFLCBGSUEyX0JBU0UsIEZJQTNfQkFTRSkKKyNk
ZWZpbmUgX01NSU9fRklBKGZpYSwgb2ZmKQkJX01NSU8oX0ZJQShmaWEpICsgKG9mZikpCiAKIC8q
IElDTCBQSFkgREZMRVggcmVnaXN0ZXJzICovCi0jZGVmaW5lIFBPUlRfVFhfREZMRVhEUE1MRTEJ
CV9NTUlPKEZJQTFfQkFTRSArIDB4MDA4QzApCisjZGVmaW5lIFBPUlRfVFhfREZMRVhEUE1MRTEo
ZmlhKQlfTU1JT19GSUEoKGZpYSksICAweDAwOEMwKQogI2RlZmluZSAgIERGTEVYRFBNTEUxX0RQ
TUxFVENfTUFTSyh0Y19wb3J0KQkoMHhmIDw8ICg0ICogKHRjX3BvcnQpKSkKICNkZWZpbmUgICBE
RkxFWERQTUxFMV9EUE1MRVRDX01MMCh0Y19wb3J0KQkoMSA8PCAoNCAqICh0Y19wb3J0KSkpCiAj
ZGVmaW5lICAgREZMRVhEUE1MRTFfRFBNTEVUQ19NTDFfMCh0Y19wb3J0KQkoMyA8PCAoNCAqICh0
Y19wb3J0KSkpCkBAIC0xMTQ4MCwxNyArMTE0ODQsMTggQEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7
CiAJCQkJCQlfSUNMX0RTQzFfUkNfQlVGX1RIUkVTSF8xX1VEV19QQiwgXAogCQkJCQkJX0lDTF9E
U0MxX1JDX0JVRl9USFJFU0hfMV9VRFdfUEMpCiAKLSNkZWZpbmUgUE9SVF9UWF9ERkxFWERQU1AJ
CQlfTU1JTyhGSUExX0JBU0UgKyAweDAwOEEwKQorI2RlZmluZSBQT1JUX1RYX0RGTEVYRFBTUChm
aWEpCQkJX01NSU9fRklBKChmaWEpLCAweDAwOEEwKQorI2RlZmluZSAgIE1PRFVMQVJfRklBX01B
U0sJCQkoMSA8PCA0KQogI2RlZmluZSAgIFRDX0xJVkVfU1RBVEVfVEJUKHRjX3BvcnQpCQkoMSA8
PCAoKHRjX3BvcnQpICogOCArIDYpKQogI2RlZmluZSAgIFRDX0xJVkVfU1RBVEVfVEModGNfcG9y
dCkJCSgxIDw8ICgodGNfcG9ydCkgKiA4ICsgNSkpCiAjZGVmaW5lICAgRFBfTEFORV9BU1NJR05N
RU5UX1NISUZUKHRjX3BvcnQpCSgodGNfcG9ydCkgKiA4KQogI2RlZmluZSAgIERQX0xBTkVfQVNT
SUdOTUVOVF9NQVNLKHRjX3BvcnQpCSgweGYgPDwgKCh0Y19wb3J0KSAqIDgpKQogI2RlZmluZSAg
IERQX0xBTkVfQVNTSUdOTUVOVCh0Y19wb3J0LCB4KQkoKHgpIDw8ICgodGNfcG9ydCkgKiA4KSkK
IAotI2RlZmluZSBQT1JUX1RYX0RGTEVYRFBQTVMJCQkJX01NSU8oRklBMV9CQVNFICsgMHgwMDg5
MCkKKyNkZWZpbmUgUE9SVF9UWF9ERkxFWERQUE1TKGZpYSkJCQlfTU1JT19GSUEoKGZpYSksIDB4
MDA4OTApCiAjZGVmaW5lICAgRFBfUEhZX01PREVfU1RBVFVTX0NPTVBMRVRFRCh0Y19wb3J0KQkJ
KDEgPDwgKHRjX3BvcnQpKQogCi0jZGVmaW5lIFBPUlRfVFhfREZMRVhEUENTU1MJCQlfTU1JTyhG
SUExX0JBU0UgKyAweDAwODk0KQorI2RlZmluZSBQT1JUX1RYX0RGTEVYRFBDU1NTKGZpYSkJCV9N
TUlPX0ZJQSgoZmlhKSwgMHgwMDg5NCkKICNkZWZpbmUgICBEUF9QSFlfTU9ERV9TVEFUVVNfTk9U
X1NBRkUodGNfcG9ydCkJCSgxIDw8ICh0Y19wb3J0KSkKIAogI2VuZGlmIC8qIF9JOTE1X1JFR19I
XyAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8u
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmgKaW5kZXggZGRhZmM4
MTliZjMwLi5lOWRjODZlZDUxN2IgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2RldmljZV9pbmZvLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNl
X2luZm8uaApAQCAtMTM2LDYgKzEzNiw3IEBAIGVudW0gaW50ZWxfcHBndHRfdHlwZSB7CiAJZnVu
YyhoYXNfZ21jaCk7IFwKIAlmdW5jKGhhc19ob3RwbHVnKTsgXAogCWZ1bmMoaGFzX2lwYyk7IFwK
KwlmdW5jKGhhc19tb2R1bGFyX2ZpYSk7IFwKIAlmdW5jKGhhc19vdmVybGF5KTsgXAogCWZ1bmMo
aGFzX3Bzcik7IFwKIAlmdW5jKG92ZXJsYXlfbmVlZHNfcGh5c2ljYWwpOyBcCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2Rydi5oCmluZGV4IDI0YzYzZWQ0NWM2Zi4uN2VhOTc5YzhjNWY3IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9kcnYuaApAQCAtMTI0NSw2ICsxMjQ1LDcgQEAgc3RydWN0IGludGVsX2RpZ2l0
YWxfcG9ydCB7CiAJYm9vbCB0Y19sZWdhY3lfcG9ydDoxOwogCWNoYXIgdGNfcG9ydF9uYW1lWzhd
OwogCWVudW0gdGNfcG9ydF9tb2RlIHRjX21vZGU7CisJdTggdGNfcGh5X2ZpYTsKIAogCXZvaWQg
KCp3cml0ZV9pbmZvZnJhbWUpKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQkJCWNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAotLSAKMi4yMS4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
