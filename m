Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F51F638D3
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 17:45:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7988C6E091;
	Tue,  9 Jul 2019 15:45:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 342416E083;
 Tue,  9 Jul 2019 15:45:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2BD98A0087;
 Tue,  9 Jul 2019 15:45:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 09 Jul 2019 15:45:56 -0000
Message-ID: <20190709154556.4424.1176@emeril.freedesktop.org>
References: <20190709130303.27990-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190709130303.27990-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/?=
 =?utf-8?q?i915=3A_Lock_the_engine_while_dumping_the_active_request_=28rev?=
 =?utf-8?q?2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IExvY2sgdGhlIGVuZ2luZSB3
aGlsZSBkdW1waW5nIHRoZSBhY3RpdmUgcmVxdWVzdCAocmV2MikKVVJMICAgOiBodHRwczovL3Bh
dGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYzNDQyLwpTdGF0ZSA6IHN1Y2Nlc3MKCj09
IFN1bW1hcnkgPT0KCkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzY0NDEgLT4gUGF0
Y2h3b3JrXzEzNTgzCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKlNVQ0NFU1MqKgoKICBObyByZWdyZXNzaW9u
cyBmb3VuZC4KCiAgRXh0ZXJuYWwgVVJMOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xMzU4My8KCktub3duIGlzc3VlcwotLS0tLS0tLS0tLS0KCiAg
SGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzEzNTgzIHRoYXQgY29tZSBm
cm9tIGtub3duIGlzc3VlczoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgSXNzdWVzIGhpdCAj
IyMjCgogICogaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLXdpdGgtZmF1bHQtaW5qZWN0aW9u
OgogICAgLSBmaS1pY2wtZHNpOiAgICAgICAgIFtQQVNTXVsxXSAtPiBbSU5DT01QTEVURV1bMl0g
KFtmZG8jMTA3NzEzXSkKICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV82NDQxL2ZpLWljbC1kc2kvaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2Fk
LXdpdGgtZmF1bHQtaW5qZWN0aW9uLmh0bWwKICAgWzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzU4My9maS1pY2wtZHNpL2lndEBpOTE1X21v
ZHVsZV9sb2FkQHJlbG9hZC13aXRoLWZhdWx0LWluamVjdGlvbi5odG1sCgogICogaWd0QGttc19m
cm9udGJ1ZmZlcl90cmFja2luZ0BiYXNpYzoKICAgIC0gZmktaWNsLWRzaTogICAgICAgICBbUEFT
U11bM10gLT4gW0RNRVNHLVdBUk5dWzRdIChbZmRvIzEwNjEwN10pICsxIHNpbWlsYXIgaXNzdWUK
ICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82
NDQxL2ZpLWljbC1kc2kvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BiYXNpYy5odG1sCiAg
IFs0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTM1ODMvZmktaWNsLWRzaS9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGJhc2ljLmh0bWwK
CiAgCiMjIyMgUG9zc2libGUgZml4ZXMgIyMjIwoKICAqIGlndEBnZW1fY3R4X2NyZWF0ZUBiYXNp
Yy1maWxlczoKICAgIC0gZmktaWNsLWd1YzogICAgICAgICBbSU5DT01QTEVURV1bNV0gKFtmZG8j
MTA3NzEzXSAvIFtmZG8jMTA5MTAwXSkgLT4gW1BBU1NdWzZdCiAgIFs1XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjQ0MS9maS1pY2wtZ3VjL2lndEBn
ZW1fY3R4X2NyZWF0ZUBiYXNpYy1maWxlcy5odG1sCiAgIFs2XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM1ODMvZmktaWNsLWd1Yy9pZ3RAZ2Vt
X2N0eF9jcmVhdGVAYmFzaWMtZmlsZXMuaHRtbAoKICAqIGlndEBrbXNfYnVzeUBiYXNpYy1mbGlw
LWE6CiAgICAtIGZpLWljbC1kc2k6ICAgICAgICAgW0RNRVNHLVdBUk5dWzddIChbZmRvIzEwNjEw
N10pIC0+IFtQQVNTXVs4XQogICBbN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzY0NDEvZmktaWNsLWRzaS9pZ3RAa21zX2J1c3lAYmFzaWMtZmxpcC1h
Lmh0bWwKICAgWzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xMzU4My9maS1pY2wtZHNpL2lndEBrbXNfYnVzeUBiYXNpYy1mbGlwLWEuaHRtbAoK
ICAqIGlndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3Q6CiAgICAtIGZpLWtibC03NTAwdTog
ICAgICAgW0ZBSUxdWzldIChbZmRvIzEwOTQ4NV0pIC0+IFtQQVNTXVsxMF0KICAgWzldOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NDQxL2ZpLWtibC03
NTAwdS9pZ3RAa21zX2NoYW1lbGl1bUBoZG1pLWhwZC1mYXN0Lmh0bWwKICAgWzEwXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM1ODMvZmkta2Js
LTc1MDB1L2lndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3QuaHRtbAoKICAKICBbZmRvIzEw
NjEwN106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNjEw
NwogIFtmZG8jMTA3NzEzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTA3NzEzCiAgW2ZkbyMxMDkxMDBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMDkxMDAKICBbZmRvIzEwOTQ4NV06IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTQ4NQoKClBhcnRpY2lwYXRpbmcgaG9zdHMg
KDUyIC0+IDQ3KQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgTWlzc2luZyAgICAo
NSk6IGZpLWJ5dC1zcXVhd2tzIGZpLWJzdy1jeWFuIGZpLWljbC15IGZpLWJ5dC1jbGFwcGVyIGZp
LWJkdy1zYW11cyAKCgpCdWlsZCBjaGFuZ2VzCi0tLS0tLS0tLS0tLS0KCiAgKiBMaW51eDogQ0lf
RFJNXzY0NDEgLT4gUGF0Y2h3b3JrXzEzNTgzCgogIENJX0RSTV82NDQxOiA5ZDMxZWRlZjQ0Nzcz
NGExZTVlY2UzOTczNjdkZTZmYTNjZmRlNzE0IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5v
cmcvZ2Z4LWNpL2xpbnV4CiAgSUdUXzUwOTI6IDJhNjZhZTY2MjZkNTU4MzI0MDUwOWY4NDExN2Qx
MzQ1YTc5OWI3NWEgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94b3JnL2FwcC9pbnRl
bC1ncHUtdG9vbHMKICBQYXRjaHdvcmtfMTM1ODM6IDFjNDI4YzYwZWQ2NmQ1NTQ2YWZkNGQ4MmU2
Mjk5NzI2ODg1Mzc4ZjMgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGlu
dXgKCgo9PSBLZXJuZWwgMzJiaXQgYnVpbGQgPT0KCldhcm5pbmc6IEtlcm5lbCAzMmJpdCBidWls
ZHRlc3QgZmFpbGVkOgpodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xMzU4My9idWlsZF8zMmJpdC5sb2cKCiAgQ0FMTCAgICBzY3JpcHRzL2NoZWNrc3lz
Y2FsbHMuc2gKICBDQUxMICAgIHNjcmlwdHMvYXRvbWljL2NoZWNrLWF0b21pY3Muc2gKICBDSEsg
ICAgIGluY2x1ZGUvZ2VuZXJhdGVkL2NvbXBpbGUuaApLZXJuZWw6IGFyY2gveDg2L2Jvb3QvYnpJ
bWFnZSBpcyByZWFkeSAgKCMxKQogIEJ1aWxkaW5nIG1vZHVsZXMsIHN0YWdlIDIuCiAgTU9EUE9T
VCAxMTIgbW9kdWxlcwpFUlJPUjogIl9fdWRpdmRpMyIgW2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdS5rb10gdW5kZWZpbmVkIQpFUlJPUjogIl9fZGl2ZGkzIiBbZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1LmtvXSB1bmRlZmluZWQhCnNjcmlwdHMvTWFrZWZpbGUubW9k
cG9zdDo5MTogcmVjaXBlIGZvciB0YXJnZXQgJ19fbW9kcG9zdCcgZmFpbGVkCm1ha2VbMV06ICoq
KiBbX19tb2Rwb3N0XSBFcnJvciAxCk1ha2VmaWxlOjEyODc6IHJlY2lwZSBmb3IgdGFyZ2V0ICdt
b2R1bGVzJyBmYWlsZWQKbWFrZTogKioqIFttb2R1bGVzXSBFcnJvciAyCgoKPT0gTGludXggY29t
bWl0cyA9PQoKMWM0MjhjNjBlZDY2IGRybS9pOTE1OiBMb2NrIHRoZSBlbmdpbmUgd2hpbGUgZHVt
cGluZyB0aGUgYWN0aXZlIHJlcXVlc3QKCj09IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2Vl
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzU4
My8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
