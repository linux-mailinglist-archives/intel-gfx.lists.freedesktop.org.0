Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E50E38920B
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 16:54:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E78836EDE1;
	Wed, 19 May 2021 14:53:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2882D6EDE7;
 Wed, 19 May 2021 14:53:57 +0000 (UTC)
IronPort-SDR: potga5dVLa/rPOO6N8dfNt2Plbyh1kldra0C6SJSNoeSxCldxQwX2EzFpVGp87Hz+A2lnbvt8e
 NqWOwXE0LViw==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="188401193"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="188401193"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 07:53:55 -0700
IronPort-SDR: K4Dr3MlWr7RzN0OmcH9Cu/2rQ08d+9UeRzslNZPsnxQJETAZtoBK7pWcev7r8sL0Xtj48gnRiI
 BupPOK7Y93FA==
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="473527412"
Received: from ajwalton-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.22.65])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 07:53:51 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 19 May 2021 15:53:31 +0100
Message-Id: <20210519145337.255167-4-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210519145337.255167-1-matthew.auld@intel.com>
References: <20210519145337.255167-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 3/9] lib/i915/intel_memory_region: Add new
 memory region lib
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
Cc: thomas.hellstrom@linux.intel.com,
 Dominik Grzegorzek <dominik.grzegorzek@intel.com>,
 intel-gfx@lists.freedesktop.org, Lukasz Kalamarz <lukasz.kalamarz@intel.com>,
 Andrzej Turko <andrzej.turko@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQW5kcnplaiBUdXJrbyA8YW5kcnplai50dXJrb0BsaW51eC5pbnRlbC5jb20+CgpXaXRo
IGFuIGludHJvZHVjdGlvbiBvZiBMb2NhbCBNZW1vcnkgY29uY2VwdCB3ZSBzaG91bGQgYmUgYWJs
ZSB0bwphbGxvY2F0ZSBvYmplY3QgaW4gc3BlY2lmaWMgbWVtb3J5IHJlZ2lvbi4gVGhpcyBwYXRj
aCBpbXBsZW1lbnRzCmhlbHBlciBmdW5jdGlvbnMgdGhhdCBhbGxvdyB0aGlzLCBib3RoIGZvciBx
dWVyeWluZyB3aGF0IHRoZSBkZXZpY2UKc3VwcG9ydHMgYW5kIGhvb2tpbmcgaW50byBnZW1fY3Jl
YXRlX2V4dCB0byBzZWxlY3QgdGhlIHBsYWNlbWVudHMuCgpDby1hdXRob3JlZC1ieTogTHVrYXN6
IEthbGFtYXJ6IDxsdWthc3oua2FsYW1hcnpAaW50ZWwuY29tPgpDby1hdXRob3JlZC1ieTogWmJp
Z25pZXcgS2VtcGN6eW5za2kgPHpiaWduaWV3LmtlbXBjenluc2tpQGludGVsLmNvbT4KU2lnbmVk
LW9mZi1ieTogQW5kcnplaiBUdXJrbyA8YW5kcnplai50dXJrb0BsaW51eC5pbnRlbC5jb20+ClNp
Z25lZC1vZmYtYnk6IEx1a2FzeiBLYWxhbWFyeiA8bHVrYXN6LmthbGFtYXJ6QGludGVsLmNvbT4K
U2lnbmVkLW9mZi1ieTogWmJpZ25pZXcgS2VtcGN6eW5za2kgPHpiaWduaWV3LmtlbXBjenluc2tp
QGludGVsLmNvbT4KQ2M6IFpiaWduaWV3IEtlbXBjenluc2tpIDx6Ymlnbmlldy5rZW1wY3p5bnNr
aUBpbnRlbC5jb20+CkNjOiBEb21pbmlrIEdyemVnb3J6ZWsgPGRvbWluaWsuZ3J6ZWdvcnpla0Bp
bnRlbC5jb20+CkNjOiBQZXRyaSBMYXR2YWxhIDxwZXRyaS5sYXR2YWxhQGludGVsLmNvbT4KU2ln
bmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KIGxp
Yi9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uYyB8IDQ0MSArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysKIGxpYi9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uaCB8IDEzMCArKysrKysr
KysrCiBsaWIvaW9jdGxfd3JhcHBlcnMuaCAgICAgICAgICAgfCAgIDEgKwogbGliL21lc29uLmJ1
aWxkICAgICAgICAgICAgICAgIHwgICAxICsKIDQgZmlsZXMgY2hhbmdlZCwgNTczIGluc2VydGlv
bnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBsaWIvaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmMK
IGNyZWF0ZSBtb2RlIDEwMDY0NCBsaWIvaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmgKCmRpZmYg
LS1naXQgYS9saWIvaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmMgYi9saWIvaTkxNS9pbnRlbF9t
ZW1vcnlfcmVnaW9uLmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAuLjk4M2Fj
NGRmCi0tLSAvZGV2L251bGwKKysrIGIvbGliL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5jCkBA
IC0wLDAgKzEsNDQxIEBACisvKgorICogQ29weXJpZ2h0IMKpIDIwMjAgSW50ZWwgQ29ycG9yYXRp
b24KKyAqCisgKiBQZXJtaXNzaW9uIGlzIGhlcmVieSBncmFudGVkLCBmcmVlIG9mIGNoYXJnZSwg
dG8gYW55IHBlcnNvbiBvYnRhaW5pbmcgYQorICogY29weSBvZiB0aGlzIHNvZnR3YXJlIGFuZCBh
c3NvY2lhdGVkIGRvY3VtZW50YXRpb24gZmlsZXMgKHRoZSAiU29mdHdhcmUiKSwKKyAqIHRvIGRl
YWwgaW4gdGhlIFNvZnR3YXJlIHdpdGhvdXQgcmVzdHJpY3Rpb24sIGluY2x1ZGluZyB3aXRob3V0
IGxpbWl0YXRpb24KKyAqIHRoZSByaWdodHMgdG8gdXNlLCBjb3B5LCBtb2RpZnksIG1lcmdlLCBw
dWJsaXNoLCBkaXN0cmlidXRlLCBzdWJsaWNlbnNlLAorICogYW5kL29yIHNlbGwgY29waWVzIG9m
IHRoZSBTb2Z0d2FyZSwgYW5kIHRvIHBlcm1pdCBwZXJzb25zIHRvIHdob20gdGhlCisgKiBTb2Z0
d2FyZSBpcyBmdXJuaXNoZWQgdG8gZG8gc28sIHN1YmplY3QgdG8gdGhlIGZvbGxvd2luZyBjb25k
aXRpb25zOgorICoKKyAqIFRoZSBhYm92ZSBjb3B5cmlnaHQgbm90aWNlIGFuZCB0aGlzIHBlcm1p
c3Npb24gbm90aWNlIChpbmNsdWRpbmcgdGhlIG5leHQKKyAqIHBhcmFncmFwaCkgc2hhbGwgYmUg
aW5jbHVkZWQgaW4gYWxsIGNvcGllcyBvciBzdWJzdGFudGlhbCBwb3J0aW9ucyBvZiB0aGUKKyAq
IFNvZnR3YXJlLgorICoKKyAqIFRIRSBTT0ZUV0FSRSBJUyBQUk9WSURFRCAiQVMgSVMiLCBXSVRI
T1VUIFdBUlJBTlRZIE9GIEFOWSBLSU5ELCBFWFBSRVNTIE9SCisgKiBJTVBMSUVELCBJTkNMVURJ
TkcgQlVUIE5PVCBMSU1JVEVEIFRPIFRIRSBXQVJSQU5USUVTIE9GIE1FUkNIQU5UQUJJTElUWSwK
KyAqIEZJVE5FU1MgRk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFIEFORCBOT05JTkZSSU5HRU1FTlQu
ICBJTiBOTyBFVkVOVCBTSEFMTAorICogVEhFIEFVVEhPUlMgT1IgQ09QWVJJR0hUIEhPTERFUlMg
QkUgTElBQkxFIEZPUiBBTlkgQ0xBSU0sIERBTUFHRVMgT1IgT1RIRVIKKyAqIExJQUJJTElUWSwg
V0hFVEhFUiBJTiBBTiBBQ1RJT04gT0YgQ09OVFJBQ1QsIFRPUlQgT1IgT1RIRVJXSVNFLCBBUklT
SU5HCisgKiBGUk9NLCBPVVQgT0YgT1IgSU4gQ09OTkVDVElPTiBXSVRIIFRIRSBTT0ZUV0FSRSBP
UiBUSEUgVVNFIE9SIE9USEVSIERFQUxJTkdTCisgKiBJTiBUSEUgU09GVFdBUkUuCisgKi8KKwor
I2luY2x1ZGUgPGxpbnV4L2xpbWl0cy5oPgorI2luY2x1ZGUgPHNpZ25hbC5oPgorI2luY2x1ZGUg
PHN5cy9pb2N0bC5oPgorI2luY2x1ZGUgPHN5cy90aW1lLmg+CisjaW5jbHVkZSA8c3lzL3R5cGVz
Lmg+CisjaW5jbHVkZSA8c3lzL3N0YXQuaD4KKyNpbmNsdWRlIDxmY250bC5oPgorCisjaW5jbHVk
ZSAiaTkxNS9nZW1fY3JlYXRlLmgiCisjaW5jbHVkZSAiaW50ZWxfcmVnLmgiCisjaW5jbHVkZSAi
ZHJtdGVzdC5oIgorI2luY2x1ZGUgImlvY3RsX3dyYXBwZXJzLmgiCisjaW5jbHVkZSAiaWd0X2R1
bW15bG9hZC5oIgorI2luY2x1ZGUgImlndF9ndC5oIgorI2luY2x1ZGUgImlndF9wYXJhbXMuaCIK
KyNpbmNsdWRlICJpZ3Rfc3lzZnMuaCIKKyNpbmNsdWRlICJpbnRlbF9jaGlwc2V0LmgiCisjaW5j
bHVkZSAiaWd0X2NvbGxlY3Rpb24uaCIKKyNpbmNsdWRlICJpZ3RfZGV2aWNlLmgiCisKKyNpbmNs
dWRlICJpOTE1L2ludGVsX21lbW9yeV9yZWdpb24uaCIKKworI2RlZmluZSBpOTE1X3F1ZXJ5X2l0
ZW1zKGZkLCBpdGVtcywgbl9pdGVtcykgZG8geyBcCisJCWlndF9hc3NlcnRfZXEoX19pOTE1X3F1
ZXJ5X2l0ZW1zKGZkLCBpdGVtcywgbl9pdGVtcyksIDApOyBcCisJCWVycm5vID0gMDsgXAorCX0g
d2hpbGUgKDApCisjZGVmaW5lIGk5MTVfcXVlcnlfaXRlbXNfZXJyKGZkLCBpdGVtcywgbl9pdGVt
cywgZXJyKSBkbyB7IFwKKwkJaWd0X2Fzc2VydF9lcShfX2k5MTVfcXVlcnlfaXRlbXMoZmQsIGl0
ZW1zLCBuX2l0ZW1zKSwgLWVycik7IFwKKwl9IHdoaWxlICgwKQorCitzdGF0aWMgaW50CitfX2k5
MTVfcXVlcnkoaW50IGZkLCBzdHJ1Y3QgZHJtX2k5MTVfcXVlcnkgKnEpCit7CisJaWYgKGlndF9p
b2N0bChmZCwgRFJNX0lPQ1RMX0k5MTVfUVVFUlksIHEpKQorCQlyZXR1cm4gLWVycm5vOworCXJl
dHVybiAwOworfQorCitzdGF0aWMgaW50CitfX2k5MTVfcXVlcnlfaXRlbXMoaW50IGZkLCBzdHJ1
Y3QgZHJtX2k5MTVfcXVlcnlfaXRlbSAqaXRlbXMsIHVpbnQzMl90IG5faXRlbXMpCit7CisJc3Ry
dWN0IGRybV9pOTE1X3F1ZXJ5IHEgPSB7CisJCS5udW1faXRlbXMgPSBuX2l0ZW1zLAorCQkuaXRl
bXNfcHRyID0gdG9fdXNlcl9wb2ludGVyKGl0ZW1zKSwKKwl9OworCXJldHVybiBfX2k5MTVfcXVl
cnkoZmQsICZxKTsKK30KKworYm9vbCBnZW1faGFzX3F1ZXJ5X3N1cHBvcnQoaW50IGZkKQorewor
CXN0cnVjdCBkcm1faTkxNV9xdWVyeSBxdWVyeSA9IHt9OworCisJcmV0dXJuIF9faTkxNV9xdWVy
eShmZCwgJnF1ZXJ5KSA9PSAwOworfQorCitjb25zdCBjaGFyICpnZXRfbWVtb3J5X3JlZ2lvbl9u
YW1lKHVpbnQzMl90IHJlZ2lvbikKK3sKKwl1aW50MTZfdCBjbGFzcyA9IE1FTU9SWV9UWVBFX0ZS
T01fUkVHSU9OKHJlZ2lvbik7CisKKwlzd2l0Y2ggKGNsYXNzKSB7CisJY2FzZSBJOTE1X01FTU9S
WV9DTEFTU19TWVNURU06CisJCXJldHVybiAic21lbSI7CisJY2FzZSBJOTE1X01FTU9SWV9DTEFT
U19ERVZJQ0U6CisJCXJldHVybiAibG1lbSI7CisJfQorCWlndF9hc3NlcnRfZihmYWxzZSwgIlVu
a25vd24gbWVtb3J5IHJlZ2lvbiIpOworfQorCisvKioKKyAqICBnZW1fZ2V0X2JhdGNoX3NpemU6
CisgKiAgQGZkOiBvcGVuIGk5MTUgZHJtIGZpbGUgZGVzY3JpcHRvcgorICogIEBtZW1fcmVnaW9u
X3R5cGU6IHVzZWQgbWVtb3J5X3JlZ2lvbiB0eXBlCisgKgorICogIFdpdGggaW50cm9kdWN0aW9u
IG9mIExNRU0gd2Ugb2JzZXJ2ZSBkaWZmZXJlbnQgcGFnZSBzaXplcyBmb3IgdGhvc2UgdHdvCisg
KiAgbWVtb3J5IHJlZ2lvbnMuIFdpdGhvdXQgdGhpcyBoZWxwZXIgZnVudGlvbiB3ZSBtYXkgYmUg
cHJvbmUgdG8gZm9yZ2V0CisgKiAgYWJvdXQgc2V0dGluZyBwcm9wZXIgcGFnZSBzaXplLgorICov
Cit1aW50MzJfdCBnZW1fZ2V0X2JhdGNoX3NpemUoaW50IGZkLCB1aW50OF90IG1lbV9yZWdpb25f
dHlwZSkKK3sKKwlyZXR1cm4gKG1lbV9yZWdpb25fdHlwZSA9PSBJOTE1X01FTU9SWV9DTEFTU19E
RVZJQ0UpID8gNjU1MzYgOiA0MDk2OworfQorCisvKioKKyAqIGdlbV9nZXRfcXVlcnlfbWVtb3J5
X3JlZ2lvbnM6CisgKiBAZmQ6IG9wZW4gaTkxNSBkcm0gZmlsZSBkZXNjcmlwdG9yCisgKgorICog
VGhpcyBmdW5jdGlvbiB3cmFwcyBxdWVyeSBtZWNoYW5pc20gZm9yIG1lbW9yeSByZWdpb25zLgor
ICoKKyAqIFJldHVybnM6IEZpbGxlZCBzdHJ1Y3Qgd2l0aCBhdmFpbGFibGUgbWVtb3J5IHJlZ2lv
bnMuCisgKi8KK3N0cnVjdCBkcm1faTkxNV9xdWVyeV9tZW1vcnlfcmVnaW9ucyAqZ2VtX2dldF9x
dWVyeV9tZW1vcnlfcmVnaW9ucyhpbnQgZmQpCit7CisJc3RydWN0IGRybV9pOTE1X3F1ZXJ5X2l0
ZW0gaXRlbTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcXVlcnlfbWVtb3J5X3JlZ2lvbnMgKnF1ZXJ5X2lu
Zm87CisKKwltZW1zZXQoJml0ZW0sIDAsIHNpemVvZihpdGVtKSk7CisJaXRlbS5xdWVyeV9pZCA9
IERSTV9JOTE1X1FVRVJZX01FTU9SWV9SRUdJT05TOworCWk5MTVfcXVlcnlfaXRlbXMoZmQsICZp
dGVtLCAxKTsKKworCXF1ZXJ5X2luZm8gPSBjYWxsb2MoMSwgaXRlbS5sZW5ndGgpOworCisJaXRl
bS5kYXRhX3B0ciA9IHRvX3VzZXJfcG9pbnRlcihxdWVyeV9pbmZvKTsKKwlpOTE1X3F1ZXJ5X2l0
ZW1zKGZkLCAmaXRlbSwgMSk7CisKKwlyZXR1cm4gcXVlcnlfaW5mbzsKK30KKworLyoqCisgKiBn
ZW1fZ2V0X2xtZW1fcmVnaW9uX2NvdW50OgorICogQGZkOiBvcGVuIGk5MTUgZHJtIGZpbGUgZGVz
Y3JpcHRvcgorICoKKyAqIEhlbHBlciBmdW5jdGlvbiB0byBjaGVjayBob3cgbWFueSBsbWVtIHJl
Z2lvbnMgYXJlIGF2YWlsYWJsZSBvbiBkZXZpY2UuCisgKgorICogUmV0dXJuczogTnVtYmVyIG9m
IGZvdW5kIGxtZW0gcmVnaW9ucy4KKyAqLwordWludDhfdCBnZW1fZ2V0X2xtZW1fcmVnaW9uX2Nv
dW50KGludCBmZCkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcXVlcnlfbWVtb3J5X3JlZ2lvbnMgKnF1
ZXJ5X2luZm87CisJdWludDhfdCBudW1fcmVnaW9uczsKKwl1aW50OF90IGxtZW1fcmVnaW9ucyA9
IDA7CisKKwlxdWVyeV9pbmZvID0gZ2VtX2dldF9xdWVyeV9tZW1vcnlfcmVnaW9ucyhmZCk7CisJ
bnVtX3JlZ2lvbnMgPSBxdWVyeV9pbmZvLT5udW1fcmVnaW9uczsKKworCWZvciAoaW50IGkgPSAw
OyBpIDwgbnVtX3JlZ2lvbnM7IGkrKykgeworCQlpZiAocXVlcnlfaW5mby0+cmVnaW9uc1tpXS5y
ZWdpb24ubWVtb3J5X2NsYXNzID09IEk5MTVfTUVNT1JZX0NMQVNTX0RFVklDRSkKKwkJCWxtZW1f
cmVnaW9ucyArPSAxOworCX0KKworCXJldHVybiBsbWVtX3JlZ2lvbnM7Cit9CisKKy8qKgorICog
Z2VtX2hhc19sbWVtOgorICogQGZkOiBvcGVuIGk5MTUgZHJtIGZpbGUgZGVzY3JpcHRvcgorICoK
KyAqIEhlbHBlciBmdW5jdGlvbiB0byBjaGVjayBpZiBsbWVtIGlzIGF2YWlsYWJsZSBvbiBkZXZp
Y2UuCisgKgorICogUmV0dXJuczogVHJ1ZSBpZiBhdCBsZWFzdCBvbmUgbG1lbSByZWdpb24gd2Fz
IGZvdW5kLgorICovCitib29sIGdlbV9oYXNfbG1lbShpbnQgZmQpCit7CisJcmV0dXJuIGdlbV9n
ZXRfbG1lbV9yZWdpb25fY291bnQoZmQpID4gMDsKK30KKworLyogQSB2ZXJzaW9uIG9mIGdlbV9j
cmVhdGVfaW5fbWVtb3J5X3JlZ2lvbl9saXN0IHdoaWNoIGNhbiBiZSBhbGxvd2VkIHRvCisgICBm
YWlsIHNvIHRoYXQgdGhlIG9iamVjdCBjcmVhdGlvbiBjYW4gYmUgcmV0cmllZCAqLworaW50IF9f
Z2VtX2NyZWF0ZV9pbl9tZW1vcnlfcmVnaW9uX2xpc3QoaW50IGZkLCB1aW50MzJfdCAqaGFuZGxl
LCB1aW50NjRfdCBzaXplLAorCQkJCSAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX21lbW9yeV9j
bGFzc19pbnN0YW5jZSAqbWVtX3JlZ2lvbnMsCisJCQkJICAgICAgIGludCBudW1fcmVnaW9ucykK
K3sKKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2NyZWF0ZV9leHRfbWVtb3J5X3JlZ2lvbnMgZXh0X3Jl
Z2lvbnMgPSB7CisJCS5iYXNlID0geyAubmFtZSA9IEk5MTVfR0VNX0NSRUFURV9FWFRfTUVNT1JZ
X1JFR0lPTlMgfSwKKwkJLm51bV9yZWdpb25zID0gbnVtX3JlZ2lvbnMsCisJCS5yZWdpb25zID0g
dG9fdXNlcl9wb2ludGVyKG1lbV9yZWdpb25zKSwKKwl9OworCisJcmV0dXJuIF9fZ2VtX2NyZWF0
ZV9leHQoZmQsICZzaXplLCBoYW5kbGUsICZleHRfcmVnaW9ucy5iYXNlKTsKK30KKworLyogZ2Vt
X2NyZWF0ZV9pbl9tZW1vcnlfcmVnaW9uX2xpc3Q6CisgKiBAZmQ6IG9wZW5lZCBpOTE1IGRybSBm
aWxlIGRlc2NyaXB0b3IKKyAqIEBzaXplOiByZXF1ZXN0ZWQgc2l6ZSBvZiB0aGUgYnVmZmVyCisg
KiBAbWVtX3JlZ2lvbnM6IG1lbW9yeSByZWdpb25zIGFycmF5IChwcmlvcml0eSBsaXN0KQorICog
QG51bV9yZWdpb25zOiBAbWVtX3JlZ2lvbnMgbGVuZ3RoCisgKi8KK3VpbnQzMl90IGdlbV9jcmVh
dGVfaW5fbWVtb3J5X3JlZ2lvbl9saXN0KGludCBmZCwgdWludDY0X3Qgc2l6ZSwKKwkJCQkJICBz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX21lbW9yeV9jbGFzc19pbnN0YW5jZSAqbWVtX3JlZ2lvbnMsCisJ
CQkJCSAgaW50IG51bV9yZWdpb25zKQoreworCXVpbnQzMl90IGhhbmRsZTsKKwlpbnQgcmV0ID0g
X19nZW1fY3JlYXRlX2luX21lbW9yeV9yZWdpb25fbGlzdChmZCwgJmhhbmRsZSwgc2l6ZSwKKwkJ
CQkJCSAgICAgbWVtX3JlZ2lvbnMsIG51bV9yZWdpb25zKTsKKwlpZ3RfYXNzZXJ0X2VxKHJldCwg
MCk7CisJcmV0dXJuIGhhbmRsZTsKK30KKworc3RhdGljIGJvb2wgX19yZWdpb25fYmVsb25nc190
b19yZWdpb25zX3R5cGUoc3RydWN0IGRybV9pOTE1X2dlbV9tZW1vcnlfY2xhc3NfaW5zdGFuY2Ug
cmVnaW9uLAorCQkJCQkgICAgIHVpbnQzMl90ICptZW1fcmVnaW9uc190eXBlLAorCQkJCQkgICAg
IGludCBudW1fcmVnaW9ucykKK3sKKwlmb3IgKGludCBpID0gMDsgaSA8IG51bV9yZWdpb25zOyBp
KyspCisJCWlmIChtZW1fcmVnaW9uc190eXBlW2ldID09IHJlZ2lvbi5tZW1vcnlfY2xhc3MpCisJ
CQlyZXR1cm4gdHJ1ZTsKKwlyZXR1cm4gZmFsc2U7Cit9CisKK3N0cnVjdCBpZ3RfY29sbGVjdGlv
biAqCitfX2dldF9tZW1vcnlfcmVnaW9uX3NldChzdHJ1Y3QgZHJtX2k5MTVfcXVlcnlfbWVtb3J5
X3JlZ2lvbnMgKnJlZ2lvbnMsCisJCQl1aW50MzJfdCAqbWVtX3JlZ2lvbnNfdHlwZSwKKwkJCWlu
dCBudW1fcmVnaW9ucykKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX21lbW9yeV9jbGFzc19pbnN0
YW5jZSByZWdpb247CisJc3RydWN0IGlndF9jb2xsZWN0aW9uICpzZXQ7CisJaW50IGNvdW50ID0g
MCwgcG9zID0gMDsKKworCWZvciAoaW50IGkgPSAwOyBpIDwgcmVnaW9ucy0+bnVtX3JlZ2lvbnM7
IGkrKykgeworCQlyZWdpb24gPSByZWdpb25zLT5yZWdpb25zW2ldLnJlZ2lvbjsKKwkJaWYgKF9f
cmVnaW9uX2JlbG9uZ3NfdG9fcmVnaW9uc190eXBlKHJlZ2lvbiwKKwkJCQkJCSAgICAgbWVtX3Jl
Z2lvbnNfdHlwZSwKKwkJCQkJCSAgICAgbnVtX3JlZ2lvbnMpKQorCQkJY291bnQrKzsKKwl9CisK
KwlzZXQgPSBpZ3RfY29sbGVjdGlvbl9jcmVhdGUoY291bnQpOworCisJZm9yIChpbnQgaSA9IDA7
IGkgPCByZWdpb25zLT5udW1fcmVnaW9uczsgaSsrKSB7CisJCXJlZ2lvbiA9IHJlZ2lvbnMtPnJl
Z2lvbnNbaV0ucmVnaW9uOworCQlpZiAoX19yZWdpb25fYmVsb25nc190b19yZWdpb25zX3R5cGUo
cmVnaW9uLAorCQkJCQkJICAgICBtZW1fcmVnaW9uc190eXBlLAorCQkJCQkJICAgICBudW1fcmVn
aW9ucykpCisJCQlpZ3RfY29sbGVjdGlvbl9zZXRfdmFsdWUoc2V0LCBwb3MrKywKKwkJCQkJCSBJ
TlRFTF9NRU1PUllfUkVHSU9OX0lEKHJlZ2lvbi5tZW1vcnlfY2xhc3MsCisJCQkJCQkJCQlyZWdp
b24ubWVtb3J5X2luc3RhbmNlKSk7CisJfQorCisJaWd0X2Fzc2VydChjb3VudCA9PSBwb3MpOwor
CisJcmV0dXJuIHNldDsKK30KKworLyoqCisgICogbWVtcmVnaW9uX2R5bmFtaWNfc3VidGVzdF9u
YW1lOgorICAqIEBpZ3RfY29sbGVjdGlvbjogbWVtb3J5IHJlZ2lvbiBjb2xsZWN0aW9uCisgICoK
KyAgKiBGdW5jdGlvbiBpdGVyYXRlcyBvdmVyIGFsbCBtZW1vcnkgcmVnaW9ucyBpbnNpZGUgdGhl
IGNvbGxlY3Rpb24gKGtlZXBlZAorICAqIGluIHRoZSB2YWx1ZSBmaWVsZCkgYW5kIGdlbmVyYXRl
cyB0aGUgbmFtZSB3aGljaCBjYW4gYmUgdXNlZCBkdXJpbmcgZHluYW1pYworICAqIHN1YnRlc3Qg
Y3JlYXRpb24uCisgICoKKyAgKiBSZXR1cm5zOiBuZXdseSBhbGxvY2F0ZWQgc3RyaW5nLCBoYXMg
dG8gYmUgZnJlZWQgYnkgY2FsbGVyLiBBc3NlcnRzIGlmCisgICogY2FsbGVyIHRyaWVzIHRvIGNy
ZWF0ZSBhIG5hbWUgdXNpbmcgZW1wdHkgY29sbGVjdGlvbi4KKyAgKi8KK2NoYXIgKm1lbXJlZ2lv
bl9keW5hbWljX3N1YnRlc3RfbmFtZShzdHJ1Y3QgaWd0X2NvbGxlY3Rpb24gKnNldCkKK3sKKwlz
dHJ1Y3QgaWd0X2NvbGxlY3Rpb25fZGF0YSAqZGF0YTsKKwljaGFyICpuYW1lLCAqcDsKKwl1aW50
MzJfdCByZWdpb24sIGxlbjsKKworCWlndF9hc3NlcnQoc2V0ICYmIHNldC0+c2l6ZSk7CisJLyog
ZW5vdWdoIGZvciAibmFtZSVkLSIgKiBuICovCisJbGVuID0gc2V0LT5zaXplICogODsKKwlwID0g
bmFtZSA9IG1hbGxvYyhsZW4pOworCWlndF9hc3NlcnQobmFtZSk7CisKKwlmb3JfZWFjaF9jb2xs
ZWN0aW9uX2RhdGEoZGF0YSwgc2V0KSB7CisJCWludCByOworCisJCXJlZ2lvbiA9IGRhdGEtPnZh
bHVlOworCQlpZiAoSVNfREVWSUNFX01FTU9SWV9SRUdJT04ocmVnaW9uKSkKKwkJCXIgPSBzbnBy
aW50ZihwLCBsZW4sICIlcyVkLSIsCisJCQkJICAgICBnZXRfbWVtb3J5X3JlZ2lvbl9uYW1lKHJl
Z2lvbiksCisJCQkJICAgICBNRU1PUllfSU5TVEFOQ0VfRlJPTV9SRUdJT04ocmVnaW9uKSk7CisJ
CWVsc2UKKwkJCXIgPSBzbnByaW50ZihwLCBsZW4sICIlcy0iLAorCQkJCSAgICAgZ2V0X21lbW9y
eV9yZWdpb25fbmFtZShyZWdpb24pKTsKKworCQlpZ3RfYXNzZXJ0KHIgPiAwKTsKKwkJcCArPSBy
OworCQlsZW4gLT0gcjsKKwl9CisKKwkvKiByZW1vdmUgbGFzdCAnLScgKi8KKwkqKHAgLSAxKSA9
IDA7CisKKwlyZXR1cm4gbmFtZTsKK30KKworLyoqCisgKiBpbnRlbF9kdW1wX2dwdV9tZW1pbmZv
OgorICogQGluZm86IHBvaW50ZXIgdG8gZHJtX2k5MTVfcXVlcnlfbWVtb3J5X3JlZ2lvbnMgc3Ry
dWN0dXJlCisgKgorICogT3V0cHV0cyBtZW1vcnkgcmVnaW9ucyBhbmQgdGhlaXIgc2l6ZXMuCisg
Ki8KK3ZvaWQgaW50ZWxfZHVtcF9ncHVfbWVtaW5mbyhzdHJ1Y3QgZHJtX2k5MTVfcXVlcnlfbWVt
b3J5X3JlZ2lvbnMgKmluZm8pCit7CisJaW50IGk7CisKKwlpZ3RfYXNzZXJ0KGluZm8pOworCisJ
aWd0X2luZm8oIkdQVSBtZW1pbmZvOlxuIik7CisKKwlmb3IgKGkgPSAwOyBpIDwgaW5mby0+bnVt
X3JlZ2lvbnM7IGkrKykgeworCQl1aW50MzJfdCByZWdpb24gPSBJTlRFTF9NRU1PUllfUkVHSU9O
X0lEKGluZm8tPnJlZ2lvbnNbaV0ucmVnaW9uLm1lbW9yeV9jbGFzcywKKwkJCQkJCQkgaW5mby0+
cmVnaW9uc1tpXS5yZWdpb24ubWVtb3J5X2luc3RhbmNlKTsKKwkJY29uc3QgY2hhciAqbmFtZSA9
IGdldF9tZW1vcnlfcmVnaW9uX25hbWUocmVnaW9uKTsKKworCQlpZ3RfaW5mbygiLSAlcyBbJWRd
IG1lbW9yeSBbc2l6ZTogMHglbGx4LCBhdmFpbGFibGU6IDB4JWxseF1cbiIsCisJCQkgbmFtZSwg
aW5mby0+cmVnaW9uc1tpXS5yZWdpb24ubWVtb3J5X2luc3RhbmNlLAorCQkJIGluZm8tPnJlZ2lv
bnNbaV0ucHJvYmVkX3NpemUsCisJCQkgaW5mby0+cmVnaW9uc1tpXS51bmFsbG9jYXRlZF9zaXpl
KTsKKwl9Cit9CisKKy8qKgorICogZ3B1X21lbWluZm9fcmVnaW9uX2NvdW50OgorICogQGluZm86
IHBvaW50ZXIgdG8gZHJtX2k5MTVfcXVlcnlfbWVtb3J5X3JlZ2lvbnMgc3RydWN0dXJlCisgKiBA
bWVtb3J5X2NsYXNzOiBtZW1vcnkgcmVnaW9uIGNsYXNzCisgKgorICogUmV0dXJuczogbnVtYmVy
IG9mIHJlZ2lvbnMgZm9yIHR5cGUgQG1lbW9yeV9jbGFzcworICovCit1aW50MzJfdCBncHVfbWVt
aW5mb19yZWdpb25fY291bnQoc3RydWN0IGRybV9pOTE1X3F1ZXJ5X21lbW9yeV9yZWdpb25zICpp
bmZvLAorCQkJCSAgdWludDE2X3QgbWVtb3J5X2NsYXNzKQoreworCXVpbnQzMl90IG51bSA9IDA7
CisJaW50IGk7CisKKwlpZ3RfYXNzZXJ0KGluZm8pOworCisJZm9yIChpID0gMDsgaSA8IGluZm8t
Pm51bV9yZWdpb25zOyBpKyspCisJCWlmIChpbmZvLT5yZWdpb25zW2ldLnJlZ2lvbi5tZW1vcnlf
Y2xhc3MgPT0gbWVtb3J5X2NsYXNzKQorCQkJbnVtKys7CisKKwlyZXR1cm4gbnVtOworfQorCisv
KioKKyAqIGdwdV9tZW1pbmZvX3JlZ2lvbl90b3RhbF9zaXplOgorICogQGluZm86IHBvaW50ZXIg
dG8gZHJtX2k5MTVfcXVlcnlfbWVtb3J5X3JlZ2lvbnMgc3RydWN0dXJlCisgKiBAbWVtb3J5X2Ns
YXNzOiBtZW1vcnkgcmVnaW9uIGNsYXNzCisgKgorICogUmV0dXJuczogdG90YWwgc2l6ZSBvZiBh
bGwgcmVnaW9ucyB3aGljaCBhcmUgdHlwZSBAbWVtb3J5X2NsYXNzLCAtMSB3aGVuIHRoZQorICog
c2l6ZSBvZiBhdCBsZWFzdCBvbmUgcmVnaW9uIGlzIHVua25vd24KKyAqLwordWludDY0X3QgZ3B1
X21lbWluZm9fcmVnaW9uX3RvdGFsX3NpemUoc3RydWN0IGRybV9pOTE1X3F1ZXJ5X21lbW9yeV9y
ZWdpb25zICppbmZvLAorCQkJCSAgICAgICB1aW50MTZfdCBtZW1vcnlfY2xhc3MpCit7CisJdWlu
dDY0X3QgdG90YWwgPSAwOworCWludCBpOworCisJaWd0X2Fzc2VydChpbmZvKTsKKworCWZvciAo
aSA9IDA7IGkgPCBpbmZvLT5udW1fcmVnaW9uczsgaSsrKQorCQlpZiAoaW5mby0+cmVnaW9uc1tp
XS5yZWdpb24ubWVtb3J5X2NsYXNzID09IG1lbW9yeV9jbGFzcykgeworCQkJaWYgKGluZm8tPnJl
Z2lvbnNbaV0ucHJvYmVkX3NpemUgPT0gLTEpCisJCQkJcmV0dXJuIC0xOworCisJCQl0b3RhbCAr
PSBpbmZvLT5yZWdpb25zW2ldLnByb2JlZF9zaXplOworCQl9CisKKwlyZXR1cm4gdG90YWw7Cit9
CisKKy8qKgorICogZ3B1X21lbWluZm9fcmVnaW9uX3RvdGFsX2F2YWlsYWJsZToKKyAqIEBpbmZv
OiBwb2ludGVyIHRvIGRybV9pOTE1X3F1ZXJ5X21lbW9yeV9yZWdpb25zIHN0cnVjdHVyZQorICog
QG1lbW9yeV9jbGFzczogbWVtb3J5IHJlZ2lvbiBjbGFzcworICoKKyAqIFJldHVybnM6IGF2YWls
YWJsZSBzaXplIG9mIGFsbCByZWdpb25zIHdoaWNoIGFyZSB0eXBlIEBtZW1vcnlfY2xhc3MsIC0x
IHdoZW4KKyAqIHRoZSBzaXplIG9mIGF0IGxlYXN0IG9uZSByZWdpb24gY2Fubm90IGJlIGVzdGlt
YXRlZAorICovCit1aW50NjRfdCBncHVfbWVtaW5mb19yZWdpb25fdG90YWxfYXZhaWxhYmxlKHN0
cnVjdCBkcm1faTkxNV9xdWVyeV9tZW1vcnlfcmVnaW9ucyAqaW5mbywKKwkJCQkJICAgIHVpbnQx
Nl90IG1lbW9yeV9jbGFzcykKK3sKKwl1aW50NjRfdCBhdmFpbCA9IDA7CisJaW50IGk7CisKKwlp
Z3RfYXNzZXJ0KGluZm8pOworCisJZm9yIChpID0gMDsgaSA8IGluZm8tPm51bV9yZWdpb25zOyBp
KyspCisJCWlmIChpbmZvLT5yZWdpb25zW2ldLnJlZ2lvbi5tZW1vcnlfY2xhc3MgPT0gbWVtb3J5
X2NsYXNzKSB7CisJCQlpZiAoaW5mby0+cmVnaW9uc1tpXS51bmFsbG9jYXRlZF9zaXplID09IC0x
KQorCQkJCXJldHVybiAtMTsKKworCQkJYXZhaWwgKz0gaW5mby0+cmVnaW9uc1tpXS51bmFsbG9j
YXRlZF9zaXplOworCQl9CisKKwlyZXR1cm4gYXZhaWw7Cit9CisKKy8qKgorICogZ3B1X21lbWlu
Zm9fcmVnaW9uX3NpemU6CisgKiBAaW5mbzogcG9pbnRlciB0byBkcm1faTkxNV9xdWVyeV9tZW1v
cnlfcmVnaW9ucyBzdHJ1Y3R1cmUKKyAqIEBtZW1vcnlfY2xhc3M6IG1lbW9yeSByZWdpb24gY2xh
c3MKKyAqIEBtZW1vcnlfaW5zdGFuY2U6IG1lbW9yeSByZWdpb24gaW5zdGFuY2UKKyAqCisgKiBS
ZXR1cm5zOiBhdmFpbGFibGUgc2l6ZSBvZiBAbWVtb3J5X2luc3RhbmNlIHdoaWNoIHR5cGUgaXMg
QG1lbW9yeV9jbGFzcywgLTEKKyAqIHdoZW4gdGhlIHNpemUgaXMgdW5rbm93bgorICovCit1aW50
NjRfdCBncHVfbWVtaW5mb19yZWdpb25fc2l6ZShzdHJ1Y3QgZHJtX2k5MTVfcXVlcnlfbWVtb3J5
X3JlZ2lvbnMgKmluZm8sCisJCQkJIHVpbnQxNl90IG1lbW9yeV9jbGFzcywKKwkJCQkgdWludDE2
X3QgbWVtb3J5X2luc3RhbmNlKQoreworCWludCBpOworCisJaWd0X2Fzc2VydChpbmZvKTsKKwor
CWZvciAoaSA9IDA7IGkgPCBpbmZvLT5udW1fcmVnaW9uczsgaSsrKQorCQlpZiAoaW5mby0+cmVn
aW9uc1tpXS5yZWdpb24ubWVtb3J5X2NsYXNzID09IG1lbW9yeV9jbGFzcyAmJgorCQkgICAgIGlu
Zm8tPnJlZ2lvbnNbaV0ucmVnaW9uLm1lbW9yeV9pbnN0YW5jZSA9PSBtZW1vcnlfaW5zdGFuY2Up
CisJCQlyZXR1cm4gaW5mby0+cmVnaW9uc1tpXS5wcm9iZWRfc2l6ZTsKKworCXJldHVybiAwOwor
fQorCisvKioKKyAqIGdwdV9tZW1pbmZvX3JlZ2lvbl9hdmFpbGFibGU6CisgKiBAaW5mbzogcG9p
bnRlciB0byBkcm1faTkxNV9xdWVyeV9tZW1vcnlfcmVnaW9ucyBzdHJ1Y3R1cmUKKyAqIEBtZW1v
cnlfY2xhc3M6IG1lbW9yeSByZWdpb24gY2xhc3MKKyAqIEBtZW1vcnlfaW5zdGFuY2U6IG1lbW9y
eSByZWdpb24gaW5zdGFuY2UKKyAqCisgKiBSZXR1cm5zOiBhdmFpbGFibGUgc2l6ZSBvZiBAbWVt
b3J5X2luc3RhbmNlIHJlZ2lvbiB3aGljaCB0eXBlIGlzCisgKiBAbWVtb3J5X2NsYXNzLCAtMSB3
aGVuIHRoZSBzaXplIGNhbm5vdCBiZSBlc3RpbWF0ZWQKKyAqLwordWludDY0X3QgZ3B1X21lbWlu
Zm9fcmVnaW9uX2F2YWlsYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcXVlcnlfbWVtb3J5X3JlZ2lvbnMg
KmluZm8sCisJCQkJICAgICAgdWludDE2X3QgbWVtb3J5X2NsYXNzLAorCQkJCSAgICAgIHVpbnQx
Nl90IG1lbW9yeV9pbnN0YW5jZSkKK3sKKwlpbnQgaTsKKworCWlndF9hc3NlcnQoaW5mbyk7CisK
Kwlmb3IgKGkgPSAwOyBpIDwgaW5mby0+bnVtX3JlZ2lvbnM7IGkrKykKKwkJaWYgKGluZm8tPnJl
Z2lvbnNbaV0ucmVnaW9uLm1lbW9yeV9jbGFzcyA9PSBtZW1vcnlfY2xhc3MgJiYKKwkJICAgICBp
bmZvLT5yZWdpb25zW2ldLnJlZ2lvbi5tZW1vcnlfaW5zdGFuY2UgPT0gbWVtb3J5X2luc3RhbmNl
KQorCQkJcmV0dXJuIGluZm8tPnJlZ2lvbnNbaV0udW5hbGxvY2F0ZWRfc2l6ZTsKKworCXJldHVy
biAwOworfQpkaWZmIC0tZ2l0IGEvbGliL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5oIGIvbGli
L2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5oCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAw
MDAwMDAwLi5lOWQxZDY2ZAotLS0gL2Rldi9udWxsCisrKyBiL2xpYi9pOTE1L2ludGVsX21lbW9y
eV9yZWdpb24uaApAQCAtMCwwICsxLDEzMCBAQAorLyoKKyAqIENvcHlyaWdodCDCqSAyMDIwIElu
dGVsIENvcnBvcmF0aW9uCisgKgorICogUGVybWlzc2lvbiBpcyBoZXJlYnkgZ3JhbnRlZCwgZnJl
ZSBvZiBjaGFyZ2UsIHRvIGFueSBwZXJzb24gb2J0YWluaW5nIGEKKyAqIGNvcHkgb2YgdGhpcyBz
b2Z0d2FyZSBhbmQgYXNzb2NpYXRlZCBkb2N1bWVudGF0aW9uIGZpbGVzICh0aGUgIlNvZnR3YXJl
IiksCisgKiB0byBkZWFsIGluIHRoZSBTb2Z0d2FyZSB3aXRob3V0IHJlc3RyaWN0aW9uLCBpbmNs
dWRpbmcgd2l0aG91dCBsaW1pdGF0aW9uCisgKiB0aGUgcmlnaHRzIHRvIHVzZSwgY29weSwgbW9k
aWZ5LCBtZXJnZSwgcHVibGlzaCwgZGlzdHJpYnV0ZSwgc3VibGljZW5zZSwKKyAqIGFuZC9vciBz
ZWxsIGNvcGllcyBvZiB0aGUgU29mdHdhcmUsIGFuZCB0byBwZXJtaXQgcGVyc29ucyB0byB3aG9t
IHRoZQorICogU29mdHdhcmUgaXMgZnVybmlzaGVkIHRvIGRvIHNvLCBzdWJqZWN0IHRvIHRoZSBm
b2xsb3dpbmcgY29uZGl0aW9uczoKKyAqCisgKiBUaGUgYWJvdmUgY29weXJpZ2h0IG5vdGljZSBh
bmQgdGhpcyBwZXJtaXNzaW9uIG5vdGljZSAoaW5jbHVkaW5nIHRoZSBuZXh0CisgKiBwYXJhZ3Jh
cGgpIHNoYWxsIGJlIGluY2x1ZGVkIGluIGFsbCBjb3BpZXMgb3Igc3Vic3RhbnRpYWwgcG9ydGlv
bnMgb2YgdGhlCisgKiBTb2Z0d2FyZS4KKyAqCisgKiBUSEUgU09GVFdBUkUgSVMgUFJPVklERUQg
IkFTIElTIiwgV0lUSE9VVCBXQVJSQU5UWSBPRiBBTlkgS0lORCwgRVhQUkVTUyBPUgorICogSU1Q
TElFRCwgSU5DTFVESU5HIEJVVCBOT1QgTElNSVRFRCBUTyBUSEUgV0FSUkFOVElFUyBPRiBNRVJD
SEFOVEFCSUxJVFksCisgKiBGSVRORVNTIEZPUiBBIFBBUlRJQ1VMQVIgUFVSUE9TRSBBTkQgTk9O
SU5GUklOR0VNRU5ULiAgSU4gTk8gRVZFTlQgU0hBTEwKKyAqIFRIRSBBVVRIT1JTIE9SIENPUFlS
SUdIVCBIT0xERVJTIEJFIExJQUJMRSBGT1IgQU5ZIENMQUlNLCBEQU1BR0VTIE9SIE9USEVSCisg
KiBMSUFCSUxJVFksIFdIRVRIRVIgSU4gQU4gQUNUSU9OIE9GIENPTlRSQUNULCBUT1JUIE9SIE9U
SEVSV0lTRSwgQVJJU0lORworICogRlJPTSwgT1VUIE9GIE9SIElOIENPTk5FQ1RJT04gV0lUSCBU
SEUgU09GVFdBUkUgT1IgVEhFIFVTRSBPUiBPVEhFUiBERUFMSU5HUworICogSU4gVEhFIFNPRlRX
QVJFLgorICovCisjaW5jbHVkZSAiaWd0X2NvbGxlY3Rpb24uaCIKKworI2lmbmRlZiBJTlRFTF9N
RU1PUllfUkVHSU9OX0gKKyNkZWZpbmUgSU5URUxfTUVNT1JZX1JFR0lPTl9ICisKKyNkZWZpbmUg
STkxNV9TWVNURU1fTUVNT1JZIEk5MTVfTUVNT1JZX0NMQVNTX1NZU1RFTQorI2RlZmluZSBJOTE1
X0RFVklDRV9NRU1PUlkgSTkxNV9NRU1PUllfQ0xBU1NfREVWSUNFCisjZGVmaW5lIEk5MTVfU1RP
TEVOX1NZU1RFTV9NRU1PUlkgSTkxNV9NRU1PUllfQ0xBU1NfU1RPTEVOX1NZU1RFTQorI2RlZmlu
ZSBJOTE1X1NUT0xFTl9ERVZJQ0VfTUVNT1JZIEk5MTVfTUVNT1JZX0NMQVNTX1NUT0xFTl9ERVZJ
Q0UKKworI2RlZmluZSBJTlRFTF9NRU1PUllfUkVHSU9OX0lEKHR5cGUsIGluc3RhbmNlKSAoKHR5
cGUpIDw8IDE2dSB8IChpbnN0YW5jZSkpCisjZGVmaW5lIE1FTU9SWV9UWVBFX0ZST01fUkVHSU9O
KHIpICgocikgPj4gMTZ1KQorI2RlZmluZSBNRU1PUllfSU5TVEFOQ0VfRlJPTV9SRUdJT04ocikg
KChyKSAmIDB4ZmZmZikKKworI2RlZmluZSBJU19NRU1PUllfUkVHSU9OX1RZUEUocmVnaW9uLCB0
eXBlKSBcCisJKE1FTU9SWV9UWVBFX0ZST01fUkVHSU9OKHJlZ2lvbikgPT0gdHlwZSkKKworI2Rl
ZmluZSBJU19ERVZJQ0VfTUVNT1JZX1JFR0lPTihyZWdpb24pIFwKKwlJU19NRU1PUllfUkVHSU9O
X1RZUEUocmVnaW9uLCBJOTE1X01FTU9SWV9DTEFTU19ERVZJQ0UpCisjZGVmaW5lIElTX1NZU1RF
TV9NRU1PUllfUkVHSU9OKHJlZ2lvbikgXAorCUlTX01FTU9SWV9SRUdJT05fVFlQRShyZWdpb24s
IEk5MTVfTUVNT1JZX0NMQVNTX1NZU1RFTSkKKworI2RlZmluZSBJU19TVE9MRU5fTUVNT1JZX1JF
R0lPTihyZWdpb24pIFwKKwkoSVNfTUVNT1JZX1JFR0lPTl9UWVBFKHJlZ2lvbiwgSTkxNV9NRU1P
UllfQ0xBU1NfU1RPTEVOX1NZU1RFTSkgfHwgXAorCSBJU19NRU1PUllfUkVHSU9OX1RZUEUocmVn
aW9uLCBJOTE1X01FTU9SWV9DTEFTU19TVE9MRU5fREVWSUNFKSkKKworI2RlZmluZSBSRUdJT05f
U01FTSAgICBJTlRFTF9NRU1PUllfUkVHSU9OX0lEKEk5MTVfTUVNT1JZX0NMQVNTX1NZU1RFTSwg
MCkKKyNkZWZpbmUgUkVHSU9OX0xNRU0obikgSU5URUxfTUVNT1JZX1JFR0lPTl9JRChJOTE1X01F
TU9SWV9DTEFTU19ERVZJQ0UsIChuKSkKKyNkZWZpbmUgUkVHSU9OX1NUTE5fU01FTShuKSBJTlRF
TF9NRU1PUllfUkVHSU9OX0lEKEk5MTVfTUVNT1JZX0NMQVNTX1NUT0xFTl9TWVNURU0sIChuKSkK
KyNkZWZpbmUgUkVHSU9OX1NUTE5fTE1FTShuKSBJTlRFTF9NRU1PUllfUkVHSU9OX0lEKEk5MTVf
TUVNT1JZX0NMQVNTX1NUT0xFTl9ERVZJQ0UsIChuKSkKKworYm9vbCBnZW1faGFzX3F1ZXJ5X3N1
cHBvcnQoaW50IGZkKTsKKworY29uc3QgY2hhciAqZ2V0X21lbW9yeV9yZWdpb25fbmFtZSh1aW50
MzJfdCByZWdpb24pOwordWludDMyX3QgZ2VtX2dldF9iYXRjaF9zaXplKGludCBmZCwgdWludDhf
dCBtZW1fcmVnaW9uX3R5cGUpOworCitzdHJ1Y3QgZHJtX2k5MTVfcXVlcnlfbWVtb3J5X3JlZ2lv
bnMgKmdlbV9nZXRfcXVlcnlfbWVtb3J5X3JlZ2lvbnMoaW50IGZkKTsKKwordWludDhfdCBnZW1f
Z2V0X2xtZW1fcmVnaW9uX2NvdW50KGludCBmZCk7CisKK2Jvb2wgZ2VtX2hhc19sbWVtKGludCBm
ZCk7CisKK2ludCBfX2dlbV9jcmVhdGVfaW5fbWVtb3J5X3JlZ2lvbl9saXN0KGludCBmZCwgdWlu
dDMyX3QgKmhhbmRsZSwgdWludDY0X3Qgc2l6ZSwKKwkJCQkgICAgICAgc3RydWN0IGRybV9pOTE1
X2dlbV9tZW1vcnlfY2xhc3NfaW5zdGFuY2UgKm1lbV9yZWdpb25zLAorCQkJCSAgICAgICBpbnQg
bnVtX3JlZ2lvbnMpOworCit1aW50MzJfdCBnZW1fY3JlYXRlX2luX21lbW9yeV9yZWdpb25fbGlz
dChpbnQgZmQsIHVpbnQ2NF90IHNpemUsCisJCQkJCSAgc3RydWN0IGRybV9pOTE1X2dlbV9tZW1v
cnlfY2xhc3NfaW5zdGFuY2UgKm1lbV9yZWdpb25zLAorCQkJCQkgIGludCBudW1fcmVnaW9ucyk7
CisKKy8qCisgKiBYWFg6IHRoZSB3aG9sZSBjb252ZXJ0aW5nIHRvIGNsYXNzX2luc3RhbmNlIHRo
aW5nIGlzIG1lYW50IGFzIGEgdGVtcG9yYXJ5CisgKiBzdG9wIGdhcCB3aGljaCBzaG91bGQga2Vl
cCBldmVyeXRoaW5nIHdvcmtpbmcsIHN1Y2ggdGhhdCB3ZSBkb24ndCBoYXZlIHRvCisgKiByZXdy
aXRlIHRoZSB3b3JsZCBpbiBvbmUgZ28gdG8gZml0IHRoZSBuZXcgdUFQSS4KKyAqLworI2RlZmlu
ZSBfX2dlbV9jcmVhdGVfaW5fbWVtb3J5X3JlZ2lvbnMoZmQsIGhhbmRsZSwgc2l6ZSwgcmVnaW9u
cy4uLikgKHsgXAorCXVuc2lnbmVkIGludCBhcnJfX1tdID0geyByZWdpb25zIH07IFwKKwlzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX21lbW9yeV9jbGFzc19pbnN0YW5jZSBhcnJfcXVlcnlfX1tBUlJBWV9T
SVpFKGFycl9fKV07IFwKKwlmb3IgKGludCBpX18gID0gMDsgaV9fIDwgQVJSQVlfU0laRShhcnJf
cXVlcnlfXyk7ICsraV9fKSB7IFwKKwkJYXJyX3F1ZXJ5X19baV9fXS5tZW1vcnlfY2xhc3MgPSBN
RU1PUllfVFlQRV9GUk9NX1JFR0lPTihhcnJfX1tpX19dKTsgIFwKKwkJYXJyX3F1ZXJ5X19baV9f
XS5tZW1vcnlfaW5zdGFuY2UgPSBNRU1PUllfSU5TVEFOQ0VfRlJPTV9SRUdJT04oYXJyX19baV9f
XSk7ICBcCisJfSBcCisJX19nZW1fY3JlYXRlX2luX21lbW9yeV9yZWdpb25fbGlzdChmZCwgaGFu
ZGxlLCBzaXplLCBhcnJfcXVlcnlfXywgQVJSQVlfU0laRShhcnJfcXVlcnlfXykpOyBcCit9KQor
I2RlZmluZSBnZW1fY3JlYXRlX2luX21lbW9yeV9yZWdpb25zKGZkLCBzaXplLCByZWdpb25zLi4u
KSAoeyBcCisJdW5zaWduZWQgaW50IGFycl9fW10gPSB7IHJlZ2lvbnMgfTsgXAorCXN0cnVjdCBk
cm1faTkxNV9nZW1fbWVtb3J5X2NsYXNzX2luc3RhbmNlIGFycl9xdWVyeV9fW0FSUkFZX1NJWkUo
YXJyX18pXTsgXAorCWZvciAoaW50IGlfXyAgPSAwOyBpX18gPCBBUlJBWV9TSVpFKGFycl9xdWVy
eV9fKTsgKytpX18pIHsgXAorCQlhcnJfcXVlcnlfX1tpX19dLm1lbW9yeV9jbGFzcyA9IE1FTU9S
WV9UWVBFX0ZST01fUkVHSU9OKGFycl9fW2lfX10pOyAgXAorCQlhcnJfcXVlcnlfX1tpX19dLm1l
bW9yeV9pbnN0YW5jZSA9IE1FTU9SWV9JTlNUQU5DRV9GUk9NX1JFR0lPTihhcnJfX1tpX19dKTsg
IFwKKwl9IFwKKwlnZW1fY3JlYXRlX2luX21lbW9yeV9yZWdpb25fbGlzdChmZCwgc2l6ZSwgYXJy
X3F1ZXJ5X18sIEFSUkFZX1NJWkUoYXJyX3F1ZXJ5X18pKTsgXAorfSkKKworc3RydWN0IGlndF9j
b2xsZWN0aW9uICoKK19fZ2V0X21lbW9yeV9yZWdpb25fc2V0KHN0cnVjdCBkcm1faTkxNV9xdWVy
eV9tZW1vcnlfcmVnaW9ucyAqcmVnaW9ucywKKwkJCXVpbnQzMl90ICptZW1fcmVnaW9uc190eXBl
LAorCQkJaW50IG51bV9yZWdpb25zKTsKKworLyoKKyAqIEhlbHBlciBtYWNybyB0byBjcmVhdGUg
aWd0X2NvbGxlY3Rpb24gd2hpY2ggY29udGFpbnMgYWxsIG1lbW9yeSByZWdpb25zCisgKiB3aGlj
aCBtYXRjaGVzIG1lbV9yZWdpb25fdHlwZXMgYXJyYXkuIFVzZWZ1bCB0byBmaWx0ZXIgb3V0IHN0
b2xlbiBtZW1vcnkKKyAqIGZyb20gYWNjZXNzaWJsZSBtZW1vcnkgcmVnaW9ucy4KKyAqLworI2Rl
ZmluZSBnZXRfbWVtb3J5X3JlZ2lvbl9zZXQocmVnaW9ucywgbWVtX3JlZ2lvbl90eXBlcy4uLikg
KHsgXAorCXVuc2lnbmVkIGludCBhcnJfX1tdID0geyBtZW1fcmVnaW9uX3R5cGVzIH07IFwKKwlf
X2dldF9tZW1vcnlfcmVnaW9uX3NldChyZWdpb25zLCBhcnJfXywgQVJSQVlfU0laRShhcnJfXykp
OyBcCit9KQorCitjaGFyICptZW1yZWdpb25fZHluYW1pY19zdWJ0ZXN0X25hbWUoc3RydWN0IGln
dF9jb2xsZWN0aW9uICpzZXQpOworCit2b2lkIGludGVsX2R1bXBfZ3B1X21lbWluZm8oc3RydWN0
IGRybV9pOTE1X3F1ZXJ5X21lbW9yeV9yZWdpb25zICppbmZvKTsKKwordWludDMyX3QgZ3B1X21l
bWluZm9fcmVnaW9uX2NvdW50KHN0cnVjdCBkcm1faTkxNV9xdWVyeV9tZW1vcnlfcmVnaW9ucyAq
aW5mbywKKwkJCQkgIHVpbnQxNl90IHJlZ2lvbl9jbGFzcyk7Cit1aW50NjRfdCBncHVfbWVtaW5m
b19yZWdpb25fdG90YWxfc2l6ZShzdHJ1Y3QgZHJtX2k5MTVfcXVlcnlfbWVtb3J5X3JlZ2lvbnMg
KmluZm8sCisJCQkJICAgICAgIHVpbnQxNl90IHJlZ2lvbl9jbGFzcyk7Cit1aW50NjRfdCBncHVf
bWVtaW5mb19yZWdpb25fdG90YWxfYXZhaWxhYmxlKHN0cnVjdCBkcm1faTkxNV9xdWVyeV9tZW1v
cnlfcmVnaW9ucyAqaW5mbywKKwkJCQkJICAgIHVpbnQxNl90IHJlZ2lvbl90eXBlKTsKKwordWlu
dDY0X3QgZ3B1X21lbWluZm9fcmVnaW9uX3NpemUoc3RydWN0IGRybV9pOTE1X3F1ZXJ5X21lbW9y
eV9yZWdpb25zICppbmZvLAorCQkJCSB1aW50MTZfdCBtZW1vcnlfY2xhc3MsCisJCQkJIHVpbnQx
Nl90IG1lbW9yeV9pbnN0YW5jZSk7Cit1aW50NjRfdCBncHVfbWVtaW5mb19yZWdpb25fYXZhaWxh
YmxlKHN0cnVjdCBkcm1faTkxNV9xdWVyeV9tZW1vcnlfcmVnaW9ucyAqaW5mbywKKwkJCQkgICAg
ICB1aW50MTZfdCBtZW1vcnlfY2xhc3MsCisJCQkJICAgICAgdWludDE2X3QgbWVtb3J5X2luc3Rh
bmNlKTsKKworI2VuZGlmIC8qIElOVEVMX01FTU9SWV9SRUdJT05fSCAqLwpkaWZmIC0tZ2l0IGEv
bGliL2lvY3RsX3dyYXBwZXJzLmggYi9saWIvaW9jdGxfd3JhcHBlcnMuaAppbmRleCA5ZWE2NzM2
NS4uMzY2NDBlMzAgMTAwNjQ0Ci0tLSBhL2xpYi9pb2N0bF93cmFwcGVycy5oCisrKyBiL2xpYi9p
b2N0bF93cmFwcGVycy5oCkBAIC0zOCw2ICszOCw3IEBACiAKICNpbmNsdWRlICJpOTE1L2dlbV9j
b250ZXh0LmgiCiAjaW5jbHVkZSAiaTkxNS9nZW1fc2NoZWR1bGVyLmgiCisjaW5jbHVkZSAiaTkx
NS9pbnRlbF9tZW1vcnlfcmVnaW9uLmgiCiAKIC8qKgogICogaWd0X2lvY3RsOgpkaWZmIC0tZ2l0
IGEvbGliL21lc29uLmJ1aWxkIGIvbGliL21lc29uLmJ1aWxkCmluZGV4IDk5Mjk1MjBlLi43Yzk0
YTdlYSAxMDA2NDQKLS0tIGEvbGliL21lc29uLmJ1aWxkCisrKyBiL2xpYi9tZXNvbi5idWlsZApA
QCAtMTAsNiArMTAsNyBAQCBsaWJfc291cmNlcyA9IFsKIAknaTkxNS9nZW1fcmluZy5jJywKIAkn
aTkxNS9nZW1fbW1hbi5jJywKIAknaTkxNS9nZW1fdm0uYycsCisJJ2k5MTUvaW50ZWxfbWVtb3J5
X3JlZ2lvbi5jJywKIAknaWd0X2NvbGxlY3Rpb24uYycsCiAJJ2lndF9jb2xvcl9lbmNvZGluZy5j
JywKIAknaWd0X2RlYnVnZnMuYycsCi0tIAoyLjI2LjMKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
