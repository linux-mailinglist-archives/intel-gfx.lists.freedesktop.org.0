Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B42C93C16C5
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 18:04:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 547CF6E8FE;
	Thu,  8 Jul 2021 16:04:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEEBF6E902;
 Thu,  8 Jul 2021 16:04:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10039"; a="231293773"
X-IronPort-AV: E=Sophos;i="5.84,224,1620716400"; d="scan'208";a="231293773"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 09:03:04 -0700
X-IronPort-AV: E=Sophos;i="5.84,224,1620716400"; d="scan'208";a="492164220"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 09:03:04 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Thu,  8 Jul 2021 09:20:52 -0700
Message-Id: <20210708162055.129996-5-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210708162055.129996-1-matthew.brost@intel.com>
References: <20210708162055.129996-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/7] drm/i915/guc: Add non blocking CTB send
 function
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

QWRkIG5vbiBibG9ja2luZyBDVEIgc2VuZCBmdW5jdGlvbiwgaW50ZWxfZ3VjX3NlbmRfbmIuIEd1
QyBzdWJtaXNzaW9uCndpbGwgc2VuZCBDVEJzIGluIHRoZSBjcml0aWNhbCBwYXRoIGFuZCBkb2Vz
IG5vdCBuZWVkIHRvIHdhaXQgZm9yIHRoZXNlCkNUQnMgdG8gY29tcGxldGUgYmVmb3JlIG1vdmlu
ZyBvbiwgaGVuY2UgdGhlIG5lZWQgZm9yIHRoaXMgbmV3IGZ1bmN0aW9uLgoKVGhlIG5vbi1ibG9j
a2luZyBDVEIgbm93IG11c3QgaGF2ZSBhIGZsb3cgY29udHJvbCBtZWNoYW5pc20gdG8gZW5zdXJl
CnRoZSBidWZmZXIgaXNuJ3Qgb3ZlcnJ1bi4gQSBsYXp5IHNwaW4gd2FpdCBpcyB1c2VkIGFzIHdl
IGJlbGlldmUgdGhlCmZsb3cgY29udHJvbCBjb25kaXRpb24gc2hvdWxkIGJlIHJhcmUgd2l0aCBh
IHByb3Blcmx5IHNpemVkIGJ1ZmZlci4KClRoZSBmdW5jdGlvbiwgaW50ZWxfZ3VjX3NlbmRfbmIs
IGlzIGV4cG9ydGVkIGluIHRoaXMgcGF0Y2ggYnV0IHVudXNlZC4KU2V2ZXJhbCBwYXRjaGVzIGxh
dGVyIGluIHRoZSBzZXJpZXMgbWFrZSB1c2Ugb2YgdGhpcyBmdW5jdGlvbi4KCnYyOgogKE1pY2hh
bCkKICAtIFVzZSBkZWZpbmUgZm9yIEgyRyByb29tIGNhbGN1bGF0aW9ucwogIC0gTW92ZSBJTlRF
TF9HVUNfU0VORF9OQiBkZWZpbmUKIChEYW5pZWwgVmV0dGVyKQogIC0gVXNlIG1zbGVlcF9pbnRl
cnJ1cHRpYmxlIHJhdGhlciB0aGFuIGNvbmRfcmVzY2hlZAp2MzoKIChNaWNoYWwpCiAgLSBNb3Zl
IGluY2x1ZGVzIHRvIGZvbGxvd2luZyBwYXRjaAogIC0gcy9JTlRFTF9HVUNfU0VORF9OQi9JTlRF
TF9HVUNfQ1RfU0VORF9OQi9nCnY0OgogKEpvaG4gSCkKICAtIFVwZGF0ZSBjb21tZW50LCBhZGQg
dHlwZSBsb2NhbCB2YXJpYWJsZQoKU2lnbmVkLW9mZi1ieTogSm9obiBIYXJyaXNvbiA8Sm9obi5D
LkhhcnJpc29uQEludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dGhldyBCcm9zdCA8bWF0dGhl
dy5icm9zdEBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBKb2huIEhhcnJpc29uIDxKb2huLkMuSGFy
cmlzb25ASW50ZWwuY29tPgotLS0KIC4uLi9ndC91Yy9hYmkvZ3VjX2NvbW11bmljYXRpb25fY3Ri
X2FiaS5oICAgICB8ICAzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMu
aCAgICAgICAgfCAxMSArKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19j
dC5jICAgICB8IDg4ICsrKysrKysrKysrKysrKystLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX2d1Y19jdC5oICAgICB8ICA0ICstCiA0IGZpbGVzIGNoYW5nZWQsIDkxIGluc2Vy
dGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2FiaS9ndWNfY29tbXVuaWNhdGlvbl9jdGJfYWJpLmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9hYmkvZ3VjX2NvbW11bmljYXRpb25fY3RiX2FiaS5oCmluZGV4IGU5MzNj
YTAyZDBlYi4uOTllMWZhZDVjYTIwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9hYmkvZ3VjX2NvbW11bmljYXRpb25fY3RiX2FiaS5oCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2FiaS9ndWNfY29tbXVuaWNhdGlvbl9jdGJfYWJpLmgKQEAgLTc5LDcgKzc5
LDggQEAgc3RhdGljX2Fzc2VydChzaXplb2Yoc3RydWN0IGd1Y19jdF9idWZmZXJfZGVzYykgPT0g
NjQpOwogICogICstLS0rLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsKICAqLwogCi0jZGVmaW5lIEdVQ19DVEJfTVNH
X01JTl9MRU4JCQkxdQorI2RlZmluZSBHVUNfQ1RCX0hEUl9MRU4JCQkJMXUKKyNkZWZpbmUgR1VD
X0NUQl9NU0dfTUlOX0xFTgkJCUdVQ19DVEJfSERSX0xFTgogI2RlZmluZSBHVUNfQ1RCX01TR19N
QVhfTEVOCQkJMjU2dQogI2RlZmluZSBHVUNfQ1RCX01TR18wX0ZFTkNFCQkJKDB4ZmZmZiA8PCAx
NikKICNkZWZpbmUgR1VDX0NUQl9NU0dfMF9GT1JNQVQJCQkoMHhmIDw8IDEyKQpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuaAppbmRleCA0YWJjNTlmNmYzY2QuLjcyZTQ2NTMyMjJl
MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmgKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmgKQEAgLTc0LDcgKzc0LDE0
IEBAIHN0YXRpYyBpbmxpbmUgc3RydWN0IGludGVsX2d1YyAqbG9nX3RvX2d1YyhzdHJ1Y3QgaW50
ZWxfZ3VjX2xvZyAqbG9nKQogc3RhdGljCiBpbmxpbmUgaW50IGludGVsX2d1Y19zZW5kKHN0cnVj
dCBpbnRlbF9ndWMgKmd1YywgY29uc3QgdTMyICphY3Rpb24sIHUzMiBsZW4pCiB7Ci0JcmV0dXJu
IGludGVsX2d1Y19jdF9zZW5kKCZndWMtPmN0LCBhY3Rpb24sIGxlbiwgTlVMTCwgMCk7CisJcmV0
dXJuIGludGVsX2d1Y19jdF9zZW5kKCZndWMtPmN0LCBhY3Rpb24sIGxlbiwgTlVMTCwgMCwgMCk7
Cit9CisKK3N0YXRpYworaW5saW5lIGludCBpbnRlbF9ndWNfc2VuZF9uYihzdHJ1Y3QgaW50ZWxf
Z3VjICpndWMsIGNvbnN0IHUzMiAqYWN0aW9uLCB1MzIgbGVuKQoreworCXJldHVybiBpbnRlbF9n
dWNfY3Rfc2VuZCgmZ3VjLT5jdCwgYWN0aW9uLCBsZW4sIE5VTEwsIDAsCisJCQkJIElOVEVMX0dV
Q19DVF9TRU5EX05CKTsKIH0KIAogc3RhdGljIGlubGluZSBpbnQKQEAgLTgyLDcgKzg5LDcgQEAg
aW50ZWxfZ3VjX3NlbmRfYW5kX3JlY2VpdmUoc3RydWN0IGludGVsX2d1YyAqZ3VjLCBjb25zdCB1
MzIgKmFjdGlvbiwgdTMyIGxlbiwKIAkJCSAgIHUzMiAqcmVzcG9uc2VfYnVmLCB1MzIgcmVzcG9u
c2VfYnVmX3NpemUpCiB7CiAJcmV0dXJuIGludGVsX2d1Y19jdF9zZW5kKCZndWMtPmN0LCBhY3Rp
b24sIGxlbiwKLQkJCQkgcmVzcG9uc2VfYnVmLCByZXNwb25zZV9idWZfc2l6ZSk7CisJCQkJIHJl
c3BvbnNlX2J1ZiwgcmVzcG9uc2VfYnVmX3NpemUsIDApOwogfQogCiBzdGF0aWMgaW5saW5lIHZv
aWQgaW50ZWxfZ3VjX3RvX2hvc3RfZXZlbnRfaGFuZGxlcihzdHJ1Y3QgaW50ZWxfZ3VjICpndWMp
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfY3QuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19jdC5jCmluZGV4IDQzZTAzYWEy
ZGRlOC4uM2Q2Y2JhOGQ5MWFkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF9ndWNfY3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9n
dWNfY3QuYwpAQCAtMyw2ICszLDggQEAKICAqIENvcHlyaWdodCDCqSAyMDE2LTIwMTkgSW50ZWwg
Q29ycG9yYXRpb24KICAqLwogCisjaW5jbHVkZSA8bGludXgvY2lyY19idWYuaD4KKwogI2luY2x1
ZGUgImk5MTVfZHJ2LmgiCiAjaW5jbHVkZSAiaW50ZWxfZ3VjX2N0LmgiCiAjaW5jbHVkZSAiZ3Qv
aW50ZWxfZ3QuaCIKQEAgLTM3Myw3ICszNzUsNyBAQCBzdGF0aWMgdm9pZCB3cml0ZV9iYXJyaWVy
KHN0cnVjdCBpbnRlbF9ndWNfY3QgKmN0KQogc3RhdGljIGludCBjdF93cml0ZShzdHJ1Y3QgaW50
ZWxfZ3VjX2N0ICpjdCwKIAkJICAgIGNvbnN0IHUzMiAqYWN0aW9uLAogCQkgICAgdTMyIGxlbiAv
KiBpbiBkd29yZHMgKi8sCi0JCSAgICB1MzIgZmVuY2UpCisJCSAgICB1MzIgZmVuY2UsIHUzMiBm
bGFncykKIHsKIAlzdHJ1Y3QgaW50ZWxfZ3VjX2N0X2J1ZmZlciAqY3RiID0gJmN0LT5jdGJzLnNl
bmQ7CiAJc3RydWN0IGd1Y19jdF9idWZmZXJfZGVzYyAqZGVzYyA9IGN0Yi0+ZGVzYzsKQEAgLTM4
Myw2ICszODUsNyBAQCBzdGF0aWMgaW50IGN0X3dyaXRlKHN0cnVjdCBpbnRlbF9ndWNfY3QgKmN0
LAogCXUzMiB1c2VkOwogCXUzMiBoZWFkZXI7CiAJdTMyIGh4ZzsKKwl1MzIgdHlwZTsKIAl1MzIg
KmNtZHMgPSBjdGItPmNtZHM7CiAJdW5zaWduZWQgaW50IGk7CiAKQEAgLTQwOCw4ICs0MTEsOCBA
QCBzdGF0aWMgaW50IGN0X3dyaXRlKHN0cnVjdCBpbnRlbF9ndWNfY3QgKmN0LAogCWVsc2UKIAkJ
dXNlZCA9IHRhaWwgLSBoZWFkOwogCi0JLyogbWFrZSBzdXJlIHRoZXJlIGlzIGEgc3BhY2UgaW5j
bHVkaW5nIGV4dHJhIGR3IGZvciB0aGUgZmVuY2UgKi8KLQlpZiAodW5saWtlbHkodXNlZCArIGxl
biArIDEgPj0gc2l6ZSkpCisJLyogbWFrZSBzdXJlIHRoZXJlIGlzIGEgc3BhY2UgaW5jbHVkaW5n
IGV4dHJhIGR3IGZvciB0aGUgaGVhZGVyICovCisJaWYgKHVubGlrZWx5KHVzZWQgKyBsZW4gKyBH
VUNfQ1RCX0hEUl9MRU4gPj0gc2l6ZSkpCiAJCXJldHVybiAtRU5PU1BDOwogCiAJLyoKQEAgLTQy
MSw5ICs0MjQsMTEgQEAgc3RhdGljIGludCBjdF93cml0ZShzdHJ1Y3QgaW50ZWxfZ3VjX2N0ICpj
dCwKIAkJIEZJRUxEX1BSRVAoR1VDX0NUQl9NU0dfMF9OVU1fRFdPUkRTLCBsZW4pIHwKIAkJIEZJ
RUxEX1BSRVAoR1VDX0NUQl9NU0dfMF9GRU5DRSwgZmVuY2UpOwogCi0JaHhnID0gRklFTERfUFJF
UChHVUNfSFhHX01TR18wX1RZUEUsIEdVQ19IWEdfVFlQRV9SRVFVRVNUKSB8Ci0JICAgICAgRklF
TERfUFJFUChHVUNfSFhHX1JFUVVFU1RfTVNHXzBfQUNUSU9OIHwKLQkJCSBHVUNfSFhHX1JFUVVF
U1RfTVNHXzBfREFUQTAsIGFjdGlvblswXSk7CisJdHlwZSA9IChmbGFncyAmIElOVEVMX0dVQ19D
VF9TRU5EX05CKSA/IEdVQ19IWEdfVFlQRV9FVkVOVCA6CisJCUdVQ19IWEdfVFlQRV9SRVFVRVNU
OworCWh4ZyA9IEZJRUxEX1BSRVAoR1VDX0hYR19NU0dfMF9UWVBFLCB0eXBlKSB8CisJCUZJRUxE
X1BSRVAoR1VDX0hYR19FVkVOVF9NU0dfMF9BQ1RJT04gfAorCQkJICAgR1VDX0hYR19FVkVOVF9N
U0dfMF9EQVRBMCwgYWN0aW9uWzBdKTsKIAogCUNUX0RFQlVHKGN0LCAid3JpdGluZyAodGFpbCAl
dSkgJSpwaCAlKnBoICUqcGhcbiIsCiAJCSB0YWlsLCA0LCAmaGVhZGVyLCA0LCAmaHhnLCA0ICog
KGxlbiAtIDEpLCAmYWN0aW9uWzFdKTsKQEAgLTUwMCw2ICs1MDUsNDggQEAgc3RhdGljIGludCB3
YWl0X2Zvcl9jdF9yZXF1ZXN0X3VwZGF0ZShzdHJ1Y3QgY3RfcmVxdWVzdCAqcmVxLCB1MzIgKnN0
YXR1cykKIAlyZXR1cm4gZXJyOwogfQogCitzdGF0aWMgaW5saW5lIGJvb2wgaDJnX2hhc19yb29t
KHN0cnVjdCBpbnRlbF9ndWNfY3RfYnVmZmVyICpjdGIsIHUzMiBsZW5fZHcpCit7CisJc3RydWN0
IGd1Y19jdF9idWZmZXJfZGVzYyAqZGVzYyA9IGN0Yi0+ZGVzYzsKKwl1MzIgaGVhZCA9IFJFQURf
T05DRShkZXNjLT5oZWFkKTsKKwl1MzIgc3BhY2U7CisKKwlzcGFjZSA9IENJUkNfU1BBQ0UoZGVz
Yy0+dGFpbCwgaGVhZCwgY3RiLT5zaXplKTsKKworCXJldHVybiBzcGFjZSA+PSBsZW5fZHc7Cit9
CisKK3N0YXRpYyBpbnQgY3Rfc2VuZF9uYihzdHJ1Y3QgaW50ZWxfZ3VjX2N0ICpjdCwKKwkJICAg
ICAgY29uc3QgdTMyICphY3Rpb24sCisJCSAgICAgIHUzMiBsZW4sCisJCSAgICAgIHUzMiBmbGFn
cykKK3sKKwlzdHJ1Y3QgaW50ZWxfZ3VjX2N0X2J1ZmZlciAqY3RiID0gJmN0LT5jdGJzLnNlbmQ7
CisJdW5zaWduZWQgbG9uZyBzcGluX2ZsYWdzOworCXUzMiBmZW5jZTsKKwlpbnQgcmV0OworCisJ
c3Bpbl9sb2NrX2lycXNhdmUoJmN0Yi0+bG9jaywgc3Bpbl9mbGFncyk7CisKKwlyZXQgPSBoMmdf
aGFzX3Jvb20oY3RiLCBsZW4gKyBHVUNfQ1RCX0hEUl9MRU4pOworCWlmICh1bmxpa2VseSghcmV0
KSkgeworCQlyZXQgPSAtRUJVU1k7CisJCWdvdG8gb3V0OworCX0KKworCWZlbmNlID0gY3RfZ2V0
X25leHRfZmVuY2UoY3QpOworCXJldCA9IGN0X3dyaXRlKGN0LCBhY3Rpb24sIGxlbiwgZmVuY2Us
IGZsYWdzKTsKKwlpZiAodW5saWtlbHkocmV0KSkKKwkJZ290byBvdXQ7CisKKwlpbnRlbF9ndWNf
bm90aWZ5KGN0X3RvX2d1YyhjdCkpOworCitvdXQ6CisJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgm
Y3RiLT5sb2NrLCBzcGluX2ZsYWdzKTsKKworCXJldHVybiByZXQ7Cit9CisKIHN0YXRpYyBpbnQg
Y3Rfc2VuZChzdHJ1Y3QgaW50ZWxfZ3VjX2N0ICpjdCwKIAkJICAgY29uc3QgdTMyICphY3Rpb24s
CiAJCSAgIHUzMiBsZW4sCkBAIC01MDcsOCArNTU0LDEwIEBAIHN0YXRpYyBpbnQgY3Rfc2VuZChz
dHJ1Y3QgaW50ZWxfZ3VjX2N0ICpjdCwKIAkJICAgdTMyIHJlc3BvbnNlX2J1Zl9zaXplLAogCQkg
ICB1MzIgKnN0YXR1cykKIHsKKwlzdHJ1Y3QgaW50ZWxfZ3VjX2N0X2J1ZmZlciAqY3RiID0gJmN0
LT5jdGJzLnNlbmQ7CiAJc3RydWN0IGN0X3JlcXVlc3QgcmVxdWVzdDsKIAl1bnNpZ25lZCBsb25n
IGZsYWdzOworCXVuc2lnbmVkIGludCBzbGVlcF9wZXJpb2RfbXMgPSAxOwogCXUzMiBmZW5jZTsK
IAlpbnQgZXJyOwogCkBAIC01MTYsOCArNTY1LDI0IEBAIHN0YXRpYyBpbnQgY3Rfc2VuZChzdHJ1
Y3QgaW50ZWxfZ3VjX2N0ICpjdCwKIAlHRU1fQlVHX09OKCFsZW4pOwogCUdFTV9CVUdfT04obGVu
ICYgfkdVQ19DVF9NU0dfTEVOX01BU0spOwogCUdFTV9CVUdfT04oIXJlc3BvbnNlX2J1ZiAmJiBy
ZXNwb25zZV9idWZfc2l6ZSk7CisJbWlnaHRfc2xlZXAoKTsKKworCS8qCisJICogV2UgdXNlIGEg
bGF6eSBzcGluIHdhaXQgbG9vcCBoZXJlIGFzIHdlIGJlbGlldmUgdGhhdCBpZiB0aGUgQ1QKKwkg
KiBidWZmZXJzIGFyZSBzaXplZCBjb3JyZWN0bHkgdGhlIGZsb3cgY29udHJvbCBjb25kaXRpb24g
c2hvdWxkIGJlCisJICogcmFyZS4KKwkgKi8KK3JldHJ5OgorCXNwaW5fbG9ja19pcnFzYXZlKCZj
dGItPmxvY2ssIGZsYWdzKTsKKwlpZiAodW5saWtlbHkoIWgyZ19oYXNfcm9vbShjdGIsIGxlbiAr
IEdVQ19DVEJfSERSX0xFTikpKSB7CisJCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmN0Yi0+bG9j
aywgZmxhZ3MpOwogCi0Jc3Bpbl9sb2NrX2lycXNhdmUoJmN0LT5jdGJzLnNlbmQubG9jaywgZmxh
Z3MpOworCQlpZiAobXNsZWVwX2ludGVycnVwdGlibGUoc2xlZXBfcGVyaW9kX21zKSkKKwkJCXJl
dHVybiAtRUlOVFI7CisJCXNsZWVwX3BlcmlvZF9tcyA9IHNsZWVwX3BlcmlvZF9tcyA8PCAxOwor
CisJCWdvdG8gcmV0cnk7CisJfQogCiAJZmVuY2UgPSBjdF9nZXRfbmV4dF9mZW5jZShjdCk7CiAJ
cmVxdWVzdC5mZW5jZSA9IGZlbmNlOwpAQCAtNTI5LDkgKzU5NCw5IEBAIHN0YXRpYyBpbnQgY3Rf
c2VuZChzdHJ1Y3QgaW50ZWxfZ3VjX2N0ICpjdCwKIAlsaXN0X2FkZF90YWlsKCZyZXF1ZXN0Lmxp
bmssICZjdC0+cmVxdWVzdHMucGVuZGluZyk7CiAJc3Bpbl91bmxvY2soJmN0LT5yZXF1ZXN0cy5s
b2NrKTsKIAotCWVyciA9IGN0X3dyaXRlKGN0LCBhY3Rpb24sIGxlbiwgZmVuY2UpOworCWVyciA9
IGN0X3dyaXRlKGN0LCBhY3Rpb24sIGxlbiwgZmVuY2UsIDApOwogCi0Jc3Bpbl91bmxvY2tfaXJx
cmVzdG9yZSgmY3QtPmN0YnMuc2VuZC5sb2NrLCBmbGFncyk7CisJc3Bpbl91bmxvY2tfaXJxcmVz
dG9yZSgmY3RiLT5sb2NrLCBmbGFncyk7CiAKIAlpZiAodW5saWtlbHkoZXJyKSkKIAkJZ290byB1
bmxpbms7CkBAIC01NzEsNyArNjM2LDcgQEAgc3RhdGljIGludCBjdF9zZW5kKHN0cnVjdCBpbnRl
bF9ndWNfY3QgKmN0LAogICogQ29tbWFuZCBUcmFuc3BvcnQgKENUKSBidWZmZXIgYmFzZWQgR3VD
IHNlbmQgZnVuY3Rpb24uCiAgKi8KIGludCBpbnRlbF9ndWNfY3Rfc2VuZChzdHJ1Y3QgaW50ZWxf
Z3VjX2N0ICpjdCwgY29uc3QgdTMyICphY3Rpb24sIHUzMiBsZW4sCi0JCSAgICAgIHUzMiAqcmVz
cG9uc2VfYnVmLCB1MzIgcmVzcG9uc2VfYnVmX3NpemUpCisJCSAgICAgIHUzMiAqcmVzcG9uc2Vf
YnVmLCB1MzIgcmVzcG9uc2VfYnVmX3NpemUsIHUzMiBmbGFncykKIHsKIAl1MzIgc3RhdHVzID0g
fjA7IC8qIHVuZGVmaW5lZCAqLwogCWludCByZXQ7CkBAIC01ODEsNiArNjQ2LDkgQEAgaW50IGlu
dGVsX2d1Y19jdF9zZW5kKHN0cnVjdCBpbnRlbF9ndWNfY3QgKmN0LCBjb25zdCB1MzIgKmFjdGlv
biwgdTMyIGxlbiwKIAkJcmV0dXJuIC1FTk9ERVY7CiAJfQogCisJaWYgKGZsYWdzICYgSU5URUxf
R1VDX0NUX1NFTkRfTkIpCisJCXJldHVybiBjdF9zZW5kX25iKGN0LCBhY3Rpb24sIGxlbiwgZmxh
Z3MpOworCiAJcmV0ID0gY3Rfc2VuZChjdCwgYWN0aW9uLCBsZW4sIHJlc3BvbnNlX2J1ZiwgcmVz
cG9uc2VfYnVmX3NpemUsICZzdGF0dXMpOwogCWlmICh1bmxpa2VseShyZXQgPCAwKSkgewogCQlD
VF9FUlJPUihjdCwgIlNlbmRpbmcgYWN0aW9uICUjeCBmYWlsZWQgKGVycj0lZCBzdGF0dXM9JSNY
KVxuIiwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19j
dC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2N0LmgKaW5kZXggMWFl
MmRkZTZkYjkzLi41YmI4YmVmMDI0YzggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX2d1Y19jdC5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2lu
dGVsX2d1Y19jdC5oCkBAIC00Miw3ICs0Miw2IEBAIHN0cnVjdCBpbnRlbF9ndWNfY3RfYnVmZmVy
IHsKIAlib29sIGJyb2tlbjsKIH07CiAKLQogLyoqIFRvcC1sZXZlbCBzdHJ1Y3R1cmUgZm9yIENv
bW1hbmQgVHJhbnNwb3J0IHJlbGF0ZWQgZGF0YQogICoKICAqIEluY2x1ZGVzIGEgcGFpciBvZiBD
VCBidWZmZXJzIGZvciBiaS1kaXJlY3Rpb25hbCBjb21tdW5pY2F0aW9uIGFuZCB0cmFja2luZwpA
QCAtODcsOCArODYsOSBAQCBzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfZ3VjX2N0X2VuYWJsZWQo
c3RydWN0IGludGVsX2d1Y19jdCAqY3QpCiAJcmV0dXJuIGN0LT5lbmFibGVkOwogfQogCisjZGVm
aW5lIElOVEVMX0dVQ19DVF9TRU5EX05CCQlCSVQoMzEpCiBpbnQgaW50ZWxfZ3VjX2N0X3NlbmQo
c3RydWN0IGludGVsX2d1Y19jdCAqY3QsIGNvbnN0IHUzMiAqYWN0aW9uLCB1MzIgbGVuLAotCQkg
ICAgICB1MzIgKnJlc3BvbnNlX2J1ZiwgdTMyIHJlc3BvbnNlX2J1Zl9zaXplKTsKKwkJICAgICAg
dTMyICpyZXNwb25zZV9idWYsIHUzMiByZXNwb25zZV9idWZfc2l6ZSwgdTMyIGZsYWdzKTsKIHZv
aWQgaW50ZWxfZ3VjX2N0X2V2ZW50X2hhbmRsZXIoc3RydWN0IGludGVsX2d1Y19jdCAqY3QpOwog
CiAjZW5kaWYgLyogX0lOVEVMX0dVQ19DVF9IXyAqLwotLSAKMi4yOC4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
