Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D281AD413
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 09:44:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E05889081;
	Mon,  9 Sep 2019 07:44:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8D4EF89081;
 Mon,  9 Sep 2019 07:44:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 86B9AA00FD;
 Mon,  9 Sep 2019 07:44:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Mon, 09 Sep 2019 07:44:45 -0000
Message-ID: <20190909074445.8309.81209@emeril.freedesktop.org>
References: <20190909071809.23310-1-lionel.g.landwerlin@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190909071809.23310-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_se?=
 =?utf-8?q?ries_starting_with_=5BCI=2C01/13=5D_drm/i915=3A_introduce_a_mec?=
 =?utf-8?q?hanism_to_extend_execbuf2?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDAx
LzEzXSBkcm0vaTkxNTogaW50cm9kdWNlIGEgbWVjaGFuaXNtIHRvIGV4dGVuZCBleGVjYnVmMgpV
UkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjY0MDYvClN0
YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQ0FMTCAgICBzY3JpcHRzL2NoZWNrc3lzY2Fs
bHMuc2gKICBDQUxMICAgIHNjcmlwdHMvYXRvbWljL2NoZWNrLWF0b21pY3Muc2gKICBERVNDRU5E
ICBvYmp0b29sCiAgQ0hLICAgICBpbmNsdWRlL2dlbmVyYXRlZC9jb21waWxlLmgKICBDQyBbTV0g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5vCmRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcGVyZi5jOiBJbiBmdW5jdGlvbiDigJhpOTE1X29hX3N0cmVhbV9pbml04oCZOgpkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYzoyNzAzOjM6IGVycm9yOiBpZ25vcmluZyByZXR1cm4g
dmFsdWUgb2Yg4oCYaTkxNV9hY3RpdmVfcmVxdWVzdF9yZXRpcmXigJksIGRlY2xhcmVkIHdpdGgg
YXR0cmlidXRlIHdhcm5fdW51c2VkX3Jlc3VsdCBbLVdlcnJvcj11bnVzZWQtcmVzdWx0XQogICBp
OTE1X2FjdGl2ZV9yZXF1ZXN0X3JldGlyZSgmc3RyZWFtLT5hY3RpdmVfY29uZmlnX3JxLCAwLAog
ICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fgogICAgICAgICAmc3RyZWFtLT5jb25maWdfbXV0ZXgpOwogICAgICAgICB+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+CmNjMTogYWxsIHdhcm5pbmdzIGJlaW5nIHRyZWF0ZWQgYXMgZXJyb3JzCnNjcmlw
dHMvTWFrZWZpbGUuYnVpbGQ6MjgwOiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9wZXJmLm8nIGZhaWxlZAptYWtlWzRdOiAqKiogW2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcGVyZi5vXSBFcnJvciAxCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NDk3OiByZWNp
cGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUvZHJtL2k5MTUnIGZhaWxlZAptYWtlWzNdOiAqKiog
W2RyaXZlcnMvZ3B1L2RybS9pOTE1XSBFcnJvciAyCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NDk3
OiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUvZHJtJyBmYWlsZWQKbWFrZVsyXTogKioq
IFtkcml2ZXJzL2dwdS9kcm1dIEVycm9yIDIKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo0OTc6IHJl
Y2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdScgZmFpbGVkCm1ha2VbMV06ICoqKiBbZHJpdmVy
cy9ncHVdIEVycm9yIDIKTWFrZWZpbGU6MTA4MzogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMn
IGZhaWxlZAptYWtlOiAqKiogW2RyaXZlcnNdIEVycm9yIDIKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
