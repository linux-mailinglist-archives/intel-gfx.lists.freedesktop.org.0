Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C60BB98F3A
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 11:23:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C02A6EACD;
	Thu, 22 Aug 2019 09:23:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 292446EACC;
 Thu, 22 Aug 2019 09:23:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1E539A00EF;
 Thu, 22 Aug 2019 09:23:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 22 Aug 2019 09:23:30 -0000
Message-ID: <20190822092330.14425.12646@emeril.freedesktop.org>
References: <20190821191606.17001-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190821191606.17001-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EIGT=3A_success_for_drm/?=
 =?utf-8?q?i915=3A_Generalise_the_clflush_dma-worker?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEdlbmVyYWxpc2UgdGhlIGNs
Zmx1c2ggZG1hLXdvcmtlcgpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9y
Zy9zZXJpZXMvNjU1NjEvClN0YXRlIDogc3VjY2VzcwoKPT0gU3VtbWFyeSA9PQoKQ0kgQnVnIExv
ZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNjc1OF9mdWxsIC0+IFBhdGNod29ya18xNDEyOF9mdWxs
Cj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KClN1
bW1hcnkKLS0tLS0tLQoKICAqKlNVQ0NFU1MqKgoKICBObyByZWdyZXNzaW9ucyBmb3VuZC4KCiAg
CgpLbm93biBpc3N1ZXMKLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5k
IGluIFBhdGNod29ya18xNDEyOF9mdWxsIHRoYXQgY29tZSBmcm9tIGtub3duIGlzc3VlczoKCiMj
IyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgSXNzdWVzIGhpdCAjIyMjCgogICogaWd0QGdlbV9jdHhf
aXNvbGF0aW9uQHJjczAtczM6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW1BBU1NdWzFdIC0+
IFtETUVTRy1XQVJOXVsyXSAoW2ZkbyMxMDg1NjZdKSArMyBzaW1pbGFyIGlzc3VlcwogICBbMV06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3NTgvc2hh
cmQtYXBsOC9pZ3RAZ2VtX2N0eF9pc29sYXRpb25AcmNzMC1zMy5odG1sCiAgIFsyXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxMjgvc2hhcmQt
YXBsNi9pZ3RAZ2VtX2N0eF9pc29sYXRpb25AcmNzMC1zMy5odG1sCgogICogaWd0QGdlbV9jdHhf
c2hhcmVkQGV4ZWMtc2luZ2xlLXRpbWVsaW5lLWJzZDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAg
ICBbUEFTU11bM10gLT4gW1NLSVBdWzRdIChbZmRvIzExMDg0MV0pCiAgIFszXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjc1OC9zaGFyZC1pY2xiNi9p
Z3RAZ2VtX2N0eF9zaGFyZWRAZXhlYy1zaW5nbGUtdGltZWxpbmUtYnNkLmh0bWwKICAgWzRdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDEyOC9z
aGFyZC1pY2xiMS9pZ3RAZ2VtX2N0eF9zaGFyZWRAZXhlYy1zaW5nbGUtdGltZWxpbmUtYnNkLmh0
bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfYmFsYW5jZXJAc21va2U6CiAgICAtIHNoYXJkLWljbGI6ICAg
ICAgICAgW1BBU1NdWzVdIC0+IFtTS0lQXVs2XSAoW2ZkbyMxMTA4NTRdKQogICBbNV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3NTgvc2hhcmQtaWNs
YjEvaWd0QGdlbV9leGVjX2JhbGFuY2VyQHNtb2tlLmh0bWwKICAgWzZdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDEyOC9zaGFyZC1pY2xiNi9p
Z3RAZ2VtX2V4ZWNfYmFsYW5jZXJAc21va2UuaHRtbAoKICAqIGlndEBnZW1fZXhlY19zY2hlZHVs
ZUByZW9yZGVyLXdpZGUtYnNkOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVs3XSAt
PiBbU0tJUF1bOF0gKFtmZG8jMTExMzI1XSkgKzMgc2ltaWxhciBpc3N1ZXMKICAgWzddOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NzU4L3NoYXJkLWlj
bGIzL2lndEBnZW1fZXhlY19zY2hlZHVsZUByZW9yZGVyLXdpZGUtYnNkLmh0bWwKICAgWzhdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDEyOC9z
aGFyZC1pY2xiNC9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcmVvcmRlci13aWRlLWJzZC5odG1sCgog
ICogaWd0QGttc19idXN5QGV4dGVuZGVkLXBhZ2VmbGlwLW1vZGVzZXQtaGFuZy1vbGRmYi1yZW5k
ZXItYjoKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbUEFTU11bOV0gLT4gW0RNRVNHLVdBUk5d
WzEwXSAoW2ZkbyMxMDM1NThdIC8gW2ZkbyMxMDU2MDJdIC8gW2ZkbyMxMTAyMjJdKQogICBbOV06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3NTgvc2hh
cmQta2JsNi9pZ3RAa21zX2J1c3lAZXh0ZW5kZWQtcGFnZWZsaXAtbW9kZXNldC1oYW5nLW9sZGZi
LXJlbmRlci1iLmh0bWwKICAgWzEwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTQxMjgvc2hhcmQta2JsNy9pZ3RAa21zX2J1c3lAZXh0ZW5kZWQt
cGFnZWZsaXAtbW9kZXNldC1oYW5nLW9sZGZiLXJlbmRlci1iLmh0bWwKCiAgKiBpZ3RAa21zX2N1
cnNvcl9sZWdhY3lAcGlwZS1jLXNpbmdsZS1tb3ZlOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAg
IFtQQVNTXVsxMV0gLT4gW0lOQ09NUExFVEVdWzEyXSAoW2ZkbyMxMDM5MjddKQogICBbMTFdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NzU4L3NoYXJk
LWFwbDIvaWd0QGttc19jdXJzb3JfbGVnYWN5QHBpcGUtYy1zaW5nbGUtbW92ZS5odG1sCiAgIFsx
Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0
MTI4L3NoYXJkLWFwbDUvaWd0QGttc19jdXJzb3JfbGVnYWN5QHBpcGUtYy1zaW5nbGUtbW92ZS5o
dG1sCgogICogaWd0QGttc19mbGlwQGZsaXAtdnMtZXhwaXJlZC12YmxhbmstaW50ZXJydXB0aWJs
ZToKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bMTNdIC0+IFtGQUlMXVsxNF0gKFtm
ZG8jMTA1MzYzXSkKICAgWzEzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNjc1OC9zaGFyZC1za2w0L2lndEBrbXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQt
dmJsYW5rLWludGVycnVwdGlibGUuaHRtbAogICBbMTRdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDEyOC9zaGFyZC1za2w5L2lndEBrbXNfZmxp
cEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rLWludGVycnVwdGlibGUuaHRtbAoKICAqIGlndEBrbXNf
ZmxpcEBmbGlwLXZzLXN1c3BlbmQtaW50ZXJydXB0aWJsZToKICAgIC0gc2hhcmQtc2tsOiAgICAg
ICAgICBbUEFTU11bMTVdIC0+IFtJTkNPTVBMRVRFXVsxNl0gKFtmZG8jMTA5NTA3XSkKICAgWzE1
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjc1OC9z
aGFyZC1za2w2L2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmQtaW50ZXJydXB0aWJsZS5odG1s
CiAgIFsxNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE0MTI4L3NoYXJkLXNrbDMvaWd0QGttc19mbGlwQGZsaXAtdnMtc3VzcGVuZC1pbnRlcnJ1
cHRpYmxlLmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBAcGxhaW4tZmxpcC10cy1jaGVjazoKICAgIC0g
c2hhcmQta2JsOiAgICAgICAgICBbUEFTU11bMTddIC0+IFtETUVTRy1XQVJOXVsxOF0gKFtmZG8j
MTAzNTU4XSAvIFtmZG8jMTA1NjAyXSkgKzE0IHNpbWlsYXIgaXNzdWVzCiAgIFsxN106IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3NTgvc2hhcmQta2Js
Ni9pZ3RAa21zX2ZsaXBAcGxhaW4tZmxpcC10cy1jaGVjay5odG1sCiAgIFsxOF06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MTI4L3NoYXJkLWti
bDcvaWd0QGttc19mbGlwQHBsYWluLWZsaXAtdHMtY2hlY2suaHRtbAoKICAqIGlndEBrbXNfZnJv
bnRidWZmZXJfdHJhY2tpbmdAZmJjLXJnYjU2NS1kcmF3LXB3cml0ZToKICAgIC0gc2hhcmQtaWNs
YjogICAgICAgICBbUEFTU11bMTldIC0+IFtGQUlMXVsyMF0gKFtmZG8jMTAzMTY3XSkgKzEgc2lt
aWxhciBpc3N1ZQogICBbMTldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV82NzU4L3NoYXJkLWljbGIyL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdA
ZmJjLXJnYjU2NS1kcmF3LXB3cml0ZS5odG1sCiAgIFsyMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MTI4L3NoYXJkLWljbGIyL2lndEBrbXNf
ZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLXJnYjU2NS1kcmF3LXB3cml0ZS5odG1sCgogICogaWd0
QGttc19wbGFuZV9sb3dyZXNAcGlwZS1hLXRpbGluZy14OgogICAgLSBzaGFyZC1pY2xiOiAgICAg
ICAgIFtQQVNTXVsyMV0gLT4gW0ZBSUxdWzIyXSAoW2ZkbyMxMDMxNjZdKQogICBbMjFdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NzU4L3NoYXJkLWlj
bGIzL2lndEBrbXNfcGxhbmVfbG93cmVzQHBpcGUtYS10aWxpbmcteC5odG1sCiAgIFsyMl06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MTI4L3No
YXJkLWljbGI0L2lndEBrbXNfcGxhbmVfbG93cmVzQHBpcGUtYS10aWxpbmcteC5odG1sCgogICog
aWd0QGttc19wc3IyX3N1QGZyb250YnVmZmVyOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQ
QVNTXVsyM10gLT4gW1NLSVBdWzI0XSAoW2ZkbyMxMDk2NDJdIC8gW2ZkbyMxMTEwNjhdKQogICBb
MjNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NzU4
L3NoYXJkLWljbGIyL2lndEBrbXNfcHNyMl9zdUBmcm9udGJ1ZmZlci5odG1sCiAgIFsyNF06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MTI4L3No
YXJkLWljbGI3L2lndEBrbXNfcHNyMl9zdUBmcm9udGJ1ZmZlci5odG1sCgogICogaWd0QGttc19z
ZXRtb2RlQGJhc2ljOgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtQQVNTXVsyNV0gLT4gW0ZB
SUxdWzI2XSAoW2ZkbyM5OTkxMl0pCiAgIFsyNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzY3NTgvc2hhcmQta2JsNy9pZ3RAa21zX3NldG1vZGVAYmFz
aWMuaHRtbAogICBbMjZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNDEyOC9zaGFyZC1rYmwzL2lndEBrbXNfc2V0bW9kZUBiYXNpYy5odG1sCgog
ICogaWd0QHBlcmZAYmxvY2tpbmc6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzI3
XSAtPiBbRkFJTF1bMjhdIChbZmRvIzExMDcyOF0pICsxIHNpbWlsYXIgaXNzdWUKICAgWzI3XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjc1OC9zaGFy
ZC1za2wzL2lndEBwZXJmQGJsb2NraW5nLmh0bWwKICAgWzI4XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxMjgvc2hhcmQtc2tsOC9pZ3RAcGVy
ZkBibG9ja2luZy5odG1sCgogICogaWd0QHByaW1lX2J1c3lAaGFuZy1ic2QyOgogICAgLSBzaGFy
ZC1pY2xiOiAgICAgICAgIFtQQVNTXVsyOV0gLT4gW1NLSVBdWzMwXSAoW2ZkbyMxMDkyNzZdKSAr
MjIgc2ltaWxhciBpc3N1ZXMKICAgWzI5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNjc1OC9zaGFyZC1pY2xiNC9pZ3RAcHJpbWVfYnVzeUBoYW5nLWJz
ZDIuaHRtbAogICBbMzBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNDEyOC9zaGFyZC1pY2xiMy9pZ3RAcHJpbWVfYnVzeUBoYW5nLWJzZDIuaHRt
bAoKICAKIyMjIyBQb3NzaWJsZSBmaXhlcyAjIyMjCgogICogaWd0QGdlbV9leGVjX3NjaGVkdWxl
QGluZGVwZW5kZW50LWJzZDI6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1NLSVBdWzMxXSAo
W2ZkbyMxMDkyNzZdKSAtPiBbUEFTU11bMzJdICsxNyBzaW1pbGFyIGlzc3VlcwogICBbMzFdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NzU4L3NoYXJk
LWljbGIzL2lndEBnZW1fZXhlY19zY2hlZHVsZUBpbmRlcGVuZGVudC1ic2QyLmh0bWwKICAgWzMy
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQx
Mjgvc2hhcmQtaWNsYjQvaWd0QGdlbV9leGVjX3NjaGVkdWxlQGluZGVwZW5kZW50LWJzZDIuaHRt
bAoKICAqIGlndEBnZW1fZXhlY19zY2hlZHVsZUB3aWRlLWJzZDoKICAgIC0gc2hhcmQtaWNsYjog
ICAgICAgICBbU0tJUF1bMzNdIChbZmRvIzExMTMyNV0pIC0+IFtQQVNTXVszNF0gKzggc2ltaWxh
ciBpc3N1ZXMKICAgWzMzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNjc1OC9zaGFyZC1pY2xiNC9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAd2lkZS1ic2Qu
aHRtbAogICBbMzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNDEyOC9zaGFyZC1pY2xiNy9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAd2lkZS1ic2Qu
aHRtbAoKICAqIGlndEBpOTE1X3N1c3BlbmRAZmVuY2UtcmVzdG9yZS11bnRpbGVkOgogICAgLSBz
aGFyZC1hcGw6ICAgICAgICAgIFtETUVTRy1XQVJOXVszNV0gKFtmZG8jMTA4NTY2XSkgLT4gW1BB
U1NdWzM2XSArMyBzaW1pbGFyIGlzc3VlcwogICBbMzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NzU4L3NoYXJkLWFwbDcvaWd0QGk5MTVfc3VzcGVu
ZEBmZW5jZS1yZXN0b3JlLXVudGlsZWQuaHRtbAogICBbMzZdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDEyOC9zaGFyZC1hcGw0L2lndEBpOTE1
X3N1c3BlbmRAZmVuY2UtcmVzdG9yZS11bnRpbGVkLmh0bWwKCiAgKiBpZ3RAa21zX2N1cnNvcl9s
ZWdhY3lAMngtbG9uZy1jdXJzb3ItdnMtZmxpcC1sZWdhY3k6CiAgICAtIHNoYXJkLWhzdzogICAg
ICAgICAgW0ZBSUxdWzM3XSAoW2ZkbyMxMDU3NjddKSAtPiBbUEFTU11bMzhdCiAgIFszN106IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3NTgvc2hhcmQt
aHN3MS9pZ3RAa21zX2N1cnNvcl9sZWdhY3lAMngtbG9uZy1jdXJzb3ItdnMtZmxpcC1sZWdhY3ku
aHRtbAogICBbMzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNDEyOC9zaGFyZC1oc3c3L2lndEBrbXNfY3Vyc29yX2xlZ2FjeUAyeC1sb25nLWN1
cnNvci12cy1mbGlwLWxlZ2FjeS5odG1sCgogICogaWd0QGttc19mbGlwQGZsaXAtdnMtZHBtcy1v
ZmYtdnMtbW9kZXNldDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbSU5DT01QTEVURV1bMzld
IChbZmRvIzEwNzcxM10pIC0+IFtQQVNTXVs0MF0gKzEgc2ltaWxhciBpc3N1ZQogICBbMzldOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NzU4L3NoYXJk
LWljbGI3L2lndEBrbXNfZmxpcEBmbGlwLXZzLWRwbXMtb2ZmLXZzLW1vZGVzZXQuaHRtbAogICBb
NDBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NDEyOC9zaGFyZC1pY2xiMi9pZ3RAa21zX2ZsaXBAZmxpcC12cy1kcG1zLW9mZi12cy1tb2Rlc2V0
Lmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBAZmxpcC12cy1leHBpcmVkLXZibGFuazoKICAgIC0gc2hh
cmQtc2tsOiAgICAgICAgICBbRkFJTF1bNDFdIChbZmRvIzEwNTM2M10pIC0+IFtQQVNTXVs0Ml0K
ICAgWzQxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
Njc1OC9zaGFyZC1za2w5L2lndEBrbXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rLmh0bWwK
ICAgWzQyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTQxMjgvc2hhcmQtc2tsNS9pZ3RAa21zX2ZsaXBAZmxpcC12cy1leHBpcmVkLXZibGFuay5o
dG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4t
cHJpLWluZGZiLWRyYXctcHdyaXRlOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtGQUlMXVs0
M10gKFtmZG8jMTAzMTY3XSkgLT4gW1BBU1NdWzQ0XSArMyBzaW1pbGFyIGlzc3VlcwogICBbNDNd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NzU4L3No
YXJkLWljbGI2L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3Ju
LXByaS1pbmRmYi1kcmF3LXB3cml0ZS5odG1sCiAgIFs0NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MTI4L3NoYXJkLWljbGIxL2lndEBrbXNf
ZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLXByaS1pbmRmYi1kcmF3LXB3
cml0ZS5odG1sCgogICogaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWMtY292ZXJhZ2Ut
N2VmYzoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbRkFJTF1bNDVdIChbZmRvIzEwODE0NV0g
LyBbZmRvIzExMDQwM10pIC0+IFtQQVNTXVs0Nl0KICAgWzQ1XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjc1OC9zaGFyZC1za2wyL2lndEBrbXNfcGxh
bmVfYWxwaGFfYmxlbmRAcGlwZS1jLWNvdmVyYWdlLTdlZmMuaHRtbAogICBbNDZdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDEyOC9zaGFyZC1z
a2w0L2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1jLWNvdmVyYWdlLTdlZmMuaHRtbAoK
ICAqIGlndEBrbXNfc2V0bW9kZUBiYXNpYzoKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbRkFJ
TF1bNDddIChbZmRvIzk5OTEyXSkgLT4gW1BBU1NdWzQ4XQogICBbNDddOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NzU4L3NoYXJkLWFwbDQvaWd0QGtt
c19zZXRtb2RlQGJhc2ljLmh0bWwKICAgWzQ4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxMjgvc2hhcmQtYXBsNS9pZ3RAa21zX3NldG1vZGVA
YmFzaWMuaHRtbAoKICAqIGlndEBrbXNfdmJsYW5rQHBpcGUtYS13YWl0LWZvcmtlZC1oYW5nOgog
ICAgLSBzaGFyZC1zbmI6ICAgICAgICAgIFtJTkNPTVBMRVRFXVs0OV0gKFtmZG8jMTA1NDExXSkg
LT4gW1BBU1NdWzUwXQogICBbNDldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV82NzU4L3NoYXJkLXNuYjEvaWd0QGttc192YmxhbmtAcGlwZS1hLXdhaXQt
Zm9ya2VkLWhhbmcuaHRtbAogICBbNTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNDEyOC9zaGFyZC1zbmIyL2lndEBrbXNfdmJsYW5rQHBpcGUt
YS13YWl0LWZvcmtlZC1oYW5nLmh0bWwKCiAgCiMjIyMgV2FybmluZ3MgIyMjIwoKICAqIGlndEBn
ZW1fY3R4X2lzb2xhdGlvbkB2Y3MxLW5vbnByaXY6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAg
W1NLSVBdWzUxXSAoW2ZkbyMxMDkyNzZdKSAtPiBbRkFJTF1bNTJdIChbZmRvIzExMTMyOV0pCiAg
IFs1MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3
NTgvc2hhcmQtaWNsYjMvaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHZjczEtbm9ucHJpdi5odG1sCiAg
IFs1Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE0MTI4L3NoYXJkLWljbGI0L2lndEBnZW1fY3R4X2lzb2xhdGlvbkB2Y3MxLW5vbnByaXYuaHRt
bAoKICAqIGlndEBnZW1fbW9jc19zZXR0aW5nc0Btb2NzLXJlc2V0LWJzZDI6CiAgICAtIHNoYXJk
LWljbGI6ICAgICAgICAgW1NLSVBdWzUzXSAoW2ZkbyMxMDkyNzZdKSAtPiBbRkFJTF1bNTRdIChb
ZmRvIzExMTMzMF0pICsxIHNpbWlsYXIgaXNzdWUKICAgWzUzXTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjc1OC9zaGFyZC1pY2xiOC9pZ3RAZ2VtX21v
Y3Nfc2V0dGluZ3NAbW9jcy1yZXNldC1ic2QyLmh0bWwKICAgWzU0XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxMjgvc2hhcmQtaWNsYjEvaWd0
QGdlbV9tb2NzX3NldHRpbmdzQG1vY3MtcmVzZXQtYnNkMi5odG1sCgogICogaWd0QGdlbV9tb2Nz
X3NldHRpbmdzQG1vY3Mtc2V0dGluZ3MtYnNkMjoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBb
RkFJTF1bNTVdIChbZmRvIzExMTMzMF0pIC0+IFtTS0lQXVs1Nl0gKFtmZG8jMTA5Mjc2XSkKICAg
WzU1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjc1
OC9zaGFyZC1pY2xiMS9pZ3RAZ2VtX21vY3Nfc2V0dGluZ3NAbW9jcy1zZXR0aW5ncy1ic2QyLmh0
bWwKICAgWzU2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTQxMjgvc2hhcmQtaWNsYjUvaWd0QGdlbV9tb2NzX3NldHRpbmdzQG1vY3Mtc2V0dGlu
Z3MtYnNkMi5odG1sCgogICogaWd0QGttc19jb25jdXJyZW50QHBpcGUtZjoKICAgIC0gc2hhcmQt
a2JsOiAgICAgICAgICBbU0tJUF1bNTddIChbZmRvIzEwOTI3MV0gLyBbZmRvIzEwOTI3OF0pIC0+
IFtTS0lQXVs1OF0gKFtmZG8jMTA1NjAyXSAvIFtmZG8jMTA5MjcxXSAvIFtmZG8jMTA5Mjc4XSkg
KzEgc2ltaWxhciBpc3N1ZQogICBbNTddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82NzU4L3NoYXJkLWtibDYvaWd0QGttc19jb25jdXJyZW50QHBpcGUt
Zi5odG1sCiAgIFs1OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE0MTI4L3NoYXJkLWtibDcvaWd0QGttc19jb25jdXJyZW50QHBpcGUtZi5odG1s
CgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtb2Zmc2NyZW4tcHJpLWlu
ZGZiLWRyYXctYmx0OgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtGQUlMXVs1OV0gKFtmZG8j
MTA4MDQwXSkgLT4gW0ZBSUxdWzYwXSAoW2ZkbyMxMDMxNjddKQogICBbNTldOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NzU4L3NoYXJkLXNrbDgvaWd0
QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtb2Zmc2NyZW4tcHJpLWluZGZiLWRyYXct
Ymx0Lmh0bWwKICAgWzYwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTQxMjgvc2hhcmQtc2tsNi9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5n
QGZiYy0xcC1vZmZzY3Jlbi1wcmktaW5kZmItZHJhdy1ibHQuaHRtbAoKICAqIGlndEBrbXNfZnJv
bnRidWZmZXJfdHJhY2tpbmdAcHNyLTJwLXByaW1zY3JuLWN1ci1pbmRmYi1kcmF3LXB3cml0ZToK
ICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbU0tJUF1bNjFdIChbZmRvIzEwOTI3MV0pIC0+IFtT
S0lQXVs2Ml0gKFtmZG8jMTA1NjAyXSAvIFtmZG8jMTA5MjcxXSkgKzE0IHNpbWlsYXIgaXNzdWVz
CiAgIFs2MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzY3NTgvc2hhcmQta2JsNi9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQHBzci0ycC1wcmlt
c2Nybi1jdXItaW5kZmItZHJhdy1wd3JpdGUuaHRtbAogICBbNjJdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDEyOC9zaGFyZC1rYmw3L2lndEBr
bXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAcHNyLTJwLXByaW1zY3JuLWN1ci1pbmRmYi1kcmF3LXB3
cml0ZS5odG1sCgogICogaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWEtYWxwaGEtb3Bh
cXVlLWZiOgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtGQUlMXVs2M10gKFtmZG8jMTA4MTQ1
XSkgLT4gW0RNRVNHLUZBSUxdWzY0XSAoW2ZkbyMxMDM1NThdIC8gW2ZkbyMxMDU2MDJdIC8gW2Zk
byMxMDgxNDVdKQogICBbNjNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV82NzU4L3NoYXJkLWtibDYvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBl
LWEtYWxwaGEtb3BhcXVlLWZiLmh0bWwKICAgWzY0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxMjgvc2hhcmQta2JsNy9pZ3RAa21zX3BsYW5l
X2FscGhhX2JsZW5kQHBpcGUtYS1hbHBoYS1vcGFxdWUtZmIuaHRtbAoKICAKICBbZmRvIzEwMzE2
Nl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzE2Ngog
IFtmZG8jMTAzMTY3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9MTAzMTY3CiAgW2ZkbyMxMDM1NThdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3No
b3dfYnVnLmNnaT9pZD0xMDM1NTgKICBbZmRvIzEwMzkyN106IGh0dHBzOi8vYnVncy5mcmVlZGVz
a3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzkyNwogIFtmZG8jMTA1MzYzXTogaHR0cHM6Ly9i
dWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA1MzYzCiAgW2ZkbyMxMDU0MTFd
OiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDU0MTEKICBb
ZmRvIzEwNTYwMl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lk
PTEwNTYwMgogIFtmZG8jMTA1NzY3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93
X2J1Zy5jZ2k/aWQ9MTA1NzY3CiAgW2ZkbyMxMDc3MTNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0
b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc3MTMKICBbZmRvIzEwODA0MF06IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwODA0MAogIFtmZG8jMTA4MTQ1XTog
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4MTQ1CiAgW2Zk
byMxMDg1NjZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0x
MDg1NjYKICBbZmRvIzEwOTI3MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19i
dWcuY2dpP2lkPTEwOTI3MQogIFtmZG8jMTA5Mjc2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9w
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5Mjc2CiAgW2ZkbyMxMDkyNzhdOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkyNzgKICBbZmRvIzEwOTUwN106IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTUwNwogIFtmZG8j
MTA5NjQyXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5
NjQyCiAgW2ZkbyMxMTAyMjJdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMTAyMjIKICBbZmRvIzExMDQwM106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTExMDQwMwogIFtmZG8jMTEwNzI4XTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwNzI4CiAgW2ZkbyMxMTA4NDFdOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA4NDEKICBbZmRvIzEx
MDg1NF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDg1
NAogIFtmZG8jMTExMDY4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTExMDY4CiAgW2ZkbyMxMTEzMjVdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMTEzMjUKICBbZmRvIzExMTMyOV06IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTMyOQogIFtmZG8jMTExMzMwXTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMzMwCiAgW2ZkbyM5OTkx
Ml06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTk5OTEyCgoK
UGFydGljaXBhdGluZyBob3N0cyAoMTAgLT4gMTApCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQoKICBObyBjaGFuZ2VzIGluIHBhcnRpY2lwYXRpbmcgaG9zdHMKCgpCdWlsZCBjaGFuZ2Vz
Ci0tLS0tLS0tLS0tLS0KCiAgKiBDSTogQ0ktMjAxOTA1MjkgLT4gTm9uZQogICogTGludXg6IENJ
X0RSTV82NzU4IC0+IFBhdGNod29ya18xNDEyOAoKICBDSS0yMDE5MDUyOTogMjAxOTA1MjkKICBD
SV9EUk1fNjc1ODogODYxNjQ0MGNhMjI0YzFmYTE3NzViNmIyZDIxYmFkN2RkZjY2NDQyYSBAIGdp
dDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIElHVF81MTQ2OiAzNTdk
YmUxODY5ZDg4YTJmMDhiY2VlNGVlYmNlZmY0ZWU5MDE0NDI0IEAgZ2l0Oi8vYW5vbmdpdC5mcmVl
ZGVza3RvcC5vcmcveG9yZy9hcHAvaW50ZWwtZ3B1LXRvb2xzCiAgUGF0Y2h3b3JrXzE0MTI4OiBk
ZGVkZmFlMDE0ZGM2YjA2OThlZDBlYjQ5OTllYjc4MGNiZWQxOTdiIEAgZ2l0Oi8vYW5vbmdpdC5m
cmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgcGlnbGl0XzQ1MDk6IGZkYzVhNGNhMTExMjRh
Yjg0MTNjNzk4ODg5NmVlYzRjOTczMzY2OTQgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9y
Zy9waWdsaXQKCj09IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDEyOC8KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
