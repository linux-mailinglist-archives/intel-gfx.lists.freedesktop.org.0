Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1F5D4BCD
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Oct 2019 03:27:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9A5B6EC41;
	Sat, 12 Oct 2019 01:27:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1FADC6E046;
 Sat, 12 Oct 2019 01:27:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 125F8A47E7;
 Sat, 12 Oct 2019 01:27:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 12 Oct 2019 01:27:36 -0000
Message-ID: <20191012012736.18211.8290@emeril.freedesktop.org>
References: <20191011173823.20432-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191011173823.20432-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_Add_an_rcu=5Fbarrier_option_to_i915=5Fdrop=5Fcaches?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEFkZCBhbiByY3VfYmFycmll
ciBvcHRpb24gdG8gaTkxNV9kcm9wX2NhY2hlcwpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZy
ZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjc5MjIvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9
PQoKQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNzA2NV9mdWxsIC0+IFBhdGNod29y
a18xNDc3MF9mdWxsCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKkZBSUxVUkUqKgoKICBTZXJpb3VzIHVua25v
d24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTQ3NzBfZnVsbCBhYnNvbHV0ZWx5IG5l
ZWQgdG8gYmUKICB2ZXJpZmllZCBtYW51YWxseS4KICAKICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9y
dGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMKICBpbnRyb2R1
Y2VkIGluIFBhdGNod29ya18xNDc3MF9mdWxsLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0g
dG8gYWxsb3cgdGhlbQogIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2gg
d2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLgoKICAKClBvc3NpYmxlIG5ldyBpc3N1
ZXMKLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRo
YXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNDc3MF9mdWxsOgoKIyMj
IElHVCBjaGFuZ2VzICMjIwoKIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjCgogICogaWd0
QHByaW1lX3ZnZW1AYnVzeS12ZWJveDoKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbUEFTU11b
MV0gLT4gW1RJTUVPVVRdWzJdCiAgIFsxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNzA2NS9zaGFyZC1rYmw3L2lndEBwcmltZV92Z2VtQGJ1c3ktdmVi
b3guaHRtbAogICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE0NzcwL3NoYXJkLWtibDYvaWd0QHByaW1lX3ZnZW1AYnVzeS12ZWJveC5odG1s
CgogIApLbm93biBpc3N1ZXMKLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSBjaGFuZ2VzIGZv
dW5kIGluIFBhdGNod29ya18xNDc3MF9mdWxsIHRoYXQgY29tZSBmcm9tIGtub3duIGlzc3VlczoK
CiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgSXNzdWVzIGhpdCAjIyMjCgogICogaWd0QGdlbV9l
aW9AcmVzZXQtc3RyZXNzOgogICAgLSBzaGFyZC1zbmI6ICAgICAgICAgIFtQQVNTXVszXSAtPiBb
RkFJTF1bNF0gKFtmZG8jMTA5NjYxXSkKICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDY1L3NoYXJkLXNuYjUvaWd0QGdlbV9laW9AcmVzZXQt
c3RyZXNzLmh0bWwKICAgWzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xNDc3MC9zaGFyZC1zbmI3L2lndEBnZW1fZWlvQHJlc2V0LXN0cmVzcy5o
dG1sCgogICogaWd0QGdlbV9leGVjX2JhbGFuY2VyQHNtb2tlOgogICAgLSBzaGFyZC1pY2xiOiAg
ICAgICAgIFtQQVNTXVs1XSAtPiBbU0tJUF1bNl0gKFtmZG8jMTEwODU0XSkKICAgWzVdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDY1L3NoYXJkLWlj
bGIyL2lndEBnZW1fZXhlY19iYWxhbmNlckBzbW9rZS5odG1sCiAgIFs2XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3NzAvc2hhcmQtaWNsYjUv
aWd0QGdlbV9leGVjX2JhbGFuY2VyQHNtb2tlLmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfYmx0QGR1
bWItYnVmLW1heDoKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbUEFTU11bN10gLT4gW0lOQ09N
UExFVEVdWzhdIChbZmRvIzEwMzkyN10pCiAgIFs3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzA2NS9zaGFyZC1hcGwyL2lndEBnZW1fZXhlY19ibHRA
ZHVtYi1idWYtbWF4Lmh0bWwKICAgWzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNDc3MC9zaGFyZC1hcGwzL2lndEBnZW1fZXhlY19ibHRAZHVt
Yi1idWYtbWF4Lmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJlZW1wdC1vdGhlci1j
aGFpbi1ic2Q6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzldIC0+IFtTS0lQXVsx
MF0gKFtmZG8jMTExMzI1XSkgKzMgc2ltaWxhciBpc3N1ZXMKICAgWzldOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDY1L3NoYXJkLWljbGI4L2lndEBn
ZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0LW90aGVyLWNoYWluLWJzZC5odG1sCiAgIFsxMF06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NzcwL3No
YXJkLWljbGIyL2lndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0LW90aGVyLWNoYWluLWJzZC5o
dG1sCgogICogaWd0QGdlbV91c2VycHRyX2JsaXRzQG1hcC1maXhlZC1pbnZhbGlkYXRlLWJ1c3kt
Z3VwOgogICAgLSBzaGFyZC1oc3c6ICAgICAgICAgIFtQQVNTXVsxMV0gLT4gW0RNRVNHLVdBUk5d
WzEyXSAoW2ZkbyMxMTE4NzBdKQogICBbMTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV83MDY1L3NoYXJkLWhzdzUvaWd0QGdlbV91c2VycHRyX2JsaXRz
QG1hcC1maXhlZC1pbnZhbGlkYXRlLWJ1c3ktZ3VwLmh0bWwKICAgWzEyXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3NzAvc2hhcmQtaHN3NS9p
Z3RAZ2VtX3VzZXJwdHJfYmxpdHNAbWFwLWZpeGVkLWludmFsaWRhdGUtYnVzeS1ndXAuaHRtbAoK
ICAqIGlndEBrbXNfY29sb3JAcGlwZS1hLWN0bS1tYXg6CiAgICAtIHNoYXJkLXNrbDogICAgICAg
ICAgW1BBU1NdWzEzXSAtPiBbRE1FU0ctV0FSTl1bMTRdIChbZmRvIzEwNjEwN10pCiAgIFsxM106
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwNjUvc2hh
cmQtc2tsNC9pZ3RAa21zX2NvbG9yQHBpcGUtYS1jdG0tbWF4Lmh0bWwKICAgWzE0XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3NzAvc2hhcmQt
c2tsOC9pZ3RAa21zX2NvbG9yQHBpcGUtYS1jdG0tbWF4Lmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250
YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmltc2Nybi1jdXItaW5kZmItZHJhdy1tbWFwLWNw
dToKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMTVdIC0+IFtGQUlMXVsxNl0gKFtm
ZG8jMTAzMTY3XSkgKzEgc2ltaWxhciBpc3N1ZQogICBbMTVdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDY1L3NoYXJkLWljbGI3L2lndEBrbXNfZnJv
bnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLWN1ci1pbmRmYi1kcmF3LW1tYXAt
Y3B1Lmh0bWwKICAgWzE2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTQ3NzAvc2hhcmQtaWNsYjYvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2lu
Z0BmYmNwc3ItMXAtcHJpbXNjcm4tY3VyLWluZGZiLWRyYXctbW1hcC1jcHUuaHRtbAoKICAqIGln
dEBrbXNfcGlwZV9jcmNfYmFzaWNAc3VzcGVuZC1yZWFkLWNyYy1waXBlLWE6CiAgICAtIHNoYXJk
LXNrbDogICAgICAgICAgW1BBU1NdWzE3XSAtPiBbSU5DT01QTEVURV1bMThdIChbZmRvIzEwNDEw
OF0pCiAgIFsxN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzcwNjUvc2hhcmQtc2tsMy9pZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQHN1c3BlbmQtcmVhZC1j
cmMtcGlwZS1hLmh0bWwKICAgWzE4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTQ3NzAvc2hhcmQtc2tsMy9pZ3RAa21zX3BpcGVfY3JjX2Jhc2lj
QHN1c3BlbmQtcmVhZC1jcmMtcGlwZS1hLmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5lX2FscGhhX2Js
ZW5kQHBpcGUtYi1jb3ZlcmFnZS03ZWZjOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNT
XVsxOV0gLT4gW0ZBSUxdWzIwXSAoW2ZkbyMxMDgxNDVdIC8gW2ZkbyMxMTA0MDNdKQogICBbMTld
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDY1L3No
YXJkLXNrbDUvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWItY292ZXJhZ2UtN2VmYy5o
dG1sCiAgIFsyMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE0NzcwL3NoYXJkLXNrbDUvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWIt
Y292ZXJhZ2UtN2VmYy5odG1sCgogICogaWd0QGttc19wbGFuZV9sb3dyZXNAcGlwZS1hLXRpbGlu
Zy15OgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVsyMV0gLT4gW0ZBSUxdWzIyXSAo
W2ZkbyMxMDMxNjZdKQogICBbMjFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV83MDY1L3NoYXJkLWljbGIxL2lndEBrbXNfcGxhbmVfbG93cmVzQHBpcGUt
YS10aWxpbmcteS5odG1sCiAgIFsyMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE0NzcwL3NoYXJkLWljbGIxL2lndEBrbXNfcGxhbmVfbG93cmVz
QHBpcGUtYS10aWxpbmcteS5odG1sCgogICogaWd0QGttc19wc3IyX3N1QGZyb250YnVmZmVyOgog
ICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVsyM10gLT4gW1NLSVBdWzI0XSAoW2ZkbyMx
MDk2NDJdIC8gW2ZkbyMxMTEwNjhdKQogICBbMjNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDY1L3NoYXJkLWljbGIyL2lndEBrbXNfcHNyMl9zdUBm
cm9udGJ1ZmZlci5odG1sCiAgIFsyNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE0NzcwL3NoYXJkLWljbGI1L2lndEBrbXNfcHNyMl9zdUBmcm9u
dGJ1ZmZlci5odG1sCgogICogaWd0QGttc19wc3JAcHNyMl9ub19kcnJzOgogICAgLSBzaGFyZC1p
Y2xiOiAgICAgICAgIFtQQVNTXVsyNV0gLT4gW1NLSVBdWzI2XSAoW2ZkbyMxMDk0NDFdKQogICBb
MjVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDY1
L3NoYXJkLWljbGIyL2lndEBrbXNfcHNyQHBzcjJfbm9fZHJycy5odG1sCiAgIFsyNl06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NzcwL3NoYXJk
LWljbGI1L2lndEBrbXNfcHNyQHBzcjJfbm9fZHJycy5odG1sCgogICogaWd0QGttc192YmxhbmtA
cGlwZS1jLXRzLWNvbnRpbnVhdGlvbi1zdXNwZW5kOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAg
IFtQQVNTXVsyN10gLT4gW0RNRVNHLVdBUk5dWzI4XSAoW2ZkbyMxMDg1NjZdKSArMiBzaW1pbGFy
IGlzc3VlcwogICBbMjddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV83MDY1L3NoYXJkLWFwbDgvaWd0QGttc192YmxhbmtAcGlwZS1jLXRzLWNvbnRpbnVh
dGlvbi1zdXNwZW5kLmh0bWwKICAgWzI4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3NzAvc2hhcmQtYXBsNC9pZ3RAa21zX3ZibGFua0BwaXBl
LWMtdHMtY29udGludWF0aW9uLXN1c3BlbmQuaHRtbAoKICAqIGlndEBwZXJmQGJsb2NraW5nOgog
ICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVsyOV0gLT4gW0ZBSUxdWzMwXSAoW2ZkbyMx
MTA3MjhdKQogICBbMjldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV83MDY1L3NoYXJkLXNrbDgvaWd0QHBlcmZAYmxvY2tpbmcuaHRtbAogICBbMzBdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDc3MC9z
aGFyZC1za2w0L2lndEBwZXJmQGJsb2NraW5nLmh0bWwKCiAgKiBpZ3RAcGVyZl9wbXVAY3B1LWhv
dHBsdWc6CiAgICAtIHNoYXJkLWtibDogICAgICAgICAgW1BBU1NdWzMxXSAtPiBbVElNRU9VVF1b
MzJdIChbZmRvIzExMTU0Nl0gLyBbZmRvIzExMTgwMF0pCiAgIFszMV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwNjUvc2hhcmQta2JsNy9pZ3RAcGVy
Zl9wbXVAY3B1LWhvdHBsdWcuaHRtbAogICBbMzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDc3MC9zaGFyZC1rYmw2L2lndEBwZXJmX3BtdUBj
cHUtaG90cGx1Zy5odG1sCgogICogaWd0QHByaW1lX2J1c3lAaGFuZy1ic2QyOgogICAgLSBzaGFy
ZC1pY2xiOiAgICAgICAgIFtQQVNTXVszM10gLT4gW1NLSVBdWzM0XSAoW2ZkbyMxMDkyNzZdKSAr
MTcgc2ltaWxhciBpc3N1ZXMKICAgWzMzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNzA2NS9zaGFyZC1pY2xiMS9pZ3RAcHJpbWVfYnVzeUBoYW5nLWJz
ZDIuaHRtbAogICBbMzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNDc3MC9zaGFyZC1pY2xiOC9pZ3RAcHJpbWVfYnVzeUBoYW5nLWJzZDIuaHRt
bAoKICAKIyMjIyBQb3NzaWJsZSBmaXhlcyAjIyMjCgogICogaWd0QGdlbV9jdHhfaXNvbGF0aW9u
QHJjczAtczM6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW0RNRVNHLVdBUk5dWzM1XSAoW2Zk
byMxMDg1NjZdKSAtPiBbUEFTU11bMzZdICszIHNpbWlsYXIgaXNzdWVzCiAgIFszNV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwNjUvc2hhcmQtYXBs
My9pZ3RAZ2VtX2N0eF9pc29sYXRpb25AcmNzMC1zMy5odG1sCiAgIFszNl06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NzcwL3NoYXJkLWFwbDgv
aWd0QGdlbV9jdHhfaXNvbGF0aW9uQHJjczAtczMuaHRtbAoKICAqIGlndEBnZW1fY3R4X3NoYXJl
ZEBxLXNtb2tldGVzdC1kZWZhdWx0OgogICAgLSB7c2hhcmQtdGdsYn06ICAgICAgIFtJTkNPTVBM
RVRFXVszN10gKFtmZG8jIDExMTg1MiBdKSAtPiBbUEFTU11bMzhdCiAgIFszN106IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwNjUvc2hhcmQtdGdsYjYv
aWd0QGdlbV9jdHhfc2hhcmVkQHEtc21va2V0ZXN0LWRlZmF1bHQuaHRtbAogICBbMzhdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDc3MC9zaGFy
ZC10Z2xiNS9pZ3RAZ2VtX2N0eF9zaGFyZWRAcS1zbW9rZXRlc3QtZGVmYXVsdC5odG1sCgogICog
aWd0QGdlbV9leGVjX2FzeW5jQGNvbmN1cnJlbnQtd3JpdGVzLWJzZDoKICAgIC0gc2hhcmQtaWNs
YjogICAgICAgICBbU0tJUF1bMzldIChbZmRvIzExMTMyNV0pIC0+IFtQQVNTXVs0MF0gKzQgc2lt
aWxhciBpc3N1ZXMKICAgWzM5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNzA2NS9zaGFyZC1pY2xiMS9pZ3RAZ2VtX2V4ZWNfYXN5bmNAY29uY3VycmVu
dC13cml0ZXMtYnNkLmh0bWwKICAgWzQwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3NzAvc2hhcmQtaWNsYjgvaWd0QGdlbV9leGVjX2FzeW5j
QGNvbmN1cnJlbnQtd3JpdGVzLWJzZC5odG1sCgogICogaWd0QGdlbV9leGVjX3NjaGVkdWxlQHBy
b21vdGlvbi1ic2QxOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtTS0lQXVs0MV0gKFtmZG8j
MTA5Mjc2XSkgLT4gW1BBU1NdWzQyXSArMTUgc2ltaWxhciBpc3N1ZXMKICAgWzQxXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzA2NS9zaGFyZC1pY2xi
OC9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJvbW90aW9uLWJzZDEuaHRtbAogICBbNDJdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDc3MC9zaGFy
ZC1pY2xiMi9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJvbW90aW9uLWJzZDEuaHRtbAoKICAqIGln
dEBnZW1fbW1hcF9ndHRAbWVkaXVtLWNvcHk6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW0lO
Q09NUExFVEVdWzQzXSAoW2ZkbyMxMDc3MTNdKSAtPiBbUEFTU11bNDRdCiAgIFs0M106IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwNjUvc2hhcmQtaWNs
YjcvaWd0QGdlbV9tbWFwX2d0dEBtZWRpdW0tY29weS5odG1sCiAgIFs0NF06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NzcwL3NoYXJkLWljbGI3
L2lndEBnZW1fbW1hcF9ndHRAbWVkaXVtLWNvcHkuaHRtbAoKICAqIGlndEBnZW1fdGlsZWRfc3dh
cHBpbmdAbm9uLXRocmVhZGVkOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtJTkNPTVBMRVRF
XVs0NV0gKFtmZG8jMTA3NzEzXSAvIFtmZG8jMTA4Njg2XSkgLT4gW1BBU1NdWzQ2XQogICBbNDVd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDY1L3No
YXJkLWljbGI0L2lndEBnZW1fdGlsZWRfc3dhcHBpbmdAbm9uLXRocmVhZGVkLmh0bWwKICAgWzQ2
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3
NzAvc2hhcmQtaWNsYjcvaWd0QGdlbV90aWxlZF9zd2FwcGluZ0Bub24tdGhyZWFkZWQuaHRtbAoK
ICAqIGlndEBnZW1fdXNlcnB0cl9ibGl0c0BzeW5jLXVubWFwLWFmdGVyLWNsb3NlOgogICAgLSBz
aGFyZC1oc3c6ICAgICAgICAgIFtETUVTRy1XQVJOXVs0N10gKFtmZG8jMTExODcwXSkgLT4gW1BB
U1NdWzQ4XQogICBbNDddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV83MDY1L3NoYXJkLWhzdzEvaWd0QGdlbV91c2VycHRyX2JsaXRzQHN5bmMtdW5tYXAt
YWZ0ZXItY2xvc2UuaHRtbAogICBbNDhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNDc3MC9zaGFyZC1oc3c0L2lndEBnZW1fdXNlcnB0cl9ibGl0
c0BzeW5jLXVubWFwLWFmdGVyLWNsb3NlLmh0bWwKCiAgKiB7aWd0QGk5MTVfcG1fZGNAZGM2LXBz
cn06CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW0ZBSUxdWzQ5XSAoW2ZkbyMxMTA1NDhdKSAt
PiBbUEFTU11bNTBdCiAgIFs0OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzcwNjUvc2hhcmQtaWNsYjIvaWd0QGk5MTVfcG1fZGNAZGM2LXBzci5odG1s
CiAgIFs1MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE0NzcwL3NoYXJkLWljbGI1L2lndEBpOTE1X3BtX2RjQGRjNi1wc3IuaHRtbAogICAgLSBz
aGFyZC1za2w6ICAgICAgICAgIFtJTkNPTVBMRVRFXVs1MV0gKFtmZG8jMTA4OTcyXSkgLT4gW1BB
U1NdWzUyXQogICBbNTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV83MDY1L3NoYXJkLXNrbDcvaWd0QGk5MTVfcG1fZGNAZGM2LXBzci5odG1sCiAgIFs1
Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0
NzcwL3NoYXJkLXNrbDEvaWd0QGk5MTVfcG1fZGNAZGM2LXBzci5odG1sCgogICogaWd0QGttc19j
dXJzb3JfbGVnYWN5QGN1cnNvci12cy1mbGlwLXRvZ2dsZToKICAgIC0gc2hhcmQtaHN3OiAgICAg
ICAgICBbRkFJTF1bNTNdIChbZmRvIzEwMzM1NV0pIC0+IFtQQVNTXVs1NF0KICAgWzUzXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzA2NS9zaGFyZC1o
c3c2L2lndEBrbXNfY3Vyc29yX2xlZ2FjeUBjdXJzb3ItdnMtZmxpcC10b2dnbGUuaHRtbAogICBb
NTRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NDc3MC9zaGFyZC1oc3c1L2lndEBrbXNfY3Vyc29yX2xlZ2FjeUBjdXJzb3ItdnMtZmxpcC10b2dn
bGUuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBmbGlwLXZzLWFic29sdXRlLXdmX3ZibGFuazoKICAg
IC0gc2hhcmQtYXBsOiAgICAgICAgICBbSU5DT01QTEVURV1bNTVdIChbZmRvIzEwMzkyN10pIC0+
IFtQQVNTXVs1Nl0gKzEgc2ltaWxhciBpc3N1ZQogICBbNTVdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDY1L3NoYXJkLWFwbDEvaWd0QGttc19mbGlw
QGZsaXAtdnMtYWJzb2x1dGUtd2ZfdmJsYW5rLmh0bWwKICAgWzU2XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3NzAvc2hhcmQtYXBsMy9pZ3RA
a21zX2ZsaXBAZmxpcC12cy1hYnNvbHV0ZS13Zl92YmxhbmsuaHRtbAoKICAqIGlndEBrbXNfZmxp
cEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtGQUlM
XVs1N10gKFtmZG8jMTA1MzYzXSkgLT4gW1BBU1NdWzU4XSArMSBzaW1pbGFyIGlzc3VlCiAgIFs1
N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwNjUv
c2hhcmQtc2tsOC9pZ3RAa21zX2ZsaXBAZmxpcC12cy1leHBpcmVkLXZibGFuay5odG1sCiAgIFs1
OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0
NzcwL3NoYXJkLXNrbDQvaWd0QGttc19mbGlwQGZsaXAtdnMtZXhwaXJlZC12YmxhbmsuaHRtbAoK
ICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXJ0ZToKICAgIC0gc2hhcmQt
aWNsYjogICAgICAgICBbRkFJTF1bNTldIChbZmRvIzEwMzE2N10gLyBbZmRvIzExMDM3OF0pIC0+
IFtQQVNTXVs2MF0KICAgWzU5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNzA2NS9zaGFyZC1pY2xiMi9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5n
QGZiYy0xcC1ydGUuaHRtbAogICBbNjBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNDc3MC9zaGFyZC1pY2xiNS9pZ3RAa21zX2Zyb250YnVmZmVy
X3RyYWNraW5nQGZiYy0xcC1ydGUuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tp
bmdAZmJjLTJwLXNjbmRzY3JuLXNwci1pbmRmYi1kcmF3LW1tYXAtY3B1OgogICAgLSBzaGFyZC1n
bGs6ICAgICAgICAgIFtGQUlMXVs2MV0gKFtmZG8jMTAzMTY3XSkgLT4gW1BBU1NdWzYyXQogICBb
NjFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDY1
L3NoYXJkLWdsazMvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMnAtc2NuZHNjcm4t
c3ByLWluZGZiLWRyYXctbW1hcC1jcHUuaHRtbAogICBbNjJdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDc3MC9zaGFyZC1nbGs3L2lndEBrbXNf
ZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTJwLXNjbmRzY3JuLXNwci1pbmRmYi1kcmF3LW1tYXAt
Y3B1Lmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmlt
c2Nybi1jdXItaW5kZmItZHJhdy1wd3JpdGU6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW0ZB
SUxdWzYzXSAoW2ZkbyMxMDMxNjddKSAtPiBbUEFTU11bNjRdICszIHNpbWlsYXIgaXNzdWVzCiAg
IFs2M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcw
NjUvc2hhcmQtaWNsYjIvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJp
bXNjcm4tY3VyLWluZGZiLWRyYXctcHdyaXRlLmh0bWwKICAgWzY0XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3NzAvc2hhcmQtaWNsYjUvaWd0
QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tY3VyLWluZGZiLWRy
YXctcHdyaXRlLmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYi1jb25z
dGFudC1hbHBoYS1taW46CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZBSUxdWzY1XSAoW2Zk
byMxMDgxNDVdKSAtPiBbUEFTU11bNjZdCiAgIFs2NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwNjUvc2hhcmQtc2tsNy9pZ3RAa21zX3BsYW5lX2Fs
cGhhX2JsZW5kQHBpcGUtYi1jb25zdGFudC1hbHBoYS1taW4uaHRtbAogICBbNjZdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDc3MC9zaGFyZC1z
a2w5L2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1iLWNvbnN0YW50LWFscGhhLW1pbi5o
dG1sCgogICogaWd0QGttc19wc3IyX3N1QHBhZ2VfZmxpcDoKICAgIC0gc2hhcmQtaWNsYjogICAg
ICAgICBbU0tJUF1bNjddIChbZmRvIzEwOTY0Ml0gLyBbZmRvIzExMTA2OF0pIC0+IFtQQVNTXVs2
OF0KICAgWzY3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNzA2NS9zaGFyZC1pY2xiMS9pZ3RAa21zX3BzcjJfc3VAcGFnZV9mbGlwLmh0bWwKICAgWzY4
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3
NzAvc2hhcmQtaWNsYjIvaWd0QGttc19wc3IyX3N1QHBhZ2VfZmxpcC5odG1sCgogICogaWd0QGtt
c19wc3JAcHNyMl9zcHJpdGVfYmx0OgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtTS0lQXVs2
OV0gKFtmZG8jMTA5NDQxXSkgLT4gW1BBU1NdWzcwXSArMSBzaW1pbGFyIGlzc3VlCiAgIFs2OV06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwNjUvc2hh
cmQtaWNsYjgvaWd0QGttc19wc3JAcHNyMl9zcHJpdGVfYmx0Lmh0bWwKICAgWzcwXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3NzAvc2hhcmQt
aWNsYjIvaWd0QGttc19wc3JAcHNyMl9zcHJpdGVfYmx0Lmh0bWwKCiAgCiMjIyMgV2FybmluZ3Mg
IyMjIwoKICAqIGlndEBnZW1fY3R4X2lzb2xhdGlvbkB2Y3MxLW5vbnByaXY6CiAgICAtIHNoYXJk
LWljbGI6ICAgICAgICAgW0ZBSUxdWzcxXSAoW2ZkbyMxMTEzMjldKSAtPiBbU0tJUF1bNzJdIChb
ZmRvIzEwOTI3Nl0pCiAgIFs3MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzcwNjUvc2hhcmQtaWNsYjIvaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHZjczEt
bm9ucHJpdi5odG1sCiAgIFs3Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE0NzcwL3NoYXJkLWljbGI1L2lndEBnZW1fY3R4X2lzb2xhdGlvbkB2
Y3MxLW5vbnByaXYuaHRtbAoKICAqIGlndEBnZW1fbW9jc19zZXR0aW5nc0Btb2NzLXNldHRpbmdz
LWJzZDI6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1NLSVBdWzczXSAoW2ZkbyMxMDkyNzZd
KSAtPiBbRkFJTF1bNzRdIChbZmRvIzExMTMzMF0pICsxIHNpbWlsYXIgaXNzdWUKICAgWzczXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzA2NS9zaGFy
ZC1pY2xiNi9pZ3RAZ2VtX21vY3Nfc2V0dGluZ3NAbW9jcy1zZXR0aW5ncy1ic2QyLmh0bWwKICAg
Wzc0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTQ3NzAvc2hhcmQtaWNsYjQvaWd0QGdlbV9tb2NzX3NldHRpbmdzQG1vY3Mtc2V0dGluZ3MtYnNk
Mi5odG1sCgogICogaWd0QGk5MTVfcG1fbHBzcEBub24tZWRwOgogICAgLSBzaGFyZC1pY2xiOiAg
ICAgICAgIFtJTkNPTVBMRVRFXVs3NV0gKFtmZG8jMTA3NzEzXSkgLT4gW1NLSVBdWzc2XSAoW2Zk
byMxMDkzMDFdKQogICBbNzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV83MDY1L3NoYXJkLWljbGI3L2lndEBpOTE1X3BtX2xwc3BAbm9uLWVkcC5odG1s
CiAgIFs3Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE0NzcwL3NoYXJkLWljbGI0L2lndEBpOTE1X3BtX2xwc3BAbm9uLWVkcC5odG1sCgogIAog
IHtuYW1lfTogVGhpcyBlbGVtZW50IGlzIHN1cHByZXNzZWQuIFRoaXMgbWVhbnMgaXQgaXMgaWdu
b3JlZCB3aGVuIGNvbXB1dGluZwogICAgICAgICAgdGhlIHN0YXR1cyBvZiB0aGUgZGlmZmVyZW5j
ZSAoU1VDQ0VTUywgV0FSTklORywgb3IgRkFJTFVSRSkuCgogIFtmZG8jIDExMTg1MiBdOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0gMTExODUyIAogIFtmZG8j
MTAzMTY2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAz
MTY2CiAgW2ZkbyMxMDMxNjddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMDMxNjcKICBbZmRvIzEwMzIzMl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTEwMzIzMgogIFtmZG8jMTAzMzU1XTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMzU1CiAgW2ZkbyMxMDM5MjddOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDM5MjcKICBbZmRvIzEw
NDEwOF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNDEw
OAogIFtmZG8jMTA1MzYzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTA1MzYzCiAgW2ZkbyMxMDU0MTFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMDU0MTEKICBbZmRvIzEwNjEwN106IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNjEwNwogIFtmZG8jMTA3NzEzXTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NzEzCiAgW2ZkbyMxMDgx
NDVdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDgxNDUK
ICBbZmRvIzEwODU2Nl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTEwODU2NgogIFtmZG8jMTA4Njg2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTA4Njg2CiAgW2ZkbyMxMDg5NzJdOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDg5NzIKICBbZmRvIzEwOTI3Nl06IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI3NgogIFtmZG8jMTA5MzAx
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5MzAxCiAg
W2ZkbyMxMDk0NDFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMDk0NDEKICBbZmRvIzEwOTY0Ml06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTEwOTY0MgogIFtmZG8jMTA5NjYxXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5NjYxCiAgW2ZkbyMxMTAzNzhdOiBodHRwczovL2J1
Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTAzNzgKICBbZmRvIzExMDQwM106
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDQwMwogIFtm
ZG8jMTEwNTQ4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTEwNTQ4CiAgW2ZkbyMxMTA3MjhdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMTA3MjgKICBbZmRvIzExMDg1NF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDg1NAogIFtmZG8jMTExMDY4XTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMDY4CiAgW2ZkbyMxMTEzMjVdOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEzMjUKICBbZmRv
IzExMTMyOV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEx
MTMyOQogIFtmZG8jMTExMzMwXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTExMzMwCiAgW2ZkbyMxMTE1NDZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Au
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE1NDYKICBbZmRvIzExMTcwM106IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTcwMwogIFtmZG8jMTExNzM1XTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNzM1CiAgW2ZkbyMx
MTE3NTddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE3
NTcKICBbZmRvIzExMTgwMF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTExMTgwMAogIFtmZG8jMTExODMyXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MTExODMyCiAgW2ZkbyMxMTE4NTBdOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE4NTAKICBbZmRvIzExMTg3MF06IGh0dHBz
Oi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTg3MAoKClBhcnRpY2lw
YXRpbmcgaG9zdHMgKDExIC0+IDExKQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAg
Tm8gY2hhbmdlcyBpbiBwYXJ0aWNpcGF0aW5nIGhvc3RzCgoKQnVpbGQgY2hhbmdlcwotLS0tLS0t
LS0tLS0tCgogICogQ0k6IENJLTIwMTkwNTI5IC0+IE5vbmUKICAqIExpbnV4OiBDSV9EUk1fNzA2
NSAtPiBQYXRjaHdvcmtfMTQ3NzAKCiAgQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5CiAgQ0lfRFJNXzcw
NjU6IGI2ZjZmYzRiOWZhYTQ1ZGJmODkxYWE4YzNmMDk2MWEzMzdkMjlhM2YgQCBnaXQ6Ly9hbm9u
Z2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKICBJR1RfNTIyMTogMjgwNzM0Y2VhY2Rl
NGZmNTJjNmJkNWE5ZTNkNjY0Zjc3Zjc2Yjg1ZCBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Au
b3JnL3hvcmcvYXBwL2ludGVsLWdwdS10b29scwogIFBhdGNod29ya18xNDc3MDogNGQ1MGM1MjIx
MjYyMDAyZjAyOGUwODgwNWU1NTE4NTdhMmY1ZTM5MSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0
b3Aub3JnL2dmeC1jaS9saW51eAogIHBpZ2xpdF80NTA5OiBmZGM1YTRjYTExMTI0YWI4NDEzYzc5
ODg4OTZlZWM0Yzk3MzM2Njk0IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvcGlnbGl0
Cgo9PSBMb2dzID09CgpGb3IgbW9yZSBkZXRhaWxzIHNlZTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3NzAvaW5kZXguaHRtbApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
