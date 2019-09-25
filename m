Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D94BDFCE
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 16:15:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0DDB6EBCF;
	Wed, 25 Sep 2019 14:15:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75601891D6
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 14:15:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 07:15:38 -0700
X-ExtLoopCount2: 2 from 10.237.72.174
X-IronPort-AV: E=Sophos;i="5.64,548,1559545200"; d="scan'208";a="201259353"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 25 Sep 2019 07:15:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Sep 2019 17:15:35 +0300
Resent-From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Resent-Date: Wed, 25 Sep 2019 17:15:35 +0300
Resent-Message-ID: <20190925141535.GF1208@intel.com>
Resent-To: intel-gfx@lists.freedesktop.org
X-Original-To: ville.syrjala@linux.intel.com
Delivered-To: ville.syrjala@linux.intel.com
Received: from linux.intel.com [10.54.29.200]
 by stinkbox.fi.intel.com with IMAP (fetchmail-6.3.26)
 for <vsyrjala@localhost> (single-drop); Wed, 25 Sep 2019 17:01:57 +0300 (EEST)
Received: from orsmga007.jf.intel.com (orsmga007.jf.intel.com [10.7.209.58])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 2077B5802B1
 for <ville.syrjala@linux.intel.com>; Wed, 25 Sep 2019 06:55:20 -0700 (PDT)
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,548,1559545200"; d="scan'208";a="179820406"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 25 Sep 2019 06:55:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Sep 2019 16:55:16 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 25 Sep 2019 16:55:02 +0300
Message-Id: <20190925135502.24055-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190925135502.24055-1-ville.syrjala@linux.intel.com>
References: <20190925135502.24055-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 4/4] drm/edid: Make sure the CEA mode arrays
 have the correct amount of modes
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
Cc: intel-gfc@freedesktop.org, Hans Verkuil <hansverk@cisco.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IGRlcGVuZCBvbiBhIHNwZWNpZmljIHJlbGF0aW9uc2hpcCBiZXR3ZWVuIHRoZSBWSUMgbnVtYmVy
IGFuZCB0aGUKaW5kZXggaW4gdGhlIENFQSBtb2RlIGFycmF5cy4gQXNzZXJ0IHRoYXQgdGhlIGFy
cmF5cyBoYXZlIHRoZSBleGNwZWN0ZWQKc2l6ZSB0byBtYWtlIHN1cmUgd2UndmUgbm90IGFjY2lk
ZW50YWxseSBsZWZ0IGhvbGVzIGluIHRoZW0uCgp2MjogUGltcCB0aGUgQlVJTERfQlVHX09OKClz
CgpDYzogSGFucyBWZXJrdWlsIDxoYW5zdmVya0BjaXNjby5jb20+CkNjOiBTaGFzaGFuayBTaGFy
bWEgPHNoYXNoYW5rLnNoYXJtYUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2RybV9lZGlkLmMgfCAzICsrKwogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jIGIvZHJpdmVycy9ncHUvZHJtL2Ry
bV9lZGlkLmMKaW5kZXggMDAwNzAwNGQzMjIxLi4wNmNhYzhlMmFmYzIgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5j
CkBAIC0zMjA5LDYgKzMyMDksOSBAQCBzdGF0aWMgdTggKmRybV9maW5kX2NlYV9leHRlbnNpb24o
Y29uc3Qgc3RydWN0IGVkaWQgKmVkaWQpCiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3Bs
YXlfbW9kZSAqY2VhX21vZGVfZm9yX3ZpYyh1OCB2aWMpCiB7CisJQlVJTERfQlVHX09OKDEgKyBB
UlJBWV9TSVpFKGVkaWRfY2VhX21vZGVzXzEpIC0gMSAhPSAxMjcpOworCUJVSUxEX0JVR19PTigx
OTMgKyBBUlJBWV9TSVpFKGVkaWRfY2VhX21vZGVzXzE5MykgLSAxICE9IDIxOSk7CisKIAlpZiAo
dmljID49IDEgJiYgdmljIDwgMSArIEFSUkFZX1NJWkUoZWRpZF9jZWFfbW9kZXNfMSkpCiAJCXJl
dHVybiAmZWRpZF9jZWFfbW9kZXNfMVt2aWMgLSAxXTsKIAlpZiAodmljID49IDE5MyAmJiB2aWMg
PCAxOTMgKyBBUlJBWV9TSVpFKGVkaWRfY2VhX21vZGVzXzE5MykpCi0tIAoyLjIxLjAKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
