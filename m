Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 228AF28580
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 20:01:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FAB189FD9;
	Thu, 23 May 2019 18:01:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6021689FD9;
 Thu, 23 May 2019 18:01:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5C5D7A0074;
 Thu, 23 May 2019 18:01:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Thu, 23 May 2019 18:01:31 -0000
Message-ID: <20190523180131.12612.99349@emeril.freedesktop.org>
References: <20190523172204.25413-1-matthew.auld@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190523172204.25413-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5Bv4=2C1/2=5D_drm/i915/gtt=3A_grab_wakeref?=
 =?utf-8?q?_in_gen6=5Falloc=5Fva=5Frange?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW3Y0LDEv
Ml0gZHJtL2k5MTUvZ3R0OiBncmFiIHdha2VyZWYgaW4gZ2VuNl9hbGxvY192YV9yYW5nZQpVUkwg
ICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjEwNTUvClN0YXRl
IDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gc3BhcnNlIG9yaWdpbi9kcm0tdGlwClNw
YXJzZSB2ZXJzaW9uOiB2MC41LjIKQ29tbWl0OiBkcm0vaTkxNS9ndHQ6IGdyYWIgd2FrZXJlZiBp
biBnZW42X2FsbG9jX3ZhX3JhbmdlCi1POmRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0
dC5jOjE3NTI6OTogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKLU86ZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmM6MTc1Mjo5OiB3YXJuaW5nOiBleHByZXNz
aW9uIHVzaW5nIHNpemVvZih2b2lkKQorZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0
LmM6MTc1NTo5OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQorZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmM6MTc1NTo5OiB3YXJuaW5nOiBleHByZXNzaW9u
IHVzaW5nIHNpemVvZih2b2lkKQoKQ29tbWl0OiBkcm0vaTkxNTogYWRkIGluLWtlcm5lbCBibGl0
dGVyIGNsaWVudAorLi9pbmNsdWRlL2xpbnV4L3Jlc2VydmF0aW9uLmg6MjIwOjIwOiB3YXJuaW5n
OiBkZXJlZmVyZW5jZSBvZiBub2RlcmVmIGV4cHJlc3Npb24KKy4vaW5jbHVkZS9saW51eC9yZXNl
cnZhdGlvbi5oOjIyMDo0NTogd2FybmluZzogZGVyZWZlcmVuY2Ugb2Ygbm9kZXJlZiBleHByZXNz
aW9uCisuL2luY2x1ZGUvdWFwaS9saW51eC9wZXJmX2V2ZW50Lmg6MTQ3OjU2OiB3YXJuaW5nOiBj
YXN0IHRydW5jYXRlcyBiaXRzIGZyb20gY29uc3RhbnQgdmFsdWUgKDgwMDAwMDAwMDAwMDAwMDAg
YmVjb21lcyAwKQorLi9pbmNsdWRlL3VhcGkvbGludXgvcGVyZl9ldmVudC5oOjE0Nzo1Njogd2Fy
bmluZzogY2FzdCB0cnVuY2F0ZXMgYml0cyBmcm9tIGNvbnN0YW50IHZhbHVlICg4MDAwMDAwMDAw
MDAwMDAwIGJlY29tZXMgMCkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
