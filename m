Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FDD34AECC
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 01:40:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1EB26E273;
	Tue, 18 Jun 2019 23:40:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CCADE6E270;
 Tue, 18 Jun 2019 23:40:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C1333A00E9;
 Tue, 18 Jun 2019 23:40:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 18 Jun 2019 23:40:41 -0000
Message-ID: <20190618234041.30452.27167@emeril.freedesktop.org>
References: <20190618110736.31155-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190618110736.31155-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/?=
 =?utf-8?q?i915/execlists=3A_Detect_cross-contamination_with_GuC?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZXhlY2xpc3RzOiBEZXRlY3Qg
Y3Jvc3MtY29udGFtaW5hdGlvbiB3aXRoIEd1QwpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZy
ZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjIyOTYvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9
PQoKQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNjI5MV9mdWxsIC0+IFBhdGNod29y
a18xMzMyNF9mdWxsCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKkZBSUxVUkUqKgoKICBTZXJpb3VzIHVua25v
d24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTMzMjRfZnVsbCBhYnNvbHV0ZWx5IG5l
ZWQgdG8gYmUKICB2ZXJpZmllZCBtYW51YWxseS4KICAKICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9y
dGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMKICBpbnRyb2R1
Y2VkIGluIFBhdGNod29ya18xMzMyNF9mdWxsLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0g
dG8gYWxsb3cgdGhlbQogIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2gg
d2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLgoKICAKClBvc3NpYmxlIG5ldyBpc3N1
ZXMKLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRo
YXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xMzMyNF9mdWxsOgoKIyMj
IElHVCBjaGFuZ2VzICMjIwoKIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjCgogICogaWd0
QGttc19hdG9taWNfdHJhbnNpdGlvbkBwbGFuZS11c2UtYWZ0ZXItbm9uYmxvY2tpbmctdW5iaW5k
LWZlbmNpbmc6CiAgICAtIHNoYXJkLWhzdzogICAgICAgICAgW1BBU1NdWzFdIC0+IFtGQUlMXVsy
XQogICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzYyOTEvc2hhcmQtaHN3NC9pZ3RAa21zX2F0b21pY190cmFuc2l0aW9uQHBsYW5lLXVzZS1hZnRl
ci1ub25ibG9ja2luZy11bmJpbmQtZmVuY2luZy5odG1sCiAgIFsyXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzMjQvc2hhcmQtaHN3MS9pZ3RA
a21zX2F0b21pY190cmFuc2l0aW9uQHBsYW5lLXVzZS1hZnRlci1ub25ibG9ja2luZy11bmJpbmQt
ZmVuY2luZy5odG1sCgogIApLbm93biBpc3N1ZXMKLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRo
ZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNod29ya18xMzMyNF9mdWxsIHRoYXQgY29tZSBmcm9tIGtu
b3duIGlzc3VlczoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgSXNzdWVzIGhpdCAjIyMjCgog
ICogaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHJjczAtczM6CiAgICAtIHNoYXJkLWFwbDogICAgICAg
ICAgW1BBU1NdWzNdIC0+IFtETUVTRy1XQVJOXVs0XSAoW2ZkbyMxMDg1NjZdKSArMiBzaW1pbGFy
IGlzc3VlcwogICBbM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzYyOTEvc2hhcmQtYXBsNi9pZ3RAZ2VtX2N0eF9pc29sYXRpb25AcmNzMC1zMy5odG1s
CiAgIFs0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTMzMjQvc2hhcmQtYXBsNy9pZ3RAZ2VtX2N0eF9pc29sYXRpb25AcmNzMC1zMy5odG1sCgog
ICogaWd0QGdlbV9laW9AaW4tZmxpZ2h0LTEwbXM6CiAgICAtIHNoYXJkLWtibDogICAgICAgICAg
W1BBU1NdWzVdIC0+IFtETUVTRy1XQVJOXVs2XSAoW2ZkbyMxMTA5MTMgXSkgKzIgc2ltaWxhciBp
c3N1ZXMKICAgWzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82MjkxL3NoYXJkLWtibDYvaWd0QGdlbV9laW9AaW4tZmxpZ2h0LTEwbXMuaHRtbAogICBb
Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEz
MzI0L3NoYXJkLWtibDYvaWd0QGdlbV9laW9AaW4tZmxpZ2h0LTEwbXMuaHRtbAoKICAqIGlndEBn
ZW1fZXhlY19ub3BAYmFzaWMtcGFyYWxsZWw6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BB
U1NdWzddIC0+IFtJTkNPTVBMRVRFXVs4XSAoW2ZkbyMxMDc3MTNdKQogICBbN106IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyOTEvc2hhcmQtaWNsYjQv
aWd0QGdlbV9leGVjX25vcEBiYXNpYy1wYXJhbGxlbC5odG1sCiAgIFs4XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzMjQvc2hhcmQtaWNsYjgv
aWd0QGdlbV9leGVjX25vcEBiYXNpYy1wYXJhbGxlbC5odG1sCgogICogaWd0QGdlbV9tbWFwX2d0
dEBoYW5nOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtQQVNTXVs5XSAtPiBbRE1FU0ctV0FS
Tl1bMTBdIChbZmRvIzExMDkxMyBdKSArMiBzaW1pbGFyIGlzc3VlcwogICBbOV06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyOTEvc2hhcmQtYXBsNC9p
Z3RAZ2VtX21tYXBfZ3R0QGhhbmcuaHRtbAogICBbMTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzMyNC9zaGFyZC1hcGw3L2lndEBnZW1fbW1h
cF9ndHRAaGFuZy5odG1sCgogICogaWd0QGdlbV9wZXJzaXN0ZW50X3JlbG9jc0Bmb3JrZWQtaW50
ZXJydXB0aWJsZS1mYXVsdGluZy1yZWxvYy10aHJhc2gtaW5hY3RpdmU6CiAgICAtIHNoYXJkLXNu
YjogICAgICAgICAgW1BBU1NdWzExXSAtPiBbSU5DT01QTEVURV1bMTJdIChbZmRvIzEwNTQxMV0p
CiAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzYyOTEvc2hhcmQtc25iNi9pZ3RAZ2VtX3BlcnNpc3RlbnRfcmVsb2NzQGZvcmtlZC1pbnRlcnJ1
cHRpYmxlLWZhdWx0aW5nLXJlbG9jLXRocmFzaC1pbmFjdGl2ZS5odG1sCiAgIFsxMl06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzI0L3NoYXJk
LXNuYjcvaWd0QGdlbV9wZXJzaXN0ZW50X3JlbG9jc0Bmb3JrZWQtaW50ZXJydXB0aWJsZS1mYXVs
dGluZy1yZWxvYy10aHJhc2gtaW5hY3RpdmUuaHRtbAoKICAqIGlndEBnZW1fcGVyc2lzdGVudF9y
ZWxvY3NAZm9ya2VkLWludGVycnVwdGlibGUtZmF1bHRpbmctcmVsb2MtdGhyYXNoaW5nOgogICAg
LSBzaGFyZC1zbmI6ICAgICAgICAgIFtQQVNTXVsxM10gLT4gW0RNRVNHLVdBUk5dWzE0XSAoW2Zk
byMxMTA3ODldIC8gW2ZkbyMxMTA5MTMgXSkKICAgWzEzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI5MS9zaGFyZC1zbmIyL2lndEBnZW1fcGVyc2lz
dGVudF9yZWxvY3NAZm9ya2VkLWludGVycnVwdGlibGUtZmF1bHRpbmctcmVsb2MtdGhyYXNoaW5n
Lmh0bWwKICAgWzE0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTMzMjQvc2hhcmQtc25iNS9pZ3RAZ2VtX3BlcnNpc3RlbnRfcmVsb2NzQGZvcmtl
ZC1pbnRlcnJ1cHRpYmxlLWZhdWx0aW5nLXJlbG9jLXRocmFzaGluZy5odG1sCgogICogaWd0QGdl
bV9zb2Z0cGluQG5vcmVsb2MtczM6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzE1
XSAtPiBbSU5DT01QTEVURV1bMTZdIChbZmRvIzEwNDEwOF0pCiAgIFsxNV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyOTEvc2hhcmQtc2tsNS9pZ3RA
Z2VtX3NvZnRwaW5Abm9yZWxvYy1zMy5odG1sCiAgIFsxNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzI0L3NoYXJkLXNrbDQvaWd0QGdlbV9z
b2Z0cGluQG5vcmVsb2MtczMuaHRtbAoKICAqIGlndEBnZW1fdXNlcnB0cl9ibGl0c0BtYXAtZml4
ZWQtaW52YWxpZGF0ZS1idXN5OgogICAgLSBzaGFyZC1zbmI6ICAgICAgICAgIFtQQVNTXVsxN10g
LT4gW0RNRVNHLVdBUk5dWzE4XSAoW2ZkbyMxMTA5MTMgXSkKICAgWzE3XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI5MS9zaGFyZC1zbmIyL2lndEBn
ZW1fdXNlcnB0cl9ibGl0c0BtYXAtZml4ZWQtaW52YWxpZGF0ZS1idXN5Lmh0bWwKICAgWzE4XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzMjQv
c2hhcmQtc25iNC9pZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAbWFwLWZpeGVkLWludmFsaWRhdGUtYnVz
eS5odG1sCgogICogaWd0QGttc19jdXJzb3JfY3JjQHBpcGUtYi1jdXJzb3ItNjR4MjEtc2xpZGlu
ZzoKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbUEFTU11bMTldIC0+IFtGQUlMXVsyMF0gKFtm
ZG8jMTAzMjMyXSkKICAgWzE5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNjI5MS9zaGFyZC1rYmwxL2lndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWItY3Vy
c29yLTY0eDIxLXNsaWRpbmcuaHRtbAogICBbMjBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzMyNC9zaGFyZC1rYmwzL2lndEBrbXNfY3Vyc29y
X2NyY0BwaXBlLWItY3Vyc29yLTY0eDIxLXNsaWRpbmcuaHRtbAoKICAqIGlndEBrbXNfY3Vyc29y
X2NyY0BwaXBlLWItY3Vyc29yLXN1c3BlbmQ6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BB
U1NdWzIxXSAtPiBbSU5DT01QTEVURV1bMjJdIChbZmRvIzExMDc0MV0pCiAgIFsyMV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyOTEvc2hhcmQtc2ts
NC9pZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1iLWN1cnNvci1zdXNwZW5kLmh0bWwKICAgWzIyXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzMjQv
c2hhcmQtc2tsOC9pZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1iLWN1cnNvci1zdXNwZW5kLmh0bWwK
CiAgKiBpZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1jLWN1cnNvci02NHgyMS1vZmZzY3JlZW46CiAg
ICAtIHNoYXJkLWtibDogICAgICAgICAgW1BBU1NdWzIzXSAtPiBbSU5DT01QTEVURV1bMjRdIChb
ZmRvIzEwMzY2NV0pCiAgIFsyM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzYyOTEvc2hhcmQta2JsMy9pZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1jLWN1
cnNvci02NHgyMS1vZmZzY3JlZW4uaHRtbAogICBbMjRdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzMyNC9zaGFyZC1rYmwxL2lndEBrbXNfY3Vy
c29yX2NyY0BwaXBlLWMtY3Vyc29yLTY0eDIxLW9mZnNjcmVlbi5odG1sCgogICogaWd0QGttc19j
dXJzb3JfY3JjQHBpcGUtYy1jdXJzb3ItNjR4MjEtb25zY3JlZW46CiAgICAtIHNoYXJkLXNrbDog
ICAgICAgICAgW1BBU1NdWzI1XSAtPiBbRkFJTF1bMjZdIChbZmRvIzEwMzIzMl0pCiAgIFsyNV06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyOTEvc2hh
cmQtc2tsNi9pZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1jLWN1cnNvci02NHgyMS1vbnNjcmVlbi5o
dG1sCiAgIFsyNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzEzMzI0L3NoYXJkLXNrbDUvaWd0QGttc19jdXJzb3JfY3JjQHBpcGUtYy1jdXJzb3It
NjR4MjEtb25zY3JlZW4uaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJj
LTJwLXNjbmRzY3JuLXNwci1pbmRmYi1kcmF3LXB3cml0ZToKICAgIC0gc2hhcmQtaHN3OiAgICAg
ICAgICBbUEFTU11bMjddIC0+IFtTS0lQXVsyOF0gKFtmZG8jMTA5MjcxXSkgKzI1IHNpbWlsYXIg
aXNzdWVzCiAgIFsyN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzYyOTEvc2hhcmQtaHN3Ny9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0y
cC1zY25kc2Nybi1zcHItaW5kZmItZHJhdy1wd3JpdGUuaHRtbAogICBbMjhdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzMyNC9zaGFyZC1oc3cx
L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTJwLXNjbmRzY3JuLXNwci1pbmRmYi1k
cmF3LXB3cml0ZS5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtaW5k
ZmItc2NhbGVkcHJpbWFyeToKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMjldIC0+
IFtGQUlMXVszMF0gKFtmZG8jMTAzMTY3XSkgKzkgc2ltaWxhciBpc3N1ZXMKICAgWzI5XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI5MS9zaGFyZC1p
Y2xiNS9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy1pbmRmYi1zY2FsZWRwcmltYXJ5
Lmh0bWwKICAgWzMwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTMzMjQvc2hhcmQtaWNsYjcvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0Bm
YmMtaW5kZmItc2NhbGVkcHJpbWFyeS5odG1sCgogICogaWd0QGttc19wbGFuZV9hbHBoYV9ibGVu
ZEBwaXBlLWMtY29uc3RhbnQtYWxwaGEtbWluOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQ
QVNTXVszMV0gLT4gW0ZBSUxdWzMyXSAoW2ZkbyMxMDgxNDVdKQogICBbMzFdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjkxL3NoYXJkLXNrbDYvaWd0
QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWMtY29uc3RhbnQtYWxwaGEtbWluLmh0bWwKICAg
WzMyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTMzMjQvc2hhcmQtc2tsNS9pZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYy1jb25zdGFu
dC1hbHBoYS1taW4uaHRtbAoKICAqIGlndEBrbXNfcHNyQHBzcjJfc3ByaXRlX21tYXBfZ3R0Ogog
ICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVszM10gLT4gW1NLSVBdWzM0XSAoW2ZkbyMx
MDk0NDFdKSArMSBzaW1pbGFyIGlzc3VlCiAgIFszM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyOTEvc2hhcmQtaWNsYjIvaWd0QGttc19wc3JAcHNy
Ml9zcHJpdGVfbW1hcF9ndHQuaHRtbAogICBbMzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzMyNC9zaGFyZC1pY2xiNS9pZ3RAa21zX3BzckBw
c3IyX3Nwcml0ZV9tbWFwX2d0dC5odG1sCgogICogaWd0QGttc19zZXRtb2RlQGJhc2ljOgogICAg
LSBzaGFyZC1oc3c6ICAgICAgICAgIFtQQVNTXVszNV0gLT4gW0ZBSUxdWzM2XSAoW2ZkbyM5OTkx
Ml0pCiAgIFszNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzYyOTEvc2hhcmQtaHN3MS9pZ3RAa21zX3NldG1vZGVAYmFzaWMuaHRtbAogICBbMzZdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzMyNC9z
aGFyZC1oc3c0L2lndEBrbXNfc2V0bW9kZUBiYXNpYy5odG1sCgogIAojIyMjIFBvc3NpYmxlIGZp
eGVzICMjIyMKCiAgKiBpZ3RAZ2VtX21tYXBfZ3R0QGhhbmc6CiAgICAtIHNoYXJkLWtibDogICAg
ICAgICAgW0RNRVNHLVdBUk5dWzM3XSAoW2ZkbyMxMTA5MTMgXSkgLT4gW1BBU1NdWzM4XSArMiBz
aW1pbGFyIGlzc3VlcwogICBbMzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV82MjkxL3NoYXJkLWtibDcvaWd0QGdlbV9tbWFwX2d0dEBoYW5nLmh0bWwK
ICAgWzM4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTMzMjQvc2hhcmQta2JsMi9pZ3RAZ2VtX21tYXBfZ3R0QGhhbmcuaHRtbAoKICAqIGlndEBn
ZW1fcGVyc2lzdGVudF9yZWxvY3NAZm9ya2VkLWludGVycnVwdGlibGUtZmF1bHRpbmctcmVsb2Mt
dGhyYXNoaW5nOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtETUVTRy1XQVJOXVszOV0gKFtm
ZG8jMTEwOTEzIF0pIC0+IFtQQVNTXVs0MF0gKzUgc2ltaWxhciBpc3N1ZXMKICAgWzM5XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI5MS9zaGFyZC1h
cGw0L2lndEBnZW1fcGVyc2lzdGVudF9yZWxvY3NAZm9ya2VkLWludGVycnVwdGlibGUtZmF1bHRp
bmctcmVsb2MtdGhyYXNoaW5nLmh0bWwKICAgWzQwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzMjQvc2hhcmQtYXBsNy9pZ3RAZ2VtX3BlcnNp
c3RlbnRfcmVsb2NzQGZvcmtlZC1pbnRlcnJ1cHRpYmxlLWZhdWx0aW5nLXJlbG9jLXRocmFzaGlu
Zy5odG1sCgogICogaWd0QGdlbV9wZXJzaXN0ZW50X3JlbG9jc0Bmb3JrZWQtaW50ZXJydXB0aWJs
ZS10aHJhc2hpbmc6CiAgICAtIHNoYXJkLXNuYjogICAgICAgICAgW0RNRVNHLVdBUk5dWzQxXSAo
W2ZkbyMxMTA3ODldIC8gW2ZkbyMxMTA5MTMgXSkgLT4gW1BBU1NdWzQyXSArMSBzaW1pbGFyIGlz
c3VlCiAgIFs0MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzYyOTEvc2hhcmQtc25iMS9pZ3RAZ2VtX3BlcnNpc3RlbnRfcmVsb2NzQGZvcmtlZC1pbnRl
cnJ1cHRpYmxlLXRocmFzaGluZy5odG1sCiAgIFs0Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzI0L3NoYXJkLXNuYjcvaWd0QGdlbV9wZXJz
aXN0ZW50X3JlbG9jc0Bmb3JrZWQtaW50ZXJydXB0aWJsZS10aHJhc2hpbmcuaHRtbAoKICAqIGln
dEBnZW1fdXNlcnB0cl9ibGl0c0BzeW5jLXVubWFwLWN5Y2xlczoKICAgIC0gc2hhcmQtc25iOiAg
ICAgICAgICBbRE1FU0ctV0FSTl1bNDNdIChbZmRvIzExMDkxMyBdKSAtPiBbUEFTU11bNDRdICsx
IHNpbWlsYXIgaXNzdWUKICAgWzQzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNjI5MS9zaGFyZC1zbmI2L2lndEBnZW1fdXNlcnB0cl9ibGl0c0BzeW5j
LXVubWFwLWN5Y2xlcy5odG1sCiAgIFs0NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzI0L3NoYXJkLXNuYjUvaWd0QGdlbV91c2VycHRyX2Js
aXRzQHN5bmMtdW5tYXAtY3ljbGVzLmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V2
aWN0OgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtJTkNPTVBMRVRFXVs0NV0gKFtmZG8jMTAz
NjY1XSAvIFtmZG8jMTEwOTM4XSkgLT4gW1BBU1NdWzQ2XQogICBbNDVdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjkxL3NoYXJkLWtibDEvaWd0QGk5
MTVfc2VsZnRlc3RAbGl2ZV9ldmljdC5odG1sCiAgIFs0Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzI0L3NoYXJkLWtibDcvaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZV9ldmljdC5odG1sCgogICogaWd0QGttc19jdXJzb3JfY3JjQHBpcGUtYi1j
dXJzb3ItNjR4MjEtc2xpZGluZzoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbRkFJTF1bNDdd
IChbZmRvIzEwMzIzMl0pIC0+IFtQQVNTXVs0OF0KICAgWzQ3XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI5MS9zaGFyZC1za2w1L2lndEBrbXNfY3Vy
c29yX2NyY0BwaXBlLWItY3Vyc29yLTY0eDIxLXNsaWRpbmcuaHRtbAogICBbNDhdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzMyNC9zaGFyZC1z
a2wxL2lndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWItY3Vyc29yLTY0eDIxLXNsaWRpbmcuaHRtbAoK
ICAqIGlndEBrbXNfY3Vyc29yX2xlZ2FjeUBjdXJzb3JiLXZzLWZsaXBiLWF0b21pYzoKICAgIC0g
c2hhcmQtaHN3OiAgICAgICAgICBbU0tJUF1bNDldIChbZmRvIzEwOTI3MV0pIC0+IFtQQVNTXVs1
MF0gKzIwIHNpbWlsYXIgaXNzdWVzCiAgIFs0OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzYyOTEvc2hhcmQtaHN3MS9pZ3RAa21zX2N1cnNvcl9sZWdh
Y3lAY3Vyc29yYi12cy1mbGlwYi1hdG9taWMuaHRtbAogICBbNTBdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzMyNC9zaGFyZC1oc3c0L2lndEBr
bXNfY3Vyc29yX2xlZ2FjeUBjdXJzb3JiLXZzLWZsaXBiLWF0b21pYy5odG1sCgogICogaWd0QGtt
c19mbGlwQGZsaXAtdnMtc3VzcGVuZC1pbnRlcnJ1cHRpYmxlOgogICAgLSBzaGFyZC1rYmw6ICAg
ICAgICAgIFtETUVTRy1XQVJOXVs1MV0gKFtmZG8jMTA4NTY2XSkgLT4gW1BBU1NdWzUyXQogICBb
NTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82Mjkx
L3NoYXJkLWtibDYvaWd0QGttc19mbGlwQGZsaXAtdnMtc3VzcGVuZC1pbnRlcnJ1cHRpYmxlLmh0
bWwKICAgWzUyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTMzMjQvc2hhcmQta2JsNy9pZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLWludGVy
cnVwdGlibGUuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXBy
aS1pbmRmYi1tdWx0aWRyYXc6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW0ZBSUxdWzUzXSAo
W2ZkbyMxMDMxNjddKSAtPiBbUEFTU11bNTRdICs2IHNpbWlsYXIgaXNzdWVzCiAgIFs1M106IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyOTEvc2hhcmQt
aWNsYjQvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtcHJpLWluZGZiLW11bHRp
ZHJhdy5odG1sCiAgIFs1NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzEzMzI0L3NoYXJkLWljbGIzL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tp
bmdAZmJjLTFwLXByaS1pbmRmYi1tdWx0aWRyYXcuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZm
ZXJfdHJhY2tpbmdAZmJjLXN1c3BlbmQ6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0lOQ09N
UExFVEVdWzU1XSAoW2ZkbyMxMDQxMDhdKSAtPiBbUEFTU11bNTZdCiAgIFs1NV06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyOTEvc2hhcmQtc2tsNS9p
Z3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy1zdXNwZW5kLmh0bWwKICAgWzU2XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzMjQvc2hh
cmQtc2tsMS9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy1zdXNwZW5kLmh0bWwKCiAg
KiBpZ3RAa21zX3BzckBzdXNwZW5kOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtJTkNPTVBM
RVRFXVs1N10gKFtmZG8jMTA4OTcyXSkgLT4gW1BBU1NdWzU4XQogICBbNTddOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjkxL3NoYXJkLXNrbDMvaWd0
QGttc19wc3JAc3VzcGVuZC5odG1sCiAgIFs1OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzI0L3NoYXJkLXNrbDcvaWd0QGttc19wc3JAc3Vz
cGVuZC5odG1sCgogICogaWd0QGttc19yb3RhdGlvbl9jcmNAbXVsdGlwbGFuZS1yb3RhdGlvbi1j
cm9wcGluZy10b3A6CiAgICAtIHNoYXJkLWdsazogICAgICAgICAgW0RNRVNHLUZBSUxdWzU5XSAo
W2ZkbyMxMDU3NjNdIC8gW2ZkbyMxMDY1MzhdKSAtPiBbUEFTU11bNjBdCiAgIFs1OV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyOTEvc2hhcmQtZ2xr
Mi9pZ3RAa21zX3JvdGF0aW9uX2NyY0BtdWx0aXBsYW5lLXJvdGF0aW9uLWNyb3BwaW5nLXRvcC5o
dG1sCiAgIFs2MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzEzMzI0L3NoYXJkLWdsazgvaWd0QGttc19yb3RhdGlvbl9jcmNAbXVsdGlwbGFuZS1y
b3RhdGlvbi1jcm9wcGluZy10b3AuaHRtbAoKICAqIGlndEBwZXJmX3BtdUBlbmFibGUtcmFjZS12
Y3MwOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtJTkNPTVBMRVRFXVs2MV0gKFtmZG8jMTAz
OTI3XSkgLT4gW1BBU1NdWzYyXQogICBbNjFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV82MjkxL3NoYXJkLWFwbDIvaWd0QHBlcmZfcG11QGVuYWJsZS1y
YWNlLXZjczAuaHRtbAogICBbNjJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xMzMyNC9zaGFyZC1hcGwxL2lndEBwZXJmX3BtdUBlbmFibGUtcmFj
ZS12Y3MwLmh0bWwKCiAgCiMjIyMgV2FybmluZ3MgIyMjIwoKICAqIGlndEBrbXNfZnJvbnRidWZm
ZXJfdHJhY2tpbmdAZmJjcHNyLTFwLW9mZnNjcmVuLXByaS1pbmRmYi1kcmF3LW1tYXAtZ3R0Ogog
ICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtGQUlMXVs2M10gKFtmZG8jMTAzMTY3XSkgLT4gW0ZB
SUxdWzY0XSAoW2ZkbyMxMDgwNDBdKQogICBbNjNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjkxL3NoYXJkLXNrbDUvaWd0QGttc19mcm9udGJ1ZmZl
cl90cmFja2luZ0BmYmNwc3ItMXAtb2Zmc2NyZW4tcHJpLWluZGZiLWRyYXctbW1hcC1ndHQuaHRt
bAogICBbNjRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xMzMyNC9zaGFyZC1za2wxL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNy
LTFwLW9mZnNjcmVuLXByaS1pbmRmYi1kcmF3LW1tYXAtZ3R0Lmh0bWwKCiAgCiAgW2ZkbyMxMDMx
NjddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMxNjcK
ICBbZmRvIzEwMzIzMl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTEwMzIzMgogIFtmZG8jMTAzNjY1XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTAzNjY1CiAgW2ZkbyMxMDM5MjddOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDM5MjcKICBbZmRvIzEwNDEwOF06IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNDEwOAogIFtmZG8jMTA1NDEx
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA1NDExCiAg
W2ZkbyMxMDU3NjNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMDU3NjMKICBbZmRvIzEwNjUzOF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTEwNjUzOAogIFtmZG8jMTA3NzEzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NzEzCiAgW2ZkbyMxMDgwNDBdOiBodHRwczovL2J1
Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDgwNDAKICBbZmRvIzEwODE0NV06
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwODE0NQogIFtm
ZG8jMTA4NTY2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTA4NTY2CiAgW2ZkbyMxMDg5NzJdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMDg5NzIKICBbZmRvIzEwOTI3MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI3MQogIFtmZG8jMTA5NDQxXTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5NDQxCiAgW2ZkbyMxMTA3NDFdOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA3NDEKICBbZmRv
IzExMDc4OV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEx
MDc4OQogIFtmZG8jMTEwOTEzIF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19i
dWcuY2dpP2lkPTExMDkxMyAKICBbZmRvIzExMDkzOF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDkzOAogIFtmZG8jOTk5MTJdOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD05OTkxMgoKClBhcnRpY2lwYXRpbmcgaG9z
dHMgKDEwIC0+IDEwKQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgTm8gY2hhbmdl
cyBpbiBwYXJ0aWNpcGF0aW5nIGhvc3RzCgoKQnVpbGQgY2hhbmdlcwotLS0tLS0tLS0tLS0tCgog
ICogTGludXg6IENJX0RSTV82MjkxIC0+IFBhdGNod29ya18xMzMyNAoKICBDSV9EUk1fNjI5MTog
MzBhOGRkNjg4YjFlOWI1NmRmNjUwOTc2YjUwNThkYTUwMjJkY2ZiOCBAIGdpdDovL2Fub25naXQu
ZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIElHVF81MDU5OiAxZjY3ZWUwZDA5ZDY1MTNm
NDg3ZjJiZTc0YWFlOTcwMGU3NTUyNThhIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcv
eG9yZy9hcHAvaW50ZWwtZ3B1LXRvb2xzCiAgUGF0Y2h3b3JrXzEzMzI0OiA2Mjg4ZWQyNzFkZjdk
M2ZiYTJkMGVmNDk4OWRkNTFmMGI3ZmM3NzRhIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5v
cmcvZ2Z4LWNpL2xpbnV4CiAgcGlnbGl0XzQ1MDk6IGZkYzVhNGNhMTExMjRhYjg0MTNjNzk4ODg5
NmVlYzRjOTczMzY2OTQgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9waWdsaXQKCj09
IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzMyNC8KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
