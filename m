Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4682410DE46
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Nov 2019 17:30:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 189516E98E;
	Sat, 30 Nov 2019 16:30:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 37F786E98E;
 Sat, 30 Nov 2019 16:30:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 29FEFA0099;
 Sat, 30 Nov 2019 16:30:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Sat, 30 Nov 2019 16:30:17 -0000
Message-ID: <157513141714.2154.6783740355639996697@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1575022735.git.jani.nikula@intel.com>
In-Reply-To: <cover.1575022735.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_vide?=
 =?utf-8?q?o=2C_drm=2C_etc=3A_constify_fbops_in_struct_fb=5Finfo?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogdmlkZW8sIGRybSwgZXRjOiBjb25zdGlmeSBm
Ym9wcyBpbiBzdHJ1Y3QgZmJfaW5mbwpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNr
dG9wLm9yZy9zZXJpZXMvNzAxOTgvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQ0kg
QnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNzQ0NF9mdWxsIC0+IFBhdGNod29ya18xNTUw
N19mdWxsCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKkZBSUxVUkUqKgoKICBTZXJpb3VzIHVua25vd24gY2hh
bmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTU1MDdfZnVsbCBhYnNvbHV0ZWx5IG5lZWQgdG8g
YmUKICB2ZXJpZmllZCBtYW51YWxseS4KICAKICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNo
YW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMKICBpbnRyb2R1Y2VkIGlu
IFBhdGNod29ya18xNTUwN19mdWxsLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxs
b3cgdGhlbQogIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCBy
ZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLgoKICAKClBvc3NpYmxlIG5ldyBpc3N1ZXMKLS0t
LS0tLS0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5
IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNTUwN19mdWxsOgoKIyMjIElHVCBj
aGFuZ2VzICMjIwoKIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjCgogICogaWd0QGttc19w
c3JAc3ByaXRlX3BsYW5lX29ub2ZmOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIE5PVFJVTiAt
PiBbRkFJTF1bMV0gKzE5IHNpbWlsYXIgaXNzdWVzCiAgIFsxXTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU1MDcvc2hhcmQtaWNsYjcvaWd0QGtt
c19wc3JAc3ByaXRlX3BsYW5lX29ub2ZmLmh0bWwKCiAgCiMjIyMgU3VwcHJlc3NlZCAjIyMjCgog
IFRoZSBmb2xsb3dpbmcgcmVzdWx0cyBjb21lIGZyb20gdW50cnVzdGVkIG1hY2hpbmVzLCB0ZXN0
cywgb3Igc3RhdHVzZXMuCiAgVGhleSBkbyBub3QgYWZmZWN0IHRoZSBvdmVyYWxsIHJlc3VsdC4K
CiAgKiB7aWd0QHBlcmZfcG11QGZyZXF1ZW5jeS1pZGxlfToKICAgIC0gc2hhcmQta2JsOiAgICAg
ICAgICBOT1RSVU4gLT4gW0ZBSUxdWzJdCiAgIFsyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU1MDcvc2hhcmQta2JsNy9pZ3RAcGVyZl9wbXVA
ZnJlcXVlbmN5LWlkbGUuaHRtbAoKICAKS25vd24gaXNzdWVzCi0tLS0tLS0tLS0tLQoKICBIZXJl
IGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTU1MDdfZnVsbCB0aGF0IGNvbWUg
ZnJvbSBrbm93biBpc3N1ZXM6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIElzc3VlcyBoaXQg
IyMjIwoKICAqIGlndEBnZW1fY3R4X2lzb2xhdGlvbkBiY3MwLXMzOgogICAgLSBzaGFyZC1hcGw6
ICAgICAgICAgIFtQQVNTXVszXSAtPiBbRE1FU0ctV0FSTl1bNF0gKFtpOTE1IzE4MF0pICszIHNp
bWlsYXIgaXNzdWVzCiAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNzQ0NC9zaGFyZC1hcGw3L2lndEBnZW1fY3R4X2lzb2xhdGlvbkBiY3MwLXMz
Lmh0bWwKICAgWzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNTUwNy9zaGFyZC1hcGw0L2lndEBnZW1fY3R4X2lzb2xhdGlvbkBiY3MwLXMzLmh0
bWwKICAgIC0gc2hhcmQtdGdsYjogICAgICAgICBbUEFTU11bNV0gLT4gW0lOQ09NUExFVEVdWzZd
IChbaTkxNSM0NTZdKQogICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzc0NDQvc2hhcmQtdGdsYjQvaWd0QGdlbV9jdHhfaXNvbGF0aW9uQGJjczAt
czMuaHRtbAogICBbNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE1NTA3L3NoYXJkLXRnbGIxL2lndEBnZW1fY3R4X2lzb2xhdGlvbkBiY3MwLXMz
Lmh0bWwKCiAgKiBpZ3RAZ2VtX2N0eF9pc29sYXRpb25AdmNzMS1yZXNldDoKICAgIC0gc2hhcmQt
aWNsYjogICAgICAgICBbUEFTU11bN10gLT4gW1NLSVBdWzhdIChbZmRvIzEwOTI3Nl0gLyBbZmRv
IzExMjA4MF0pCiAgIFs3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNzQ0NC9zaGFyZC1pY2xiNC9pZ3RAZ2VtX2N0eF9pc29sYXRpb25AdmNzMS1yZXNl
dC5odG1sCiAgIFs4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTU1MDcvc2hhcmQtaWNsYjUvaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHZjczEtcmVz
ZXQuaHRtbAoKICAqIGlndEBnZW1fZXhlY19yZWxvY0BiYXNpYy1jcHUtcmVhZC1hY3RpdmU6CiAg
ICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzldIC0+IFtETUVTRy1XQVJOXVsxMF0gKFtp
OTE1IzEwOV0pCiAgIFs5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNzQ0NC9zaGFyZC1za2w0L2lndEBnZW1fZXhlY19yZWxvY0BiYXNpYy1jcHUtcmVh
ZC1hY3RpdmUuaHRtbAogICBbMTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNTUwNy9zaGFyZC1za2w0L2lndEBnZW1fZXhlY19yZWxvY0BiYXNp
Yy1jcHUtcmVhZC1hY3RpdmUuaHRtbAoKICAqIGlndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0
LXF1ZXVlLWJzZDI6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzExXSAtPiBbU0tJ
UF1bMTJdIChbZmRvIzEwOTI3Nl0pICsyIHNpbWlsYXIgaXNzdWVzCiAgIFsxMV06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0NDQvc2hhcmQtaWNsYjQv
aWd0QGdlbV9leGVjX3NjaGVkdWxlQHByZWVtcHQtcXVldWUtYnNkMi5odG1sCiAgIFsxMl06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTA3L3No
YXJkLWljbGI1L2lndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0LXF1ZXVlLWJzZDIuaHRtbAoK
ICAqIGlndEBnZW1fdXNlcnB0cl9ibGl0c0BzeW5jLXVubWFwLWN5Y2xlczoKICAgIC0gc2hhcmQt
c25iOiAgICAgICAgICBbUEFTU11bMTNdIC0+IFtETUVTRy1XQVJOXVsxNF0gKFtmZG8jMTExODcw
XSkKICAgWzEzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNzQ0NC9zaGFyZC1zbmIyL2lndEBnZW1fdXNlcnB0cl9ibGl0c0BzeW5jLXVubWFwLWN5Y2xl
cy5odG1sCiAgIFsxNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE1NTA3L3NoYXJkLXNuYjYvaWd0QGdlbV91c2VycHRyX2JsaXRzQHN5bmMtdW5t
YXAtY3ljbGVzLmh0bWwKCiAgKiBpZ3RAaTkxNV9wbV9ycG1Ac3lzdGVtLXN1c3BlbmQtbW9kZXNl
dDoKICAgIC0gc2hhcmQtdGdsYjogICAgICAgICBbUEFTU11bMTVdIC0+IFtJTkNPTVBMRVRFXVsx
Nl0gKFtpOTE1IzQ1Nl0gLyBbaTkxNSM0NjBdKSArMSBzaW1pbGFyIGlzc3VlCiAgIFsxNV06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0NDQvc2hhcmQt
dGdsYjUvaWd0QGk5MTVfcG1fcnBtQHN5c3RlbS1zdXNwZW5kLW1vZGVzZXQuaHRtbAogICBbMTZd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTUw
Ny9zaGFyZC10Z2xiNC9pZ3RAaTkxNV9wbV9ycG1Ac3lzdGVtLXN1c3BlbmQtbW9kZXNldC5odG1s
CgogICogaWd0QGk5MTVfc3VzcGVuZEBmb3JjZXdha2U6CiAgICAtIHNoYXJkLXNrbDogICAgICAg
ICAgW1BBU1NdWzE3XSAtPiBbSU5DT01QTEVURV1bMThdIChbaTkxNSM2OV0pCiAgIFsxN106IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0NDQvc2hhcmQt
c2tsNi9pZ3RAaTkxNV9zdXNwZW5kQGZvcmNld2FrZS5odG1sCiAgIFsxOF06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTA3L3NoYXJkLXNrbDIv
aWd0QGk5MTVfc3VzcGVuZEBmb3JjZXdha2UuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBmbGlwLXZz
LWFic29sdXRlLXdmX3ZibGFuay1pbnRlcnJ1cHRpYmxlOgogICAgLSBzaGFyZC1za2w6ICAgICAg
ICAgIFtQQVNTXVsxOV0gLT4gW0ZBSUxdWzIwXSAoW2k5MTUjMzRdKQogICBbMTldOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDQ0L3NoYXJkLXNrbDgv
aWd0QGttc19mbGlwQGZsaXAtdnMtYWJzb2x1dGUtd2ZfdmJsYW5rLWludGVycnVwdGlibGUuaHRt
bAogICBbMjBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNTUwNy9zaGFyZC1za2w2L2lndEBrbXNfZmxpcEBmbGlwLXZzLWFic29sdXRlLXdmX3Zi
bGFuay1pbnRlcnJ1cHRpYmxlLmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5k
LWludGVycnVwdGlibGU6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzIxXSAtPiBb
SU5DT01QTEVURV1bMjJdIChbaTkxNSMyMjFdKQogICBbMjFdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDQ0L3NoYXJkLXNrbDQvaWd0QGttc19mbGlw
QGZsaXAtdnMtc3VzcGVuZC1pbnRlcnJ1cHRpYmxlLmh0bWwKICAgWzIyXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU1MDcvc2hhcmQtc2tsNC9p
Z3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLWludGVycnVwdGlibGUuaHRtbAoKICAqIGlndEBr
bXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXNocmZiLWZsaXB0cmFjazoKICAgIC0gc2hh
cmQtdGdsYjogICAgICAgICBbUEFTU11bMjNdIC0+IFtGQUlMXVsyNF0gKFtpOTE1IzQ5XSkgKzIg
c2ltaWxhciBpc3N1ZXMKICAgWzIzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNzQ0NC9zaGFyZC10Z2xiMS9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNr
aW5nQGZiYy0xcC1zaHJmYi1mbGlwdHJhY2suaHRtbAogICBbMjRdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTUwNy9zaGFyZC10Z2xiMS9pZ3RA
a21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1zaHJmYi1mbGlwdHJhY2suaHRtbAoKICAq
IGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLWN1ci1pbmRm
Yi1kcmF3LW1tYXAtd2M6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzI1XSAtPiBb
SU5DT01QTEVURV1bMjZdIChbaTkxNSMxMjNdIC8gW2k5MTUjMTQwXSkKICAgWzI1XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQ0NC9zaGFyZC1pY2xi
Mi9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmltc2Nybi1jdXItaW5k
ZmItZHJhdy1tbWFwLXdjLmh0bWwKICAgWzI2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU1MDcvc2hhcmQtaWNsYjYvaWd0QGttc19mcm9udGJ1
ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tY3VyLWluZGZiLWRyYXctbW1hcC13Yy5o
dG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4t
c3ByLWluZGZiLW1vdmU6CiAgICAtIHNoYXJkLXRnbGI6ICAgICAgICAgW1BBU1NdWzI3XSAtPiBb
SU5DT01QTEVURV1bMjhdIChbaTkxNSM0NzRdKQogICBbMjddOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDQ0L3NoYXJkLXRnbGI2L2lndEBrbXNfZnJv
bnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLXNwci1pbmRmYi1tb3ZlLmh0bWwK
ICAgWzI4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTU1MDcvc2hhcmQtdGdsYjcvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3It
MXAtcHJpbXNjcm4tc3ByLWluZGZiLW1vdmUuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJf
dHJhY2tpbmdAcHNyLTFwLXByaW1zY3JuLWN1ci1pbmRmYi1kcmF3LXB3cml0ZToKICAgIC0gc2hh
cmQtc2tsOiAgICAgICAgICBbUEFTU11bMjldIC0+IFtGQUlMXVszMF0gKFtpOTE1IzQ5XSkKICAg
WzI5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQ0
NC9zaGFyZC1za2w2L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAcHNyLTFwLXByaW1zY3Ju
LWN1ci1pbmRmYi1kcmF3LXB3cml0ZS5odG1sCiAgIFszMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTA3L3NoYXJkLXNrbDEvaWd0QGttc19m
cm9udGJ1ZmZlcl90cmFja2luZ0Bwc3ItMXAtcHJpbXNjcm4tY3VyLWluZGZiLWRyYXctcHdyaXRl
Lmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5lQHBpeGVsLWZvcm1hdC1waXBlLWItcGxhbmVzLXNvdXJj
ZS1jbGFtcGluZzoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bMzFdIC0+IFtJTkNP
TVBMRVRFXVszMl0gKFtmZG8jMTEyMzQ3XSkKICAgWzMxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQ0NC9zaGFyZC1za2wxMC9pZ3RAa21zX3BsYW5l
QHBpeGVsLWZvcm1hdC1waXBlLWItcGxhbmVzLXNvdXJjZS1jbGFtcGluZy5odG1sCiAgIFszMl06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTA3
L3NoYXJkLXNrbDQvaWd0QGttc19wbGFuZUBwaXhlbC1mb3JtYXQtcGlwZS1iLXBsYW5lcy1zb3Vy
Y2UtY2xhbXBpbmcuaHRtbAoKICAqIGlndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1hLWNv
bnN0YW50LWFscGhhLW1pbjoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bMzNdIC0+
IFtGQUlMXVszNF0gKFtmZG8jMTA4MTQ1XSkKICAgWzMzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQ0NC9zaGFyZC1za2w2L2lndEBrbXNfcGxhbmVf
YWxwaGFfYmxlbmRAcGlwZS1hLWNvbnN0YW50LWFscGhhLW1pbi5odG1sCiAgIFszNF06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTA3L3NoYXJk
LXNrbDEvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWEtY29uc3RhbnQtYWxwaGEtbWlu
Lmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYi1jb3ZlcmFnZS03ZWZj
OgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVszNV0gLT4gW0ZBSUxdWzM2XSAoW2Zk
byMxMDgxNDVdIC8gW2k5MTUjMjY1XSkKICAgWzM1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQ0NC9zaGFyZC1za2w4L2lndEBrbXNfcGxhbmVfYWxw
aGFfYmxlbmRAcGlwZS1iLWNvdmVyYWdlLTdlZmMuaHRtbAogICBbMzZdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTUwNy9zaGFyZC1za2w2L2ln
dEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1iLWNvdmVyYWdlLTdlZmMuaHRtbAoKICAqIGln
dEBrbXNfdmJsYW5rQHBpcGUtYS10cy1jb250aW51YXRpb24tc3VzcGVuZDoKICAgIC0gc2hhcmQt
a2JsOiAgICAgICAgICBbUEFTU11bMzddIC0+IFtETUVTRy1XQVJOXVszOF0gKFtpOTE1IzE4MF0p
ICsxIHNpbWlsYXIgaXNzdWUKICAgWzM3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNzQ0NC9zaGFyZC1rYmw3L2lndEBrbXNfdmJsYW5rQHBpcGUtYS10
cy1jb250aW51YXRpb24tc3VzcGVuZC5odG1sCiAgIFszOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTA3L3NoYXJkLWtibDMvaWd0QGttc192
YmxhbmtAcGlwZS1hLXRzLWNvbnRpbnVhdGlvbi1zdXNwZW5kLmh0bWwKCiAgKiBpZ3RAa21zX3Zi
bGFua0BwaXBlLWQtdHMtY29udGludWF0aW9uLXN1c3BlbmQ6CiAgICAtIHNoYXJkLXRnbGI6ICAg
ICAgICAgW1BBU1NdWzM5XSAtPiBbSU5DT01QTEVURV1bNDBdIChbaTkxNSM0NjBdKQogICBbMzld
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDQ0L3No
YXJkLXRnbGI2L2lndEBrbXNfdmJsYW5rQHBpcGUtZC10cy1jb250aW51YXRpb24tc3VzcGVuZC5o
dG1sCiAgIFs0MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE1NTA3L3NoYXJkLXRnbGIxL2lndEBrbXNfdmJsYW5rQHBpcGUtZC10cy1jb250aW51
YXRpb24tc3VzcGVuZC5odG1sCgogICogaWd0QHBlcmZfcG11QGJ1c3ktY2hlY2stYWxsLXZjczE6
CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzQxXSAtPiBbU0tJUF1bNDJdIChbZmRv
IzExMjA4MF0pICszIHNpbWlsYXIgaXNzdWVzCiAgIFs0MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0NDQvc2hhcmQtaWNsYjQvaWd0QHBlcmZfcG11
QGJ1c3ktY2hlY2stYWxsLXZjczEuaHRtbAogICBbNDJdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTUwNy9zaGFyZC1pY2xiNS9pZ3RAcGVyZl9w
bXVAYnVzeS1jaGVjay1hbGwtdmNzMS5odG1sCgogIAojIyMjIFBvc3NpYmxlIGZpeGVzICMjIyMK
CiAgKiBpZ3RAZ2VtX2Vpb0BrbXM6CiAgICAtIHNoYXJkLXNuYjogICAgICAgICAgW0lOQ09NUExF
VEVdWzQzXSAoW2k5MTUjODJdKSAtPiBbUEFTU11bNDRdCiAgIFs0M106IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0NDQvc2hhcmQtc25iMS9pZ3RAZ2Vt
X2Vpb0BrbXMuaHRtbAogICBbNDRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNTUwNy9zaGFyZC1zbmI1L2lndEBnZW1fZWlvQGttcy5odG1sCgog
ICogaWd0QGdlbV9leGVjX2JhbGFuY2VyQGluZGljZXM6CiAgICAtIHNoYXJkLXNrbDogICAgICAg
ICAgW0lOQ09NUExFVEVdWzQ1XSAtPiBbUEFTU11bNDZdCiAgIFs0NV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0NDQvc2hhcmQtc2tsOC9pZ3RAZ2Vt
X2V4ZWNfYmFsYW5jZXJAaW5kaWNlcy5odG1sCiAgIFs0Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTA3L3NoYXJkLXNrbDEwL2lndEBnZW1f
ZXhlY19iYWxhbmNlckBpbmRpY2VzLmh0bWwKCiAgKiBpZ3RAZ2VtX3BlcnNpc3RlbnRfcmVsb2Nz
QGZvcmtlZC10aHJhc2hpbmc6CiAgICAtIHNoYXJkLXNuYjogICAgICAgICAgW0ZBSUxdWzQ3XSAo
W2k5MTUjNTIwXSkgLT4gW1BBU1NdWzQ4XQogICBbNDddOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDQ0L3NoYXJkLXNuYjUvaWd0QGdlbV9wZXJzaXN0
ZW50X3JlbG9jc0Bmb3JrZWQtdGhyYXNoaW5nLmh0bWwKICAgWzQ4XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU1MDcvc2hhcmQtc25iNy9pZ3RA
Z2VtX3BlcnNpc3RlbnRfcmVsb2NzQGZvcmtlZC10aHJhc2hpbmcuaHRtbAoKICAqIGlndEBnZW1f
c3luY0BiYXNpYy1zdG9yZS1hbGw6CiAgICAtIHNoYXJkLXRnbGI6ICAgICAgICAgW0lOQ09NUExF
VEVdWzQ5XSAoW2k5MTUjNDcyXSkgLT4gW1BBU1NdWzUwXQogICBbNDldOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDQ0L3NoYXJkLXRnbGI2L2lndEBn
ZW1fc3luY0BiYXNpYy1zdG9yZS1hbGwuaHRtbAogICBbNTBdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTUwNy9zaGFyZC10Z2xiMi9pZ3RAZ2Vt
X3N5bmNAYmFzaWMtc3RvcmUtYWxsLmh0bWwKCiAgKiBpZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAbWFw
LWZpeGVkLWludmFsaWRhdGUtYnVzeToKICAgIC0gc2hhcmQtc25iOiAgICAgICAgICBbRE1FU0ct
V0FSTl1bNTFdIChbZmRvIzExMTg3MF0pIC0+IFtQQVNTXVs1Ml0gKzIgc2ltaWxhciBpc3N1ZXMK
ICAgWzUxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NzQ0NC9zaGFyZC1zbmI1L2lndEBnZW1fdXNlcnB0cl9ibGl0c0BtYXAtZml4ZWQtaW52YWxpZGF0
ZS1idXN5Lmh0bWwKICAgWzUyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTU1MDcvc2hhcmQtc25iMS9pZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAbWFw
LWZpeGVkLWludmFsaWRhdGUtYnVzeS5odG1sCiAgICAtIHNoYXJkLWhzdzogICAgICAgICAgW0RN
RVNHLVdBUk5dWzUzXSAoW2ZkbyMxMTE4NzBdKSAtPiBbUEFTU11bNTRdCiAgIFs1M106IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0NDQvc2hhcmQtaHN3
NS9pZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAbWFwLWZpeGVkLWludmFsaWRhdGUtYnVzeS5odG1sCiAg
IFs1NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE1NTA3L3NoYXJkLWhzdzQvaWd0QGdlbV91c2VycHRyX2JsaXRzQG1hcC1maXhlZC1pbnZhbGlk
YXRlLWJ1c3kuaHRtbAoKICAqIGlndEBnZW1fd29ya2Fyb3VuZHNAc3VzcGVuZC1yZXN1bWUtZmQ6
CiAgICAtIHNoYXJkLWtibDogICAgICAgICAgW0RNRVNHLVdBUk5dWzU1XSAoW2k5MTUjMTgwXSkg
LT4gW1BBU1NdWzU2XSArNSBzaW1pbGFyIGlzc3VlcwogICBbNTVdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDQ0L3NoYXJkLWtibDcvaWd0QGdlbV93
b3JrYXJvdW5kc0BzdXNwZW5kLXJlc3VtZS1mZC5odG1sCiAgIFs1Nl06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTA3L3NoYXJkLWtibDEvaWd0
QGdlbV93b3JrYXJvdW5kc0BzdXNwZW5kLXJlc3VtZS1mZC5odG1sCgogICogaWd0QGk5MTVfc3Vz
cGVuZEBmZW5jZS1yZXN0b3JlLXRpbGVkMnVudGlsZWQ6CiAgICAtIHNoYXJkLXRnbGI6ICAgICAg
ICAgW0lOQ09NUExFVEVdWzU3XSAoW2k5MTUjNDU2XSAvIFtpOTE1IzQ2MF0pIC0+IFtQQVNTXVs1
OF0gKzIgc2ltaWxhciBpc3N1ZXMKICAgWzU3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQ0NC9zaGFyZC10Z2xiNC9pZ3RAaTkxNV9zdXNwZW5kQGZl
bmNlLXJlc3RvcmUtdGlsZWQydW50aWxlZC5odG1sCiAgIFs1OF06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTA3L3NoYXJkLXRnbGI4L2lndEBp
OTE1X3N1c3BlbmRAZmVuY2UtcmVzdG9yZS10aWxlZDJ1bnRpbGVkLmh0bWwKCiAgKiBpZ3RAa21z
X2NvbG9yQHBpcGUtYS1jdG0tMC0yNToKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbRE1FU0ct
V0FSTl1bNTldIChbaTkxNSMxMDldKSAtPiBbUEFTU11bNjBdICsxIHNpbWlsYXIgaXNzdWUKICAg
WzU5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQ0
NC9zaGFyZC1za2wxL2lndEBrbXNfY29sb3JAcGlwZS1hLWN0bS0wLTI1Lmh0bWwKICAgWzYwXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU1MDcv
c2hhcmQtc2tsOS9pZ3RAa21zX2NvbG9yQHBpcGUtYS1jdG0tMC0yNS5odG1sCgogICogaWd0QGtt
c19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtcHJpbXNjcm4tY3VyLWluZGZiLWRyYXctcHdy
aXRlOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtJTkNPTVBMRVRFXVs2MV0gKFtpOTE1IzE0
MF0pIC0+IFtQQVNTXVs2Ml0KICAgWzYxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNzQ0NC9zaGFyZC1pY2xiNi9pZ3RAa21zX2Zyb250YnVmZmVyX3Ry
YWNraW5nQGZiYy0xcC1wcmltc2Nybi1jdXItaW5kZmItZHJhdy1wd3JpdGUuaHRtbAogICBbNjJd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTUw
Ny9zaGFyZC1pY2xiNC9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1wcmltc2Ny
bi1jdXItaW5kZmItZHJhdy1wd3JpdGUuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJh
Y2tpbmdAZmJjLTFwLXByaW1zY3JuLWN1ci1pbmRmYi1tb3ZlOgogICAgLSBzaGFyZC10Z2xiOiAg
ICAgICAgIFtJTkNPTVBMRVRFXVs2M10gKFtpOTE1IzQ3NF0pIC0+IFtQQVNTXVs2NF0gKzEgc2lt
aWxhciBpc3N1ZQogICBbNjNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV83NDQ0L3NoYXJkLXRnbGI4L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdA
ZmJjLTFwLXByaW1zY3JuLWN1ci1pbmRmYi1tb3ZlLmh0bWwKICAgWzY0XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU1MDcvc2hhcmQtdGdsYjEv
aWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtcHJpbXNjcm4tY3VyLWluZGZiLW1v
dmUuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLWluZGZiLXNjYWxl
ZHByaW1hcnk6CiAgICAtIHNoYXJkLWtibDogICAgICAgICAgW0lOQ09NUExFVEVdWzY1XSAoW2Zk
byMxMDM2NjVdIC8gW2k5MTUjNjM0XSkgLT4gW1BBU1NdWzY2XQogICBbNjVdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDQ0L3NoYXJkLWtibDEvaWd0
QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtaW5kZmItc2NhbGVkcHJpbWFyeS5odG1sCiAg
IFs2Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE1NTA3L3NoYXJkLWtibDEvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtaW5kZmIt
c2NhbGVkcHJpbWFyeS5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNw
c3ItMXAtcHJpLWluZGZiLW11bHRpZHJhdzoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbRkFJ
TF1bNjddIChbaTkxNSM0OV0pIC0+IFtQQVNTXVs2OF0KICAgWzY3XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQ0NC9zaGFyZC1pY2xiOC9pZ3RAa21z
X2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmktaW5kZmItbXVsdGlkcmF3Lmh0bWwK
ICAgWzY4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTU1MDcvc2hhcmQtaWNsYjUvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3It
MXAtcHJpLWluZGZiLW11bHRpZHJhdy5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFj
a2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tY3VyLWluZGZiLWRyYXctbW1hcC1jcHU6CiAgICAtIHNo
YXJkLWljbGI6ICAgICAgICAgW0lOQ09NUExFVEVdWzY5XSAoW2k5MTUjMTIzXSAvIFtpOTE1IzE0
MF0pIC0+IFtQQVNTXVs3MF0gKzEgc2ltaWxhciBpc3N1ZQogICBbNjldOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDQ0L3NoYXJkLWljbGI4L2lndEBr
bXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLWN1ci1pbmRmYi1kcmF3
LW1tYXAtY3B1Lmh0bWwKICAgWzcwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTU1MDcvc2hhcmQtaWNsYjUvaWd0QGttc19mcm9udGJ1ZmZlcl90
cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tY3VyLWluZGZiLWRyYXctbW1hcC1jcHUuaHRtbAoK
ICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAcHNyLTFwLXByaW1zY3JuLXNocmZiLXBn
ZmxpcC1ibHQ6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0lOQ09NUExFVEVdWzcxXSAoW2k5
MTUjMTIzXSkgLT4gW1BBU1NdWzcyXQogICBbNzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDQ0L3NoYXJkLXNrbDMvaWd0QGttc19mcm9udGJ1ZmZl
cl90cmFja2luZ0Bwc3ItMXAtcHJpbXNjcm4tc2hyZmItcGdmbGlwLWJsdC5odG1sCiAgIFs3Ml06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTA3
L3NoYXJkLXNrbDkvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0Bwc3ItMXAtcHJpbXNjcm4t
c2hyZmItcGdmbGlwLWJsdC5odG1sCgogICogaWd0QGttc19wbGFuZUBwaXhlbC1mb3JtYXQtcGlw
ZS1hLXBsYW5lczoKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbSU5DT01QTEVURV1bNzNdIChb
ZmRvIzEwMzY2NV0pIC0+IFtQQVNTXVs3NF0KICAgWzczXTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQ0NC9zaGFyZC1rYmw3L2lndEBrbXNfcGxhbmVA
cGl4ZWwtZm9ybWF0LXBpcGUtYS1wbGFuZXMuaHRtbAogICBbNzRdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTUwNy9zaGFyZC1rYmw2L2lndEBr
bXNfcGxhbmVAcGl4ZWwtZm9ybWF0LXBpcGUtYS1wbGFuZXMuaHRtbAoKICAqIGlndEBrbXNfcGxh
bmVfYWxwaGFfYmxlbmRAcGlwZS1iLWNvbnN0YW50LWFscGhhLW1pbjoKICAgIC0gc2hhcmQtc2ts
OiAgICAgICAgICBbRkFJTF1bNzVdIChbZmRvIzEwODE0NV0pIC0+IFtQQVNTXVs3Nl0KICAgWzc1
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQ0NC9z
aGFyZC1za2wyL2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1iLWNvbnN0YW50LWFscGhh
LW1pbi5odG1sCiAgIFs3Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE1NTA3L3NoYXJkLXNrbDUvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBw
aXBlLWItY29uc3RhbnQtYWxwaGEtbWluLmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5lX2FscGhhX2Js
ZW5kQHBpcGUtYy1jb3ZlcmFnZS03ZWZjOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtGQUlM
XVs3N10gKFtmZG8jMTA4MTQ1XSAvIFtpOTE1IzI2NV0pIC0+IFtQQVNTXVs3OF0KICAgWzc3XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQ0NC9zaGFy
ZC1za2w2L2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1jLWNvdmVyYWdlLTdlZmMuaHRt
bAogICBbNzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNTUwNy9zaGFyZC1za2wzL2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1jLWNv
dmVyYWdlLTdlZmMuaHRtbAoKICAKIyMjIyBXYXJuaW5ncyAjIyMjCgogICogaWd0QGttc19jdXJz
b3JfY3JjQHBpcGUtYi1jdXJzb3Itc3VzcGVuZDoKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBb
RkFJTF1bNzldIChbaTkxNSM1NF0pIC0+IFtETUVTRy1GQUlMXVs4MF0gKFtpOTE1IzE4MF0gLyBb
aTkxNSM1NF0pCiAgIFs3OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzc0NDQvc2hhcmQtYXBsNi9pZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1iLWN1cnNv
ci1zdXNwZW5kLmh0bWwKICAgWzgwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTU1MDcvc2hhcmQtYXBsMS9pZ3RAa21zX2N1cnNvcl9jcmNAcGlw
ZS1iLWN1cnNvci1zdXNwZW5kLmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5lQHBpeGVsLWZvcm1hdC1w
aXBlLWItcGxhbmVzOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtJTkNPTVBMRVRFXVs4MV0g
KFtmZG8jMTEyMzkxXSkgLT4gW0lOQ09NUExFVEVdWzgyXSAoW2ZkbyMxMTIzNDddKQogICBbODFd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDQ0L3No
YXJkLXNrbDkvaWd0QGttc19wbGFuZUBwaXhlbC1mb3JtYXQtcGlwZS1iLXBsYW5lcy5odG1sCiAg
IFs4Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE1NTA3L3NoYXJkLXNrbDIvaWd0QGttc19wbGFuZUBwaXhlbC1mb3JtYXQtcGlwZS1iLXBsYW5l
cy5odG1sCgogIAogIHtuYW1lfTogVGhpcyBlbGVtZW50IGlzIHN1cHByZXNzZWQuIFRoaXMgbWVh
bnMgaXQgaXMgaWdub3JlZCB3aGVuIGNvbXB1dGluZwogICAgICAgICAgdGhlIHN0YXR1cyBvZiB0
aGUgZGlmZmVyZW5jZSAoU1VDQ0VTUywgV0FSTklORywgb3IgRkFJTFVSRSkuCgogIFtmZG8jMTAz
NjY1XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzNjY1
CiAgW2ZkbyMxMDgxNDVdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMDgxNDUKICBbZmRvIzEwOTI3Nl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTEwOTI3NgogIFtmZG8jMTExODcwXTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExODcwCiAgW2ZkbyMxMTIwODBdOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTIwODAKICBbZmRvIzExMjM0
N106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMjM0Nwog
IFtmZG8jMTEyMzkxXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9MTEyMzkxCiAgW2k5MTUjMTA5XTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2Ry
bS9pbnRlbC9pc3N1ZXMvMTA5CiAgW2k5MTUjMTIzXTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0
b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMTIzCiAgW2k5MTUjMTQwXTogaHR0cHM6Ly9naXRsYWIu
ZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMTQwCiAgW2k5MTUjMTgwXTogaHR0cHM6
Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMTgwCiAgW2k5MTUjMjIx
XTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMjIxCiAg
W2k5MTUjMjY1XTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1
ZXMvMjY1CiAgW2k5MTUjMzRdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2lu
dGVsL2lzc3Vlcy8zNAogIFtpOTE1IzQ1Nl06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9y
Zy9kcm0vaW50ZWwvaXNzdWVzLzQ1NgogIFtpOTE1IzQ2MF06IGh0dHBzOi8vZ2l0bGFiLmZyZWVk
ZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzQ2MAogIFtpOTE1IzQ3Ml06IGh0dHBzOi8vZ2l0
bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzQ3MgogIFtpOTE1IzQ3NF06IGh0
dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzQ3NAogIFtpOTE1
IzQ5XTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNDkK
ICBbaTkxNSM1MjBdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lz
c3Vlcy81MjAKICBbaTkxNSM1NF06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0v
aW50ZWwvaXNzdWVzLzU0CiAgW2k5MTUjNjM0XTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Au
b3JnL2RybS9pbnRlbC9pc3N1ZXMvNjM0CiAgW2k5MTUjNjldOiBodHRwczovL2dpdGxhYi5mcmVl
ZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy82OQogIFtpOTE1IzgyXTogaHR0cHM6Ly9naXRs
YWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvODIKCgpQYXJ0aWNpcGF0aW5nIGhv
c3RzICgxMSAtPiAxMSkKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgogIE5vIGNoYW5n
ZXMgaW4gcGFydGljaXBhdGluZyBob3N0cwoKCkJ1aWxkIGNoYW5nZXMKLS0tLS0tLS0tLS0tLQoK
ICAqIENJOiBDSS0yMDE5MDUyOSAtPiBOb25lCiAgKiBMaW51eDogQ0lfRFJNXzc0NDQgLT4gUGF0
Y2h3b3JrXzE1NTA3CgogIENJLTIwMTkwNTI5OiAyMDE5MDUyOQogIENJX0RSTV83NDQ0OiBiNTFk
YjRhOTU3MjA5YTI3ZTljNWQwYmJkM2NlMjQwOGNjZWU2YzJjIEAgZ2l0Oi8vYW5vbmdpdC5mcmVl
ZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgSUdUXzUzMTg6IDI2YWU2NTg0YWMwM2FkODYyZDgy
Zjk4NjMwMjI3NWE2OGJjY2NiMjkgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94b3Jn
L2FwcC9pbnRlbC1ncHUtdG9vbHMKICBQYXRjaHdvcmtfMTU1MDc6IGIwOTllMmYzODZlY2YwYmUw
Nzc2Y2IwYzUzOTAzM2YzMDU1N2M0OGIgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9n
ZngtY2kvbGludXgKICBwaWdsaXRfNDUwOTogZmRjNWE0Y2ExMTEyNGFiODQxM2M3OTg4ODk2ZWVj
NGM5NzMzNjY5NCBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3BpZ2xpdAoKPT0gTG9n
cyA9PQoKRm9yIG1vcmUgZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTA3L2luZGV4Lmh0bWwKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
