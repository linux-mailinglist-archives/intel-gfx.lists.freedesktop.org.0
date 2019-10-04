Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D5CCBCEA
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 16:19:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BF946EBA5;
	Fri,  4 Oct 2019 14:19:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C35896EBA5;
 Fri,  4 Oct 2019 14:19:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Oct 2019 07:19:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,256,1566889200"; d="scan'208";a="205867245"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 04 Oct 2019 07:19:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 04 Oct 2019 17:19:14 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Fri,  4 Oct 2019 17:19:11 +0300
Message-Id: <20191004141914.20600-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/edid: Make drm_get_cea_aspect_ratio()
 static
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
Cc: intel-gfx@lists.freedesktop.org, Wayne Lin <waynelin@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCmRy
bV9nZXRfY2VhX2FzcGVjdF9yYXRpbygpIGlzIG5vdCB1c2VkIG91dHNpZGUgZHJtX2VkaWQuYy4K
TWFrZSBpdCBzdGF0aWMuCgpDYzogV2F5bmUgTGluIDx3YXluZWxpbkBhbWQuY29tPgpTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jIHwgMTAgKy0tLS0tLS0tLQogaW5jbHVkZS9k
cm0vZHJtX2VkaWQuaCAgICAgfCAgMSAtCiAyIGZpbGVzIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2VkaWQu
YyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jCmluZGV4IDA1NTIxNzUzMTNjYi4uM2RmODI2
N2FkYWI5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYwpAQCAtMzIwNSwxOCArMzIwNSwxMCBAQCBzdGF0aWMgYm9v
bCBkcm1fdmFsaWRfY2VhX3ZpYyh1OCB2aWMpCiAJcmV0dXJuIHZpYyA+IDAgJiYgdmljIDwgQVJS
QVlfU0laRShlZGlkX2NlYV9tb2Rlcyk7CiB9CiAKLS8qKgotICogZHJtX2dldF9jZWFfYXNwZWN0
X3JhdGlvIC0gZ2V0IHRoZSBwaWN0dXJlIGFzcGVjdCByYXRpbyBjb3JyZXNwb25kaW5nIHRvCi0g
KiB0aGUgaW5wdXQgVklDIGZyb20gdGhlIENFQSBtb2RlIGxpc3QKLSAqIEB2aWRlb19jb2RlOiBJ
RCBnaXZlbiB0byBlYWNoIG9mIHRoZSBDRUEgbW9kZXMKLSAqCi0gKiBSZXR1cm5zIHBpY3R1cmUg
YXNwZWN0IHJhdGlvCi0gKi8KLWVudW0gaGRtaV9waWN0dXJlX2FzcGVjdCBkcm1fZ2V0X2NlYV9h
c3BlY3RfcmF0aW8oY29uc3QgdTggdmlkZW9fY29kZSkKK3N0YXRpYyBlbnVtIGhkbWlfcGljdHVy
ZV9hc3BlY3QgZHJtX2dldF9jZWFfYXNwZWN0X3JhdGlvKGNvbnN0IHU4IHZpZGVvX2NvZGUpCiB7
CiAJcmV0dXJuIGVkaWRfY2VhX21vZGVzW3ZpZGVvX2NvZGVdLnBpY3R1cmVfYXNwZWN0X3JhdGlv
OwogfQotRVhQT1JUX1NZTUJPTChkcm1fZ2V0X2NlYV9hc3BlY3RfcmF0aW8pOwogCiAvKgogICog
Q2FsY3VsYXRlIHRoZSBhbHRlcm5hdGUgY2xvY2sgZm9yIEhETUkgbW9kZXMgKHRob3NlIGZyb20g
dGhlIEhETUkgdmVuZG9yCmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fZWRpZC5oIGIvaW5j
bHVkZS9kcm0vZHJtX2VkaWQuaAppbmRleCBiOTcxOTQxOGMzZDIuLmVmY2U2NzVhYmYwNyAxMDA2
NDQKLS0tIGEvaW5jbHVkZS9kcm0vZHJtX2VkaWQuaAorKysgYi9pbmNsdWRlL2RybS9kcm1fZWRp
ZC5oCkBAIC00ODEsNyArNDgxLDYgQEAgaW50IGRybV9hZGRfZWRpZF9tb2RlcyhzdHJ1Y3QgZHJt
X2Nvbm5lY3RvciAqY29ubmVjdG9yLCBzdHJ1Y3QgZWRpZCAqZWRpZCk7CiBpbnQgZHJtX2FkZF9v
dmVycmlkZV9lZGlkX21vZGVzKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpOwogCiB1
OCBkcm1fbWF0Y2hfY2VhX21vZGUoY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKnRvX21h
dGNoKTsKLWVudW0gaGRtaV9waWN0dXJlX2FzcGVjdCBkcm1fZ2V0X2NlYV9hc3BlY3RfcmF0aW8o
Y29uc3QgdTggdmlkZW9fY29kZSk7CiBib29sIGRybV9kZXRlY3RfaGRtaV9tb25pdG9yKHN0cnVj
dCBlZGlkICplZGlkKTsKIGJvb2wgZHJtX2RldGVjdF9tb25pdG9yX2F1ZGlvKHN0cnVjdCBlZGlk
ICplZGlkKTsKIGVudW0gaGRtaV9xdWFudGl6YXRpb25fcmFuZ2UKLS0gCjIuMjEuMAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
