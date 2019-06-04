Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A815C350A4
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 22:09:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AEF989C16;
	Tue,  4 Jun 2019 20:09:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C978689C16
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 20:09:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 13:09:36 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 04 Jun 2019 13:09:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Jun 2019 23:09:33 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jun 2019 23:09:29 +0300
Message-Id: <20190604200933.29417-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/5] drm/i915: Do not touch the PCH SSC
 reference if a PLL is using it
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
Cc: "Julius B ." <freedesktop@blln.gr>,
 Johannes Krampf <johannes.krampf@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk91
ciBQQ0ggcmVmY2xrIGluaXQgY29kZSBjdXJyZW50bHkgYXNzdW1lcyB0aGF0IHRoZSBQQ0ggU1ND
IHJlZmVyZW5jZQpjYW4gb25seSBiZSB1c2VkIGZvciBGREkuIFRoYXQgaXMgbm90IHRydWUgYW5k
IGl0IGNhbiBiZSB1c2VkIGJ5ClNQTEwvV1JQTEwgZm9yIGVEUCBTU0Mgb3IgY2xvY2sgYmVuZGlu
ZyBhcyB3ZWxsLiBCZWZvcmUgd2UgZ28KcmVjb25maWd1cmluZyBpdCBsZXQncyBtYWtlIHN1cmUg
bm8gUExMIGlzIGN1cnJlbnRseSB1c2luZyB0aGUgUENIClNTQyByZWZlcmVuY2UuCgpGb3Igc29t
ZSByZWFzb24gdGhlIGh3IGlzIG5vdCBwYXJ0aWN1bGFybHkgdXBzZXQgYWJvdXQgbG9zaW5nCnRo
ZSBjbG9jayBpZiB3ZSBpbW1lZGlhdGVseSBmb2xsb3cgdXAgd2l0aCBhIG1vZGVzZXQuIENhbid0
CnJlYWxseSBleHBsYWluIHdoeSBub3RoaW5nIHRpbWVzIG91dCBkdXJpbmcgdGhlIGNydGMgZGlz
YWJsZQphdCBsZWFzdCwgYnV0IHRoYXQncyB3aGF0IHRoZSBsb2dzIHNheS4gV2l0aCBmYXN0Ym9v
dCB0aGUKc3RvcnkgaXMgcXVpdGUgZGlmZmVyZW50IGFuZCB3ZSBsb3NlIHRoZSBlbnRpcmUgZGlz
cGxheSBpZgp3ZSB0dXJuIG9mZiB0aGUgUENIIFNTQyByZWZlcmVuY2Ugd2hlbiBpdCdzIHN0aWxs
IGJlaW5nIHVzZWQuCgpTaW5jZSB3ZSB0b3RhbGx5IHNraXAgY29uZmlndXJpbmcgdGhlIFBDSCBT
U0MgcmVmZXJlbmNlIGl0Cm1heSBub3QgYmUgaW4gdGhlIHByb3BlciBzdGF0ZSBmb3IgRkRJLiBI
b3BlZnVsbHkgdGhhdCB3b24ndApiZSBhIHByb2JsZW0gaW4gcHJhY3RpY2UuCgpXZSByZWFsbHkg
c2hvdWxkIG1vdmUgdGhpcyBjb2RlIHRvIGJlIHBhcnQgb2YgdGhlIG1vZGVzZXQgc2VxZXVlbmNl
CmFuZCBwcm9wZXJseSBkZWFsIHdpdGggdGhlIHBvdGVudGlhbGx5IGNvbmZsaWN0aW5nIHJlcXVp
cmVtZW50cwppbXBvc2VkIG9uIFBMTCByZWZlcmVuY2UgY2xvY2tzLiBCdXQgdGhhdCByZXF1aXJl
cyBhY3R1YWwgd29yay4KTGV0J3MgdG9zcyBpbiBhIFRPRE8gZm9yIHRoYXQuCgp2MjogUGltcCB0
aGUgY29tbWl0IG1lc3NhZ2Ugd2l0aCB0aGUgZmFzdGJvb3QgdnMuIG5vdAogICAgZGV0YWlscwoK
Q2M6IEp1bGl1cyBCLiA8ZnJlZWRlc2t0b3BAYmxsbi5ncj4KQ2M6IEpvaGFubmVzIEtyYW1wZiA8
am9oYW5uZXMua3JhbXBmQGdtYWlsLmNvbT4KVGVzdGVkLWJ5OiBKb2hhbm5lcyBLcmFtcGYgPGpv
aGFubmVzLmtyYW1wZkBnbWFpbC5jb20+CkJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0
b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDg3NzMKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oICAgICAgfCAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
aXNwbGF5LmMgfCA3OSArKysrKysrKysrKysrKysrKysrKysrKysrKy0tCiAyIGZpbGVzIGNoYW5n
ZWQsIDc3IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmgKaW5kZXggMDdlM2Y4NjFhOTJlLi5kNWZlZTcyZmMwNzkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaApAQCAtNzUxMSw2ICs3NTExLDcgQEAgZW51bSB7CiAjZGVmaW5lICBJTEtfZURQX0FfRElT
QUJMRQkJKDEgPDwgMjQpCiAjZGVmaW5lICBIU1dfQ0RDTEtfTElNSVQJCSgxIDw8IDI0KQogI2Rl
ZmluZSAgSUxLX0RFU0tUT1AJCQkoMSA8PCAyMykKKyNkZWZpbmUgIEhTV19DUFVfU1NDX0VOQUJM
RQkJKDEgPDwgMjEpCiAKICNkZWZpbmUgSUxLX0RTUENMS19HQVRFX0QJCQlfTU1JTygweDQyMDIw
KQogI2RlZmluZSAgIElMS19WUkhVTklUX0NMT0NLX0dBVEVfRElTQUJMRQkoMSA8PCAyOCkKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYwppbmRleCBmYzQ3ZWQwMjQ3YzUuLjc1Y2EyMDMw
ZmZiMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYwpAQCAtOTEyMSwyMiArOTEy
MSw5NSBAQCBzdGF0aWMgdm9pZCBscHRfYmVuZF9jbGtvdXRfZHAoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LCBpbnQgc3RlcHMpCiAKICN1bmRlZiBCRU5EX0lEWAogCitzdGF0aWMg
Ym9vbCBzcGxsX3VzZXNfcGNoX3NzYyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
Cit7CisJdTMyIGZ1c2Vfc3RyYXAgPSBJOTE1X1JFQUQoRlVTRV9TVFJBUCk7CisJdTMyIGN0bCA9
IEk5MTVfUkVBRChTUExMX0NUTCk7CisKKwlpZiAoKGN0bCAmIFNQTExfUExMX0VOQUJMRSkgPT0g
MCkKKwkJcmV0dXJuIGZhbHNlOworCisJaWYgKChjdGwgJiBTUExMX1BMTF9SRUZfTUFTSykgPT0g
U1BMTF9QTExfU1NDICYmCisJICAgIChmdXNlX3N0cmFwICYgSFNXX0NQVV9TU0NfRU5BQkxFKSA9
PSAwKQorCQlyZXR1cm4gdHJ1ZTsKKworCWlmIChJU19CUk9BRFdFTEwoZGV2X3ByaXYpICYmCisJ
ICAgIChjdGwgJiBTUExMX1BMTF9SRUZfTUFTSykgPT0gU1BMTF9QTExfTk9OX1NTQykKKwkJcmV0
dXJuIHRydWU7CisKKwlyZXR1cm4gZmFsc2U7Cit9CisKK3N0YXRpYyBib29sIHdycGxsX3VzZXNf
cGNoX3NzYyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCisJCQkgICAgICAgZW51
bSBpbnRlbF9kcGxsX2lkIGlkKQoreworCXUzMiBmdXNlX3N0cmFwID0gSTkxNV9SRUFEKEZVU0Vf
U1RSQVApOworCXUzMiBjdGwgPSBJOTE1X1JFQUQoV1JQTExfQ1RMKGlkKSk7CisKKwlpZiAoKGN0
bCAmIFdSUExMX1BMTF9FTkFCTEUpID09IDApCisJCXJldHVybiBmYWxzZTsKKworCWlmICgoY3Rs
ICYgV1JQTExfUExMX1JFRl9NQVNLKSA9PSBXUlBMTF9QTExfU1NDKQorCQlyZXR1cm4gdHJ1ZTsK
KworCWlmICgoSVNfQlJPQURXRUxMKGRldl9wcml2KSB8fCBJU19IU1dfVUxUKGRldl9wcml2KSkg
JiYKKwkgICAgKGN0bCAmIFdSUExMX1BMTF9SRUZfTUFTSykgPT0gV1JQTExfUExMX05PTl9TU0Mg
JiYKKwkgICAgKGZ1c2Vfc3RyYXAgJiBIU1dfQ1BVX1NTQ19FTkFCTEUpID09IDApCisJCXJldHVy
biB0cnVlOworCisJcmV0dXJuIGZhbHNlOworfQorCiBzdGF0aWMgdm9pZCBscHRfaW5pdF9wY2hf
cmVmY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKIAlzdHJ1Y3QgaW50
ZWxfZW5jb2RlciAqZW5jb2RlcjsKLQlib29sIGhhc192Z2EgPSBmYWxzZTsKKwlib29sIHBjaF9z
c2NfaW5fdXNlID0gZmFsc2U7CisJYm9vbCBoYXNfZmRpID0gZmFsc2U7CiAKIAlmb3JfZWFjaF9p
bnRlbF9lbmNvZGVyKCZkZXZfcHJpdi0+ZHJtLCBlbmNvZGVyKSB7CiAJCXN3aXRjaCAoZW5jb2Rl
ci0+dHlwZSkgewogCQljYXNlIElOVEVMX09VVFBVVF9BTkFMT0c6Ci0JCQloYXNfdmdhID0gdHJ1
ZTsKKwkJCWhhc19mZGkgPSB0cnVlOwogCQkJYnJlYWs7CiAJCWRlZmF1bHQ6CiAJCQlicmVhazsK
IAkJfQogCX0KIAotCWlmIChoYXNfdmdhKSB7CisJLyoKKwkgKiBUaGUgQklPUyBtYXkgaGF2ZSBk
ZWNpZGVkIHRvIHVzZSB0aGUgUENIIFNTQworCSAqIHJlZmVyZW5jZSBzbyB3ZSBtdXN0IG5vdCBk
aXNhYmxlIGl0IHVudGlsIHRoZQorCSAqIHJlbGV2YW50IFBMTHMgaGF2ZSBzdG9wcGVkIHJlbHlp
bmcgb24gaXQuIFdlJ2xsCisJICoganVzdCBsZWF2ZSB0aGUgUENIIFNTQyByZWZlcmVuY2UgZW5h
YmxlZCBpbiBjYXNlCisJICogYW55IGFjdGl2ZSBQTEwgaXMgdXNpbmcgaXQuIEl0IHdpbGwgZ2V0
IGRpc2FibGVkCisJICogYWZ0ZXIgcnVudGltZSBzdXNwZW5kIGlmIHdlIGRvbid0IGhhdmUgRkRJ
LgorCSAqCisJICogVE9ETzogTW92ZSB0aGUgd2hvbGUgcmVmZXJlbmNlIGNsb2NrIGhhbmRsaW5n
CisJICogdG8gdGhlIG1vZGVzZXQgc2VxdWVuY2UgcHJvcGVyIHNvIHRoYXQgd2UgY2FuCisJICog
YWN0dWFsbHkgZW5hYmxlL2Rpc2FibGUvcmVjb25maWd1cmUgdGhlc2UgdGhpbmdzCisJICogc2Fm
ZWx5LiBUbyBkbyB0aGF0IHdlIG5lZWQgdG8gaW50cm9kdWNlIGEgcmVhbAorCSAqIGNsb2NrIGhp
ZXJhcmNoeS4gVGhhdCB3b3VsZCBhbHNvIGFsbG93IHVzIHRvIGRvCisJICogY2xvY2sgYmVuZGlu
ZyBmaW5hbGx5LgorCSAqLworCWlmIChzcGxsX3VzZXNfcGNoX3NzYyhkZXZfcHJpdikpIHsKKwkJ
RFJNX0RFQlVHX0tNUygiU1BMTCB1c2luZyBQQ0ggU1NDXG4iKTsKKwkJcGNoX3NzY19pbl91c2Ug
PSB0cnVlOworCX0KKworCWlmICh3cnBsbF91c2VzX3BjaF9zc2MoZGV2X3ByaXYsIERQTExfSURf
V1JQTEwxKSkgeworCQlEUk1fREVCVUdfS01TKCJXUlBMTDEgdXNpbmcgUENIIFNTQ1xuIik7CisJ
CXBjaF9zc2NfaW5fdXNlID0gdHJ1ZTsKKwl9CisKKwlpZiAod3JwbGxfdXNlc19wY2hfc3NjKGRl
dl9wcml2LCBEUExMX0lEX1dSUExMMikpIHsKKwkJRFJNX0RFQlVHX0tNUygiV1JQTEwyIHVzaW5n
IFBDSCBTU0NcbiIpOworCQlwY2hfc3NjX2luX3VzZSA9IHRydWU7CisJfQorCisJaWYgKHBjaF9z
c2NfaW5fdXNlKQorCQlyZXR1cm47CisKKwlpZiAoaGFzX2ZkaSkgewogCQlscHRfYmVuZF9jbGtv
dXRfZHAoZGV2X3ByaXYsIDApOwogCQlscHRfZW5hYmxlX2Nsa291dF9kcChkZXZfcHJpdiwgdHJ1
ZSwgdHJ1ZSk7CiAJfSBlbHNlIHsKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
