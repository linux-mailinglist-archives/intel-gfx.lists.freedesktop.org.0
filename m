Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E0B105AD
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 09:05:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9722789198;
	Wed,  1 May 2019 07:05:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AE8F289198;
 Wed,  1 May 2019 07:05:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A6CA4A008C;
 Wed,  1 May 2019 07:05:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Wed, 01 May 2019 07:05:35 -0000
Message-ID: <20190501070535.14432.74751@emeril.freedesktop.org>
References: <20190430125119.7478-1-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190430125119.7478-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_Corrupt_DSI_picture_fix_for_GeminiLake_=28rev3=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IENvcnJ1cHQgRFNJIHBpY3R1
cmUgZml4IGZvciBHZW1pbmlMYWtlIChyZXYzKQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZy
ZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjAwODQvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9
PQoKQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNjAxN19mdWxsIC0+IFBhdGNod29y
a18xMjkxMV9mdWxsCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKkZBSUxVUkUqKgoKICBTZXJpb3VzIHVua25v
d24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTI5MTFfZnVsbCBhYnNvbHV0ZWx5IG5l
ZWQgdG8gYmUKICB2ZXJpZmllZCBtYW51YWxseS4KICAKICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9y
dGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMKICBpbnRyb2R1
Y2VkIGluIFBhdGNod29ya18xMjkxMV9mdWxsLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0g
dG8gYWxsb3cgdGhlbQogIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2gg
d2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLgoKICAKClBvc3NpYmxlIG5ldyBpc3N1
ZXMKLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRo
YXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xMjkxMV9mdWxsOgoKIyMj
IElHVCBjaGFuZ2VzICMjIwoKIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjCgogICogaWd0
QGdlbV9tb2NzX3NldHRpbmdzQG1vY3MtcmM2LXJlbmRlcjoKICAgIC0gc2hhcmQtc2tsOiAgICAg
ICAgICBbUEFTU11bMV0gLT4gW0lOQ09NUExFVEVdWzJdICsxIHNpbWlsYXIgaXNzdWUKICAgWzFd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDE3L3No
YXJkLXNrbDEwL2lndEBnZW1fbW9jc19zZXR0aW5nc0Btb2NzLXJjNi1yZW5kZXIuaHRtbAogICBb
Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEy
OTExL3NoYXJkLXNrbDgvaWd0QGdlbV9tb2NzX3NldHRpbmdzQG1vY3MtcmM2LXJlbmRlci5odG1s
CgogICogaWd0QGdlbV90aWxlZF9ibGl0c0Bub3JtYWw6CiAgICAtIHNoYXJkLXNrbDogICAgICAg
ICAgTk9UUlVOIC0+IFtJTkNPTVBMRVRFXVszXSArNSBzaW1pbGFyIGlzc3VlcwogICBbM106IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyOTExL3No
YXJkLXNrbDgvaWd0QGdlbV90aWxlZF9ibGl0c0Bub3JtYWwuaHRtbAoKICAKS25vd24gaXNzdWVz
Ci0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtf
MTI5MTFfZnVsbCB0aGF0IGNvbWUgZnJvbSBrbm93biBpc3N1ZXM6CgojIyMgSUdUIGNoYW5nZXMg
IyMjCgojIyMjIElzc3VlcyBoaXQgIyMjIwoKICAqIGlndEBnZW1fZWlvQGluLWZsaWdodC1zdXNw
ZW5kOgogICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtQQVNTXVs0XSAtPiBbRE1FU0ctV0FSTl1b
NV0gKFtmZG8jMTA4NTY2XSkgKzMgc2ltaWxhciBpc3N1ZXMKICAgWzRdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDE3L3NoYXJkLWFwbDYvaWd0QGdl
bV9laW9AaW4tZmxpZ2h0LXN1c3BlbmQuaHRtbAogICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyOTExL3NoYXJkLWFwbDcvaWd0QGdlbV9l
aW9AaW4tZmxpZ2h0LXN1c3BlbmQuaHRtbAoKICAqIGlndEBpOTE1X3BtX3JwbUBiYXNpYy1ydGU6
CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzZdIC0+IFtJTkNPTVBMRVRFXVs3XSAo
W2ZkbyMxMDc4MDddKQogICBbNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzYwMTcvc2hhcmQtc2tsMi9pZ3RAaTkxNV9wbV9ycG1AYmFzaWMtcnRlLmh0
bWwKICAgWzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xMjkxMS9zaGFyZC1za2wyL2lndEBpOTE1X3BtX3JwbUBiYXNpYy1ydGUuaHRtbAoKICAq
IGlndEBrbXNfZmxpcEAyeC1wbGFpbi1mbGlwLWZiLXJlY3JlYXRlLWludGVycnVwdGlibGU6CiAg
ICAtIHNoYXJkLWdsazogICAgICAgICAgW1BBU1NdWzhdIC0+IFtGQUlMXVs5XSAoW2ZkbyMxMDAz
NjhdKQogICBbOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzYwMTcvc2hhcmQtZ2xrNy9pZ3RAa21zX2ZsaXBAMngtcGxhaW4tZmxpcC1mYi1yZWNyZWF0
ZS1pbnRlcnJ1cHRpYmxlLmh0bWwKICAgWzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjkxMS9zaGFyZC1nbGs2L2lndEBrbXNfZmxpcEAyeC1w
bGFpbi1mbGlwLWZiLXJlY3JlYXRlLWludGVycnVwdGlibGUuaHRtbAoKICAqIGlndEBrbXNfZnJv
bnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXByaW1zY3JuLXByaS1pbmRmYi1kcmF3LXB3cml0ZToK
ICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFTU11bMTBdIC0+IFtGQUlMXVsxMV0gKFtmZG8j
MTA4MDQwXSkgKzEgc2ltaWxhciBpc3N1ZQogICBbMTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDE3L3NoYXJkLXNrbDkvaWd0QGttc19mcm9udGJ1
ZmZlcl90cmFja2luZ0BmYmMtMXAtcHJpbXNjcm4tcHJpLWluZGZiLWRyYXctcHdyaXRlLmh0bWwK
ICAgWzExXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTI5MTEvc2hhcmQtc2tsMi9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0xcC1w
cmltc2Nybi1wcmktaW5kZmItZHJhdy1wd3JpdGUuaHRtbAoKICAqIGlndEBrbXNfZnJvbnRidWZm
ZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLWN1ci1pbmRmYi1kcmF3LW1tYXAtZ3R0Ogog
ICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVsxMl0gLT4gW0ZBSUxdWzEzXSAoW2ZkbyMx
MDMxNjddKSArNiBzaW1pbGFyIGlzc3VlcwogICBbMTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDE3L3NoYXJkLWljbGI0L2lndEBrbXNfZnJvbnRi
dWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLWN1ci1pbmRmYi1kcmF3LW1tYXAtZ3R0
Lmh0bWwKICAgWzEzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTI5MTEvc2hhcmQtaWNsYjIvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0Bm
YmNwc3ItMXAtcHJpbXNjcm4tY3VyLWluZGZiLWRyYXctbW1hcC1ndHQuaHRtbAoKICAqIGlndEBr
bXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLXNwci1pbmRmYi1tb3Zl
OgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVsxNF0gLT4gW0ZBSUxdWzE1XSAoW2Zk
byMxMDMxNjddKQogICBbMTRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV82MDE3L3NoYXJkLXNrbDkvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0Bm
YmNwc3ItMXAtcHJpbXNjcm4tc3ByLWluZGZiLW1vdmUuaHRtbAogICBbMTVdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjkxMS9zaGFyZC1za2wy
L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLXNwci1pbmRm
Yi1tb3ZlLmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYS1jb3ZlcmFn
ZS03ZWZjOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVsxNl0gLT4gW0ZBSUxdWzE3
XSAoW2ZkbyMxMDgxNDVdKQogICBbMTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV82MDE3L3NoYXJkLXNrbDkvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVu
ZEBwaXBlLWEtY292ZXJhZ2UtN2VmYy5odG1sCiAgIFsxN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyOTExL3NoYXJkLXNrbDIvaWd0QGttc19w
bGFuZV9hbHBoYV9ibGVuZEBwaXBlLWEtY292ZXJhZ2UtN2VmYy5odG1sCgogICogaWd0QGttc19w
bGFuZV9sb3dyZXNAcGlwZS1hLXRpbGluZy15OgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQ
QVNTXVsxOF0gLT4gW0ZBSUxdWzE5XSAoW2ZkbyMxMDMxNjZdKQogICBbMThdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDE3L3NoYXJkLWljbGI4L2ln
dEBrbXNfcGxhbmVfbG93cmVzQHBpcGUtYS10aWxpbmcteS5odG1sCiAgIFsxOV06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyOTExL3NoYXJkLWlj
bGI0L2lndEBrbXNfcGxhbmVfbG93cmVzQHBpcGUtYS10aWxpbmcteS5odG1sCgogICogaWd0QGtt
c19wc3JAcHNyMl9iYXNpYzoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMjBdIC0+
IFtTS0lQXVsyMV0gKFtmZG8jMTA5NDQxXSkKICAgWzIwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjAxNy9zaGFyZC1pY2xiMi9pZ3RAa21zX3BzckBw
c3IyX2Jhc2ljLmh0bWwKICAgWzIxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTI5MTEvc2hhcmQtaWNsYjMvaWd0QGttc19wc3JAcHNyMl9iYXNp
Yy5odG1sCgogICogaWd0QGttc19zZXRtb2RlQGJhc2ljOgogICAgLSBzaGFyZC1hcGw6ICAgICAg
ICAgIFtQQVNTXVsyMl0gLT4gW0ZBSUxdWzIzXSAoW2ZkbyM5OTkxMl0pCiAgIFsyMl06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYwMTcvc2hhcmQtYXBs
MS9pZ3RAa21zX3NldG1vZGVAYmFzaWMuaHRtbAogICBbMjNdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjkxMS9zaGFyZC1hcGwyL2lndEBrbXNf
c2V0bW9kZUBiYXNpYy5odG1sCiAgICAtIHNoYXJkLWtibDogICAgICAgICAgW1BBU1NdWzI0XSAt
PiBbRkFJTF1bMjVdIChbZmRvIzk5OTEyXSkKICAgWzI0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjAxNy9zaGFyZC1rYmw0L2lndEBrbXNfc2V0bW9k
ZUBiYXNpYy5odG1sCiAgIFsyNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzEyOTExL3NoYXJkLWtibDIvaWd0QGttc19zZXRtb2RlQGJhc2ljLmh0
bWwKCiAgKiBpZ3RAa21zX3ZibGFua0BwaXBlLWMtdHMtY29udGludWF0aW9uLXN1c3BlbmQ6CiAg
ICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzI2XSAtPiBbSU5DT01QTEVURV1bMjddIChb
ZmRvIzEwNDEwOF0gLyBbZmRvIzEwNzc3M10pCiAgIFsyNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYwMTcvc2hhcmQtc2tsOS9pZ3RAa21zX3ZibGFu
a0BwaXBlLWMtdHMtY29udGludWF0aW9uLXN1c3BlbmQuaHRtbAogICBbMjddOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjkxMS9zaGFyZC1za2wx
L2lndEBrbXNfdmJsYW5rQHBpcGUtYy10cy1jb250aW51YXRpb24tc3VzcGVuZC5odG1sCgogICog
aWd0QHN5bmNvYmpfd2FpdEBzaW5nbGUtd2FpdC1mb3Itc3VibWl0LXVuc3VibWl0dGVkOgogICAg
LSBzaGFyZC1hcGw6ICAgICAgICAgIFtQQVNTXVsyOF0gLT4gW0lOQ09NUExFVEVdWzI5XSAoW2Zk
byMxMDM5MjddKQogICBbMjhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV82MDE3L3NoYXJkLWFwbDYvaWd0QHN5bmNvYmpfd2FpdEBzaW5nbGUtd2FpdC1m
b3Itc3VibWl0LXVuc3VibWl0dGVkLmh0bWwKICAgWzI5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI5MTEvc2hhcmQtYXBsMS9pZ3RAc3luY29i
al93YWl0QHNpbmdsZS13YWl0LWZvci1zdWJtaXQtdW5zdWJtaXR0ZWQuaHRtbAoKICAKIyMjIyBQ
b3NzaWJsZSBmaXhlcyAjIyMjCgogICogaWd0QGdlbV9laW9AaW4tZmxpZ2h0LXN1c3BlbmQ6CiAg
ICAtIHNoYXJkLWtibDogICAgICAgICAgW0RNRVNHLVdBUk5dWzMwXSAoW2ZkbyMxMDMzMTNdKSAt
PiBbUEFTU11bMzFdCiAgIFszMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzYwMTcvc2hhcmQta2JsMy9pZ3RAZ2VtX2Vpb0Bpbi1mbGlnaHQtc3VzcGVu
ZC5odG1sCiAgIFszMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzEyOTExL3NoYXJkLWtibDEvaWd0QGdlbV9laW9AaW4tZmxpZ2h0LXN1c3BlbmQu
aHRtbAoKICAqIGlndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0LWhhbmctdmVib3g6CiAgICAt
IHNoYXJkLXNrbDogICAgICAgICAgW0lOQ09NUExFVEVdWzMyXSAtPiBbUEFTU11bMzNdICsxIHNp
bWlsYXIgaXNzdWUKICAgWzMyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNjAxNy9zaGFyZC1za2w3L2lndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0
LWhhbmctdmVib3guaHRtbAogICBbMzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xMjkxMS9zaGFyZC1za2w5L2lndEBnZW1fZXhlY19zY2hlZHVs
ZUBwcmVlbXB0LWhhbmctdmVib3guaHRtbAoKICAqIGlndEBnZW1fZmVuY2VfdGhyYXNoQGJvLXdy
aXRlLXZlcmlmeS10aHJlYWRlZC15OgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtJTkNPTVBM
RVRFXVszNF0gKFtmZG8jMTA3NzEzXSAvIFtmZG8jMTA5MTAwXSkgLT4gW1BBU1NdWzM1XQogICBb
MzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDE3
L3NoYXJkLWljbGI0L2lndEBnZW1fZmVuY2VfdGhyYXNoQGJvLXdyaXRlLXZlcmlmeS10aHJlYWRl
ZC15Lmh0bWwKICAgWzM1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTI5MTEvc2hhcmQtaWNsYjIvaWd0QGdlbV9mZW5jZV90aHJhc2hAYm8td3Jp
dGUtdmVyaWZ5LXRocmVhZGVkLXkuaHRtbAoKICAqIGlndEBpOTE1X3BtX3JwbUBkZWJ1Z2ZzLWZv
cmNld2FrZS11c2VyOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtJTkNPTVBMRVRFXVszNl0g
KFtmZG8jMTA3ODA3XSkgLT4gW1BBU1NdWzM3XQogICBbMzZdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDE3L3NoYXJkLXNrbDEvaWd0QGk5MTVfcG1f
cnBtQGRlYnVnZnMtZm9yY2V3YWtlLXVzZXIuaHRtbAogICBbMzddOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjkxMS9zaGFyZC1za2w0L2lndEBp
OTE1X3BtX3JwbUBkZWJ1Z2ZzLWZvcmNld2FrZS11c2VyLmh0bWwKCiAgKiBpZ3RAaTkxNV9wbV9y
cG1AZ2VtLWV4ZWNidWY6CiAgICAtIHNoYXJkLWhzdzogICAgICAgICAgW0lOQ09NUExFVEVdWzM4
XSAoW2ZkbyMxMDM1NDBdIC8gW2ZkbyMxMDc4MDNdIC8gW2ZkbyMxMDc4MDddKSAtPiBbUEFTU11b
MzldCiAgIFszOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzYwMTcvc2hhcmQtaHN3MS9pZ3RAaTkxNV9wbV9ycG1AZ2VtLWV4ZWNidWYuaHRtbAogICBb
MzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
MjkxMS9zaGFyZC1oc3cxL2lndEBpOTE1X3BtX3JwbUBnZW0tZXhlY2J1Zi5odG1sCgogICogaWd0
QGk5MTVfc2VsZnRlc3RAbW9ja19mZW5jZToKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbSU5D
T01QTEVURV1bNDBdIChbZmRvIzEwNzcxM10pIC0+IFtQQVNTXVs0MV0KICAgWzQwXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjAxNy9zaGFyZC1pY2xi
Ny9pZ3RAaTkxNV9zZWxmdGVzdEBtb2NrX2ZlbmNlLmh0bWwKICAgWzQxXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI5MTEvc2hhcmQtaWNsYjcv
aWd0QGk5MTVfc2VsZnRlc3RAbW9ja19mZW5jZS5odG1sCgogICogaWd0QGk5MTVfc3VzcGVuZEBm
ZW5jZS1yZXN0b3JlLXVudGlsZWQ6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW0RNRVNHLVdB
Uk5dWzQyXSAoW2ZkbyMxMDg1NjZdKSAtPiBbUEFTU11bNDNdICszIHNpbWlsYXIgaXNzdWVzCiAg
IFs0Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYw
MTcvc2hhcmQtYXBsMi9pZ3RAaTkxNV9zdXNwZW5kQGZlbmNlLXJlc3RvcmUtdW50aWxlZC5odG1s
CiAgIFs0M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEyOTExL3NoYXJkLWFwbDYvaWd0QGk5MTVfc3VzcGVuZEBmZW5jZS1yZXN0b3JlLXVudGls
ZWQuaHRtbAoKICAqIGlndEBrbXNfY3Vyc29yX2NyY0BjdXJzb3ItYWxwaGEtdHJhbnNwYXJlbnQ6
CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZBSUxdWzQ0XSAoW2ZkbyMxMDkzNTBdKSAtPiBb
UEFTU11bNDVdCiAgIFs0NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzYwMTcvc2hhcmQtc2tsNy9pZ3RAa21zX2N1cnNvcl9jcmNAY3Vyc29yLWFscGhh
LXRyYW5zcGFyZW50Lmh0bWwKICAgWzQ1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI5MTEvc2hhcmQtc2tsNy9pZ3RAa21zX2N1cnNvcl9jcmNA
Y3Vyc29yLWFscGhhLXRyYW5zcGFyZW50Lmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3Ry
YWNraW5nQGZiYy0xcC1wcmltc2Nybi1pbmRmYi1wZ2ZsaXAtYmx0OgogICAgLSBzaGFyZC1pY2xi
OiAgICAgICAgIFtGQUlMXVs0Nl0gKFtmZG8jMTAzMTY3XSkgLT4gW1BBU1NdWzQ3XQogICBbNDZd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDE3L3No
YXJkLWljbGIxL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXByaW1zY3JuLWlu
ZGZiLXBnZmxpcC1ibHQuaHRtbAogICBbNDddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjkxMS9zaGFyZC1pY2xiNS9pZ3RAa21zX2Zyb250YnVm
ZmVyX3RyYWNraW5nQGZiYy0xcC1wcmltc2Nybi1pbmRmYi1wZ2ZsaXAtYmx0Lmh0bWwKCiAgKiBp
Z3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmltc2Nybi1wcmktaW5kZmIt
ZHJhdy1wd3JpdGU6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0lOQ09NUExFVEVdWzQ4XSAo
W2ZkbyMxMDY5NzhdKSAtPiBbUEFTU11bNDldCiAgIFs0OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYwMTcvc2hhcmQtc2tsMS9pZ3RAa21zX2Zyb250
YnVmZmVyX3RyYWNraW5nQGZiY3Bzci0xcC1wcmltc2Nybi1wcmktaW5kZmItZHJhdy1wd3JpdGUu
aHRtbAogICBbNDldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xMjkxMS9zaGFyZC1za2wxL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJj
cHNyLTFwLXByaW1zY3JuLXByaS1pbmRmYi1kcmF3LXB3cml0ZS5odG1sCgogICogaWd0QGttc19w
aXBlX2NyY19iYXNpY0ByZWFkLWNyYy1waXBlLWItZnJhbWUtc2VxdWVuY2U6CiAgICAtIHNoYXJk
LXNrbDogICAgICAgICAgW0ZBSUxdWzUwXSAoW2ZkbyMxMDMxOTFdKSAtPiBbUEFTU11bNTFdCiAg
IFs1MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYw
MTcvc2hhcmQtc2tsNy9pZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQHJlYWQtY3JjLXBpcGUtYi1mcmFt
ZS1zZXF1ZW5jZS5odG1sCiAgIFs1MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzEyOTExL3NoYXJkLXNrbDcvaWd0QGttc19waXBlX2NyY19iYXNp
Y0ByZWFkLWNyYy1waXBlLWItZnJhbWUtc2VxdWVuY2UuaHRtbAoKICAqIGlndEBrbXNfcGxhbmVA
cGl4ZWwtZm9ybWF0LXBpcGUtYi1wbGFuZXMtc291cmNlLWNsYW1waW5nOgogICAgLSBzaGFyZC1n
bGs6ICAgICAgICAgIFtTS0lQXVs1Ml0gKFtmZG8jMTA5MjcxXSkgLT4gW1BBU1NdWzUzXQogICBb
NTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDE3
L3NoYXJkLWdsazgvaWd0QGttc19wbGFuZUBwaXhlbC1mb3JtYXQtcGlwZS1iLXBsYW5lcy1zb3Vy
Y2UtY2xhbXBpbmcuaHRtbAogICBbNTNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xMjkxMS9zaGFyZC1nbGs5L2lndEBrbXNfcGxhbmVAcGl4ZWwt
Zm9ybWF0LXBpcGUtYi1wbGFuZXMtc291cmNlLWNsYW1waW5nLmh0bWwKCiAgKiBpZ3RAa21zX3Bs
YW5lX2FscGhhX2JsZW5kQHBpcGUtYS1jb25zdGFudC1hbHBoYS1taW46CiAgICAtIHNoYXJkLXNr
bDogICAgICAgICAgW0ZBSUxdWzU0XSAoW2ZkbyMxMDgxNDVdKSAtPiBbUEFTU11bNTVdCiAgIFs1
NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYwMTcv
c2hhcmQtc2tsMTAvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWEtY29uc3RhbnQtYWxw
aGEtbWluLmh0bWwKICAgWzU1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTI5MTEvc2hhcmQtc2tsMTAvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVu
ZEBwaXBlLWEtY29uc3RhbnQtYWxwaGEtbWluLmh0bWwKCiAgKiBpZ3RAa21zX3BsYW5lX2FscGhh
X2JsZW5kQHBpcGUtYi1jb3ZlcmFnZS03ZWZjOgogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtG
QUlMXVs1Nl0gKFtmZG8jMTA4MTQ1XSAvIFtmZG8jMTEwNDAzXSkgLT4gW1BBU1NdWzU3XQogICBb
NTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDE3
L3NoYXJkLXNrbDcvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWItY292ZXJhZ2UtN2Vm
Yy5odG1sCiAgIFs1N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzEyOTExL3NoYXJkLXNrbDcvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBl
LWItY292ZXJhZ2UtN2VmYy5odG1sCgogICogaWd0QGttc19wc3JAcHNyMl9jdXJzb3JfcmVuZGVy
OgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtTS0lQXVs1OF0gKFtmZG8jMTA5NDQxXSkgLT4g
W1BBU1NdWzU5XSArMiBzaW1pbGFyIGlzc3VlcwogICBbNThdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDE3L3NoYXJkLWljbGI0L2lndEBrbXNfcHNy
QHBzcjJfY3Vyc29yX3JlbmRlci5odG1sCiAgIFs1OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyOTExL3NoYXJkLWljbGIyL2lndEBrbXNfcHNy
QHBzcjJfY3Vyc29yX3JlbmRlci5odG1sCgogICogaWd0QGttc19yb3RhdGlvbl9jcmNAbXVsdGlw
bGFuZS1yb3RhdGlvbjoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbSU5DT01QTEVURV1bNjBd
IChbZmRvIzEwNzcxM10gLyBbZmRvIzExMDAyNl0pIC0+IFtQQVNTXVs2MV0KICAgWzYwXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjAxNy9zaGFyZC1p
Y2xiMy9pZ3RAa21zX3JvdGF0aW9uX2NyY0BtdWx0aXBsYW5lLXJvdGF0aW9uLmh0bWwKICAgWzYx
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI5
MTEvc2hhcmQtaWNsYjYvaWd0QGttc19yb3RhdGlvbl9jcmNAbXVsdGlwbGFuZS1yb3RhdGlvbi5o
dG1sCgogICogaWd0QHBlcmZfcG11QGVuYWJsZS1yYWNlLXJjczA6CiAgICAtIHNoYXJkLWdsazog
ICAgICAgICAgW0lOQ09NUExFVEVdWzYyXSAoW2ZkbyMxMDMzNTldIC8gW2sub3JnIzE5ODEzM10p
IC0+IFtQQVNTXVs2M10KICAgWzYyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNjAxNy9zaGFyZC1nbGsyL2lndEBwZXJmX3BtdUBlbmFibGUtcmFjZS1y
Y3MwLmh0bWwKICAgWzYzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTI5MTEvc2hhcmQtZ2xrOC9pZ3RAcGVyZl9wbXVAZW5hYmxlLXJhY2UtcmNz
MC5odG1sCgogIAogIFtmZG8jMTAwMzY4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTAwMzY4CiAgW2ZkbyMxMDMxNjZdOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMxNjYKICBbZmRvIzEwMzE2N106IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzE2NwogIFtmZG8jMTAzMTkx
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMTkxCiAg
W2ZkbyMxMDMzMTNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMDMzMTMKICBbZmRvIzEwMzM1OV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTEwMzM1OQogIFtmZG8jMTAzNTQwXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzNTQwCiAgW2ZkbyMxMDM5MjddOiBodHRwczovL2J1
Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDM5MjcKICBbZmRvIzEwNDEwOF06
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNDEwOAogIFtm
ZG8jMTA2OTc4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTA2OTc4CiAgW2ZkbyMxMDc3MTNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMDc3MTMKICBbZmRvIzEwNzc3M106IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzc3MwogIFtmZG8jMTA3ODAzXTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3ODAzCiAgW2ZkbyMxMDc4MDddOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc4MDcKICBbZmRv
IzEwODA0MF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEw
ODA0MAogIFtmZG8jMTA4MTQ1XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTA4MTQ1CiAgW2ZkbyMxMDg1NjZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Au
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMDg1NjYKICBbZmRvIzEwOTEwMF06IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTEwMAogIFtmZG8jMTA5MjcxXTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5MjcxCiAgW2ZkbyMx
MDkzNTBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkz
NTAKICBbZmRvIzEwOTQ0MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTEwOTQ0MQogIFtmZG8jMTEwMDI2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MTEwMDI2CiAgW2ZkbyMxMTA0MDNdOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA0MDMKICBbZmRvIzk5OTEyXTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9OTk5MTIKICBbay5vcmcjMTk4
MTMzXTogaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0xOTgxMzMK
CgpQYXJ0aWNpcGF0aW5nIGhvc3RzICgxMCAtPiAxMCkKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tCgogIE5vIGNoYW5nZXMgaW4gcGFydGljaXBhdGluZyBob3N0cwoKCkJ1aWxkIGNoYW5n
ZXMKLS0tLS0tLS0tLS0tLQoKICAqIExpbnV4OiBDSV9EUk1fNjAxNyAtPiBQYXRjaHdvcmtfMTI5
MTEKCiAgQ0lfRFJNXzYwMTc6IDY5YzNhMzdhZjk0MzA2NTBkMWZjMmE1NTU1ZDRkMDc4Njg5ODY5
NGQgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKICBJR1RfNDk3
MTogZmM1ZTA0NjdlYjY5MTNkMjFhZDkzMmFhOGEzMWM3N2ZkYjVhOWM3NyBAIGdpdDovL2Fub25n
aXQuZnJlZWRlc2t0b3Aub3JnL3hvcmcvYXBwL2ludGVsLWdwdS10b29scwogIFBhdGNod29ya18x
MjkxMTogYjg0ZmY2ZWMzMTRmOTUwY2VmODYzOTZhODE2NzUxNjY5ZTAwNmQxYiBAIGdpdDovL2Fu
b25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIHBpZ2xpdF80NTA5OiBmZGM1YTRj
YTExMTI0YWI4NDEzYzc5ODg4OTZlZWM0Yzk3MzM2Njk0IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVz
a3RvcC5vcmcvcGlnbGl0Cgo9PSBMb2dzID09CgpGb3IgbW9yZSBkZXRhaWxzIHNlZTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI5MTEvCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
