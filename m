Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70ADAB122
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Apr 2019 01:10:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AEAA89247;
	Fri, 26 Apr 2019 23:10:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E6E8689247;
 Fri, 26 Apr 2019 23:10:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DC110A0119;
 Fri, 26 Apr 2019 23:10:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Fri, 26 Apr 2019 23:10:29 -0000
Message-ID: <20190426231029.31456.90711@emeril.freedesktop.org>
References: <20190426221705.14034-1-matthew.auld@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190426221705.14034-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_add_in-kernel_blitter_client?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IGFkZCBpbi1rZXJuZWwgYmxp
dHRlciBjbGllbnQKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2Vy
aWVzLzYwMDE3LwpTdGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkgPT0KCkNJIEJ1ZyBMb2cgLSBj
aGFuZ2VzIGZyb20gQ0lfRFJNXzYwMDcgLT4gUGF0Y2h3b3JrXzEyODg5Cj09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KClN1bW1hcnkKLS0tLS0tLQoK
ICAqKkZBSUxVUkUqKgoKICBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRj
aHdvcmtfMTI4ODkgYWJzb2x1dGVseSBuZWVkIHRvIGJlCiAgdmVyaWZpZWQgbWFudWFsbHkuCiAg
CiAgSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90aGluZyB0byBkbyB3
aXRoIHRoZSBjaGFuZ2VzCiAgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTI4ODksIHBsZWFzZSBu
b3RpZnkgeW91ciBidWcgdGVhbSB0byBhbGxvdyB0aGVtCiAgdG8gZG9jdW1lbnQgdGhpcyBuZXcg
ZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuCgog
IEV4dGVybmFsIFVSTDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL2FwaS8xLjAv
c2VyaWVzLzYwMDE3L3JldmlzaW9ucy8xL21ib3gvCgpQb3NzaWJsZSBuZXcgaXNzdWVzCi0tLS0t
LS0tLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBo
YXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTI4ODk6CgojIyMgSUdUIGNoYW5nZXMg
IyMjCgojIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMKCiAgKiBpZ3RAZ2VtX2V4ZWNfY3Jl
YXRlQGJhc2ljOgogICAgLSBmaS1rYmwtNzU2N3U6ICAgICAgIFtQQVNTXVsxXSAtPiBbSU5DT01Q
TEVURV1bMl0KICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV82MDA3L2ZpLWtibC03NTY3dS9pZ3RAZ2VtX2V4ZWNfY3JlYXRlQGJhc2ljLmh0bWwK
ICAgWzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xMjg4OS9maS1rYmwtNzU2N3UvaWd0QGdlbV9leGVjX2NyZWF0ZUBiYXNpYy5odG1sCgogICog
aWd0QGdlbV9leGVjX2ZlbmNlQG5iLWF3YWl0LWRlZmF1bHQ6CiAgICAtIGZpLWtibC14MTI3NTog
ICAgICAgW1BBU1NdWzNdIC0+IFtJTkNPTVBMRVRFXVs0XQogICBbM106IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYwMDcvZmkta2JsLXgxMjc1L2lndEBn
ZW1fZXhlY19mZW5jZUBuYi1hd2FpdC1kZWZhdWx0Lmh0bWwKICAgWzRdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjg4OS9maS1rYmwteDEyNzUv
aWd0QGdlbV9leGVjX2ZlbmNlQG5iLWF3YWl0LWRlZmF1bHQuaHRtbAoKICAqIHtpZ3RAaTkxNV9z
ZWxmdGVzdEBsaXZlX2JsdH0gKE5FVyk6CiAgICAtIGZpLWJ4dC1qNDIwNTogICAgICAgTk9UUlVO
IC0+IFtETUVTRy1XQVJOXVs1XQogICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyODg5L2ZpLWJ4dC1qNDIwNS9pZ3RAaTkxNV9zZWxmdGVz
dEBsaXZlX2JsdC5odG1sCiAgICAtIGZpLXdobC11OiAgICAgICAgICAgTk9UUlVOIC0+IFtETUVT
Ry1XQVJOXVs2XQogICBbNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzEyODg5L2ZpLXdobC11L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfYmx0Lmh0
bWwKICAgIC0gZmktYmR3LTU1NTd1OiAgICAgICBOT1RSVU4gLT4gW0RNRVNHLVdBUk5dWzddCiAg
IFs3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTI4ODkvZmktYmR3LTU1NTd1L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfYmx0Lmh0bWwKICAgIC0g
ZmktaWNsLXUzOiAgICAgICAgICBOT1RSVU4gLT4gW0RNRVNHLVdBUk5dWzhdCiAgIFs4XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI4ODkvZmkt
aWNsLXUzL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfYmx0Lmh0bWwKICAgIC0ge2ZpLWNtbC11fTog
ICAgICAgICBOT1RSVU4gLT4gW0RNRVNHLVdBUk5dWzldCiAgIFs5XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI4ODkvZmktY21sLXUvaWd0QGk5
MTVfc2VsZnRlc3RAbGl2ZV9ibHQuaHRtbAogICAgLSBmaS1jZmwtODEwOXU6ICAgICAgIE5PVFJV
TiAtPiBbRE1FU0ctV0FSTl1bMTBdCiAgIFsxMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyODg5L2ZpLWNmbC04MTA5dS9pZ3RAaTkxNV9zZWxm
dGVzdEBsaXZlX2JsdC5odG1sCiAgICAtIGZpLXNrbC1sbWVtOiAgICAgICAgTk9UUlVOIC0+IFtE
TUVTRy1XQVJOXVsxMV0KICAgWzExXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTI4ODkvZmktc2tsLWxtZW0vaWd0QGk5MTVfc2VsZnRlc3RAbGl2
ZV9ibHQuaHRtbAogICAgLSBmaS1rYmwtODgwOWc6ICAgICAgIE5PVFJVTiAtPiBbRE1FU0ctV0FS
Tl1bMTJdCiAgIFsxMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzEyODg5L2ZpLWtibC04ODA5Zy9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2JsdC5o
dG1sCiAgICAtIGZpLWhzdy00NzcwcjogICAgICAgTk9UUlVOIC0+IFtETUVTRy1XQVJOXVsxM10K
ICAgWzEzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTI4ODkvZmktaHN3LTQ3NzByL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfYmx0Lmh0bWwKICAg
IC0gZmktaHN3LXBlcHB5OiAgICAgICBOT1RSVU4gLT4gW0RNRVNHLVdBUk5dWzE0XQogICBbMTRd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjg4
OS9maS1oc3ctcGVwcHkvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ibHQuaHRtbAogICAgLSBmaS1z
a2wtNjYwMHU6ICAgICAgIE5PVFJVTiAtPiBbRE1FU0ctV0FSTl1bMTVdCiAgIFsxNV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyODg5L2ZpLXNr
bC02NjAwdS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2JsdC5odG1sCiAgICAtIGZpLWJkdy1ndnRk
dm06ICAgICAgTk9UUlVOIC0+IFtETUVTRy1XQVJOXVsxNl0KICAgWzE2XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI4ODkvZmktYmR3LWd2dGR2
bS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2JsdC5odG1sCiAgICAtIGZpLXNrbC1ndnRkdm06ICAg
ICAgTk9UUlVOIC0+IFtETUVTRy1XQVJOXVsxN10KICAgWzE3XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI4ODkvZmktc2tsLWd2dGR2bS9pZ3RA
aTkxNV9zZWxmdGVzdEBsaXZlX2JsdC5odG1sCiAgICAtIGZpLXNrbC02MjYwdTogICAgICAgTk9U
UlVOIC0+IFtETUVTRy1XQVJOXVsxOF0KICAgWzE4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI4ODkvZmktc2tsLTYyNjB1L2lndEBpOTE1X3Nl
bGZ0ZXN0QGxpdmVfYmx0Lmh0bWwKCiAgKiBpZ3RAcnVubmVyQGFib3J0ZWQ6CiAgICAtIGZpLWJk
dy1ndnRkdm06ICAgICAgTk9UUlVOIC0+IFtGQUlMXVsxOV0KICAgWzE5XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI4ODkvZmktYmR3LWd2dGR2
bS9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICAgLSBmaS1oc3ctNDc3MHI6ICAgICAgIE5PVFJV
TiAtPiBbRkFJTF1bMjBdCiAgIFsyMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzEyODg5L2ZpLWhzdy00Nzcwci9pZ3RAcnVubmVyQGFib3J0ZWQu
aHRtbAogICAgLSBmaS1jZmwtODEwOXU6ICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bMjFdCiAgIFsy
MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEy
ODg5L2ZpLWNmbC04MTA5dS9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICAgLSBmaS1oc3ctcGVw
cHk6ICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bMjJdCiAgIFsyMl06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyODg5L2ZpLWhzdy1wZXBweS9pZ3RA
cnVubmVyQGFib3J0ZWQuaHRtbAogICAgLSBmaS1rYmwtODgwOWc6ICAgICAgIE5PVFJVTiAtPiBb
RkFJTF1bMjNdCiAgIFsyM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzEyODg5L2ZpLWtibC04ODA5Zy9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAog
ICAgLSBmaS1iZHctNTU1N3U6ICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bMjRdCiAgIFsyNF06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyODg5L2Zp
LWJkdy01NTU3dS9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICAgLSBmaS1ieHQtajQyMDU6ICAg
ICAgIE5PVFJVTiAtPiBbRkFJTF1bMjVdCiAgIFsyNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyODg5L2ZpLWJ4dC1qNDIwNS9pZ3RAcnVubmVy
QGFib3J0ZWQuaHRtbAogICAgLSBmaS13aGwtdTogICAgICAgICAgIE5PVFJVTiAtPiBbRkFJTF1b
MjZdCiAgIFsyNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzEyODg5L2ZpLXdobC11L2lndEBydW5uZXJAYWJvcnRlZC5odG1sCiAgICAtIGZpLWlj
bC11MzogICAgICAgICAgTk9UUlVOIC0+IFtGQUlMXVsyN10KICAgWzI3XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI4ODkvZmktaWNsLXUzL2ln
dEBydW5uZXJAYWJvcnRlZC5odG1sCgogIAojIyMjIFN1cHByZXNzZWQgIyMjIwoKICBUaGUgZm9s
bG93aW5nIHJlc3VsdHMgY29tZSBmcm9tIHVudHJ1c3RlZCBtYWNoaW5lcywgdGVzdHMsIG9yIHN0
YXR1c2VzLgogIFRoZXkgZG8gbm90IGFmZmVjdCB0aGUgb3ZlcmFsbCByZXN1bHQuCgogICogaWd0
QHJ1bm5lckBhYm9ydGVkOgogICAgLSB7ZmktY21sLXV9OiAgICAgICAgIE5PVFJVTiAtPiBbRkFJ
TF1bMjhdCiAgIFsyOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzEyODg5L2ZpLWNtbC11L2lndEBydW5uZXJAYWJvcnRlZC5odG1sCgogIApOZXcg
dGVzdHMKLS0tLS0tLS0tCgogIE5ldyB0ZXN0cyBoYXZlIGJlZW4gaW50cm9kdWNlZCBiZXR3ZWVu
IENJX0RSTV82MDA3IGFuZCBQYXRjaHdvcmtfMTI4ODk6CgojIyMgTmV3IElHVCB0ZXN0cyAoMikg
IyMjCgogICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ibHQ6CiAgICAtIFN0YXR1c2VzIDogMTQg
ZG1lc2ctd2FybihzKSAzIHBhc3MocykKICAgIC0gRXhlYyB0aW1lOiBbMC4zOCwgMS43MV0gcwoK
ICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfY2xpZW50OgogICAgLSBTdGF0dXNlcyA6IDMgcGFz
cyhzKQogICAgLSBFeGVjIHRpbWU6IFswLjM5LCAwLjQ2XSBzCgogIAoKS25vd24gaXNzdWVzCi0t
LS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTI4
ODkgdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMj
IyBJc3N1ZXMgaGl0ICMjIyMKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2NvbnRleHRzOgog
ICAgLSBmaS1iZHctZ3Z0ZHZtOiAgICAgIFtQQVNTXVsyOV0gLT4gW0RNRVNHLUZBSUxdWzMwXSAo
W2ZkbyMxMTAyMzUgXSkKICAgWzI5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNjAwNy9maS1iZHctZ3Z0ZHZtL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVf
Y29udGV4dHMuaHRtbAogICBbMzBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xMjg4OS9maS1iZHctZ3Z0ZHZtL2lndEBpOTE1X3NlbGZ0ZXN0QGxp
dmVfY29udGV4dHMuaHRtbAoKICAKICB7bmFtZX06IFRoaXMgZWxlbWVudCBpcyBzdXBwcmVzc2Vk
LiBUaGlzIG1lYW5zIGl0IGlzIGlnbm9yZWQgd2hlbiBjb21wdXRpbmcKICAgICAgICAgIHRoZSBz
dGF0dXMgb2YgdGhlIGRpZmZlcmVuY2UgKFNVQ0NFU1MsIFdBUk5JTkcsIG9yIEZBSUxVUkUpLgoK
ICBbZmRvIzExMDIzNSBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMTAyMzUgCgoKUGFydGljaXBhdGluZyBob3N0cyAoMzggLT4gMjMpCi0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLQoKICBBZGRpdGlvbmFsICgxKTogZmktaWNsLXUzIAogIE1pc3Np
bmcgICAgKDE2KTogZmktaWxrLW01NDAgZmktYnh0LWRzaSBmaS1ieXQtajE5MDAgZmktc2tsLTY3
NzBocSBmaS1za2wtZ3VjIGZpLWJ5dC1zcXVhd2tzIGZpLWJzdy1jeWFuIGZpLWJ3ci0yMTYwIGZp
LXNuYi0yNTIwbSBmaS1jZmwtODcwMGsgZmktaXZiLTM3NzAgZmktc2tsLWlvbW11IGZpLWJzdy1r
ZWZrYSBmaS1ieXQtbjI4MjAgZmktYnl0LWNsYXBwZXIgZmktc2tsLTY3MDBrMiAKCgpCdWlsZCBj
aGFuZ2VzCi0tLS0tLS0tLS0tLS0KCiAgKiBMaW51eDogQ0lfRFJNXzYwMDcgLT4gUGF0Y2h3b3Jr
XzEyODg5CgogIENJX0RSTV82MDA3OiA4NDYzNzYyNTdlOTFmNmU0OWNmN2Q2YjU5YjBhNmNiYjBj
ZTdjZDUzIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgSUdU
XzQ5Njg6IGNhZWQyNTE5OTBmMzViZmU0NTM2OGY4MDM5ODAwNzFhNzNlMzYzMTUgQCBnaXQ6Ly9h
bm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94b3JnL2FwcC9pbnRlbC1ncHUtdG9vbHMKICBQYXRjaHdv
cmtfMTI4ODk6IDY1OGVhMzFlNTczYTM0YTMzNmFkMjEzZTg2ZWJiNTRlNmJiODFhZjQgQCBnaXQ6
Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKCgo9PSBMaW51eCBjb21taXRz
ID09Cgo2NThlYTMxZTU3M2EgZHJtL2k5MTU6IGFkZCBpbi1rZXJuZWwgYmxpdHRlciBjbGllbnQK
Cj09IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjg4OS8KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
