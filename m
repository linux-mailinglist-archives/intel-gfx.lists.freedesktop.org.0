Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 618132A0A0
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 23:48:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C5716E0E5;
	Fri, 24 May 2019 21:48:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 783566E0B3;
 Fri, 24 May 2019 21:48:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4E242A0094;
 Fri, 24 May 2019 21:48:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 24 May 2019 21:48:13 -0000
Message-ID: <20190524214813.10294.15348@emeril.freedesktop.org>
References: <20190523064933.23604-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190523064933.23604-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EIGT=3A_success_for_drm/?=
 =?utf-8?q?i915/gtt=3A_Always_acquire_struct=5Fmutex_for_gen6=5Fppgtt=5Fcl?=
 =?utf-8?q?eanup?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3R0OiBBbHdheXMgYWNxdWly
ZSBzdHJ1Y3RfbXV0ZXggZm9yIGdlbjZfcHBndHRfY2xlYW51cApVUkwgICA6IGh0dHBzOi8vcGF0
Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjEwMTIvClN0YXRlIDogc3VjY2VzcwoKPT0g
U3VtbWFyeSA9PQoKQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNjEzMl9mdWxsIC0+
IFBhdGNod29ya18xMzA3Nl9mdWxsCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKlNVQ0NFU1MqKgoKICBObyBy
ZWdyZXNzaW9ucyBmb3VuZC4KCiAgCgpLbm93biBpc3N1ZXMKLS0tLS0tLS0tLS0tCgogIEhlcmUg
YXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNod29ya18xMzA3Nl9mdWxsIHRoYXQgY29tZSBm
cm9tIGtub3duIGlzc3VlczoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgSXNzdWVzIGhpdCAj
IyMjCgogICogaWd0QGdlbV9tbWFwX2d0dEBmb3JrZWQtbWVkaXVtLWNvcHkteHk6CiAgICAtIHNo
YXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzFdIC0+IFtUSU1FT1VUXVsyXSAoW2ZkbyMxMDk2NzNd
KQogICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzYxMzIvc2hhcmQtaWNsYjgvaWd0QGdlbV9tbWFwX2d0dEBmb3JrZWQtbWVkaXVtLWNvcHkteHku
aHRtbAogICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzEzMDc2L3NoYXJkLWljbGI2L2lndEBnZW1fbW1hcF9ndHRAZm9ya2VkLW1lZGl1bS1j
b3B5LXh5Lmh0bWwKCiAgKiBpZ3RAaTkxNV9wbV9ycG1Ac3lzdGVtLXN1c3BlbmQtbW9kZXNldDoK
ICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bM10gLT4gW0lOQ09NUExFVEVdWzRdIChb
ZmRvIzEwNDEwOF0gLyBbZmRvIzEwNzgwN10pCiAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjEzMi9zaGFyZC1za2wxMC9pZ3RAaTkxNV9wbV9y
cG1Ac3lzdGVtLXN1c3BlbmQtbW9kZXNldC5odG1sCiAgIFs0XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMwNzYvc2hhcmQtc2tsMS9pZ3RAaTkx
NV9wbV9ycG1Ac3lzdGVtLXN1c3BlbmQtbW9kZXNldC5odG1sCgogICogaWd0QGk5MTVfc3VzcGVu
ZEBmb3JjZXdha2U6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzVdIC0+IFtJTkNP
TVBMRVRFXVs2XSAoW2ZkbyMxMDQxMDhdKSArMSBzaW1pbGFyIGlzc3VlCiAgIFs1XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjEzMi9zaGFyZC1za2w3
L2lndEBpOTE1X3N1c3BlbmRAZm9yY2V3YWtlLmh0bWwKICAgWzZdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzA3Ni9zaGFyZC1za2w1L2lndEBp
OTE1X3N1c3BlbmRAZm9yY2V3YWtlLmh0bWwKCiAgKiBpZ3RAa21zX2N1cnNvcl9sZWdhY3lAMngt
bG9uZy1mbGlwLXZzLWN1cnNvci1sZWdhY3k6CiAgICAtIHNoYXJkLWdsazogICAgICAgICAgW1BB
U1NdWzddIC0+IFtGQUlMXVs4XSAoW2ZkbyMxMDQ4NzNdKQogICBbN106IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYxMzIvc2hhcmQtZ2xrMS9pZ3RAa21z
X2N1cnNvcl9sZWdhY3lAMngtbG9uZy1mbGlwLXZzLWN1cnNvci1sZWdhY3kuaHRtbAogICBbOF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMDc2
L3NoYXJkLWdsazEvaWd0QGttc19jdXJzb3JfbGVnYWN5QDJ4LWxvbmctZmxpcC12cy1jdXJzb3It
bGVnYWN5Lmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBAZmxpcC12cy1leHBpcmVkLXZibGFuazoKICAg
IC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bOV0gLT4gW0ZBSUxdWzEwXSAoW2ZkbyMxMDUz
NjNdKQogICBbOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzYxMzIvc2hhcmQtc2tsMi9pZ3RAa21zX2ZsaXBAZmxpcC12cy1leHBpcmVkLXZibGFuay5o
dG1sCiAgIFsxMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzEzMDc2L3NoYXJkLXNrbDUvaWd0QGttc19mbGlwQGZsaXAtdnMtZXhwaXJlZC12Ymxh
bmsuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBwbGFpbi1mbGlwLXRzLWNoZWNrLWludGVycnVwdGli
bGU6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzExXSAtPiBbRkFJTF1bMTJdIChb
ZmRvIzEwMDM2OF0pCiAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzYxMzIvc2hhcmQtc2tsMi9pZ3RAa21zX2ZsaXBAcGxhaW4tZmxpcC10cy1j
aGVjay1pbnRlcnJ1cHRpYmxlLmh0bWwKICAgWzEyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMwNzYvc2hhcmQtc2tsNS9pZ3RAa21zX2ZsaXBA
cGxhaW4tZmxpcC10cy1jaGVjay1pbnRlcnJ1cHRpYmxlLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250
YnVmZmVyX3RyYWNraW5nQGZiYy0ycC1wcmltc2Nybi1wcmktc2hyZmItZHJhdy1tbWFwLXdjOgog
ICAgLSBzaGFyZC1nbGs6ICAgICAgICAgIFtQQVNTXVsxM10gLT4gW0lOQ09NUExFVEVdWzE0XSAo
W2ZkbyMxMDMzNTldIC8gW2sub3JnIzE5ODEzM10pCiAgIFsxM106IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYxMzIvc2hhcmQtZ2xrNS9pZ3RAa21zX2Zy
b250YnVmZmVyX3RyYWNraW5nQGZiYy0ycC1wcmltc2Nybi1wcmktc2hyZmItZHJhdy1tbWFwLXdj
Lmh0bWwKICAgWzE0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTMwNzYvc2hhcmQtZ2xrOC9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZi
Yy0ycC1wcmltc2Nybi1wcmktc2hyZmItZHJhdy1tbWFwLXdjLmh0bWwKCiAgKiBpZ3RAa21zX2Zy
b250YnVmZmVyX3RyYWNraW5nQGZiYy1zdXNwZW5kOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAg
IFtQQVNTXVsxNV0gLT4gW0RNRVNHLVdBUk5dWzE2XSAoW2ZkbyMxMDg1NjZdKSArNCBzaW1pbGFy
IGlzc3VlcwogICBbMTVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV82MTMyL3NoYXJkLWFwbDQvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMt
c3VzcGVuZC5odG1sCiAgIFsxNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzEzMDc2L3NoYXJkLWFwbDgvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFj
a2luZ0BmYmMtc3VzcGVuZC5odG1sCgogICogaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBl
LWMtY292ZXJhZ2UtN2VmYzoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bMTddIC0+
IFtGQUlMXVsxOF0gKFtmZG8jMTA4MTQ1XSAvIFtmZG8jMTEwNDAzXSkKICAgWzE3XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjEzMi9zaGFyZC1za2wx
L2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1jLWNvdmVyYWdlLTdlZmMuaHRtbAogICBb
MThdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
MzA3Ni9zaGFyZC1za2w3L2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1jLWNvdmVyYWdl
LTdlZmMuaHRtbAoKICAqIGlndEBrbXNfcHNyMl9zdUBwYWdlX2ZsaXA6CiAgICAtIHNoYXJkLWlj
bGI6ICAgICAgICAgW1BBU1NdWzE5XSAtPiBbU0tJUF1bMjBdIChbZmRvIzEwOTY0Ml0pCiAgIFsx
OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYxMzIv
c2hhcmQtaWNsYjIvaWd0QGttc19wc3IyX3N1QHBhZ2VfZmxpcC5odG1sCiAgIFsyMF06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMDc2L3NoYXJk
LWljbGI1L2lndEBrbXNfcHNyMl9zdUBwYWdlX2ZsaXAuaHRtbAoKICAqIGlndEBrbXNfcHNyQG5v
X2RycnM6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzIxXSAtPiBbRkFJTF1bMjJd
IChbZmRvIzEwODM0MV0pCiAgIFsyMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzYxMzIvc2hhcmQtaWNsYjYvaWd0QGttc19wc3JAbm9fZHJycy5odG1s
CiAgIFsyMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEzMDc2L3NoYXJkLWljbGIxL2lndEBrbXNfcHNyQG5vX2RycnMuaHRtbAoKICAqIGlndEBr
bXNfc2V0bW9kZUBiYXNpYzoKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbUEFTU11bMjNdIC0+
IFtGQUlMXVsyNF0gKFtmZG8jOTk5MTJdKQogICBbMjNdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MTMyL3NoYXJkLWtibDIvaWd0QGttc19zZXRtb2Rl
QGJhc2ljLmh0bWwKICAgWzI0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTMwNzYvc2hhcmQta2JsNy9pZ3RAa21zX3NldG1vZGVAYmFzaWMuaHRt
bAoKICAKIyMjIyBQb3NzaWJsZSBmaXhlcyAjIyMjCgogICogaWd0QGdlbV9zb2Z0cGluQG5vcmVs
b2MtczM6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0lOQ09NUExFVEVdWzI1XSAoW2ZkbyMx
MDQxMDhdKSAtPiBbUEFTU11bMjZdCiAgIFsyNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzYxMzIvc2hhcmQtc2tsNS9pZ3RAZ2VtX3NvZnRwaW5Abm9y
ZWxvYy1zMy5odG1sCiAgIFsyNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzEzMDc2L3NoYXJkLXNrbDEwL2lndEBnZW1fc29mdHBpbkBub3JlbG9j
LXMzLmh0bWwKCiAgKiBpZ3RAZ2VtX3dvcmthcm91bmRzQHN1c3BlbmQtcmVzdW1lOgogICAgLSBz
aGFyZC1hcGw6ICAgICAgICAgIFtETUVTRy1XQVJOXVsyN10gKFtmZG8jMTA4NTY2XSkgLT4gW1BB
U1NdWzI4XSArNiBzaW1pbGFyIGlzc3VlcwogICBbMjddOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MTMyL3NoYXJkLWFwbDMvaWd0QGdlbV93b3JrYXJv
dW5kc0BzdXNwZW5kLXJlc3VtZS5odG1sCiAgIFsyOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMDc2L3NoYXJkLWFwbDcvaWd0QGdlbV93b3Jr
YXJvdW5kc0BzdXNwZW5kLXJlc3VtZS5odG1sCgogICogaWd0QGttc19mbGlwX3RpbGluZ0BmbGlw
LXRvLXktdGlsZWQ6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW0ZBSUxdWzI5XSAoW2ZkbyMx
MDc5MzFdIC8gW2ZkbyMxMDgxMzRdKSAtPiBbUEFTU11bMzBdCiAgIFsyOV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYxMzIvc2hhcmQtaWNsYjMvaWd0
QGttc19mbGlwX3RpbGluZ0BmbGlwLXRvLXktdGlsZWQuaHRtbAogICBbMzBdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzA3Ni9zaGFyZC1pY2xi
NC9pZ3RAa21zX2ZsaXBfdGlsaW5nQGZsaXAtdG8teS10aWxlZC5odG1sCgogICogaWd0QGttc19m
cm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtcHJpbXNjcm4tY3VyLWluZGZiLW1vdmU6CiAgICAt
IHNoYXJkLWljbGI6ICAgICAgICAgW0ZBSUxdWzMxXSAoW2ZkbyMxMDMxNjddKSAtPiBbUEFTU11b
MzJdICsyIHNpbWlsYXIgaXNzdWVzCiAgIFszMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzYxMzIvc2hhcmQtaWNsYjQvaWd0QGttc19mcm9udGJ1ZmZl
cl90cmFja2luZ0BmYmMtMXAtcHJpbXNjcm4tY3VyLWluZGZiLW1vdmUuaHRtbAogICBbMzJdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzA3Ni9z
aGFyZC1pY2xiMi9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1wcmltc2Nybi1j
dXItaW5kZmItbW92ZS5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNw
c3ItMXAtcHJpbXNjcm4tc3ByLWluZGZiLW1vdmU6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAg
W0ZBSUxdWzMzXSAoW2ZkbyMxMDgwNDBdKSAtPiBbUEFTU11bMzRdCiAgIFszM106IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYxMzIvc2hhcmQtc2tsMy9p
Z3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmltc2Nybi1zcHItaW5kZmIt
bW92ZS5odG1sCiAgIFszNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzEzMDc2L3NoYXJkLXNrbDEwL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tp
bmdAZmJjcHNyLTFwLXByaW1zY3JuLXNwci1pbmRmYi1tb3ZlLmh0bWwKCiAgKiBpZ3RAa21zX3Bs
YW5lQHBsYW5lLXBhbm5pbmctYm90dG9tLXJpZ2h0LXN1c3BlbmQtcGlwZS1jLXBsYW5lczoKICAg
IC0gc2hhcmQtc2tsOiAgICAgICAgICBbRkFJTF1bMzVdIChbZmRvIzEwMzE2Nl0pIC0+IFtQQVNT
XVszNl0KICAgWzM1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNjEzMi9zaGFyZC1za2w2L2lndEBrbXNfcGxhbmVAcGxhbmUtcGFubmluZy1ib3R0b20t
cmlnaHQtc3VzcGVuZC1waXBlLWMtcGxhbmVzLmh0bWwKICAgWzM2XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMwNzYvc2hhcmQtc2tsMTAvaWd0
QGttc19wbGFuZUBwbGFuZS1wYW5uaW5nLWJvdHRvbS1yaWdodC1zdXNwZW5kLXBpcGUtYy1wbGFu
ZXMuaHRtbAoKICAqIGlndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1jLWNvbnN0YW50LWFs
cGhhLW1pbjoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbRkFJTF1bMzddIChbZmRvIzEwODE0
NV0pIC0+IFtQQVNTXVszOF0gKzEgc2ltaWxhciBpc3N1ZQogICBbMzddOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MTMyL3NoYXJkLXNrbDYvaWd0QGtt
c19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWMtY29uc3RhbnQtYWxwaGEtbWluLmh0bWwKICAgWzM4
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMw
NzYvc2hhcmQtc2tsMTAvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWMtY29uc3RhbnQt
YWxwaGEtbWluLmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5lX2xvd3Jlc0BwaXBlLWEtdGlsaW5nLXg6
CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW0ZBSUxdWzM5XSAoW2ZkbyMxMDMxNjZdKSAtPiBb
UEFTU11bNDBdCiAgIFszOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzYxMzIvc2hhcmQtaWNsYjQvaWd0QGttc19wbGFuZV9sb3dyZXNAcGlwZS1hLXRp
bGluZy14Lmh0bWwKICAgWzQwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTMwNzYvc2hhcmQtaWNsYjIvaWd0QGttc19wbGFuZV9sb3dyZXNAcGlw
ZS1hLXRpbGluZy14Lmh0bWwKCiAgKiBpZ3RAa21zX3BzckBwc3IyX3Nwcml0ZV9tbWFwX2d0dDoK
ICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbU0tJUF1bNDFdIChbZmRvIzEwOTQ0MV0pIC0+IFtQ
QVNTXVs0Ml0gKzEgc2ltaWxhciBpc3N1ZQogICBbNDFdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MTMyL3NoYXJkLWljbGI1L2lndEBrbXNfcHNyQHBz
cjJfc3ByaXRlX21tYXBfZ3R0Lmh0bWwKICAgWzQyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMwNzYvc2hhcmQtaWNsYjIvaWd0QGttc19wc3JA
cHNyMl9zcHJpdGVfbW1hcF9ndHQuaHRtbAoKICAqIGlndEBrbXNfc2V0bW9kZUBiYXNpYzoKICAg
IC0gc2hhcmQtYXBsOiAgICAgICAgICBbRkFJTF1bNDNdIChbZmRvIzk5OTEyXSkgLT4gW1BBU1Nd
WzQ0XQogICBbNDNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82MTMyL3NoYXJkLWFwbDMvaWd0QGttc19zZXRtb2RlQGJhc2ljLmh0bWwKICAgWzQ0XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMwNzYv
c2hhcmQtYXBsNy9pZ3RAa21zX3NldG1vZGVAYmFzaWMuaHRtbAoKICAKICBbZmRvIzEwMDM2OF06
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMDM2OAogIFtm
ZG8jMTAzMTY2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTAzMTY2CiAgW2ZkbyMxMDMxNjddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMDMxNjcKICBbZmRvIzEwMzM1OV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzM1OQogIFtmZG8jMTA0MTA4XTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA0MTA4CiAgW2ZkbyMxMDQ4NzNdOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDQ4NzMKICBbZmRv
IzEwNTM2M106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEw
NTM2MwogIFtmZG8jMTA3ODA3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTA3ODA3CiAgW2ZkbyMxMDc5MzFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Au
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc5MzEKICBbZmRvIzEwODA0MF06IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwODA0MAogIFtmZG8jMTA4MTM0XTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4MTM0CiAgW2ZkbyMx
MDgxNDVdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDgx
NDUKICBbZmRvIzEwODM0MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTEwODM0MQogIFtmZG8jMTA4NTY2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MTA4NTY2CiAgW2ZkbyMxMDk0NDFdOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDk0NDEKICBbZmRvIzEwOTY0Ml06IGh0dHBz
Oi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTY0MgogIFtmZG8jMTA5
NjczXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5Njcz
CiAgW2ZkbyMxMTA0MDNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMTA0MDMKICBbZmRvIzk5OTEyXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9OTk5MTIKICBbay5vcmcjMTk4MTMzXTogaHR0cHM6Ly9idWd6aWxsYS5r
ZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0xOTgxMzMKCgpQYXJ0aWNpcGF0aW5nIGhvc3RzICgx
MCAtPiAxMCkKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgogIEFkZGl0aW9uYWwgKDEp
OiBwaWctc25iLTI2MDAgCiAgTWlzc2luZyAgICAoMSk6IHBpZy1oc3ctNDc3MHIgCgoKQnVpbGQg
Y2hhbmdlcwotLS0tLS0tLS0tLS0tCgogICogTGludXg6IENJX0RSTV82MTMyIC0+IFBhdGNod29y
a18xMzA3NgoKICBDSV9EUk1fNjEzMjogNzg4NTBiNDgwYzU0MmIyZTEwZGE1YTkzYWZhYzJlMTMz
MDc5MDljYiBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIElH
VF81MDEwOiA2MzFmM2FjMmU3OGM4ZDYzMzJhZmM2OTNiZjI5MGFlMjNkOGQ1Njg1IEAgZ2l0Oi8v
YW5vbmdpdC5mcmVlZGVza3RvcC5vcmcveG9yZy9hcHAvaW50ZWwtZ3B1LXRvb2xzCiAgUGF0Y2h3
b3JrXzEzMDc2OiA2YzYyYzg1ZDQ1NTg2ZjAxMWMyNzc0NWRjMmRmODBkY2Q2YTI4YjU4IEAgZ2l0
Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgcGlnbGl0XzQ1MDk6IGZk
YzVhNGNhMTExMjRhYjg0MTNjNzk4ODg5NmVlYzRjOTczMzY2OTQgQCBnaXQ6Ly9hbm9uZ2l0LmZy
ZWVkZXNrdG9wLm9yZy9waWdsaXQKCj09IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzA3Ni8K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
