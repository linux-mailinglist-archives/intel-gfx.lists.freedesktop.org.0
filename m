Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9551102D
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 01:38:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36BF4892D8;
	Wed,  1 May 2019 23:38:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E1219892CA;
 Wed,  1 May 2019 23:38:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D4F66A0073;
 Wed,  1 May 2019 23:38:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 01 May 2019 23:38:29 -0000
Message-ID: <20190501233829.14432.94178@emeril.freedesktop.org>
References: <20190501103204.18632-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190501103204.18632-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_Move_the_engine-=3Edestroy=28=29_vfunc_onto_the_engine?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IE1vdmUgdGhlIGVuZ2luZS0+
ZGVzdHJveSgpIHZmdW5jIG9udG8gdGhlIGVuZ2luZQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3Jr
LmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjAxNDcvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFy
eSA9PQoKQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNjAyMF9mdWxsIC0+IFBhdGNo
d29ya18xMjkyMV9mdWxsCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKkZBSUxVUkUqKgoKICBTZXJpb3VzIHVu
a25vd24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTI5MjFfZnVsbCBhYnNvbHV0ZWx5
IG5lZWQgdG8gYmUKICB2ZXJpZmllZCBtYW51YWxseS4KICAKICBJZiB5b3UgdGhpbmsgdGhlIHJl
cG9ydGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMKICBpbnRy
b2R1Y2VkIGluIFBhdGNod29ya18xMjkyMV9mdWxsLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRl
YW0gdG8gYWxsb3cgdGhlbQogIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hp
Y2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLgoKICAKClBvc3NpYmxlIG5ldyBp
c3N1ZXMKLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2Vz
IHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xMjkyMV9mdWxsOgoK
IyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjCgogICog
aWd0QGdlbV9leGVjX3NjaGVkdWxlQHByZWVtcHQtaGFuZy12ZWJveDoKICAgIC0gc2hhcmQtc2ts
OiAgICAgICAgICBOT1RSVU4gLT4gW0lOQ09NUExFVEVdWzFdICszIHNpbWlsYXIgaXNzdWVzCiAg
IFsxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTI5MjEvc2hhcmQtc2tsNS9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJlZW1wdC1oYW5nLXZlYm94
Lmh0bWwKCiAgKiBpZ3RAa21zX2J1c3lAZXh0ZW5kZWQtbW9kZXNldC1oYW5nLW5ld2ZiLXdpdGgt
cmVzZXQtcmVuZGVyLWE6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzJdIC0+IFtJ
TkNPTVBMRVRFXVszXQogICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzYwMjAvc2hhcmQtc2tsOC9pZ3RAa21zX2J1c3lAZXh0ZW5kZWQtbW9kZXNl
dC1oYW5nLW5ld2ZiLXdpdGgtcmVzZXQtcmVuZGVyLWEuaHRtbAogICBbM106IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyOTIxL3NoYXJkLXNrbDEw
L2lndEBrbXNfYnVzeUBleHRlbmRlZC1tb2Rlc2V0LWhhbmctbmV3ZmItd2l0aC1yZXNldC1yZW5k
ZXItYS5odG1sCgogIAojIyMjIFdhcm5pbmdzICMjIyMKCiAgKiBpZ3RAZ2VtX3RpbGVkX2ZlbmNl
X2JsaXRzQG5vcm1hbDoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbU0tJUF1bNF0gKFtmZG8j
MTA5MjcxXSkgLT4gW0lOQ09NUExFVEVdWzVdCiAgIFs0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjAyMC9zaGFyZC1za2wxMC9pZ3RAZ2VtX3RpbGVk
X2ZlbmNlX2JsaXRzQG5vcm1hbC5odG1sCiAgIFs1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI5MjEvc2hhcmQtc2tsMi9pZ3RAZ2VtX3RpbGVk
X2ZlbmNlX2JsaXRzQG5vcm1hbC5odG1sCgogIApLbm93biBpc3N1ZXMKLS0tLS0tLS0tLS0tCgog
IEhlcmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNod29ya18xMjkyMV9mdWxsIHRoYXQg
Y29tZSBmcm9tIGtub3duIGlzc3VlczoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgSXNzdWVz
IGhpdCAjIyMjCgogICogaWd0QGdlbV9leGVjX2JsdEBkdW1iLWJ1Zi1taW46CiAgICAtIHNoYXJk
LWhzdzogICAgICAgICAgW1BBU1NdWzZdIC0+IFtJTkNPTVBMRVRFXVs3XSAoW2ZkbyMxMDM1NDBd
KQogICBbNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzYwMjAvc2hhcmQtaHN3NC9pZ3RAZ2VtX2V4ZWNfYmx0QGR1bWItYnVmLW1pbi5odG1sCiAgIFs3
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI5
MjEvc2hhcmQtaHN3Ni9pZ3RAZ2VtX2V4ZWNfYmx0QGR1bWItYnVmLW1pbi5odG1sCgogICogaWd0
QGdlbV93b3JrYXJvdW5kc0BzdXNwZW5kLXJlc3VtZToKICAgIC0gc2hhcmQtYXBsOiAgICAgICAg
ICBbUEFTU11bOF0gLT4gW0RNRVNHLVdBUk5dWzldIChbZmRvIzEwODU2Nl0pICs1IHNpbWlsYXIg
aXNzdWVzCiAgIFs4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNjAyMC9zaGFyZC1hcGw3L2lndEBnZW1fd29ya2Fyb3VuZHNAc3VzcGVuZC1yZXN1bWUu
aHRtbAogICBbOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzEyOTIxL3NoYXJkLWFwbDIvaWd0QGdlbV93b3JrYXJvdW5kc0BzdXNwZW5kLXJlc3Vt
ZS5odG1sCgogICogaWd0QGk5MTVfcG1fcnBtQGkyYzoKICAgIC0gc2hhcmQtaWNsYjogICAgICAg
ICBbUEFTU11bMTBdIC0+IFtETUVTRy1XQVJOXVsxMV0gKFtmZG8jMTA5OTgyXSkKICAgWzEwXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjAyMC9zaGFy
ZC1pY2xiNS9pZ3RAaTkxNV9wbV9ycG1AaTJjLmh0bWwKICAgWzExXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI5MjEvc2hhcmQtaWNsYjIvaWd0
QGk5MTVfcG1fcnBtQGkyYy5odG1sCgogICogaWd0QGk5MTVfcG1fcnBtQGxlZ2FjeS1wbGFuZXMt
ZHBtczoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMTJdIC0+IFtJTkNPTVBMRVRF
XVsxM10gKFtmZG8jMTA3NzEzXSAvIFtmZG8jMTA4ODQwXSAvIFtmZG8jMTA5OTYwXSkKICAgWzEy
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjAyMC9z
aGFyZC1pY2xiMi9pZ3RAaTkxNV9wbV9ycG1AbGVnYWN5LXBsYW5lcy1kcG1zLmh0bWwKICAgWzEz
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI5
MjEvc2hhcmQtaWNsYjMvaWd0QGk5MTVfcG1fcnBtQGxlZ2FjeS1wbGFuZXMtZHBtcy5odG1sCgog
ICogaWd0QGttc19jdXJzb3JfY3JjQGN1cnNvci0yNTZ4MjU2LXN1c3BlbmQ6CiAgICAtIHNoYXJk
LXNrbDogICAgICAgICAgW1BBU1NdWzE0XSAtPiBbSU5DT01QTEVURV1bMTVdIChbZmRvIzEwNDEw
OF0pCiAgIFsxNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzYwMjAvc2hhcmQtc2tsNy9pZ3RAa21zX2N1cnNvcl9jcmNAY3Vyc29yLTI1NngyNTYtc3Vz
cGVuZC5odG1sCiAgIFsxNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzEyOTIxL3NoYXJkLXNrbDUvaWd0QGttc19jdXJzb3JfY3JjQGN1cnNvci0y
NTZ4MjU2LXN1c3BlbmQuaHRtbAoKICAqIGlndEBrbXNfY3Vyc29yX2NyY0BjdXJzb3Itc2l6ZS1j
aGFuZ2U6CiAgICAtIHNoYXJkLXNuYjogICAgICAgICAgW1BBU1NdWzE2XSAtPiBbU0tJUF1bMTdd
IChbZmRvIzEwOTI3MV0pICsxIHNpbWlsYXIgaXNzdWUKICAgWzE2XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjAyMC9zaGFyZC1zbmI0L2lndEBrbXNf
Y3Vyc29yX2NyY0BjdXJzb3Itc2l6ZS1jaGFuZ2UuaHRtbAogICBbMTddOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjkyMS9zaGFyZC1zbmI2L2ln
dEBrbXNfY3Vyc29yX2NyY0BjdXJzb3Itc2l6ZS1jaGFuZ2UuaHRtbAoKICAqIGlndEBrbXNfZHJh
d19jcmNAZHJhdy1tZXRob2QteHJnYjIxMDEwMTAtcmVuZGVyLXh0aWxlZDoKICAgIC0gc2hhcmQt
c2tsOiAgICAgICAgICBbUEFTU11bMThdIC0+IFtGQUlMXVsxOV0gKFtmZG8jMTAzMTg0XSAvIFtm
ZG8jMTAzMjMyXSkKICAgWzE4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNjAyMC9zaGFyZC1za2wxL2lndEBrbXNfZHJhd19jcmNAZHJhdy1tZXRob2Qt
eHJnYjIxMDEwMTAtcmVuZGVyLXh0aWxlZC5odG1sCiAgIFsxOV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyOTIxL3NoYXJkLXNrbDQvaWd0QGtt
c19kcmF3X2NyY0BkcmF3LW1ldGhvZC14cmdiMjEwMTAxMC1yZW5kZXIteHRpbGVkLmh0bWwKCiAg
KiBpZ3RAa21zX2ZsaXBAMngtZmxpcC12cy1kcG1zLWludGVycnVwdGlibGU6CiAgICAtIHNoYXJk
LWdsazogICAgICAgICAgW1BBU1NdWzIwXSAtPiBbSU5DT01QTEVURV1bMjFdIChbZmRvIzEwMzM1
OV0gLyBbay5vcmcjMTk4MTMzXSkKICAgWzIwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNjAyMC9zaGFyZC1nbGsxL2lndEBrbXNfZmxpcEAyeC1mbGlw
LXZzLWRwbXMtaW50ZXJydXB0aWJsZS5odG1sCiAgIFsyMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyOTIxL3NoYXJkLWdsazMvaWd0QGttc19m
bGlwQDJ4LWZsaXAtdnMtZHBtcy1pbnRlcnJ1cHRpYmxlLmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBA
ZmxpcC12cy1leHBpcmVkLXZibGFuazoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11b
MjJdIC0+IFtGQUlMXVsyM10gKFtmZG8jMTA1MzYzXSkKICAgWzIyXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjAyMC9zaGFyZC1za2wyL2lndEBrbXNf
ZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rLmh0bWwKICAgWzIzXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI5MjEvc2hhcmQtc2tsMy9pZ3RA
a21zX2ZsaXBAZmxpcC12cy1leHBpcmVkLXZibGFuay5odG1sCgogICogaWd0QGttc19mbGlwQGZs
aXAtdnMtc3VzcGVuZC1pbnRlcnJ1cHRpYmxlOgogICAgLSBzaGFyZC1zbmI6ICAgICAgICAgIFtQ
QVNTXVsyNF0gLT4gW0RNRVNHLVdBUk5dWzI1XSAoW2ZkbyMxMDIzNjVdKQogICBbMjRdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDIwL3NoYXJkLXNu
YjQvaWd0QGttc19mbGlwQGZsaXAtdnMtc3VzcGVuZC1pbnRlcnJ1cHRpYmxlLmh0bWwKICAgWzI1
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI5
MjEvc2hhcmQtc25iNC9pZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLWludGVycnVwdGlibGUu
aHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXByaW1zY3JuLXBy
aS1pbmRmYi1kcmF3LXB3cml0ZToKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bMjZd
IC0+IFtGQUlMXVsyN10gKFtmZG8jMTAzMTY3XSkKICAgWzI2XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjAyMC9zaGFyZC1za2wxL2lndEBrbXNfZnJv
bnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXByaW1zY3JuLXByaS1pbmRmYi1kcmF3LXB3cml0ZS5o
dG1sCiAgIFsyN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzEyOTIxL3NoYXJkLXNrbDQvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMt
MXAtcHJpbXNjcm4tcHJpLWluZGZiLWRyYXctcHdyaXRlLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250
YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1wcmltc2Nybi1zcHItaW5kZmItZHJhdy1ibHQ6CiAgICAt
IHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzI4XSAtPiBbRkFJTF1bMjldIChbZmRvIzEwMzE2
N10pICs1IHNpbWlsYXIgaXNzdWVzCiAgIFsyOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzYwMjAvc2hhcmQtaWNsYjcvaWd0QGttc19mcm9udGJ1ZmZl
cl90cmFja2luZ0BmYmMtMXAtcHJpbXNjcm4tc3ByLWluZGZiLWRyYXctYmx0Lmh0bWwKICAgWzI5
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI5
MjEvc2hhcmQtaWNsYjUvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtcHJpbXNj
cm4tc3ByLWluZGZiLWRyYXctYmx0Lmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNr
aW5nQGZiY3Bzci0xcC1wcmltc2Nybi1pbmRmYi1wbGZsaXAtYmx0OgogICAgLSBzaGFyZC1za2w6
ICAgICAgICAgIFtQQVNTXVszMF0gLT4gW0ZBSUxdWzMxXSAoW2ZkbyMxMDgwNDBdKSArMSBzaW1p
bGFyIGlzc3VlCiAgIFszMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzYwMjAvc2hhcmQtc2tsMS9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZi
Y3Bzci0xcC1wcmltc2Nybi1pbmRmYi1wbGZsaXAtYmx0Lmh0bWwKICAgWzMxXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI5MjEvc2hhcmQtc2ts
NC9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmltc2Nybi1pbmRmYi1w
bGZsaXAtYmx0Lmh0bWwKCiAgKiBpZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQHN1c3BlbmQtcmVhZC1j
cmMtcGlwZS1jOgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtQQVNTXVszMl0gLT4gW0RNRVNH
LVdBUk5dWzMzXSAoW2ZkbyMxMDg1NjZdKQogICBbMzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDIwL3NoYXJkLWtibDQvaWd0QGttc19waXBlX2Ny
Y19iYXNpY0BzdXNwZW5kLXJlYWQtY3JjLXBpcGUtYy5odG1sCiAgIFszM106IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyOTIxL3NoYXJkLWtibDEv
aWd0QGttc19waXBlX2NyY19iYXNpY0BzdXNwZW5kLXJlYWQtY3JjLXBpcGUtYy5odG1sCgogICog
aWd0QGttc19wbGFuZUBwaXhlbC1mb3JtYXQtcGlwZS1jLXBsYW5lcy1zb3VyY2UtY2xhbXBpbmc6
CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzM0XSAtPiBbSU5DT01QTEVURV1bMzVd
IChbZmRvIzEwNzcxM10gLyBbZmRvIzExMDAzNiBdKQogICBbMzRdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDIwL3NoYXJkLWljbGI4L2lndEBrbXNf
cGxhbmVAcGl4ZWwtZm9ybWF0LXBpcGUtYy1wbGFuZXMtc291cmNlLWNsYW1waW5nLmh0bWwKICAg
WzM1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTI5MjEvc2hhcmQtaWNsYjMvaWd0QGttc19wbGFuZUBwaXhlbC1mb3JtYXQtcGlwZS1jLXBsYW5l
cy1zb3VyY2UtY2xhbXBpbmcuaHRtbAoKICAqIGlndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlw
ZS1hLWNvdmVyYWdlLTdlZmM6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzM2XSAt
PiBbRkFJTF1bMzddIChbZmRvIzEwODE0NV0pCiAgIFszNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYwMjAvc2hhcmQtc2tsMS9pZ3RAa21zX3BsYW5l
X2FscGhhX2JsZW5kQHBpcGUtYS1jb3ZlcmFnZS03ZWZjLmh0bWwKICAgWzM3XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI5MjEvc2hhcmQtc2ts
NC9pZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYS1jb3ZlcmFnZS03ZWZjLmh0bWwKCiAg
KiBpZ3RAa21zX3BzckBwc3IyX3ByaW1hcnlfcGFnZV9mbGlwOgogICAgLSBzaGFyZC1pY2xiOiAg
ICAgICAgIFtQQVNTXVszOF0gLT4gW1NLSVBdWzM5XSAoW2ZkbyMxMDk0NDFdKSArMyBzaW1pbGFy
IGlzc3VlcwogICBbMzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV82MDIwL3NoYXJkLWljbGIyL2lndEBrbXNfcHNyQHBzcjJfcHJpbWFyeV9wYWdlX2Zs
aXAuaHRtbAogICBbMzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xMjkyMS9zaGFyZC1pY2xiNi9pZ3RAa21zX3BzckBwc3IyX3ByaW1hcnlfcGFn
ZV9mbGlwLmh0bWwKCiAgKiBpZ3RAa21zX3NldG1vZGVAYmFzaWM6CiAgICAtIHNoYXJkLWtibDog
ICAgICAgICAgW1BBU1NdWzQwXSAtPiBbRkFJTF1bNDFdIChbZmRvIzk5OTEyXSkKICAgWzQwXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjAyMC9zaGFy
ZC1rYmw0L2lndEBrbXNfc2V0bW9kZUBiYXNpYy5odG1sCiAgIFs0MV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyOTIxL3NoYXJkLWtibDUvaWd0
QGttc19zZXRtb2RlQGJhc2ljLmh0bWwKCiAgCiMjIyMgUG9zc2libGUgZml4ZXMgIyMjIwoKICAq
IGlndEBnZW1fZXhlY19mbHVzaEBiYXNpYy1iYXRjaC1rZXJuZWwtZGVmYXVsdC13YjoKICAgIC0g
c2hhcmQtaWNsYjogICAgICAgICBbSU5DT01QTEVURV1bNDJdIChbZmRvIzEwNzcxM10pIC0+IFtQ
QVNTXVs0M10gKzEgc2ltaWxhciBpc3N1ZQogICBbNDJdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDIwL3NoYXJkLWljbGI3L2lndEBnZW1fZXhlY19m
bHVzaEBiYXNpYy1iYXRjaC1rZXJuZWwtZGVmYXVsdC13Yi5odG1sCiAgIFs0M106IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyOTIxL3NoYXJkLWlj
bGIyL2lndEBnZW1fZXhlY19mbHVzaEBiYXNpYy1iYXRjaC1rZXJuZWwtZGVmYXVsdC13Yi5odG1s
CgogICogaWd0QGdlbV9mZW5jZV90aHJhc2hAYm8td3JpdGUtdmVyaWZ5LXRocmVhZGVkLXg6CiAg
ICAtIHNoYXJkLXNrbDogICAgICAgICAgW0lOQ09NUExFVEVdWzQ0XSAtPiBbUEFTU11bNDVdCiAg
IFs0NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYw
MjAvc2hhcmQtc2tsNy9pZ3RAZ2VtX2ZlbmNlX3RocmFzaEBiby13cml0ZS12ZXJpZnktdGhyZWFk
ZWQteC5odG1sCiAgIFs0NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzEyOTIxL3NoYXJkLXNrbDUvaWd0QGdlbV9mZW5jZV90aHJhc2hAYm8td3Jp
dGUtdmVyaWZ5LXRocmVhZGVkLXguaHRtbAoKICAqIGlndEBnZW1fc29mdHBpbkBub3JlbG9jLXMz
OgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtJTkNPTVBMRVRFXVs0Nl0gKFtmZG8jMTA0MTA4
XSAvIFtmZG8jMTA3NzczXSkgLT4gW1BBU1NdWzQ3XQogICBbNDZdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDIwL3NoYXJkLXNrbDMvaWd0QGdlbV9z
b2Z0cGluQG5vcmVsb2MtczMuaHRtbAogICBbNDddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjkyMS9zaGFyZC1za2w1L2lndEBnZW1fc29mdHBp
bkBub3JlbG9jLXMzLmh0bWwKCiAgKiBpZ3RAZ2VtX3dvcmthcm91bmRzQHN1c3BlbmQtcmVzdW1l
OgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtETUVTRy1XQVJOXVs0OF0gKFtmZG8jMTA4NTY2
XSkgLT4gW1BBU1NdWzQ5XQogICBbNDhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82MDIwL3NoYXJkLWtibDEvaWd0QGdlbV93b3JrYXJvdW5kc0BzdXNw
ZW5kLXJlc3VtZS5odG1sCiAgIFs0OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzEyOTIxL3NoYXJkLWtibDYvaWd0QGdlbV93b3JrYXJvdW5kc0Bz
dXNwZW5kLXJlc3VtZS5odG1sCgogICogaWd0QGk5MTVfc3VzcGVuZEBkZWJ1Z2ZzLXJlYWRlcjoK
ICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbRE1FU0ctV0FSTl1bNTBdIChbZmRvIzEwODU2Nl0p
IC0+IFtQQVNTXVs1MV0gKzQgc2ltaWxhciBpc3N1ZXMKICAgWzUwXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjAyMC9zaGFyZC1hcGw3L2lndEBpOTE1
X3N1c3BlbmRAZGVidWdmcy1yZWFkZXIuaHRtbAogICBbNTFdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjkyMS9zaGFyZC1hcGwzL2lndEBpOTE1
X3N1c3BlbmRAZGVidWdmcy1yZWFkZXIuaHRtbAoKICAqIGlndEBrbXNfZmxpcEAyeC1mbGlwLXZz
LXN1c3BlbmQ6CiAgICAtIHNoYXJkLWdsazogICAgICAgICAgW0lOQ09NUExFVEVdWzUyXSAoW2Zk
byMxMDMzNTldIC8gW2sub3JnIzE5ODEzM10pIC0+IFtQQVNTXVs1M10KICAgWzUyXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjAyMC9zaGFyZC1nbGs0
L2lndEBrbXNfZmxpcEAyeC1mbGlwLXZzLXN1c3BlbmQuaHRtbAogICBbNTNdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjkyMS9zaGFyZC1nbGsx
L2lndEBrbXNfZmxpcEAyeC1mbGlwLXZzLXN1c3BlbmQuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBw
bGFpbi1mbGlwLWZiLXJlY3JlYXRlLWludGVycnVwdGlibGU6CiAgICAtIHNoYXJkLXNrbDogICAg
ICAgICAgW0ZBSUxdWzU0XSAoW2ZkbyMxMDAzNjhdKSAtPiBbUEFTU11bNTVdCiAgIFs1NF06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYwMjAvc2hhcmQt
c2tsNS9pZ3RAa21zX2ZsaXBAcGxhaW4tZmxpcC1mYi1yZWNyZWF0ZS1pbnRlcnJ1cHRpYmxlLmh0
bWwKICAgWzU1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTI5MjEvc2hhcmQtc2tsMTAvaWd0QGttc19mbGlwQHBsYWluLWZsaXAtZmItcmVjcmVh
dGUtaW50ZXJydXB0aWJsZS5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0Bm
YmNwc3ItMXAtcHJpbXNjcm4tY3VyLWluZGZiLWRyYXctcmVuZGVyOgogICAgLSBzaGFyZC1pY2xi
OiAgICAgICAgIFtGQUlMXVs1Nl0gKFtmZG8jMTAzMTY3XSkgLT4gW1BBU1NdWzU3XSArNyBzaW1p
bGFyIGlzc3VlcwogICBbNTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV82MDIwL3NoYXJkLWljbGI3L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdA
ZmJjcHNyLTFwLXByaW1zY3JuLWN1ci1pbmRmYi1kcmF3LXJlbmRlci5odG1sCiAgIFs1N106IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyOTIxL3No
YXJkLWljbGI1L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3Ju
LWN1ci1pbmRmYi1kcmF3LXJlbmRlci5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFj
a2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tcHJpLWluZGZiLWRyYXctcHdyaXRlOgogICAgLSBzaGFy
ZC1za2w6ICAgICAgICAgIFtJTkNPTVBMRVRFXVs1OF0gKFtmZG8jMTA2OTc4XSkgLT4gW1BBU1Nd
WzU5XQogICBbNThdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82MDIwL3NoYXJkLXNrbDIvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3It
MXAtcHJpbXNjcm4tcHJpLWluZGZiLWRyYXctcHdyaXRlLmh0bWwKICAgWzU5XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI5MjEvc2hhcmQtc2ts
My9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmltc2Nybi1wcmktaW5k
ZmItZHJhdy1wd3JpdGUuaHRtbAoKICAqIGlndEBrbXNfcGxhbmVfc2NhbGluZ0BwaXBlLWEtc2Nh
bGVyLXdpdGgtcm90YXRpb246CiAgICAtIHNoYXJkLWdsazogICAgICAgICAgW1NLSVBdWzYwXSAo
W2ZkbyMxMDkyNzFdIC8gW2ZkbyMxMDkyNzhdKSAtPiBbUEFTU11bNjFdCiAgIFs2MF06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYwMjAvc2hhcmQtZ2xr
NS9pZ3RAa21zX3BsYW5lX3NjYWxpbmdAcGlwZS1hLXNjYWxlci13aXRoLXJvdGF0aW9uLmh0bWwK
ICAgWzYxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTI5MjEvc2hhcmQtZ2xrOS9pZ3RAa21zX3BsYW5lX3NjYWxpbmdAcGlwZS1hLXNjYWxlci13
aXRoLXJvdGF0aW9uLmh0bWwKCiAgKiBpZ3RAa21zX3BzckBwc3IyX3ByaW1hcnlfbW1hcF9jcHU6
CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1NLSVBdWzYyXSAoW2ZkbyMxMDk0NDFdKSAtPiBb
UEFTU11bNjNdICsxIHNpbWlsYXIgaXNzdWUKICAgWzYyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjAyMC9zaGFyZC1pY2xiNS9pZ3RAa21zX3BzckBw
c3IyX3ByaW1hcnlfbW1hcF9jcHUuaHRtbAogICBbNjNdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjkyMS9zaGFyZC1pY2xiMi9pZ3RAa21zX3Bz
ckBwc3IyX3ByaW1hcnlfbW1hcF9jcHUuaHRtbAoKICAqIGlndEBrbXNfcm90YXRpb25fY3JjQG11
bHRpcGxhbmUtcm90YXRpb24tY3JvcHBpbmctYm90dG9tOgogICAgLSBzaGFyZC1rYmw6ICAgICAg
ICAgIFtETUVTRy1GQUlMXVs2NF0gKFtmZG8jMTA1NzYzXSkgLT4gW1BBU1NdWzY1XQogICBbNjRd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDIwL3No
YXJkLWtibDcvaWd0QGttc19yb3RhdGlvbl9jcmNAbXVsdGlwbGFuZS1yb3RhdGlvbi1jcm9wcGlu
Zy1ib3R0b20uaHRtbAogICBbNjVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xMjkyMS9zaGFyZC1rYmwzL2lndEBrbXNfcm90YXRpb25fY3JjQG11
bHRpcGxhbmUtcm90YXRpb24tY3JvcHBpbmctYm90dG9tLmh0bWwKCiAgKiBpZ3RAcGVyZl9wbXVA
bXVsdGktY2xpZW50LXZjczA6CiAgICAtIHNoYXJkLWhzdzogICAgICAgICAgW0lOQ09NUExFVEVd
WzY2XSAoW2ZkbyMxMDM1NDBdKSAtPiBbUEFTU11bNjddCiAgIFs2Nl06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYwMjAvc2hhcmQtaHN3NC9pZ3RAcGVy
Zl9wbXVAbXVsdGktY2xpZW50LXZjczAuaHRtbAogICBbNjddOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjkyMS9zaGFyZC1oc3c2L2lndEBwZXJm
X3BtdUBtdWx0aS1jbGllbnQtdmNzMC5odG1sCgogICogaWd0QHBlcmZfcG11QHJjNjoKICAgIC0g
c2hhcmQta2JsOiAgICAgICAgICBbU0tJUF1bNjhdIChbZmRvIzEwOTI3MV0pIC0+IFtQQVNTXVs2
OV0KICAgWzY4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNjAyMC9zaGFyZC1rYmw1L2lndEBwZXJmX3BtdUByYzYuaHRtbAogICBbNjldOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjkyMS9zaGFyZC1r
YmwzL2lndEBwZXJmX3BtdUByYzYuaHRtbAoKICAqIGlndEBwZXJmX3BtdUByYzYtcnVudGltZS1w
bToKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbRkFJTF1bNzBdIChbZmRvIzEwNTAxMF0pIC0+
IFtQQVNTXVs3MV0KICAgWzcwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNjAyMC9zaGFyZC1rYmw2L2lndEBwZXJmX3BtdUByYzYtcnVudGltZS1wbS5o
dG1sCiAgIFs3MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzEyOTIxL3NoYXJkLWtibDUvaWd0QHBlcmZfcG11QHJjNi1ydW50aW1lLXBtLmh0bWwK
CiAgCiAgW2ZkbyMxMDAzNjhdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMDAzNjgKICBbZmRvIzEwMjM2NV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTEwMjM2NQogIFtmZG8jMTAzMTY3XTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMTY3CiAgW2ZkbyMxMDMxODRdOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMxODQKICBbZmRvIzEw
MzIzMl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzIz
MgogIFtmZG8jMTAzMzU5XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTAzMzU5CiAgW2ZkbyMxMDM1NDBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMDM1NDAKICBbZmRvIzEwNDEwOF06IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNDEwOAogIFtmZG8jMTA1MDEwXTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA1MDEwCiAgW2ZkbyMxMDUz
NjNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDUzNjMK
ICBbZmRvIzEwNTc2M106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTEwNTc2MwogIFtmZG8jMTA2OTc4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTA2OTc4CiAgW2ZkbyMxMDc3MTNdOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc3MTMKICBbZmRvIzEwNzc3M106IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzc3MwogIFtmZG8jMTA4MDQw
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4MDQwCiAg
W2ZkbyMxMDgxNDVdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMDgxNDUKICBbZmRvIzEwODU2Nl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTEwODU2NgogIFtmZG8jMTA4ODQwXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4ODQwCiAgW2ZkbyMxMDkyNzFdOiBodHRwczovL2J1
Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkyNzEKICBbZmRvIzEwOTI3OF06
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI3OAogIFtm
ZG8jMTA5NDQxXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTA5NDQxCiAgW2ZkbyMxMDk5NjBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMDk5NjAKICBbZmRvIzEwOTk4Ml06IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTk4MgogIFtmZG8jMTEwMDM2IF06IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDAzNiAKICBbZmRvIzk5OTEyXTog
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9OTk5MTIKICBbay5v
cmcjMTk4MTMzXTogaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0x
OTgxMzMKCgpQYXJ0aWNpcGF0aW5nIGhvc3RzICgxMCAtPiAxMCkKLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCgogIE5vIGNoYW5nZXMgaW4gcGFydGljaXBhdGluZyBob3N0cwoKCkJ1aWxk
IGNoYW5nZXMKLS0tLS0tLS0tLS0tLQoKICAqIExpbnV4OiBDSV9EUk1fNjAyMCAtPiBQYXRjaHdv
cmtfMTI5MjEKCiAgQ0lfRFJNXzYwMjA6IDA4N2YxMTI1NGI5YTdhNzkxNTZhODg1MDlhZmM0YzFl
MmQ2NDBhN2YgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKICBJ
R1RfNDk3MTogZmM1ZTA0NjdlYjY5MTNkMjFhZDkzMmFhOGEzMWM3N2ZkYjVhOWM3NyBAIGdpdDov
L2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hvcmcvYXBwL2ludGVsLWdwdS10b29scwogIFBhdGNo
d29ya18xMjkyMTogYzk3M2NkYWVhNTM5MGJmYjdhZmRlM2NlMWRmNjZhY2NiOWJmMTE4ZiBAIGdp
dDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIHBpZ2xpdF80NTA5OiBm
ZGM1YTRjYTExMTI0YWI4NDEzYzc5ODg4OTZlZWM0Yzk3MzM2Njk0IEAgZ2l0Oi8vYW5vbmdpdC5m
cmVlZGVza3RvcC5vcmcvcGlnbGl0Cgo9PSBMb2dzID09CgpGb3IgbW9yZSBkZXRhaWxzIHNlZTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI5MjEv
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
