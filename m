Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0386610DDC5
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Nov 2019 14:25:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A75A6E13B;
	Sat, 30 Nov 2019 13:25:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D272F6E13A;
 Sat, 30 Nov 2019 13:24:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CAD4CA011B;
 Sat, 30 Nov 2019 13:24:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 30 Nov 2019 13:24:57 -0000
Message-ID: <157512029782.2157.15860287524877048387@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191130122445.1637141-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191130122445.1637141-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5B1/2=5D_drm/i915/execlists=3A_Tweak_priority?=
 =?utf-8?q?_hint_to_use_last_port_if_set?=
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
ZHJtL2k5MTUvZXhlY2xpc3RzOiBUd2VhayBwcmlvcml0eSBoaW50IHRvIHVzZSBsYXN0IHBvcnQg
aWYgc2V0ClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy83
MDIzMC8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpDSSBCdWcgTG9nIC0gY2hhbmdl
cyBmcm9tIENJX0RSTV83NDUwIC0+IFBhdGNod29ya18xNTUyMwo9PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CgpTdW1tYXJ5Ci0tLS0tLS0KCiAgKipG
QUlMVVJFKioKCiAgU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3Jr
XzE1NTIzIGFic29sdXRlbHkgbmVlZCB0byBiZQogIHZlcmlmaWVkIG1hbnVhbGx5LgogIAogIElm
IHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0
aGUgY2hhbmdlcwogIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE1NTIzLCBwbGVhc2Ugbm90aWZ5
IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cgdGhlbQogIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1
cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLgoKICBFeHRl
cm5hbCBVUkw6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE1NTIzL2luZGV4Lmh0bWwKClBvc3NpYmxlIG5ldyBpc3N1ZXMKLS0tLS0tLS0tLS0tLS0t
LS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBp
bnRyb2R1Y2VkIGluIFBhdGNod29ya18xNTUyMzoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMg
UG9zc2libGUgcmVncmVzc2lvbnMgIyMjIwoKICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfYmx0
OgogICAgLSBmaS1oc3ctNDc3MDogICAgICAgIFtQQVNTXVsxXSAtPiBbRE1FU0ctRkFJTF1bMl0K
ICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83
NDUwL2ZpLWhzdy00NzcwL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfYmx0Lmh0bWwKICAgWzJdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTUyMy9m
aS1oc3ctNDc3MC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2JsdC5odG1sCgogICogaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZV9ldmljdDoKICAgIC0gZmktYndyLTIxNjA6ICAgICAgICBbUEFTU11bM10g
LT4gW0lOQ09NUExFVEVdWzRdCiAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNzQ1MC9maS1id3ItMjE2MC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZl
X2V2aWN0Lmh0bWwKICAgWzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xNTUyMy9maS1id3ItMjE2MC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V2
aWN0Lmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0czoKICAgIC0gZmkt
aWNsLXk6ICAgICAgICAgICBbUEFTU11bNV0gLT4gW0RNRVNHLUZBSUxdWzZdCiAgIFs1XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQ1MC9maS1pY2wt
eS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0cy5odG1sCiAgIFs2XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU1MjMvZmktaWNsLXkv
aWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlzdHMuaHRtbAoKICAqIGlndEBydW5uZXJAYWJv
cnRlZDoKICAgIC0gZmkta2JsLTc1MDB1OiAgICAgICBOT1RSVU4gLT4gW0ZBSUxdWzddCiAgIFs3
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU1
MjMvZmkta2JsLTc1MDB1L2lndEBydW5uZXJAYWJvcnRlZC5odG1sCgogIApLbm93biBpc3N1ZXMK
LS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNod29ya18x
NTUyMyB0aGF0IGNvbWUgZnJvbSBrbm93biBpc3N1ZXM6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgoj
IyMjIElzc3VlcyBoaXQgIyMjIwoKICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXhlY2xpc3Rz
OgogICAgLSBmaS1rYmwtNzUwMHU6ICAgICAgIFtQQVNTXVs4XSAtPiBbSU5DT01QTEVURV1bOV0g
KFtmZG8jMTEyMTc1XSAvIFtmZG8jMTEyMjU5XSkKICAgWzhdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDUwL2ZpLWtibC03NTAwdS9pZ3RAaTkxNV9z
ZWxmdGVzdEBsaXZlX2V4ZWNsaXN0cy5odG1sCiAgIFs5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU1MjMvZmkta2JsLTc1MDB1L2lndEBpOTE1
X3NlbGZ0ZXN0QGxpdmVfZXhlY2xpc3RzLmh0bWwKCiAgKiBpZ3RAa21zX2NoYW1lbGl1bUBoZG1p
LWhwZC1mYXN0OgogICAgLSBmaS1rYmwtNzUwMHU6ICAgICAgIFtQQVNTXVsxMF0gLT4gW0ZBSUxd
WzExXSAoW2ZkbyMxMTE0MDddKQogICBbMTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV83NDUwL2ZpLWtibC03NTAwdS9pZ3RAa21zX2NoYW1lbGl1bUBo
ZG1pLWhwZC1mYXN0Lmh0bWwKICAgWzExXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU1MjMvZmkta2JsLTc1MDB1L2lndEBrbXNfY2hhbWVsaXVt
QGhkbWktaHBkLWZhc3QuaHRtbAoKICAKIyMjIyBQb3NzaWJsZSBmaXhlcyAjIyMjCgogICogaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4dHM6CiAgICAtIGZpLWhzdy1wZXBweTogICAg
ICAgW0lOQ09NUExFVEVdWzEyXSAtPiBbUEFTU11bMTNdCiAgIFsxMl06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0NTAvZmktaHN3LXBlcHB5L2lndEBp
OTE1X3NlbGZ0ZXN0QGxpdmVfZ2VtX2NvbnRleHRzLmh0bWwKICAgWzEzXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU1MjMvZmktaHN3LXBlcHB5
L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ2VtX2NvbnRleHRzLmh0bWwKCiAgKiBpZ3RAaTkxNV9z
ZWxmdGVzdEBsaXZlX3Nhbml0eWNoZWNrOgogICAgLSBmaS1za2wtbG1lbTogICAgICAgIFtETUVT
Ry1XQVJOXVsxNF0gKFtpOTE1IzU5Ml0pIC0+IFtQQVNTXVsxNV0KICAgWzE0XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQ1MC9maS1za2wtbG1lbS9p
Z3RAaTkxNV9zZWxmdGVzdEBsaXZlX3Nhbml0eWNoZWNrLmh0bWwKICAgWzE1XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU1MjMvZmktc2tsLWxt
ZW0vaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9zYW5pdHljaGVjay5odG1sCgogIAojIyMjIFdhcm5p
bmdzICMjIyMKCiAgKiBpZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zNC1kZXZpY2VzOgogICAg
LSBmaS1rYmwteDEyNzU6ICAgICAgIFtETUVTRy1XQVJOXVsxNl0gKFtmZG8jMTA3MTM5XSAvIFtp
OTE1IzYyXSAvIFtpOTE1IzkyXSkgLT4gW0RNRVNHLVdBUk5dWzE3XSAoW2ZkbyMxMDcxMzldIC8g
W2k5MTUjNjJdIC8gW2k5MTUjOTJdIC8gW2k5MTUjOTVdKQogICBbMTZdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDUwL2ZpLWtibC14MTI3NS9pZ3RA
Z2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zNC1kZXZpY2VzLmh0bWwKICAgWzE3XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU1MjMvZmkta2JsLXgx
Mjc1L2lndEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXM0LWRldmljZXMuaHRtbAoKICAqIGlndEBp
OTE1X3BtX3JwbUBiYXNpYy1ydGU6CiAgICAtIGZpLWtibC1ndWM6ICAgICAgICAgW0ZBSUxdWzE4
XSAoW2k5MTUjNTc5XSkgLT4gW1NLSVBdWzE5XSAoW2ZkbyMxMDkyNzFdKQogICBbMThdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDUwL2ZpLWtibC1n
dWMvaWd0QGk5MTVfcG1fcnBtQGJhc2ljLXJ0ZS5odG1sCiAgIFsxOV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTIzL2ZpLWtibC1ndWMvaWd0
QGk5MTVfcG1fcnBtQGJhc2ljLXJ0ZS5odG1sCgogICogaWd0QGttc19idXN5QGJhc2ljLWZsaXAt
cGlwZS1iOgogICAgLSBmaS1rYmwteDEyNzU6ICAgICAgIFtETUVTRy1XQVJOXVsyMF0gKFtpOTE1
IzYyXSAvIFtpOTE1IzkyXSAvIFtpOTE1Izk1XSkgLT4gW0RNRVNHLVdBUk5dWzIxXSAoW2k5MTUj
NjJdIC8gW2k5MTUjOTJdKSArNiBzaW1pbGFyIGlzc3VlcwogICBbMjBdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDUwL2ZpLWtibC14MTI3NS9pZ3RA
a21zX2J1c3lAYmFzaWMtZmxpcC1waXBlLWIuaHRtbAogICBbMjFdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTUyMy9maS1rYmwteDEyNzUvaWd0
QGttc19idXN5QGJhc2ljLWZsaXAtcGlwZS1iLmh0bWwKCiAgKiBpZ3RAa21zX2N1cnNvcl9sZWdh
Y3lAYmFzaWMtYnVzeS1mbGlwLWJlZm9yZS1jdXJzb3ItbGVnYWN5OgogICAgLSBmaS1rYmwteDEy
NzU6ICAgICAgIFtETUVTRy1XQVJOXVsyMl0gKFtpOTE1IzYyXSAvIFtpOTE1IzkyXSkgLT4gW0RN
RVNHLVdBUk5dWzIzXSAoW2k5MTUjNjJdIC8gW2k5MTUjOTJdIC8gW2k5MTUjOTVdKSArNSBzaW1p
bGFyIGlzc3VlcwogICBbMjJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV83NDUwL2ZpLWtibC14MTI3NS9pZ3RAa21zX2N1cnNvcl9sZWdhY3lAYmFzaWMt
YnVzeS1mbGlwLWJlZm9yZS1jdXJzb3ItbGVnYWN5Lmh0bWwKICAgWzIzXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU1MjMvZmkta2JsLXgxMjc1
L2lndEBrbXNfY3Vyc29yX2xlZ2FjeUBiYXNpYy1idXN5LWZsaXAtYmVmb3JlLWN1cnNvci1sZWdh
Y3kuaHRtbAoKICAKICB7bmFtZX06IFRoaXMgZWxlbWVudCBpcyBzdXBwcmVzc2VkLiBUaGlzIG1l
YW5zIGl0IGlzIGlnbm9yZWQgd2hlbiBjb21wdXRpbmcKICAgICAgICAgIHRoZSBzdGF0dXMgb2Yg
dGhlIGRpZmZlcmVuY2UgKFNVQ0NFU1MsIFdBUk5JTkcsIG9yIEZBSUxVUkUpLgoKICBbZmRvIzEw
NzEzOV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzEz
OQogIFtmZG8jMTA5MjcxXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTA5MjcxCiAgW2ZkbyMxMTE0MDddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMTE0MDcKICBbZmRvIzExMjE3NV06IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMjE3NQogIFtmZG8jMTEyMjU5XTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyMjU5CiAgW2k5MTUjNTc5
XTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNTc5CiAg
W2k5MTUjNTkxXTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1
ZXMvNTkxCiAgW2k5MTUjNTkyXTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9p
bnRlbC9pc3N1ZXMvNTkyCiAgW2k5MTUjNjJdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5v
cmcvZHJtL2ludGVsL2lzc3Vlcy82MgogIFtpOTE1IzkyXTogaHR0cHM6Ly9naXRsYWIuZnJlZWRl
c2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvOTIKICBbaTkxNSM5NV06IGh0dHBzOi8vZ2l0bGFi
LmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzk1CgoKUGFydGljaXBhdGluZyBob3N0
cyAoNTAgLT4gNDUpCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBBZGRpdGlvbmFs
ICgxKTogZmktdGdsLXkgCiAgTWlzc2luZyAgICAoNik6IGZpLWlsay1tNTQwIGZpLWhzdy00MjAw
dSBmaS1ic3ctY3lhbiBmaS1jdGctcDg2MDAgZmktYnl0LWNsYXBwZXIgZmktYmR3LXNhbXVzIAoK
CkJ1aWxkIGNoYW5nZXMKLS0tLS0tLS0tLS0tLQoKICAqIENJOiBDSS0yMDE5MDUyOSAtPiBOb25l
CiAgKiBMaW51eDogQ0lfRFJNXzc0NTAgLT4gUGF0Y2h3b3JrXzE1NTIzCgogIENJLTIwMTkwNTI5
OiAyMDE5MDUyOQogIENJX0RSTV83NDUwOiAyM2NiYzFkNzBhYTZkYzA4ZmNmMzU0ZjE0ZDc0MGZk
ZTBlMTI1MmM1IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAg
SUdUXzUzMTg6IDI2YWU2NTg0YWMwM2FkODYyZDgyZjk4NjMwMjI3NWE2OGJjY2NiMjkgQCBnaXQ6
Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94b3JnL2FwcC9pbnRlbC1ncHUtdG9vbHMKICBQYXRj
aHdvcmtfMTU1MjM6IDNhZDQyM2Q2YWYyYmZlOTc3MjgwZDFlYTQwMmQyODYzNmJjYmU2N2EgQCBn
aXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKCgo9PSBMaW51eCBjb21t
aXRzID09CgozYWQ0MjNkNmFmMmIgZHJtL2k5MTU6IFR3ZWFrIHNjaGVkdWxlcidzIGtpY2tfc3Vi
bWlzc2lvbigpCjBkZjU5ZmQ3ZWExNyBkcm0vaTkxNS9leGVjbGlzdHM6IFR3ZWFrIHByaW9yaXR5
IGhpbnQgdG8gdXNlIGxhc3QgcG9ydCBpZiBzZXQKCj09IExvZ3MgPT0KCkZvciBtb3JlIGRldGFp
bHMgc2VlOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNTUyMy9pbmRleC5odG1sCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
