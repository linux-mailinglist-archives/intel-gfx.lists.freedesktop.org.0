Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1718134A4A
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 19:13:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3A7C6E223;
	Wed,  8 Jan 2020 18:13:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DEC26E1DE
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2020 18:12:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 10:12:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,410,1571727600"; d="scan'208";a="225947476"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 08 Jan 2020 10:12:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Jan 2020 20:12:49 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jan 2020 20:12:36 +0200
Message-Id: <20200108181242.13650-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200108181242.13650-1-ville.syrjala@linux.intel.com>
References: <20200108181242.13650-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/9] drm/i915/sdvo: Consolidate SDVO HDMI
 force_dvi handling
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1v
dmUgdGhlIGZvcmNlX2R2aSBjaGVjayB0byBhIHNpbmdsZSBmdW5jdGlvbiB0aGF0IGNhbiBiZSBj
YWxsZWQgZnJvbQpib3RoIG1vZGUgdmFsaWRhdGlvbiBhbmQgY29tcHV0ZV9jb25maWcoKS4gTm90
ZSB0aGF0IGN1cnJlbnRseSB3ZQpkb24ndCBjYWxsIGl0IGZyb20gbW9kZSB2YWxpZGF0aW9uLCBi
dXQgdGhhdCB3aWxsIGNoYW5nZSBzb29uLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Nkdm8uYyB8IDIwICsrKysrKysrKysrKysrKy0tLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nkdm8uYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfc2R2by5jCmluZGV4IDAyMTE5YzgyN2M4MC4uMmQyYzVlMWM3
ZTdjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nkdm8u
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nkdm8uYwpAQCAtMTI2
NCw2ICsxMjY0LDEzIEBAIHN0YXRpYyB2b2lkIGk5eHhfYWRqdXN0X3Nkdm9fdHZfY2xvY2soc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnKQogCXBpcGVfY29uZmlnLT5jbG9ja19z
ZXQgPSB0cnVlOwogfQogCitzdGF0aWMgYm9vbCBpbnRlbF9oYXNfaGRtaV9zaW5rKHN0cnVjdCBp
bnRlbF9zZHZvICpzZHZvLAorCQkJCWNvbnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpj
b25uX3N0YXRlKQoreworCXJldHVybiBzZHZvLT5oYXNfaGRtaV9tb25pdG9yICYmCisJCVJFQURf
T05DRSh0b19pbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9zdGF0ZShjb25uX3N0YXRlKS0+Zm9yY2Vf
YXVkaW8pICE9IEhETUlfQVVESU9fT0ZGX0RWSTsKK30KKwogc3RhdGljIGludCBpbnRlbF9zZHZv
X2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQkJCSAgICAg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnLAogCQkJCSAgICAgc3RydWN0IGRy
bV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUpCkBAIC0xMzE5LDEyICsxMzI2LDE1IEBAIHN0
YXRpYyBpbnQgaW50ZWxfc2R2b19jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAq
ZW5jb2RlciwKIAlwaXBlX2NvbmZpZy0+cGl4ZWxfbXVsdGlwbGllciA9CiAJCWludGVsX3Nkdm9f
Z2V0X3BpeGVsX211bHRpcGxpZXIoYWRqdXN0ZWRfbW9kZSk7CiAKLQlpZiAoaW50ZWxfc2R2b19z
dGF0ZS0+YmFzZS5mb3JjZV9hdWRpbyAhPSBIRE1JX0FVRElPX09GRl9EVkkpCi0JCXBpcGVfY29u
ZmlnLT5oYXNfaGRtaV9zaW5rID0gaW50ZWxfc2R2by0+aGFzX2hkbWlfbW9uaXRvcjsKKwlwaXBl
X2NvbmZpZy0+aGFzX2hkbWlfc2luayA9IGludGVsX2hhc19oZG1pX3NpbmsoaW50ZWxfc2R2bywg
Y29ubl9zdGF0ZSk7CiAKLQlpZiAoaW50ZWxfc2R2b19zdGF0ZS0+YmFzZS5mb3JjZV9hdWRpbyA9
PSBIRE1JX0FVRElPX09OIHx8Ci0JICAgIChpbnRlbF9zZHZvX3N0YXRlLT5iYXNlLmZvcmNlX2F1
ZGlvID09IEhETUlfQVVESU9fQVVUTyAmJiBpbnRlbF9zZHZvLT5oYXNfaGRtaV9hdWRpbykpCi0J
CXBpcGVfY29uZmlnLT5oYXNfYXVkaW8gPSB0cnVlOworCWlmIChwaXBlX2NvbmZpZy0+aGFzX2hk
bWlfc2luaykgeworCQlpZiAoaW50ZWxfc2R2b19zdGF0ZS0+YmFzZS5mb3JjZV9hdWRpbyA9PSBI
RE1JX0FVRElPX0FVVE8pCisJCQlwaXBlX2NvbmZpZy0+aGFzX2F1ZGlvID0gaW50ZWxfc2R2by0+
aGFzX2hkbWlfYXVkaW87CisJCWVsc2UKKwkJCXBpcGVfY29uZmlnLT5oYXNfYXVkaW8gPQorCQkJ
CWludGVsX3Nkdm9fc3RhdGUtPmJhc2UuZm9yY2VfYXVkaW8gPT0gSERNSV9BVURJT19PTjsKKwl9
CiAKIAlpZiAoaW50ZWxfc2R2b19zdGF0ZS0+YmFzZS5icm9hZGNhc3RfcmdiID09IElOVEVMX0JS
T0FEQ0FTVF9SR0JfQVVUTykgewogCQkvKgotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
