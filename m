Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD243C9833
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 08:22:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D6F06E1F7;
	Thu,  3 Oct 2019 06:22:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D221C6E1F6;
 Thu,  3 Oct 2019 06:22:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C6048A47E1;
 Thu,  3 Oct 2019 06:22:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 03 Oct 2019 06:22:45 -0000
Message-ID: <20191003062245.9782.53912@emeril.freedesktop.org>
References: <20191002160034.5121-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191002160034.5121-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/?=
 =?utf-8?q?i915/gt=3A_Warn_CI_about_an_unrecoverable_wedge?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3Q6IFdhcm4gQ0kgYWJvdXQg
YW4gdW5yZWNvdmVyYWJsZSB3ZWRnZQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNr
dG9wLm9yZy9zZXJpZXMvNjc1MDIvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQ0kg
QnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNjk5Ml9mdWxsIC0+IFBhdGNod29ya18xNDYz
Nl9mdWxsCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKkZBSUxVUkUqKgoKICBTZXJpb3VzIHVua25vd24gY2hh
bmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTQ2MzZfZnVsbCBhYnNvbHV0ZWx5IG5lZWQgdG8g
YmUKICB2ZXJpZmllZCBtYW51YWxseS4KICAKICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNo
YW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMKICBpbnRyb2R1Y2VkIGlu
IFBhdGNod29ya18xNDYzNl9mdWxsLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxs
b3cgdGhlbQogIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCBy
ZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLgoKICAKClBvc3NpYmxlIG5ldyBpc3N1ZXMKLS0t
LS0tLS0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5
IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNDYzNl9mdWxsOgoKIyMjIElHVCBj
aGFuZ2VzICMjIwoKIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjCgogICogaWd0QHBlcmZf
cG11QGVuYWJsZS1yYWNlLXJjczA6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzFd
IC0+IFtJTkNPTVBMRVRFXVsyXQogICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzY5OTIvc2hhcmQtc2tsMS9pZ3RAcGVyZl9wbXVAZW5hYmxlLXJh
Y2UtcmNzMC5odG1sCiAgIFsyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTQ2MzYvc2hhcmQtc2tsNy9pZ3RAcGVyZl9wbXVAZW5hYmxlLXJhY2Ut
cmNzMC5odG1sCgogIApLbm93biBpc3N1ZXMKLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSBj
aGFuZ2VzIGZvdW5kIGluIFBhdGNod29ya18xNDYzNl9mdWxsIHRoYXQgY29tZSBmcm9tIGtub3du
IGlzc3VlczoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgSXNzdWVzIGhpdCAjIyMjCgogICog
aWd0QGdlbV9laW9AdW53ZWRnZS1zdHJlc3M6CiAgICAtIHNoYXJkLXNuYjogICAgICAgICAgW1BB
U1NdWzNdIC0+IFtGQUlMXVs0XSAoW2ZkbyMxMDk2NjFdKQogICBbM106IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5OTIvc2hhcmQtc25iMi9pZ3RAZ2Vt
X2Vpb0B1bndlZGdlLXN0cmVzcy5odG1sCiAgIFs0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ2MzYvc2hhcmQtc25iMS9pZ3RAZ2VtX2Vpb0B1
bndlZGdlLXN0cmVzcy5odG1sCgogICogaWd0QGdlbV9leGVjX3NjaGVkdWxlQHdpZGUtYnNkOgog
ICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVs1XSAtPiBbU0tJUF1bNl0gKFtmZG8jMTEx
MzI1XSkgKzggc2ltaWxhciBpc3N1ZXMKICAgWzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTkyL3NoYXJkLWljbGI2L2lndEBnZW1fZXhlY19zY2hl
ZHVsZUB3aWRlLWJzZC5odG1sCiAgIFs2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ2MzYvc2hhcmQtaWNsYjEvaWd0QGdlbV9leGVjX3NjaGVk
dWxlQHdpZGUtYnNkLmh0bWwKCiAgKiBpZ3RAZ2VtX21tYXBfZ3R0QGhhbmc6CiAgICAtIHNoYXJk
LWFwbDogICAgICAgICAgW1BBU1NdWzddIC0+IFtETUVTRy1XQVJOXVs4XSAoW2ZkbyMxMDkzODVd
KQogICBbN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzY5OTIvc2hhcmQtYXBsOC9pZ3RAZ2VtX21tYXBfZ3R0QGhhbmcuaHRtbAogICBbOF06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NjM2L3NoYXJk
LWFwbDQvaWd0QGdlbV9tbWFwX2d0dEBoYW5nLmh0bWwKCiAgKiBpZ3RAZ2VtX3VzZXJwdHJfYmxp
dHNAbWFwLWZpeGVkLWludmFsaWRhdGUtb3ZlcmxhcC1idXN5OgogICAgLSBzaGFyZC1nbGs6ICAg
ICAgICAgIFtQQVNTXVs5XSAtPiBbRE1FU0ctV0FSTl1bMTBdIChbZmRvIzExMTg3MF0pCiAgIFs5
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjk5Mi9z
aGFyZC1nbGs0L2lndEBnZW1fdXNlcnB0cl9ibGl0c0BtYXAtZml4ZWQtaW52YWxpZGF0ZS1vdmVy
bGFwLWJ1c3kuaHRtbAogICBbMTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNDYzNi9zaGFyZC1nbGsyL2lndEBnZW1fdXNlcnB0cl9ibGl0c0Bt
YXAtZml4ZWQtaW52YWxpZGF0ZS1vdmVybGFwLWJ1c3kuaHRtbAoKICAqIGlndEBnZW1fdXNlcnB0
cl9ibGl0c0BzeW5jLXVubWFwOgogICAgLSBzaGFyZC1zbmI6ICAgICAgICAgIFtQQVNTXVsxMV0g
LT4gW0RNRVNHLVdBUk5dWzEyXSAoW2ZkbyMxMTE4NzBdKSArMSBzaW1pbGFyIGlzc3VlCiAgIFsx
MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5OTIv
c2hhcmQtc25iNi9pZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAc3luYy11bm1hcC5odG1sCiAgIFsxMl06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NjM2
L3NoYXJkLXNuYjIvaWd0QGdlbV91c2VycHRyX2JsaXRzQHN5bmMtdW5tYXAuaHRtbAogICAgLSBz
aGFyZC1hcGw6ICAgICAgICAgIFtQQVNTXVsxM10gLT4gW0RNRVNHLVdBUk5dWzE0XSAoW2ZkbyMx
MDkzODVdIC8gW2ZkbyMxMTE4NzBdKQogICBbMTNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTkyL3NoYXJkLWFwbDMvaWd0QGdlbV91c2VycHRyX2Js
aXRzQHN5bmMtdW5tYXAuaHRtbAogICBbMTRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDYzNi9zaGFyZC1hcGwzL2lndEBnZW1fdXNlcnB0cl9i
bGl0c0BzeW5jLXVubWFwLmh0bWwKCiAgKiBpZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAc3luYy11bm1h
cC1jeWNsZXM6CiAgICAtIHNoYXJkLWhzdzogICAgICAgICAgW1BBU1NdWzE1XSAtPiBbRE1FU0ct
V0FSTl1bMTZdIChbZmRvIzExMTg3MF0pCiAgIFsxNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5OTIvc2hhcmQtaHN3MS9pZ3RAZ2VtX3VzZXJwdHJf
YmxpdHNAc3luYy11bm1hcC1jeWNsZXMuaHRtbAogICBbMTZdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDYzNi9zaGFyZC1oc3c0L2lndEBnZW1f
dXNlcnB0cl9ibGl0c0BzeW5jLXVubWFwLWN5Y2xlcy5odG1sCgogICogaWd0QGdlbV93b3JrYXJv
dW5kc0BzdXNwZW5kLXJlc3VtZS1jb250ZXh0OgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtQ
QVNTXVsxN10gLT4gW0RNRVNHLVdBUk5dWzE4XSAoW2ZkbyMxMDg1NjZdKSArMiBzaW1pbGFyIGlz
c3VlcwogICBbMTddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82OTkyL3NoYXJkLWFwbDgvaWd0QGdlbV93b3JrYXJvdW5kc0BzdXNwZW5kLXJlc3VtZS1j
b250ZXh0Lmh0bWwKICAgWzE4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTQ2MzYvc2hhcmQtYXBsMi9pZ3RAZ2VtX3dvcmthcm91bmRzQHN1c3Bl
bmQtcmVzdW1lLWNvbnRleHQuaHRtbAogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVsx
OV0gLT4gW0lOQ09NUExFVEVdWzIwXSAoW2ZkbyMxMDQxMDhdKSArMSBzaW1pbGFyIGlzc3VlCiAg
IFsxOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5
OTIvc2hhcmQtc2tsNC9pZ3RAZ2VtX3dvcmthcm91bmRzQHN1c3BlbmQtcmVzdW1lLWNvbnRleHQu
aHRtbAogICBbMjBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNDYzNi9zaGFyZC1za2w3L2lndEBnZW1fd29ya2Fyb3VuZHNAc3VzcGVuZC1yZXN1
bWUtY29udGV4dC5odG1sCgogICogaWd0QGttc19jdXJzb3JfY3JjQHBpcGUtYS1jdXJzb3ItMTI4
eDEyOC1yYW5kb206CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzIxXSAtPiBbRkFJ
TF1bMjJdIChbZmRvIzEwMzIzMl0pCiAgIFsyMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzY5OTIvc2hhcmQtc2tsNS9pZ3RAa21zX2N1cnNvcl9jcmNA
cGlwZS1hLWN1cnNvci0xMjh4MTI4LXJhbmRvbS5odG1sCiAgIFsyMl06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NjM2L3NoYXJkLXNrbDgvaWd0
QGttc19jdXJzb3JfY3JjQHBpcGUtYS1jdXJzb3ItMTI4eDEyOC1yYW5kb20uaHRtbAoKICAqIGln
dEBrbXNfY3Vyc29yX2NyY0BwaXBlLWEtY3Vyc29yLXN1c3BlbmQ6CiAgICAtIHNoYXJkLXNrbDog
ICAgICAgICAgW1BBU1NdWzIzXSAtPiBbSU5DT01QTEVURV1bMjRdIChbZmRvIzExMDc0MV0pCiAg
IFsyM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5
OTIvc2hhcmQtc2tsNS9pZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1hLWN1cnNvci1zdXNwZW5kLmh0
bWwKICAgWzI0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTQ2MzYvc2hhcmQtc2tsMS9pZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1hLWN1cnNvci1z
dXNwZW5kLmh0bWwKCiAgKiBpZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1iLWN1cnNvci02NHg2NC1y
YW5kb206CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzI1XSAtPiBbSU5DT01QTEVU
RV1bMjZdIChbZmRvIzEwNzcxM10pICsxIHNpbWlsYXIgaXNzdWUKICAgWzI1XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjk5Mi9zaGFyZC1pY2xiMS9p
Z3RAa21zX2N1cnNvcl9jcmNAcGlwZS1iLWN1cnNvci02NHg2NC1yYW5kb20uaHRtbAogICBbMjZd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDYz
Ni9zaGFyZC1pY2xiNy9pZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1iLWN1cnNvci02NHg2NC1yYW5k
b20uaHRtbAoKICAqIGlndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWMtY3Vyc29yLXN1c3BlbmQ6CiAg
ICAtIHNoYXJkLWhzdzogICAgICAgICAgW1BBU1NdWzI3XSAtPiBbSU5DT01QTEVURV1bMjhdIChb
ZmRvIzEwMzU0MF0pCiAgIFsyN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzY5OTIvc2hhcmQtaHN3OC9pZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1jLWN1
cnNvci1zdXNwZW5kLmh0bWwKICAgWzI4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ2MzYvc2hhcmQtaHN3NC9pZ3RAa21zX2N1cnNvcl9jcmNA
cGlwZS1jLWN1cnNvci1zdXNwZW5kLmh0bWwKCiAgKiBpZ3RAa21zX2N1cnNvcl9sZWdhY3lAZmxp
cC12cy1jdXJzb3ItYXRvbWljLXRyYW5zaXRpb25zLXZhcnlpbmctc2l6ZToKICAgIC0gc2hhcmQt
c2tsOiAgICAgICAgICBbUEFTU11bMjldIC0+IFtGQUlMXVszMF0gKFtmZG8jMTAyNjcwXSkKICAg
WzI5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjk5
Mi9zaGFyZC1za2w4L2lndEBrbXNfY3Vyc29yX2xlZ2FjeUBmbGlwLXZzLWN1cnNvci1hdG9taWMt
dHJhbnNpdGlvbnMtdmFyeWluZy1zaXplLmh0bWwKICAgWzMwXTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ2MzYvc2hhcmQtc2tsMTAvaWd0QGtt
c19jdXJzb3JfbGVnYWN5QGZsaXAtdnMtY3Vyc29yLWF0b21pYy10cmFuc2l0aW9ucy12YXJ5aW5n
LXNpemUuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmQ6CiAgICAtIHNoYXJk
LXNrbDogICAgICAgICAgW1BBU1NdWzMxXSAtPiBbSU5DT01QTEVURV1bMzJdIChbZmRvIzEwOTUw
N10pCiAgIFszMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzY5OTIvc2hhcmQtc2tsMi9pZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLmh0bWwKICAg
WzMyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTQ2MzYvc2hhcmQtc2tsNi9pZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLmh0bWwKCiAgKiBp
Z3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmltc2Nybi1wcmktaW5kZmIt
ZHJhdy1wd3JpdGU6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzMzXSAtPiBbRkFJ
TF1bMzRdIChbZmRvIzEwMzE2N10pICs3IHNpbWlsYXIgaXNzdWVzCiAgIFszM106IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5OTIvc2hhcmQtaWNsYjYv
aWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tcHJpLWluZGZi
LWRyYXctcHdyaXRlLmh0bWwKICAgWzM0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ2MzYvc2hhcmQtaWNsYjEvaWd0QGttc19mcm9udGJ1ZmZl
cl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tcHJpLWluZGZiLWRyYXctcHdyaXRlLmh0bWwK
CiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQHBzci1tb2Rlc2V0ZnJvbWJ1c3k6CiAg
ICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzM1XSAtPiBbRkFJTF1bMzZdIChbZmRvIzEw
MzE2N10pICsxIHNpbWlsYXIgaXNzdWUKICAgWzM1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjk5Mi9zaGFyZC1za2w1L2lndEBrbXNfZnJvbnRidWZm
ZXJfdHJhY2tpbmdAcHNyLW1vZGVzZXRmcm9tYnVzeS5odG1sCiAgIFszNl06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NjM2L3NoYXJkLXNrbDgv
aWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0Bwc3ItbW9kZXNldGZyb21idXN5Lmh0bWwKCiAg
KiBpZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYS1jb3ZlcmFnZS03ZWZjOgogICAgLSBz
aGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVszN10gLT4gW0ZBSUxdWzM4XSAoW2ZkbyMxMDgxNDVd
KQogICBbMzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV82OTkyL3NoYXJkLXNrbDUvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWEtY292ZXJh
Z2UtN2VmYy5odG1sCiAgIFszOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE0NjM2L3NoYXJkLXNrbDgvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVu
ZEBwaXBlLWEtY292ZXJhZ2UtN2VmYy5odG1sCgogICogaWd0QGttc19wbGFuZV9hbHBoYV9ibGVu
ZEBwaXBlLWMtY292ZXJhZ2UtN2VmYzoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11b
MzldIC0+IFtGQUlMXVs0MF0gKFtmZG8jMTA4MTQ1XSAvIFtmZG8jMTEwNDAzXSkKICAgWzM5XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjk5Mi9zaGFy
ZC1za2w3L2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1jLWNvdmVyYWdlLTdlZmMuaHRt
bAogICBbNDBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNDYzNi9zaGFyZC1za2wxMC9pZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYy1j
b3ZlcmFnZS03ZWZjLmh0bWwKCiAgKiBpZ3RAa21zX3BzckBwc3IyX3Nwcml0ZV9wbGFuZV9tb3Zl
OgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVs0MV0gLT4gW1NLSVBdWzQyXSAoW2Zk
byMxMDk0NDFdKSArMiBzaW1pbGFyIGlzc3VlcwogICBbNDFdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTkyL3NoYXJkLWljbGIyL2lndEBrbXNfcHNy
QHBzcjJfc3ByaXRlX3BsYW5lX21vdmUuaHRtbAogICBbNDJdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDYzNi9zaGFyZC1pY2xiOC9pZ3RAa21z
X3BzckBwc3IyX3Nwcml0ZV9wbGFuZV9tb3ZlLmh0bWwKCiAgKiBpZ3RAa21zX3NldG1vZGVAYmFz
aWM6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW1BBU1NdWzQzXSAtPiBbRkFJTF1bNDRdIChb
ZmRvIzk5OTEyXSkKICAgWzQzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNjk5Mi9zaGFyZC1hcGwzL2lndEBrbXNfc2V0bW9kZUBiYXNpYy5odG1sCiAg
IFs0NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE0NjM2L3NoYXJkLWFwbDEvaWd0QGttc19zZXRtb2RlQGJhc2ljLmh0bWwKCiAgKiBpZ3RAcGVy
ZkBnZW44LXVucHJpdmlsZWdlZC1zaW5nbGUtY3R4LWNvdW50ZXJzOgogICAgLSBzaGFyZC1za2w6
ICAgICAgICAgIFtQQVNTXVs0NV0gLT4gW1RJTUVPVVRdWzQ2XSAoW2ZkbyMxMTE3MzIgXSkKICAg
WzQ1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjk5
Mi9zaGFyZC1za2wxL2lndEBwZXJmQGdlbjgtdW5wcml2aWxlZ2VkLXNpbmdsZS1jdHgtY291bnRl
cnMuaHRtbAogICBbNDZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNDYzNi9zaGFyZC1za2w3L2lndEBwZXJmQGdlbjgtdW5wcml2aWxlZ2VkLXNp
bmdsZS1jdHgtY291bnRlcnMuaHRtbAoKICAqIGlndEBwcmltZV92Z2VtQGZlbmNlLXdhaXQtYnNk
MjoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bNDddIC0+IFtTS0lQXVs0OF0gKFtm
ZG8jMTA5Mjc2XSkgKzI0IHNpbWlsYXIgaXNzdWVzCiAgIFs0N106IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5OTIvc2hhcmQtaWNsYjQvaWd0QHByaW1l
X3ZnZW1AZmVuY2Utd2FpdC1ic2QyLmh0bWwKICAgWzQ4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ2MzYvc2hhcmQtaWNsYjYvaWd0QHByaW1l
X3ZnZW1AZmVuY2Utd2FpdC1ic2QyLmh0bWwKCiAgCiMjIyMgUG9zc2libGUgZml4ZXMgIyMjIwoK
ICAqIGlndEBnZW1fY3R4X3NoYXJlZEBleGVjLXNpbmdsZS10aW1lbGluZS1ic2Q6CiAgICAtIHNo
YXJkLWljbGI6ICAgICAgICAgW1NLSVBdWzQ5XSAoW2ZkbyMxMTA4NDFdKSAtPiBbUEFTU11bNTBd
CiAgIFs0OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzY5OTIvc2hhcmQtaWNsYjEvaWd0QGdlbV9jdHhfc2hhcmVkQGV4ZWMtc2luZ2xlLXRpbWVsaW5l
LWJzZC5odG1sCiAgIFs1MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE0NjM2L3NoYXJkLWljbGI1L2lndEBnZW1fY3R4X3NoYXJlZEBleGVjLXNp
bmdsZS10aW1lbGluZS1ic2QuaHRtbAoKICAqIGlndEBnZW1fZWlvQGluLWZsaWdodC1zdXNwZW5k
OgogICAgLSBzaGFyZC1zbmI6ICAgICAgICAgIFtJTkNPTVBMRVRFXVs1MV0gKFtmZG8jMTA1NDEx
XSkgLT4gW1BBU1NdWzUyXQogICBbNTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82OTkyL3NoYXJkLXNuYjEvaWd0QGdlbV9laW9AaW4tZmxpZ2h0LXN1
c3BlbmQuaHRtbAogICBbNTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xNDYzNi9zaGFyZC1zbmI3L2lndEBnZW1fZWlvQGluLWZsaWdodC1zdXNw
ZW5kLmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcmVvcmRlci13aWRlLWJzZDoKICAg
IC0gc2hhcmQtaWNsYjogICAgICAgICBbU0tJUF1bNTNdIChbZmRvIzExMTMyNV0pIC0+IFtQQVNT
XVs1NF0gKzcgc2ltaWxhciBpc3N1ZXMKICAgWzUzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjk5Mi9zaGFyZC1pY2xiMi9pZ3RAZ2VtX2V4ZWNfc2No
ZWR1bGVAcmVvcmRlci13aWRlLWJzZC5odG1sCiAgIFs1NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NjM2L3NoYXJkLWljbGI3L2lndEBnZW1f
ZXhlY19zY2hlZHVsZUByZW9yZGVyLXdpZGUtYnNkLmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfc3Vz
cGVuZEBiYXNpYy1zMzoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbSU5DT01QTEVURV1bNTVd
IChbZmRvIzEwNDEwOF0pIC0+IFtQQVNTXVs1Nl0KICAgWzU1XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjk5Mi9zaGFyZC1za2w2L2lndEBnZW1fZXhl
Y19zdXNwZW5kQGJhc2ljLXMzLmh0bWwKICAgWzU2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ2MzYvc2hhcmQtc2tsNy9pZ3RAZ2VtX2V4ZWNf
c3VzcGVuZEBiYXNpYy1zMy5odG1sCgogICogaWd0QGdlbV9tbWFwX2d0dEBiYXNpYy1zbWFsbC1j
b3B5OgogICAgLSBzaGFyZC1zbmI6ICAgICAgICAgIFtETUVTRy1XQVJOXVs1N10gLT4gW1BBU1Nd
WzU4XQogICBbNTddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82OTkyL3NoYXJkLXNuYjEvaWd0QGdlbV9tbWFwX2d0dEBiYXNpYy1zbWFsbC1jb3B5Lmh0
bWwKICAgWzU4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTQ2MzYvc2hhcmQtc25iNS9pZ3RAZ2VtX21tYXBfZ3R0QGJhc2ljLXNtYWxsLWNvcHku
aHRtbAoKICAqIGlndEBnZW1fdXNlcnB0cl9ibGl0c0BtYXAtZml4ZWQtaW52YWxpZGF0ZS1idXN5
OgogICAgLSBzaGFyZC1zbmI6ICAgICAgICAgIFtETUVTRy1XQVJOXVs1OV0gKFtmZG8jMTExODcw
XSkgLT4gW1BBU1NdWzYwXQogICBbNTldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82OTkyL3NoYXJkLXNuYjEvaWd0QGdlbV91c2VycHRyX2JsaXRzQG1h
cC1maXhlZC1pbnZhbGlkYXRlLWJ1c3kuaHRtbAogICBbNjBdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDYzNi9zaGFyZC1zbmIxL2lndEBnZW1f
dXNlcnB0cl9ibGl0c0BtYXAtZml4ZWQtaW52YWxpZGF0ZS1idXN5Lmh0bWwKICAgIC0gc2hhcmQt
Z2xrOiAgICAgICAgICBbRE1FU0ctV0FSTl1bNjFdIChbZmRvIzExMTg3MF0pIC0+IFtQQVNTXVs2
Ml0KICAgWzYxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNjk5Mi9zaGFyZC1nbGs0L2lndEBnZW1fdXNlcnB0cl9ibGl0c0BtYXAtZml4ZWQtaW52YWxp
ZGF0ZS1idXN5Lmh0bWwKICAgWzYyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTQ2MzYvc2hhcmQtZ2xrNC9pZ3RAZ2VtX3VzZXJwdHJfYmxpdHNA
bWFwLWZpeGVkLWludmFsaWRhdGUtYnVzeS5odG1sCgogICogaWd0QGdlbV91c2VycHRyX2JsaXRz
QG1hcC1maXhlZC1pbnZhbGlkYXRlLW92ZXJsYXAtYnVzeToKICAgIC0gc2hhcmQtaWNsYjogICAg
ICAgICBbRE1FU0ctV0FSTl1bNjNdIChbZmRvIzExMTg3MF0pIC0+IFtQQVNTXVs2NF0KICAgWzYz
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjk5Mi9z
aGFyZC1pY2xiMi9pZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAbWFwLWZpeGVkLWludmFsaWRhdGUtb3Zl
cmxhcC1idXN5Lmh0bWwKICAgWzY0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTQ2MzYvc2hhcmQtaWNsYjQvaWd0QGdlbV91c2VycHRyX2JsaXRz
QG1hcC1maXhlZC1pbnZhbGlkYXRlLW92ZXJsYXAtYnVzeS5odG1sCgogICogaWd0QGdlbV91c2Vy
cHRyX2JsaXRzQG1hcC1maXhlZC1pbnZhbGlkYXRlLW92ZXJsYXAtYnVzeS1ndXA6CiAgICAtIHNo
YXJkLWFwbDogICAgICAgICAgW0RNRVNHLVdBUk5dWzY1XSAoW2ZkbyMxMDkzODVdIC8gW2ZkbyMx
MTE4NzBdKSAtPiBbUEFTU11bNjZdCiAgIFs2NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzY5OTIvc2hhcmQtYXBsMS9pZ3RAZ2VtX3VzZXJwdHJfYmxp
dHNAbWFwLWZpeGVkLWludmFsaWRhdGUtb3ZlcmxhcC1idXN5LWd1cC5odG1sCiAgIFs2Nl06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NjM2L3No
YXJkLWFwbDMvaWd0QGdlbV91c2VycHRyX2JsaXRzQG1hcC1maXhlZC1pbnZhbGlkYXRlLW92ZXJs
YXAtYnVzeS1ndXAuaHRtbAoKICAqIGlndEBpOTE1X3N1c3BlbmRAc3lzZnMtcmVhZGVyOgogICAg
LSBzaGFyZC1hcGw6ICAgICAgICAgIFtETUVTRy1XQVJOXVs2N10gKFtmZG8jMTA4NTY2XSkgLT4g
W1BBU1NdWzY4XSArNCBzaW1pbGFyIGlzc3VlcwogICBbNjddOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTkyL3NoYXJkLWFwbDgvaWd0QGk5MTVfc3Vz
cGVuZEBzeXNmcy1yZWFkZXIuaHRtbAogICBbNjhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDYzNi9zaGFyZC1hcGw0L2lndEBpOTE1X3N1c3Bl
bmRAc3lzZnMtcmVhZGVyLmh0bWwKCiAgKiBpZ3RAa21zX2F0b21pY19pbnRlcnJ1cHRpYmxlQHVu
aXZlcnNhbC1zZXRwbGFuZS1wcmltYXJ5OgogICAgLSBzaGFyZC1oc3c6ICAgICAgICAgIFtETUVT
Ry1XQVJOXVs2OV0gKFtmZG8jMTAyNjE0XSkgLT4gW1BBU1NdWzcwXQogICBbNjldOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTkyL3NoYXJkLWhzdzUv
aWd0QGttc19hdG9taWNfaW50ZXJydXB0aWJsZUB1bml2ZXJzYWwtc2V0cGxhbmUtcHJpbWFyeS5o
dG1sCiAgIFs3MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE0NjM2L3NoYXJkLWhzdzIvaWd0QGttc19hdG9taWNfaW50ZXJydXB0aWJsZUB1bml2
ZXJzYWwtc2V0cGxhbmUtcHJpbWFyeS5odG1sCgogICogaWd0QGttc19jdXJzb3JfbGVnYWN5QDJ4
LW5vbmJsb2NraW5nLW1vZGVzZXQtdnMtY3Vyc29yLWF0b21pYzoKICAgIC0gc2hhcmQtZ2xrOiAg
ICAgICAgICBbRkFJTF1bNzFdIChbZmRvIzEwNjUwOV0gLyBbZmRvIzEwNzQwOV0pIC0+IFtQQVNT
XVs3Ml0KICAgWzcxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNjk5Mi9zaGFyZC1nbGs0L2lndEBrbXNfY3Vyc29yX2xlZ2FjeUAyeC1ub25ibG9ja2lu
Zy1tb2Rlc2V0LXZzLWN1cnNvci1hdG9taWMuaHRtbAogICBbNzJdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDYzNi9zaGFyZC1nbGs0L2lndEBr
bXNfY3Vyc29yX2xlZ2FjeUAyeC1ub25ibG9ja2luZy1tb2Rlc2V0LXZzLWN1cnNvci1hdG9taWMu
aHRtbAoKICAqIGlndEBrbXNfZmxpcEAyeC1mbGlwLXZzLWV4cGlyZWQtdmJsYW5rOgogICAgLSBz
aGFyZC1nbGs6ICAgICAgICAgIFtGQUlMXVs3M10gKFtmZG8jMTA1MzYzXSkgLT4gW1BBU1NdWzc0
XQogICBbNzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV82OTkyL3NoYXJkLWdsazcvaWd0QGttc19mbGlwQDJ4LWZsaXAtdnMtZXhwaXJlZC12Ymxhbmsu
aHRtbAogICBbNzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNDYzNi9zaGFyZC1nbGs5L2lndEBrbXNfZmxpcEAyeC1mbGlwLXZzLWV4cGlyZWQt
dmJsYW5rLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1wcmlt
c2Nybi1jdXItaW5kZmItZHJhdy1yZW5kZXI6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW0ZB
SUxdWzc1XSAoW2ZkbyMxMDMxNjddKSAtPiBbUEFTU11bNzZdICsyIHNpbWlsYXIgaXNzdWVzCiAg
IFs3NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5
OTIvc2hhcmQtaWNsYjIvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtcHJpbXNj
cm4tY3VyLWluZGZiLWRyYXctcmVuZGVyLmh0bWwKICAgWzc2XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ2MzYvc2hhcmQtaWNsYjMvaWd0QGtt
c19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtcHJpbXNjcm4tY3VyLWluZGZiLWRyYXctcmVu
ZGVyLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1ydGU6
CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW0ZBSUxdWzc3XSAoW2ZkbyMxMDMxNjddIC8gW2Zk
byMxMTAzNzhdKSAtPiBbUEFTU11bNzhdCiAgIFs3N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5OTIvc2hhcmQtaWNsYjYvaWd0QGttc19mcm9udGJ1
ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcnRlLmh0bWwKICAgWzc4XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ2MzYvc2hhcmQtaWNsYjcvaWd0
QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcnRlLmh0bWwKCiAgKiBpZ3RAa21z
X3BsYW5lX2xvd3Jlc0BwaXBlLWEtdGlsaW5nLXk6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAg
W0ZBSUxdWzc5XSAoW2ZkbyMxMDMxNjZdKSAtPiBbUEFTU11bODBdCiAgIFs3OV06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5OTIvc2hhcmQtaWNsYjcv
aWd0QGttc19wbGFuZV9sb3dyZXNAcGlwZS1hLXRpbGluZy15Lmh0bWwKICAgWzgwXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ2MzYvc2hhcmQt
aWNsYjIvaWd0QGttc19wbGFuZV9sb3dyZXNAcGlwZS1hLXRpbGluZy15Lmh0bWwKCiAgKiBpZ3RA
a21zX3BzcjJfc3VAZnJvbnRidWZmZXI6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1NLSVBd
WzgxXSAoW2ZkbyMxMDk2NDJdIC8gW2ZkbyMxMTEwNjhdKSAtPiBbUEFTU11bODJdCiAgIFs4MV06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5OTIvc2hh
cmQtaWNsYjMvaWd0QGttc19wc3IyX3N1QGZyb250YnVmZmVyLmh0bWwKICAgWzgyXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ2MzYvc2hhcmQt
aWNsYjIvaWd0QGttc19wc3IyX3N1QGZyb250YnVmZmVyLmh0bWwKCiAgKiBpZ3RAa21zX3BzckBu
b19kcnJzOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtGQUlMXVs4M10gKFtmZG8jMTA4MzQx
XSkgLT4gW1BBU1NdWzg0XQogICBbODNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82OTkyL3NoYXJkLWljbGIxL2lndEBrbXNfcHNyQG5vX2RycnMuaHRt
bAogICBbODRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNDYzNi9zaGFyZC1pY2xiNS9pZ3RAa21zX3BzckBub19kcnJzLmh0bWwKCiAgKiBpZ3RA
a21zX3BzckBwc3IyX3Nwcml0ZV9ibHQ6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1NLSVBd
Wzg1XSAoW2ZkbyMxMDk0NDFdKSAtPiBbUEFTU11bODZdICsyIHNpbWlsYXIgaXNzdWVzCiAgIFs4
NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5OTIv
c2hhcmQtaWNsYjcvaWd0QGttc19wc3JAcHNyMl9zcHJpdGVfYmx0Lmh0bWwKICAgWzg2XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ2MzYvc2hh
cmQtaWNsYjIvaWd0QGttc19wc3JAcHNyMl9zcHJpdGVfYmx0Lmh0bWwKCiAgKiBpZ3RAa21zX3Nl
dG1vZGVAYmFzaWM6CiAgICAtIHNoYXJkLWdsazogICAgICAgICAgW0ZBSUxdWzg3XSAoW2ZkbyM5
OTkxMl0pIC0+IFtQQVNTXVs4OF0KICAgWzg3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNjk5Mi9zaGFyZC1nbGsxL2lndEBrbXNfc2V0bW9kZUBiYXNp
Yy5odG1sCiAgIFs4OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE0NjM2L3NoYXJkLWdsazUvaWd0QGttc19zZXRtb2RlQGJhc2ljLmh0bWwKCiAg
KiBpZ3RAa21zX3ZibGFua0BwaXBlLWItdHMtY29udGludWF0aW9uLXN1c3BlbmQ6CiAgICAtIHNo
YXJkLWljbGI6ICAgICAgICAgW0lOQ09NUExFVEVdWzg5XSAoW2ZkbyMxMDc3MTNdKSAtPiBbUEFT
U11bOTBdCiAgIFs4OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzY5OTIvc2hhcmQtaWNsYjcvaWd0QGttc192YmxhbmtAcGlwZS1iLXRzLWNvbnRpbnVh
dGlvbi1zdXNwZW5kLmh0bWwKICAgWzkwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ2MzYvc2hhcmQtaWNsYjIvaWd0QGttc192YmxhbmtAcGlw
ZS1iLXRzLWNvbnRpbnVhdGlvbi1zdXNwZW5kLmh0bWwKCiAgKiBpZ3RAcHJpbWVfYnVzeUBoYW5n
LWJzZDI6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1NLSVBdWzkxXSAoW2ZkbyMxMDkyNzZd
KSAtPiBbUEFTU11bOTJdICsxOSBzaW1pbGFyIGlzc3VlcwogICBbOTFdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTkyL3NoYXJkLWljbGI3L2lndEBw
cmltZV9idXN5QGhhbmctYnNkMi5odG1sCiAgIFs5Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NjM2L3NoYXJkLWljbGIyL2lndEBwcmltZV9i
dXN5QGhhbmctYnNkMi5odG1sCgogIAojIyMjIFdhcm5pbmdzICMjIyMKCiAgKiBpZ3RAZ2VtX2N0
eF9pc29sYXRpb25AdmNzMS1ub25wcml2OgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtTS0lQ
XVs5M10gKFtmZG8jMTA5Mjc2XSkgLT4gW0ZBSUxdWzk0XSAoW2ZkbyMxMTEzMjldKQogICBbOTNd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTkyL3No
YXJkLWljbGI3L2lndEBnZW1fY3R4X2lzb2xhdGlvbkB2Y3MxLW5vbnByaXYuaHRtbAogICBbOTRd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDYz
Ni9zaGFyZC1pY2xiMi9pZ3RAZ2VtX2N0eF9pc29sYXRpb25AdmNzMS1ub25wcml2Lmh0bWwKCiAg
KiBpZ3RAa21zX2RwX2RzY0BiYXNpYy1kc2MtZW5hYmxlLWVkcDoKICAgIC0gc2hhcmQtaWNsYjog
ICAgICAgICBbRE1FU0ctV0FSTl1bOTVdIChbZmRvIzEwNzcyNF0pIC0+IFtTS0lQXVs5Nl0gKFtm
ZG8jMTA5MzQ5XSkKICAgWzk1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNjk5Mi9zaGFyZC1pY2xiMi9pZ3RAa21zX2RwX2RzY0BiYXNpYy1kc2MtZW5h
YmxlLWVkcC5odG1sCiAgIFs5Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE0NjM2L3NoYXJkLWljbGI4L2lndEBrbXNfZHBfZHNjQGJhc2ljLWRz
Yy1lbmFibGUtZWRwLmh0bWwKCiAgCiAgW2ZkbyMxMDI2MTRdOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDI2MTQKICBbZmRvIzEwMjY3MF06IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMjY3MAogIFtmZG8jMTAzMTY2
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMTY2CiAg
W2ZkbyMxMDMxNjddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMDMxNjcKICBbZmRvIzEwMzIzMl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTEwMzIzMgogIFtmZG8jMTAzNTQwXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzNTQwCiAgW2ZkbyMxMDQxMDhdOiBodHRwczovL2J1
Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDQxMDgKICBbZmRvIzEwNTM2M106
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNTM2MwogIFtm
ZG8jMTA1NDExXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTA1NDExCiAgW2ZkbyMxMDY1MDldOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMDY1MDkKICBbZmRvIzEwNzQwOV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzQwOQogIFtmZG8jMTA3NzEzXTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NzEzCiAgW2ZkbyMxMDc3MjRdOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc3MjQKICBbZmRv
IzEwODE0NV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEw
ODE0NQogIFtmZG8jMTA4MzQxXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTA4MzQxCiAgW2ZkbyMxMDg1NjZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Au
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMDg1NjYKICBbZmRvIzEwOTI3Nl06IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI3NgogIFtmZG8jMTA5MzQ5XTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5MzQ5CiAgW2ZkbyMx
MDkzODVdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkz
ODUKICBbZmRvIzEwOTQ0MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTEwOTQ0MQogIFtmZG8jMTA5NTA3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MTA5NTA3CiAgW2ZkbyMxMDk2NDJdOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDk2NDIKICBbZmRvIzEwOTY2MV06IGh0dHBz
Oi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTY2MQogIFtmZG8jMTEw
Mzc4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwMzc4
CiAgW2ZkbyMxMTA0MDNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMTA0MDMKICBbZmRvIzExMDc0MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTExMDc0MQogIFtmZG8jMTEwODQxXTogaHR0cHM6Ly8KCj09IExvZ3Mg
PT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNDYzNi8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
