Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B50C4CADA
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 11:29:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA71489D7C;
	Thu, 20 Jun 2019 09:29:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 555DB89C94;
 Thu, 20 Jun 2019 09:29:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4DCDFA010C;
 Thu, 20 Jun 2019 09:29:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Thu, 20 Jun 2019 09:29:36 -0000
Message-ID: <20190620092936.12825.80993@emeril.freedesktop.org>
References: <20190619132459.25351-1-tvrtko.ursulin@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190619132459.25351-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_Impl?=
 =?utf-8?q?icit_dev=5Fpriv_removal_and_GT_compartmentalization_=28rev12=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogSW1wbGljaXQgZGV2X3ByaXYgcmVtb3ZhbCBh
bmQgR1QgY29tcGFydG1lbnRhbGl6YXRpb24gKHJldjEyKQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3
b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjIwNDYvClN0YXRlIDogZmFpbHVyZQoKPT0gU3Vt
bWFyeSA9PQoKQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNjMwN19mdWxsIC0+IFBh
dGNod29ya18xMzM0Nl9mdWxsCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKkZBSUxVUkUqKgoKICBTZXJpb3Vz
IHVua25vd24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTMzNDZfZnVsbCBhYnNvbHV0
ZWx5IG5lZWQgdG8gYmUKICB2ZXJpZmllZCBtYW51YWxseS4KICAKICBJZiB5b3UgdGhpbmsgdGhl
IHJlcG9ydGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMKICBp
bnRyb2R1Y2VkIGluIFBhdGNod29ya18xMzM0Nl9mdWxsLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVn
IHRlYW0gdG8gYWxsb3cgdGhlbQogIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwg
d2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLgoKICAKClBvc3NpYmxlIG5l
dyBpc3N1ZXMKLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFu
Z2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xMzM0Nl9mdWxs
OgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjCgog
ICogaWd0QHJ1bm5lckBhYm9ydGVkOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIE5PVFJVTiAt
PiAoW0ZBSUxdWzFdLCBbRkFJTF1bMl0sIFtGQUlMXVszXSkKICAgWzFdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzM0Ni9zaGFyZC1pY2xiNC9p
Z3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzQ2L3NoYXJkLWljbGIxL2lndEBydW5uZXJAYWJv
cnRlZC5odG1sCiAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTMzNDYvc2hhcmQtaWNsYjIvaWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwKCiAg
CiMjIyMgV2FybmluZ3MgIyMjIwoKICAqIGlndEBydW5uZXJAYWJvcnRlZDoKICAgIC0gc2hhcmQt
a2JsOiAgICAgICAgICBbRkFJTF1bNF0gKFtmZG8jMTEwOTM4XSkgLT4gKFtGQUlMXVs1XSwgW0ZB
SUxdWzZdLCBbRkFJTF1bN10sIFtGQUlMXVs4XSwgW0ZBSUxdWzldLCBbRkFJTF1bMTBdLCBbRkFJ
TF1bMTFdLCBbRkFJTF1bMTJdLCBbRkFJTF1bMTNdLCBbRkFJTF1bMTRdLCBbRkFJTF1bMTVdLCBb
RkFJTF1bMTZdLCBbRkFJTF1bMTddLCBbRkFJTF1bMThdLCBbRkFJTF1bMTldLCBbRkFJTF1bMjBd
LCBbRkFJTF1bMjFdLCBbRkFJTF1bMjJdLCBbRkFJTF1bMjNdLCBbRkFJTF1bMjRdLCBbRkFJTF1b
MjVdLCBbRkFJTF1bMjZdLCBbRkFJTF1bMjddKSAoW2ZkbyMxMDg5MDNdIC8gW2ZkbyMxMDg5MDRd
IC8gW2ZkbyMxMDg5MDVdIC8gW2ZkbyMxMTA5MzhdKQogICBbNF06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzMDcvc2hhcmQta2JsMy9pZ3RAcnVubmVy
QGFib3J0ZWQuaHRtbAogICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzEzMzQ2L3NoYXJkLWtibDYvaWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwK
ICAgWzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xMzM0Ni9zaGFyZC1rYmwzL2lndEBydW5uZXJAYWJvcnRlZC5odG1sCiAgIFs3XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzNDYvc2hhcmQt
a2JsMS9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICBbOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzQ2L3NoYXJkLWtibDEvaWd0QHJ1bm5l
ckBhYm9ydGVkLmh0bWwKICAgWzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xMzM0Ni9zaGFyZC1rYmwxL2lndEBydW5uZXJAYWJvcnRlZC5odG1s
CiAgIFsxMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEzMzQ2L3NoYXJkLWtibDEvaWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwKICAgWzExXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzNDYvc2hh
cmQta2JsMS9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICBbMTJdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzM0Ni9zaGFyZC1rYmwxL2lndEBy
dW5uZXJAYWJvcnRlZC5odG1sCiAgIFsxM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzQ2L3NoYXJkLWtibDEvaWd0QHJ1bm5lckBhYm9ydGVk
Lmh0bWwKICAgWzE0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTMzNDYvc2hhcmQta2JsMS9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICBbMTVd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzM0
Ni9zaGFyZC1rYmwxL2lndEBydW5uZXJAYWJvcnRlZC5odG1sCiAgIFsxNl06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzQ2L3NoYXJkLWtibDEv
aWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwKICAgWzE3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzNDYvc2hhcmQta2JsMy9pZ3RAcnVubmVyQGFi
b3J0ZWQuaHRtbAogICBbMThdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xMzM0Ni9zaGFyZC1rYmwzL2lndEBydW5uZXJAYWJvcnRlZC5odG1sCiAg
IFsxOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzEzMzQ2L3NoYXJkLWtibDEvaWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwKICAgWzIwXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzNDYvc2hhcmQt
a2JsNi9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICBbMjFdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzM0Ni9zaGFyZC1rYmw0L2lndEBydW5u
ZXJAYWJvcnRlZC5odG1sCiAgIFsyMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzEzMzQ2L3NoYXJkLWtibDEvaWd0QHJ1bm5lckBhYm9ydGVkLmh0
bWwKICAgWzIzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTMzNDYvc2hhcmQta2JsMS9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICBbMjRdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzM0Ni9z
aGFyZC1rYmwzL2lndEBydW5uZXJAYWJvcnRlZC5odG1sCiAgIFsyNV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzQ2L3NoYXJkLWtibDEvaWd0
QHJ1bm5lckBhYm9ydGVkLmh0bWwKICAgWzI2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzNDYvc2hhcmQta2JsMS9pZ3RAcnVubmVyQGFib3J0
ZWQuaHRtbAogICBbMjddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xMzM0Ni9zaGFyZC1rYmwxL2lndEBydW5uZXJAYWJvcnRlZC5odG1sCgogIApL
bm93biBpc3N1ZXMKLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGlu
IFBhdGNod29ya18xMzM0Nl9mdWxsIHRoYXQgY29tZSBmcm9tIGtub3duIGlzc3VlczoKCiMjIyBJ
R1QgY2hhbmdlcyAjIyMKCiMjIyMgSXNzdWVzIGhpdCAjIyMjCgogICogaWd0QGdlbV9laW9Ad2Fp
dC0xMG1zOgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtQQVNTXVsyOF0gLT4gW0RNRVNHLVdB
Uk5dWzI5XSAoW2ZkbyMxMTA5MTMgXSkKICAgWzI4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMwNy9zaGFyZC1rYmw2L2lndEBnZW1fZWlvQHdhaXQt
MTBtcy5odG1sCiAgIFsyOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzEzMzQ2L3NoYXJkLWtibDQvaWd0QGdlbV9laW9Ad2FpdC0xMG1zLmh0bWwK
CiAgKiBpZ3RAZ2VtX2Vpb0B3YWl0LXdlZGdlLTEwbXM6CiAgICAtIHNoYXJkLWFwbDogICAgICAg
ICAgW1BBU1NdWzMwXSAtPiBbRE1FU0ctV0FSTl1bMzFdIChbZmRvIzExMDkxMyBdKSArMSBzaW1p
bGFyIGlzc3VlCiAgIFszMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzYzMDcvc2hhcmQtYXBsMy9pZ3RAZ2VtX2Vpb0B3YWl0LXdlZGdlLTEwbXMuaHRt
bAogICBbMzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xMzM0Ni9zaGFyZC1hcGw4L2lndEBnZW1fZWlvQHdhaXQtd2VkZ2UtMTBtcy5odG1sCgog
ICogaWd0QGdlbV9leGVjX2JhbGFuY2VyQHNtb2tlOgogICAgLSBzaGFyZC1rYmw6ICAgICAgICAg
IFtQQVNTXVszMl0gLT4gW0lOQ09NUExFVEVdWzMzXSAoW2ZkbyMxMDM2NjVdKSArMyBzaW1pbGFy
IGlzc3VlcwogICBbMzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV82MzA3L3NoYXJkLWtibDcvaWd0QGdlbV9leGVjX2JhbGFuY2VyQHNtb2tlLmh0bWwK
ICAgWzMzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTMzNDYvc2hhcmQta2JsNi9pZ3RAZ2VtX2V4ZWNfYmFsYW5jZXJAc21va2UuaHRtbAoKICAq
IGlndEBnZW1fc3luY0BiYXNpYy1zdG9yZS1lYWNoOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAg
IFtQQVNTXVszNF0gLT4gW0ZBSUxdWzM1XSAoW2ZkbyMxMTA5NDZdKQogICBbMzRdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzA3L3NoYXJkLXNrbDEv
aWd0QGdlbV9zeW5jQGJhc2ljLXN0b3JlLWVhY2guaHRtbAogICBbMzVdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzM0Ni9zaGFyZC1za2w4L2ln
dEBnZW1fc3luY0BiYXNpYy1zdG9yZS1lYWNoLmh0bWwKCiAgKiBpZ3RAaTkxNV9oYW5nbWFuQGhh
bmdjaGVjay11bnRlcm1pbmF0ZWQ6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzM2
XSAtPiBbSU5DT01QTEVURV1bMzddIChbZmRvIzEwNzcxM10pICsyIHNpbWlsYXIgaXNzdWVzCiAg
IFszNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYz
MDcvc2hhcmQtaWNsYjgvaWd0QGk5MTVfaGFuZ21hbkBoYW5nY2hlY2stdW50ZXJtaW5hdGVkLmh0
bWwKICAgWzM3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTMzNDYvc2hhcmQtaWNsYjEvaWd0QGk5MTVfaGFuZ21hbkBoYW5nY2hlY2stdW50ZXJt
aW5hdGVkLmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hhbmdjaGVjazoKICAgIC0g
c2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMzhdIC0+IFtJTkNPTVBMRVRFXVszOV0gKFtmZG8j
MTA3NzEzXSAvIFtmZG8jMTA4NTY5XSkKICAgWzM4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMwNy9zaGFyZC1pY2xiNC9pZ3RAaTkxNV9zZWxmdGVz
dEBsaXZlX2hhbmdjaGVjay5odG1sCiAgIFszOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzQ2L3NoYXJkLWljbGI3L2lndEBpOTE1X3NlbGZ0
ZXN0QGxpdmVfaGFuZ2NoZWNrLmh0bWwKCiAgKiBpZ3RAaTkxNV9zdXNwZW5kQGRlYnVnZnMtcmVh
ZGVyOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtQQVNTXVs0MF0gLT4gW0RNRVNHLVdBUk5d
WzQxXSAoW2ZkbyMxMDg1NjZdKQogICBbNDBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV82MzA3L3NoYXJkLWFwbDMvaWd0QGk5MTVfc3VzcGVuZEBkZWJ1
Z2ZzLXJlYWRlci5odG1sCiAgIFs0MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzEzMzQ2L3NoYXJkLWFwbDYvaWd0QGk5MTVfc3VzcGVuZEBkZWJ1
Z2ZzLXJlYWRlci5odG1sCgogICogaWd0QGttc19jdXJzb3JfbGVnYWN5QDJ4LWxvbmctZmxpcC12
cy1jdXJzb3ItYXRvbWljOgogICAgLSBzaGFyZC1nbGs6ICAgICAgICAgIFtQQVNTXVs0Ml0gLT4g
W0ZBSUxdWzQzXSAoW2ZkbyMxMDQ4NzNdKQogICBbNDJdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzA3L3NoYXJkLWdsazIvaWd0QGttc19jdXJzb3Jf
bGVnYWN5QDJ4LWxvbmctZmxpcC12cy1jdXJzb3ItYXRvbWljLmh0bWwKICAgWzQzXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzNDYvc2hhcmQt
Z2xrOC9pZ3RAa21zX2N1cnNvcl9sZWdhY3lAMngtbG9uZy1mbGlwLXZzLWN1cnNvci1hdG9taWMu
aHRtbAoKICAqIGlndEBrbXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rLWludGVycnVwdGli
bGU6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW1BBU1NdWzQ0XSAtPiBbRkFJTF1bNDVdIChb
ZmRvIzEwMjg4N10gLyBbZmRvIzEwNTM2M10pCiAgIFs0NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzMDcvc2hhcmQtYXBsNC9pZ3RAa21zX2ZsaXBA
ZmxpcC12cy1leHBpcmVkLXZibGFuay1pbnRlcnJ1cHRpYmxlLmh0bWwKICAgWzQ1XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzNDYvc2hhcmQt
YXBsNS9pZ3RAa21zX2ZsaXBAZmxpcC12cy1leHBpcmVkLXZibGFuay1pbnRlcnJ1cHRpYmxlLmh0
bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0ycC1wcmltc2Nybi1jdXIt
aW5kZmItZHJhdy1yZW5kZXI6CiAgICAtIHNoYXJkLWhzdzogICAgICAgICAgW1BBU1NdWzQ2XSAt
PiBbU0tJUF1bNDddIChbZmRvIzEwOTI3MV0pICs1IHNpbWlsYXIgaXNzdWVzCiAgIFs0Nl06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzMDcvc2hhcmQt
aHN3Ny9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0ycC1wcmltc2Nybi1jdXItaW5k
ZmItZHJhdy1yZW5kZXIuaHRtbAogICBbNDddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzM0Ni9zaGFyZC1oc3cxL2lndEBrbXNfZnJvbnRidWZm
ZXJfdHJhY2tpbmdAZmJjLTJwLXByaW1zY3JuLWN1ci1pbmRmYi1kcmF3LXJlbmRlci5odG1sCgog
ICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tY3VyLWlu
ZGZiLWRyYXctcmVuZGVyOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVs0OF0gLT4g
W0ZBSUxdWzQ5XSAoW2ZkbyMxMDMxNjddKSArNiBzaW1pbGFyIGlzc3VlcwogICBbNDhdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzA3L3NoYXJkLWlj
bGIyL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLWN1ci1p
bmRmYi1kcmF3LXJlbmRlci5odG1sCiAgIFs0OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzQ2L3NoYXJkLWljbGI1L2lndEBrbXNfZnJvbnRi
dWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLWN1ci1pbmRmYi1kcmF3LXJlbmRlci5o
dG1sCgogICogaWd0QGttc19wbGFuZUBwbGFuZS1wb3NpdGlvbi1jb3ZlcmVkLXBpcGUtYS1wbGFu
ZXM6CiAgICAtIHNoYXJkLXNuYjogICAgICAgICAgW1BBU1NdWzUwXSAtPiBbU0tJUF1bNTFdIChb
ZmRvIzEwOTI3MV0pICszIHNpbWlsYXIgaXNzdWVzCiAgIFs1MF06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzMDcvc2hhcmQtc25iMS9pZ3RAa21zX3Bs
YW5lQHBsYW5lLXBvc2l0aW9uLWNvdmVyZWQtcGlwZS1hLXBsYW5lcy5odG1sCiAgIFs1MV06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzQ2L3No
YXJkLXNuYjIvaWd0QGttc19wbGFuZUBwbGFuZS1wb3NpdGlvbi1jb3ZlcmVkLXBpcGUtYS1wbGFu
ZXMuaHRtbAoKICAqIGlndEBrbXNfcGxhbmVfbG93cmVzQHBpcGUtYS10aWxpbmcteDoKICAgIC0g
c2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bNTJdIC0+IFtGQUlMXVs1M10gKFtmZG8jMTAzMTY2
XSkgKzEgc2ltaWxhciBpc3N1ZQogICBbNTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV82MzA3L3NoYXJkLWljbGIyL2lndEBrbXNfcGxhbmVfbG93cmVz
QHBpcGUtYS10aWxpbmcteC5odG1sCiAgIFs1M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzQ2L3NoYXJkLWljbGI1L2lndEBrbXNfcGxhbmVf
bG93cmVzQHBpcGUtYS10aWxpbmcteC5odG1sCgogICogaWd0QGttc19wc3JAcHNyMl9wcmltYXJ5
X3BhZ2VfZmxpcDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bNTRdIC0+IFtTS0lQ
XVs1NV0gKFtmZG8jMTA5NDQxXSkgKzMgc2ltaWxhciBpc3N1ZXMKICAgWzU0XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMwNy9zaGFyZC1pY2xiMi9p
Z3RAa21zX3BzckBwc3IyX3ByaW1hcnlfcGFnZV9mbGlwLmh0bWwKICAgWzU1XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzNDYvc2hhcmQtaWNs
YjUvaWd0QGttc19wc3JAcHNyMl9wcmltYXJ5X3BhZ2VfZmxpcC5odG1sCgogIAojIyMjIFBvc3Np
YmxlIGZpeGVzICMjIyMKCiAgKiBpZ3RAZ2VtX2Vpb0Bpbi1mbGlnaHQtY29udGV4dHMtMXVzOgog
ICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtETUVTRy1XQVJOXVs1Nl0gKFtmZG8jMTEwOTEzIF0p
IC0+IFtQQVNTXVs1N10gKzEgc2ltaWxhciBpc3N1ZQogICBbNTZdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzA3L3NoYXJkLWFwbDIvaWd0QGdlbV9l
aW9AaW4tZmxpZ2h0LWNvbnRleHRzLTF1cy5odG1sCiAgIFs1N106IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzQ2L3NoYXJkLWFwbDQvaWd0QGdl
bV9laW9AaW4tZmxpZ2h0LWNvbnRleHRzLTF1cy5odG1sCgogICogaWd0QGdlbV9leGVjX2NyZWF0
ZUBmb3JrZWQ6CiAgICAtIHNoYXJkLWdsazogICAgICAgICAgW0ZBSUxdWzU4XSAoW2ZkbyMxMTA5
NDZdKSAtPiBbUEFTU11bNTldCiAgIFs1OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzYzMDcvc2hhcmQtZ2xrOS9pZ3RAZ2VtX2V4ZWNfY3JlYXRlQGZv
cmtlZC5odG1sCiAgIFs1OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzEzMzQ2L3NoYXJkLWdsazMvaWd0QGdlbV9leGVjX2NyZWF0ZUBmb3JrZWQu
aHRtbAoKICAqIGlndEBnZW1fdXNlcnB0cl9ibGl0c0BzeW5jLXVubWFwLWN5Y2xlczoKICAgIC0g
c2hhcmQtc25iOiAgICAgICAgICBbRE1FU0ctV0FSTl1bNjBdIChbZmRvIzExMDkxMyBdKSAtPiBb
UEFTU11bNjFdCiAgIFs2MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzYzMDcvc2hhcmQtc25iMi9pZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAc3luYy11bm1h
cC1jeWNsZXMuaHRtbAogICBbNjFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xMzM0Ni9zaGFyZC1zbmIyL2lndEBnZW1fdXNlcnB0cl9ibGl0c0Bz
eW5jLXVubWFwLWN5Y2xlcy5odG1sCgogICogaWd0QGk5MTVfc3VzcGVuZEBzeXNmcy1yZWFkZXI6
CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW0RNRVNHLVdBUk5dWzYyXSAoW2ZkbyMxMDg1NjZd
KSAtPiBbUEFTU11bNjNdICs0IHNpbWlsYXIgaXNzdWVzCiAgIFs2Ml06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzMDcvc2hhcmQtYXBsMS9pZ3RAaTkx
NV9zdXNwZW5kQHN5c2ZzLXJlYWRlci5odG1sCiAgIFs2M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzQ2L3NoYXJkLWFwbDUvaWd0QGk5MTVf
c3VzcGVuZEBzeXNmcy1yZWFkZXIuaHRtbAoKICAqIGlndEBrbXNfY3Vyc29yX2xlZ2FjeUBjdXJz
b3JiLXZzLWZsaXBiLWF0b21pYzoKICAgIC0gc2hhcmQtaHN3OiAgICAgICAgICBbU0tJUF1bNjRd
IChbZmRvIzEwOTI3MV0pIC0+IFtQQVNTXVs2NV0gKzE2IHNpbWlsYXIgaXNzdWVzCiAgIFs2NF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzMDcvc2hh
cmQtaHN3MS9pZ3RAa21zX2N1cnNvcl9sZWdhY3lAY3Vyc29yYi12cy1mbGlwYi1hdG9taWMuaHRt
bAogICBbNjVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xMzM0Ni9zaGFyZC1oc3c0L2lndEBrbXNfY3Vyc29yX2xlZ2FjeUBjdXJzb3JiLXZzLWZs
aXBiLWF0b21pYy5odG1sCgogICogaWd0QGttc19mbGlwQGZsaXAtdnMtc3VzcGVuZDoKICAgIC0g
c2hhcmQtZ2xrOiAgICAgICAgICBbSU5DT01QTEVURV1bNjZdIChbZmRvIzEwMzM1OV0gLyBbay5v
cmcjMTk4MTMzXSkgLT4gW1BBU1NdWzY3XQogICBbNjZdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzA3L3NoYXJkLWdsazQvaWd0QGttc19mbGlwQGZs
aXAtdnMtc3VzcGVuZC5odG1sCiAgIFs2N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzQ2L3NoYXJkLWdsazMvaWd0QGttc19mbGlwQGZsaXAt
dnMtc3VzcGVuZC5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtaW5k
ZmItc2NhbGVkcHJpbWFyeToKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbRkFJTF1bNjhdIChb
ZmRvIzEwMzE2N10pIC0+IFtQQVNTXVs2OV0gKzggc2ltaWxhciBpc3N1ZXMKICAgWzY4XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMwNy9zaGFyZC1p
Y2xiNi9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy1pbmRmYi1zY2FsZWRwcmltYXJ5
Lmh0bWwKICAgWzY5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTMzNDYvc2hhcmQtaWNsYjUvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0Bm
YmMtaW5kZmItc2NhbGVkcHJpbWFyeS5odG1sCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFj
a2luZ0BmYmNwc3Itc3VzcGVuZDoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbSU5DT01QTEVU
RV1bNzBdIChbZmRvIzEwNDEwOF0gLyBbZmRvIzEwNjk3OF0pIC0+IFtQQVNTXVs3MV0KICAgWzcw
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMwNy9z
aGFyZC1za2wyL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLXN1c3BlbmQuaHRt
bAogICBbNzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xMzM0Ni9zaGFyZC1za2w3L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNy
LXN1c3BlbmQuaHRtbAoKICAqIGlndEBrbXNfcGlwZV9jcmNfYmFzaWNAaGFuZy1yZWFkLWNyYy1w
aXBlLWM6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZBSUxdWzcyXSAoW2ZkbyMxMDMxOTFd
KSAtPiBbUEFTU11bNzNdCiAgIFs3Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzYzMDcvc2hhcmQtc2tsOC9pZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQGhh
bmctcmVhZC1jcmMtcGlwZS1jLmh0bWwKICAgWzczXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMzNDYvc2hhcmQtc2tsNC9pZ3RAa21zX3BpcGVf
Y3JjX2Jhc2ljQGhhbmctcmVhZC1jcmMtcGlwZS1jLmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5lX2Fs
cGhhX2JsZW5kQHBpcGUtYy1jb25zdGFudC1hbHBoYS1taW46CiAgICAtIHNoYXJkLXNrbDogICAg
ICAgICAgW0ZBSUxdWzc0XSAoW2ZkbyMxMDgxNDVdKSAtPiBbUEFTU11bNzVdICsxIHNpbWlsYXIg
aXNzdWUKICAgWzc0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNjMwNy9zaGFyZC1za2w4L2lndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1jLWNv
bnN0YW50LWFscGhhLW1pbi5odG1sCiAgIFs3NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzQ2L3NoYXJkLXNrbDQvaWd0QGttc19wbGFuZV9h
bHBoYV9ibGVuZEBwaXBlLWMtY29uc3RhbnQtYWxwaGEtbWluLmh0bWwKCiAgKiBpZ3RAa21zX3Bz
cjJfc3VAcGFnZV9mbGlwOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtTS0lQXVs3Nl0gKFtm
ZG8jMTA5NjQyXSkgLT4gW1BBU1NdWzc3XQogICBbNzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzA3L3NoYXJkLWljbGIzL2lndEBrbXNfcHNyMl9z
dUBwYWdlX2ZsaXAuaHRtbAogICBbNzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xMzM0Ni9zaGFyZC1pY2xiMi9pZ3RAa21zX3BzcjJfc3VAcGFn
ZV9mbGlwLmh0bWwKCiAgKiBpZ3RAa21zX3NldG1vZGVAYmFzaWM6CiAgICAtIHNoYXJkLWFwbDog
ICAgICAgICAgW0ZBSUxdWzc4XSAoW2ZkbyM5OTkxMl0pIC0+IFtQQVNTXVs3OV0KICAgWzc4XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMwNy9zaGFy
ZC1hcGw3L2lndEBrbXNfc2V0bW9kZUBiYXNpYy5odG1sCiAgIFs3OV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMzQ2L3NoYXJkLWFwbDQvaWd0
QGttc19zZXRtb2RlQGJhc2ljLmh0bWwKCiAgCiMjIyMgV2FybmluZ3MgIyMjIwoKICAqIGlndEBn
ZW1fZXhlY19iYWxhbmNlckBzbW9rZToKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbU0tJUF1b
ODBdIChbZmRvIzExMDg1NF0pIC0+IFtJTkNPTVBMRVRFXVs4MV0gKFtmZG8jMTA3NzEzXSkKICAg
WzgwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMw
Ny9zaGFyZC1pY2xiMy9pZ3RAZ2VtX2V4ZWNfYmFsYW5jZXJAc21va2UuaHRtbAogICBbODFdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzM0Ni9z
aGFyZC1pY2xiMi9pZ3RAZ2VtX2V4ZWNfYmFsYW5jZXJAc21va2UuaHRtbAoKICAqIGlndEBrbXNf
ZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLXByaS1pbmRmYi1kcmF3LXB3
cml0ZToKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbRkFJTF1bODJdIChbZmRvIzEwMzE2N10p
IC0+IFtGQUlMXVs4M10gKFtmZG8jMTA4MDQwXSkKICAgWzgyXTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjMwNy9zaGFyZC1za2wyL2lndEBrbXNfZnJv
bnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLXByaS1pbmRmYi1kcmF3LXB3cml0
ZS5odG1sCiAgIFs4M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzEzMzQ2L3NoYXJkLXNrbDUvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0Bm
YmNwc3ItMXAtcHJpbXNjcm4tcHJpLWluZGZiLWRyYXctcHdyaXRlLmh0bWwKCiAgCiAgW2ZkbyMx
MDI4ODddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDI4
ODcKICBbZmRvIzEwMzE2Nl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTEwMzE2NgogIFtmZG8jMTAzMTY3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMTY3CiAgW2ZkbyMxMDMxOTFdOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMxOTEKICBbZmRvIzEwMzM1OV06IGh0dHBz
Oi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzM1OQogIFtmZG8jMTAz
NjY1XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzNjY1
CiAgW2ZkbyMxMDQxMDhdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMDQxMDgKICBbZmRvIzEwNDg3M106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTEwNDg3MwogIFtmZG8jMTA1MzYzXTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA1MzYzCiAgW2ZkbyMxMDY5NzhdOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDY5NzgKICBbZmRvIzEwNzcx
M106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzcxMwog
IFtmZG8jMTA4MDQwXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9MTA4MDQwCiAgW2ZkbyMxMDgxNDVdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3No
b3dfYnVnLmNnaT9pZD0xMDgxNDUKICBbZmRvIzEwODU2Nl06IGh0dHBzOi8vYnVncy5mcmVlZGVz
a3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwODU2NgogIFtmZG8jMTA4NTY5XTogaHR0cHM6Ly9i
dWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4NTY5CiAgW2ZkbyMxMDg5MDNd
OiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDg5MDMKICBb
ZmRvIzEwODkwNF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lk
PTEwODkwNAogIFtmZG8jMTA4OTA1XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93
X2J1Zy5jZ2k/aWQ9MTA4OTA1CiAgW2ZkbyMxMDkyNzFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0
b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkyNzEKICBbZmRvIzEwOTQ0MV06IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTQ0MQogIFtmZG8jMTA5NjQyXTog
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5NjQyCiAgW2Zk
byMxMTA4NTRdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0x
MTA4NTQKICBbZmRvIzExMDkxMyBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMTA5MTMgCiAgW2ZkbyMxMTA5MzhdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0
b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA5MzgKICBbZmRvIzExMDk0Nl06IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDk0NgogIFtmZG8jOTk5MTJdOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD05OTkxMgogIFtrLm9y
ZyMxOTgxMzNdOiBodHRwczovL2J1Z3ppbGxhLmtlcm5lbC5vcmcvc2hvd19idWcuY2dpP2lkPTE5
ODEzMwoKClBhcnRpY2lwYXRpbmcgaG9zdHMgKDEwIC0+IDEwKQotLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KCiAgTm8gY2hhbmdlcyBpbiBwYXJ0aWNpcGF0aW5nIGhvc3RzCgoKQnVpbGQg
Y2hhbmdlcwotLS0tLS0tLS0tLS0tCgogICogTGludXg6IENJX0RSTV82MzA3IC0+IFBhdGNod29y
a18xMzM0NgoKICBDSV9EUk1fNjMwNzogYmJiNjE5NTRiNjFhNTQxMWNkNmQ3YzBlOThhNmIzMDYz
NWQ4Y2Y0YiBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIElH
VF81MDYxOiBjODhjZWQ3OWE3YjcxYWVjNThmMWQ5YzVjNTk5YWMyZjQzMWJjZjdhIEAgZ2l0Oi8v
YW5vbmdpdC5mcmVlZGVza3RvcC5vcmcveG9yZy9hcHAvaW50ZWwtZ3B1LXRvb2xzCiAgUGF0Y2h3
b3JrXzEzMzQ2OiBjNjY1MTYyNzc1YzJkZDBhY2U0NTkzOTIxMTY1ZGQ5NjNmY2I2NmVmIEAgZ2l0
Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgcGlnbGl0XzQ1MDk6IGZk
YzVhNGNhMTExMjRhYjg0MTNjNzk4ODg5NmVlYzRjOTczMzY2OTQgQCBnaXQ6Ly9hbm9uZ2l0LmZy
ZWVkZXNrdG9wLm9yZy9waWdsaXQKCj09IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzM0Ni8K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
