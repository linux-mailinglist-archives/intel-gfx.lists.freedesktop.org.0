Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 916FAE8CF1
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 17:42:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9CE86E808;
	Tue, 29 Oct 2019 16:42:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE26C6E808
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 16:42:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 09:42:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,244,1569308400"; d="scan'208";a="399849655"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.135])
 by fmsmga005.fm.intel.com with ESMTP; 29 Oct 2019 09:42:45 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2019 09:43:26 -0700
Message-Id: <20191029164326.6329-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191029164326.6329-1-matthew.d.roper@intel.com>
References: <87tv7sjacd.fsf@intel.com>
 <20191029164326.6329-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 2/2] drm/i915/vbt: Handle generic DTD block
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VkJUIHJldmlzaW9uIDIyOSBhZGRzIGEgbmV3ICJHZW5lcmljIERURCIgYmxvY2sgNTggYW5kIGRl
cHJlY2F0ZXMgdGhlCm9sZCBMRlAgcGFuZWwgbW9kZSBkYXRhIGluIGJsb2NrIDQyLiAgTGV0J3Mg
c3RhcnQgcGFyc2luZyB0aGlzIGJsb2NrIHRvCmZpbGwgaW4gdGhlIHBhbmVsIGZpeGVkIG1vZGUg
b24gZGV2aWNlcyB3aXRoIGEgPj0yMjkgVkJULgoKdjI6CiAqIFVwZGF0ZSBhY2NvcmRpbmcgdG8g
dGhlIHJlY2VudCB1cGRhdGVzOgogICAgLSBEVEQgc2l6ZSBpcyBub3cgMTYgYml0cyBpbnN0ZWFk
IG9mIDI0CiAgICAtIHBvbGFyaXR5IGlzIG5vdyBqdXN0IGEgc2luZ2xlIGJpdCBmb3IgaHN5bmMg
YW5kIHZzeW5jIGFuZCBpcwogICAgICBwcm9wZXJseSBkb2N1bWVudGVkCiAqIE1pbm9yIGNoZWNr
cGF0Y2ggZml4Cgp2MzoKICogTm93IHRoYXQgcGFuZWwgb3B0aW9ucyBhcmUgcGFyc2VkIHNlcGFy
YXRlbHkgZnJvbSB0aGUgcHJldmlvdXMgcGF0Y2gsCiAgIG1vdmUgZ2VuZXJpYyBEVEQgcGFyc2lu
ZyBpbnRvIGEgZnVuY3Rpb24gcGFyYWxsZWwgdG8KICAgcGFyc2VfbGZwX3BhbmVsX2R0ZC4gIFdl
J2xsIHN0aWxsIGZhbGwgYmFjayB0byBsb29raW5nIGF0IHRoZSBsZWdhY3kKICAgTFZEUyB0aW1p
bmcgYmxvY2sgaWYgdGhlIGdlbmVyaWMgRFREIGZhaWxzLiAgKEphbmkpCiAqIERvbid0IGZvcmdl
dCB0byBhY3R1YWxseSBzZXQgbGZwX2x2ZHNfdmJ0X21vZGUhICAoSmFuaSkKICogRHJvcCAiYmRi
XyIgcHJlZml4IGZyb20gZHRkIGVudHJ5IHN0cnVjdHVyZS4gIChKYW5pKQogKiBGb2xsb3cgQzk5
IHN0YW5kYXJkIGZvciBzdHJ1Y3R1cmUncyBmbGV4aWJsZSBhcnJheSBtZW1iZXIuICAoSmFuaSkK
CkJzcGVjOiA1NDc1MQpCc3BlYzogMjAxNDgKQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBp
bnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgICAg
IHwgODYgKysrKysrKysrKysrKysrKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF92YnRfZGVmcy5oIHwgMzEgKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAxMTUgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Jpb3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYmlvcy5jCmluZGV4IDJkMmM5ZDgyZTgwNS4uNTZjZTk5NGNkZjhjIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwpAQCAtMjkwLDcgKzI5MCw3IEBAIHBhcnNl
X2xmcF9wYW5lbF9kdGQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCiAJZGV2
X3ByaXYtPnZidC5sZnBfbHZkc192YnRfbW9kZSA9IHBhbmVsX2ZpeGVkX21vZGU7CiAKLQlEUk1f
REVCVUdfS01TKCJGb3VuZCBwYW5lbCBtb2RlIGluIEJJT1MgVkJUIHRhYmxlczpcbiIpOworCURS
TV9ERUJVR19LTVMoIkZvdW5kIHBhbmVsIG1vZGUgaW4gQklPUyBWQlQgbGVnYWN5IGxmcCB0YWJs
ZTpcbiIpOwogCWRybV9tb2RlX2RlYnVnX3ByaW50bW9kZWxpbmUocGFuZWxfZml4ZWRfbW9kZSk7
CiAKIAlmcF90aW1pbmcgPSBnZXRfbHZkc19mcF90aW1pbmcoYmRiLCBsdmRzX2xmcF9kYXRhLApA
QCAtMzA3LDYgKzMwNyw4MSBAQCBwYXJzZV9sZnBfcGFuZWxfZHRkKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwKIAl9CiB9CiAKK3N0YXRpYyB2b2lkCitwYXJzZV9nZW5lcmljX2R0
ZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCisJCSAgY29uc3Qgc3RydWN0IGJk
Yl9oZWFkZXIgKmJkYikKK3sKKwljb25zdCBzdHJ1Y3QgYmRiX2dlbmVyaWNfZHRkICpnZW5lcmlj
X2R0ZDsKKwljb25zdCBzdHJ1Y3QgZ2VuZXJpY19kdGRfZW50cnkgKmR0ZDsKKwlzdHJ1Y3QgZHJt
X2Rpc3BsYXlfbW9kZSAqcGFuZWxfZml4ZWRfbW9kZTsKKwlpbnQgbnVtX2R0ZDsKKworCWdlbmVy
aWNfZHRkID0gZmluZF9zZWN0aW9uKGJkYiwgQkRCX0dFTkVSSUNfRFREKTsKKwlpZiAoIWdlbmVy
aWNfZHRkKQorCQlyZXR1cm47CisKKwlpZiAoZ2VuZXJpY19kdGQtPmdkdGRfc2l6ZSA8IHNpemVv
ZihzdHJ1Y3QgZ2VuZXJpY19kdGRfZW50cnkpKSB7CisJCURSTV9FUlJPUigiR0RURCBzaXplICV1
IGlzIHRvbyBzbWFsbC5cbiIsCisJCQkgIGdlbmVyaWNfZHRkLT5nZHRkX3NpemUpOworCQlyZXR1
cm47CisJfSBlbHNlIGlmIChnZW5lcmljX2R0ZC0+Z2R0ZF9zaXplICE9CisJCSAgIHNpemVvZihz
dHJ1Y3QgZ2VuZXJpY19kdGRfZW50cnkpKSB7CisJCURSTV9FUlJPUigiVW5leHBlY3RlZCBHRFRE
IHNpemUgJXVcbiIsIGdlbmVyaWNfZHRkLT5nZHRkX3NpemUpOworCQkvKiBEVEQgaGFzIHVua25v
d24gZmllbGRzLCBidXQga2VlcCBnb2luZyAqLworCX0KKworCW51bV9kdGQgPSAoZ2V0X2Jsb2Nr
c2l6ZShnZW5lcmljX2R0ZCkgLQorCQkgICBzaXplb2Yoc3RydWN0IGJkYl9nZW5lcmljX2R0ZCkp
IC8gZ2VuZXJpY19kdGQtPmdkdGRfc2l6ZTsKKwlpZiAoZGV2X3ByaXYtPnZidC5wYW5lbF90eXBl
ID4gbnVtX2R0ZCkgeworCQlEUk1fRVJST1IoIlBhbmVsIHR5cGUgJWQgbm90IGZvdW5kIGluIHRh
YmxlIG9mICVkIERURCdzXG4iLAorCQkJICBkZXZfcHJpdi0+dmJ0LnBhbmVsX3R5cGUsIG51bV9k
dGQpOworCQlyZXR1cm47CisJfQorCisJZHRkID0gJmdlbmVyaWNfZHRkLT5kdGRbZGV2X3ByaXYt
PnZidC5wYW5lbF90eXBlXTsKKworCXBhbmVsX2ZpeGVkX21vZGUgPSBremFsbG9jKHNpemVvZigq
cGFuZWxfZml4ZWRfbW9kZSksIEdGUF9LRVJORUwpOworCWlmICghcGFuZWxfZml4ZWRfbW9kZSkK
KwkJcmV0dXJuOworCisJcGFuZWxfZml4ZWRfbW9kZS0+aGRpc3BsYXkgPSBkdGQtPmhhY3RpdmU7
CisJcGFuZWxfZml4ZWRfbW9kZS0+aHN5bmNfc3RhcnQgPQorCQlwYW5lbF9maXhlZF9tb2RlLT5o
ZGlzcGxheSArIGR0ZC0+aGZyb250X3BvcmNoOworCXBhbmVsX2ZpeGVkX21vZGUtPmhzeW5jX2Vu
ZCA9CisJCXBhbmVsX2ZpeGVkX21vZGUtPmhzeW5jX3N0YXJ0ICsgZHRkLT5oc3luYzsKKwlwYW5l
bF9maXhlZF9tb2RlLT5odG90YWwgPSBwYW5lbF9maXhlZF9tb2RlLT5oc3luY19lbmQ7CisKKwlw
YW5lbF9maXhlZF9tb2RlLT52ZGlzcGxheSA9IGR0ZC0+dmFjdGl2ZTsKKwlwYW5lbF9maXhlZF9t
b2RlLT52c3luY19zdGFydCA9CisJCXBhbmVsX2ZpeGVkX21vZGUtPnZkaXNwbGF5ICsgZHRkLT52
ZnJvbnRfcG9yY2g7CisJcGFuZWxfZml4ZWRfbW9kZS0+dnN5bmNfZW5kID0KKwkJcGFuZWxfZml4
ZWRfbW9kZS0+dnN5bmNfc3RhcnQgKyBkdGQtPnZzeW5jOworCXBhbmVsX2ZpeGVkX21vZGUtPnZ0
b3RhbCA9IHBhbmVsX2ZpeGVkX21vZGUtPnZzeW5jX2VuZDsKKworCXBhbmVsX2ZpeGVkX21vZGUt
PmNsb2NrID0gZHRkLT5waXhlbF9jbG9jazsKKwlwYW5lbF9maXhlZF9tb2RlLT53aWR0aF9tbSA9
IGR0ZC0+d2lkdGhfbW07CisJcGFuZWxfZml4ZWRfbW9kZS0+aGVpZ2h0X21tID0gZHRkLT5oZWln
aHRfbW07CisKKwlwYW5lbF9maXhlZF9tb2RlLT50eXBlID0gRFJNX01PREVfVFlQRV9QUkVGRVJS
RUQ7CisJZHJtX21vZGVfc2V0X25hbWUocGFuZWxfZml4ZWRfbW9kZSk7CisKKwlpZiAoZHRkLT5o
c3luY19wb2xhcml0eSkKKwkJcGFuZWxfZml4ZWRfbW9kZS0+ZmxhZ3MgfD0gRFJNX01PREVfRkxB
R19QSFNZTkM7CisJZWxzZQorCQlwYW5lbF9maXhlZF9tb2RlLT5mbGFncyB8PSBEUk1fTU9ERV9G
TEFHX05IU1lOQzsKKworCWlmIChkdGQtPnZzeW5jX3BvbGFyaXR5KQorCQlwYW5lbF9maXhlZF9t
b2RlLT5mbGFncyB8PSBEUk1fTU9ERV9GTEFHX1BWU1lOQzsKKwllbHNlCisJCXBhbmVsX2ZpeGVk
X21vZGUtPmZsYWdzIHw9IERSTV9NT0RFX0ZMQUdfTlZTWU5DOworCisJRFJNX0RFQlVHX0tNUygi
Rm91bmQgcGFuZWwgbW9kZSBpbiBCSU9TIFZCVCBnZW5lcmljIGR0ZCB0YWJsZTpcbiIpOworCWRy
bV9tb2RlX2RlYnVnX3ByaW50bW9kZWxpbmUocGFuZWxfZml4ZWRfbW9kZSk7CisKKwlkZXZfcHJp
di0+dmJ0LmxmcF9sdmRzX3ZidF9tb2RlID0gcGFuZWxfZml4ZWRfbW9kZTsKK30KKworCiBzdGF0
aWMgdm9pZAogcGFyc2VfbGZwX2JhY2tsaWdodChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsCiAJCSAgICBjb25zdCBzdHJ1Y3QgYmRiX2hlYWRlciAqYmRiKQpAQCAtMTg4Myw3ICsx
OTU4LDE0IEBAIHZvaWQgaW50ZWxfYmlvc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikKIAlwYXJzZV9nZW5lcmFsX2ZlYXR1cmVzKGRldl9wcml2LCBiZGIpOwogCXBhcnNl
X2dlbmVyYWxfZGVmaW5pdGlvbnMoZGV2X3ByaXYsIGJkYik7CiAJcGFyc2VfcGFuZWxfb3B0aW9u
cyhkZXZfcHJpdiwgYmRiKTsKLQlwYXJzZV9sZnBfcGFuZWxfZHRkKGRldl9wcml2LCBiZGIpOwor
CWlmIChiZGItPnZlcnNpb24gPj0gMjI5KQorCQkvKgorCQkgKiBJZiB0aGlzIGZhaWxzLCB3ZSds
bCBmYWxsIGJhY2sgdG8gdHJ5aW5nIHRvIHBhcnNlIHRoZQorCQkgKiBsZWdhY3kgTFZEUyBibG9j
ayBiZWxvdy4KKwkJICovCisJCXBhcnNlX2dlbmVyaWNfZHRkKGRldl9wcml2LCBiZGIpOworCWlm
ICghZGV2X3ByaXYtPnZidC5sZnBfbHZkc192YnRfbW9kZSkKKwkJcGFyc2VfbGZwX3BhbmVsX2R0
ZChkZXZfcHJpdiwgYmRiKTsKIAlwYXJzZV9sZnBfYmFja2xpZ2h0KGRldl9wcml2LCBiZGIpOwog
CXBhcnNlX3Nkdm9fcGFuZWxfZGF0YShkZXZfcHJpdiwgYmRiKTsKIAlwYXJzZV9kcml2ZXJfZmVh
dHVyZXMoZGV2X3ByaXYsIGJkYik7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3ZidF9kZWZzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3ZidF9kZWZzLmgKaW5kZXggNTMxY2E3ODhiNDEwLi4wN2VlOWM3YWM1ZmIgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaAorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmgKQEAgLTExNSw2ICsx
MTUsNyBAQCBlbnVtIGJkYl9ibG9ja19pZCB7CiAJQkRCX01JUElfQ09ORklHCQkJPSA1MiwKIAlC
REJfTUlQSV9TRVFVRU5DRQkJPSA1MywKIAlCREJfQ09NUFJFU1NJT05fUEFSQU1FVEVSUwk9IDU2
LAorCUJEQl9HRU5FUklDX0RURAkJCT0gNTgsCiAJQkRCX1NLSVAJCQk9IDI1NCwgLyogVkJJT1Mg
cHJpdmF0ZSBibG9jaywgaWdub3JlICovCiB9OwogCkBAIC04NjUsNCArODY2LDM0IEBAIHN0cnVj
dCBiZGJfY29tcHJlc3Npb25fcGFyYW1ldGVycyB7CiAJc3RydWN0IGRzY19jb21wcmVzc2lvbl9w
YXJhbWV0ZXJzX2VudHJ5IGRhdGFbMTZdOwogfSBfX3BhY2tlZDsKIAorLyoKKyAqIEJsb2NrIDU4
IC0gR2VuZXJpYyBEVEQgQmxvY2sKKyAqLworCitzdHJ1Y3QgZ2VuZXJpY19kdGRfZW50cnkgewor
CXUzMiBwaXhlbF9jbG9jazsKKwl1MTYgaGFjdGl2ZTsKKwl1MTYgaGJsYW5rOworCXUxNiBoZnJv
bnRfcG9yY2g7CisJdTE2IGhzeW5jOworCXUxNiB2YWN0aXZlOworCXUxNiB2Ymxhbms7CisJdTE2
IHZmcm9udF9wb3JjaDsKKwl1MTYgdnN5bmM7CisJdTE2IHdpZHRoX21tOworCXUxNiBoZWlnaHRf
bW07CisKKwkvKiBGbGFncyAqLworCXU4IHJzdmRfZmxhZ3M6NjsKKwl1OCB2c3luY19wb2xhcml0
eToxOworCXU4IGhzeW5jX3BvbGFyaXR5OjE7CisKKwl1MzIgcnN2ZDoyNDsKK30gX19wYWNrZWQ7
CisKK3N0cnVjdCBiZGJfZ2VuZXJpY19kdGQgeworCXUxNiBnZHRkX3NpemU7CisJc3RydWN0IGdl
bmVyaWNfZHRkX2VudHJ5IGR0ZFtdOwkvKiB1cCB0byAyNCBEVEQncyAqLworfSBfX3BhY2tlZDsK
KwogI2VuZGlmIC8qIF9JTlRFTF9WQlRfREVGU19IXyAqLwotLSAKMi4yMS4wCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
