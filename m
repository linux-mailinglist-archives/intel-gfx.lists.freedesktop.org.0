Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD765E977
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 18:46:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DD676E176;
	Wed,  3 Jul 2019 16:46:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DEDE66E175;
 Wed,  3 Jul 2019 16:46:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D779DA00EF;
 Wed,  3 Jul 2019 16:46:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 03 Jul 2019 16:46:03 -0000
Message-ID: <20190703164603.7777.56730@emeril.freedesktop.org>
References: <20190703135805.7310-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190703135805.7310-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5B1/2=5D_drm/i915=3A_Dump_w/a_lists_on_all_en?=
 =?utf-8?q?gines?=
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
ZHJtL2k5MTU6IER1bXAgdy9hIGxpc3RzIG9uIGFsbCBlbmdpbmVzClVSTCAgIDogaHR0cHM6Ly9w
YXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MzE0MC8KU3RhdGUgOiBmYWlsdXJlCgo9
PSBTdW1tYXJ5ID09CgpDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV82NDA0IC0+IFBh
dGNod29ya18xMzUwOQo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09CgpTdW1tYXJ5Ci0tLS0tLS0KCiAgKipGQUlMVVJFKioKCiAgU2VyaW91cyB1bmtu
b3duIGNoYW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzEzNTA5IGFic29sdXRlbHkgbmVlZCB0
byBiZQogIHZlcmlmaWVkIG1hbnVhbGx5LgogIAogIElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQg
Y2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcwogIGludHJvZHVjZWQg
aW4gUGF0Y2h3b3JrXzEzNTA5LCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cg
dGhlbQogIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1
Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLgoKICBFeHRlcm5hbCBVUkw6IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNTA5LwoKUG9zc2libGUgbmV3
IGlzc3VlcwotLS0tLS0tLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5n
ZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzEzNTA5OgoKIyMj
IElHVCBjaGFuZ2VzICMjIwoKIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjCgogICogaWd0
QGdlbV93b3JrYXJvdW5kc0BiYXNpYy1yZWFkOgogICAgLSBmaS1pY2wtZHNpOiAgICAgICAgIFtQ
QVNTXVsxXSAtPiBbU0tJUF1bMl0KICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV82NDA0L2ZpLWljbC1kc2kvaWd0QGdlbV93b3JrYXJvdW5kc0Bi
YXNpYy1yZWFkLmh0bWwKICAgWzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xMzUwOS9maS1pY2wtZHNpL2lndEBnZW1fd29ya2Fyb3VuZHNAYmFz
aWMtcmVhZC5odG1sCiAgICAtIGZpLWNtbC11MjogICAgICAgICAgW1BBU1NdWzNdIC0+IFtTS0lQ
XVs0XQogICBbM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzY0MDQvZmktY21sLXUyL2lndEBnZW1fd29ya2Fyb3VuZHNAYmFzaWMtcmVhZC5odG1sCiAg
IFs0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTM1MDkvZmktY21sLXUyL2lndEBnZW1fd29ya2Fyb3VuZHNAYmFzaWMtcmVhZC5odG1sCiAgICAt
IGZpLWNtbC11OiAgICAgICAgICAgW1BBU1NdWzVdIC0+IFtTS0lQXVs2XQogICBbNV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY0MDQvZmktY21sLXUv
aWd0QGdlbV93b3JrYXJvdW5kc0BiYXNpYy1yZWFkLmh0bWwKICAgWzZdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzUwOS9maS1jbWwtdS9pZ3RA
Z2VtX3dvcmthcm91bmRzQGJhc2ljLXJlYWQuaHRtbAogICAgLSBmaS1pY2wtdTM6ICAgICAgICAg
IE5PVFJVTiAtPiBbU0tJUF1bN10KICAgWzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzUwOS9maS1pY2wtdTMvaWd0QGdlbV93b3JrYXJvdW5k
c0BiYXNpYy1yZWFkLmh0bWwKICAgIC0gZmktaWNsLXUyOiAgICAgICAgICBbUEFTU11bOF0gLT4g
W1NLSVBdWzldCiAgIFs4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNjQwNC9maS1pY2wtdTIvaWd0QGdlbV93b3JrYXJvdW5kc0BiYXNpYy1yZWFkLmh0
bWwKICAgWzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xMzUwOS9maS1pY2wtdTIvaWd0QGdlbV93b3JrYXJvdW5kc0BiYXNpYy1yZWFkLmh0bWwK
CiAgCiMjIyMgV2FybmluZ3MgIyMjIwoKICAqIGlndEBnZW1fd29ya2Fyb3VuZHNAYmFzaWMtcmVh
ZDoKICAgIC0gZmktaHN3LTQ3NzByOiAgICAgICBbU0tJUF1bMTBdIChbZmRvIzEwOTI3MV0pIC0+
IFtGQUlMXVsxMV0KICAgWzEwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNjQwNC9maS1oc3ctNDc3MHIvaWd0QGdlbV93b3JrYXJvdW5kc0BiYXNpYy1y
ZWFkLmh0bWwKICAgWzExXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTM1MDkvZmktaHN3LTQ3NzByL2lndEBnZW1fd29ya2Fyb3VuZHNAYmFzaWMt
cmVhZC5odG1sCiAgICAtIGZpLXNuYi0yNjAwOiAgICAgICAgW1NLSVBdWzEyXSAoW2ZkbyMxMDky
NzFdKSAtPiBbRkFJTF1bMTNdCiAgIFsxMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzY0MDQvZmktc25iLTI2MDAvaWd0QGdlbV93b3JrYXJvdW5kc0Bi
YXNpYy1yZWFkLmh0bWwKICAgWzEzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTM1MDkvZmktc25iLTI2MDAvaWd0QGdlbV93b3JrYXJvdW5kc0Bi
YXNpYy1yZWFkLmh0bWwKICAgIC0gZmktaXZiLTM3NzA6ICAgICAgICBbU0tJUF1bMTRdIChbZmRv
IzEwOTI3MV0pIC0+IFtGQUlMXVsxNV0KICAgWzE0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjQwNC9maS1pdmItMzc3MC9pZ3RAZ2VtX3dvcmthcm91
bmRzQGJhc2ljLXJlYWQuaHRtbAogICBbMTVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzUwOS9maS1pdmItMzc3MC9pZ3RAZ2VtX3dvcmthcm91
bmRzQGJhc2ljLXJlYWQuaHRtbAogICAgLSBmaS1ieXQtbjI4MjA6ICAgICAgIFtTS0lQXVsxNl0g
KFtmZG8jMTA5MjcxXSkgLT4gW0ZBSUxdWzE3XQogICBbMTZdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NDA0L2ZpLWJ5dC1uMjgyMC9pZ3RAZ2VtX3dv
cmthcm91bmRzQGJhc2ljLXJlYWQuaHRtbAogICBbMTddOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzUwOS9maS1ieXQtbjI4MjAvaWd0QGdlbV93
b3JrYXJvdW5kc0BiYXNpYy1yZWFkLmh0bWwKICAgIC0gZmktaHN3LTQ3NzA6ICAgICAgICBbU0tJ
UF1bMThdIChbZmRvIzEwOTI3MV0pIC0+IFtGQUlMXVsxOV0KICAgWzE4XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjQwNC9maS1oc3ctNDc3MC9pZ3RA
Z2VtX3dvcmthcm91bmRzQGJhc2ljLXJlYWQuaHRtbAogICBbMTldOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzUwOS9maS1oc3ctNDc3MC9pZ3RA
Z2VtX3dvcmthcm91bmRzQGJhc2ljLXJlYWQuaHRtbAogICAgLSBmaS1ieXQtajE5MDA6ICAgICAg
IFtTS0lQXVsyMF0gKFtmZG8jMTA5MjcxXSkgLT4gW0ZBSUxdWzIxXQogICBbMjBdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NDA0L2ZpLWJ5dC1qMTkw
MC9pZ3RAZ2VtX3dvcmthcm91bmRzQGJhc2ljLXJlYWQuaHRtbAogICBbMjFdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzUwOS9maS1ieXQtajE5
MDAvaWd0QGdlbV93b3JrYXJvdW5kc0BiYXNpYy1yZWFkLmh0bWwKICAgIC0gZmktZ2RnLTU1MTog
ICAgICAgICBbU0tJUF1bMjJdIChbZmRvIzEwOTI3MV0pIC0+IFtGQUlMXVsyM10KICAgWzIyXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjQwNC9maS1n
ZGctNTUxL2lndEBnZW1fd29ya2Fyb3VuZHNAYmFzaWMtcmVhZC5odG1sCiAgIFsyM106IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNTA5L2ZpLWdk
Zy01NTEvaWd0QGdlbV93b3JrYXJvdW5kc0BiYXNpYy1yZWFkLmh0bWwKICAgIC0gZmktYmxiLWU2
ODUwOiAgICAgICBbU0tJUF1bMjRdIChbZmRvIzEwOTI3MV0pIC0+IFtGQUlMXVsyNV0KICAgWzI0
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjQwNC9m
aS1ibGItZTY4NTAvaWd0QGdlbV93b3JrYXJvdW5kc0BiYXNpYy1yZWFkLmh0bWwKICAgWzI1XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM1MDkv
ZmktYmxiLWU2ODUwL2lndEBnZW1fd29ya2Fyb3VuZHNAYmFzaWMtcmVhZC5odG1sCiAgICAtIGZp
LWVsay1lNzUwMDogICAgICAgW1NLSVBdWzI2XSAoW2ZkbyMxMDkyNzFdKSAtPiBbRkFJTF1bMjdd
CiAgIFsyNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzY0MDQvZmktZWxrLWU3NTAwL2lndEBnZW1fd29ya2Fyb3VuZHNAYmFzaWMtcmVhZC5odG1sCiAg
IFsyN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzEzNTA5L2ZpLWVsay1lNzUwMC9pZ3RAZ2VtX3dvcmthcm91bmRzQGJhc2ljLXJlYWQuaHRtbAog
ICAgLSBmaS1pbGstNjUwOiAgICAgICAgIFtTS0lQXVsyOF0gKFtmZG8jMTA5MjcxXSkgLT4gW0ZB
SUxdWzI5XQogICBbMjhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV82NDA0L2ZpLWlsay02NTAvaWd0QGdlbV93b3JrYXJvdW5kc0BiYXNpYy1yZWFkLmh0
bWwKICAgWzI5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTM1MDkvZmktaWxrLTY1MC9pZ3RAZ2VtX3dvcmthcm91bmRzQGJhc2ljLXJlYWQuaHRt
bAogICAgLSBmaS1wbnYtZDUxMDogICAgICAgIFtTS0lQXVszMF0gKFtmZG8jMTA5MjcxXSkgLT4g
W0ZBSUxdWzMxXQogICBbMzBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV82NDA0L2ZpLXBudi1kNTEwL2lndEBnZW1fd29ya2Fyb3VuZHNAYmFzaWMtcmVh
ZC5odG1sCiAgIFszMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzEzNTA5L2ZpLXBudi1kNTEwL2lndEBnZW1fd29ya2Fyb3VuZHNAYmFzaWMtcmVh
ZC5odG1sCiAgICAtIGZpLXNuYi0yNTIwbTogICAgICAgW1NLSVBdWzMyXSAoW2ZkbyMxMDkyNzFd
KSAtPiBbRkFJTF1bMzNdCiAgIFszMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzY0MDQvZmktc25iLTI1MjBtL2lndEBnZW1fd29ya2Fyb3VuZHNAYmFz
aWMtcmVhZC5odG1sCiAgIFszM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzEzNTA5L2ZpLXNuYi0yNTIwbS9pZ3RAZ2VtX3dvcmthcm91bmRzQGJh
c2ljLXJlYWQuaHRtbAogICAgLSBmaS1id3ItMjE2MDogICAgICAgIFtTS0lQXVszNF0gKFtmZG8j
MTA5MjcxXSkgLT4gW0ZBSUxdWzM1XQogICBbMzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NDA0L2ZpLWJ3ci0yMTYwL2lndEBnZW1fd29ya2Fyb3Vu
ZHNAYmFzaWMtcmVhZC5odG1sCiAgIFszNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNTA5L2ZpLWJ3ci0yMTYwL2lndEBnZW1fd29ya2Fyb3Vu
ZHNAYmFzaWMtcmVhZC5odG1sCiAgICAtIGZpLWhzdy1wZXBweTogICAgICAgW1NLSVBdWzM2XSAo
W2ZkbyMxMDkyNzFdKSAtPiBbRkFJTF1bMzddCiAgIFszNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY0MDQvZmktaHN3LXBlcHB5L2lndEBnZW1fd29y
a2Fyb3VuZHNAYmFzaWMtcmVhZC5odG1sCiAgIFszN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNTA5L2ZpLWhzdy1wZXBweS9pZ3RAZ2VtX3dv
cmthcm91bmRzQGJhc2ljLXJlYWQuaHRtbAoKICAKIyMjIyBTdXBwcmVzc2VkICMjIyMKCiAgVGhl
IGZvbGxvd2luZyByZXN1bHRzIGNvbWUgZnJvbSB1bnRydXN0ZWQgbWFjaGluZXMsIHRlc3RzLCBv
ciBzdGF0dXNlcy4KICBUaGV5IGRvIG5vdCBhZmZlY3QgdGhlIG92ZXJhbGwgcmVzdWx0LgoKICAq
IGlndEBnZW1fd29ya2Fyb3VuZHNAYmFzaWMtcmVhZDoKICAgIC0ge2ZpLWljbC11NH06ICAgICAg
ICBOT1RSVU4gLT4gW1NLSVBdWzM4XQogICBbMzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzUwOS9maS1pY2wtdTQvaWd0QGdlbV93b3JrYXJv
dW5kc0BiYXNpYy1yZWFkLmh0bWwKCiAgCktub3duIGlzc3VlcwotLS0tLS0tLS0tLS0KCiAgSGVy
ZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzEzNTA5IHRoYXQgY29tZSBmcm9t
IGtub3duIGlzc3VlczoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgSXNzdWVzIGhpdCAjIyMj
CgogICogaWd0QGdlbV93b3JrYXJvdW5kc0BiYXNpYy1yZWFkOgogICAgLSBmaS1za2wtNjI2MHU6
ICAgICAgIFtQQVNTXVszOV0gLT4gW1NLSVBdWzQwXSAoW2ZkbyMxMDkyNzFdKQogICBbMzldOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NDA0L2ZpLXNr
bC02MjYwdS9pZ3RAZ2VtX3dvcmthcm91bmRzQGJhc2ljLXJlYWQuaHRtbAogICBbNDBdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzUwOS9maS1z
a2wtNjI2MHUvaWd0QGdlbV93b3JrYXJvdW5kc0BiYXNpYy1yZWFkLmh0bWwKICAgIC0gZmktc2ts
LWxtZW06ICAgICAgICBbUEFTU11bNDFdIC0+IFtTS0lQXVs0Ml0gKFtmZG8jMTA5MjcxXSkKICAg
WzQxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjQw
NC9maS1za2wtbG1lbS9pZ3RAZ2VtX3dvcmthcm91bmRzQGJhc2ljLXJlYWQuaHRtbAogICBbNDJd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzUw
OS9maS1za2wtbG1lbS9pZ3RAZ2VtX3dvcmthcm91bmRzQGJhc2ljLXJlYWQuaHRtbAogICAgLSBm
aS1za2wtNjcwMGsyOiAgICAgIFtQQVNTXVs0M10gLT4gW1NLSVBdWzQ0XSAoW2ZkbyMxMDkyNzFd
KQogICBbNDNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV82NDA0L2ZpLXNrbC02NzAwazIvaWd0QGdlbV93b3JrYXJvdW5kc0BiYXNpYy1yZWFkLmh0bWwK
ICAgWzQ0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTM1MDkvZmktc2tsLTY3MDBrMi9pZ3RAZ2VtX3dvcmthcm91bmRzQGJhc2ljLXJlYWQuaHRt
bAogICAgLSBmaS1ic3ctbjMwNTA6ICAgICAgIFtQQVNTXVs0NV0gLT4gW1NLSVBdWzQ2XSAoW2Zk
byMxMDkyNzFdKQogICBbNDVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV82NDA0L2ZpLWJzdy1uMzA1MC9pZ3RAZ2VtX3dvcmthcm91bmRzQGJhc2ljLXJl
YWQuaHRtbAogICBbNDZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xMzUwOS9maS1ic3ctbjMwNTAvaWd0QGdlbV93b3JrYXJvdW5kc0BiYXNpYy1y
ZWFkLmh0bWwKICAgIC0gZmktc2tsLTY2MDB1OiAgICAgICBbUEFTU11bNDddIC0+IFtTS0lQXVs0
OF0gKFtmZG8jMTA5MjcxXSkKICAgWzQ3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNjQwNC9maS1za2wtNjYwMHUvaWd0QGdlbV93b3JrYXJvdW5kc0Bi
YXNpYy1yZWFkLmh0bWwKICAgWzQ4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTM1MDkvZmktc2tsLTY2MDB1L2lndEBnZW1fd29ya2Fyb3VuZHNA
YmFzaWMtcmVhZC5odG1sCiAgICAtIGZpLWFwbC1ndWM6ICAgICAgICAgW1BBU1NdWzQ5XSAtPiBb
U0tJUF1bNTBdIChbZmRvIzEwOTI3MV0pCiAgIFs0OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY0MDQvZmktYXBsLWd1Yy9pZ3RAZ2VtX3dvcmthcm91
bmRzQGJhc2ljLXJlYWQuaHRtbAogICBbNTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzUwOS9maS1hcGwtZ3VjL2lndEBnZW1fd29ya2Fyb3Vu
ZHNAYmFzaWMtcmVhZC5odG1sCiAgICAtIGZpLWJ4dC1kc2k6ICAgICAgICAgW1BBU1NdWzUxXSAt
PiBbU0tJUF1bNTJdIChbZmRvIzEwOTI3MV0pCiAgIFs1MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY0MDQvZmktYnh0LWRzaS9pZ3RAZ2VtX3dvcmth
cm91bmRzQGJhc2ljLXJlYWQuaHRtbAogICBbNTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzUwOS9maS1ieHQtZHNpL2lndEBnZW1fd29ya2Fy
b3VuZHNAYmFzaWMtcmVhZC5odG1sCiAgICAtIGZpLWJzdy1rZWZrYTogICAgICAgW1BBU1NdWzUz
XSAtPiBbU0tJUF1bNTRdIChbZmRvIzEwOTI3MV0pCiAgIFs1M106IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY0MDQvZmktYnN3LWtlZmthL2lndEBnZW1f
d29ya2Fyb3VuZHNAYmFzaWMtcmVhZC5odG1sCiAgIFs1NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNTA5L2ZpLWJzdy1rZWZrYS9pZ3RAZ2Vt
X3dvcmthcm91bmRzQGJhc2ljLXJlYWQuaHRtbAogICAgLSBmaS1rYmwtODgwOWc6ICAgICAgIFtQ
QVNTXVs1NV0gLT4gW1NLSVBdWzU2XSAoW2ZkbyMxMDkyNzFdKQogICBbNTVdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NDA0L2ZpLWtibC04ODA5Zy9p
Z3RAZ2VtX3dvcmthcm91bmRzQGJhc2ljLXJlYWQuaHRtbAogICBbNTZdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzUwOS9maS1rYmwtODgwOWcv
aWd0QGdlbV93b3JrYXJvdW5kc0BiYXNpYy1yZWFkLmh0bWwKICAgIC0gZmkta2JsLWd1YzogICAg
ICAgICBbUEFTU11bNTddIC0+IFtTS0lQXVs1OF0gKFtmZG8jMTA5MjcxXSkKICAgWzU3XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjQwNC9maS1rYmwt
Z3VjL2lndEBnZW1fd29ya2Fyb3VuZHNAYmFzaWMtcmVhZC5odG1sCiAgIFs1OF06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNTA5L2ZpLWtibC1n
dWMvaWd0QGdlbV93b3JrYXJvdW5kc0BiYXNpYy1yZWFkLmh0bWwKICAgIC0gZmkta2JsLTc1MDB1
OiAgICAgICBbUEFTU11bNTldIC0+IFtTS0lQXVs2MF0gKFtmZG8jMTA5MjcxXSkKICAgWzU5XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjQwNC9maS1r
YmwtNzUwMHUvaWd0QGdlbV93b3JrYXJvdW5kc0BiYXNpYy1yZWFkLmh0bWwKICAgWzYwXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM1MDkvZmkt
a2JsLTc1MDB1L2lndEBnZW1fd29ya2Fyb3VuZHNAYmFzaWMtcmVhZC5odG1sCiAgICAtIGZpLWJ4
dC1qNDIwNTogICAgICAgW1BBU1NdWzYxXSAtPiBbU0tJUF1bNjJdIChbZmRvIzEwOTI3MV0pCiAg
IFs2MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY0
MDQvZmktYnh0LWo0MjA1L2lndEBnZW1fd29ya2Fyb3VuZHNAYmFzaWMtcmVhZC5odG1sCiAgIFs2
Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEz
NTA5L2ZpLWJ4dC1qNDIwNS9pZ3RAZ2VtX3dvcmthcm91bmRzQGJhc2ljLXJlYWQuaHRtbAogICAg
LSBmaS1rYmwteDEyNzU6ICAgICAgIFtQQVNTXVs2M10gLT4gW1NLSVBdWzY0XSAoW2ZkbyMxMDky
NzFdKQogICBbNjNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82NDA0L2ZpLWtibC14MTI3NS9pZ3RAZ2VtX3dvcmthcm91bmRzQGJhc2ljLXJlYWQuaHRt
bAogICBbNjRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xMzUwOS9maS1rYmwteDEyNzUvaWd0QGdlbV93b3JrYXJvdW5kc0BiYXNpYy1yZWFkLmh0
bWwKICAgIC0gZmktc2tsLWd2dGR2bTogICAgICBbUEFTU11bNjVdIC0+IFtTS0lQXVs2Nl0gKFtm
ZG8jMTA5MjcxXSkKICAgWzY1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNjQwNC9maS1za2wtZ3Z0ZHZtL2lndEBnZW1fd29ya2Fyb3VuZHNAYmFzaWMt
cmVhZC5odG1sCiAgIFs2Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzEzNTA5L2ZpLXNrbC1ndnRkdm0vaWd0QGdlbV93b3JrYXJvdW5kc0BiYXNp
Yy1yZWFkLmh0bWwKICAgIC0gZmktZ2xrLWRzaTogICAgICAgICBbUEFTU11bNjddIC0+IFtTS0lQ
XVs2OF0gKFtmZG8jMTA5MjcxXSkKICAgWzY3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNjQwNC9maS1nbGstZHNpL2lndEBnZW1fd29ya2Fyb3VuZHNA
YmFzaWMtcmVhZC5odG1sCiAgIFs2OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzEzNTA5L2ZpLWdsay1kc2kvaWd0QGdlbV93b3JrYXJvdW5kc0Bi
YXNpYy1yZWFkLmh0bWwKICAgIC0gZmktc2tsLWlvbW11OiAgICAgICBbUEFTU11bNjldIC0+IFtT
S0lQXVs3MF0gKFtmZG8jMTA5MjcxXSkKICAgWzY5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjQwNC9maS1za2wtaW9tbXUvaWd0QGdlbV93b3JrYXJv
dW5kc0BiYXNpYy1yZWFkLmh0bWwKICAgWzcwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM1MDkvZmktc2tsLWlvbW11L2lndEBnZW1fd29ya2Fy
b3VuZHNAYmFzaWMtcmVhZC5odG1sCiAgICAtIGZpLWNmbC1ndWM6ICAgICAgICAgW1BBU1NdWzcx
XSAtPiBbU0tJUF1bNzJdIChbZmRvIzEwOTI3MV0pCiAgIFs3MV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY0MDQvZmktY2ZsLWd1Yy9pZ3RAZ2VtX3dv
cmthcm91bmRzQGJhc2ljLXJlYWQuaHRtbAogICBbNzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzUwOS9maS1jZmwtZ3VjL2lndEBnZW1fd29y
a2Fyb3VuZHNAYmFzaWMtcmVhZC5odG1sCiAgICAtIGZpLXdobC11OiAgICAgICAgICAgW1BBU1Nd
WzczXSAtPiBbU0tJUF1bNzRdIChbZmRvIzEwOTI3MV0pCiAgIFs3M106IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY0MDQvZmktd2hsLXUvaWd0QGdlbV93
b3JrYXJvdW5kc0BiYXNpYy1yZWFkLmh0bWwKICAgWzc0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM1MDkvZmktd2hsLXUvaWd0QGdlbV93b3Jr
YXJvdW5kc0BiYXNpYy1yZWFkLmh0bWwKICAgIC0gZmktY2ZsLTg3MDBrOiAgICAgICBbUEFTU11b
NzVdIC0+IFtTS0lQXVs3Nl0gKFtmZG8jMTA5MjcxXSkKICAgWzc1XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjQwNC9maS1jZmwtODcwMGsvaWd0QGdl
bV93b3JrYXJvdW5kc0BiYXNpYy1yZWFkLmh0bWwKICAgWzc2XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM1MDkvZmktY2ZsLTg3MDBrL2lndEBn
ZW1fd29ya2Fyb3VuZHNAYmFzaWMtcmVhZC5odG1sCiAgICAtIGZpLWNmbC04MTA5dTogICAgICAg
W1BBU1NdWzc3XSAtPiBbU0tJUF1bNzhdIChbZmRvIzEwOTI3MV0pCiAgIFs3N106IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY0MDQvZmktY2ZsLTgxMDl1
L2lndEBnZW1fd29ya2Fyb3VuZHNAYmFzaWMtcmVhZC5odG1sCiAgIFs3OF06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNTA5L2ZpLWNmbC04MTA5
dS9pZ3RAZ2VtX3dvcmthcm91bmRzQGJhc2ljLXJlYWQuaHRtbAogICAgLSBmaS1za2wtZ3VjOiAg
ICAgICAgIFtQQVNTXVs3OV0gLT4gW1NLSVBdWzgwXSAoW2ZkbyMxMDkyNzFdKQogICBbNzldOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NDA0L2ZpLXNr
bC1ndWMvaWd0QGdlbV93b3JrYXJvdW5kc0BiYXNpYy1yZWFkLmh0bWwKICAgWzgwXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM1MDkvZmktc2ts
LWd1Yy9pZ3RAZ2VtX3dvcmthcm91bmRzQGJhc2ljLXJlYWQuaHRtbAogICAgLSBmaS1rYmwtNzU2
N3U6ICAgICAgIFtQQVNTXVs4MV0gLT4gW1NLSVBdWzgyXSAoW2ZkbyMxMDkyNzFdKQogICBbODFd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NDA0L2Zp
LWtibC03NTY3dS9pZ3RAZ2VtX3dvcmthcm91bmRzQGJhc2ljLXJlYWQuaHRtbAogICBbODJdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzUwOS9m
aS1rYmwtNzU2N3UvaWd0QGdlbV93b3JrYXJvdW5kc0BiYXNpYy1yZWFkLmh0bWwKICAgIC0gZmkt
a2JsLXI6ICAgICAgICAgICBbUEFTU11bODNdIC0+IFtTS0lQXVs4NF0gKFtmZG8jMTA5MjcxXSkK
ICAgWzgzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NjQwNC9maS1rYmwtci9pZ3RAZ2VtX3dvcmthcm91bmRzQGJhc2ljLXJlYWQuaHRtbAogICBbODRd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzUw
OS9maS1rYmwtci9pZ3RAZ2VtX3dvcmthcm91bmRzQGJhc2ljLXJlYWQuaHRtbAogICAgLSBmaS1i
ZHctNTU1N3U6ICAgICAgIFtQQVNTXVs4NV0gLT4gW1NLSVBdWzg2XSAoW2ZkbyMxMDkyNzFdKQog
ICBbODVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82
NDA0L2ZpLWJkdy01NTU3dS9pZ3RAZ2VtX3dvcmthcm91bmRzQGJhc2ljLXJlYWQuaHRtbAogICBb
ODZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
MzUwOS9maS1iZHctNTU1N3UvaWd0QGdlbV93b3JrYXJvdW5kc0BiYXNpYy1yZWFkLmh0bWwKICAg
IC0gZmktYmR3LWd2dGR2bTogICAgICBbUEFTU11bODddIC0+IFtTS0lQXVs4OF0gKFtmZG8jMTA5
MjcxXSkKICAgWzg3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNjQwNC9maS1iZHctZ3Z0ZHZtL2lndEBnZW1fd29ya2Fyb3VuZHNAYmFzaWMtcmVhZC5o
dG1sCiAgIFs4OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzEzNTA5L2ZpLWJkdy1ndnRkdm0vaWd0QGdlbV93b3JrYXJvdW5kc0BiYXNpYy1yZWFk
Lmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGJhc2ljOgogICAgLSBmaS1o
c3ctcGVwcHk6ICAgICAgIFtQQVNTXVs4OV0gLT4gW0RNRVNHLVdBUk5dWzkwXSAoW2ZkbyMxMDI2
MTRdKQogICBbODldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82NDA0L2ZpLWhzdy1wZXBweS9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGJhc2lj
Lmh0bWwKICAgWzkwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTM1MDkvZmktaHN3LXBlcHB5L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdA
YmFzaWMuaHRtbAogICAgLSBmaS1pY2wtdTI6ICAgICAgICAgIFtQQVNTXVs5MV0gLT4gW0ZBSUxd
WzkyXSAoW2ZkbyMxMDMxNjddKQogICBbOTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV82NDA0L2ZpLWljbC11Mi9pZ3RAa21zX2Zyb250YnVmZmVyX3Ry
YWNraW5nQGJhc2ljLmh0bWwKICAgWzkyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM1MDkvZmktaWNsLXUyL2lndEBrbXNfZnJvbnRidWZmZXJf
dHJhY2tpbmdAYmFzaWMuaHRtbAoKICAKIyMjIyBQb3NzaWJsZSBmaXhlcyAjIyMjCgogICogaWd0
QGdlbV9jdHhfY3JlYXRlQGJhc2ljLWZpbGVzOgogICAgLSBmaS1pY2wtdTM6ICAgICAgICAgIFtJ
TkNPTVBMRVRFXVs5M10gKFtmZG8jMTA3NzEzXSAvIFtmZG8jMTA5MTAwXSkgLT4gW1BBU1NdWzk0
XQogICBbOTNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV82NDA0L2ZpLWljbC11My9pZ3RAZ2VtX2N0eF9jcmVhdGVAYmFzaWMtZmlsZXMuaHRtbAogICBb
OTRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
MzUwOS9maS1pY2wtdTMvaWd0QGdlbV9jdHhfY3JlYXRlQGJhc2ljLWZpbGVzLmh0bWwKCiAgCiAg
e25hbWV9OiBUaGlzIGVsZW1lbnQgaXMgc3VwcHJlc3NlZC4gVGhpcyBtZWFucyBpdCBpcyBpZ25v
cmVkIHdoZW4gY29tcHV0aW5nCiAgICAgICAgICB0aGUgc3RhdHVzIG9mIHRoZSBkaWZmZXJlbmNl
IChTVUNDRVNTLCBXQVJOSU5HLCBvciBGQUlMVVJFKS4KCiAgW2ZkbyMxMDI2MTRdOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDI2MTQKICBbZmRvIzEwMzE2
N106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzE2Nwog
IFtmZG8jMTA3NzEzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9MTA3NzEzCiAgW2ZkbyMxMDkxMDBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3No
b3dfYnVnLmNnaT9pZD0xMDkxMDAKICBbZmRvIzEwOTI3MV06IGh0dHBzOi8vYnVncy5mcmVlZGVz
a3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI3MQoKClBhcnRpY2lwYXRpbmcgaG9zdHMgKDU0
IC0+IDQ2KQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgTWlzc2luZyAgICAoOCk6
IGZpLWlsay1tNTQwIGZpLWhzdy00MjAwdSBmaS1za2wtNjc3MGhxIGZpLWJ5dC1zcXVhd2tzIGZp
LWJzdy1jeWFuIGZpLWljbC15IGZpLWJ5dC1jbGFwcGVyIGZpLWJkdy1zYW11cyAKCgpCdWlsZCBj
aGFuZ2VzCi0tLS0tLS0tLS0tLS0KCiAgKiBMaW51eDogQ0lfRFJNXzY0MDQgLT4gUGF0Y2h3b3Jr
XzEzNTA5CgogIENJX0RSTV82NDA0OiAxYjg1M2U2ZTE4MWM2MDE1ZmFjYTkwOGI1Nzk1NmVhODM2
ZTFmNDQwIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgSUdU
XzUwNzk6IDg3M2RmMmZhOWU4ZjVmZDAyZDQ1MzJiMzBlZjI1NzlmNGZlNGYyN2YgQCBnaXQ6Ly9h
bm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94b3JnL2FwcC9pbnRlbC1ncHUtdG9vbHMKICBQYXRjaHdv
cmtfMTM1MDk6IDk2M2MzMjg4NjQ1MmFiNjRiODNjYjZhMTBhZWFlN2I3YTM1YzEzNmUgQCBnaXQ6
Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKCgo9PSBLZXJuZWwgMzJiaXQg
YnVpbGQgPT0KCldhcm5pbmc6IEtlcm5lbCAzMmJpdCBidWlsZHRlc3QgZmFpbGVkOgpodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzUwOS9idWlsZF8z
MmJpdC5sb2cKCiAgQ0FMTCAgICBzY3JpcHRzL2NoZWNrc3lzY2FsbHMuc2gKICBDQUxMICAgIHNj
cmlwdHMvYXRvbWljL2NoZWNrLWF0b21pY3Muc2gKICBDSEsgICAgIGluY2x1ZGUvZ2VuZXJhdGVk
L2NvbXBpbGUuaApLZXJuZWw6IGFyY2gveDg2L2Jvb3QvYnpJbWFnZSBpcyByZWFkeSAgKCMxKQog
IEJ1aWxkaW5nIG1vZHVsZXMsIHN0YWdlIDIuCiAgTU9EUE9TVCAxMTIgbW9kdWxlcwpFUlJPUjog
Il9fdWRpdmRpMyIgW2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdS5rb10gdW5kZWZp
bmVkIQpFUlJPUjogIl9fZGl2ZGkzIiBbZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
LmtvXSB1bmRlZmluZWQhCnNjcmlwdHMvTWFrZWZpbGUubW9kcG9zdDo5MTogcmVjaXBlIGZvciB0
YXJnZXQgJ19fbW9kcG9zdCcgZmFpbGVkCm1ha2VbMV06ICoqKiBbX19tb2Rwb3N0XSBFcnJvciAx
Ck1ha2VmaWxlOjEyODc6IHJlY2lwZSBmb3IgdGFyZ2V0ICdtb2R1bGVzJyBmYWlsZWQKbWFrZTog
KioqIFttb2R1bGVzXSBFcnJvciAyCgoKPT0gTGludXggY29tbWl0cyA9PQoKOTYzYzMyODg2NDUy
IGRybS9pOTE1L2d0OiBQdWxsIGVuZ2luZSB3L2EgaW5pdGlhbGlzYXRpb24gaW50byBjb21tb24K
ZDlhZmNhMzg2NDJhIGRybS9pOTE1OiBEdW1wIHcvYSBsaXN0cyBvbiBhbGwgZW5naW5lcwoKPT0g
TG9ncyA9PQoKRm9yIG1vcmUgZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNTA5LwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
