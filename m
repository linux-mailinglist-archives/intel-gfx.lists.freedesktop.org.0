Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE97D16FB
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 19:41:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3689E6EA2D;
	Wed,  9 Oct 2019 17:41:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 910D46EA2B;
 Wed,  9 Oct 2019 17:41:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 89C0BA3DED;
 Wed,  9 Oct 2019 17:41:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 09 Oct 2019 17:41:43 -0000
Message-ID: <20191009174143.31954.98355@emeril.freedesktop.org>
References: <20191009100955.21477-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191009100955.21477-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5B1/2=5D_drm/i915/execlists=3A_Protect_peekin?=
 =?utf-8?q?g_at_execlists-=3Eactive_=28rev3=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvMl0g
ZHJtL2k5MTUvZXhlY2xpc3RzOiBQcm90ZWN0IHBlZWtpbmcgYXQgZXhlY2xpc3RzLT5hY3RpdmUg
KHJldjMpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82
Nzc4Mi8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpDSSBCdWcgTG9nIC0gY2hhbmdl
cyBmcm9tIENJX0RSTV83MDQzIC0+IFBhdGNod29ya18xNDcyOQo9PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CgpTdW1tYXJ5Ci0tLS0tLS0KCiAgKipG
QUlMVVJFKioKCiAgU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3Jr
XzE0NzI5IGFic29sdXRlbHkgbmVlZCB0byBiZQogIHZlcmlmaWVkIG1hbnVhbGx5LgogIAogIElm
IHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0
aGUgY2hhbmdlcwogIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE0NzI5LCBwbGVhc2Ugbm90aWZ5
IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cgdGhlbQogIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1
cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLgoKICBFeHRl
cm5hbCBVUkw6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE0NzI5L2luZGV4Lmh0bWwKClBvc3NpYmxlIG5ldyBpc3N1ZXMKLS0tLS0tLS0tLS0tLS0t
LS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBp
bnRyb2R1Y2VkIGluIFBhdGNod29ya18xNDcyOToKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMg
UG9zc2libGUgcmVncmVzc2lvbnMgIyMjIwoKICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfaGFu
Z2NoZWNrOgogICAgLSBmaS1oc3ctNDc3MHI6ICAgICAgIFtQQVNTXVsxXSAtPiBbRE1FU0ctRkFJ
TF1bMl0KICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV83MDQzL2ZpLWhzdy00Nzcwci9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hhbmdjaGVjay5o
dG1sCiAgIFsyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTQ3MjkvZmktaHN3LTQ3NzByL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfaGFuZ2NoZWNr
Lmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX3dvcmthcm91bmRzOgogICAgLSBmaS1z
a2wtNjYwMHU6ICAgICAgIFtQQVNTXVszXSAtPiBbRE1FU0ctRkFJTF1bNF0KICAgWzNdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDQzL2ZpLXNrbC02
NjAwdS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX3dvcmthcm91bmRzLmh0bWwKICAgWzRdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDcyOS9maS1z
a2wtNjYwMHUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV93b3JrYXJvdW5kcy5odG1sCgogIApLbm93
biBpc3N1ZXMKLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBh
dGNod29ya18xNDcyOSB0aGF0IGNvbWUgZnJvbSBrbm93biBpc3N1ZXM6CgojIyMgSUdUIGNoYW5n
ZXMgIyMjCgojIyMjIElzc3VlcyBoaXQgIyMjIwoKICAqIGlndEBnZW1fZmxpbmtfYmFzaWNAZG91
YmxlLWZsaW5rOgogICAgLSBmaS1pY2wtdTM6ICAgICAgICAgIFtQQVNTXVs1XSAtPiBbRE1FU0ct
V0FSTl1bNl0gKFtmZG8jMTA3NzI0XSkgKzEgc2ltaWxhciBpc3N1ZQogICBbNV06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwNDMvZmktaWNsLXUzL2ln
dEBnZW1fZmxpbmtfYmFzaWNAZG91YmxlLWZsaW5rLmh0bWwKICAgWzZdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDcyOS9maS1pY2wtdTMvaWd0
QGdlbV9mbGlua19iYXNpY0Bkb3VibGUtZmxpbmsuaHRtbAoKICAqIGlndEBrbXNfYnVzeUBiYXNp
Yy1mbGlwLWI6CiAgICAtIGZpLWljbC11MzogICAgICAgICAgW1BBU1NdWzddIC0+IFtETUVTRy1X
QVJOXVs4XSAoW2ZkbyMxMDYxMDddKQogICBbN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzcwNDMvZmktaWNsLXUzL2lndEBrbXNfYnVzeUBiYXNpYy1m
bGlwLWIuaHRtbAogICBbOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE0NzI5L2ZpLWljbC11My9pZ3RAa21zX2J1c3lAYmFzaWMtZmxpcC1iLmh0
bWwKCiAgCiMjIyMgUG9zc2libGUgZml4ZXMgIyMjIwoKICAqIGlndEBnZW1fbW1hcF9ndHRAYmFz
aWMtY29weToKICAgIC0gZmktaWNsLXUzOiAgICAgICAgICBbRE1FU0ctV0FSTl1bOV0gKFtmZG8j
MTA3NzI0XSkgLT4gW1BBU1NdWzEwXQogICBbOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzcwNDMvZmktaWNsLXUzL2lndEBnZW1fbW1hcF9ndHRAYmFz
aWMtY29weS5odG1sCiAgIFsxMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE0NzI5L2ZpLWljbC11My9pZ3RAZ2VtX21tYXBfZ3R0QGJhc2ljLWNv
cHkuaHRtbAoKICAqIGlndEBnZW1fc3luY0BiYXNpYy1tYW55LWVhY2g6CiAgICAtIHtmaS10Z2wt
dX06ICAgICAgICAgW0lOQ09NUExFVEVdWzExXSAoW2ZkbyMxMTE4ODBdKSAtPiBbUEFTU11bMTJd
CiAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzcwNDMvZmktdGdsLXUvaWd0QGdlbV9zeW5jQGJhc2ljLW1hbnktZWFjaC5odG1sCiAgIFsxMl06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NzI5
L2ZpLXRnbC11L2lndEBnZW1fc3luY0BiYXNpYy1tYW55LWVhY2guaHRtbAoKICAKICB7bmFtZX06
IFRoaXMgZWxlbWVudCBpcyBzdXBwcmVzc2VkLiBUaGlzIG1lYW5zIGl0IGlzIGlnbm9yZWQgd2hl
biBjb21wdXRpbmcKICAgICAgICAgIHRoZSBzdGF0dXMgb2YgdGhlIGRpZmZlcmVuY2UgKFNVQ0NF
U1MsIFdBUk5JTkcsIG9yIEZBSUxVUkUpLgoKICBbZmRvIzEwNjEwN106IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNjEwNwogIFtmZG8jMTA3NzI0XTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NzI0CiAgW2ZkbyMx
MTE2NDddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE2
NDcKICBbZmRvIzExMTg4MF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTExMTg4MAoKClBhcnRpY2lwYXRpbmcgaG9zdHMgKDU0IC0+IDQ2KQotLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgTWlzc2luZyAgICAoOCk6IGZpLWlsay1tNTQwIGZpLWhz
dy00MjAwdSBmaS1ieXQtc3F1YXdrcyBmaS1ic3ctY3lhbiBmaS1wbnYtZDUxMCBmaS1pY2wteSBm
aS1ieXQtY2xhcHBlciBmaS1iZHctc2FtdXMgCgoKQnVpbGQgY2hhbmdlcwotLS0tLS0tLS0tLS0t
CgogICogQ0k6IENJLTIwMTkwNTI5IC0+IE5vbmUKICAqIExpbnV4OiBDSV9EUk1fNzA0MyAtPiBQ
YXRjaHdvcmtfMTQ3MjkKCiAgQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5CiAgQ0lfRFJNXzcwNDM6IGVk
NmM0N2RmZjQ5ODEzOGNkMzQ5NGM5NWExMDdjNTc4NzA5NGIwYjkgQCBnaXQ6Ly9hbm9uZ2l0LmZy
ZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKICBJR1RfNTIxOTogZTUwMTc0MWYyZTJiMDg2YThj
NTVkOWYyNzhjNjMwY2U2OGFkNWZlMSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hv
cmcvYXBwL2ludGVsLWdwdS10b29scwogIFBhdGNod29ya18xNDcyOTogYjIxZWQzY2YyMjA5MTgx
MzFlZjVlMjA5MjUzNTc1OGRkMDQ0MWYzYyBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3Jn
L2dmeC1jaS9saW51eAoKCj09IExpbnV4IGNvbW1pdHMgPT0KCmIyMWVkM2NmMjIwOSBkcm0vaTkx
NS9ndDogZXhlY2xpc3RzLT5hY3RpdmUgaXMgc2VyaWFsaXNlZCBieSB0aGUgdGFza2xldAoxMDhl
ZDM4NjkyZDMgZHJtL2k5MTUvZXhlY2xpc3RzOiBQcm90ZWN0IHBlZWtpbmcgYXQgZXhlY2xpc3Rz
LT5hY3RpdmUKCj09IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDcyOS9pbmRleC5odG1sCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
