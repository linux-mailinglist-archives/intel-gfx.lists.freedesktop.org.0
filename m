Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC92137AB73
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 18:06:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFC626EA80;
	Tue, 11 May 2021 16:06:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD78C6EA79
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 May 2021 16:06:33 +0000 (UTC)
IronPort-SDR: GUs5fv3r2lvFVMw5DxEeZxE8UuvmW+cjOf7UzcEA6iQMtlIfV+PQ9d47q0Mmin4k/ba3ZP/f+d
 BPuU2ZRABpNw==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="284972519"
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="284972519"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 09:06:32 -0700
IronPort-SDR: AMemOc+/hIOX9/v45xQgO+mqPidQ/vfN7mlps/arJKQH+sIbUCS3jnJ6qUqLMUIRrCsWvIDzcg
 4Ocoo6gREoyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="537084840"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 11 May 2021 09:06:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 May 2021 19:06:28 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 May 2021 19:05:31 +0300
Message-Id: <20210511160532.21446-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210511160532.21446-1-ville.syrjala@linux.intel.com>
References: <20210511160532.21446-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/6] drm/i915: Move the TMDS clock division into
 intel_hdmi_mode_clock_valid()
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
Cc: Werner Sembach <wse@tuxedocomputers.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk5v
dyB0aGF0IHdlIGhhdmUgdG8gdGVsbCBpbnRlbF9oZG1pX21vZGVfY2xvY2tfdmFsaWQoKSB3aGV0
aGVyCndlJ3JlIGFza2luZyBhYm91dCA0OjQ6NCBvciA0OjI6MCBvdXRwdXQgaXQgY2FuIHRha2Ug
Y2FyZSBvZgp0aGUgZG90Y2xvY2stPlRNRFMgY2xvY2sgY29udmVyc2lvbi4KCkNjOiBXZXJuZXIg
U2VtYmFjaCA8d3NlQHR1eGVkb2NvbXB1dGVycy5jb20+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgfCA2ICsrKy0tLQogMSBmaWxlIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfaGRtaS5jCmluZGV4IDg3NGZiODk3MDA1YS4uODBlMmFlNjUyZjZlIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYwpAQCAtMTkwNyw2ICsxOTA3
LDkgQEAgaW50ZWxfaGRtaV9tb2RlX2Nsb2NrX3ZhbGlkKHN0cnVjdCBkcm1fY29ubmVjdG9yICpj
b25uZWN0b3IsIGludCBjbG9jaywKIAlzdHJ1Y3QgaW50ZWxfaGRtaSAqaGRtaSA9IGludGVsX2F0
dGFjaGVkX2hkbWkodG9faW50ZWxfY29ubmVjdG9yKGNvbm5lY3RvcikpOwogCWVudW0gZHJtX21v
ZGVfc3RhdHVzIHN0YXR1czsKIAorCWlmICh5Y2JjcjQyMF9vdXRwdXQpCisJCWNsb2NrIC89IDI7
CisKIAkvKiBjaGVjayBpZiB3ZSBjYW4gZG8gOGJwYyAqLwogCXN0YXR1cyA9IGhkbWlfcG9ydF9j
bG9ja192YWxpZChoZG1pLCBpbnRlbF9oZG1pX3BvcnRfY2xvY2soY2xvY2ssIDgpLAogCQkJCSAg
ICAgICB0cnVlLCBoYXNfaGRtaV9zaW5rKTsKQEAgLTE5NTcsOCArMTk2MCw2IEBAIGludGVsX2hk
bWlfbW9kZV92YWxpZChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAogCX0KIAogCXlj
YmNyXzQyMF9vbmx5ID0gZHJtX21vZGVfaXNfNDIwX29ubHkoJmNvbm5lY3Rvci0+ZGlzcGxheV9p
bmZvLCBtb2RlKTsKLQlpZiAoeWNiY3JfNDIwX29ubHkpCi0JCWNsb2NrIC89IDI7CiAKIAlzdGF0
dXMgPSBpbnRlbF9oZG1pX21vZGVfY2xvY2tfdmFsaWQoY29ubmVjdG9yLCBjbG9jaywgaGFzX2hk
bWlfc2luaywgeWNiY3JfNDIwX29ubHkpOwogCWlmIChzdGF0dXMgIT0gTU9ERV9PSykgewpAQCAt
MTk2Nyw3ICsxOTY4LDYgQEAgaW50ZWxfaGRtaV9tb2RlX3ZhbGlkKHN0cnVjdCBkcm1fY29ubmVj
dG9yICpjb25uZWN0b3IsCiAJCSAgICAhZHJtX21vZGVfaXNfNDIwX2Fsc28oJmNvbm5lY3Rvci0+
ZGlzcGxheV9pbmZvLCBtb2RlKSkKIAkJCXJldHVybiBzdGF0dXM7CiAKLQkJY2xvY2sgLz0gMjsK
IAkJc3RhdHVzID0gaW50ZWxfaGRtaV9tb2RlX2Nsb2NrX3ZhbGlkKGNvbm5lY3RvciwgY2xvY2ss
IGhhc19oZG1pX3NpbmssIHRydWUpOwogCQlpZiAoc3RhdHVzICE9IE1PREVfT0spCiAJCQlyZXR1
cm4gc3RhdHVzOwotLSAKMi4yNi4zCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
