Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CA4AA50A
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 15:50:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28C846E0F0;
	Thu,  5 Sep 2019 13:50:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EB3E6E0F0
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2019 13:50:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 06:50:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,470,1559545200"; d="scan'208";a="184239603"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 05 Sep 2019 06:50:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 05 Sep 2019 16:50:44 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Sep 2019 16:50:43 +0300
Message-Id: <20190905135044.2001-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Bump skl+ max plane width to 5k
 for linear/x-tiled
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
Cc: Leho Kraav <leho@kraav.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBvZmZpY2lhbGx5IHZhbGlkYXRlZCBwbGFuZSB3aWR0aCBsaW1pdCBpcyA0ayBvbiBza2wrLCBo
b3dldmVyCndlIGFscmVhZHkgaGFkIHBlb3BsZSB1c2luZyA1ayBkaXNwbGF5cyBiZWZvcmUgd2Ug
c3RhcnRlZCB0byBlbmZvcmNlCnRoZSBsaW1pdC4gQWxzbyBpdCBzZWVtcyBXaW5kb3dzIGFsbG93
cyA1ayByZXNvbHV0aW9ucyBhcyB3ZWxsCih0aG91Z2ggbm90IHN1cmUgaWYgdGhleSBkbyBpdCB3
aXRoIG9uZSBwbGFuZSBvciB0d28pLgoKQWNjb3JkaW5nIHRvIGh3IGZvbGtzIDVrIHNob3VsZCB3
b3JrIHdpdGggdGhlIHBvc3NpYmxlCmV4Y2VwdGlvbiBvZiB0aGUgZm9sbG93aW5nIGZlYXR1cmVz
OgotIFl0aWxlIChhbHJlYWR5IGxpbWl0ZWQgdG8gNGspCi0gRlAxNiAoYWxyZWFkeSBsaW1pdGVk
IHRvIDRrKQotIHJlbmRlciBjb21wcmVzc2lvbiAoYWxyZWFkeSBsaW1pdGVkIHRvIDRrKQotIEtW
TVIgc3ByaXRlIGFuZCBjdXJzb3IgKGRvbid0IGNhcmUpCi0gaG9yaXpvbnRhbCBwYW5uaW5nIChu
ZWVkIHRvIHZlcmlmeSB0aGlzKQotIHBpcGUgYW5kIHBsYW5lIHNjYWxpbmcgKG5lZWQgdG8gdmVy
aWZ5IHRoaXMpCgpTbyBhcGFydCBmcm9tIGxhc3QgdHdvIGl0ZW1zIG9uIHRoYXQgbGlzdCB3ZSBh
cmUgYWxyZWFkeQpmaW5lLiBXZSBzaG91bGQgcmVhbGx5IHZlcmlmeSB3aGF0IGhhcHBlbnMgd2l0
aCB0aG9zZSBsYXN0CnR3byBpdGVtcyBidXQgSSBkb24ndCBoYXZlIGEgNWsgZGlzcGxheSBvbiBo
YW5kIGF0bSBzbyBpdCdsbApoYXZlIHRvIHdhaXQuCgpJbiB0aGUgbWVhbnRpbWUgbGV0J3MganVz
dCBidW1wIHRoZSBsaW1pdCBiYWNrIHVwIHRvIDVrIHNpbmNlCnNldmVyYWwgdXNlcnMgaGF2ZSBh
bHJlYWR5IGJlZW4gdXNpbmcgaXQgd2l0aG91dCBhcHBhcmVudCBpc3N1ZXMuCkF0IGxlYXN0IHdl
J2xsIGJlIG5vIHdvcnNlIG9mZiB0aGFuIHdlIHdlcmUgcHJpb3IgdG8gbG93ZXJpbmcKdGhlIGxp
bWl0cy4KCkNjOiBMZWhvIEtyYWF2IDxsZWhvQGtyYWF2LmNvbT4KQ2M6IFNlYW4gUGF1bCA8c2Vh
bkBwb29ybHkucnVuPgpDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRl
bC5jb20+CkZpeGVzOiAzNzJiOWZmYjU3OTkgKCJkcm0vaTkxNTogRml4IHNrbCsgbWF4IHBsYW5l
IHdpZHRoIikKQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTExMTUwMQpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jIHwgMTUgKysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgMTQgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggMDZjZjIxNzE0NzRkLi40ZTYzMzQyZWE1OTcgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0zMjgyLDcg
KzMyODIsMjAgQEAgc3RhdGljIGludCBza2xfbWF4X3BsYW5lX3dpZHRoKGNvbnN0IHN0cnVjdCBk
cm1fZnJhbWVidWZmZXIgKmZiLAogCXN3aXRjaCAoZmItPm1vZGlmaWVyKSB7CiAJY2FzZSBEUk1f
Rk9STUFUX01PRF9MSU5FQVI6CiAJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWF9USUxFRDoKLQkJcmV0
dXJuIDQwOTY7CisJCS8qCisJCSAqIFZhbGlkYXRlZCBsaW1pdCBpcyA0aywgYnV0IGhhcyA1ayBz
aG91bGQKKwkJICogd29yayBhcGFydCBmcm9tIHRoZSBmb2xsb3dpbmcgZmVhdHVyZXM6CisJCSAq
IC0gWXRpbGUgKGFscmVhZHkgbGltaXRlZCB0byA0aykKKwkJICogLSBGUDE2IChhbHJlYWR5IGxp
bWl0ZWQgdG8gNGspCisJCSAqIC0gcmVuZGVyIGNvbXByZXNzaW9uIChhbHJlYWR5IGxpbWl0ZWQg
dG8gNGspCisJCSAqIC0gS1ZNUiBzcHJpdGUgYW5kIGN1cnNvciAoZG9uJ3QgY2FyZSkKKwkJICog
LSBob3Jpem9udGFsIHBhbm5pbmcgKFRPRE8gdmVyaWZ5IHRoaXMpCisJCSAqIC0gcGlwZSBhbmQg
cGxhbmUgc2NhbGluZyAoVE9ETyB2ZXJpZnkgdGhpcykKKwkJICovCisJCWlmIChjcHAgPT0gOCkK
KwkJCXJldHVybiA0MDk2OworCQllbHNlCisJCQlyZXR1cm4gNTEyMDsKIAljYXNlIEk5MTVfRk9S
TUFUX01PRF9ZX1RJTEVEX0NDUzoKIAljYXNlIEk5MTVfRk9STUFUX01PRF9ZZl9USUxFRF9DQ1M6
CiAJCS8qIEZJWE1FIEFVWCBwbGFuZT8gKi8KLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
