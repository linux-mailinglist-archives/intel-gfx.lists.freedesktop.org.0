Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E284A15C00F
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 15:07:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 407766E30C;
	Thu, 13 Feb 2020 14:07:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC77F6E30C
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2020 14:07:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 06:07:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,436,1574150400"; d="scan'208";a="228151124"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by fmsmga008.fm.intel.com with ESMTP; 13 Feb 2020 06:07:30 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Feb 2020 16:04:12 +0200
Message-Id: <20200213140412.32697-4-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200213140412.32697-1-stanislav.lisovskiy@intel.com>
References: <20200213140412.32697-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v1 3/3] drm/i915: Force state->modeset=true when
 distrust_bios_wm==true
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkN1
cnJlbnRseSB3aGVuIHdlIGxvYWQgdGhlIGRyaXZlciB3ZSBzZXQgZGlzdHJ1c3RfYmlvc193bT10
cnVlLCB3aGljaAp3aWxsIGNhdXNlIGFjdGl2ZV9waXBlX2NoYW5nZXMgdG8gZ2V0IGZsYWdnZWQg
ZXZlbiB3aGVuIHdlJ3JlIG5vdAp0b2dnbGluZyBhbnkgcGlwZXMgb24vb2ZmLiBUaGUgcmVhc29u
IGJlaW5nIHRoYXQgd2Ugd2FudCB0byBmdWxseQpyZWRpc3RyaWJ1dGUgdGhlIGRidWYgYW1vbmcg
dGhlIGFjdGl2ZSBwaXBlcyBhbmQgaWdub3JlIHdoYXRldmVyCnN0YXRlIHRoZSBmaXJtd2FyZSBs
ZWZ0IGJlaGluZC4KClVuZm9ydHVuYXRlbHkgd2hlbiB0aGUgY29kZSBmbGFncyBhY3RpdmVfcGlw
ZV9jaGFuZ2VzIGl0IGRvZXNuJ3QKc2V0IHN0YXRlLT5tb2Rlc2V0IHRvIHRydWUsIHdoaWNoIG1l
YW5zIHRoZSBoYXJkd2FyZSBkYnVmIHN0YXRlCndvbid0IGFjdHVhbGx5IGdldCB1cGRhdGVkLiBI
ZW5jZSB0aGUgaGFyZHdhcmUgYW5kIHNvZnR3YXJlCnN0YXRlcyBnbyBvdXQgb2Ygc3luYywgd2hp
Y2ggY2FuIHJlc3VsdCBpbiBwbGFuZXMgdHJ5aW5nIHRvIHVzZSBhCmRpc2FibGVkIGRidWYgc2xp
Y2UuIFN1cHJpc2luZ2x5IHRoYXQgb25seSBzZWVtcyB0byBjb3JydXB0IHRoZQpkaXNwbGF5IHJh
dGhlciB0aGFuIG1ha2luZyB0aGUgd2hvbGUgZGlzcGxheSBlbmdpbmUga2VlbCBvdmVyLgoKTGV0
J3MgZml4IHRoaXMgZm9yIG5vdyBieSBmbGFnZ2luZyBzdGF0ZS0+bW9kZXNldCB3aGVuZXZlcgpk
aXN0cnVzdF9iaW9zX3dtIGlzIHNldC4KCkV2ZW50dWFsbHkgd2UnbGwgbGlrZWx5IHdhbnQgdG8g
cmlwIG91dCBhbGwgb2YgdGhpcyBtZXNzIGFuZAppbnRyb2R1Y2UgcHJvcGVyIHN0YXR5ZSB0cmFj
a2luZyBmb3IgZGJ1Zi4gQnV0IHRoYXQgcmVxdWlyZXMKbW9yZSB3b3JrLiBUb3NzIGluIGEgRklY
TUUgdG8gdGhhdCBlZmZlY3QuCgpDYzogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxp
c292c2tpeUBpbnRlbC5jb20+CkZpeGVzOiBmZjJjZDg2MzVlNDEgKCJkcm0vaTkxNTogQ29ycmVj
dGx5IG1hcCBEQlVGIHNsaWNlcyB0byBwaXBlcyIpClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBTdGFuaXNs
YXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDE0ICsrKysrKysrKysrKysr
CiAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggMWUzZjJjYzI3ZGI4Li5kZjQ3YjJmZGZh
MzggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBA
IC0xNTAyNyw2ICsxNTAyNywyMCBAQCBzdGF0aWMgaW50IGludGVsX2F0b21pY19jaGVjayhzdHJ1
Y3QgZHJtX2RldmljZSAqZGV2LAogCWlmIChuZXdfY2RjbGtfc3RhdGUgJiYgbmV3X2NkY2xrX3N0
YXRlLT5mb3JjZV9taW5fY2RjbGtfY2hhbmdlZCkKIAkJYW55X21zID0gdHJ1ZTsKIAorCS8qCisJ
ICogZGlzdHJ1c3RfYmlvc193bSB3aWxsIGZvcmNlIGEgZnVsbCBkYnVmIHJlY29tcHV0YXRpb24K
KwkgKiBidXQgdGhlIGhhcmR3YXJlIHN0YXRlIHdpbGwgb25seSBnZXQgdXBkYXRlZCBhY2NvcmRp
bmdseQorCSAqIGlmIHN0YXRlLT5tb2Rlc2V0PT10cnVlLiBIZW5jZSBkaXN0cnVzdF9iaW9zX3dt
PT10cnVlICYmCisJICogc3RhdGUtPm1vZGVzZXQ9PWZhbHNlIGlzIGFuIGludmFsaWQgY29tYmlu
YXRpb24gd2hpY2gKKwkgKiB3b3VsZCBjYXVzZSB0aGUgaGFyZHdhcmUgYW5kIHNvZnR3YXJlIGRi
dWYgc3RhdGUgdG8gZ2V0CisJICogb3V0IG9mIHN5bmMuIFdlIG11c3QgcHJldmVudCB0aGF0Lgor
CSAqCisJICogRklYTUUgY2xlYW4gdXAgdGhpcyBtZXNzIGFuZCBpbnRyb2R1Y2UgYmV0dGVyCisJ
ICogc3RhdGUgdHJhY2tpbmcgZm9yIGRidWYuCisJICovCisJaWYgKGRldl9wcml2LT53bS5kaXN0
cnVzdF9iaW9zX3dtKQorCQlhbnlfbXMgPSB0cnVlOworCiAJaWYgKGFueV9tcykgewogCQlyZXQg
PSBpbnRlbF9tb2Rlc2V0X2NoZWNrcyhzdGF0ZSk7CiAJCWlmIChyZXQpCi0tIAoyLjI0LjEuNDg1
LmdhZDA1YTNkOGU1CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
