Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79580FB9D
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 16:37:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DC87891D4;
	Tue, 30 Apr 2019 14:36:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8C67C891D4;
 Tue, 30 Apr 2019 14:36:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8513AA0099;
 Tue, 30 Apr 2019 14:36:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Aditya Swarup" <aditya.swarup@intel.com>
Date: Tue, 30 Apr 2019 14:36:56 -0000
Message-ID: <20190430143656.26877.59832@emeril.freedesktop.org>
References: <20190430000028.4690-1-aditya.swarup@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190430000028.4690-1-aditya.swarup@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/?=
 =?utf-8?q?i915/icl=3A_Fix_setting_10_bit_deep_color_mode?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvaWNsOiBGaXggc2V0dGluZyAx
MCBiaXQgZGVlcCBjb2xvciBtb2RlClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnL3Nlcmllcy82MDA4MC8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpDSSBC
dWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV82MDEyX2Z1bGwgLT4gUGF0Y2h3b3JrXzEyOTAx
X2Z1bGwKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PQoKU3VtbWFyeQotLS0tLS0tCgogICoqRkFJTFVSRSoqCgogIFNlcmlvdXMgdW5rbm93biBjaGFu
Z2VzIGNvbWluZyB3aXRoIFBhdGNod29ya18xMjkwMV9mdWxsIGFic29sdXRlbHkgbmVlZCB0byBi
ZQogIHZlcmlmaWVkIG1hbnVhbGx5LgogIAogIElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hh
bmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcwogIGludHJvZHVjZWQgaW4g
UGF0Y2h3b3JrXzEyOTAxX2Z1bGwsIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSB0byBhbGxv
dyB0aGVtCiAgdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJl
ZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuCgogIAoKUG9zc2libGUgbmV3IGlzc3VlcwotLS0t
LS0tLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkg
aGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzEyOTAxX2Z1bGw6CgojIyMgSUdUIGNo
YW5nZXMgIyMjCgojIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMKCiAgKiBpZ3RAZ2VtX21t
YXBfZ3R0QGZvcmtlZC1iaWctY29weS1vZGQ6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgTk9U
UlVOIC0+IFtJTkNPTVBMRVRFXVsxXSArMyBzaW1pbGFyIGlzc3VlcwogICBbMV06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyOTAxL3NoYXJkLXNr
bDgvaWd0QGdlbV9tbWFwX2d0dEBmb3JrZWQtYmlnLWNvcHktb2RkLmh0bWwKCiAgKiBpZ3RAa21z
X3BpcGVfY3JjX2Jhc2ljQHJlYWQtY3JjLXBpcGUtYjoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAg
ICBbUEFTU11bMl0gLT4gW0lOQ09NUExFVEVdWzNdICs5IHNpbWlsYXIgaXNzdWVzCiAgIFsyXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjAxMi9zaGFy
ZC1za2w3L2lndEBrbXNfcGlwZV9jcmNfYmFzaWNAcmVhZC1jcmMtcGlwZS1iLmh0bWwKICAgWzNd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjkw
MS9zaGFyZC1za2wzL2lndEBrbXNfcGlwZV9jcmNfYmFzaWNAcmVhZC1jcmMtcGlwZS1iLmh0bWwK
CiAgCktub3duIGlzc3VlcwotLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91
bmQgaW4gUGF0Y2h3b3JrXzEyOTAxX2Z1bGwgdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOgoK
IyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBJc3N1ZXMgaGl0ICMjIyMKCiAgKiBpZ3RAZ2VtX2V4
ZWNfYmFzaWNAYmFzaWMtYnNkOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtQQVNTXVs0XSAt
PiBbSU5DT01QTEVURV1bNV0gKFtmZG8jMTAzOTI3XSkgKzIgc2ltaWxhciBpc3N1ZXMKICAgWzRd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDEyL3No
YXJkLWFwbDQvaWd0QGdlbV9leGVjX2Jhc2ljQGJhc2ljLWJzZC5odG1sCiAgIFs1XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI5MDEvc2hhcmQt
YXBsMy9pZ3RAZ2VtX2V4ZWNfYmFzaWNAYmFzaWMtYnNkLmh0bWwKCiAgKiBpZ3RAa21zX2N1cnNv
cl9jcmNAY3Vyc29yLTY0eDIxLW9mZnNjcmVlbjoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBb
UEFTU11bNl0gLT4gW0ZBSUxdWzddIChbZmRvIzEwMzIzMl0pCiAgIFs2XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjAxMi9zaGFyZC1za2wyL2lndEBr
bXNfY3Vyc29yX2NyY0BjdXJzb3ItNjR4MjEtb2Zmc2NyZWVuLmh0bWwKICAgWzddOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjkwMS9zaGFyZC1z
a2w4L2lndEBrbXNfY3Vyc29yX2NyY0BjdXJzb3ItNjR4MjEtb2Zmc2NyZWVuLmh0bWwKCiAgKiBp
Z3RAa21zX2N1cnNvcl9jcmNAY3Vyc29yLTY0eDY0LXJhcGlkLW1vdmVtZW50OgogICAgLSBzaGFy
ZC1pY2xiOiAgICAgICAgIFtQQVNTXVs4XSAtPiBbSU5DT01QTEVURV1bOV0gKFtmZG8jMTA3NzEz
XSkKICAgWzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV82MDEyL3NoYXJkLWljbGIzL2lndEBrbXNfY3Vyc29yX2NyY0BjdXJzb3ItNjR4NjQtcmFwaWQt
bW92ZW1lbnQuaHRtbAogICBbOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzEyOTAxL3NoYXJkLWljbGI4L2lndEBrbXNfY3Vyc29yX2NyY0BjdXJz
b3ItNjR4NjQtcmFwaWQtbW92ZW1lbnQuaHRtbAoKICAqIGlndEBrbXNfY3Vyc29yX2xlZ2FjeUBj
dXJzb3ItdnMtZmxpcC10b2dnbGU6CiAgICAtIHNoYXJkLWhzdzogICAgICAgICAgW1BBU1NdWzEw
XSAtPiBbRkFJTF1bMTFdIChbZmRvIzEwMzM1NV0pCiAgIFsxMF06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYwMTIvc2hhcmQtaHN3OC9pZ3RAa21zX2N1
cnNvcl9sZWdhY3lAY3Vyc29yLXZzLWZsaXAtdG9nZ2xlLmh0bWwKICAgWzExXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI5MDEvc2hhcmQtaHN3
Ni9pZ3RAa21zX2N1cnNvcl9sZWdhY3lAY3Vyc29yLXZzLWZsaXAtdG9nZ2xlLmh0bWwKCiAgKiBp
Z3RAa21zX2ZsaXBAMngtZmxpcC12cy1kcG1zOgogICAgLSBzaGFyZC1oc3c6ICAgICAgICAgIFtQ
QVNTXVsxMl0gLT4gW0lOQ09NUExFVEVdWzEzXSAoW2ZkbyMxMDM1NDBdKSArMiBzaW1pbGFyIGlz
c3VlcwogICBbMTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82MDEyL3NoYXJkLWhzdzUvaWd0QGttc19mbGlwQDJ4LWZsaXAtdnMtZHBtcy5odG1sCiAg
IFsxM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzEyOTAxL3NoYXJkLWhzdzgvaWd0QGttc19mbGlwQDJ4LWZsaXAtdnMtZHBtcy5odG1sCgogICog
aWd0QGttc19mbGlwQGZsaXAtdnMtZXhwaXJlZC12YmxhbmstaW50ZXJydXB0aWJsZToKICAgIC0g
c2hhcmQtZ2xrOiAgICAgICAgICBbUEFTU11bMTRdIC0+IFtGQUlMXVsxNV0gKFtmZG8jMTA1MzYz
XSkKICAgWzE0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNjAxMi9zaGFyZC1nbGszL2lndEBrbXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rLWlu
dGVycnVwdGlibGUuaHRtbAogICBbMTVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xMjkwMS9zaGFyZC1nbGs4L2lndEBrbXNfZmxpcEBmbGlwLXZz
LWV4cGlyZWQtdmJsYW5rLWludGVycnVwdGlibGUuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBmbGlw
LXZzLXN1c3BlbmQtaW50ZXJydXB0aWJsZToKICAgIC0gc2hhcmQtZ2xrOiAgICAgICAgICBbUEFT
U11bMTZdIC0+IFtJTkNPTVBMRVRFXVsxN10gKFtmZG8jMTAzMzU5XSAvIFtrLm9yZyMxOTgxMzNd
KSArNCBzaW1pbGFyIGlzc3VlcwogICBbMTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV82MDEyL3NoYXJkLWdsazUvaWd0QGttc19mbGlwQGZsaXAtdnMt
c3VzcGVuZC1pbnRlcnJ1cHRpYmxlLmh0bWwKICAgWzE3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI5MDEvc2hhcmQtZ2xrOC9pZ3RAa21zX2Zs
aXBAZmxpcC12cy1zdXNwZW5kLWludGVycnVwdGlibGUuaHRtbAogICAgLSBzaGFyZC1za2w6ICAg
ICAgICAgIFtQQVNTXVsxOF0gLT4gW0lOQ09NUExFVEVdWzE5XSAoW2ZkbyMxMDk1MDddKQogICBb
MThdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDEy
L3NoYXJkLXNrbDEvaWd0QGttc19mbGlwQGZsaXAtdnMtc3VzcGVuZC1pbnRlcnJ1cHRpYmxlLmh0
bWwKICAgWzE5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTI5MDEvc2hhcmQtc2tsMi9pZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLWludGVy
cnVwdGlibGUuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFw
LXByaW1zY3JuLXByaS1pbmRmYi1kcmF3LWJsdDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBb
UEFTU11bMjBdIC0+IFtGQUlMXVsyMV0gKFtmZG8jMTAzMTY3XSkgKzggc2ltaWxhciBpc3N1ZXMK
ICAgWzIwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NjAxMi9zaGFyZC1pY2xiNS9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1w
cmltc2Nybi1wcmktaW5kZmItZHJhdy1ibHQuaHRtbAogICBbMjFdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjkwMS9zaGFyZC1pY2xiMS9pZ3RA
a21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmltc2Nybi1wcmktaW5kZmItZHJh
dy1ibHQuaHRtbAoKICAqIGlndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1hLWNvbnN0YW50
LWFscGhhLW1pbjoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bMjJdIC0+IFtGQUlM
XVsyM10gKFtmZG8jMTA4MTQ1XSkKICAgWzIyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNjAxMi9zaGFyZC1za2w1L2lndEBrbXNfcGxhbmVfYWxwaGFf
YmxlbmRAcGlwZS1hLWNvbnN0YW50LWFscGhhLW1pbi5odG1sCiAgIFsyM106IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyOTAxL3NoYXJkLXNrbDYv
aWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWEtY29uc3RhbnQtYWxwaGEtbWluLmh0bWwK
CiAgKiBpZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYi1jb3ZlcmFnZS03ZWZjOgogICAg
LSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVsyNF0gLT4gW0ZBSUxdWzI1XSAoW2ZkbyMxMDgx
NDVdIC8gW2ZkbyMxMTA0MDNdKQogICBbMjRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV82MDEyL3NoYXJkLXNrbDIvaWd0QGttc19wbGFuZV9hbHBoYV9i
bGVuZEBwaXBlLWItY292ZXJhZ2UtN2VmYy5odG1sCiAgIFsyNV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyOTAxL3NoYXJkLXNrbDgvaWd0QGtt
c19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWItY292ZXJhZ2UtN2VmYy5odG1sCgogICogaWd0QGtt
c19wc3JAcHNyMl9zcHJpdGVfbW1hcF9jcHU6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BB
U1NdWzI2XSAtPiBbU0tJUF1bMjddIChbZmRvIzEwOTQ0MV0pCiAgIFsyNl06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYwMTIvc2hhcmQtaWNsYjIvaWd0
QGttc19wc3JAcHNyMl9zcHJpdGVfbW1hcF9jcHUuaHRtbAogICBbMjddOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjkwMS9zaGFyZC1pY2xiMy9p
Z3RAa21zX3BzckBwc3IyX3Nwcml0ZV9tbWFwX2NwdS5odG1sCgogICogaWd0QGttc19yb3RhdGlv
bl9jcmNAbXVsdGlwbGFuZS1yb3RhdGlvbjoKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbUEFT
U11bMjhdIC0+IFtETUVTRy1GQUlMXVsyOV0gKFtmZG8jMTA1NzYzXSkKICAgWzI4XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjAxMi9zaGFyZC1rYmw3
L2lndEBrbXNfcm90YXRpb25fY3JjQG11bHRpcGxhbmUtcm90YXRpb24uaHRtbAogICBbMjldOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjkwMS9z
aGFyZC1rYmwzL2lndEBrbXNfcm90YXRpb25fY3JjQG11bHRpcGxhbmUtcm90YXRpb24uaHRtbAoK
ICAqIGlndEBrbXNfcm90YXRpb25fY3JjQHNwcml0ZS1yb3RhdGlvbi0xODA6CiAgICAtIHNoYXJk
LXNrbDogICAgICAgICAgW1BBU1NdWzMwXSAtPiBbSU5DT01QTEVURV1bMzFdIChbZmRvIzEwODk3
Ml0pCiAgIFszMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzYwMTIvc2hhcmQtc2tsMS9pZ3RAa21zX3JvdGF0aW9uX2NyY0BzcHJpdGUtcm90YXRpb24t
MTgwLmh0bWwKICAgWzMxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTI5MDEvc2hhcmQtc2tsMTAvaWd0QGttc19yb3RhdGlvbl9jcmNAc3ByaXRl
LXJvdGF0aW9uLTE4MC5odG1sCgogICogaWd0QGttc192YmxhbmtAcGlwZS1jLXRzLWNvbnRpbnVh
dGlvbi1zdXNwZW5kOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtQQVNTXVszMl0gLT4gW0RN
RVNHLVdBUk5dWzMzXSAoW2ZkbyMxMDg1NjZdKSArMiBzaW1pbGFyIGlzc3VlcwogICBbMzJdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDEyL3NoYXJk
LWFwbDUvaWd0QGttc192YmxhbmtAcGlwZS1jLXRzLWNvbnRpbnVhdGlvbi1zdXNwZW5kLmh0bWwK
ICAgWzMzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTI5MDEvc2hhcmQtYXBsMi9pZ3RAa21zX3ZibGFua0BwaXBlLWMtdHMtY29udGludWF0aW9u
LXN1c3BlbmQuaHRtbAoKICAqIGlndEBwZXJmX3BtdUByYzY6CiAgICAtIHNoYXJkLWtibDogICAg
ICAgICAgW1BBU1NdWzM0XSAtPiBbU0tJUF1bMzVdIChbZmRvIzEwOTI3MV0pCiAgIFszNF06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYwMTIvc2hhcmQt
a2JsMy9pZ3RAcGVyZl9wbXVAcmM2Lmh0bWwKICAgWzM1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI5MDEvc2hhcmQta2JsNy9pZ3RAcGVyZl9w
bXVAcmM2Lmh0bWwKCiAgCiMjIyMgUG9zc2libGUgZml4ZXMgIyMjIwoKICAqIGlndEBpOTE1X3N1
c3BlbmRAZGVidWdmcy1yZWFkZXI6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW0RNRVNHLVdB
Uk5dWzM2XSAoW2ZkbyMxMDg1NjZdKSAtPiBbUEFTU11bMzddICs2IHNpbWlsYXIgaXNzdWVzCiAg
IFszNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYw
MTIvc2hhcmQtYXBsMy9pZ3RAaTkxNV9zdXNwZW5kQGRlYnVnZnMtcmVhZGVyLmh0bWwKICAgWzM3
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI5
MDEvc2hhcmQtYXBsMy9pZ3RAaTkxNV9zdXNwZW5kQGRlYnVnZnMtcmVhZGVyLmh0bWwKCiAgKiBp
Z3RAa21zX2N1cnNvcl9jcmNAY3Vyc29yLTY0eDY0LXN1c3BlbmQ6CiAgICAtIHNoYXJkLXNrbDog
ICAgICAgICAgW0lOQ09NUExFVEVdWzM4XSAoW2ZkbyMxMDQxMDhdKSAtPiBbUEFTU11bMzldCiAg
IFszOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYw
MTIvc2hhcmQtc2tsMy9pZ3RAa21zX2N1cnNvcl9jcmNAY3Vyc29yLTY0eDY0LXN1c3BlbmQuaHRt
bAogICBbMzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xMjkwMS9zaGFyZC1za2w2L2lndEBrbXNfY3Vyc29yX2NyY0BjdXJzb3ItNjR4NjQtc3Vz
cGVuZC5odG1sCgogICogaWd0QGttc19jdXJzb3JfbGVnYWN5QDJ4LW5vbmJsb2NraW5nLW1vZGVz
ZXQtdnMtY3Vyc29yLWF0b21pYzoKICAgIC0gc2hhcmQtZ2xrOiAgICAgICAgICBbRkFJTF1bNDBd
IChbZmRvIzEwNjUwOV0gLyBbZmRvIzEwNzQwOV0pIC0+IFtQQVNTXVs0MV0KICAgWzQwXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjAxMi9zaGFyZC1n
bGsyL2lndEBrbXNfY3Vyc29yX2xlZ2FjeUAyeC1ub25ibG9ja2luZy1tb2Rlc2V0LXZzLWN1cnNv
ci1hdG9taWMuaHRtbAogICBbNDFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xMjkwMS9zaGFyZC1nbGszL2lndEBrbXNfY3Vyc29yX2xlZ2FjeUAy
eC1ub25ibG9ja2luZy1tb2Rlc2V0LXZzLWN1cnNvci1hdG9taWMuaHRtbAoKICAqIGlndEBrbXNf
ZmxpcEBtb2Rlc2V0LXZzLXZibGFuay1yYWNlOgogICAgLSBzaGFyZC1nbGs6ICAgICAgICAgIFtG
QUlMXVs0Ml0gKFtmZG8jMTAzMDYwXSkgLT4gW1BBU1NdWzQzXQogICBbNDJdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDEyL3NoYXJkLWdsazgvaWd0
QGttc19mbGlwQG1vZGVzZXQtdnMtdmJsYW5rLXJhY2UuaHRtbAogICBbNDNdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjkwMS9zaGFyZC1nbGsy
L2lndEBrbXNfZmxpcEBtb2Rlc2V0LXZzLXZibGFuay1yYWNlLmh0bWwKCiAgKiBpZ3RAa21zX2Zy
b250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmktaW5kZmItbXVsdGlkcmF3OgogICAgLSBz
aGFyZC1pY2xiOiAgICAgICAgIFtGQUlMXVs0NF0gKFtmZG8jMTAzMTY3XSkgLT4gW1BBU1NdWzQ1
XSArNCBzaW1pbGFyIGlzc3VlcwogICBbNDRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV82MDEyL3NoYXJkLWljbGI4L2lndEBrbXNfZnJvbnRidWZmZXJf
dHJhY2tpbmdAZmJjcHNyLTFwLXByaS1pbmRmYi1tdWx0aWRyYXcuaHRtbAogICBbNDVdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjkwMS9zaGFy
ZC1pY2xiOC9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmktaW5kZmIt
bXVsdGlkcmF3Lmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci1z
dXNwZW5kOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtJTkNPTVBMRVRFXVs0Nl0gKFtmZG8j
MTA0MTA4XSAvIFtmZG8jMTA2OTc4XSkgLT4gW1BBU1NdWzQ3XQogICBbNDZdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDEyL3NoYXJkLXNrbDcvaWd0
QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3Itc3VzcGVuZC5odG1sCiAgIFs0N106IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyOTAxL3No
YXJkLXNrbDIvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3Itc3VzcGVuZC5odG1s
CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW0lOQ09NUExFVEVdWzQ4XSAoW2ZkbyMxMDY5Nzhd
IC8gW2ZkbyMxMDc3MTNdKSAtPiBbUEFTU11bNDldCiAgIFs0OF06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYwMTIvc2hhcmQtaWNsYjQvaWd0QGttc19m
cm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3Itc3VzcGVuZC5odG1sCiAgIFs0OV06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyOTAxL3NoYXJkLWlj
bGIzL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLXN1c3BlbmQuaHRtbAoKICAq
IGlndEBrbXNfcGxhbmVfc2NhbGluZ0BwaXBlLWItc2NhbGVyLXdpdGgtcGl4ZWwtZm9ybWF0Ogog
ICAgLSBzaGFyZC1nbGs6ICAgICAgICAgIFtTS0lQXVs1MF0gKFtmZG8jMTA5MjcxXSAvIFtmZG8j
MTA5Mjc4XSkgLT4gW1BBU1NdWzUxXQogICBbNTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDEyL3NoYXJkLWdsazUvaWd0QGttc19wbGFuZV9zY2Fs
aW5nQHBpcGUtYi1zY2FsZXItd2l0aC1waXhlbC1mb3JtYXQuaHRtbAogICBbNTFdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjkwMS9zaGFyZC1n
bGs5L2lndEBrbXNfcGxhbmVfc2NhbGluZ0BwaXBlLWItc2NhbGVyLXdpdGgtcGl4ZWwtZm9ybWF0
Lmh0bWwKCiAgKiBpZ3RAdG9vbHNfdGVzdEB0b29sc190ZXN0OgogICAgLSBzaGFyZC1pY2xiOiAg
ICAgICAgIFtTS0lQXVs1Ml0gKFtmZG8jMTA5MzUyXSkgLT4gW1BBU1NdWzUzXQogICBbNTJdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDEyL3NoYXJk
LWljbGI4L2lndEB0b29sc190ZXN0QHRvb2xzX3Rlc3QuaHRtbAogICBbNTNdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjkwMS9zaGFyZC1pY2xi
Mi9pZ3RAdG9vbHNfdGVzdEB0b29sc190ZXN0Lmh0bWwKCiAgCiMjIyMgV2FybmluZ3MgIyMjIwoK
ICAqIGlndEBrbXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rLWludGVycnVwdGlibGU6CiAg
ICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZBSUxdWzU0XSAoW2ZkbyMxMDUzNjNdKSAtPiBbRkFJ
TF1bNTVdIChbZmRvIzEwMjg4N10pCiAgIFs1NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzYwMTIvc2hhcmQtc2tsMy9pZ3RAa21zX2ZsaXBAZmxpcC12
cy1leHBpcmVkLXZibGFuay1pbnRlcnJ1cHRpYmxlLmh0bWwKICAgWzU1XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI5MDEvc2hhcmQtc2tsNC9p
Z3RAa21zX2ZsaXBAZmxpcC12cy1leHBpcmVkLXZibGFuay1pbnRlcnJ1cHRpYmxlLmh0bWwKCiAg
KiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1wcmltc2Nybi1zaHJmYi1wbGZs
aXAtYmx0OgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtGQUlMXVs1Nl0gKFtmZG8jMTA4MDQw
XSkgLT4gW0ZBSUxdWzU3XSAoW2ZkbyMxMDMxNjddKQogICBbNTZdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDEyL3NoYXJkLXNrbDgvaWd0QGttc19m
cm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtcHJpbXNjcm4tc2hyZmItcGxmbGlwLWJsdC5odG1s
CiAgIFs1N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEyOTAxL3NoYXJkLXNrbDcvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAt
cHJpbXNjcm4tc2hyZmItcGxmbGlwLWJsdC5odG1sCgogIAogIFtmZG8jMTAyODg3XTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAyODg3CiAgW2ZkbyMxMDMw
NjBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMwNjAK
ICBbZmRvIzEwMzE2N106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTEwMzE2NwogIFtmZG8jMTAzMjMyXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTAzMjMyCiAgW2ZkbyMxMDMzNTVdOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMzNTUKICBbZmRvIzEwMzM1OV06IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzM1OQogIFtmZG8jMTAzNTQw
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzNTQwCiAg
W2ZkbyMxMDM5MjddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMDM5MjcKICBbZmRvIzEwNDEwOF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTEwNDEwOAogIFtmZG8jMTA1MzYzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA1MzYzCiAgW2ZkbyMxMDU3NjNdOiBodHRwczovL2J1
Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDU3NjMKICBbZmRvIzEwNjUwOV06
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNjUwOQogIFtm
ZG8jMTA2OTc4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTA2OTc4CiAgW2ZkbyMxMDc0MDldOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMDc0MDkKICBbZmRvIzEwNzcxM106IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzcxMwogIFtmZG8jMTA4MDQwXTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4MDQwCiAgW2ZkbyMxMDgxNDVdOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDgxNDUKICBbZmRv
IzEwODU2Nl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEw
ODU2NgogIFtmZG8jMTA4OTcyXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTA4OTcyCiAgW2ZkbyMxMDkyNzFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Au
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkyNzEKICBbZmRvIzEwOTI3OF06IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI3OAogIFtmZG8jMTA5MzUyXTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5MzUyCiAgW2ZkbyMx
MDk0NDFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDk0
NDEKICBbZmRvIzEwOTUwN106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTEwOTUwNwogIFtmZG8jMTEwNDAzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MTEwNDAzCiAgW2sub3JnIzE5ODEzM106IGh0dHBzOi8vYnVnemls
bGEua2VybmVsLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTk4MTMzCgoKUGFydGljaXBhdGluZyBob3N0
cyAoMTAgLT4gMTApCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBObyBjaGFuZ2Vz
IGluIHBhcnRpY2lwYXRpbmcgaG9zdHMKCgpCdWlsZCBjaGFuZ2VzCi0tLS0tLS0tLS0tLS0KCiAg
KiBMaW51eDogQ0lfRFJNXzYwMTIgLT4gUGF0Y2h3b3JrXzEyOTAxCgogIENJX0RSTV82MDEyOiBl
NDg4MmYxOTkxNTdlM2ZiNzNkMTc5MTM1MjkzMTA5NmY2ZWNmY2ZkIEAgZ2l0Oi8vYW5vbmdpdC5m
cmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgSUdUXzQ5Njg6IGNhZWQyNTE5OTBmMzViZmU0
NTM2OGY4MDM5ODAwNzFhNzNlMzYzMTUgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94
b3JnL2FwcC9pbnRlbC1ncHUtdG9vbHMKICBQYXRjaHdvcmtfMTI5MDE6IGQ1Yzg4MmIwYWI0ODNm
NmIzMjk0ZDk3YTZhNThkYjQyZDJiNDAyNGYgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9y
Zy9nZngtY2kvbGludXgKICBwaWdsaXRfNDUwOTogZmRjNWE0Y2ExMTEyNGFiODQxM2M3OTg4ODk2
ZWVjNGM5NzMzNjY5NCBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3BpZ2xpdAoKPT0g
TG9ncyA9PQoKRm9yIG1vcmUgZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyOTAxLwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
