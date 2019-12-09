Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 001CB116FCE
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 16:01:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 224EF6E491;
	Mon,  9 Dec 2019 15:01:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC81E6E491
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2019 15:01:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 07:01:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,296,1571727600"; d="scan'208";a="215114925"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 09 Dec 2019 07:01:38 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Dec 2019 17:01:37 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Dec 2019 17:01:36 +0200
Message-Id: <20191209150137.18578-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH xf86-video-intel 1/2] sna: Fix dirtyfb detection
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkZp
eCB0aGUgYWNjaWRlbnRhbGx5IHN3YXBwZWQgYnBwIGFuZCBkZXB0aCB2YWx1ZXMgcGFzc2VkIHRv
CnRoZSBhZGRmYiBpb2N0bCB3aGVuIHdlJ3JlIHRlc3RpbmcgZm9yIGRpcnR5ZmIgcHJlc2VuY2Uu
CkN1cnJlbnRseSB0aGUgYWRkZmIgZmFpbHMgZXZlcnkgdGltZSBzbyB3ZSBkb24ndCBldmVuIHRl
c3QKdGhlIGFjdHVhbCBkaXJ0eWZiIGlvY3RsLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBzcmMvc25hL2tnZW0uYyB8
IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9zcmMvc25hL2tnZW0uYyBiL3NyYy9zbmEva2dlbS5jCmluZGV4IDljMDcw
OGE2MzVmYi4uNmEzNTA2N2M0MTA3IDEwMDY0NAotLS0gYS9zcmMvc25hL2tnZW0uYworKysgYi9z
cmMvc25hL2tnZW0uYwpAQCAtMTUzOCw4ICsxNTM4LDggQEAgc3RhdGljIGJvb2wgdGVzdF9oYXNf
ZGlydHlmYihzdHJ1Y3Qga2dlbSAqa2dlbSkKIAljcmVhdGUud2lkdGggPSAzMjsKIAljcmVhdGUu
aGVpZ2h0ID0gMzI7CiAJY3JlYXRlLnBpdGNoID0gNCozMjsKLQljcmVhdGUuYnBwID0gMjQ7Ci0J
Y3JlYXRlLmRlcHRoID0gMzI7IC8qIHticHA6MjQsIGRlcHRoOjMyfSAtPiB4OHI4ZzhiOCAqLwor
CWNyZWF0ZS5icHAgPSAzMjsKKwljcmVhdGUuZGVwdGggPSAyNDsgLyoge2JwcDozMiwgZGVwdGg6
MjR9IC0+IHg4cjhnOGI4ICovCiAJY3JlYXRlLmhhbmRsZSA9IGdlbV9jcmVhdGUoa2dlbS0+ZmQs
IDEpOwogCWlmIChjcmVhdGUuaGFuZGxlID09IDApCiAJCXJldHVybiBmYWxzZTsKLS0gCjIuMjMu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
