Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D7B10D9BE
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 19:54:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFBA86E9E7;
	Fri, 29 Nov 2019 18:54:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB7456E9E7
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 18:54:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Nov 2019 10:54:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,258,1571727600"; d="scan'208";a="261589874"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 29 Nov 2019 10:54:35 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Nov 2019 20:54:34 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Nov 2019 20:54:25 +0200
Message-Id: <20191129185434.25549-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/9] drm/i915: i915_display_info cleanup
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk5v
dyB0aGF0IGlndCBubyBsb25nZXIgcGFyc2VzIHRoZSBkaXNwbGF5X2luZm8gZnJvbSBkZWJ1Z2Zz
IHdlIGNhbgphY3R1YWxseSBtYWtlIGl0IGEgYml0IG1vcmUgc2FuZS4gSSBhbHJlYWR5IHBvc3Rl
ZCB0aGUgZmlyc3QgZml2ZQpwYXRjaGVzIG9uY2UsIGJ1dCBJIGFkZGVkIGEgYml0IG1vcmUgb24g
dG9wIGZvciB0aGUgaHcgdnMuIHVhcGkKc3BsaXQgKG5vdyB3ZSB0cnkgdG8gZHVtcCBib3RoKS4g
QW5kIEkgYWxzbyB0b29rIHRoZSBvcHBvcnR1bml0eSB0bwpzdGFydCB3ZWFyaW5nIGRvd24gdGhl
IGxlZ2FjeSBlbmNvZGVyLT5jcnRjIGFuZCBjb25uZWN0b3ItPmVuY29kZXIKcG9pbnRlcnMuCgpW
aWxsZSBTeXJqw6Rsw6QgKDkpOgogIGRybS9pOTE1OiBVc2UgZHJtX3JlY3QgdG8gc2ltcGxpZnkg
cGxhbmUge2NydGMsc3JjfV97eCx5LHcsaH0gcHJpbnRpbmcKICBkcm0vaTkxNTogU3dpdGNoIHRv
IGludGVsXyB0eXBlcyBpbiBkZWJ1Z2ZzIGRpc3BsYXlfaW5mbwogIGRybS9pOTE1OiBSZW9yZ2Fu
aXplIHBsYW5lL2ZiIGR1bXAgaW4gZGVidWdmcwogIGRybS9pOTE1OiBSZWZhY3RvciBkZWJ1Z2Zz
IGRpc3BsYXkgaW5mbyBjb2RlCiAgZHJtL2k5MTU6IER1bXAgdGhlIG1vZGUgZm9yIHRoZSBjcnRj
IGp1c3QgdGhlIG9uY2UKICBkcm0vaTkxNTogVXNlIGRybV9tb2Rlc2V0X2xvY2tfYWxsKCkgaW4g
ZGVidWdmcyBkaXNwbGF5IGluZm8KICBkcm0vaTkxNTogVXNlIHRoZSBjYW5vbmljYWwgW0NSVEM6
JWQ6JXNdL2V0Yy4gZm9ybWF0IGluCiAgICBpOTE1X2Rpc3BsYXlfaW5mbwogIGRybS9pOTE1OiBE
dW1wIGJvdGggdGhlIHVhcGkgYW5kIGh3IHN0YXRlcyBmb3IgY3J0Y3MgYW5kIHBsYW5lcwogIGRy
bS9pOTE1OiBTdG9wIHVzaW5nIGNvbm5lY3Rvci0+ZW5jb2RlciBhbmQgZW5jb2Rlci0+Y3J0YyBs
aW5rcyBpbgogICAgaTkxNV9kaXNwbGF5X2luZm8KCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuaCB8ICAgNyArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rl
YnVnZnMuYyAgICAgICAgICB8IDI4MiArKysrKysrKysrLS0tLS0tLS0tCiAyIGZpbGVzIGNoYW5n
ZWQsIDE1MCBpbnNlcnRpb25zKCspLCAxMzkgZGVsZXRpb25zKC0pCgotLSAKMi4yMy4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
