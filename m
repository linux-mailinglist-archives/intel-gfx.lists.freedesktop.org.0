Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 454CCA6A02
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 15:37:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86C538951B;
	Tue,  3 Sep 2019 13:37:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69D568951B
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2019 13:37:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 06:37:45 -0700
X-IronPort-AV: E=Sophos;i="5.64,463,1559545200"; d="scan'208";a="183556492"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 06:37:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: linux-kernel@vger.kernel.org
Date: Tue,  3 Sep 2019 16:37:31 +0300
Message-Id: <20190903133731.2094-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190903133731.2094-1-jani.nikula@intel.com>
References: <20190903133731.2094-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 2/2] drm: convert to use yesno(), onoff(),
 enableddisabled(), plural() helpers
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
Cc: linux-usb@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 jani.nikula@intel.com, netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Julia Lawall <julia.lawall@lip6.fr>, Vishal Kulkarni <vishal@chelsio.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VEhJUyBJUyBOT1QgRk9SIE1FUkdJTkc7IERFTU8gRk9SIFBSRVZJT1VTIFBBVENIIE9OTFkhCgpG
dXJ0aGVyIGNvbnZlcnNpb24gc2hvdWxkIGJlIGRvbmUgaW5jcmVtZW50YWxseSBhbmQgYnkKZHJp
dmVyL3N1YnN5c3RlbS4gVGhpcyBoZXJlIGlzIHRoZSByZXN1bHQgb2YgcnVubmluZyB0aGUgZm9s
bG93aW5nIG9uCnRoZSBiZWxvdyBjb2NjaSBwYXRjaDoKCiQgc3BhdGNoIC0tc3AtZmlsZSB5ZXNu
by5jb2NjaSAtLWluLXBsYWNlIC0tZGlyIGRyaXZlcnMvZ3B1L2RybQoKSSB3aXNoIEkga25ldyBo
b3cgdG8gbm90IGR1cGxpY2F0ZSBzdHVmZiBpbiB0aGUgY29jY2kgcGF0Y2ggc28gbXVjaC4uLgoK
QGVuYWJsZWRkaXNhYmxlZEAKZXhwcmVzc2lvbiBFOwpAQAooCi0gKEUpID8gImVuYWJsZWQiIDog
ImRpc2FibGVkIgorIGVuYWJsZWRkaXNhYmxlZChFKQp8Ci0gRSA/ICJlbmFibGVkIiA6ICJkaXNh
YmxlZCIKKyBlbmFibGVkZGlzYWJsZWQoRSkKKQoKQHJldmVyc2VfZW5hYmxlZGRpc2FibGVkQApl
eHByZXNzaW9uIEEsIEI7CkBACigKLSAoQSA9PSBCKSA/ICJkaXNhYmxlZCIgOiAiZW5hYmxlZCIK
KyBlbmFibGVkZGlzYWJsZWQoQSAhPSBCKQp8Ci0gKEEgIT0gQikgPyAiZGlzYWJsZWQiIDogImVu
YWJsZWQiCisgZW5hYmxlZGRpc2FibGVkKEEgPT0gQikKfAotIEEgPT0gQiA/ICJkaXNhYmxlZCIg
OiAiZW5hYmxlZCIKKyBlbmFibGVkZGlzYWJsZWQoQSAhPSBCKQp8Ci0gQSAhPSBCID8gImRpc2Fi
bGVkIiA6ICJlbmFibGVkIgorIGVuYWJsZWRkaXNhYmxlZChBID09IEIpCnwKLSBBID8gImRpc2Fi
bGVkIiA6ICJlbmFibGVkIgorIGVuYWJsZWRkaXNhYmxlZCghQSkKKQoKQHllc25vQApleHByZXNz
aW9uIEU7CkBACigKLSAoRSkgPyAieWVzIiA6ICJubyIKKyB5ZXNubyhFKQp8Ci0gRSA/ICJ5ZXMi
IDogIm5vIgorIHllc25vKEUpCikKCkByZXZlcnNlX3llc25vQApleHByZXNzaW9uIEEsIEI7CkBA
CigKLSAoQSA9PSBCKSA/ICJubyIgOiAieWVzIgorIHllc25vKEEgIT0gQikKfAotIChBICE9IEIp
ID8gIm5vIiA6ICJ5ZXMiCisgeWVzbm8oQSA9PSBCKQp8Ci0gQSA9PSBCID8gIm5vIiA6ICJ5ZXMi
CisgeWVzbm8oQSAhPSBCKQp8Ci0gQSAhPSBCID8gIm5vIiA6ICJ5ZXMiCisgeWVzbm8oQSA9PSBC
KQp8Ci0gQSA/ICJubyIgOiAieWVzIgorIHllc25vKCFBKQopCgpAb25vZmZACmV4cHJlc3Npb24g
RTsKQEAKKAotIChFKSA/ICJvbiIgOiAib2ZmIgorIG9ub2ZmKEUpCnwKLSBFID8gIm9uIiA6ICJv
ZmYiCisgb25vZmYoRSkKKQoKQHJldmVyc2Vfb25vZmZACmV4cHJlc3Npb24gQSwgQjsKQEAKKAot
IChBID09IEIpID8gIm9mZiIgOiAib24iCisgb25vZmYoQSAhPSBCKQp8Ci0gKEEgIT0gQikgPyAi
b2ZmIiA6ICJvbiIKKyBvbm9mZihBID09IEIpCnwKLSBBID09IEIgPyAib2ZmIiA6ICJvbiIKKyBv
bm9mZihBICE9IEIpCnwKLSBBICE9IEIgPyAib2ZmIiA6ICJvbiIKKyBvbm9mZihBID09IEIpCnwK
LSBBID8gIm9mZiIgOiAib24iCisgb25vZmYoIUEpCikKCkBwbHVyYWxACmV4cHJlc3Npb24gRTsK
QEAKKAotIChFID4gMSkgPyAicyIgOiAiIgorIHBsdXJhbChFKQp8Ci0gRSA+IDEgPyAicyIgOiAi
IgorIHBsdXJhbChFKQp8Ci0gKEUgPT0gMSkgPyAiIiA6ICJzIgorIHBsdXJhbChFKQp8Ci0gRSA9
PSAxID8gIiIgOiAicyIKKyBwbHVyYWwoRSkKKQoKQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFz
LmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZp
QGludGVsLmNvbT4KQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6IFZpc2hh
bCBLdWxrYXJuaSA8dmlzaGFsQGNoZWxzaW8uY29tPgpDYzogbmV0ZGV2QHZnZXIua2VybmVsLm9y
ZwpDYzogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4KQ2M6
IGxpbnV4LXVzYkB2Z2VyLmtlcm5lbC5vcmcKQ2M6IEFuZHJldyBNb3J0b24gPGFrcG1AbGludXgt
Zm91bmRhdGlvbi5vcmc+CkNjOiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnCkNjOiBKdWxp
YSBMYXdhbGwgPGp1bGlhLmxhd2FsbEBsaXA2LmZyPgpTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3Vs
YSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV9hY3BpLmMgICAgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2F0b20uYyAgICAgICAgICAgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9hbWQv
cG93ZXJwbGF5L2h3bWdyL3ZlZ2ExMF9od21nci5jIHwgIDMgKystCiBkcml2ZXJzL2dwdS9kcm0v
YnJpZGdlL3RjMzU4NzY3LmMgICAgICAgICAgICAgICAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9k
cm0vZHJtX2NsaWVudF9tb2Rlc2V0LmMgICAgICAgICAgICAgICB8ICAyICstCiBkcml2ZXJzL2dw
dS9kcm0vZHJtX2RwX2hlbHBlci5jICAgICAgICAgICAgICAgICAgICB8ICAyICstCiBkcml2ZXJz
L2dwdS9kcm0vZHJtX2VkaWRfbG9hZC5jICAgICAgICAgICAgICAgICAgICB8ICAyICstCiBkcml2
ZXJzL2dwdS9kcm0vZHJtX2dlbS5jICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAyICstCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgICAgICB8ICAyICst
CiBkcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2FjcGkuYyAgICAgICAgICAgICB8ICAy
ICstCiBkcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9udmttL3N1YmRldi9pMmMvYXV4LmMgICAgICB8
ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vb21hcGRybS9kc3MvZGlzcGMuYyAgICAgICAgICAgICAg
ICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vb21hcGRybS9kc3MvZHNpLmMgICAgICAgICAgICAg
ICAgICB8ICA2ICsrLS0tLQogZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfZGlzcGxheS5jICAgICAg
ICAgICAgICAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9hdG9tLmMgICAgICAg
ICAgICAgICAgICAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fYWNw
aS5jICAgICAgICAgICAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL3N0aS9zdGlfaGRhLmMg
ICAgICAgICAgICAgICAgICAgICAgfCAgNCArKy0tCiBkcml2ZXJzL2dwdS9kcm0vc3RpL3N0aV90
dm91dC5jICAgICAgICAgICAgICAgICAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vc3VuNGkv
c3VuNGlfYmFja2VuZC5jICAgICAgICAgICAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vc3Vu
NGkvc3VuOGlfdWlfbGF5ZXIuYyAgICAgICAgICAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0v
djNkL3YzZF9kZWJ1Z2ZzLmMgICAgICAgICAgICAgICAgICB8IDEwICsrKysrLS0tLS0KIGRyaXZl
cnMvZ3B1L2RybS92aXJ0aW8vdmlydGdwdV9kZWJ1Z2ZzLmMgICAgICAgICAgIHwgIDIgKy0KIDIy
IGZpbGVzIGNoYW5nZWQsIDI5IGluc2VydGlvbnMoKyksIDMwIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9hY3BpLmMgYi9kcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfYWNwaS5jCmluZGV4IDFlNDEzNjdlZjc0ZS4uNjVm
MGVlMGY0Y2NkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
YWNwaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9hY3BpLmMKQEAg
LTI5Miw3ICsyOTIsNyBAQCBzdGF0aWMgaW50IGFtZGdwdV9hdGlmX2dldF9ub3RpZmljYXRpb25f
cGFyYW1zKHN0cnVjdCBhbWRncHVfYXRpZiAqYXRpZikKIAogb3V0OgogCURSTV9ERUJVR19EUklW
RVIoIk5vdGlmaWNhdGlvbiAlcywgY29tbWFuZCBjb2RlID0gJSN4XG4iLAotCQkJKG4tPmVuYWJs
ZWQgPyAiZW5hYmxlZCIgOiAiZGlzYWJsZWQiKSwKKwkJCShlbmFibGVkZGlzYWJsZWQobi0+ZW5h
YmxlZCkpLAogCQkJbi0+Y29tbWFuZF9jb2RlKTsKIAlrZnJlZShpbmZvKTsKIAlyZXR1cm4gZXJy
OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYXRvbS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvYXRvbS5jCmluZGV4IGRkMzBmNGU2MWE4Yy4uYjU5YTgzZmFl
ODUzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hdG9tLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYXRvbS5jCkBAIC03MzcsNyArNzM3LDcgQEAgc3Rh
dGljIHZvaWQgYXRvbV9vcF9qdW1wKGF0b21fZXhlY19jb250ZXh0ICpjdHgsIGludCAqcHRyLCBp
bnQgYXJnKQogCQlicmVhazsKIAl9CiAJaWYgKGFyZyAhPSBBVE9NX0NPTkRfQUxXQVlTKQotCQlT
REVCVUcoIiAgIHRha2VuOiAlc1xuIiwgZXhlY3V0ZSA/ICJ5ZXMiIDogIm5vIik7CisJCVNERUJV
RygiICAgdGFrZW46ICVzXG4iLCB5ZXNubyhleGVjdXRlKSk7CiAJU0RFQlVHKCIgICB0YXJnZXQ6
IDB4JTA0WFxuIiwgdGFyZ2V0KTsKIAlpZiAoZXhlY3V0ZSkgewogCQlpZiAoY3R4LT5sYXN0X2p1
bXAgPT0gKGN0eC0+c3RhcnQgKyB0YXJnZXQpKSB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vYW1kL3Bvd2VycGxheS9od21nci92ZWdhMTBfaHdtZ3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9h
bWQvcG93ZXJwbGF5L2h3bWdyL3ZlZ2ExMF9od21nci5jCmluZGV4IDNiZThlYjIxZmQ2ZS4uMWUw
MjVjYmQ1ZTgxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL3Bvd2VycGxheS9od21n
ci92ZWdhMTBfaHdtZ3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL3Bvd2VycGxheS9od21n
ci92ZWdhMTBfaHdtZ3IuYwpAQCAtMjkxOCw3ICsyOTE4LDggQEAgc3RhdGljIGludCB2ZWdhMTBf
ZW5hYmxlX2Rpc2FibGVfUENDX2xpbWl0X2ZlYXR1cmUoc3RydWN0IHBwX2h3bWdyICpod21nciwg
Ym9vbAogCiAJaWYgKGRhdGEtPnNtdV9mZWF0dXJlc1tHTkxEX1BDQ19MSU1JVF0uc3VwcG9ydGVk
KSB7CiAJCWlmIChlbmFibGUgPT0gZGF0YS0+c211X2ZlYXR1cmVzW0dOTERfUENDX0xJTUlUXS5l
bmFibGVkKQotCQkJcHJfaW5mbygiR05MRF9QQ0NfTElNSVQgaGFzIGJlZW4gJXMgXG4iLCBlbmFi
bGUgPyAiZW5hYmxlZCIgOiAiZGlzYWJsZWQiKTsKKwkJCXByX2luZm8oIkdOTERfUENDX0xJTUlU
IGhhcyBiZWVuICVzIFxuIiwKKwkJCQllbmFibGVkZGlzYWJsZWQoZW5hYmxlKSk7CiAJCVBQX0FT
U0VSVF9XSVRIX0NPREUoIXZlZ2ExMF9lbmFibGVfc21jX2ZlYXR1cmVzKGh3bWdyLAogCQkJCWVu
YWJsZSwgZGF0YS0+c211X2ZlYXR1cmVzW0dOTERfUENDX0xJTUlUXS5zbXVfZmVhdHVyZV9iaXRt
YXApLAogCQkJCSJBdHRlbXB0IHRvIEVuYWJsZSBQQ0MgTGltaXQgZmVhdHVyZSBGYWlsZWQhIiwK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvdGMzNTg3NjcuYyBiL2RyaXZlcnMv
Z3B1L2RybS9icmlkZ2UvdGMzNTg3NjcuYwppbmRleCAxM2FkZTI4YTM2YTguLmRlYmNlMzE2YTAy
ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS90YzM1ODc2Ny5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9icmlkZ2UvdGMzNTg3NjcuYwpAQCAtNjUzLDcgKzY1Myw3IEBAIHN0YXRp
YyBpbnQgdGNfZ2V0X2Rpc3BsYXlfcHJvcHMoc3RydWN0IHRjX2RhdGEgKnRjKQogCQkiZW5oYW5j
ZWQiIDogIm5vbi1lbmhhbmNlZCIpOwogCWRldl9kYmcodGMtPmRldiwgIkRvd25zcHJlYWQ6ICVz
LCBzY3JhbWJsZXI6ICVzXG4iLAogCQl0Yy0+bGluay5zcHJlYWQgPyAiMC41JSIgOiAiMC4wJSIs
Ci0JCXRjLT5saW5rLnNjcmFtYmxlcl9kaXMgPyAiZGlzYWJsZWQiIDogImVuYWJsZWQiKTsKKwkJ
ZW5hYmxlZGRpc2FibGVkKCF0Yy0+bGluay5zY3JhbWJsZXJfZGlzKSk7CiAJZGV2X2RiZyh0Yy0+
ZGV2LCAiRGlzcGxheSBBU1NSOiAlZCwgVEMzNTg3NjcgQVNTUjogJWRcbiIsCiAJCXRjLT5saW5r
LmFzc3IsIHRjLT5hc3NyKTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9jbGll
bnRfbW9kZXNldC5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9jbGllbnRfbW9kZXNldC5jCmluZGV4
IGM4OTIyYjdjYWMwOS4uMjY0ZmEzYTlmZmQ0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
ZHJtX2NsaWVudF9tb2Rlc2V0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9jbGllbnRfbW9k
ZXNldC5jCkBAIC0yMTMsNyArMjEzLDcgQEAgc3RhdGljIHZvaWQgZHJtX2NsaWVudF9jb25uZWN0
b3JzX2VuYWJsZWQoc3RydWN0IGRybV9jb25uZWN0b3IgKipjb25uZWN0b3JzLAogCQljb25uZWN0
b3IgPSBjb25uZWN0b3JzW2ldOwogCQllbmFibGVkW2ldID0gZHJtX2Nvbm5lY3Rvcl9lbmFibGVk
KGNvbm5lY3RvciwgdHJ1ZSk7CiAJCURSTV9ERUJVR19LTVMoImNvbm5lY3RvciAlZCBlbmFibGVk
PyAlc1xuIiwgY29ubmVjdG9yLT5iYXNlLmlkLAotCQkJICAgICAgY29ubmVjdG9yLT5kaXNwbGF5
X2luZm8ubm9uX2Rlc2t0b3AgPyAibm9uIGRlc2t0b3AiIDogZW5hYmxlZFtpXSA/ICJ5ZXMiIDog
Im5vIik7CisJCQkgICAgICBjb25uZWN0b3ItPmRpc3BsYXlfaW5mby5ub25fZGVza3RvcCA/ICJu
b24gZGVza3RvcCIgOiB5ZXNubyhlbmFibGVkW2ldKSk7CiAKIAkJYW55X2VuYWJsZWQgfD0gZW5h
YmxlZFtpXTsKIAl9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX2hlbHBlci5j
IGIvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9oZWxwZXIuYwppbmRleCAwYjk5NGQwODNhODkuLmZh
YmRiMzIyMmU4NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9oZWxwZXIuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX2hlbHBlci5jCkBAIC02MDAsNyArNjAwLDcgQEAg
dm9pZCBkcm1fZHBfZG93bnN0cmVhbV9kZWJ1ZyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sCiAJCQkgICAg
IERQX0RXTl9TVFJNX1BPUlRfUFJFU0VOVDsKIAogCXNlcV9wcmludGYobSwgIlx0RFAgYnJhbmNo
IGRldmljZSBwcmVzZW50OiAlc1xuIiwKLQkJICAgYnJhbmNoX2RldmljZSA/ICJ5ZXMiIDogIm5v
Iik7CisJCSAgIHllc25vKGJyYW5jaF9kZXZpY2UpKTsKIAogCWlmICghYnJhbmNoX2RldmljZSkK
IAkJcmV0dXJuOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9lZGlkX2xvYWQuYyBi
L2RyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZF9sb2FkLmMKaW5kZXggZDM4YjNiMjU1OTI2Li5hNWFm
MDAyYWRmNzMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZF9sb2FkLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2RybV9lZGlkX2xvYWQuYwpAQCAtMjU1LDcgKzI1NSw3IEBAIHN0
YXRpYyB2b2lkICplZGlkX2xvYWQoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwgY29u
c3QgY2hhciAqbmFtZSwKIAogCURSTV9JTkZPKCJHb3QgJXMgRURJRCBiYXNlIGJsb2NrIGFuZCAl
ZCBleHRlbnNpb24lcyBmcm9tICIKIAkgICAgIlwiJXNcIiBmb3IgY29ubmVjdG9yIFwiJXNcIlxu
IiwgKGJ1aWx0aW4gPj0gMCkgPyAiYnVpbHQtaW4iIDoKLQkgICAgImV4dGVybmFsIiwgdmFsaWRf
ZXh0ZW5zaW9ucywgdmFsaWRfZXh0ZW5zaW9ucyA9PSAxID8gIiIgOiAicyIsCisJICAgICJleHRl
cm5hbCIsIHZhbGlkX2V4dGVuc2lvbnMsIHBsdXJhbCh2YWxpZF9leHRlbnNpb25zKSwKIAkgICAg
bmFtZSwgY29ubmVjdG9yX25hbWUpOwogCiBvdXQ6CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vZHJtX2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYwppbmRleCBhOGM0NDY4ZjAz
ZDkuLjUzYzJmNTcwNWM3OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jCkBAIC0xMjA4LDcgKzEyMDgsNyBAQCB2b2lk
IGRybV9nZW1fcHJpbnRfaW5mbyhzdHJ1Y3QgZHJtX3ByaW50ZXIgKnAsIHVuc2lnbmVkIGludCBp
bmRlbnQsCiAJCQkgIGRybV92bWFfbm9kZV9zdGFydCgmb2JqLT52bWFfbm9kZSkpOwogCWRybV9w
cmludGZfaW5kZW50KHAsIGluZGVudCwgInNpemU9JXp1XG4iLCBvYmotPnNpemUpOwogCWRybV9w
cmludGZfaW5kZW50KHAsIGluZGVudCwgImltcG9ydGVkPSVzXG4iLAotCQkJICBvYmotPmltcG9y
dF9hdHRhY2ggPyAieWVzIiA6ICJubyIpOworCQkJICB5ZXNubyhvYmotPmltcG9ydF9hdHRhY2gp
KTsKIAogCWlmIChvYmotPmZ1bmNzICYmIG9iai0+ZnVuY3MtPnByaW50X2luZm8pCiAJCW9iai0+
ZnVuY3MtPnByaW50X2luZm8ocCwgaW5kZW50LCBvYmopOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCA1OTJiOTI3ODJmYWIuLjVkYTM0M2E3NTNi
MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAg
LTE2MDA2LDcgKzE2MDA2LDcgQEAgaW50IGludGVsX21vZGVzZXRfaW5pdChzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2KQogCiAJRFJNX0RFQlVHX0tNUygiJWQgZGlzcGxheSBwaXBlJXMgYXZhaWxhYmxl
LlxuIiwKIAkJICAgICAgSU5URUxfSU5GTyhkZXZfcHJpdiktPm51bV9waXBlcywKLQkJICAgICAg
SU5URUxfSU5GTyhkZXZfcHJpdiktPm51bV9waXBlcyA+IDEgPyAicyIgOiAiIik7CisJCSAgICAg
IHBsdXJhbChJTlRFTF9JTkZPKGRldl9wcml2KS0+bnVtX3BpcGVzKSk7CiAKIAlmb3JfZWFjaF9w
aXBlKGRldl9wcml2LCBwaXBlKSB7CiAJCXJldCA9IGludGVsX2NydGNfaW5pdChkZXZfcHJpdiwg
cGlwZSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2FjcGku
YyBiL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfYWNwaS5jCmluZGV4IGZlM2ExMDI1
NWMzNi4uZWVjNjhlYmU3Y2FkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9u
b3V2ZWF1X2FjcGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2FjcGku
YwpAQCAtMjc3LDcgKzI3Nyw3IEBAIHN0YXRpYyB2b2lkIG5vdXZlYXVfZHNtX3BjaV9wcm9iZShz
dHJ1Y3QgcGNpX2RldiAqcGRldiwgYWNwaV9oYW5kbGUgKmRoYW5kbGVfb3V0CiAJCW5vdXZlYXVf
b3B0aW11c19kc20oZGhhbmRsZSwgTk9VVkVBVV9EU01fT1BUSU1VU19DQVBTLCAwLAogCQkJCSAg
ICAmcmVzdWx0KTsKIAkJZGV2X2luZm8oJnBkZXYtPmRldiwgIm9wdGltdXMgY2FwYWJpbGl0aWVz
OiAlcywgc3RhdHVzICVzJXNcbiIsCi0JCQkgKHJlc3VsdCAmIE9QVElNVVNfRU5BQkxFRCkgPyAi
ZW5hYmxlZCIgOiAiZGlzYWJsZWQiLAorCQkJIGVuYWJsZWRkaXNhYmxlZChyZXN1bHQgJiBPUFRJ
TVVTX0VOQUJMRUQpLAogCQkJIChyZXN1bHQgJiBPUFRJTVVTX0RZTkFNSUNfUFdSX0NBUCkgPyAi
ZHluYW1pYyBwb3dlciwgIiA6ICIiLAogCQkJIChyZXN1bHQgJiBPUFRJTVVTX0hEQV9DT0RFQ19N
QVNLKSA/ICJoZGEgYmlvcyBjb2RlYyBzdXBwb3J0ZWQiIDogIiIpOwogCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vbm91dmVhdS9udmttL3N1YmRldi9pMmMvYXV4LmMgYi9kcml2ZXJzL2dw
dS9kcm0vbm91dmVhdS9udmttL3N1YmRldi9pMmMvYXV4LmMKaW5kZXggYTExNjM3YjBmNmNjLi4w
NWM3MzM1OThmNGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L252a20vc3Vi
ZGV2L2kyYy9hdXguYworKysgYi9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9udmttL3N1YmRldi9p
MmMvYXV4LmMKQEAgLTk0LDcgKzk0LDcgQEAgdm9pZAogbnZrbV9pMmNfYXV4X21vbml0b3Ioc3Ry
dWN0IG52a21faTJjX2F1eCAqYXV4LCBib29sIG1vbml0b3IpCiB7CiAJc3RydWN0IG52a21faTJj
X3BhZCAqcGFkID0gYXV4LT5wYWQ7Ci0JQVVYX1RSQUNFKGF1eCwgIm1vbml0b3I6ICVzIiwgbW9u
aXRvciA/ICJ5ZXMiIDogIm5vIik7CisJQVVYX1RSQUNFKGF1eCwgIm1vbml0b3I6ICVzIiwgeWVz
bm8obW9uaXRvcikpOwogCWlmIChtb25pdG9yKQogCQludmttX2kyY19wYWRfbW9kZShwYWQsIE5W
S01fSTJDX1BBRF9BVVgpOwogCWVsc2UKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9vbWFw
ZHJtL2Rzcy9kaXNwYy5jIGIvZHJpdmVycy9ncHUvZHJtL29tYXBkcm0vZHNzL2Rpc3BjLmMKaW5k
ZXggNzg1YzU1NDYwNjdhLi45NzY2MTAxZDhhYjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9vbWFwZHJtL2Rzcy9kaXNwYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9vbWFwZHJtL2Rzcy9k
aXNwYy5jCkBAIC0xNTA2LDcgKzE1MDYsNyBAQCB2b2lkIGRpc3BjX2VuYWJsZV9maWZvbWVyZ2Uo
c3RydWN0IGRpc3BjX2RldmljZSAqZGlzcGMsIGJvb2wgZW5hYmxlKQogCQlyZXR1cm47CiAJfQog
Ci0JRFNTREJHKCJGSUZPIG1lcmdlICVzXG4iLCBlbmFibGUgPyAiZW5hYmxlZCIgOiAiZGlzYWJs
ZWQiKTsKKwlEU1NEQkcoIkZJRk8gbWVyZ2UgJXNcbiIsIGVuYWJsZWRkaXNhYmxlZChlbmFibGUp
KTsKIAlSRUdfRkxEX01PRChkaXNwYywgRElTUENfQ09ORklHLCBlbmFibGUgPyAxIDogMCwgMTQs
IDE0KTsKIH0KIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL29tYXBkcm0vZHNzL2RzaS5j
IGIvZHJpdmVycy9ncHUvZHJtL29tYXBkcm0vZHNzL2RzaS5jCmluZGV4IGIzMGZjYWEyZDBmNS4u
NjcxYWU4OGNhYmJhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vb21hcGRybS9kc3MvZHNp
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL29tYXBkcm0vZHNzL2RzaS5jCkBAIC0xNDA4LDggKzE0
MDgsNyBAQCBzdGF0aWMgaW50IGRzaV9kdW1wX2RzaV9jbG9ja3Moc3RydWN0IHNlcV9maWxlICpz
LCB2b2lkICpwKQogCQkJCURTU19DTEtfU1JDX1BMTDJfMSksCiAJCQljaW5mby0+Y2xrb3V0W0hT
RElWX0RJU1BDXSwKIAkJCWNpbmZvLT5tWFtIU0RJVl9ESVNQQ10sCi0JCQlkaXNwY19jbGtfc3Jj
ID09IERTU19DTEtfU1JDX0ZDSyA/Ci0JCQkib2ZmIiA6ICJvbiIpOworCQkJb25vZmYoZGlzcGNf
Y2xrX3NyYyAhPSBEU1NfQ0xLX1NSQ19GQ0spKTsKIAogCXNlcV9wcmludGYocywJIkRTSV9QTExf
SFNESVZfRFNJICglcylcdCUtMTZsdW1fZHNpICV1XHQoJXMpXG4iLAogCQkJZHNzX2dldF9jbGtf
c291cmNlX25hbWUoZHNpX21vZHVsZSA9PSAwID8KQEAgLTE0MTcsOCArMTQxNiw3IEBAIHN0YXRp
YyBpbnQgZHNpX2R1bXBfZHNpX2Nsb2NrcyhzdHJ1Y3Qgc2VxX2ZpbGUgKnMsIHZvaWQgKnApCiAJ
CQkJRFNTX0NMS19TUkNfUExMMl8yKSwKIAkJCWNpbmZvLT5jbGtvdXRbSFNESVZfRFNJXSwKIAkJ
CWNpbmZvLT5tWFtIU0RJVl9EU0ldLAotCQkJZHNpX2Nsa19zcmMgPT0gRFNTX0NMS19TUkNfRkNL
ID8KLQkJCSJvZmYiIDogIm9uIik7CisJCQlvbm9mZihkc2lfY2xrX3NyYyAhPSBEU1NfQ0xLX1NS
Q19GQ0spKTsKIAogCXNlcV9wcmludGYocywJIi0gRFNJJWQgLVxuIiwgZHNpX21vZHVsZSArIDEp
OwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9kaXNwbGF5LmMgYi9kcml2
ZXJzL2dwdS9kcm0vcXhsL3F4bF9kaXNwbGF5LmMKaW5kZXggOGIzMTllYmJiMGZiLi5iYWUxZDEy
NzdmMjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9xeGwvcXhsX2Rpc3BsYXkuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9kaXNwbGF5LmMKQEAgLTM1NSw3ICszNTUsNyBAQCBz
dGF0aWMgdm9pZCBxeGxfY3J0Y191cGRhdGVfbW9uaXRvcnNfY29uZmlnKHN0cnVjdCBkcm1fY3J0
YyAqY3J0YywKIAogCURSTV9ERUJVR19LTVMoImhlYWQgJWQsICVkeCVkLCBhdCArJWQrJWQsICVz
ICglcylcbiIsCiAJCSAgICAgIGksIGhlYWQud2lkdGgsIGhlYWQuaGVpZ2h0LCBoZWFkLngsIGhl
YWQueSwKLQkJICAgICAgY3J0Yy0+c3RhdGUtPmFjdGl2ZSA/ICJvbiIgOiAib2ZmIiwgcmVhc29u
KTsKKwkJICAgICAgb25vZmYoY3J0Yy0+c3RhdGUtPmFjdGl2ZSksIHJlYXNvbik7CiAJaWYgKG9s
ZGNvdW50ICE9IHFkZXYtPm1vbml0b3JzX2NvbmZpZy0+Y291bnQpCiAJCURSTV9ERUJVR19LTVMo
ImFjdGl2ZSBoZWFkcyAlZCAtPiAlZCAoJWQgdG90YWwpXG4iLAogCQkJICAgICAgb2xkY291bnQs
IHFkZXYtPm1vbml0b3JzX2NvbmZpZy0+Y291bnQsCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vcmFkZW9uL2F0b20uYyBiL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vYXRvbS5jCmluZGV4IDJj
Mjc2MjdiNjY1OS4uZTZkZDBmNWM2N2I4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcmFk
ZW9uL2F0b20uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL2F0b20uYwpAQCAtNzIyLDcg
KzcyMiw3IEBAIHN0YXRpYyB2b2lkIGF0b21fb3BfanVtcChhdG9tX2V4ZWNfY29udGV4dCAqY3R4
LCBpbnQgKnB0ciwgaW50IGFyZykKIAkJYnJlYWs7CiAJfQogCWlmIChhcmcgIT0gQVRPTV9DT05E
X0FMV0FZUykKLQkJU0RFQlVHKCIgICB0YWtlbjogJXNcbiIsIGV4ZWN1dGUgPyAieWVzIiA6ICJu
byIpOworCQlTREVCVUcoIiAgIHRha2VuOiAlc1xuIiwgeWVzbm8oZXhlY3V0ZSkpOwogCVNERUJV
RygiICAgdGFyZ2V0OiAweCUwNFhcbiIsIHRhcmdldCk7CiAJaWYgKGV4ZWN1dGUpIHsKIAkJaWYg
KGN0eC0+bGFzdF9qdW1wID09IChjdHgtPnN0YXJ0ICsgdGFyZ2V0KSkgewpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fYWNwaS5jIGIvZHJpdmVycy9ncHUvZHJtL3Jh
ZGVvbi9yYWRlb25fYWNwaS5jCmluZGV4IDZjZjE2NDVlN2ExYS4uMGRlY2RkOTc4MWY0IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9hY3BpLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fYWNwaS5jCkBAIC0yOTksNyArMjk5LDcgQEAgc3RhdGlj
IGludCByYWRlb25fYXRpZl9nZXRfbm90aWZpY2F0aW9uX3BhcmFtcyhhY3BpX2hhbmRsZSBoYW5k
bGUsCiAKIG91dDoKIAlEUk1fREVCVUdfRFJJVkVSKCJOb3RpZmljYXRpb24gJXMsIGNvbW1hbmQg
Y29kZSA9ICUjeFxuIiwKLQkJCShuLT5lbmFibGVkID8gImVuYWJsZWQiIDogImRpc2FibGVkIiks
CisJCQkoZW5hYmxlZGRpc2FibGVkKG4tPmVuYWJsZWQpKSwKIAkJCW4tPmNvbW1hbmRfY29kZSk7
CiAJa2ZyZWUoaW5mbyk7CiAJcmV0dXJuIGVycjsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9zdGkvc3RpX2hkYS5jIGIvZHJpdmVycy9ncHUvZHJtL3N0aS9zdGlfaGRhLmMKaW5kZXggOTRl
NDA0ZjEzMjM0Li44MGExOTZkMTM2NDcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zdGkv
c3RpX2hkYS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9zdGkvc3RpX2hkYS5jCkBAIC0zMTcsNyAr
MzE3LDcgQEAgc3RhdGljIHZvaWQgaGRhX2VuYWJsZV9oZF9kYWNzKHN0cnVjdCBzdGlfaGRhICpo
ZGEsIGJvb2wgZW5hYmxlKQogc3RhdGljIHZvaWQgaGRhX2RiZ19jZmcoc3RydWN0IHNlcV9maWxl
ICpzLCBpbnQgdmFsKQogewogCXNlcV9wdXRzKHMsICJcdEFXRyAiKTsKLQlzZXFfcHV0cyhzLCB2
YWwgJiBDRkdfQVdHX0FTWU5DX0VOID8gImVuYWJsZWQiIDogImRpc2FibGVkIik7CisJc2VxX3B1
dHMocywgZW5hYmxlZGRpc2FibGVkKHZhbCAmIENGR19BV0dfQVNZTkNfRU4pKTsKIH0KIAogc3Rh
dGljIHZvaWQgaGRhX2RiZ19hd2dfbWljcm9jb2RlKHN0cnVjdCBzZXFfZmlsZSAqcywgdm9pZCBf
X2lvbWVtICpyZWcpCkBAIC0zMzgsNyArMzM4LDcgQEAgc3RhdGljIHZvaWQgaGRhX2RiZ192aWRl
b19kYWNzX2N0cmwoc3RydWN0IHNlcV9maWxlICpzLCB2b2lkIF9faW9tZW0gKnJlZykKIAogCXNl
cV9wcmludGYocywgIlxuXG4gICUtMjVzIDB4JTA4WCIsICJWSURFT19EQUNTX0NPTlRST0wiLCB2
YWwpOwogCXNlcV9wdXRzKHMsICJcdEhEIERBQ3MgIik7Ci0Jc2VxX3B1dHMocywgdmFsICYgREFD
X0NGR19IRF9IWlVWV19PRkZfTUFTSyA/ICJkaXNhYmxlZCIgOiAiZW5hYmxlZCIpOworCXNlcV9w
dXRzKHMsIGVuYWJsZWRkaXNhYmxlZCghKHZhbCAmIERBQ19DRkdfSERfSFpVVldfT0ZGX01BU0sp
KSk7CiB9CiAKIHN0YXRpYyBpbnQgaGRhX2RiZ19zaG93KHN0cnVjdCBzZXFfZmlsZSAqcywgdm9p
ZCAqZGF0YSkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9zdGkvc3RpX3R2b3V0LmMgYi9k
cml2ZXJzL2dwdS9kcm0vc3RpL3N0aV90dm91dC5jCmluZGV4IGUxYjNjOGNiNzI4Ny4uMWYxNjll
ZDE3N2U5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vc3RpL3N0aV90dm91dC5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9zdGkvc3RpX3R2b3V0LmMKQEAgLTQ5MSw3ICs0OTEsNyBAQCBzdGF0
aWMgdm9pZCB0dm91dF9kYmdfdmlwKHN0cnVjdCBzZXFfZmlsZSAqcywgaW50IHZhbCkKIHN0YXRp
YyB2b2lkIHR2b3V0X2RiZ19oZF9kYWNfY2ZnKHN0cnVjdCBzZXFfZmlsZSAqcywgaW50IHZhbCkK
IHsKIAlzZXFfcHJpbnRmKHMsICJcdCUtMjRzICVzIiwgIkhEIERBQzoiLAotCQkgICB2YWwgJiAx
ID8gImRpc2FibGVkIiA6ICJlbmFibGVkIik7CisJCSAgIGVuYWJsZWRkaXNhYmxlZCghKHZhbCAm
IDEpKSk7CiB9CiAKIHN0YXRpYyBpbnQgdHZvdXRfZGJnX3Nob3coc3RydWN0IHNlcV9maWxlICpz
LCB2b2lkICpkYXRhKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjRpX2Jh
Y2tlbmQuYyBiL2RyaXZlcnMvZ3B1L2RybS9zdW40aS9zdW40aV9iYWNrZW5kLmMKaW5kZXggNzhk
OGMzYWZlODI1Li5mMWUzMDEwNjAxMjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zdW40
aS9zdW40aV9iYWNrZW5kLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjRpX2JhY2tl
bmQuYwpAQCAtMjczLDcgKzI3Myw3IEBAIGludCBzdW40aV9iYWNrZW5kX3VwZGF0ZV9sYXllcl9m
b3JtYXRzKHN0cnVjdCBzdW40aV9iYWNrZW5kICpiYWNrZW5kLAogCQkJICAgaW50ZXJsYWNlZCA/
IFNVTjRJX0JBQ0tFTkRfTU9EQ1RMX0lUTE1PRF9FTiA6IDApOwogCiAJRFJNX0RFQlVHX0RSSVZF
UigiU3dpdGNoaW5nIGRpc3BsYXkgYmFja2VuZCBpbnRlcmxhY2VkIG1vZGUgJXNcbiIsCi0JCQkg
aW50ZXJsYWNlZCA/ICJvbiIgOiAib2ZmIik7CisJCQkgb25vZmYoaW50ZXJsYWNlZCkpOwogCiAJ
dmFsID0gU1VONElfQkFDS0VORF9BVFRDVExfUkVHMF9MQVlfR0xCQUxQSEEoc3RhdGUtPmFscGhh
ID4+IDgpOwogCWlmIChzdGF0ZS0+YWxwaGEgIT0gRFJNX0JMRU5EX0FMUEhBX09QQVFVRSkKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9zdW40aS9zdW44aV91aV9sYXllci5jIGIvZHJpdmVy
cy9ncHUvZHJtL3N1bjRpL3N1bjhpX3VpX2xheWVyLmMKaW5kZXggZGQyYTFjODUxOTM5Li5jNDhi
MWNmMDc0MzkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zdW40aS9zdW44aV91aV9sYXll
ci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9zdW40aS9zdW44aV91aV9sYXllci5jCkBAIC0xMjYs
NyArMTI2LDcgQEAgc3RhdGljIGludCBzdW44aV91aV9sYXllcl91cGRhdGVfY29vcmQoc3RydWN0
IHN1bjhpX21peGVyICptaXhlciwgaW50IGNoYW5uZWwsCiAJCQkJICAgdmFsKTsKIAogCQlEUk1f
REVCVUdfRFJJVkVSKCJTd2l0Y2hpbmcgZGlzcGxheSBtaXhlciBpbnRlcmxhY2VkIG1vZGUgJXNc
biIsCi0JCQkJIGludGVybGFjZWQgPyAib24iIDogIm9mZiIpOworCQkJCSBvbm9mZihpbnRlcmxh
Y2VkKSk7CiAJfQogCiAJLyogU2V0IGhlaWdodCBhbmQgd2lkdGggKi8KZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS92M2QvdjNkX2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS92M2QvdjNk
X2RlYnVnZnMuYwppbmRleCA3OGE3ODkzOGU4MWYuLjBjYTcxZWIyZTc2MCAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL3YzZC92M2RfZGVidWdmcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS92
M2QvdjNkX2RlYnVnZnMuYwpAQCAtMTQ3LDE1ICsxNDcsMTUgQEAgc3RhdGljIGludCB2M2RfdjNk
X2RlYnVnZnNfaWRlbnQoc3RydWN0IHNlcV9maWxlICptLCB2b2lkICp1bnVzZWQpCiAJCSAgIFYz
RF9HRVRfRklFTEQoaWRlbnQzLCBWM0RfSFVCX0lERU5UM19JUFJFViksCiAJCSAgIFYzRF9HRVRf
RklFTEQoaWRlbnQzLCBWM0RfSFVCX0lERU5UM19JUElEWCkpOwogCXNlcV9wcmludGYobSwgIk1N
VTogICAgICAgICVzXG4iLAotCQkgICAoaWRlbnQyICYgVjNEX0hVQl9JREVOVDJfV0lUSF9NTVUp
ID8gInllcyIgOiAibm8iKTsKKwkJICAgeWVzbm8oaWRlbnQyICYgVjNEX0hVQl9JREVOVDJfV0lU
SF9NTVUpKTsKIAlzZXFfcHJpbnRmKG0sICJURlU6ICAgICAgICAlc1xuIiwKLQkJICAgKGlkZW50
MSAmIFYzRF9IVUJfSURFTlQxX1dJVEhfVEZVKSA/ICJ5ZXMiIDogIm5vIik7CisJCSAgIHllc25v
KGlkZW50MSAmIFYzRF9IVUJfSURFTlQxX1dJVEhfVEZVKSk7CiAJc2VxX3ByaW50ZihtLCAiVFNZ
OiAgICAgICAgJXNcbiIsCi0JCSAgIChpZGVudDEgJiBWM0RfSFVCX0lERU5UMV9XSVRIX1RTWSkg
PyAieWVzIiA6ICJubyIpOworCQkgICB5ZXNubyhpZGVudDEgJiBWM0RfSFVCX0lERU5UMV9XSVRI
X1RTWSkpOwogCXNlcV9wcmludGYobSwgIk1TTzogICAgICAgICVzXG4iLAotCQkgICAoaWRlbnQx
ICYgVjNEX0hVQl9JREVOVDFfV0lUSF9NU08pID8gInllcyIgOiAibm8iKTsKKwkJICAgeWVzbm8o
aWRlbnQxICYgVjNEX0hVQl9JREVOVDFfV0lUSF9NU08pKTsKIAlzZXFfcHJpbnRmKG0sICJMM0M6
ICAgICAgICAlcyAoJWRrYilcbiIsCi0JCSAgIChpZGVudDEgJiBWM0RfSFVCX0lERU5UMV9XSVRI
X0wzQykgPyAieWVzIiA6ICJubyIsCisJCSAgIHllc25vKGlkZW50MSAmIFYzRF9IVUJfSURFTlQx
X1dJVEhfTDNDKSwKIAkJICAgVjNEX0dFVF9GSUVMRChpZGVudDIsIFYzRF9IVUJfSURFTlQyX0wz
Q19OS0IpKTsKIAogCWZvciAoY29yZSA9IDA7IGNvcmUgPCBjb3JlczsgY29yZSsrKSB7CmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdmlydGlvL3ZpcnRncHVfZGVidWdmcy5jIGIvZHJpdmVy
cy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X2RlYnVnZnMuYwppbmRleCBlZDBmY2RhNzEzYzMuLjRi
NmJmNGU5YWJiMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X2Rl
YnVnZnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdmlydGlvL3ZpcnRncHVfZGVidWdmcy5jCkBA
IC0zMSw3ICszMSw3IEBACiBzdGF0aWMgdm9pZCB2aXJ0aW9fYWRkX2Jvb2woc3RydWN0IHNlcV9m
aWxlICptLCBjb25zdCBjaGFyICpuYW1lLAogCQkJCSAgICBib29sIHZhbHVlKQogewotCXNlcV9w
cmludGYobSwgIiUtMTZzIDogJXNcbiIsIG5hbWUsIHZhbHVlID8gInllcyIgOiAibm8iKTsKKwlz
ZXFfcHJpbnRmKG0sICIlLTE2cyA6ICVzXG4iLCBuYW1lLCB5ZXNubyh2YWx1ZSkpOwogfQogCiBz
dGF0aWMgdm9pZCB2aXJ0aW9fYWRkX2ludChzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIGNvbnN0IGNoYXIg
Km5hbWUsCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
