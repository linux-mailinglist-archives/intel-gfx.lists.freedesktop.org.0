Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0D4D388B
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 06:39:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBF486EB98;
	Fri, 11 Oct 2019 04:39:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 483DE6EB97;
 Fri, 11 Oct 2019 04:39:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3FFF5A0096;
 Fri, 11 Oct 2019 04:39:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 11 Oct 2019 04:39:43 -0000
Message-ID: <20191011043943.23078.39353@emeril.freedesktop.org>
References: <20191010134849.9078-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191010134849.9078-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_Honour_O=5FNONBLOCK_before_throttling_execbuf_submissio?=
 =?utf-8?q?ns?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEhvbm91ciBPX05PTkJMT0NL
IGJlZm9yZSB0aHJvdHRsaW5nIGV4ZWNidWYgc3VibWlzc2lvbnMKVVJMICAgOiBodHRwczovL3Bh
dGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY3ODUwLwpTdGF0ZSA6IGZhaWx1cmUKCj09
IFN1bW1hcnkgPT0KCkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzcwNTZfZnVsbCAt
PiBQYXRjaHdvcmtfMTQ3NDlfZnVsbAo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09CgpTdW1tYXJ5Ci0tLS0tLS0KCiAgKipGQUlMVVJFKioKCiAgU2Vy
aW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzE0NzQ5X2Z1bGwgYWJz
b2x1dGVseSBuZWVkIHRvIGJlCiAgdmVyaWZpZWQgbWFudWFsbHkuCiAgCiAgSWYgeW91IHRoaW5r
IHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2Vz
CiAgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTQ3NDlfZnVsbCwgcGxlYXNlIG5vdGlmeSB5b3Vy
IGJ1ZyB0ZWFtIHRvIGFsbG93IHRoZW0KICB0byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1v
ZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0aXZlcyBpbiBDSS4KCiAgCgpQb3NzaWJs
ZSBuZXcgaXNzdWVzCi0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhlIHVua25vd24g
Y2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTQ3NDlf
ZnVsbDoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgUG9zc2libGUgcmVncmVzc2lvbnMgIyMj
IwoKICAqIGlndEBrbXNfZmJjb25fZmJ0QHBzci1zdXNwZW5kOgogICAgLSBzaGFyZC1pY2xiOiAg
ICAgICAgIFtQQVNTXVsxXSAtPiBbRE1FU0ctV0FSTl1bMl0KICAgWzFdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDU2L3NoYXJkLWljbGIyL2lndEBr
bXNfZmJjb25fZmJ0QHBzci1zdXNwZW5kLmh0bWwKICAgWzJdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDc0OS9zaGFyZC1pY2xiMi9pZ3RAa21z
X2ZiY29uX2ZidEBwc3Itc3VzcGVuZC5odG1sCgogIAojIyMjIFN1cHByZXNzZWQgIyMjIwoKICBU
aGUgZm9sbG93aW5nIHJlc3VsdHMgY29tZSBmcm9tIHVudHJ1c3RlZCBtYWNoaW5lcywgdGVzdHMs
IG9yIHN0YXR1c2VzLgogIFRoZXkgZG8gbm90IGFmZmVjdCB0aGUgb3ZlcmFsbCByZXN1bHQuCgog
ICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0Bwc3ItMXAtb2Zmc2NyZW4tcHJpLWluZGZi
LWRyYXctbW1hcC13YzoKICAgIC0ge3NoYXJkLXRnbGJ9OiAgICAgICBOT1RSVU4gLT4gW0lOQ09N
UExFVEVdWzNdICsxIHNpbWlsYXIgaXNzdWUKICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDc0OS9zaGFyZC10Z2xiNi9pZ3RAa21zX2Zy
b250YnVmZmVyX3RyYWNraW5nQHBzci0xcC1vZmZzY3Jlbi1wcmktaW5kZmItZHJhdy1tbWFwLXdj
Lmh0bWwKCiAgCktub3duIGlzc3VlcwotLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhlIGNoYW5n
ZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzE0NzQ5X2Z1bGwgdGhhdCBjb21lIGZyb20ga25vd24gaXNz
dWVzOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBJc3N1ZXMgaGl0ICMjIyMKCiAgKiBpZ3RA
Z2VtX2V4ZWNfYmFsYW5jZXJAc21va2U6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1Nd
WzRdIC0+IFtTS0lQXVs1XSAoW2ZkbyMxMTA4NTRdKQogICBbNF06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwNTYvc2hhcmQtaWNsYjIvaWd0QGdlbV9l
eGVjX2JhbGFuY2VyQHNtb2tlLmh0bWwKICAgWzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDc0OS9zaGFyZC1pY2xiMy9pZ3RAZ2VtX2V4ZWNf
YmFsYW5jZXJAc21va2UuaHRtbAoKICAqIGlndEBnZW1fZXhlY19zY2hlZHVsZUBpbmRlcGVuZGVu
dC1ic2QyOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVs2XSAtPiBbU0tJUF1bN10g
KFtmZG8jMTA5Mjc2XSkgKzggc2ltaWxhciBpc3N1ZXMKICAgWzZdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDU2L3NoYXJkLWljbGI0L2lndEBnZW1f
ZXhlY19zY2hlZHVsZUBpbmRlcGVuZGVudC1ic2QyLmh0bWwKICAgWzddOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDc0OS9zaGFyZC1pY2xiOC9p
Z3RAZ2VtX2V4ZWNfc2NoZWR1bGVAaW5kZXBlbmRlbnQtYnNkMi5odG1sCgogICogaWd0QGdlbV9l
eGVjX3NjaGVkdWxlQHByZWVtcHQtb3RoZXItY2hhaW4tYnNkOgogICAgLSBzaGFyZC1pY2xiOiAg
ICAgICAgIFtQQVNTXVs4XSAtPiBbU0tJUF1bOV0gKFtmZG8jMTExMzI1XSkgKzYgc2ltaWxhciBp
c3N1ZXMKICAgWzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV83MDU2L3NoYXJkLWljbGI4L2lndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0LW90aGVy
LWNoYWluLWJzZC5odG1sCiAgIFs5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTQ3NDkvc2hhcmQtaWNsYjIvaWd0QGdlbV9leGVjX3NjaGVkdWxl
QHByZWVtcHQtb3RoZXItY2hhaW4tYnNkLmh0bWwKCiAgKiBpZ3RAZ2VtX3VzZXJwdHJfYmxpdHNA
bWFwLWZpeGVkLWludmFsaWRhdGUtb3ZlcmxhcC1idXN5LWd1cDoKICAgIC0gc2hhcmQtaHN3OiAg
ICAgICAgICBbUEFTU11bMTBdIC0+IFtETUVTRy1XQVJOXVsxMV0gKFtmZG8jMTExODcwXSkKICAg
WzEwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzA1
Ni9zaGFyZC1oc3cxL2lndEBnZW1fdXNlcnB0cl9ibGl0c0BtYXAtZml4ZWQtaW52YWxpZGF0ZS1v
dmVybGFwLWJ1c3ktZ3VwLmh0bWwKICAgWzExXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3NDkvc2hhcmQtaHN3MS9pZ3RAZ2VtX3VzZXJwdHJf
YmxpdHNAbWFwLWZpeGVkLWludmFsaWRhdGUtb3ZlcmxhcC1idXN5LWd1cC5odG1sCgogICogaWd0
QGk5MTVfc3VzcGVuZEBmZW5jZS1yZXN0b3JlLXRpbGVkMnVudGlsZWQ6CiAgICAtIHNoYXJkLWFw
bDogICAgICAgICAgW1BBU1NdWzEyXSAtPiBbRE1FU0ctV0FSTl1bMTNdIChbZmRvIzEwODU2Nl0p
ICs2IHNpbWlsYXIgaXNzdWVzCiAgIFsxMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzcwNTYvc2hhcmQtYXBsMi9pZ3RAaTkxNV9zdXNwZW5kQGZlbmNl
LXJlc3RvcmUtdGlsZWQydW50aWxlZC5odG1sCiAgIFsxM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NzQ5L3NoYXJkLWFwbDYvaWd0QGk5MTVf
c3VzcGVuZEBmZW5jZS1yZXN0b3JlLXRpbGVkMnVudGlsZWQuaHRtbAoKICAqIGlndEBrbXNfZmxp
cEBibG9ja2luZy13Zl92Ymxhbms6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW1BBU1NdWzE0
XSAtPiBbSU5DT01QTEVURV1bMTVdIChbZmRvIzEwMzkyN10pCiAgIFsxNF06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwNTYvc2hhcmQtYXBsMi9pZ3RA
a21zX2ZsaXBAYmxvY2tpbmctd2ZfdmJsYW5rLmh0bWwKICAgWzE1XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3NDkvc2hhcmQtYXBsMi9pZ3RA
a21zX2ZsaXBAYmxvY2tpbmctd2ZfdmJsYW5rLmh0bWwKICAgIC0gc2hhcmQtaWNsYjogICAgICAg
ICBbUEFTU11bMTZdIC0+IFtJTkNPTVBMRVRFXVsxN10gKFtmZG8jMTA3NzEzXSkKICAgWzE2XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzA1Ni9zaGFy
ZC1pY2xiMS9pZ3RAa21zX2ZsaXBAYmxvY2tpbmctd2ZfdmJsYW5rLmh0bWwKICAgWzE3XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3NDkvc2hh
cmQtaWNsYjEvaWd0QGttc19mbGlwQGJsb2NraW5nLXdmX3ZibGFuay5odG1sCgogICogaWd0QGtt
c19mbGlwQGZsaXAtdnMtZXhwaXJlZC12Ymxhbms6CiAgICAtIHNoYXJkLWdsazogICAgICAgICAg
W1BBU1NdWzE4XSAtPiBbRkFJTF1bMTldIChbZmRvIzEwNTM2M10pCiAgIFsxOF06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwNTYvc2hhcmQtZ2xrOS9p
Z3RAa21zX2ZsaXBAZmxpcC12cy1leHBpcmVkLXZibGFuay5odG1sCiAgIFsxOV06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NzQ5L3NoYXJkLWds
azkvaWd0QGttc19mbGlwQGZsaXAtdnMtZXhwaXJlZC12YmxhbmsuaHRtbAoKICAqIGlndEBrbXNf
ZmxpcEBmbGlwLXZzLXN1c3BlbmQtaW50ZXJydXB0aWJsZToKICAgIC0gc2hhcmQtc2tsOiAgICAg
ICAgICBbUEFTU11bMjBdIC0+IFtJTkNPTVBMRVRFXVsyMV0gKFtmZG8jMTA5NTA3XSkKICAgWzIw
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzA1Ni9z
aGFyZC1za2w4L2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmQtaW50ZXJydXB0aWJsZS5odG1s
CiAgIFsyMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE0NzQ5L3NoYXJkLXNrbDUvaWd0QGttc19mbGlwQGZsaXAtdnMtc3VzcGVuZC1pbnRlcnJ1
cHRpYmxlLmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBfdGlsaW5nQGZsaXAtY2hhbmdlcy10aWxpbmct
eWY6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzIyXSAtPiBbRkFJTF1bMjNdIChb
ZmRvIzEwODMwM10pCiAgIFsyMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzcwNTYvc2hhcmQtc2tsMy9pZ3RAa21zX2ZsaXBfdGlsaW5nQGZsaXAtY2hh
bmdlcy10aWxpbmcteWYuaHRtbAogICBbMjNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDc0OS9zaGFyZC1za2wxL2lndEBrbXNfZmxpcF90aWxp
bmdAZmxpcC1jaGFuZ2VzLXRpbGluZy15Zi5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90
cmFja2luZ0BmYmMtMXAtcHJpbXNjcm4tc3ByLWluZGZiLWRyYXctYmx0OgogICAgLSBzaGFyZC1p
Y2xiOiAgICAgICAgIFtQQVNTXVsyNF0gLT4gW0ZBSUxdWzI1XSAoW2ZkbyMxMDMxNjddKSArNyBz
aW1pbGFyIGlzc3VlcwogICBbMjRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV83MDU2L3NoYXJkLWljbGIyL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tp
bmdAZmJjLTFwLXByaW1zY3JuLXNwci1pbmRmYi1kcmF3LWJsdC5odG1sCiAgIFsyNV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NzQ5L3NoYXJk
LWljbGI3L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXByaW1zY3JuLXNwci1p
bmRmYi1kcmF3LWJsdC5odG1sCgogICogaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWMt
Y29uc3RhbnQtYWxwaGEtbWluOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVsyNl0g
LT4gW0ZBSUxdWzI3XSAoW2ZkbyMxMDgxNDVdKSArMSBzaW1pbGFyIGlzc3VlCiAgIFsyNl06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwNTYvc2hhcmQt
c2tsNy9pZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYy1jb25zdGFudC1hbHBoYS1taW4u
aHRtbAogICBbMjddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNDc0OS9zaGFyZC1za2w5L2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1j
LWNvbnN0YW50LWFscGhhLW1pbi5odG1sCgogICogaWd0QGttc19wc3JAcHNyMl9ub19kcnJzOgog
ICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVsyOF0gLT4gW1NLSVBdWzI5XSAoW2ZkbyMx
MDk0NDFdKSArMiBzaW1pbGFyIGlzc3VlcwogICBbMjhdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDU2L3NoYXJkLWljbGIyL2lndEBrbXNfcHNyQHBz
cjJfbm9fZHJycy5odG1sCiAgIFsyOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE0NzQ5L3NoYXJkLWljbGI4L2lndEBrbXNfcHNyQHBzcjJfbm9f
ZHJycy5odG1sCgogICogaWd0QHBlcmZAYmxvY2tpbmc6CiAgICAtIHNoYXJkLXNrbDogICAgICAg
ICAgW1BBU1NdWzMwXSAtPiBbRkFJTF1bMzFdIChbZmRvIzExMDcyOF0pCiAgIFszMF06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwNTYvc2hhcmQtc2ts
MS9pZ3RAcGVyZkBibG9ja2luZy5odG1sCiAgIFszMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NzQ5L3NoYXJkLXNrbDEwL2lndEBwZXJmQGJs
b2NraW5nLmh0bWwKCiAgCiMjIyMgUG9zc2libGUgZml4ZXMgIyMjIwoKICAqIGlndEBnZW1fZXhl
Y19zY2hlZHVsZUBvdXQtb3JkZXItYnNkMjoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbU0tJ
UF1bMzJdIChbZmRvIzEwOTI3Nl0pIC0+IFtQQVNTXVszM10gKzIzIHNpbWlsYXIgaXNzdWVzCiAg
IFszMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcw
NTYvc2hhcmQtaWNsYjYvaWd0QGdlbV9leGVjX3NjaGVkdWxlQG91dC1vcmRlci1ic2QyLmh0bWwK
ICAgWzMzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTQ3NDkvc2hhcmQtaWNsYjQvaWd0QGdlbV9leGVjX3NjaGVkdWxlQG91dC1vcmRlci1ic2Qy
Lmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJlZW1wdC1xdWV1ZS1jb250ZXh0cy1i
c2Q6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1NLSVBdWzM0XSAoW2ZkbyMxMTEzMjVdKSAt
PiBbUEFTU11bMzVdCiAgIFszNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzcwNTYvc2hhcmQtaWNsYjIvaWd0QGdlbV9leGVjX3NjaGVkdWxlQHByZWVt
cHQtcXVldWUtY29udGV4dHMtYnNkLmh0bWwKICAgWzM1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3NDkvc2hhcmQtaWNsYjcvaWd0QGdlbV9l
eGVjX3NjaGVkdWxlQHByZWVtcHQtcXVldWUtY29udGV4dHMtYnNkLmh0bWwKCiAgKiBpZ3RAZ2Vt
X2V4ZWNfc3VzcGVuZEBiYXNpYy1zMy1kZXZpY2VzOgogICAgLSB7c2hhcmQtdGdsYn06ICAgICAg
IFtJTkNPTVBMRVRFXVszNl0gKFtmZG8jMTExODMyXSkgLT4gW1BBU1NdWzM3XQogICBbMzZdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDU2L3NoYXJk
LXRnbGI0L2lndEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXMzLWRldmljZXMuaHRtbAogICBbMzdd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDc0
OS9zaGFyZC10Z2xiNi9pZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zMy1kZXZpY2VzLmh0bWwK
CiAgKiBpZ3RAZ2VtX3RpbGVkX3N3YXBwaW5nQG5vbi10aHJlYWRlZDoKICAgIC0gc2hhcmQtYXBs
OiAgICAgICAgICBbRE1FU0ctRkFJTF1bMzhdIChbZmRvIzEwODY4Nl0pIC0+IFtQQVNTXVszOV0K
ICAgWzM4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NzA1Ni9zaGFyZC1hcGwyL2lndEBnZW1fdGlsZWRfc3dhcHBpbmdAbm9uLXRocmVhZGVkLmh0bWwK
ICAgWzM5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTQ3NDkvc2hhcmQtYXBsNi9pZ3RAZ2VtX3RpbGVkX3N3YXBwaW5nQG5vbi10aHJlYWRlZC5o
dG1sCgogICogaWd0QGdlbV91c2VycHRyX2JsaXRzQGRtYWJ1Zi11bnN5bmM6CiAgICAtIHNoYXJk
LWhzdzogICAgICAgICAgW0RNRVNHLVdBUk5dWzQwXSAoW2ZkbyMxMTE4NzBdKSAtPiBbUEFTU11b
NDFdICsxIHNpbWlsYXIgaXNzdWUKICAgWzQwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNzA1Ni9zaGFyZC1oc3c3L2lndEBnZW1fdXNlcnB0cl9ibGl0
c0BkbWFidWYtdW5zeW5jLmh0bWwKICAgWzQxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3NDkvc2hhcmQtaHN3NS9pZ3RAZ2VtX3VzZXJwdHJf
YmxpdHNAZG1hYnVmLXVuc3luYy5odG1sCgogICogaWd0QGdlbV93b3JrYXJvdW5kc0BzdXNwZW5k
LXJlc3VtZS1jb250ZXh0OgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtETUVTRy1XQVJOXVs0
Ml0gKFtmZG8jMTA4NTY2XSkgLT4gW1BBU1NdWzQzXSArMSBzaW1pbGFyIGlzc3VlCiAgIFs0Ml06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwNTYvc2hh
cmQtYXBsNy9pZ3RAZ2VtX3dvcmthcm91bmRzQHN1c3BlbmQtcmVzdW1lLWNvbnRleHQuaHRtbAog
ICBbNDNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNDc0OS9zaGFyZC1hcGw4L2lndEBnZW1fd29ya2Fyb3VuZHNAc3VzcGVuZC1yZXN1bWUtY29u
dGV4dC5odG1sCgogICoge2lndEBpOTE1X3BtX2RjQGRjNi1wc3J9OgogICAgLSBzaGFyZC1pY2xi
OiAgICAgICAgIFtGQUlMXVs0NF0gKFtmZG8jMTEwNTQ4XSkgLT4gW1BBU1NdWzQ1XQogICBbNDRd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDU2L3No
YXJkLWljbGI0L2lndEBpOTE1X3BtX2RjQGRjNi1wc3IuaHRtbAogICBbNDVdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDc0OS9zaGFyZC1pY2xi
MS9pZ3RAaTkxNV9wbV9kY0BkYzYtcHNyLmh0bWwKCiAgKiBpZ3RAaTkxNV9wbV9ycG1AZ2VtLXBy
ZWFkOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtJTkNPTVBMRVRFXVs0Nl0gKFtmZG8jMTAz
OTI3XSkgLT4gW1BBU1NdWzQ3XQogICBbNDZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV83MDU2L3NoYXJkLWFwbDMvaWd0QGk5MTVfcG1fcnBtQGdlbS1w
cmVhZC5odG1sCiAgIFs0N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE0NzQ5L3NoYXJkLWFwbDQvaWd0QGk5MTVfcG1fcnBtQGdlbS1wcmVhZC5o
dG1sCgogICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9oYW5nY2hlY2s6CiAgICAtIHNoYXJkLWhz
dzogICAgICAgICAgW0RNRVNHLUZBSUxdWzQ4XSAtPiBbUEFTU11bNDldCiAgIFs0OF06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwNTYvc2hhcmQtaHN3
NS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hhbmdjaGVjay5odG1sCiAgIFs0OV06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NzQ5L3NoYXJkLWhz
dzUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9oYW5nY2hlY2suaHRtbAoKICAqIGlndEBrbXNfY3Vy
c29yX2NyY0BwaXBlLWItY3Vyc29yLTI1NngyNTYtb2Zmc2NyZWVuOgogICAgLSBzaGFyZC1za2w6
ICAgICAgICAgIFtGQUlMXVs1MF0gKFtmZG8jMTAzMjMyXSkgLT4gW1BBU1NdWzUxXQogICBbNTBd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDU2L3No
YXJkLXNrbDQvaWd0QGttc19jdXJzb3JfY3JjQHBpcGUtYi1jdXJzb3ItMjU2eDI1Ni1vZmZzY3Jl
ZW4uaHRtbAogICBbNTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNDc0OS9zaGFyZC1za2wzL2lndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWItY3Vy
c29yLTI1NngyNTYtb2Zmc2NyZWVuLmh0bWwKCiAgKiBpZ3RAa21zX2N1cnNvcl9sZWdhY3lAMngt
bG9uZy1jdXJzb3ItdnMtZmxpcC1hdG9taWM6CiAgICAtIHNoYXJkLWhzdzogICAgICAgICAgW0ZB
SUxdWzUyXSAoW2ZkbyMxMDU3NjddKSAtPiBbUEFTU11bNTNdCiAgIFs1Ml06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcwNTYvc2hhcmQtaHN3MS9pZ3RA
a21zX2N1cnNvcl9sZWdhY3lAMngtbG9uZy1jdXJzb3ItdnMtZmxpcC1hdG9taWMuaHRtbAogICBb
NTNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NDc0OS9zaGFyZC1oc3c1L2lndEBrbXNfY3Vyc29yX2xlZ2FjeUAyeC1sb25nLWN1cnNvci12cy1m
bGlwLWF0b21pYy5odG1sCgogICogaWd0QGttc19mbGlwQDJ4LWZsaXAtdnMtZXhwaXJlZC12Ymxh
bms6CiAgICAtIHNoYXJkLWdsazogICAgICAgICAgW0ZBSUxdWzU0XSAoW2ZkbyMxMDUzNjNdKSAt
PiBbUEFTU11bNTVdCiAgIFs1NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzcwNTYvc2hhcmQtZ2xrOC9pZ3RAa21zX2ZsaXBAMngtZmxpcC12cy1leHBp
cmVkLXZibGFuay5odG1sCiAgIFs1NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE0NzQ5L3NoYXJkLWdsazEvaWd0QGttc19mbGlwQDJ4LWZsaXAt
dnMtZXhwaXJlZC12YmxhbmsuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdA
ZmJjLTFwLW9mZnNjcmVuLXByaS1pbmRmYi1kcmF3LWJsdDoKICAgIC0gc2hhcmQtaWNsYjogICAg
ICAgICBbRkFJTF1bNTZdIChbZmRvIzEwMzE2N10pIC0+IFtQQVNTXVs1N10gKzIgc2ltaWxhciBp
c3N1ZXMKICAgWzU2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNzA1Ni9zaGFyZC1pY2xiMi9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0x
cC1vZmZzY3Jlbi1wcmktaW5kZmItZHJhdy1ibHQuaHRtbAogICBbNTddOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDc0OS9zaGFyZC1pY2xiMy9p
Z3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1vZmZzY3Jlbi1wcmktaW5kZmItZHJh
dy1ibHQuaHRtbAoKICAqIGlndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1hLWNvdmVyYWdl
LTdlZmM6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZBSUxdWzU4XSAoW2ZkbyMxMDgxNDVd
KSAtPiBbUEFTU11bNTldCiAgIFs1OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzcwNTYvc2hhcmQtc2tsMS9pZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5k
QHBpcGUtYS1jb3ZlcmFnZS03ZWZjLmh0bWwKICAgWzU5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3NDkvc2hhcmQtc2tsMTAvaWd0QGttc19w
bGFuZV9hbHBoYV9ibGVuZEBwaXBlLWEtY292ZXJhZ2UtN2VmYy5odG1sCgogICogaWd0QGttc19w
bGFuZV9hbHBoYV9ibGVuZEBwaXBlLWItY292ZXJhZ2UtN2VmYzoKICAgIC0gc2hhcmQtc2tsOiAg
ICAgICAgICBbRkFJTF1bNjBdIChbZmRvIzEwODE0NV0gLyBbZmRvIzExMDQwM10pIC0+IFtQQVNT
XVs2MV0KICAgWzYwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNzA1Ni9zaGFyZC1za2w0L2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1iLWNv
dmVyYWdlLTdlZmMuaHRtbAogICBbNjFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNDc0OS9zaGFyZC1za2wzL2lndEBrbXNfcGxhbmVfYWxwaGFf
YmxlbmRAcGlwZS1iLWNvdmVyYWdlLTdlZmMuaHRtbAoKICAqIGlndEBrbXNfcHNyMl9zdUBmcm9u
dGJ1ZmZlcjoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbU0tJUF1bNjJdIChbZmRvIzEwOTY0
Ml0gLyBbZmRvIzExMTA2OF0pIC0+IFtQQVNTXVs2M10KICAgWzYyXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzA1Ni9zaGFyZC1pY2xiNC9pZ3RAa21z
X3BzcjJfc3VAZnJvbnRidWZmZXIuaHRtbAogICBbNjNdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDc0OS9zaGFyZC1pY2xiMi9pZ3RAa21zX3Bz
cjJfc3VAZnJvbnRidWZmZXIuaHRtbAoKICAqIGlndEBrbXNfcHNyQHBzcjJfc3ByaXRlX21tYXBf
Z3R0OgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtTS0lQXVs2NF0gKFtmZG8jMTA5NDQxXSkg
LT4gW1BBU1NdWzY1XSArMiBzaW1pbGFyIGlzc3VlcwogICBbNjRdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MDU2L3NoYXJkLWljbGI4L2lndEBrbXNf
cHNyQHBzcjJfc3ByaXRlX21tYXBfZ3R0Lmh0bWwKICAgWzY1XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3NDkvc2hhcmQtaWNsYjIvaWd0QGtt
c19wc3JAcHNyMl9zcHJpdGVfbW1hcF9ndHQuaHRtbAoKICAqIGlndEBrbXNfc2V0bW9kZUBiYXNp
YzoKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbRkFJTF1bNjZdIChbZmRvIzk5OTEyXSkgLT4g
W1BBU1NdWzY3XQogICBbNjZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV83MDU2L3NoYXJkLWtibDIvaWd0QGttc19zZXRtb2RlQGJhc2ljLmh0bWwKICAg
WzY3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTQ3NDkvc2hhcmQta2JsNy9pZ3RAa21zX3NldG1vZGVAYmFzaWMuaHRtbAoKICAqIGlndEBwZXJm
QHBvbGxpbmc6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZBSUxdWzY4XSAoW2ZkbyMxMTA3
MjhdKSAtPiBbUEFTU11bNjldCiAgIFs2OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzcwNTYvc2hhcmQtc2tsMS9pZ3RAcGVyZkBwb2xsaW5nLmh0bWwK
ICAgWzY5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTQ3NDkvc2hhcmQtc2tsNi9pZ3RAcGVyZkBwb2xsaW5nLmh0bWwKCiAgCiAge25hbWV9OiBU
aGlzIGVsZW1lbnQgaXMgc3VwcHJlc3NlZC4gVGhpcyBtZWFucyBpdCBpcyBpZ25vcmVkIHdoZW4g
Y29tcHV0aW5nCiAgICAgICAgICB0aGUgc3RhdHVzIG9mIHRoZSBkaWZmZXJlbmNlIChTVUNDRVNT
LCBXQVJOSU5HLCBvciBGQUlMVVJFKS4KCiAgW2ZkbyMxMDMxNjddOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMxNjcKICBbZmRvIzEwMzIzMl06IGh0dHBz
Oi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzIzMgogIFtmZG8jMTAz
OTI3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzOTI3
CiAgW2ZkbyMxMDUzNjNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMDUzNjMKICBbZmRvIzEwNTc2N106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTEwNTc2NwogIFtmZG8jMTA3NzEzXTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NzEzCiAgW2ZkbyMxMDgxNDVdOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDgxNDUKICBbZmRvIzEwODMw
M106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwODMwMwog
IFtmZG8jMTA4NTY2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9MTA4NTY2CiAgW2ZkbyMxMDg2ODZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3No
b3dfYnVnLmNnaT9pZD0xMDg2ODYKICBbZmRvIzEwOTI3Nl06IGh0dHBzOi8vYnVncy5mcmVlZGVz
a3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI3NgogIFtmZG8jMTA5NDQxXTogaHR0cHM6Ly9i
dWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5NDQxCiAgW2ZkbyMxMDk1MDdd
OiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDk1MDcKICBb
ZmRvIzEwOTY0Ml06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lk
PTEwOTY0MgogIFtmZG8jMTEwNDAzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93
X2J1Zy5jZ2k/aWQ9MTEwNDAzCiAgW2ZkbyMxMTA1NDhdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0
b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA1NDgKICBbZmRvIzExMDcyOF06IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDcyOAogIFtmZG8jMTEwODU0XTog
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwODU0CiAgW2Zk
byMxMTEwNjhdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0x
MTEwNjgKICBbZmRvIzExMTMyNV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19i
dWcuY2dpP2lkPTExMTMyNQogIFtmZG8jMTExMzI5XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9w
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMzI5CiAgW2ZkbyMxMTE3NDddOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE3NDcKICBbZmRvIzExMTgzMl06IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTgzMgogIFtmZG8j
MTExODcwXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEx
ODcwCiAgW2ZkbyM5OTkxMl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTk5OTEyCgoKUGFydGljaXBhdGluZyBob3N0cyAoMTEgLT4gMTEpCi0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLQoKICBObyBjaGFuZ2VzIGluIHBhcnRpY2lwYXRpbmcgaG9zdHMK
CgpCdWlsZCBjaGFuZ2VzCi0tLS0tLS0tLS0tLS0KCiAgKiBDSTogQ0ktMjAxOTA1MjkgLT4gTm9u
ZQogICogTGludXg6IENJX0RSTV83MDU2IC0+IFBhdGNod29ya18xNDc0OQoKICBDSS0yMDE5MDUy
OTogMjAxOTA1MjkKICBDSV9EUk1fNzA1NjogNTg5ZWQ5YzMwOWZmNGMyNjUzMmJiYzdhYzZkY2Nl
OTUxNGJiZDFlOSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAog
IElHVF81MjIwOiAxZTM4ZTMyZDcyMTIxMGE3ODAxOThjODI5M2E2YjhjOGU4ODFkZjY4IEAgZ2l0
Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcveG9yZy9hcHAvaW50ZWwtZ3B1LXRvb2xzCiAgUGF0
Y2h3b3JrXzE0NzQ5OiAxYmY1ZTc4Mjk3YjJkODI5ZTE0ODdkNTYzYjQ1MTgxMDE3YTY2NDYyIEAg
Z2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgcGlnbGl0XzQ1MDk6
IGZkYzVhNGNhMTExMjRhYjg0MTNjNzk4ODg5NmVlYzRjOTczMzY2OTQgQCBnaXQ6Ly9hbm9uZ2l0
LmZyZWVkZXNrdG9wLm9yZy9waWdsaXQKCj09IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2Vl
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDc0
OS9pbmRleC5odG1sCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
