Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFCD4D212
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 17:24:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F5866E5C4;
	Thu, 20 Jun 2019 15:24:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9D36C6E5C1;
 Thu, 20 Jun 2019 15:24:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 96FC4A0071;
 Thu, 20 Jun 2019 15:24:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 20 Jun 2019 15:24:33 -0000
Message-ID: <20190620152433.12830.33317@emeril.freedesktop.org>
References: <20190619203504.4220-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190619203504.4220-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_Rings_are_always_flushed?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFJpbmdzIGFyZSBhbHdheXMg
Zmx1c2hlZApVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMv
NjI0MDcvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQ0kgQnVnIExvZyAtIGNoYW5n
ZXMgZnJvbSBDSV9EUk1fNjMxMl9mdWxsIC0+IFBhdGNod29ya18xMzM1MV9mdWxsCj09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KClN1bW1hcnkKLS0t
LS0tLQoKICAqKkZBSUxVUkUqKgoKICBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21pbmcgd2l0
aCBQYXRjaHdvcmtfMTMzNTFfZnVsbCBhYnNvbHV0ZWx5IG5lZWQgdG8gYmUKICB2ZXJpZmllZCBt
YW51YWxseS4KICAKICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2ZSBub3Ro
aW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMKICBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xMzM1
MV9mdWxsLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cgdGhlbQogIHRvIGRv
Y3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9z
aXRpdmVzIGluIENJLgoKICAKClBvc3NpYmxlIG5ldyBpc3N1ZXMKLS0tLS0tLS0tLS0tLS0tLS0t
LQoKICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRy
b2R1Y2VkIGluIFBhdGNod29ya18xMzM1MV9mdWxsOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMj
IyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjCgogICogaWd0QGdlbV9jdHhfc2hhcmVkQGV4ZWMt
c2hhcmVkLWd0dC1yZW5kZXI6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW1BBU1NdWzFdIC0+
IFtGQUlMXVsyXQogICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzYzMTIvc2hhcmQtYXBsNy9pZ3RAZ2VtX2N0eF9zaGFyZWRAZXhlYy1zaGFyZWQt
Z3R0LXJlbmRlci5odG1sCiAgIFsyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTMzNTEvc2hhcmQtYXBsMi9pZ3RAZ2VtX2N0eF9zaGFyZWRAZXhl
Yy1zaGFyZWQtZ3R0LXJlbmRlci5odG1sCgogIApLbm93biBpc3N1ZXMKLS0tLS0tLS0tLS0tCgog
IEhlcmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNod29ya18xMzM1MV9mdWxsIHRoYXQg
Y29tZSBmcm9tIGtub3duIGlzc3VlczoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgSXNzdWVz
IGhpdCAjIyMjCgogICogaWd0QGdlbV9laW9AaW4tZmxpZ2h0LTF1czoKICAgIC0gc2hhcmQtYXBs
OiAgICAgICAgICBbUEFTU11bM10gLT4gW0RNRVNHLVdBUk5dWzRdIChbZmRvIzExMDkxMyBdKSAr
MSBzaW1pbGFyIGlzc3VlCiAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNjMxMi9zaGFyZC1hcGw2L2lndEBnZW1fZWlvQGluLWZsaWdodC0xdXMu
aHRtbAogICBbNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzEzMzUxL3NoYXJkLWFwbDgvaWd0QGdlbV9laW9AaW4tZmxpZ2h0LTF1cy5odG1sCgog
ICogaWd0QGdlbV9laW9AaW4tZmxpZ2h0LXN1c3BlbmQ6CiAgICAtIHNoYXJkLWtibDogICAgICAg
ICAgW1BBU1NdWzVdIC0+IFtETUVTRy1XQVJOXVs2XSAoW2ZkbyMxMTA5MTMgXSkgKzEgc2ltaWxh
ciBpc3N1ZQogICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzYzMTIvc2hhcmQta2JsMy9pZ3RAZ2VtX2Vpb0Bpbi1mbGlnaHQtc3VzcGVuZC5odG1s
CiAgIFs2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTMzNTEvc2hhcmQta2JsNy9pZ3RAZ2VtX2Vpb0Bpbi1mbGlnaHQtc3VzcGVuZC5odG1sCgog
ICogaWd0QGdlbV9wZXJzaXN0ZW50X3JlbG9jc0Bmb3JrZWQtZmF1bHRpbmctcmVsb2MtdGhyYXNo
aW5nOgogICAgLSBzaGFyZC1zbmI6ICAgICAgICAgIFtQQVNTXVs3XSAtPiBbRE1FU0ctV0FSTl1b
OF0gKFtmZG8jMTEwNzg5XSAvIFtmZG8jMTEwOTEzIF0pCiAgIFs3XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMxMi9zaGFyZC1zbmI2L2lndEBnZW1f
cGVyc2lzdGVudF9yZWxvY3NAZm9ya2VkLWZhdWx0aW5nLXJlbG9jLXRocmFzaGluZy5odG1sCiAg
IFs4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTMzNTEvc2hhcmQtc25iNC9pZ3RAZ2VtX3BlcnNpc3RlbnRfcmVsb2NzQGZvcmtlZC1mYXVsdGlu
Zy1yZWxvYy10aHJhc2hpbmcuaHRtbAoKICAqIGlndEBpOTE1X3BtX3JjNl9yZXNpZGVuY3lAcmM2
LWFjY3VyYWN5OgogICAgLSBzaGFyZC1zbmI6ICAgICAgICAgIFtQQVNTXVs5XSAtPiBbU0tJUF1b
MTBdIChbZmRvIzEwOTI3MV0pCiAgIFs5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNjMxMi9zaGFyZC1zbmIxL2lndEBpOTE1X3BtX3JjNl9yZXNpZGVu
Y3lAcmM2LWFjY3VyYWN5Lmh0bWwKICAgWzEwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzNTEvc2hhcmQtc25iMS9pZ3RAaTkxNV9wbV9yYzZf
cmVzaWRlbmN5QHJjNi1hY2N1cmFjeS5odG1sCgogICogaWd0QGttc19mbGlwQDJ4LW1vZGVzZXQt
dnMtdmJsYW5rLXJhY2U6CiAgICAtIHNoYXJkLWdsazogICAgICAgICAgW1BBU1NdWzExXSAtPiBb
RkFJTF1bMTJdIChbZmRvIzEwMzA2MF0pCiAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzMTIvc2hhcmQtZ2xrMy9pZ3RAa21zX2ZsaXBAMngt
bW9kZXNldC12cy12YmxhbmstcmFjZS5odG1sCiAgIFsxMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzUxL3NoYXJkLWdsazUvaWd0QGttc19m
bGlwQDJ4LW1vZGVzZXQtdnMtdmJsYW5rLXJhY2UuaHRtbAoKICAqIGlndEBrbXNfZmxpcEAyeC1w
bGFpbi1mbGlwOgogICAgLSBzaGFyZC1oc3c6ICAgICAgICAgIFtQQVNTXVsxM10gLT4gW1NLSVBd
WzE0XSAoW2ZkbyMxMDkyNzFdKSArMTAgc2ltaWxhciBpc3N1ZXMKICAgWzEzXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMxMi9zaGFyZC1oc3c1L2ln
dEBrbXNfZmxpcEAyeC1wbGFpbi1mbGlwLmh0bWwKICAgWzE0XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzNTEvc2hhcmQtaHN3MS9pZ3RAa21z
X2ZsaXBAMngtcGxhaW4tZmxpcC5odG1sCgogICogaWd0QGttc19mbGlwQGZsaXAtdnMtc3VzcGVu
ZC1pbnRlcnJ1cHRpYmxlOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtQQVNTXVsxNV0gLT4g
W0RNRVNHLVdBUk5dWzE2XSAoW2ZkbyMxMDg1NjZdKSArNCBzaW1pbGFyIGlzc3VlcwogICBbMTVd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzEyL3No
YXJkLWFwbDIvaWd0QGttc19mbGlwQGZsaXAtdnMtc3VzcGVuZC1pbnRlcnJ1cHRpYmxlLmh0bWwK
ICAgWzE2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTMzNTEvc2hhcmQtYXBsMy9pZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLWludGVycnVw
dGlibGUuaHRtbAoKICAqIGlndEBrbXNfcGxhbmVAcGxhbmUtcGFubmluZy1ib3R0b20tcmlnaHQt
c3VzcGVuZC1waXBlLWEtcGxhbmVzOgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtQQVNTXVsx
N10gLT4gW0lOQ09NUExFVEVdWzE4XSAoW2ZkbyMxMDM2NjVdKQogICBbMTddOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzEyL3NoYXJkLWtibDQvaWd0
QGttc19wbGFuZUBwbGFuZS1wYW5uaW5nLWJvdHRvbS1yaWdodC1zdXNwZW5kLXBpcGUtYS1wbGFu
ZXMuaHRtbAogICBbMThdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xMzM1MS9zaGFyZC1rYmwyL2lndEBrbXNfcGxhbmVAcGxhbmUtcGFubmluZy1i
b3R0b20tcmlnaHQtc3VzcGVuZC1waXBlLWEtcGxhbmVzLmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5l
X2FscGhhX2JsZW5kQHBpcGUtYi1jb25zdGFudC1hbHBoYS1taW46CiAgICAtIHNoYXJkLXNrbDog
ICAgICAgICAgW1BBU1NdWzE5XSAtPiBbRkFJTF1bMjBdIChbZmRvIzEwODE0NV0pCiAgIFsxOV06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzMTIvc2hh
cmQtc2tsNi9pZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYi1jb25zdGFudC1hbHBoYS1t
aW4uaHRtbAogICBbMjBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xMzM1MS9zaGFyZC1za2wyL2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlw
ZS1iLWNvbnN0YW50LWFscGhhLW1pbi5odG1sCgogIAojIyMjIFBvc3NpYmxlIGZpeGVzICMjIyMK
CiAgKiBpZ3RAZ2VtX2Vpb0B3YWl0LTEwbXM6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW0RN
RVNHLVdBUk5dWzIxXSAoW2ZkbyMxMTA5MTMgXSkgLT4gW1BBU1NdWzIyXSArMSBzaW1pbGFyIGlz
c3VlCiAgIFsyMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzYzMTIvc2hhcmQtYXBsOC9pZ3RAZ2VtX2Vpb0B3YWl0LTEwbXMuaHRtbAogICBbMjJdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzM1MS9z
aGFyZC1hcGw3L2lndEBnZW1fZWlvQHdhaXQtMTBtcy5odG1sCgogICogaWd0QGdlbV9wZXJzaXN0
ZW50X3JlbG9jc0Bmb3JrZWQtaW50ZXJydXB0aWJsZS1mYXVsdGluZy1yZWxvYy10aHJhc2hpbmc6
CiAgICAtIHNoYXJkLWtibDogICAgICAgICAgW0RNRVNHLVdBUk5dWzIzXSAoW2ZkbyMxMTA5MTMg
XSkgLT4gW1BBU1NdWzI0XQogICBbMjNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82MzEyL3NoYXJkLWtibDcvaWd0QGdlbV9wZXJzaXN0ZW50X3JlbG9j
c0Bmb3JrZWQtaW50ZXJydXB0aWJsZS1mYXVsdGluZy1yZWxvYy10aHJhc2hpbmcuaHRtbAogICBb
MjRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
MzM1MS9zaGFyZC1rYmw3L2lndEBnZW1fcGVyc2lzdGVudF9yZWxvY3NAZm9ya2VkLWludGVycnVw
dGlibGUtZmF1bHRpbmctcmVsb2MtdGhyYXNoaW5nLmh0bWwKCiAgKiBpZ3RAZ2VtX3BlcnNpc3Rl
bnRfcmVsb2NzQGZvcmtlZC1pbnRlcnJ1cHRpYmxlLXRocmFzaGluZzoKICAgIC0gc2hhcmQtc25i
OiAgICAgICAgICBbRE1FU0ctV0FSTl1bMjVdIChbZmRvIzExMDc4OV0gLyBbZmRvIzExMDkxMyBd
KSAtPiBbUEFTU11bMjZdCiAgIFsyNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzYzMTIvc2hhcmQtc25iNC9pZ3RAZ2VtX3BlcnNpc3RlbnRfcmVsb2Nz
QGZvcmtlZC1pbnRlcnJ1cHRpYmxlLXRocmFzaGluZy5odG1sCiAgIFsyNl06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzUxL3NoYXJkLXNuYjcv
aWd0QGdlbV9wZXJzaXN0ZW50X3JlbG9jc0Bmb3JrZWQtaW50ZXJydXB0aWJsZS10aHJhc2hpbmcu
aHRtbAoKICAqIGlndEBrbXNfY3Vyc29yX2VkZ2Vfd2Fsa0BwaXBlLWItMTI4eDEyOC10b3AtZWRn
ZToKICAgIC0gc2hhcmQtc25iOiAgICAgICAgICBbU0tJUF1bMjddIChbZmRvIzEwOTI3MV0gLyBb
ZmRvIzEwOTI3OF0pIC0+IFtQQVNTXVsyOF0KICAgWzI3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMxMi9zaGFyZC1zbmIyL2lndEBrbXNfY3Vyc29y
X2VkZ2Vfd2Fsa0BwaXBlLWItMTI4eDEyOC10b3AtZWRnZS5odG1sCiAgIFsyOF06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzUxL3NoYXJkLXNu
YjEvaWd0QGttc19jdXJzb3JfZWRnZV93YWxrQHBpcGUtYi0xMjh4MTI4LXRvcC1lZGdlLmh0bWwK
CiAgKiBpZ3RAa21zX2N1cnNvcl9sZWdhY3lAMngtbG9uZy1mbGlwLXZzLWN1cnNvci1hdG9taWM6
CiAgICAtIHNoYXJkLWdsazogICAgICAgICAgW0ZBSUxdWzI5XSAoW2ZkbyMxMDQ4NzNdKSAtPiBb
UEFTU11bMzBdCiAgIFsyOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzYzMTIvc2hhcmQtZ2xrOC9pZ3RAa21zX2N1cnNvcl9sZWdhY3lAMngtbG9uZy1m
bGlwLXZzLWN1cnNvci1hdG9taWMuaHRtbAogICBbMzBdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzM1MS9zaGFyZC1nbGsxL2lndEBrbXNfY3Vy
c29yX2xlZ2FjeUAyeC1sb25nLWZsaXAtdnMtY3Vyc29yLWF0b21pYy5odG1sCgogICogaWd0QGtt
c19mbGlwQDJ4LWZsaXAtdnMtZXhwaXJlZC12YmxhbmstaW50ZXJydXB0aWJsZToKICAgIC0gc2hh
cmQtaHN3OiAgICAgICAgICBbU0tJUF1bMzFdIChbZmRvIzEwOTI3MV0pIC0+IFtQQVNTXVszMl0g
KzMzIHNpbWlsYXIgaXNzdWVzCiAgIFszMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzYzMTIvc2hhcmQtaHN3MS9pZ3RAa21zX2ZsaXBAMngtZmxpcC12
cy1leHBpcmVkLXZibGFuay1pbnRlcnJ1cHRpYmxlLmh0bWwKICAgWzMyXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzNTEvc2hhcmQtaHN3Ni9p
Z3RAa21zX2ZsaXBAMngtZmxpcC12cy1leHBpcmVkLXZibGFuay1pbnRlcnJ1cHRpYmxlLmh0bWwK
CiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy1zdXNwZW5kOgogICAgLSBzaGFy
ZC1hcGw6ICAgICAgICAgIFtETUVTRy1XQVJOXVszM10gKFtmZG8jMTA4NTY2XSkgLT4gW1BBU1Nd
WzM0XSArMSBzaW1pbGFyIGlzc3VlCiAgIFszM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzYzMTIvc2hhcmQtYXBsMy9pZ3RAa21zX2Zyb250YnVmZmVy
X3RyYWNraW5nQGZiYy1zdXNwZW5kLmh0bWwKICAgWzM0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzNTEvc2hhcmQtYXBsNi9pZ3RAa21zX2Zy
b250YnVmZmVyX3RyYWNraW5nQGZiYy1zdXNwZW5kLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVm
ZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmltc2Nybi1wcmktaW5kZmItZHJhdy1wd3JpdGU6CiAg
ICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZBSUxdWzM1XSAoW2ZkbyMxMDgwNDBdKSAtPiBbUEFT
U11bMzZdCiAgIFszNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzYzMTIvc2hhcmQtc2tsOS9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bz
ci0xcC1wcmltc2Nybi1wcmktaW5kZmItZHJhdy1wd3JpdGUuaHRtbAogICBbMzZdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzM1MS9zaGFyZC1z
a2wyL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLXByaS1p
bmRmYi1kcmF3LXB3cml0ZS5odG1sCgogICogaWd0QGttc19waXBlX2NyY19iYXNpY0BzdXNwZW5k
LXJlYWQtY3JjLXBpcGUtYzoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbSU5DT01QTEVURV1b
MzddIChbZmRvIzEwNDEwOF0pIC0+IFtQQVNTXVszOF0KICAgWzM3XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMxMi9zaGFyZC1za2w0L2lndEBrbXNf
cGlwZV9jcmNfYmFzaWNAc3VzcGVuZC1yZWFkLWNyYy1waXBlLWMuaHRtbAogICBbMzhdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzM1MS9zaGFy
ZC1za2w4L2lndEBrbXNfcGlwZV9jcmNfYmFzaWNAc3VzcGVuZC1yZWFkLWNyYy1waXBlLWMuaHRt
bAoKICAqIGlndEBrbXNfcGxhbmVAcGxhbmUtcGFubmluZy1ib3R0b20tcmlnaHQtcGlwZS1iLXBs
YW5lczoKICAgIC0gc2hhcmQtc25iOiAgICAgICAgICBbU0tJUF1bMzldIChbZmRvIzEwOTI3MV0p
IC0+IFtQQVNTXVs0MF0gKzEgc2ltaWxhciBpc3N1ZQogICBbMzldOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzEyL3NoYXJkLXNuYjIvaWd0QGttc19w
bGFuZUBwbGFuZS1wYW5uaW5nLWJvdHRvbS1yaWdodC1waXBlLWItcGxhbmVzLmh0bWwKICAgWzQw
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMz
NTEvc2hhcmQtc25iMS9pZ3RAa21zX3BsYW5lQHBsYW5lLXBhbm5pbmctYm90dG9tLXJpZ2h0LXBp
cGUtYi1wbGFuZXMuaHRtbAoKICAqIGlndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1hLWNv
dmVyYWdlLTdlZmM6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZBSUxdWzQxXSAoW2ZkbyMx
MDgxNDVdKSAtPiBbUEFTU11bNDJdCiAgIFs0MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzYzMTIvc2hhcmQtc2tsOS9pZ3RAa21zX3BsYW5lX2FscGhh
X2JsZW5kQHBpcGUtYS1jb3ZlcmFnZS03ZWZjLmh0bWwKICAgWzQyXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzNTEvc2hhcmQtc2tsMi9pZ3RA
a21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYS1jb3ZlcmFnZS03ZWZjLmh0bWwKCiAgKiBpZ3RA
a21zX3NldG1vZGVAYmFzaWM6CiAgICAtIHNoYXJkLWtibDogICAgICAgICAgW0ZBSUxdWzQzXSAo
W2ZkbyM5OTkxMl0pIC0+IFtQQVNTXVs0NF0KICAgWzQzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMxMi9zaGFyZC1rYmwxL2lndEBrbXNfc2V0bW9k
ZUBiYXNpYy5odG1sCiAgIFs0NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzEzMzUxL3NoYXJkLWtibDEvaWd0QGttc19zZXRtb2RlQGJhc2ljLmh0
bWwKCiAgCiMjIyMgV2FybmluZ3MgIyMjIwoKICAqIGlndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWEt
Y3Vyc29yLTUxMng1MTItc2xpZGluZzoKICAgIC0gc2hhcmQtZ2xrOiAgICAgICAgICBbU0tJUF1b
NDVdIChbZmRvIzEwOTI3MV0pIC0+IFtJTkNPTVBMRVRFXVs0Nl0gKFtmZG8jMTAzMzU5XSAvIFtr
Lm9yZyMxOTgxMzNdKQogICBbNDVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV82MzEyL3NoYXJkLWdsazkvaWd0QGttc19jdXJzb3JfY3JjQHBpcGUtYS1j
dXJzb3ItNTEyeDUxMi1zbGlkaW5nLmh0bWwKICAgWzQ2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzNTEvc2hhcmQtZ2xrMi9pZ3RAa21zX2N1
cnNvcl9jcmNAcGlwZS1hLWN1cnNvci01MTJ4NTEyLXNsaWRpbmcuaHRtbAoKICAqIGlndEBrbXNf
ZnJvbnRidWZmZXJfdHJhY2tpbmdAcHNyLTFwLXByaW1zY3JuLWluZGZiLXBnZmxpcC1ibHQ6CiAg
ICAtIHNoYXJkLWFwbDogICAgICAgICAgW1NLSVBdWzQ3XSAoW2ZkbyMxMDkyNzFdKSAtPiBbSU5D
T01QTEVURV1bNDhdIChbZmRvIzEwMzkyN10pCiAgIFs0N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzMTIvc2hhcmQtYXBsMi9pZ3RAa21zX2Zyb250
YnVmZmVyX3RyYWNraW5nQHBzci0xcC1wcmltc2Nybi1pbmRmYi1wZ2ZsaXAtYmx0Lmh0bWwKICAg
WzQ4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTMzNTEvc2hhcmQtYXBsNC9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQHBzci0xcC1wcmlt
c2Nybi1pbmRmYi1wZ2ZsaXAtYmx0Lmh0bWwKCiAgCiAgW2ZkbyMxMDMwNjBdOiBodHRwczovL2J1
Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMwNjAKICBbZmRvIzEwMzM1OV06
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzM1OQogIFtm
ZG8jMTAzNjY1XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTAzNjY1CiAgW2ZkbyMxMDM5MjddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMDM5MjcKICBbZmRvIzEwNDEwOF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNDEwOAogIFtmZG8jMTA0ODczXTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA0ODczCiAgW2ZkbyMxMDgwNDBdOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDgwNDAKICBbZmRv
IzEwODE0NV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEw
ODE0NQogIFtmZG8jMTA4NTY2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTA4NTY2CiAgW2ZkbyMxMDkyNzFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Au
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkyNzEKICBbZmRvIzEwOTI3OF06IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI3OAogIFtmZG8jMTEwNzg5XTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwNzg5CiAgW2ZkbyMx
MTA5MTMgXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEw
OTEzIAogIFtmZG8jOTk5MTJdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD05OTkxMgogIFtrLm9yZyMxOTgxMzNdOiBodHRwczovL2J1Z3ppbGxhLmtlcm5lbC5v
cmcvc2hvd19idWcuY2dpP2lkPTE5ODEzMwoKClBhcnRpY2lwYXRpbmcgaG9zdHMgKDEwIC0+IDkp
Ci0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBNaXNzaW5nICAgICgxKTogc2hhcmQt
aWNsYiAKCgpCdWlsZCBjaGFuZ2VzCi0tLS0tLS0tLS0tLS0KCiAgKiBMaW51eDogQ0lfRFJNXzYz
MTIgLT4gUGF0Y2h3b3JrXzEzMzUxCgogIENJX0RSTV82MzEyOiAwMzRlM2FjNmEyZDE4MGQxODhk
YTkyNzM4OGI2MGM3ZTYyYzU2NTViIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4
LWNpL2xpbnV4CiAgSUdUXzUwNjE6IGM4OGNlZDc5YTdiNzFhZWM1OGYxZDljNWM1OTlhYzJmNDMx
YmNmN2EgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94b3JnL2FwcC9pbnRlbC1ncHUt
dG9vbHMKICBQYXRjaHdvcmtfMTMzNTE6IDljODRkZjYxNTA0OTIzZWYxNWQyYmE2MTkzOTkwZmQ3
MGJiN2EzODEgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKICBw
aWdsaXRfNDUwOTogZmRjNWE0Y2ExMTEyNGFiODQxM2M3OTg4ODk2ZWVjNGM5NzMzNjY5NCBAIGdp
dDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3BpZ2xpdAoKPT0gTG9ncyA9PQoKRm9yIG1vcmUg
ZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzEzMzUxLwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
