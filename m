Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4A7471B3
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Jun 2019 20:41:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF804892A8;
	Sat, 15 Jun 2019 18:41:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 127AA892A6;
 Sat, 15 Jun 2019 18:41:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DA574A0071;
 Sat, 15 Jun 2019 18:41:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 15 Jun 2019 18:41:36 -0000
Message-ID: <20190615184136.5181.98946@emeril.freedesktop.org>
References: <20190614111053.25615-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190614111053.25615-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5BCI=2C1/2=5D_drm/i915=3A_Discard_some_redund?=
 =?utf-8?q?ant_cache_domain_flushes?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDEv
Ml0gZHJtL2k5MTU6IERpc2NhcmQgc29tZSByZWR1bmRhbnQgY2FjaGUgZG9tYWluIGZsdXNoZXMK
VVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYyMTAxLwpT
dGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkgPT0KCkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20g
Q0lfRFJNXzYyNzJfZnVsbCAtPiBQYXRjaHdvcmtfMTMyODVfZnVsbAo9PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CgpTdW1tYXJ5Ci0tLS0tLS0KCiAg
KipGQUlMVVJFKioKCiAgU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdpdGggUGF0Y2h3
b3JrXzEzMjg1X2Z1bGwgYWJzb2x1dGVseSBuZWVkIHRvIGJlCiAgdmVyaWZpZWQgbWFudWFsbHku
CiAgCiAgSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90aGluZyB0byBk
byB3aXRoIHRoZSBjaGFuZ2VzCiAgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTMyODVfZnVsbCwg
cGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIHRvIGFsbG93IHRoZW0KICB0byBkb2N1bWVudCB0
aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0aXZlcyBp
biBDSS4KCiAgCgpQb3NzaWJsZSBuZXcgaXNzdWVzCi0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgSGVy
ZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBp
biBQYXRjaHdvcmtfMTMyODVfZnVsbDoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgUG9zc2li
bGUgcmVncmVzc2lvbnMgIyMjIwoKICAqIGlndEBnZW1fcGVyc2lzdGVudF9yZWxvY3NAZm9ya2Vk
LWludGVycnVwdGlibGUtdGhyYXNoLWluYWN0aXZlOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAg
IFtQQVNTXVsxXSAtPiBbRE1FU0ctV0FSTl1bMl0KICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjcyL3NoYXJkLWljbGI0L2lndEBnZW1fcGVy
c2lzdGVudF9yZWxvY3NAZm9ya2VkLWludGVycnVwdGlibGUtdGhyYXNoLWluYWN0aXZlLmh0bWwK
ICAgWzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xMzI4NS9zaGFyZC1pY2xiOC9pZ3RAZ2VtX3BlcnNpc3RlbnRfcmVsb2NzQGZvcmtlZC1pbnRl
cnJ1cHRpYmxlLXRocmFzaC1pbmFjdGl2ZS5odG1sCgogIApLbm93biBpc3N1ZXMKLS0tLS0tLS0t
LS0tCgogIEhlcmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNod29ya18xMzI4NV9mdWxs
IHRoYXQgY29tZSBmcm9tIGtub3duIGlzc3VlczoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMg
SXNzdWVzIGhpdCAjIyMjCgogICogaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHZjczAtczM6CiAgICAt
IHNoYXJkLWtibDogICAgICAgICAgW1BBU1NdWzNdIC0+IFtETUVTRy1XQVJOXVs0XSAoW2ZkbyMx
MDg1NjZdKQogICBbM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzYyNzIvc2hhcmQta2JsMS9pZ3RAZ2VtX2N0eF9pc29sYXRpb25AdmNzMC1zMy5odG1s
CiAgIFs0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTMyODUvc2hhcmQta2JsNC9pZ3RAZ2VtX2N0eF9pc29sYXRpb25AdmNzMC1zMy5odG1sCgog
ICogaWd0QGdlbV9laW9AaW4tZmxpZ2h0LTF1czoKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBb
UEFTU11bNV0gLT4gW0RNRVNHLVdBUk5dWzZdIChbZmRvIzExMDkxMyBdKQogICBbNV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyNzIvc2hhcmQta2Js
MS9pZ3RAZ2VtX2Vpb0Bpbi1mbGlnaHQtMXVzLmh0bWwKICAgWzZdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI4NS9zaGFyZC1rYmw0L2lndEBn
ZW1fZWlvQGluLWZsaWdodC0xdXMuaHRtbAoKICAqIGlndEBnZW1fZWlvQGluLWZsaWdodC1zdXNw
ZW5kOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVs3XSAtPiBbRkFJTF1bOF0gKFtm
ZG8jMTEwNjY3XSkKICAgWzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV82MjcyL3NoYXJkLXNrbDQvaWd0QGdlbV9laW9AaW4tZmxpZ2h0LXN1c3BlbmQu
aHRtbAogICBbOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzEzMjg1L3NoYXJkLXNrbDcvaWd0QGdlbV9laW9AaW4tZmxpZ2h0LXN1c3BlbmQuaHRt
bAoKICAqIGlndEBnZW1fbW1hcF9ndHRAaGFuZzoKICAgIC0gc2hhcmQtc25iOiAgICAgICAgICBb
UEFTU11bOV0gLT4gW0lOQ09NUExFVEVdWzEwXSAoW2ZkbyMxMDU0MTFdKQogICBbOV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyNzIvc2hhcmQtc25i
Ny9pZ3RAZ2VtX21tYXBfZ3R0QGhhbmcuaHRtbAogICBbMTBdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI4NS9zaGFyZC1zbmI3L2lndEBnZW1f
bW1hcF9ndHRAaGFuZy5odG1sCgogICogaWd0QGdlbV9wZXJzaXN0ZW50X3JlbG9jc0Bmb3JrZWQt
ZmF1bHRpbmctcmVsb2MtdGhyYXNoaW5nOgogICAgLSBzaGFyZC1zbmI6ICAgICAgICAgIFtQQVNT
XVsxMV0gLT4gW0RNRVNHLVdBUk5dWzEyXSAoW2ZkbyMxMTA3ODldIC8gW2ZkbyMxMTA5MTMgXSkK
ICAgWzExXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NjI3Mi9zaGFyZC1zbmIxL2lndEBnZW1fcGVyc2lzdGVudF9yZWxvY3NAZm9ya2VkLWZhdWx0aW5n
LXJlbG9jLXRocmFzaGluZy5odG1sCiAgIFsxMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMjg1L3NoYXJkLXNuYjcvaWd0QGdlbV9wZXJzaXN0
ZW50X3JlbG9jc0Bmb3JrZWQtZmF1bHRpbmctcmVsb2MtdGhyYXNoaW5nLmh0bWwKCiAgKiBpZ3RA
Z2VtX3BlcnNpc3RlbnRfcmVsb2NzQGZvcmtlZC1pbnRlcnJ1cHRpYmxlLWZhdWx0aW5nLXJlbG9j
LXRocmFzaGluZzoKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbUEFTU11bMTNdIC0+IFtETUVT
Ry1XQVJOXVsxNF0gKFtmZG8jMTEwOTEzIF0pICsyIHNpbWlsYXIgaXNzdWVzCiAgIFsxM106IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyNzIvc2hhcmQt
YXBsNy9pZ3RAZ2VtX3BlcnNpc3RlbnRfcmVsb2NzQGZvcmtlZC1pbnRlcnJ1cHRpYmxlLWZhdWx0
aW5nLXJlbG9jLXRocmFzaGluZy5odG1sCiAgIFsxNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMjg1L3NoYXJkLWFwbDUvaWd0QGdlbV9wZXJz
aXN0ZW50X3JlbG9jc0Bmb3JrZWQtaW50ZXJydXB0aWJsZS1mYXVsdGluZy1yZWxvYy10aHJhc2hp
bmcuaHRtbAoKICAqIGlndEBnZW1fcGVyc2lzdGVudF9yZWxvY3NAZm9ya2VkLXRocmFzaGluZzoK
ICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bMTVdIC0+IFtETUVTRy1XQVJOXVsxNl0g
KFtmZG8jMTEwOTEzIF0pICsxIHNpbWlsYXIgaXNzdWUKICAgWzE1XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI3Mi9zaGFyZC1za2w5L2lndEBnZW1f
cGVyc2lzdGVudF9yZWxvY3NAZm9ya2VkLXRocmFzaGluZy5odG1sCiAgIFsxNl06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMjg1L3NoYXJkLXNr
bDEwL2lndEBnZW1fcGVyc2lzdGVudF9yZWxvY3NAZm9ya2VkLXRocmFzaGluZy5odG1sCgogICog
aWd0QGdlbV91bmZlbmNlX2FjdGl2ZV9idWZmZXJzOgogICAgLSBzaGFyZC1nbGs6ICAgICAgICAg
IFtQQVNTXVsxN10gLT4gW0RNRVNHLVdBUk5dWzE4XSAoW2ZkbyMxMTA5MTMgXSkgKzEgc2ltaWxh
ciBpc3N1ZQogICBbMTddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV82MjcyL3NoYXJkLWdsazUvaWd0QGdlbV91bmZlbmNlX2FjdGl2ZV9idWZmZXJzLmh0
bWwKICAgWzE4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTMyODUvc2hhcmQtZ2xrNi9pZ3RAZ2VtX3VuZmVuY2VfYWN0aXZlX2J1ZmZlcnMuaHRt
bAoKICAqIGlndEBpOTE1X3N1c3BlbmRAZGVidWdmcy1yZWFkZXI6CiAgICAtIHNoYXJkLWFwbDog
ICAgICAgICAgW1BBU1NdWzE5XSAtPiBbRE1FU0ctV0FSTl1bMjBdIChbZmRvIzEwODU2Nl0pICsz
IHNpbWlsYXIgaXNzdWVzCiAgIFsxOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzYyNzIvc2hhcmQtYXBsOC9pZ3RAaTkxNV9zdXNwZW5kQGRlYnVnZnMt
cmVhZGVyLmh0bWwKICAgWzIwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTMyODUvc2hhcmQtYXBsMi9pZ3RAaTkxNV9zdXNwZW5kQGRlYnVnZnMt
cmVhZGVyLmh0bWwKCiAgKiBpZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1hLWN1cnNvci0yNTZ4MjU2
LW9mZnNjcmVlbjoKICAgIC0gc2hhcmQtc25iOiAgICAgICAgICBbUEFTU11bMjFdIC0+IFtTS0lQ
XVsyMl0gKFtmZG8jMTA5MjcxXSkgKzEgc2ltaWxhciBpc3N1ZQogICBbMjFdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjcyL3NoYXJkLXNuYjIvaWd0
QGttc19jdXJzb3JfY3JjQHBpcGUtYS1jdXJzb3ItMjU2eDI1Ni1vZmZzY3JlZW4uaHRtbAogICBb
MjJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
MzI4NS9zaGFyZC1zbmI1L2lndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWEtY3Vyc29yLTI1NngyNTYt
b2Zmc2NyZWVuLmh0bWwKCiAgKiBpZ3RAa21zX2RyYXdfY3JjQGRyYXctbWV0aG9kLXJnYjU2NS1y
ZW5kZXIteXRpbGVkOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVsyM10gLT4gW0ZB
SUxdWzI0XSAoW2ZkbyMxMDMxODRdIC8gW2ZkbyMxMDMyMzJdKQogICBbMjNdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjcyL3NoYXJkLXNrbDEvaWd0
QGttc19kcmF3X2NyY0BkcmF3LW1ldGhvZC1yZ2I1NjUtcmVuZGVyLXl0aWxlZC5odG1sCiAgIFsy
NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEz
Mjg1L3NoYXJkLXNrbDEvaWd0QGttc19kcmF3X2NyY0BkcmF3LW1ldGhvZC1yZ2I1NjUtcmVuZGVy
LXl0aWxlZC5odG1sCgogICogaWd0QGttc19mbGlwQGZsaXAtdnMtZXhwaXJlZC12YmxhbmstaW50
ZXJydXB0aWJsZToKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbUEFTU11bMjVdIC0+IFtGQUlM
XVsyNl0gKFtmZG8jMTAyODg3XSAvIFtmZG8jMTA1MzYzXSkKICAgWzI1XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI3Mi9zaGFyZC1hcGw4L2lndEBr
bXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rLWludGVycnVwdGlibGUuaHRtbAogICBbMjZd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI4
NS9zaGFyZC1hcGwzL2lndEBrbXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rLWludGVycnVw
dGlibGUuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmQ6CiAgICAtIHNoYXJk
LWhzdzogICAgICAgICAgW1BBU1NdWzI3XSAtPiBbSU5DT01QTEVURV1bMjhdIChbZmRvIzEwMzU0
MF0pCiAgIFsyN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzYyNzIvc2hhcmQtaHN3Ny9pZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLmh0bWwKICAg
WzI4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTMyODUvc2hhcmQtaHN3Mi9pZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLmh0bWwKCiAgKiBp
Z3RAa21zX2ZsaXBfdGlsaW5nQGZsaXAtY2hhbmdlcy10aWxpbmcteWY6CiAgICAtIHNoYXJkLXNr
bDogICAgICAgICAgW1BBU1NdWzI5XSAtPiBbRkFJTF1bMzBdIChbZmRvIzEwODIyOF0gLyBbZmRv
IzEwODMwM10pCiAgIFsyOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzYyNzIvc2hhcmQtc2tsMi9pZ3RAa21zX2ZsaXBfdGlsaW5nQGZsaXAtY2hhbmdl
cy10aWxpbmcteWYuaHRtbAogICBbMzBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xMzI4NS9zaGFyZC1za2wzL2lndEBrbXNfZmxpcF90aWxpbmdA
ZmxpcC1jaGFuZ2VzLXRpbGluZy15Zi5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFj
a2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tY3VyLWluZGZiLWRyYXctcmVuZGVyOgogICAgLSBzaGFy
ZC1pY2xiOiAgICAgICAgIFtQQVNTXVszMV0gLT4gW0ZBSUxdWzMyXSAoW2ZkbyMxMDMxNjddKSAr
NSBzaW1pbGFyIGlzc3VlcwogICBbMzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82MjcyL3NoYXJkLWljbGI4L2lndEBrbXNfZnJvbnRidWZmZXJfdHJh
Y2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLWN1ci1pbmRmYi1kcmF3LXJlbmRlci5odG1sCiAgIFsz
Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEz
Mjg1L3NoYXJkLWljbGI2L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXBy
aW1zY3JuLWN1ci1pbmRmYi1kcmF3LXJlbmRlci5odG1sCgogICogaWd0QGttc19wbGFuZV9hbHBo
YV9ibGVuZEBwaXBlLWMtY29uc3RhbnQtYWxwaGEtbWluOgogICAgLSBzaGFyZC1za2w6ICAgICAg
ICAgIFtQQVNTXVszM10gLT4gW0ZBSUxdWzM0XSAoW2ZkbyMxMDgxNDVdKQogICBbMzNdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjcyL3NoYXJkLXNr
bDIvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWMtY29uc3RhbnQtYWxwaGEtbWluLmh0
bWwKICAgWzM0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTMyODUvc2hhcmQtc2tsMy9pZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYy1j
b25zdGFudC1hbHBoYS1taW4uaHRtbAoKICAqIGlndEBrbXNfcGxhbmVfbG93cmVzQHBpcGUtYS10
aWxpbmcteDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMzVdIC0+IFtGQUlMXVsz
Nl0gKFtmZG8jMTAzMTY2XSkKICAgWzM1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNjI3Mi9zaGFyZC1pY2xiMy9pZ3RAa21zX3BsYW5lX2xvd3Jlc0Bw
aXBlLWEtdGlsaW5nLXguaHRtbAogICBbMzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI4NS9zaGFyZC1pY2xiNC9pZ3RAa21zX3BsYW5lX2xv
d3Jlc0BwaXBlLWEtdGlsaW5nLXguaHRtbAoKICAqIGlndEBrbXNfcHNyQHBzcjJfcHJpbWFyeV9t
bWFwX2d0dDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMzddIC0+IFtTS0lQXVsz
OF0gKFtmZG8jMTA5NDQxXSkKICAgWzM3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNjI3Mi9zaGFyZC1pY2xiMi9pZ3RAa21zX3BzckBwc3IyX3ByaW1h
cnlfbW1hcF9ndHQuaHRtbAogICBbMzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xMzI4NS9zaGFyZC1pY2xiMS9pZ3RAa21zX3BzckBwc3IyX3By
aW1hcnlfbW1hcF9ndHQuaHRtbAoKICAqIGlndEBrbXNfc2V0bW9kZUBiYXNpYzoKICAgIC0gc2hh
cmQtYXBsOiAgICAgICAgICBbUEFTU11bMzldIC0+IFtGQUlMXVs0MF0gKFtmZG8jOTk5MTJdKQog
ICBbMzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82
MjcyL3NoYXJkLWFwbDEvaWd0QGttc19zZXRtb2RlQGJhc2ljLmh0bWwKICAgWzQwXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMyODUvc2hhcmQt
YXBsNC9pZ3RAa21zX3NldG1vZGVAYmFzaWMuaHRtbAoKICAKIyMjIyBQb3NzaWJsZSBmaXhlcyAj
IyMjCgogICogaWd0QGdlbV9laW9AaW4tZmxpZ2h0LWludGVybmFsLTEwbXM6CiAgICAtIHNoYXJk
LWdsazogICAgICAgICAgW0RNRVNHLVdBUk5dWzQxXSAoW2ZkbyMxMTA5MTMgXSkgLT4gW1BBU1Nd
WzQyXQogICBbNDFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82MjcyL3NoYXJkLWdsazMvaWd0QGdlbV9laW9AaW4tZmxpZ2h0LWludGVybmFsLTEwbXMu
aHRtbAogICBbNDJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xMzI4NS9zaGFyZC1nbGs5L2lndEBnZW1fZWlvQGluLWZsaWdodC1pbnRlcm5hbC0x
MG1zLmh0bWwKCiAgKiBpZ3RAZ2VtX2Vpb0B3YWl0LXdlZGdlLTEwbXM6CiAgICAtIHNoYXJkLWFw
bDogICAgICAgICAgW0RNRVNHLVdBUk5dWzQzXSAoW2ZkbyMxMTA5MTMgXSkgLT4gW1BBU1NdWzQ0
XSArMiBzaW1pbGFyIGlzc3VlcwogICBbNDNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV82MjcyL3NoYXJkLWFwbDgvaWd0QGdlbV9laW9Ad2FpdC13ZWRn
ZS0xMG1zLmh0bWwKICAgWzQ0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTMyODUvc2hhcmQtYXBsMi9pZ3RAZ2VtX2Vpb0B3YWl0LXdlZGdlLTEw
bXMuaHRtbAogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtETUVTRy1XQVJOXVs0NV0gKFtmZG8j
MTEwOTEzIF0pIC0+IFtQQVNTXVs0Nl0gKzEgc2ltaWxhciBpc3N1ZQogICBbNDVdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjcyL3NoYXJkLXNrbDcv
aWd0QGdlbV9laW9Ad2FpdC13ZWRnZS0xMG1zLmh0bWwKICAgWzQ2XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMyODUvc2hhcmQtc2tsMi9pZ3RA
Z2VtX2Vpb0B3YWl0LXdlZGdlLTEwbXMuaHRtbAoKICAqIGlndEBnZW1fZmVuY2VfdGhyYXNoQGJv
LXdyaXRlLXZlcmlmeS10aHJlYWRlZC15OgogICAgLSBzaGFyZC1oc3c6ICAgICAgICAgIFtJTkNP
TVBMRVRFXVs0N10gKFtmZG8jMTAzNTQwXSkgLT4gW1BBU1NdWzQ4XQogICBbNDddOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjcyL3NoYXJkLWhzdzYv
aWd0QGdlbV9mZW5jZV90aHJhc2hAYm8td3JpdGUtdmVyaWZ5LXRocmVhZGVkLXkuaHRtbAogICBb
NDhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
MzI4NS9zaGFyZC1oc3c3L2lndEBnZW1fZmVuY2VfdGhyYXNoQGJvLXdyaXRlLXZlcmlmeS10aHJl
YWRlZC15Lmh0bWwKCiAgKiBpZ3RAZ2VtX3BwZ3R0QGJsdC12cy1yZW5kZXItY3R4MDoKICAgIC0g
c2hhcmQtaWNsYjogICAgICAgICBbRE1FU0ctV0FSTl1bNDldIChbZmRvIzExMDkxMyBdKSAtPiBb
UEFTU11bNTBdCiAgIFs0OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzYyNzIvc2hhcmQtaWNsYjYvaWd0QGdlbV9wcGd0dEBibHQtdnMtcmVuZGVyLWN0
eDAuaHRtbAogICBbNTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xMzI4NS9zaGFyZC1pY2xiNC9pZ3RAZ2VtX3BwZ3R0QGJsdC12cy1yZW5kZXIt
Y3R4MC5odG1sCgogICogaWd0QGdlbV91c2VycHRyX2JsaXRzQG1hcC1maXhlZC1pbnZhbGlkYXRl
LW92ZXJsYXAtYnVzeToKICAgIC0gc2hhcmQtaHN3OiAgICAgICAgICBbRE1FU0ctV0FSTl1bNTFd
IChbZmRvIzExMDkxMyBdKSAtPiBbUEFTU11bNTJdICsxIHNpbWlsYXIgaXNzdWUKICAgWzUxXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI3Mi9zaGFy
ZC1oc3c3L2lndEBnZW1fdXNlcnB0cl9ibGl0c0BtYXAtZml4ZWQtaW52YWxpZGF0ZS1vdmVybGFw
LWJ1c3kuaHRtbAogICBbNTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xMzI4NS9zaGFyZC1oc3c0L2lndEBnZW1fdXNlcnB0cl9ibGl0c0BtYXAt
Zml4ZWQtaW52YWxpZGF0ZS1vdmVybGFwLWJ1c3kuaHRtbAogICAgLSBzaGFyZC1rYmw6ICAgICAg
ICAgIFtETUVTRy1XQVJOXVs1M10gKFtmZG8jMTEwOTEzIF0pIC0+IFtQQVNTXVs1NF0KICAgWzUz
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI3Mi9z
aGFyZC1rYmwxL2lndEBnZW1fdXNlcnB0cl9ibGl0c0BtYXAtZml4ZWQtaW52YWxpZGF0ZS1vdmVy
bGFwLWJ1c3kuaHRtbAogICBbNTRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xMzI4NS9zaGFyZC1rYmwzL2lndEBnZW1fdXNlcnB0cl9ibGl0c0Bt
YXAtZml4ZWQtaW52YWxpZGF0ZS1vdmVybGFwLWJ1c3kuaHRtbAoKICAqIGlndEBpOTE1X3BtX3Jj
Nl9yZXNpZGVuY3lAcmM2LWFjY3VyYWN5OgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtTS0lQ
XVs1NV0gKFtmZG8jMTA5MjcxXSkgLT4gW1BBU1NdWzU2XQogICBbNTVdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjcyL3NoYXJkLWtibDIvaWd0QGk5
MTVfcG1fcmM2X3Jlc2lkZW5jeUByYzYtYWNjdXJhY3kuaHRtbAogICBbNTZdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI4NS9zaGFyZC1rYmw3
L2lndEBpOTE1X3BtX3JjNl9yZXNpZGVuY3lAcmM2LWFjY3VyYWN5Lmh0bWwKCiAgKiBpZ3RAaTkx
NV9zdXNwZW5kQGZlbmNlLXJlc3RvcmUtdGlsZWQydW50aWxlZDoKICAgIC0gc2hhcmQtYXBsOiAg
ICAgICAgICBbRE1FU0ctV0FSTl1bNTddIChbZmRvIzEwODU2Nl0pIC0+IFtQQVNTXVs1OF0gKzMg
c2ltaWxhciBpc3N1ZXMKICAgWzU3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNjI3Mi9zaGFyZC1hcGwzL2lndEBpOTE1X3N1c3BlbmRAZmVuY2UtcmVz
dG9yZS10aWxlZDJ1bnRpbGVkLmh0bWwKICAgWzU4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMyODUvc2hhcmQtYXBsMS9pZ3RAaTkxNV9zdXNw
ZW5kQGZlbmNlLXJlc3RvcmUtdGlsZWQydW50aWxlZC5odG1sCgogICogaWd0QGttc19kcmF3X2Ny
Y0BkcmF3LW1ldGhvZC14cmdiODg4OC1tbWFwLXdjLXl0aWxlZDoKICAgIC0gc2hhcmQtaWNsYjog
ICAgICAgICBbRE1FU0ctV0FSTl1bNTldIC0+IFtQQVNTXVs2MF0KICAgWzU5XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI3Mi9zaGFyZC1pY2xiMi9p
Z3RAa21zX2RyYXdfY3JjQGRyYXctbWV0aG9kLXhyZ2I4ODg4LW1tYXAtd2MteXRpbGVkLmh0bWwK
ICAgWzYwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTMyODUvc2hhcmQtaWNsYjEvaWd0QGttc19kcmF3X2NyY0BkcmF3LW1ldGhvZC14cmdiODg4
OC1tbWFwLXdjLXl0aWxlZC5odG1sCgogICogaWd0QGttc19mbGlwQGRwbXMtb2ZmLWNvbmZ1c2lv
bjoKICAgIC0gc2hhcmQtc25iOiAgICAgICAgICBbSU5DT01QTEVURV1bNjFdIChbZmRvIzEwNTQx
MV0pIC0+IFtQQVNTXVs2Ml0KICAgWzYxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNjI3Mi9zaGFyZC1zbmI0L2lndEBrbXNfZmxpcEBkcG1zLW9mZi1j
b25mdXNpb24uaHRtbAogICBbNjJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xMzI4NS9zaGFyZC1zbmIyL2lndEBrbXNfZmxpcEBkcG1zLW9mZi1j
b25mdXNpb24uaHRtbAoKICAqIGlndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmQtaW50ZXJydXB0
aWJsZToKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbSU5DT01QTEVURV1bNjNdIChbZmRvIzEw
OTUwN10pIC0+IFtQQVNTXVs2NF0KICAgWzYzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI3Mi9zaGFyZC1za2wxMC9pZ3RAa21zX2ZsaXBAZmxpcC12
cy1zdXNwZW5kLWludGVycnVwdGlibGUuaHRtbAogICBbNjRdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI4NS9zaGFyZC1za2w1L2lndEBrbXNf
ZmxpcEBmbGlwLXZzLXN1c3BlbmQtaW50ZXJydXB0aWJsZS5odG1sCgogICogaWd0QGttc19mcm9u
dGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtb2Zmc2NyZW4tcHJpLWluZGZiLWRyYXctcmVuZGVyOgog
ICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtGQUlMXVs2NV0gKFtmZG8jMTAzMTY3XSkgLT4gW1BB
U1NdWzY2XQogICBbNjVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV82MjcyL3NoYXJkLWljbGI1L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJj
LTFwLW9mZnNjcmVuLXByaS1pbmRmYi1kcmF3LXJlbmRlci5odG1sCiAgIFs2Nl06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMjg1L3NoYXJkLWlj
bGIyL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLW9mZnNjcmVuLXByaS1pbmRm
Yi1kcmF3LXJlbmRlci5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMt
c3VzcGVuZDoKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbRE1FU0ctV0FSTl1bNjddIChbZmRv
IzEwODU2Nl0pIC0+IFtQQVNTXVs2OF0KICAgWzY3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI3Mi9zaGFyZC1rYmwxL2lndEBrbXNfZnJvbnRidWZm
ZXJfdHJhY2tpbmdAZmJjLXN1c3BlbmQuaHRtbAogICBbNjhdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI4NS9zaGFyZC1rYmwzL2lndEBrbXNf
ZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLXN1c3BlbmQuaHRtbAogICAgLSBzaGFyZC1za2w6ICAg
ICAgICAgIFtJTkNPTVBMRVRFXVs2OV0gKFtmZG8jMTA0MTA4XSkgLT4gW1BBU1NdWzcwXQogICBb
NjldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82Mjcy
L3NoYXJkLXNrbDUvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtc3VzcGVuZC5odG1s
CiAgIFs3MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEzMjg1L3NoYXJkLXNrbDIvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtc3Vz
cGVuZC5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItcmdiNTY1
LWRyYXctbW1hcC1ndHQ6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW0ZBSUxdWzcxXSAoW2Zk
byMxMDkyNDddKSAtPiBbUEFTU11bNzJdCiAgIFs3MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyNzIvc2hhcmQtaWNsYjIvaWd0QGttc19mcm9udGJ1
ZmZlcl90cmFja2luZ0BmYmNwc3ItcmdiNTY1LWRyYXctbW1hcC1ndHQuaHRtbAogICBbNzJdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI4NS9z
aGFyZC1pY2xiMS9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci1yZ2I1NjUtZHJh
dy1tbWFwLWd0dC5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3It
c3VzcGVuZDoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbSU5DT01QTEVURV1bNzNdIChbZmRv
IzEwNDEwOF0gLyBbZmRvIzEwNjk3OF0pIC0+IFtQQVNTXVs3NF0KICAgWzczXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI3Mi9zaGFyZC1za2w1L2ln
dEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLXN1c3BlbmQuaHRtbAogICBbNzRdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI4NS9z
aGFyZC1za2wyL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLXN1c3BlbmQuaHRt
bAoKICAqIGlndEBrbXNfcHNyQHBzcjJfc3ByaXRlX2JsdDoKICAgIC0gc2hhcmQtaWNsYjogICAg
ICAgICBbU0tJUF1bNzVdIChbZmRvIzEwOTQ0MV0pIC0+IFtQQVNTXVs3Nl0gKzQgc2ltaWxhciBp
c3N1ZXMKICAgWzc1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNjI3Mi9zaGFyZC1pY2xiOC9pZ3RAa21zX3BzckBwc3IyX3Nwcml0ZV9ibHQuaHRtbAog
ICBbNzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xMzI4NS9zaGFyZC1pY2xiMi9pZ3RAa21zX3BzckBwc3IyX3Nwcml0ZV9ibHQuaHRtbAoKICAq
IGlndEBwZXJmQG9hLWV4cG9uZW50czoKICAgIC0gc2hhcmQtZ2xrOiAgICAgICAgICBbRkFJTF1b
NzddIChbZmRvIzEwNTQ4M10pIC0+IFtQQVNTXVs3OF0KICAgWzc3XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI3Mi9zaGFyZC1nbGs4L2lndEBwZXJm
QG9hLWV4cG9uZW50cy5odG1sCiAgIFs3OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMjg1L3NoYXJkLWdsazEvaWd0QHBlcmZAb2EtZXhwb25l
bnRzLmh0bWwKCiAgCiMjIyMgV2FybmluZ3MgIyMjIwoKICAqIGlndEBnZW1fZXhlY19zY2hlZHVs
ZUBzZW1hcGhvcmUtcmVzb2x2ZToKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbRE1FU0ctRkFJ
TF1bNzldIC0+IFtGQUlMXVs4MF0gKFtmZG8jMTEwNTE5XSkKICAgWzc5XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI3Mi9zaGFyZC1za2w5L2lndEBn
ZW1fZXhlY19zY2hlZHVsZUBzZW1hcGhvcmUtcmVzb2x2ZS5odG1sCiAgIFs4MF06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMjg1L3NoYXJkLXNr
bDEwL2lndEBnZW1fZXhlY19zY2hlZHVsZUBzZW1hcGhvcmUtcmVzb2x2ZS5odG1sCiAgICAtIHNo
YXJkLWtibDogICAgICAgICAgW0RNRVNHLUZBSUxdWzgxXSAtPiBbRkFJTF1bODJdIChbZmRvIzEx
MDUxOV0pCiAgIFs4MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzYyNzIvc2hhcmQta2JsMy9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAc2VtYXBob3JlLXJl
c29sdmUuaHRtbAogICBbODJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xMzI4NS9zaGFyZC1rYmw2L2lndEBnZW1fZXhlY19zY2hlZHVsZUBzZW1h
cGhvcmUtcmVzb2x2ZS5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMt
MXAtcHJpbXNjcm4tc3ByLWluZGZiLWZ1bGxzY3JlZW46CiAgICAtIHNoYXJkLXNrbDogICAgICAg
ICAgW0ZBSUxdWzgzXSAoW2ZkbyMxMDMxNjddKSAtPiBbRkFJTF1bODRdIChbZmRvIzEwODA0MF0p
CiAgIFs4M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzYyNzIvc2hhcmQtc2tsMi9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1wcmlt
c2Nybi1zcHItaW5kZmItZnVsbHNjcmVlbi5odG1sCiAgIFs4NF06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMjg1L3NoYXJkLXNrbDIvaWd0QGtt
c19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtcHJpbXNjcm4tc3ByLWluZGZiLWZ1bGxzY3Jl
ZW4uaHRtbAoKICAKICBbZmRvIzEwMjg4N106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTEwMjg4NwogIFtmZG8jMTAzMTY2XTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMTY2CiAgW2ZkbyMxMDMxNjddOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMxNjcKICBbZmRvIzEwMzE4
NF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzE4NAog
IFtmZG8jMTAzMjMyXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9MTAzMjMyCiAgW2ZkbyMxMDM1NDBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3No
b3dfYnVnLmNnaT9pZD0xMDM1NDAKICBbZmRvIzEwNDEwOF06IGh0dHBzOi8vYnVncy5mcmVlZGVz
a3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNDEwOAogIFtmZG8jMTA1MzYzXTogaHR0cHM6Ly9i
dWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA1MzYzCiAgW2ZkbyMxMDU0MTFd
OiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDU0MTEKICBb
ZmRvIzEwNTQ4M106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lk
PTEwNTQ4MwogIFtmZG8jMTA2OTc4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93
X2J1Zy5jZ2k/aWQ9MTA2OTc4CiAgW2ZkbyMxMDgwNDBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0
b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDgwNDAKICBbZmRvIzEwODE0NV06IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwODE0NQogIFtmZG8jMTA4MjI4XTog
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4MjI4CiAgW2Zk
byMxMDgzMDNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0x
MDgzMDMKICBbZmRvIzEwODU2Nl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19i
dWcuY2dpP2lkPTEwODU2NgogIFtmZG8jMTA5MjQ3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9w
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5MjQ3CiAgW2ZkbyMxMDkyNzFdOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkyNzEKICBbZmRvIzEwOTQ0MV06IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTQ0MQogIFtmZG8j
MTA5NTA3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5
NTA3CiAgW2ZkbyMxMTA1MTldOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMTA1MTkKICBbZmRvIzExMDY2N106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTExMDY2NwogIFtmZG8jMTEwNzg5XTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwNzg5CiAgW2ZkbyMxMTA5MTMgXTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwOTEzIAogIFtmZG8j
OTk5MTJdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD05OTkx
MgoKClBhcnRpY2lwYXRpbmcgaG9zdHMgKDEwIC0+IDEwKQotLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KCiAgTm8gY2hhbmdlcyBpbiBwYXJ0aWNpcGF0aW5nIGhvc3RzCgoKQnVpbGQgY2hh
bmdlcwotLS0tLS0tLS0tLS0tCgogICogTGludXg6IENJX0RSTV82MjcyIC0+IFBhdGNod29ya18x
MzI4NQoKICBDSV9EUk1fNjI3MjogMzRiZDVmNWI1NmI4ODJhZjJiNWE1YTdhMGMzNjYwMjJhODcx
ZmY2MCBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIElHVF81
MDU2OiBjN2I3MTdmMDEyNjM3NGEwMmZjODZkZTVlYjVmYjFmM2U3YjMzMzViIEAgZ2l0Oi8vYW5v
bmdpdC5mcmVlZGVza3RvcC5vcmcveG9yZy9hcHAvaW50ZWwtZ3B1LXRvb2xzCiAgUGF0Y2h3b3Jr
XzEzMjg1OiBmMWE5ZTQ4MzMzZDc5NjkzZGEyNTIyODQ2MjliYzQyZWFmMDhjZGQyIEAgZ2l0Oi8v
YW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgcGlnbGl0XzQ1MDk6IGZkYzVh
NGNhMTExMjRhYjg0MTNjNzk4ODg5NmVlYzRjOTczMzY2OTQgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVk
ZXNrdG9wLm9yZy9waWdsaXQKCj09IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI4NS8KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
