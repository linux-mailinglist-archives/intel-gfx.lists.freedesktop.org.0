Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2828BBA23A
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Sep 2019 14:05:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD03B6E153;
	Sun, 22 Sep 2019 12:04:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2013F6E04A;
 Sat, 21 Sep 2019 13:50:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1572EA0073;
 Sat, 21 Sep 2019 13:50:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Date: Sat, 21 Sep 2019 13:50:52 -0000
Message-ID: <20190921135052.20036.514@emeril.freedesktop.org>
References: <20190920104413.21410-1-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190920104413.21410-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_Restrict_qgv_points_which_don=27t_have_enough_bandwidth?=
 =?utf-8?b?LiAocmV2Mik=?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFJlc3RyaWN0IHFndiBwb2lu
dHMgd2hpY2ggZG9uJ3QgaGF2ZSBlbm91Z2ggYmFuZHdpZHRoLiAocmV2MikKVVJMICAgOiBodHRw
czovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY2OTkzLwpTdGF0ZSA6IGZhaWx1
cmUKCj09IFN1bW1hcnkgPT0KCkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzY5Mjhf
ZnVsbCAtPiBQYXRjaHdvcmtfMTQ0NzVfZnVsbAo9PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09CgpTdW1tYXJ5Ci0tLS0tLS0KCiAgKipGQUlMVVJFKioK
CiAgU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzE0NDc1X2Z1
bGwgYWJzb2x1dGVseSBuZWVkIHRvIGJlCiAgdmVyaWZpZWQgbWFudWFsbHkuCiAgCiAgSWYgeW91
IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBj
aGFuZ2VzCiAgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTQ0NzVfZnVsbCwgcGxlYXNlIG5vdGlm
eSB5b3VyIGJ1ZyB0ZWFtIHRvIGFsbG93IHRoZW0KICB0byBkb2N1bWVudCB0aGlzIG5ldyBmYWls
dXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0aXZlcyBpbiBDSS4KCiAgCgpQ
b3NzaWJsZSBuZXcgaXNzdWVzCi0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhlIHVu
a25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtf
MTQ0NzVfZnVsbDoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgUG9zc2libGUgcmVncmVzc2lv
bnMgIyMjIwoKICAqIGlndEBrbXNfcm90YXRpb25fY3JjQHByaW1hcnktcm90YXRpb24tMTgwOgog
ICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtQQVNTXVsxXSAtPiBbVElNRU9VVF1bMl0KICAgWzFd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTI4L3No
YXJkLWFwbDQvaWd0QGttc19yb3RhdGlvbl9jcmNAcHJpbWFyeS1yb3RhdGlvbi0xODAuaHRtbAog
ICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE0NDc1L3NoYXJkLWFwbDIvaWd0QGttc19yb3RhdGlvbl9jcmNAcHJpbWFyeS1yb3RhdGlvbi0x
ODAuaHRtbAoKICAKIyMjIyBTdXBwcmVzc2VkICMjIyMKCiAgVGhlIGZvbGxvd2luZyByZXN1bHRz
IGNvbWUgZnJvbSB1bnRydXN0ZWQgbWFjaGluZXMsIHRlc3RzLCBvciBzdGF0dXNlcy4KICBUaGV5
IGRvIG5vdCBhZmZlY3QgdGhlIG92ZXJhbGwgcmVzdWx0LgoKICAqIHtpZ3RAZ2VtX2Vpb0BrbXN9
OgogICAgLSBzaGFyZC1zbmI6ICAgICAgICAgIFtJTkNPTVBMRVRFXVszXSAoW2ZkbyMxMDU0MTFd
KSAtPiBbRE1FU0ctV0FSTl1bNF0KICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV82OTI4L3NoYXJkLXNuYjEvaWd0QGdlbV9laW9Aa21zLmh0bWwK
ICAgWzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNDQ3NS9zaGFyZC1zbmI3L2lndEBnZW1fZWlvQGttcy5odG1sCgogICoge2lndEBpOTE1X3Bt
X2RjQGRjNi1wc3J9OgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVs1XSAtPiBbRkFJ
TF1bNl0KICAgWzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82OTI4L3NoYXJkLWljbGIxL2lndEBpOTE1X3BtX2RjQGRjNi1wc3IuaHRtbAogICBbNl06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDc1
L3NoYXJkLWljbGI4L2lndEBpOTE1X3BtX2RjQGRjNi1wc3IuaHRtbAoKICAKS25vd24gaXNzdWVz
Ci0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtf
MTQ0NzVfZnVsbCB0aGF0IGNvbWUgZnJvbSBrbm93biBpc3N1ZXM6CgojIyMgSUdUIGNoYW5nZXMg
IyMjCgojIyMjIElzc3VlcyBoaXQgIyMjIwoKICAqIGlndEBnZW1fY3R4X2lzb2xhdGlvbkB2Y3Mx
LXMzOgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtQQVNTXVs3XSAtPiBbRE1FU0ctV0FSTl1b
OF0gKFtmZG8jMTA4NTY2XSkKICAgWzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82OTI4L3NoYXJkLWtibDYvaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHZj
czEtczMuaHRtbAogICBbOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE0NDc1L3NoYXJkLWtibDEvaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHZjczEt
czMuaHRtbAoKICAqIGlndEBnZW1fZXhlY19yZWxvY0BiYXNpYy13cml0ZS1ndHQtbm9yZWxvYzoK
ICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbUEFTU11bOV0gLT4gW0lOQ09NUExFVEVdWzEwXSAo
W2ZkbyMxMDM5MjddKQogICBbOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzY5Mjgvc2hhcmQtYXBsNC9pZ3RAZ2VtX2V4ZWNfcmVsb2NAYmFzaWMtd3Jp
dGUtZ3R0LW5vcmVsb2MuaHRtbAogICBbMTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDQ3NS9zaGFyZC1hcGwyL2lndEBnZW1fZXhlY19yZWxv
Y0BiYXNpYy13cml0ZS1ndHQtbm9yZWxvYy5odG1sCgogICogaWd0QGdlbV9leGVjX3NjaGVkdWxl
QHByZWVtcHQtcXVldWUtYnNkMToKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMTFd
IC0+IFtTS0lQXVsxMl0gKFtmZG8jMTA5Mjc2XSkgKzI2IHNpbWlsYXIgaXNzdWVzCiAgIFsxMV06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5Mjgvc2hh
cmQtaWNsYjQvaWd0QGdlbV9leGVjX3NjaGVkdWxlQHByZWVtcHQtcXVldWUtYnNkMS5odG1sCiAg
IFsxMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE0NDc1L3NoYXJkLWljbGI1L2lndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0LXF1ZXVlLWJz
ZDEuaHRtbAoKICAqIGlndEBnZW1fZXhlY19zY2hlZHVsZUByZW9yZGVyLXdpZGUtYnNkOgogICAg
LSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVsxM10gLT4gW1NLSVBdWzE0XSAoW2ZkbyMxMTEz
MjVdKSArMiBzaW1pbGFyIGlzc3VlcwogICBbMTNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTI4L3NoYXJkLWljbGIzL2lndEBnZW1fZXhlY19zY2hl
ZHVsZUByZW9yZGVyLXdpZGUtYnNkLmh0bWwKICAgWzE0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0NzUvc2hhcmQtaWNsYjIvaWd0QGdlbV9l
eGVjX3NjaGVkdWxlQHJlb3JkZXItd2lkZS1ic2QuaHRtbAoKICAqIGlndEBnZW1fc29mdHBpbkBu
b3JlbG9jLXMzOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVsxNV0gLT4gW0lOQ09N
UExFVEVdWzE2XSAoW2ZkbyMxMDQxMDhdKQogICBbMTVdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTI4L3NoYXJkLXNrbDEvaWd0QGdlbV9zb2Z0cGlu
QG5vcmVsb2MtczMuaHRtbAogICBbMTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNDQ3NS9zaGFyZC1za2w2L2lndEBnZW1fc29mdHBpbkBub3Jl
bG9jLXMzLmh0bWwKCiAgKiBpZ3RAa21zX2F0b21pY19pbnRlcnJ1cHRpYmxlQHVuaXZlcnNhbC1z
ZXRwbGFuZS1wcmltYXJ5OgogICAgLSBzaGFyZC1oc3c6ICAgICAgICAgIFtQQVNTXVsxN10gLT4g
W0lOQ09NUExFVEVdWzE4XSAoW2ZkbyMxMDM1NDBdKQogICBbMTddOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTI4L3NoYXJkLWhzdzUvaWd0QGttc19h
dG9taWNfaW50ZXJydXB0aWJsZUB1bml2ZXJzYWwtc2V0cGxhbmUtcHJpbWFyeS5odG1sCiAgIFsx
OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0
NDc1L3NoYXJkLWhzdzYvaWd0QGttc19hdG9taWNfaW50ZXJydXB0aWJsZUB1bml2ZXJzYWwtc2V0
cGxhbmUtcHJpbWFyeS5odG1sCgogICogaWd0QGttc19jdXJzb3JfY3JjQHBpcGUtYi1jdXJzb3It
MTI4eDQyLXNsaWRpbmc6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzE5XSAtPiBb
RkFJTF1bMjBdIChbZmRvIzEwMzIzMl0pCiAgIFsxOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5Mjgvc2hhcmQtc2tsNS9pZ3RAa21zX2N1cnNvcl9j
cmNAcGlwZS1iLWN1cnNvci0xMjh4NDItc2xpZGluZy5odG1sCiAgIFsyMF06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDc1L3NoYXJkLXNrbDIv
aWd0QGttc19jdXJzb3JfY3JjQHBpcGUtYi1jdXJzb3ItMTI4eDQyLXNsaWRpbmcuaHRtbAoKICAq
IGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXByaW1zY3JuLXNocmZiLW1zZmxp
cC1ibHQ6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzIxXSAtPiBbRkFJTF1bMjJd
IChbZmRvIzEwMzE2N10pICs1IHNpbWlsYXIgaXNzdWVzCiAgIFsyMV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5Mjgvc2hhcmQtaWNsYjgvaWd0QGtt
c19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtcHJpbXNjcm4tc2hyZmItbXNmbGlwLWJsdC5o
dG1sCiAgIFsyMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE0NDc1L3NoYXJkLWljbGIxL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJj
LTFwLXByaW1zY3JuLXNocmZiLW1zZmxpcC1ibHQuaHRtbAoKICAqIGlndEBrbXNfcGxhbmVfYWxw
aGFfYmxlbmRAcGlwZS1iLWNvbnN0YW50LWFscGhhLW1pbjoKICAgIC0gc2hhcmQtc2tsOiAgICAg
ICAgICBbUEFTU11bMjNdIC0+IFtGQUlMXVsyNF0gKFtmZG8jMTA4MTQ1XSkKICAgWzIzXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjkyOC9zaGFyZC1z
a2w1L2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1iLWNvbnN0YW50LWFscGhhLW1pbi5o
dG1sCiAgIFsyNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE0NDc1L3NoYXJkLXNrbDIvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWIt
Y29uc3RhbnQtYWxwaGEtbWluLmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBp
cGUtYi1jb3ZlcmFnZS03ZWZjOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVsyNV0g
LT4gW0ZBSUxdWzI2XSAoW2ZkbyMxMDgxNDVdIC8gW2ZkbyMxMTA0MDNdKQogICBbMjVdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTI4L3NoYXJkLXNr
bDUvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWItY292ZXJhZ2UtN2VmYy5odG1sCiAg
IFsyNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE0NDc1L3NoYXJkLXNrbDIvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWItY292ZXJh
Z2UtN2VmYy5odG1sCgogICogaWd0QGttc19wc3JAcHNyMl9zcHJpdGVfcGxhbmVfbW92ZToKICAg
IC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMjddIC0+IFtTS0lQXVsyOF0gKFtmZG8jMTA5
NDQxXSkgKzQgc2ltaWxhciBpc3N1ZXMKICAgWzI3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjkyOC9zaGFyZC1pY2xiMi9pZ3RAa21zX3BzckBwc3Iy
X3Nwcml0ZV9wbGFuZV9tb3ZlLmh0bWwKICAgWzI4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0NzUvc2hhcmQtaWNsYjYvaWd0QGttc19wc3JA
cHNyMl9zcHJpdGVfcGxhbmVfbW92ZS5odG1sCgogICogaWd0QGttc192YmxhbmtAcGlwZS1jLXRz
LWNvbnRpbnVhdGlvbi1zdXNwZW5kOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtQQVNTXVsy
OV0gLT4gW0RNRVNHLVdBUk5dWzMwXSAoW2ZkbyMxMDg1NjZdKSArMyBzaW1pbGFyIGlzc3Vlcwog
ICBbMjldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82
OTI4L3NoYXJkLWFwbDEvaWd0QGttc192YmxhbmtAcGlwZS1jLXRzLWNvbnRpbnVhdGlvbi1zdXNw
ZW5kLmh0bWwKICAgWzMwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTQ0NzUvc2hhcmQtYXBsNC9pZ3RAa21zX3ZibGFua0BwaXBlLWMtdHMtY29u
dGludWF0aW9uLXN1c3BlbmQuaHRtbAoKICAqIGlndEBwZXJmX3BtdUBjcHUtaG90cGx1ZzoKICAg
IC0gc2hhcmQtYXBsOiAgICAgICAgICBbUEFTU11bMzFdIC0+IFtUSU1FT1VUXVszMl0gKFtmZG8j
MTExNTQ2XSkKICAgWzMxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNjkyOC9zaGFyZC1hcGw0L2lndEBwZXJmX3BtdUBjcHUtaG90cGx1Zy5odG1sCiAg
IFszMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE0NDc1L3NoYXJkLWFwbDIvaWd0QHBlcmZfcG11QGNwdS1ob3RwbHVnLmh0bWwKCiAgCiMjIyMg
UG9zc2libGUgZml4ZXMgIyMjIwoKICAqIGlndEBnZW1fZXhlY19iYWxhbmNlckBzbW9rZToKICAg
IC0gc2hhcmQtaWNsYjogICAgICAgICBbU0tJUF1bMzNdIChbZmRvIzExMDg1NF0pIC0+IFtQQVNT
XVszNF0KICAgWzMzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNjkyOC9zaGFyZC1pY2xiNS9pZ3RAZ2VtX2V4ZWNfYmFsYW5jZXJAc21va2UuaHRtbAog
ICBbMzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNDQ3NS9zaGFyZC1pY2xiNC9pZ3RAZ2VtX2V4ZWNfYmFsYW5jZXJAc21va2UuaHRtbAoKICAq
IGlndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0LW90aGVyLWNoYWluLWJzZDoKICAgIC0gc2hh
cmQtaWNsYjogICAgICAgICBbU0tJUF1bMzVdIChbZmRvIzExMTMyNV0pIC0+IFtQQVNTXVszNl0g
Kzggc2ltaWxhciBpc3N1ZXMKICAgWzM1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNjkyOC9zaGFyZC1pY2xiMi9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVA
cHJlZW1wdC1vdGhlci1jaGFpbi1ic2QuaHRtbAogICBbMzZdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDQ3NS9zaGFyZC1pY2xiOC9pZ3RAZ2Vt
X2V4ZWNfc2NoZWR1bGVAcHJlZW1wdC1vdGhlci1jaGFpbi1ic2QuaHRtbAoKICAqIHtpZ3RAZ2Vt
X21tYXBfZ3R0QGNsb3NlLXJhY2V9OgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtJTkNPTVBM
RVRFXVszN10gKFtmZG8jMTAzOTI3XSkgLT4gW1BBU1NdWzM4XSArMiBzaW1pbGFyIGlzc3Vlcwog
ICBbMzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82
OTI4L3NoYXJkLWFwbDMvaWd0QGdlbV9tbWFwX2d0dEBjbG9zZS1yYWNlLmh0bWwKICAgWzM4XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0NzUv
c2hhcmQtYXBsOC9pZ3RAZ2VtX21tYXBfZ3R0QGNsb3NlLXJhY2UuaHRtbAoKICAqIGlndEBnZW1f
dGlsZWRfc3dhcHBpbmdAbm9uLXRocmVhZGVkOgogICAgLSBzaGFyZC1nbGs6ICAgICAgICAgIFtE
TUVTRy1XQVJOXVszOV0gKFtmZG8jMTA4Njg2XSkgLT4gW1BBU1NdWzQwXQogICBbMzldOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTI4L3NoYXJkLWds
azQvaWd0QGdlbV90aWxlZF9zd2FwcGluZ0Bub24tdGhyZWFkZWQuaHRtbAogICBbNDBdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDQ3NS9zaGFy
ZC1nbGszL2lndEBnZW1fdGlsZWRfc3dhcHBpbmdAbm9uLXRocmVhZGVkLmh0bWwKCiAgKiBpZ3RA
aTkxNV9zdXNwZW5kQHN5c2ZzLXJlYWRlcjoKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbRE1F
U0ctV0FSTl1bNDFdIChbZmRvIzEwODU2Nl0pIC0+IFtQQVNTXVs0Ml0gKzMgc2ltaWxhciBpc3N1
ZXMKICAgWzQxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNjkyOC9zaGFyZC1hcGwxL2lndEBpOTE1X3N1c3BlbmRAc3lzZnMtcmVhZGVyLmh0bWwKICAg
WzQyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTQ0NzUvc2hhcmQtYXBsOC9pZ3RAaTkxNV9zdXNwZW5kQHN5c2ZzLXJlYWRlci5odG1sCgogICog
aWd0QGttc19jdXJzb3JfY3JjQHBpcGUtYy1jdXJzb3Itc3VzcGVuZDoKICAgIC0gc2hhcmQtc2ts
OiAgICAgICAgICBbSU5DT01QTEVURV1bNDNdIChbZmRvIzExMDc0MV0pIC0+IFtQQVNTXVs0NF0K
ICAgWzQzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NjkyOC9zaGFyZC1za2w2L2lndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWMtY3Vyc29yLXN1c3BlbmQu
aHRtbAogICBbNDRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNDQ3NS9zaGFyZC1za2wxMC9pZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1jLWN1cnNv
ci1zdXNwZW5kLmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBAZmxpcC12cy1kcG1zLWludGVycnVwdGli
bGU6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW0lOQ09NUExFVEVdWzQ1XSAoW2ZkbyMxMDc3
MTNdKSAtPiBbUEFTU11bNDZdCiAgIFs0NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzY5Mjgvc2hhcmQtaWNsYjEvaWd0QGttc19mbGlwQGZsaXAtdnMt
ZHBtcy1pbnRlcnJ1cHRpYmxlLmh0bWwKICAgWzQ2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0NzUvc2hhcmQtaWNsYjMvaWd0QGttc19mbGlw
QGZsaXAtdnMtZHBtcy1pbnRlcnJ1cHRpYmxlLmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBAZmxpcC12
cy1zdXNwZW5kLWludGVycnVwdGlibGU6CiAgICAtIHNoYXJkLXNuYjogICAgICAgICAgW0RNRVNH
LVdBUk5dWzQ3XSAoW2ZkbyMxMDIzNjVdKSAtPiBbUEFTU11bNDhdCiAgIFs0N106IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5Mjgvc2hhcmQtc25iNC9p
Z3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLWludGVycnVwdGlibGUuaHRtbAogICBbNDhdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDQ3NS9z
aGFyZC1zbmI0L2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmQtaW50ZXJydXB0aWJsZS5odG1s
CgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tcHJp
LWluZGZiLWRyYXctcHdyaXRlOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtGQUlMXVs0OV0g
KFtmZG8jMTAzMTY3XSkgLT4gW1BBU1NdWzUwXSArMiBzaW1pbGFyIGlzc3VlcwogICBbNDldOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTI4L3NoYXJk
LWljbGIxL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLXBy
aS1pbmRmYi1kcmF3LXB3cml0ZS5odG1sCiAgIFs1MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDc1L3NoYXJkLWljbGI2L2lndEBrbXNfZnJv
bnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLXByaS1pbmRmYi1kcmF3LXB3cml0
ZS5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0Bwc3ItMXAtb2Zmc2NyZW4t
cHJpLWluZGZiLWRyYXctbW1hcC1jcHU6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZBSUxd
WzUxXSAoW2ZkbyMxMDMxNjddKSAtPiBbUEFTU11bNTJdCiAgIFs1MV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5Mjgvc2hhcmQtc2tsMTAvaWd0QGtt
c19mcm9udGJ1ZmZlcl90cmFja2luZ0Bwc3ItMXAtb2Zmc2NyZW4tcHJpLWluZGZiLWRyYXctbW1h
cC1jcHUuaHRtbAogICBbNTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xNDQ3NS9zaGFyZC1za2wxL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tp
bmdAcHNyLTFwLW9mZnNjcmVuLXByaS1pbmRmYi1kcmF3LW1tYXAtY3B1Lmh0bWwKCiAgKiBpZ3RA
a21zX2Zyb250YnVmZmVyX3RyYWNraW5nQHBzci1zdXNwZW5kOgogICAgLSBzaGFyZC1za2w6ICAg
ICAgICAgIFtJTkNPTVBMRVRFXVs1M10gKFtmZG8jMTA0MTA4XSAvIFtmZG8jMTA2OTc4XSkgLT4g
W1BBU1NdWzU0XQogICBbNTNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV82OTI4L3NoYXJkLXNrbDkvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0Bw
c3Itc3VzcGVuZC5odG1sCiAgIFs1NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE0NDc1L3NoYXJkLXNrbDkvaWd0QGttc19mcm9udGJ1ZmZlcl90
cmFja2luZ0Bwc3Itc3VzcGVuZC5odG1sCgogICogaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBw
aXBlLWMtY292ZXJhZ2UtN2VmYzoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbRkFJTF1bNTVd
IChbZmRvIzEwODE0NV0gLyBbZmRvIzExMDQwM10pIC0+IFtQQVNTXVs1Nl0KICAgWzU1XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjkyOC9zaGFyZC1z
a2w0L2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1jLWNvdmVyYWdlLTdlZmMuaHRtbAog
ICBbNTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNDQ3NS9zaGFyZC1za2wxMC9pZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYy1jb3Zl
cmFnZS03ZWZjLmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5lX2N1cnNvckBwaXBlLWEtcHJpbWFyeS1z
aXplLTEyODoKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbRE1FU0ctV0FSTl1bNTddIChbZmRv
IzEwMzU1OF0gLyBbZmRvIzEwNTYwMl0pIC0+IFtQQVNTXVs1OF0gKzM3IHNpbWlsYXIgaXNzdWVz
CiAgIFs1N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzY5Mjgvc2hhcmQta2JsNi9pZ3RAa21zX3BsYW5lX2N1cnNvckBwaXBlLWEtcHJpbWFyeS1zaXpl
LTEyOC5odG1sCiAgIFs1OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE0NDc1L3NoYXJkLWtibDYvaWd0QGttc19wbGFuZV9jdXJzb3JAcGlwZS1h
LXByaW1hcnktc2l6ZS0xMjguaHRtbAoKICAqIGlndEBrbXNfcHNyMl9zdUBwYWdlX2ZsaXA6CiAg
ICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1NLSVBdWzU5XSAoW2ZkbyMxMDk2NDJdIC8gW2ZkbyMx
MTEwNjhdKSAtPiBbUEFTU11bNjBdCiAgIFs1OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzY5Mjgvc2hhcmQtaWNsYjQvaWd0QGttc19wc3IyX3N1QHBh
Z2VfZmxpcC5odG1sCiAgIFs2MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE0NDc1L3NoYXJkLWljbGIyL2lndEBrbXNfcHNyMl9zdUBwYWdlX2Zs
aXAuaHRtbAoKICAqIGlndEBrbXNfcHNyQHBzcjJfY3Vyc29yX3JlbmRlcjoKICAgIC0gc2hhcmQt
aWNsYjogICAgICAgICBbU0tJUF1bNjFdIChbZmRvIzEwOTQ0MV0pIC0+IFtQQVNTXVs2Ml0gKzEg
c2ltaWxhciBpc3N1ZQogICBbNjFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV82OTI4L3NoYXJkLWljbGIzL2lndEBrbXNfcHNyQHBzcjJfY3Vyc29yX3Jl
bmRlci5odG1sCiAgIFs2Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE0NDc1L3NoYXJkLWljbGIyL2lndEBrbXNfcHNyQHBzcjJfY3Vyc29yX3Jl
bmRlci5odG1sCgogICogaWd0QHBlcmZAYmxvY2tpbmc6CiAgICAtIHNoYXJkLXNrbDogICAgICAg
ICAgW0ZBSUxdWzYzXSAoW2ZkbyMxMTA3MjhdKSAtPiBbUEFTU11bNjRdCiAgIFs2M106IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5Mjgvc2hhcmQtc2ts
Ny9pZ3RAcGVyZkBibG9ja2luZy5odG1sCiAgIFs2NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDc1L3NoYXJkLXNrbDEvaWd0QHBlcmZAYmxv
Y2tpbmcuaHRtbAoKICAqIGlndEBwcmltZV9idXN5QGhhbmctYnNkMjoKICAgIC0gc2hhcmQtaWNs
YjogICAgICAgICBbU0tJUF1bNjVdIChbZmRvIzEwOTI3Nl0pIC0+IFtQQVNTXVs2Nl0gKzIyIHNp
bWlsYXIgaXNzdWVzCiAgIFs2NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzY5Mjgvc2hhcmQtaWNsYjgvaWd0QHByaW1lX2J1c3lAaGFuZy1ic2QyLmh0
bWwKICAgWzY2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTQ0NzUvc2hhcmQtaWNsYjEvaWd0QHByaW1lX2J1c3lAaGFuZy1ic2QyLmh0bWwKCiAg
CiMjIyMgV2FybmluZ3MgIyMjIwoKICAqIGlndEBnZW1fbW9jc19zZXR0aW5nc0Btb2NzLWlzb2xh
dGlvbi1ic2QyOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtGQUlMXVs2N10gKFtmZG8jMTEx
MzMwXSkgLT4gW1NLSVBdWzY4XSAoW2ZkbyMxMDkyNzZdKQogICBbNjddOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82OTI4L3NoYXJkLWljbGI0L2lndEBn
ZW1fbW9jc19zZXR0aW5nc0Btb2NzLWlzb2xhdGlvbi1ic2QyLmh0bWwKICAgWzY4XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0NzUvc2hhcmQt
aWNsYjUvaWd0QGdlbV9tb2NzX3NldHRpbmdzQG1vY3MtaXNvbGF0aW9uLWJzZDIuaHRtbAoKICAq
IGlndEBnZW1fbW9jc19zZXR0aW5nc0Btb2NzLXNldHRpbmdzLWJzZDI6CiAgICAtIHNoYXJkLWlj
bGI6ICAgICAgICAgW1NLSVBdWzY5XSAoW2ZkbyMxMDkyNzZdKSAtPiBbRkFJTF1bNzBdIChbZmRv
IzExMTMzMF0pCiAgIFs2OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzY5Mjgvc2hhcmQtaWNsYjYvaWd0QGdlbV9tb2NzX3NldHRpbmdzQG1vY3Mtc2V0
dGluZ3MtYnNkMi5odG1sCiAgIFs3MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE0NDc1L3NoYXJkLWljbGIxL2lndEBnZW1fbW9jc19zZXR0aW5n
c0Btb2NzLXNldHRpbmdzLWJzZDIuaHRtbAoKICAqIGlndEBrbXNfYnVzeUBleHRlbmRlZC1wYWdl
ZmxpcC1tb2Rlc2V0LWhhbmctb2xkZmItcmVuZGVyLWQ6CiAgICAtIHNoYXJkLWtibDogICAgICAg
ICAgW1NLSVBdWzcxXSAoW2ZkbyMxMDU2MDJdIC8gW2ZkbyMxMDkyNzFdIC8gW2ZkbyMxMDkyNzhd
KSAtPiBbU0tJUF1bNzJdIChbZmRvIzEwOTI3MV0gLyBbZmRvIzEwOTI3OF0pICszIHNpbWlsYXIg
aXNzdWVzCiAgIFs3MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzY5Mjgvc2hhcmQta2JsNi9pZ3RAa21zX2J1c3lAZXh0ZW5kZWQtcGFnZWZsaXAtbW9k
ZXNldC1oYW5nLW9sZGZiLXJlbmRlci1kLmh0bWwKICAgWzcyXTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0NzUvc2hhcmQta2JsNi9pZ3RAa21z
X2J1c3lAZXh0ZW5kZWQtcGFnZWZsaXAtbW9kZXNldC1oYW5nLW9sZGZiLXJlbmRlci1kLmh0bWwK
CiAgKiBpZ3RAa21zX2RwX2RzY0BiYXNpYy1kc2MtZW5hYmxlLWVkcDoKICAgIC0gc2hhcmQtaWNs
YjogICAgICAgICBbU0tJUF1bNzNdIChbZmRvIzEwOTM0OV0pIC0+IFtETUVTRy1XQVJOXVs3NF0g
KFtmZG8jMTA3NzI0XSkKICAgWzczXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNjkyOC9zaGFyZC1pY2xiNC9pZ3RAa21zX2RwX2RzY0BiYXNpYy1kc2Mt
ZW5hYmxlLWVkcC5odG1sCiAgIFs3NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE0NDc1L3NoYXJkLWljbGIyL2lndEBrbXNfZHBfZHNjQGJhc2lj
LWRzYy1lbmFibGUtZWRwLmh0bWwKCiAgKiBpZ3RAa21zX3BhbmVsX2ZpdHRpbmdAbGVnYWN5Ogog
ICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtTS0lQXVs3NV0gKFtmZG8jMTA1NjAyXSAvIFtmZG8j
MTA5MjcxXSkgLT4gW1NLSVBdWzc2XSAoW2ZkbyMxMDkyNzFdKSArMzAgc2ltaWxhciBpc3N1ZXMK
ICAgWzc1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NjkyOC9zaGFyZC1rYmw2L2lndEBrbXNfcGFuZWxfZml0dGluZ0BsZWdhY3kuaHRtbAogICBbNzZd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDQ3
NS9zaGFyZC1rYmw2L2lndEBrbXNfcGFuZWxfZml0dGluZ0BsZWdhY3kuaHRtbAoKICAKICB7bmFt
ZX06IFRoaXMgZWxlbWVudCBpcyBzdXBwcmVzc2VkLiBUaGlzIG1lYW5zIGl0IGlzIGlnbm9yZWQg
d2hlbiBjb21wdXRpbmcKICAgICAgICAgIHRoZSBzdGF0dXMgb2YgdGhlIGRpZmZlcmVuY2UgKFNV
Q0NFU1MsIFdBUk5JTkcsIG9yIEZBSUxVUkUpLgoKICBbZmRvIzEwMjM2NV06IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMjM2NQogIFtmZG8jMTAzMTY3XTog
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMTY3CiAgW2Zk
byMxMDMyMzJdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0x
MDMyMzIKICBbZmRvIzEwMzU0MF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19i
dWcuY2dpP2lkPTEwMzU0MAogIFtmZG8jMTAzNTU4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9w
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzNTU4CiAgW2ZkbyMxMDM5MjddOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDM5MjcKICBbZmRvIzEwNDEwOF06IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNDEwOAogIFtmZG8j
MTA1NDExXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA1
NDExCiAgW2ZkbyMxMDU2MDJdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMDU2MDIKICBbZmRvIzEwNjk3OF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTEwNjk3OAogIFtmZG8jMTA3NzEzXTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NzEzCiAgW2ZkbyMxMDc3MjRdOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc3MjQKICBbZmRvIzEw
ODE0NV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwODE0
NQogIFtmZG8jMTA4NTY2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTA4NTY2CiAgW2ZkbyMxMDg2ODZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMDg2ODYKICBbZmRvIzEwOTI3MV06IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI3MQogIFtmZG8jMTA5Mjc2XTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5Mjc2CiAgW2ZkbyMxMDky
NzhdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkyNzgK
ICBbZmRvIzEwOTM0OV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTEwOTM0OQogIFtmZG8jMTA5NDQxXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTA5NDQxCiAgW2ZkbyMxMDk2NDJdOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDk2NDIKICBbZmRvIzExMDQwM106IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDQwMwogIFtmZG8jMTEwNzI4
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwNzI4CiAg
W2ZkbyMxMTA3NDFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMTA3NDEKICBbZmRvIzExMDg1NF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTExMDg1NAogIFtmZG8jMTExMDY4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMDY4CiAgW2ZkbyMxMTEzMjVdOiBodHRwczovL2J1
Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEzMjUKICBbZmRvIzExMTMzMF06
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTMzMAogIFtm
ZG8jMTExNTQ2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTExNTQ2CgoKUGFydGljaXBhdGluZyBob3N0cyAoOSAtPiA5KQotLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KCiAgTm8gY2hhbmdlcyBpbiBwYXJ0aWNpcGF0aW5nIGhvc3RzCgoKQnVpbGQg
Y2hhbmdlcwotLS0tLS0tLS0tLS0tCgogICogQ0k6IENJLTIwMTkwNTI5IC0+IE5vbmUKICAqIExp
bnV4OiBDSV9EUk1fNjkyOCAtPiBQYXRjaHdvcmtfMTQ0NzUKCiAgQ0ktMjAxOTA1Mjk6IDIwMTkw
NTI5CiAgQ0lfRFJNXzY5Mjg6IDc0YmI1YjAzMWNhMTFjNzAzNmY3YmUyMWY0MmE3M2EwNTdmYzhk
YTggQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKICBJR1RfNTE5
NDogNTMxZDNkMDJkNWU3YTJhODRkNjFiOTJiMjhmYTAxYjgyMmFmYzM5OSBAIGdpdDovL2Fub25n
aXQuZnJlZWRlc2t0b3Aub3JnL3hvcmcvYXBwL2ludGVsLWdwdS10b29scwogIFBhdGNod29ya18x
NDQ3NTogNTg2NzZkY2IxMTk1Yzk0ZGM4ZjZkYjg5NzhhYzc2NTFlMTZlNWE1NCBAIGdpdDovL2Fu
b25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIHBpZ2xpdF80NTA5OiBmZGM1YTRj
YTExMTI0YWI4NDEzYzc5ODg4OTZlZWM0Yzk3MzM2Njk0IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVz
a3RvcC5vcmcvcGlnbGl0Cgo9PSBMb2dzID09CgpGb3IgbW9yZSBkZXRhaWxzIHNlZTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0NzUvCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
