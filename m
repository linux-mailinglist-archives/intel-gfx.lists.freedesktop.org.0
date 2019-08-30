Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0948A398E
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 16:48:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AF486E35D;
	Fri, 30 Aug 2019 14:47:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 557F46E354
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 14:47:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 07:47:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,447,1559545200"; d="scan'208";a="188894242"
Received: from unknown (HELO delly.ger.corp.intel.com) ([10.252.38.85])
 by FMSMGA003.fm.intel.com with ESMTP; 30 Aug 2019 07:47:45 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Aug 2019 17:47:25 +0300
Message-Id: <20190830144726.18291-11-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190830144726.18291-1-lionel.g.landwerlin@intel.com>
References: <20190830144726.18291-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v12 10/11] drm/i915/perf: allow holding
 preemption on filtered ctx
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

V2Ugd291bGQgbGlrZSB0byBtYWtlIHVzZSBvZiBwZXJmIGluIFZ1bGthbi4gVGhlIFZ1bGthbiBB
UEkgaXMgbXVjaApsb3dlciBsZXZlbCB0aGFuIE9wZW5HTCwgd2l0aCBhcHBsaWNhdGlvbnMgZGly
ZWN0bHkgZXhwb3NlZCB0byB0aGUKY29uY2VwdCBvZiBjb21tYW5kIGJ1ZmZlcnMgKHByZXR0eSBt
dWNoIGVxdWl2YWxlbnQgdG8gb3VyIGJhdGNoCmJ1ZmZlcnMpLiBJbiBWdWxrYW4sIHF1ZXJpZXMg
YXJlIGFsd2F5cyBsaW1pdGVkIGluIHNjb3BlIHRvIGEgY29tbWFuZApidWZmZXIuIEluIE9wZW5H
TCwgdGhlIGxhY2sgb2YgY29tbWFuZCBidWZmZXIgY29uY2VwdCBtZWFudCB0aGF0CnF1ZXJpZXMn
IGR1cmF0aW9uIGNvdWxkIHNwYW4gbXVsdGlwbGUgY29tbWFuZCBidWZmZXJzLgoKV2l0aCB0aGF0
IHJlc3RyaWN0aW9uIGdvbmUgaW4gVnVsa2FuLCB3ZSB3b3VsZCBsaWtlIHRvIHNpbXBsaWZ5Cm1l
YXN1cmluZyBwZXJmb3JtYW5jZSBqdXN0IGJ5IG1lYXN1cmluZyB0aGUgZGVsdGFzIGJldHdlZW4g
dGhlIGNvdW50ZXIKc25hcHNob3RzIHdyaXR0ZW4gYnkgMiBNSV9SRUNPUkRfUEVSRl9DT1VOVCBj
b21tYW5kcywgcmF0aGVyIHRoYW4gdGhlCm1vcmUgY29tcGxleCBzY2hlbWUgd2UgY3VycmVudGx5
IGhhdmUgaW4gdGhlIEdMIGRyaXZlciwgdXNpbmcgMgpNSV9SRUNPUkRfUEVSRl9DT1VOVCBjb21t
YW5kcyBhbmQgZG9pbmcgc29tZSBwb3N0IHByb2Nlc3Npbmcgb24gdGhlCnN0cmVhbSBvZiBPQSBy
ZXBvcnRzLCBjb21pbmcgZnJvbSB0aGUgZ2xvYmFsIE9BIGJ1ZmZlciwgdG8gcmVtb3ZlIGFueQp1
bnJlbGF0ZWQgZGVsdGFzIGluIGJldHdlZW4gdGhlIDIgTUlfUkVDT1JEX1BFUkZfQ09VTlQuCgpE
aXNhYmxpbmcgcHJlZW1wdGlvbiBvbmx5IGFwcGx5IHRvIGEgc2luZ2xlIGNvbnRleHQgd2l0aCB3
aGljaCB3YW50IHRvCnF1ZXJ5IHBlcmZvcm1hbmNlIGNvdW50ZXJzIGZvciBhbmQgaXMgY29uc2lk
ZXJlZCBhIHByaXZpbGVnZWQKb3BlcmF0aW9uLCBieSBkZWZhdWx0IHByb3RlY3RlZCBieSBDQVBf
U1lTX0FETUlOLiBJdCBpcyBwb3NzaWJsZSB0bwplbmFibGUgaXQgZm9yIGEgbm9ybWFsIHVzZXIg
YnkgZGlzYWJsaW5nIHRoZSBwYXJhbm9pZCBzdHJlYW0gc2V0dGluZy4KCnYyOiBTdG9yZSBwcmVl
bXB0aW9uIHNldHRpbmcgaW4gaW50ZWxfY29udGV4dCAoQ2hyaXMpCgp2MzogVXNlIHByaW9yaXRp
ZXMgdG8gYXZvaWQgcHJlZW1wdGlvbiByYXRoZXIgdGhhbiB0aGUgSFcgbWVjaGFuaXNtCgp2NDog
SnVzdCBtb2RpZnkgdGhlIHBvcnQgcHJpb3JpdHkgcmVwb3J0aW5nIGZ1bmN0aW9uCgpTaWduZWQt
b2ZmLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+
ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0t
CiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgICAgfCAgOCArKysr
KwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICAgICAgIHwgIDggKysr
KysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jICAgICAgICAgICAgICB8IDMxICsr
KysrKysrKysrKysrKysrLS0KIGluY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaCAgICAgICAgICAg
ICAgICAgICB8IDExICsrKysrKysKIDQgZmlsZXMgY2hhbmdlZCwgNTUgaW5zZXJ0aW9ucygrKSwg
MyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fZXhlY2J1ZmZlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4
ZWNidWZmZXIuYwppbmRleCAwMDM3YmY4YzJlNmYuLjNkZWIzZTMzNmY1MCAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCkBAIC0yMTE3LDYgKzIx
MTcsMTQgQEAgc3RhdGljIGludCBlYl9vYV9jb25maWcoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAq
ZWIpCiAJaWYgKGVycikKIAkJZ290byBvdXQ7CiAKKwkvKgorCSAqIElmIHRoZSBwZXJmIHN0cmVh
bSB3YXMgb3BlbmVkIHdpdGggaG9sZCBwcmVlbXB0aW9uLCBmbGFnIHRoZQorCSAqIHJlcXVlc3Qg
cHJvcGVybHkgc28gdGhhdCB0aGUgcHJpb3JpdHkgb2YgdGhlIHJlcXVlc3QgaXMgYnVtcGVkIG9u
Y2UKKwkgKiBpdCByZWFjaGVzIHRoZSBleGVjbGlzdCBwb3J0cy4KKwkgKi8KKwlpZiAoZWItPmk5
MTUtPnBlcmYuZXhjbHVzaXZlX3N0cmVhbS0+aG9sZF9wcmVlbXB0aW9uKQorCQllYi0+cmVxdWVz
dC0+ZmxhZ3MgfD0gSTkxNV9SRVFVRVNUX05PUFJFRU1QVDsKKwogCS8qCiAJICogSWYgdGhlIGNv
bmZpZyBoYXNuJ3QgY2hhbmdlZCwgc2tpcCByZWNvbmZpZ3VyaW5nIHRoZSBIVyAodGhpcyBpcwog
CSAqIHN1YmplY3QgdG8gYSBkZWxheSB3ZSB3YW50IHRvIGF2b2lkIGhhcyBtdWNoIGFzIHBvc3Np
YmxlKS4KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4IDA4NGNkZDExNWQ1YS4uZDE4ZTEyYWRh
NGUxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTExMjIsNiArMTEyMiwxNCBAQCBzdHJ1
Y3QgaTkxNV9wZXJmX3N0cmVhbSB7CiAJICovCiAJYm9vbCBlbmFibGVkOwogCisJLyoqCisJICog
QGhvbGRfcHJlZW1wdGlvbjogV2hldGhlciBwcmVlbXB0aW9uIGlzIHB1dCBvbiBob2xkIGZvciBj
b21tYW5kCisJICogc3VibWlzc2lvbnMgZG9uZSBvbiB0aGUgQGN0eC4gVGhpcyBpcyB1c2VmdWwg
Zm9yIHNvbWUgZHJpdmVycyB0aGF0CisJICogY2Fubm90IGVhc2lseSBwb3N0IHByb2Nlc3MgdGhl
IE9BIGJ1ZmZlciBjb250ZXh0IHRvIHN1YnRyYWN0IGRlbHRhCisJICogb2YgcGVyZm9ybWFuY2Ug
Y291bnRlcnMgbm90IGFzc29jaWF0ZWQgd2l0aCBAY3R4LgorCSAqLworCWJvb2wgaG9sZF9wcmVl
bXB0aW9uOworCiAJLyoqCiAJICogQG9wczogVGhlIGNhbGxiYWNrcyBwcm92aWRpbmcgdGhlIGlt
cGxlbWVudGF0aW9uIG9mIHRoaXMgc3BlY2lmaWMKIAkgKiB0eXBlIG9mIGNvbmZpZ3VyZWQgc3Ry
ZWFtLgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwppbmRleCAyYmMyNGE4MmY4OTcuLjM5NjgxZmI0
MzAzNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKQEAgLTM0Myw2ICszNDMsOCBAQCBzdGF0
aWMgY29uc3Qgc3RydWN0IGk5MTVfb2FfZm9ybWF0IGdlbjhfcGx1c19vYV9mb3JtYXRzW0k5MTVf
T0FfRk9STUFUX01BWF0gPSB7CiAgKiBzdHJ1Y3QgcGVyZl9vcGVuX3Byb3BlcnRpZXMgLSBmb3Ig
dmFsaWRhdGVkIHByb3BlcnRpZXMgZ2l2ZW4gdG8gb3BlbiBhIHN0cmVhbQogICogQHNhbXBsZV9m
bGFnczogYERSTV9JOTE1X1BFUkZfUFJPUF9TQU1QTEVfKmAgcHJvcGVydGllcyBhcmUgdHJhY2tl
ZCBhcyBmbGFncwogICogQHNpbmdsZV9jb250ZXh0OiBXaGV0aGVyIGEgc2luZ2xlIG9yIGFsbCBn
cHUgY29udGV4dHMgc2hvdWxkIGJlIG1vbml0b3JlZAorICogQGhvbGRfcHJlZW1wdGlvbjogV2hl
dGhlciB0aGUgcHJlZW1wdGlvbiBpcyBkaXNhYmxlZCBmb3IgdGhlIGZpbHRlcmVkCisgKiAgICAg
ICAgICAgICAgICAgICBjb250ZXh0CiAgKiBAY3R4X2hhbmRsZTogQSBnZW0gY3R4IGhhbmRsZSBm
b3IgdXNlIHdpdGggQHNpbmdsZV9jb250ZXh0CiAgKiBAbWV0cmljc19zZXQ6IEFuIElEIGZvciBh
biBPQSB1bml0IG1ldHJpYyBzZXQgYWR2ZXJ0aXNlZCB2aWEgc3lzZnMKICAqIEBvYV9mb3JtYXQ6
IEFuIE9BIHVuaXQgSFcgcmVwb3J0IGZvcm1hdApAQCAtMzU3LDYgKzM1OSw3IEBAIHN0cnVjdCBw
ZXJmX29wZW5fcHJvcGVydGllcyB7CiAJdTMyIHNhbXBsZV9mbGFnczsKIAogCXU2NCBzaW5nbGVf
Y29udGV4dDoxOworCXU2NCBob2xkX3ByZWVtcHRpb246MTsKIAl1NjQgY3R4X2hhbmRsZTsKIAog
CS8qIE9BIHNhbXBsaW5nIHN0YXRlICovCkBAIC0yNjI5LDYgKzI2MzIsOCBAQCBzdGF0aWMgaW50
IGk5MTVfb2Ffc3RyZWFtX2luaXQoc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSwKIAlp
ZiAoV0FSTl9PTihzdHJlYW0tPm9hX2J1ZmZlci5mb3JtYXRfc2l6ZSA9PSAwKSkKIAkJcmV0dXJu
IC1FSU5WQUw7CiAKKwlzdHJlYW0tPmhvbGRfcHJlZW1wdGlvbiA9IHByb3BzLT5ob2xkX3ByZWVt
cHRpb247CisKIAlzdHJlYW0tPm9hX2J1ZmZlci5mb3JtYXQgPQogCQlkZXZfcHJpdi0+cGVyZi5v
YV9mb3JtYXRzW3Byb3BzLT5vYV9mb3JtYXRdLmZvcm1hdDsKIApAQCAtMzE4Miw2ICszMTg3LDE1
IEBAIGk5MTVfcGVyZl9vcGVuX2lvY3RsX2xvY2tlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsCiAJCX0KIAl9CiAKKwlpZiAocHJvcHMtPmhvbGRfcHJlZW1wdGlvbikgeworCQlp
ZiAoIXByb3BzLT5zaW5nbGVfY29udGV4dCkgeworCQkJRFJNX0RFQlVHKCJwcmVlbXB0aW9uIGRp
c2FibGUgd2l0aCBubyBjb250ZXh0XG4iKTsKKwkJCXJldCA9IC1FSU5WQUw7CisJCQlnb3RvIGVy
cjsKKwkJfQorCQlwcml2aWxlZ2VkX29wID0gdHJ1ZTsKKwl9CisKIAkvKgogCSAqIE9uIEhhc3dl
bGwgdGhlIE9BIHVuaXQgc3VwcG9ydHMgY2xvY2sgZ2F0aW5nIG9mZiBmb3IgYSBzcGVjaWZpYwog
CSAqIGNvbnRleHQgYW5kIGluIHRoaXMgbW9kZSB0aGVyZSdzIG5vIHZpc2liaWxpdHkgb2YgbWV0
cmljcyBmb3IgdGhlCkBAIC0zMTk2LDggKzMyMTAsOSBAQCBpOTE1X3BlcmZfb3Blbl9pb2N0bF9s
b2NrZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCSAqIE1JX1JFUE9SVF9Q
RVJGX0NPVU5UIGNvbW1hbmRzIGFuZCBzbyBjb25zaWRlciBpdCBhIHByaXZpbGVnZWQgb3AgdG8K
IAkgKiBlbmFibGUgdGhlIE9BIHVuaXQgYnkgZGVmYXVsdC4KIAkgKi8KLQlpZiAoSVNfSEFTV0VM
TChkZXZfcHJpdikgJiYgc3BlY2lmaWNfY3R4KQorCWlmIChJU19IQVNXRUxMKGRldl9wcml2KSAm
JiBzcGVjaWZpY19jdHggJiYgIXByb3BzLT5ob2xkX3ByZWVtcHRpb24pIHsKIAkJcHJpdmlsZWdl
ZF9vcCA9IGZhbHNlOworCX0KIAogCS8qIFNpbWlsYXIgdG8gcGVyZidzIGtlcm5lbC5wZXJmX3Bh
cmFub2lkX2NwdSBzeXNjdGwgb3B0aW9uCiAJICogd2UgY2hlY2sgYSBkZXYuaTkxNS5wZXJmX3N0
cmVhbV9wYXJhbm9pZCBzeXNjdGwgb3B0aW9uCkBAIC0zMjA2LDcgKzMyMjEsNyBAQCBpOTE1X3Bl
cmZfb3Blbl9pb2N0bF9sb2NrZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAog
CSAqLwogCWlmIChwcml2aWxlZ2VkX29wICYmCiAJICAgIGk5MTVfcGVyZl9zdHJlYW1fcGFyYW5v
aWQgJiYgIWNhcGFibGUoQ0FQX1NZU19BRE1JTikpIHsKLQkJRFJNX0RFQlVHKCJJbnN1ZmZpY2ll
bnQgcHJpdmlsZWdlcyB0byBvcGVuIHN5c3RlbS13aWRlIGk5MTUgcGVyZiBzdHJlYW1cbiIpOwor
CQlEUk1fREVCVUcoIkluc3VmZmljaWVudCBwcml2aWxlZ2VzIHRvIG9wZW4gaTkxNSBwZXJmIHN0
cmVhbVxuIik7CiAJCXJldCA9IC1FQUNDRVM7CiAJCWdvdG8gZXJyX2N0eDsKIAl9CkBAIC0zNDAz
LDYgKzM0MTgsOSBAQCBzdGF0aWMgaW50IHJlYWRfcHJvcGVydGllc191bmxvY2tlZChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCQlwcm9wcy0+b2FfcGVyaW9kaWMgPSB0cnVl
OwogCQkJcHJvcHMtPm9hX3BlcmlvZF9leHBvbmVudCA9IHZhbHVlOwogCQkJYnJlYWs7CisJCWNh
c2UgRFJNX0k5MTVfUEVSRl9QUk9QX0hPTERfUFJFRU1QVElPTjoKKwkJCXByb3BzLT5ob2xkX3By
ZWVtcHRpb24gPSAhIXZhbHVlOworCQkJYnJlYWs7CiAJCWNhc2UgRFJNX0k5MTVfUEVSRl9QUk9Q
X01BWDoKIAkJCU1JU1NJTkdfQ0FTRShpZCk7CiAJCQlyZXR1cm4gLUVJTlZBTDsKQEAgLTQxNjgs
NSArNDE4NiwxMiBAQCB2b2lkIGk5MTVfcGVyZl9maW5pKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdikKICAqLwogaW50IGk5MTVfcGVyZl9pb2N0bF92ZXJzaW9uKHZvaWQpCiB7Ci0J
cmV0dXJuIDE7CisJLyogMTogaW5pdGlhbCB2ZXJzaW9uCisJICoKKwkgKiAyOiBBZGQgRFJNX0k5
MTVfUEVSRl9QUk9QX0hPTERfUFJFRU1QVElPTiBwYXJhbWV0ZXIgdG8gaG9sZAorCSAqICAgIHBy
ZWVtcHRpb24gb24gYSBwYXJ0aWN1bGFyIGNvbnRleHQgc28gdGhhdCBwZXJmb3JtYW5jZSBkYXRh
IGlzCisJICogICAgYWNjZXNzaWJsZSBmcm9tIGEgZGVsdGEgb2YgTUlfUlBDIHJlcG9ydHMgd2l0
aG91dCBsb29raW5nIGF0IHRoZQorCSAqICAgIE9BIGJ1ZmZlci4KKwkgKi8KKwlyZXR1cm4gMjsK
IH0KZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaCBiL2luY2x1ZGUvdWFw
aS9kcm0vaTkxNV9kcm0uaAppbmRleCAzMTY2YzljYTg1ZjMuLjU4NTBkNjgzMjdlYyAxMDA2NDQK
LS0tIGEvaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oCisrKyBiL2luY2x1ZGUvdWFwaS9kcm0v
aTkxNV9kcm0uaApAQCAtMTk4Nyw2ICsxOTg3LDE3IEBAIGVudW0gZHJtX2k5MTVfcGVyZl9wcm9w
ZXJ0eV9pZCB7CiAJICovCiAJRFJNX0k5MTVfUEVSRl9QUk9QX09BX0VYUE9ORU5ULAogCisJLyoq
CisJICogU3BlY2lmeWluZyB0aGlzIHByb3BlcnR5IGlzIG9ubHkgdmFsaWQgd2hlbiBzcGVjaWZ5
IGEgY29udGV4dCB0bworCSAqIGZpbHRlciB3aXRoIERSTV9JOTE1X1BFUkZfUFJPUF9DVFhfSEFO
RExFLiBTcGVjaWZ5aW5nIHRoaXMgcHJvcGVydHkKKwkgKiB3aWxsIGhvbGQgcHJlZW1wdGlvbiBv
ZiB0aGUgcGFydGljdWxhciBjb250ZXh0IHdlIHdhbnQgdG8gZ2F0aGVyCisJICogcGVyZm9ybWFu
Y2UgZGF0YSBhYm91dC4gVGhlIGV4ZWNidWYyIHN1Ym1pc3Npb25zIG11c3QgaW5jbHVkZSBhCisJ
ICogZHJtX2k5MTVfZ2VtX2V4ZWNidWZmZXJfZXh0X3BlcmYgcGFyYW1ldGVyIGZvciB0aGlzIHRv
IGFwcGx5LgorCSAqCisJICogVGhpcyBwcm9wZXJ0eSBpcyBhdmFpbGFibGUgaW4gcGVyZiByZXZp
c2lvbiAyLgorCSAqLworCURSTV9JOTE1X1BFUkZfUFJPUF9IT0xEX1BSRUVNUFRJT04sCisKIAlE
Uk1fSTkxNV9QRVJGX1BST1BfTUFYIC8qIG5vbi1BQkkgKi8KIH07CiAKLS0gCjIuMjMuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
