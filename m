Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E211DA76A6
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 00:01:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AA4E89166;
	Tue,  3 Sep 2019 22:01:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 08395890AA;
 Tue,  3 Sep 2019 22:01:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 01E46A0088;
 Tue,  3 Sep 2019 22:01:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sharma, Swati2" <swati2.sharma@intel.com>
Date: Tue, 03 Sep 2019 22:01:21 -0000
Message-ID: <20190903220121.6072.68545@emeril.freedesktop.org>
References: <1567538578-4489-1-git-send-email-swati2.sharma@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <1567538578-4489-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/?=
 =?utf-8?q?i915=3A_adding_state_checker_for_gamma_lut_values_=28rev14=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IGFkZGluZyBzdGF0ZSBjaGVj
a2VyIGZvciBnYW1tYSBsdXQgdmFsdWVzIChyZXYxNCkKVVJMICAgOiBodHRwczovL3BhdGNod29y
ay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzU4MDM5LwpTdGF0ZSA6IHN1Y2Nlc3MKCj09IFN1bW1h
cnkgPT0KCkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzY4MjkgLT4gUGF0Y2h3b3Jr
XzE0MjcxCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKlNVQ0NFU1MqKgoKICBObyByZWdyZXNzaW9ucyBmb3Vu
ZC4KCiAgRXh0ZXJuYWwgVVJMOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xNDI3MS8KCktub3duIGlzc3VlcwotLS0tLS0tLS0tLS0KCiAgSGVyZSBh
cmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzE0MjcxIHRoYXQgY29tZSBmcm9tIGtu
b3duIGlzc3VlczoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgV2FybmluZ3MgIyMjIwoKICAq
IGlndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3Q6CiAgICAtIGZpLWtibC03NTAwdTogICAg
ICAgW0ZBSUxdWzFdIChbZmRvIzExMTQwN10pIC0+IFtGQUlMXVsyXSAoW2ZkbyMxMTEwOTZdKQog
ICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY4
MjkvZmkta2JsLTc1MDB1L2lndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3QuaHRtbAogICBb
Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0
MjcxL2ZpLWtibC03NTAwdS9pZ3RAa21zX2NoYW1lbGl1bUBoZG1pLWhwZC1mYXN0Lmh0bWwKCiAg
CiAgW2ZkbyMxMTEwOTZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMTEwOTYKICBbZmRvIzExMTQwN106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTExMTQwNwoKClBhcnRpY2lwYXRpbmcgaG9zdHMgKDUzIC0+IDQ1KQot
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgTWlzc2luZyAgICAoOCk6IGZpLWlsay1t
NTQwIGZpLWhzdy00MjAwdSBmaS1ieXQtajE5MDAgZmktYnl0LXNxdWF3a3MgZmktYnN3LWN5YW4g
ZmktaWNsLXkgZmktYnl0LWNsYXBwZXIgZmktYmR3LXNhbXVzIAoKCkJ1aWxkIGNoYW5nZXMKLS0t
LS0tLS0tLS0tLQoKICAqIENJOiBDSS0yMDE5MDUyOSAtPiBOb25lCiAgKiBMaW51eDogQ0lfRFJN
XzY4MjkgLT4gUGF0Y2h3b3JrXzE0MjcxCgogIENJLTIwMTkwNTI5OiAyMDE5MDUyOQogIENJX0RS
TV82ODI5OiBmMDc5ZmQ0YWM1ZGNjN2U3NjU1MGE3MDY4ZjY1NWQzZTY2NTA4OGQxIEAgZ2l0Oi8v
YW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgSUdUXzUxNjc6IDgxZjdhNDli
YzgwZTZkOWYyN2UzMzg1OWZkOTRmZDExZTEzY2FmYTAgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNr
dG9wLm9yZy94b3JnL2FwcC9pbnRlbC1ncHUtdG9vbHMKICBQYXRjaHdvcmtfMTQyNzE6IGIyYWVm
Y2QzYTE5YjEyZGUwZTg0NGY4MDA4NDFhN2FjYzc5NDZkM2MgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVk
ZXNrdG9wLm9yZy9nZngtY2kvbGludXgKCgo9PSBMaW51eCBjb21taXRzID09CgpiMmFlZmNkM2Ex
OWIgRk9SX1RFU1RJTkdfT05MWTogUHJpbnQgcmdiIHZhbHVlcyBvZiBodyBhbmQgc3cgYmxvYnMK
NTFmNTA1ZTIyYzczIGRybS9pOTE1L2Rpc3BsYXk6IEV4dHJhY3QgZ2xrX3JlYWRfbHV0cygpCmFh
YzY1YzhjMzNlNSBkcm0vaTkxNS9kaXNwbGF5OiBFeHRyYWN0IGlsa19yZWFkX2x1dHMoKQowZWUy
ODI5NTVmZjEgZHJtL2k5MTUvZGlzcGxheTogRXh0cmFjdCBpOXh4X3JlYWRfbHV0cygpCjYyMDZh
YzhkMWY5YyBkcm0vaTkxNS9kaXNwbGF5OiBBZGQgbWFjcm8gdG8gY29tcGFyZSBnYW1tYSBody9z
dyBsdXQKODM1Mjg3NmE4ZjgwIGRybS9pOTE1L2Rpc3BsYXk6IEFkZCBmdW5jIHRvIGNvbXBhcmUg
aHcvc3cgZ2FtbWEgbHV0CmFkOWY5MTgzNWVlNyBkcm0vaTkxNS9kaXNwbGF5OiBBZGQgZGVidWcg
bG9nIGZvciBjb2xvciBwYXJhbWV0ZXJzCjEyMmIwYWU0NTZkYiBkcm0vaTkxNS9kaXNwbGF5OiBB
ZGQgZnVuYyB0byBnZXQgZ2FtbWEgYml0IHByZWNpc2lvbgoKPT0gTG9ncyA9PQoKRm9yIG1vcmUg
ZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE0MjcxLwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
