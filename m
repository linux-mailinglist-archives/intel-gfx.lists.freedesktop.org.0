Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5201479A0
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 09:48:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A78C86FF78;
	Fri, 24 Jan 2020 08:48:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A4686FF78
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 08:48:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 00:48:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="375460339"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by orsmga004.jf.intel.com with ESMTP; 24 Jan 2020 00:48:42 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 10:44:54 +0200
Message-Id: <20200124084456.2961-6-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200124084456.2961-1-stanislav.lisovskiy@intel.com>
References: <20200124084456.2961-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v16 5/7] drm/i915: Correctly map DBUF slices to
 pipes
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

QWRkZWQgcHJvcGVyIERCdWYgc2xpY2UgbWFwcGluZyB0byBjb3JyZXNwb25kZW50CnBpcGVzLCBk
ZXBlbmRpbmcgb24gcGlwZSBjb25maWd1cmF0aW9uIGFzIHN0YXRlZAppbiBCU3BlYy4KCnYyOgog
ICAgLSBSZW1vdmUgdW5uZWVkZWQgYnJhY2VzCiAgICAtIFN0b3AgdXNpbmcgbWFjcm8gZm9yIERC
dWYgYXNzaWdubWVudHMgYXMKICAgICAgaXQgc2VlbXMgdG8gcmVkdWNlIHJlYWRhYmlsaXR5LgoK
djM6IFN0YXJ0IHVzaW5nIGVuYWJsZWQgc2xpY2VzIG1hc2sgaW4gZGV2X3ByaXYKCnY0OiBSZW5h
bWVkICJlbmFibGVkX3NsaWNlcyIgdXNlZCBpbiBkZXZfcHJpdgogICAgdG8gImVuYWJsZWRfZGJ1
Zl9zbGljZXNfbWFzayIoTWF0dCBSb3BlcikKCnY1OiAtIFJlbW92ZWQgcmVkdW5kYW50IHBhcmFt
ZXRlcnMgZnJvbQogICAgICBpbnRlbF9nZXRfZGRiX3NpemUgZnVuY3Rpb24uKE1hdHQgUm9wZXIp
CiAgICAtIE1hZGUgaTkxNV9wb3NzaWJsZV9kYnVmX3NsaWNlcyBzdGF0aWMoTWF0dCBSb3BlcikK
ICAgIC0gUmVuYW1lZCB0b3RhbF93aWR0aCBpbnRvIHRvdGFsX3dpZHRoX2luX3JhbmdlCiAgICAg
IHNvIHRoYXQgaXQgbm93IHJlZmxlY3RzIHRoYXQgdGhpcyBpcyBub3QKICAgICAgYSB0b3RhbCBw
aXBlIHdpZHRoIGJ1dCB0aGUgb25lIGluIGN1cnJlbnQKICAgICAgZGJ1ZiBzbGljZSBhbGxvd2Vk
IHJhbmdlIGZvciBwaXBlLihNYXR0IFJvcGVyKQogICAgLSBSZW1vdmVkIDR0aCBwaXBlIGZvciBJ
Q0wgaW4gREJ1ZiBhc3NpZ25tZW50CiAgICAgIHRhYmxlKE1hdHQgUm9wZXIpCiAgICAtIEZpeGVk
IHdyb25nIERCdWYgc2xpY2UgaW4gREJ1ZiB0YWJsZSBmb3IgVEdMCiAgICAgIChNYXR0IFJvcGVy
KQogICAgLSBBZGRlZCBjb21tZW50IHJlZ2FyZGluZyB3aHkgd2UgY3VycmVudGx5IG5vdAogICAg
ICB1c2luZyBwaXBlIHJhdGlvIGZvciBEQnVmIGFzc2lnbm1lbnQgZm9yIElDTAoKdjY6IC0gQ2hh
bmdlZCB1MzIgdG8gdW5zaWduZWQgaW50IGluCiAgICAgIGljbF9nZXRfZmlyc3RfZGJ1Zl9zbGlj
ZV9vZmZzZXQgZnVuY3Rpb24gc2lnbmF0dXJlCiAgICAgIChWaWxsZSBTeXJqw6Rsw6QpCiAgICAt
IENoYW5nZWQgYWxzbyB1MzIgdG8gdTggaW4gZGJ1ZiBzbGljZSBtYXNrIHN0cnVjdHVyZQogICAg
ICAoVmlsbGUgU3lyasOkbMOkKQogICAgLSBTd2l0Y2hlZCBmcm9tIERCVUZfUzFfQklUIHRvIGVu
dW0gKyBleHBsaWNpdAogICAgICBCSVQoREJVRl9TMSkgYWNjZXNzKFZpbGxlIFN5cmrDpGzDpCkK
ICAgIC0gU3dpdGNoZWQgdG8gbmFtZWQgaW5pdGlhbGl6ZXJzIGluIERCdWYgYXNzaWdubWVudAog
ICAgICBhcnJheXMoVmlsbGUgU3lyasOkbMOkKQogICAgLSBEQnVmIGFzc2lnbm1lbnQgYXJyYXlz
IG5vdyB1c2UgYXV0b2dlbmVyYXRpb24gdG9vbAogICAgICBmcm9tCiAgICAgIGh0dHBzOi8vcGF0
Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNzA0OTMvCiAgICAgIHRvIGF2b2lkIHR5cG9z
LgogICAgLSBSZW5hbWVkIGk5MTVfZmluZF9waXBlX2NvbmYgdG8gKl9jb21wdXRlX2RidWZfc2xp
Y2VzCiAgICAgIChWaWxsZSBTeXJqw6Rsw6QpCiAgICAtIENoYW5nZWQgcGxhdGZvcm1zIG9yZGVy
aW5nIGluIHNrbF9jb21wdXRlX2RidWZfc2xpY2VzCiAgICAgIHRvIGJlIGZyb20gbmV3ZXN0IHRv
IG9sZGVzdChWaWxsZSBTeXJqw6Rsw6QpCgp2NzogLSBOb3cgT1JpbmcgYXNzaWduZWQgREJ1ZiBz
bGljZSBjb25maWcgYWx3YXlzIHdpdGggREJVRl9TMQogICAgICBiZWNhdXNlIHNsaWNlIDEgaGFz
IHRvIGJlIGNvbnN0YW50bHkgcG93ZXJlZCBvbi4KICAgICAgKFZpbGxlIFN5cmrDpGzDpCkKCnY4
OiAtIEFkZGVkIHBpcGVfbmFtZSBmb3IgbmVhdGVyIHByaW50aW5nKFZpbGxlIFN5cmrDpGzDpCkK
ICAgIC0gUmVuYW1lZCB3aWR0aF9iZWZvcmVfcGlwZSB0byB3aWR0aF9iZWZvcmVfcGlwZV9pbl9y
YW5nZSwKICAgICAgdG8gYmV0dGVyIHJlZmxlY3QgdGhhdCBub3cgYWxsIHRoZSBjYWxjdWxhdGlv
bnMgYXJlIGhhcHBlbmluZwogICAgICBpbnNpZGUgREJ1ZiByYW5nZSBhbGxvd2VkIGJ5IGN1cnJl
bnQgcGlwZSBjb25maWd1cmF0aW9uIG1hc2sKICAgICAgKFZpbGxlIFN5cmrDpGzDpCkKICAgIC0g
U2hvcnRlbmVkIEZJWE1FIGNvbW1lbnQgbWVzc2FnZSwgcmVnYXJkaW5nIGNvbnN0YW50IE9SaW5n
IHdpdGgKICAgICAgREJVRl9TMShWaWxsZSBTeXJqw6Rsw6QpCiAgICAtIEFkZGVkIC5kYnVmX21h
c2sgbmFtZWQgaW5pdGlhbGl6ZXIgdG8gcGlwZSBhc3NpZ25tZW50IGFycmF5CiAgICAgIChWaWxs
ZSBTeXJqw6Rsw6QpCiAgICAtIEVkaXRlZCBwaXBlIGFzc2lnbm1lbnQgYXJyYXkgdG8gdXNlIG9u
bHkgc2luZ2xlIERCdWYgc2xpY2UKICAgICAgZm9yIGdlbjExIHNpbmdsZSBwaXBlIGNvbmZpZ3Vy
YXRpb25zLCB1bnRpbCAicGlwZSByYXRpbyIKICAgICAgdGhpbmcgaXMgZmluYWxseSBzb3J0ZWQg
b3V0KFZpbGxlIFN5cmrDpGzDpCkKICAgIC0gUmVtb3ZlZCB1bnVzZWQgcGFyYW1ldGVyIGNydGNf
c3RhdGUgZm9yIG5vdyhWaWxsZSBTeXJqw6Rsw6QpCiAgICAgIGZyb20gaWNsL3RnbF9jb21wdXRl
X2RidWZfc2xpY2VzIGZ1bmN0aW9uCgpTaWduZWQtb2ZmLWJ5OiBTdGFuaXNsYXYgTGlzb3Zza2l5
IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9wbS5jIHwgMzg1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tCiAxIGZp
bGUgY2hhbmdlZCwgMzY2IGluc2VydGlvbnMoKyksIDE5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9wbS5jCmluZGV4IGNhNWIzNGQyOTdkOS4uOTJjNGQ0NjI0MDkyIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3BtLmMKQEAgLTM4NTYsMTMgKzM4NTYsMjkgQEAgYm9vbCBpbnRlbF9jYW5fZW5h
YmxlX3NhZ3Yoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJcmV0dXJuIHRydWU7
CiB9CiAKLXN0YXRpYyB1MTYgaW50ZWxfZ2V0X2RkYl9zaXplKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwKLQkJCSAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlLAotCQkJICAgICAgY29uc3QgdTY0IHRvdGFsX2RhdGFfcmF0ZSwKLQkJCSAgICAg
IGNvbnN0IGludCBudW1fYWN0aXZlKQorLyoKKyAqIENhbGN1bGF0ZSBpbml0aWFsIERCdWYgc2xp
Y2Ugb2Zmc2V0LCBiYXNlZCBvbiBzbGljZSBzaXplCisgKiBhbmQgbWFzayhpLmUgaWYgc2xpY2Ug
c2l6ZSBpcyAxMDI0IGFuZCBzZWNvbmQgc2xpY2UgaXMgZW5hYmxlZAorICogb2Zmc2V0IHdvdWxk
IGJlIDEwMjQpCisgKi8KK3N0YXRpYyB1bnNpZ25lZCBpbnQKK2ljbF9nZXRfZmlyc3RfZGJ1Zl9z
bGljZV9vZmZzZXQodTMyIGRidWZfc2xpY2VfbWFzaywKKwkJCQl1MzIgc2xpY2Vfc2l6ZSwKKwkJ
CQl1MzIgZGRiX3NpemUpCit7CisJdW5zaWduZWQgaW50IG9mZnNldCA9IDA7CisKKwlpZiAoIWRi
dWZfc2xpY2VfbWFzaykKKwkJcmV0dXJuIDA7CisKKwlvZmZzZXQgPSAoZmZzKGRidWZfc2xpY2Vf
bWFzaykgLSAxKSAqIHNsaWNlX3NpemU7CisKKwlXQVJOX09OKG9mZnNldCA+PSBkZGJfc2l6ZSk7
CisJcmV0dXJuIG9mZnNldDsKK30KKworc3RhdGljIHUxNiBpbnRlbF9nZXRfZGRiX3NpemUoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewotCXN0cnVjdCBkcm1fYXRvbWljX3N0
YXRlICpzdGF0ZSA9IGNydGNfc3RhdGUtPnVhcGkuc3RhdGU7Ci0Jc3RydWN0IGludGVsX2F0b21p
Y19zdGF0ZSAqaW50ZWxfc3RhdGUgPSB0b19pbnRlbF9hdG9taWNfc3RhdGUoc3RhdGUpOwogCXUx
NiBkZGJfc2l6ZSA9IElOVEVMX0lORk8oZGV2X3ByaXYpLT5kZGJfc2l6ZTsKIAogCWRybV9XQVJO
X09OKCZkZXZfcHJpdi0+ZHJtLCBkZGJfc2l6ZSA9PSAwKTsKQEAgLTM4NzAsMTIgKzM4ODYsMTIg
QEAgc3RhdGljIHUxNiBpbnRlbF9nZXRfZGRiX3NpemUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LAogCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDwgMTEpCiAJCXJldHVybiBkZGJf
c2l6ZSAtIDQ7IC8qIDQgYmxvY2tzIGZvciBieXBhc3MgcGF0aCBhbGxvY2F0aW9uICovCiAKLQlp
bnRlbF9zdGF0ZS0+ZW5hYmxlZF9kYnVmX3NsaWNlc19tYXNrID0gQklUKERCVUZfUzEpOwotCWRk
Yl9zaXplIC89IDI7Ci0KIAlyZXR1cm4gZGRiX3NpemU7CiB9CiAKK3N0YXRpYyB1OCBza2xfY29t
cHV0ZV9kYnVmX3NsaWNlcyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSwKKwkJCQkgIHUzMiBhY3RpdmVfcGlwZXMpOworCiBzdGF0aWMgdm9pZAogc2tsX2RkYl9nZXRf
cGlwZV9hbGxvY2F0aW9uX2xpbWl0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
CiAJCQkJICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCkBAIC0z
ODg3LDEwICszOTAzLDE3IEBAIHNrbF9kZGJfZ2V0X3BpcGVfYWxsb2NhdGlvbl9saW1pdHMoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCXN0cnVjdCBpbnRlbF9hdG9taWNfc3Rh
dGUgKmludGVsX3N0YXRlID0gdG9faW50ZWxfYXRvbWljX3N0YXRlKHN0YXRlKTsKIAlzdHJ1Y3Qg
ZHJtX2NydGMgKmZvcl9jcnRjID0gY3J0Y19zdGF0ZS0+dWFwaS5jcnRjOwogCWNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjICpjcnRjOwotCXUzMiBwaXBlX3dpZHRoID0gMCwgdG90YWxfd2lkdGggPSAw
LCB3aWR0aF9iZWZvcmVfcGlwZSA9IDA7CisJdTMyIHBpcGVfd2lkdGggPSAwLCB0b3RhbF93aWR0
aF9pbl9yYW5nZSA9IDAsIHdpZHRoX2JlZm9yZV9waXBlX2luX3JhbmdlID0gMDsKIAllbnVtIHBp
cGUgZm9yX3BpcGUgPSB0b19pbnRlbF9jcnRjKGZvcl9jcnRjKS0+cGlwZTsKIAl1MTYgZGRiX3Np
emU7CisJdTMyIGRkYl9yYW5nZV9zaXplOwogCXUzMiBpOworCXUzMiBkYnVmX3NsaWNlX21hc2s7
CisJdTMyIGFjdGl2ZV9waXBlczsKKwl1MzIgb2Zmc2V0OworCXUzMiBzbGljZV9zaXplOworCXUz
MiB0b3RhbF9zbGljZV9tYXNrOworCXUzMiBzdGFydCwgZW5kOwogCiAJaWYgKGRybV9XQVJOX09O
KCZkZXZfcHJpdi0+ZHJtLCAhc3RhdGUpIHx8ICFjcnRjX3N0YXRlLT5ody5hY3RpdmUpIHsKIAkJ
YWxsb2MtPnN0YXJ0ID0gMDsKQEAgLTM5MDAsMTIgKzM5MjMsMTUgQEAgc2tsX2RkYl9nZXRfcGlw
ZV9hbGxvY2F0aW9uX2xpbWl0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJ
fQogCiAJaWYgKGludGVsX3N0YXRlLT5hY3RpdmVfcGlwZV9jaGFuZ2VzKQotCQkqbnVtX2FjdGl2
ZSA9IGh3ZWlnaHQ4KGludGVsX3N0YXRlLT5hY3RpdmVfcGlwZXMpOworCQlhY3RpdmVfcGlwZXMg
PSBpbnRlbF9zdGF0ZS0+YWN0aXZlX3BpcGVzOwogCWVsc2UKLQkJKm51bV9hY3RpdmUgPSBod2Vp
Z2h0OChkZXZfcHJpdi0+YWN0aXZlX3BpcGVzKTsKKwkJYWN0aXZlX3BpcGVzID0gZGV2X3ByaXYt
PmFjdGl2ZV9waXBlczsKKworCSpudW1fYWN0aXZlID0gaHdlaWdodDgoYWN0aXZlX3BpcGVzKTsK
KworCWRkYl9zaXplID0gaW50ZWxfZ2V0X2RkYl9zaXplKGRldl9wcml2KTsKIAotCWRkYl9zaXpl
ID0gaW50ZWxfZ2V0X2RkYl9zaXplKGRldl9wcml2LCBjcnRjX3N0YXRlLCB0b3RhbF9kYXRhX3Jh
dGUsCi0JCQkJICAgICAgKm51bV9hY3RpdmUpOworCXNsaWNlX3NpemUgPSBkZGJfc2l6ZSAvIElO
VEVMX0lORk8oZGV2X3ByaXYpLT5udW1fc3VwcG9ydGVkX2RidWZfc2xpY2VzOwogCiAJLyoKIAkg
KiBJZiB0aGUgc3RhdGUgZG9lc24ndCBjaGFuZ2UgdGhlIGFjdGl2ZSBDUlRDJ3Mgb3IgdGhlcmUg
aXMgbm8KQEAgLTM5MjQsMzEgKzM5NTAsOTYgQEAgc2tsX2RkYl9nZXRfcGlwZV9hbGxvY2F0aW9u
X2xpbWl0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCXJldHVybjsKIAl9
CiAKKwkvKgorCSAqIEdldCBhbGxvd2VkIERCdWYgc2xpY2VzIGZvciBjb3JyZXNwb25kZW50IHBp
cGUgYW5kIHBsYXRmb3JtLgorCSAqLworCWRidWZfc2xpY2VfbWFzayA9IHNrbF9jb21wdXRlX2Ri
dWZfc2xpY2VzKGNydGNfc3RhdGUsIGFjdGl2ZV9waXBlcyk7CisKKwlEUk1fREVCVUdfS01TKCJE
QnVmIHNsaWNlIG1hc2sgJXggcGlwZSAlYyBhY3RpdmUgcGlwZXMgJXhcbiIsCisJCSAgICAgIGRi
dWZfc2xpY2VfbWFzaywKKwkJICAgICAgcGlwZV9uYW1lKGZvcl9waXBlKSwgYWN0aXZlX3BpcGVz
KTsKKworCS8qCisJICogRmlndXJlIG91dCBhdCB3aGljaCBEQnVmIHNsaWNlIHdlIHN0YXJ0LCBp
LmUgaWYgd2Ugc3RhcnQgYXQgRGJ1ZiBTMgorCSAqIGFuZCBzbGljZSBzaXplIGlzIDEwMjQsIHRo
ZSBvZmZzZXQgd291bGQgYmUgMTAyNAorCSAqLworCW9mZnNldCA9IGljbF9nZXRfZmlyc3RfZGJ1
Zl9zbGljZV9vZmZzZXQoZGJ1Zl9zbGljZV9tYXNrLAorCQkJCQkJIHNsaWNlX3NpemUsIGRkYl9z
aXplKTsKKworCS8qCisJICogRmlndXJlIG91dCB0b3RhbCBzaXplIG9mIGFsbG93ZWQgREJ1ZiBz
bGljZXMsIHdoaWNoIGlzIGJhc2ljYWxseQorCSAqIGEgbnVtYmVyIG9mIGFsbG93ZWQgc2xpY2Vz
IGZvciB0aGF0IHBpcGUgbXVsdGlwbGllZCBieSBzbGljZSBzaXplLgorCSAqIEluc2lkZSBvZiB0
aGlzCisJICogcmFuZ2UgZGRiIGVudHJpZXMgYXJlIHN0aWxsIGFsbG9jYXRlZCBpbiBwcm9wb3J0
aW9uIHRvIGRpc3BsYXkgd2lkdGguCisJICovCisJZGRiX3JhbmdlX3NpemUgPSBod2VpZ2h0OChk
YnVmX3NsaWNlX21hc2spICogc2xpY2Vfc2l6ZTsKKwogCS8qCiAJICogV2F0ZXJtYXJrL2RkYiBy
ZXF1aXJlbWVudCBoaWdobHkgZGVwZW5kcyB1cG9uIHdpZHRoIG9mIHRoZQogCSAqIGZyYW1lYnVm
ZmVyLCBTbyBpbnN0ZWFkIG9mIGFsbG9jYXRpbmcgRERCIGVxdWFsbHkgYW1vbmcgcGlwZXMKIAkg
KiBkaXN0cmlidXRlIEREQiBiYXNlZCBvbiByZXNvbHV0aW9uL3dpZHRoIG9mIHRoZSBkaXNwbGF5
LgogCSAqLworCXRvdGFsX3NsaWNlX21hc2sgPSBkYnVmX3NsaWNlX21hc2s7CiAJZm9yX2VhY2hf
bmV3X2ludGVsX2NydGNfaW5fc3RhdGUoaW50ZWxfc3RhdGUsIGNydGMsIGNydGNfc3RhdGUsIGkp
IHsKIAkJY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVzdGVkX21vZGUgPQogCQkJ
JmNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGU7CiAJCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+
cGlwZTsKIAkJaW50IGhkaXNwbGF5LCB2ZGlzcGxheTsKKwkJdTMyIHBpcGVfZGJ1Zl9zbGljZV9t
YXNrOwogCi0JCWlmICghY3J0Y19zdGF0ZS0+aHcuZW5hYmxlKQorCQlpZiAoIWNydGNfc3RhdGUt
Pmh3LmFjdGl2ZSkKKwkJCWNvbnRpbnVlOworCisJCXBpcGVfZGJ1Zl9zbGljZV9tYXNrID0gc2ts
X2NvbXB1dGVfZGJ1Zl9zbGljZXMoY3J0Y19zdGF0ZSwKKwkJCQkJCQkgICAgICAgYWN0aXZlX3Bp
cGVzKTsKKworCQkvKgorCQkgKiBBY2NvcmRpbmcgdG8gQlNwZWMgcGlwZSBjYW4gc2hhcmUgb25l
IGRidWYgc2xpY2Ugd2l0aCBhbm90aGVyCisJCSAqIHBpcGVzIG9yIHBpcGUgY2FuIHVzZSBtdWx0
aXBsZSBkYnVmcywgaW4gYm90aCBjYXNlcyB3ZQorCQkgKiBhY2NvdW50IGZvciBvdGhlciBwaXBl
cyBvbmx5IGlmIHRoZXkgaGF2ZSBleGFjdGx5IHNhbWUgbWFzay4KKwkJICogSG93ZXZlciB3ZSBu
ZWVkIHRvIGFjY291bnQgaG93IG1hbnkgc2xpY2VzIHdlIHNob3VsZCBlbmFibGUKKwkJICogaW4g
dG90YWwuCisJCSAqLworCQl0b3RhbF9zbGljZV9tYXNrIHw9IHBpcGVfZGJ1Zl9zbGljZV9tYXNr
OworCisJCS8qCisJCSAqIERvIG5vdCBhY2NvdW50IHBpcGVzIHVzaW5nIG90aGVyIHNsaWNlIHNl
dHMKKwkJICogbHVja2lseSBhcyBvZiBjdXJyZW50IEJTcGVjIHNsaWNlIHNldHMgZG8gbm90IHBh
cnRpYWxseQorCQkgKiBpbnRlcnNlY3QocGlwZXMgc2hhcmUgZWl0aGVyIHNhbWUgb25lIHNsaWNl
IG9yIHNhbWUgc2xpY2Ugc2V0CisJCSAqIGkuZSBubyBwYXJ0aWFsIGludGVyc2VjdGlvbiksIHNv
IGl0IGlzIGVub3VnaCB0byBjaGVjayBmb3IKKwkJICogZXF1YWxpdHkgZm9yIG5vdy4KKwkJICov
CisJCWlmIChkYnVmX3NsaWNlX21hc2sgIT0gcGlwZV9kYnVmX3NsaWNlX21hc2spCiAJCQljb250
aW51ZTsKIAogCQlkcm1fbW9kZV9nZXRfaHZfdGltaW5nKGFkanVzdGVkX21vZGUsICZoZGlzcGxh
eSwgJnZkaXNwbGF5KTsKLQkJdG90YWxfd2lkdGggKz0gaGRpc3BsYXk7CisKKwkJdG90YWxfd2lk
dGhfaW5fcmFuZ2UgKz0gaGRpc3BsYXk7CiAKIAkJaWYgKHBpcGUgPCBmb3JfcGlwZSkKLQkJCXdp
ZHRoX2JlZm9yZV9waXBlICs9IGhkaXNwbGF5OworCQkJd2lkdGhfYmVmb3JlX3BpcGVfaW5fcmFu
Z2UgKz0gaGRpc3BsYXk7CiAJCWVsc2UgaWYgKHBpcGUgPT0gZm9yX3BpcGUpCiAJCQlwaXBlX3dp
ZHRoID0gaGRpc3BsYXk7CiAJfQogCi0JYWxsb2MtPnN0YXJ0ID0gZGRiX3NpemUgKiB3aWR0aF9i
ZWZvcmVfcGlwZSAvIHRvdGFsX3dpZHRoOwotCWFsbG9jLT5lbmQgPSBkZGJfc2l6ZSAqICh3aWR0
aF9iZWZvcmVfcGlwZSArIHBpcGVfd2lkdGgpIC8gdG90YWxfd2lkdGg7CisJLyoKKwkgKiBGSVhN
RTogRm9yIG5vdyB3ZSBhbHdheXMgZW5hYmxlIHNsaWNlIFMxIGFzIHBlcgorCSAqIHRoZSBCc3Bl
YyBkaXNwbGF5IGluaXRpYWxpemF0aW9uIHNlcXVlbmNlLgorCSAqLworCWludGVsX3N0YXRlLT5l
bmFibGVkX2RidWZfc2xpY2VzX21hc2sgPSB0b3RhbF9zbGljZV9tYXNrIHwgQklUKERCVUZfUzEp
OworCisJc3RhcnQgPSBkZGJfcmFuZ2Vfc2l6ZSAqIHdpZHRoX2JlZm9yZV9waXBlX2luX3Jhbmdl
IC8gdG90YWxfd2lkdGhfaW5fcmFuZ2U7CisJZW5kID0gZGRiX3JhbmdlX3NpemUgKgorCQkod2lk
dGhfYmVmb3JlX3BpcGVfaW5fcmFuZ2UgKyBwaXBlX3dpZHRoKSAvIHRvdGFsX3dpZHRoX2luX3Jh
bmdlOworCisJYWxsb2MtPnN0YXJ0ID0gb2Zmc2V0ICsgc3RhcnQ7CisJYWxsb2MtPmVuZCA9IG9m
ZnNldCArIGVuZDsKKworCURSTV9ERUJVR19LTVMoIlBpcGUgJWQgZGRiICVkLSVkXG4iLCBmb3Jf
cGlwZSwKKwkJICAgICAgYWxsb2MtPnN0YXJ0LCBhbGxvYy0+ZW5kKTsKKwlEUk1fREVCVUdfS01T
KCJFbmFibGVkIGRkYiBzbGljZXMgbWFzayAleCBudW0gc3VwcG9ydGVkICVkXG4iLAorCQkgICAg
ICBpbnRlbF9zdGF0ZS0+ZW5hYmxlZF9kYnVmX3NsaWNlc19tYXNrLAorCQkgICAgICBJTlRFTF9J
TkZPKGRldl9wcml2KS0+bnVtX3N1cHBvcnRlZF9kYnVmX3NsaWNlcyk7CiB9CiAKIHN0YXRpYyBp
bnQgc2tsX2NvbXB1dGVfd21fcGFyYW1zKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlLApAQCAtNDExOSw2ICs0MjEwLDI2MiBAQCBza2xfcGxhbmVfZG93bnNjYWxlX2Ft
b3VudChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAlyZXR1cm4g
bXVsX2ZpeGVkMTYoZG93bnNjYWxlX3csIGRvd25zY2FsZV9oKTsKIH0KIAorc3RydWN0IGRidWZf
c2xpY2VfY29uZl9lbnRyeSB7CisJdTggYWN0aXZlX3BpcGVzOworCXU4IGRidWZfbWFza1tJOTE1
X01BWF9QSVBFU107Cit9OworCisvKgorICogVGFibGUgdGFrZW4gZnJvbSBCc3BlYyAxMjcxNgor
ICogUGlwZXMgZG8gaGF2ZSBzb21lIHByZWZlcnJlZCBEQnVmIHNsaWNlIGFmZmluaXR5LAorICog
cGx1cyB0aGVyZSBhcmUgc29tZSBoYXJkY29kZWQgcmVxdWlyZW1lbnRzIG9uIGhvdworICogdGhv
c2Ugc2hvdWxkIGJlIGRpc3RyaWJ1dGVkIGZvciBtdWx0aXBpcGUgc2NlbmFyaW9zLgorICogRm9y
IG1vcmUgREJ1ZiBzbGljZXMgYWxnb3JpdGhtIGNhbiBnZXQgZXZlbiBtb3JlIG1lc3N5CisgKiBh
bmQgbGVzcyByZWFkYWJsZSwgc28gZGVjaWRlZCB0byB1c2UgYSB0YWJsZSBhbG1vc3QKKyAqIGFz
IGlzIGZyb20gQlNwZWMgaXRzZWxmIC0gdGhhdCB3YXkgaXQgaXMgYXQgbGVhc3QgZWFzaWVyCisg
KiB0byBjb21wYXJlLCBjaGFuZ2UgYW5kIGNoZWNrLgorICovCitzdGF0aWMgc3RydWN0IGRidWZf
c2xpY2VfY29uZl9lbnRyeSBpY2xfYWxsb3dlZF9kYnVmc1tdID0KKy8qIEF1dG9nZW5lcmF0ZWQg
d2l0aCBpZ3QvdG9vbHMvaW50ZWxfZGJ1Zl9tYXAgdG9vbDogKi8KK3sKKwl7CisJCS5hY3RpdmVf
cGlwZXMgPSBCSVQoUElQRV9BKSwKKwkJLmRidWZfbWFzayA9IHsKKwkJCVtQSVBFX0FdID0gQklU
KERCVUZfUzEpCisJCX0KKwl9LAorCXsKKwkJLmFjdGl2ZV9waXBlcyA9IEJJVChQSVBFX0IpLAor
CQkuZGJ1Zl9tYXNrID0geworCQkJW1BJUEVfQl0gPSBCSVQoREJVRl9TMSkKKwkJfQorCX0sCisJ
eworCQkuYWN0aXZlX3BpcGVzID0gQklUKFBJUEVfQSkgfCBCSVQoUElQRV9CKSwKKwkJLmRidWZf
bWFzayA9IHsKKwkJCVtQSVBFX0FdID0gQklUKERCVUZfUzEpLAorCQkJW1BJUEVfQl0gPSBCSVQo
REJVRl9TMikKKwkJfQorCX0sCisJeworCQkuYWN0aXZlX3BpcGVzID0gQklUKFBJUEVfQyksCisJ
CS5kYnVmX21hc2sgPSB7CisJCQlbUElQRV9DXSA9IEJJVChEQlVGX1MyKQorCQl9CisJfSwKKwl7
CisJCS5hY3RpdmVfcGlwZXMgPSBCSVQoUElQRV9BKSB8IEJJVChQSVBFX0MpLAorCQkuZGJ1Zl9t
YXNrID0geworCQkJW1BJUEVfQV0gPSBCSVQoREJVRl9TMSksCisJCQlbUElQRV9DXSA9IEJJVChE
QlVGX1MyKQorCQl9CisJfSwKKwl7CisJCS5hY3RpdmVfcGlwZXMgPSBCSVQoUElQRV9CKSB8IEJJ
VChQSVBFX0MpLAorCQkuZGJ1Zl9tYXNrID0geworCQkJW1BJUEVfQl0gPSBCSVQoREJVRl9TMSks
CisJCQlbUElQRV9DXSA9IEJJVChEQlVGX1MyKQorCQl9CisJfSwKKwl7CisJCS5hY3RpdmVfcGlw
ZXMgPSBCSVQoUElQRV9BKSB8IEJJVChQSVBFX0IpIHwgQklUKFBJUEVfQyksCisJCS5kYnVmX21h
c2sgPSB7CisJCQlbUElQRV9BXSA9IEJJVChEQlVGX1MxKSwKKwkJCVtQSVBFX0JdID0gQklUKERC
VUZfUzEpLAorCQkJW1BJUEVfQ10gPSBCSVQoREJVRl9TMikKKwkJfQorCX0sCit9OworCisvKgor
ICogVGFibGUgdGFrZW4gZnJvbSBCc3BlYyA0OTI1NQorICogUGlwZXMgZG8gaGF2ZSBzb21lIHBy
ZWZlcnJlZCBEQnVmIHNsaWNlIGFmZmluaXR5LAorICogcGx1cyB0aGVyZSBhcmUgc29tZSBoYXJk
Y29kZWQgcmVxdWlyZW1lbnRzIG9uIGhvdworICogdGhvc2Ugc2hvdWxkIGJlIGRpc3RyaWJ1dGVk
IGZvciBtdWx0aXBpcGUgc2NlbmFyaW9zLgorICogRm9yIG1vcmUgREJ1ZiBzbGljZXMgYWxnb3Jp
dGhtIGNhbiBnZXQgZXZlbiBtb3JlIG1lc3N5CisgKiBhbmQgbGVzcyByZWFkYWJsZSwgc28gZGVj
aWRlZCB0byB1c2UgYSB0YWJsZSBhbG1vc3QKKyAqIGFzIGlzIGZyb20gQlNwZWMgaXRzZWxmIC0g
dGhhdCB3YXkgaXQgaXMgYXQgbGVhc3QgZWFzaWVyCisgKiB0byBjb21wYXJlLCBjaGFuZ2UgYW5k
IGNoZWNrLgorICovCitzdGF0aWMgc3RydWN0IGRidWZfc2xpY2VfY29uZl9lbnRyeSB0Z2xfYWxs
b3dlZF9kYnVmc1tdID0KKy8qIEF1dG9nZW5lcmF0ZWQgd2l0aCBpZ3QvdG9vbHMvaW50ZWxfZGJ1
Zl9tYXAgdG9vbDogKi8KK3sKKwl7CisJCS5hY3RpdmVfcGlwZXMgPSBCSVQoUElQRV9BKSwKKwkJ
LmRidWZfbWFzayA9IHsKKwkJCVtQSVBFX0FdID0gQklUKERCVUZfUzEpIHwgQklUKERCVUZfUzIp
CisJCX0KKwl9LAorCXsKKwkJLmFjdGl2ZV9waXBlcyA9IEJJVChQSVBFX0IpLAorCQkuZGJ1Zl9t
YXNrID0geworCQkJW1BJUEVfQl0gPSBCSVQoREJVRl9TMSkgfCBCSVQoREJVRl9TMikKKwkJfQor
CX0sCisJeworCQkuYWN0aXZlX3BpcGVzID0gQklUKFBJUEVfQSkgfCBCSVQoUElQRV9CKSwKKwkJ
LmRidWZfbWFzayA9IHsKKwkJCVtQSVBFX0FdID0gQklUKERCVUZfUzIpLAorCQkJW1BJUEVfQl0g
PSBCSVQoREJVRl9TMSkKKwkJfQorCX0sCisJeworCQkuYWN0aXZlX3BpcGVzID0gQklUKFBJUEVf
QyksCisJCS5kYnVmX21hc2sgPSB7CisJCQlbUElQRV9DXSA9IEJJVChEQlVGX1MyKSB8IEJJVChE
QlVGX1MxKQorCQl9CisJfSwKKwl7CisJCS5hY3RpdmVfcGlwZXMgPSBCSVQoUElQRV9BKSB8IEJJ
VChQSVBFX0MpLAorCQkuZGJ1Zl9tYXNrID0geworCQkJW1BJUEVfQV0gPSBCSVQoREJVRl9TMSks
CisJCQlbUElQRV9DXSA9IEJJVChEQlVGX1MyKQorCQl9CisJfSwKKwl7CisJCS5hY3RpdmVfcGlw
ZXMgPSBCSVQoUElQRV9CKSB8IEJJVChQSVBFX0MpLAorCQkuZGJ1Zl9tYXNrID0geworCQkJW1BJ
UEVfQl0gPSBCSVQoREJVRl9TMSksCisJCQlbUElQRV9DXSA9IEJJVChEQlVGX1MyKQorCQl9CisJ
fSwKKwl7CisJCS5hY3RpdmVfcGlwZXMgPSBCSVQoUElQRV9BKSB8IEJJVChQSVBFX0IpIHwgQklU
KFBJUEVfQyksCisJCS5kYnVmX21hc2sgPSB7CisJCQlbUElQRV9BXSA9IEJJVChEQlVGX1MxKSwK
KwkJCVtQSVBFX0JdID0gQklUKERCVUZfUzEpLAorCQkJW1BJUEVfQ10gPSBCSVQoREJVRl9TMikK
KwkJfQorCX0sCisJeworCQkuYWN0aXZlX3BpcGVzID0gQklUKFBJUEVfRCksCisJCS5kYnVmX21h
c2sgPSB7CisJCQlbUElQRV9EXSA9IEJJVChEQlVGX1MyKSB8IEJJVChEQlVGX1MxKQorCQl9CisJ
fSwKKwl7CisJCS5hY3RpdmVfcGlwZXMgPSBCSVQoUElQRV9BKSB8IEJJVChQSVBFX0QpLAorCQku
ZGJ1Zl9tYXNrID0geworCQkJW1BJUEVfQV0gPSBCSVQoREJVRl9TMSksCisJCQlbUElQRV9EXSA9
IEJJVChEQlVGX1MyKQorCQl9CisJfSwKKwl7CisJCS5hY3RpdmVfcGlwZXMgPSBCSVQoUElQRV9C
KSB8IEJJVChQSVBFX0QpLAorCQkuZGJ1Zl9tYXNrID0geworCQkJW1BJUEVfQl0gPSBCSVQoREJV
Rl9TMSksCisJCQlbUElQRV9EXSA9IEJJVChEQlVGX1MyKQorCQl9CisJfSwKKwl7CisJCS5hY3Rp
dmVfcGlwZXMgPSBCSVQoUElQRV9BKSB8IEJJVChQSVBFX0IpIHwgQklUKFBJUEVfRCksCisJCS5k
YnVmX21hc2sgPSB7CisJCQlbUElQRV9BXSA9IEJJVChEQlVGX1MxKSwKKwkJCVtQSVBFX0JdID0g
QklUKERCVUZfUzEpLAorCQkJW1BJUEVfRF0gPSBCSVQoREJVRl9TMikKKwkJfQorCX0sCisJewor
CQkuYWN0aXZlX3BpcGVzID0gQklUKFBJUEVfQykgfCBCSVQoUElQRV9EKSwKKwkJLmRidWZfbWFz
ayA9IHsKKwkJCVtQSVBFX0NdID0gQklUKERCVUZfUzEpLAorCQkJW1BJUEVfRF0gPSBCSVQoREJV
Rl9TMikKKwkJfQorCX0sCisJeworCQkuYWN0aXZlX3BpcGVzID0gQklUKFBJUEVfQSkgfCBCSVQo
UElQRV9DKSB8IEJJVChQSVBFX0QpLAorCQkuZGJ1Zl9tYXNrID0geworCQkJW1BJUEVfQV0gPSBC
SVQoREJVRl9TMSksCisJCQlbUElQRV9DXSA9IEJJVChEQlVGX1MyKSwKKwkJCVtQSVBFX0RdID0g
QklUKERCVUZfUzIpCisJCX0KKwl9LAorCXsKKwkJLmFjdGl2ZV9waXBlcyA9IEJJVChQSVBFX0Ip
IHwgQklUKFBJUEVfQykgfCBCSVQoUElQRV9EKSwKKwkJLmRidWZfbWFzayA9IHsKKwkJCVtQSVBF
X0JdID0gQklUKERCVUZfUzEpLAorCQkJW1BJUEVfQ10gPSBCSVQoREJVRl9TMiksCisJCQlbUElQ
RV9EXSA9IEJJVChEQlVGX1MyKQorCQl9CisJfSwKKwl7CisJCS5hY3RpdmVfcGlwZXMgPSBCSVQo
UElQRV9BKSB8IEJJVChQSVBFX0IpIHwgQklUKFBJUEVfQykgfCBCSVQoUElQRV9EKSwKKwkJLmRi
dWZfbWFzayA9IHsKKwkJCVtQSVBFX0FdID0gQklUKERCVUZfUzEpLAorCQkJW1BJUEVfQl0gPSBC
SVQoREJVRl9TMSksCisJCQlbUElQRV9DXSA9IEJJVChEQlVGX1MyKSwKKwkJCVtQSVBFX0RdID0g
QklUKERCVUZfUzIpCisJCX0KKwl9LAorfTsKKworc3RhdGljIHU4IGNvbXB1dGVfZGJ1Zl9zbGlj
ZXMoZW51bSBwaXBlIHBpcGUsCisJCQkgICAgICB1MzIgYWN0aXZlX3BpcGVzLAorCQkJICAgICAg
Y29uc3Qgc3RydWN0IGRidWZfc2xpY2VfY29uZl9lbnRyeSAqZGJ1Zl9zbGljZXMsCisJCQkgICAg
ICBpbnQgc2l6ZSkKK3sKKwlpbnQgaTsKKworCWZvciAoaSA9IDA7IGkgPCBzaXplOyBpKyspIHsK
KwkJaWYgKGRidWZfc2xpY2VzW2ldLmFjdGl2ZV9waXBlcyA9PSBhY3RpdmVfcGlwZXMpCisJCQly
ZXR1cm4gZGJ1Zl9zbGljZXNbaV0uZGJ1Zl9tYXNrW3BpcGVdOworCX0KKwlyZXR1cm4gMDsKK30K
KworLyoKKyAqIFRoaXMgZnVuY3Rpb24gZmluZHMgYW4gZW50cnkgd2l0aCBzYW1lIGVuYWJsZWQg
cGlwZSBjb25maWd1cmF0aW9uIGFuZAorICogcmV0dXJucyBjb3JyZXNwb25kZW50IERCdWYgc2xp
Y2UgbWFzayBhcyBzdGF0ZWQgaW4gQlNwZWMgZm9yIHBhcnRpY3VsYXIKKyAqIHBsYXRmb3JtLgor
ICovCitzdGF0aWMgdTMyIGljbF9jb21wdXRlX2RidWZfc2xpY2VzKGVudW0gcGlwZSBwaXBlLAor
CQkJCSAgIHUzMiBhY3RpdmVfcGlwZXMpCit7CisJLyoKKwkgKiBGSVhNRTogRm9yIElDTCB0aGlz
IGlzIHN0aWxsIGEgYml0IHVuY2xlYXIgYXMgcHJldiBCU3BlYyByZXZpc2lvbgorCSAqIHJlcXVp
cmVkIGNhbGN1bGF0aW5nICJwaXBlIHJhdGlvIiBpbiBvcmRlciB0byBkZXRlcm1pbmUKKwkgKiBp
ZiBvbmUgb3IgdHdvIHNsaWNlcyBjYW4gYmUgdXNlZCBmb3Igc2luZ2xlIHBpcGUgY29uZmlndXJh
dGlvbnMKKwkgKiBhcyBhZGRpdGlvbmFsIGNvbnN0cmFpbnQgdG8gdGhlIGV4aXN0aW5nIHRhYmxl
LgorCSAqIEhvd2V2ZXIgYmFzZWQgb24gcmVjZW50IGluZm8sIGl0IHNob3VsZCBiZSBub3QgInBp
cGUgcmF0aW8iCisJICogYnV0IHJhdGhlciByYXRpbyBiZXR3ZWVuIHBpeGVsX3JhdGUgYW5kIGNk
Y2xrIHdpdGggYWRkaXRpb25hbAorCSAqIGNvbnN0YW50cywgc28gZm9yIG5vdyB3ZSBhcmUgdXNp
bmcgb25seSB0YWJsZSB1bnRpbCB0aGlzIGlzCisJICogY2xhcmlmaWVkLiBBbHNvIHRoaXMgaXMg
dGhlIHJlYXNvbiB3aHkgY3J0Y19zdGF0ZSBwYXJhbSBpcworCSAqIHN0aWxsIGhlcmUgLSB3ZSB3
aWxsIG5lZWQgaXQgb25jZSB0aG9zZSBhZGRpdGlvbmFsIGNvbnN0cmFpbnRzCisJICogcG9wIHVw
LgorCSAqLworCXJldHVybiBjb21wdXRlX2RidWZfc2xpY2VzKHBpcGUsIGFjdGl2ZV9waXBlcywK
KwkJCQkgICBpY2xfYWxsb3dlZF9kYnVmcywKKwkJCQkgICBBUlJBWV9TSVpFKGljbF9hbGxvd2Vk
X2RidWZzKSk7Cit9CisKK3N0YXRpYyB1MzIgdGdsX2NvbXB1dGVfZGJ1Zl9zbGljZXMoZW51bSBw
aXBlIHBpcGUsCisJCQkJICAgdTMyIGFjdGl2ZV9waXBlcykKK3sKKwlyZXR1cm4gY29tcHV0ZV9k
YnVmX3NsaWNlcyhwaXBlLCBhY3RpdmVfcGlwZXMsCisJCQkJICAgdGdsX2FsbG93ZWRfZGJ1ZnMs
CisJCQkJICAgQVJSQVlfU0laRSh0Z2xfYWxsb3dlZF9kYnVmcykpOworfQorCitzdGF0aWMgdTgg
c2tsX2NvbXB1dGVfZGJ1Zl9zbGljZXMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUsCisJCQkJICB1MzIgYWN0aXZlX3BpcGVzKQoreworCXN0cnVjdCBpbnRlbF9jcnRj
ICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT51YXBpLmNydGMpOworCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOworCWVu
dW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsKKworCWlmIChJU19HRU4oZGV2X3ByaXYsIDEyKSkK
KwkJcmV0dXJuIHRnbF9jb21wdXRlX2RidWZfc2xpY2VzKHBpcGUsCisJCQkJCSAgICAgICBhY3Rp
dmVfcGlwZXMpOworCWVsc2UgaWYgKElTX0dFTihkZXZfcHJpdiwgMTEpKQorCQlyZXR1cm4gaWNs
X2NvbXB1dGVfZGJ1Zl9zbGljZXMocGlwZSwKKwkJCQkJICAgICAgIGFjdGl2ZV9waXBlcyk7CisJ
LyoKKwkgKiBGb3IgYW55dGhpbmcgZWxzZSBqdXN0IHJldHVybiBvbmUgc2xpY2UgeWV0LgorCSAq
IFNob3VsZCBiZSBleHRlbmRlZCBmb3Igb3RoZXIgcGxhdGZvcm1zLgorCSAqLworCXJldHVybiBC
SVQoREJVRl9TMSk7Cit9CisKIHN0YXRpYyB1NjQKIHNrbF9wbGFuZV9yZWxhdGl2ZV9kYXRhX3Jh
dGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJCQkgICAgIGNv
bnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUsCi0tIAoyLjI0LjEuNDg1
LmdhZDA1YTNkOGU1CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
