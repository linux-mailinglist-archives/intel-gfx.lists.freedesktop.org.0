Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8C3E90A
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2019 19:29:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 250C6891B1;
	Mon, 29 Apr 2019 17:29:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2C7C6891B1;
 Mon, 29 Apr 2019 17:29:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 257DEA0096;
 Mon, 29 Apr 2019 17:29:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 29 Apr 2019 17:29:43 -0000
Message-ID: <20190429172943.31948.70712@emeril.freedesktop.org>
References: <cover.1556540889.git.jani.nikula@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <cover.1556540889.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_the_great_header_refactoring=2C_part_two_=28rev3=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IHRoZSBncmVhdCBoZWFkZXIg
cmVmYWN0b3JpbmcsIHBhcnQgdHdvIChyZXYzKQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZy
ZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjAwNjAvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9
PQoKQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNjAxMl9mdWxsIC0+IFBhdGNod29y
a18xMjg5NF9mdWxsCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKkZBSUxVUkUqKgoKICBTZXJpb3VzIHVua25v
d24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTI4OTRfZnVsbCBhYnNvbHV0ZWx5IG5l
ZWQgdG8gYmUKICB2ZXJpZmllZCBtYW51YWxseS4KICAKICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9y
dGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMKICBpbnRyb2R1
Y2VkIGluIFBhdGNod29ya18xMjg5NF9mdWxsLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0g
dG8gYWxsb3cgdGhlbQogIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2gg
d2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLgoKICAKClBvc3NpYmxlIG5ldyBpc3N1
ZXMKLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRo
YXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xMjg5NF9mdWxsOgoKIyMj
IElHVCBjaGFuZ2VzICMjIwoKIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjCgogICogaWd0
QGttc19wbGFuZV9jdXJzb3JAcGlwZS1jLW92ZXJsYXktc2l6ZS02NDoKICAgIC0gc2hhcmQtc2ts
OiAgICAgICAgICBbUEFTU11bMV0gLT4gW0lOQ09NUExFVEVdWzJdICsxIHNpbWlsYXIgaXNzdWUK
ICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82
MDEyL3NoYXJkLXNrbDUvaWd0QGttc19wbGFuZV9jdXJzb3JAcGlwZS1jLW92ZXJsYXktc2l6ZS02
NC5odG1sCiAgIFsyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTI4OTQvc2hhcmQtc2tsNy9pZ3RAa21zX3BsYW5lX2N1cnNvckBwaXBlLWMtb3Zl
cmxheS1zaXplLTY0Lmh0bWwKCiAgCktub3duIGlzc3VlcwotLS0tLS0tLS0tLS0KCiAgSGVyZSBh
cmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzEyODk0X2Z1bGwgdGhhdCBjb21lIGZy
b20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBJc3N1ZXMgaGl0ICMj
IyMKCiAgKiBpZ3RAZ2VtX2N0eF9wYXJhbUBiYXNpYzoKICAgIC0gc2hhcmQtYXBsOiAgICAgICAg
ICBbUEFTU11bM10gLT4gW0lOQ09NUExFVEVdWzRdIChbZmRvIzEwMzkyN10pICsxIHNpbWlsYXIg
aXNzdWUKICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82MDEyL3NoYXJkLWFwbDcvaWd0QGdlbV9jdHhfcGFyYW1AYmFzaWMuaHRtbAogICBbNF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyODk0
L3NoYXJkLWFwbDEvaWd0QGdlbV9jdHhfcGFyYW1AYmFzaWMuaHRtbAoKICAqIGlndEBnZW1fd29y
a2Fyb3VuZHNAc3VzcGVuZC1yZXN1bWU6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW1BBU1Nd
WzVdIC0+IFtETUVTRy1XQVJOXVs2XSAoW2ZkbyMxMDg1NjZdKSArNSBzaW1pbGFyIGlzc3Vlcwog
ICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYw
MTIvc2hhcmQtYXBsNy9pZ3RAZ2VtX3dvcmthcm91bmRzQHN1c3BlbmQtcmVzdW1lLmh0bWwKICAg
WzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
Mjg5NC9zaGFyZC1hcGw2L2lndEBnZW1fd29ya2Fyb3VuZHNAc3VzcGVuZC1yZXN1bWUuaHRtbAoK
ICAqIGlndEBpOTE1X3BtX3JwbUBzeXN0ZW0tc3VzcGVuZC1tb2Rlc2V0OgogICAgLSBzaGFyZC1z
a2w6ICAgICAgICAgIFtQQVNTXVs3XSAtPiBbSU5DT01QTEVURV1bOF0gKFtmZG8jMTA0MTA4XSAv
IFtmZG8jMTA3ODA3XSkKICAgWzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV82MDEyL3NoYXJkLXNrbDIvaWd0QGk5MTVfcG1fcnBtQHN5c3RlbS1zdXNw
ZW5kLW1vZGVzZXQuaHRtbAogICBbOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzEyODk0L3NoYXJkLXNrbDIvaWd0QGk5MTVfcG1fcnBtQHN5c3Rl
bS1zdXNwZW5kLW1vZGVzZXQuaHRtbAoKICAqIGlndEBrbXNfY3Vyc29yX2NyY0BjdXJzb3ItMTI4
eDEyOC1zdXNwZW5kOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVs5XSAtPiBbSU5D
T01QTEVURV1bMTBdIChbZmRvIzEwNDEwOF0pCiAgIFs5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjAxMi9zaGFyZC1za2w2L2lndEBrbXNfY3Vyc29y
X2NyY0BjdXJzb3ItMTI4eDEyOC1zdXNwZW5kLmh0bWwKICAgWzEwXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI4OTQvc2hhcmQtc2tsMi9pZ3RA
a21zX2N1cnNvcl9jcmNAY3Vyc29yLTEyOHgxMjgtc3VzcGVuZC5odG1sCgogICogaWd0QGttc19j
dXJzb3JfY3JjQGN1cnNvci02NHgyMS1vZmZzY3JlZW46CiAgICAtIHNoYXJkLXNrbDogICAgICAg
ICAgW1BBU1NdWzExXSAtPiBbRkFJTF1bMTJdIChbZmRvIzEwMzIzMl0pCiAgIFsxMV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYwMTIvc2hhcmQtc2ts
Mi9pZ3RAa21zX2N1cnNvcl9jcmNAY3Vyc29yLTY0eDIxLW9mZnNjcmVlbi5odG1sCiAgIFsxMl06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyODk0
L3NoYXJkLXNrbDcvaWd0QGttc19jdXJzb3JfY3JjQGN1cnNvci02NHgyMS1vZmZzY3JlZW4uaHRt
bAoKICAqIGlndEBrbXNfZHJhd19jcmNAZHJhdy1tZXRob2QteHJnYjIxMDEwMTAtbW1hcC13Yy15
dGlsZWQ6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzEzXSAtPiBbRkFJTF1bMTRd
IChbZmRvIzEwMzE4NF0gLyBbZmRvIzEwMzIzMl0pCiAgIFsxM106IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYwMTIvc2hhcmQtc2tsOC9pZ3RAa21zX2Ry
YXdfY3JjQGRyYXctbWV0aG9kLXhyZ2IyMTAxMDEwLW1tYXAtd2MteXRpbGVkLmh0bWwKICAgWzE0
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI4
OTQvc2hhcmQtc2tsMTAvaWd0QGttc19kcmF3X2NyY0BkcmF3LW1ldGhvZC14cmdiMjEwMTAxMC1t
bWFwLXdjLXl0aWxlZC5odG1sCgogICogaWd0QGttc19mbGlwQDJ4LWZsaXAtdnMtZHBtczoKICAg
IC0gc2hhcmQtaHN3OiAgICAgICAgICBbUEFTU11bMTVdIC0+IFtJTkNPTVBMRVRFXVsxNl0gKFtm
ZG8jMTAzNTQwXSkgKzEgc2ltaWxhciBpc3N1ZQogICBbMTVdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDEyL3NoYXJkLWhzdzUvaWd0QGttc19mbGlw
QDJ4LWZsaXAtdnMtZHBtcy5odG1sCiAgIFsxNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyODk0L3NoYXJkLWhzdzcvaWd0QGttc19mbGlwQDJ4
LWZsaXAtdnMtZHBtcy5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMt
MXAtcHJpbXNjcm4taW5kZmItbXNmbGlwLWJsdDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBb
UEFTU11bMTddIC0+IFtGQUlMXVsxOF0gKFtmZG8jMTAzMTY3XSkgKzMgc2ltaWxhciBpc3N1ZXMK
ICAgWzE3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NjAxMi9zaGFyZC1pY2xiNy9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1wcmlt
c2Nybi1pbmRmYi1tc2ZsaXAtYmx0Lmh0bWwKICAgWzE4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI4OTQvc2hhcmQtaWNsYjcvaWd0QGttc19m
cm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtcHJpbXNjcm4taW5kZmItbXNmbGlwLWJsdC5odG1s
CgogICogaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWEtY29uc3RhbnQtYWxwaGEtbWlu
OgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVsxOV0gLT4gW0ZBSUxdWzIwXSAoW2Zk
byMxMDgxNDVdKQogICBbMTldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV82MDEyL3NoYXJkLXNrbDUvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBl
LWEtY29uc3RhbnQtYWxwaGEtbWluLmh0bWwKICAgWzIwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI4OTQvc2hhcmQtc2tsNy9pZ3RAa21zX3Bs
YW5lX2FscGhhX2JsZW5kQHBpcGUtYS1jb25zdGFudC1hbHBoYS1taW4uaHRtbAoKICAqIGlndEBr
bXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1iLWNvdmVyYWdlLTdlZmM6CiAgICAtIHNoYXJkLXNr
bDogICAgICAgICAgW1BBU1NdWzIxXSAtPiBbRkFJTF1bMjJdIChbZmRvIzEwODE0NV0gLyBbZmRv
IzExMDQwM10pCiAgIFsyMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzYwMTIvc2hhcmQtc2tsMi9pZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUt
Yi1jb3ZlcmFnZS03ZWZjLmh0bWwKICAgWzIyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI4OTQvc2hhcmQtc2tsNy9pZ3RAa21zX3BsYW5lX2Fs
cGhhX2JsZW5kQHBpcGUtYi1jb3ZlcmFnZS03ZWZjLmh0bWwKCiAgKiBpZ3RAa21zX3BzckBwc3Iy
X3ByaW1hcnlfbW1hcF9ndHQ6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzIzXSAt
PiBbU0tJUF1bMjRdIChbZmRvIzEwOTQ0MV0pCiAgIFsyM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYwMTIvc2hhcmQtaWNsYjIvaWd0QGttc19wc3JA
cHNyMl9wcmltYXJ5X21tYXBfZ3R0Lmh0bWwKICAgWzI0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI4OTQvc2hhcmQtaWNsYjQvaWd0QGttc19w
c3JAcHNyMl9wcmltYXJ5X21tYXBfZ3R0Lmh0bWwKCiAgKiBpZ3RAa21zX3JvdGF0aW9uX2NyY0Bt
dWx0aXBsYW5lLXJvdGF0aW9uOgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtQQVNTXVsyNV0g
LT4gW0lOQ09NUExFVEVdWzI2XSAoW2ZkbyMxMDM2NjVdKQogICBbMjVdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDEyL3NoYXJkLWtibDcvaWd0QGtt
c19yb3RhdGlvbl9jcmNAbXVsdGlwbGFuZS1yb3RhdGlvbi5odG1sCiAgIFsyNl06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyODk0L3NoYXJkLWti
bDEvaWd0QGttc19yb3RhdGlvbl9jcmNAbXVsdGlwbGFuZS1yb3RhdGlvbi5odG1sCgogICogaWd0
QGttc19zZXRtb2RlQGJhc2ljOgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtQQVNTXVsyN10g
LT4gW0ZBSUxdWzI4XSAoW2ZkbyM5OTkxMl0pCiAgIFsyN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYwMTIvc2hhcmQta2JsNS9pZ3RAa21zX3NldG1v
ZGVAYmFzaWMuaHRtbAogICBbMjhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xMjg5NC9zaGFyZC1rYmw1L2lndEBrbXNfc2V0bW9kZUBiYXNpYy5o
dG1sCgogICogaWd0QGttc19zeXNmc19lZGlkX3RpbWluZzoKICAgIC0gc2hhcmQtaWNsYjogICAg
ICAgICBbUEFTU11bMjldIC0+IFtGQUlMXVszMF0gKFtmZG8jMTAwMDQ3XSkKICAgWzI5XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjAxMi9zaGFyZC1p
Y2xiNi9pZ3RAa21zX3N5c2ZzX2VkaWRfdGltaW5nLmh0bWwKICAgWzMwXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI4OTQvc2hhcmQtaWNsYjIv
aWd0QGttc19zeXNmc19lZGlkX3RpbWluZy5odG1sCgogIAojIyMjIFBvc3NpYmxlIGZpeGVzICMj
IyMKCiAgKiBpZ3RAaTkxNV9zdXNwZW5kQGZlbmNlLXJlc3RvcmUtdW50aWxlZDoKICAgIC0gc2hh
cmQtYXBsOiAgICAgICAgICBbRE1FU0ctV0FSTl1bMzFdIChbZmRvIzEwODU2Nl0pIC0+IFtQQVNT
XVszMl0gKzMgc2ltaWxhciBpc3N1ZXMKICAgWzMxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjAxMi9zaGFyZC1hcGwyL2lndEBpOTE1X3N1c3BlbmRA
ZmVuY2UtcmVzdG9yZS11bnRpbGVkLmh0bWwKICAgWzMyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI4OTQvc2hhcmQtYXBsMi9pZ3RAaTkxNV9z
dXNwZW5kQGZlbmNlLXJlc3RvcmUtdW50aWxlZC5odG1sCgogICogaWd0QGttc19jdXJzb3JfY3Jj
QGN1cnNvci02NHg2NC1zdXNwZW5kOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtJTkNPTVBM
RVRFXVszM10gKFtmZG8jMTA0MTA4XSkgLT4gW1BBU1NdWzM0XQogICBbMzNdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDEyL3NoYXJkLXNrbDMvaWd0
QGttc19jdXJzb3JfY3JjQGN1cnNvci02NHg2NC1zdXNwZW5kLmh0bWwKICAgWzM0XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI4OTQvc2hhcmQt
c2tsNy9pZ3RAa21zX2N1cnNvcl9jcmNAY3Vyc29yLTY0eDY0LXN1c3BlbmQuaHRtbAoKICAqIGln
dEBrbXNfY3Vyc29yX2xlZ2FjeUAyeC1ub25ibG9ja2luZy1tb2Rlc2V0LXZzLWN1cnNvci1hdG9t
aWM6CiAgICAtIHNoYXJkLWdsazogICAgICAgICAgW0ZBSUxdWzM1XSAoW2ZkbyMxMDY1MDldIC8g
W2ZkbyMxMDc0MDldKSAtPiBbUEFTU11bMzZdCiAgIFszNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYwMTIvc2hhcmQtZ2xrMi9pZ3RAa21zX2N1cnNv
cl9sZWdhY3lAMngtbm9uYmxvY2tpbmctbW9kZXNldC12cy1jdXJzb3ItYXRvbWljLmh0bWwKICAg
WzM2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTI4OTQvc2hhcmQtZ2xrOS9pZ3RAa21zX2N1cnNvcl9sZWdhY3lAMngtbm9uYmxvY2tpbmctbW9k
ZXNldC12cy1jdXJzb3ItYXRvbWljLmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBAZmxpcC12cy1leHBp
cmVkLXZibGFuay1pbnRlcnJ1cHRpYmxlOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtGQUlM
XVszN10gKFtmZG8jMTA1MzYzXSkgLT4gW1BBU1NdWzM4XQogICBbMzddOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDEyL3NoYXJkLXNrbDMvaWd0QGtt
c19mbGlwQGZsaXAtdnMtZXhwaXJlZC12YmxhbmstaW50ZXJydXB0aWJsZS5odG1sCiAgIFszOF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyODk0
L3NoYXJkLXNrbDQvaWd0QGttc19mbGlwQGZsaXAtdnMtZXhwaXJlZC12YmxhbmstaW50ZXJydXB0
aWJsZS5odG1sCgogICogaWd0QGttc19mbGlwQG1vZGVzZXQtdnMtdmJsYW5rLXJhY2U6CiAgICAt
IHNoYXJkLWdsazogICAgICAgICAgW0ZBSUxdWzM5XSAoW2ZkbyMxMDMwNjBdKSAtPiBbUEFTU11b
NDBdCiAgIFszOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzYwMTIvc2hhcmQtZ2xrOC9pZ3RAa21zX2ZsaXBAbW9kZXNldC12cy12YmxhbmstcmFjZS5o
dG1sCiAgIFs0MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzEyODk0L3NoYXJkLWdsazYvaWd0QGttc19mbGlwQG1vZGVzZXQtdnMtdmJsYW5rLXJh
Y2UuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLW9mZnNjcmVu
LXByaS1zaHJmYi1kcmF3LXJlbmRlcjoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbRkFJTF1b
NDFdIChbZmRvIzEwMzE2N10pIC0+IFtQQVNTXVs0Ml0gKzIgc2ltaWxhciBpc3N1ZXMKICAgWzQx
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjAxMi9z
aGFyZC1pY2xiMS9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1vZmZzY3Jlbi1w
cmktc2hyZmItZHJhdy1yZW5kZXIuaHRtbAogICBbNDJdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjg5NC9zaGFyZC1pY2xiNi9pZ3RAa21zX2Zy
b250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1vZmZzY3Jlbi1wcmktc2hyZmItZHJhdy1yZW5kZXIu
aHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLXN1c3BlbmQ6CiAg
ICAtIHNoYXJkLXNrbDogICAgICAgICAgW0lOQ09NUExFVEVdWzQzXSAoW2ZkbyMxMDQxMDhdIC8g
W2ZkbyMxMDY5NzhdKSAtPiBbUEFTU11bNDRdCiAgIFs0M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYwMTIvc2hhcmQtc2tsNy9pZ3RAa21zX2Zyb250
YnVmZmVyX3RyYWNraW5nQGZiY3Bzci1zdXNwZW5kLmh0bWwKICAgWzQ0XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI4OTQvc2hhcmQtc2tsNy9p
Z3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci1zdXNwZW5kLmh0bWwKICAgIC0gc2hh
cmQtaWNsYjogICAgICAgICBbSU5DT01QTEVURV1bNDVdIChbZmRvIzEwNjk3OF0gLyBbZmRvIzEw
NzcxM10pIC0+IFtQQVNTXVs0Nl0KICAgWzQ1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNjAxMi9zaGFyZC1pY2xiNC9pZ3RAa21zX2Zyb250YnVmZmVy
X3RyYWNraW5nQGZiY3Bzci1zdXNwZW5kLmh0bWwKICAgWzQ2XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI4OTQvc2hhcmQtaWNsYjgvaWd0QGtt
c19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3Itc3VzcGVuZC5odG1sCgogICogaWd0QGttc19w
c3JAcHNyMl9wcmltYXJ5X3JlbmRlcjoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbU0tJUF1b
NDddIChbZmRvIzEwOTQ0MV0pIC0+IFtQQVNTXVs0OF0gKzEgc2ltaWxhciBpc3N1ZQogICBbNDdd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDEyL3No
YXJkLWljbGI2L2lndEBrbXNfcHNyQHBzcjJfcHJpbWFyeV9yZW5kZXIuaHRtbAogICBbNDhdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjg5NC9z
aGFyZC1pY2xiMi9pZ3RAa21zX3BzckBwc3IyX3ByaW1hcnlfcmVuZGVyLmh0bWwKCiAgKiBpZ3RA
dG9vbHNfdGVzdEB0b29sc190ZXN0OgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtTS0lQXVs0
OV0gKFtmZG8jMTA5MzUyXSkgLT4gW1BBU1NdWzUwXQogICBbNDldOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDEyL3NoYXJkLWljbGI4L2lndEB0b29s
c190ZXN0QHRvb2xzX3Rlc3QuaHRtbAogICBbNTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjg5NC9zaGFyZC1pY2xiMS9pZ3RAdG9vbHNfdGVz
dEB0b29sc190ZXN0Lmh0bWwKCiAgCiAgW2ZkbyMxMDAwNDddOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDAwNDcKICBbZmRvIzEwMzA2MF06IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzA2MAogIFtmZG8jMTAzMTY3
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMTY3CiAg
W2ZkbyMxMDMxODRdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMDMxODQKICBbZmRvIzEwMzIzMl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTEwMzIzMgogIFtmZG8jMTAzNTQwXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzNTQwCiAgW2ZkbyMxMDM2NjVdOiBodHRwczovL2J1
Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDM2NjUKICBbZmRvIzEwMzkyN106
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzkyNwogIFtm
ZG8jMTA0MTA4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTA0MTA4CiAgW2ZkbyMxMDUzNjNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMDUzNjMKICBbZmRvIzEwNjUwOV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNjUwOQogIFtmZG8jMTA2OTc4XTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA2OTc4CiAgW2ZkbyMxMDc0MDldOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc0MDkKICBbZmRv
IzEwNzcxM106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEw
NzcxMwogIFtmZG8jMTA3ODA3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTA3ODA3CiAgW2ZkbyMxMDgxNDVdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Au
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMDgxNDUKICBbZmRvIzEwODU2Nl06IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwODU2NgogIFtmZG8jMTA5MzUyXTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5MzUyCiAgW2ZkbyMx
MDk0NDFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDk0
NDEKICBbZmRvIzExMDQwM106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTExMDQwMwogIFtmZG8jOTk5MTJdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD05OTkxMgoKClBhcnRpY2lwYXRpbmcgaG9zdHMgKDEwIC0+IDEwKQot
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgTm8gY2hhbmdlcyBpbiBwYXJ0aWNpcGF0
aW5nIGhvc3RzCgoKQnVpbGQgY2hhbmdlcwotLS0tLS0tLS0tLS0tCgogICogTGludXg6IENJX0RS
TV82MDEyIC0+IFBhdGNod29ya18xMjg5NAoKICBDSV9EUk1fNjAxMjogZTQ4ODJmMTk5MTU3ZTNm
YjczZDE3OTEzNTI5MzEwOTZmNmVjZmNmZCBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3Jn
L2dmeC1jaS9saW51eAogIElHVF80OTY4OiBjYWVkMjUxOTkwZjM1YmZlNDUzNjhmODAzOTgwMDcx
YTczZTM2MzE1IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcveG9yZy9hcHAvaW50ZWwt
Z3B1LXRvb2xzCiAgUGF0Y2h3b3JrXzEyODk0OiA5YjIzMzg4ODFiMmJjM2JiYTVjOGY4YjBmODBh
ODcyZTMyNGJhODQyIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4
CiAgcGlnbGl0XzQ1MDk6IGZkYzVhNGNhMTExMjRhYjg0MTNjNzk4ODg5NmVlYzRjOTczMzY2OTQg
QCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9waWdsaXQKCj09IExvZ3MgPT0KCkZvciBt
b3JlIGRldGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xMjg5NC8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
