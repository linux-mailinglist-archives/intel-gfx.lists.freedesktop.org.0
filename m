Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0131AC42CC
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 23:37:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 672B889ECB;
	Tue,  1 Oct 2019 21:37:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1211A89ECB
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 21:36:59 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 14:36:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,572,1559545200"; d="scan'208";a="195782489"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.11.83])
 by orsmga006.jf.intel.com with ESMTP; 01 Oct 2019 14:36:58 -0700
Date: Tue, 1 Oct 2019 14:36:56 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191001213656.7z4onsion54gzcwj@ldmartin-desk1>
References: <20191001193729.123736-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001193729.123736-1-jose.souza@intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mg: Use tc_port instead of port
 parameter to MG registers
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBPY3QgMDEsIDIwMTkgYXQgMTI6Mzc6MjlQTSAtMDcwMCwgSm9zZSBTb3V6YSB3cm90
ZToKPkFsbCB0aGUgTUcgcmVnaXN0ZXJzIGlzIGJhc2VkIG9uIHRoZSB0Y19wb3J0IG5vdCBwb3J0
LCBzbwo+TUdfUEhZX1BPUlRfTE4oKSB3YXMgc3VidHJhY3RpbmcgcG9ydCBhbmQgUE9SVF9DIHdo
YXQgaXMgdmVyeQo+ZnJhZ2lsZS4KPlNvIHJlcGxhY2luZyBwb3J0IHRvIHRjX3BvcnQgaW4gYWxs
IE1HIHJlZ2lzdGVyIG1hY3JvcyBhbmQgdXNlcnMKPmxpa2Ugd2UgaGF2ZSBmb3IgREtMLgo+Cj5D
YzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj5DYzogSW1yZSBE
ZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgo+U2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogTHVjYXMgRGUgTWFy
Y2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CgpMdWNhcyBEZSBNYXJjaGkKCj4tLS0KPiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgIDY0ICsrKysrKystLS0t
LS0tLQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgfCAxMDAgKysr
KysrKysrKystLS0tLS0tLS0tLS0KPiAyIGZpbGVzIGNoYW5nZWQsIDgxIGluc2VydGlvbnMoKyks
IDgzIGRlbGV0aW9ucygtKQo+Cj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMKPmluZGV4IGI0NjNlNTFmOGI0NS4uM2MxZTg4NWUwMTg3IDEwMDY0NAo+LS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+KysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+QEAgLTI2ODEsNyArMjY4MSw3IEBAIHN0YXRpYyB2
b2lkIGljbF9tZ19waHlfZGRpX3Zzd2luZ19zZXF1ZW5jZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAq
ZW5jb2RlciwKPiAJCQkJCSAgIHUzMiBsZXZlbCkKPiB7Cj4gCXN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOwo+LQllbnVtIHBvcnQg
cG9ydCA9IGVuY29kZXItPnBvcnQ7Cj4rCWVudW0gdGNfcG9ydCB0Y19wb3J0ID0gaW50ZWxfcG9y
dF90b190YyhkZXZfcHJpdiwgZW5jb2Rlci0+cG9ydCk7Cj4gCWNvbnN0IHN0cnVjdCBpY2xfbWdf
cGh5X2RkaV9idWZfdHJhbnMgKmRkaV90cmFuc2xhdGlvbnM7Cj4gCXUzMiBuX2VudHJpZXMsIHZh
bDsKPiAJaW50IGxuOwo+QEAgLTI2OTcsMzMgKzI2OTcsMzMgQEAgc3RhdGljIHZvaWQgaWNsX21n
X3BoeV9kZGlfdnN3aW5nX3NlcXVlbmNlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+
Cj4gCS8qIFNldCBNR19UWF9MSU5LX1BBUkFNUyBjcmlfdXNlX2ZzMzIgdG8gMC4gKi8KPiAJZm9y
IChsbiA9IDA7IGxuIDwgMjsgbG4rKykgewo+LQkJdmFsID0gSTkxNV9SRUFEKE1HX1RYMV9MSU5L
X1BBUkFNUyhsbiwgcG9ydCkpOwo+KwkJdmFsID0gSTkxNV9SRUFEKE1HX1RYMV9MSU5LX1BBUkFN
UyhsbiwgdGNfcG9ydCkpOwo+IAkJdmFsICY9IH5DUklfVVNFX0ZTMzI7Cj4tCQlJOTE1X1dSSVRF
KE1HX1RYMV9MSU5LX1BBUkFNUyhsbiwgcG9ydCksIHZhbCk7Cj4rCQlJOTE1X1dSSVRFKE1HX1RY
MV9MSU5LX1BBUkFNUyhsbiwgdGNfcG9ydCksIHZhbCk7Cj4KPi0JCXZhbCA9IEk5MTVfUkVBRChN
R19UWDJfTElOS19QQVJBTVMobG4sIHBvcnQpKTsKPisJCXZhbCA9IEk5MTVfUkVBRChNR19UWDJf
TElOS19QQVJBTVMobG4sIHRjX3BvcnQpKTsKPiAJCXZhbCAmPSB+Q1JJX1VTRV9GUzMyOwo+LQkJ
STkxNV9XUklURShNR19UWDJfTElOS19QQVJBTVMobG4sIHBvcnQpLCB2YWwpOwo+KwkJSTkxNV9X
UklURShNR19UWDJfTElOS19QQVJBTVMobG4sIHRjX3BvcnQpLCB2YWwpOwo+IAl9Cj4KPiAJLyog
UHJvZ3JhbSBNR19UWF9TV0lOR0NUUkwgd2l0aCB2YWx1ZXMgZnJvbSB2c3dpbmcgdGFibGUgKi8K
PiAJZm9yIChsbiA9IDA7IGxuIDwgMjsgbG4rKykgewo+LQkJdmFsID0gSTkxNV9SRUFEKE1HX1RY
MV9TV0lOR0NUUkwobG4sIHBvcnQpKTsKPisJCXZhbCA9IEk5MTVfUkVBRChNR19UWDFfU1dJTkdD
VFJMKGxuLCB0Y19wb3J0KSk7Cj4gCQl2YWwgJj0gfkNSSV9UWERFRU1QSF9PVkVSUklERV8xN18x
Ml9NQVNLOwo+IAkJdmFsIHw9IENSSV9UWERFRU1QSF9PVkVSUklERV8xN18xMigKPiAJCQlkZGlf
dHJhbnNsYXRpb25zW2xldmVsXS5jcmlfdHhkZWVtcGhfb3ZlcnJpZGVfMTdfMTIpOwo+LQkJSTkx
NV9XUklURShNR19UWDFfU1dJTkdDVFJMKGxuLCBwb3J0KSwgdmFsKTsKPisJCUk5MTVfV1JJVEUo
TUdfVFgxX1NXSU5HQ1RSTChsbiwgdGNfcG9ydCksIHZhbCk7Cj4KPi0JCXZhbCA9IEk5MTVfUkVB
RChNR19UWDJfU1dJTkdDVFJMKGxuLCBwb3J0KSk7Cj4rCQl2YWwgPSBJOTE1X1JFQUQoTUdfVFgy
X1NXSU5HQ1RSTChsbiwgdGNfcG9ydCkpOwo+IAkJdmFsICY9IH5DUklfVFhERUVNUEhfT1ZFUlJJ
REVfMTdfMTJfTUFTSzsKPiAJCXZhbCB8PSBDUklfVFhERUVNUEhfT1ZFUlJJREVfMTdfMTIoCj4g
CQkJZGRpX3RyYW5zbGF0aW9uc1tsZXZlbF0uY3JpX3R4ZGVlbXBoX292ZXJyaWRlXzE3XzEyKTsK
Pi0JCUk5MTVfV1JJVEUoTUdfVFgyX1NXSU5HQ1RSTChsbiwgcG9ydCksIHZhbCk7Cj4rCQlJOTE1
X1dSSVRFKE1HX1RYMl9TV0lOR0NUUkwobG4sIHRjX3BvcnQpLCB2YWwpOwo+IAl9Cj4KPiAJLyog
UHJvZ3JhbSBNR19UWF9EUlZDVFJMIHdpdGggdmFsdWVzIGZyb20gdnN3aW5nIHRhYmxlICovCj4g
CWZvciAobG4gPSAwOyBsbiA8IDI7IGxuKyspIHsKPi0JCXZhbCA9IEk5MTVfUkVBRChNR19UWDFf
RFJWQ1RSTChsbiwgcG9ydCkpOwo+KwkJdmFsID0gSTkxNV9SRUFEKE1HX1RYMV9EUlZDVFJMKGxu
LCB0Y19wb3J0KSk7Cj4gCQl2YWwgJj0gfihDUklfVFhERUVNUEhfT1ZFUlJJREVfMTFfNl9NQVNL
IHwKPiAJCQkgQ1JJX1RYREVFTVBIX09WRVJSSURFXzVfMF9NQVNLKTsKPiAJCXZhbCB8PSBDUklf
VFhERUVNUEhfT1ZFUlJJREVfNV8wKAo+QEAgLTI3MzEsOSArMjczMSw5IEBAIHN0YXRpYyB2b2lk
IGljbF9tZ19waHlfZGRpX3Zzd2luZ19zZXF1ZW5jZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5j
b2RlciwKPiAJCQlDUklfVFhERUVNUEhfT1ZFUlJJREVfMTFfNigKPiAJCQkJZGRpX3RyYW5zbGF0
aW9uc1tsZXZlbF0uY3JpX3R4ZGVlbXBoX292ZXJyaWRlXzExXzYpIHwKPiAJCQlDUklfVFhERUVN
UEhfT1ZFUlJJREVfRU47Cj4tCQlJOTE1X1dSSVRFKE1HX1RYMV9EUlZDVFJMKGxuLCBwb3J0KSwg
dmFsKTsKPisJCUk5MTVfV1JJVEUoTUdfVFgxX0RSVkNUUkwobG4sIHRjX3BvcnQpLCB2YWwpOwo+
Cj4tCQl2YWwgPSBJOTE1X1JFQUQoTUdfVFgyX0RSVkNUUkwobG4sIHBvcnQpKTsKPisJCXZhbCA9
IEk5MTVfUkVBRChNR19UWDJfRFJWQ1RSTChsbiwgdGNfcG9ydCkpOwo+IAkJdmFsICY9IH4oQ1JJ
X1RYREVFTVBIX09WRVJSSURFXzExXzZfTUFTSyB8Cj4gCQkJIENSSV9UWERFRU1QSF9PVkVSUklE
RV81XzBfTUFTSyk7Cj4gCQl2YWwgfD0gQ1JJX1RYREVFTVBIX09WRVJSSURFXzVfMCgKPkBAIC0y
NzQxLDcgKzI3NDEsNyBAQCBzdGF0aWMgdm9pZCBpY2xfbWdfcGh5X2RkaV92c3dpbmdfc2VxdWVu
Y2Uoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gCQkJQ1JJX1RYREVFTVBIX09WRVJS
SURFXzExXzYoCj4gCQkJCWRkaV90cmFuc2xhdGlvbnNbbGV2ZWxdLmNyaV90eGRlZW1waF9vdmVy
cmlkZV8xMV82KSB8Cj4gCQkJQ1JJX1RYREVFTVBIX09WRVJSSURFX0VOOwo+LQkJSTkxNV9XUklU
RShNR19UWDJfRFJWQ1RSTChsbiwgcG9ydCksIHZhbCk7Cj4rCQlJOTE1X1dSSVRFKE1HX1RYMl9E
UlZDVFJMKGxuLCB0Y19wb3J0KSwgdmFsKTsKPgo+IAkJLyogRklYTUU6IFByb2dyYW0gQ1JJX0xP
QURHRU5fU0VMIGFmdGVyIHRoZSBzcGVjIGlzIHVwZGF0ZWQgKi8KPiAJfQo+QEAgLTI3NTIsMTcg
KzI3NTIsMTcgQEAgc3RhdGljIHZvaWQgaWNsX21nX3BoeV9kZGlfdnN3aW5nX3NlcXVlbmNlKHN0
cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+IAkgKiB2YWx1ZXMgZnJvbSB0YWJsZSBmb3Ig
d2hpY2ggVFgxIGFuZCBUWDIgZW5hYmxlZC4KPiAJICovCj4gCWZvciAobG4gPSAwOyBsbiA8IDI7
IGxuKyspIHsKPi0JCXZhbCA9IEk5MTVfUkVBRChNR19DTEtIVUIobG4sIHBvcnQpKTsKPisJCXZh
bCA9IEk5MTVfUkVBRChNR19DTEtIVUIobG4sIHRjX3BvcnQpKTsKPiAJCWlmIChsaW5rX2Nsb2Nr
IDwgMzAwMDAwKQo+IAkJCXZhbCB8PSBDRkdfTE9XX1JBVEVfTEtSRU5fRU47Cj4gCQllbHNlCj4g
CQkJdmFsICY9IH5DRkdfTE9XX1JBVEVfTEtSRU5fRU47Cj4tCQlJOTE1X1dSSVRFKE1HX0NMS0hV
QihsbiwgcG9ydCksIHZhbCk7Cj4rCQlJOTE1X1dSSVRFKE1HX0NMS0hVQihsbiwgdGNfcG9ydCks
IHZhbCk7Cj4gCX0KPgo+IAkvKiBQcm9ncmFtIHRoZSBNR19UWF9EQ0M8TE4sIHBvcnQgYmVpbmcg
dXNlZD4gYmFzZWQgb24gdGhlIGxpbmsgZnJlcXVlbmN5ICovCj4gCWZvciAobG4gPSAwOyBsbiA8
IDI7IGxuKyspIHsKPi0JCXZhbCA9IEk5MTVfUkVBRChNR19UWDFfRENDKGxuLCBwb3J0KSk7Cj4r
CQl2YWwgPSBJOTE1X1JFQUQoTUdfVFgxX0RDQyhsbiwgdGNfcG9ydCkpOwo+IAkJdmFsICY9IH5D
RkdfQU1JX0NLX0RJVl9PVkVSUklERV9WQUxfTUFTSzsKPiAJCWlmIChsaW5rX2Nsb2NrIDw9IDUw
MDAwMCkgewo+IAkJCXZhbCAmPSB+Q0ZHX0FNSV9DS19ESVZfT1ZFUlJJREVfRU47Cj5AQCAtMjc3
MCw5ICsyNzcwLDkgQEAgc3RhdGljIHZvaWQgaWNsX21nX3BoeV9kZGlfdnN3aW5nX3NlcXVlbmNl
KHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+IAkJCXZhbCB8PSBDRkdfQU1JX0NLX0RJ
Vl9PVkVSUklERV9FTiB8Cj4gCQkJCUNGR19BTUlfQ0tfRElWX09WRVJSSURFX1ZBTCgxKTsKPiAJ
CX0KPi0JCUk5MTVfV1JJVEUoTUdfVFgxX0RDQyhsbiwgcG9ydCksIHZhbCk7Cj4rCQlJOTE1X1dS
SVRFKE1HX1RYMV9EQ0MobG4sIHRjX3BvcnQpLCB2YWwpOwo+Cj4tCQl2YWwgPSBJOTE1X1JFQUQo
TUdfVFgyX0RDQyhsbiwgcG9ydCkpOwo+KwkJdmFsID0gSTkxNV9SRUFEKE1HX1RYMl9EQ0MobG4s
IHRjX3BvcnQpKTsKPiAJCXZhbCAmPSB+Q0ZHX0FNSV9DS19ESVZfT1ZFUlJJREVfVkFMX01BU0s7
Cj4gCQlpZiAobGlua19jbG9jayA8PSA1MDAwMDApIHsKPiAJCQl2YWwgJj0gfkNGR19BTUlfQ0tf
RElWX09WRVJSSURFX0VOOwo+QEAgLTI3ODAsMTggKzI3ODAsMTggQEAgc3RhdGljIHZvaWQgaWNs
X21nX3BoeV9kZGlfdnN3aW5nX3NlcXVlbmNlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
LAo+IAkJCXZhbCB8PSBDRkdfQU1JX0NLX0RJVl9PVkVSUklERV9FTiB8Cj4gCQkJCUNGR19BTUlf
Q0tfRElWX09WRVJSSURFX1ZBTCgxKTsKPiAJCX0KPi0JCUk5MTVfV1JJVEUoTUdfVFgyX0RDQyhs
biwgcG9ydCksIHZhbCk7Cj4rCQlJOTE1X1dSSVRFKE1HX1RYMl9EQ0MobG4sIHRjX3BvcnQpLCB2
YWwpOwo+IAl9Cj4KPiAJLyogUHJvZ3JhbSBNR19UWF9QSVNPX1JFQURMT0FEIHdpdGggdmFsdWVz
IGZyb20gdnN3aW5nIHRhYmxlICovCj4gCWZvciAobG4gPSAwOyBsbiA8IDI7IGxuKyspIHsKPi0J
CXZhbCA9IEk5MTVfUkVBRChNR19UWDFfUElTT19SRUFETE9BRChsbiwgcG9ydCkpOwo+KwkJdmFs
ID0gSTkxNV9SRUFEKE1HX1RYMV9QSVNPX1JFQURMT0FEKGxuLCB0Y19wb3J0KSk7Cj4gCQl2YWwg
fD0gQ1JJX0NBTENJTklUOwo+LQkJSTkxNV9XUklURShNR19UWDFfUElTT19SRUFETE9BRChsbiwg
cG9ydCksIHZhbCk7Cj4rCQlJOTE1X1dSSVRFKE1HX1RYMV9QSVNPX1JFQURMT0FEKGxuLCB0Y19w
b3J0KSwgdmFsKTsKPgo+LQkJdmFsID0gSTkxNV9SRUFEKE1HX1RYMl9QSVNPX1JFQURMT0FEKGxu
LCBwb3J0KSk7Cj4rCQl2YWwgPSBJOTE1X1JFQUQoTUdfVFgyX1BJU09fUkVBRExPQUQobG4sIHRj
X3BvcnQpKTsKPiAJCXZhbCB8PSBDUklfQ0FMQ0lOSVQ7Cj4tCQlJOTE1X1dSSVRFKE1HX1RYMl9Q
SVNPX1JFQURMT0FEKGxuLCBwb3J0KSwgdmFsKTsKPisJCUk5MTVfV1JJVEUoTUdfVFgyX1BJU09f
UkVBRExPQUQobG4sIHRjX3BvcnQpLCB2YWwpOwo+IAl9Cj4gfQo+Cj5AQCAtMzE1MCw4ICszMTUw
LDcgQEAgc3RhdGljIHZvaWQKPiBpY2xfcGh5X3NldF9jbG9ja19nYXRpbmcoc3RydWN0IGludGVs
X2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQsIGJvb2wgZW5hYmxlKQo+IHsKPiAJc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShkaWdfcG9ydC0+YmFzZS5iYXNlLmRldik7
Cj4tCWVudW0gcG9ydCBwb3J0ID0gZGlnX3BvcnQtPmJhc2UucG9ydDsKPi0JZW51bSB0Y19wb3J0
IHRjX3BvcnQgPSBpbnRlbF9wb3J0X3RvX3RjKGRldl9wcml2LCBwb3J0KTsKPisJZW51bSB0Y19w
b3J0IHRjX3BvcnQgPSBpbnRlbF9wb3J0X3RvX3RjKGRldl9wcml2LCBkaWdfcG9ydC0+YmFzZS5w
b3J0KTsKPiAJdTMyIHZhbCwgYml0czsKPiAJaW50IGxuOwo+Cj5AQCAtMzE2Nyw3ICszMTY2LDcg
QEAgaWNsX3BoeV9zZXRfY2xvY2tfZ2F0aW5nKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRp
Z19wb3J0LCBib29sIGVuYWJsZSkKPiAJCQlJOTE1X1dSSVRFKEhJUF9JTkRFWF9SRUcodGNfcG9y
dCksIEhJUF9JTkRFWF9WQUwodGNfcG9ydCwgbG4pKTsKPiAJCQl2YWwgPSBJOTE1X1JFQUQoREtM
X0RQX01PREUodGNfcG9ydCkpOwo+IAkJfSBlbHNlIHsKPi0JCQl2YWwgPSBJOTE1X1JFQUQoTUdf
RFBfTU9ERShsbiwgcG9ydCkpOwo+KwkJCXZhbCA9IEk5MTVfUkVBRChNR19EUF9NT0RFKGxuLCB0
Y19wb3J0KSk7Cj4gCQl9Cj4KPiAJCWlmIChlbmFibGUpCj5AQCAtMzE3OCw3ICszMTc3LDcgQEAg
aWNsX3BoeV9zZXRfY2xvY2tfZ2F0aW5nKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19w
b3J0LCBib29sIGVuYWJsZSkKPiAJCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQo+IAkJ
CUk5MTVfV1JJVEUoREtMX0RQX01PREUodGNfcG9ydCksIHZhbCk7Cj4gCQllbHNlCj4tCQkJSTkx
NV9XUklURShNR19EUF9NT0RFKGxuLCBwb3J0KSwgdmFsKTsKPisJCQlJOTE1X1dSSVRFKE1HX0RQ
X01PREUobG4sIHRjX3BvcnQpLCB2YWwpOwo+IAl9Cj4KPiAJaWYgKElOVEVMX0dFTihkZXZfcHJp
dikgPT0gMTEpIHsKPkBAIC0zMjAzLDggKzMyMDIsNyBAQCBpY2xfcHJvZ3JhbV9tZ19kcF9tb2Rl
KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0LAo+IAkJICAgICAgIGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+IHsKPiAJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShpbnRlbF9kaWdfcG9ydC0+YmFzZS5i
YXNlLmRldik7Cj4tCWVudW0gcG9ydCBwb3J0ID0gaW50ZWxfZGlnX3BvcnQtPmJhc2UucG9ydDsK
Pi0JZW51bSB0Y19wb3J0IHRjX3BvcnQgPSBpbnRlbF9wb3J0X3RvX3RjKGRldl9wcml2LCBwb3J0
KTsKPisJZW51bSB0Y19wb3J0IHRjX3BvcnQgPSBpbnRlbF9wb3J0X3RvX3RjKGRldl9wcml2LCBp
bnRlbF9kaWdfcG9ydC0+YmFzZS5wb3J0KTsKPiAJdTMyIGxuMCwgbG4xLCBwaW5fYXNzaWdubWVu
dDsKPiAJdTggd2lkdGg7Cj4KPkBAIC0zMjE3LDggKzMyMTUsOCBAQCBpY2xfcHJvZ3JhbV9tZ19k
cF9tb2RlKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0LAo+IAkJSTkx
NV9XUklURShISVBfSU5ERVhfUkVHKHRjX3BvcnQpLCBISVBfSU5ERVhfVkFMKHRjX3BvcnQsIDB4
MSkpOwo+IAkJbG4xID0gSTkxNV9SRUFEKERLTF9EUF9NT0RFKHRjX3BvcnQpKTsKPiAJfSBlbHNl
IHsKPi0JCWxuMCA9IEk5MTVfUkVBRChNR19EUF9NT0RFKDAsIHBvcnQpKTsKPi0JCWxuMSA9IEk5
MTVfUkVBRChNR19EUF9NT0RFKDEsIHBvcnQpKTsKPisJCWxuMCA9IEk5MTVfUkVBRChNR19EUF9N
T0RFKDAsIHRjX3BvcnQpKTsKPisJCWxuMSA9IEk5MTVfUkVBRChNR19EUF9NT0RFKDEsIHRjX3Bv
cnQpKTsKPiAJfQo+Cj4gCWxuMCAmPSB+KE1HX0RQX01PREVfQ0ZHX0RQX1gxX01PREUgfCBNR19E
UF9NT0RFX0NGR19EUF9YMV9NT0RFKTsKPkBAIC0zMjgwLDggKzMyNzgsOCBAQCBpY2xfcHJvZ3Jh
bV9tZ19kcF9tb2RlKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0LAo+
IAkJSTkxNV9XUklURShISVBfSU5ERVhfUkVHKHRjX3BvcnQpLCBISVBfSU5ERVhfVkFMKHRjX3Bv
cnQsIDB4MSkpOwo+IAkJSTkxNV9XUklURShES0xfRFBfTU9ERSh0Y19wb3J0KSwgbG4xKTsKPiAJ
fSBlbHNlIHsKPi0JCUk5MTVfV1JJVEUoTUdfRFBfTU9ERSgwLCBwb3J0KSwgbG4wKTsKPi0JCUk5
MTVfV1JJVEUoTUdfRFBfTU9ERSgxLCBwb3J0KSwgbG4xKTsKPisJCUk5MTVfV1JJVEUoTUdfRFBf
TU9ERSgwLCB0Y19wb3J0KSwgbG4wKTsKPisJCUk5MTVfV1JJVEUoTUdfRFBfTU9ERSgxLCB0Y19w
b3J0KSwgbG4xKTsKPiAJfQo+IH0KPgo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj5pbmRleCAwNThh
YTVjYThiNzMuLmVlZmQ3ODliOWEyOCAxMDA2NDQKPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmgKPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPkBAIC0x
OTU2LDggKzE5NTYsOCBAQCBzdGF0aWMgaW5saW5lIGJvb2wgaTkxNV9tbWlvX3JlZ192YWxpZChp
OTE1X3JlZ190IHJlZykKPiAjZGVmaW5lIElDTF9EUEhZX0NIS04ocG9ydCkJCQlfTU1JTyhfSUNM
X0NPTUJPUEhZKHBvcnQpICsgX0lDTF9EUEhZX0NIS05fUkVHKQo+ICNkZWZpbmUgICBJQ0xfRFBI
WV9DSEtOX0FGRV9PVkVSX1BQSV9TVFJBUAlSRUdfQklUKDcpCj4KPi0jZGVmaW5lIE1HX1BIWV9Q
T1JUX0xOKGxuLCBwb3J0LCBsbjBwMSwgbG4wcDIsIGxuMXAxKSBcCj4tCV9NTUlPKF9QT1JUKChw
b3J0KSAtIFBPUlRfQywgbG4wcDEsIGxuMHAyKSArIChsbikgKiAoKGxuMXAxKSAtIChsbjBwMSkp
KQo+KyNkZWZpbmUgTUdfUEhZX1BPUlRfTE4obG4sIHRjX3BvcnQsIGxuMHAxLCBsbjBwMiwgbG4x
cDEpIFwKPisJX01NSU8oX1BPUlQodGNfcG9ydCwgbG4wcDEsIGxuMHAyKSArIChsbikgKiAoKGxu
MXAxKSAtIChsbjBwMSkpKQo+Cj4gI2RlZmluZSBNR19UWF9MSU5LX1BBUkFNU19UWDFMTjBfUE9S
VDEJCTB4MTY4MTJDCj4gI2RlZmluZSBNR19UWF9MSU5LX1BBUkFNU19UWDFMTjFfUE9SVDEJCTB4
MTY4NTJDCj5AQCAtMTk2NywxMCArMTk2NywxMCBAQCBzdGF0aWMgaW5saW5lIGJvb2wgaTkxNV9t
bWlvX3JlZ192YWxpZChpOTE1X3JlZ190IHJlZykKPiAjZGVmaW5lIE1HX1RYX0xJTktfUEFSQU1T
X1RYMUxOMV9QT1JUMwkJMHgxNkE1MkMKPiAjZGVmaW5lIE1HX1RYX0xJTktfUEFSQU1TX1RYMUxO
MF9QT1JUNAkJMHgxNkIxMkMKPiAjZGVmaW5lIE1HX1RYX0xJTktfUEFSQU1TX1RYMUxOMV9QT1JU
NAkJMHgxNkI1MkMKPi0jZGVmaW5lIE1HX1RYMV9MSU5LX1BBUkFNUyhsbiwgcG9ydCkgXAo+LQlN
R19QSFlfUE9SVF9MTihsbiwgcG9ydCwgTUdfVFhfTElOS19QQVJBTVNfVFgxTE4wX1BPUlQxLCBc
Cj4tCQkJCSBNR19UWF9MSU5LX1BBUkFNU19UWDFMTjBfUE9SVDIsIFwKPi0JCQkJIE1HX1RYX0xJ
TktfUEFSQU1TX1RYMUxOMV9QT1JUMSkKPisjZGVmaW5lIE1HX1RYMV9MSU5LX1BBUkFNUyhsbiwg
dGNfcG9ydCkgXAo+KwlNR19QSFlfUE9SVF9MTihsbiwgdGNfcG9ydCwgTUdfVFhfTElOS19QQVJB
TVNfVFgxTE4wX1BPUlQxLCBcCj4rCQkJCSAgICBNR19UWF9MSU5LX1BBUkFNU19UWDFMTjBfUE9S
VDIsIFwKPisJCQkJICAgIE1HX1RYX0xJTktfUEFSQU1TX1RYMUxOMV9QT1JUMSkKPgo+ICNkZWZp
bmUgTUdfVFhfTElOS19QQVJBTVNfVFgyTE4wX1BPUlQxCQkweDE2ODBBQwo+ICNkZWZpbmUgTUdf
VFhfTElOS19QQVJBTVNfVFgyTE4xX1BPUlQxCQkweDE2ODRBQwo+QEAgLTE5ODAsMTAgKzE5ODAs
MTAgQEAgc3RhdGljIGlubGluZSBib29sIGk5MTVfbW1pb19yZWdfdmFsaWQoaTkxNV9yZWdfdCBy
ZWcpCj4gI2RlZmluZSBNR19UWF9MSU5LX1BBUkFNU19UWDJMTjFfUE9SVDMJCTB4MTZBNEFDCj4g
I2RlZmluZSBNR19UWF9MSU5LX1BBUkFNU19UWDJMTjBfUE9SVDQJCTB4MTZCMEFDCj4gI2RlZmlu
ZSBNR19UWF9MSU5LX1BBUkFNU19UWDJMTjFfUE9SVDQJCTB4MTZCNEFDCj4tI2RlZmluZSBNR19U
WDJfTElOS19QQVJBTVMobG4sIHBvcnQpIFwKPi0JTUdfUEhZX1BPUlRfTE4obG4sIHBvcnQsIE1H
X1RYX0xJTktfUEFSQU1TX1RYMkxOMF9QT1JUMSwgXAo+LQkJCQkgTUdfVFhfTElOS19QQVJBTVNf
VFgyTE4wX1BPUlQyLCBcCj4tCQkJCSBNR19UWF9MSU5LX1BBUkFNU19UWDJMTjFfUE9SVDEpCj4r
I2RlZmluZSBNR19UWDJfTElOS19QQVJBTVMobG4sIHRjX3BvcnQpIFwKPisJTUdfUEhZX1BPUlRf
TE4obG4sIHRjX3BvcnQsIE1HX1RYX0xJTktfUEFSQU1TX1RYMkxOMF9QT1JUMSwgXAo+KwkJCQkg
ICAgTUdfVFhfTElOS19QQVJBTVNfVFgyTE4wX1BPUlQyLCBcCj4rCQkJCSAgICBNR19UWF9MSU5L
X1BBUkFNU19UWDJMTjFfUE9SVDEpCj4gI2RlZmluZSAgIENSSV9VU0VfRlMzMgkJCSgxIDw8IDUp
Cj4KPiAjZGVmaW5lIE1HX1RYX1BJU09fUkVBRExPQURfVFgxTE4wX1BPUlQxCQkweDE2ODE0Qwo+
QEAgLTE5OTQsMTAgKzE5OTQsMTAgQEAgc3RhdGljIGlubGluZSBib29sIGk5MTVfbW1pb19yZWdf
dmFsaWQoaTkxNV9yZWdfdCByZWcpCj4gI2RlZmluZSBNR19UWF9QSVNPX1JFQURMT0FEX1RYMUxO
MV9QT1JUMwkJMHgxNkE1NEMKPiAjZGVmaW5lIE1HX1RYX1BJU09fUkVBRExPQURfVFgxTE4wX1BP
UlQ0CQkweDE2QjE0Qwo+ICNkZWZpbmUgTUdfVFhfUElTT19SRUFETE9BRF9UWDFMTjFfUE9SVDQJ
CTB4MTZCNTRDCj4tI2RlZmluZSBNR19UWDFfUElTT19SRUFETE9BRChsbiwgcG9ydCkgXAo+LQlN
R19QSFlfUE9SVF9MTihsbiwgcG9ydCwgTUdfVFhfUElTT19SRUFETE9BRF9UWDFMTjBfUE9SVDEs
IFwKPi0JCQkJIE1HX1RYX1BJU09fUkVBRExPQURfVFgxTE4wX1BPUlQyLCBcCj4tCQkJCSBNR19U
WF9QSVNPX1JFQURMT0FEX1RYMUxOMV9QT1JUMSkKPisjZGVmaW5lIE1HX1RYMV9QSVNPX1JFQURM
T0FEKGxuLCB0Y19wb3J0KSBcCj4rCU1HX1BIWV9QT1JUX0xOKGxuLCB0Y19wb3J0LCBNR19UWF9Q
SVNPX1JFQURMT0FEX1RYMUxOMF9QT1JUMSwgXAo+KwkJCQkgICAgTUdfVFhfUElTT19SRUFETE9B
RF9UWDFMTjBfUE9SVDIsIFwKPisJCQkJICAgIE1HX1RYX1BJU09fUkVBRExPQURfVFgxTE4xX1BP
UlQxKQo+Cj4gI2RlZmluZSBNR19UWF9QSVNPX1JFQURMT0FEX1RYMkxOMF9QT1JUMQkJMHgxNjgw
Q0MKPiAjZGVmaW5lIE1HX1RYX1BJU09fUkVBRExPQURfVFgyTE4xX1BPUlQxCQkweDE2ODRDQwo+
QEAgLTIwMDcsMTAgKzIwMDcsMTAgQEAgc3RhdGljIGlubGluZSBib29sIGk5MTVfbW1pb19yZWdf
dmFsaWQoaTkxNV9yZWdfdCByZWcpCj4gI2RlZmluZSBNR19UWF9QSVNPX1JFQURMT0FEX1RYMkxO
MV9QT1JUMwkJMHgxNkE0Q0MKPiAjZGVmaW5lIE1HX1RYX1BJU09fUkVBRExPQURfVFgyTE4wX1BP
UlQ0CQkweDE2QjBDQwo+ICNkZWZpbmUgTUdfVFhfUElTT19SRUFETE9BRF9UWDJMTjFfUE9SVDQJ
CTB4MTZCNENDCj4tI2RlZmluZSBNR19UWDJfUElTT19SRUFETE9BRChsbiwgcG9ydCkgXAo+LQlN
R19QSFlfUE9SVF9MTihsbiwgcG9ydCwgTUdfVFhfUElTT19SRUFETE9BRF9UWDJMTjBfUE9SVDEs
IFwKPi0JCQkJIE1HX1RYX1BJU09fUkVBRExPQURfVFgyTE4wX1BPUlQyLCBcCj4tCQkJCSBNR19U
WF9QSVNPX1JFQURMT0FEX1RYMkxOMV9QT1JUMSkKPisjZGVmaW5lIE1HX1RYMl9QSVNPX1JFQURM
T0FEKGxuLCB0Y19wb3J0KSBcCj4rCU1HX1BIWV9QT1JUX0xOKGxuLCB0Y19wb3J0LCBNR19UWF9Q
SVNPX1JFQURMT0FEX1RYMkxOMF9QT1JUMSwgXAo+KwkJCQkgICAgTUdfVFhfUElTT19SRUFETE9B
RF9UWDJMTjBfUE9SVDIsIFwKPisJCQkJICAgIE1HX1RYX1BJU09fUkVBRExPQURfVFgyTE4xX1BP
UlQxKQo+ICNkZWZpbmUgICBDUklfQ0FMQ0lOSVQJCQkJCSgxIDw8IDEpCj4KPiAjZGVmaW5lIE1H
X1RYX1NXSU5HQ1RSTF9UWDFMTjBfUE9SVDEJCTB4MTY4MTQ4Cj5AQCAtMjAyMSwxMCArMjAyMSwx
MCBAQCBzdGF0aWMgaW5saW5lIGJvb2wgaTkxNV9tbWlvX3JlZ192YWxpZChpOTE1X3JlZ190IHJl
ZykKPiAjZGVmaW5lIE1HX1RYX1NXSU5HQ1RSTF9UWDFMTjFfUE9SVDMJCTB4MTZBNTQ4Cj4gI2Rl
ZmluZSBNR19UWF9TV0lOR0NUUkxfVFgxTE4wX1BPUlQ0CQkweDE2QjE0OAo+ICNkZWZpbmUgTUdf
VFhfU1dJTkdDVFJMX1RYMUxOMV9QT1JUNAkJMHgxNkI1NDgKPi0jZGVmaW5lIE1HX1RYMV9TV0lO
R0NUUkwobG4sIHBvcnQpIFwKPi0JTUdfUEhZX1BPUlRfTE4obG4sIHBvcnQsIE1HX1RYX1NXSU5H
Q1RSTF9UWDFMTjBfUE9SVDEsIFwKPi0JCQkJIE1HX1RYX1NXSU5HQ1RSTF9UWDFMTjBfUE9SVDIs
IFwKPi0JCQkJIE1HX1RYX1NXSU5HQ1RSTF9UWDFMTjFfUE9SVDEpCj4rI2RlZmluZSBNR19UWDFf
U1dJTkdDVFJMKGxuLCB0Y19wb3J0KSBcCj4rCU1HX1BIWV9QT1JUX0xOKGxuLCB0Y19wb3J0LCBN
R19UWF9TV0lOR0NUUkxfVFgxTE4wX1BPUlQxLCBcCj4rCQkJCSAgICBNR19UWF9TV0lOR0NUUkxf
VFgxTE4wX1BPUlQyLCBcCj4rCQkJCSAgICBNR19UWF9TV0lOR0NUUkxfVFgxTE4xX1BPUlQxKQo+
Cj4gI2RlZmluZSBNR19UWF9TV0lOR0NUUkxfVFgyTE4wX1BPUlQxCQkweDE2ODBDOAo+ICNkZWZp
bmUgTUdfVFhfU1dJTkdDVFJMX1RYMkxOMV9QT1JUMQkJMHgxNjg0QzgKPkBAIC0yMDM0LDEwICsy
MDM0LDEwIEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBpOTE1X21taW9fcmVnX3ZhbGlkKGk5MTVfcmVn
X3QgcmVnKQo+ICNkZWZpbmUgTUdfVFhfU1dJTkdDVFJMX1RYMkxOMV9QT1JUMwkJMHgxNkE0QzgK
PiAjZGVmaW5lIE1HX1RYX1NXSU5HQ1RSTF9UWDJMTjBfUE9SVDQJCTB4MTZCMEM4Cj4gI2RlZmlu
ZSBNR19UWF9TV0lOR0NUUkxfVFgyTE4xX1BPUlQ0CQkweDE2QjRDOAo+LSNkZWZpbmUgTUdfVFgy
X1NXSU5HQ1RSTChsbiwgcG9ydCkgXAo+LQlNR19QSFlfUE9SVF9MTihsbiwgcG9ydCwgTUdfVFhf
U1dJTkdDVFJMX1RYMkxOMF9QT1JUMSwgXAo+LQkJCQkgTUdfVFhfU1dJTkdDVFJMX1RYMkxOMF9Q
T1JUMiwgXAo+LQkJCQkgTUdfVFhfU1dJTkdDVFJMX1RYMkxOMV9QT1JUMSkKPisjZGVmaW5lIE1H
X1RYMl9TV0lOR0NUUkwobG4sIHRjX3BvcnQpIFwKPisJTUdfUEhZX1BPUlRfTE4obG4sIHRjX3Bv
cnQsIE1HX1RYX1NXSU5HQ1RSTF9UWDJMTjBfUE9SVDEsIFwKPisJCQkJICAgIE1HX1RYX1NXSU5H
Q1RSTF9UWDJMTjBfUE9SVDIsIFwKPisJCQkJICAgIE1HX1RYX1NXSU5HQ1RSTF9UWDJMTjFfUE9S
VDEpCj4gI2RlZmluZSAgIENSSV9UWERFRU1QSF9PVkVSUklERV8xN18xMih4KQkJKCh4KSA8PCAw
KQo+ICNkZWZpbmUgICBDUklfVFhERUVNUEhfT1ZFUlJJREVfMTdfMTJfTUFTSwkJKDB4M0YgPDwg
MCkKPgo+QEAgLTIwNDksMTAgKzIwNDksMTAgQEAgc3RhdGljIGlubGluZSBib29sIGk5MTVfbW1p
b19yZWdfdmFsaWQoaTkxNV9yZWdfdCByZWcpCj4gI2RlZmluZSBNR19UWF9EUlZDVFJMX1RYMUxO
MV9UWFBPUlQzCQkJMHgxNkE1NDQKPiAjZGVmaW5lIE1HX1RYX0RSVkNUUkxfVFgxTE4wX1RYUE9S
VDQJCQkweDE2QjE0NAo+ICNkZWZpbmUgTUdfVFhfRFJWQ1RSTF9UWDFMTjFfVFhQT1JUNAkJCTB4
MTZCNTQ0Cj4tI2RlZmluZSBNR19UWDFfRFJWQ1RSTChsbiwgcG9ydCkgXAo+LQlNR19QSFlfUE9S
VF9MTihsbiwgcG9ydCwgTUdfVFhfRFJWQ1RSTF9UWDFMTjBfVFhQT1JUMSwgXAo+LQkJCQkgTUdf
VFhfRFJWQ1RSTF9UWDFMTjBfVFhQT1JUMiwgXAo+LQkJCQkgTUdfVFhfRFJWQ1RSTF9UWDFMTjFf
VFhQT1JUMSkKPisjZGVmaW5lIE1HX1RYMV9EUlZDVFJMKGxuLCB0Y19wb3J0KSBcCj4rCU1HX1BI
WV9QT1JUX0xOKGxuLCB0Y19wb3J0LCBNR19UWF9EUlZDVFJMX1RYMUxOMF9UWFBPUlQxLCBcCj4r
CQkJCSAgICBNR19UWF9EUlZDVFJMX1RYMUxOMF9UWFBPUlQyLCBcCj4rCQkJCSAgICBNR19UWF9E
UlZDVFJMX1RYMUxOMV9UWFBPUlQxKQo+Cj4gI2RlZmluZSBNR19UWF9EUlZDVFJMX1RYMkxOMF9Q
T1JUMQkJCTB4MTY4MEM0Cj4gI2RlZmluZSBNR19UWF9EUlZDVFJMX1RYMkxOMV9QT1JUMQkJCTB4
MTY4NEM0Cj5AQCAtMjA2MiwxMCArMjA2MiwxMCBAQCBzdGF0aWMgaW5saW5lIGJvb2wgaTkxNV9t
bWlvX3JlZ192YWxpZChpOTE1X3JlZ190IHJlZykKPiAjZGVmaW5lIE1HX1RYX0RSVkNUUkxfVFgy
TE4xX1BPUlQzCQkJMHgxNkE0QzQKPiAjZGVmaW5lIE1HX1RYX0RSVkNUUkxfVFgyTE4wX1BPUlQ0
CQkJMHgxNkIwQzQKPiAjZGVmaW5lIE1HX1RYX0RSVkNUUkxfVFgyTE4xX1BPUlQ0CQkJMHgxNkI0
QzQKPi0jZGVmaW5lIE1HX1RYMl9EUlZDVFJMKGxuLCBwb3J0KSBcCj4tCU1HX1BIWV9QT1JUX0xO
KGxuLCBwb3J0LCBNR19UWF9EUlZDVFJMX1RYMkxOMF9QT1JUMSwgXAo+LQkJCQkgTUdfVFhfRFJW
Q1RSTF9UWDJMTjBfUE9SVDIsIFwKPi0JCQkJIE1HX1RYX0RSVkNUUkxfVFgyTE4xX1BPUlQxKQo+
KyNkZWZpbmUgTUdfVFgyX0RSVkNUUkwobG4sIHRjX3BvcnQpIFwKPisJTUdfUEhZX1BPUlRfTE4o
bG4sIHRjX3BvcnQsIE1HX1RYX0RSVkNUUkxfVFgyTE4wX1BPUlQxLCBcCj4rCQkJCSAgICBNR19U
WF9EUlZDVFJMX1RYMkxOMF9QT1JUMiwgXAo+KwkJCQkgICAgTUdfVFhfRFJWQ1RSTF9UWDJMTjFf
UE9SVDEpCj4gI2RlZmluZSAgIENSSV9UWERFRU1QSF9PVkVSUklERV8xMV82KHgpCQkJKCh4KSA8
PCAyNCkKPiAjZGVmaW5lICAgQ1JJX1RYREVFTVBIX09WRVJSSURFXzExXzZfTUFTSwkJKDB4M0Yg
PDwgMjQpCj4gI2RlZmluZSAgIENSSV9UWERFRU1QSF9PVkVSUklERV9FTgkJCSgxIDw8IDIyKQo+
QEAgLTIwODIsMTAgKzIwODIsMTAgQEAgc3RhdGljIGlubGluZSBib29sIGk5MTVfbW1pb19yZWdf
dmFsaWQoaTkxNV9yZWdfdCByZWcpCj4gI2RlZmluZSBNR19DTEtIVUJfTE4xX1BPUlQzCQkJMHgx
NkE3OUMKPiAjZGVmaW5lIE1HX0NMS0hVQl9MTjBfUE9SVDQJCQkweDE2QjM5Qwo+ICNkZWZpbmUg
TUdfQ0xLSFVCX0xOMV9QT1JUNAkJCTB4MTZCNzlDCj4tI2RlZmluZSBNR19DTEtIVUIobG4sIHBv
cnQpIFwKPi0JTUdfUEhZX1BPUlRfTE4obG4sIHBvcnQsIE1HX0NMS0hVQl9MTjBfUE9SVDEsIFwK
Pi0JCQkJIE1HX0NMS0hVQl9MTjBfUE9SVDIsIFwKPi0JCQkJIE1HX0NMS0hVQl9MTjFfUE9SVDEp
Cj4rI2RlZmluZSBNR19DTEtIVUIobG4sIHRjX3BvcnQpIFwKPisJTUdfUEhZX1BPUlRfTE4obG4s
IHRjX3BvcnQsIE1HX0NMS0hVQl9MTjBfUE9SVDEsIFwKPisJCQkJICAgIE1HX0NMS0hVQl9MTjBf
UE9SVDIsIFwKPisJCQkJICAgIE1HX0NMS0hVQl9MTjFfUE9SVDEpCj4gI2RlZmluZSAgIENGR19M
T1dfUkFURV9MS1JFTl9FTgkJCQkoMSA8PCAxMSkKPgo+ICNkZWZpbmUgTUdfVFhfRENDX1RYMUxO
MF9QT1JUMQkJCTB4MTY4MTEwCj5AQCAtMjA5NiwxMCArMjA5NiwxMCBAQCBzdGF0aWMgaW5saW5l
IGJvb2wgaTkxNV9tbWlvX3JlZ192YWxpZChpOTE1X3JlZ190IHJlZykKPiAjZGVmaW5lIE1HX1RY
X0RDQ19UWDFMTjFfUE9SVDMJCQkweDE2QTUxMAo+ICNkZWZpbmUgTUdfVFhfRENDX1RYMUxOMF9Q
T1JUNAkJCTB4MTZCMTEwCj4gI2RlZmluZSBNR19UWF9EQ0NfVFgxTE4xX1BPUlQ0CQkJMHgxNkI1
MTAKPi0jZGVmaW5lIE1HX1RYMV9EQ0MobG4sIHBvcnQpIFwKPi0JTUdfUEhZX1BPUlRfTE4obG4s
IHBvcnQsIE1HX1RYX0RDQ19UWDFMTjBfUE9SVDEsIFwKPi0JCQkJIE1HX1RYX0RDQ19UWDFMTjBf
UE9SVDIsIFwKPi0JCQkJIE1HX1RYX0RDQ19UWDFMTjFfUE9SVDEpCj4rI2RlZmluZSBNR19UWDFf
RENDKGxuLCB0Y19wb3J0KSBcCj4rCU1HX1BIWV9QT1JUX0xOKGxuLCB0Y19wb3J0LCBNR19UWF9E
Q0NfVFgxTE4wX1BPUlQxLCBcCj4rCQkJCSAgICBNR19UWF9EQ0NfVFgxTE4wX1BPUlQyLCBcCj4r
CQkJCSAgICBNR19UWF9EQ0NfVFgxTE4xX1BPUlQxKQo+ICNkZWZpbmUgTUdfVFhfRENDX1RYMkxO
MF9QT1JUMQkJCTB4MTY4MDkwCj4gI2RlZmluZSBNR19UWF9EQ0NfVFgyTE4xX1BPUlQxCQkJMHgx
Njg0OTAKPiAjZGVmaW5lIE1HX1RYX0RDQ19UWDJMTjBfUE9SVDIJCQkweDE2OTA5MAo+QEAgLTIx
MDgsMTAgKzIxMDgsMTAgQEAgc3RhdGljIGlubGluZSBib29sIGk5MTVfbW1pb19yZWdfdmFsaWQo
aTkxNV9yZWdfdCByZWcpCj4gI2RlZmluZSBNR19UWF9EQ0NfVFgyTE4xX1BPUlQzCQkJMHgxNkE0
OTAKPiAjZGVmaW5lIE1HX1RYX0RDQ19UWDJMTjBfUE9SVDQJCQkweDE2QjA5MAo+ICNkZWZpbmUg
TUdfVFhfRENDX1RYMkxOMV9QT1JUNAkJCTB4MTZCNDkwCj4tI2RlZmluZSBNR19UWDJfRENDKGxu
LCBwb3J0KSBcCj4tCU1HX1BIWV9QT1JUX0xOKGxuLCBwb3J0LCBNR19UWF9EQ0NfVFgyTE4wX1BP
UlQxLCBcCj4tCQkJCSBNR19UWF9EQ0NfVFgyTE4wX1BPUlQyLCBcCj4tCQkJCSBNR19UWF9EQ0Nf
VFgyTE4xX1BPUlQxKQo+KyNkZWZpbmUgTUdfVFgyX0RDQyhsbiwgdGNfcG9ydCkgXAo+KwlNR19Q
SFlfUE9SVF9MTihsbiwgdGNfcG9ydCwgTUdfVFhfRENDX1RYMkxOMF9QT1JUMSwgXAo+KwkJCQkg
ICAgTUdfVFhfRENDX1RYMkxOMF9QT1JUMiwgXAo+KwkJCQkgICAgTUdfVFhfRENDX1RYMkxOMV9Q
T1JUMSkKPiAjZGVmaW5lICAgQ0ZHX0FNSV9DS19ESVZfT1ZFUlJJREVfVkFMKHgpCSgoeCkgPDwg
MjUpCj4gI2RlZmluZSAgIENGR19BTUlfQ0tfRElWX09WRVJSSURFX1ZBTF9NQVNLCSgweDMgPDwg
MjUpCj4gI2RlZmluZSAgIENGR19BTUlfQ0tfRElWX09WRVJSSURFX0VOCQkoMSA8PCAyNCkKPkBA
IC0yMTI0LDEwICsyMTI0LDEwIEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBpOTE1X21taW9fcmVnX3Zh
bGlkKGk5MTVfcmVnX3QgcmVnKQo+ICNkZWZpbmUgTUdfRFBfTU9ERV9MTjFfQUNVX1BPUlQzCQkJ
MHgxNkE3QTAKPiAjZGVmaW5lIE1HX0RQX01PREVfTE4wX0FDVV9QT1JUNAkJCTB4MTZCM0EwCj4g
I2RlZmluZSBNR19EUF9NT0RFX0xOMV9BQ1VfUE9SVDQJCQkweDE2QjdBMAo+LSNkZWZpbmUgTUdf
RFBfTU9ERShsbiwgcG9ydCkJXAo+LQlNR19QSFlfUE9SVF9MTihsbiwgcG9ydCwgTUdfRFBfTU9E
RV9MTjBfQUNVX1BPUlQxLCBcCj4tCQkJCSBNR19EUF9NT0RFX0xOMF9BQ1VfUE9SVDIsIFwKPi0J
CQkJIE1HX0RQX01PREVfTE4xX0FDVV9QT1JUMSkKPisjZGVmaW5lIE1HX0RQX01PREUobG4sIHRj
X3BvcnQpCVwKPisJTUdfUEhZX1BPUlRfTE4obG4sIHRjX3BvcnQsIE1HX0RQX01PREVfTE4wX0FD
VV9QT1JUMSwgXAo+KwkJCQkgICAgTUdfRFBfTU9ERV9MTjBfQUNVX1BPUlQyLCBcCj4rCQkJCSAg
ICBNR19EUF9NT0RFX0xOMV9BQ1VfUE9SVDEpCj4gI2RlZmluZSAgIE1HX0RQX01PREVfQ0ZHX0RQ
X1gyX01PREUJCQkoMSA8PCA3KQo+ICNkZWZpbmUgICBNR19EUF9NT0RFX0NGR19EUF9YMV9NT0RF
CQkJKDEgPDwgNikKPiAjZGVmaW5lICAgTUdfRFBfTU9ERV9DRkdfVFIyUFdSX0dBVElORwkJCSgx
IDw8IDUpCj4tLSAKPjIuMjMuMAo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
