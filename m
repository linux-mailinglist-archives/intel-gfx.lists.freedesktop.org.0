Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56485DB7FC
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 21:47:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EACDF6EA38;
	Thu, 17 Oct 2019 19:47:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CBE0A6EA6E;
 Thu, 17 Oct 2019 19:47:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C5C09A0137;
 Thu, 17 Oct 2019 19:47:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 17 Oct 2019 19:47:33 -0000
Message-ID: <20191017194733.5569.7356@emeril.freedesktop.org>
References: <20191017154208.20128-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191017154208.20128-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5BCI=2C1/2=5D_drm/i915/execlists=3A_Don=27t_m?=
 =?utf-8?q?erely_skip_submission_if_maybe_timeslicing?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDEv
Ml0gZHJtL2k5MTUvZXhlY2xpc3RzOiBEb24ndCBtZXJlbHkgc2tpcCBzdWJtaXNzaW9uIGlmIG1h
eWJlIHRpbWVzbGljaW5nClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3Nlcmllcy82ODE2MC8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpDSSBCdWcgTG9n
IC0gY2hhbmdlcyBmcm9tIENJX0RSTV83MTIyIC0+IFBhdGNod29ya18xNDg1OQo9PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CgpTdW1tYXJ5Ci0tLS0t
LS0KCiAgKipGQUlMVVJFKioKCiAgU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdpdGgg
UGF0Y2h3b3JrXzE0ODU5IGFic29sdXRlbHkgbmVlZCB0byBiZQogIHZlcmlmaWVkIG1hbnVhbGx5
LgogIAogIElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8g
ZG8gd2l0aCB0aGUgY2hhbmdlcwogIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE0ODU5LCBwbGVh
c2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cgdGhlbQogIHRvIGRvY3VtZW50IHRoaXMg
bmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJ
LgoKICBFeHRlcm5hbCBVUkw6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE0ODU5L2luZGV4Lmh0bWwKClBvc3NpYmxlIG5ldyBpc3N1ZXMKLS0tLS0t
LS0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhh
dmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNDg1OToKCiMjIyBJR1QgY2hhbmdlcyAj
IyMKCiMjIyMgUG9zc2libGUgcmVncmVzc2lvbnMgIyMjIwoKICAqIGlndEBpOTE1X3NlbGZ0ZXN0
QGxpdmVfZXhlY2xpc3RzOgogICAgLSBmaS1za2wtaW9tbXU6ICAgICAgIFtQQVNTXVsxXSAtPiBb
RE1FU0ctRkFJTF1bMl0KICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV83MTIyL2ZpLXNrbC1pb21tdS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4
ZWNsaXN0cy5odG1sCiAgIFsyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTQ4NTkvZmktc2tsLWlvbW11L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVf
ZXhlY2xpc3RzLmh0bWwKICAgIC0gZmktY21sLXU6ICAgICAgICAgICBbUEFTU11bM10gLT4gW0RN
RVNHLUZBSUxdWzRdCiAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNzEyMi9maS1jbWwtdS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0
cy5odG1sCiAgIFs0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTQ4NTkvZmktY21sLXUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlzdHMu
aHRtbAogICAgLSBmaS1rYmwtZ3VjOiAgICAgICAgIFtQQVNTXVs1XSAtPiBbRE1FU0ctRkFJTF1b
Nl0KICAgWzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV83MTIyL2ZpLWtibC1ndWMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlzdHMuaHRtbAog
ICBbNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE0ODU5L2ZpLWtibC1ndWMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlzdHMuaHRtbAog
ICAgLSBmaS1za2wtbG1lbTogICAgICAgIFtQQVNTXVs3XSAtPiBbRE1FU0ctRkFJTF1bOF0KICAg
WzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MTIy
L2ZpLXNrbC1sbWVtL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXhlY2xpc3RzLmh0bWwKICAgWzhd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDg1
OS9maS1za2wtbG1lbS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0cy5odG1sCgogIApL
bm93biBpc3N1ZXMKLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGlu
IFBhdGNod29ya18xNDg1OSB0aGF0IGNvbWUgZnJvbSBrbm93biBpc3N1ZXM6CgojIyMgSUdUIGNo
YW5nZXMgIyMjCgojIyMjIElzc3VlcyBoaXQgIyMjIwoKICAqIGlndEBnZW1fZmxpbmtfYmFzaWNA
YmFkLW9wZW46CiAgICAtIGZpLWljbC11MzogICAgICAgICAgW1BBU1NdWzldIC0+IFtETUVTRy1X
QVJOXVsxMF0gKFtmZG8jMTA3NzI0XSkKICAgWzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MTIyL2ZpLWljbC11My9pZ3RAZ2VtX2ZsaW5rX2Jhc2lj
QGJhZC1vcGVuLmh0bWwKICAgWzEwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTQ4NTkvZmktaWNsLXUzL2lndEBnZW1fZmxpbmtfYmFzaWNAYmFk
LW9wZW4uaHRtbAoKICAKIyMjIyBQb3NzaWJsZSBmaXhlcyAjIyMjCgogICogaWd0QGdlbV9jdHhf
c3dpdGNoQHJjczA6CiAgICAtIHtmaS1pY2wtZ3VjfTogICAgICAgW0lOQ09NUExFVEVdWzExXSAo
W2ZkbyMxMDc3MTNdKSAtPiBbUEFTU11bMTJdCiAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxMjIvZmktaWNsLWd1Yy9pZ3RAZ2VtX2N0eF9z
d2l0Y2hAcmNzMC5odG1sCiAgIFsxMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE0ODU5L2ZpLWljbC1ndWMvaWd0QGdlbV9jdHhfc3dpdGNoQHJj
czAuaHRtbAoKICAqIGlndEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXM0LWRldmljZXM6CiAgICAt
IGZpLWljbC11MzogICAgICAgICAgW0RNRVNHLVdBUk5dWzEzXSAoW2ZkbyMxMDc3MjRdKSAtPiBb
UEFTU11bMTRdICsyIHNpbWlsYXIgaXNzdWVzCiAgIFsxM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxMjIvZmktaWNsLXUzL2lndEBnZW1fZXhlY19z
dXNwZW5kQGJhc2ljLXM0LWRldmljZXMuaHRtbAogICBbMTRdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDg1OS9maS1pY2wtdTMvaWd0QGdlbV9l
eGVjX3N1c3BlbmRAYmFzaWMtczQtZGV2aWNlcy5odG1sCgogICogaWd0QGk5MTVfc2VsZnRlc3RA
bGl2ZV9leGVjbGlzdHM6CiAgICAtIGZpLWljbC11MzogICAgICAgICAgW0RNRVNHLUZBSUxdWzE1
XSAtPiBbUEFTU11bMTZdCiAgIFsxNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzcxMjIvZmktaWNsLXUzL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXhl
Y2xpc3RzLmh0bWwKICAgWzE2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTQ4NTkvZmktaWNsLXUzL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXhl
Y2xpc3RzLmh0bWwKICAgIC0gZmktY2ZsLTgxMDl1OiAgICAgICBbRE1FU0ctRkFJTF1bMTddIC0+
IFtQQVNTXVsxOF0KICAgWzE3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNzEyMi9maS1jZmwtODEwOXUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVj
bGlzdHMuaHRtbAogICBbMThdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xNDg1OS9maS1jZmwtODEwOXUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9l
eGVjbGlzdHMuaHRtbAoKICAKICB7bmFtZX06IFRoaXMgZWxlbWVudCBpcyBzdXBwcmVzc2VkLiBU
aGlzIG1lYW5zIGl0IGlzIGlnbm9yZWQgd2hlbiBjb21wdXRpbmcKICAgICAgICAgIHRoZSBzdGF0
dXMgb2YgdGhlIGRpZmZlcmVuY2UgKFNVQ0NFU1MsIFdBUk5JTkcsIG9yIEZBSUxVUkUpLgoKICBb
ZmRvIzEwNzcxM106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lk
PTEwNzcxMwogIFtmZG8jMTA3NzI0XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93
X2J1Zy5jZ2k/aWQ9MTA3NzI0CiAgW2ZkbyMxMTE3NDddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0
b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE3NDcKCgpQYXJ0aWNpcGF0aW5nIGhvc3RzICg1MyAt
PiA0NSkKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgogIE1pc3NpbmcgICAgKDgpOiBm
aS1pbGstbTU0MCBmaS1oc3ctNDIwMHUgZmktYnN3LW4zMDUwIGZpLWJ5dC1zcXVhd2tzIGZpLWJz
dy1jeWFuIGZpLWljbC15IGZpLWJ5dC1jbGFwcGVyIGZpLWJkdy1zYW11cyAKCgpCdWlsZCBjaGFu
Z2VzCi0tLS0tLS0tLS0tLS0KCiAgKiBDSTogQ0ktMjAxOTA1MjkgLT4gTm9uZQogICogTGludXg6
IENJX0RSTV83MTIyIC0+IFBhdGNod29ya18xNDg1OQoKICBDSS0yMDE5MDUyOTogMjAxOTA1MjkK
ICBDSV9EUk1fNzEyMjogYzJmNmJkYzA5ZjhmMDQ2Y2QzOGUzYzM5YzkyZTE0ZTYwMzNkYmQ0NCBA
IGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIElHVF81MjMyOiBi
YjU3MzU0MjNlYWY2ZmRiZjZiMmY5NGVmMGI4NTIwZTc0ZWFiOTkzIEAgZ2l0Oi8vYW5vbmdpdC5m
cmVlZGVza3RvcC5vcmcveG9yZy9hcHAvaW50ZWwtZ3B1LXRvb2xzCiAgUGF0Y2h3b3JrXzE0ODU5
OiBlNTA1MzU1MGM4NmQwZjYzMDY3YjdmMWRmNWYwZjJjNTg5Y2E2NDU1IEAgZ2l0Oi8vYW5vbmdp
dC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CgoKPT0gTGludXggY29tbWl0cyA9PQoKZTUw
NTM1NTBjODZkIGRybS9pOTE1OiBEb24ndCBkaXNhYmxlIGludGVycnVwdHMgaW5kZXBlbmRlbnRs
eSBvZiB0aGUgbG9jawowZGE4ZTY3NjQ0MzMgZHJtL2k5MTUvZXhlY2xpc3RzOiBEb24ndCBtZXJl
bHkgc2tpcCBzdWJtaXNzaW9uIGlmIG1heWJlIHRpbWVzbGljaW5nCgo9PSBMb2dzID09CgpGb3Ig
bW9yZSBkZXRhaWxzIHNlZTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTQ4NTkvaW5kZXguaHRtbApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
