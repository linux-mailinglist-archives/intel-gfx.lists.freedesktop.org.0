Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9307C74D5A
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2019 13:44:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B6986E71F;
	Thu, 25 Jul 2019 11:44:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D845A6E71D;
 Thu, 25 Jul 2019 11:44:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CE3EAA00EF;
 Thu, 25 Jul 2019 11:44:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 25 Jul 2019 11:44:16 -0000
Message-ID: <20190725114416.29715.72188@emeril.freedesktop.org>
References: <20190725074305.22754-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190725074305.22754-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/?=
 =?utf-8?q?i915=3A_Unshare_the_idle-barrier_from_other_kernel_requests_=28?=
 =?utf-8?q?rev4=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFVuc2hhcmUgdGhlIGlkbGUt
YmFycmllciBmcm9tIG90aGVyIGtlcm5lbCByZXF1ZXN0cyAocmV2NCkKVVJMICAgOiBodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY0MTcxLwpTdGF0ZSA6IHN1Y2Nlc3MK
Cj09IFN1bW1hcnkgPT0KCkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzY1NDkgLT4g
UGF0Y2h3b3JrXzEzNzQ2Cj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKlNVQ0NFU1MqKgoKICBObyByZWdyZXNz
aW9ucyBmb3VuZC4KCiAgRXh0ZXJuYWwgVVJMOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzc0Ni8KClBvc3NpYmxlIG5ldyBpc3N1ZXMKLS0tLS0t
LS0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhh
dmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xMzc0NjoKCiMjIyBJR1QgY2hhbmdlcyAj
IyMKCiMjIyMgUG9zc2libGUgcmVncmVzc2lvbnMgIyMjIwoKICAqIHtpZ3RAaTkxNV9zZWxmdGVz
dEBsaXZlX2d0X2NvbnRleHRzfSAoTkVXKToKICAgIC0gZmktaHN3LTQ3NzByOiAgICAgICBOT1RS
VU4gLT4gW0RNRVNHLUZBSUxdWzFdCiAgIFsxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM3NDYvZmktaHN3LTQ3NzByL2lndEBpOTE1X3NlbGZ0
ZXN0QGxpdmVfZ3RfY29udGV4dHMuaHRtbAogICAgLSBmaS1wbnYtZDUxMDogICAgICAgIE5PVFJV
TiAtPiBbRE1FU0ctRkFJTF1bMl0KICAgWzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzc0Ni9maS1wbnYtZDUxMC9pZ3RAaTkxNV9zZWxmdGVz
dEBsaXZlX2d0X2NvbnRleHRzLmh0bWwKICAgIC0gZmktYmxiLWU2ODUwOiAgICAgICBOT1RSVU4g
LT4gW0RNRVNHLUZBSUxdWzNdCiAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM3NDYvZmktYmxiLWU2ODUwL2lndEBpOTE1X3NlbGZ0ZXN0
QGxpdmVfZ3RfY29udGV4dHMuaHRtbAogICAgLSBmaS1ieXQtajE5MDA6ICAgICAgIE5PVFJVTiAt
PiBbRE1FU0ctRkFJTF1bNF0KICAgWzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xMzc0Ni9maS1ieXQtajE5MDAvaWd0QGk5MTVfc2VsZnRlc3RA
bGl2ZV9ndF9jb250ZXh0cy5odG1sCiAgICAtIGZpLWVsay1lNzUwMDogICAgICAgTk9UUlVOIC0+
IFtETUVTRy1GQUlMXVs1XQogICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzEzNzQ2L2ZpLWVsay1lNzUwMC9pZ3RAaTkxNV9zZWxmdGVzdEBs
aXZlX2d0X2NvbnRleHRzLmh0bWwKICAgIC0gZmktc25iLTI2MDA6ICAgICAgICBOT1RSVU4gLT4g
W0RNRVNHLUZBSUxdWzZdCiAgIFs2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTM3NDYvZmktc25iLTI2MDAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2
ZV9ndF9jb250ZXh0cy5odG1sCiAgICAtIGZpLWJ5dC1uMjgyMDogICAgICAgTk9UUlVOIC0+IFtE
TUVTRy1GQUlMXVs3XQogICBbN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzEzNzQ2L2ZpLWJ5dC1uMjgyMC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZl
X2d0X2NvbnRleHRzLmh0bWwKICAgIC0gZmktZ2RnLTU1MTogICAgICAgICBOT1RSVU4gLT4gW0RN
RVNHLUZBSUxdWzhdCiAgIFs4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTM3NDYvZmktZ2RnLTU1MS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0
X2NvbnRleHRzLmh0bWwKICAgIC0gZmktaHN3LXBlcHB5OiAgICAgICBOT1RSVU4gLT4gW0RNRVNH
LUZBSUxdWzldCiAgIFs5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTM3NDYvZmktaHN3LXBlcHB5L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3Rf
Y29udGV4dHMuaHRtbAogICAgLSBmaS1zbmItMjUyMG06ICAgICAgIE5PVFJVTiAtPiBbRE1FU0ct
RkFJTF1bMTBdCiAgIFsxMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzEzNzQ2L2ZpLXNuYi0yNTIwbS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0
X2NvbnRleHRzLmh0bWwKICAgIC0gZmktaWxrLTY1MDogICAgICAgICBOT1RSVU4gLT4gW0RNRVNH
LUZBSUxdWzExXQogICBbMTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xMzc0Ni9maS1pbGstNjUwL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3Rf
Y29udGV4dHMuaHRtbAogICAgLSBmaS1pdmItMzc3MDogICAgICAgIE5PVFJVTiAtPiBbRE1FU0ct
RkFJTF1bMTJdCiAgIFsxMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzEzNzQ2L2ZpLWl2Yi0zNzcwL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3Rf
Y29udGV4dHMuaHRtbAogICAgLSBmaS1oc3ctNDc3MDogICAgICAgIE5PVFJVTiAtPiBbRE1FU0ct
RkFJTF1bMTNdCiAgIFsxM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzEzNzQ2L2ZpLWhzdy00NzcwL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3Rf
Y29udGV4dHMuaHRtbAoKICAKTmV3IHRlc3RzCi0tLS0tLS0tLQoKICBOZXcgdGVzdHMgaGF2ZSBi
ZWVuIGludHJvZHVjZWQgYmV0d2VlbiBDSV9EUk1fNjU0OSBhbmQgUGF0Y2h3b3JrXzEzNzQ2OgoK
IyMjIE5ldyBJR1QgdGVzdHMgKDIpICMjIwoKICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ2Vt
X2NvbnRleHRzOgogICAgLSBTdGF0dXNlcyA6IDQxIHBhc3MocykKICAgIC0gRXhlYyB0aW1lOiBb
MC4zNywgMjguMzRdIHMKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0X2NvbnRleHRzOgog
ICAgLSBTdGF0dXNlcyA6IDEzIGRtZXNnLWZhaWwocykgMSBpbmNvbXBsZXRlKHMpIDI4IHBhc3Mo
cykKICAgIC0gRXhlYyB0aW1lOiBbMC4wLCAxLjMxXSBzCgogIAoKS25vd24gaXNzdWVzCi0tLS0t
LS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTM3NDYg
dGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBJ
c3N1ZXMgaGl0ICMjIyMKCiAgKiBpZ3RAa21zX2J1c3lAYmFzaWMtZmxpcC1hOgogICAgLSBmaS1r
YmwtNzU2N3U6ICAgICAgIFtQQVNTXVsxNF0gLT4gW1NLSVBdWzE1XSAoW2ZkbyMxMDkyNzFdIC8g
W2ZkbyMxMDkyNzhdKSArMiBzaW1pbGFyIGlzc3VlcwogICBbMTRdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NTQ5L2ZpLWtibC03NTY3dS9pZ3RAa21z
X2J1c3lAYmFzaWMtZmxpcC1hLmh0bWwKICAgWzE1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM3NDYvZmkta2JsLTc1Njd1L2lndEBrbXNfYnVz
eUBiYXNpYy1mbGlwLWEuaHRtbAoKICAqIGlndEBwcmltZV9idXN5QGJhc2ljLWJlZm9yZS1kZWZh
dWx0OgogICAgLSBmaS1pY2wtdTM6ICAgICAgICAgIFtQQVNTXVsxNl0gLT4gW0RNRVNHLVdBUk5d
WzE3XSAoW2ZkbyMxMDc3MjRdKSArMSBzaW1pbGFyIGlzc3VlCiAgIFsxNl06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY1NDkvZmktaWNsLXUzL2lndEBw
cmltZV9idXN5QGJhc2ljLWJlZm9yZS1kZWZhdWx0Lmh0bWwKICAgWzE3XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM3NDYvZmktaWNsLXUzL2ln
dEBwcmltZV9idXN5QGJhc2ljLWJlZm9yZS1kZWZhdWx0Lmh0bWwKCiAgCiMjIyMgUG9zc2libGUg
Zml4ZXMgIyMjIwoKICAqIGlndEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXMzOgogICAgLSBmaS1i
bGItZTY4NTA6ICAgICAgIFtJTkNPTVBMRVRFXVsxOF0gKFtmZG8jMTA3NzE4XSkgLT4gW1BBU1Nd
WzE5XQogICBbMThdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82NTQ5L2ZpLWJsYi1lNjg1MC9pZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zMy5odG1s
CiAgIFsxOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEzNzQ2L2ZpLWJsYi1lNjg1MC9pZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zMy5odG1s
CgogICogaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLXdpdGgtZmF1bHQtaW5qZWN0aW9uOgog
ICAgLSBmaS1zbmItMjYwMDogICAgICAgIFtJTkNPTVBMRVRFXVsyMF0gKFtmZG8jMTA1NDExXSkg
LT4gW1BBU1NdWzIxXQogICBbMjBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV82NTQ5L2ZpLXNuYi0yNjAwL2lndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9h
ZC13aXRoLWZhdWx0LWluamVjdGlvbi5odG1sCiAgIFsyMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNzQ2L2ZpLXNuYi0yNjAwL2lndEBpOTE1
X21vZHVsZV9sb2FkQHJlbG9hZC13aXRoLWZhdWx0LWluamVjdGlvbi5odG1sCiAgICAtIGZpLXNu
Yi0yNTIwbTogICAgICAgW0lOQ09NUExFVEVdWzIyXSAtPiBbUEFTU11bMjNdCiAgIFsyMl06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY1NDkvZmktc25i
LTI1MjBtL2lndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC13aXRoLWZhdWx0LWluamVjdGlvbi5o
dG1sCiAgIFsyM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzEzNzQ2L2ZpLXNuYi0yNTIwbS9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQtd2l0
aC1mYXVsdC1pbmplY3Rpb24uaHRtbAoKICAqIGlndEBrbXNfY2hhbWVsaXVtQGNvbW1vbi1ocGQt
YWZ0ZXItc3VzcGVuZDoKICAgIC0gZmkta2JsLTc1Njd1OiAgICAgICBbV0FSTl1bMjRdIChbZmRv
IzEwOTM4MF0pIC0+IFtQQVNTXVsyNV0KICAgWzI0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjU0OS9maS1rYmwtNzU2N3UvaWd0QGttc19jaGFtZWxp
dW1AY29tbW9uLWhwZC1hZnRlci1zdXNwZW5kLmh0bWwKICAgWzI1XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM3NDYvZmkta2JsLTc1Njd1L2ln
dEBrbXNfY2hhbWVsaXVtQGNvbW1vbi1ocGQtYWZ0ZXItc3VzcGVuZC5odG1sCgogICogaWd0QGtt
c19waXBlX2NyY19iYXNpY0ByZWFkLWNyYy1waXBlLWM6CiAgICAtIGZpLWtibC03NTY3dTogICAg
ICAgW1NLSVBdWzI2XSAoW2ZkbyMxMDkyNzFdKSAtPiBbUEFTU11bMjddICsyMyBzaW1pbGFyIGlz
c3VlcwogICBbMjZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV82NTQ5L2ZpLWtibC03NTY3dS9pZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQHJlYWQtY3JjLXBp
cGUtYy5odG1sCiAgIFsyN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzEzNzQ2L2ZpLWtibC03NTY3dS9pZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQHJl
YWQtY3JjLXBpcGUtYy5odG1sCgogIAogIHtuYW1lfTogVGhpcyBlbGVtZW50IGlzIHN1cHByZXNz
ZWQuIFRoaXMgbWVhbnMgaXQgaXMgaWdub3JlZCB3aGVuIGNvbXB1dGluZwogICAgICAgICAgdGhl
IHN0YXR1cyBvZiB0aGUgZGlmZmVyZW5jZSAoU1VDQ0VTUywgV0FSTklORywgb3IgRkFJTFVSRSku
CgogIFtmZG8jMTA1NDExXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTA1NDExCiAgW2ZkbyMxMDc3MThdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMDc3MTgKICBbZmRvIzEwNzcyNF06IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzcyNAogIFtmZG8jMTA5MjcxXTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5MjcxCiAgW2ZkbyMxMDky
NzhdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkyNzgK
ICBbZmRvIzEwOTM4MF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTEwOTM4MAoKClBhcnRpY2lwYXRpbmcgaG9zdHMgKDU0IC0+IDQ0KQotLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KCiAgTWlzc2luZyAgICAoMTApOiBmaS1pbGstbTU0MCBmaS1oc3ct
NDIwMHUgZmktYnl0LXNxdWF3a3MgZmktaWNsLXUyIGZpLWJzdy1jeWFuIGZpLWN0Zy1wODYwMCBm
aS1ieXQtY2xhcHBlciBmaS1pY2wteSBmaS1pY2wtZHNpIGZpLWJkdy1zYW11cyAKCgpCdWlsZCBj
aGFuZ2VzCi0tLS0tLS0tLS0tLS0KCiAgKiBDSTogQ0ktMjAxOTA1MjkgLT4gTm9uZQogICogTGlu
dXg6IENJX0RSTV82NTQ5IC0+IFBhdGNod29ya18xMzc0NgoKICBDSS0yMDE5MDUyOTogMjAxOTA1
MjkKICBDSV9EUk1fNjU0OTogYjNmZjFhNDQzNjgxNWI0YmFmMjZhNzNkY2NmYTcxNTI3YTJiZmM0
ZSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIElHVF81MTEw
OiA5MDg1ZjU1MmExMTE1NmM1Yjg1NjU5MzM2MWIzMDYwNmE5NDI0YzAxIEAgZ2l0Oi8vYW5vbmdp
dC5mcmVlZGVza3RvcC5vcmcveG9yZy9hcHAvaW50ZWwtZ3B1LXRvb2xzCiAgUGF0Y2h3b3JrXzEz
NzQ2OiA3ZThlOWFkNWUwNDUxMmRmNjIzMmRmYmE4NzEwMjlhMjVhMGEwY2U5IEAgZ2l0Oi8vYW5v
bmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CgoKPT0gTGludXggY29tbWl0cyA9PQoK
N2U4ZTlhZDVlMDQ1IGRybS9pOTE1OiBVbnNoYXJlIHRoZSBpZGxlLWJhcnJpZXIgZnJvbSBvdGhl
ciBrZXJuZWwgcmVxdWVzdHMKCj09IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzc0Ni8KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
