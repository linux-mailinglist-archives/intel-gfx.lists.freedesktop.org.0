Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDABED2CDE
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 16:51:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27D166E375;
	Thu, 10 Oct 2019 14:51:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4959F6E375
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2019 14:51:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 07:51:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,280,1566889200"; d="scan'208";a="184436313"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 10 Oct 2019 07:51:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Oct 2019 17:51:32 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Oct 2019 17:51:25 +0300
Message-Id: <20191010145127.7487-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191010145127.7487-1-ville.syrjala@linux.intel.com>
References: <20191010145127.7487-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915: Remove dead weight from
 hdcp2_msg_timeout[]
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSAucmVhZF8yXzIoKSBob29rcyBpcyBuZXZlciBjYWxsZWQgZm9yIGFueSBvZiB0aGUgbWVzc2Fn
ZQp0eXBlcyB3aXRoIGEgemVybyB0aW1lb3V0LiBTbyBpdCdzIGFsbCBqdXN0IGRlYWQgd2VpZ2h0
IHdoaWNoCndlIGNhbiBjaHVjay4KCiAgICB0ZXh0CSAgIGRhdGEJICAgIGJzcwkgICAgZGVjCSAg
ICBoZXgJZmlsZW5hbWUKLSAgMzQ3MDEJICAgIDM2MAkgICAgICAwCSAgMzUwNjEJICAgODhmNQlp
bnRlbF9oZG1pLm8KKyAgMzQ2MzMJICAgIDM2MAkgICAgICAwCSAgMzQ5OTMJICAgODhiMQlpbnRl
bF9oZG1pLm8KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9o
ZG1pLmMgfCA3IC0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMKaW5kZXggMTNjNTg4YWU4OGE0Li44
YTU3NGJlODZiYzYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfaGRtaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5j
CkBAIC0xNTM0LDE5ICsxNTM0LDEyIEBAIHN0cnVjdCBoZGNwMl9oZG1pX21zZ190aW1lb3V0IHsK
IH07CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaGRjcDJfaGRtaV9tc2dfdGltZW91dCBoZGNwMl9t
c2dfdGltZW91dFtdID0gewotCXsgSERDUF8yXzJfQUtFX0lOSVQsIDAsIDAgfSwKIAl7IEhEQ1Bf
Ml8yX0FLRV9TRU5EX0NFUlQsIEhEQ1BfMl8yX0NFUlRfVElNRU9VVF9NUywgMCB9LAotCXsgSERD
UF8yXzJfQUtFX05PX1NUT1JFRF9LTSwgMCwgMCB9LAotCXsgSERDUF8yXzJfQUtFX1NUT1JFRF9L
TSwgMCwgMCB9LAogCXsgSERDUF8yXzJfQUtFX1NFTkRfSFBSSU1FLCBIRENQXzJfMl9IUFJJTUVf
UEFJUkVEX1RJTUVPVVRfTVMsCiAJICBIRENQXzJfMl9IUFJJTUVfTk9fUEFJUkVEX1RJTUVPVVRf
TVMgfSwKIAl7IEhEQ1BfMl8yX0FLRV9TRU5EX1BBSVJJTkdfSU5GTywgSERDUF8yXzJfUEFJUklO
R19USU1FT1VUX01TLCAwIH0sCi0JeyBIRENQXzJfMl9MQ19JTklULCAwLCAwIH0sCiAJeyBIRENQ
XzJfMl9MQ19TRU5EX0xQUklNRSwgSERDUF8yXzJfSERNSV9MUFJJTUVfVElNRU9VVF9NUywgMCB9
LAotCXsgSERDUF8yXzJfU0tFX1NFTkRfRUtTLCAwLCAwIH0sCiAJeyBIRENQXzJfMl9SRVBfU0VO
RF9SRUNWSURfTElTVCwgSERDUF8yXzJfUkVDVklEX0xJU1RfVElNRU9VVF9NUywgMCB9LAotCXsg
SERDUF8yXzJfUkVQX1NFTkRfQUNLLCAwLCAwIH0sCi0JeyBIRENQXzJfMl9SRVBfU1RSRUFNX01B
TkFHRSwgMCwgMCB9LAogCXsgSERDUF8yXzJfUkVQX1NUUkVBTV9SRUFEWSwgSERDUF8yXzJfU1RS
RUFNX1JFQURZX1RJTUVPVVRfTVMsIDAgfSwKIH07CiAKLS0gCjIuMjEuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
