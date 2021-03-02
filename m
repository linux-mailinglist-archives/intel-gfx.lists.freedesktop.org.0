Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B79073295D7
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Mar 2021 05:12:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9C2089F8B;
	Tue,  2 Mar 2021 04:12:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8744C89F63
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Mar 2021 04:12:34 +0000 (UTC)
IronPort-SDR: VR5jO23uao0FpLmva8F7bijkEI0meqvrHhSH43gqgklntynaQ+Q5hZrkpCNgtaLP+KvZ75IfO8
 u4HoBYolWH4g==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="165916600"
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="165916600"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 20:12:33 -0800
IronPort-SDR: IqFOlPZzlx/04Wg2rWrumiMbMPPx196ne7YnKwvhybBW6F7ngxttGJEO1PCXfIj9zWZhgJEYg2
 kABJve5SZxbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="435592959"
Received: from cooperch-ml.itwn.intel.com ([10.5.253.155])
 by fmsmga002.fm.intel.com with ESMTP; 01 Mar 2021 20:11:26 -0800
From: Cooper Chiou <cooper.chiou@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Mar 2021 11:55:00 +0800
Message-Id: <20210302035500.4464-1-cooper.chiou@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200916180745.627-1-cooper.chiou@intel.com>
References: <20200916180745.627-1-cooper.chiou@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Enable
 WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
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
Cc: Cooper Chiou <cooper.chiou@intel.com>,
 William Tseng <william.tseng@intel.com>, Jani Nikula <jani.nikula@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2FQcm9ncmFtTWdzckZvckNvcnJlY3RTbGljZVNwZWNpZmljTW1pb1JlYWRzIGFwcGxpZXMgZm9y
IEdlbjkgdG8KcmVzb2x2ZSBWUDggaGFyZHdhcmUgZW5jb2Rpbmcgc3lzdGVtIGhhbmcgdXAgb24g
R1QxIHNrdSBmb3IKQ2hyb21pdW1PUyBwcm9qZWN0cwoKUmVmZXJlbmNlOiBIU0QjMTUwODA0NTAx
OCwxNDA1NTg2ODQwLCBCU0lEIzA1NzUKCkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPgpDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwu
Y29tPgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRr
by51cnN1bGluQGxpbnV4LmludGVsLmNvbT4KQ2M6IFdpbGxpYW0gVHNlbmcgPHdpbGxpYW0udHNl
bmdAaW50ZWwuY29tPgpDYzogTGVlIFNoYXduIEMgPHNoYXduLmMubGVlQGludGVsLmNvbT4KClNp
Z25lZC1vZmYtYnk6IENvb3BlciBDaGlvdSA8Y29vcGVyLmNoaW91QGludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgMzcgKysrKysrKysr
KysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMzcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCmluZGV4IDNiNGE3ZGE2MGYwYi4u
YTJhMjNiYjM1OWU4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93
b3JrYXJvdW5kcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91
bmRzLmMKQEAgLTg3OCw5ICs4NzgsNDYgQEAgaHN3X2d0X3dvcmthcm91bmRzX2luaXQoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKIAl3YV93
cml0ZV9jbHIod2FsLCBHRU43X0ZGX1RIUkVBRF9NT0RFLCBHRU43X0ZGX1ZTX1JFRl9DTlRfRkZN
RSk7CiB9CiAKK3N0YXRpYyB2b2lkCitnZW45X3dhX2luaXRfbWNyKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1LCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCit7CisJY29uc3Qgc3RydWN0
IHNzZXVfZGV2X2luZm8gKnNzZXUgPSAmaTkxNS0+Z3QuaW5mby5zc2V1OworCXVuc2lnbmVkIGlu
dCBzbGljZSwgc3Vic2xpY2U7CisJdTMyIG1jciwgbWNyX21hc2s7CisJR0VNX0JVR19PTihJTlRF
TF9HRU4oaTkxNSkgPCA5KTsKKworCS8qCisJICogV2FQcm9ncmFtTWdzckZvckNvcnJlY3RTbGlj
ZVNwZWNpZmljTW1pb1JlYWRzOmdsayxrYmwsY21sCisJICogQmVmb3JlIGFueSBNTUlPIHJlYWQg
aW50byBzbGljZS9zdWJzbGljZSBzcGVjaWZpYyByZWdpc3RlcnMsIE1DUgorCSAqIHBhY2tldCBj
b250cm9sIHJlZ2lzdGVyIG5lZWRzIHRvIGJlIHByb2dyYW1tZWQgdG8gcG9pbnQgdG8gYW55CisJ
ICogZW5hYmxlZCBzL3NzIHBhaXIuIE90aGVyd2lzZSwgaW5jb3JyZWN0IHZhbHVlcyB3aWxsIGJl
IHJldHVybmVkLgorCSAqIFRoaXMgbWVhbnMgZWFjaCBzdWJzZXF1ZW50IE1NSU8gcmVhZCB3aWxs
IGJlIGZvcndhcmRlZCB0byBhbgorCSAqIHNwZWNpZmljIHMvc3MgY29tYmluYXRpb24sIGJ1dCB0
aGlzIGlzIE9LIHNpbmNlIHRoZXNlIHJlZ2lzdGVycworCSAqIGFyZSBjb25zaXN0ZW50IGFjcm9z
cyBzL3NzIGluIGFsbW9zdCBhbGwgY2FzZXMuIEluIHRoZSByYXJlCisJICogb2NjYXNpb25zLCBz
dWNoIGFzIElOU1RET05FLCB3aGVyZSB0aGlzIHZhbHVlIGlzIGRlcGVuZGVudAorCSAqIG9uIHMv
c3MgY29tYm8sIHRoZSByZWFkIHNob3VsZCBiZSBkb25lIHdpdGggcmVhZF9zdWJzbGljZV9yZWcu
CisJICovCisJc2xpY2UgPSBmbHMoc3NldS0+c2xpY2VfbWFzaykgLSAxOworCUdFTV9CVUdfT04o
c2xpY2UgPj0gQVJSQVlfU0laRShzc2V1LT5zdWJzbGljZV9tYXNrKSk7CisJc3Vic2xpY2UgPSBm
bHMoaW50ZWxfc3NldV9nZXRfc3Vic2xpY2VzKHNzZXUsIHNsaWNlKSk7CisJR0VNX0JVR19PTigh
c3Vic2xpY2UpOworCXN1YnNsaWNlLS07CisKKwltY3IgPSBHRU44X01DUl9TTElDRShzbGljZSkg
fCBHRU44X01DUl9TVUJTTElDRShzdWJzbGljZSk7CisJbWNyX21hc2sgPSBHRU44X01DUl9TTElD
RV9NQVNLIHwgR0VOOF9NQ1JfU1VCU0xJQ0VfTUFTSzsKKworCWRybV9kYmcoJmk5MTUtPmRybSwg
Ik1DUiBzbGljZTolZC9zdWJzbGljZTolZCA9ICV4XG4iLCBzbGljZSwgc3Vic2xpY2UsIG1jcik7
CisKKwl3YV93cml0ZV9jbHJfc2V0KHdhbCwgR0VOOF9NQ1JfU0VMRUNUT1IsIG1jcl9tYXNrLCBt
Y3IpOworfQorCiBzdGF0aWMgdm9pZAogZ2VuOV9ndF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1LCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCiB7CisJLyog
V2FQcm9ncmFtTWdzckZvckNvcnJlY3RTbGljZVNwZWNpZmljTW1pb1JlYWRzOmdsayxrYmwsY21s
ICovCisJaWYgKCFJU19DT0ZGRUVMQUtFKGk5MTUpKQorCQlnZW45X3dhX2luaXRfbWNyKGk5MTUs
IHdhbCk7CisKIAkvKiBXYURpc2FibGVLaWxsTG9naWM6Ynh0LHNrbCxrYmwgKi8KIAlpZiAoIUlT
X0NPRkZFRUxBS0UoaTkxNSkgJiYgIUlTX0NPTUVUTEFLRShpOTE1KSkKIAkJd2Ffd3JpdGVfb3Io
d2FsLAotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
