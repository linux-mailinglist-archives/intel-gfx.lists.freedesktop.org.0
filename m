Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 257F0DA280
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 01:57:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77DFD6E9DF;
	Wed, 16 Oct 2019 23:56:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1722289D67;
 Wed, 16 Oct 2019 23:56:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 103B6A0137;
 Wed, 16 Oct 2019 23:56:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 16 Oct 2019 23:56:58 -0000
Message-ID: <20191016235658.14702.98541@emeril.freedesktop.org>
References: <20191016100255.27251-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191016100255.27251-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/?=
 =?utf-8?q?i915/execlist=3A_Trim_immediate_timeslice_expiry_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZXhlY2xpc3Q6IFRyaW0gaW1t
ZWRpYXRlIHRpbWVzbGljZSBleHBpcnkgKHJldjIpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsu
ZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82ODA4MC8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5
ID09CgpDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV83MTA1X2Z1bGwgLT4gUGF0Y2h3
b3JrXzE0ODMwX2Z1bGwKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PQoKU3VtbWFyeQotLS0tLS0tCgogICoqRkFJTFVSRSoqCgogIFNlcmlvdXMgdW5r
bm93biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNod29ya18xNDgzMF9mdWxsIGFic29sdXRlbHkg
bmVlZCB0byBiZQogIHZlcmlmaWVkIG1hbnVhbGx5LgogIAogIElmIHlvdSB0aGluayB0aGUgcmVw
b3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcwogIGludHJv
ZHVjZWQgaW4gUGF0Y2h3b3JrXzE0ODMwX2Z1bGwsIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVh
bSB0byBhbGxvdyB0aGVtCiAgdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGlj
aCB3aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuCgogIAoKUG9zc2libGUgbmV3IGlz
c3VlcwotLS0tLS0tLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMg
dGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE0ODMwX2Z1bGw6Cgoj
IyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMKCiAgKiBp
Z3RAZ2VtX2V4ZWNfc2NoZWR1bGVAc2VtYXBob3JlLXJlc29sdmU6CiAgICAtIHNoYXJkLXNrbDog
ICAgICAgICAgW1BBU1NdWzFdIC0+IFtGQUlMXVsyXQogICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxMDUvc2hhcmQtc2tsMi9pZ3RAZ2VtX2V4
ZWNfc2NoZWR1bGVAc2VtYXBob3JlLXJlc29sdmUuaHRtbAogICBbMl06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0ODMwL3NoYXJkLXNrbDEvaWd0
QGdlbV9leGVjX3NjaGVkdWxlQHNlbWFwaG9yZS1yZXNvbHZlLmh0bWwKICAgIC0gc2hhcmQta2Js
OiAgICAgICAgICBbUEFTU11bM10gLT4gW0ZBSUxdWzRdCiAgIFszXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzEwNS9zaGFyZC1rYmwzL2lndEBnZW1f
ZXhlY19zY2hlZHVsZUBzZW1hcGhvcmUtcmVzb2x2ZS5odG1sCiAgIFs0XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4MzAvc2hhcmQta2JsMy9p
Z3RAZ2VtX2V4ZWNfc2NoZWR1bGVAc2VtYXBob3JlLXJlc29sdmUuaHRtbAogICAgLSBzaGFyZC1h
cGw6ICAgICAgICAgIFtQQVNTXVs1XSAtPiBbRkFJTF1bNl0KICAgWzVdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MTA1L3NoYXJkLWFwbDUvaWd0QGdl
bV9leGVjX3NjaGVkdWxlQHNlbWFwaG9yZS1yZXNvbHZlLmh0bWwKICAgWzZdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDgzMC9zaGFyZC1hcGwx
L2lndEBnZW1fZXhlY19zY2hlZHVsZUBzZW1hcGhvcmUtcmVzb2x2ZS5odG1sCiAgICAtIHNoYXJk
LWdsazogICAgICAgICAgW1BBU1NdWzddIC0+IFtGQUlMXVs4XQogICBbN106IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxMDUvc2hhcmQtZ2xrMi9pZ3RA
Z2VtX2V4ZWNfc2NoZWR1bGVAc2VtYXBob3JlLXJlc29sdmUuaHRtbAogICBbOF06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0ODMwL3NoYXJkLWds
azYvaWd0QGdlbV9leGVjX3NjaGVkdWxlQHNlbWFwaG9yZS1yZXNvbHZlLmh0bWwKICAgIC0gc2hh
cmQtaWNsYjogICAgICAgICBbUEFTU11bOV0gLT4gW0ZBSUxdWzEwXQogICBbOV06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxMDUvc2hhcmQtaWNsYjcv
aWd0QGdlbV9leGVjX3NjaGVkdWxlQHNlbWFwaG9yZS1yZXNvbHZlLmh0bWwKICAgWzEwXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4MzAvc2hh
cmQtaWNsYjEvaWd0QGdlbV9leGVjX3NjaGVkdWxlQHNlbWFwaG9yZS1yZXNvbHZlLmh0bWwKCiAg
CiMjIyMgU3VwcHJlc3NlZCAjIyMjCgogIFRoZSBmb2xsb3dpbmcgcmVzdWx0cyBjb21lIGZyb20g
dW50cnVzdGVkIG1hY2hpbmVzLCB0ZXN0cywgb3Igc3RhdHVzZXMuCiAgVGhleSBkbyBub3QgYWZm
ZWN0IHRoZSBvdmVyYWxsIHJlc3VsdC4KCiAgKiB7aWd0QGRlYnVnZnNfdGVzdEBzeXNmc306CiAg
ICAtIHtzaGFyZC10Z2xifTogICAgICAgW1BBU1NdWzExXSAtPiBbSU5DT01QTEVURV1bMTJdCiAg
IFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcx
MDUvc2hhcmQtdGdsYjEvaWd0QGRlYnVnZnNfdGVzdEBzeXNmcy5odG1sCiAgIFsxMl06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0ODMwL3NoYXJk
LXRnbGI1L2lndEBkZWJ1Z2ZzX3Rlc3RAc3lzZnMuaHRtbAoKICAqIHtpZ3RAa21zX2N1cnNvcl9j
cmNAcGlwZS1kLWN1cnNvci01MTJ4NTEyLXNsaWRpbmd9OgogICAgLSB7c2hhcmQtdGdsYn06ICAg
ICAgIE5PVFJVTiAtPiBbU0tJUF1bMTNdICszIHNpbWlsYXIgaXNzdWVzCiAgIFsxM106IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0ODMwL3NoYXJk
LXRnbGIxL2lndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWQtY3Vyc29yLTUxMng1MTItc2xpZGluZy5o
dG1sCgogICoge2lndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWQtY3Vyc29yLWRwbXN9OgogICAgLSB7
c2hhcmQtdGdsYn06ICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bMTRdICsxIHNpbWlsYXIgaXNzdWUK
ICAgWzE0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTQ4MzAvc2hhcmQtdGdsYjYvaWd0QGttc19jdXJzb3JfY3JjQHBpcGUtZC1jdXJzb3ItZHBt
cy5odG1sCgogIApLbm93biBpc3N1ZXMKLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSBjaGFu
Z2VzIGZvdW5kIGluIFBhdGNod29ya18xNDgzMF9mdWxsIHRoYXQgY29tZSBmcm9tIGtub3duIGlz
c3VlczoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgSXNzdWVzIGhpdCAjIyMjCgogICogaWd0
QGdlbV9idXN5QGJhc2ljLWhhbmctcmNzMDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFT
U11bMTVdIC0+IFtJTkNPTVBMRVRFXVsxNl0gKFtmZG8jMTA3NzEzXSkgKzEgc2ltaWxhciBpc3N1
ZQogICBbMTVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV83MTA1L3NoYXJkLWljbGI2L2lndEBnZW1fYnVzeUBiYXNpYy1oYW5nLXJjczAuaHRtbAogICBb
MTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NDgzMC9zaGFyZC1pY2xiNy9pZ3RAZ2VtX2J1c3lAYmFzaWMtaGFuZy1yY3MwLmh0bWwKCiAgKiBp
Z3RAZ2VtX2N0eF9pc29sYXRpb25AYmNzMC1zMzoKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBb
UEFTU11bMTddIC0+IFtETUVTRy1XQVJOXVsxOF0gKFtmZG8jMTA4NTY2XSkgKzUgc2ltaWxhciBp
c3N1ZXMKICAgWzE3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNzEwNS9zaGFyZC1hcGw4L2lndEBnZW1fY3R4X2lzb2xhdGlvbkBiY3MwLXMzLmh0bWwK
ICAgWzE4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTQ4MzAvc2hhcmQtYXBsNy9pZ3RAZ2VtX2N0eF9pc29sYXRpb25AYmNzMC1zMy5odG1sCgog
ICogaWd0QGdlbV9jdHhfc2hhcmVkQGV4ZWMtc2luZ2xlLXRpbWVsaW5lLWJzZDoKICAgIC0gc2hh
cmQtaWNsYjogICAgICAgICBbUEFTU11bMTldIC0+IFtTS0lQXVsyMF0gKFtmZG8jMTEwODQxXSkK
ICAgWzE5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NzEwNS9zaGFyZC1pY2xiNi9pZ3RAZ2VtX2N0eF9zaGFyZWRAZXhlYy1zaW5nbGUtdGltZWxpbmUt
YnNkLmh0bWwKICAgWzIwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTQ4MzAvc2hhcmQtaWNsYjIvaWd0QGdlbV9jdHhfc2hhcmVkQGV4ZWMtc2lu
Z2xlLXRpbWVsaW5lLWJzZC5odG1sCgogICogaWd0QGdlbV9leGVjX2JhbGFuY2VyQHNtb2tlOgog
ICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVsyMV0gLT4gW1NLSVBdWzIyXSAoW2ZkbyMx
MTA4NTRdKQogICBbMjFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV83MTA1L3NoYXJkLWljbGIxL2lndEBnZW1fZXhlY19iYWxhbmNlckBzbW9rZS5odG1s
CiAgIFsyMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE0ODMwL3NoYXJkLWljbGI1L2lndEBnZW1fZXhlY19iYWxhbmNlckBzbW9rZS5odG1sCgog
ICogaWd0QGdlbV9leGVjX3NjaGVkdWxlQG91dC1vcmRlci1ic2QyOgogICAgLSBzaGFyZC1pY2xi
OiAgICAgICAgIFtQQVNTXVsyM10gLT4gW1NLSVBdWzI0XSAoW2ZkbyMxMDkyNzZdKSArMTQgc2lt
aWxhciBpc3N1ZXMKICAgWzIzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNzEwNS9zaGFyZC1pY2xiMS9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAb3V0LW9y
ZGVyLWJzZDIuaHRtbAogICBbMjRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNDgzMC9zaGFyZC1pY2xiNS9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVA
b3V0LW9yZGVyLWJzZDIuaHRtbAoKICAqIGlndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0LW90
aGVyLWNoYWluLWJzZDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMjVdIC0+IFtT
S0lQXVsyNl0gKFtmZG8jMTExMzI1XSkgKzkgc2ltaWxhciBpc3N1ZXMKICAgWzI1XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzEwNS9zaGFyZC1pY2xi
Ni9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJlZW1wdC1vdGhlci1jaGFpbi1ic2QuaHRtbAogICBb
MjZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NDgzMC9zaGFyZC1pY2xiMi9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJlZW1wdC1vdGhlci1jaGFp
bi1ic2QuaHRtbAoKICAqIGlndEBnZW1fdXNlcnB0cl9ibGl0c0BtYXAtZml4ZWQtaW52YWxpZGF0
ZS1idXN5OgogICAgLSBzaGFyZC1oc3c6ICAgICAgICAgIFtQQVNTXVsyN10gLT4gW0RNRVNHLVdB
Uk5dWzI4XSAoW2ZkbyMxMTE4NzBdKSArMiBzaW1pbGFyIGlzc3VlcwogICBbMjddOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MTA1L3NoYXJkLWhzdzcv
aWd0QGdlbV91c2VycHRyX2JsaXRzQG1hcC1maXhlZC1pbnZhbGlkYXRlLWJ1c3kuaHRtbAogICBb
MjhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NDgzMC9zaGFyZC1oc3c0L2lndEBnZW1fdXNlcnB0cl9ibGl0c0BtYXAtZml4ZWQtaW52YWxpZGF0
ZS1idXN5Lmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hhbmdjaGVjazoKICAgIC0g
c2hhcmQtaHN3OiAgICAgICAgICBbUEFTU11bMjldIC0+IFtETUVTRy1GQUlMXVszMF0gKFtmZG8j
MTExOTkxXSkKICAgWzI5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNzEwNS9zaGFyZC1oc3c1L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfaGFuZ2NoZWNr
Lmh0bWwKICAgWzMwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTQ4MzAvc2hhcmQtaHN3MS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hhbmdjaGVj
ay5odG1sCgogICogaWd0QGttc19mbGlwQGZsaXAtdnMtZXhwaXJlZC12YmxhbmstaW50ZXJydXB0
aWJsZToKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bMzFdIC0+IFtGQUlMXVszMl0g
KFtmZG8jMTA1MzYzXSkKICAgWzMxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNzEwNS9zaGFyZC1za2w1L2lndEBrbXNfZmxpcEBmbGlwLXZzLWV4cGly
ZWQtdmJsYW5rLWludGVycnVwdGlibGUuaHRtbAogICBbMzJdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDgzMC9zaGFyZC1za2wzL2lndEBrbXNf
ZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rLWludGVycnVwdGlibGUuaHRtbAoKICAqIGlndEBr
bXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLXN1c3BlbmQ6CiAgICAtIHNoYXJkLWljbGI6ICAg
ICAgICAgW1BBU1NdWzMzXSAtPiBbRkFJTF1bMzRdIChbZmRvIzEwMzE2N10pCiAgIFszM106IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxMDUvc2hhcmQt
aWNsYjIvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtc3VzcGVuZC5odG1sCiAgIFsz
NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0
ODMwL3NoYXJkLWljbGI2L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLXN1c3BlbmQu
aHRtbAoKICAqIGlndEBrbXNfcGxhbmVfbG93cmVzQHBpcGUtYS10aWxpbmcteToKICAgIC0gc2hh
cmQtaWNsYjogICAgICAgICBbUEFTU11bMzVdIC0+IFtGQUlMXVszNl0gKFtmZG8jMTAzMTY2XSkK
ICAgWzM1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NzEwNS9zaGFyZC1pY2xiMi9pZ3RAa21zX3BsYW5lX2xvd3Jlc0BwaXBlLWEtdGlsaW5nLXkuaHRt
bAogICBbMzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNDgzMC9zaGFyZC1pY2xiNi9pZ3RAa21zX3BsYW5lX2xvd3Jlc0BwaXBlLWEtdGlsaW5n
LXkuaHRtbAoKICAqIGlndEBrbXNfcHNyQG5vX2RycnM6CiAgICAtIHNoYXJkLWljbGI6ICAgICAg
ICAgW1BBU1NdWzM3XSAtPiBbRkFJTF1bMzhdIChbZmRvIzEwODM0MV0pCiAgIFszN106IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxMDUvc2hhcmQtaWNs
YjcvaWd0QGttc19wc3JAbm9fZHJycy5odG1sCiAgIFszOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0ODMwL3NoYXJkLWljbGIxL2lndEBrbXNf
cHNyQG5vX2RycnMuaHRtbAoKICAqIGlndEBrbXNfcHNyQHBzcjJfcHJpbWFyeV9tbWFwX2NwdToK
ICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMzldIC0+IFtTS0lQXVs0MF0gKFtmZG8j
MTA5NDQxXSkgKzMgc2ltaWxhciBpc3N1ZXMKICAgWzM5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzEwNS9zaGFyZC1pY2xiMi9pZ3RAa21zX3BzckBw
c3IyX3ByaW1hcnlfbW1hcF9jcHUuaHRtbAogICBbNDBdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDgzMC9zaGFyZC1pY2xiNC9pZ3RAa21zX3Bz
ckBwc3IyX3ByaW1hcnlfbW1hcF9jcHUuaHRtbAoKICAKIyMjIyBQb3NzaWJsZSBmaXhlcyAjIyMj
CgogICogaWd0QGdlbV9laW9AaW4tZmxpZ2h0LWNvbnRleHRzLWltbWVkaWF0ZToKICAgIC0gc2hh
cmQtc25iOiAgICAgICAgICBbRkFJTF1bNDFdIChbZmRvIzExMTkyNV0pIC0+IFtQQVNTXVs0Ml0K
ICAgWzQxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NzEwNS9zaGFyZC1zbmI3L2lndEBnZW1fZWlvQGluLWZsaWdodC1jb250ZXh0cy1pbW1lZGlhdGUu
aHRtbAogICBbNDJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNDgzMC9zaGFyZC1zbmI1L2lndEBnZW1fZWlvQGluLWZsaWdodC1jb250ZXh0cy1p
bW1lZGlhdGUuaHRtbAoKICAqIGlndEBnZW1fZXhlY19zY2hlZHVsZUBpbmRlcGVuZGVudC1ic2Qy
OgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtTS0lQXVs0M10gKFtmZG8jMTA5Mjc2XSkgLT4g
W1BBU1NdWzQ0XSArMjEgc2ltaWxhciBpc3N1ZXMKICAgWzQzXTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzEwNS9zaGFyZC1pY2xiOC9pZ3RAZ2VtX2V4
ZWNfc2NoZWR1bGVAaW5kZXBlbmRlbnQtYnNkMi5odG1sCiAgIFs0NF06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0ODMwL3NoYXJkLWljbGI0L2ln
dEBnZW1fZXhlY19zY2hlZHVsZUBpbmRlcGVuZGVudC1ic2QyLmh0bWwKCiAgKiBpZ3RAZ2VtX2V4
ZWNfc2NoZWR1bGVAcGktcmluZ2Z1bGwtYnNkOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtT
S0lQXVs0NV0gKFtmZG8jMTExMzI1XSkgLT4gW1BBU1NdWzQ2XSArMiBzaW1pbGFyIGlzc3Vlcwog
ICBbNDVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83
MTA1L3NoYXJkLWljbGIyL2lndEBnZW1fZXhlY19zY2hlZHVsZUBwaS1yaW5nZnVsbC1ic2QuaHRt
bAogICBbNDZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNDgzMC9zaGFyZC1pY2xiNi9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcGktcmluZ2Z1bGwt
YnNkLmh0bWwKCiAgKiBpZ3RAZ2VtX3BlcnNpc3RlbnRfcmVsb2NzQGZvcmtlZC1pbnRlcnJ1cHRp
YmxlLXRocmFzaC1pbmFjdGl2ZToKICAgIC0gc2hhcmQtaHN3OiAgICAgICAgICBbRkFJTF1bNDdd
IC0+IFtQQVNTXVs0OF0KICAgWzQ3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNzEwNS9zaGFyZC1oc3c2L2lndEBnZW1fcGVyc2lzdGVudF9yZWxvY3NA
Zm9ya2VkLWludGVycnVwdGlibGUtdGhyYXNoLWluYWN0aXZlLmh0bWwKICAgWzQ4XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4MzAvc2hhcmQt
aHN3Ni9pZ3RAZ2VtX3BlcnNpc3RlbnRfcmVsb2NzQGZvcmtlZC1pbnRlcnJ1cHRpYmxlLXRocmFz
aC1pbmFjdGl2ZS5odG1sCgogICogaWd0QGdlbV9wZXJzaXN0ZW50X3JlbG9jc0Bmb3JrZWQtaW50
ZXJydXB0aWJsZS10aHJhc2hpbmc6CiAgICAtIHNoYXJkLXNuYjogICAgICAgICAgW0ZBSUxdWzQ5
XSAtPiBbUEFTU11bNTBdCiAgIFs0OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzcxMDUvc2hhcmQtc25iMS9pZ3RAZ2VtX3BlcnNpc3RlbnRfcmVsb2Nz
QGZvcmtlZC1pbnRlcnJ1cHRpYmxlLXRocmFzaGluZy5odG1sCiAgIFs1MF06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0ODMwL3NoYXJkLXNuYjIv
aWd0QGdlbV9wZXJzaXN0ZW50X3JlbG9jc0Bmb3JrZWQtaW50ZXJydXB0aWJsZS10aHJhc2hpbmcu
aHRtbAoKICAqIGlndEBnZW1fdXNlcnB0cl9ibGl0c0BzeW5jLXVubWFwLWFmdGVyLWNsb3NlOgog
ICAgLSBzaGFyZC1oc3c6ICAgICAgICAgIFtETUVTRy1XQVJOXVs1MV0gKFtmZG8jMTExODcwXSkg
LT4gW1BBU1NdWzUyXQogICBbNTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV83MTA1L3NoYXJkLWhzdzgvaWd0QGdlbV91c2VycHRyX2JsaXRzQHN5bmMt
dW5tYXAtYWZ0ZXItY2xvc2UuaHRtbAogICBbNTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDgzMC9zaGFyZC1oc3cxL2lndEBnZW1fdXNlcnB0
cl9ibGl0c0BzeW5jLXVubWFwLWFmdGVyLWNsb3NlLmh0bWwKICAgIC0gc2hhcmQtZ2xrOiAgICAg
ICAgICBbRE1FU0ctV0FSTl1bNTNdIChbZmRvIzExMTg3MF0pIC0+IFtQQVNTXVs1NF0KICAgWzUz
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzEwNS9z
aGFyZC1nbGs1L2lndEBnZW1fdXNlcnB0cl9ibGl0c0BzeW5jLXVubWFwLWFmdGVyLWNsb3NlLmh0
bWwKICAgWzU0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTQ4MzAvc2hhcmQtZ2xrNS9pZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAc3luYy11bm1hcC1h
ZnRlci1jbG9zZS5odG1sCgogICogaWd0QGdlbV91c2VycHRyX2JsaXRzQHN5bmMtdW5tYXAtY3lj
bGVzOgogICAgLSBzaGFyZC1zbmI6ICAgICAgICAgIFtETUVTRy1XQVJOXVs1NV0gKFtmZG8jMTEx
ODcwXSkgLT4gW1BBU1NdWzU2XQogICBbNTVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV83MTA1L3NoYXJkLXNuYjYvaWd0QGdlbV91c2VycHRyX2JsaXRz
QHN5bmMtdW5tYXAtY3ljbGVzLmh0bWwKICAgWzU2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4MzAvc2hhcmQtc25iNy9pZ3RAZ2VtX3VzZXJw
dHJfYmxpdHNAc3luYy11bm1hcC1jeWNsZXMuaHRtbAoKICAqIGlndEBrbXNfYnVzeUBleHRlbmRl
ZC1tb2Rlc2V0LWhhbmctbmV3ZmItd2l0aC1yZXNldC1yZW5kZXItYjoKICAgIC0gc2hhcmQtaHN3
OiAgICAgICAgICBbSU5DT01QTEVURV1bNTddIChbZmRvIzEwMzU0MF0pIC0+IFtQQVNTXVs1OF0g
KzEgc2ltaWxhciBpc3N1ZQogICBbNTddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV83MTA1L3NoYXJkLWhzdzgvaWd0QGttc19idXN5QGV4dGVuZGVkLW1v
ZGVzZXQtaGFuZy1uZXdmYi13aXRoLXJlc2V0LXJlbmRlci1iLmh0bWwKICAgWzU4XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4MzAvc2hhcmQt
aHN3NS9pZ3RAa21zX2J1c3lAZXh0ZW5kZWQtbW9kZXNldC1oYW5nLW5ld2ZiLXdpdGgtcmVzZXQt
cmVuZGVyLWIuaHRtbAoKICAqIGlndEBrbXNfYnVzeUBleHRlbmRlZC1tb2Rlc2V0LWhhbmctb2xk
ZmItd2l0aC1yZXNldC1yZW5kZXItYToKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbSU5DT01Q
TEVURV1bNTldIChbZmRvIzEwMzkyN10pIC0+IFtQQVNTXVs2MF0gKzMgc2ltaWxhciBpc3N1ZXMK
ICAgWzU5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NzEwNS9zaGFyZC1hcGw2L2lndEBrbXNfYnVzeUBleHRlbmRlZC1tb2Rlc2V0LWhhbmctb2xkZmIt
d2l0aC1yZXNldC1yZW5kZXItYS5odG1sCiAgIFs2MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0ODMwL3NoYXJkLWFwbDYvaWd0QGttc19idXN5
QGV4dGVuZGVkLW1vZGVzZXQtaGFuZy1vbGRmYi13aXRoLXJlc2V0LXJlbmRlci1hLmh0bWwKCiAg
KiBpZ3RAa21zX2NvbG9yQHBpcGUtYS1jdG0tMC03NToKICAgIC0gc2hhcmQtc2tsOiAgICAgICAg
ICBbRkFJTF1bNjFdIChbZmRvIzEwODY4Ml0pIC0+IFtQQVNTXVs2Ml0KICAgWzYxXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzEwNS9zaGFyZC1za2wy
L2lndEBrbXNfY29sb3JAcGlwZS1hLWN0bS0wLTc1Lmh0bWwKICAgWzYyXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4MzAvc2hhcmQtc2tsMS9p
Z3RAa21zX2NvbG9yQHBpcGUtYS1jdG0tMC03NS5odG1sCgogICogaWd0QGttc19mbGlwQGZsaXAt
dnMtc3VzcGVuZDoKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbRE1FU0ctV0FSTl1bNjNdIChb
ZmRvIzEwMzMxM10pIC0+IFtQQVNTXVs2NF0KICAgWzYzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzEwNS9zaGFyZC1rYmwxL2lndEBrbXNfZmxpcEBm
bGlwLXZzLXN1c3BlbmQuaHRtbAogICBbNjRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDgzMC9zaGFyZC1rYmw3L2lndEBrbXNfZmxpcEBmbGlw
LXZzLXN1c3BlbmQuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFw
LXByaW1zY3JuLWluZGZiLXBsZmxpcC1ibHQ6CiAgICAtIHtzaGFyZC10Z2xifTogICAgICAgW0ZB
SUxdWzY1XSAoW2ZkbyMxMDMxNjddKSAtPiBbUEFTU11bNjZdCiAgIFs2NV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxMDUvc2hhcmQtdGdsYjQvaWd0
QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtcHJpbXNjcm4taW5kZmItcGxmbGlwLWJs
dC5odG1sCiAgIFs2Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE0ODMwL3NoYXJkLXRnbGI3L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdA
ZmJjLTFwLXByaW1zY3JuLWluZGZiLXBsZmxpcC1ibHQuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRi
dWZmZXJfdHJhY2tpbmdAZmJjLXN1c3BlbmQ6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW0RN
RVNHLVdBUk5dWzY3XSAoW2ZkbyMxMDg1NjZdKSAtPiBbUEFTU11bNjhdICszIHNpbWlsYXIgaXNz
dWVzCiAgIFs2N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzcxMDUvc2hhcmQtYXBsMi9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy1zdXNw
ZW5kLmh0bWwKICAgWzY4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTQ4MzAvc2hhcmQtYXBsMi9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5n
QGZiYy1zdXNwZW5kLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bz
ci0xcC1wcmltc2Nybi1jdXItaW5kZmItZHJhdy1yZW5kZXI6CiAgICAtIHNoYXJkLWljbGI6ICAg
ICAgICAgW0ZBSUxdWzY5XSAoW2ZkbyMxMDMxNjddKSAtPiBbUEFTU11bNzBdICszIHNpbWlsYXIg
aXNzdWVzCiAgIFs2OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzcxMDUvc2hhcmQtaWNsYjgvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNw
c3ItMXAtcHJpbXNjcm4tY3VyLWluZGZiLWRyYXctcmVuZGVyLmh0bWwKICAgWzcwXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4MzAvc2hhcmQt
aWNsYjQvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tY3Vy
LWluZGZiLWRyYXctcmVuZGVyLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5n
QHBzci1yZ2IxMDEwMTAtZHJhdy1tbWFwLWNwdToKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBb
RkFJTF1bNzFdIChbZmRvIzEwMzE2N10pIC0+IFtQQVNTXVs3Ml0KICAgWzcxXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzEwNS9zaGFyZC1za2wzL2ln
dEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAcHNyLXJnYjEwMTAxMC1kcmF3LW1tYXAtY3B1Lmh0
bWwKICAgWzcyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTQ4MzAvc2hhcmQtc2tsNC9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQHBzci1y
Z2IxMDEwMTAtZHJhdy1tbWFwLWNwdS5odG1sCgogICogaWd0QGttc19waXBlX2NyY19iYXNpY0Bz
dXNwZW5kLXJlYWQtY3JjLXBpcGUtYToKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbSU5DT01Q
TEVURV1bNzNdIChbZmRvIzEwMzY2NV0pIC0+IFtQQVNTXVs3NF0KICAgWzczXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzEwNS9zaGFyZC1rYmwzL2ln
dEBrbXNfcGlwZV9jcmNfYmFzaWNAc3VzcGVuZC1yZWFkLWNyYy1waXBlLWEuaHRtbAogICBbNzRd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDgz
MC9zaGFyZC1rYmwzL2lndEBrbXNfcGlwZV9jcmNfYmFzaWNAc3VzcGVuZC1yZWFkLWNyYy1waXBl
LWEuaHRtbAoKICAqIGlndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1iLWNvdmVyYWdlLTdl
ZmM6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZBSUxdWzc1XSAoW2ZkbyMxMDgxNDVdIC8g
W2ZkbyMxMTA0MDNdKSAtPiBbUEFTU11bNzZdCiAgIFs3NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxMDUvc2hhcmQtc2tsMi9pZ3RAa21zX3BsYW5l
X2FscGhhX2JsZW5kQHBpcGUtYi1jb3ZlcmFnZS03ZWZjLmh0bWwKICAgWzc2XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4MzAvc2hhcmQtc2ts
Mi9pZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYi1jb3ZlcmFnZS03ZWZjLmh0bWwKCiAg
KiBpZ3RAa21zX3BzckBwc3IyX3Nwcml0ZV9tbWFwX2NwdToKICAgIC0gc2hhcmQtaWNsYjogICAg
ICAgICBbU0tJUF1bNzddIChbZmRvIzEwOTQ0MV0pIC0+IFtQQVNTXVs3OF0KICAgWzc3XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzEwNS9zaGFyZC1p
Y2xiNy9pZ3RAa21zX3BzckBwc3IyX3Nwcml0ZV9tbWFwX2NwdS5odG1sCiAgIFs3OF06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0ODMwL3NoYXJk
LWljbGIyL2lndEBrbXNfcHNyQHBzcjJfc3ByaXRlX21tYXBfY3B1Lmh0bWwKCiAgCiMjIyMgV2Fy
bmluZ3MgIyMjIwoKICAqIGlndEBnZW1fbW9jc19zZXR0aW5nc0Btb2NzLXJlc2V0LWJzZDI6CiAg
ICAtIHNoYXJkLWljbGI6ICAgICAgICAgW0ZBSUxdWzc5XSAoW2ZkbyMxMTEzMzBdKSAtPiBbU0tJ
UF1bODBdIChbZmRvIzEwOTI3Nl0pCiAgIFs3OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzcxMDUvc2hhcmQtaWNsYjIvaWd0QGdlbV9tb2NzX3NldHRp
bmdzQG1vY3MtcmVzZXQtYnNkMi5odG1sCiAgIFs4MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0ODMwL3NoYXJkLWljbGI4L2lndEBnZW1fbW9j
c19zZXR0aW5nc0Btb2NzLXJlc2V0LWJzZDIuaHRtbAoKICAqIGlndEBnZW1fbW9jc19zZXR0aW5n
c0Btb2NzLXNldHRpbmdzLWJzZDI6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1NLSVBdWzgx
XSAoW2ZkbyMxMDkyNzZdKSAtPiBbRkFJTF1bODJdIChbZmRvIzExMTMzMF0pCiAgIFs4MV06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxMDUvc2hhcmQt
aWNsYjMvaWd0QGdlbV9tb2NzX3NldHRpbmdzQG1vY3Mtc2V0dGluZ3MtYnNkMi5odG1sCiAgIFs4
Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0
ODMwL3NoYXJkLWljbGIxL2lndEBnZW1fbW9jc19zZXR0aW5nc0Btb2NzLXNldHRpbmdzLWJzZDIu
aHRtbAoKICAqIGlndEBrbXNfcHNyQHBzcjJfc3VzcGVuZDoKICAgIC0gc2hhcmQtaWNsYjogICAg
ICAgICBbU0tJUF1bODNdIChbZmRvIzEwOTQ0MV0pIC0+IFtETUVTRy1XQVJOXVs4NF0gKFtmZG8j
MTA3NzI0XSkKICAgWzgzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNzEwNS9zaGFyZC1pY2xiMS9pZ3RAa21zX3BzckBwc3IyX3N1c3BlbmQuaHRtbAog
ICBbODRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNDgzMC9zaGFyZC1pY2xiMi9pZ3RAa21zX3BzckBwc3IyX3N1c3BlbmQuaHRtbAoKICAKICB7
bmFtZX06IFRoaXMgZWxlbWVudCBpcyBzdXBwcmVzc2VkLiBUaGlzIG1lYW5zIGl0IGlzIGlnbm9y
ZWQgd2hlbiBjb21wdXRpbmcKICAgICAgICAgIHRoZSBzdGF0dXMgb2YgdGhlIGRpZmZlcmVuY2Ug
KFNVQ0NFU1MsIFdBUk5JTkcsIG9yIEZBSUxVUkUpLgoKICBbZmRvIyAxMTIwMDAgXTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9IDExMjAwMCAKICBbZmRvIzEw
MzE2Nl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzE2
NgogIFtmZG8jMTAzMTY3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTAzMTY3CiAgW2ZkbyMxMDMzMTNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMDMzMTMKICBbZmRvIzEwMzU0MF06IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzU0MAogIFtmZG8jMTAzNjY1XTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzNjY1CiAgW2ZkbyMxMDM5
MjddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDM5MjcK
ICBbZmRvIzEwNTM2M106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTEwNTM2MwogIFtmZG8jMTA1NDExXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTA1NDExCiAgW2ZkbyMxMDc3MTNdOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc3MTMKICBbZmRvIzEwNzcyNF06IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzcyNAogIFtmZG8jMTA4MTQ1
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4MTQ1CiAg
W2ZkbyMxMDgzNDFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMDgzNDEKICBbZmRvIzEwODU2Nl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTEwODU2NgogIFtmZG8jMTA4NjgyXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4NjgyCiAgW2ZkbyMxMDkyNzZdOiBodHRwczovL2J1
Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkyNzYKICBbZmRvIzEwOTQ0MV06
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTQ0MQogIFtm
ZG8jMTEwNDAzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTEwNDAzCiAgW2ZkbyMxMTA4NDFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMTA4NDEKICBbZmRvIzExMDg1NF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDg1NAogIFtmZG8jMTExMzI1XTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMzI1CiAgW2ZkbyMxMTEzMzBdOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEzMzAKICBbZmRv
IzExMTc4MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEx
MTc4MQogIFtmZG8jMTExODcwXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTExODcwCiAgW2ZkbyMxMTE5MjVdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Au
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE5MjUKICBbZmRvIzExMTk5MV06IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTk5MQoKClBhcnRpY2lwYXRpbmcgaG9z
dHMgKDExIC0+IDExKQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgTm8gY2hhbmdl
cyBpbiBwYXJ0aWNpcGF0aW5nIGhvc3RzCgoKQnVpbGQgY2hhbmdlcwotLS0tLS0tLS0tLS0tCgog
ICogQ0k6IENJLTIwMTkwNTI5IC0+IE5vbmUKICAqIExpbnV4OiBDSV9EUk1fNzEwNSAtPiBQYXRj
aHdvcmtfMTQ4MzAKCiAgQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5CiAgQ0lfRFJNXzcxMDU6IDQ2ZDVi
NzhjODlmZDg2ZjgyMzQ3Y2FjMThjODFhMjc4ZGJlMDg4NDEgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVk
ZXNrdG9wLm9yZy9nZngtY2kvbGludXgKICBJR1RfNTIzMTogZTI5MzA1MWY4Zjk5YzcyY2IwMWQy
MWU0YjczYTU5MjhlYTM1MWViMyBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hvcmcv
YXBwL2ludGVsLWdwdS10b29scwogIFBhdGNod29ya18xNDgzMDogM2IxODJhMGJmMWVhMzA3ZTkz
NjgyYWQyYWY5NTYwYmE1NDMxZjM0YiBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dm
eC1jaS9saW51eAogIHBpZ2xpdF80NTA5OiBmZGM1YTRjYTExMTI0YWI4NDEzYzc5ODg4OTZlZWM0
Yzk3MzM2Njk0IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvcGlnbGl0Cgo9PSBMb2dz
ID09CgpGb3IgbW9yZSBkZXRhaWxzIHNlZTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4MzAvaW5kZXguaHRtbApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
