Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CBC0D0556
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 03:48:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50D3A6E8CB;
	Wed,  9 Oct 2019 01:48:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 636D26E8C7;
 Wed,  9 Oct 2019 01:48:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5BB3DA0081;
 Wed,  9 Oct 2019 01:48:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "James Ausmus" <james.ausmus@intel.com>
Date: Wed, 09 Oct 2019 01:48:36 -0000
Message-ID: <20191009014836.4048.6129@emeril.freedesktop.org>
References: <20191008172832.8500-1-james.ausmus@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20191008172832.8500-1-james.ausmus@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5BCI=2Cv3=2C1/2=5D_drm/i915=3A_Move_SAGV_bloc?=
 =?utf-8?q?k_time_to_dev=5Fpriv?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLHYz
LDEvMl0gZHJtL2k5MTU6IE1vdmUgU0FHViBibG9jayB0aW1lIHRvIGRldl9wcml2ClVSTCAgIDog
aHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82Nzc0My8KU3RhdGUgOiBm
YWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV83
MDM1X2Z1bGwgLT4gUGF0Y2h3b3JrXzE0NzA2X2Z1bGwKPT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PQoKU3VtbWFyeQotLS0tLS0tCgogICoqRkFJTFVS
RSoqCgogIFNlcmlvdXMgdW5rbm93biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNod29ya18xNDcw
Nl9mdWxsIGFic29sdXRlbHkgbmVlZCB0byBiZQogIHZlcmlmaWVkIG1hbnVhbGx5LgogIAogIElm
IHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0
aGUgY2hhbmdlcwogIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE0NzA2X2Z1bGwsIHBsZWFzZSBu
b3RpZnkgeW91ciBidWcgdGVhbSB0byBhbGxvdyB0aGVtCiAgdG8gZG9jdW1lbnQgdGhpcyBuZXcg
ZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuCgog
IAoKUG9zc2libGUgbmV3IGlzc3VlcwotLS0tLS0tLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRo
ZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3
b3JrXzE0NzA2X2Z1bGw6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIFBvc3NpYmxlIHJlZ3Jl
c3Npb25zICMjIyMKCiAgKiBpZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1iLWN1cnNvci0yNTZ4ODUt
c2xpZGluZzoKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbUEFTU11bMV0gLT4gW1RJTUVPVVRd
WzJdCiAgIFsxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNzAzNS9zaGFyZC1hcGw3L2lndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWItY3Vyc29yLTI1Nng4
NS1zbGlkaW5nLmh0bWwKICAgWzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNDcwNi9zaGFyZC1hcGw2L2lndEBrbXNfY3Vyc29yX2NyY0BwaXBl
LWItY3Vyc29yLTI1Nng4NS1zbGlkaW5nLmh0bWwKCiAgCiMjIyMgU3VwcHJlc3NlZCAjIyMjCgog
IFRoZSBmb2xsb3dpbmcgcmVzdWx0cyBjb21lIGZyb20gdW50cnVzdGVkIG1hY2hpbmVzLCB0ZXN0
cywgb3Igc3RhdHVzZXMuCiAgVGhleSBkbyBub3QgYWZmZWN0IHRoZSBvdmVyYWxsIHJlc3VsdC4K
CiAgKiBpZ3RAZ2VtX3B3cml0ZUBiaWctY3B1LWZvcndhcmRzOgogICAgLSB7c2hhcmQtdGdsYn06
ICAgICAgIE5PVFJVTiAtPiBbSU5DT01QTEVURV1bM10gKzEgc2ltaWxhciBpc3N1ZQogICBbM106
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NzA2
L3NoYXJkLXRnbGI0L2lndEBnZW1fcHdyaXRlQGJpZy1jcHUtZm9yd2FyZHMuaHRtbAoKICAqIGln
dEBrbXNfcm90YXRpb25fY3JjQHByaW1hcnkteWYtdGlsZWQtcmVmbGVjdC14LTA6CiAgICAtIHtz
aGFyZC10Z2xifTogICAgICAgTk9UUlVOIC0+IFtTS0lQXVs0XSArMSBzaW1pbGFyIGlzc3VlCiAg
IFs0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTQ3MDYvc2hhcmQtdGdsYjYvaWd0QGttc19yb3RhdGlvbl9jcmNAcHJpbWFyeS15Zi10aWxlZC1y
ZWZsZWN0LXgtMC5odG1sCgogIApLbm93biBpc3N1ZXMKLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJl
IHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNod29ya18xNDcwNl9mdWxsIHRoYXQgY29tZSBmcm9t
IGtub3duIGlzc3VlczoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgSXNzdWVzIGhpdCAjIyMj
CgogICogaWd0QGdlbV9leGVjX2JhbGFuY2VyQHNtb2tlOgogICAgLSBzaGFyZC1pY2xiOiAgICAg
ICAgIFtQQVNTXVs1XSAtPiBbU0tJUF1bNl0gKFtmZG8jMTEwODU0XSkKICAgWzVdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDM1L3NoYXJkLWljbGIx
L2lndEBnZW1fZXhlY19iYWxhbmNlckBzbW9rZS5odG1sCiAgIFs2XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3MDYvc2hhcmQtaWNsYjcvaWd0
QGdlbV9leGVjX2JhbGFuY2VyQHNtb2tlLmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVA
d2lkZS1ic2Q6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzddIC0+IFtTS0lQXVs4
XSAoW2ZkbyMxMTEzMjVdKSArOCBzaW1pbGFyIGlzc3VlcwogICBbN106IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwMzUvc2hhcmQtaWNsYjMvaWd0QGdl
bV9leGVjX3NjaGVkdWxlQHdpZGUtYnNkLmh0bWwKICAgWzhdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDcwNi9zaGFyZC1pY2xiNC9pZ3RAZ2Vt
X2V4ZWNfc2NoZWR1bGVAd2lkZS1ic2QuaHRtbAoKICAqIGlndEBnZW1fdXNlcnB0cl9ibGl0c0Bz
eW5jLXVubWFwLWN5Y2xlczoKICAgIC0gc2hhcmQtc25iOiAgICAgICAgICBbUEFTU11bOV0gLT4g
W0RNRVNHLVdBUk5dWzEwXSAoW2ZkbyMxMTE4NzBdKSArMiBzaW1pbGFyIGlzc3VlcwogICBbOV06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwMzUvc2hh
cmQtc25iMS9pZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAc3luYy11bm1hcC1jeWNsZXMuaHRtbAogICBb
MTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NDcwNi9zaGFyZC1zbmIxL2lndEBnZW1fdXNlcnB0cl9ibGl0c0BzeW5jLXVubWFwLWN5Y2xlcy5o
dG1sCgogICogaWd0QGk5MTVfc3VzcGVuZEBzeXNmcy1yZWFkZXI6CiAgICAtIHNoYXJkLWFwbDog
ICAgICAgICAgW1BBU1NdWzExXSAtPiBbRE1FU0ctV0FSTl1bMTJdIChbZmRvIzEwODU2Nl0pICs1
IHNpbWlsYXIgaXNzdWVzCiAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzcwMzUvc2hhcmQtYXBsMS9pZ3RAaTkxNV9zdXNwZW5kQHN5c2ZzLXJl
YWRlci5odG1sCiAgIFsxMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE0NzA2L3NoYXJkLWFwbDcvaWd0QGk5MTVfc3VzcGVuZEBzeXNmcy1yZWFk
ZXIuaHRtbAoKICAqIGlndEBrbXNfY3Vyc29yX2xlZ2FjeUAyeC1sb25nLWN1cnNvci12cy1mbGlw
LWF0b21pYzoKICAgIC0gc2hhcmQtaHN3OiAgICAgICAgICBbUEFTU11bMTNdIC0+IFtGQUlMXVsx
NF0gKFtmZG8jMTA1NzY3XSkKICAgWzEzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNzAzNS9zaGFyZC1oc3cxL2lndEBrbXNfY3Vyc29yX2xlZ2FjeUAy
eC1sb25nLWN1cnNvci12cy1mbGlwLWF0b21pYy5odG1sCiAgIFsxNF06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NzA2L3NoYXJkLWhzdzEvaWd0
QGttc19jdXJzb3JfbGVnYWN5QDJ4LWxvbmctY3Vyc29yLXZzLWZsaXAtYXRvbWljLmh0bWwKCiAg
KiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1wcmktaW5kZmItbXVsdGlkcmF3
OgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVsxNV0gLT4gW0ZBSUxdWzE2XSAoW2Zk
byMxMDMxNjddKSArNCBzaW1pbGFyIGlzc3VlcwogICBbMTVdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDM1L3NoYXJkLWljbGI4L2lndEBrbXNfZnJv
bnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXByaS1pbmRmYi1tdWx0aWRyYXcuaHRtbAogICBbMTZd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDcw
Ni9zaGFyZC1pY2xiNC9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1wcmktaW5k
ZmItbXVsdGlkcmF3Lmh0bWwKCiAgKiBpZ3RAa21zX3BzckBwc3IyX2N1cnNvcl9wbGFuZV9tb3Zl
OgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVsxN10gLT4gW1NLSVBdWzE4XSAoW2Zk
byMxMDk0NDFdKSArMyBzaW1pbGFyIGlzc3VlcwogICBbMTddOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDM1L3NoYXJkLWljbGIyL2lndEBrbXNfcHNy
QHBzcjJfY3Vyc29yX3BsYW5lX21vdmUuaHRtbAogICBbMThdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDcwNi9zaGFyZC1pY2xiNi9pZ3RAa21z
X3BzckBwc3IyX2N1cnNvcl9wbGFuZV9tb3ZlLmh0bWwKCiAgKiBpZ3RAa21zX3NldG1vZGVAYmFz
aWM6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW1BBU1NdWzE5XSAtPiBbRkFJTF1bMjBdIChb
ZmRvIzk5OTEyXSkKICAgWzE5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNzAzNS9zaGFyZC1hcGwzL2lndEBrbXNfc2V0bW9kZUBiYXNpYy5odG1sCiAg
IFsyMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE0NzA2L3NoYXJkLWFwbDgvaWd0QGttc19zZXRtb2RlQGJhc2ljLmh0bWwKCiAgKiBpZ3RAa21z
X3ZibGFua0BwaXBlLWMtd2FpdC1mb3JrZWQtYnVzeS1oYW5nOgogICAgLSBzaGFyZC1hcGw6ICAg
ICAgICAgIFtQQVNTXVsyMV0gLT4gW0lOQ09NUExFVEVdWzIyXSAoW2ZkbyMxMDM5MjddKSArMSBz
aW1pbGFyIGlzc3VlCiAgIFsyMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzcwMzUvc2hhcmQtYXBsNi9pZ3RAa21zX3ZibGFua0BwaXBlLWMtd2FpdC1m
b3JrZWQtYnVzeS1oYW5nLmh0bWwKICAgWzIyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3MDYvc2hhcmQtYXBsMi9pZ3RAa21zX3ZibGFua0Bw
aXBlLWMtd2FpdC1mb3JrZWQtYnVzeS1oYW5nLmh0bWwKCiAgKiBpZ3RAcGVyZl9wbXVAY3B1LWhv
dHBsdWc6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW1BBU1NdWzIzXSAtPiBbVElNRU9VVF1b
MjRdIChbZmRvIzExMTU0Nl0gLyBbZmRvIzExMTgwMF0pCiAgIFsyM106IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwMzUvc2hhcmQtYXBsNy9pZ3RAcGVy
Zl9wbXVAY3B1LWhvdHBsdWcuaHRtbAogICBbMjRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDcwNi9zaGFyZC1hcGw2L2lndEBwZXJmX3BtdUBj
cHUtaG90cGx1Zy5odG1sCgogICogaWd0QHBlcmZfcG11QGlkbGUtcmNzMDoKICAgIC0gc2hhcmQt
c25iOiAgICAgICAgICBbUEFTU11bMjVdIC0+IFtJTkNPTVBMRVRFXVsyNl0gKFtmZG8jMTA1NDEx
XSkKICAgWzI1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNzAzNS9zaGFyZC1zbmI2L2lndEBwZXJmX3BtdUBpZGxlLXJjczAuaHRtbAogICBbMjZdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDcwNi9z
aGFyZC1zbmIxL2lndEBwZXJmX3BtdUBpZGxlLXJjczAuaHRtbAoKICAqIGlndEBwcmltZV92Z2Vt
QGZlbmNlLXdhaXQtYnNkMjoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMjddIC0+
IFtTS0lQXVsyOF0gKFtmZG8jMTA5Mjc2XSkgKzI5IHNpbWlsYXIgaXNzdWVzCiAgIFsyN106IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwMzUvc2hhcmQt
aWNsYjQvaWd0QHByaW1lX3ZnZW1AZmVuY2Utd2FpdC1ic2QyLmh0bWwKICAgWzI4XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3MDYvc2hhcmQt
aWNsYjcvaWd0QHByaW1lX3ZnZW1AZmVuY2Utd2FpdC1ic2QyLmh0bWwKCiAgCiMjIyMgUG9zc2li
bGUgZml4ZXMgIyMjIwoKICAqIGlndEBnZW1fY3R4X3NoYXJlZEBleGVjLXNpbmdsZS10aW1lbGlu
ZS1ic2Q6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1NLSVBdWzI5XSAoW2ZkbyMxMTA4NDFd
KSAtPiBbUEFTU11bMzBdCiAgIFsyOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzcwMzUvc2hhcmQtaWNsYjQvaWd0QGdlbV9jdHhfc2hhcmVkQGV4ZWMt
c2luZ2xlLXRpbWVsaW5lLWJzZC5odG1sCiAgIFszMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NzA2L3NoYXJkLWljbGI3L2lndEBnZW1fY3R4
X3NoYXJlZEBleGVjLXNpbmdsZS10aW1lbGluZS1ic2QuaHRtbAoKICAqIGlndEBnZW1fZWlvQGlu
LWZsaWdodC1jb250ZXh0cy1pbW1lZGlhdGU6CiAgICAtIHNoYXJkLXNuYjogICAgICAgICAgW0ZB
SUxdWzMxXSAoW2ZkbyMxMTE5MjVdKSAtPiBbUEFTU11bMzJdCiAgIFszMV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwMzUvc2hhcmQtc25iNS9pZ3RA
Z2VtX2Vpb0Bpbi1mbGlnaHQtY29udGV4dHMtaW1tZWRpYXRlLmh0bWwKICAgWzMyXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3MDYvc2hhcmQt
c25iMi9pZ3RAZ2VtX2Vpb0Bpbi1mbGlnaHQtY29udGV4dHMtaW1tZWRpYXRlLmh0bWwKCiAgKiB7
aWd0QGdlbV9laW9Aa21zfToKICAgIC0gc2hhcmQtc25iOiAgICAgICAgICBbSU5DT01QTEVURV1b
MzNdIChbZmRvIzEwNTQxMV0pIC0+IFtQQVNTXVszNF0KICAgWzMzXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzAzNS9zaGFyZC1zbmI1L2lndEBnZW1f
ZWlvQGttcy5odG1sCiAgIFszNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE0NzA2L3NoYXJkLXNuYjcvaWd0QGdlbV9laW9Aa21zLmh0bWwKCiAg
KiBpZ3RAZ2VtX2Vpb0B1bndlZGdlLXN0cmVzczoKICAgIC0gc2hhcmQtc25iOiAgICAgICAgICBb
RkFJTF1bMzVdIChbZmRvIzEwOTY2MV0pIC0+IFtQQVNTXVszNl0gKzEgc2ltaWxhciBpc3N1ZQog
ICBbMzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83
MDM1L3NoYXJkLXNuYjIvaWd0QGdlbV9laW9AdW53ZWRnZS1zdHJlc3MuaHRtbAogICBbMzZdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDcwNi9z
aGFyZC1zbmIxL2lndEBnZW1fZWlvQHVud2VkZ2Utc3RyZXNzLmh0bWwKCiAgKiBpZ3RAZ2VtX2V4
ZWNfc2NoZWR1bGVAcHJlZW1wdC1vdGhlci1jaGFpbi1ic2Q6CiAgICAtIHNoYXJkLWljbGI6ICAg
ICAgICAgW1NLSVBdWzM3XSAoW2ZkbyMxMTEzMjVdKSAtPiBbUEFTU11bMzhdICs3IHNpbWlsYXIg
aXNzdWVzCiAgIFszN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzcwMzUvc2hhcmQtaWNsYjEvaWd0QGdlbV9leGVjX3NjaGVkdWxlQHByZWVtcHQtb3Ro
ZXItY2hhaW4tYnNkLmh0bWwKICAgWzM4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3MDYvc2hhcmQtaWNsYjcvaWd0QGdlbV9leGVjX3NjaGVk
dWxlQHByZWVtcHQtb3RoZXItY2hhaW4tYnNkLmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfc2NoZWR1
bGVAcHJlZW1wdC1xdWV1ZS1ic2QxOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtTS0lQXVsz
OV0gKFtmZG8jMTA5Mjc2XSkgLT4gW1BBU1NdWzQwXSArMTcgc2ltaWxhciBpc3N1ZXMKICAgWzM5
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzAzNS9z
aGFyZC1pY2xiOC9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJlZW1wdC1xdWV1ZS1ic2QxLmh0bWwK
ICAgWzQwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTQ3MDYvc2hhcmQtaWNsYjIvaWd0QGdlbV9leGVjX3NjaGVkdWxlQHByZWVtcHQtcXVldWUt
YnNkMS5odG1sCgogICogaWd0QGdlbV91c2VycHRyX2JsaXRzQG1hcC1maXhlZC1pbnZhbGlkYXRl
LW92ZXJsYXAtYnVzeS1ndXA6CiAgICAtIHNoYXJkLWhzdzogICAgICAgICAgW0RNRVNHLVdBUk5d
WzQxXSAoW2ZkbyMxMTE4NzBdKSAtPiBbUEFTU11bNDJdCiAgIFs0MV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwMzUvc2hhcmQtaHN3NC9pZ3RAZ2Vt
X3VzZXJwdHJfYmxpdHNAbWFwLWZpeGVkLWludmFsaWRhdGUtb3ZlcmxhcC1idXN5LWd1cC5odG1s
CiAgIFs0Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE0NzA2L3NoYXJkLWhzdzcvaWd0QGdlbV91c2VycHRyX2JsaXRzQG1hcC1maXhlZC1pbnZh
bGlkYXRlLW92ZXJsYXAtYnVzeS1ndXAuaHRtbAoKICAqIGlndEBpOTE1X3BtX3JwbUBzeXN0ZW0t
c3VzcGVuZC1leGVjYnVmOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtJTkNPTVBMRVRFXVs0
M10gKFtmZG8jMTA0MTA4XSAvIFtmZG8jMTA3ODA3XSkgLT4gW1BBU1NdWzQ0XQogICBbNDNdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDM1L3NoYXJk
LXNrbDEwL2lndEBpOTE1X3BtX3JwbUBzeXN0ZW0tc3VzcGVuZC1leGVjYnVmLmh0bWwKICAgWzQ0
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3
MDYvc2hhcmQtc2tsMi9pZ3RAaTkxNV9wbV9ycG1Ac3lzdGVtLXN1c3BlbmQtZXhlY2J1Zi5odG1s
CgogICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9jb2hlcmVuY3k6CiAgICAtIHNoYXJkLXNrbDog
ICAgICAgICAgW1RJTUVPVVRdWzQ1XSAtPiBbUEFTU11bNDZdCiAgIFs0NV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwMzUvc2hhcmQtc2tsMi9pZ3RA
aTkxNV9zZWxmdGVzdEBsaXZlX2NvaGVyZW5jeS5odG1sCiAgIFs0Nl06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NzA2L3NoYXJkLXNrbDIvaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZV9jb2hlcmVuY3kuaHRtbAoKICAqIGlndEBrbXNfY3Vyc29yX2Ny
Y0BwaXBlLWMtY3Vyc29yLTI1Nng4NS1vZmZzY3JlZW46CiAgICAtIHNoYXJkLXNrbDogICAgICAg
ICAgW0ZBSUxdWzQ3XSAoW2ZkbyMxMDMyMzJdKSAtPiBbUEFTU11bNDhdCiAgIFs0N106IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwMzUvc2hhcmQtc2ts
Ni9pZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1jLWN1cnNvci0yNTZ4ODUtb2Zmc2NyZWVuLmh0bWwK
ICAgWzQ4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTQ3MDYvc2hhcmQtc2tsMy9pZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1jLWN1cnNvci0yNTZ4
ODUtb2Zmc2NyZWVuLmh0bWwKCiAgKiBpZ3RAa21zX2N1cnNvcl9sZWdhY3lAZmxpcC12cy1jdXJz
b3ItbGVnYWN5OgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtGQUlMXVs0OV0gKFtmZG8jMTAy
NjcwXSkgLT4gW1BBU1NdWzUwXQogICBbNDldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV83MDM1L3NoYXJkLXNrbDcvaWd0QGttc19jdXJzb3JfbGVnYWN5
QGZsaXAtdnMtY3Vyc29yLWxlZ2FjeS5odG1sCiAgIFs1MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NzA2L3NoYXJkLXNrbDQvaWd0QGttc19j
dXJzb3JfbGVnYWN5QGZsaXAtdnMtY3Vyc29yLWxlZ2FjeS5odG1sCgogICogaWd0QGttc19mbGlw
QDJ4LXBsYWluLWZsaXAtdHMtY2hlY2s6CiAgICAtIHNoYXJkLWdsazogICAgICAgICAgW0ZBSUxd
WzUxXSAoW2ZkbyMxMDAzNjhdKSAtPiBbUEFTU11bNTJdICsxIHNpbWlsYXIgaXNzdWUKICAgWzUx
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzAzNS9z
aGFyZC1nbGsxL2lndEBrbXNfZmxpcEAyeC1wbGFpbi1mbGlwLXRzLWNoZWNrLmh0bWwKICAgWzUy
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3
MDYvc2hhcmQtZ2xrNS9pZ3RAa21zX2ZsaXBAMngtcGxhaW4tZmxpcC10cy1jaGVjay5odG1sCgog
ICogaWd0QGttc19mbGlwQGZsaXAtdnMtc3VzcGVuZDoKICAgIC0gc2hhcmQtaHN3OiAgICAgICAg
ICBbSU5DT01QTEVURV1bNTNdIChbZmRvIzEwMzU0MF0pIC0+IFtQQVNTXVs1NF0KICAgWzUzXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzAzNS9zaGFy
ZC1oc3c1L2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmQuaHRtbAogICBbNTRdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDcwNi9zaGFyZC1o
c3c0L2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmQuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBw
bGFpbi1mbGlwLXRzLWNoZWNrLWludGVycnVwdGlibGU6CiAgICAtIHNoYXJkLXNrbDogICAgICAg
ICAgW0ZBSUxdWzU1XSAoW2ZkbyMxMDAzNjhdKSAtPiBbUEFTU11bNTZdCiAgIFs1NV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwMzUvc2hhcmQtc2ts
OS9pZ3RAa21zX2ZsaXBAcGxhaW4tZmxpcC10cy1jaGVjay1pbnRlcnJ1cHRpYmxlLmh0bWwKICAg
WzU2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTQ3MDYvc2hhcmQtc2tsOS9pZ3RAa21zX2ZsaXBAcGxhaW4tZmxpcC10cy1jaGVjay1pbnRlcnJ1
cHRpYmxlLmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBfdGlsaW5nQGZsaXAtdG8teS10aWxlZDoKICAg
IC0gc2hhcmQtc2tsOiAgICAgICAgICBbRkFJTF1bNTddIChbZmRvIzEwNzkzMV0gLyBbZmRvIzEw
ODEzNF0pIC0+IFtQQVNTXVs1OF0KICAgWzU3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNzAzNS9zaGFyZC1za2w5L2lndEBrbXNfZmxpcF90aWxpbmdA
ZmxpcC10by15LXRpbGVkLmh0bWwKICAgWzU4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3MDYvc2hhcmQtc2tsOS9pZ3RAa21zX2ZsaXBfdGls
aW5nQGZsaXAtdG8teS10aWxlZC5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2lu
Z0BmYmNwc3ItMXAtcHJpbXNjcm4tY3VyLWluZGZiLWRyYXctcmVuZGVyOgogICAgLSBzaGFyZC1p
Y2xiOiAgICAgICAgIFtGQUlMXVs1OV0gKFtmZG8jMTAzMTY3XSkgLT4gW1BBU1NdWzYwXSArNSBz
aW1pbGFyIGlzc3VlcwogICBbNTldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV83MDM1L3NoYXJkLWljbGI4L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tp
bmdAZmJjcHNyLTFwLXByaW1zY3JuLWN1ci1pbmRmYi1kcmF3LXJlbmRlci5odG1sCiAgIFs2MF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NzA2
L3NoYXJkLWljbGIyL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1z
Y3JuLWN1ci1pbmRmYi1kcmF3LXJlbmRlci5odG1sCgogICogaWd0QGttc19waXBlX2NyY19iYXNp
Y0Bub25ibG9ja2luZy1jcmMtcGlwZS1jLWZyYW1lLXNlcXVlbmNlOgogICAgLSBzaGFyZC1za2w6
ICAgICAgICAgIFtGQUlMXVs2MV0gKFtmZG8jMTAzMTkxXSkgLT4gW1BBU1NdWzYyXQogICBbNjFd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDM1L3No
YXJkLXNrbDkvaWd0QGttc19waXBlX2NyY19iYXNpY0Bub25ibG9ja2luZy1jcmMtcGlwZS1jLWZy
YW1lLXNlcXVlbmNlLmh0bWwKICAgWzYyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3MDYvc2hhcmQtc2tsOS9pZ3RAa21zX3BpcGVfY3JjX2Jh
c2ljQG5vbmJsb2NraW5nLWNyYy1waXBlLWMtZnJhbWUtc2VxdWVuY2UuaHRtbAoKICAqIGlndEBr
bXNfcGlwZV9jcmNfYmFzaWNAc3VzcGVuZC1yZWFkLWNyYy1waXBlLWM6CiAgICAtIHNoYXJkLXNr
bDogICAgICAgICAgW0lOQ09NUExFVEVdWzYzXSAoW2ZkbyMxMDQxMDhdKSAtPiBbUEFTU11bNjRd
CiAgIFs2M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzcwMzUvc2hhcmQtc2tsMTAvaWd0QGttc19waXBlX2NyY19iYXNpY0BzdXNwZW5kLXJlYWQtY3Jj
LXBpcGUtYy5odG1sCiAgIFs2NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE0NzA2L3NoYXJkLXNrbDEwL2lndEBrbXNfcGlwZV9jcmNfYmFzaWNA
c3VzcGVuZC1yZWFkLWNyYy1waXBlLWMuaHRtbAoKICAqIGlndEBrbXNfcGxhbmVAcGxhbmUtcGFu
bmluZy1ib3R0b20tcmlnaHQtc3VzcGVuZC1waXBlLWEtcGxhbmVzOgogICAgLSBzaGFyZC1hcGw6
ICAgICAgICAgIFtETUVTRy1XQVJOXVs2NV0gKFtmZG8jMTA4NTY2XSkgLT4gW1BBU1NdWzY2XSAr
MyBzaW1pbGFyIGlzc3VlcwogICBbNjVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV83MDM1L3NoYXJkLWFwbDcvaWd0QGttc19wbGFuZUBwbGFuZS1wYW5u
aW5nLWJvdHRvbS1yaWdodC1zdXNwZW5kLXBpcGUtYS1wbGFuZXMuaHRtbAogICBbNjZdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDcwNi9zaGFy
ZC1hcGw2L2lndEBrbXNfcGxhbmVAcGxhbmUtcGFubmluZy1ib3R0b20tcmlnaHQtc3VzcGVuZC1w
aXBlLWEtcGxhbmVzLmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYS1j
b25zdGFudC1hbHBoYS1taW46CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZBSUxdWzY3XSAo
W2ZkbyMxMDgxNDVdKSAtPiBbUEFTU11bNjhdCiAgIFs2N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwMzUvc2hhcmQtc2tsMTAvaWd0QGttc19wbGFu
ZV9hbHBoYV9ibGVuZEBwaXBlLWEtY29uc3RhbnQtYWxwaGEtbWluLmh0bWwKICAgWzY4XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3MDYvc2hh
cmQtc2tsMTAvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWEtY29uc3RhbnQtYWxwaGEt
bWluLmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYy1jb3ZlcmFnZS03
ZWZjOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtGQUlMXVs2OV0gKFtmZG8jMTA4MTQ1XSAv
IFtmZG8jMTEwNDAzXSkgLT4gW1BBU1NdWzcwXQogICBbNjldOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDM1L3NoYXJkLXNrbDYvaWd0QGttc19wbGFu
ZV9hbHBoYV9ibGVuZEBwaXBlLWMtY292ZXJhZ2UtN2VmYy5odG1sCiAgIFs3MF06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NzA2L3NoYXJkLXNr
bDMvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWMtY292ZXJhZ2UtN2VmYy5odG1sCgog
ICogaWd0QGttc19wbGFuZV9sb3dyZXNAcGlwZS1hLXRpbGluZy14OgogICAgLSBzaGFyZC1pY2xi
OiAgICAgICAgIFtGQUlMXVs3MV0gKFtmZG8jMTAzMTY2XSkgLT4gW1BBU1NdWzcyXQogICBbNzFd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDM1L3No
YXJkLWljbGI2L2lndEBrbXNfcGxhbmVfbG93cmVzQHBpcGUtYS10aWxpbmcteC5odG1sCiAgIFs3
Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0
NzA2L3NoYXJkLWljbGI0L2lndEBrbXNfcGxhbmVfbG93cmVzQHBpcGUtYS10aWxpbmcteC5odG1s
CgogICogaWd0QGttc19wc3JAcHNyMl9jdXJzb3JfbW1hcF9jcHU6CiAgICAtIHNoYXJkLWljbGI6
ICAgICAgICAgW1NLSVBdWzczXSAoW2ZkbyMxMDk0NDFdKSAtPiBbUEFTU11bNzRdCiAgIFs3M106
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwMzUvc2hh
cmQtaWNsYjgvaWd0QGttc19wc3JAcHNyMl9jdXJzb3JfbW1hcF9jcHUuaHRtbAogICBbNzRdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDcwNi9z
aGFyZC1pY2xiMi9pZ3RAa21zX3BzckBwc3IyX2N1cnNvcl9tbWFwX2NwdS5odG1sCgogIAogIHtu
YW1lfTogVGhpcyBlbGVtZW50IGlzIHN1cHByZXNzZWQuIFRoaXMgbWVhbnMgaXQgaXMgaWdub3Jl
ZCB3aGVuIGNvbXB1dGluZwogICAgICAgICAgdGhlIHN0YXR1cyBvZiB0aGUgZGlmZmVyZW5jZSAo
U1VDQ0VTUywgV0FSTklORywgb3IgRkFJTFVSRSkuCgogIFtmZG8jMTAwMzY4XTogaHR0cHM6Ly9i
dWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAwMzY4CiAgW2ZkbyMxMDI2NzBd
OiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDI2NzAKICBb
ZmRvIzEwMzE2Nl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lk
PTEwMzE2NgogIFtmZG8jMTAzMTY3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93
X2J1Zy5jZ2k/aWQ9MTAzMTY3CiAgW2ZkbyMxMDMxOTFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0
b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMxOTEKICBbZmRvIzEwMzIzMl06IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzIzMgogIFtmZG8jMTAzNTQwXTog
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzNTQwCiAgW2Zk
byMxMDM5MjddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0x
MDM5MjcKICBbZmRvIzEwNDEwOF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19i
dWcuY2dpP2lkPTEwNDEwOAogIFtmZG8jMTA1NDExXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9w
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA1NDExCiAgW2ZkbyMxMDU3NjddOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDU3NjcKICBbZmRvIzEwNzgwN106IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzgwNwogIFtmZG8j
MTA3OTMxXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3
OTMxCiAgW2ZkbyMxMDgxMzRdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMDgxMzQKICBbZmRvIzEwODE0NV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTEwODE0NQogIFtmZG8jMTA4NTY2XTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4NTY2CiAgW2ZkbyMxMDkyNzZdOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkyNzYKICBbZmRvIzEw
OTQ0MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTQ0
MQogIFtmZG8jMTA5NjYxXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTA5NjYxCiAgW2ZkbyMxMTA0MDNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMTA0MDMKICBbZmRvIzExMDg0MV06IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDg0MQogIFtmZG8jMTEwODU0XTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwODU0CiAgW2ZkbyMxMTEz
MjVdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEzMjUK
ICBbZmRvIzExMTMyOV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTExMTMyOQogIFtmZG8jMTExNTQ2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTExNTQ2CiAgW2ZkbyMxMTE4MDBdOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE4MDAKICBbZmRvIzExMTgzMl06IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTgzMgogIFtmZG8jMTExODcw
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExODcwCiAg
W2ZkbyMxMTE5MjVdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMTE5MjUKICBbZmRvIzk5OTEyXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93
X2J1Zy5jZ2k/aWQ9OTk5MTIKCgpQYXJ0aWNpcGF0aW5nIGhvc3RzICgxMSAtPiAxMSkKLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgogIE5vIGNoYW5nZXMgaW4gcGFydGljaXBhdGluZyBo
b3N0cwoKCkJ1aWxkIGNoYW5nZXMKLS0tLS0tLS0tLS0tLQoKICAqIENJOiBDSS0yMDE5MDUyOSAt
PiBOb25lCiAgKiBMaW51eDogQ0lfRFJNXzcwMzUgLT4gUGF0Y2h3b3JrXzE0NzA2CgogIENJLTIw
MTkwNTI5OiAyMDE5MDUyOQogIENJX0RSTV83MDM1OiA2MjU2YzI5OGJhNDFmMjk1MjA2MTA0ZmI2
ZWFhMDY3ZGRlNDZhNGQ5IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xp
bnV4CiAgSUdUXzUyMTg6IDg2OWVkMWVlMGI3MWNlMTdmMGE4NjQ1MTI0ODhmOGIxYTZjYjg1NDUg
QCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94b3JnL2FwcC9pbnRlbC1ncHUtdG9vbHMK
ICBQYXRjaHdvcmtfMTQ3MDY6IDZkZWNlOThkNzQxOTRhY2FiMzEwMTY3Njc2NmE0MTIyMGY0YWQ1
MDkgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKICBwaWdsaXRf
NDUwOTogZmRjNWE0Y2ExMTEyNGFiODQxM2M3OTg4ODk2ZWVjNGM5NzMzNjY5NCBAIGdpdDovL2Fu
b25naXQuZnJlZWRlc2t0b3Aub3JnL3BpZ2xpdAoKPT0gTG9ncyA9PQoKRm9yIG1vcmUgZGV0YWls
cyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE0NzA2L2luZGV4Lmh0bWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
