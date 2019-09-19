Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0249BB7FEE
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 19:23:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49B436F66E;
	Thu, 19 Sep 2019 17:23:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 83B4D6F66E;
 Thu, 19 Sep 2019 17:23:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7CB26A0081;
 Thu, 19 Sep 2019 17:23:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 19 Sep 2019 17:23:46 -0000
Message-ID: <20190919172346.23912.88738@emeril.freedesktop.org>
References: <20190919141904.15840-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190919141904.15840-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/3=5D_drm/rect=3A_Return_scaling_fa?=
 =?utf-8?q?ctor_and_error_code_separately?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvM10g
ZHJtL3JlY3Q6IFJldHVybiBzY2FsaW5nIGZhY3RvciBhbmQgZXJyb3IgY29kZSBzZXBhcmF0ZWx5
ClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NjkzNS8K
U3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9k
cm0tdGlwCmQxZDc1ODhlMzAyYSBkcm0vcmVjdDogUmV0dXJuIHNjYWxpbmcgZmFjdG9yIGFuZCBl
cnJvciBjb2RlIHNlcGFyYXRlbHkKNjAzZjA1MmZmOTQ0IGRybS9hdG9taWM6IFBpbXAgdGhlIGRl
YnVncyBmb3Igc2NhbGluZyBmYWlscwotOjg1OiBFUlJPUjpDT01QTEVYX01BQ1JPOiBNYWNyb3Mg
d2l0aCBjb21wbGV4IHZhbHVlcyBzaG91bGQgYmUgZW5jbG9zZWQgaW4gcGFyZW50aGVzZXMKIzg1
OiBGSUxFOiBpbmNsdWRlL2RybS9kcm1fcmVjdC5oOjY4OgorI2RlZmluZSBEUk1fRlBfQVJHKGYp
IChmKSA+PiAxNiwgKCgoZikgJiAweGZmZmYpICogKDEwMDAwMDAgPj4gKDE2IC0gMTApKSkgPj4g
MTAKCi06ODU6IENIRUNLOk1BQ1JPX0FSR19SRVVTRTogTWFjcm8gYXJndW1lbnQgcmV1c2UgJ2Yn
IC0gcG9zc2libGUgc2lkZS1lZmZlY3RzPwojODU6IEZJTEU6IGluY2x1ZGUvZHJtL2RybV9yZWN0
Lmg6Njg6CisjZGVmaW5lIERSTV9GUF9BUkcoZikgKGYpID4+IDE2LCAoKChmKSAmIDB4ZmZmZikg
KiAoMTAwMDAwMCA+PiAoMTYgLSAxMCkpKSA+PiAxMAoKdG90YWw6IDEgZXJyb3JzLCAwIHdhcm5p
bmdzLCAxIGNoZWNrcywgNzcgbGluZXMgY2hlY2tlZApkZTI1NzBlMWViZjkgZHJtL2F0b21pYy1o
ZWxwZXI6IEltcHJvdmUgZHJtX2F0b21pY19oZWxwZXJfY2hlY2tfcGxhbmVfc3RhdGUoKSBkZWJ1
Z3MKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
