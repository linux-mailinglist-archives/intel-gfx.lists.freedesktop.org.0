Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 551774F001
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 22:29:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5FDF6E924;
	Fri, 21 Jun 2019 20:29:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 683136E924;
 Fri, 21 Jun 2019 20:29:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 61728A0138;
 Fri, 21 Jun 2019 20:29:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Robert M. Fosha" <robert.m.fosha@intel.com>
Date: Fri, 21 Jun 2019 20:29:55 -0000
Message-ID: <20190621202955.9268.17923@emeril.freedesktop.org>
References: <20190621200940.32665-1-robert.m.fosha@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190621200940.32665-1-robert.m.fosha@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915/guc=3A_Add_debug_capture_of_GuC_exception?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3VjOiBBZGQgZGVidWcgY2Fw
dHVyZSBvZiBHdUMgZXhjZXB0aW9uClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnL3Nlcmllcy82MjU1NC8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpDSSBC
dWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV82MzI3IC0+IFBhdGNod29ya18xMzM5NAo9PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CgpTdW1tYXJ5
Ci0tLS0tLS0KCiAgKipGQUlMVVJFKioKCiAgU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5n
IHdpdGggUGF0Y2h3b3JrXzEzMzk0IGFic29sdXRlbHkgbmVlZCB0byBiZQogIHZlcmlmaWVkIG1h
bnVhbGx5LgogIAogIElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhp
bmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcwogIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzEzMzk0
LCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cgdGhlbQogIHRvIGRvY3VtZW50
IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVz
IGluIENJLgoKICBFeHRlcm5hbCBVUkw6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzEzMzk0LwoKUG9zc2libGUgbmV3IGlzc3VlcwotLS0tLS0tLS0t
LS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBi
ZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzEzMzk0OgoKIyMjIElHVCBjaGFuZ2VzICMjIwoK
IyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjCgogICogaWd0QHJ1bm5lckBhYm9ydGVkOgog
ICAgLSBmaS1nZGctNTUxOiAgICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bMV0KICAgWzFdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzM5NC9maS1n
ZGctNTUxL2lndEBydW5uZXJAYWJvcnRlZC5odG1sCgogIAoKClBhcnRpY2lwYXRpbmcgaG9zdHMg
KDUwIC0+IDQyKQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgQWRkaXRpb25hbCAo
MSk6IGZpLWdkZy01NTEgCiAgTWlzc2luZyAgICAoOSk6IGZpLWtibC1zb3Jha2EgZmktaWxrLW01
NDAgZmktaHN3LTQyMDB1IGZpLWJ5dC1zcXVhd2tzIGZpLWljbC11MiBmaS1ic3ctY3lhbiBmaS1p
Y2wteSBmaS1ieXQtY2xhcHBlciBmaS1iZHctc2FtdXMgCgoKQnVpbGQgY2hhbmdlcwotLS0tLS0t
LS0tLS0tCgogICogTGludXg6IENJX0RSTV82MzI3IC0+IFBhdGNod29ya18xMzM5NAoKICBDSV9E
Uk1fNjMyNzogZDJlZTM0MjczMTliN2U4OWU5YWI0OWM4ZTRiNzE0Nzg5YjYxMWRmZSBAIGdpdDov
L2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIElHVF81MDY0OiAyMjg1MGMx
OTA2NTUwZmI5N2I0MDVjMDE5Mjc1ZGNmYjM0YmU4Y2Y3IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVz
a3RvcC5vcmcveG9yZy9hcHAvaW50ZWwtZ3B1LXRvb2xzCiAgUGF0Y2h3b3JrXzEzMzk0OiA5MWEw
ZDA2Yjc5ZGQwYjU2MjRmMTE1NjA4MmVmYTM5YzRhMzAxOTc5IEAgZ2l0Oi8vYW5vbmdpdC5mcmVl
ZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CgoKPT0gTGludXggY29tbWl0cyA9PQoKOTFhMGQwNmI3
OWRkIGRybS9pOTE1L2d1YzogQWRkIGRlYnVnIGNhcHR1cmUgb2YgR3VDIGV4Y2VwdGlvbgoKPT0g
TG9ncyA9PQoKRm9yIG1vcmUgZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzk0LwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
