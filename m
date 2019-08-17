Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B415B90FB7
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Aug 2019 11:39:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C414889349;
	Sat, 17 Aug 2019 09:39:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9C746E30E
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Aug 2019 09:39:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Aug 2019 02:39:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,396,1559545200"; d="scan'208";a="376950581"
Received: from vidyashr-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.251.152.227])
 by fmsmga005.fm.intel.com with ESMTP; 17 Aug 2019 02:39:23 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 17 Aug 2019 02:38:27 -0700
Message-Id: <20190817093902.2171-6-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190817093902.2171-1-lucas.demarchi@intel.com>
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 05/40] drm/i915/psr: Make PSR registers
 relative to transcoders
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpQU1Ig
cmVnaXN0ZXJzIGFyZSBhIG1lc3MsIHNvbWUgaGF2ZSB0aGUgZnVsbCBhZGRyZXNzIHdoaWxlIG90
aGVycyBqdXN0CmhhdmUgdGhlIGFkZGl0aW9uYWwgb2Zmc2V0IGZyb20gcHNyX21taW9fYmFzZS4K
CkZvciBCRFcrIHBzcl9tbWlvX2Jhc2UgaXMgbm90aGluZyBtb3JlIHRoYW4gVFJBTlNDT0RFUl9F
RFBfT0ZGU0VUICsKMHg4MDAgYW5kIHVzaW5nIGl0IG1ha2VzIG1vcmUgZGlmZmljdWx0IGZvciBw
ZW9wbGUgd2l0aCBhbiBQU1IKcmVnaXN0ZXIgYWRkcmVzcyBvciBQU1IgcmVnaXN0ZXIgbmFtZSBm
cm9tIGZyb20gQlNwZWMgYXMgaTkxNSBhbHNvCmRvbid0IG1hdGNoIHRoZSBCU3BlYyBuYW1lcy4K
Rm9yIEhTVyBwc3JfbW1pb19iYXNlIGlzIF9ERElfQlVGX0NUTF9BICsgMHg4MDAgYW5kIFBTUiBy
ZWdpc3RlcnMgYXJlCm9ubHkgYXZhaWxhYmxlIGluIERESUEuCgpPdGhlciByZWFzb24gdG8gbWFr
ZSByZWxhdGl2ZSB0byB0cmFuc2NvZGVyIGlzIHRoYXQgc2luY2UgQkRXIGV2ZXJ5CnRyYW5zY29k
ZXIgaGF2ZSBQU1IgcmVnaXN0ZXJzLCBzbyBpbiB0aGVvcnkgaXQgc2hvdWxkIGJlIHBvc3NpYmxl
IHRvCmhhdmUgUFNSIGVuYWJsZWQgaW4gYSBub24tZURQIHRyYW5zY29kZXIuCgpTbyBmb3IgQkRX
KyB3ZSBjYW4gdXNlIF9UUkFOUzIoKSB0byBnZXQgdGhlIHJlZ2lzdGVyIG9mZnNldCBvZiBhbnkK
UFNSIHJlZ2lzdGVyIGluIGFueSB0cmFuc2NvZGVyIHdoaWxlIGZvciBIU1cgd2UgaGF2ZSBfSFNX
X1BTUl9BREoKdGhhdCB3aWxsIGNhbGN1bGF0ZSB0aGUgcmVnaXN0ZXIgb2Zmc2V0IGZvciB0aGUg
c2luZ2xlIFBTUiBpbnN0YW5jZSwKbm90aW5nIHRoYXQgd2UgYXJlIGFscmVhZHkgZ3VhcmRlZCBh
Ym91dCB0cnlpbmcgdG8gZW5hYmxlIFBTUiBpbiBvdGhlcgpwb3J0IHRoYW4gRERJQSBvbiBIU1cg
YnkgdGhlICdpZiAoZGlnX3BvcnQtPmJhc2UucG9ydCAhPSBQT1JUX0EpJyBpbgppbnRlbF9wc3Jf
Y29tcHV0ZV9jb25maWcoKSwgdGhpcyBjaGVjayBzaG91bGQgb25seSBiZSB2YWxpZCBmb3IgSFNX
CmFuZCB3aWxsIGJlIGNoYW5nZWQgaW4gZnV0dXJlLgpQU1IyIHJlZ2lzdGVycyBhbmQgUFNSX0VW
RU5UIHdhcyBhZGRlZCBhZnRlciBIYXN3ZWxsIHNvIHRoYXQgaXMgd2h5Cl9QU1JfQURKKCkgaXMg
bm90IHVzZWQgaW4gc29tZSBtYWNyb3MuCgpUaGUgb25seSByZWdpc3RlcnMgdGhhdCBjYW4gbm90
IGJlIHJlbGF0aXZlIHRvIHRyYW5zY29kZXIgYXJlClBTUl9JTVIgYW5kIFBTUl9JSVIgdGhhdCBh
cmUgbm90IHJlbGF0aXZlIHRvIGFueXRoaW5nLCBzbyBrZWVwaW5nIGl0CmhhcmRjb2RlZC4KCkFs
c28gcmVtb3ZpbmcgQkRXX0VEUF9QU1JfQkFTRSBmcm9tIEdWVCBiZWNhdXNlIGl0IGlzIG5vdCB1
c2VkIGFzIGl0CmlzIHRoZSBvbmx5IFBTUiByZWdpc3RlciB0aGF0IEdWVCBoYXZlLgoKdjU6Ci0g
TWFjcm9zIGNoYW5nZWQgdG8gYmUgbW9yZSBleHBsaWNpdCBhYm91dCBIU1cgKERoaW5ha2FyYW4p
Ci0gU3F1YXNoZWQgd2l0aCB0aGUgcGF0Y2ggdGhhdCBhZGRlZCB0aGUgdHJhbiBwYXJhbWV0ZXIg
dG8gdGhlCm1hY3JvcyAoRGhpbmFrYXJhbikKCnY2OgotIENoZWNraW5nIGZvciBpbnRlcnJ1cHRp
b24gZXJyb3JzIGFmdGVyIG1vZHVsZSByZWxvYWQgaW4gdGhlCnRyYW5zY29kZXIgdGhhdCB3aWxs
IGJlIHVzZWQgKERoaW5ha2FyYW4pCi0gVXNpbmcgbG93ZXJjYXNlIHRvIHRoZSByZWdpc3RlcnMg
b2Zmc2V0cwoKdjc6Ci0gUmVtb3ZpbmcgSVNfSEFTV0VMTCgpIGZyb20gcmVnaXN0ZXJzIG1hY3Jv
cyhKYW5pKQoKQ2M6IERoaW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5YW5AaW50
ZWwuY29tPgpDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpDYzogSmFu
aSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBaaGkgV2FuZyA8emhpLmEud2Fu
Z0BpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRl
bWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jIHwgMTA0ICsrKysrKysrKysrKystLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndnQvaGFuZGxlcnMuYyAgICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2RlYnVnZnMuYyAgICAgIHwgIDE4ICsrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmggICAgICAgICAgfCAgIDUgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAg
ICAgICAgfCAgNTcgKysrKysrKysrLS0tLQogNSBmaWxlcyBjaGFuZ2VkLCAxMTMgaW5zZXJ0aW9u
cygrKSwgNzMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMKaW5kZXggM2JmYjcyMDU2MGMyLi43NzIzMmY2YmNhMTcgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwpAQCAtMzkwLDcgKzM5MCw3IEBAIHN0YXRpYyB2b2lk
IGhzd19wc3Jfc2V0dXBfYXV4KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiAKIAlCVUlMRF9C
VUdfT04oc2l6ZW9mKGF1eF9tc2cpID4gMjApOwogCWZvciAoaSA9IDA7IGkgPCBzaXplb2YoYXV4
X21zZyk7IGkgKz0gNCkKLQkJSTkxNV9XUklURShFRFBfUFNSX0FVWF9EQVRBKGkgPj4gMiksCisJ
CUk5MTVfV1JJVEUoRURQX1BTUl9BVVhfREFUQShkZXZfcHJpdi0+cHNyLnRyYW5zY29kZXIsIGkg
Pj4gMiksCiAJCQkgICBpbnRlbF9kcF9wYWNrX2F1eCgmYXV4X21zZ1tpXSwgc2l6ZW9mKGF1eF9t
c2cpIC0gaSkpOwogCiAJYXV4X2Nsb2NrX2RpdmlkZXIgPSBpbnRlbF9kcC0+Z2V0X2F1eF9jbG9j
a19kaXZpZGVyKGludGVsX2RwLCAwKTsKQEAgLTQwMSw3ICs0MDEsNyBAQCBzdGF0aWMgdm9pZCBo
c3dfcHNyX3NldHVwX2F1eChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQogCiAJLyogU2VsZWN0
IG9ubHkgdmFsaWQgYml0cyBmb3IgU1JEX0FVWF9DVEwgKi8KIAlhdXhfY3RsICY9IHBzcl9hdXhf
bWFzazsKLQlJOTE1X1dSSVRFKEVEUF9QU1JfQVVYX0NUTCwgYXV4X2N0bCk7CisJSTkxNV9XUklU
RShFRFBfUFNSX0FVWF9DVEwoZGV2X3ByaXYtPnBzci50cmFuc2NvZGVyKSwgYXV4X2N0bCk7CiB9
CiAKIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVfc2luayhzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwKQpAQCAtNDkxLDggKzQ5MSw5IEBAIHN0YXRpYyB2b2lkIGhzd19hY3RpdmF0ZV9wc3Ix
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0g
OCkKIAkJdmFsIHw9IEVEUF9QU1JfQ1JDX0VOQUJMRTsKIAotCXZhbCB8PSBJOTE1X1JFQUQoRURQ
X1BTUl9DVEwpICYgRURQX1BTUl9SRVNUT1JFX1BTUl9BQ1RJVkVfQ1RYX01BU0s7Ci0JSTkxNV9X
UklURShFRFBfUFNSX0NUTCwgdmFsKTsKKwl2YWwgfD0gKEk5MTVfUkVBRChFRFBfUFNSX0NUTChk
ZXZfcHJpdi0+cHNyLnRyYW5zY29kZXIpKSAmCisJCUVEUF9QU1JfUkVTVE9SRV9QU1JfQUNUSVZF
X0NUWF9NQVNLKTsKKwlJOTE1X1dSSVRFKEVEUF9QU1JfQ1RMKGRldl9wcml2LT5wc3IudHJhbnNj
b2RlciksIHZhbCk7CiB9CiAKIHN0YXRpYyB2b2lkIGhzd19hY3RpdmF0ZV9wc3IyKHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHApCkBAIC01MjgsOSArNTI5LDkgQEAgc3RhdGljIHZvaWQgaHN3X2Fj
dGl2YXRlX3BzcjIoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAkgKiBQU1IyIEhXIGlzIGlu
Y29ycmVjdGx5IHVzaW5nIEVEUF9QU1JfVFAxX1RQM19TRUwgYW5kIEJTcGVjIGlzCiAJICogcmVj
b21tZW5kaW5nIGtlZXAgdGhpcyBiaXQgdW5zZXQgd2hpbGUgUFNSMiBpcyBlbmFibGVkLgogCSAq
LwotCUk5MTVfV1JJVEUoRURQX1BTUl9DVEwsIDApOworCUk5MTVfV1JJVEUoRURQX1BTUl9DVEwo
ZGV2X3ByaXYtPnBzci50cmFuc2NvZGVyKSwgMCk7CiAKLQlJOTE1X1dSSVRFKEVEUF9QU1IyX0NU
TCwgdmFsKTsKKwlJOTE1X1dSSVRFKEVEUF9QU1IyX0NUTChkZXZfcHJpdi0+cHNyLnRyYW5zY29k
ZXIpLCB2YWwpOwogfQogCiBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX2NvbmZpZ192YWxpZChzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwLApAQCAtNjA2LDEwICs2MDcsOSBAQCB2b2lkIGludGVsX3Bz
cl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCiAJLyoKIAkgKiBI
U1cgc3BlYyBleHBsaWNpdGx5IHNheXMgUFNSIGlzIHRpZWQgdG8gcG9ydCBBLgotCSAqIEJEVysg
cGxhdGZvcm1zIHdpdGggRERJIGltcGxlbWVudGF0aW9uIG9mIFBTUiBoYXZlIGRpZmZlcmVudAot
CSAqIFBTUiByZWdpc3RlcnMgcGVyIHRyYW5zY29kZXIgYW5kIHdlIG9ubHkgaW1wbGVtZW50IHRy
YW5zY29kZXIgRURQCi0JICogb25lcy4gU2luY2UgYnkgRGlzcGxheSBkZXNpZ24gdHJhbnNjb2Rl
ciBFRFAgaXMgdGllZCB0byBwb3J0IEEKLQkgKiB3ZSBjYW4gc2FmZWx5IGVzY2FwZSBiYXNlZCBv
biB0aGUgcG9ydCBBLgorCSAqIEJEVysgcGxhdGZvcm1zIGhhdmUgYSBpbnN0YW5jZSBvZiBQU1Ig
cmVnaXN0ZXJzIHBlciB0cmFuc2NvZGVyIGJ1dAorCSAqIGZvciBub3cgaXQgb25seSBzdXBwb3J0
cyBvbmUgaW5zdGFuY2Ugb2YgUFNSLCBzbyBsZXRzIGtlZXAgaXQKKwkgKiBoYXJkY29kZWQgdG8g
UE9SVF9BCiAJICovCiAJaWYgKGRpZ19wb3J0LT5iYXNlLnBvcnQgIT0gUE9SVF9BKSB7CiAJCURS
TV9ERUJVR19LTVMoIlBTUiBjb25kaXRpb24gZmFpbGVkOiBQb3J0IG5vdCBzdXBwb3J0ZWRcbiIp
OwpAQCAtNjQ5LDggKzY0OSw4IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9hY3RpdmF0ZShzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwKQogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOwogCiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0g
OSkKLQkJV0FSTl9PTihJOTE1X1JFQUQoRURQX1BTUjJfQ1RMKSAmIEVEUF9QU1IyX0VOQUJMRSk7
Ci0JV0FSTl9PTihJOTE1X1JFQUQoRURQX1BTUl9DVEwpICYgRURQX1BTUl9FTkFCTEUpOworCQlX
QVJOX09OKEk5MTVfUkVBRChFRFBfUFNSMl9DVEwoZGV2X3ByaXYtPnBzci50cmFuc2NvZGVyKSkg
JiBFRFBfUFNSMl9FTkFCTEUpOworCVdBUk5fT04oSTkxNV9SRUFEKEVEUF9QU1JfQ1RMKGRldl9w
cml2LT5wc3IudHJhbnNjb2RlcikpICYgRURQX1BTUl9FTkFCTEUpOwogCVdBUk5fT04oZGV2X3By
aXYtPnBzci5hY3RpdmUpOwogCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJmRldl9wcml2LT5wc3IubG9j
ayk7CiAKQEAgLTcyMCwxOSArNzIwLDM3IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVf
c291cmNlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJaWYgKElOVEVMX0dFTihkZXZfcHJp
dikgPCAxMSkKIAkJbWFzayB8PSBFRFBfUFNSX0RFQlVHX01BU0tfRElTUF9SRUdfV1JJVEU7CiAK
LQlJOTE1X1dSSVRFKEVEUF9QU1JfREVCVUcsIG1hc2spOworCUk5MTVfV1JJVEUoRURQX1BTUl9E
RUJVRyhkZXZfcHJpdi0+cHNyLnRyYW5zY29kZXIpLCBtYXNrKTsKIH0KIAogc3RhdGljIHZvaWQg
aW50ZWxfcHNyX2VuYWJsZV9sb2NrZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LAogCQkJCSAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsK
IAlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gZGV2X3ByaXYtPnBzci5kcDsKKwl1MzIgdmFs
OwogCiAJV0FSTl9PTihkZXZfcHJpdi0+cHNyLmVuYWJsZWQpOwogCiAJZGV2X3ByaXYtPnBzci5w
c3IyX2VuYWJsZWQgPSBpbnRlbF9wc3IyX2VuYWJsZWQoZGV2X3ByaXYsIGNydGNfc3RhdGUpOwog
CWRldl9wcml2LT5wc3IuYnVzeV9mcm9udGJ1ZmZlcl9iaXRzID0gMDsKIAlkZXZfcHJpdi0+cHNy
LnBpcGUgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPmJhc2UuY3J0YyktPnBpcGU7CisJZGV2
X3ByaXYtPnBzci50cmFuc2NvZGVyID0gY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXI7CisKKwkv
KgorCSAqIElmIGEgUFNSIGVycm9yIGhhcHBlbmVkIGFuZCB0aGUgZHJpdmVyIGlzIHJlbG9hZGVk
LCB0aGUgRURQX1BTUl9JSVIKKwkgKiB3aWxsIHN0aWxsIGtlZXAgdGhlIGVycm9yIHNldCBldmVu
IGFmdGVyIHRoZSByZXNldCBkb25lIGluIHRoZQorCSAqIGlycV9wcmVpbnN0YWxsIGFuZCBpcnFf
dW5pbnN0YWxsIGhvb2tzLgorCSAqIEFuZCBlbmFibGluZyBpbiB0aGlzIHNpdHVhdGlvbiBjYXVz
ZSB0aGUgc2NyZWVuIHRvIGZyZWV6ZSBpbiB0aGUKKwkgKiBmaXJzdCB0aW1lIHRoYXQgUFNSIEhX
IHRyaWVzIHRvIGFjdGl2YXRlIHNvIGxldHMga2VlcCBQU1IgZGlzYWJsZWQKKwkgKiB0byBhdm9p
ZCBhbnkgcmVuZGVyaW5nIHByb2JsZW1zLgorCSAqLworCXZhbCA9IEk5MTVfUkVBRChFRFBfUFNS
X0lJUik7CisJdmFsICY9IEVEUF9QU1JfRVJST1IoZWRwX3Bzcl9zaGlmdChkZXZfcHJpdi0+cHNy
LnRyYW5zY29kZXIpKTsKKwlpZiAodmFsKSB7CisJCWRldl9wcml2LT5wc3Iuc2lua19ub3RfcmVs
aWFibGUgPSB0cnVlOworCQlEUk1fREVCVUdfS01TKCJQU1IgaW50ZXJydXB0aW9uIGVycm9yIHNl
dCwgbm90IGVuYWJsaW5nIFBTUlxuIik7CisJCXJldHVybjsKKwl9CiAKIAlEUk1fREVCVUdfS01T
KCJFbmFibGluZyBQU1Ilc1xuIiwKIAkJICAgICAgZGV2X3ByaXYtPnBzci5wc3IyX2VuYWJsZWQg
PyAiMiIgOiAiMSIpOwpAQCAtNzgyLDIwICs4MDAsMjcgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNy
X2V4aXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCXUzMiB2YWw7CiAKIAlp
ZiAoIWRldl9wcml2LT5wc3IuYWN0aXZlKSB7Ci0JCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49
IDkpCi0JCQlXQVJOX09OKEk5MTVfUkVBRChFRFBfUFNSMl9DVEwpICYgRURQX1BTUjJfRU5BQkxF
KTsKLQkJV0FSTl9PTihJOTE1X1JFQUQoRURQX1BTUl9DVEwpICYgRURQX1BTUl9FTkFCTEUpOwor
CQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA5KSB7CisJCQl2YWwgPSBJOTE1X1JFQUQoRURQ
X1BTUjJfQ1RMKGRldl9wcml2LT5wc3IudHJhbnNjb2RlcikpOworCQkJV0FSTl9PTih2YWwgJiBF
RFBfUFNSMl9FTkFCTEUpOworCQl9CisKKwkJdmFsID0gSTkxNV9SRUFEKEVEUF9QU1JfQ1RMKGRl
dl9wcml2LT5wc3IudHJhbnNjb2RlcikpOworCQlXQVJOX09OKHZhbCAmIEVEUF9QU1JfRU5BQkxF
KTsKKwogCQlyZXR1cm47CiAJfQogCiAJaWYgKGRldl9wcml2LT5wc3IucHNyMl9lbmFibGVkKSB7
Ci0JCXZhbCA9IEk5MTVfUkVBRChFRFBfUFNSMl9DVEwpOworCQl2YWwgPSBJOTE1X1JFQUQoRURQ
X1BTUjJfQ1RMKGRldl9wcml2LT5wc3IudHJhbnNjb2RlcikpOwogCQlXQVJOX09OKCEodmFsICYg
RURQX1BTUjJfRU5BQkxFKSk7Ci0JCUk5MTVfV1JJVEUoRURQX1BTUjJfQ1RMLCB2YWwgJiB+RURQ
X1BTUjJfRU5BQkxFKTsKKwkJdmFsICY9IH5FRFBfUFNSMl9FTkFCTEU7CisJCUk5MTVfV1JJVEUo
RURQX1BTUjJfQ1RMKGRldl9wcml2LT5wc3IudHJhbnNjb2RlciksIHZhbCk7CiAJfSBlbHNlIHsK
LQkJdmFsID0gSTkxNV9SRUFEKEVEUF9QU1JfQ1RMKTsKKwkJdmFsID0gSTkxNV9SRUFEKEVEUF9Q
U1JfQ1RMKGRldl9wcml2LT5wc3IudHJhbnNjb2RlcikpOwogCQlXQVJOX09OKCEodmFsICYgRURQ
X1BTUl9FTkFCTEUpKTsKLQkJSTkxNV9XUklURShFRFBfUFNSX0NUTCwgdmFsICYgfkVEUF9QU1Jf
RU5BQkxFKTsKKwkJdmFsICY9IH5FRFBfUFNSX0VOQUJMRTsKKwkJSTkxNV9XUklURShFRFBfUFNS
X0NUTChkZXZfcHJpdi0+cHNyLnRyYW5zY29kZXIpLCB2YWwpOwogCX0KIAlkZXZfcHJpdi0+cHNy
LmFjdGl2ZSA9IGZhbHNlOwogfQpAQCAtODE3LDEwICs4NDIsMTAgQEAgc3RhdGljIHZvaWQgaW50
ZWxfcHNyX2Rpc2FibGVfbG9ja2VkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiAJaW50ZWxf
cHNyX2V4aXQoZGV2X3ByaXYpOwogCiAJaWYgKGRldl9wcml2LT5wc3IucHNyMl9lbmFibGVkKSB7
Ci0JCXBzcl9zdGF0dXMgPSBFRFBfUFNSMl9TVEFUVVM7CisJCXBzcl9zdGF0dXMgPSBFRFBfUFNS
Ml9TVEFUVVMoZGV2X3ByaXYtPnBzci50cmFuc2NvZGVyKTsKIAkJcHNyX3N0YXR1c19tYXNrID0g
RURQX1BTUjJfU1RBVFVTX1NUQVRFX01BU0s7CiAJfSBlbHNlIHsKLQkJcHNyX3N0YXR1cyA9IEVE
UF9QU1JfU1RBVFVTOworCQlwc3Jfc3RhdHVzID0gRURQX1BTUl9TVEFUVVMoZGV2X3ByaXYtPnBz
ci50cmFuc2NvZGVyKTsKIAkJcHNyX3N0YXR1c19tYXNrID0gRURQX1BTUl9TVEFUVVNfU1RBVEVf
TUFTSzsKIAl9CiAKQEAgLTk2Myw3ICs5ODgsOCBAQCBpbnQgaW50ZWxfcHNyX3dhaXRfZm9yX2lk
bGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlLAogCSAqIGRl
ZmVuc2l2ZSBlbm91Z2ggdG8gY292ZXIgZXZlcnl0aGluZy4KIAkgKi8KIAotCXJldHVybiBfX2lu
dGVsX3dhaXRfZm9yX3JlZ2lzdGVyKCZkZXZfcHJpdi0+dW5jb3JlLCBFRFBfUFNSX1NUQVRVUywK
KwlyZXR1cm4gX19pbnRlbF93YWl0X2Zvcl9yZWdpc3RlcigmZGV2X3ByaXYtPnVuY29yZSwKKwkJ
CQkJIEVEUF9QU1JfU1RBVFVTKGRldl9wcml2LT5wc3IudHJhbnNjb2RlciksCiAJCQkJCSBFRFBf
UFNSX1NUQVRVU19TVEFURV9NQVNLLAogCQkJCQkgRURQX1BTUl9TVEFUVVNfU1RBVEVfSURMRSwg
MiwgNTAsCiAJCQkJCSBvdXRfdmFsdWUpOwpAQCAtOTc5LDEwICsxMDA1LDEwIEBAIHN0YXRpYyBi
b29sIF9fcHNyX3dhaXRfZm9yX2lkbGVfbG9ja2VkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikKIAkJcmV0dXJuIGZhbHNlOwogCiAJaWYgKGRldl9wcml2LT5wc3IucHNyMl9lbmFi
bGVkKSB7Ci0JCXJlZyA9IEVEUF9QU1IyX1NUQVRVUzsKKwkJcmVnID0gRURQX1BTUjJfU1RBVFVT
KGRldl9wcml2LT5wc3IudHJhbnNjb2Rlcik7CiAJCW1hc2sgPSBFRFBfUFNSMl9TVEFUVVNfU1RB
VEVfTUFTSzsKIAl9IGVsc2UgewotCQlyZWcgPSBFRFBfUFNSX1NUQVRVUzsKKwkJcmVnID0gRURQ
X1BTUl9TVEFUVVMoZGV2X3ByaXYtPnBzci50cmFuc2NvZGVyKTsKIAkJbWFzayA9IEVEUF9QU1Jf
U1RBVFVTX1NUQVRFX01BU0s7CiAJfQogCkBAIC0xMjA4LDM2ICsxMjM0LDI0IEBAIHZvaWQgaW50
ZWxfcHNyX2ZsdXNoKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKICAqLwogdm9p
ZCBpbnRlbF9wc3JfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7Ci0J
dTMyIHZhbDsKLQogCWlmICghSEFTX1BTUihkZXZfcHJpdikpCiAJCXJldHVybjsKIAotCWRldl9w
cml2LT5wc3JfbW1pb19iYXNlID0gSVNfSEFTV0VMTChkZXZfcHJpdikgPwotCQlIU1dfRURQX1BT
Ul9CQVNFIDogQkRXX0VEUF9QU1JfQkFTRTsKLQogCWlmICghZGV2X3ByaXYtPnBzci5zaW5rX3N1
cHBvcnQpCiAJCXJldHVybjsKIAorCWlmIChJU19IQVNXRUxMKGRldl9wcml2KSkKKwkJLyoKKwkJ
ICogSFNXIGRvbid0IGhhdmUgUFNSIHJlZ2lzdGVycyBvbiB0aGUgc2FtZSBzcGFjZSBhcyB0cmFu
c2NvZGVyCisJCSAqIHNvIHNldCB0aGlzIHRvIGEgdmFsdWUgdGhhdCB3aGVuIHN1YnRyYWN0IHRv
IHRoZSByZWdpc3RlcgorCQkgKiBpbiB0cmFuc2NvZGVyIHNwYWNlIHJlc3VsdHMgaW4gdGhlIHJp
Z2h0IG9mZnNldCBmb3IgSFNXCisJCSAqLworCQlkZXZfcHJpdi0+aHN3X3Bzcl9tbWlvX2FkanVz
dCA9IF9TUkRfQ1RMX0VEUCAtIF9IU1dfRURQX1BTUl9CQVNFOworCiAJaWYgKGk5MTVfbW9kcGFy
YW1zLmVuYWJsZV9wc3IgPT0gLTEpCiAJCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDwgOSB8fCAh
ZGV2X3ByaXYtPnZidC5wc3IuZW5hYmxlKQogCQkJaTkxNV9tb2RwYXJhbXMuZW5hYmxlX3BzciA9
IDA7CiAKLQkvKgotCSAqIElmIGEgUFNSIGVycm9yIGhhcHBlbmVkIGFuZCB0aGUgZHJpdmVyIGlz
IHJlbG9hZGVkLCB0aGUgRURQX1BTUl9JSVIKLQkgKiB3aWxsIHN0aWxsIGtlZXAgdGhlIGVycm9y
IHNldCBldmVuIGFmdGVyIHRoZSByZXNldCBkb25lIGluIHRoZQotCSAqIGlycV9wcmVpbnN0YWxs
IGFuZCBpcnFfdW5pbnN0YWxsIGhvb2tzLgotCSAqIEFuZCBlbmFibGluZyBpbiB0aGlzIHNpdHVh
dGlvbiBjYXVzZSB0aGUgc2NyZWVuIHRvIGZyZWV6ZSBpbiB0aGUKLQkgKiBmaXJzdCB0aW1lIHRo
YXQgUFNSIEhXIHRyaWVzIHRvIGFjdGl2YXRlIHNvIGxldHMga2VlcCBQU1IgZGlzYWJsZWQKLQkg
KiB0byBhdm9pZCBhbnkgcmVuZGVyaW5nIHByb2JsZW1zLgotCSAqLwotCXZhbCA9IEk5MTVfUkVB
RChFRFBfUFNSX0lJUik7Ci0JdmFsICY9IEVEUF9QU1JfRVJST1IoZWRwX3Bzcl9zaGlmdChUUkFO
U0NPREVSX0VEUCkpOwotCWlmICh2YWwpIHsKLQkJRFJNX0RFQlVHX0tNUygiUFNSIGludGVycnVw
dGlvbiBlcnJvciBzZXRcbiIpOwotCQlkZXZfcHJpdi0+cHNyLnNpbmtfbm90X3JlbGlhYmxlID0g
dHJ1ZTsKLQl9Ci0KIAkvKiBTZXQgbGlua19zdGFuZGJ5IHggbGlua19vZmYgZGVmYXVsdHMgKi8K
IAlpZiAoSVNfSEFTV0VMTChkZXZfcHJpdikgfHwgSVNfQlJPQURXRUxMKGRldl9wcml2KSkKIAkJ
LyogSFNXIGFuZCBCRFcgcmVxdWlyZSB3b3JrYXJvdW5kcyB0aGF0IHdlIGRvbid0IGltcGxlbWVu
dC4gKi8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9oYW5kbGVycy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2hhbmRsZXJzLmMKaW5kZXggMjVmNzgxOTZiOTY0Li40
NWE5MTI0ZTUzYjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9oYW5kbGVy
cy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9oYW5kbGVycy5jCkBAIC0yNzk2LDcg
KzI3OTYsNyBAQCBzdGF0aWMgaW50IGluaXRfYnJvYWR3ZWxsX21taW9faW5mbyhzdHJ1Y3QgaW50
ZWxfZ3Z0ICpndnQpCiAJTU1JT19EKENISUNLRU5fUElQRVNMXzEoUElQRV9DKSwgRF9CRFdfUExV
Uyk7CiAKIAlNTUlPX0QoV01fTUlTQywgRF9CRFcpOwotCU1NSU9fRChfTU1JTyhCRFdfRURQX1BT
Ul9CQVNFKSwgRF9CRFcpOworCU1NSU9fRChfTU1JTyhfU1JEX0NUTF9FRFApLCBEX0JEVyk7CiAK
IAlNTUlPX0QoX01NSU8oMHg2NjcxYyksIERfQkRXX1BMVVMpOwogCU1NSU9fRChfTU1JTygweDY2
YzAwKSwgRF9CRFdfUExVUyk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCmluZGV4IGU3
Y2U3MzlmZTU0NS4uZWQ2ZjIxNDAxMzUyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2RlYnVnZnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMu
YwpAQCAtMjEzMSw3ICsyMTMxLDcgQEAgcHNyX3NvdXJjZV9zdGF0dXMoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2LCBzdHJ1Y3Qgc2VxX2ZpbGUgKm0pCiAJCQkiQlVGX09OIiwKIAkJ
CSJUR19PTiIKIAkJfTsKLQkJdmFsID0gSTkxNV9SRUFEKEVEUF9QU1IyX1NUQVRVUyk7CisJCXZh
bCA9IEk5MTVfUkVBRChFRFBfUFNSMl9TVEFUVVMoZGV2X3ByaXYtPnBzci50cmFuc2NvZGVyKSk7
CiAJCXN0YXR1c192YWwgPSAodmFsICYgRURQX1BTUjJfU1RBVFVTX1NUQVRFX01BU0spID4+CiAJ
CQkgICAgICBFRFBfUFNSMl9TVEFUVVNfU1RBVEVfU0hJRlQ7CiAJCWlmIChzdGF0dXNfdmFsIDwg
QVJSQVlfU0laRShsaXZlX3N0YXR1cykpCkBAIC0yMTQ3LDcgKzIxNDcsNyBAQCBwc3Jfc291cmNl
X3N0YXR1cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIHN0cnVjdCBzZXFfZmls
ZSAqbSkKIAkJCSJTUkRPRkZBQ0siLAogCQkJIlNSREVOVF9PTiIsCiAJCX07Ci0JCXZhbCA9IEk5
MTVfUkVBRChFRFBfUFNSX1NUQVRVUyk7CisJCXZhbCA9IEk5MTVfUkVBRChFRFBfUFNSX1NUQVRV
UyhkZXZfcHJpdi0+cHNyLnRyYW5zY29kZXIpKTsKIAkJc3RhdHVzX3ZhbCA9ICh2YWwgJiBFRFBf
UFNSX1NUQVRVU19TVEFURV9NQVNLKSA+PgogCQkJICAgICAgRURQX1BTUl9TVEFUVVNfU1RBVEVf
U0hJRlQ7CiAJCWlmIChzdGF0dXNfdmFsIDwgQVJSQVlfU0laRShsaXZlX3N0YXR1cykpCkBAIC0y
MTkwLDEwICsyMTkwLDEwIEBAIHN0YXRpYyBpbnQgaTkxNV9lZHBfcHNyX3N0YXR1cyhzdHJ1Y3Qg
c2VxX2ZpbGUgKm0sIHZvaWQgKmRhdGEpCiAJCWdvdG8gdW5sb2NrOwogCiAJaWYgKHBzci0+cHNy
Ml9lbmFibGVkKSB7Ci0JCXZhbCA9IEk5MTVfUkVBRChFRFBfUFNSMl9DVEwpOworCQl2YWwgPSBJ
OTE1X1JFQUQoRURQX1BTUjJfQ1RMKGRldl9wcml2LT5wc3IudHJhbnNjb2RlcikpOwogCQllbmFi
bGVkID0gdmFsICYgRURQX1BTUjJfRU5BQkxFOwogCX0gZWxzZSB7Ci0JCXZhbCA9IEk5MTVfUkVB
RChFRFBfUFNSX0NUTCk7CisJCXZhbCA9IEk5MTVfUkVBRChFRFBfUFNSX0NUTChkZXZfcHJpdi0+
cHNyLnRyYW5zY29kZXIpKTsKIAkJZW5hYmxlZCA9IHZhbCAmIEVEUF9QU1JfRU5BQkxFOwogCX0K
IAlzZXFfcHJpbnRmKG0sICJTb3VyY2UgUFNSIGN0bDogJXMgWzB4JTA4eF1cbiIsCkBAIC0yMjA2
LDcgKzIyMDYsOCBAQCBzdGF0aWMgaW50IGk5MTVfZWRwX3Bzcl9zdGF0dXMoc3RydWN0IHNlcV9m
aWxlICptLCB2b2lkICpkYXRhKQogCSAqIFNLTCsgUGVyZiBjb3VudGVyIGlzIHJlc2V0IHRvIDAg
ZXZlcnl0aW1lIERDIHN0YXRlIGlzIGVudGVyZWQKIAkgKi8KIAlpZiAoSVNfSEFTV0VMTChkZXZf
cHJpdikgfHwgSVNfQlJPQURXRUxMKGRldl9wcml2KSkgewotCQl2YWwgPSBJOTE1X1JFQUQoRURQ
X1BTUl9QRVJGX0NOVCkgJiBFRFBfUFNSX1BFUkZfQ05UX01BU0s7CisJCXZhbCA9IEk5MTVfUkVB
RChFRFBfUFNSX1BFUkZfQ05UKGRldl9wcml2LT5wc3IudHJhbnNjb2RlcikpOworCQl2YWwgJj0g
RURQX1BTUl9QRVJGX0NOVF9NQVNLOwogCQlzZXFfcHJpbnRmKG0sICJQZXJmb3JtYW5jZSBjb3Vu
dGVyOiAldVxuIiwgdmFsKTsKIAl9CiAKQEAgLTIyMjQsOCArMjIyNSwxMSBAQCBzdGF0aWMgaW50
IGk5MTVfZWRwX3Bzcl9zdGF0dXMoc3RydWN0IHNlcV9maWxlICptLCB2b2lkICpkYXRhKQogCQkg
KiBSZWFkaW5nIGFsbCAzIHJlZ2lzdGVycyBiZWZvcmUgaGFuZCB0byBtaW5pbWl6ZSBjcm9zc2lu
ZyBhCiAJCSAqIGZyYW1lIGJvdW5kYXJ5IGJldHdlZW4gcmVnaXN0ZXIgcmVhZHMKIAkJICovCi0J
CWZvciAoZnJhbWUgPSAwOyBmcmFtZSA8IFBTUjJfU1VfU1RBVFVTX0ZSQU1FUzsgZnJhbWUgKz0g
MykKLQkJCXN1X2ZyYW1lc192YWxbZnJhbWUgLyAzXSA9IEk5MTVfUkVBRChQU1IyX1NVX1NUQVRV
UyhmcmFtZSkpOworCQlmb3IgKGZyYW1lID0gMDsgZnJhbWUgPCBQU1IyX1NVX1NUQVRVU19GUkFN
RVM7IGZyYW1lICs9IDMpIHsKKwkJCXZhbCA9IEk5MTVfUkVBRChQU1IyX1NVX1NUQVRVUyhkZXZf
cHJpdi0+cHNyLnRyYW5zY29kZXIsCisJCQkJCQkgICAgICAgZnJhbWUpKTsKKwkJCXN1X2ZyYW1l
c192YWxbZnJhbWUgLyAzXSA9IHZhbDsKKwkJfQogCiAJCXNlcV9wdXRzKG0sICJGcmFtZTpcdFBT
UjIgU1UgYmxvY2tzOlxuIik7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4IDBmODFjZWQw
YTA2Mi4uZDZjOGVmY2JhNjEyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTQ3OSw2ICs0
NzksNyBAQCBzdHJ1Y3QgaTkxNV9wc3IgewogCWJvb2wgZW5hYmxlZDsKIAlzdHJ1Y3QgaW50ZWxf
ZHAgKmRwOwogCWVudW0gcGlwZSBwaXBlOworCWVudW0gdHJhbnNjb2RlciB0cmFuc2NvZGVyOwog
CWJvb2wgYWN0aXZlOwogCXN0cnVjdCB3b3JrX3N0cnVjdCB3b3JrOwogCXVuc2lnbmVkIGJ1c3lf
ZnJvbnRidWZmZXJfYml0czsKQEAgLTEzOTIsMTEgKzEzOTMsMTEgQEAgc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgewogCSAqLwogCXUzMiBncGlvX21taW9fYmFzZTsKIAorCXUzMiBoc3dfcHNyX21t
aW9fYWRqdXN0OworCiAJLyogTU1JTyBiYXNlIGFkZHJlc3MgZm9yIE1JUEkgcmVncyAqLwogCXUz
MiBtaXBpX21taW9fYmFzZTsKIAotCXUzMiBwc3JfbW1pb19iYXNlOwotCiAJdTMyIHBwc19tbWlv
X2Jhc2U7CiAKIAl3YWl0X3F1ZXVlX2hlYWRfdCBnbWJ1c193YWl0X3F1ZXVlOwpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmgKaW5kZXggZWEyZjBmYTI0MDJkLi43NTdlOWNmNDVlYjIgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaApAQCAtNDE4NSwxMCArNDE4NSwxNyBAQCBlbnVtIHsKICNkZWZpbmUgUElQ
RVNSQyh0cmFucykJCV9NTUlPX1RSQU5TMih0cmFucywgX1BJUEVBU1JDKQogI2RlZmluZSBQSVBF
X01VTFQodHJhbnMpCV9NTUlPX1RSQU5TMih0cmFucywgX1BJUEVfTVVMVF9BKQogCi0vKiBIU1cr
IGVEUCBQU1IgcmVnaXN0ZXJzICovCi0jZGVmaW5lIEhTV19FRFBfUFNSX0JBU0UJMHg2NDgwMAot
I2RlZmluZSBCRFdfRURQX1BTUl9CQVNFCTB4NmY4MDAKLSNkZWZpbmUgRURQX1BTUl9DVEwJCQkJ
X01NSU8oZGV2X3ByaXYtPnBzcl9tbWlvX2Jhc2UgKyAwKQorLyoKKyAqIEhTVysgZURQIFBTUiBy
ZWdpc3RlcnMKKyAqCisgKiBIU1cgUFNSIHJlZ2lzdGVycyBhcmUgcmVsYXRpdmUgdG8gRERJQShf
RERJX0JVRl9DVExfQSArIDB4ODAwKSB3aXRoIGp1c3Qgb25lCisgKiBpbnN0YW5jZSBvZiBpdAor
ICovCisjZGVmaW5lIF9IU1dfRURQX1BTUl9CQVNFCQkJMHg2NDgwMAorI2RlZmluZSBfU1JEX0NU
TF9BCQkJCTB4NjA4MDAKKyNkZWZpbmUgX1NSRF9DVExfRURQCQkJCTB4NmY4MDAKKyNkZWZpbmUg
X1BTUl9BREoodHJhbiwgcmVnKQkJCShfVFJBTlMyKHRyYW4sIHJlZykgLSBkZXZfcHJpdi0+aHN3
X3Bzcl9tbWlvX2FkanVzdCkKKyNkZWZpbmUgRURQX1BTUl9DVEwodHJhbikJCQlfTU1JTyhfUFNS
X0FESih0cmFuLCBfU1JEX0NUTF9BKSkKICNkZWZpbmUgICBFRFBfUFNSX0VOQUJMRQkJCSgxIDw8
IDMxKQogI2RlZmluZSAgIEJEV19QU1JfU0lOR0xFX0ZSQU1FCQkJKDEgPDwgMzApCiAjZGVmaW5l
ICAgRURQX1BTUl9SRVNUT1JFX1BTUl9BQ1RJVkVfQ1RYX01BU0sJKDEgPDwgMjkpIC8qIFNXIGNh
bid0IG1vZGlmeSAqLwpAQCAtNDIyNSwxNiArNDIzMiwyMiBAQCBlbnVtIHsKICNkZWZpbmUgICBF
RFBfUFNSX1RSQU5TQ09ERVJfQV9TSElGVAkJOAogI2RlZmluZSAgIEVEUF9QU1JfVFJBTlNDT0RF
Ul9FRFBfU0hJRlQJCTAKIAotI2RlZmluZSBFRFBfUFNSX0FVWF9DVEwJCQkJX01NSU8oZGV2X3By
aXYtPnBzcl9tbWlvX2Jhc2UgKyAweDEwKQorI2RlZmluZSBfU1JEX0FVWF9DVExfQQkJCQkweDYw
ODEwCisjZGVmaW5lIF9TUkRfQVVYX0NUTF9FRFAJCQkweDZmODEwCisjZGVmaW5lIEVEUF9QU1Jf
QVVYX0NUTCh0cmFuKQkJCV9NTUlPKF9QU1JfQURKKHRyYW4sIF9TUkRfQVVYX0NUTF9BKSkKICNk
ZWZpbmUgICBFRFBfUFNSX0FVWF9DVExfVElNRV9PVVRfTUFTSwkJKDMgPDwgMjYpCiAjZGVmaW5l
ICAgRURQX1BTUl9BVVhfQ1RMX01FU1NBR0VfU0laRV9NQVNLCSgweDFmIDw8IDIwKQogI2RlZmlu
ZSAgIEVEUF9QU1JfQVVYX0NUTF9QUkVDSEFSR0VfMlVTX01BU0sJKDB4ZiA8PCAxNikKICNkZWZp
bmUgICBFRFBfUFNSX0FVWF9DVExfRVJST1JfSU5URVJSVVBUCSgxIDw8IDExKQogI2RlZmluZSAg
IEVEUF9QU1JfQVVYX0NUTF9CSVRfQ0xPQ0tfMlhfTUFTSwkoMHg3ZmYpCiAKLSNkZWZpbmUgRURQ
X1BTUl9BVVhfREFUQShpKQkJCV9NTUlPKGRldl9wcml2LT5wc3JfbW1pb19iYXNlICsgMHgxNCAr
IChpKSAqIDQpIC8qIDUgcmVnaXN0ZXJzICovCisjZGVmaW5lIF9TUkRfQVVYX0RBVEFfQQkJCQkw
eDYwODE0CisjZGVmaW5lIF9TUkRfQVVYX0RBVEFfRURQCQkJMHg2ZjgxNAorI2RlZmluZSBFRFBf
UFNSX0FVWF9EQVRBKHRyYW4sIGkpCQlfTU1JTyhfUFNSX0FESih0cmFuLCBfU1JEX0FVWF9EQVRB
X0EpICsgKGkpICsgNCkgLyogNSByZWdpc3RlcnMgKi8KIAotI2RlZmluZSBFRFBfUFNSX1NUQVRV
UwkJCQlfTU1JTyhkZXZfcHJpdi0+cHNyX21taW9fYmFzZSArIDB4NDApCisjZGVmaW5lIF9TUkRf
U1RBVFVTX0EJCQkJMHg2MDg0MAorI2RlZmluZSBfU1JEX1NUQVRVU19FRFAJCQkJMHg2Zjg0MAor
I2RlZmluZSBFRFBfUFNSX1NUQVRVUyh0cmFuKQkJCV9NTUlPKF9QU1JfQURKKHRyYW4sIF9TUkRf
U1RBVFVTX0EpKQogI2RlZmluZSAgIEVEUF9QU1JfU1RBVFVTX1NUQVRFX01BU0sJCSg3IDw8IDI5
KQogI2RlZmluZSAgIEVEUF9QU1JfU1RBVFVTX1NUQVRFX1NISUZUCQkyOQogI2RlZmluZSAgIEVE
UF9QU1JfU1RBVFVTX1NUQVRFX0lETEUJCSgwIDw8IDI5KQpAQCAtNDI1OSwxMCArNDI3MiwxNSBA
QCBlbnVtIHsKICNkZWZpbmUgICBFRFBfUFNSX1NUQVRVU19TRU5ESU5HX1RQMQkJKDEgPDwgNCkK
ICNkZWZpbmUgICBFRFBfUFNSX1NUQVRVU19JRExFX01BU0sJCTB4ZgogCi0jZGVmaW5lIEVEUF9Q
U1JfUEVSRl9DTlQJCV9NTUlPKGRldl9wcml2LT5wc3JfbW1pb19iYXNlICsgMHg0NCkKKyNkZWZp
bmUgX1NSRF9QRVJGX0NOVF9BCQkJMHg2MDg0NAorI2RlZmluZSBfU1JEX1BFUkZfQ05UX0VEUAkJ
MHg2Zjg0NAorI2RlZmluZSBFRFBfUFNSX1BFUkZfQ05UKHRyYW4pCQlfTU1JTyhfUFNSX0FESih0
cmFuLCBfU1JEX1BFUkZfQ05UX0EpKQogI2RlZmluZSAgIEVEUF9QU1JfUEVSRl9DTlRfTUFTSwkJ
MHhmZmZmZmYKIAotI2RlZmluZSBFRFBfUFNSX0RFQlVHCQkJCV9NTUlPKGRldl9wcml2LT5wc3Jf
bW1pb19iYXNlICsgMHg2MCkgLyogUFNSX01BU0sgb24gU0tMKyAqLworLyogUFNSX01BU0sgb24g
U0tMKyAqLworI2RlZmluZSBfU1JEX0RFQlVHX0EJCQkJMHg2MDg2MAorI2RlZmluZSBfU1JEX0RF
QlVHX0VEUAkJCQkweDZmODYwCisjZGVmaW5lIEVEUF9QU1JfREVCVUcodHJhbikJCQlfTU1JTyhf
UFNSX0FESih0cmFuLCBfU1JEX0RFQlVHX0EpKQogI2RlZmluZSAgIEVEUF9QU1JfREVCVUdfTUFT
S19NQVhfU0xFRVAgICAgICAgICAoMSA8PCAyOCkKICNkZWZpbmUgICBFRFBfUFNSX0RFQlVHX01B
U0tfTFBTUCAgICAgICAgICAgICAgKDEgPDwgMjcpCiAjZGVmaW5lICAgRURQX1BTUl9ERUJVR19N
QVNLX01FTVVQICAgICAgICAgICAgICgxIDw8IDI2KQpAQCAtNDI3MCw3ICs0Mjg4LDkgQEAgZW51
bSB7CiAjZGVmaW5lICAgRURQX1BTUl9ERUJVR19NQVNLX0RJU1BfUkVHX1dSSVRFICAgICgxIDw8
IDE2KSAvKiBSZXNlcnZlZCBpbiBJQ0wrICovCiAjZGVmaW5lICAgRURQX1BTUl9ERUJVR19FWElU
X09OX1BJWEVMX1VOREVSUlVOICgxIDw8IDE1KSAvKiBTS0wrICovCiAKLSNkZWZpbmUgRURQX1BT
UjJfQ1RMCQkJX01NSU8oMHg2ZjkwMCkKKyNkZWZpbmUgX1BTUjJfQ1RMX0EJCQkweDYwOTAwCisj
ZGVmaW5lIF9QU1IyX0NUTF9FRFAJCQkweDZmOTAwCisjZGVmaW5lIEVEUF9QU1IyX0NUTCh0cmFu
KQkJX01NSU9fVFJBTlMyKHRyYW4sIF9QU1IyX0NUTF9BKQogI2RlZmluZSAgIEVEUF9QU1IyX0VO
QUJMRQkJKDEgPDwgMzEpCiAjZGVmaW5lICAgRURQX1NVX1RSQUNLX0VOQUJMRQkJKDEgPDwgMzAp
CiAjZGVmaW5lICAgRURQX1lfQ09PUkRJTkFURV9WQUxJRAkoMSA8PCAyNikgLyogR0xLIGFuZCBD
TkwrICovCkBAIC00MjkyLDggKzQzMTIsOCBAQCBlbnVtIHsKICNkZWZpbmUgX1BTUl9FVkVOVF9U
UkFOU19CCQkJMHg2MTg0OAogI2RlZmluZSBfUFNSX0VWRU5UX1RSQU5TX0MJCQkweDYyODQ4CiAj
ZGVmaW5lIF9QU1JfRVZFTlRfVFJBTlNfRAkJCTB4NjM4NDgKLSNkZWZpbmUgX1BTUl9FVkVOVF9U
UkFOU19FRFAJCQkweDZGODQ4Ci0jZGVmaW5lIFBTUl9FVkVOVCh0cmFucykJCQlfTU1JT19UUkFO
UzIodHJhbnMsIF9QU1JfRVZFTlRfVFJBTlNfQSkKKyNkZWZpbmUgX1BTUl9FVkVOVF9UUkFOU19F
RFAJCQkweDZmODQ4CisjZGVmaW5lIFBTUl9FVkVOVCh0cmFuKQkJCQlfTU1JT19UUkFOUzIodHJh
biwgX1BTUl9FVkVOVF9UUkFOU19BKQogI2RlZmluZSAgUFNSX0VWRU5UX1BTUjJfV0RfVElNRVJf
RVhQSVJFCQkoMSA8PCAxNykKICNkZWZpbmUgIFBTUl9FVkVOVF9QU1IyX0RJU0FCTEVECQkoMSA8
PCAxNikKICNkZWZpbmUgIFBTUl9FVkVOVF9TVV9ESVJUWV9GSUZPX1VOREVSUlVOCSgxIDw8IDE1
KQpAQCAtNDMxMSwxNSArNDMzMSwxNiBAQCBlbnVtIHsKICNkZWZpbmUgIFBTUl9FVkVOVF9MUFNQ
X01PREVfRVhJVAkJKDEgPDwgMSkKICNkZWZpbmUgIFBTUl9FVkVOVF9QU1JfRElTQUJMRQkJCSgx
IDw8IDApCiAKLSNkZWZpbmUgRURQX1BTUjJfU1RBVFVTCQkJX01NSU8oMHg2Zjk0MCkKKyNkZWZp
bmUgX1BTUjJfU1RBVFVTX0EJCQkweDYwOTQwCisjZGVmaW5lIF9QU1IyX1NUQVRVU19FRFAJCTB4
NmY5NDAKKyNkZWZpbmUgRURQX1BTUjJfU1RBVFVTKHRyYW4pCQlfTU1JT19UUkFOUzIodHJhbiwg
X1BTUjJfU1RBVFVTX0EpCiAjZGVmaW5lIEVEUF9QU1IyX1NUQVRVU19TVEFURV9NQVNLICAgICAo
MHhmIDw8IDI4KQogI2RlZmluZSBFRFBfUFNSMl9TVEFUVVNfU1RBVEVfU0hJRlQgICAgMjgKIAot
I2RlZmluZSBfUFNSMl9TVV9TVEFUVVNfMAkJMHg2RjkxNAotI2RlZmluZSBfUFNSMl9TVV9TVEFU
VVNfMQkJMHg2RjkxOAotI2RlZmluZSBfUFNSMl9TVV9TVEFUVVNfMgkJMHg2RjkxQwotI2RlZmlu
ZSBfUFNSMl9TVV9TVEFUVVMoaW5kZXgpCQlfTU1JTyhfUElDS19FVkVOKChpbmRleCksIF9QU1Iy
X1NVX1NUQVRVU18wLCBfUFNSMl9TVV9TVEFUVVNfMSkpCi0jZGVmaW5lIFBTUjJfU1VfU1RBVFVT
KGZyYW1lKQkJKF9QU1IyX1NVX1NUQVRVUygoZnJhbWUpIC8gMykpCisjZGVmaW5lIF9QU1IyX1NV
X1NUQVRVU19BCQkweDYwOTE0CisjZGVmaW5lIF9QU1IyX1NVX1NUQVRVU19FRFAJCTB4NmY5MTQK
KyNkZWZpbmUgX1BTUjJfU1VfU1RBVFVTKHRyYW4sIGluZGV4KQlfTU1JTyhfVFJBTlMyKHRyYW4s
IF9QU1IyX1NVX1NUQVRVU19BKSArIChpbmRleCkgKiA0KQorI2RlZmluZSBQU1IyX1NVX1NUQVRV
Uyh0cmFuLCBmcmFtZSkJKF9QU1IyX1NVX1NUQVRVUyh0cmFuLCAoZnJhbWUpIC8gMykpCiAjZGVm
aW5lIFBTUjJfU1VfU1RBVFVTX1NISUZUKGZyYW1lKQkoKChmcmFtZSkgJSAzKSAqIDEwKQogI2Rl
ZmluZSBQU1IyX1NVX1NUQVRVU19NQVNLKGZyYW1lKQkoMHgzZmYgPDwgUFNSMl9TVV9TVEFUVVNf
U0hJRlQoZnJhbWUpKQogI2RlZmluZSBQU1IyX1NVX1NUQVRVU19GUkFNRVMJCTgKLS0gCjIuMjEu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
