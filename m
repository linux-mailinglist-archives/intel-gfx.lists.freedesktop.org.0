Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2302EB7F22
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 18:31:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 766D16F53D;
	Thu, 19 Sep 2019 16:31:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 715E26F53D
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 16:31:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 09:31:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,524,1559545200"; d="scan'208";a="188138319"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 19 Sep 2019 09:31:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Sep 2019 19:31:33 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Sep 2019 19:30:59 +0300
Message-Id: <20190919163113.17402-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190919163113.17402-1-ville.syrjala@linux.intel.com>
References: <20190919163113.17402-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH xf86-video-intel 07/21] sna/fb: Eliminate
 implicit fallthrough
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkR1
cGxpY2F0ZSBhIGJpdCBvZiBjb2RlIGluIEZiRG9MZWZ0TWFza0J5dGVSUm9wKCkgc3dpdGNoIHN0
YXRlbWVudAp0byBhdm9pZCB0aGUgZmFsbCB0aHJvdWdoLgoKQW5kIHdoaWxlIGF0IGl0IHNvcnQg
dGhlIGNhc2VzIGJhc2VkIG9uIHRoZSBsZWZ0IGJ5dGUgYW5kIGxlbmd0aC4KTWFrZXMgdGhlIHBh
dHRlcm4gbWF0Y2hlciBpbiBteSBicmFpbiBtdWNoIGhhcHBpZXIuCgpTaWduZWQtb2ZmLWJ5OiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIHNyYy9z
bmEvZmIvZmIuaCB8IDYgKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy9zbmEvZmIvZmIuaCBiL3NyYy9zbmEvZmIv
ZmIuaAppbmRleCA5MDQzMTc0NzhlOGEuLmVlNWRhOTdiNDU4YyAxMDA2NDQKLS0tIGEvc3JjL3Nu
YS9mYi9mYi5oCisrKyBiL3NyYy9zbmEvZmIvZmIuaApAQCAtMTg1LDExICsxODUsMTMgQEAgdHlw
ZWRlZiBpbnQgRmJTdHJpZGU7CiAJRmJTdG9yZVBhcnQoZHN0LHNpemVvZiAoRmJCaXRzKSAtIDMs
Q0FSRDgseG9yKTsgXAogCUZiU3RvcmVQYXJ0KGRzdCxzaXplb2YgKEZiQml0cykgLSAyLENBUkQ4
LHhvcik7IFwKIAlicmVhazsgXAorICAgIGNhc2Ugc2l6ZW9mIChGYkJpdHMpIC0gMzogXAorCUZi
U3RvcmVQYXJ0KGRzdCxzaXplb2YgKEZiQml0cykgLSAzLENBUkQ4LHhvcik7IFwKKwlGYlN0b3Jl
UGFydChkc3Qsc2l6ZW9mIChGYkJpdHMpIC0gMixDQVJEMTYseG9yKTsgXAorCWJyZWFrOyBcCiAg
ICAgY2FzZSAoc2l6ZW9mIChGYkJpdHMpIC0gMikgfCAoMSA8PCAoRkJfU0hJRlQgLSAzKSk6IFwK
IAlGYlN0b3JlUGFydChkc3Qsc2l6ZW9mIChGYkJpdHMpIC0gMixDQVJEOCx4b3IpOyBcCiAJYnJl
YWs7IFwKLSAgICBjYXNlIHNpemVvZiAoRmJCaXRzKSAtIDM6IFwKLQlGYlN0b3JlUGFydChkc3Qs
c2l6ZW9mIChGYkJpdHMpIC0gMyxDQVJEOCx4b3IpOyBcCiAgICAgY2FzZSBzaXplb2YgKEZiQml0
cykgLSAyOiBcCiAJRmJTdG9yZVBhcnQoZHN0LHNpemVvZiAoRmJCaXRzKSAtIDIsQ0FSRDE2LHhv
cik7IFwKIAlicmVhazsgXAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
