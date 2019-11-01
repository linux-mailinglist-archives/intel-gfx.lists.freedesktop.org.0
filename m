Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7FEEC66B
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 17:13:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E22266F83A;
	Fri,  1 Nov 2019 16:13:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A3AB26F839;
 Fri,  1 Nov 2019 16:13:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9A91AA011B;
 Fri,  1 Nov 2019 16:13:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 01 Nov 2019 16:13:12 -0000
Message-ID: <20191101161312.19147.46209@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191101130406.4142-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191101130406.4142-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915/gt=3A_Pull_timeline_initialise_to_intel=5Fgt=5Finit=5Fearl?=
 =?utf-8?q?y_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3Q6IFB1bGwgdGltZWxpbmUg
aW5pdGlhbGlzZSB0byBpbnRlbF9ndF9pbml0X2Vhcmx5IChyZXYyKQpVUkwgICA6IGh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjg2MTkvClN0YXRlIDogZmFpbHVyZQoK
PT0gU3VtbWFyeSA9PQoKQXBwbHlpbmc6IGRybS9pOTE1L2d0OiBQdWxsIHRpbWVsaW5lIGluaXRp
YWxpc2UgdG8gaW50ZWxfZ3RfaW5pdF9lYXJseQpVc2luZyBpbmRleCBpbmZvIHRvIHJlY29uc3Ry
dWN0IGEgYmFzZSB0cmVlLi4uCk0JZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYwpN
CWRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmMKTQlkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF90aW1lbGluZS5oCk0JZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW0uYwpNCWRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2dlbV9kZXZpY2UuYwpG
YWxsaW5nIGJhY2sgdG8gcGF0Y2hpbmcgYmFzZSBhbmQgMy13YXkgbWVyZ2UuLi4KQXV0by1tZXJn
aW5nIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2dlbV9kZXZpY2UuYwpBdXRv
LW1lcmdpbmcgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwpBdXRvLW1lcmdpbmcgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYwpObyBjaGFuZ2VzIC0tIFBhdGNoIGFscmVh
ZHkgYXBwbGllZC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
