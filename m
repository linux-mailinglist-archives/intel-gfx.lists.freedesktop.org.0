Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 972CAE7236
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 13:58:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 004BD6E857;
	Mon, 28 Oct 2019 12:58:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 238736E857
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 12:58:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 05:58:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,240,1569308400"; d="scan'208";a="193247332"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 28 Oct 2019 05:58:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 28 Oct 2019 14:58:42 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Oct 2019 14:58:42 +0200
Message-Id: <20191028125842.29590-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH xf86-video-intel] sna/video/overlay: Declare
 support for depth 8 and 30
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFk
ZCA4IGFuZCAzMCB0byB0aGUgbGlzdCBvZiBzdXBwb3J0ZWQgc2NyZWVuIGRlcHRocy4gVGhlIGNv
bG9ya2V5Cm1hc3NhZ2luZyB3aWxsIGJlIGhhbmRsZWQgYnkgdGhlIGtlcm5lbCBzbyB3ZSBkb24n
dCBoYXZlIHRvIHdvcnJ5CmFib3V0IGl0IHVubGlrZSB3aXRoIHRoZSBzcHJpdGUgY29sb3JrZXkg
dWFwaS4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+Ci0tLQogc3JjL3NuYS9zbmFfdmlkZW9fb3ZlcmxheS5jIHwgMiArKwogMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3NyYy9zbmEvc25hX3Zp
ZGVvX292ZXJsYXkuYyBiL3NyYy9zbmEvc25hX3ZpZGVvX292ZXJsYXkuYwppbmRleCA3YzdiYjQ4
MzM2NjIuLjA3OTY0ODcxOWJjYyAxMDA2NDQKLS0tIGEvc3JjL3NuYS9zbmFfdmlkZW9fb3Zlcmxh
eS5jCisrKyBiL3NyYy9zbmEvc25hX3ZpZGVvX292ZXJsYXkuYwpAQCAtNTcsOSArNTcsMTEgQEAg
c3RhdGljIEF0b20geHZHYW1tYTAsIHh2R2FtbWExLCB4dkdhbW1hMiwgeHZHYW1tYTMsIHh2R2Ft
bWE0LCB4dkdhbW1hNTsKICNkZWZpbmUgSU1BR0VfTUFYX0hFSUdIVF9MRUdBQ1kJMTA4OAogCiBz
dGF0aWMgWHZGb3JtYXRSZWMgRm9ybWF0c1tdID0geworCXsgLmRlcHRoID0gOCwgfSwKIAl7IC5k
ZXB0aCA9IDE1LCB9LAogCXsgLmRlcHRoID0gMTYsIH0sCiAJeyAuZGVwdGggPSAyNCwgfSwKKwl7
IC5kZXB0aCA9IDMwLCB9LAogfTsKIAogc3RhdGljIGNvbnN0IFh2QXR0cmlidXRlUmVjIEF0dHJp
YnV0ZXNbXSA9IHsKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
