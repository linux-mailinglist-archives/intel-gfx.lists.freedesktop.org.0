Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC0A359E28
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 16:47:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C71D6E938;
	Fri, 28 Jun 2019 14:47:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 358A36E937;
 Fri, 28 Jun 2019 14:47:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2DC58A0019;
 Fri, 28 Jun 2019 14:47:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 28 Jun 2019 14:47:26 -0000
Message-ID: <20190628144726.3157.82498@emeril.freedesktop.org>
References: <20190627142306.11445-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190627142306.11445-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/?=
 =?utf-8?q?i915/execlists=3A_Hesitate_before_slicing?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZXhlY2xpc3RzOiBIZXNpdGF0
ZSBiZWZvcmUgc2xpY2luZwpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9y
Zy9zZXJpZXMvNjI4NjcvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQ0kgQnVnIExv
ZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNjM3NV9mdWxsIC0+IFBhdGNod29ya18xMzQ1Nl9mdWxs
Cj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KClN1
bW1hcnkKLS0tLS0tLQoKICAqKkZBSUxVUkUqKgoKICBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBj
b21pbmcgd2l0aCBQYXRjaHdvcmtfMTM0NTZfZnVsbCBhYnNvbHV0ZWx5IG5lZWQgdG8gYmUKICB2
ZXJpZmllZCBtYW51YWxseS4KICAKICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMg
aGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMKICBpbnRyb2R1Y2VkIGluIFBhdGNo
d29ya18xMzQ1Nl9mdWxsLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cgdGhl
bQogIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2Ug
ZmFsc2UgcG9zaXRpdmVzIGluIENJLgoKICAKClBvc3NpYmxlIG5ldyBpc3N1ZXMKLS0tLS0tLS0t
LS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUg
YmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xMzQ1Nl9mdWxsOgoKIyMjIElHVCBjaGFuZ2Vz
ICMjIwoKIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjCgogICogaWd0QGdlbV9laW9AcmVz
ZXQtc3RyZXNzOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtQQVNTXVsxXSAtPiBbRkFJTF1b
Ml0KICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV82Mzc1L3NoYXJkLWFwbDcvaWd0QGdlbV9laW9AcmVzZXQtc3RyZXNzLmh0bWwKICAgWzJdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzQ1Ni9z
aGFyZC1hcGwyL2lndEBnZW1fZWlvQHJlc2V0LXN0cmVzcy5odG1sCgogIApLbm93biBpc3N1ZXMK
LS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNod29ya18x
MzQ1Nl9mdWxsIHRoYXQgY29tZSBmcm9tIGtub3duIGlzc3VlczoKCiMjIyBJR1QgY2hhbmdlcyAj
IyMKCiMjIyMgSXNzdWVzIGhpdCAjIyMjCgogICogaWd0QGdlbV9leGVjX2JhbGFuY2VyQHNtb2tl
OgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVszXSAtPiBbU0tJUF1bNF0gKFtmZG8j
MTEwODU0XSkKICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV82Mzc1L3NoYXJkLWljbGIyL2lndEBnZW1fZXhlY19iYWxhbmNlckBzbW9rZS5odG1s
CiAgIFs0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTM0NTYvc2hhcmQtaWNsYjcvaWd0QGdlbV9leGVjX2JhbGFuY2VyQHNtb2tlLmh0bWwKCiAg
KiBpZ3RAZ2VtX3NvZnRwaW5Abm9yZWxvYy1zMzoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBb
UEFTU11bNV0gLT4gW0lOQ09NUExFVEVdWzZdIChbZmRvIzEwNDEwOF0pICsxIHNpbWlsYXIgaXNz
dWUKICAgWzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV82Mzc1L3NoYXJkLXNrbDQvaWd0QGdlbV9zb2Z0cGluQG5vcmVsb2MtczMuaHRtbAogICBbNl06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNDU2
L3NoYXJkLXNrbDUvaWd0QGdlbV9zb2Z0cGluQG5vcmVsb2MtczMuaHRtbAoKICAqIGlndEBnZW1f
dGlsZWRfc3dhcHBpbmdAbm9uLXRocmVhZGVkOgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtQ
QVNTXVs3XSAtPiBbRE1FU0ctV0FSTl1bOF0gKFtmZG8jMTA4Njg2XSAvIFtmZG8jMTEwODUzXSkK
ICAgWzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82
Mzc1L3NoYXJkLWtibDIvaWd0QGdlbV90aWxlZF9zd2FwcGluZ0Bub24tdGhyZWFkZWQuaHRtbAog
ICBbOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzEzNDU2L3NoYXJkLWtibDIvaWd0QGdlbV90aWxlZF9zd2FwcGluZ0Bub24tdGhyZWFkZWQuaHRt
bAoKICAqIGlndEBpOTE1X3BtX3JwbUBpMmM6CiAgICAtIHNoYXJkLWhzdzogICAgICAgICAgW1BB
U1NdWzldIC0+IFtGQUlMXVsxMF0gKFtmZG8jMTA0MDk3XSkKICAgWzldOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82Mzc1L3NoYXJkLWhzdzYvaWd0QGk5
MTVfcG1fcnBtQGkyYy5odG1sCiAgIFsxMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNDU2L3NoYXJkLWhzdzEvaWd0QGk5MTVfcG1fcnBtQGky
Yy5odG1sCgogICogaWd0QGttc19idXN5QGV4dGVuZGVkLW1vZGVzZXQtaGFuZy1uZXdmYi13aXRo
LXJlc2V0LXJlbmRlci1hOgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtQQVNTXVsxMV0gLT4g
W0RNRVNHLVdBUk5dWzEyXSAoW2ZkbyMxMDM1NThdIC8gW2ZkbyMxMDU2MDJdIC8gW2ZkbyMxMTAy
MjJdKQogICBbMTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82Mzc1L3NoYXJkLWtibDIvaWd0QGttc19idXN5QGV4dGVuZGVkLW1vZGVzZXQtaGFuZy1u
ZXdmYi13aXRoLXJlc2V0LXJlbmRlci1hLmh0bWwKICAgWzEyXTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0NTYvc2hhcmQta2JsNy9pZ3RAa21z
X2J1c3lAZXh0ZW5kZWQtbW9kZXNldC1oYW5nLW5ld2ZiLXdpdGgtcmVzZXQtcmVuZGVyLWEuaHRt
bAoKICAqIGlndEBrbXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rLWludGVycnVwdGlibGU6
CiAgICAtIHNoYXJkLWtibDogICAgICAgICAgW1BBU1NdWzEzXSAtPiBbRE1FU0ctV0FSTl1bMTRd
IChbZmRvIzEwMzU1OF0gLyBbZmRvIzEwNTYwMl0pICsxNCBzaW1pbGFyIGlzc3VlcwogICBbMTNd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82Mzc1L3No
YXJkLWtibDIvaWd0QGttc19mbGlwQGZsaXAtdnMtZXhwaXJlZC12YmxhbmstaW50ZXJydXB0aWJs
ZS5odG1sCiAgIFsxNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzEzNDU2L3NoYXJkLWtibDcvaWd0QGttc19mbGlwQGZsaXAtdnMtZXhwaXJlZC12
YmxhbmstaW50ZXJydXB0aWJsZS5odG1sCiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1Nd
WzE1XSAtPiBbRkFJTF1bMTZdIChbZmRvIzEwNTM2M10pCiAgIFsxNV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzNzUvc2hhcmQtc2tsOC9pZ3RAa21z
X2ZsaXBAZmxpcC12cy1leHBpcmVkLXZibGFuay1pbnRlcnJ1cHRpYmxlLmh0bWwKICAgWzE2XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0NTYv
c2hhcmQtc2tsMS9pZ3RAa21zX2ZsaXBAZmxpcC12cy1leHBpcmVkLXZibGFuay1pbnRlcnJ1cHRp
YmxlLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1wcmktaW5k
ZmItbXVsdGlkcmF3OgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVsxN10gLT4gW0ZB
SUxdWzE4XSAoW2ZkbyMxMDMxNjddKSArNiBzaW1pbGFyIGlzc3VlcwogICBbMTddOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82Mzc1L3NoYXJkLWljbGI4
L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXByaS1pbmRmYi1tdWx0aWRyYXcu
aHRtbAogICBbMThdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xMzQ1Ni9zaGFyZC1pY2xiNi9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZi
Yy0xcC1wcmktaW5kZmItbXVsdGlkcmF3Lmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3Ry
YWNraW5nQGZiYy0ycC1wcmltc2Nybi1zcHItaW5kZmItZHJhdy1tbWFwLWNwdToKICAgIC0gc2hh
cmQtaHN3OiAgICAgICAgICBbUEFTU11bMTldIC0+IFtTS0lQXVsyMF0gKFtmZG8jMTA5MjcxXSkg
KzE5IHNpbWlsYXIgaXNzdWVzCiAgIFsxOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzYzNzUvc2hhcmQtaHN3Ny9pZ3RAa21zX2Zyb250YnVmZmVyX3Ry
YWNraW5nQGZiYy0ycC1wcmltc2Nybi1zcHItaW5kZmItZHJhdy1tbWFwLWNwdS5odG1sCiAgIFsy
MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEz
NDU2L3NoYXJkLWhzdzEvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMnAtcHJpbXNj
cm4tc3ByLWluZGZiLWRyYXctbW1hcC1jcHUuaHRtbAoKICAqIGlndEBrbXNfcGxhbmVAcGxhbmUt
cGFubmluZy1ib3R0b20tcmlnaHQtc3VzcGVuZC1waXBlLWEtcGxhbmVzOgogICAgLSBzaGFyZC1h
cGw6ICAgICAgICAgIFtQQVNTXVsyMV0gLT4gW0RNRVNHLVdBUk5dWzIyXSAoW2ZkbyMxMDg1NjZd
KSArMiBzaW1pbGFyIGlzc3VlcwogICBbMjFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV82Mzc1L3NoYXJkLWFwbDgvaWd0QGttc19wbGFuZUBwbGFuZS1w
YW5uaW5nLWJvdHRvbS1yaWdodC1zdXNwZW5kLXBpcGUtYS1wbGFuZXMuaHRtbAogICBbMjJdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzQ1Ni9z
aGFyZC1hcGw4L2lndEBrbXNfcGxhbmVAcGxhbmUtcGFubmluZy1ib3R0b20tcmlnaHQtc3VzcGVu
ZC1waXBlLWEtcGxhbmVzLmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUt
Yy1jb3ZlcmFnZS03ZWZjOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVsyM10gLT4g
W0ZBSUxdWzI0XSAoW2ZkbyMxMDgxNDVdIC8gW2ZkbyMxMTA0MDNdKSArMSBzaW1pbGFyIGlzc3Vl
CiAgIFsyM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzYzNzUvc2hhcmQtc2tsNy9pZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYy1jb3ZlcmFn
ZS03ZWZjLmh0bWwKICAgWzI0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTM0NTYvc2hhcmQtc2tsOS9pZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5k
QHBpcGUtYy1jb3ZlcmFnZS03ZWZjLmh0bWwKCiAgKiBpZ3RAa21zX3BzckBwc3IyX2N1cnNvcl9t
bWFwX2NwdToKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMjVdIC0+IFtTS0lQXVsy
Nl0gKFtmZG8jMTA5NDQxXSkgKzIgc2ltaWxhciBpc3N1ZXMKICAgWzI1XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjM3NS9zaGFyZC1pY2xiMi9pZ3RA
a21zX3BzckBwc3IyX2N1cnNvcl9tbWFwX2NwdS5odG1sCiAgIFsyNl06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNDU2L3NoYXJkLWljbGI1L2ln
dEBrbXNfcHNyQHBzcjJfY3Vyc29yX21tYXBfY3B1Lmh0bWwKCiAgKiBpZ3RAa21zX3NldG1vZGVA
YmFzaWM6CiAgICAtIHNoYXJkLWtibDogICAgICAgICAgW1BBU1NdWzI3XSAtPiBbRkFJTF1bMjhd
IChbZmRvIzk5OTEyXSkKICAgWzI3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNjM3NS9zaGFyZC1rYmwzL2lndEBrbXNfc2V0bW9kZUBiYXNpYy5odG1s
CiAgIFsyOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEzNDU2L3NoYXJkLWtibDMvaWd0QGttc19zZXRtb2RlQGJhc2ljLmh0bWwKCiAgKiBpZ3RA
cGVyZkBwb2xsaW5nOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVsyOV0gLT4gW0ZB
SUxdWzMwXSAoW2ZkbyMxMTA3MjhdKQogICBbMjldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82Mzc1L3NoYXJkLXNrbDYvaWd0QHBlcmZAcG9sbGluZy5o
dG1sCiAgIFszMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzEzNDU2L3NoYXJkLXNrbDEvaWd0QHBlcmZAcG9sbGluZy5odG1sCgogICogaWd0QHBl
cmZfcG11QHJjNi1ydW50aW1lLXBtOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtQQVNTXVsz
MV0gLT4gW0ZBSUxdWzMyXSAoW2ZkbyMxMDUwMTBdKQogICBbMzFdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82Mzc1L3NoYXJkLWFwbDQvaWd0QHBlcmZf
cG11QHJjNi1ydW50aW1lLXBtLmh0bWwKICAgWzMyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0NTYvc2hhcmQtYXBsNS9pZ3RAcGVyZl9wbXVA
cmM2LXJ1bnRpbWUtcG0uaHRtbAoKICAKIyMjIyBQb3NzaWJsZSBmaXhlcyAjIyMjCgogICogaWd0
QGttc19jdXJzb3JfY3JjQHBpcGUtYi1jdXJzb3ItNjR4MjEtc2xpZGluZzoKICAgIC0gc2hhcmQt
aWNsYjogICAgICAgICBbSU5DT01QTEVURV1bMzNdIChbZmRvIzEwNzcxM10pIC0+IFtQQVNTXVsz
NF0KICAgWzMzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNjM3NS9zaGFyZC1pY2xiMS9pZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1iLWN1cnNvci02NHgy
MS1zbGlkaW5nLmh0bWwKICAgWzM0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTM0NTYvc2hhcmQtaWNsYjQvaWd0QGttc19jdXJzb3JfY3JjQHBp
cGUtYi1jdXJzb3ItNjR4MjEtc2xpZGluZy5odG1sCgogICogaWd0QGttc19jdXJzb3JfbGVnYWN5
QGN1cnNvci12cy1mbGlwLWxlZ2FjeToKICAgIC0gc2hhcmQtaHN3OiAgICAgICAgICBbRkFJTF1b
MzVdIChbZmRvIzEwMzM1NV0pIC0+IFtQQVNTXVszNl0KICAgWzM1XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjM3NS9zaGFyZC1oc3c2L2lndEBrbXNf
Y3Vyc29yX2xlZ2FjeUBjdXJzb3ItdnMtZmxpcC1sZWdhY3kuaHRtbAogICBbMzZdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzQ1Ni9zaGFyZC1o
c3cyL2lndEBrbXNfY3Vyc29yX2xlZ2FjeUBjdXJzb3ItdnMtZmxpcC1sZWdhY3kuaHRtbAoKICAq
IGlndEBrbXNfY3Vyc29yX2xlZ2FjeUBmbGlwLXZzLWN1cnNvci1hdG9taWMtdHJhbnNpdGlvbnM6
CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZBSUxdWzM3XSAoW2ZkbyMxMDI2NzBdKSAtPiBb
UEFTU11bMzhdCiAgIFszN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzYzNzUvc2hhcmQtc2tsNS9pZ3RAa21zX2N1cnNvcl9sZWdhY3lAZmxpcC12cy1j
dXJzb3ItYXRvbWljLXRyYW5zaXRpb25zLmh0bWwKICAgWzM4XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0NTYvc2hhcmQtc2tsNi9pZ3RAa21z
X2N1cnNvcl9sZWdhY3lAZmxpcC12cy1jdXJzb3ItYXRvbWljLXRyYW5zaXRpb25zLmh0bWwKCiAg
KiBpZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLWludGVycnVwdGlibGU6CiAgICAtIHNoYXJk
LXNrbDogICAgICAgICAgW0lOQ09NUExFVEVdWzM5XSAoW2ZkbyMxMDk1MDddKSAtPiBbUEFTU11b
NDBdCiAgIFszOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzYzNzUvc2hhcmQtc2tsNS9pZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLWludGVycnVw
dGlibGUuaHRtbAogICBbNDBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xMzQ1Ni9zaGFyZC1za2w2L2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3Bl
bmQtaW50ZXJydXB0aWJsZS5odG1sCiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW0RNRVNHLVdB
Uk5dWzQxXSAoW2ZkbyMxMDg1NjZdKSAtPiBbUEFTU11bNDJdICs0IHNpbWlsYXIgaXNzdWVzCiAg
IFs0MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYz
NzUvc2hhcmQtYXBsMS9pZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLWludGVycnVwdGlibGUu
aHRtbAogICBbNDJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xMzQ1Ni9zaGFyZC1hcGwxL2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmQtaW50
ZXJydXB0aWJsZS5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMnAt
c2NuZHNjcm4tc3ByLWluZGZiLWRyYXctbW1hcC1ndHQ6CiAgICAtIHNoYXJkLWhzdzogICAgICAg
ICAgW1NLSVBdWzQzXSAoW2ZkbyMxMDkyNzFdKSAtPiBbUEFTU11bNDRdICsxNCBzaW1pbGFyIGlz
c3VlcwogICBbNDNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82Mzc1L3NoYXJkLWhzdzEvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMnAt
c2NuZHNjcm4tc3ByLWluZGZiLWRyYXctbW1hcC1ndHQuaHRtbAogICBbNDRdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzQ1Ni9zaGFyZC1oc3c0
L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTJwLXNjbmRzY3JuLXNwci1pbmRmYi1k
cmF3LW1tYXAtZ3R0Lmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bz
ci0xcC1wcmltc2Nybi1jdXItaW5kZmItZHJhdy1yZW5kZXI6CiAgICAtIHNoYXJkLWljbGI6ICAg
ICAgICAgW0ZBSUxdWzQ1XSAoW2ZkbyMxMDMxNjddKSAtPiBbUEFTU11bNDZdICszIHNpbWlsYXIg
aXNzdWVzCiAgIFs0NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzYzNzUvc2hhcmQtaWNsYjIvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNw
c3ItMXAtcHJpbXNjcm4tY3VyLWluZGZiLWRyYXctcmVuZGVyLmh0bWwKICAgWzQ2XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0NTYvc2hhcmQt
aWNsYjcvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tY3Vy
LWluZGZiLWRyYXctcmVuZGVyLmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBp
cGUtYy1jb25zdGFudC1hbHBoYS1taW46CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZBSUxd
WzQ3XSAoW2ZkbyMxMDgxNDVdKSAtPiBbUEFTU11bNDhdCiAgIFs0N106IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzNzUvc2hhcmQtc2tsMy9pZ3RAa21z
X3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYy1jb25zdGFudC1hbHBoYS1taW4uaHRtbAogICBbNDhd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzQ1
Ni9zaGFyZC1za2wxMC9pZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYy1jb25zdGFudC1h
bHBoYS1taW4uaHRtbAoKICAqIGlndEBrbXNfcGxhbmVfbG93cmVzQHBpcGUtYS10aWxpbmcteToK
ICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbRkFJTF1bNDldIChbZmRvIzEwMzE2Nl0pIC0+IFtQ
QVNTXVs1MF0KICAgWzQ5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNjM3NS9zaGFyZC1pY2xiMS9pZ3RAa21zX3BsYW5lX2xvd3Jlc0BwaXBlLWEtdGls
aW5nLXkuaHRtbAogICBbNTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xMzQ1Ni9zaGFyZC1pY2xiNS9pZ3RAa21zX3BsYW5lX2xvd3Jlc0BwaXBl
LWEtdGlsaW5nLXkuaHRtbAoKICAqIGlndEBrbXNfcHNyQHBzcjJfc3ByaXRlX2JsdDoKICAgIC0g
c2hhcmQtaWNsYjogICAgICAgICBbU0tJUF1bNTFdIChbZmRvIzEwOTQ0MV0pIC0+IFtQQVNTXVs1
Ml0gKzEgc2ltaWxhciBpc3N1ZQogICBbNTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV82Mzc1L3NoYXJkLWljbGI2L2lndEBrbXNfcHNyQHBzcjJfc3By
aXRlX2JsdC5odG1sCiAgIFs1Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzEzNDU2L3NoYXJkLWljbGIyL2lndEBrbXNfcHNyQHBzcjJfc3ByaXRl
X2JsdC5odG1sCgogICogaWd0QGttc19zZXRtb2RlQGJhc2ljOgogICAgLSBzaGFyZC1hcGw6ICAg
ICAgICAgIFtGQUlMXVs1M10gKFtmZG8jOTk5MTJdKSAtPiBbUEFTU11bNTRdCiAgIFs1M106IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzNzUvc2hhcmQt
YXBsMS9pZ3RAa21zX3NldG1vZGVAYmFzaWMuaHRtbAogICBbNTRdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzQ1Ni9zaGFyZC1hcGwxL2lndEBr
bXNfc2V0bW9kZUBiYXNpYy5odG1sCgogIAojIyMjIFdhcm5pbmdzICMjIyMKCiAgKiBpZ3RAa21z
X2F0b21pY190cmFuc2l0aW9uQDR4LW1vZGVzZXQtdHJhbnNpdGlvbnMtZmVuY2luZzoKICAgIC0g
c2hhcmQta2JsOiAgICAgICAgICBbU0tJUF1bNTVdIChbZmRvIzEwOTI3MV0gLyBbZmRvIzEwOTI3
OF0pIC0+IFtTS0lQXVs1Nl0gKFtmZG8jMTA1NjAyXSAvIFtmZG8jMTA5MjcxXSAvIFtmZG8jMTA5
Mjc4XSkKICAgWzU1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNjM3NS9zaGFyZC1rYmwyL2lndEBrbXNfYXRvbWljX3RyYW5zaXRpb25ANHgtbW9kZXNl
dC10cmFuc2l0aW9ucy1mZW5jaW5nLmh0bWwKICAgWzU2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0NTYvc2hhcmQta2JsNy9pZ3RAa21zX2F0
b21pY190cmFuc2l0aW9uQDR4LW1vZGVzZXQtdHJhbnNpdGlvbnMtZmVuY2luZy5odG1sCgogICog
aWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtb2Zmc2NyZW4tcHJpLXNocmZi
LWRyYXctbW1hcC1jcHU6CiAgICAtIHNoYXJkLWtibDogICAgICAgICAgW1NLSVBdWzU3XSAoW2Zk
byMxMDkyNzFdKSAtPiBbU0tJUF1bNThdIChbZmRvIzEwNTYwMl0gLyBbZmRvIzEwOTI3MV0pICsx
MCBzaW1pbGFyIGlzc3VlcwogICBbNTddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82Mzc1L3NoYXJkLWtibDIvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFj
a2luZ0BmYmNwc3ItMXAtb2Zmc2NyZW4tcHJpLXNocmZiLWRyYXctbW1hcC1jcHUuaHRtbAogICBb
NThdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
MzQ1Ni9zaGFyZC1rYmw3L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLW9m
ZnNjcmVuLXByaS1zaHJmYi1kcmF3LW1tYXAtY3B1Lmh0bWwKCiAgCiAgW2ZkbyMxMDI2NzBdOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDI2NzAKICBbZmRv
IzEwMzE2Nl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEw
MzE2NgogIFtmZG8jMTAzMTY3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTAzMTY3CiAgW2ZkbyMxMDMzNTVdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Au
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMzNTUKICBbZmRvIzEwMzU1OF06IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzU1OAogIFtmZG8jMTA0MDk3XTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA0MDk3CiAgW2ZkbyMx
MDQxMDhdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDQx
MDgKICBbZmRvIzEwNTAxMF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTEwNTAxMAogIFtmZG8jMTA1MzYzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MTA1MzYzCiAgW2ZkbyMxMDU2MDJdOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDU2MDIKICBbZmRvIzEwNzcxM106IGh0dHBz
Oi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzcxMwogIFtmZG8jMTA4
MTQ1XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4MTQ1
CiAgW2ZkbyMxMDg1NjZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMDg1NjYKICBbZmRvIzEwODY4Nl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTEwODY4NgogIFtmZG8jMTA5MjcxXTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5MjcxCiAgW2ZkbyMxMDkyNzhdOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkyNzgKICBbZmRvIzEwOTQ0
MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTQ0MQog
IFtmZG8jMTA5NTA3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9MTA5NTA3CiAgW2ZkbyMxMTAyMjJdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3No
b3dfYnVnLmNnaT9pZD0xMTAyMjIKICBbZmRvIzExMDQwM106IGh0dHBzOi8vYnVncy5mcmVlZGVz
a3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDQwMwogIFtmZG8jMTEwNzI4XTogaHR0cHM6Ly9i
dWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwNzI4CiAgW2ZkbyMxMTA4NTNd
OiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA4NTMKICBb
ZmRvIzExMDg1NF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lk
PTExMDg1NAogIFtmZG8jOTk5MTJdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD05OTkxMgoKClBhcnRpY2lwYXRpbmcgaG9zdHMgKDEwIC0+IDEwKQotLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgTm8gY2hhbmdlcyBpbiBwYXJ0aWNpcGF0aW5nIGhv
c3RzCgoKQnVpbGQgY2hhbmdlcwotLS0tLS0tLS0tLS0tCgogICogTGludXg6IENJX0RSTV82Mzc1
IC0+IFBhdGNod29ya18xMzQ1NgoKICBDSV9EUk1fNjM3NTogNDRiM2E1NTZjNjgyZDNhZTZkMWNm
OTRmNmVjN2MxNTVlYmVlZmY1MCBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1j
aS9saW51eAogIElHVF81MDcwOiAyNTA0NzVhZjdiYzUyYmE2NDk1NmU2YjM1NTkxZmRkNzE3Njk1
NGQ3IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcveG9yZy9hcHAvaW50ZWwtZ3B1LXRv
b2xzCiAgUGF0Y2h3b3JrXzEzNDU2OiA5MzhlMmQ2ZDQxZGFhNjUwZGQ4MDg3YzNjZTk5ZjBiYWE5
ZWU2MGI3IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgcGln
bGl0XzQ1MDk6IGZkYzVhNGNhMTExMjRhYjg0MTNjNzk4ODg5NmVlYzRjOTczMzY2OTQgQCBnaXQ6
Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9waWdsaXQKCj09IExvZ3MgPT0KCkZvciBtb3JlIGRl
dGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xMzQ1Ni8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
