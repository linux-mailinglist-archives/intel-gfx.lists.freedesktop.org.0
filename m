Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E41FD2538F6
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 22:13:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC92E6E366;
	Wed, 26 Aug 2020 20:13:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B0958908C
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 20:13:18 +0000 (UTC)
IronPort-SDR: gdpM0SKFhmREF4s8E4h7J6wV5lR4c9l+xf7Hi4HK0yiqm55nX/wd4zVkEJObOMUpW56s3C19cO
 k6nQDne7odOQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="155636186"
X-IronPort-AV: E=Sophos;i="5.76,356,1592895600"; d="scan'208";a="155636186"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 13:13:17 -0700
IronPort-SDR: Y3p1hAowJQu7LwXYQGE3bTLGpVwWdecaKi7UBbzSG7buKmaYF/qvZqU1zPBbmSL0dYyMRiDnKb
 YVej7P4u6bgQ==
X-IronPort-AV: E=Sophos;i="5.76,356,1592895600"; d="scan'208";a="474903239"
Received: from vfumax-mobl.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.254.62.93])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 13:13:13 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Aug 2020 13:15:49 -0700
Message-Id: <20200826201549.83658-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200826201549.83658-1-jose.souza@intel.com>
References: <20200826201549.83658-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 3/3] drm/i915/ehl: Update voltage swing table
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VXBkYXRlIHdpdGggbGF0ZXN0IHR1bm5pbmcgaW4gdGhlIHRhYmxlLgoKdjM6IEZpeCB2YWx1ZXMg
b2YgdG8gbGFzdCBjb2x1bW5zLgoKQlNwZWM6IDIxMjU3CkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3
LmQucm9wZXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jIHwgMTAgKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9u
cygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYwppbmRleCA2OTk1MTE4NzIyOTAuLjgyYzE4NDZkOWJlMSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC01NzIsMTMgKzU3MiwxMyBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IGNubF9kZGlfYnVmX3RyYW5zIGVobF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9u
c19kcFtdID0gewogCQkJCQkJLyogTlQgbVYgVHJhbnMgbVYgZGIgICAgKi8KIAl7IDB4QSwgMHgz
MywgMHgzRiwgMHgwMCwgMHgwMCB9LAkvKiAzNTAgICAzNTAgICAgICAwLjAgICAqLwogCXsgMHhB
LCAweDQ3LCAweDM2LCAweDAwLCAweDA5IH0sCS8qIDM1MCAgIDUwMCAgICAgIDMuMSAgICovCi0J
eyAweEMsIDB4NjQsIDB4MzAsIDB4MDAsIDB4MEYgfSwJLyogMzUwICAgNzAwICAgICAgNi4wICAg
Ki8KLQl7IDB4NiwgMHg3RiwgMHgyQywgMHgwMCwgMHgxMyB9LAkvKiAzNTAgICA5MDAgICAgICA4
LjIgICAqLworCXsgMHhDLCAweDY0LCAweDM0LCAweDAwLCAweDBCIH0sCS8qIDM1MCAgIDcwMCAg
ICAgIDYuMCAgICovCisJeyAweDYsIDB4N0YsIDB4MzAsIDB4MDAsIDB4MEYgfSwJLyogMzUwICAg
OTAwICAgICAgOC4yICAgKi8KIAl7IDB4QSwgMHg0NiwgMHgzRiwgMHgwMCwgMHgwMCB9LAkvKiA1
MDAgICA1MDAgICAgICAwLjAgICAqLwotCXsgMHhDLCAweDY0LCAweDM2LCAweDAwLCAweDA5IH0s
CS8qIDUwMCAgIDcwMCAgICAgIDIuOSAgICovCi0JeyAweDYsIDB4N0YsIDB4MzAsIDB4MDAsIDB4
MEYgfSwJLyogNTAwICAgOTAwICAgICAgNS4xICAgKi8KKwl7IDB4QywgMHg2NCwgMHgzOCwgMHgw
MCwgMHgwNyB9LAkvKiA1MDAgICA3MDAgICAgICAyLjkgICAqLworCXsgMHg2LCAweDdGLCAweDMy
LCAweDAwLCAweDBEIH0sCS8qIDUwMCAgIDkwMCAgICAgIDUuMSAgICovCiAJeyAweEMsIDB4NjEs
IDB4M0YsIDB4MDAsIDB4MDAgfSwJLyogNjUwICAgNzAwICAgICAgMC42ICAgKi8KLQl7IDB4Niwg
MHg3RiwgMHgzNywgMHgwMCwgMHgwOCB9LAkvKiA2MDAgICA5MDAgICAgICAzLjUgICAqLworCXsg
MHg2LCAweDdGLCAweDM4LCAweDAwLCAweDA3IH0sCS8qIDYwMCAgIDkwMCAgICAgIDMuNSAgICov
CiAJeyAweDYsIDB4N0YsIDB4M0YsIDB4MDAsIDB4MDAgfSwJLyogOTAwICAgOTAwICAgICAgMC4w
ICAgKi8KIH07CiAKLS0gCjIuMjguMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
