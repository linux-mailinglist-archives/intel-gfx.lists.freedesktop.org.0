Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C12ACFE1C9
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 16:49:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F02A46E901;
	Fri, 15 Nov 2019 15:49:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 99B246E900;
 Fri, 15 Nov 2019 15:49:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 92592A01BB;
 Fri, 15 Nov 2019 15:49:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 15 Nov 2019 15:49:34 -0000
Message-ID: <157383297457.3298.14993341780609628388@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191115121712.809037-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191115121712.809037-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915/gem=3A_Exercise_the_per-batch_whitelist_from_the_context?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ2VtOiBFeGVyY2lzZSB0aGUg
cGVyLWJhdGNoIHdoaXRlbGlzdCBmcm9tIHRoZSBjb250ZXh0ClVSTCAgIDogaHR0cHM6Ly9wYXRj
aHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82OTUyNy8KU3RhdGUgOiBmYWlsdXJlCgo9PSBT
dW1tYXJ5ID09CgpDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV83MzUyIC0+IFBhdGNo
d29ya18xNTI4MQo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09CgpTdW1tYXJ5Ci0tLS0tLS0KCiAgKipGQUlMVVJFKioKCiAgU2VyaW91cyB1bmtub3du
IGNoYW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzE1MjgxIGFic29sdXRlbHkgbmVlZCB0byBi
ZQogIHZlcmlmaWVkIG1hbnVhbGx5LgogIAogIElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hh
bmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcwogIGludHJvZHVjZWQgaW4g
UGF0Y2h3b3JrXzE1MjgxLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cgdGhl
bQogIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2Ug
ZmFsc2UgcG9zaXRpdmVzIGluIENJLgoKICBFeHRlcm5hbCBVUkw6IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MjgxL2luZGV4Lmh0bWwKClBvc3Np
YmxlIG5ldyBpc3N1ZXMKLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93
biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNTI4
MToKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgUG9zc2libGUgcmVncmVzc2lvbnMgIyMjIwoK
ICAqIGlndEBnZW1fY2xvc2VfcmFjZUBiYXNpYy1wcm9jZXNzOgogICAgLSBmaS1oc3ctcGVwcHk6
ICAgICAgIFtQQVNTXVsxXSAtPiBbVElNRU9VVF1bMl0KICAgWzFdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MzUyL2ZpLWhzdy1wZXBweS9pZ3RAZ2Vt
X2Nsb3NlX3JhY2VAYmFzaWMtcHJvY2Vzcy5odG1sCiAgIFsyXTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUyODEvZmktaHN3LXBlcHB5L2lndEBn
ZW1fY2xvc2VfcmFjZUBiYXNpYy1wcm9jZXNzLmh0bWwKICAgIC0gZmktaXZiLTM3NzA6ICAgICAg
ICBbUEFTU11bM10gLT4gW1RJTUVPVVRdWzRdCiAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM1Mi9maS1pdmItMzc3MC9pZ3RAZ2VtX2Nsb3Nl
X3JhY2VAYmFzaWMtcHJvY2Vzcy5odG1sCiAgIFs0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUyODEvZmktaXZiLTM3NzAvaWd0QGdlbV9jbG9z
ZV9yYWNlQGJhc2ljLXByb2Nlc3MuaHRtbAogICAgLSBmaS1ieXQtajE5MDA6ICAgICAgIFtQQVNT
XVs1XSAtPiBbVElNRU9VVF1bNl0KICAgWzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV83MzUyL2ZpLWJ5dC1qMTkwMC9pZ3RAZ2VtX2Nsb3NlX3JhY2VA
YmFzaWMtcHJvY2Vzcy5odG1sCiAgIFs2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUyODEvZmktYnl0LWoxOTAwL2lndEBnZW1fY2xvc2VfcmFj
ZUBiYXNpYy1wcm9jZXNzLmh0bWwKICAgIC0gZmktaHN3LTQ3NzA6ICAgICAgICBbUEFTU11bN10g
LT4gW1RJTUVPVVRdWzhdCiAgIFs3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNzM1Mi9maS1oc3ctNDc3MC9pZ3RAZ2VtX2Nsb3NlX3JhY2VAYmFzaWMt
cHJvY2Vzcy5odG1sCiAgIFs4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTUyODEvZmktaHN3LTQ3NzAvaWd0QGdlbV9jbG9zZV9yYWNlQGJhc2lj
LXByb2Nlc3MuaHRtbAogICAgLSBmaS1ieXQtbjI4MjA6ICAgICAgIFtQQVNTXVs5XSAtPiBbVElN
RU9VVF1bMTBdCiAgIFs5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNzM1Mi9maS1ieXQtbjI4MjAvaWd0QGdlbV9jbG9zZV9yYWNlQGJhc2ljLXByb2Nl
c3MuaHRtbAogICBbMTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNTI4MS9maS1ieXQtbjI4MjAvaWd0QGdlbV9jbG9zZV9yYWNlQGJhc2ljLXBy
b2Nlc3MuaHRtbAogICAgLSBmaS1oc3ctNDc3MHI6ICAgICAgIFtQQVNTXVsxMV0gLT4gW1RJTUVP
VVRdWzEyXQogICBbMTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV83MzUyL2ZpLWhzdy00Nzcwci9pZ3RAZ2VtX2Nsb3NlX3JhY2VAYmFzaWMtcHJvY2Vz
cy5odG1sCiAgIFsxMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE1MjgxL2ZpLWhzdy00Nzcwci9pZ3RAZ2VtX2Nsb3NlX3JhY2VAYmFzaWMtcHJv
Y2Vzcy5odG1sCgogICogaWd0QHJ1bm5lckBhYm9ydGVkOgogICAgLSBmaS1oc3ctcGVwcHk6ICAg
ICAgIE5PVFJVTiAtPiBbRkFJTF1bMTNdCiAgIFsxM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MjgxL2ZpLWhzdy1wZXBweS9pZ3RAcnVubmVy
QGFib3J0ZWQuaHRtbAogICAgLSBmaS1oc3ctNDc3MDogICAgICAgIE5PVFJVTiAtPiBbRkFJTF1b
MTRdCiAgIFsxNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE1MjgxL2ZpLWhzdy00NzcwL2lndEBydW5uZXJAYWJvcnRlZC5odG1sCiAgICAtIGZp
LWl2Yi0zNzcwOiAgICAgICAgTk9UUlVOIC0+IFtGQUlMXVsxNV0KICAgWzE1XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUyODEvZmktaXZiLTM3
NzAvaWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwKICAgIC0gZmktYnl0LWoxOTAwOiAgICAgICBOT1RS
VU4gLT4gW0ZBSUxdWzE2XQogICBbMTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNTI4MS9maS1ieXQtajE5MDAvaWd0QHJ1bm5lckBhYm9ydGVk
Lmh0bWwKICAgIC0gZmktaHN3LTQ3NzByOiAgICAgICBOT1RSVU4gLT4gW0ZBSUxdWzE3XQogICBb
MTddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NTI4MS9maS1oc3ctNDc3MHIvaWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwKICAgIC0gZmktYnl0LW4y
ODIwOiAgICAgICBOT1RSVU4gLT4gW0ZBSUxdWzE4XQogICBbMThdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTI4MS9maS1ieXQtbjI4MjAvaWd0
QHJ1bm5lckBhYm9ydGVkLmh0bWwKCiAgCktub3duIGlzc3VlcwotLS0tLS0tLS0tLS0KCiAgSGVy
ZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzE1MjgxIHRoYXQgY29tZSBmcm9t
IGtub3duIGlzc3VlczoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgSXNzdWVzIGhpdCAjIyMj
CgogICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9oYW5nY2hlY2s6CiAgICAtIGZpLWljbC1kc2k6
ICAgICAgICAgW1BBU1NdWzE5XSAtPiBbSU5DT01QTEVURV1bMjBdIChbZmRvIzEwNzcxM10gLyBb
ZmRvIzEwODU2OV0pCiAgIFsxOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzczNTIvZmktaWNsLWRzaS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hhbmdj
aGVjay5odG1sCiAgIFsyMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE1MjgxL2ZpLWljbC1kc2kvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9oYW5n
Y2hlY2suaHRtbAoKICAqIGlndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3Q6CiAgICAtIGZp
LWtibC03NTAwdTogICAgICAgW1BBU1NdWzIxXSAtPiBbRkFJTF1bMjJdIChbZmRvIzExMTA0NV0g
LyBbZmRvIzExMTA5Nl0pCiAgIFsyMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzczNTIvZmkta2JsLTc1MDB1L2lndEBrbXNfY2hhbWVsaXVtQGhkbWkt
aHBkLWZhc3QuaHRtbAogICBbMjJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNTI4MS9maS1rYmwtNzUwMHUvaWd0QGttc19jaGFtZWxpdW1AaGRt
aS1ocGQtZmFzdC5odG1sCgogICogaWd0QGttc19zZXRtb2RlQGJhc2ljLWNsb25lLXNpbmdsZS1j
cnRjOgogICAgLSBmaS1za2wtNjc3MGhxOiAgICAgIFtQQVNTXVsyM10gLT4gW1dBUk5dWzI0XSAo
W2ZkbyMxMTIyNTJdKQogICBbMjNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV83MzUyL2ZpLXNrbC02NzcwaHEvaWd0QGttc19zZXRtb2RlQGJhc2ljLWNs
b25lLXNpbmdsZS1jcnRjLmh0bWwKICAgWzI0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUyODEvZmktc2tsLTY3NzBocS9pZ3RAa21zX3NldG1v
ZGVAYmFzaWMtY2xvbmUtc2luZ2xlLWNydGMuaHRtbAoKICAKIyMjIyBQb3NzaWJsZSBmaXhlcyAj
IyMjCgogICogaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLXdpdGgtZmF1bHQtaW5qZWN0aW9u
OgogICAgLSBmaS1za2wtNjc3MGhxOiAgICAgIFtJTkNPTVBMRVRFXVsyNV0gLT4gW1BBU1NdWzI2
XQogICBbMjVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV83MzUyL2ZpLXNrbC02NzcwaHEvaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLXdpdGgtZmF1
bHQtaW5qZWN0aW9uLmh0bWwKICAgWzI2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUyODEvZmktc2tsLTY3NzBocS9pZ3RAaTkxNV9tb2R1bGVf
bG9hZEByZWxvYWQtd2l0aC1mYXVsdC1pbmplY3Rpb24uaHRtbAoKICAqIGlndEBpOTE1X3NlbGZ0
ZXN0QGxpdmVfYmx0OgogICAgLSBmaS1ic3ctbmljazogICAgICAgIFtETUVTRy1GQUlMXVsyN10g
KFtmZG8jMTEyMTc2XSkgLT4gW1BBU1NdWzI4XQogICBbMjddOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MzUyL2ZpLWJzdy1uaWNrL2lndEBpOTE1X3Nl
bGZ0ZXN0QGxpdmVfYmx0Lmh0bWwKICAgWzI4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUyODEvZmktYnN3LW5pY2svaWd0QGk5MTVfc2VsZnRl
c3RAbGl2ZV9ibHQuaHRtbAoKICAKIyMjIyBXYXJuaW5ncyAjIyMjCgogICogaWd0QGk5MTVfc2Vs
ZnRlc3RAbGl2ZV9ndF9wbToKICAgIC0gZmktaWNsLWd1YzogICAgICAgICBbRE1FU0ctRkFJTF1b
MjldIChbZmRvIzExMjIwNV0pIC0+IFtJTkNPTVBMRVRFXVszMF0gKFtmZG8jMTA3NzEzXSkKICAg
WzI5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM1
Mi9maS1pY2wtZ3VjL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfcG0uaHRtbAogICBbMzBdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTI4MS9m
aS1pY2wtZ3VjL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfcG0uaHRtbAoKICAKICBbZmRvIzEw
NzcxM106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzcx
MwogIFtmZG8jMTA4NTY5XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTA4NTY5CiAgW2ZkbyMxMTEwNDVdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMTEwNDUKICBbZmRvIzExMTA5Nl06IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTA5NgogIFtmZG8jMTEyMTc2XTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyMTc2CiAgW2ZkbyMxMTIy
MDVdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTIyMDUK
ICBbZmRvIzExMjI1Ml06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTExMjI1MgoKClBhcnRpY2lwYXRpbmcgaG9zdHMgKDUzIC0+IDQ1KQotLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KCiAgTWlzc2luZyAgICAoOCk6IGZpLWlsay1tNTQwIGZpLXRnbC11
IGZpLWhzdy00MjAwdSBmaS1ieXQtc3F1YXdrcyBmaS1ic3ctY3lhbiBmaS1jdGctcDg2MDAgZmkt
Ynl0LWNsYXBwZXIgZmktYmR3LXNhbXVzIAoKCkJ1aWxkIGNoYW5nZXMKLS0tLS0tLS0tLS0tLQoK
ICAqIENJOiBDSS0yMDE5MDUyOSAtPiBOb25lCiAgKiBMaW51eDogQ0lfRFJNXzczNTIgLT4gUGF0
Y2h3b3JrXzE1MjgxCgogIENJLTIwMTkwNTI5OiAyMDE5MDUyOQogIENJX0RSTV83MzUyOiA5ZDZh
MWIxMzEyMWFmOTVlMDU3OThjNzJhNzZiZjAwMjA3ODE2ZjBlIEAgZ2l0Oi8vYW5vbmdpdC5mcmVl
ZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgSUdUXzUyODg6IGZmNDU1MWUzNmNkOGU1NzNjZWIx
ZTQ1MGQxN2ExMmUzMjk4ZGMwNGMgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94b3Jn
L2FwcC9pbnRlbC1ncHUtdG9vbHMKICBQYXRjaHdvcmtfMTUyODE6IDE1MzljZmIxOWNhNTgzZWYz
MTVhYmU2YzA2YTRkNzU1MTdiNTY1NDAgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9n
ZngtY2kvbGludXgKCgo9PSBMaW51eCBjb21taXRzID09CgoxNTM5Y2ZiMTljYTUgZHJtL2k5MTUv
Z2VtOiBFeGVyY2lzZSB0aGUgcGVyLWJhdGNoIHdoaXRlbGlzdCBmcm9tIHRoZSBjb250ZXh0Cgo9
PSBMb2dzID09CgpGb3IgbW9yZSBkZXRhaWxzIHNlZTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUyODEvaW5kZXguaHRtbApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
