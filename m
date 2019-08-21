Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B31898566
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 22:17:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 469BA6EA0B;
	Wed, 21 Aug 2019 20:17:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8B38A6EA01;
 Wed, 21 Aug 2019 20:17:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8064FA0118;
 Wed, 21 Aug 2019 20:17:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 21 Aug 2019 20:17:52 -0000
Message-ID: <20190821201752.4277.94057@emeril.freedesktop.org>
References: <20190821193851.18232-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190821193851.18232-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/?=
 =?utf-8?q?i915/selftests=3A_Fixup_a_couple_of_missing_serialisation_with_?=
 =?utf-8?q?vma?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvc2VsZnRlc3RzOiBGaXh1cCBh
IGNvdXBsZSBvZiBtaXNzaW5nIHNlcmlhbGlzYXRpb24gd2l0aCB2bWEKVVJMICAgOiBodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY1NTYyLwpTdGF0ZSA6IHN1Y2Nlc3MK
Cj09IFN1bW1hcnkgPT0KCkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzY3NTggLT4g
UGF0Y2h3b3JrXzE0MTI5Cj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKlNVQ0NFU1MqKgoKICBObyByZWdyZXNz
aW9ucyBmb3VuZC4KCiAgRXh0ZXJuYWwgVVJMOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDEyOS8KCktub3duIGlzc3VlcwotLS0tLS0tLS0tLS0K
CiAgSGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzE0MTI5IHRoYXQgY29t
ZSBmcm9tIGtub3duIGlzc3VlczoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgUG9zc2libGUg
Zml4ZXMgIyMjIwoKICAqIGlndEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXMzOgogICAgLSBmaS1i
bGItZTY4NTA6ICAgICAgIFtJTkNPTVBMRVRFXVsxXSAoW2ZkbyMxMDc3MThdKSAtPiBbUEFTU11b
Ml0KICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV82NzU4L2ZpLWJsYi1lNjg1MC9pZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zMy5odG1sCiAg
IFsyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTQxMjkvZmktYmxiLWU2ODUwL2lndEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXMzLmh0bWwKCiAg
CiAge25hbWV9OiBUaGlzIGVsZW1lbnQgaXMgc3VwcHJlc3NlZC4gVGhpcyBtZWFucyBpdCBpcyBp
Z25vcmVkIHdoZW4gY29tcHV0aW5nCiAgICAgICAgICB0aGUgc3RhdHVzIG9mIHRoZSBkaWZmZXJl
bmNlIChTVUNDRVNTLCBXQVJOSU5HLCBvciBGQUlMVVJFKS4KCiAgW2ZkbyMxMDc3MThdOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc3MTgKICBbZmRvIzEx
MTA0NV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTA0
NQogIFtmZG8jMTExMDk2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTExMDk2CgoKUGFydGljaXBhdGluZyBob3N0cyAoNTUgLT4gNDYpCi0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLQoKICBBZGRpdGlvbmFsICgxKTogZmktcG52LWQ1MTAgCiAgTWlz
c2luZyAgICAoMTApOiBmaS1rYmwtc29yYWthIGZpLWlsay1tNTQwIGZpLWJ4dC1kc2kgZmktY21s
LXMgZmktaHN3LTQyMDB1IGZpLWJ5dC1zcXVhd2tzIGZpLWJzdy1jeWFuIGZpLWljbC15IGZpLWJ5
dC1jbGFwcGVyIGZpLWJkdy1zYW11cyAKCgpCdWlsZCBjaGFuZ2VzCi0tLS0tLS0tLS0tLS0KCiAg
KiBDSTogQ0ktMjAxOTA1MjkgLT4gTm9uZQogICogTGludXg6IENJX0RSTV82NzU4IC0+IFBhdGNo
d29ya18xNDEyOQoKICBDSS0yMDE5MDUyOTogMjAxOTA1MjkKICBDSV9EUk1fNjc1ODogODYxNjQ0
MGNhMjI0YzFmYTE3NzViNmIyZDIxYmFkN2RkZjY2NDQyYSBAIGdpdDovL2Fub25naXQuZnJlZWRl
c2t0b3Aub3JnL2dmeC1jaS9saW51eAogIElHVF81MTQ2OiAzNTdkYmUxODY5ZDg4YTJmMDhiY2Vl
NGVlYmNlZmY0ZWU5MDE0NDI0IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcveG9yZy9h
cHAvaW50ZWwtZ3B1LXRvb2xzCiAgUGF0Y2h3b3JrXzE0MTI5OiA2OWEwOGYyMTQ5OTViYTU3OTFk
MDNmZTBhNThiNjQ3Mzc5NjYwZjdmIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4
LWNpL2xpbnV4CgoKPT0gTGludXggY29tbWl0cyA9PQoKNjlhMDhmMjE0OTk1IGRybS9pOTE1L3Nl
bGZ0ZXN0czogRml4dXAgYSBjb3VwbGUgb2YgbWlzc2luZyBzZXJpYWxpc2F0aW9uIHdpdGggdm1h
Cgo9PSBMb2dzID09CgpGb3IgbW9yZSBkZXRhaWxzIHNlZTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxMjkvCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
