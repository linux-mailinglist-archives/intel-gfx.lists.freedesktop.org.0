Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F19C5D5D8
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 20:02:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDC4089F24;
	Tue,  2 Jul 2019 18:02:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4E2C389F24;
 Tue,  2 Jul 2019 18:02:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 45B67A0087;
 Tue,  2 Jul 2019 18:02:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Tue, 02 Jul 2019 18:02:51 -0000
Message-ID: <20190702180251.28694.37844@emeril.freedesktop.org>
References: <20190701113437.4043-1-lionel.g.landwerlin@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190701113437.4043-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_Vulkan_performance_query_support_=28rev6=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFZ1bGthbiBwZXJmb3JtYW5j
ZSBxdWVyeSBzdXBwb3J0IChyZXY2KQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNr
dG9wLm9yZy9zZXJpZXMvNjA5MTYvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQ0kg
QnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNjM5MF9mdWxsIC0+IFBhdGNod29ya18xMzQ4
MF9mdWxsCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKkZBSUxVUkUqKgoKICBTZXJpb3VzIHVua25vd24gY2hh
bmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTM0ODBfZnVsbCBhYnNvbHV0ZWx5IG5lZWQgdG8g
YmUKICB2ZXJpZmllZCBtYW51YWxseS4KICAKICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNo
YW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMKICBpbnRyb2R1Y2VkIGlu
IFBhdGNod29ya18xMzQ4MF9mdWxsLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxs
b3cgdGhlbQogIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCBy
ZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLgoKICAKClBvc3NpYmxlIG5ldyBpc3N1ZXMKLS0t
LS0tLS0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5
IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xMzQ4MF9mdWxsOgoKIyMjIElHVCBj
aGFuZ2VzICMjIwoKIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjCgogICogaWd0QHBlcmZA
YmxvY2tpbmc6CiAgICAtIHNoYXJkLWhzdzogICAgICAgICAgW1BBU1NdWzFdIC0+IFtETUVTRy1X
QVJOXVsyXSArMTIgc2ltaWxhciBpc3N1ZXMKICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzkwL3NoYXJkLWhzdzgvaWd0QHBlcmZAYmxvY2tp
bmcuaHRtbAogICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzEzNDgwL3NoYXJkLWhzdzcvaWd0QHBlcmZAYmxvY2tpbmcuaHRtbAoKICAqIGln
dEBwZXJmQGNyZWF0ZS1kZXN0cm95LXVzZXJzcGFjZS1jb25maWc6CiAgICAtIHNoYXJkLWdsazog
ICAgICAgICAgW1BBU1NdWzNdIC0+IFtETUVTRy1XQVJOXVs0XSArMTIgc2ltaWxhciBpc3N1ZXMK
ICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82
MzkwL3NoYXJkLWdsazkvaWd0QHBlcmZAY3JlYXRlLWRlc3Ryb3ktdXNlcnNwYWNlLWNvbmZpZy5o
dG1sCiAgIFs0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTM0ODAvc2hhcmQtZ2xrNy9pZ3RAcGVyZkBjcmVhdGUtZGVzdHJveS11c2Vyc3BhY2Ut
Y29uZmlnLmh0bWwKCiAgKiBpZ3RAcGVyZkBnZW44LXVucHJpdmlsZWdlZC1zaW5nbGUtY3R4LWNv
dW50ZXJzOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVs1XSAtPiBbRE1FU0ctV0FS
Tl1bNl0gKzEwIHNpbWlsYXIgaXNzdWVzCiAgIFs1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjM5MC9zaGFyZC1za2w5L2lndEBwZXJmQGdlbjgtdW5w
cml2aWxlZ2VkLXNpbmdsZS1jdHgtY291bnRlcnMuaHRtbAogICBbNl06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNDgwL3NoYXJkLXNrbDUvaWd0
QHBlcmZAZ2VuOC11bnByaXZpbGVnZWQtc2luZ2xlLWN0eC1jb3VudGVycy5odG1sCgogICogaWd0
QHBlcmZAaW52YWxpZC1vYS1leHBvbmVudDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFT
U11bN10gLT4gW0RNRVNHLVdBUk5dWzhdICsxMiBzaW1pbGFyIGlzc3VlcwogICBbN106IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzOTAvc2hhcmQtaWNs
YjIvaWd0QHBlcmZAaW52YWxpZC1vYS1leHBvbmVudC5odG1sCiAgIFs4XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0ODAvc2hhcmQtaWNsYjgv
aWd0QHBlcmZAaW52YWxpZC1vYS1leHBvbmVudC5odG1sCgogICogaWd0QHBlcmZAaW52YWxpZC1v
YS1mb3JtYXQtaWQ6CiAgICAtIHNoYXJkLWtibDogICAgICAgICAgW1BBU1NdWzldIC0+IFtETUVT
Ry1XQVJOXVsxMF0gKzEyIHNpbWlsYXIgaXNzdWVzCiAgIFs5XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjM5MC9zaGFyZC1rYmwzL2lndEBwZXJmQGlu
dmFsaWQtb2EtZm9ybWF0LWlkLmh0bWwKICAgWzEwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0ODAvc2hhcmQta2JsMS9pZ3RAcGVyZkBpbnZh
bGlkLW9hLWZvcm1hdC1pZC5odG1sCiAgICAtIHNoYXJkLWhzdzogICAgICAgICAgTk9UUlVOIC0+
IFtETUVTRy1XQVJOXVsxMV0KICAgWzExXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0ODAvc2hhcmQtaHN3MS9pZ3RAcGVyZkBpbnZhbGlkLW9h
LWZvcm1hdC1pZC5odG1sCgogICogaWd0QHBlcmZAaW52YWxpZC1vYS1tZXRyaWMtc2V0LWlkOgog
ICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVsxMl0gLT4gW0lOQ09NUExFVEVdWzEzXSAr
MiBzaW1pbGFyIGlzc3VlcwogICBbMTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82MzkwL3NoYXJkLXNrbDEvaWd0QHBlcmZAaW52YWxpZC1vYS1tZXRy
aWMtc2V0LWlkLmh0bWwKICAgWzEzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTM0ODAvc2hhcmQtc2tsNy9pZ3RAcGVyZkBpbnZhbGlkLW9hLW1l
dHJpYy1zZXQtaWQuaHRtbAoKICAqIGlndEBwZXJmQGxvdy1vYS1leHBvbmVudC1wZXJtaXNzaW9u
czoKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbUEFTU11bMTRdIC0+IFtETUVTRy1XQVJOXVsx
NV0gKzExIHNpbWlsYXIgaXNzdWVzCiAgIFsxNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzYzOTAvc2hhcmQtYXBsOC9pZ3RAcGVyZkBsb3ctb2EtZXhw
b25lbnQtcGVybWlzc2lvbnMuaHRtbAogICBbMTVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzQ4MC9zaGFyZC1hcGw2L2lndEBwZXJmQGxvdy1v
YS1leHBvbmVudC1wZXJtaXNzaW9ucy5odG1sCgogICogaWd0QHJ1bm5lckBhYm9ydGVkOgogICAg
LSBzaGFyZC1oc3c6ICAgICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bMTZdCiAgIFsxNl06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNDgwL3NoYXJk
LWhzdzQvaWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBO
T1RSVU4gLT4gW0ZBSUxdWzE3XQogICBbMTddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzQ4MC9zaGFyZC1rYmwxL2lndEBydW5uZXJAYWJvcnRl
ZC5odG1sCiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgTk9UUlVOIC0+IFtGQUlMXVsxOF0KICAg
WzE4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTM0ODAvc2hhcmQtaWNsYjEvaWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwKICAgIC0gc2hhcmQtYXBs
OiAgICAgICAgICBOT1RSVU4gLT4gW0ZBSUxdWzE5XQogICBbMTldOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzQ4MC9zaGFyZC1hcGwxL2lndEBy
dW5uZXJAYWJvcnRlZC5odG1sCgogIAojIyMjIFdhcm5pbmdzICMjIyMKCiAgKiBpZ3RAcGVyZkBi
bG9ja2luZzoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbRkFJTF1bMjBdIChbZmRvIzExMDcy
OF0pIC0+IFtETUVTRy1XQVJOXVsyMV0KICAgWzIwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjM5MC9zaGFyZC1za2wxMC9pZ3RAcGVyZkBibG9ja2lu
Zy5odG1sCiAgIFsyMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzEzNDgwL3NoYXJkLXNrbDMvaWd0QHBlcmZAYmxvY2tpbmcuaHRtbAoKICAKS25v
d24gaXNzdWVzCi0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQ
YXRjaHdvcmtfMTM0ODBfZnVsbCB0aGF0IGNvbWUgZnJvbSBrbm93biBpc3N1ZXM6CgojIyMgSUdU
IGNoYW5nZXMgIyMjCgojIyMjIElzc3VlcyBoaXQgIyMjIwoKICAqIGlndEBnZW1fZXhlY19hd2Fp
dEB3aWRlLWNvbnRleHRzOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVsyMl0gLT4g
W0ZBSUxdWzIzXSAoW2ZkbyMxMTA3NjldIC8gW2ZkbyMxMTA5NDZdKQogICBbMjJdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzkwL3NoYXJkLWljbGIx
L2lndEBnZW1fZXhlY19hd2FpdEB3aWRlLWNvbnRleHRzLmh0bWwKICAgWzIzXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0ODAvc2hhcmQtaWNs
YjIvaWd0QGdlbV9leGVjX2F3YWl0QHdpZGUtY29udGV4dHMuaHRtbAoKICAqIGlndEBpOTE1X3N1
c3BlbmRAZmVuY2UtcmVzdG9yZS11bnRpbGVkOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtQ
QVNTXVsyNF0gLT4gW0RNRVNHLVdBUk5dWzI1XSAoW2ZkbyMxMDg1NjZdKSArMSBzaW1pbGFyIGlz
c3VlCiAgIFsyNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzYzOTAvc2hhcmQtYXBsNS9pZ3RAaTkxNV9zdXNwZW5kQGZlbmNlLXJlc3RvcmUtdW50aWxl
ZC5odG1sCiAgIFsyNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzEzNDgwL3NoYXJkLWFwbDgvaWd0QGk5MTVfc3VzcGVuZEBmZW5jZS1yZXN0b3Jl
LXVudGlsZWQuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rLWlu
dGVycnVwdGlibGU6CiAgICAtIHNoYXJkLWdsazogICAgICAgICAgW1BBU1NdWzI2XSAtPiBbRkFJ
TF1bMjddIChbZmRvIzEwNTM2M10pCiAgIFsyNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzYzOTAvc2hhcmQtZ2xrNC9pZ3RAa21zX2ZsaXBAZmxpcC12
cy1leHBpcmVkLXZibGFuay1pbnRlcnJ1cHRpYmxlLmh0bWwKICAgWzI3XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0ODAvc2hhcmQtZ2xrMy9p
Z3RAa21zX2ZsaXBAZmxpcC12cy1leHBpcmVkLXZibGFuay1pbnRlcnJ1cHRpYmxlLmh0bWwKCiAg
KiBpZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYS1jb3ZlcmFnZS03ZWZjOgogICAgLSBz
aGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVsyOF0gLT4gW0ZBSUxdWzI5XSAoW2ZkbyMxMDgxNDVd
KQogICBbMjhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV82MzkwL3NoYXJkLXNrbDIvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWEtY292ZXJh
Z2UtN2VmYy5odG1sCiAgIFsyOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzEzNDgwL3NoYXJkLXNrbDQvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVu
ZEBwaXBlLWEtY292ZXJhZ2UtN2VmYy5odG1sCgogICogaWd0QGttc19wc3IyX3N1QHBhZ2VfZmxp
cDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMzBdIC0+IFtTS0lQXVszMV0gKFtm
ZG8jMTA5NjQyXSkKICAgWzMwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNjM5MC9zaGFyZC1pY2xiMi9pZ3RAa21zX3BzcjJfc3VAcGFnZV9mbGlwLmh0
bWwKICAgWzMxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTM0ODAvc2hhcmQtaWNsYjMvaWd0QGttc19wc3IyX3N1QHBhZ2VfZmxpcC5odG1sCgog
ICogaWd0QGttc19wc3JAcHNyMl9wcmltYXJ5X3BhZ2VfZmxpcDoKICAgIC0gc2hhcmQtaWNsYjog
ICAgICAgICBbUEFTU11bMzJdIC0+IFtTS0lQXVszM10gKFtmZG8jMTA5NDQxXSkKICAgWzMyXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjM5MC9zaGFy
ZC1pY2xiMi9pZ3RAa21zX3BzckBwc3IyX3ByaW1hcnlfcGFnZV9mbGlwLmh0bWwKICAgWzMzXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0ODAv
c2hhcmQtaWNsYjQvaWd0QGttc19wc3JAcHNyMl9wcmltYXJ5X3BhZ2VfZmxpcC5odG1sCgogICog
aWd0QGttc19zZXRtb2RlQGJhc2ljOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtQQVNTXVsz
NF0gLT4gW0ZBSUxdWzM1XSAoW2ZkbyM5OTkxMl0pCiAgIFszNF06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzOTAvc2hhcmQtYXBsNC9pZ3RAa21zX3Nl
dG1vZGVAYmFzaWMuaHRtbAogICBbMzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xMzQ4MC9zaGFyZC1hcGwyL2lndEBrbXNfc2V0bW9kZUBiYXNp
Yy5odG1sCgogICogaWd0QHBlcmZAZGlzYWJsZWQtcmVhZC1lcnJvcjoKICAgIC0gc2hhcmQta2Js
OiAgICAgICAgICBbUEFTU11bMzZdIC0+IFtJTkNPTVBMRVRFXVszN10gKFtmZG8jMTAzNjY1XSkg
KzMgc2ltaWxhciBpc3N1ZXMKICAgWzM2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNjM5MC9zaGFyZC1rYmw0L2lndEBwZXJmQGRpc2FibGVkLXJlYWQt
ZXJyb3IuaHRtbAogICBbMzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xMzQ4MC9zaGFyZC1rYmwyL2lndEBwZXJmQGRpc2FibGVkLXJlYWQtZXJy
b3IuaHRtbAogICAgLSBzaGFyZC1oc3c6ICAgICAgICAgIFtQQVNTXVszOF0gLT4gW0lOQ09NUExF
VEVdWzM5XSAoW2ZkbyMxMDM1NDBdKSArMiBzaW1pbGFyIGlzc3VlcwogICBbMzhdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzkwL3NoYXJkLWhzdzEv
aWd0QHBlcmZAZGlzYWJsZWQtcmVhZC1lcnJvci5odG1sCiAgIFszOV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNDgwL3NoYXJkLWhzdzcvaWd0
QHBlcmZAZGlzYWJsZWQtcmVhZC1lcnJvci5odG1sCgogICogaWd0QHBlcmZAaW52YWxpZC1vYS1t
ZXRyaWMtc2V0LWlkOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtQQVNTXVs0MF0gLT4gW0lO
Q09NUExFVEVdWzQxXSAoW2ZkbyMxMDM5MjddKSArNCBzaW1pbGFyIGlzc3VlcwogICBbNDBdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzkwL3NoYXJk
LWFwbDUvaWd0QHBlcmZAaW52YWxpZC1vYS1tZXRyaWMtc2V0LWlkLmh0bWwKICAgWzQxXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0ODAvc2hh
cmQtYXBsMS9pZ3RAcGVyZkBpbnZhbGlkLW9hLW1ldHJpYy1zZXQtaWQuaHRtbAogICAgLSBzaGFy
ZC1nbGs6ICAgICAgICAgIFtQQVNTXVs0Ml0gLT4gW0lOQ09NUExFVEVdWzQzXSAoW2ZkbyMxMDMz
NTldIC8gW2sub3JnIzE5ODEzM10pICszIHNpbWlsYXIgaXNzdWVzCiAgIFs0Ml06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzOTAvc2hhcmQtZ2xrMy9p
Z3RAcGVyZkBpbnZhbGlkLW9hLW1ldHJpYy1zZXQtaWQuaHRtbAogICBbNDNdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzQ4MC9zaGFyZC1nbGsz
L2lndEBwZXJmQGludmFsaWQtb2EtbWV0cmljLXNldC1pZC5odG1sCgogICogaWd0QHBlcmZAb2Et
ZXhwb25lbnRzOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVs0NF0gLT4gW0lOQ09N
UExFVEVdWzQ1XSAoW2ZkbyMxMDQxMDhdKQogICBbNDRdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzkwL3NoYXJkLXNrbDUvaWd0QHBlcmZAb2EtZXhw
b25lbnRzLmh0bWwKICAgWzQ1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTM0ODAvc2hhcmQtc2tsOC9pZ3RAcGVyZkBvYS1leHBvbmVudHMuaHRt
bAoKICAqIGlndEBwZXJmQG9hLWZvcm1hdHM6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BB
U1NdWzQ2XSAtPiBbSU5DT01QTEVURV1bNDddIChbZmRvIzEwNzcxM10pICszIHNpbWlsYXIgaXNz
dWVzCiAgIFs0Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzYzOTAvc2hhcmQtaWNsYjUvaWd0QHBlcmZAb2EtZm9ybWF0cy5odG1sCiAgIFs0N106IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNDgwL3No
YXJkLWljbGI4L2lndEBwZXJmQG9hLWZvcm1hdHMuaHRtbAogICAgLSBzaGFyZC1oc3c6ICAgICAg
ICAgIFtQQVNTXVs0OF0gLT4gW0lOQ09NUExFVEVdWzQ5XSAoW2ZkbyMxMDM1NDBdIC8gW2ZkbyMx
MDg3NjddKQogICBbNDhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV82MzkwL3NoYXJkLWhzdzUvaWd0QHBlcmZAb2EtZm9ybWF0cy5odG1sCiAgIFs0OV06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNDgw
L3NoYXJkLWhzdzIvaWd0QHBlcmZAb2EtZm9ybWF0cy5odG1sCgogIAojIyMjIFBvc3NpYmxlIGZp
eGVzICMjIyMKCiAgKiBpZ3RAZ2VtX2V4ZWNfYmFsYW5jZXJAc21va2U6CiAgICAtIHNoYXJkLWlj
bGI6ICAgICAgICAgW1NLSVBdWzUwXSAoW2ZkbyMxMTA4NTRdKSAtPiBbUEFTU11bNTFdCiAgIFs1
MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzOTAv
c2hhcmQtaWNsYjUvaWd0QGdlbV9leGVjX2JhbGFuY2VyQHNtb2tlLmh0bWwKICAgWzUxXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0ODAvc2hh
cmQtaWNsYjEvaWd0QGdlbV9leGVjX2JhbGFuY2VyQHNtb2tlLmh0bWwKCiAgKiBpZ3RAZ2VtX2V4
ZWNfc2NoZWR1bGVAcHJlZW1wdGl2ZS1oYW5nLXZlYm94OgogICAgLSBzaGFyZC1pY2xiOiAgICAg
ICAgIFtJTkNPTVBMRVRFXVs1Ml0gKFtmZG8jMTA3NzEzXSkgLT4gW1BBU1NdWzUzXQogICBbNTJd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzkwL3No
YXJkLWljbGI3L2lndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0aXZlLWhhbmctdmVib3guaHRt
bAogICBbNTNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xMzQ4MC9zaGFyZC1pY2xiMy9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJlZW1wdGl2ZS1o
YW5nLXZlYm94Lmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBtb2NrX3JlcXVlc3RzOgogICAg
LSBzaGFyZC1za2w6ICAgICAgICAgIFtJTkNPTVBMRVRFXVs1NF0gKFtmZG8jMTEwNTUwXSkgLT4g
W1BBU1NdWzU1XQogICBbNTRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV82MzkwL3NoYXJkLXNrbDIvaWd0QGk5MTVfc2VsZnRlc3RAbW9ja19yZXF1ZXN0
cy5odG1sCiAgIFs1NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzEzNDgwL3NoYXJkLXNrbDcvaWd0QGk5MTVfc2VsZnRlc3RAbW9ja19yZXF1ZXN0
cy5odG1sCiAgICAtIHNoYXJkLWdsazogICAgICAgICAgW0lOQ09NUExFVEVdWzU2XSAoW2ZkbyMx
MDMzNTldIC8gW2sub3JnIzE5ODEzM10pIC0+IFtQQVNTXVs1N10KICAgWzU2XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjM5MC9zaGFyZC1nbGs2L2ln
dEBpOTE1X3NlbGZ0ZXN0QG1vY2tfcmVxdWVzdHMuaHRtbAogICBbNTddOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzQ4MC9zaGFyZC1nbGs5L2ln
dEBpOTE1X3NlbGZ0ZXN0QG1vY2tfcmVxdWVzdHMuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBmbGlw
LXZzLWV4cGlyZWQtdmJsYW5rOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtGQUlMXVs1OF0g
KFtmZG8jMTA1MzYzXSkgLT4gW1BBU1NdWzU5XQogICBbNThdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzkwL3NoYXJkLXNrbDUvaWd0QGttc19mbGlw
QGZsaXAtdnMtZXhwaXJlZC12YmxhbmsuaHRtbAogICBbNTldOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzQ4MC9zaGFyZC1za2w1L2lndEBrbXNf
ZmxpcEBmbGlwLXZzLWV4cGlyZWQtdmJsYW5rLmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBAZmxpcC12
cy1zdXNwZW5kOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtETUVTRy1XQVJOXVs2MF0gKFtm
ZG8jMTA4NTY2XSkgLT4gW1BBU1NdWzYxXQogICBbNjBdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzkwL3NoYXJkLWFwbDYvaWd0QGttc19mbGlwQGZs
aXAtdnMtc3VzcGVuZC5odG1sCiAgIFs2MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNDgwL3NoYXJkLWFwbDcvaWd0QGttc19mbGlwQGZsaXAt
dnMtc3VzcGVuZC5odG1sCgogICogaWd0QGttc19mbGlwQHBsYWluLWZsaXAtZmItcmVjcmVhdGUt
aW50ZXJydXB0aWJsZToKICAgIC0gc2hhcmQtaHN3OiAgICAgICAgICBbSU5DT01QTEVURV1bNjJd
IChbZmRvIzEwMzU0MF0pIC0+IFtQQVNTXVs2M10KICAgWzYyXTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjM5MC9zaGFyZC1oc3c0L2lndEBrbXNfZmxp
cEBwbGFpbi1mbGlwLWZiLXJlY3JlYXRlLWludGVycnVwdGlibGUuaHRtbAogICBbNjNdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzQ4MC9zaGFy
ZC1oc3cxL2lndEBrbXNfZmxpcEBwbGFpbi1mbGlwLWZiLXJlY3JlYXRlLWludGVycnVwdGlibGUu
aHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLW9mZnNjcmVuLXBy
aS1pbmRmYi1kcmF3LWJsdDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbRkFJTF1bNjRdIChb
ZmRvIzEwMzE2N10pIC0+IFtQQVNTXVs2NV0gKzEgc2ltaWxhciBpc3N1ZQogICBbNjRdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzkwL3NoYXJkLWlj
bGIyL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLW9mZnNjcmVuLXByaS1pbmRm
Yi1kcmF3LWJsdC5odG1sCiAgIFs2NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzEzNDgwL3NoYXJkLWljbGIzL2lndEBrbXNfZnJvbnRidWZmZXJf
dHJhY2tpbmdAZmJjLTFwLW9mZnNjcmVuLXByaS1pbmRmYi1kcmF3LWJsdC5odG1sCgogICogaWd0
QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtc3VzcGVuZDoKICAgIC0gc2hhcmQta2JsOiAg
ICAgICAgICBbSU5DT01QTEVURV1bNjZdIChbZmRvIzEwMzY2NV0pIC0+IFtQQVNTXVs2N10KICAg
WzY2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjM5
MC9zaGFyZC1rYmw0L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLXN1c3BlbmQuaHRt
bAogICBbNjddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xMzQ4MC9zaGFyZC1rYmw3L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLXN1
c3BlbmQuaHRtbAoKICAqIGlndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1iLWNvbnN0YW50
LWFscGhhLW1pbjoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbRkFJTF1bNjhdIChbZmRvIzEw
ODE0NV0pIC0+IFtQQVNTXVs2OV0KICAgWzY4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNjM5MC9zaGFyZC1za2w2L2lndEBrbXNfcGxhbmVfYWxwaGFf
YmxlbmRAcGlwZS1iLWNvbnN0YW50LWFscGhhLW1pbi5odG1sCiAgIFs2OV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNDgwL3NoYXJkLXNrbDQv
aWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWItY29uc3RhbnQtYWxwaGEtbWluLmh0bWwK
CiAgKiBpZ3RAa21zX3BsYW5lX2xvd3Jlc0BwaXBlLWEtdGlsaW5nLXk6CiAgICAtIHNoYXJkLWlj
bGI6ICAgICAgICAgW0ZBSUxdWzcwXSAoW2ZkbyMxMDMxNjZdKSAtPiBbUEFTU11bNzFdCiAgIFs3
MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzOTAv
c2hhcmQtaWNsYjUvaWd0QGttc19wbGFuZV9sb3dyZXNAcGlwZS1hLXRpbGluZy15Lmh0bWwKICAg
WzcxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTM0ODAvc2hhcmQtaWNsYjEvaWd0QGttc19wbGFuZV9sb3dyZXNAcGlwZS1hLXRpbGluZy15Lmh0
bWwKCiAgKiBpZ3RAa21zX3BzckBub19kcnJzOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtG
QUlMXVs3Ml0gKFtmZG8jMTA4MzQxXSkgLT4gW1BBU1NdWzczXQogICBbNzJdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzkwL3NoYXJkLWljbGIxL2ln
dEBrbXNfcHNyQG5vX2RycnMuaHRtbAogICBbNzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzQ4MC9zaGFyZC1pY2xiMi9pZ3RAa21zX3BzckBu
b19kcnJzLmh0bWwKCiAgKiBpZ3RAa21zX3BzckBwc3IyX2N1cnNvcl9tbWFwX2NwdToKICAgIC0g
c2hhcmQtaWNsYjogICAgICAgICBbU0tJUF1bNzRdIChbZmRvIzEwOTQ0MV0pIC0+IFtQQVNTXVs3
NV0KICAgWzc0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNjM5MC9zaGFyZC1pY2xiMS9pZ3RAa21zX3BzckBwc3IyX2N1cnNvcl9tbWFwX2NwdS5odG1s
CiAgIFs3NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEzNDgwL3NoYXJkLWljbGIyL2lndEBrbXNfcHNyQHBzcjJfY3Vyc29yX21tYXBfY3B1Lmh0
bWwKCiAgCiAgW2ZkbyMxMDMxNjZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMDMxNjYKICBbZmRvIzEwMzE2N106IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzE2NwogIFtmZG8jMTAzMzU5XTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMzU5CiAgW2ZkbyMxMDM1NDBdOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDM1NDAKICBbZmRv
IzEwMzY2NV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEw
MzY2NQogIFtmZG8jMTAzOTI3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTAzOTI3CiAgW2ZkbyMxMDQxMDhdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Au
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMDQxMDgKICBbZmRvIzEwNTM2M106IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNTM2MwogIFtmZG8jMTA3NzEzXTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NzEzCiAgW2ZkbyMx
MDgxNDVdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDgx
NDUKICBbZmRvIzEwODM0MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTEwODM0MQogIFtmZG8jMTA4NTY2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MTA4NTY2CiAgW2ZkbyMxMDg3NjddOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDg3NjcKICBbZmRvIzEwOTQ0MV06IGh0dHBz
Oi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTQ0MQogIFtmZG8jMTA5
NjQyXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5NjQy
CiAgW2ZkbyMxMTA1NTBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMTA1NTAKICBbZmRvIzExMDcyOF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTExMDcyOAogIFtmZG8jMTEwNzY5XTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwNzY5CiAgW2ZkbyMxMTA4NTRdOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA4NTQKICBbZmRvIzExMDk0
Nl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDk0Ngog
IFtmZG8jOTk5MTJdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD05OTkxMgogIFtrLm9yZyMxOTgxMzNdOiBodHRwczovL2J1Z3ppbGxhLmtlcm5lbC5vcmcvc2hv
d19idWcuY2dpP2lkPTE5ODEzMwoKClBhcnRpY2lwYXRpbmcgaG9zdHMgKDEwIC0+IDEwKQotLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgTm8gY2hhbmdlcyBpbiBwYXJ0aWNpcGF0aW5n
IGhvc3RzCgoKQnVpbGQgY2hhbmdlcwotLS0tLS0tLS0tLS0tCgogICogTGludXg6IENJX0RSTV82
MzkwIC0+IFBhdGNod29ya18xMzQ4MAoKICBDSV9EUk1fNjM5MDogNGM2YzIzZmRmNDUwYWI0M2Ji
NDA0NmFjMWZiMTQzOWViZjE3NjU2NCBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dm
eC1jaS9saW51eAogIElHVF81MDc1OiAwMzc3OWRkM2RlOGE1NzU0NGYxMjRkOTk1MmE2ZDJiM2Uz
NGUzNGNhIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcveG9yZy9hcHAvaW50ZWwtZ3B1
LXRvb2xzCiAgUGF0Y2h3b3JrXzEzNDgwOiBlNGVlODY2MWUyODdmNTdhYzEwN2UzMTdiMmFkY2Iy
ZmUyYjM2NGVjIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAg
cGlnbGl0XzQ1MDk6IGZkYzVhNGNhMTExMjRhYjg0MTNjNzk4ODg5NmVlYzRjOTczMzY2OTQgQCBn
aXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9waWdsaXQKCj09IExvZ3MgPT0KCkZvciBtb3Jl
IGRldGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xMzQ4MC8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
