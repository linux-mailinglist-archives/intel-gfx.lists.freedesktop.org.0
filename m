Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6340CC79F
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Oct 2019 06:06:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F6A96E0C0;
	Sat,  5 Oct 2019 04:06:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1F74A6E0C0;
 Sat,  5 Oct 2019 04:06:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 454D1A0096;
 Sat,  5 Oct 2019 04:06:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Sat, 05 Oct 2019 04:06:14 -0000
Message-ID: <20191005040614.26991.76348@emeril.freedesktop.org>
References: <20191004215851.31446-1-shawn.c.lee@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20191004215851.31446-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_customize_DPCD_brightness_control_for_specific_panel?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IGN1c3RvbWl6ZSBEUENEIGJy
aWdodG5lc3MgY29udHJvbCBmb3Igc3BlY2lmaWMgcGFuZWwKVVJMICAgOiBodHRwczovL3BhdGNo
d29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY3NTk1LwpTdGF0ZSA6IGZhaWx1cmUKCj09IFN1
bW1hcnkgPT0KCkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzcwMTFfZnVsbCAtPiBQ
YXRjaHdvcmtfMTQ2NzBfZnVsbAo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09CgpTdW1tYXJ5Ci0tLS0tLS0KCiAgKipGQUlMVVJFKioKCiAgU2VyaW91
cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzE0NjcwX2Z1bGwgYWJzb2x1
dGVseSBuZWVkIHRvIGJlCiAgdmVyaWZpZWQgbWFudWFsbHkuCiAgCiAgSWYgeW91IHRoaW5rIHRo
ZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzCiAg
aW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTQ2NzBfZnVsbCwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1
ZyB0ZWFtIHRvIGFsbG93IHRoZW0KICB0byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUs
IHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0aXZlcyBpbiBDSS4KCiAgCgpQb3NzaWJsZSBu
ZXcgaXNzdWVzCi0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhlIHVua25vd24gY2hh
bmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTQ2NzBfZnVs
bDoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgUG9zc2libGUgcmVncmVzc2lvbnMgIyMjIwoK
ICAqIGlndEBnZW1fY3R4X2lzb2xhdGlvbkB2Y3MwLWRpcnR5LXN3aXRjaDoKICAgIC0gc2hhcmQt
YXBsOiAgICAgICAgICBbUEFTU11bMV0gLT4gW0ZBSUxdWzJdCiAgIFsxXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzAxMS9zaGFyZC1hcGwyL2lndEBn
ZW1fY3R4X2lzb2xhdGlvbkB2Y3MwLWRpcnR5LXN3aXRjaC5odG1sCiAgIFsyXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ2NzAvc2hhcmQtYXBs
Mi9pZ3RAZ2VtX2N0eF9pc29sYXRpb25AdmNzMC1kaXJ0eS1zd2l0Y2guaHRtbAoKICAqIGlndEBn
ZW1fY3R4X2lzb2xhdGlvbkB2Y3MwLXMzOgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtQQVNT
XVszXSAtPiBbRkFJTF1bNF0KICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV83MDExL3NoYXJkLWtibDEvaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHZj
czAtczMuaHRtbAogICBbNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE0NjcwL3NoYXJkLWtibDcvaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHZjczAt
czMuaHRtbAoKICAqIGlndEBnZW1fY3R4X2lzb2xhdGlvbkB2ZWNzMC1kaXJ0eS1zd2l0Y2g6CiAg
ICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzVdIC0+IFtGQUlMXVs2XQogICBbNV06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwMTEvc2hhcmQt
c2tsOC9pZ3RAZ2VtX2N0eF9pc29sYXRpb25AdmVjczAtZGlydHktc3dpdGNoLmh0bWwKICAgWzZd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDY3
MC9zaGFyZC1za2wxL2lndEBnZW1fY3R4X2lzb2xhdGlvbkB2ZWNzMC1kaXJ0eS1zd2l0Y2guaHRt
bAoKICAKIyMjIyBTdXBwcmVzc2VkICMjIyMKCiAgVGhlIGZvbGxvd2luZyByZXN1bHRzIGNvbWUg
ZnJvbSB1bnRydXN0ZWQgbWFjaGluZXMsIHRlc3RzLCBvciBzdGF0dXNlcy4KICBUaGV5IGRvIG5v
dCBhZmZlY3QgdGhlIG92ZXJhbGwgcmVzdWx0LgoKICAqIGlndEBnZW1fY3R4X2lzb2xhdGlvbkBi
Y3MwLXMzOgogICAgLSB7c2hhcmQtdGdsYn06ICAgICAgIE5PVFJVTiAtPiBbSU5DT01QTEVURV1b
N10KICAgWzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNDY3MC9zaGFyZC10Z2xiNy9pZ3RAZ2VtX2N0eF9pc29sYXRpb25AYmNzMC1zMy5odG1s
CgogICogaWd0QGdlbV9leGVjX25vcEBiYXNpYy1wYXJhbGxlbDoKICAgIC0ge3NoYXJkLXRnbGJ9
OiAgICAgICBbUEFTU11bOF0gLT4gW0lOQ09NUExFVEVdWzldICsyIHNpbWlsYXIgaXNzdWVzCiAg
IFs4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzAx
MS9zaGFyZC10Z2xiNy9pZ3RAZ2VtX2V4ZWNfbm9wQGJhc2ljLXBhcmFsbGVsLmh0bWwKICAgWzld
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDY3
MC9zaGFyZC10Z2xiOC9pZ3RAZ2VtX2V4ZWNfbm9wQGJhc2ljLXBhcmFsbGVsLmh0bWwKCiAgCktu
b3duIGlzc3VlcwotLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4g
UGF0Y2h3b3JrXzE0NjcwX2Z1bGwgdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMjIElH
VCBjaGFuZ2VzICMjIwoKIyMjIyBJc3N1ZXMgaGl0ICMjIyMKCiAgKiBpZ3RAZ2VtX2Vpb0ByZXNl
dC1zdHJlc3M6CiAgICAtIHNoYXJkLXNuYjogICAgICAgICAgW1BBU1NdWzEwXSAtPiBbRkFJTF1b
MTFdIChbZmRvIzEwOTY2MV0pCiAgIFsxMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzcwMTEvc2hhcmQtc25iMi9pZ3RAZ2VtX2Vpb0ByZXNldC1zdHJl
c3MuaHRtbAogICBbMTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNDY3MC9zaGFyZC1zbmIyL2lndEBnZW1fZWlvQHJlc2V0LXN0cmVzcy5odG1s
CgogICogaWd0QGdlbV9leGVjX3NjaGVkdWxlQHJlb3JkZXItd2lkZS1ic2Q6CiAgICAtIHNoYXJk
LWljbGI6ICAgICAgICAgW1BBU1NdWzEyXSAtPiBbU0tJUF1bMTNdIChbZmRvIzExMTMyNV0pICs3
IHNpbWlsYXIgaXNzdWVzCiAgIFsxMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzcwMTEvc2hhcmQtaWNsYjgvaWd0QGdlbV9leGVjX3NjaGVkdWxlQHJl
b3JkZXItd2lkZS1ic2QuaHRtbAogICBbMTNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDY3MC9zaGFyZC1pY2xiMS9pZ3RAZ2VtX2V4ZWNfc2No
ZWR1bGVAcmVvcmRlci13aWRlLWJzZC5odG1sCgogICogaWd0QGdlbV9zb2Z0cGluQG5vcmVsb2Mt
aW50ZXJydXB0aWJsZToKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbUEFTU11bMTRdIC0+IFtJ
TkNPTVBMRVRFXVsxNV0gKFtmZG8jMTAzOTI3XSkgKzEgc2ltaWxhciBpc3N1ZQogICBbMTRdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDExL3NoYXJk
LWFwbDMvaWd0QGdlbV9zb2Z0cGluQG5vcmVsb2MtaW50ZXJydXB0aWJsZS5odG1sCiAgIFsxNV06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0Njcw
L3NoYXJkLWFwbDEvaWd0QGdlbV9zb2Z0cGluQG5vcmVsb2MtaW50ZXJydXB0aWJsZS5odG1sCgog
ICogaWd0QGdlbV91c2VycHRyX2JsaXRzQG1hcC1maXhlZC1pbnZhbGlkYXRlLW92ZXJsYXAtYnVz
eS1ndXA6CiAgICAtIHNoYXJkLXNuYjogICAgICAgICAgW1BBU1NdWzE2XSAtPiBbRE1FU0ctV0FS
Tl1bMTddIChbZmRvIzExMTg3MF0pCiAgIFsxNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzcwMTEvc2hhcmQtc25iMS9pZ3RAZ2VtX3VzZXJwdHJfYmxp
dHNAbWFwLWZpeGVkLWludmFsaWRhdGUtb3ZlcmxhcC1idXN5LWd1cC5odG1sCiAgIFsxN106IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NjcwL3No
YXJkLXNuYjIvaWd0QGdlbV91c2VycHRyX2JsaXRzQG1hcC1maXhlZC1pbnZhbGlkYXRlLW92ZXJs
YXAtYnVzeS1ndXAuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5r
OgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVsxOF0gLT4gW0ZBSUxdWzE5XSAoW2Zk
byMxMDUzNjNdKQogICBbMThdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV83MDExL3NoYXJkLXNrbDkvaWd0QGttc19mbGlwQGZsaXAtdnMtZXhwaXJlZC12
YmxhbmsuaHRtbAogICBbMTldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xNDY3MC9zaGFyZC1za2w4L2lndEBrbXNfZmxpcEBmbGlwLXZzLWV4cGly
ZWQtdmJsYW5rLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1z
aHJmYi1mbGlwdHJhY2s6CiAgICAtIHNoYXJkLXNuYjogICAgICAgICAgW1BBU1NdWzIwXSAtPiBb
U0tJUF1bMjFdIChbZmRvIzEwOTI3MV0pICsxIHNpbWlsYXIgaXNzdWUKICAgWzIwXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzAxMS9zaGFyZC1zbmIx
L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXNocmZiLWZsaXB0cmFjay5odG1s
CiAgIFsyMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE0NjcwL3NoYXJkLXNuYjYvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAt
c2hyZmItZmxpcHRyYWNrLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZi
Y3Bzci0xcC1wcmltc2Nybi1jdXItaW5kZmItZHJhdy1wd3JpdGU6CiAgICAtIHNoYXJkLWljbGI6
ICAgICAgICAgW1BBU1NdWzIyXSAtPiBbSU5DT01QTEVURV1bMjNdIChbZmRvIzEwNjk3OF0gLyBb
ZmRvIzEwNzcxM10pCiAgIFsyMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzcwMTEvc2hhcmQtaWNsYjgvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2lu
Z0BmYmNwc3ItMXAtcHJpbXNjcm4tY3VyLWluZGZiLWRyYXctcHdyaXRlLmh0bWwKICAgWzIzXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ2NzAv
c2hhcmQtaWNsYjcvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNj
cm4tY3VyLWluZGZiLWRyYXctcHdyaXRlLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3Ry
YWNraW5nQGZiY3Bzci0xcC1wcmltc2Nybi1wcmktaW5kZmItZHJhdy1wd3JpdGU6CiAgICAtIHNo
YXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzI0XSAtPiBbRkFJTF1bMjVdIChbZmRvIzEwMzE2N10p
ICszIHNpbWlsYXIgaXNzdWVzCiAgIFsyNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzcwMTEvc2hhcmQtaWNsYjIvaWd0QGttc19mcm9udGJ1ZmZlcl90
cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tcHJpLWluZGZiLWRyYXctcHdyaXRlLmh0bWwKICAg
WzI1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTQ2NzAvc2hhcmQtaWNsYjYvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAt
cHJpbXNjcm4tcHJpLWluZGZiLWRyYXctcHdyaXRlLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVm
ZmVyX3RyYWNraW5nQHBzci1zdXNwZW5kOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNT
XVsyNl0gLT4gW0lOQ09NUExFVEVdWzI3XSAoW2ZkbyMxMDQxMDhdIC8gW2ZkbyMxMDY5NzhdKQog
ICBbMjZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83
MDExL3NoYXJkLXNrbDIvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0Bwc3Itc3VzcGVuZC5o
dG1sCiAgIFsyN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE0NjcwL3NoYXJkLXNrbDUvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0Bwc3It
c3VzcGVuZC5odG1sCgogICogaWd0QGttc19wc3IyX3N1QHBhZ2VfZmxpcDoKICAgIC0gc2hhcmQt
aWNsYjogICAgICAgICBbUEFTU11bMjhdIC0+IFtTS0lQXVsyOV0gKFtmZG8jMTA5NjQyXSAvIFtm
ZG8jMTExMDY4XSkKICAgWzI4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNzAxMS9zaGFyZC1pY2xiMi9pZ3RAa21zX3BzcjJfc3VAcGFnZV9mbGlwLmh0
bWwKICAgWzI5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTQ2NzAvc2hhcmQtaWNsYjYvaWd0QGttc19wc3IyX3N1QHBhZ2VfZmxpcC5odG1sCgog
ICogaWd0QGttc19wc3JAcHNyMl9jdXJzb3JfcGxhbmVfbW92ZToKICAgIC0gc2hhcmQtaWNsYjog
ICAgICAgICBbUEFTU11bMzBdIC0+IFtTS0lQXVszMV0gKFtmZG8jMTA5NDQxXSkgKzIgc2ltaWxh
ciBpc3N1ZXMKICAgWzMwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNzAxMS9zaGFyZC1pY2xiMi9pZ3RAa21zX3BzckBwc3IyX2N1cnNvcl9wbGFuZV9t
b3ZlLmh0bWwKICAgWzMxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTQ2NzAvc2hhcmQtaWNsYjQvaWd0QGttc19wc3JAcHNyMl9jdXJzb3JfcGxh
bmVfbW92ZS5odG1sCgogICogaWd0QGttc19zZXRtb2RlQGJhc2ljOgogICAgLSBzaGFyZC1hcGw6
ICAgICAgICAgIFtQQVNTXVszMl0gLT4gW0ZBSUxdWzMzXSAoW2ZkbyM5OTkxMl0pCiAgIFszMl06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwMTEvc2hh
cmQtYXBsNC9pZ3RAa21zX3NldG1vZGVAYmFzaWMuaHRtbAogICBbMzNdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDY3MC9zaGFyZC1hcGwyL2ln
dEBrbXNfc2V0bW9kZUBiYXNpYy5odG1sCiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1Nd
WzM0XSAtPiBbRkFJTF1bMzVdIChbZmRvIzk5OTEyXSkKICAgWzM0XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzAxMS9zaGFyZC1za2w5L2lndEBrbXNf
c2V0bW9kZUBiYXNpYy5odG1sCiAgIFszNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NjcwL3NoYXJkLXNrbDQvaWd0QGttc19zZXRtb2RlQGJh
c2ljLmh0bWwKCiAgKiBpZ3RAa21zX3ZibGFua0BwaXBlLWItdHMtY29udGludWF0aW9uLXN1c3Bl
bmQ6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW1BBU1NdWzM2XSAtPiBbRE1FU0ctV0FSTl1b
MzddIChbZmRvIzEwODU2Nl0pICszIHNpbWlsYXIgaXNzdWVzCiAgIFszNl06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwMTEvc2hhcmQtYXBsMy9pZ3RA
a21zX3ZibGFua0BwaXBlLWItdHMtY29udGludWF0aW9uLXN1c3BlbmQuaHRtbAogICBbMzddOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDY3MC9z
aGFyZC1hcGwxL2lndEBrbXNfdmJsYW5rQHBpcGUtYi10cy1jb250aW51YXRpb24tc3VzcGVuZC5o
dG1sCgogICogaWd0QHBlcmZAcG9sbGluZzoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFT
U11bMzhdIC0+IFtGQUlMXVszOV0gKFtmZG8jMTEwNzI4XSkKICAgWzM4XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzAxMS9zaGFyZC1za2w1L2lndEBw
ZXJmQHBvbGxpbmcuaHRtbAogICBbMzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNDY3MC9zaGFyZC1za2w2L2lndEBwZXJmQHBvbGxpbmcuaHRt
bAoKICAqIGlndEBwZXJmX3BtdUByYzY6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1Nd
WzQwXSAtPiBbSU5DT01QTEVURV1bNDFdIChbZmRvIzEwNzcxM10pCiAgIFs0MF06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwMTEvc2hhcmQtaWNsYjQv
aWd0QHBlcmZfcG11QHJjNi5odG1sCiAgIFs0MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NjcwL3NoYXJkLWljbGIxL2lndEBwZXJmX3BtdUBy
YzYuaHRtbAoKICAqIGlndEBwcmltZV9idXN5QGFmdGVyLWJzZDI6CiAgICAtIHNoYXJkLWljbGI6
ICAgICAgICAgW1BBU1NdWzQyXSAtPiBbU0tJUF1bNDNdIChbZmRvIzEwOTI3Nl0pICsxNyBzaW1p
bGFyIGlzc3VlcwogICBbNDJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV83MDExL3NoYXJkLWljbGI0L2lndEBwcmltZV9idXN5QGFmdGVyLWJzZDIuaHRt
bAogICBbNDNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNDY3MC9zaGFyZC1pY2xiOC9pZ3RAcHJpbWVfYnVzeUBhZnRlci1ic2QyLmh0bWwKCiAg
CiMjIyMgUG9zc2libGUgZml4ZXMgIyMjIwoKICAqIGlndEBnZW1fY3R4X2lzb2xhdGlvbkB2Y3Mw
LXJlc2V0OgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtGQUlMXVs0NF0gLT4gW1BBU1NdWzQ1
XSArMiBzaW1pbGFyIGlzc3VlcwogICBbNDRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV83MDExL3NoYXJkLXNrbDUvaWd0QGdlbV9jdHhfaXNvbGF0aW9u
QHZjczAtcmVzZXQuaHRtbAogICBbNDVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNDY3MC9zaGFyZC1za2w2L2lndEBnZW1fY3R4X2lzb2xhdGlv
bkB2Y3MwLXJlc2V0Lmh0bWwKCiAgKiBpZ3RAZ2VtX2N0eF9pc29sYXRpb25AdmVjczAtbm9uZToK
ICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbRkFJTF1bNDZdIC0+IFtQQVNTXVs0N10KICAgWzQ2
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzAxMS9z
aGFyZC1hcGw0L2lndEBnZW1fY3R4X2lzb2xhdGlvbkB2ZWNzMC1ub25lLmh0bWwKICAgWzQ3XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ2NzAv
c2hhcmQtYXBsMy9pZ3RAZ2VtX2N0eF9pc29sYXRpb25AdmVjczAtbm9uZS5odG1sCgogICogaWd0
QGdlbV9jdHhfaXNvbGF0aW9uQHZlY3MwLXJlc2V0OgogICAgLSBzaGFyZC1nbGs6ICAgICAgICAg
IFtGQUlMXVs0OF0gLT4gW1BBU1NdWzQ5XSArMiBzaW1pbGFyIGlzc3VlcwogICBbNDhdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDExL3NoYXJkLWds
azQvaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHZlY3MwLXJlc2V0Lmh0bWwKICAgWzQ5XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ2NzAvc2hhcmQt
Z2xrMy9pZ3RAZ2VtX2N0eF9pc29sYXRpb25AdmVjczAtcmVzZXQuaHRtbAoKICAqIGlndEBnZW1f
Y3R4X3NoYXJlZEBleGVjLXNpbmdsZS10aW1lbGluZS1ic2Q6CiAgICAtIHNoYXJkLWljbGI6ICAg
ICAgICAgW1NLSVBdWzUwXSAoW2ZkbyMxMTA4NDFdKSAtPiBbUEFTU11bNTFdCiAgIFs1MF06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwMTEvc2hhcmQt
aWNsYjQvaWd0QGdlbV9jdHhfc2hhcmVkQGV4ZWMtc2luZ2xlLXRpbWVsaW5lLWJzZC5odG1sCiAg
IFs1MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE0NjcwL3NoYXJkLWljbGI3L2lndEBnZW1fY3R4X3NoYXJlZEBleGVjLXNpbmdsZS10aW1lbGlu
ZS1ic2QuaHRtbAoKICAqIGlndEBnZW1fZWlvQGluLWZsaWdodC1jb250ZXh0cy1pbW1lZGlhdGU6
CiAgICAtIHNoYXJkLXNuYjogICAgICAgICAgW0ZBSUxdWzUyXSAtPiBbUEFTU11bNTNdCiAgIFs1
Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwMTEv
c2hhcmQtc25iNy9pZ3RAZ2VtX2Vpb0Bpbi1mbGlnaHQtY29udGV4dHMtaW1tZWRpYXRlLmh0bWwK
ICAgWzUzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTQ2NzAvc2hhcmQtc25iNC9pZ3RAZ2VtX2Vpb0Bpbi1mbGlnaHQtY29udGV4dHMtaW1tZWRp
YXRlLmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfYmFsYW5jZXJAYnVzeToKICAgIC0gc2hhcmQtYXBs
OiAgICAgICAgICBbSU5DT01QTEVURV1bNTRdIChbZmRvIzEwMzkyN10pIC0+IFtQQVNTXVs1NV0K
ICAgWzU0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NzAxMS9zaGFyZC1hcGw2L2lndEBnZW1fZXhlY19iYWxhbmNlckBidXN5Lmh0bWwKICAgWzU1XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ2NzAv
c2hhcmQtYXBsNi9pZ3RAZ2VtX2V4ZWNfYmFsYW5jZXJAYnVzeS5odG1sCgogICogaWd0QGdlbV9l
eGVjX3NjaGVkdWxlQGluZGVwZW5kZW50LWJzZDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBb
U0tJUF1bNTZdIChbZmRvIzExMTMyNV0pIC0+IFtQQVNTXVs1N10gKzEgc2ltaWxhciBpc3N1ZQog
ICBbNTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83
MDExL3NoYXJkLWljbGIxL2lndEBnZW1fZXhlY19zY2hlZHVsZUBpbmRlcGVuZGVudC1ic2QuaHRt
bAogICBbNTddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNDY3MC9zaGFyZC1pY2xiNy9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAaW5kZXBlbmRlbnQt
YnNkLmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJlZW1wdC1xdWV1ZS1ic2QxOgog
ICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtTS0lQXVs1OF0gKFtmZG8jMTA5Mjc2XSkgLT4gW1BB
U1NdWzU5XSArMjYgc2ltaWxhciBpc3N1ZXMKICAgWzU4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzAxMS9zaGFyZC1pY2xiNi9pZ3RAZ2VtX2V4ZWNf
c2NoZWR1bGVAcHJlZW1wdC1xdWV1ZS1ic2QxLmh0bWwKICAgWzU5XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ2NzAvc2hhcmQtaWNsYjIvaWd0
QGdlbV9leGVjX3NjaGVkdWxlQHByZWVtcHQtcXVldWUtYnNkMS5odG1sCgogICogaWd0QGdlbV91
c2VycHRyX2JsaXRzQGRtYWJ1Zi11bnN5bmM6CiAgICAtIHNoYXJkLXNuYjogICAgICAgICAgW0RN
RVNHLVdBUk5dWzYwXSAoW2ZkbyMxMTE4NzBdKSAtPiBbUEFTU11bNjFdCiAgIFs2MF06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwMTEvc2hhcmQtc25i
Mi9pZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAZG1hYnVmLXVuc3luYy5odG1sCiAgIFs2MV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NjcwL3NoYXJk
LXNuYjQvaWd0QGdlbV91c2VycHRyX2JsaXRzQGRtYWJ1Zi11bnN5bmMuaHRtbAoKICAqIGlndEBn
ZW1fd29ya2Fyb3VuZHNAc3VzcGVuZC1yZXN1bWUtY29udGV4dDoKICAgIC0gc2hhcmQtYXBsOiAg
ICAgICAgICBbRE1FU0ctV0FSTl1bNjJdIChbZmRvIzEwODU2Nl0pIC0+IFtQQVNTXVs2M10gKzQg
c2ltaWxhciBpc3N1ZXMKICAgWzYyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNzAxMS9zaGFyZC1hcGw2L2lndEBnZW1fd29ya2Fyb3VuZHNAc3VzcGVu
ZC1yZXN1bWUtY29udGV4dC5odG1sCiAgIFs2M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NjcwL3NoYXJkLWFwbDEvaWd0QGdlbV93b3JrYXJv
dW5kc0BzdXNwZW5kLXJlc3VtZS1jb250ZXh0Lmh0bWwKCiAgKiBpZ3RAaTkxNV9zdXNwZW5kQGRl
YnVnZnMtcmVhZGVyOgogICAgLSB7c2hhcmQtdGdsYn06ICAgICAgIFtJTkNPTVBMRVRFXVs2NF0g
KFtmZG8jMTExODMyXSAvIFtmZG8jMTExODY3XSkgLT4gW1BBU1NdWzY1XQogICBbNjRdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDExL3NoYXJkLXRn
bGIyL2lndEBpOTE1X3N1c3BlbmRAZGVidWdmcy1yZWFkZXIuaHRtbAogICBbNjVdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDY3MC9zaGFyZC10
Z2xiNS9pZ3RAaTkxNV9zdXNwZW5kQGRlYnVnZnMtcmVhZGVyLmh0bWwKCiAgKiBpZ3RAaTkxNV9z
dXNwZW5kQHN5c2ZzLXJlYWRlcjoKICAgIC0ge3NoYXJkLXRnbGJ9OiAgICAgICBbSU5DT01QTEVU
RV1bNjZdIChbZmRvIzExMTgzMl0pIC0+IFtQQVNTXVs2N10gKzEgc2ltaWxhciBpc3N1ZQogICBb
NjZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDEx
L3NoYXJkLXRnbGI0L2lndEBpOTE1X3N1c3BlbmRAc3lzZnMtcmVhZGVyLmh0bWwKICAgWzY3XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ2NzAv
c2hhcmQtdGdsYjUvaWd0QGk5MTVfc3VzcGVuZEBzeXNmcy1yZWFkZXIuaHRtbAoKICAqIGlndEBr
bXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rLWludGVycnVwdGlibGU6CiAgICAtIHNoYXJk
LXNrbDogICAgICAgICAgW0ZBSUxdWzY4XSAoW2ZkbyMxMDUzNjNdKSAtPiBbUEFTU11bNjldCiAg
IFs2OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcw
MTEvc2hhcmQtc2tsMTAvaWd0QGttc19mbGlwQGZsaXAtdnMtZXhwaXJlZC12YmxhbmstaW50ZXJy
dXB0aWJsZS5odG1sCiAgIFs2OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE0NjcwL3NoYXJkLXNrbDkvaWd0QGttc19mbGlwQGZsaXAtdnMtZXhw
aXJlZC12YmxhbmstaW50ZXJydXB0aWJsZS5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90
cmFja2luZ0BmYmMtcmdiNTY1LWRyYXctbW1hcC1jcHU6CiAgICAtIHtzaGFyZC10Z2xifTogICAg
ICAgW0ZBSUxdWzcwXSAoW2ZkbyMxMDMxNjddKSAtPiBbUEFTU11bNzFdICs4IHNpbWlsYXIgaXNz
dWVzCiAgIFs3MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzcwMTEvc2hhcmQtdGdsYjIvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtcmdi
NTY1LWRyYXctbW1hcC1jcHUuaHRtbAogICBbNzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDY3MC9zaGFyZC10Z2xiOC9pZ3RAa21zX2Zyb250
YnVmZmVyX3RyYWNraW5nQGZiYy1yZ2I1NjUtZHJhdy1tbWFwLWNwdS5odG1sCgogICogaWd0QGtt
c19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tc2hyZmItcGxmbGlwLWJs
dDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbRkFJTF1bNzJdIChbZmRvIzEwMzE2N10pIC0+
IFtQQVNTXVs3M10gKzQgc2ltaWxhciBpc3N1ZXMKICAgWzcyXTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzAxMS9zaGFyZC1pY2xiMy9pZ3RAa21zX2Zy
b250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmltc2Nybi1zaHJmYi1wbGZsaXAtYmx0Lmh0
bWwKICAgWzczXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTQ2NzAvc2hhcmQtaWNsYjEvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNw
c3ItMXAtcHJpbXNjcm4tc2hyZmItcGxmbGlwLWJsdC5odG1sCgogICogaWd0QGttc19wbGFuZUBw
bGFuZS1wYW5uaW5nLWJvdHRvbS1yaWdodC1waXBlLWItcGxhbmVzOgogICAgLSB7c2hhcmQtdGds
Yn06ICAgICAgIFtJTkNPTVBMRVRFXVs3NF0gLT4gW1BBU1NdWzc1XQogICBbNzRdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDExL3NoYXJkLXRnbGIy
L2lndEBrbXNfcGxhbmVAcGxhbmUtcGFubmluZy1ib3R0b20tcmlnaHQtcGlwZS1iLXBsYW5lcy5o
dG1sCiAgIFs3NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE0NjcwL3NoYXJkLXRnbGI3L2lndEBrbXNfcGxhbmVAcGxhbmUtcGFubmluZy1ib3R0
b20tcmlnaHQtcGlwZS1iLXBsYW5lcy5odG1sCgogICogaWd0QGttc19wbGFuZV9hbHBoYV9ibGVu
ZEBwaXBlLWEtY29uc3RhbnQtYWxwaGEtbWluOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtG
QUlMXVs3Nl0gKFtmZG8jMTA4MTQ1XSkgLT4gW1BBU1NdWzc3XQogICBbNzZdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDExL3NoYXJkLXNrbDEwL2ln
dEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1hLWNvbnN0YW50LWFscGhhLW1pbi5odG1sCiAg
IFs3N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE0NjcwL3NoYXJkLXNrbDkvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWEtY29uc3Rh
bnQtYWxwaGEtbWluLmh0bWwKCiAgKiBpZ3RAa21zX3BzckBwc3IyX3N1c3BlbmQ6CiAgICAtIHNo
YXJkLWljbGI6ICAgICAgICAgW1NLSVBdWzc4XSAoW2ZkbyMxMDk0NDFdKSAtPiBbUEFTU11bNzld
ICsxIHNpbWlsYXIgaXNzdWUKICAgWzc4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNzAxMS9zaGFyZC1pY2xiMy9pZ3RAa21zX3BzckBwc3IyX3N1c3Bl
bmQuaHRtbAogICBbNzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNDY3MC9zaGFyZC1pY2xiMi9pZ3RAa21zX3BzckBwc3IyX3N1c3BlbmQuaHRt
bAoKICAKIyMjIyBXYXJuaW5ncyAjIyMjCgogICogaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHZjczEt
bm9ucHJpdjoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbRkFJTF1bODBdIChbZmRvIzExMTMy
OV0pIC0+IFtTS0lQXVs4MV0gKFtmZG8jMTA5Mjc2XSkKICAgWzgwXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzAxMS9zaGFyZC1pY2xiMi9pZ3RAZ2Vt
X2N0eF9pc29sYXRpb25AdmNzMS1ub25wcml2Lmh0bWwKICAgWzgxXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ2NzAvc2hhcmQtaWNsYjYvaWd0
QGdlbV9jdHhfaXNvbGF0aW9uQHZjczEtbm9ucHJpdi5odG1sCgogICogaWd0QGdlbV9tb2NzX3Nl
dHRpbmdzQG1vY3MtaXNvbGF0aW9uLWJzZDI6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1NL
SVBdWzgyXSAoW2ZkbyMxMDkyNzZdKSAtPiBbRkFJTF1bODNdIChbZmRvIzExMTMzMF0pCiAgIFs4
Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwMTEv
c2hhcmQtaWNsYjUvaWd0QGdlbV9tb2NzX3NldHRpbmdzQG1vY3MtaXNvbGF0aW9uLWJzZDIuaHRt
bAogICBbODNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNDY3MC9zaGFyZC1pY2xiNC9pZ3RAZ2VtX21vY3Nfc2V0dGluZ3NAbW9jcy1pc29sYXRp
b24tYnNkMi5odG1sCgogIAogIHtuYW1lfTogVGhpcyBlbGVtZW50IGlzIHN1cHByZXNzZWQuIFRo
aXMgbWVhbnMgaXQgaXMgaWdub3JlZCB3aGVuIGNvbXB1dGluZwogICAgICAgICAgdGhlIHN0YXR1
cyBvZiB0aGUgZGlmZmVyZW5jZSAoU1VDQ0VTUywgV0FSTklORywgb3IgRkFJTFVSRSkuCgogIFtm
ZG8jMTAzMTY3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTAzMTY3CiAgW2ZkbyMxMDM5MjddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMDM5MjcKICBbZmRvIzEwNDEwOF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNDEwOAogIFtmZG8jMTA1MzYzXTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA1MzYzCiAgW2ZkbyMxMDY5NzhdOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDY5NzgKICBbZmRv
IzEwNzcxM106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEw
NzcxMwogIFtmZG8jMTA4MTQ1XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTA4MTQ1CiAgW2ZkbyMxMDg1NjZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Au
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMDg1NjYKICBbZmRvIzEwODk3Ml06IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwODk3MgogIFtmZG8jMTA5MjcxXTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5MjcxCiAgW2ZkbyMx
MDkyNzZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDky
NzYKICBbZmRvIzEwOTQ0MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTEwOTQ0MQogIFtmZG8jMTA5NjQyXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MTA5NjQyCiAgW2ZkbyMxMDk2NjFdOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDk2NjEKICBbZmRvIzExMDcyOF06IGh0dHBz
Oi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDcyOAogIFtmZG8jMTEw
ODQxXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwODQx
CiAgW2ZkbyMxMTEwNjhdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMTEwNjgKICBbZmRvIzExMTMyNV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTExMTMyNQogIFtmZG8jMTExMzI5XTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMzI5CiAgW2ZkbyMxMTEzMzBdOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEzMzAKICBbZmRvIzExMTgz
Ml06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTgzMgog
IFtmZG8jMTExODUwXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9MTExODUwCiAgW2ZkbyMxMTE4NjddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3No
b3dfYnVnLmNnaT9pZD0xMTE4NjcKICBbZmRvIzExMTg3MF06IGh0dHBzOi8vYnVncy5mcmVlZGVz
a3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTg3MAogIFtmZG8jOTk5MTJdOiBodHRwczovL2J1
Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD05OTkxMgoKClBhcnRpY2lwYXRpbmcg
aG9zdHMgKDExIC0+IDExKQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgTm8gY2hh
bmdlcyBpbiBwYXJ0aWNpcGF0aW5nIGhvc3RzCgoKQnVpbGQgY2hhbmdlcwotLS0tLS0tLS0tLS0t
CgogICogQ0k6IENJLTIwMTkwNTI5IC0+IE5vbmUKICAqIExpbnV4OiBDSV9EUk1fNzAxMSAtPiBQ
YXRjaHdvcmtfMTQ2NzAKCiAgQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5CiAgQ0lfRFJNXzcwMTE6IDdk
MTM3MzNjMmE4NzkwOWVlZjhiYzk0NWVjYmY0ZDQ3ZTBiNjcxMzMgQCBnaXQ6Ly9hbm9uZ2l0LmZy
ZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKICBJR1RfNTIxMjogZDE3YTQ4NGIzYzIyNzA2YjJi
MDA0ZWYxNTc3ZjM2N2Q3OTIzNWU0MyBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hv
cmcvYXBwL2ludGVsLWdwdS10b29scwogIFBhdGNod29ya18xNDY3MDogODRkNjcxOTA4NTRiZWIz
ZjBjNWQwODA5YjgyNjQ2YmMzMjUwY2FjMyBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3Jn
L2dmeC1jaS9saW51eAogIHBpZ2xpdF80NTA5OiBmZGM1YTRjYTExMTI0YWI4NDEzYzc5ODg4OTZl
ZWM0Yzk3MzM2Njk0IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvcGlnbGl0Cgo9PSBM
b2dzID09CgpGb3IgbW9yZSBkZXRhaWxzIHNlZTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ2NzAvaW5kZXguaHRtbApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
