Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C71974AC6A
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 22:58:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD0736E255;
	Tue, 18 Jun 2019 20:58:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 62FDC6E252;
 Tue, 18 Jun 2019 20:58:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5B035A0119;
 Tue, 18 Jun 2019 20:58:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Tue, 18 Jun 2019 20:58:23 -0000
Message-ID: <20190618205823.30451.57300@emeril.freedesktop.org>
References: <20190618085826.4120-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190618085826.4120-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_Switch_to_per-crtc_vblank_vfuncs?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFN3aXRjaCB0byBwZXItY3J0
YyB2YmxhbmsgdmZ1bmNzClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3Nlcmllcy82MjI4Ny8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpDSSBCdWcgTG9n
IC0gY2hhbmdlcyBmcm9tIENJX0RSTV82MjkwX2Z1bGwgLT4gUGF0Y2h3b3JrXzEzMzIxX2Z1bGwK
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQoKU3Vt
bWFyeQotLS0tLS0tCgogICoqRkFJTFVSRSoqCgogIFNlcmlvdXMgdW5rbm93biBjaGFuZ2VzIGNv
bWluZyB3aXRoIFBhdGNod29ya18xMzMyMV9mdWxsIGFic29sdXRlbHkgbmVlZCB0byBiZQogIHZl
cmlmaWVkIG1hbnVhbGx5LgogIAogIElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBo
YXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcwogIGludHJvZHVjZWQgaW4gUGF0Y2h3
b3JrXzEzMzIxX2Z1bGwsIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSB0byBhbGxvdyB0aGVt
CiAgdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBm
YWxzZSBwb3NpdGl2ZXMgaW4gQ0kuCgogIAoKUG9zc2libGUgbmV3IGlzc3VlcwotLS0tLS0tLS0t
LS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBi
ZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzEzMzIxX2Z1bGw6CgojIyMgSUdUIGNoYW5nZXMg
IyMjCgojIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMKCiAgKiBpZ3RAZ2VtX2N0eF9zaGFy
ZWRAZXhlYy1zaGFyZWQtZ3R0LWJzZDE6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW1BBU1Nd
WzFdIC0+IFtGQUlMXVsyXQogICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzYyOTAvc2hhcmQtYXBsNC9pZ3RAZ2VtX2N0eF9zaGFyZWRAZXhlYy1z
aGFyZWQtZ3R0LWJzZDEuaHRtbAogICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzIxL3NoYXJkLWFwbDgvaWd0QGdlbV9jdHhfc2hhcmVk
QGV4ZWMtc2hhcmVkLWd0dC1ic2QxLmh0bWwKCiAgCktub3duIGlzc3VlcwotLS0tLS0tLS0tLS0K
CiAgSGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzEzMzIxX2Z1bGwgdGhh
dCBjb21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBJc3N1
ZXMgaGl0ICMjIyMKCiAgKiBpZ3RAZ2VtX2N0eF9pc29sYXRpb25AdmVjczAtczM6CiAgICAtIHNo
YXJkLWFwbDogICAgICAgICAgW1BBU1NdWzNdIC0+IFtETUVTRy1XQVJOXVs0XSAoW2ZkbyMxMDg1
NjZdKSArMiBzaW1pbGFyIGlzc3VlcwogICBbM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzYyOTAvc2hhcmQtYXBsNi9pZ3RAZ2VtX2N0eF9pc29sYXRp
b25AdmVjczAtczMuaHRtbAogICBbNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzEzMzIxL3NoYXJkLWFwbDQvaWd0QGdlbV9jdHhfaXNvbGF0aW9u
QHZlY3MwLXMzLmh0bWwKCiAgKiBpZ3RAZ2VtX2Vpb0B1bndlZGdlLXN0cmVzczoKICAgIC0gc2hh
cmQta2JsOiAgICAgICAgICBbUEFTU11bNV0gLT4gW0RNRVNHLVdBUk5dWzZdIChbZmRvIzExMDkx
MyBdKSArMSBzaW1pbGFyIGlzc3VlCiAgIFs1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI5MC9zaGFyZC1rYmw2L2lndEBnZW1fZWlvQHVud2VkZ2Ut
c3RyZXNzLmh0bWwKICAgWzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xMzMyMS9zaGFyZC1rYmwyL2lndEBnZW1fZWlvQHVud2VkZ2Utc3RyZXNz
Lmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfbm9wQGJhc2ljLXBhcmFsbGVsOgogICAgLSBzaGFyZC1p
Y2xiOiAgICAgICAgIFtQQVNTXVs3XSAtPiBbSU5DT01QTEVURV1bOF0gKFtmZG8jMTA3NzEzXSkK
ICAgWzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82
MjkwL3NoYXJkLWljbGI2L2lndEBnZW1fZXhlY19ub3BAYmFzaWMtcGFyYWxsZWwuaHRtbAogICBb
OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEz
MzIxL3NoYXJkLWljbGI3L2lndEBnZW1fZXhlY19ub3BAYmFzaWMtcGFyYWxsZWwuaHRtbAoKICAq
IGlndEBnZW1fcGVyc2lzdGVudF9yZWxvY3NAZm9ya2VkLWZhdWx0aW5nLXJlbG9jLXRocmFzaGlu
ZzoKICAgIC0gc2hhcmQtc25iOiAgICAgICAgICBbUEFTU11bOV0gLT4gW0RNRVNHLVdBUk5dWzEw
XSAoW2ZkbyMxMTA3ODldIC8gW2ZkbyMxMTA5MTMgXSkKICAgWzldOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjkwL3NoYXJkLXNuYjQvaWd0QGdlbV9w
ZXJzaXN0ZW50X3JlbG9jc0Bmb3JrZWQtZmF1bHRpbmctcmVsb2MtdGhyYXNoaW5nLmh0bWwKICAg
WzEwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTMzMjEvc2hhcmQtc25iMi9pZ3RAZ2VtX3BlcnNpc3RlbnRfcmVsb2NzQGZvcmtlZC1mYXVsdGlu
Zy1yZWxvYy10aHJhc2hpbmcuaHRtbAoKICAqIGlndEBnZW1fdXNlcnB0cl9ibGl0c0BzeW5jLXVu
bWFwLWN5Y2xlczoKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbUEFTU11bMTFdIC0+IFtETUVT
Ry1XQVJOXVsxMl0gKFtmZG8jMTEwOTEzIF0pCiAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyOTAvc2hhcmQtYXBsMi9pZ3RAZ2VtX3VzZXJw
dHJfYmxpdHNAc3luYy11bm1hcC1jeWNsZXMuaHRtbAogICBbMTJdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzMyMS9zaGFyZC1hcGwyL2lndEBn
ZW1fdXNlcnB0cl9ibGl0c0BzeW5jLXVubWFwLWN5Y2xlcy5odG1sCgogICogaWd0QGk5MTVfc2Vs
ZnRlc3RAbGl2ZV9oYW5nY2hlY2s6CiAgICAtIHNoYXJkLXNuYjogICAgICAgICAgW1BBU1NdWzEz
XSAtPiBbSU5DT01QTEVURV1bMTRdIChbZmRvIzEwNTQxMV0pCiAgIFsxM106IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyOTAvc2hhcmQtc25iNy9pZ3RA
aTkxNV9zZWxmdGVzdEBsaXZlX2hhbmdjaGVjay5odG1sCiAgIFsxNF06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzIxL3NoYXJkLXNuYjYvaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZV9oYW5nY2hlY2suaHRtbAoKICAqIGlndEBrbXNfY3Vyc29yX2Ny
Y0BwaXBlLWItY3Vyc29yLTI1NngyNTYtc2xpZGluZzoKICAgIC0gc2hhcmQta2JsOiAgICAgICAg
ICBbUEFTU11bMTVdIC0+IFtJTkNPTVBMRVRFXVsxNl0gKFtmZG8jMTAzNjY1XSkKICAgWzE1XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI5MC9zaGFy
ZC1rYmwxL2lndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWItY3Vyc29yLTI1NngyNTYtc2xpZGluZy5o
dG1sCiAgIFsxNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzEzMzIxL3NoYXJkLWtibDIvaWd0QGttc19jdXJzb3JfY3JjQHBpcGUtYi1jdXJzb3It
MjU2eDI1Ni1zbGlkaW5nLmh0bWwKCiAgKiBpZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1iLWN1cnNv
ci02NHgyMS1zbGlkaW5nOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVsxN10gLT4g
W0ZBSUxdWzE4XSAoW2ZkbyMxMDMyMzJdKSArMSBzaW1pbGFyIGlzc3VlCiAgIFsxN106IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyOTAvc2hhcmQtc2ts
Mi9pZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1iLWN1cnNvci02NHgyMS1zbGlkaW5nLmh0bWwKICAg
WzE4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTMzMjEvc2hhcmQtc2tsNC9pZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1iLWN1cnNvci02NHgyMS1z
bGlkaW5nLmh0bWwKCiAgKiBpZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1iLWN1cnNvci1zdXNwZW5k
OgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVsxOV0gLT4gW0lOQ09NUExFVEVdWzIw
XSAoW2ZkbyMxMTA3NDFdKQogICBbMTldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82MjkwL3NoYXJkLXNrbDIvaWd0QGttc19jdXJzb3JfY3JjQHBpcGUt
Yi1jdXJzb3Itc3VzcGVuZC5odG1sCiAgIFsyMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzIxL3NoYXJkLXNrbDYvaWd0QGttc19jdXJzb3Jf
Y3JjQHBpcGUtYi1jdXJzb3Itc3VzcGVuZC5odG1sCgogICogaWd0QGttc19jdXJzb3JfbGVnYWN5
QGN1cnNvci12cy1mbGlwLXZhcnlpbmctc2l6ZToKICAgIC0gc2hhcmQtaHN3OiAgICAgICAgICBb
UEFTU11bMjFdIC0+IFtGQUlMXVsyMl0gKFtmZG8jMTAzMzU1XSkKICAgWzIxXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI5MC9zaGFyZC1oc3c1L2ln
dEBrbXNfY3Vyc29yX2xlZ2FjeUBjdXJzb3ItdnMtZmxpcC12YXJ5aW5nLXNpemUuaHRtbAogICBb
MjJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
MzMyMS9zaGFyZC1oc3c4L2lndEBrbXNfY3Vyc29yX2xlZ2FjeUBjdXJzb3ItdnMtZmxpcC12YXJ5
aW5nLXNpemUuaHRtbAoKICAqIGlndEBrbXNfZHBfZHNjQGJhc2ljLWRzYy1lbmFibGUtZWRwOgog
ICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVsyM10gLT4gW1NLSVBdWzI0XSAoW2ZkbyMx
MDkzNDldKQogICBbMjNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV82MjkwL3NoYXJkLWljbGIyL2lndEBrbXNfZHBfZHNjQGJhc2ljLWRzYy1lbmFibGUt
ZWRwLmh0bWwKICAgWzI0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTMzMjEvc2hhcmQtaWNsYjUvaWd0QGttc19kcF9kc2NAYmFzaWMtZHNjLWVu
YWJsZS1lZHAuaHRtbAoKICAqIGlndEBrbXNfZmxpcEAyeC1wbGFpbi1mbGlwLXRzLWNoZWNrLWlu
dGVycnVwdGlibGU6CiAgICAtIHNoYXJkLWhzdzogICAgICAgICAgW1BBU1NdWzI1XSAtPiBbU0tJ
UF1bMjZdIChbZmRvIzEwOTI3MV0pICsyMiBzaW1pbGFyIGlzc3VlcwogICBbMjVdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjkwL3NoYXJkLWhzdzUv
aWd0QGttc19mbGlwQDJ4LXBsYWluLWZsaXAtdHMtY2hlY2staW50ZXJydXB0aWJsZS5odG1sCiAg
IFsyNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzEzMzIxL3NoYXJkLWhzdzEvaWd0QGttc19mbGlwQDJ4LXBsYWluLWZsaXAtdHMtY2hlY2staW50
ZXJydXB0aWJsZS5odG1sCgogICogaWd0QGttc19mbGlwQGZsaXAtdnMtc3VzcGVuZDoKICAgIC0g
c2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bMjddIC0+IFtJTkNPTVBMRVRFXVsyOF0gKFtmZG8j
MTA5NTA3XSkKICAgWzI3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNjI5MC9zaGFyZC1za2wxL2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmQuaHRt
bAogICBbMjhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xMzMyMS9zaGFyZC1za2wxMC9pZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLmh0bWwK
ICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbUEFTU11bMjldIC0+IFtETUVTRy1XQVJOXVszMF0g
KFtmZG8jMTA4NTY2XSkKICAgWzI5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNjI5MC9zaGFyZC1rYmwxL2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3Bl
bmQuaHRtbAogICBbMzBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xMzMyMS9zaGFyZC1rYmwyL2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmQu
aHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3Ju
LXNwci1pbmRmYi1kcmF3LXJlbmRlcjoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11b
MzFdIC0+IFtGQUlMXVszMl0gKFtmZG8jMTAzMTY3XSkgKzcgc2ltaWxhciBpc3N1ZXMKICAgWzMx
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI5MC9z
aGFyZC1pY2xiNS9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmltc2Ny
bi1zcHItaW5kZmItZHJhdy1yZW5kZXIuaHRtbAogICBbMzJdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzMyMS9zaGFyZC1pY2xiNS9pZ3RAa21z
X2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmltc2Nybi1zcHItaW5kZmItZHJhdy1y
ZW5kZXIuaHRtbAoKICAqIGlndEBrbXNfcGxhbmVAcGxhbmUtcGFubmluZy1ib3R0b20tcmlnaHQt
c3VzcGVuZC1waXBlLWEtcGxhbmVzOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVsz
M10gLT4gW0lOQ09NUExFVEVdWzM0XSAoW2ZkbyMxMDQxMDhdKQogICBbMzNdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjkwL3NoYXJkLXNrbDgvaWd0
QGttc19wbGFuZUBwbGFuZS1wYW5uaW5nLWJvdHRvbS1yaWdodC1zdXNwZW5kLXBpcGUtYS1wbGFu
ZXMuaHRtbAogICBbMzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xMzMyMS9zaGFyZC1za2wyL2lndEBrbXNfcGxhbmVAcGxhbmUtcGFubmluZy1i
b3R0b20tcmlnaHQtc3VzcGVuZC1waXBlLWEtcGxhbmVzLmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5l
X2FscGhhX2JsZW5kQHBpcGUtYS1jb25zdGFudC1hbHBoYS1taW46CiAgICAtIHNoYXJkLXNrbDog
ICAgICAgICAgW1BBU1NdWzM1XSAtPiBbRkFJTF1bMzZdIChbZmRvIzEwODE0NV0pCiAgIFszNV06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyOTAvc2hh
cmQtc2tsOS9pZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYS1jb25zdGFudC1hbHBoYS1t
aW4uaHRtbAogICBbMzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xMzMyMS9zaGFyZC1za2w3L2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlw
ZS1hLWNvbnN0YW50LWFscGhhLW1pbi5odG1sCgogICogaWd0QGttc19wc3JAcHNyMl9wcmltYXJ5
X21tYXBfY3B1OgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVszN10gLT4gW1NLSVBd
WzM4XSAoW2ZkbyMxMDk0NDFdKQogICBbMzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV82MjkwL3NoYXJkLWljbGIyL2lndEBrbXNfcHNyQHBzcjJfcHJp
bWFyeV9tbWFwX2NwdS5odG1sCiAgIFszOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzIxL3NoYXJkLWljbGI1L2lndEBrbXNfcHNyQHBzcjJf
cHJpbWFyeV9tbWFwX2NwdS5odG1sCgogICogaWd0QGttc192YmxhbmtAcGlwZS1iLXRzLWNvbnRp
bnVhdGlvbi1zdXNwZW5kOgogICAgLSBzaGFyZC1zbmI6ICAgICAgICAgIFtQQVNTXVszOV0gLT4g
W0RNRVNHLVdBUk5dWzQwXSAoW2ZkbyMxMDIzNjVdKQogICBbMzldOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjkwL3NoYXJkLXNuYjQvaWd0QGttc192
YmxhbmtAcGlwZS1iLXRzLWNvbnRpbnVhdGlvbi1zdXNwZW5kLmh0bWwKICAgWzQwXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzMjEvc2hhcmQt
c25iNC9pZ3RAa21zX3ZibGFua0BwaXBlLWItdHMtY29udGludWF0aW9uLXN1c3BlbmQuaHRtbAoK
ICAqIGlndEBwZXJmX3BtdUByYzY6CiAgICAtIHNoYXJkLWtibDogICAgICAgICAgW1BBU1NdWzQx
XSAtPiBbU0tJUF1bNDJdIChbZmRvIzEwOTI3MV0pCiAgIFs0MV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyOTAvc2hhcmQta2JsMi9pZ3RAcGVyZl9w
bXVAcmM2Lmh0bWwKICAgWzQyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTMzMjEvc2hhcmQta2JsNy9pZ3RAcGVyZl9wbXVAcmM2Lmh0bWwKCiAg
CiMjIyMgUG9zc2libGUgZml4ZXMgIyMjIwoKICAqIGlndEBnZW1fcGVyc2lzdGVudF9yZWxvY3NA
Zm9ya2VkOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtJTkNPTVBMRVRFXVs0M10gKFtmZG8j
MTAzOTI3XSkgLT4gW1BBU1NdWzQ0XQogICBbNDNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjkwL3NoYXJkLWFwbDUvaWd0QGdlbV9wZXJzaXN0ZW50
X3JlbG9jc0Bmb3JrZWQuaHRtbAogICBbNDRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzMyMS9zaGFyZC1hcGw3L2lndEBnZW1fcGVyc2lzdGVu
dF9yZWxvY3NAZm9ya2VkLmh0bWwKCiAgKiBpZ3RAZ2VtX3NvZnRwaW5Abm9yZWxvYy1zMzoKICAg
IC0gc2hhcmQta2JsOiAgICAgICAgICBbRE1FU0ctV0FSTl1bNDVdIChbZmRvIzEwODU2Nl0pIC0+
IFtQQVNTXVs0Nl0gKzEgc2ltaWxhciBpc3N1ZQogICBbNDVdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjkwL3NoYXJkLWtibDIvaWd0QGdlbV9zb2Z0
cGluQG5vcmVsb2MtczMuaHRtbAogICBbNDZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzMyMS9zaGFyZC1rYmw3L2lndEBnZW1fc29mdHBpbkBu
b3JlbG9jLXMzLmh0bWwKCiAgKiBpZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAbWFwLWZpeGVkLWludmFs
aWRhdGUtYnVzeS1ndXA6CiAgICAtIHNoYXJkLWtibDogICAgICAgICAgW0RNRVNHLVdBUk5dWzQ3
XSAoW2ZkbyMxMTA5MTMgXSkgLT4gW1BBU1NdWzQ4XSArMSBzaW1pbGFyIGlzc3VlCiAgIFs0N106
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyOTAvc2hh
cmQta2JsMS9pZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAbWFwLWZpeGVkLWludmFsaWRhdGUtYnVzeS1n
dXAuaHRtbAogICBbNDhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xMzMyMS9zaGFyZC1rYmwxL2lndEBnZW1fdXNlcnB0cl9ibGl0c0BtYXAtZml4
ZWQtaW52YWxpZGF0ZS1idXN5LWd1cC5odG1sCgogICogaWd0QGk5MTVfcG1fcnBtQGRlYnVnZnMt
cmVhZDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbSU5DT01QTEVURV1bNDldIChbZmRvIzEw
NzcxM10gLyBbZmRvIzEwODg0MF0pIC0+IFtQQVNTXVs1MF0KICAgWzQ5XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI5MC9zaGFyZC1pY2xiMi9pZ3RA
aTkxNV9wbV9ycG1AZGVidWdmcy1yZWFkLmh0bWwKICAgWzUwXTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzMjEvc2hhcmQtaWNsYjQvaWd0QGk5
MTVfcG1fcnBtQGRlYnVnZnMtcmVhZC5odG1sCgogICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9l
dmljdDoKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbSU5DT01QTEVURV1bNTFdIChbZmRvIzEw
MzY2NV0gLyBbZmRvIzExMDkzOF0pIC0+IFtQQVNTXVs1Ml0KICAgWzUxXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI5MC9zaGFyZC1rYmwzL2lndEBp
OTE1X3NlbGZ0ZXN0QGxpdmVfZXZpY3QuaHRtbAogICBbNTJdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzMyMS9zaGFyZC1rYmw0L2lndEBpOTE1
X3NlbGZ0ZXN0QGxpdmVfZXZpY3QuaHRtbAoKICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfaGFu
Z2NoZWNrOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtJTkNPTVBMRVRFXVs1M10gKFtmZG8j
MTA3NzEzXSAvIFtmZG8jMTA4NTY5XSkgLT4gW1BBU1NdWzU0XQogICBbNTNdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjkwL3NoYXJkLWljbGI0L2ln
dEBpOTE1X3NlbGZ0ZXN0QGxpdmVfaGFuZ2NoZWNrLmh0bWwKICAgWzU0XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzMjEvc2hhcmQtaWNsYjYv
aWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9oYW5nY2hlY2suaHRtbAoKICAqIGlndEBpOTE1X3N1c3Bl
bmRAZmVuY2UtcmVzdG9yZS11bnRpbGVkOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtETUVT
Ry1XQVJOXVs1NV0gKFtmZG8jMTA4NTY2XSkgLT4gW1BBU1NdWzU2XQogICBbNTVdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjkwL3NoYXJkLWFwbDMv
aWd0QGk5MTVfc3VzcGVuZEBmZW5jZS1yZXN0b3JlLXVudGlsZWQuaHRtbAogICBbNTZdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzMyMS9zaGFy
ZC1hcGw2L2lndEBpOTE1X3N1c3BlbmRAZmVuY2UtcmVzdG9yZS11bnRpbGVkLmh0bWwKCiAgKiBp
Z3RAa21zX2ZsaXBAMngtZmxpcC12cy1leHBpcmVkLXZibGFuazoKICAgIC0gc2hhcmQtZ2xrOiAg
ICAgICAgICBbRkFJTF1bNTddIChbZmRvIzEwNTM2M10pIC0+IFtQQVNTXVs1OF0gKzEgc2ltaWxh
ciBpc3N1ZQogICBbNTddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV82MjkwL3NoYXJkLWdsazQvaWd0QGttc19mbGlwQDJ4LWZsaXAtdnMtZXhwaXJlZC12
YmxhbmsuaHRtbAogICBbNThdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xMzMyMS9zaGFyZC1nbGs3L2lndEBrbXNfZmxpcEAyeC1mbGlwLXZzLWV4
cGlyZWQtdmJsYW5rLmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBAMngtcGxhaW4tZmxpcDoKICAgIC0g
c2hhcmQtaHN3OiAgICAgICAgICBbU0tJUF1bNTldIChbZmRvIzEwOTI3MV0pIC0+IFtQQVNTXVs2
MF0gKzIwIHNpbWlsYXIgaXNzdWVzCiAgIFs1OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzYyOTAvc2hhcmQtaHN3MS9pZ3RAa21zX2ZsaXBAMngtcGxh
aW4tZmxpcC5odG1sCiAgIFs2MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzEzMzIxL3NoYXJkLWhzdzUvaWd0QGttc19mbGlwQDJ4LXBsYWluLWZs
aXAuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXByaW1zY3Ju
LWN1ci1pbmRmYi1kcmF3LXJlbmRlcjoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbRkFJTF1b
NjFdIChbZmRvIzEwMzE2N10pIC0+IFtQQVNTXVs2Ml0gKzkgc2ltaWxhciBpc3N1ZXMKICAgWzYx
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI5MC9z
aGFyZC1pY2xiMy9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1wcmltc2Nybi1j
dXItaW5kZmItZHJhdy1yZW5kZXIuaHRtbAogICBbNjJdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzMyMS9zaGFyZC1pY2xiOC9pZ3RAa21zX2Zy
b250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1wcmltc2Nybi1jdXItaW5kZmItZHJhdy1yZW5kZXIu
aHRtbAoKICAqIGlndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1iLWNvbnN0YW50LWFscGhh
LW1pbjoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbRkFJTF1bNjNdIChbZmRvIzEwODE0NV0p
IC0+IFtQQVNTXVs2NF0KICAgWzYzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNjI5MC9zaGFyZC1za2w5L2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRA
cGlwZS1iLWNvbnN0YW50LWFscGhhLW1pbi5odG1sCiAgIFs2NF06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzIxL3NoYXJkLXNrbDYvaWd0QGtt
c19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWItY29uc3RhbnQtYWxwaGEtbWluLmh0bWwKCiAgKiBp
Z3RAa21zX3BsYW5lX2xvd3Jlc0BwaXBlLWEtdGlsaW5nLXk6CiAgICAtIHNoYXJkLWljbGI6ICAg
ICAgICAgW0ZBSUxdWzY1XSAoW2ZkbyMxMDMxNjZdKSAtPiBbUEFTU11bNjZdCiAgIFs2NV06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyOTAvc2hhcmQt
aWNsYjUvaWd0QGttc19wbGFuZV9sb3dyZXNAcGlwZS1hLXRpbGluZy15Lmh0bWwKICAgWzY2XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzMjEv
c2hhcmQtaWNsYjYvaWd0QGttc19wbGFuZV9sb3dyZXNAcGlwZS1hLXRpbGluZy15Lmh0bWwKCiAg
KiBpZ3RAa21zX3BzckBwc3IyX25vX2RycnM6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1NL
SVBdWzY3XSAoW2ZkbyMxMDk0NDFdKSAtPiBbUEFTU11bNjhdICszIHNpbWlsYXIgaXNzdWVzCiAg
IFs2N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYy
OTAvc2hhcmQtaWNsYjUvaWd0QGttc19wc3JAcHNyMl9ub19kcnJzLmh0bWwKICAgWzY4XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzMjEvc2hh
cmQtaWNsYjIvaWd0QGttc19wc3JAcHNyMl9ub19kcnJzLmh0bWwKCiAgKiBpZ3RAa21zX3N5c2Zz
X2VkaWRfdGltaW5nOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtGQUlMXVs2OV0gKFtmZG8j
MTAwMDQ3XSkgLT4gW1BBU1NdWzcwXQogICBbNjldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjkwL3NoYXJkLWljbGIzL2lndEBrbXNfc3lzZnNfZWRp
ZF90aW1pbmcuaHRtbAogICBbNzBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xMzMyMS9zaGFyZC1pY2xiOC9pZ3RAa21zX3N5c2ZzX2VkaWRfdGlt
aW5nLmh0bWwKCiAgCiMjIyMgV2FybmluZ3MgIyMjIwoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJf
dHJhY2tpbmdAZmJjcHNyLTFwLW9mZnNjcmVuLXByaS1pbmRmYi1kcmF3LW1tYXAtZ3R0OgogICAg
LSBzaGFyZC1za2w6ICAgICAgICAgIFtGQUlMXVs3MV0gKFtmZG8jMTA4MDQwXSkgLT4gW0ZBSUxd
WzcyXSAoW2ZkbyMxMDMxNjddKQogICBbNzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV82MjkwL3NoYXJkLXNrbDIvaWd0QGttc19mcm9udGJ1ZmZlcl90
cmFja2luZ0BmYmNwc3ItMXAtb2Zmc2NyZW4tcHJpLWluZGZiLWRyYXctbW1hcC1ndHQuaHRtbAog
ICBbNzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xMzMyMS9zaGFyZC1za2w0L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFw
LW9mZnNjcmVuLXByaS1pbmRmYi1kcmF3LW1tYXAtZ3R0Lmh0bWwKCiAgCiAgW2ZkbyMxMDAwNDdd
OiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDAwNDcKICBb
ZmRvIzEwMjM2NV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lk
PTEwMjM2NQogIFtmZG8jMTAzMTY2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93
X2J1Zy5jZ2k/aWQ9MTAzMTY2CiAgW2ZkbyMxMDMxNjddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0
b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMxNjcKICBbZmRvIzEwMzIzMl06IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzIzMgogIFtmZG8jMTAzMzU1XTog
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMzU1CiAgW2Zk
byMxMDM2NjVdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0x
MDM2NjUKICBbZmRvIzEwMzkyN106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19i
dWcuY2dpP2lkPTEwMzkyNwogIFtmZG8jMTA0MTA4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9w
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA0MTA4CiAgW2ZkbyMxMDUzNjNdOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDUzNjMKICBbZmRvIzEwNTQxMV06IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNTQxMQogIFtmZG8j
MTA3NzEzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3
NzEzCiAgW2ZkbyMxMDgwNDBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMDgwNDAKICBbZmRvIzEwODE0NV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTEwODE0NQogIFtmZG8jMTA4NTY2XTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4NTY2CiAgW2ZkbyMxMDg1NjldOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDg1NjkKICBbZmRvIzEw
ODg0MF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwODg0
MAogIFtmZG8jMTA5MjcxXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTA5MjcxCiAgW2ZkbyMxMDkzNDldOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMDkzNDkKICBbZmRvIzEwOTQ0MV06IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTQ0MQogIFtmZG8jMTA5NTA3XTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5NTA3CiAgW2ZkbyMxMTA3
NDFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA3NDEK
ICBbZmRvIzExMDc4OV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTExMDc4OQogIFtmZG8jMTEwOTEzIF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTExMDkxMyAKICBbZmRvIzExMDkzOF06IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDkzOAoKClBhcnRpY2lwYXRpbmcgaG9zdHMg
KDEwIC0+IDEwKQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgTm8gY2hhbmdlcyBp
biBwYXJ0aWNpcGF0aW5nIGhvc3RzCgoKQnVpbGQgY2hhbmdlcwotLS0tLS0tLS0tLS0tCgogICog
TGludXg6IENJX0RSTV82MjkwIC0+IFBhdGNod29ya18xMzMyMQoKICBDSV9EUk1fNjI5MDogYTBm
YTEwYjVkNjhmZDY1Mzc1MDI5ZGQ4YjYxZDZjOGM2YWExNDEzZiBAIGdpdDovL2Fub25naXQuZnJl
ZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIElHVF81MDU5OiAxZjY3ZWUwZDA5ZDY1MTNmNDg3
ZjJiZTc0YWFlOTcwMGU3NTUyNThhIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcveG9y
Zy9hcHAvaW50ZWwtZ3B1LXRvb2xzCiAgUGF0Y2h3b3JrXzEzMzIxOiAwYmIwMTFhMGYzODE4YmEz
ZGYwMTExODdlMjg4M2VjNjM4MGM2ODgyIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcv
Z2Z4LWNpL2xpbnV4CiAgcGlnbGl0XzQ1MDk6IGZkYzVhNGNhMTExMjRhYjg0MTNjNzk4ODg5NmVl
YzRjOTczMzY2OTQgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9waWdsaXQKCj09IExv
Z3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzMyMS8KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
