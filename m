Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EBE14A411
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 16:32:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03CFB6E1D8;
	Tue, 18 Jun 2019 14:32:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5678F6E1D8;
 Tue, 18 Jun 2019 14:32:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4FFD9A00EA;
 Tue, 18 Jun 2019 14:32:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Tue, 18 Jun 2019 14:32:41 -0000
Message-ID: <20190618143241.30455.80159@emeril.freedesktop.org>
References: <20190614180734.13350-1-matthew.d.roper@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190614180734.13350-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/?=
 =?utf-8?q?i915/ehl=3A_Allow_combo_PHY_A_to_drive_a_third_external_display?=
 =?utf-8?q?_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZWhsOiBBbGxvdyBjb21ibyBQ
SFkgQSB0byBkcml2ZSBhIHRoaXJkIGV4dGVybmFsIGRpc3BsYXkgKHJldjIpClVSTCAgIDogaHR0
cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MjEzMS8KU3RhdGUgOiBmYWls
dXJlCgo9PSBTdW1tYXJ5ID09CgpDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV82Mjg5
X2Z1bGwgLT4gUGF0Y2h3b3JrXzEzMzE4X2Z1bGwKPT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PQoKU3VtbWFyeQotLS0tLS0tCgogICoqRkFJTFVSRSoq
CgogIFNlcmlvdXMgdW5rbm93biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNod29ya18xMzMxOF9m
dWxsIGFic29sdXRlbHkgbmVlZCB0byBiZQogIHZlcmlmaWVkIG1hbnVhbGx5LgogIAogIElmIHlv
dSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUg
Y2hhbmdlcwogIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzEzMzE4X2Z1bGwsIHBsZWFzZSBub3Rp
ZnkgeW91ciBidWcgdGVhbSB0byBhbGxvdyB0aGVtCiAgdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFp
bHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuCgogIAoK
UG9zc2libGUgbmV3IGlzc3VlcwotLS0tLS0tLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSB1
bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3Jr
XzEzMzE4X2Z1bGw6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIFBvc3NpYmxlIHJlZ3Jlc3Np
b25zICMjIyMKCiAgKiBpZ3RAZ2VtX2N0eF9zd2l0Y2hAYmFzaWMtcXVldWUtbGlnaHQ6CiAgICAt
IHNoYXJkLWFwbDogICAgICAgICAgW1BBU1NdWzFdIC0+IFtGQUlMXVsyXQogICBbMV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyODkvc2hhcmQtYXBs
Ni9pZ3RAZ2VtX2N0eF9zd2l0Y2hAYmFzaWMtcXVldWUtbGlnaHQuaHRtbAogICBbMl06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzE4L3NoYXJk
LWFwbDEvaWd0QGdlbV9jdHhfc3dpdGNoQGJhc2ljLXF1ZXVlLWxpZ2h0Lmh0bWwKCiAgCktub3du
IGlzc3VlcwotLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0
Y2h3b3JrXzEzMzE4X2Z1bGwgdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBj
aGFuZ2VzICMjIwoKIyMjIyBJc3N1ZXMgaGl0ICMjIyMKCiAgKiBpZ3RAZ2VtX3BlcnNpc3RlbnRf
cmVsb2NzQGZvcmtlZC1pbnRlcnJ1cHRpYmxlLWZhdWx0aW5nLXJlbG9jLXRocmFzaGluZzoKICAg
IC0gc2hhcmQtYXBsOiAgICAgICAgICBbUEFTU11bM10gLT4gW0RNRVNHLVdBUk5dWzRdIChbZmRv
IzExMDkxMyBdKSArMSBzaW1pbGFyIGlzc3VlCiAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI4OS9zaGFyZC1hcGw3L2lndEBnZW1fcGVyc2lz
dGVudF9yZWxvY3NAZm9ya2VkLWludGVycnVwdGlibGUtZmF1bHRpbmctcmVsb2MtdGhyYXNoaW5n
Lmh0bWwKICAgWzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xMzMxOC9zaGFyZC1hcGwzL2lndEBnZW1fcGVyc2lzdGVudF9yZWxvY3NAZm9ya2Vk
LWludGVycnVwdGlibGUtZmF1bHRpbmctcmVsb2MtdGhyYXNoaW5nLmh0bWwKCiAgKiBpZ3RAZ2Vt
X3VzZXJwdHJfYmxpdHNAbWFwLWZpeGVkLWludmFsaWRhdGUtYnVzeS1ndXA6CiAgICAtIHNoYXJk
LXNuYjogICAgICAgICAgW1BBU1NdWzVdIC0+IFtETUVTRy1XQVJOXVs2XSAoW2ZkbyMxMTA5MTMg
XSkgKzEgc2ltaWxhciBpc3N1ZQogICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzYyODkvc2hhcmQtc25iNS9pZ3RAZ2VtX3VzZXJwdHJfYmxpdHNA
bWFwLWZpeGVkLWludmFsaWRhdGUtYnVzeS1ndXAuaHRtbAogICBbNl06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzE4L3NoYXJkLXNuYjEvaWd0
QGdlbV91c2VycHRyX2JsaXRzQG1hcC1maXhlZC1pbnZhbGlkYXRlLWJ1c3ktZ3VwLmh0bWwKCiAg
KiBpZ3RAZ2VtX3dvcmthcm91bmRzQHN1c3BlbmQtcmVzdW1lLWNvbnRleHQ6CiAgICAtIHNoYXJk
LXNrbDogICAgICAgICAgW1BBU1NdWzddIC0+IFtJTkNPTVBMRVRFXVs4XSAoW2ZkbyMxMDQxMDhd
KQogICBbN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzYyODkvc2hhcmQtc2tsMy9pZ3RAZ2VtX3dvcmthcm91bmRzQHN1c3BlbmQtcmVzdW1lLWNvbnRl
eHQuaHRtbAogICBbOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzEzMzE4L3NoYXJkLXNrbDgvaWd0QGdlbV93b3JrYXJvdW5kc0BzdXNwZW5kLXJl
c3VtZS1jb250ZXh0Lmh0bWwKCiAgKiBpZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1jLWN1cnNvci1z
dXNwZW5kOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtQQVNTXVs5XSAtPiBbRE1FU0ctV0FS
Tl1bMTBdIChbZmRvIzEwODU2Nl0pICsyIHNpbWlsYXIgaXNzdWVzCiAgIFs5XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI4OS9zaGFyZC1hcGw1L2ln
dEBrbXNfY3Vyc29yX2NyY0BwaXBlLWMtY3Vyc29yLXN1c3BlbmQuaHRtbAogICBbMTBdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzMxOC9zaGFy
ZC1hcGw1L2lndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWMtY3Vyc29yLXN1c3BlbmQuaHRtbAoKICAq
IGlndEBrbXNfY3Vyc29yX2xlZ2FjeUBjdXJzb3ItdnMtZmxpcC10b2dnbGU6CiAgICAtIHNoYXJk
LWhzdzogICAgICAgICAgW1BBU1NdWzExXSAtPiBbRkFJTF1bMTJdIChbZmRvIzEwMzM1NV0pCiAg
IFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYy
ODkvc2hhcmQtaHN3Ny9pZ3RAa21zX2N1cnNvcl9sZWdhY3lAY3Vyc29yLXZzLWZsaXAtdG9nZ2xl
Lmh0bWwKICAgWzEyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTMzMTgvc2hhcmQtaHN3NS9pZ3RAa21zX2N1cnNvcl9sZWdhY3lAY3Vyc29yLXZz
LWZsaXAtdG9nZ2xlLmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBAMngtZmxpcC12cy1kcG1zLW9mZi12
cy1tb2Rlc2V0OgogICAgLSBzaGFyZC1oc3c6ICAgICAgICAgIFtQQVNTXVsxM10gLT4gW1NLSVBd
WzE0XSAoW2ZkbyMxMDkyNzFdKSArMzUgc2ltaWxhciBpc3N1ZXMKICAgWzEzXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI4OS9zaGFyZC1oc3c3L2ln
dEBrbXNfZmxpcEAyeC1mbGlwLXZzLWRwbXMtb2ZmLXZzLW1vZGVzZXQuaHRtbAogICBbMTRdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzMxOC9z
aGFyZC1oc3cxL2lndEBrbXNfZmxpcEAyeC1mbGlwLXZzLWRwbXMtb2ZmLXZzLW1vZGVzZXQuaHRt
bAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXByaW1zY3JuLXNocmZi
LW1zZmxpcC1ibHQ6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzE1XSAtPiBbRkFJ
TF1bMTZdIChbZmRvIzEwMzE2N10pICs1IHNpbWlsYXIgaXNzdWVzCiAgIFsxNV06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyODkvc2hhcmQtaWNsYjcv
aWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtcHJpbXNjcm4tc2hyZmItbXNmbGlw
LWJsdC5odG1sCiAgIFsxNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzEzMzE4L3NoYXJkLWljbGI4L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tp
bmdAZmJjLTFwLXByaW1zY3JuLXNocmZiLW1zZmxpcC1ibHQuaHRtbAoKICAqIGlndEBrbXNfZnJv
bnRidWZmZXJfdHJhY2tpbmdAZmJjLXN1c3BlbmQ6CiAgICAtIHNoYXJkLWtibDogICAgICAgICAg
W1BBU1NdWzE3XSAtPiBbRE1FU0ctV0FSTl1bMThdIChbZmRvIzEwODU2Nl0pICsyIHNpbWlsYXIg
aXNzdWVzCiAgIFsxN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzYyODkvc2hhcmQta2JsNy9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy1z
dXNwZW5kLmh0bWwKICAgWzE4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTMzMTgvc2hhcmQta2JsNi9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNr
aW5nQGZiYy1zdXNwZW5kLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZi
Y3Bzci1zdXNwZW5kOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVsxOV0gLT4gW0lO
Q09NUExFVEVdWzIwXSAoW2ZkbyMxMDY5NzhdIC8gW2ZkbyMxMDc3MTNdKQogICBbMTldOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82Mjg5L3NoYXJkLWlj
bGIyL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLXN1c3BlbmQuaHRtbAogICBb
MjBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
MzMxOC9zaGFyZC1pY2xiMy9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci1zdXNw
ZW5kLmh0bWwKCiAgKiBpZ3RAa21zX3BzckBub19kcnJzOgogICAgLSBzaGFyZC1pY2xiOiAgICAg
ICAgIFtQQVNTXVsyMV0gLT4gW0ZBSUxdWzIyXSAoW2ZkbyMxMDgzNDFdKQogICBbMjFdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82Mjg5L3NoYXJkLWlj
bGI1L2lndEBrbXNfcHNyQG5vX2RycnMuaHRtbAogICBbMjJdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzMxOC9zaGFyZC1pY2xiMS9pZ3RAa21z
X3BzckBub19kcnJzLmh0bWwKCiAgKiBpZ3RAa21zX3BzckBwc3IyX25vX2RycnM6CiAgICAtIHNo
YXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzIzXSAtPiBbU0tJUF1bMjRdIChbZmRvIzEwOTQ0MV0p
ICsyIHNpbWlsYXIgaXNzdWVzCiAgIFsyM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzYyODkvc2hhcmQtaWNsYjIvaWd0QGttc19wc3JAcHNyMl9ub19k
cnJzLmh0bWwKICAgWzI0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTMzMTgvc2hhcmQtaWNsYjYvaWd0QGttc19wc3JAcHNyMl9ub19kcnJzLmh0
bWwKCiAgKiBpZ3RAa21zX3N5c2ZzX2VkaWRfdGltaW5nOgogICAgLSBzaGFyZC1pY2xiOiAgICAg
ICAgIFtQQVNTXVsyNV0gLT4gW0ZBSUxdWzI2XSAoW2ZkbyMxMDAwNDddKQogICBbMjVdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82Mjg5L3NoYXJkLWlj
bGI2L2lndEBrbXNfc3lzZnNfZWRpZF90aW1pbmcuaHRtbAogICBbMjZdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzMxOC9zaGFyZC1pY2xiMi9p
Z3RAa21zX3N5c2ZzX2VkaWRfdGltaW5nLmh0bWwKCiAgKiBpZ3RAa21zX3ZibGFua0BwaXBlLWMt
cXVlcnktYnVzeS1oYW5nOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVsyN10gLT4g
W0lOQ09NUExFVEVdWzI4XSAoW2ZkbyMxMDc3MTNdKQogICBbMjddOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82Mjg5L3NoYXJkLWljbGI4L2lndEBrbXNf
dmJsYW5rQHBpcGUtYy1xdWVyeS1idXN5LWhhbmcuaHRtbAogICBbMjhdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzMxOC9zaGFyZC1pY2xiNy9p
Z3RAa21zX3ZibGFua0BwaXBlLWMtcXVlcnktYnVzeS1oYW5nLmh0bWwKCiAgCiMjIyMgUG9zc2li
bGUgZml4ZXMgIyMjIwoKICAqIGlndEBnZW1fbW1hcF9ndHRAaGFuZzoKICAgIC0gc2hhcmQtYXBs
OiAgICAgICAgICBbRE1FU0ctV0FSTl1bMjldIChbZmRvIzExMDkxMyBdKSAtPiBbUEFTU11bMzBd
ICsxIHNpbWlsYXIgaXNzdWUKICAgWzI5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNjI4OS9zaGFyZC1hcGw3L2lndEBnZW1fbW1hcF9ndHRAaGFuZy5o
dG1sCiAgIFszMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzEzMzE4L3NoYXJkLWFwbDMvaWd0QGdlbV9tbWFwX2d0dEBoYW5nLmh0bWwKCiAgKiBp
Z3RAZ2VtX3BlcnNpc3RlbnRfcmVsb2NzQGZvcmtlZC1pbnRlcnJ1cHRpYmxlLWZhdWx0aW5nLXJl
bG9jLXRocmFzaC1pbmFjdGl2ZToKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbSU5DT01QTEVU
RV1bMzFdIChbZmRvIzEwMzkyN10pIC0+IFtQQVNTXVszMl0KICAgWzMxXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI4OS9zaGFyZC1hcGwxL2lndEBn
ZW1fcGVyc2lzdGVudF9yZWxvY3NAZm9ya2VkLWludGVycnVwdGlibGUtZmF1bHRpbmctcmVsb2Mt
dGhyYXNoLWluYWN0aXZlLmh0bWwKICAgWzMyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzMTgvc2hhcmQtYXBsMy9pZ3RAZ2VtX3BlcnNpc3Rl
bnRfcmVsb2NzQGZvcmtlZC1pbnRlcnJ1cHRpYmxlLWZhdWx0aW5nLXJlbG9jLXRocmFzaC1pbmFj
dGl2ZS5odG1sCgogICogaWd0QGdlbV9wZXJzaXN0ZW50X3JlbG9jc0Bmb3JrZWQtaW50ZXJydXB0
aWJsZS1mYXVsdGluZy1yZWxvYy10aHJhc2hpbmc6CiAgICAtIHNoYXJkLXNuYjogICAgICAgICAg
W0RNRVNHLVdBUk5dWzMzXSAoW2ZkbyMxMTA3ODldIC8gW2ZkbyMxMTA5MTMgXSkgLT4gW1BBU1Nd
WzM0XQogICBbMzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82Mjg5L3NoYXJkLXNuYjEvaWd0QGdlbV9wZXJzaXN0ZW50X3JlbG9jc0Bmb3JrZWQtaW50
ZXJydXB0aWJsZS1mYXVsdGluZy1yZWxvYy10aHJhc2hpbmcuaHRtbAogICBbMzRdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzMxOC9zaGFyZC1z
bmIyL2lndEBnZW1fcGVyc2lzdGVudF9yZWxvY3NAZm9ya2VkLWludGVycnVwdGlibGUtZmF1bHRp
bmctcmVsb2MtdGhyYXNoaW5nLmh0bWwKCiAgKiBpZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1iLWN1
cnNvci1zdXNwZW5kOgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtJTkNPTVBMRVRFXVszNV0g
KFtmZG8jMTAzNjY1XSkgLT4gW1BBU1NdWzM2XQogICBbMzVdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82Mjg5L3NoYXJkLWtibDIvaWd0QGttc19jdXJz
b3JfY3JjQHBpcGUtYi1jdXJzb3Itc3VzcGVuZC5odG1sCiAgIFszNl06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzE4L3NoYXJkLWtibDcvaWd0
QGttc19jdXJzb3JfY3JjQHBpcGUtYi1jdXJzb3Itc3VzcGVuZC5odG1sCgogICogaWd0QGttc19j
dXJzb3JfbGVnYWN5QGZsaXAtdnMtY3Vyc29yLWF0b21pYy10cmFuc2l0aW9ucy12YXJ5aW5nLXNp
emU6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZBSUxdWzM3XSAoW2ZkbyMxMDI2NzBdKSAt
PiBbUEFTU11bMzhdCiAgIFszN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzYyODkvc2hhcmQtc2tsMy9pZ3RAa21zX2N1cnNvcl9sZWdhY3lAZmxpcC12
cy1jdXJzb3ItYXRvbWljLXRyYW5zaXRpb25zLXZhcnlpbmctc2l6ZS5odG1sCiAgIFszOF06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzE4L3No
YXJkLXNrbDQvaWd0QGttc19jdXJzb3JfbGVnYWN5QGZsaXAtdnMtY3Vyc29yLWF0b21pYy10cmFu
c2l0aW9ucy12YXJ5aW5nLXNpemUuaHRtbAoKICAqIGlndEBrbXNfZmxpcEAyeC1wbGFpbi1mbGlw
OgogICAgLSBzaGFyZC1oc3c6ICAgICAgICAgIFtTS0lQXVszOV0gKFtmZG8jMTA5MjcxXSkgLT4g
W1BBU1NdWzQwXSArMzEgc2ltaWxhciBpc3N1ZXMKICAgWzM5XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI4OS9zaGFyZC1oc3cxL2lndEBrbXNfZmxp
cEAyeC1wbGFpbi1mbGlwLmh0bWwKICAgWzQwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzMTgvc2hhcmQtaHN3NC9pZ3RAa21zX2ZsaXBAMngt
cGxhaW4tZmxpcC5odG1sCgogICogaWd0QGttc19mbGlwQGZsaXAtdnMtYWJzb2x1dGUtd2ZfdmJs
YW5rOgogICAgLSBzaGFyZC1oc3c6ICAgICAgICAgIFtJTkNPTVBMRVRFXVs0MV0gKFtmZG8jMTAz
NTQwXSkgLT4gW1BBU1NdWzQyXSArMSBzaW1pbGFyIGlzc3VlCiAgIFs0MV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyODkvc2hhcmQtaHN3NS9pZ3RA
a21zX2ZsaXBAZmxpcC12cy1hYnNvbHV0ZS13Zl92YmxhbmsuaHRtbAogICBbNDJdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzMxOC9zaGFyZC1o
c3c3L2lndEBrbXNfZmxpcEBmbGlwLXZzLWFic29sdXRlLXdmX3ZibGFuay5odG1sCgogICogaWd0
QGttc19mbGlwX3RpbGluZ0BmbGlwLXlmLXRpbGVkOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAg
IFtGQUlMXVs0M10gKFtmZG8jMTA4MTQ1XSkgLT4gW1BBU1NdWzQ0XQogICBbNDNdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82Mjg5L3NoYXJkLXNrbDgv
aWd0QGttc19mbGlwX3RpbGluZ0BmbGlwLXlmLXRpbGVkLmh0bWwKICAgWzQ0XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzMTgvc2hhcmQtc2ts
Mi9pZ3RAa21zX2ZsaXBfdGlsaW5nQGZsaXAteWYtdGlsZWQuaHRtbAoKICAqIGlndEBrbXNfZnJv
bnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXByaW1zY3JuLXNocmZiLXBsZmxpcC1ibHQ6CiAgICAt
IHNoYXJkLWljbGI6ICAgICAgICAgW0ZBSUxdWzQ1XSAoW2ZkbyMxMDMxNjddKSAtPiBbUEFTU11b
NDZdICs2IHNpbWlsYXIgaXNzdWVzCiAgIFs0NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzYyODkvc2hhcmQtaWNsYjQvaWd0QGttc19mcm9udGJ1ZmZl
cl90cmFja2luZ0BmYmMtMXAtcHJpbXNjcm4tc2hyZmItcGxmbGlwLWJsdC5odG1sCiAgIFs0Nl06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzE4
L3NoYXJkLWljbGI1L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXByaW1zY3Ju
LXNocmZiLXBsZmxpcC1ibHQuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdA
ZmJjLXN1c3BlbmQ6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW0RNRVNHLVdBUk5dWzQ3XSAo
W2ZkbyMxMDg1NjZdKSAtPiBbUEFTU11bNDhdICsxIHNpbWlsYXIgaXNzdWUKICAgWzQ3XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI4OS9zaGFyZC1h
cGwxL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLXN1c3BlbmQuaHRtbAogICBbNDhd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzMx
OC9zaGFyZC1hcGw4L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLXN1c3BlbmQuaHRt
bAoKICAqIGlndEBrbXNfcGxhbmVAcGxhbmUtcGFubmluZy1ib3R0b20tcmlnaHQtc3VzcGVuZC1w
aXBlLWMtcGxhbmVzOgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtETUVTRy1XQVJOXVs0OV0g
KFtmZG8jMTA4NTY2XSkgLT4gW1BBU1NdWzUwXSArMSBzaW1pbGFyIGlzc3VlCiAgIFs0OV06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyODkvc2hhcmQt
a2JsNi9pZ3RAa21zX3BsYW5lQHBsYW5lLXBhbm5pbmctYm90dG9tLXJpZ2h0LXN1c3BlbmQtcGlw
ZS1jLXBsYW5lcy5odG1sCiAgIFs1MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzEzMzE4L3NoYXJkLWtibDQvaWd0QGttc19wbGFuZUBwbGFuZS1w
YW5uaW5nLWJvdHRvbS1yaWdodC1zdXNwZW5kLXBpcGUtYy1wbGFuZXMuaHRtbAoKICAqIGlndEBr
bXNfcHNyQHBzcjJfc3VzcGVuZDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbU0tJUF1bNTFd
IChbZmRvIzEwOTQ0MV0pIC0+IFtQQVNTXVs1Ml0gKzEgc2ltaWxhciBpc3N1ZQogICBbNTFdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82Mjg5L3NoYXJk
LWljbGI2L2lndEBrbXNfcHNyQHBzcjJfc3VzcGVuZC5odG1sCiAgIFs1Ml06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzE4L3NoYXJkLWljbGIy
L2lndEBrbXNfcHNyQHBzcjJfc3VzcGVuZC5odG1sCgogICogaWd0QGttc19zZXRtb2RlQGJhc2lj
OgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtGQUlMXVs1M10gKFtmZG8jOTk5MTJdKSAtPiBb
UEFTU11bNTRdCiAgIFs1M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzYyODkvc2hhcmQta2JsMy9pZ3RAa21zX3NldG1vZGVAYmFzaWMuaHRtbAogICBb
NTRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
MzMxOC9zaGFyZC1rYmwxL2lndEBrbXNfc2V0bW9kZUBiYXNpYy5odG1sCgogICogaWd0QGttc192
YmxhbmtAcGlwZS1jLXRzLWNvbnRpbnVhdGlvbi1kcG1zLXN1c3BlbmQ6CiAgICAtIHNoYXJkLXNr
bDogICAgICAgICAgW0lOQ09NUExFVEVdWzU1XSAoW2ZkbyMxMDQxMDhdKSAtPiBbUEFTU11bNTZd
CiAgIFs1NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzYyODkvc2hhcmQtc2tsNC9pZ3RAa21zX3ZibGFua0BwaXBlLWMtdHMtY29udGludWF0aW9uLWRw
bXMtc3VzcGVuZC5odG1sCiAgIFs1Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzEzMzE4L3NoYXJkLXNrbDEvaWd0QGttc192YmxhbmtAcGlwZS1j
LXRzLWNvbnRpbnVhdGlvbi1kcG1zLXN1c3BlbmQuaHRtbAoKICAqIGlndEB0b29sc190ZXN0QHRv
b2xzX3Rlc3Q6CiAgICAtIHNoYXJkLWdsazogICAgICAgICAgW1NLSVBdWzU3XSAoW2ZkbyMxMDky
NzFdKSAtPiBbUEFTU11bNThdCiAgIFs1N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzYyODkvc2hhcmQtZ2xrMS9pZ3RAdG9vbHNfdGVzdEB0b29sc190
ZXN0Lmh0bWwKICAgWzU4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTMzMTgvc2hhcmQtZ2xrNi9pZ3RAdG9vbHNfdGVzdEB0b29sc190ZXN0Lmh0
bWwKCiAgCiAgW2ZkbyMxMDAwNDddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMDAwNDcKICBbZmRvIzEwMjY3MF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMjY3MAogIFtmZG8jMTAzMTY3XTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMTY3CiAgW2ZkbyMxMDMzNTVdOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMzNTUKICBbZmRv
IzEwMzU0MF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEw
MzU0MAogIFtmZG8jMTAzNjY1XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTAzNjY1CiAgW2ZkbyMxMDM5MjddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Au
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMDM5MjcKICBbZmRvIzEwNDEwOF06IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNDEwOAogIFtmZG8jMTA2OTc4XTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA2OTc4CiAgW2ZkbyMx
MDc3MTNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc3
MTMKICBbZmRvIzEwODE0NV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTEwODE0NQogIFtmZG8jMTA4MzQxXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MTA4MzQxCiAgW2ZkbyMxMDg1NjZdOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDg1NjYKICBbZmRvIzEwOTI3MV06IGh0dHBz
Oi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI3MQogIFtmZG8jMTA5
NDQxXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5NDQx
CiAgW2ZkbyMxMTA3ODldOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMTA3ODkKICBbZmRvIzExMDkxMyBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMTA5MTMgCiAgW2ZkbyM5OTkxMl06IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTk5OTEyCgoKUGFydGljaXBhdGluZyBob3N0cyAo
MTAgLT4gMTApCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBObyBjaGFuZ2VzIGlu
IHBhcnRpY2lwYXRpbmcgaG9zdHMKCgpCdWlsZCBjaGFuZ2VzCi0tLS0tLS0tLS0tLS0KCiAgKiBM
aW51eDogQ0lfRFJNXzYyODkgLT4gUGF0Y2h3b3JrXzEzMzE4CgogIENJX0RSTV82Mjg5OiA4OTcz
MTRlMjBkZTNiNTY1YWI5MTYzN2Y2OTgxN2ViZWRkZGUwN2VmIEAgZ2l0Oi8vYW5vbmdpdC5mcmVl
ZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgSUdUXzUwNTk6IDFmNjdlZTBkMDlkNjUxM2Y0ODdm
MmJlNzRhYWU5NzAwZTc1NTI1OGEgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94b3Jn
L2FwcC9pbnRlbC1ncHUtdG9vbHMKICBQYXRjaHdvcmtfMTMzMTg6IDEyOGVlMGRkZWY0OGZlOWI1
MDQ1ODI1YjFiMDBlNzc1ZjE2M2I2NTAgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9n
ZngtY2kvbGludXgKICBwaWdsaXRfNDUwOTogZmRjNWE0Y2ExMTEyNGFiODQxM2M3OTg4ODk2ZWVj
NGM5NzMzNjY5NCBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3BpZ2xpdAoKPT0gTG9n
cyA9PQoKRm9yIG1vcmUgZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzE4LwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
