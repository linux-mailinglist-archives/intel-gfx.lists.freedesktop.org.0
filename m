Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 203712B0D0
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2019 10:57:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F07C48972C;
	Mon, 27 May 2019 08:57:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2C7E68972C;
 Mon, 27 May 2019 08:57:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 25AE9A0073;
 Mon, 27 May 2019 08:57:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 27 May 2019 08:57:55 -0000
Message-ID: <20190527085755.25361.94130@emeril.freedesktop.org>
References: <20190524185253.1088-1-jani.nikula@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190524185253.1088-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EIGT=3A_success_for_drm/?=
 =?utf-8?q?i915=3A_make_REG=5FBIT=28=29_and_REG=5FGENMASK=28=29_work_with_?=
 =?utf-8?q?variables?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IG1ha2UgUkVHX0JJVCgpIGFu
ZCBSRUdfR0VOTUFTSygpIHdvcmsgd2l0aCB2YXJpYWJsZXMKVVJMICAgOiBodHRwczovL3BhdGNo
d29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYxMTI5LwpTdGF0ZSA6IHN1Y2Nlc3MKCj09IFN1
bW1hcnkgPT0KCkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzYxNDJfZnVsbCAtPiBQ
YXRjaHdvcmtfMTMwOTlfZnVsbAo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09CgpTdW1tYXJ5Ci0tLS0tLS0KCiAgKipTVUNDRVNTKioKCiAgTm8gcmVn
cmVzc2lvbnMgZm91bmQuCgogIAoKS25vd24gaXNzdWVzCi0tLS0tLS0tLS0tLQoKICBIZXJlIGFy
ZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTMwOTlfZnVsbCB0aGF0IGNvbWUgZnJv
bSBrbm93biBpc3N1ZXM6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIElzc3VlcyBoaXQgIyMj
IwoKICAqIGlndEBnZW1fZWlvQHVud2VkZ2Utc3RyZXNzOgogICAgLSBzaGFyZC1zbmI6ICAgICAg
ICAgIFtQQVNTXVsxXSAtPiBbRkFJTF1bMl0gKFtmZG8jMTA5NjYxXSkKICAgWzFdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MTQyL3NoYXJkLXNuYjUv
aWd0QGdlbV9laW9AdW53ZWRnZS1zdHJlc3MuaHRtbAogICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMDk5L3NoYXJkLXNuYjEvaWd0QGdl
bV9laW9AdW53ZWRnZS1zdHJlc3MuaHRtbAoKICAqIGlndEBpOTE1X3BtX3JwbUBjdXJzb3ItZHBt
czoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bM10gLT4gW0lOQ09NUExFVEVdWzRd
IChbZmRvIzEwNzgwN10pCiAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNjE0Mi9zaGFyZC1za2wyL2lndEBpOTE1X3BtX3JwbUBjdXJzb3ItZHBt
cy5odG1sCiAgIFs0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTMwOTkvc2hhcmQtc2tsOC9pZ3RAaTkxNV9wbV9ycG1AY3Vyc29yLWRwbXMuaHRt
bAoKICAqIGlndEBpOTE1X3BtX3JwbUBnZW0tZXhlY2J1ZjoKICAgIC0gc2hhcmQtc2tsOiAgICAg
ICAgICBbUEFTU11bNV0gLT4gW0lOQ09NUExFVEVdWzZdIChbZmRvIzEwNzgwM10gLyBbZmRvIzEw
NzgwN10pCiAgIFs1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNjE0Mi9zaGFyZC1za2wxL2lndEBpOTE1X3BtX3JwbUBnZW0tZXhlY2J1Zi5odG1sCiAg
IFs2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTMwOTkvc2hhcmQtc2tsNy9pZ3RAaTkxNV9wbV9ycG1AZ2VtLWV4ZWNidWYuaHRtbAoKICAqIGln
dEBpOTE1X3N1c3BlbmRAZmVuY2UtcmVzdG9yZS10aWxlZDJ1bnRpbGVkOgogICAgLSBzaGFyZC1h
cGw6ICAgICAgICAgIFtQQVNTXVs3XSAtPiBbRE1FU0ctV0FSTl1bOF0gKFtmZG8jMTA4NTY2XSkg
KzIgc2ltaWxhciBpc3N1ZXMKICAgWzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82MTQyL3NoYXJkLWFwbDcvaWd0QGk5MTVfc3VzcGVuZEBmZW5jZS1y
ZXN0b3JlLXRpbGVkMnVudGlsZWQuaHRtbAogICBbOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMDk5L3NoYXJkLWFwbDMvaWd0QGk5MTVfc3Vz
cGVuZEBmZW5jZS1yZXN0b3JlLXRpbGVkMnVudGlsZWQuaHRtbAoKICAqIGlndEBrbXNfY3Vyc29y
X2NyY0BwaXBlLWEtY3Vyc29yLXN1c3BlbmQ6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BB
U1NdWzldIC0+IFtJTkNPTVBMRVRFXVsxMF0gKFtmZG8jMTEwNzQxXSkKICAgWzldOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MTQyL3NoYXJkLXNrbDcv
aWd0QGttc19jdXJzb3JfY3JjQHBpcGUtYS1jdXJzb3Itc3VzcGVuZC5odG1sCiAgIFsxMF06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMDk5L3No
YXJkLXNrbDYvaWd0QGttc19jdXJzb3JfY3JjQHBpcGUtYS1jdXJzb3Itc3VzcGVuZC5odG1sCgog
ICogaWd0QGttc19jdXJzb3JfbGVnYWN5QDJ4LWxvbmctY3Vyc29yLXZzLWZsaXAtbGVnYWN5Ogog
ICAgLSBzaGFyZC1oc3c6ICAgICAgICAgIFtQQVNTXVsxMV0gLT4gW0ZBSUxdWzEyXSAoW2ZkbyMx
MDU3NjddKQogICBbMTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV82MTQyL3NoYXJkLWhzdzUvaWd0QGttc19jdXJzb3JfbGVnYWN5QDJ4LWxvbmctY3Vy
c29yLXZzLWZsaXAtbGVnYWN5Lmh0bWwKICAgWzEyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMwOTkvc2hhcmQtaHN3MS9pZ3RAa21zX2N1cnNv
cl9sZWdhY3lAMngtbG9uZy1jdXJzb3ItdnMtZmxpcC1sZWdhY3kuaHRtbAoKICAqIGlndEBrbXNf
ZHBfZHNjQGJhc2ljLWRzYy1lbmFibGUtZWRwOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQ
QVNTXVsxM10gLT4gW1NLSVBdWzE0XSAoW2ZkbyMxMDkzNDldKQogICBbMTNdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MTQyL3NoYXJkLWljbGIyL2ln
dEBrbXNfZHBfZHNjQGJhc2ljLWRzYy1lbmFibGUtZWRwLmh0bWwKICAgWzE0XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMwOTkvc2hhcmQtaWNs
YjgvaWd0QGttc19kcF9kc2NAYmFzaWMtZHNjLWVuYWJsZS1lZHAuaHRtbAoKICAqIGlndEBrbXNf
ZmxpcEAyeC1wbGFpbi1mbGlwOgogICAgLSBzaGFyZC1oc3c6ICAgICAgICAgIFtQQVNTXVsxNV0g
LT4gW1NLSVBdWzE2XSAoW2ZkbyMxMDkyNzFdKSArOCBzaW1pbGFyIGlzc3VlcwogICBbMTVdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MTQyL3NoYXJk
LWhzdzYvaWd0QGttc19mbGlwQDJ4LXBsYWluLWZsaXAuaHRtbAogICBbMTZdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzA5OS9zaGFyZC1oc3cx
L2lndEBrbXNfZmxpcEAyeC1wbGFpbi1mbGlwLmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBAZmxpcC12
cy1leHBpcmVkLXZibGFuay1pbnRlcnJ1cHRpYmxlOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAg
IFtQQVNTXVsxN10gLT4gW0ZBSUxdWzE4XSAoW2ZkbyMxMDUzNjNdKQogICBbMTddOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MTQyL3NoYXJkLXNrbDgv
aWd0QGttc19mbGlwQGZsaXAtdnMtZXhwaXJlZC12YmxhbmstaW50ZXJydXB0aWJsZS5odG1sCiAg
IFsxOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzEzMDk5L3NoYXJkLXNrbDEwL2lndEBrbXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rLWlu
dGVycnVwdGlibGUuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNy
LTFwLXByaW1zY3JuLWN1ci1pbmRmYi1kcmF3LXJlbmRlcjoKICAgIC0gc2hhcmQtaWNsYjogICAg
ICAgICBbUEFTU11bMTldIC0+IFtGQUlMXVsyMF0gKFtmZG8jMTAzMTY3XSkgKzQgc2ltaWxhciBp
c3N1ZXMKICAgWzE5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNjE0Mi9zaGFyZC1pY2xiMi9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bz
ci0xcC1wcmltc2Nybi1jdXItaW5kZmItZHJhdy1yZW5kZXIuaHRtbAogICBbMjBdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzA5OS9zaGFyZC1p
Y2xiOC9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmltc2Nybi1jdXIt
aW5kZmItZHJhdy1yZW5kZXIuaHRtbAoKICAqIGlndEBrbXNfcGxhbmVfbG93cmVzQHBpcGUtYS10
aWxpbmcteDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMjFdIC0+IFtGQUlMXVsy
Ml0gKFtmZG8jMTAzMTY2XSkKICAgWzIxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNjE0Mi9zaGFyZC1pY2xiNi9pZ3RAa21zX3BsYW5lX2xvd3Jlc0Bw
aXBlLWEtdGlsaW5nLXguaHRtbAogICBbMjJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzA5OS9zaGFyZC1pY2xiNi9pZ3RAa21zX3BsYW5lX2xv
d3Jlc0BwaXBlLWEtdGlsaW5nLXguaHRtbAoKICAqIGlndEBrbXNfcHNyMl9zdUBmcm9udGJ1ZmZl
cjoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMjNdIC0+IFtTS0lQXVsyNF0gKFtm
ZG8jMTA5NjQyXSkKICAgWzIzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNjE0Mi9zaGFyZC1pY2xiMi9pZ3RAa21zX3BzcjJfc3VAZnJvbnRidWZmZXIu
aHRtbAogICBbMjRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xMzA5OS9zaGFyZC1pY2xiOC9pZ3RAa21zX3BzcjJfc3VAZnJvbnRidWZmZXIuaHRt
bAoKICAqIGlndEBrbXNfcHNyQHBzcjJfY3Vyc29yX21tYXBfY3B1OgogICAgLSBzaGFyZC1pY2xi
OiAgICAgICAgIFtQQVNTXVsyNV0gLT4gW1NLSVBdWzI2XSAoW2ZkbyMxMDk0NDFdKSArMiBzaW1p
bGFyIGlzc3VlcwogICBbMjVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV82MTQyL3NoYXJkLWljbGIyL2lndEBrbXNfcHNyQHBzcjJfY3Vyc29yX21tYXBf
Y3B1Lmh0bWwKICAgWzI2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTMwOTkvc2hhcmQtaWNsYjMvaWd0QGttc19wc3JAcHNyMl9jdXJzb3JfbW1h
cF9jcHUuaHRtbAoKICAqIGlndEBrbXNfc3lzZnNfZWRpZF90aW1pbmc6CiAgICAtIHNoYXJkLWlj
bGI6ICAgICAgICAgW1BBU1NdWzI3XSAtPiBbRkFJTF1bMjhdIChbZmRvIzEwMDA0N10pCiAgIFsy
N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYxNDIv
c2hhcmQtaWNsYjEvaWd0QGttc19zeXNmc19lZGlkX3RpbWluZy5odG1sCiAgIFsyOF06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMDk5L3NoYXJk
LWljbGIzL2lndEBrbXNfc3lzZnNfZWRpZF90aW1pbmcuaHRtbAogICAgLSBzaGFyZC1oc3c6ICAg
ICAgICAgIFtQQVNTXVsyOV0gLT4gW0ZBSUxdWzMwXSAoW2ZkbyMxMDAwNDddKQogICBbMjldOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MTQyL3NoYXJk
LWhzdzYvaWd0QGttc19zeXNmc19lZGlkX3RpbWluZy5odG1sCiAgIFszMF06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMDk5L3NoYXJkLWhzdzEv
aWd0QGttc19zeXNmc19lZGlkX3RpbWluZy5odG1sCgogICogaWd0QGttc192YmxhbmtAcGlwZS1h
LXRzLWNvbnRpbnVhdGlvbi1zdXNwZW5kOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNT
XVszMV0gLT4gW0lOQ09NUExFVEVdWzMyXSAoW2ZkbyMxMDQxMDhdKQogICBbMzFdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MTQyL3NoYXJkLXNrbDMv
aWd0QGttc192YmxhbmtAcGlwZS1hLXRzLWNvbnRpbnVhdGlvbi1zdXNwZW5kLmh0bWwKICAgWzMy
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMw
OTkvc2hhcmQtc2tsMS9pZ3RAa21zX3ZibGFua0BwaXBlLWEtdHMtY29udGludWF0aW9uLXN1c3Bl
bmQuaHRtbAoKICAqIGlndEBwcmltZV9idXN5QHdhaXQtaGFuZy1ibHQ6CiAgICAtIHNoYXJkLWlj
bGI6ICAgICAgICAgW1BBU1NdWzMzXSAtPiBbSU5DT01QTEVURV1bMzRdIChbZmRvIzEwNzcxM10p
CiAgIFszM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzYxNDIvc2hhcmQtaWNsYjcvaWd0QHByaW1lX2J1c3lAd2FpdC1oYW5nLWJsdC5odG1sCiAgIFsz
NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEz
MDk5L3NoYXJkLWljbGI3L2lndEBwcmltZV9idXN5QHdhaXQtaGFuZy1ibHQuaHRtbAoKICAKIyMj
IyBQb3NzaWJsZSBmaXhlcyAjIyMjCgogICogaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHZlY3MwLXMz
OgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtETUVTRy1XQVJOXVszNV0gKFtmZG8jMTA4NTY2
XSkgLT4gW1BBU1NdWzM2XSArNSBzaW1pbGFyIGlzc3VlcwogICBbMzVdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MTQyL3NoYXJkLWFwbDQvaWd0QGdl
bV9jdHhfaXNvbGF0aW9uQHZlY3MwLXMzLmh0bWwKICAgWzM2XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMwOTkvc2hhcmQtYXBsNC9pZ3RAZ2Vt
X2N0eF9pc29sYXRpb25AdmVjczAtczMuaHRtbAoKICAqIGlndEBnZW1fZXhlY19zY2hlZHVsZUBw
cmVlbXB0aXZlLWhhbmctcmVuZGVyOgogICAgLSBzaGFyZC1nbGs6ICAgICAgICAgIFtJTkNPTVBM
RVRFXVszN10gKFtmZG8jMTAzMzU5XSAvIFtrLm9yZyMxOTgxMzNdKSAtPiBbUEFTU11bMzhdCiAg
IFszN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYx
NDIvc2hhcmQtZ2xrNy9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJlZW1wdGl2ZS1oYW5nLXJlbmRl
ci5odG1sCiAgIFszOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzEzMDk5L3NoYXJkLWdsazgvaWd0QGdlbV9leGVjX3NjaGVkdWxlQHByZWVtcHRp
dmUtaGFuZy1yZW5kZXIuaHRtbAoKICAqIGlndEBnZW1fdGlsZWRfc3dhcHBpbmdAbm9uLXRocmVh
ZGVkOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtETUVTRy1XQVJOXVszOV0gKFtmZG8jMTA4
Njg2XSkgLT4gW1BBU1NdWzQwXQogICBbMzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV82MTQyL3NoYXJkLWFwbDgvaWd0QGdlbV90aWxlZF9zd2FwcGlu
Z0Bub24tdGhyZWFkZWQuaHRtbAogICBbNDBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzA5OS9zaGFyZC1hcGwxL2lndEBnZW1fdGlsZWRfc3dh
cHBpbmdAbm9uLXRocmVhZGVkLmh0bWwKCiAgKiBpZ3RAZ2VtX3dvcmthcm91bmRzQHN1c3BlbmQt
cmVzdW1lLWNvbnRleHQ6CiAgICAtIHNoYXJkLWtibDogICAgICAgICAgW0RNRVNHLVdBUk5dWzQx
XSAoW2ZkbyMxMDg1NjZdKSAtPiBbUEFTU11bNDJdCiAgIFs0MV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYxNDIvc2hhcmQta2JsMS9pZ3RAZ2VtX3dv
cmthcm91bmRzQHN1c3BlbmQtcmVzdW1lLWNvbnRleHQuaHRtbAogICBbNDJdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzA5OS9zaGFyZC1rYmwz
L2lndEBnZW1fd29ya2Fyb3VuZHNAc3VzcGVuZC1yZXN1bWUtY29udGV4dC5odG1sCgogICogaWd0
QGk5MTVfcG1fcnBtQHN5c3RlbS1zdXNwZW5kOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtJ
TkNPTVBMRVRFXVs0M10gKFtmZG8jMTA0MTA4XSAvIFtmZG8jMTA3ODA3XSkgLT4gW1BBU1NdWzQ0
XQogICBbNDNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV82MTQyL3NoYXJkLXNrbDIvaWd0QGk5MTVfcG1fcnBtQHN5c3RlbS1zdXNwZW5kLmh0bWwKICAg
WzQ0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTMwOTkvc2hhcmQtc2tsMi9pZ3RAaTkxNV9wbV9ycG1Ac3lzdGVtLXN1c3BlbmQuaHRtbAoKICAq
IGlndEBpOTE1X3BtX3JwbUBzeXN0ZW0tc3VzcGVuZC1kZXZpY2VzOgogICAgLSBzaGFyZC1za2w6
ICAgICAgICAgIFtJTkNPTVBMRVRFXVs0NV0gKFtmZG8jMTA3ODA3XSkgLT4gW1BBU1NdWzQ2XQog
ICBbNDVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82
MTQyL3NoYXJkLXNrbDUvaWd0QGk5MTVfcG1fcnBtQHN5c3RlbS1zdXNwZW5kLWRldmljZXMuaHRt
bAogICBbNDZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xMzA5OS9zaGFyZC1za2w0L2lndEBpOTE1X3BtX3JwbUBzeXN0ZW0tc3VzcGVuZC1kZXZp
Y2VzLmh0bWwKCiAgKiBpZ3RAa21zX2N1cnNvcl9sZWdhY3lAMngtZmxpcC12cy1jdXJzb3ItbGVn
YWN5OgogICAgLSBzaGFyZC1nbGs6ICAgICAgICAgIFtGQUlMXVs0N10gKFtmZG8jMTA0ODczXSkg
LT4gW1BBU1NdWzQ4XQogICBbNDddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV82MTQyL3NoYXJkLWdsazIvaWd0QGttc19jdXJzb3JfbGVnYWN5QDJ4LWZs
aXAtdnMtY3Vyc29yLWxlZ2FjeS5odG1sCiAgIFs0OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMDk5L3NoYXJkLWdsazIvaWd0QGttc19jdXJz
b3JfbGVnYWN5QDJ4LWZsaXAtdnMtY3Vyc29yLWxlZ2FjeS5odG1sCgogICogaWd0QGttc19mbGlw
QGZsaXAtdnMtc3VzcGVuZDoKICAgIC0gc2hhcmQtaHN3OiAgICAgICAgICBbSU5DT01QTEVURV1b
NDldIChbZmRvIzEwMzU0MF0pIC0+IFtQQVNTXVs1MF0KICAgWzQ5XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjE0Mi9zaGFyZC1oc3c2L2lndEBrbXNf
ZmxpcEBmbGlwLXZzLXN1c3BlbmQuaHRtbAogICBbNTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzA5OS9zaGFyZC1oc3c2L2lndEBrbXNfZmxp
cEBmbGlwLXZzLXN1c3BlbmQuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmQt
aW50ZXJydXB0aWJsZToKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbSU5DT01QTEVURV1bNTFd
IChbZmRvIzEwOTUwN10pIC0+IFtQQVNTXVs1Ml0KICAgWzUxXTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjE0Mi9zaGFyZC1za2w3L2lndEBrbXNfZmxp
cEBmbGlwLXZzLXN1c3BlbmQtaW50ZXJydXB0aWJsZS5odG1sCiAgIFs1Ml06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMDk5L3NoYXJkLXNrbDYv
aWd0QGttc19mbGlwQGZsaXAtdnMtc3VzcGVuZC1pbnRlcnJ1cHRpYmxlLmh0bWwKCiAgKiBpZ3RA
a21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1wcmltc2Nybi1zaHJmYi1tc2ZsaXAtYmx0
OgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtGQUlMXVs1M10gKFtmZG8jMTAzMTY3XSkgLT4g
W1BBU1NdWzU0XSArNiBzaW1pbGFyIGlzc3VlcwogICBbNTNdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MTQyL3NoYXJkLWljbGI3L2lndEBrbXNfZnJv
bnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXByaW1zY3JuLXNocmZiLW1zZmxpcC1ibHQuaHRtbAog
ICBbNTRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xMzA5OS9zaGFyZC1pY2xiNi9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1w
cmltc2Nybi1zaHJmYi1tc2ZsaXAtYmx0Lmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3Ry
YWNraW5nQGZiY3Bzci0xcC1wcmltc2Nybi1zcHItaW5kZmItb25vZmY6CiAgICAtIHNoYXJkLXNr
bDogICAgICAgICAgW0ZBSUxdWzU1XSAoW2ZkbyMxMDMxNjddKSAtPiBbUEFTU11bNTZdCiAgIFs1
NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYxNDIv
c2hhcmQtc2tsNC9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmltc2Ny
bi1zcHItaW5kZmItb25vZmYuaHRtbAogICBbNTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzA5OS9zaGFyZC1za2w5L2lndEBrbXNfZnJvbnRi
dWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLXNwci1pbmRmYi1vbm9mZi5odG1sCgog
ICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItcmdiMTAxMDEwLWRyYXctcHdy
aXRlOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtGQUlMXVs1N10gKFtmZG8jMTAzMTY3XSAv
IFtmZG8jMTEwMzc5XSkgLT4gW1BBU1NdWzU4XQogICBbNTddOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MTQyL3NoYXJkLXNrbDQvaWd0QGttc19mcm9u
dGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItcmdiMTAxMDEwLWRyYXctcHdyaXRlLmh0bWwKICAgWzU4
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMw
OTkvc2hhcmQtc2tsOS9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci1yZ2IxMDEw
MTAtZHJhdy1wd3JpdGUuaHRtbAoKICAqIGlndEBrbXNfcHNyQHBzcjJfcHJpbWFyeV9tbWFwX2Nw
dToKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbU0tJUF1bNTldIChbZmRvIzEwOTQ0MV0pIC0+
IFtQQVNTXVs2MF0KICAgWzU5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNjE0Mi9zaGFyZC1pY2xiNS9pZ3RAa21zX3BzckBwc3IyX3ByaW1hcnlfbW1h
cF9jcHUuaHRtbAogICBbNjBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xMzA5OS9zaGFyZC1pY2xiMi9pZ3RAa21zX3BzckBwc3IyX3ByaW1hcnlf
bW1hcF9jcHUuaHRtbAoKICAqIGlndEBrbXNfc2V0bW9kZUBiYXNpYzoKICAgIC0gc2hhcmQtc2ts
OiAgICAgICAgICBbRkFJTF1bNjFdIChbZmRvIzk5OTEyXSkgLT4gW1BBU1NdWzYyXQogICBbNjFd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MTQyL3No
YXJkLXNrbDgvaWd0QGttc19zZXRtb2RlQGJhc2ljLmh0bWwKICAgWzYyXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMwOTkvc2hhcmQtc2tsMi9p
Z3RAa21zX3NldG1vZGVAYmFzaWMuaHRtbAogICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtGQUlM
XVs2M10gKFtmZG8jOTk5MTJdKSAtPiBbUEFTU11bNjRdCiAgIFs2M106IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYxNDIvc2hhcmQta2JsMi9pZ3RAa21z
X3NldG1vZGVAYmFzaWMuaHRtbAogICBbNjRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzA5OS9zaGFyZC1rYmwyL2lndEBrbXNfc2V0bW9kZUBi
YXNpYy5odG1sCgogIAojIyMjIFdhcm5pbmdzICMjIyMKCiAgKiBpZ3RAZ2VtX21tYXBfZ3R0QGZv
cmtlZC1iaWctY29weS14eToKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbVElNRU9VVF1bNjVd
IChbZmRvIzEwOTY3M10pIC0+IFtJTkNPTVBMRVRFXVs2Nl0gKFtmZG8jMTA3NzEzXSAvIFtmZG8j
MTA5MTAwXSkKICAgWzY1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNjE0Mi9zaGFyZC1pY2xiNS9pZ3RAZ2VtX21tYXBfZ3R0QGZvcmtlZC1iaWctY29w
eS14eS5odG1sCiAgIFs2Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzEzMDk5L3NoYXJkLWljbGIyL2lndEBnZW1fbW1hcF9ndHRAZm9ya2VkLWJp
Zy1jb3B5LXh5Lmh0bWwKCiAgKiBpZ3RAaTkxNV9wbV9ycG1AcGM4LXJlc2lkZW5jeToKICAgIC0g
c2hhcmQtc2tsOiAgICAgICAgICBbSU5DT01QTEVURV1bNjddIChbZmRvIzEwNzgwN10pIC0+IFtT
S0lQXVs2OF0gKFtmZG8jMTA5MjcxXSkKICAgWzY3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjE0Mi9zaGFyZC1za2w5L2lndEBpOTE1X3BtX3JwbUBw
YzgtcmVzaWRlbmN5Lmh0bWwKICAgWzY4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMwOTkvc2hhcmQtc2tsMS9pZ3RAaTkxNV9wbV9ycG1AcGM4
LXJlc2lkZW5jeS5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAt
cHJpbXNjcm4tY3VyLWluZGZiLW9ub2ZmOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtGQUlM
XVs2OV0gKFtmZG8jMTA4MDQwXSkgLT4gW0ZBSUxdWzcwXSAoW2ZkbyMxMDMxNjddKSArMSBzaW1p
bGFyIGlzc3VlCiAgIFs2OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzYxNDIvc2hhcmQtc2tsNC9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZi
Yy0xcC1wcmltc2Nybi1jdXItaW5kZmItb25vZmYuaHRtbAogICBbNzBdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzA5OS9zaGFyZC1za2w4L2ln
dEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXByaW1zY3JuLWN1ci1pbmRmYi1vbm9m
Zi5odG1sCgogIAogIFtmZG8jMTAwMDQ3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTAwMDQ3CiAgW2ZkbyMxMDMxNjZdOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMxNjYKICBbZmRvIzEwMzE2N106IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzE2NwogIFtmZG8jMTAzMzU5
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMzU5CiAg
W2ZkbyMxMDM1NDBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMDM1NDAKICBbZmRvIzEwNDEwOF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTEwNDEwOAogIFtmZG8jMTA0ODczXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA0ODczCiAgW2ZkbyMxMDUzNjNdOiBodHRwczovL2J1
Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDUzNjMKICBbZmRvIzEwNTc2N106
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNTc2NwogIFtm
ZG8jMTA3NzEzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTA3NzEzCiAgW2ZkbyMxMDc4MDNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMDc4MDMKICBbZmRvIzEwNzgwN106IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzgwNwogIFtmZG8jMTA4MDQwXTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4MDQwCiAgW2ZkbyMxMDg1NjZdOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDg1NjYKICBbZmRv
IzEwODY4Nl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEw
ODY4NgogIFtmZG8jMTA5MTAwXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTA5MTAwCiAgW2ZkbyMxMDkyNzFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Au
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkyNzEKICBbZmRvIzEwOTM0OV06IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTM0OQogIFtmZG8jMTA5NDQxXTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5NDQxCiAgW2ZkbyMx
MDk1MDddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDk1
MDcKICBbZmRvIzEwOTY0Ml06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTEwOTY0MgogIFtmZG8jMTA5NjYxXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MTA5NjYxCiAgW2ZkbyMxMDk2NzNdOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDk2NzMKICBbZmRvIzExMDM3OV06IGh0dHBz
Oi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDM3OQogIFtmZG8jMTEw
NzQxXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwNzQx
CiAgW2ZkbyM5OTkxMl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTk5OTEyCiAgW2sub3JnIzE5ODEzM106IGh0dHBzOi8vYnVnemlsbGEua2VybmVsLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTk4MTMzCgoKUGFydGljaXBhdGluZyBob3N0cyAoMTAgLT4gMTApCi0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBObyBjaGFuZ2VzIGluIHBhcnRpY2lwYXRp
bmcgaG9zdHMKCgpCdWlsZCBjaGFuZ2VzCi0tLS0tLS0tLS0tLS0KCiAgKiBMaW51eDogQ0lfRFJN
XzYxNDIgLT4gUGF0Y2h3b3JrXzEzMDk5CgogIENJX0RSTV82MTQyOiBhMzg4MDc1YjJiZGMzZjcx
NGMxMWU5MGFmYjMyZDY1ZTEyMTk4N2YzIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcv
Z2Z4LWNpL2xpbnV4CiAgSUdUXzUwMTU6IGNkZDZiMGE3NjMwNzYyY2VjMTQ1OTZiOTg2M2Y0MThi
NDhjMzJmNDYgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94b3JnL2FwcC9pbnRlbC1n
cHUtdG9vbHMKICBQYXRjaHdvcmtfMTMwOTk6IDI0YjAxNGQwNzhiYjUxMTkyYzY0NThhZWQ3NWMz
ZTY4MjM3Nzk2MDQgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgK
ICBwaWdsaXRfNDUwOTogZmRjNWE0Y2ExMTEyNGFiODQxM2M3OTg4ODk2ZWVjNGM5NzMzNjY5NCBA
IGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3BpZ2xpdAoKPT0gTG9ncyA9PQoKRm9yIG1v
cmUgZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzEzMDk5LwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
