Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 136C32FF7A0
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 22:59:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72A8F6E964;
	Thu, 21 Jan 2021 21:59:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C75C6E963
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 21:59:43 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-170-pOVBv7H8Nwed2y3SvnM3VA-1; Thu, 21 Jan 2021 16:59:38 -0500
X-MC-Unique: pOVBv7H8Nwed2y3SvnM3VA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CE152106BB88;
 Thu, 21 Jan 2021 21:59:35 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.32.209])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A8D5019CB1;
 Thu, 21 Jan 2021 21:59:34 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jan 2021 07:59:17 +1000
Message-Id: <20210121215924.18964-5-airlied@gmail.com>
In-Reply-To: <20210121215924.18964-1-airlied@gmail.com>
References: <20210121215924.18964-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=airlied@gmail.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Subject: [Intel-gfx] [PATCH 04/10] drm/i915: move pipe update code into crtc.
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
Cc: Jani Nikula <jani.nikula@intel.com>, Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAcmVkaGF0LmNvbT4KCkRhbmllbCBzdWdnZXN0ZWQg
dGhpcyBzaG91bGQgbW92ZSBoZXJlLgoKU2lnbmVkLW9mZi1ieTogRGF2ZSBBaXJsaWUgPGFpcmxp
ZWRAcmVkaGF0LmNvbT4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGlu
dGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRj
LmMgICB8IDIzMCArKysrKysrKysrKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9zcHJpdGUuYyB8IDIyOCAtLS0tLS0tLS0tLS0tLS0tLS0tCiAyIGZpbGVzIGNo
YW5nZWQsIDIzMCBpbnNlcnRpb25zKCspLCAyMjggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMuYwppbmRleCBlYjQ3ODcxMmMzODEuLjg4MjVmOTYw
YTEyMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRj
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMKQEAgLTEw
LDYgKzEwLDkgQEAKICNpbmNsdWRlIDxkcm0vZHJtX3BsYW5lLmg+CiAjaW5jbHVkZSA8ZHJtL2Ry
bV9wbGFuZV9oZWxwZXIuaD4KIAorI2luY2x1ZGUgImk5MTVfdHJhY2UuaCIKKyNpbmNsdWRlICJp
OTE1X3ZncHUuaCIKKwogI2luY2x1ZGUgImludGVsX2F0b21pYy5oIgogI2luY2x1ZGUgImludGVs
X2F0b21pY19wbGFuZS5oIgogI2luY2x1ZGUgImludGVsX2NvbG9yLmgiCkBAIC0xNyw3ICsyMCw5
IEBACiAjaW5jbHVkZSAiaW50ZWxfY3Vyc29yLmgiCiAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV9k
ZWJ1Z2ZzLmgiCiAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5oIgorI2luY2x1ZGUgImlu
dGVsX2RzaS5oIgogI2luY2x1ZGUgImludGVsX3BpcGVfY3JjLmgiCisjaW5jbHVkZSAiaW50ZWxf
cHNyLmgiCiAjaW5jbHVkZSAiaW50ZWxfc3ByaXRlLmgiCiAjaW5jbHVkZSAiaTl4eF9wbGFuZS5o
IgogI2luY2x1ZGUgInNrbF91bml2ZXJzYWxfcGxhbmUuaCIKQEAgLTMzMiwzICszMzcsMjI4IEBA
IGludCBpbnRlbF9jcnRjX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBl
bnVtIHBpcGUgcGlwZSkKIAogCXJldHVybiByZXQ7CiB9CisKK2ludCBpbnRlbF91c2Vjc190b19z
Y2FubGluZXMoY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVzdGVkX21vZGUsCisJ
CQkgICAgIGludCB1c2VjcykKK3sKKwkvKiBwYXJhbm9pYSAqLworCWlmICghYWRqdXN0ZWRfbW9k
ZS0+Y3J0Y19odG90YWwpCisJCXJldHVybiAxOworCisJcmV0dXJuIERJVl9ST1VORF9VUCh1c2Vj
cyAqIGFkanVzdGVkX21vZGUtPmNydGNfY2xvY2ssCisJCQkgICAgMTAwMCAqIGFkanVzdGVkX21v
ZGUtPmNydGNfaHRvdGFsKTsKK30KKworLyoqCisgKiBpbnRlbF9waXBlX3VwZGF0ZV9zdGFydCgp
IC0gc3RhcnQgdXBkYXRlIG9mIGEgc2V0IG9mIGRpc3BsYXkgcmVnaXN0ZXJzCisgKiBAbmV3X2Ny
dGNfc3RhdGU6IHRoZSBuZXcgY3J0YyBzdGF0ZQorICoKKyAqIE1hcmsgdGhlIHN0YXJ0IG9mIGFu
IHVwZGF0ZSB0byBwaXBlIHJlZ2lzdGVycyB0aGF0IHNob3VsZCBiZSB1cGRhdGVkCisgKiBhdG9t
aWNhbGx5IHJlZ2FyZGluZyB2YmxhbmsuIElmIHRoZSBuZXh0IHZibGFuayB3aWxsIGhhcHBlbnMg
d2l0aGluCisgKiB0aGUgbmV4dCAxMDAgdXMsIHRoaXMgZnVuY3Rpb24gd2FpdHMgdW50aWwgdGhl
IHZibGFuayBwYXNzZXMuCisgKgorICogQWZ0ZXIgYSBzdWNjZXNzZnVsIGNhbGwgdG8gdGhpcyBm
dW5jdGlvbiwgaW50ZXJydXB0cyB3aWxsIGJlIGRpc2FibGVkCisgKiB1bnRpbCBhIHN1YnNlcXVl
bnQgY2FsbCB0byBpbnRlbF9waXBlX3VwZGF0ZV9lbmQoKS4gVGhhdCBpcyBkb25lIHRvCisgKiBh
dm9pZCByYW5kb20gZGVsYXlzLgorICovCit2b2lkIGludGVsX3BpcGVfdXBkYXRlX3N0YXJ0KGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSkKK3sKKwlzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMobmV3X2NydGNfc3RhdGUtPnVhcGkuY3J0
Yyk7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5i
YXNlLmRldik7CisJY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVzdGVkX21vZGUg
PSAmbmV3X2NydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGU7CisJbG9uZyB0aW1lb3V0ID0gbXNl
Y3NfdG9famlmZmllc190aW1lb3V0KDEpOworCWludCBzY2FubGluZSwgbWluLCBtYXgsIHZibGFu
a19zdGFydDsKKwl3YWl0X3F1ZXVlX2hlYWRfdCAqd3EgPSBkcm1fY3J0Y192Ymxhbmtfd2FpdHF1
ZXVlKCZjcnRjLT5iYXNlKTsKKwlib29sIG5lZWRfdmx2X2RzaV93YSA9IChJU19WQUxMRVlWSUVX
KGRldl9wcml2KSB8fCBJU19DSEVSUllWSUVXKGRldl9wcml2KSkgJiYKKwkJaW50ZWxfY3J0Y19o
YXNfdHlwZShuZXdfY3J0Y19zdGF0ZSwgSU5URUxfT1VUUFVUX0RTSSk7CisJREVGSU5FX1dBSVQo
d2FpdCk7CisJdTMyIHBzcl9zdGF0dXM7CisKKwlpZiAobmV3X2NydGNfc3RhdGUtPnVhcGkuYXN5
bmNfZmxpcCkKKwkJcmV0dXJuOworCisJdmJsYW5rX3N0YXJ0ID0gYWRqdXN0ZWRfbW9kZS0+Y3J0
Y192Ymxhbmtfc3RhcnQ7CisJaWYgKGFkanVzdGVkX21vZGUtPmZsYWdzICYgRFJNX01PREVfRkxB
R19JTlRFUkxBQ0UpCisJCXZibGFua19zdGFydCA9IERJVl9ST1VORF9VUCh2Ymxhbmtfc3RhcnQs
IDIpOworCisJLyogRklYTUUgbmVlZHMgdG8gYmUgY2FsaWJyYXRlZCBzZW5zaWJseSAqLworCW1p
biA9IHZibGFua19zdGFydCAtIGludGVsX3VzZWNzX3RvX3NjYW5saW5lcyhhZGp1c3RlZF9tb2Rl
LAorCQkJCQkJICAgICAgVkJMQU5LX0VWQVNJT05fVElNRV9VUyk7CisJbWF4ID0gdmJsYW5rX3N0
YXJ0IC0gMTsKKworCWlmIChtaW4gPD0gMCB8fCBtYXggPD0gMCkKKwkJZ290byBpcnFfZGlzYWJs
ZTsKKworCWlmIChkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgZHJtX2NydGNfdmJsYW5rX2dl
dCgmY3J0Yy0+YmFzZSkpKQorCQlnb3RvIGlycV9kaXNhYmxlOworCisJLyoKKwkgKiBXYWl0IGZv
ciBwc3IgdG8gaWRsZSBvdXQgYWZ0ZXIgZW5hYmxpbmcgdGhlIFZCTCBpbnRlcnJ1cHRzCisJICog
VkJMIGludGVycnVwdHMgd2lsbCBzdGFydCB0aGUgUFNSIGV4aXQgYW5kIHByZXZlbnQgYSBQU1IK
KwkgKiByZS1lbnRyeSBhcyB3ZWxsLgorCSAqLworCWlmIChpbnRlbF9wc3Jfd2FpdF9mb3JfaWRs
ZShuZXdfY3J0Y19zdGF0ZSwgJnBzcl9zdGF0dXMpKQorCQlkcm1fZXJyKCZkZXZfcHJpdi0+ZHJt
LAorCQkJIlBTUiBpZGxlIHRpbWVkIG91dCAweCV4LCBhdG9taWMgdXBkYXRlIG1heSBmYWlsXG4i
LAorCQkJcHNyX3N0YXR1cyk7CisKKwlsb2NhbF9pcnFfZGlzYWJsZSgpOworCisJY3J0Yy0+ZGVi
dWcubWluX3ZibCA9IG1pbjsKKwljcnRjLT5kZWJ1Zy5tYXhfdmJsID0gbWF4OworCXRyYWNlX2lu
dGVsX3BpcGVfdXBkYXRlX3N0YXJ0KGNydGMpOworCisJZm9yICg7OykgeworCQkvKgorCQkgKiBw
cmVwYXJlX3RvX3dhaXQoKSBoYXMgYSBtZW1vcnkgYmFycmllciwgd2hpY2ggZ3VhcmFudGVlcwor
CQkgKiBvdGhlciBDUFVzIGNhbiBzZWUgdGhlIHRhc2sgc3RhdGUgdXBkYXRlIGJ5IHRoZSB0aW1l
IHdlCisJCSAqIHJlYWQgdGhlIHNjYW5saW5lLgorCQkgKi8KKwkJcHJlcGFyZV90b193YWl0KHdx
LCAmd2FpdCwgVEFTS19VTklOVEVSUlVQVElCTEUpOworCisJCXNjYW5saW5lID0gaW50ZWxfZ2V0
X2NydGNfc2NhbmxpbmUoY3J0Yyk7CisJCWlmIChzY2FubGluZSA8IG1pbiB8fCBzY2FubGluZSA+
IG1heCkKKwkJCWJyZWFrOworCisJCWlmICghdGltZW91dCkgeworCQkJZHJtX2VycigmZGV2X3By
aXYtPmRybSwKKwkJCQkiUG90ZW50aWFsIGF0b21pYyB1cGRhdGUgZmFpbHVyZSBvbiBwaXBlICVj
XG4iLAorCQkJCXBpcGVfbmFtZShjcnRjLT5waXBlKSk7CisJCQlicmVhazsKKwkJfQorCisJCWxv
Y2FsX2lycV9lbmFibGUoKTsKKworCQl0aW1lb3V0ID0gc2NoZWR1bGVfdGltZW91dCh0aW1lb3V0
KTsKKworCQlsb2NhbF9pcnFfZGlzYWJsZSgpOworCX0KKworCWZpbmlzaF93YWl0KHdxLCAmd2Fp
dCk7CisKKwlkcm1fY3J0Y192YmxhbmtfcHV0KCZjcnRjLT5iYXNlKTsKKworCS8qCisJICogT24g
VkxWL0NIViBEU0kgdGhlIHNjYW5saW5lIGNvdW50ZXIgd291bGQgYXBwZWFyIHRvCisJICogaW5j
cmVtZW50IGFwcHJveC4gMS8zIG9mIGEgc2NhbmxpbmUgYmVmb3JlIHN0YXJ0IG9mIHZibGFuay4K
KwkgKiBUaGUgcmVnaXN0ZXJzIHN0aWxsIGdldCBsYXRjaGVkIGF0IHN0YXJ0IG9mIHZibGFuayBo
b3dldmVyLgorCSAqIFRoaXMgbWVhbnMgd2UgbXVzdCBub3Qgd3JpdGUgYW55IHJlZ2lzdGVycyBv
biB0aGUgZmlyc3QKKwkgKiBsaW5lIG9mIHZibGFuayAoc2luY2Ugbm90IHRoZSB3aG9sZSBsaW5l
IGlzIGFjdHVhbGx5IGluCisJICogdmJsYW5rKS4gQW5kIHVuZm9ydHVuYXRlbHkgd2UgY2FuJ3Qg
dXNlIHRoZSBpbnRlcnJ1cHQgdG8KKwkgKiB3YWl0IGhlcmUgc2luY2UgaXQgd2lsbCBmaXJlIHRv
byBzb29uLiBXZSBjb3VsZCB1c2UgdGhlCisJICogZnJhbWUgc3RhcnQgaW50ZXJydXB0IGluc3Rl
YWQgc2luY2UgaXQgd2lsbCBmaXJlIGFmdGVyIHRoZQorCSAqIGNyaXRpY2FsIHNjYW5saW5lLCBi
dXQgdGhhdCB3b3VsZCByZXF1aXJlIG1vcmUgY2hhbmdlcworCSAqIGluIHRoZSBpbnRlcnJ1cHQg
Y29kZS4gU28gZm9yIG5vdyB3ZSdsbCBqdXN0IGRvIHRoZSBuYXN0eQorCSAqIHRoaW5nIGFuZCBw
b2xsIGZvciB0aGUgYmFkIHNjYW5saW5lIHRvIHBhc3MgdXMgYnkuCisJICoKKwkgKiBGSVhNRSBm
aWd1cmUgb3V0IGlmIEJYVCsgRFNJIHN1ZmZlcnMgZnJvbSB0aGlzIGFzIHdlbGwKKwkgKi8KKwl3
aGlsZSAobmVlZF92bHZfZHNpX3dhICYmIHNjYW5saW5lID09IHZibGFua19zdGFydCkKKwkJc2Nh
bmxpbmUgPSBpbnRlbF9nZXRfY3J0Y19zY2FubGluZShjcnRjKTsKKworCWNydGMtPmRlYnVnLnNj
YW5saW5lX3N0YXJ0ID0gc2NhbmxpbmU7CisJY3J0Yy0+ZGVidWcuc3RhcnRfdmJsX3RpbWUgPSBr
dGltZV9nZXQoKTsKKwljcnRjLT5kZWJ1Zy5zdGFydF92YmxfY291bnQgPSBpbnRlbF9jcnRjX2dl
dF92YmxhbmtfY291bnRlcihjcnRjKTsKKworCXRyYWNlX2ludGVsX3BpcGVfdXBkYXRlX3ZibGFu
a19ldmFkZWQoY3J0Yyk7CisJcmV0dXJuOworCitpcnFfZGlzYWJsZToKKwlsb2NhbF9pcnFfZGlz
YWJsZSgpOworfQorCisjaWYgSVNfRU5BQkxFRChDT05GSUdfRFJNX0k5MTVfREVCVUdfVkJMQU5L
X0VWQURFKQorc3RhdGljIHZvaWQgZGJnX3ZibGFua19ldmFkZShzdHJ1Y3QgaW50ZWxfY3J0YyAq
Y3J0Yywga3RpbWVfdCBlbmQpCit7CisJdTY0IGRlbHRhID0ga3RpbWVfdG9fbnMoa3RpbWVfc3Vi
KGVuZCwgY3J0Yy0+ZGVidWcuc3RhcnRfdmJsX3RpbWUpKTsKKwl1bnNpZ25lZCBpbnQgaDsKKwor
CWggPSBpbG9nMihkZWx0YSA+PiA5KTsKKwlpZiAoaCA+PSBBUlJBWV9TSVpFKGNydGMtPmRlYnVn
LnZibC50aW1lcykpCisJCWggPSBBUlJBWV9TSVpFKGNydGMtPmRlYnVnLnZibC50aW1lcykgLSAx
OworCWNydGMtPmRlYnVnLnZibC50aW1lc1toXSsrOworCisJY3J0Yy0+ZGVidWcudmJsLnN1bSAr
PSBkZWx0YTsKKwlpZiAoIWNydGMtPmRlYnVnLnZibC5taW4gfHwgZGVsdGEgPCBjcnRjLT5kZWJ1
Zy52YmwubWluKQorCQljcnRjLT5kZWJ1Zy52YmwubWluID0gZGVsdGE7CisJaWYgKGRlbHRhID4g
Y3J0Yy0+ZGVidWcudmJsLm1heCkKKwkJY3J0Yy0+ZGVidWcudmJsLm1heCA9IGRlbHRhOworCisJ
aWYgKGRlbHRhID4gMTAwMCAqIFZCTEFOS19FVkFTSU9OX1RJTUVfVVMpIHsKKwkJZHJtX2RiZ19r
bXMoY3J0Yy0+YmFzZS5kZXYsCisJCQkgICAgIkF0b21pYyB1cGRhdGUgb24gcGlwZSAoJWMpIHRv
b2sgJWxsZCB1cywgbWF4IHRpbWUgdW5kZXIgZXZhc2lvbiBpcyAldSB1c1xuIiwKKwkJCSAgICBw
aXBlX25hbWUoY3J0Yy0+cGlwZSksCisJCQkgICAgZGl2X3U2NChkZWx0YSwgMTAwMCksCisJCQkg
ICAgVkJMQU5LX0VWQVNJT05fVElNRV9VUyk7CisJCWNydGMtPmRlYnVnLnZibC5vdmVyKys7CisJ
fQorfQorI2Vsc2UKK3N0YXRpYyB2b2lkIGRiZ192YmxhbmtfZXZhZGUoc3RydWN0IGludGVsX2Ny
dGMgKmNydGMsIGt0aW1lX3QgZW5kKSB7fQorI2VuZGlmCisKKy8qKgorICogaW50ZWxfcGlwZV91
cGRhdGVfZW5kKCkgLSBlbmQgdXBkYXRlIG9mIGEgc2V0IG9mIGRpc3BsYXkgcmVnaXN0ZXJzCisg
KiBAbmV3X2NydGNfc3RhdGU6IHRoZSBuZXcgY3J0YyBzdGF0ZQorICoKKyAqIE1hcmsgdGhlIGVu
ZCBvZiBhbiB1cGRhdGUgc3RhcnRlZCB3aXRoIGludGVsX3BpcGVfdXBkYXRlX3N0YXJ0KCkuIFRo
aXMKKyAqIHJlLWVuYWJsZXMgaW50ZXJydXB0cyBhbmQgdmVyaWZpZXMgdGhlIHVwZGF0ZSB3YXMg
YWN0dWFsbHkgY29tcGxldGVkCisgKiBiZWZvcmUgYSB2YmxhbmsuCisgKi8KK3ZvaWQgaW50ZWxf
cGlwZV91cGRhdGVfZW5kKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSkK
K3sKKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMobmV3X2NydGNfc3Rh
dGUtPnVhcGkuY3J0Yyk7CisJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOworCWludCBzY2Fu
bGluZV9lbmQgPSBpbnRlbF9nZXRfY3J0Y19zY2FubGluZShjcnRjKTsKKwl1MzIgZW5kX3ZibF9j
b3VudCA9IGludGVsX2NydGNfZ2V0X3ZibGFua19jb3VudGVyKGNydGMpOworCWt0aW1lX3QgZW5k
X3ZibF90aW1lID0ga3RpbWVfZ2V0KCk7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7CisKKwlpZiAobmV3X2NydGNfc3RhdGUtPnVh
cGkuYXN5bmNfZmxpcCkKKwkJcmV0dXJuOworCisJdHJhY2VfaW50ZWxfcGlwZV91cGRhdGVfZW5k
KGNydGMsIGVuZF92YmxfY291bnQsIHNjYW5saW5lX2VuZCk7CisKKwkvKgorCSAqIEluY2FzZSBv
ZiBtaXBpIGRzaSBjb21tYW5kIG1vZGUsIHdlIG5lZWQgdG8gc2V0IGZyYW1lIHVwZGF0ZQorCSAq
IHJlcXVlc3QgZm9yIGV2ZXJ5IGNvbW1pdC4KKwkgKi8KKwlpZiAoSU5URUxfR0VOKGRldl9wcml2
KSA+PSAxMSAmJgorCSAgICBpbnRlbF9jcnRjX2hhc190eXBlKG5ld19jcnRjX3N0YXRlLCBJTlRF
TF9PVVRQVVRfRFNJKSkKKwkJaWNsX2RzaV9mcmFtZV91cGRhdGUobmV3X2NydGNfc3RhdGUpOwor
CisJLyogV2UncmUgc3RpbGwgaW4gdGhlIHZibGFuay1ldmFkZSBjcml0aWNhbCBzZWN0aW9uLCB0
aGlzIGNhbid0IHJhY2UuCisJICogV291bGQgYmUgc2xpZ2h0bHkgbmljZSB0byBqdXN0IGdyYWIg
dGhlIHZibGFuayBjb3VudCBhbmQgYXJtIHRoZQorCSAqIGV2ZW50IG91dHNpZGUgb2YgdGhlIGNy
aXRpY2FsIHNlY3Rpb24gLSB0aGUgc3BpbmxvY2sgbWlnaHQgc3BpbiBmb3IgYQorCSAqIHdoaWxl
IC4uLiAqLworCWlmIChuZXdfY3J0Y19zdGF0ZS0+dWFwaS5ldmVudCkgeworCQlkcm1fV0FSTl9P
TigmZGV2X3ByaXYtPmRybSwKKwkJCSAgICBkcm1fY3J0Y192YmxhbmtfZ2V0KCZjcnRjLT5iYXNl
KSAhPSAwKTsKKworCQlzcGluX2xvY2soJmNydGMtPmJhc2UuZGV2LT5ldmVudF9sb2NrKTsKKwkJ
ZHJtX2NydGNfYXJtX3ZibGFua19ldmVudCgmY3J0Yy0+YmFzZSwKKwkJCQkJICBuZXdfY3J0Y19z
dGF0ZS0+dWFwaS5ldmVudCk7CisJCXNwaW5fdW5sb2NrKCZjcnRjLT5iYXNlLmRldi0+ZXZlbnRf
bG9jayk7CisKKwkJbmV3X2NydGNfc3RhdGUtPnVhcGkuZXZlbnQgPSBOVUxMOworCX0KKworCWxv
Y2FsX2lycV9lbmFibGUoKTsKKworCWlmIChpbnRlbF92Z3B1X2FjdGl2ZShkZXZfcHJpdikpCisJ
CXJldHVybjsKKworCWlmIChjcnRjLT5kZWJ1Zy5zdGFydF92YmxfY291bnQgJiYKKwkgICAgY3J0
Yy0+ZGVidWcuc3RhcnRfdmJsX2NvdW50ICE9IGVuZF92YmxfY291bnQpIHsKKwkJZHJtX2Vycigm
ZGV2X3ByaXYtPmRybSwKKwkJCSJBdG9taWMgdXBkYXRlIGZhaWx1cmUgb24gcGlwZSAlYyAoc3Rh
cnQ9JXUgZW5kPSV1KSB0aW1lICVsbGQgdXMsIG1pbiAlZCwgbWF4ICVkLCBzY2FubGluZSBzdGFy
dCAlZCwgZW5kICVkXG4iLAorCQkJcGlwZV9uYW1lKHBpcGUpLCBjcnRjLT5kZWJ1Zy5zdGFydF92
YmxfY291bnQsCisJCQllbmRfdmJsX2NvdW50LAorCQkJa3RpbWVfdXNfZGVsdGEoZW5kX3ZibF90
aW1lLAorCQkJCSAgICAgICBjcnRjLT5kZWJ1Zy5zdGFydF92YmxfdGltZSksCisJCQljcnRjLT5k
ZWJ1Zy5taW5fdmJsLCBjcnRjLT5kZWJ1Zy5tYXhfdmJsLAorCQkJY3J0Yy0+ZGVidWcuc2Nhbmxp
bmVfc3RhcnQsIHNjYW5saW5lX2VuZCk7CisJfQorCisJZGJnX3ZibGFua19ldmFkZShjcnRjLCBl
bmRfdmJsX3RpbWUpOworfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9zcHJpdGUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3By
aXRlLmMKaW5kZXggODNlNzMzMWY3OWQ1Li43ZDc3OTQwMmNlZjcgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwpAQCAtNDUsMjM3ICs0NSw5IEBACiAjaW5j
bHVkZSAiaW50ZWxfYXRvbWljX3BsYW5lLmgiCiAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV90eXBl
cy5oIgogI2luY2x1ZGUgImludGVsX2Zyb250YnVmZmVyLmgiCi0jaW5jbHVkZSAiaW50ZWxfcG0u
aCIKLSNpbmNsdWRlICJpbnRlbF9wc3IuaCIKLSNpbmNsdWRlICJpbnRlbF9kc2kuaCIKICNpbmNs
dWRlICJpbnRlbF9zcHJpdGUuaCIKICNpbmNsdWRlICJpOXh4X3BsYW5lLmgiCiAKLWludCBpbnRl
bF91c2Vjc190b19zY2FubGluZXMoY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVz
dGVkX21vZGUsCi0JCQkgICAgIGludCB1c2VjcykKLXsKLQkvKiBwYXJhbm9pYSAqLwotCWlmICgh
YWRqdXN0ZWRfbW9kZS0+Y3J0Y19odG90YWwpCi0JCXJldHVybiAxOwotCi0JcmV0dXJuIERJVl9S
T1VORF9VUCh1c2VjcyAqIGFkanVzdGVkX21vZGUtPmNydGNfY2xvY2ssCi0JCQkgICAgMTAwMCAq
IGFkanVzdGVkX21vZGUtPmNydGNfaHRvdGFsKTsKLX0KLQotLyoqCi0gKiBpbnRlbF9waXBlX3Vw
ZGF0ZV9zdGFydCgpIC0gc3RhcnQgdXBkYXRlIG9mIGEgc2V0IG9mIGRpc3BsYXkgcmVnaXN0ZXJz
Ci0gKiBAbmV3X2NydGNfc3RhdGU6IHRoZSBuZXcgY3J0YyBzdGF0ZQotICoKLSAqIE1hcmsgdGhl
IHN0YXJ0IG9mIGFuIHVwZGF0ZSB0byBwaXBlIHJlZ2lzdGVycyB0aGF0IHNob3VsZCBiZSB1cGRh
dGVkCi0gKiBhdG9taWNhbGx5IHJlZ2FyZGluZyB2YmxhbmsuIElmIHRoZSBuZXh0IHZibGFuayB3
aWxsIGhhcHBlbnMgd2l0aGluCi0gKiB0aGUgbmV4dCAxMDAgdXMsIHRoaXMgZnVuY3Rpb24gd2Fp
dHMgdW50aWwgdGhlIHZibGFuayBwYXNzZXMuCi0gKgotICogQWZ0ZXIgYSBzdWNjZXNzZnVsIGNh
bGwgdG8gdGhpcyBmdW5jdGlvbiwgaW50ZXJydXB0cyB3aWxsIGJlIGRpc2FibGVkCi0gKiB1bnRp
bCBhIHN1YnNlcXVlbnQgY2FsbCB0byBpbnRlbF9waXBlX3VwZGF0ZV9lbmQoKS4gVGhhdCBpcyBk
b25lIHRvCi0gKiBhdm9pZCByYW5kb20gZGVsYXlzLgotICovCi12b2lkIGludGVsX3BpcGVfdXBk
YXRlX3N0YXJ0KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSkK
LXsKLQlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMobmV3X2NydGNfc3Rh
dGUtPnVhcGkuY3J0Yyk7Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9f
aTkxNShjcnRjLT5iYXNlLmRldik7Ci0JY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFk
anVzdGVkX21vZGUgPSAmbmV3X2NydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGU7Ci0JbG9uZyB0
aW1lb3V0ID0gbXNlY3NfdG9famlmZmllc190aW1lb3V0KDEpOwotCWludCBzY2FubGluZSwgbWlu
LCBtYXgsIHZibGFua19zdGFydDsKLQl3YWl0X3F1ZXVlX2hlYWRfdCAqd3EgPSBkcm1fY3J0Y192
Ymxhbmtfd2FpdHF1ZXVlKCZjcnRjLT5iYXNlKTsKLQlib29sIG5lZWRfdmx2X2RzaV93YSA9IChJ
U19WQUxMRVlWSUVXKGRldl9wcml2KSB8fCBJU19DSEVSUllWSUVXKGRldl9wcml2KSkgJiYKLQkJ
aW50ZWxfY3J0Y19oYXNfdHlwZShuZXdfY3J0Y19zdGF0ZSwgSU5URUxfT1VUUFVUX0RTSSk7Ci0J
REVGSU5FX1dBSVQod2FpdCk7Ci0JdTMyIHBzcl9zdGF0dXM7Ci0KLQlpZiAobmV3X2NydGNfc3Rh
dGUtPnVhcGkuYXN5bmNfZmxpcCkKLQkJcmV0dXJuOwotCi0JdmJsYW5rX3N0YXJ0ID0gYWRqdXN0
ZWRfbW9kZS0+Y3J0Y192Ymxhbmtfc3RhcnQ7Ci0JaWYgKGFkanVzdGVkX21vZGUtPmZsYWdzICYg
RFJNX01PREVfRkxBR19JTlRFUkxBQ0UpCi0JCXZibGFua19zdGFydCA9IERJVl9ST1VORF9VUCh2
Ymxhbmtfc3RhcnQsIDIpOwotCi0JLyogRklYTUUgbmVlZHMgdG8gYmUgY2FsaWJyYXRlZCBzZW5z
aWJseSAqLwotCW1pbiA9IHZibGFua19zdGFydCAtIGludGVsX3VzZWNzX3RvX3NjYW5saW5lcyhh
ZGp1c3RlZF9tb2RlLAotCQkJCQkJICAgICAgVkJMQU5LX0VWQVNJT05fVElNRV9VUyk7Ci0JbWF4
ID0gdmJsYW5rX3N0YXJ0IC0gMTsKLQotCWlmIChtaW4gPD0gMCB8fCBtYXggPD0gMCkKLQkJZ290
byBpcnFfZGlzYWJsZTsKLQotCWlmIChkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgZHJtX2Ny
dGNfdmJsYW5rX2dldCgmY3J0Yy0+YmFzZSkpKQotCQlnb3RvIGlycV9kaXNhYmxlOwotCi0JLyoK
LQkgKiBXYWl0IGZvciBwc3IgdG8gaWRsZSBvdXQgYWZ0ZXIgZW5hYmxpbmcgdGhlIFZCTCBpbnRl
cnJ1cHRzCi0JICogVkJMIGludGVycnVwdHMgd2lsbCBzdGFydCB0aGUgUFNSIGV4aXQgYW5kIHBy
ZXZlbnQgYSBQU1IKLQkgKiByZS1lbnRyeSBhcyB3ZWxsLgotCSAqLwotCWlmIChpbnRlbF9wc3Jf
d2FpdF9mb3JfaWRsZShuZXdfY3J0Y19zdGF0ZSwgJnBzcl9zdGF0dXMpKQotCQlkcm1fZXJyKCZk
ZXZfcHJpdi0+ZHJtLAotCQkJIlBTUiBpZGxlIHRpbWVkIG91dCAweCV4LCBhdG9taWMgdXBkYXRl
IG1heSBmYWlsXG4iLAotCQkJcHNyX3N0YXR1cyk7Ci0KLQlsb2NhbF9pcnFfZGlzYWJsZSgpOwot
Ci0JY3J0Yy0+ZGVidWcubWluX3ZibCA9IG1pbjsKLQljcnRjLT5kZWJ1Zy5tYXhfdmJsID0gbWF4
OwotCXRyYWNlX2ludGVsX3BpcGVfdXBkYXRlX3N0YXJ0KGNydGMpOwotCi0JZm9yICg7Oykgewot
CQkvKgotCQkgKiBwcmVwYXJlX3RvX3dhaXQoKSBoYXMgYSBtZW1vcnkgYmFycmllciwgd2hpY2gg
Z3VhcmFudGVlcwotCQkgKiBvdGhlciBDUFVzIGNhbiBzZWUgdGhlIHRhc2sgc3RhdGUgdXBkYXRl
IGJ5IHRoZSB0aW1lIHdlCi0JCSAqIHJlYWQgdGhlIHNjYW5saW5lLgotCQkgKi8KLQkJcHJlcGFy
ZV90b193YWl0KHdxLCAmd2FpdCwgVEFTS19VTklOVEVSUlVQVElCTEUpOwotCi0JCXNjYW5saW5l
ID0gaW50ZWxfZ2V0X2NydGNfc2NhbmxpbmUoY3J0Yyk7Ci0JCWlmIChzY2FubGluZSA8IG1pbiB8
fCBzY2FubGluZSA+IG1heCkKLQkJCWJyZWFrOwotCi0JCWlmICghdGltZW91dCkgewotCQkJZHJt
X2VycigmZGV2X3ByaXYtPmRybSwKLQkJCQkiUG90ZW50aWFsIGF0b21pYyB1cGRhdGUgZmFpbHVy
ZSBvbiBwaXBlICVjXG4iLAotCQkJCXBpcGVfbmFtZShjcnRjLT5waXBlKSk7Ci0JCQlicmVhazsK
LQkJfQotCi0JCWxvY2FsX2lycV9lbmFibGUoKTsKLQotCQl0aW1lb3V0ID0gc2NoZWR1bGVfdGlt
ZW91dCh0aW1lb3V0KTsKLQotCQlsb2NhbF9pcnFfZGlzYWJsZSgpOwotCX0KLQotCWZpbmlzaF93
YWl0KHdxLCAmd2FpdCk7Ci0KLQlkcm1fY3J0Y192YmxhbmtfcHV0KCZjcnRjLT5iYXNlKTsKLQot
CS8qCi0JICogT24gVkxWL0NIViBEU0kgdGhlIHNjYW5saW5lIGNvdW50ZXIgd291bGQgYXBwZWFy
IHRvCi0JICogaW5jcmVtZW50IGFwcHJveC4gMS8zIG9mIGEgc2NhbmxpbmUgYmVmb3JlIHN0YXJ0
IG9mIHZibGFuay4KLQkgKiBUaGUgcmVnaXN0ZXJzIHN0aWxsIGdldCBsYXRjaGVkIGF0IHN0YXJ0
IG9mIHZibGFuayBob3dldmVyLgotCSAqIFRoaXMgbWVhbnMgd2UgbXVzdCBub3Qgd3JpdGUgYW55
IHJlZ2lzdGVycyBvbiB0aGUgZmlyc3QKLQkgKiBsaW5lIG9mIHZibGFuayAoc2luY2Ugbm90IHRo
ZSB3aG9sZSBsaW5lIGlzIGFjdHVhbGx5IGluCi0JICogdmJsYW5rKS4gQW5kIHVuZm9ydHVuYXRl
bHkgd2UgY2FuJ3QgdXNlIHRoZSBpbnRlcnJ1cHQgdG8KLQkgKiB3YWl0IGhlcmUgc2luY2UgaXQg
d2lsbCBmaXJlIHRvbyBzb29uLiBXZSBjb3VsZCB1c2UgdGhlCi0JICogZnJhbWUgc3RhcnQgaW50
ZXJydXB0IGluc3RlYWQgc2luY2UgaXQgd2lsbCBmaXJlIGFmdGVyIHRoZQotCSAqIGNyaXRpY2Fs
IHNjYW5saW5lLCBidXQgdGhhdCB3b3VsZCByZXF1aXJlIG1vcmUgY2hhbmdlcwotCSAqIGluIHRo
ZSBpbnRlcnJ1cHQgY29kZS4gU28gZm9yIG5vdyB3ZSdsbCBqdXN0IGRvIHRoZSBuYXN0eQotCSAq
IHRoaW5nIGFuZCBwb2xsIGZvciB0aGUgYmFkIHNjYW5saW5lIHRvIHBhc3MgdXMgYnkuCi0JICoK
LQkgKiBGSVhNRSBmaWd1cmUgb3V0IGlmIEJYVCsgRFNJIHN1ZmZlcnMgZnJvbSB0aGlzIGFzIHdl
bGwKLQkgKi8KLQl3aGlsZSAobmVlZF92bHZfZHNpX3dhICYmIHNjYW5saW5lID09IHZibGFua19z
dGFydCkKLQkJc2NhbmxpbmUgPSBpbnRlbF9nZXRfY3J0Y19zY2FubGluZShjcnRjKTsKLQotCWNy
dGMtPmRlYnVnLnNjYW5saW5lX3N0YXJ0ID0gc2NhbmxpbmU7Ci0JY3J0Yy0+ZGVidWcuc3RhcnRf
dmJsX3RpbWUgPSBrdGltZV9nZXQoKTsKLQljcnRjLT5kZWJ1Zy5zdGFydF92YmxfY291bnQgPSBp
bnRlbF9jcnRjX2dldF92YmxhbmtfY291bnRlcihjcnRjKTsKLQotCXRyYWNlX2ludGVsX3BpcGVf
dXBkYXRlX3ZibGFua19ldmFkZWQoY3J0Yyk7Ci0JcmV0dXJuOwotCi1pcnFfZGlzYWJsZToKLQls
b2NhbF9pcnFfZGlzYWJsZSgpOwotfQotCi0jaWYgSVNfRU5BQkxFRChDT05GSUdfRFJNX0k5MTVf
REVCVUdfVkJMQU5LX0VWQURFKQotc3RhdGljIHZvaWQgZGJnX3ZibGFua19ldmFkZShzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0Yywga3RpbWVfdCBlbmQpCi17Ci0JdTY0IGRlbHRhID0ga3RpbWVfdG9f
bnMoa3RpbWVfc3ViKGVuZCwgY3J0Yy0+ZGVidWcuc3RhcnRfdmJsX3RpbWUpKTsKLQl1bnNpZ25l
ZCBpbnQgaDsKLQotCWggPSBpbG9nMihkZWx0YSA+PiA5KTsKLQlpZiAoaCA+PSBBUlJBWV9TSVpF
KGNydGMtPmRlYnVnLnZibC50aW1lcykpCi0JCWggPSBBUlJBWV9TSVpFKGNydGMtPmRlYnVnLnZi
bC50aW1lcykgLSAxOwotCWNydGMtPmRlYnVnLnZibC50aW1lc1toXSsrOwotCi0JY3J0Yy0+ZGVi
dWcudmJsLnN1bSArPSBkZWx0YTsKLQlpZiAoIWNydGMtPmRlYnVnLnZibC5taW4gfHwgZGVsdGEg
PCBjcnRjLT5kZWJ1Zy52YmwubWluKQotCQljcnRjLT5kZWJ1Zy52YmwubWluID0gZGVsdGE7Ci0J
aWYgKGRlbHRhID4gY3J0Yy0+ZGVidWcudmJsLm1heCkKLQkJY3J0Yy0+ZGVidWcudmJsLm1heCA9
IGRlbHRhOwotCi0JaWYgKGRlbHRhID4gMTAwMCAqIFZCTEFOS19FVkFTSU9OX1RJTUVfVVMpIHsK
LQkJZHJtX2RiZ19rbXMoY3J0Yy0+YmFzZS5kZXYsCi0JCQkgICAgIkF0b21pYyB1cGRhdGUgb24g
cGlwZSAoJWMpIHRvb2sgJWxsZCB1cywgbWF4IHRpbWUgdW5kZXIgZXZhc2lvbiBpcyAldSB1c1xu
IiwKLQkJCSAgICBwaXBlX25hbWUoY3J0Yy0+cGlwZSksCi0JCQkgICAgZGl2X3U2NChkZWx0YSwg
MTAwMCksCi0JCQkgICAgVkJMQU5LX0VWQVNJT05fVElNRV9VUyk7Ci0JCWNydGMtPmRlYnVnLnZi
bC5vdmVyKys7Ci0JfQotfQotI2Vsc2UKLXN0YXRpYyB2b2lkIGRiZ192YmxhbmtfZXZhZGUoc3Ry
dWN0IGludGVsX2NydGMgKmNydGMsIGt0aW1lX3QgZW5kKSB7fQotI2VuZGlmCi0KLS8qKgotICog
aW50ZWxfcGlwZV91cGRhdGVfZW5kKCkgLSBlbmQgdXBkYXRlIG9mIGEgc2V0IG9mIGRpc3BsYXkg
cmVnaXN0ZXJzCi0gKiBAbmV3X2NydGNfc3RhdGU6IHRoZSBuZXcgY3J0YyBzdGF0ZQotICoKLSAq
IE1hcmsgdGhlIGVuZCBvZiBhbiB1cGRhdGUgc3RhcnRlZCB3aXRoIGludGVsX3BpcGVfdXBkYXRl
X3N0YXJ0KCkuIFRoaXMKLSAqIHJlLWVuYWJsZXMgaW50ZXJydXB0cyBhbmQgdmVyaWZpZXMgdGhl
IHVwZGF0ZSB3YXMgYWN0dWFsbHkgY29tcGxldGVkCi0gKiBiZWZvcmUgYSB2YmxhbmsuCi0gKi8K
LXZvaWQgaW50ZWxfcGlwZV91cGRhdGVfZW5kKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdf
Y3J0Y19zdGF0ZSkKLXsKLQlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMo
bmV3X2NydGNfc3RhdGUtPnVhcGkuY3J0Yyk7Ci0JZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBl
OwotCWludCBzY2FubGluZV9lbmQgPSBpbnRlbF9nZXRfY3J0Y19zY2FubGluZShjcnRjKTsKLQl1
MzIgZW5kX3ZibF9jb3VudCA9IGludGVsX2NydGNfZ2V0X3ZibGFua19jb3VudGVyKGNydGMpOwot
CWt0aW1lX3QgZW5kX3ZibF90aW1lID0ga3RpbWVfZ2V0KCk7Ci0Jc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7Ci0KLQlpZiAobmV3X2Ny
dGNfc3RhdGUtPnVhcGkuYXN5bmNfZmxpcCkKLQkJcmV0dXJuOwotCi0JdHJhY2VfaW50ZWxfcGlw
ZV91cGRhdGVfZW5kKGNydGMsIGVuZF92YmxfY291bnQsIHNjYW5saW5lX2VuZCk7Ci0KLQkvKgot
CSAqIEluY2FzZSBvZiBtaXBpIGRzaSBjb21tYW5kIG1vZGUsIHdlIG5lZWQgdG8gc2V0IGZyYW1l
IHVwZGF0ZQotCSAqIHJlcXVlc3QgZm9yIGV2ZXJ5IGNvbW1pdC4KLQkgKi8KLQlpZiAoSU5URUxf
R0VOKGRldl9wcml2KSA+PSAxMSAmJgotCSAgICBpbnRlbF9jcnRjX2hhc190eXBlKG5ld19jcnRj
X3N0YXRlLCBJTlRFTF9PVVRQVVRfRFNJKSkKLQkJaWNsX2RzaV9mcmFtZV91cGRhdGUobmV3X2Ny
dGNfc3RhdGUpOwotCi0JLyogV2UncmUgc3RpbGwgaW4gdGhlIHZibGFuay1ldmFkZSBjcml0aWNh
bCBzZWN0aW9uLCB0aGlzIGNhbid0IHJhY2UuCi0JICogV291bGQgYmUgc2xpZ2h0bHkgbmljZSB0
byBqdXN0IGdyYWIgdGhlIHZibGFuayBjb3VudCBhbmQgYXJtIHRoZQotCSAqIGV2ZW50IG91dHNp
ZGUgb2YgdGhlIGNyaXRpY2FsIHNlY3Rpb24gLSB0aGUgc3BpbmxvY2sgbWlnaHQgc3BpbiBmb3Ig
YQotCSAqIHdoaWxlIC4uLiAqLwotCWlmIChuZXdfY3J0Y19zdGF0ZS0+dWFwaS5ldmVudCkgewot
CQlkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwKLQkJCSAgICBkcm1fY3J0Y192YmxhbmtfZ2V0
KCZjcnRjLT5iYXNlKSAhPSAwKTsKLQotCQlzcGluX2xvY2soJmNydGMtPmJhc2UuZGV2LT5ldmVu
dF9sb2NrKTsKLQkJZHJtX2NydGNfYXJtX3ZibGFua19ldmVudCgmY3J0Yy0+YmFzZSwKLQkJCQkg
ICAgICAgICAgbmV3X2NydGNfc3RhdGUtPnVhcGkuZXZlbnQpOwotCQlzcGluX3VubG9jaygmY3J0
Yy0+YmFzZS5kZXYtPmV2ZW50X2xvY2spOwotCi0JCW5ld19jcnRjX3N0YXRlLT51YXBpLmV2ZW50
ID0gTlVMTDsKLQl9Ci0KLQlsb2NhbF9pcnFfZW5hYmxlKCk7Ci0KLQlpZiAoaW50ZWxfdmdwdV9h
Y3RpdmUoZGV2X3ByaXYpKQotCQlyZXR1cm47Ci0KLQlpZiAoY3J0Yy0+ZGVidWcuc3RhcnRfdmJs
X2NvdW50ICYmCi0JICAgIGNydGMtPmRlYnVnLnN0YXJ0X3ZibF9jb3VudCAhPSBlbmRfdmJsX2Nv
dW50KSB7Ci0JCWRybV9lcnIoJmRldl9wcml2LT5kcm0sCi0JCQkiQXRvbWljIHVwZGF0ZSBmYWls
dXJlIG9uIHBpcGUgJWMgKHN0YXJ0PSV1IGVuZD0ldSkgdGltZSAlbGxkIHVzLCBtaW4gJWQsIG1h
eCAlZCwgc2NhbmxpbmUgc3RhcnQgJWQsIGVuZCAlZFxuIiwKLQkJCXBpcGVfbmFtZShwaXBlKSwg
Y3J0Yy0+ZGVidWcuc3RhcnRfdmJsX2NvdW50LAotCQkJZW5kX3ZibF9jb3VudCwKLQkJCWt0aW1l
X3VzX2RlbHRhKGVuZF92YmxfdGltZSwKLQkJCQkgICAgICAgY3J0Yy0+ZGVidWcuc3RhcnRfdmJs
X3RpbWUpLAotCQkJY3J0Yy0+ZGVidWcubWluX3ZibCwgY3J0Yy0+ZGVidWcubWF4X3ZibCwKLQkJ
CWNydGMtPmRlYnVnLnNjYW5saW5lX3N0YXJ0LCBzY2FubGluZV9lbmQpOwotCX0KLQotCWRiZ192
YmxhbmtfZXZhZGUoY3J0YywgZW5kX3ZibF90aW1lKTsKLX0KLQogaW50IGludGVsX3BsYW5lX2No
ZWNrX3N0cmlkZShjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQog
ewogCXN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUgPSB0b19pbnRlbF9wbGFuZShwbGFuZV9zdGF0
ZS0+dWFwaS5wbGFuZSk7Ci0tIAoyLjI3LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
