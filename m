Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE30DA2BAB
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 02:49:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46D3C89B0C;
	Fri, 30 Aug 2019 00:49:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDC3289B0C
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 00:48:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Aug 2019 17:48:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,445,1559545200"; d="scan'208";a="172078257"
Received: from mdroper-desk.fm.intel.com ([10.105.128.12])
 by orsmga007.jf.intel.com with ESMTP; 29 Aug 2019 17:48:57 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Aug 2019 17:48:28 -0700
Message-Id: <20190830004828.19359-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190827135250.GA7482@intel.com>
References: <20190827135250.GA7482@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915: Allow /2 CD2X divider on gen11+
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGJzcGVjIGhhcyBqdXN0IHJlY2VudGx5IGJlZW4gdXBkYXRlZCB3aXRoIG5ldyBjZGNsayB2
YWx1ZXMgdGhhdApyZXF1aXJlIHRoZSB1c2Ugb2YgYSAvMiBDRDJYIGRpdmlkZXIgcmF0aGVyIHRo
YW4gYSAvMSBkaXZpZGVyLiAgT25jZSB3ZQphZGQgdGhlIGRpdmlkZXIgc2VsZWN0aW9uIGxvZ2lj
IHRvIElDTCsgY2RjbGsgcHJvZ3JhbW1pbmcsIHdlIGhhdmUKcHJldHR5IG11Y2ggdGhlIHNhbWUg
bG9naWMgd2Ugd2VyZSBhbHJlYWR5IHVzaW5nIG9uIENOTCwgc28gaXQncyBzaW1wbGVyCnRvIGRy
b3AgaWNsX3NldF9jZGNsaygpIGNvbXBsZXRlbHkgYW5kIHJldXNlIGNubF9zZXRfY2RjbGsoKSBv
biBnZW4xMSsKcGxhdGZvcm1zIGFzIHdlbGwuCgp2MjoKIC0gVXNpbmcgSUNMX0NEQ0xLX0NEMlhf
UElQRV9OT05FICsgQlhUX0NEQ0xLX0NEMlhfUElQRShwaXBlKSBmb3IgVEdMIGlzCiAgIGNvcnJl
Y3QsIGJ1dCBsb29rcyByZWFsbHkgY29uZnVzaW5nLiAgQWRkIHNvbWUgVEdMXyBtYWNyb3MgdGhh
dCBhbGlhcwogICB0aGVzZSB0byBhdm9pZCBjb25mdXNpb24uICAoVmlsbGUpCiAtIFVzZSBESVZf
Uk9VTkRfQ0xPU0VTVCByYXRoZXIgdGhhbiAvIHdoZW4gYXBwbHlpbmcgdGhlIGRpdmlkZXIuIChW
aWxsZSkKCkNjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4K
Q2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpDYzogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTog
TWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQpVbmlmeWluZyB0
aGUgZ2V0X2NkY2xrIGZ1bmN0aW9ucyB0b28gbWlnaHQgYmUgd29ydGggbG9va2luZyBpbnRvIGlu
IHRoZQpmdXR1cmUsIGJ1dCBpdCB3YXNuJ3QgYXMgc3RyYWlnaHRmb3J3YXJkIGFzIHRoZSBzZXRf
Y2RjbGsgZnVuY3Rpb25zIHNvCkknbSBub3QgZ29pbmcgdG8gdGFja2xlIHRoYXQgd2l0aCB0aGlz
IHNlcmllcy4KCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgfCA5
MCArKysrKysrKystLS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
ICAgICAgICAgICAgfCAgMyArCiAyIGZpbGVzIGNoYW5nZWQsIDM4IGluc2VydGlvbnMoKyksIDU1
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY2RjbGsuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsu
YwppbmRleCA5MzkwODhjN2Q4MTQuLjU4YmE0MmRjZjIzZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwpAQCAtMTY1OSwxMCArMTY1OSwyMyBAQCBzdGF0aWMg
dm9pZCBjbmxfc2V0X2NkY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJ
Y25sX2NkY2xrX3BsbF9lbmFibGUoZGV2X3ByaXYsIHZjbyk7CiAKIAl2YWwgPSBkaXZpZGVyIHwg
c2tsX2NkY2xrX2RlY2ltYWwoY2RjbGspOwotCWlmIChwaXBlID09IElOVkFMSURfUElQRSkKLQkJ
dmFsIHw9IEJYVF9DRENMS19DRDJYX1BJUEVfTk9ORTsKLQllbHNlCi0JCXZhbCB8PSBCWFRfQ0RD
TEtfQ0QyWF9QSVBFKHBpcGUpOworCisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpIHsK
KwkJaWYgKHBpcGUgPT0gSU5WQUxJRF9QSVBFKQorCQkJdmFsIHw9IFRHTF9DRENMS19DRDJYX1BJ
UEVfTk9ORTsKKwkJZWxzZQorCQkJdmFsIHw9IFRHTF9DRENMS19DRDJYX1BJUEUocGlwZSk7CisJ
fSBlbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKSB7CisJCWlmIChwaXBlID09IElO
VkFMSURfUElQRSkKKwkJCXZhbCB8PSBJQ0xfQ0RDTEtfQ0QyWF9QSVBFX05PTkU7CisJCWVsc2UK
KwkJCXZhbCB8PSBJQ0xfQ0RDTEtfQ0QyWF9QSVBFKHBpcGUpOworCX0gZWxzZSB7CisJCWlmIChw
aXBlID09IElOVkFMSURfUElQRSkKKwkJCXZhbCB8PSBCWFRfQ0RDTEtfQ0QyWF9QSVBFX05PTkU7
CisJCWVsc2UKKwkJCXZhbCB8PSBCWFRfQ0RDTEtfQ0QyWF9QSVBFKHBpcGUpOworCX0KIAlJOTE1
X1dSSVRFKENEQ0xLX0NUTCwgdmFsKTsKIAogCWlmIChwaXBlICE9IElOVkFMSURfUElQRSkKQEAg
LTE4MTMsNTEgKzE4MjYsNiBAQCBzdGF0aWMgaW50IGljbF9jYWxjX2NkY2xrX3BsbF92Y28oc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBpbnQgY2RjbGspCiAJcmV0dXJuIGRldl9w
cml2LT5jZGNsay5ody5yZWYgKiByYXRpbzsKIH0KIAotc3RhdGljIHZvaWQgaWNsX3NldF9jZGNs
ayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCi0JCQkgIGNvbnN0IHN0cnVjdCBp
bnRlbF9jZGNsa19zdGF0ZSAqY2RjbGtfc3RhdGUsCi0JCQkgIGVudW0gcGlwZSBwaXBlKQotewot
CXVuc2lnbmVkIGludCBjZGNsayA9IGNkY2xrX3N0YXRlLT5jZGNsazsKLQl1bnNpZ25lZCBpbnQg
dmNvID0gY2RjbGtfc3RhdGUtPnZjbzsKLQlpbnQgcmV0OwotCi0JcmV0ID0gc2tsX3Bjb2RlX3Jl
cXVlc3QoZGV2X3ByaXYsIFNLTF9QQ09ERV9DRENMS19DT05UUk9MLAotCQkJCVNLTF9DRENMS19Q
UkVQQVJFX0ZPUl9DSEFOR0UsCi0JCQkJU0tMX0NEQ0xLX1JFQURZX0ZPUl9DSEFOR0UsCi0JCQkJ
U0tMX0NEQ0xLX1JFQURZX0ZPUl9DSEFOR0UsIDMpOwotCWlmIChyZXQpIHsKLQkJRFJNX0VSUk9S
KCJGYWlsZWQgdG8gaW5mb3JtIFBDVSBhYm91dCBjZGNsayBjaGFuZ2UgKCVkKVxuIiwKLQkJCSAg
cmV0KTsKLQkJcmV0dXJuOwotCX0KLQotCWlmIChkZXZfcHJpdi0+Y2RjbGsuaHcudmNvICE9IDAg
JiYKLQkgICAgZGV2X3ByaXYtPmNkY2xrLmh3LnZjbyAhPSB2Y28pCi0JCWNubF9jZGNsa19wbGxf
ZGlzYWJsZShkZXZfcHJpdik7Ci0KLQlpZiAoZGV2X3ByaXYtPmNkY2xrLmh3LnZjbyAhPSB2Y28p
Ci0JCWNubF9jZGNsa19wbGxfZW5hYmxlKGRldl9wcml2LCB2Y28pOwotCi0JLyoKLQkgKiBPbiBJ
Q0wgQ0QyWF9ESVYgY2FuIG9ubHkgYmUgMSwgc28gd2UnbGwgbmV2ZXIgZW5kIHVwIGNoYW5naW5n
IHRoZQotCSAqIGRpdmlkZXIgaGVyZSBzeW5jaHJvbml6ZWQgdG8gYSBwaXBlIHdoaWxlIENEQ0xL
IGlzIG9uLCBub3Igd2lsbCB3ZQotCSAqIG5lZWQgdGhlIGNvcnJlc3BvbmRpbmcgdmJsYW5rIHdh
aXQuCi0JICovCi0JSTkxNV9XUklURShDRENMS19DVEwsIElDTF9DRENMS19DRDJYX1BJUEVfTk9O
RSB8Ci0JCQkgICAgICBza2xfY2RjbGtfZGVjaW1hbChjZGNsaykpOwotCi0Jc2FuZHlicmlkZ2Vf
cGNvZGVfd3JpdGUoZGV2X3ByaXYsIFNLTF9QQ09ERV9DRENMS19DT05UUk9MLAotCQkJCWNkY2xr
X3N0YXRlLT52b2x0YWdlX2xldmVsKTsKLQotCWludGVsX3VwZGF0ZV9jZGNsayhkZXZfcHJpdik7
Ci0KLQkvKgotCSAqIENhbid0IHJlYWQgb3V0IHRoZSB2b2x0YWdlIGxldmVsIDooCi0JICogTGV0
J3MganVzdCBhc3N1bWUgZXZlcnl0aGluZyBpcyBhcyBleHBlY3RlZC4KLQkgKi8KLQlkZXZfcHJp
di0+Y2RjbGsuaHcudm9sdGFnZV9sZXZlbCA9IGNkY2xrX3N0YXRlLT52b2x0YWdlX2xldmVsOwot
fQotCiBzdGF0aWMgdTggaWNsX2NhbGNfdm9sdGFnZV9sZXZlbChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYsIGludCBjZGNsaykKIHsKIAlpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3By
aXYpKSB7CkBAIC0xODgxLDYgKzE4NDksNyBAQCBzdGF0aWMgdm9pZCBpY2xfZ2V0X2NkY2xrKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCSAgc3RydWN0IGludGVsX2NkY2xr
X3N0YXRlICpjZGNsa19zdGF0ZSkKIHsKIAl1MzIgdmFsOworCWludCBkaXY7CiAKIAljZGNsa19z
dGF0ZS0+YnlwYXNzID0gNTAwMDA7CiAKQEAgLTE5MTQsMTAgKzE4ODMsMjEgQEAgc3RhdGljIHZv
aWQgaWNsX2dldF9jZGNsayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAKIAlj
ZGNsa19zdGF0ZS0+dmNvID0gKHZhbCAmIEJYVF9ERV9QTExfUkFUSU9fTUFTSykgKiBjZGNsa19z
dGF0ZS0+cmVmOwogCi0JdmFsID0gSTkxNV9SRUFEKENEQ0xLX0NUTCk7Ci0JV0FSTl9PTigodmFs
ICYgQlhUX0NEQ0xLX0NEMlhfRElWX1NFTF9NQVNLKSAhPSAwKTsKKwl2YWwgPSBJOTE1X1JFQUQo
Q0RDTEtfQ1RMKSAmIEJYVF9DRENMS19DRDJYX0RJVl9TRUxfTUFTSzsKKwlzd2l0Y2ggKHZhbCkg
eworCWNhc2UgQlhUX0NEQ0xLX0NEMlhfRElWX1NFTF8xOgorCQlkaXYgPSAyOworCQlicmVhazsK
KwljYXNlIEJYVF9DRENMS19DRDJYX0RJVl9TRUxfMjoKKwkJZGl2ID0gNDsKKwkJYnJlYWs7CisJ
ZGVmYXVsdDoKKwkJTUlTU0lOR19DQVNFKHZhbCk7CisJCWRpdiA9IDI7CisJCWJyZWFrOworCX0K
IAotCWNkY2xrX3N0YXRlLT5jZGNsayA9IGNkY2xrX3N0YXRlLT52Y28gLyAyOworCWNkY2xrX3N0
YXRlLT5jZGNsayA9IERJVl9ST1VORF9DTE9TRVNUKGNkY2xrX3N0YXRlLT52Y28sIGRpdik7CiAK
IG91dDoKIAkvKgpAQCAtMTk2Myw3ICsxOTQzLDcgQEAgc3RhdGljIHZvaWQgaWNsX2luaXRfY2Rj
bGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCQkJCWljbF9jYWxjX3ZvbHRh
Z2VfbGV2ZWwoZGV2X3ByaXYsCiAJCQkJCQkgICAgICAgc2FuaXRpemVkX3N0YXRlLmNkY2xrKTsK
IAotCWljbF9zZXRfY2RjbGsoZGV2X3ByaXYsICZzYW5pdGl6ZWRfc3RhdGUsIElOVkFMSURfUElQ
RSk7CisJY25sX3NldF9jZGNsayhkZXZfcHJpdiwgJnNhbml0aXplZF9zdGF0ZSwgSU5WQUxJRF9Q
SVBFKTsKIH0KIAogc3RhdGljIHZvaWQgaWNsX3VuaW5pdF9jZGNsayhzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpCkBAIC0xOTc1LDcgKzE5NTUsNyBAQCBzdGF0aWMgdm9pZCBpY2xf
dW5pbml0X2NkY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAljZGNsa19z
dGF0ZS52b2x0YWdlX2xldmVsID0gaWNsX2NhbGNfdm9sdGFnZV9sZXZlbChkZXZfcHJpdiwKIAkJ
CQkJCQkgICBjZGNsa19zdGF0ZS5jZGNsayk7CiAKLQlpY2xfc2V0X2NkY2xrKGRldl9wcml2LCAm
Y2RjbGtfc3RhdGUsIElOVkFMSURfUElQRSk7CisJY25sX3NldF9jZGNsayhkZXZfcHJpdiwgJmNk
Y2xrX3N0YXRlLCBJTlZBTElEX1BJUEUpOwogfQogCiBzdGF0aWMgdm9pZCBjbmxfaW5pdF9jZGNs
ayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCkBAIC0yODEwLDcgKzI3OTAsNyBA
QCB2b2lkIGludGVsX3VwZGF0ZV9yYXdjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQogdm9pZCBpbnRlbF9pbml0X2NkY2xrX2hvb2tzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdikKIHsKIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkgewotCQlkZXZf
cHJpdi0+ZGlzcGxheS5zZXRfY2RjbGsgPSBpY2xfc2V0X2NkY2xrOworCQlkZXZfcHJpdi0+ZGlz
cGxheS5zZXRfY2RjbGsgPSBjbmxfc2V0X2NkY2xrOwogCQlkZXZfcHJpdi0+ZGlzcGxheS5tb2Rl
c2V0X2NhbGNfY2RjbGsgPSBpY2xfbW9kZXNldF9jYWxjX2NkY2xrOwogCX0gZWxzZSBpZiAoSVNf
Q0FOTk9OTEFLRShkZXZfcHJpdikpIHsKIAkJZGV2X3ByaXYtPmRpc3BsYXkuc2V0X2NkY2xrID0g
Y25sX3NldF9jZGNsazsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IGExNDJhYTNkNzRlMy4u
YzQ3ZTI5NjlhZDA0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTk2NzEsNyArOTY3MSwx
MCBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsKICNkZWZpbmUgIEJYVF9DRENMS19DRDJYX1BJUEUo
cGlwZSkJKChwaXBlKSA8PCAyMCkKICNkZWZpbmUgIENEQ0xLX0RJVk1VWF9DRF9PVkVSUklERQko
MSA8PCAxOSkKICNkZWZpbmUgIEJYVF9DRENMS19DRDJYX1BJUEVfTk9ORQlCWFRfQ0RDTEtfQ0Qy
WF9QSVBFKDMpCisjZGVmaW5lICBJQ0xfQ0RDTEtfQ0QyWF9QSVBFKHBpcGUpCShfUElDSyhwaXBl
LCAwLCAyLCA2KSA8PCAxOSkKICNkZWZpbmUgIElDTF9DRENMS19DRDJYX1BJUEVfTk9ORQkoNyA8
PCAxOSkKKyNkZWZpbmUgIFRHTF9DRENMS19DRDJYX1BJUEUocGlwZSkJQlhUX0NEQ0xLX0NEMlhf
UElQRShwaXBlKQorI2RlZmluZSAgVEdMX0NEQ0xLX0NEMlhfUElQRV9OT05FCUlDTF9DRENMS19D
RDJYX1BJUEVfTk9ORQogI2RlZmluZSAgQlhUX0NEQ0xLX1NTQV9QUkVDSEFSR0VfRU5BQkxFCSgx
IDw8IDE2KQogI2RlZmluZSAgQ0RDTEtfRlJFUV9ERUNJTUFMX01BU0sJKDB4N2ZmKQogCi0tIAoy
LjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
