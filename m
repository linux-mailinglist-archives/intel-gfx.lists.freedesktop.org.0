Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95424EB582
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 17:57:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E23266ED5E;
	Thu, 31 Oct 2019 16:56:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF9DE6ED42
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2019 16:56:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 09:56:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,252,1569308400"; d="scan'208";a="283947607"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 31 Oct 2019 09:56:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Oct 2019 18:56:52 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Oct 2019 18:56:45 +0200
Message-Id: <20191031165652.10868-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/7] drm/i915: Expose more formats
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClNh
bWUgc2VyaWVzIGFzIGJlZm9yZSBidXQgZnAxNiBjYXVzZWQgYSBidW5jaCBvZiByZWJhc2luZy4K
CkkgYWxzbyBkcm9wcGVkIHRoZSBja2V5IHN0dWZmIGZvciBub3cuIEl0J3MgcHJvYmFibHkgdGlt
ZSB0bwp3cml0ZSBhY3R1YWwgdGVzdHMgZm9yIHRoYXQgc3R1ZmYuCgpFdmVyeXRoaW5nIGhlcmUg
aXMgcmV2aWV3ZWQgYWxyZWFkeS4KClZpbGxlIFN5cmrDpGzDpCAoNyk6CiAgZHJtL2k5MTU6IEV4
cG9zZSAxMDoxMDoxMCBYUkdCIGZvcm1hdHMgb24gU05CLUJEVyBzcHJpdGVzCiAgZHJtL2k5MTU6
IEV4cG9zZSBhbHBoYSBmb3JtYXRzIG9uIFZMVi9DSFYgcHJpbWFyeSBwbGFuZXMKICBkcm0vaTkx
NTogQWRkIG1pc3NpbmcgMTBicGMgZm9ybWF0cyBmb3IgcGlwZSBCIHNwcml0ZXMgb24gQ0hWCiAg
ZHJtL2k5MTU6IEV4cG9zZSBDOCBvbiBWTFYvQ0hWIHNwcml0ZSBwbGFuZXMKICBkcm0vaTkxNTog
QWRkIDEwYnBjIGZvcm1hdHMgd2l0aCBhbHBoYSBmb3IgaWNsKwogIGRybS9pOTE1OiBTb3J0IGZv
cm1hdCBhcnJheXMgY29uc2lzdGVudGx5CiAgZHJtL2k5MTU6IEVsaW1pbmF0ZSByZWR1bmRhbmN5
IGluIGludGVsX3ByaW1hcnlfcGxhbmVfY3JlYXRlKCkKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDEyMSArKysrKysrKysrKysrLS0tLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jICB8ICA2OSArKysrKysrKysrLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgfCAgMTYgKystCiAz
IGZpbGVzIGNoYW5nZWQsIDE2MSBpbnNlcnRpb25zKCspLCA0NSBkZWxldGlvbnMoLSkKCi0tIAoy
LjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
