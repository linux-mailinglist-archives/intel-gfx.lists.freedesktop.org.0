Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C05A4FF606
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Nov 2019 23:17:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 612488972D;
	Sat, 16 Nov 2019 22:17:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 20E0A89581;
 Sat, 16 Nov 2019 22:17:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 18CDDA0118;
 Sat, 16 Nov 2019 22:17:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 16 Nov 2019 22:17:20 -0000
Message-ID: <157394264007.5883.6543212647655600701@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191115114800.725061-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191115114800.725061-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EIGT=3A_success_for_drm/?=
 =?utf-8?q?i915/gt=3A_Use_gt_locals_for_accessing_rc6?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3Q6IFVzZSBndCBsb2NhbHMg
Zm9yIGFjY2Vzc2luZyByYzYKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5v
cmcvc2VyaWVzLzY5NTIzLwpTdGF0ZSA6IHN1Y2Nlc3MKCj09IFN1bW1hcnkgPT0KCkNJIEJ1ZyBM
b2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzczNTJfZnVsbCAtPiBQYXRjaHdvcmtfMTUyNzlfZnVs
bAo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CgpT
dW1tYXJ5Ci0tLS0tLS0KCiAgKipTVUNDRVNTKioKCiAgTm8gcmVncmVzc2lvbnMgZm91bmQuCgog
IAoKS25vd24gaXNzdWVzCi0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3Vu
ZCBpbiBQYXRjaHdvcmtfMTUyNzlfZnVsbCB0aGF0IGNvbWUgZnJvbSBrbm93biBpc3N1ZXM6Cgoj
IyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIElzc3VlcyBoaXQgIyMjIwoKICAqIGlndEBnZW1fY3R4
X2lzb2xhdGlvbkBiY3MwLXMzOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtQQVNTXVsxXSAt
PiBbRE1FU0ctV0FSTl1bMl0gKFtmZG8jMTA4NTY2XSkgKzMgc2ltaWxhciBpc3N1ZXMKICAgWzFd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MzUyL3No
YXJkLWFwbDMvaWd0QGdlbV9jdHhfaXNvbGF0aW9uQGJjczAtczMuaHRtbAogICBbMl06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1Mjc5L3NoYXJk
LWFwbDQvaWd0QGdlbV9jdHhfaXNvbGF0aW9uQGJjczAtczMuaHRtbAoKICAqIGlndEBnZW1fY3R4
X2lzb2xhdGlvbkB2ZWNzMC1zMzoKICAgIC0gc2hhcmQtZ2xrOiAgICAgICAgICBbUEFTU11bM10g
LT4gW0lOQ09NUExFVEVdWzRdIChbZmRvIzEwMzM1OV0gLyBbay5vcmcjMTk4MTMzXSkKICAgWzNd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MzUyL3No
YXJkLWdsazcvaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHZlY3MwLXMzLmh0bWwKICAgWzRdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTI3OS9zaGFy
ZC1nbGsxL2lndEBnZW1fY3R4X2lzb2xhdGlvbkB2ZWNzMC1zMy5odG1sCgogICogaWd0QGdlbV9j
dHhfcGVyc2lzdGVuY2VAdmNzMS1xdWV1ZWQ6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BB
U1NdWzVdIC0+IFtTS0lQXVs2XSAoW2ZkbyMxMDkyNzZdIC8gW2ZkbyMxMTIwODBdKSArMiBzaW1p
bGFyIGlzc3VlcwogICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzczNTIvc2hhcmQtaWNsYjQvaWd0QGdlbV9jdHhfcGVyc2lzdGVuY2VAdmNzMS1x
dWV1ZWQuaHRtbAogICBbNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE1Mjc5L3NoYXJkLWljbGI4L2lndEBnZW1fY3R4X3BlcnNpc3RlbmNlQHZj
czEtcXVldWVkLmh0bWwKCiAgKiBpZ3RAZ2VtX2N0eF9zd2l0Y2hAdmNzMToKICAgIC0gc2hhcmQt
aWNsYjogICAgICAgICBbUEFTU11bN10gLT4gW1NLSVBdWzhdIChbZmRvIzExMjA4MF0pICsxMiBz
aW1pbGFyIGlzc3VlcwogICBbN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzczNTIvc2hhcmQtaWNsYjEvaWd0QGdlbV9jdHhfc3dpdGNoQHZjczEuaHRt
bAogICBbOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE1Mjc5L3NoYXJkLWljbGIzL2lndEBnZW1fY3R4X3N3aXRjaEB2Y3MxLmh0bWwKCiAgKiBp
Z3RAZ2VtX2Vpb0Bpbi1mbGlnaHQtc3VzcGVuZDoKICAgIC0gc2hhcmQtdGdsYjogICAgICAgICBb
UEFTU11bOV0gLT4gW0lOQ09NUExFVEVdWzEwXSAoW2ZkbyMxMTE4MzJdIC8gW2ZkbyMxMTE4NTBd
IC8gW2ZkbyMxMTIwODFdKQogICBbOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzczNTIvc2hhcmQtdGdsYjQvaWd0QGdlbV9laW9AaW4tZmxpZ2h0LXN1
c3BlbmQuaHRtbAogICBbMTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xNTI3OS9zaGFyZC10Z2xiMy9pZ3RAZ2VtX2Vpb0Bpbi1mbGlnaHQtc3Vz
cGVuZC5odG1sCgogICogaWd0QGdlbV9leGVjX3NjaGVkdWxlQHByZWVtcHQtcXVldWUtYmx0Ogog
ICAgLSBzaGFyZC10Z2xiOiAgICAgICAgIFtQQVNTXVsxMV0gLT4gW0lOQ09NUExFVEVdWzEyXSAo
W2ZkbyMxMTE2NzddKQogICBbMTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV83MzUyL3NoYXJkLXRnbGI3L2lndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVl
bXB0LXF1ZXVlLWJsdC5odG1sCiAgIFsxMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1Mjc5L3NoYXJkLXRnbGI2L2lndEBnZW1fZXhlY19zY2hl
ZHVsZUBwcmVlbXB0LXF1ZXVlLWJsdC5odG1sCgogICogaWd0QGdlbV9leGVjX3NjaGVkdWxlQHBy
ZWVtcHQtcXVldWUtYnNkMToKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMTNdIC0+
IFtTS0lQXVsxNF0gKFtmZG8jMTA5Mjc2XSkgKzE1IHNpbWlsYXIgaXNzdWVzCiAgIFsxM106IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczNTIvc2hhcmQt
aWNsYjIvaWd0QGdlbV9leGVjX3NjaGVkdWxlQHByZWVtcHQtcXVldWUtYnNkMS5odG1sCiAgIFsx
NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1
Mjc5L3NoYXJkLWljbGI4L2lndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0LXF1ZXVlLWJzZDEu
aHRtbAoKICAqIGlndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0aXZlLWhhbmctYnNkOgogICAg
LSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVsxNV0gLT4gW1NLSVBdWzE2XSAoW2ZkbyMxMTIx
NDZdKSArNCBzaW1pbGFyIGlzc3VlcwogICBbMTVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MzUyL3NoYXJkLWljbGI4L2lndEBnZW1fZXhlY19zY2hl
ZHVsZUBwcmVlbXB0aXZlLWhhbmctYnNkLmh0bWwKICAgWzE2XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUyNzkvc2hhcmQtaWNsYjIvaWd0QGdl
bV9leGVjX3NjaGVkdWxlQHByZWVtcHRpdmUtaGFuZy1ic2QuaHRtbAoKICAqIGlndEBnZW1fdXNl
cnB0cl9ibGl0c0BzeW5jLXVubWFwOgogICAgLSBzaGFyZC1zbmI6ICAgICAgICAgIFtQQVNTXVsx
N10gLT4gW0RNRVNHLVdBUk5dWzE4XSAoW2ZkbyMxMTE4NzBdKQogICBbMTddOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MzUyL3NoYXJkLXNuYjIvaWd0
QGdlbV91c2VycHRyX2JsaXRzQHN5bmMtdW5tYXAuaHRtbAogICBbMThdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTI3OS9zaGFyZC1zbmI0L2ln
dEBnZW1fdXNlcnB0cl9ibGl0c0BzeW5jLXVubWFwLmh0bWwKCiAgKiBpZ3RAZ2VtX3VzZXJwdHJf
YmxpdHNAc3luYy11bm1hcC1jeWNsZXM6CiAgICAtIHNoYXJkLWhzdzogICAgICAgICAgW1BBU1Nd
WzE5XSAtPiBbRE1FU0ctV0FSTl1bMjBdIChbZmRvIzExMTg3MF0pCiAgIFsxOV06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczNTIvc2hhcmQtaHN3MS9p
Z3RAZ2VtX3VzZXJwdHJfYmxpdHNAc3luYy11bm1hcC1jeWNsZXMuaHRtbAogICBbMjBdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTI3OS9zaGFy
ZC1oc3c1L2lndEBnZW1fdXNlcnB0cl9ibGl0c0BzeW5jLXVubWFwLWN5Y2xlcy5odG1sCgogICog
aWd0QGk5MTVfc3VzcGVuZEBzeXNmcy1yZWFkZXI6CiAgICAtIHNoYXJkLXRnbGI6ICAgICAgICAg
W1BBU1NdWzIxXSAtPiBbSU5DT01QTEVURV1bMjJdIChbZmRvIzExMTgzMl0gLyBbZmRvIzExMTg1
MF0pICsyIHNpbWlsYXIgaXNzdWVzCiAgIFsyMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzczNTIvc2hhcmQtdGdsYjIvaWd0QGk5MTVfc3VzcGVuZEBz
eXNmcy1yZWFkZXIuaHRtbAogICBbMjJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNTI3OS9zaGFyZC10Z2xiNy9pZ3RAaTkxNV9zdXNwZW5kQHN5
c2ZzLXJlYWRlci5odG1sCgogICogaWd0QGttc19jb2xvckBwaXBlLWItY3RtLWdyZWVuLXRvLXJl
ZDoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bMjNdIC0+IFtETUVTRy1XQVJOXVsy
NF0gKFtmZG8jMTA2MTA3XSkKICAgWzIzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNzM1Mi9zaGFyZC1za2w5L2lndEBrbXNfY29sb3JAcGlwZS1iLWN0
bS1ncmVlbi10by1yZWQuaHRtbAogICBbMjRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTI3OS9zaGFyZC1za2w3L2lndEBrbXNfY29sb3JAcGlw
ZS1iLWN0bS1ncmVlbi10by1yZWQuaHRtbAoKICAqIGlndEBrbXNfY3Vyc29yX2xlZ2FjeUBmbGlw
LXZzLWN1cnNvci1hdG9taWM6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzI1XSAt
PiBbRkFJTF1bMjZdIChbZmRvIzEwMjY3MF0pCiAgIFsyNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczNTIvc2hhcmQtc2tsMS9pZ3RAa21zX2N1cnNv
cl9sZWdhY3lAZmxpcC12cy1jdXJzb3ItYXRvbWljLmh0bWwKICAgWzI2XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUyNzkvc2hhcmQtc2tsMi9p
Z3RAa21zX2N1cnNvcl9sZWdhY3lAZmxpcC12cy1jdXJzb3ItYXRvbWljLmh0bWwKCiAgKiBpZ3RA
a21zX2ZiY29uX2ZidEBwc3Itc3VzcGVuZDoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFT
U11bMjddIC0+IFtJTkNPTVBMRVRFXVsyOF0gKFtmZG8jMTA0MTA4XSkKICAgWzI3XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM1Mi9zaGFyZC1za2w5
L2lndEBrbXNfZmJjb25fZmJ0QHBzci1zdXNwZW5kLmh0bWwKICAgWzI4XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUyNzkvc2hhcmQtc2tsOC9p
Z3RAa21zX2ZiY29uX2ZidEBwc3Itc3VzcGVuZC5odG1sCgogICogaWd0QGttc19mbGlwQDJ4LWZs
aXAtdnMtc3VzcGVuZDoKICAgIC0gc2hhcmQtaHN3OiAgICAgICAgICBbUEFTU11bMjldIC0+IFtJ
TkNPTVBMRVRFXVszMF0gKFtmZG8jMTAzNTQwXSkKICAgWzI5XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM1Mi9zaGFyZC1oc3cxL2lndEBrbXNfZmxp
cEAyeC1mbGlwLXZzLXN1c3BlbmQuaHRtbAogICBbMzBdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTI3OS9zaGFyZC1oc3c1L2lndEBrbXNfZmxp
cEAyeC1mbGlwLXZzLXN1c3BlbmQuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3Bl
bmQ6CiAgICAtIHNoYXJkLXRnbGI6ICAgICAgICAgW1BBU1NdWzMxXSAtPiBbSU5DT01QTEVURV1b
MzJdIChbZmRvIzExMTg1MF0gLyBbZmRvIzExMjAzMV0pCiAgIFszMV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczNTIvc2hhcmQtdGdsYjkvaWd0QGtt
c19mbGlwQGZsaXAtdnMtc3VzcGVuZC5odG1sCiAgIFszMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1Mjc5L3NoYXJkLXRnbGI0L2lndEBrbXNf
ZmxpcEBmbGlwLXZzLXN1c3BlbmQuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tp
bmdAZmJjLTFwLXByaW1zY3JuLWluZGZiLXBsZmxpcC1ibHQ6CiAgICAtIHNoYXJkLXRnbGI6ICAg
ICAgICAgW1BBU1NdWzMzXSAtPiBbRkFJTF1bMzRdIChbZmRvIzEwMzE2N10pICs1IHNpbWlsYXIg
aXNzdWVzCiAgIFszM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzczNTIvc2hhcmQtdGdsYjkvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMt
MXAtcHJpbXNjcm4taW5kZmItcGxmbGlwLWJsdC5odG1sCiAgIFszNF06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1Mjc5L3NoYXJkLXRnbGI0L2ln
dEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXByaW1zY3JuLWluZGZiLXBsZmxpcC1i
bHQuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1z
Y3JuLWN1ci1pbmRmYi1kcmF3LXJlbmRlcjoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFT
U11bMzVdIC0+IFtGQUlMXVszNl0gKFtmZG8jMTAzMTY3XSkgKzIgc2ltaWxhciBpc3N1ZXMKICAg
WzM1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM1
Mi9zaGFyZC1pY2xiNC9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmlt
c2Nybi1jdXItaW5kZmItZHJhdy1yZW5kZXIuaHRtbAogICBbMzZdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTI3OS9zaGFyZC1pY2xiNC9pZ3RA
a21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmltc2Nybi1jdXItaW5kZmItZHJh
dy1yZW5kZXIuaHRtbAoKICAqIGlndEBrbXNfcGxhbmVfbG93cmVzQHBpcGUtYS10aWxpbmcteDoK
ICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMzddIC0+IFtGQUlMXVszOF0gKFtmZG8j
MTAzMTY2XSkKICAgWzM3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNzM1Mi9zaGFyZC1pY2xiNC9pZ3RAa21zX3BsYW5lX2xvd3Jlc0BwaXBlLWEtdGls
aW5nLXguaHRtbAogICBbMzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xNTI3OS9zaGFyZC1pY2xiNi9pZ3RAa21zX3BsYW5lX2xvd3Jlc0BwaXBl
LWEtdGlsaW5nLXguaHRtbAoKICAqIGlndEBrbXNfcHNyQHBzcjJfcHJpbWFyeV9tbWFwX2NwdToK
ICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMzldIC0+IFtTS0lQXVs0MF0gKFtmZG8j
MTA5NDQxXSkgKzEgc2ltaWxhciBpc3N1ZQogICBbMzldOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MzUyL3NoYXJkLWljbGIyL2lndEBrbXNfcHNyQHBz
cjJfcHJpbWFyeV9tbWFwX2NwdS5odG1sCiAgIFs0MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1Mjc5L3NoYXJkLWljbGI4L2lndEBrbXNfcHNy
QHBzcjJfcHJpbWFyeV9tbWFwX2NwdS5odG1sCgogICogaWd0QGttc192YmxhbmtAcGlwZS1hLXRz
LWNvbnRpbnVhdGlvbi1kcG1zLXN1c3BlbmQ6CiAgICAtIHNoYXJkLXRnbGI6ICAgICAgICAgW1BB
U1NdWzQxXSAtPiBbSU5DT01QTEVURV1bNDJdIChbZmRvIzExMTg1MF0pCiAgIFs0MV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczNTIvc2hhcmQtdGds
YjYvaWd0QGttc192YmxhbmtAcGlwZS1hLXRzLWNvbnRpbnVhdGlvbi1kcG1zLXN1c3BlbmQuaHRt
bAogICBbNDJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNTI3OS9zaGFyZC10Z2xiNS9pZ3RAa21zX3ZibGFua0BwaXBlLWEtdHMtY29udGludWF0
aW9uLWRwbXMtc3VzcGVuZC5odG1sCgogICogaWd0QGttc192YmxhbmtAcGlwZS1jLWFjY3VyYWN5
LWlkbGU6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzQzXSAtPiBbRkFJTF1bNDRd
IChbZmRvIzEwMjU4M10pCiAgIFs0M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzczNTIvc2hhcmQtc2tsMTAvaWd0QGttc192YmxhbmtAcGlwZS1jLWFj
Y3VyYWN5LWlkbGUuaHRtbAogICBbNDRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNTI3OS9zaGFyZC1za2wyL2lndEBrbXNfdmJsYW5rQHBpcGUt
Yy1hY2N1cmFjeS1pZGxlLmh0bWwKCiAgCiMjIyMgUG9zc2libGUgZml4ZXMgIyMjIwoKICAqIGln
dEBnZW1fY3R4X2V4ZWNAYmFzaWMtaW52YWxpZC1jb250ZXh0LXZjczE6CiAgICAtIHNoYXJkLWlj
bGI6ICAgICAgICAgW1NLSVBdWzQ1XSAoW2ZkbyMxMTIwODBdKSAtPiBbUEFTU11bNDZdICsxMCBz
aW1pbGFyIGlzc3VlcwogICBbNDVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV83MzUyL3NoYXJkLWljbGI1L2lndEBnZW1fY3R4X2V4ZWNAYmFzaWMtaW52
YWxpZC1jb250ZXh0LXZjczEuaHRtbAogICBbNDZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTI3OS9zaGFyZC1pY2xiNC9pZ3RAZ2VtX2N0eF9l
eGVjQGJhc2ljLWludmFsaWQtY29udGV4dC12Y3MxLmh0bWwKCiAgKiBpZ3RAZ2VtX2N0eF9pc29s
YXRpb25AdmNzMS1yZXNldDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbU0tJUF1bNDddIChb
ZmRvIzEwOTI3Nl0gLyBbZmRvIzExMjA4MF0pIC0+IFtQQVNTXVs0OF0gKzQgc2ltaWxhciBpc3N1
ZXMKICAgWzQ3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNzM1Mi9zaGFyZC1pY2xiNi9pZ3RAZ2VtX2N0eF9pc29sYXRpb25AdmNzMS1yZXNldC5odG1s
CiAgIFs0OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE1Mjc5L3NoYXJkLWljbGIxL2lndEBnZW1fY3R4X2lzb2xhdGlvbkB2Y3MxLXJlc2V0Lmh0
bWwKCiAgKiBpZ3RAZ2VtX2N0eF9zaGFyZWRAcS1zbW9rZXRlc3QtYmx0OgogICAgLSBzaGFyZC10
Z2xiOiAgICAgICAgIFtJTkNPTVBMRVRFXVs0OV0gKFtmZG8jMTExNzM1XSkgLT4gW1BBU1NdWzUw
XQogICBbNDldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV83MzUyL3NoYXJkLXRnbGI2L2lndEBnZW1fY3R4X3NoYXJlZEBxLXNtb2tldGVzdC1ibHQuaHRt
bAogICBbNTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNTI3OS9zaGFyZC10Z2xiMy9pZ3RAZ2VtX2N0eF9zaGFyZWRAcS1zbW9rZXRlc3QtYmx0
Lmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfYmFsYW5jZXJAbm9wOgogICAgLSBzaGFyZC10Z2xiOiAg
ICAgICAgIFtJTkNPTVBMRVRFXVs1MV0gKFtmZG8jMTExNzM2XSkgLT4gW1BBU1NdWzUyXQogICBb
NTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MzUy
L3NoYXJkLXRnbGI1L2lndEBnZW1fZXhlY19iYWxhbmNlckBub3AuaHRtbAogICBbNTJdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTI3OS9zaGFy
ZC10Z2xiOC9pZ3RAZ2VtX2V4ZWNfYmFsYW5jZXJAbm9wLmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNf
c2NoZWR1bGVAcHJlZW1wdC1xdWV1ZS1jb250ZXh0cy1jaGFpbi1ibHQ6CiAgICAtIHNoYXJkLXRn
bGI6ICAgICAgICAgW0lOQ09NUExFVEVdWzUzXSAoW2ZkbyMxMTE2MDZdIC8gW2ZkbyMxMTE2Nzdd
KSAtPiBbUEFTU11bNTRdICsxIHNpbWlsYXIgaXNzdWUKICAgWzUzXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM1Mi9zaGFyZC10Z2xiNi9pZ3RAZ2Vt
X2V4ZWNfc2NoZWR1bGVAcHJlZW1wdC1xdWV1ZS1jb250ZXh0cy1jaGFpbi1ibHQuaHRtbAogICBb
NTRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NTI3OS9zaGFyZC10Z2xiOC9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJlZW1wdC1xdWV1ZS1jb250
ZXh0cy1jaGFpbi1ibHQuaHRtbAoKICAqIGlndEBnZW1fZXhlY19zY2hlZHVsZUB3aWRlLWJzZDoK
ICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbU0tJUF1bNTVdIChbZmRvIzExMjE0Nl0pIC0+IFtQ
QVNTXVs1Nl0gKzYgc2ltaWxhciBpc3N1ZXMKICAgWzU1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM1Mi9zaGFyZC1pY2xiMS9pZ3RAZ2VtX2V4ZWNf
c2NoZWR1bGVAd2lkZS1ic2QuaHRtbAogICBbNTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTI3OS9zaGFyZC1pY2xiNi9pZ3RAZ2VtX2V4ZWNf
c2NoZWR1bGVAd2lkZS1ic2QuaHRtbAoKICAqIGlndEBnZW1fdXNlcnB0cl9ibGl0c0BzeW5jLXVu
bWFwOgogICAgLSBzaGFyZC1oc3c6ICAgICAgICAgIFtETUVTRy1XQVJOXVs1N10gKFtmZG8jMTEx
ODcwXSkgLT4gW1BBU1NdWzU4XQogICBbNTddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV83MzUyL3NoYXJkLWhzdzcvaWd0QGdlbV91c2VycHRyX2JsaXRz
QHN5bmMtdW5tYXAuaHRtbAogICBbNThdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNTI3OS9zaGFyZC1oc3c3L2lndEBnZW1fdXNlcnB0cl9ibGl0
c0BzeW5jLXVubWFwLmh0bWwKCiAgKiBpZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAc3luYy11bm1hcC1j
eWNsZXM6CiAgICAtIHNoYXJkLXNuYjogICAgICAgICAgW0RNRVNHLVdBUk5dWzU5XSAoW2ZkbyMx
MTE4NzBdKSAtPiBbUEFTU11bNjBdCiAgIFs1OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzczNTIvc2hhcmQtc25iNC9pZ3RAZ2VtX3VzZXJwdHJfYmxp
dHNAc3luYy11bm1hcC1jeWNsZXMuaHRtbAogICBbNjBdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTI3OS9zaGFyZC1zbmIxL2lndEBnZW1fdXNl
cnB0cl9ibGl0c0BzeW5jLXVubWFwLWN5Y2xlcy5odG1sCgogICogaWd0QGdlbV93b3JrYXJvdW5k
c0BzdXNwZW5kLXJlc3VtZS1jb250ZXh0OgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtETUVT
Ry1XQVJOXVs2MV0gKFtmZG8jMTA4NTY2XSkgLT4gW1BBU1NdWzYyXSArMyBzaW1pbGFyIGlzc3Vl
cwogICBbNjFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV83MzUyL3NoYXJkLWFwbDYvaWd0QGdlbV93b3JrYXJvdW5kc0BzdXNwZW5kLXJlc3VtZS1jb250
ZXh0Lmh0bWwKICAgWzYyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTUyNzkvc2hhcmQtYXBsNi9pZ3RAZ2VtX3dvcmthcm91bmRzQHN1c3BlbmQt
cmVzdW1lLWNvbnRleHQuaHRtbAoKICAqIGlndEBpOTE1X3BtX2JhY2tsaWdodEBmYWRlX3dpdGhf
c3VzcGVuZDoKICAgIC0gc2hhcmQtdGdsYjogICAgICAgICBbSU5DT01QTEVURV1bNjNdIChbZmRv
IzExMTgzMl0gLyBbZmRvIzExMTg1MF0pIC0+IFtQQVNTXVs2NF0KICAgWzYzXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM1Mi9zaGFyZC10Z2xiNy9p
Z3RAaTkxNV9wbV9iYWNrbGlnaHRAZmFkZV93aXRoX3N1c3BlbmQuaHRtbAogICBbNjRdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTI3OS9zaGFy
ZC10Z2xiNi9pZ3RAaTkxNV9wbV9iYWNrbGlnaHRAZmFkZV93aXRoX3N1c3BlbmQuaHRtbAoKICAq
IGlndEBpOTE1X3BtX2RjQGRjNi1kcG1zOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtGQUlM
XVs2NV0gKFtmZG8jMTExODMwIF0pIC0+IFtQQVNTXVs2Nl0KICAgWzY1XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM1Mi9zaGFyZC1pY2xiMy9pZ3RA
aTkxNV9wbV9kY0BkYzYtZHBtcy5odG1sCiAgIFs2Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1Mjc5L3NoYXJkLWljbGI1L2lndEBpOTE1X3Bt
X2RjQGRjNi1kcG1zLmh0bWwKCiAgKiBpZ3RAa21zX2NvbG9yQHBpcGUtYS1jdG0tMC0yNToKICAg
IC0gc2hhcmQtc2tsOiAgICAgICAgICBbRE1FU0ctV0FSTl1bNjddIChbZmRvIzEwNjEwN10pIC0+
IFtQQVNTXVs2OF0KICAgWzY3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNzM1Mi9zaGFyZC1za2wyL2lndEBrbXNfY29sb3JAcGlwZS1hLWN0bS0wLTI1
Lmh0bWwKICAgWzY4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTUyNzkvc2hhcmQtc2tsNi9pZ3RAa21zX2NvbG9yQHBpcGUtYS1jdG0tMC0yNS5o
dG1sCgogICogaWd0QGttc19jb2xvckBwaXBlLWMtZ2FtbWE6CiAgICAtIHNoYXJkLXNrbDogICAg
ICAgICAgW0ZBSUxdWzY5XSAoW2ZkbyMxMDQ3ODJdKSAtPiBbUEFTU11bNzBdCiAgIFs2OV06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczNTIvc2hhcmQt
c2tsMTAvaWd0QGttc19jb2xvckBwaXBlLWMtZ2FtbWEuaHRtbAogICBbNzBdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTI3OS9zaGFyZC1za2wy
L2lndEBrbXNfY29sb3JAcGlwZS1jLWdhbW1hLmh0bWwKCiAgKiBpZ3RAa21zX2N1cnNvcl9jcmNA
cGlwZS1jLWN1cnNvci1zdXNwZW5kOgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtETUVTRy1X
QVJOXVs3MV0gKFtmZG8jMTA4NTY2XSkgLT4gW1BBU1NdWzcyXSArMiBzaW1pbGFyIGlzc3Vlcwog
ICBbNzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83
MzUyL3NoYXJkLWtibDEvaWd0QGttc19jdXJzb3JfY3JjQHBpcGUtYy1jdXJzb3Itc3VzcGVuZC5o
dG1sCiAgIFs3Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE1Mjc5L3NoYXJkLWtibDIvaWd0QGttc19jdXJzb3JfY3JjQHBpcGUtYy1jdXJzb3It
c3VzcGVuZC5odG1sCgogICogaWd0QGttc19jdXJzb3JfbGVnYWN5QGxvbmctbm9uYmxvY2tpbmct
bW9kZXNldC12cy1jdXJzb3ItYXRvbWljOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtETUVT
Ry1XQVJOXVs3M10gKFtmZG8jMTA1NTQxXSkgLT4gW1BBU1NdWzc0XQogICBbNzNdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MzUyL3NoYXJkLXNrbDMv
aWd0QGttc19jdXJzb3JfbGVnYWN5QGxvbmctbm9uYmxvY2tpbmctbW9kZXNldC12cy1jdXJzb3It
YXRvbWljLmh0bWwKICAgWzc0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTUyNzkvc2hhcmQtc2tsMS9pZ3RAa21zX2N1cnNvcl9sZWdhY3lAbG9u
Zy1ub25ibG9ja2luZy1tb2Rlc2V0LXZzLWN1cnNvci1hdG9taWMuaHRtbAoKICAqIGlndEBrbXNf
ZmxpcEBmbGlwLXZzLXN1c3BlbmQ6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0lOQ09NUExF
VEVdWzc1XSAoW2ZkbyMxMDk1MDddKSAtPiBbUEFTU11bNzZdCiAgIFs3NV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczNTIvc2hhcmQtc2tsMy9pZ3RA
a21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLmh0bWwKICAgWzc2XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUyNzkvc2hhcmQtc2tsMS9pZ3RAa21z
X2ZsaXBAZmxpcC12cy1zdXNwZW5kLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNr
aW5nQGZiY3Bzci0xcC1wcmltc2Nybi1jdXItaW5kZmItZHJhdy1wd3JpdGU6CiAgICAtIHNoYXJk
LWljbGI6ICAgICAgICAgW0ZBSUxdWzc3XSAoW2ZkbyMxMDMxNjddKSAtPiBbUEFTU11bNzhdICsy
IHNpbWlsYXIgaXNzdWVzCiAgIFs3N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzczNTIvc2hhcmQtaWNsYjQvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFj
a2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tY3VyLWluZGZiLWRyYXctcHdyaXRlLmh0bWwKICAgWzc4
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUy
Nzkvc2hhcmQtaWNsYjgvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJp
bXNjcm4tY3VyLWluZGZiLWRyYXctcHdyaXRlLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVy
X3RyYWNraW5nQGZiY3Bzci0xcC1wcmltc2Nybi1pbmRmYi1wZ2ZsaXAtYmx0OgogICAgLSBzaGFy
ZC10Z2xiOiAgICAgICAgIFtGQUlMXVs3OV0gKFtmZG8jMTAzMTY3XSkgLT4gW1BBU1NdWzgwXSAr
MiBzaW1pbGFyIGlzc3VlcwogICBbNzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV83MzUyL3NoYXJkLXRnbGI2L2lndEBrbXNfZnJvbnRidWZmZXJfdHJh
Y2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLWluZGZiLXBnZmxpcC1ibHQuaHRtbAogICBbODBdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTI3OS9z
aGFyZC10Z2xiOC9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmltc2Ny
bi1pbmRmYi1wZ2ZsaXAtYmx0Lmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBp
cGUtYi1jb3ZlcmFnZS03ZWZjOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtGQUlMXVs4MV0g
KFtmZG8jMTA4MTQ1XSAvIFtmZG8jMTEwNDAzXSkgLT4gW1BBU1NdWzgyXQogICBbODFdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MzUyL3NoYXJkLXNr
bDEwL2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1iLWNvdmVyYWdlLTdlZmMuaHRtbAog
ICBbODJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNTI3OS9zaGFyZC1za2w1L2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1iLWNvdmVy
YWdlLTdlZmMuaHRtbAoKICAqIGlndEBrbXNfcHNyQHBzcjJfc3ByaXRlX3BsYW5lX21vdmU6CiAg
ICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1NLSVBdWzgzXSAoW2ZkbyMxMDk0NDFdKSAtPiBbUEFT
U11bODRdCiAgIFs4M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzczNTIvc2hhcmQtaWNsYjYvaWd0QGttc19wc3JAcHNyMl9zcHJpdGVfcGxhbmVfbW92
ZS5odG1sCiAgIFs4NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE1Mjc5L3NoYXJkLWljbGIyL2lndEBrbXNfcHNyQHBzcjJfc3ByaXRlX3BsYW5l
X21vdmUuaHRtbAoKICAqIGlndEBwcmltZV9idXN5QGhhbmctYnNkMjoKICAgIC0gc2hhcmQtaWNs
YjogICAgICAgICBbU0tJUF1bODVdIChbZmRvIzEwOTI3Nl0pIC0+IFtQQVNTXVs4Nl0gKzIxIHNp
bWlsYXIgaXNzdWVzCiAgIFs4NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzczNTIvc2hhcmQtaWNsYjcvaWd0QHByaW1lX2J1c3lAaGFuZy1ic2QyLmh0
bWwKICAgWzg2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTUyNzkvc2hhcmQtaWNsYjEvaWd0QHByaW1lX2J1c3lAaGFuZy1ic2QyLmh0bWwKCiAg
CiMjIyMgV2FybmluZ3MgIyMjIwoKICAqIGlndEBnZW1fY3R4X2lzb2xhdGlvbkB2Y3MxLW5vbnBy
aXY6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1NLSVBdWzg3XSAoW2ZkbyMxMDkyNzZdIC8g
W2ZkbyMxMTIwODBdKSAtPiBbRkFJTF1bODhdIChbZmRvIzExMTMyOV0pICsxIHNpbWlsYXIgaXNz
dWUKICAgWzg3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNzM1Mi9zaGFyZC1pY2xiOC9pZ3RAZ2VtX2N0eF9pc29sYXRpb25AdmNzMS1ub25wcml2Lmh0
bWwKICAgWzg4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTUyNzkvc2hhcmQtaWNsYjIvaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHZjczEtbm9ucHJp
di5odG1sCgogICogaWd0QGttc19hdG9taWNfdHJhbnNpdGlvbkA2eC1tb2Rlc2V0LXRyYW5zaXRp
b25zLW5vbmJsb2NraW5nLWZlbmNpbmc6CiAgICAtIHNoYXJkLXRnbGI6ICAgICAgICAgW1NLSVBd
Wzg5XSAoW2ZkbyMxMTIwMjEgXSkgLT4gW1NLSVBdWzkwXSAoW2ZkbyMxMTIwMTYgXSAvIFtmZG8j
MTEyMDIxIF0pCiAgIFs4OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzczNTIvc2hhcmQtdGdsYjkvaWd0QGttc19hdG9taWNfdHJhbnNpdGlvbkA2eC1t
b2Rlc2V0LXRyYW5zaXRpb25zLW5vbmJsb2NraW5nLWZlbmNpbmcuaHRtbAogICBbOTBdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTI3OS9zaGFy
ZC10Z2xiNy9pZ3RAa21zX2F0b21pY190cmFuc2l0aW9uQDZ4LW1vZGVzZXQtdHJhbnNpdGlvbnMt
bm9uYmxvY2tpbmctZmVuY2luZy5odG1sCgogICogaWd0QGttc19jb250ZW50X3Byb3RlY3Rpb25A
bGVnYWN5OgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtJTkNPTVBMRVRFXVs5MV0gKFtmZG8j
MTAzNjY1XSkgLT4gW0ZBSUxdWzkyXSAoW2ZkbyMxMTAzMjFdIC8gW2ZkbyMxMTAzMzZdKQogICBb
OTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MzUy
L3NoYXJkLWtibDIvaWd0QGttc19jb250ZW50X3Byb3RlY3Rpb25AbGVnYWN5Lmh0bWwKICAgWzky
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUy
Nzkvc2hhcmQta2JsNi9pZ3RAa21zX2NvbnRlbnRfcHJvdGVjdGlvbkBsZWdhY3kuaHRtbAoKICAK
ICB7bmFtZX06IFRoaXMgZWxlbWVudCBpcyBzdXBwcmVzc2VkLiBUaGlzIG1lYW5zIGl0IGlzIGln
bm9yZWQgd2hlbiBjb21wdXRpbmcKICAgICAgICAgIHRoZSBzdGF0dXMgb2YgdGhlIGRpZmZlcmVu
Y2UgKFNVQ0NFU1MsIFdBUk5JTkcsIG9yIEZBSUxVUkUpLgoKICBbZmRvIzEwMjU4M106IGh0dHBz
Oi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMjU4MwogIFtmZG8jMTAy
NjcwXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAyNjcw
CiAgW2ZkbyMxMDMxNjZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMDMxNjYKICBbZmRvIzEwMzE2N106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTEwMzE2NwogIFtmZG8jMTAzMzU5XTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMzU5CiAgW2ZkbyMxMDM1NDBdOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDM1NDAKICBbZmRvIzEwMzY2
NV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzY2NQog
IFtmZG8jMTA0MTA4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9MTA0MTA4CiAgW2ZkbyMxMDQ3ODJdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3No
b3dfYnVnLmNnaT9pZD0xMDQ3ODIKICBbZmRvIzEwNTU0MV06IGh0dHBzOi8vYnVncy5mcmVlZGVz
a3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNTU0MQogIFtmZG8jMTA2MTA3XTogaHR0cHM6Ly9i
dWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA2MTA3CiAgW2ZkbyMxMDgxNDVd
OiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDgxNDUKICBb
ZmRvIzEwODU2Nl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lk
PTEwODU2NgogIFtmZG8jMTA5Mjc2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93
X2J1Zy5jZ2k/aWQ9MTA5Mjc2CiAgW2ZkbyMxMDk0NDFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0
b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDk0NDEKICBbZmRvIzEwOTUwN106IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTUwNwogIFtmZG8jMTEwMzIxXTog
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwMzIxCiAgW2Zk
byMxMTAzMzZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0x
MTAzMzYKICBbZmRvIzExMDQwM106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19i
dWcuY2dpP2lkPTExMDQwMwogIFtmZG8jMTExMzI5XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9w
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMzI5CiAgW2ZkbyMxMTE2MDZdOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE2MDYKICBbZmRvIzExMTY3N106IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTY3NwogIFtmZG8j
MTExNzM1XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEx
NzM1CiAgW2ZkbyMxMTE3MzZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMTE3MzYKICBbZmRvIzExMTgzMCBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Au
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE4MzAgCiAgW2ZkbyMxMTE4MzJdOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE4MzIKICBbZmRvIzExMTg1MF06IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTg1MAogIFtmZG8j
MTExODcwXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEx
ODcwCiAgW2ZkbyMxMTIwMTYgXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTEyMDE2IAogIFtmZG8jMTEyMDIxIF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTExMjAyMSAKICBbZmRvIzExMjAzMV06IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMjAzMQogIFtmZG8jMTEyMDgwXTog
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyMDgwCiAgW2Zk
byMxMTIwODFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0x
MTIwODEKICBbZmRvIzExMjE0Nl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19i
dWcuY2dpP2lkPTExMjE0NgogIFtrLm9yZyMxOTgxMzNdOiBodHRwczovL2J1Z3ppbGxhLmtlcm5l
bC5vcmcvc2hvd19idWcuY2dpP2lkPTE5ODEzMwoKClBhcnRpY2lwYXRpbmcgaG9zdHMgKDExIC0+
IDExKQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgTm8gY2hhbmdlcyBpbiBwYXJ0
aWNpcGF0aW5nIGhvc3RzCgoKQnVpbGQgY2hhbmdlcwotLS0tLS0tLS0tLS0tCgogICogQ0k6IENJ
LTIwMTkwNTI5IC0+IE5vbmUKICAqIExpbnV4OiBDSV9EUk1fNzM1MiAtCgo9PSBMb2dzID09CgpG
b3IgbW9yZSBkZXRhaWxzIHNlZTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTUyNzkvaW5kZXguaHRtbApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
