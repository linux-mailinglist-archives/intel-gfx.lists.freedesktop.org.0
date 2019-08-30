Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A17CA32D6
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 10:42:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B91FD6E2F3;
	Fri, 30 Aug 2019 08:42:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBE116E2F3
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 08:42:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 01:42:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,446,1559545200"; d="scan'208";a="381059367"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by fmsmga005.fm.intel.com with ESMTP; 30 Aug 2019 01:42:36 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Aug 2019 14:01:52 +0530
Message-Id: <1567153913-20166-11-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1567153913-20166-1-git-send-email-swati2.sharma@intel.com>
References: <1567153913-20166-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] [v9][PATCH 10/11] drm/i915/display: Extract
 icl_read_luts()
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
Cc: jani.nikula@intel.com, daniel.vetter@ffwll.ch, ankit.k.nautiyal@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rm9yIGljbCssIGFkZCBodyByZWFkIG91dCB0byBjcmVhdGUgaHcgYmxvYiBvZiBnYW1tYQpsdXQg
dmFsdWVzLiBpY2wrIHBsYXRmb3JtcyBzdXBwb3J0cyBtdWx0aSBzZWdtZW50ZWQgZ2FtbWEKbW9k
ZSwgYWRkIGh3IGx1dCBjcmVhdGlvbiBmb3IgdGhpcyBtb2RlLgoKVGhpcyB3aWxsIGJlIHVzZWQg
dG8gdmFsaWRhdGUgZ2FtbWEgcHJvZ3JhbW1pbmcgdXNpbmcgZHNiCihkaXNwbGF5IHN0YXRlIGJ1
ZmZlcikgd2hpY2ggaXMgYSB0Z2wgZmVhdHVyZS4KCnY0OiAtTm8gbmVlZCB0byBpbml0aWFsaXpl
ICpibG9iIFtKYW5pXQogICAgLVJlbW92ZWQgcmlnaHQgc2hpZnRzIFtKYW5pXQogICAgLURyb3Bw
ZWQgZGV2IGxvY2FsIHZhciBbSmFuaV0KdjU6IC1SZXR1cm5lZCBibG9iIGluc3RlYWQgb2YgYXNz
aWduaW5nIGl0IGludGVybmFsbHkgd2l0aGluIHRoZQogICAgIGZ1bmN0aW9uIFtWaWxsZV0KICAg
IC1SZW5hbWVkIGljbF9nZXRfY29sb3JfY29uZmlnKCkgdG8gaWNsX3JlYWRfbHV0cygpIFtWaWxs
ZV0KICAgIC1SZW5hbWVkIGJkd19nZXRfZ2FtbWFfY29uZmlnKCkgdG8gYmR3X3JlYWRfbHV0XzEw
KCkgW1ZpbGxlXQp2OTogLUFkZGVkIGh3IGx1dCBjcmVhdGlvbiBmb3IgbXVsdGktc2VnIGdhbW1h
IG1vZGUKClNpZ25lZC1vZmYtYnk6IFN3YXRpIFNoYXJtYSA8c3dhdGkyLnNoYXJtYUBpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jIHwgODgg
KysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oICAgICAgICAgICAgfCAgNiArKwogMiBmaWxlcyBjaGFuZ2VkLCA4NiBpbnNlcnRpb25z
KCspLCA4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY29sb3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y29sb3IuYwppbmRleCA2MjFmNTQwLi44ZDZmM2M0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jb2xvci5jCkBAIC04MzcsNyArODM3LDYgQEAgc3RhdGljIHUzMiBpbGtf
bHV0XzEycDRfbGR3KGNvbnN0IHN0cnVjdCBkcm1fY29sb3JfbHV0ICpjb2xvcikKIAl1MzIgaTsK
IAogCS8qCi0JICoKIAkgKiBQcm9ncmFtIEZpbmUgc2VnbWVudCAobGV0J3MgY2FsbCBpdCBzZWcy
KS4uLgogCSAqCiAJICogRmluZSBzZWdtZW50J3Mgc3RlcCBpcyAxLygxMjggKiAyNTYpIGllIDEv
KDEyOCAqIDI1NiksICAyLygxMjgqMjU2KQpAQCAtODkwLDEyICs4ODksMTAgQEAgc3RhdGljIHZv
aWQgaWNsX2xvYWRfbHV0cyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSkKIAljYXNlIEdBTU1BX01PREVfTU9ERV84QklUOgogCQlpOXh4X2xvYWRfbHV0cyhjcnRjX3N0
YXRlKTsKIAkJYnJlYWs7Ci0KIAljYXNlIEdBTU1BX01PREVfTU9ERV8xMkJJVF9NVUxUSV9TRUdN
RU5URUQ6CiAJCWljbF9wcm9ncmFtX2dhbW1hX3N1cGVyZmluZV9zZWdtZW50KGNydGNfc3RhdGUp
OwogCQlpY2xfcHJvZ3JhbV9nYW1tYV9tdWx0aV9zZWdtZW50KGNydGNfc3RhdGUpOwogCQlicmVh
azsKLQogCWRlZmF1bHQ6CiAJCWJkd19sb2FkX2x1dF8xMChjcnRjLCBnYW1tYV9sdXQsIFBBTF9Q
UkVDX0lOREVYX1ZBTFVFKDApKTsKIAkJaXZiX2xvYWRfbHV0X2V4dF9tYXgoY3J0Yyk7CkBAIC0x
Nzk4LDYgKzE3OTUsODAgQEAgc3RhdGljIHZvaWQgZ2xrX3JlYWRfbHV0cyhzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAkJY3J0Y19zdGF0ZS0+YmFzZS5nYW1tYV9sdXQgPSBn
bGtfcmVhZF9sdXRfMTAoY3J0Y19zdGF0ZSwgUEFMX1BSRUNfSU5ERVhfVkFMVUUoMCkpOwogfQog
CitzdGF0aWMgc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICoKK2ljbF9yZWFkX2x1dF9zdXBlcl9t
dWx0aV9zZWcoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCit7CisJ
c3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPmJhc2Uu
Y3J0Yyk7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRj
LT5iYXNlLmRldik7CisJaW50IGh3X2x1dF9zaXplID0gNTIxOworCWVudW0gcGlwZSBwaXBlID0g
Y3J0Yy0+cGlwZTsKKwlzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKmJsb2I7CisJc3RydWN0IGRy
bV9jb2xvcl9sdXQgKmJsb2JfZGF0YTsKKwl1MzIgaSwgdmFsMSwgdmFsMjsKKworCUk5MTVfV1JJ
VEUoUFJFQ19QQUxfTVVMVElfU0VHX0lOREVYKHBpcGUpLCBQQUxfUFJFQ19BVVRPX0lOQ1JFTUVO
VCk7CisKKwlibG9iID0gZHJtX3Byb3BlcnR5X2NyZWF0ZV9ibG9iKCZkZXZfcHJpdi0+ZHJtLAor
CQkJCQlzaXplb2Yoc3RydWN0IGRybV9jb2xvcl9sdXQpICogaHdfbHV0X3NpemUsCisJCQkJCU5V
TEwpOworCWlmIChJU19FUlIoYmxvYikpCisJCXJldHVybiBOVUxMOworCisJYmxvYl9kYXRhID0g
YmxvYi0+ZGF0YTsKKworCWZvciAoaSA9IDA7IGkgPCA5OyBpKyspIHsKKwkJdmFsMSA9IEk5MTVf
UkVBRChQUkVDX1BBTF9NVUxUSV9TRUdfREFUQShwaXBlKSk7CisJCXZhbDIgPSBJOTE1X1JFQUQo
UFJFQ19QQUxfTVVMVElfU0VHX0RBVEEocGlwZSkpOworCisJCWJsb2JfZGF0YVtpXS5yZWQgPSBS
RUdfRklFTERfR0VUKFBBTF9QUkVDX01VTFRJX1NFR19SRURfTERXX01BU0ssIHZhbDEpIDw8IDEw
IHwKKwkJCQkgICBSRUdfRklFTERfR0VUKFBBTF9QUkVDX01VTFRJX1NFR19SRURfVURXX01BU0ss
IHZhbDIpOworCQlibG9iX2RhdGFbaV0uZ3JlZW4gPSBSRUdfRklFTERfR0VUKFBBTF9QUkVDX01V
TFRJX1NFR19HUkVFTl9MRFdfTUFTSywgdmFsMSkgPDwgMTAgfAorCQkJCSAgICAgUkVHX0ZJRUxE
X0dFVChQQUxfUFJFQ19NVUxUSV9TRUdfR1JFRU5fVURXX01BU0ssIHZhbDIpOworCQlibG9iX2Rh
dGFbaV0uYmx1ZSA9IFJFR19GSUVMRF9HRVQoUEFMX1BSRUNfTVVMVElfU0VHX0JMVUVfTERXX01B
U0ssIHZhbDEpIDw8IDEwIHwKKwkJCQkgICAgUkVHX0ZJRUxEX0dFVChQQUxfUFJFQ19NVUxUSV9T
RUdfQkxVRV9VRFdfTUFTSywgdmFsMik7CisJfQorCisJSTkxNV9XUklURShQUkVDX1BBTF9JTkRF
WChwaXBlKSwgUEFMX1BSRUNfQVVUT19JTkNSRU1FTlQpOworCisJZm9yIChpID0gMTsgaSA8IDI1
NzsgaSsrKSB7CisJCXZhbDEgPSBJOTE1X1JFQUQoUFJFQ19QQUxfREFUQShwaXBlKSk7CisJCXZh
bDIgPSBJOTE1X1JFQUQoUFJFQ19QQUxfREFUQShwaXBlKSk7CisKKwkJYmxvYl9kYXRhW2kgKyA4
XS5yZWQgPSBSRUdfRklFTERfR0VUKFBBTF9QUkVDX01VTFRJX1NFR19SRURfTERXX01BU0ssIHZh
bDEpIDw8IDEwIHwKKwkJCQkgICAgICAgUkVHX0ZJRUxEX0dFVChQQUxfUFJFQ19NVUxUSV9TRUdf
UkVEX1VEV19NQVNLLCB2YWwyKTsKKwkJYmxvYl9kYXRhW2kgKyA4XS5ncmVlbiA9IFJFR19GSUVM
RF9HRVQoUEFMX1BSRUNfTVVMVElfU0VHX0dSRUVOX0xEV19NQVNLLCB2YWwxKSA8PCAxMCB8CisJ
CQkJCSBSRUdfRklFTERfR0VUKFBBTF9QUkVDX01VTFRJX1NFR19HUkVFTl9VRFdfTUFTSywgdmFs
Mik7CisJCWJsb2JfZGF0YVtpICsgOF0uYmx1ZSA9IFJFR19GSUVMRF9HRVQoUEFMX1BSRUNfTVVM
VElfU0VHX0JMVUVfTERXX01BU0ssIHZhbDEpIDw8IDEwIHwKKwkJCQkJUkVHX0ZJRUxEX0dFVChQ
QUxfUFJFQ19NVUxUSV9TRUdfQkxVRV9VRFdfTUFTSywgdmFsMik7CisJfQorCisJZm9yIChpID0g
MDsgaSA8IDI1NjsgaSsrKSB7CisJCXZhbDEgPSBJOTE1X1JFQUQoUFJFQ19QQUxfREFUQShwaXBl
KSk7CisJCXZhbDIgPSBJOTE1X1JFQUQoUFJFQ19QQUxfREFUQShwaXBlKSk7CisKKwkJYmxvYl9k
YXRhW2kgKyAyNjVdLnJlZCA9IFJFR19GSUVMRF9HRVQoUEFMX1BSRUNfTVVMVElfU0VHX1JFRF9M
RFdfTUFTSywgdmFsMSkgPDwgMTAgfAorCQkJCQkgUkVHX0ZJRUxEX0dFVChQQUxfUFJFQ19NVUxU
SV9TRUdfUkVEX1VEV19NQVNLLCB2YWwyKTsKKwkJYmxvYl9kYXRhW2kgKyAyNjVdLmdyZWVuID0g
UkVHX0ZJRUxEX0dFVChQQUxfUFJFQ19NVUxUSV9TRUdfR1JFRU5fTERXX01BU0ssIHZhbDEpIDw8
IDEwIHwKKwkJCQkJICAgUkVHX0ZJRUxEX0dFVChQQUxfUFJFQ19NVUxUSV9TRUdfR1JFRU5fVURX
X01BU0ssIHZhbDIpOworCQlibG9iX2RhdGFbaSArIDI2NV0uYmx1ZSA9IFJFR19GSUVMRF9HRVQo
UEFMX1BSRUNfTVVMVElfU0VHX0JMVUVfTERXX01BU0ssIHZhbDEpIDw8IDEwIHwKKwkJCQkJICBS
RUdfRklFTERfR0VUKFBBTF9QUkVDX01VTFRJX1NFR19CTFVFX1VEV19NQVNLLCB2YWwyKTsKKwl9
CisKKwlyZXR1cm4gYmxvYjsKK30KKworc3RhdGljIHZvaWQgaWNsX3JlYWRfbHV0cyhzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKK3sKKwlpZiAoKGNydGNfc3RhdGUtPmdhbW1h
X21vZGUgJiBHQU1NQV9NT0RFX01PREVfTUFTSykgPT0KKwkgICAgR0FNTUFfTU9ERV9NT0RFXzhC
SVQpCisJCWNydGNfc3RhdGUtPmJhc2UuZ2FtbWFfbHV0ID0gaTl4eF9yZWFkX2x1dF84KGNydGNf
c3RhdGUpOworCWVsc2UgaWYgKChjcnRjX3N0YXRlLT5nYW1tYV9tb2RlICYgR0FNTUFfTU9ERV9N
T0RFX01BU0spID09CisJCSBHQU1NQV9NT0RFX01PREVfMTJCSVRfTVVMVElfU0VHTUVOVEVEKQor
CQljcnRjX3N0YXRlLT5iYXNlLmdhbW1hX2x1dCA9IGljbF9yZWFkX2x1dF9zdXBlcl9tdWx0aV9z
ZWcoY3J0Y19zdGF0ZSk7CisJZWxzZQorCQljcnRjX3N0YXRlLT5iYXNlLmdhbW1hX2x1dCA9IGds
a19yZWFkX2x1dF8xMChjcnRjX3N0YXRlLCBQQUxfUFJFQ19JTkRFWF9WQUxVRSgwKSk7Cit9CisK
IHZvaWQgaW50ZWxfY29sb3JfaW5pdChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKIHsKIAlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsK
QEAgLTE4MzksMTYgKzE5MTAsMTcgQEAgdm9pZCBpbnRlbF9jb2xvcl9pbml0KHN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjKQogCQllbHNlCiAJCQlkZXZfcHJpdi0+ZGlzcGxheS5jb2xvcl9jb21taXQg
PSBpbGtfY29sb3JfY29tbWl0OwogCi0JCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQor
CQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkgewogCQkJZGV2X3ByaXYtPmRpc3BsYXku
bG9hZF9sdXRzID0gaWNsX2xvYWRfbHV0czsKLQkJZWxzZSBpZiAoSVNfQ0FOTk9OTEFLRShkZXZf
cHJpdikgfHwgSVNfR0VNSU5JTEFLRShkZXZfcHJpdikpIHsKKwkJCWRldl9wcml2LT5kaXNwbGF5
LnJlYWRfbHV0cyA9IGljbF9yZWFkX2x1dHM7CisJCX0gZWxzZSBpZiAoSVNfQ0FOTk9OTEFLRShk
ZXZfcHJpdikgfHwgSVNfR0VNSU5JTEFLRShkZXZfcHJpdikpIHsKIAkJCWRldl9wcml2LT5kaXNw
bGF5LmxvYWRfbHV0cyA9IGdsa19sb2FkX2x1dHM7CiAJCQlkZXZfcHJpdi0+ZGlzcGxheS5yZWFk
X2x1dHMgPSBnbGtfcmVhZF9sdXRzOwotCQl9IGVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikg
Pj0gOCkKKwkJfSBlbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDgpIHsKIAkJCWRldl9w
cml2LT5kaXNwbGF5LmxvYWRfbHV0cyA9IGJkd19sb2FkX2x1dHM7Ci0JCWVsc2UgaWYgKElOVEVM
X0dFTihkZXZfcHJpdikgPj0gNykKKwkJfSBlbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49
IDcpIHsKIAkJCWRldl9wcml2LT5kaXNwbGF5LmxvYWRfbHV0cyA9IGl2Yl9sb2FkX2x1dHM7Ci0J
CWVsc2UgeworCQl9IGVsc2UgewogCQkJZGV2X3ByaXYtPmRpc3BsYXkubG9hZF9sdXRzID0gaWxr
X2xvYWRfbHV0czsKIAkJCWRldl9wcml2LT5kaXNwbGF5LnJlYWRfbHV0cyA9IGlsa19yZWFkX2x1
dHM7CiAJCX0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDZiOGJiZmQuLjU1M2I3MWQgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtMTAyOTcsNiArMTAyOTcsMTIgQEAgZW51bSBza2xf
cG93ZXJfZ2F0ZSB7CiAKICNkZWZpbmUgX1BBTF9QUkVDX01VTFRJX1NFR19EQVRBX0EJMHg0QTQw
QwogI2RlZmluZSBfUEFMX1BSRUNfTVVMVElfU0VHX0RBVEFfQgkweDRBQzBDCisjZGVmaW5lICBQ
QUxfUFJFQ19NVUxUSV9TRUdfUkVEX0xEV19NQVNLICAgUkVHX0dFTk1BU0soMjksIDI0KQorI2Rl
ZmluZSAgUEFMX1BSRUNfTVVMVElfU0VHX1JFRF9VRFdfTUFTSyAgIFJFR19HRU5NQVNLKDI5LCAy
MCkKKyNkZWZpbmUgIFBBTF9QUkVDX01VTFRJX1NFR19HUkVFTl9MRFdfTUFTSyBSRUdfR0VOTUFT
SygxOSwgMTQpCisjZGVmaW5lICBQQUxfUFJFQ19NVUxUSV9TRUdfR1JFRU5fVURXX01BU0sgUkVH
X0dFTk1BU0soMTksIDEwKQorI2RlZmluZSAgUEFMX1BSRUNfTVVMVElfU0VHX0JMVUVfTERXX01B
U0sgIFJFR19HRU5NQVNLKDksIDQpCisjZGVmaW5lICBQQUxfUFJFQ19NVUxUSV9TRUdfQkxVRV9V
RFdfTUFTSyAgUkVHX0dFTk1BU0soOSwgMCkKIAogI2RlZmluZSBQUkVDX1BBTF9NVUxUSV9TRUdf
SU5ERVgocGlwZSkJX01NSU9fUElQRShwaXBlLCBcCiAJCQkJCV9QQUxfUFJFQ19NVUxUSV9TRUdf
SU5ERVhfQSwgXAotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
