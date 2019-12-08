Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BFA11601B
	for <lists+intel-gfx@lfdr.de>; Sun,  8 Dec 2019 02:31:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0653E6E152;
	Sun,  8 Dec 2019 01:31:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1DB166E0DA;
 Sun,  8 Dec 2019 01:31:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 15388A0091;
 Sun,  8 Dec 2019 01:31:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 08 Dec 2019 01:31:56 -0000
Message-ID: <157576871605.2631.12821226428365562036@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191208001209.2914430-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191208001209.2914430-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/?=
 =?utf-8?q?i915/gem=3A_Avoid_rcu=5Fbarrier=28=29_from_shrinker_paths?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ2VtOiBBdm9pZCByY3VfYmFy
cmllcigpIGZyb20gc2hyaW5rZXIgcGF0aHMKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVl
ZGVza3RvcC5vcmcvc2VyaWVzLzcwNTk2LwpTdGF0ZSA6IHN1Y2Nlc3MKCj09IFN1bW1hcnkgPT0K
CkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzc1MDkgLT4gUGF0Y2h3b3JrXzE1NjQx
Cj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KClN1
bW1hcnkKLS0tLS0tLQoKICAqKlNVQ0NFU1MqKgoKICBObyByZWdyZXNzaW9ucyBmb3VuZC4KCiAg
RXh0ZXJuYWwgVVJMOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNTY0MS9pbmRleC5odG1sCgpLbm93biBpc3N1ZXMKLS0tLS0tLS0tLS0tCgogIEhl
cmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNod29ya18xNTY0MSB0aGF0IGNvbWUgZnJv
bSBrbm93biBpc3N1ZXM6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIFBvc3NpYmxlIGZpeGVz
ICMjIyMKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2JsdDoKICAgIC0gZmktaHN3LTQ3NzA6
ICAgICAgICBbRE1FU0ctRkFJTF1bMV0gKFtpOTE1IzcyNV0pIC0+IFtQQVNTXVsyXQogICBbMV06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc1MDkvZmkt
aHN3LTQ3NzAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ibHQuaHRtbAogICBbMl06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NjQxL2ZpLWhzdy00
NzcwL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfYmx0Lmh0bWwKCiAgCiMjIyMgV2FybmluZ3MgIyMj
IwoKICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ2VtX2NvbnRleHRzOgogICAgLSBmaS1oc3ct
cGVwcHk6ICAgICAgIFtETUVTRy1GQUlMXVszXSAoW2k5MTUjNzIyXSkgLT4gW0lOQ09NUExFVEVd
WzRdIChbaTkxNSM2OTRdKQogICBbM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzc1MDkvZmktaHN3LXBlcHB5L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVf
Z2VtX2NvbnRleHRzLmh0bWwKICAgWzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNTY0MS9maS1oc3ctcGVwcHkvaWd0QGk5MTVfc2VsZnRlc3RA
bGl2ZV9nZW1fY29udGV4dHMuaHRtbAoKICAKICBbaTkxNSM2OTRdOiBodHRwczovL2dpdGxhYi5m
cmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy82OTQKICBbaTkxNSM3MjJdOiBodHRwczov
L2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy83MjIKICBbaTkxNSM3MjVd
OiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy83MjUKCgpQ
YXJ0aWNpcGF0aW5nIGhvc3RzICgzMSAtPiAyNykKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tCgogIEFkZGl0aW9uYWwgKDEpOiBmaS1ieXQtajE5MDAgCiAgTWlzc2luZyAgICAoNSk6IGZp
LWlsay1tNTQwIGZpLWJ5dC1zcXVhd2tzIGZpLWJzdy1jeWFuIGZpLWJ5dC1jbGFwcGVyIGZpLWJk
dy1zYW11cyAKCgpCdWlsZCBjaGFuZ2VzCi0tLS0tLS0tLS0tLS0KCiAgKiBDSTogQ0ktMjAxOTA1
MjkgLT4gTm9uZQogICogTGludXg6IENJX0RSTV83NTA5IC0+IFBhdGNod29ya18xNTY0MQoKICBD
SS0yMDE5MDUyOTogMjAxOTA1MjkKICBDSV9EUk1fNzUwOTogYWU3ZjhhOTM1YjlhMjAyM2YyNDE0
MDQ5NGFjNDg4MDAwY2QzZDUwZSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1j
aS9saW51eAogIElHVF81MzM4OiBiYWJlZjc0MzZjNWY4YWRmYTNjMTNkM2QwMzI0OTNkNDkyNGY4
ZDdhIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcveG9yZy9hcHAvaW50ZWwtZ3B1LXRv
b2xzCiAgUGF0Y2h3b3JrXzE1NjQxOiAxZDQzZGY4NTc5MzljZmI3NzNiZmZkMWY5NGQ4MzE0ZGIz
NjA2YjM1IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CgoKPT0g
TGludXggY29tbWl0cyA9PQoKMWQ0M2RmODU3OTM5IGRybS9pOTE1L2dlbTogQXZvaWQgcmN1X2Jh
cnJpZXIoKSBmcm9tIHNocmlua2VyIHBhdGhzCgo9PSBMb2dzID09CgpGb3IgbW9yZSBkZXRhaWxz
IHNlZTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTU2NDEvaW5kZXguaHRtbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
