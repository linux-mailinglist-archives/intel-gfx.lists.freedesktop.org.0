Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06077432E5
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 08:16:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB67789274;
	Thu, 13 Jun 2019 06:16:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D4BD48926E;
 Thu, 13 Jun 2019 06:16:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C8E20A0005;
 Thu, 13 Jun 2019 06:16:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 13 Jun 2019 06:16:18 -0000
Message-ID: <20190613061618.21004.63967@emeril.freedesktop.org>
References: <20190612093111.11684-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190612093111.11684-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5B1/8=5D_drm/i915=3A_Keep_contexts_pinned_unt?=
 =?utf-8?q?il_after_the_next_kernel_context_switch?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvOF0g
ZHJtL2k5MTU6IEtlZXAgY29udGV4dHMgcGlubmVkIHVudGlsIGFmdGVyIHRoZSBuZXh0IGtlcm5l
bCBjb250ZXh0IHN3aXRjaApVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9y
Zy9zZXJpZXMvNjE5NDYvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQ0kgQnVnIExv
ZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNjI0NF9mdWxsIC0+IFBhdGNod29ya18xMzI1MF9mdWxs
Cj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KClN1
bW1hcnkKLS0tLS0tLQoKICAqKkZBSUxVUkUqKgoKICBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBj
b21pbmcgd2l0aCBQYXRjaHdvcmtfMTMyNTBfZnVsbCBhYnNvbHV0ZWx5IG5lZWQgdG8gYmUKICB2
ZXJpZmllZCBtYW51YWxseS4KICAKICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMg
aGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMKICBpbnRyb2R1Y2VkIGluIFBhdGNo
d29ya18xMzI1MF9mdWxsLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cgdGhl
bQogIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2Ug
ZmFsc2UgcG9zaXRpdmVzIGluIENJLgoKICAKClBvc3NpYmxlIG5ldyBpc3N1ZXMKLS0tLS0tLS0t
LS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUg
YmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xMzI1MF9mdWxsOgoKIyMjIElHVCBjaGFuZ2Vz
ICMjIwoKIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjCgogICogaWd0QGdlbV9jdHhfZW5n
aW5lc0BleGVjdXRlLW9uZToKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bMV0gLT4g
W0ZBSUxdWzJdCiAgIFsxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNjI0NC9zaGFyZC1za2w1L2lndEBnZW1fY3R4X2VuZ2luZXNAZXhlY3V0ZS1vbmUu
aHRtbAogICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzEzMjUwL3NoYXJkLXNrbDEvaWd0QGdlbV9jdHhfZW5naW5lc0BleGVjdXRlLW9uZS5o
dG1sCiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW1BBU1NdWzNdIC0+IFtGQUlMXVs0XQogICBb
M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyNDQv
c2hhcmQtYXBsMi9pZ3RAZ2VtX2N0eF9lbmdpbmVzQGV4ZWN1dGUtb25lLmh0bWwKICAgWzRdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI1MC9z
aGFyZC1hcGw2L2lndEBnZW1fY3R4X2VuZ2luZXNAZXhlY3V0ZS1vbmUuaHRtbAogICAgLSBzaGFy
ZC1nbGs6ICAgICAgICAgIFtQQVNTXVs1XSAtPiBbRkFJTF1bNl0KICAgWzVdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjQ0L3NoYXJkLWdsazYvaWd0
QGdlbV9jdHhfZW5naW5lc0BleGVjdXRlLW9uZS5odG1sCiAgIFs2XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMyNTAvc2hhcmQtZ2xrNi9pZ3RA
Z2VtX2N0eF9lbmdpbmVzQGV4ZWN1dGUtb25lLmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfYXdhaXRA
d2lkZS1jb250ZXh0czoKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbUEFTU11bN10gLT4gW0ZB
SUxdWzhdCiAgIFs3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNjI0NC9zaGFyZC1rYmw3L2lndEBnZW1fZXhlY19hd2FpdEB3aWRlLWNvbnRleHRzLmh0
bWwKICAgWzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xMzI1MC9zaGFyZC1rYmw0L2lndEBnZW1fZXhlY19hd2FpdEB3aWRlLWNvbnRleHRzLmh0
bWwKCiAgKiBpZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1hLWN1cnNvci1zdXNwZW5kOgogICAgLSBz
aGFyZC1zbmI6ICAgICAgICAgIFtQQVNTXVs5XSAtPiBbRE1FU0ctV0FSTl1bMTBdCiAgIFs5XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI0NC9zaGFy
ZC1zbmIxL2lndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWEtY3Vyc29yLXN1c3BlbmQuaHRtbAogICBb
MTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
MzI1MC9zaGFyZC1zbmI0L2lndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWEtY3Vyc29yLXN1c3BlbmQu
aHRtbAoKICAKCiMjIyBQaWdsaXQgY2hhbmdlcyAjIyMKCiMjIyMgUG9zc2libGUgcmVncmVzc2lv
bnMgIyMjIwoKICAqIHNwZWNAYXJiX3NoYWRlcl9pbWFnZV9sb2FkX3N0b3JlQHNoYWRlci1tZW0t
YmFycmllciAoTkVXKToKICAgIC0gcGlnLWdsay1qNTAwNTogICAgICBOT1RSVU4gLT4gW0ZBSUxd
WzExXSArMyBzaW1pbGFyIGlzc3VlcwogICBbMTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI1MC9waWctZ2xrLWo1MDA1L3NwZWNAYXJiX3No
YWRlcl9pbWFnZV9sb2FkX3N0b3JlQHNoYWRlci1tZW0tYmFycmllci5odG1sCiAgICAtIHBpZy1z
a2wtNjI2MHU6ICAgICAgTk9UUlVOIC0+IFtGQUlMXVsxMl0KICAgWzEyXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMyNTAvcGlnLXNrbC02MjYw
dS9zcGVjQGFyYl9zaGFkZXJfaW1hZ2VfbG9hZF9zdG9yZUBzaGFkZXItbWVtLWJhcnJpZXIuaHRt
bAoKICAKTmV3IHRlc3RzCi0tLS0tLS0tLQoKICBOZXcgdGVzdHMgaGF2ZSBiZWVuIGludHJvZHVj
ZWQgYmV0d2VlbiBDSV9EUk1fNjI0NF9mdWxsIGFuZCBQYXRjaHdvcmtfMTMyNTBfZnVsbDoKCiMj
IyBOZXcgUGlnbGl0IHRlc3RzICg0KSAjIyMKCiAgKiBzcGVjQGFyYl9zaGFkZXJfaW1hZ2VfbG9h
ZF9zdG9yZUBzaGFkZXItbWVtLWJhcnJpZXI6CiAgICAtIFN0YXR1c2VzIDogMiBmYWlsKHMpCiAg
ICAtIEV4ZWMgdGltZTogWzAuMTYsIDAuMTldIHMKCiAgKiBzcGVjQGV4dF90cmFuc2Zvcm1fZmVl
ZGJhY2tAb3JkZXIgYXJyYXlzIHBvaW50czoKICAgIC0gU3RhdHVzZXMgOiAxIGZhaWwocykKICAg
IC0gRXhlYyB0aW1lOiBbMC4xN10gcwoKICAqIHNwZWNAZXh0X3RyYW5zZm9ybV9mZWVkYmFja0Bv
cmRlciBlbGVtZW50cyB0cmlhbmdsZXM6CiAgICAtIFN0YXR1c2VzIDogMSBmYWlsKHMpCiAgICAt
IEV4ZWMgdGltZTogWzAuMTRdIHMKCiAgKiBzcGVjQGdsc2wtMS4zMEBleGVjdXRpb25AZnMtZXhl
Y3V0aW9uLW9yZGVyaW5nOgogICAgLSBTdGF0dXNlcyA6IDEgZmFpbChzKQogICAgLSBFeGVjIHRp
bWU6IFswLjY3XSBzCgogIAoKS25vd24gaXNzdWVzCi0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0
aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTMyNTBfZnVsbCB0aGF0IGNvbWUgZnJvbSBr
bm93biBpc3N1ZXM6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIElzc3VlcyBoaXQgIyMjIwoK
ICAqIGlndEBnZW1fc29mdHBpbkBub3JlbG9jLXMzOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAg
IFtQQVNTXVsxM10gLT4gW0lOQ09NUExFVEVdWzE0XSAoW2ZkbyMxMDQxMDhdKQogICBbMTNdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjQ0L3NoYXJk
LXNrbDUvaWd0QGdlbV9zb2Z0cGluQG5vcmVsb2MtczMuaHRtbAogICBbMTRdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI1MC9zaGFyZC1za2w5
L2lndEBnZW1fc29mdHBpbkBub3JlbG9jLXMzLmh0bWwKCiAgKiBpZ3RAZ2VtX3RpbGVkX3N3YXBw
aW5nQG5vbi10aHJlYWRlZDoKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbUEFTU11bMTVdIC0+
IFtJTkNPTVBMRVRFXVsxNl0gKFtmZG8jMTAzOTI3XSAvIFtmZG8jMTA4Njg2XSkKICAgWzE1XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI0NC9zaGFy
ZC1hcGw2L2lndEBnZW1fdGlsZWRfc3dhcHBpbmdAbm9uLXRocmVhZGVkLmh0bWwKICAgWzE2XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMyNTAv
c2hhcmQtYXBsNC9pZ3RAZ2VtX3RpbGVkX3N3YXBwaW5nQG5vbi10aHJlYWRlZC5odG1sCiAgICAt
IHNoYXJkLWtibDogICAgICAgICAgW1BBU1NdWzE3XSAtPiBbRE1FU0ctV0FSTl1bMThdIChbZmRv
IzEwODY4Nl0pCiAgIFsxN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzYyNDQvc2hhcmQta2JsMy9pZ3RAZ2VtX3RpbGVkX3N3YXBwaW5nQG5vbi10aHJl
YWRlZC5odG1sCiAgIFsxOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzEzMjUwL3NoYXJkLWtibDYvaWd0QGdlbV90aWxlZF9zd2FwcGluZ0Bub24t
dGhyZWFkZWQuaHRtbAoKICAqIGlndEBnZW1fd29ya2Fyb3VuZHNAc3VzcGVuZC1yZXN1bWUtY29u
dGV4dDoKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbUEFTU11bMTldIC0+IFtETUVTRy1XQVJO
XVsyMF0gKFtmZG8jMTA4NTY2XSkgKzEgc2ltaWxhciBpc3N1ZQogICBbMTldOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjQ0L3NoYXJkLWFwbDMvaWd0
QGdlbV93b3JrYXJvdW5kc0BzdXNwZW5kLXJlc3VtZS1jb250ZXh0Lmh0bWwKICAgWzIwXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMyNTAvc2hh
cmQtYXBsNi9pZ3RAZ2VtX3dvcmthcm91bmRzQHN1c3BlbmQtcmVzdW1lLWNvbnRleHQuaHRtbAoK
ICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXByaS1pbmRmYi1tdWx0aWRy
YXc6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzIxXSAtPiBbRkFJTF1bMjJdIChb
ZmRvIzEwMzE2N10pICs2IHNpbWlsYXIgaXNzdWVzCiAgIFsyMV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyNDQvc2hhcmQtaWNsYjYvaWd0QGttc19m
cm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtcHJpLWluZGZiLW11bHRpZHJhdy5odG1sCiAgIFsy
Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEz
MjUwL3NoYXJkLWljbGI1L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXByaS1p
bmRmYi1tdWx0aWRyYXcuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJj
LTJwLXNjbmRzY3JuLWN1ci1pbmRmYi1kcmF3LXB3cml0ZToKICAgIC0gc2hhcmQtaHN3OiAgICAg
ICAgICBbUEFTU11bMjNdIC0+IFtTS0lQXVsyNF0gKFtmZG8jMTA5MjcxXSkgKzEwIHNpbWlsYXIg
aXNzdWVzCiAgIFsyM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzYyNDQvc2hhcmQtaHN3Mi9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0y
cC1zY25kc2Nybi1jdXItaW5kZmItZHJhdy1wd3JpdGUuaHRtbAogICBbMjRdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI1MC9zaGFyZC1oc3cx
L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTJwLXNjbmRzY3JuLWN1ci1pbmRmYi1k
cmF3LXB3cml0ZS5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtc3Vz
cGVuZDoKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbUEFTU11bMjVdIC0+IFtETUVTRy1XQVJO
XVsyNl0gKFtmZG8jMTA4NTY2XSkgKzIgc2ltaWxhciBpc3N1ZXMKICAgWzI1XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI0NC9zaGFyZC1rYmwxL2ln
dEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLXN1c3BlbmQuaHRtbAogICBbMjZdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI1MC9zaGFy
ZC1rYmwzL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLXN1c3BlbmQuaHRtbAoKICAq
IGlndEBrbXNfcGxhbmVAcGxhbmUtcG9zaXRpb24tY292ZXJlZC1waXBlLWMtcGxhbmVzOgogICAg
LSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVsyN10gLT4gW0ZBSUxdWzI4XSAoW2ZkbyMxMTAw
MzhdKQogICBbMjddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82MjQ0L3NoYXJkLXNrbDkvaWd0QGttc19wbGFuZUBwbGFuZS1wb3NpdGlvbi1jb3ZlcmVk
LXBpcGUtYy1wbGFuZXMuaHRtbAogICBbMjhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI1MC9zaGFyZC1za2w3L2lndEBrbXNfcGxhbmVAcGxh
bmUtcG9zaXRpb24tY292ZXJlZC1waXBlLWMtcGxhbmVzLmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5l
X2FscGhhX2JsZW5kQHBpcGUtYi1jb25zdGFudC1hbHBoYS1taW46CiAgICAtIHNoYXJkLXNrbDog
ICAgICAgICAgW1BBU1NdWzI5XSAtPiBbRkFJTF1bMzBdIChbZmRvIzEwODE0NV0pCiAgIFsyOV06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyNDQvc2hh
cmQtc2tsNy9pZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYi1jb25zdGFudC1hbHBoYS1t
aW4uaHRtbAogICBbMzBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xMzI1MC9zaGFyZC1za2wxMC9pZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBp
cGUtYi1jb25zdGFudC1hbHBoYS1taW4uaHRtbAoKICAqIGlndEBrbXNfcHNyQHBzcjJfc3ByaXRl
X3BsYW5lX21vdmU6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzMxXSAtPiBbU0tJ
UF1bMzJdIChbZmRvIzEwOTQ0MV0pICszIHNpbWlsYXIgaXNzdWVzCiAgIFszMV06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyNDQvc2hhcmQtaWNsYjIv
aWd0QGttc19wc3JAcHNyMl9zcHJpdGVfcGxhbmVfbW92ZS5odG1sCiAgIFszMl06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMjUwL3NoYXJkLWlj
bGI3L2lndEBrbXNfcHNyQHBzcjJfc3ByaXRlX3BsYW5lX21vdmUuaHRtbAoKICAqIGlndEBrbXNf
cm90YXRpb25fY3JjQG11bHRpcGxhbmUtcm90YXRpb24tY3JvcHBpbmctYm90dG9tOgogICAgLSBz
aGFyZC1rYmw6ICAgICAgICAgIFtQQVNTXVszM10gLT4gW0RNRVNHLUZBSUxdWzM0XSAoW2ZkbyMx
MDU3NjNdKQogICBbMzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV82MjQ0L3NoYXJkLWtibDIvaWd0QGttc19yb3RhdGlvbl9jcmNAbXVsdGlwbGFuZS1y
b3RhdGlvbi1jcm9wcGluZy1ib3R0b20uaHRtbAogICBbMzRdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI1MC9zaGFyZC1rYmwzL2lndEBrbXNf
cm90YXRpb25fY3JjQG11bHRpcGxhbmUtcm90YXRpb24tY3JvcHBpbmctYm90dG9tLmh0bWwKCiAg
KiBpZ3RAa21zX3NldG1vZGVAYmFzaWM6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW1BBU1Nd
WzM1XSAtPiBbRkFJTF1bMzZdIChbZmRvIzk5OTEyXSkKICAgWzM1XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI0NC9zaGFyZC1hcGwxL2lndEBrbXNf
c2V0bW9kZUBiYXNpYy5odG1sCiAgIFszNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMjUwL3NoYXJkLWFwbDIvaWd0QGttc19zZXRtb2RlQGJh
c2ljLmh0bWwKCiAgKiBpZ3RAa21zX3ZibGFua0BwaXBlLWMtdHMtY29udGludWF0aW9uLXN1c3Bl
bmQ6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzM3XSAtPiBbSU5DT01QTEVURV1b
MzhdIChbZmRvIzEwNzcxM10pCiAgIFszN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzYyNDQvc2hhcmQtaWNsYjgvaWd0QGttc192YmxhbmtAcGlwZS1j
LXRzLWNvbnRpbnVhdGlvbi1zdXNwZW5kLmh0bWwKICAgWzM4XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMyNTAvc2hhcmQtaWNsYjMvaWd0QGtt
c192YmxhbmtAcGlwZS1jLXRzLWNvbnRpbnVhdGlvbi1zdXNwZW5kLmh0bWwKCiAgKiBpZ3RAc3lu
Y29ial93YWl0QG11bHRpLXdhaXQtZm9yLXN1Ym1pdC1zaWduYWxlZDoKICAgIC0gc2hhcmQtZ2xr
OiAgICAgICAgICBbUEFTU11bMzldIC0+IFtJTkNPTVBMRVRFXVs0MF0gKFtmZG8jMTAzMzU5XSAv
IFtrLm9yZyMxOTgxMzNdKQogICBbMzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82MjQ0L3NoYXJkLWdsazcvaWd0QHN5bmNvYmpfd2FpdEBtdWx0aS13
YWl0LWZvci1zdWJtaXQtc2lnbmFsZWQuaHRtbAogICBbNDBdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI1MC9zaGFyZC1nbGsyL2lndEBzeW5j
b2JqX3dhaXRAbXVsdGktd2FpdC1mb3Itc3VibWl0LXNpZ25hbGVkLmh0bWwKCiAgCiMjIyMgUG9z
c2libGUgZml4ZXMgIyMjIwoKICAqIGlndEBnZW1fZXhlY19iYWxhbmNlckBzbW9rZToKICAgIC0g
c2hhcmQtaWNsYjogICAgICAgICBbU0tJUF1bNDFdIChbZmRvIzExMDg1NF0pIC0+IFtQQVNTXVs0
Ml0KICAgWzQxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNjI0NC9zaGFyZC1pY2xiNS9pZ3RAZ2VtX2V4ZWNfYmFsYW5jZXJAc21va2UuaHRtbAogICBb
NDJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
MzI1MC9zaGFyZC1pY2xiMS9pZ3RAZ2VtX2V4ZWNfYmFsYW5jZXJAc21va2UuaHRtbAoKICAqIGln
dEBnZW1fZXhlY19zY2hlZHVsZUBzZW1hcGhvcmUtcmVzb2x2ZToKICAgIC0gc2hhcmQtc2tsOiAg
ICAgICAgICBbRkFJTF1bNDNdIChbZmRvIzExMDUxOV0pIC0+IFtQQVNTXVs0NF0KICAgWzQzXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI0NC9zaGFy
ZC1za2w5L2lndEBnZW1fZXhlY19zY2hlZHVsZUBzZW1hcGhvcmUtcmVzb2x2ZS5odG1sCiAgIFs0
NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEz
MjUwL3NoYXJkLXNrbDgvaWd0QGdlbV9leGVjX3NjaGVkdWxlQHNlbWFwaG9yZS1yZXNvbHZlLmh0
bWwKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbRkFJTF1bNDVdIChbZmRvIzExMDUxOV0pIC0+
IFtQQVNTXVs0Nl0KICAgWzQ1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNjI0NC9zaGFyZC1rYmw2L2lndEBnZW1fZXhlY19zY2hlZHVsZUBzZW1hcGhv
cmUtcmVzb2x2ZS5odG1sCiAgIFs0Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzEzMjUwL3NoYXJkLWtibDIvaWd0QGdlbV9leGVjX3NjaGVkdWxl
QHNlbWFwaG9yZS1yZXNvbHZlLmh0bWwKICAgIC0gc2hhcmQtZ2xrOiAgICAgICAgICBbRkFJTF1b
NDddIChbZmRvIzExMDUxOV0pIC0+IFtQQVNTXVs0OF0KICAgWzQ3XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI0NC9zaGFyZC1nbGs1L2lndEBnZW1f
ZXhlY19zY2hlZHVsZUBzZW1hcGhvcmUtcmVzb2x2ZS5odG1sCiAgIFs0OF06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMjUwL3NoYXJkLWdsazgv
aWd0QGdlbV9leGVjX3NjaGVkdWxlQHNlbWFwaG9yZS1yZXNvbHZlLmh0bWwKICAgIC0gc2hhcmQt
aWNsYjogICAgICAgICBbRkFJTF1bNDldIChbZmRvIzExMDUxOV0pIC0+IFtQQVNTXVs1MF0KICAg
WzQ5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI0
NC9zaGFyZC1pY2xiNS9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAc2VtYXBob3JlLXJlc29sdmUuaHRt
bAogICBbNTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xMzI1MC9zaGFyZC1pY2xiMi9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAc2VtYXBob3JlLXJl
c29sdmUuaHRtbAoKICAqIGlndEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXMzOgogICAgLSBzaGFy
ZC1rYmw6ICAgICAgICAgIFtETUVTRy1XQVJOXVs1MV0gKFtmZG8jMTA4NTY2XSkgLT4gW1BBU1Nd
WzUyXSArMiBzaW1pbGFyIGlzc3VlcwogICBbNTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjQ0L3NoYXJkLWtibDMvaWd0QGdlbV9leGVjX3N1c3Bl
bmRAYmFzaWMtczMuaHRtbAogICBbNTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xMzI1MC9zaGFyZC1rYmw2L2lndEBnZW1fZXhlY19zdXNwZW5k
QGJhc2ljLXMzLmh0bWwKCiAgKiBpZ3RAZ2VtX3RpbGVkX3N3YXBwaW5nQG5vbi10aHJlYWRlZDoK
ICAgIC0gc2hhcmQtaHN3OiAgICAgICAgICBbRkFJTF1bNTNdIChbZmRvIzEwODY4Nl0pIC0+IFtQ
QVNTXVs1NF0KICAgWzUzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNjI0NC9zaGFyZC1oc3c4L2lndEBnZW1fdGlsZWRfc3dhcHBpbmdAbm9uLXRocmVh
ZGVkLmh0bWwKICAgWzU0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTMyNTAvc2hhcmQtaHN3Mi9pZ3RAZ2VtX3RpbGVkX3N3YXBwaW5nQG5vbi10
aHJlYWRlZC5odG1sCgogICogaWd0QGk5MTVfc3VzcGVuZEBzeXNmcy1yZWFkZXI6CiAgICAtIHNo
YXJkLWFwbDogICAgICAgICAgW0RNRVNHLVdBUk5dWzU1XSAoW2ZkbyMxMDg1NjZdKSAtPiBbUEFT
U11bNTZdICsyIHNpbWlsYXIgaXNzdWVzCiAgIFs1NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyNDQvc2hhcmQtYXBsOC9pZ3RAaTkxNV9zdXNwZW5k
QHN5c2ZzLXJlYWRlci5odG1sCiAgIFs1Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMjUwL3NoYXJkLWFwbDEvaWd0QGk5MTVfc3VzcGVuZEBz
eXNmcy1yZWFkZXIuaHRtbAoKICAqIGlndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWMtY3Vyc29yLXN1
c3BlbmQ6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZBSUxdWzU3XSAoW2ZkbyMxMDMyMzJd
KSAtPiBbUEFTU11bNThdICsxIHNpbWlsYXIgaXNzdWUKICAgWzU3XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI0NC9zaGFyZC1za2wzL2lndEBrbXNf
Y3Vyc29yX2NyY0BwaXBlLWMtY3Vyc29yLXN1c3BlbmQuaHRtbAogICBbNThdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI1MC9zaGFyZC1za2w1
L2lndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWMtY3Vyc29yLXN1c3BlbmQuaHRtbAoKICAqIGlndEBr
bXNfY3Vyc29yX2xlZ2FjeUAyeC1sb25nLWN1cnNvci12cy1mbGlwLWxlZ2FjeToKICAgIC0gc2hh
cmQtaHN3OiAgICAgICAgICBbRkFJTF1bNTldIChbZmRvIzEwNTc2N10pIC0+IFtQQVNTXVs2MF0K
ICAgWzU5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NjI0NC9zaGFyZC1oc3c2L2lndEBrbXNfY3Vyc29yX2xlZ2FjeUAyeC1sb25nLWN1cnNvci12cy1m
bGlwLWxlZ2FjeS5odG1sCiAgIFs2MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzEzMjUwL3NoYXJkLWhzdzEvaWd0QGttc19jdXJzb3JfbGVnYWN5
QDJ4LWxvbmctY3Vyc29yLXZzLWZsaXAtbGVnYWN5Lmh0bWwKCiAgKiBpZ3RAa21zX2N1cnNvcl9s
ZWdhY3lAY3Vyc29yLXZzLWZsaXAtYXRvbWljLXRyYW5zaXRpb25zOgogICAgLSBzaGFyZC1oc3c6
ICAgICAgICAgIFtGQUlMXVs2MV0gKFtmZG8jMTAzMzU1XSkgLT4gW1BBU1NdWzYyXQogICBbNjFd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjQ0L3No
YXJkLWhzdzUvaWd0QGttc19jdXJzb3JfbGVnYWN5QGN1cnNvci12cy1mbGlwLWF0b21pYy10cmFu
c2l0aW9ucy5odG1sCiAgIFs2Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzEzMjUwL3NoYXJkLWhzdzEvaWd0QGttc19jdXJzb3JfbGVnYWN5QGN1
cnNvci12cy1mbGlwLWF0b21pYy10cmFuc2l0aW9ucy5odG1sCgogICogaWd0QGttc19mbGlwQDJ4
LWZsaXAtdnMtZXhwaXJlZC12Ymxhbms6CiAgICAtIHNoYXJkLWdsazogICAgICAgICAgW0ZBSUxd
WzYzXSAoW2ZkbyMxMDUzNjNdKSAtPiBbUEFTU11bNjRdCiAgIFs2M106IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyNDQvc2hhcmQtZ2xrMS9pZ3RAa21z
X2ZsaXBAMngtZmxpcC12cy1leHBpcmVkLXZibGFuay5odG1sCiAgIFs2NF06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMjUwL3NoYXJkLWdsazkv
aWd0QGttc19mbGlwQDJ4LWZsaXAtdnMtZXhwaXJlZC12YmxhbmsuaHRtbAoKICAqIGlndEBrbXNf
ZmxpcEBmbGlwLXZzLXN1c3BlbmQtaW50ZXJydXB0aWJsZToKICAgIC0gc2hhcmQta2JsOiAgICAg
ICAgICBbSU5DT01QTEVURV1bNjVdIChbZmRvIzEwMzY2NV0pIC0+IFtQQVNTXVs2Nl0KICAgWzY1
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI0NC9z
aGFyZC1rYmwyL2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmQtaW50ZXJydXB0aWJsZS5odG1s
CiAgIFs2Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEzMjUwL3NoYXJkLWtibDcvaWd0QGttc19mbGlwQGZsaXAtdnMtc3VzcGVuZC1pbnRlcnJ1
cHRpYmxlLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1w
cmltc2Nybi1jdXItaW5kZmItZHJhdy1yZW5kZXI6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAg
W0ZBSUxdWzY3XSAoW2ZkbyMxMDMxNjddKSAtPiBbUEFTU11bNjhdICsyIHNpbWlsYXIgaXNzdWVz
CiAgIFs2N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzYyNDQvc2hhcmQtaWNsYjEvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAt
cHJpbXNjcm4tY3VyLWluZGZiLWRyYXctcmVuZGVyLmh0bWwKICAgWzY4XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMyNTAvc2hhcmQtaWNsYjYv
aWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tY3VyLWluZGZi
LWRyYXctcmVuZGVyLmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYy1j
b25zdGFudC1hbHBoYS1taW46CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZBSUxdWzY5XSAo
W2ZkbyMxMDgxNDVdKSAtPiBbUEFTU11bNzBdCiAgIFs2OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyNDQvc2hhcmQtc2tsMy9pZ3RAa21zX3BsYW5l
X2FscGhhX2JsZW5kQHBpcGUtYy1jb25zdGFudC1hbHBoYS1taW4uaHRtbAogICBbNzBdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI1MC9zaGFy
ZC1za2w1L2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1jLWNvbnN0YW50LWFscGhhLW1p
bi5odG1sCgogICogaWd0QGttc19wbGFuZV9sb3dyZXNAcGlwZS1hLXRpbGluZy14OgogICAgLSBz
aGFyZC1pY2xiOiAgICAgICAgIFtGQUlMXVs3MV0gKFtmZG8jMTAzMTY2XSkgLT4gW1BBU1NdWzcy
XQogICBbNzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV82MjQ0L3NoYXJkLWljbGIxL2lndEBrbXNfcGxhbmVfbG93cmVzQHBpcGUtYS10aWxpbmcteC5o
dG1sCiAgIFs3Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzEzMjUwL3NoYXJkLWljbGIyL2lndEBrbXNfcGxhbmVfbG93cmVzQHBpcGUtYS10aWxp
bmcteC5odG1sCgogICogaWd0QGttc19wc3JAcHNyMl9jdXJzb3JfcmVuZGVyOgogICAgLSBzaGFy
ZC1pY2xiOiAgICAgICAgIFtTS0lQXVs3M10gKFtmZG8jMTA5NDQxXSkgLT4gW1BBU1NdWzc0XSAr
MyBzaW1pbGFyIGlzc3VlcwogICBbNzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82MjQ0L3NoYXJkLWljbGI3L2lndEBrbXNfcHNyQHBzcjJfY3Vyc29y
X3JlbmRlci5odG1sCiAgIFs3NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzEzMjUwL3NoYXJkLWljbGIyL2lndEBrbXNfcHNyQHBzcjJfY3Vyc29y
X3JlbmRlci5odG1sCgogICogaWd0QGttc19zZXRtb2RlQGJhc2ljOgogICAgLSBzaGFyZC1za2w6
ICAgICAgICAgIFtGQUlMXVs3NV0gKFtmZG8jOTk5MTJdKSAtPiBbUEFTU11bNzZdCiAgIFs3NV06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyNDQvc2hh
cmQtc2tsOC9pZ3RAa21zX3NldG1vZGVAYmFzaWMuaHRtbAogICBbNzZdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI1MC9zaGFyZC1za2w0L2ln
dEBrbXNfc2V0bW9kZUBiYXNpYy5odG1sCgogIAogIFtmZG8jMTAzMTY2XTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMTY2CiAgW2ZkbyMxMDMxNjddOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMxNjcKICBbZmRv
IzEwMzIzMl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEw
MzIzMgogIFtmZG8jMTAzMzU1XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTAzMzU1CiAgW2ZkbyMxMDMzNTldOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Au
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMzNTkKICBbZmRvIzEwMzY2NV06IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzY2NQogIFtmZG8jMTAzOTI3XTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzOTI3CiAgW2ZkbyMx
MDQxMDhdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDQx
MDgKICBbZmRvIzEwNTM2M106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTEwNTM2MwogIFtmZG8jMTA1NzYzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MTA1NzYzCiAgW2ZkbyMxMDU3NjddOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDU3NjcKICBbZmRvIzEwNzcxM106IGh0dHBz
Oi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzcxMwogIFtmZG8jMTA4
MTQ1XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4MTQ1
CiAgW2ZkbyMxMDg1NjZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMDg1NjYKICBbZmRvIzEwODY4Nl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTEwODY4NgogIFtmZG8jMTA5MjcxXTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5MjcxCiAgW2ZkbyMxMDk0NDFdOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDk0NDEKICBbZmRvIzExMDAz
OF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDAzOAog
IFtmZG8jMTEwNTE5XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9MTEwNTE5CiAgW2ZkbyMxMTA4NTRdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3No
b3dfYnVnLmNnaT9pZD0xMTA4NTQKICBbZmRvIzk5OTEyXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9OTk5MTIKICBbay5vcmcjMTk4MTMzXTogaHR0cHM6Ly9i
dWd6aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0xOTgxMzMKCgpQYXJ0aWNpcGF0aW5n
IGhvc3RzICgxMCAtPiA5KQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgTWlzc2lu
ZyAgICAoMSk6IHBpZy1oc3ctNDc3MHIgCgoKQnVpbGQgY2hhbmdlcwotLS0tLS0tLS0tLS0tCgog
ICogTGludXg6IENJX0RSTV82MjQ0IC0+IFBhdGNod29ya18xMzI1MAoKICBDSV9EUk1fNjI0NDog
ZDdjZTkwMGRhZmQ0MjRiZTlkYTU3NmZiZjMxNTViNDNjZTUyNzBlYyBAIGdpdDovL2Fub25naXQu
ZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIElHVF81MDUyOiBmZjcxMWIzNDNjMDZhMjVh
YzQ5OTVhYjhiZDlhOGJjYjVjZTFlYjEwIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcv
eG9yZy9hcHAvaW50ZWwtZ3B1LXRvb2xzCiAgUGF0Y2h3b3JrXzEzMjUwOiAxOTE1YzIxYjIxODYw
OWYxMmVkYjFmMWFjNzUyYjNlODFmYzA4NGM4IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5v
cmcvZ2Z4LWNpL2xpbnV4CiAgcGlnbGl0XzQ1MDk6IGZkYzVhNGNhMTExMjRhYjg0MTNjNzk4ODg5
NmVlYzRjOTczMzY2OTQgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9waWdsaXQKCj09
IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI1MC8KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
