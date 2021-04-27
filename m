Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF3B36C729
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Apr 2021 15:43:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DBB16E3B2;
	Tue, 27 Apr 2021 13:43:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4A1AF6E212;
 Tue, 27 Apr 2021 13:43:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3EEFEA8830;
 Tue, 27 Apr 2021 13:43:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Tue, 27 Apr 2021 13:43:05 -0000
Message-ID: <161953098523.17486.11854190446687899750@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210427111421.2386-1-tzimmermann@suse.de>
In-Reply-To: <20210427111421.2386-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm=3A_Move_struct_drm=5Fdevice=2Epdev_to_legacy_=28rev7=29?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtOiBNb3ZlIHN0cnVjdCBkcm1fZGV2aWNl
LnBkZXYgdG8gbGVnYWN5IChyZXY3KQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNr
dG9wLm9yZy9zZXJpZXMvODQyMDUvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQ0FM
TCAgICBzY3JpcHRzL2NoZWNrc3lzY2FsbHMuc2gKICBDQUxMICAgIHNjcmlwdHMvYXRvbWljL2No
ZWNrLWF0b21pY3Muc2gKICBERVNDRU5EICBvYmp0b29sCiAgQ0hLICAgICBpbmNsdWRlL2dlbmVy
YXRlZC9jb21waWxlLmgKICBDQyBbTV0gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9zdG9sZW4ubwpkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc3RvbGVuLmM6IElu
IGZ1bmN0aW9uIOKAmGk5MTVfZ2VtX3N0b2xlbl9sbWVtX3NldHVw4oCZOgpkcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fc3RvbGVuLmM6Nzc2OjM1OiBlcnJvcjog4oCYc3RydWN0IGRy
bV9kZXZpY2XigJkgaGFzIG5vIG1lbWJlciBuYW1lZCDigJhwZGV24oCZOyBkaWQgeW91IG1lYW4g
4oCYZGV24oCZPwogIHN0cnVjdCBwY2lfZGV2ICpwZGV2ID0gaTkxNS0+ZHJtLnBkZXY7CiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fgogICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIGRldgpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjI3MTogcmVjaXBlIGZvciB0
YXJnZXQgJ2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zdG9sZW4ubycgZmFpbGVk
Cm1ha2VbNF06ICoqKiBbZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3N0b2xlbi5v
XSBFcnJvciAxCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NTE0OiByZWNpcGUgZm9yIHRhcmdldCAn
ZHJpdmVycy9ncHUvZHJtL2k5MTUnIGZhaWxlZAptYWtlWzNdOiAqKiogW2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1XSBFcnJvciAyCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NTE0OiByZWNpcGUgZm9yIHRh
cmdldCAnZHJpdmVycy9ncHUvZHJtJyBmYWlsZWQKbWFrZVsyXTogKioqIFtkcml2ZXJzL2dwdS9k
cm1dIEVycm9yIDIKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo1MTQ6IHJlY2lwZSBmb3IgdGFyZ2V0
ICdkcml2ZXJzL2dwdScgZmFpbGVkCm1ha2VbMV06ICoqKiBbZHJpdmVycy9ncHVdIEVycm9yIDIK
TWFrZWZpbGU6MTg1MTogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMnIGZhaWxlZAptYWtlOiAq
KiogW2RyaXZlcnNdIEVycm9yIDIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
