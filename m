Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77CFA112A35
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2019 12:33:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA1EE6E8B7;
	Wed,  4 Dec 2019 11:33:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AAB6B6E8B7;
 Wed,  4 Dec 2019 11:33:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A3EE4A0096;
 Wed,  4 Dec 2019 11:33:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@intel.com>
Date: Wed, 04 Dec 2019 11:33:38 -0000
Message-ID: <157545921865.12196.14787229517829726267@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191204103014.1800-1-andi.shyti@intel.com>
In-Reply-To: <20191204103014.1800-1-andi.shyti@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915/rps=3A_Add_frequency_translation_helpers?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvcnBzOiBBZGQgZnJlcXVlbmN5
IHRyYW5zbGF0aW9uIGhlbHBlcnMKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3Rv
cC5vcmcvc2VyaWVzLzcwNDI3LwpTdGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkgPT0KCkNJIEJ1
ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzc0ODAgLT4gUGF0Y2h3b3JrXzE1NTc4Cj09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KClN1bW1hcnkK
LS0tLS0tLQoKICAqKkZBSUxVUkUqKgoKICBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21pbmcg
d2l0aCBQYXRjaHdvcmtfMTU1NzggYWJzb2x1dGVseSBuZWVkIHRvIGJlCiAgdmVyaWZpZWQgbWFu
dWFsbHkuCiAgCiAgSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90aGlu
ZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzCiAgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTU1Nzgs
IHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSB0byBhbGxvdyB0aGVtCiAgdG8gZG9jdW1lbnQg
dGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMg
aW4gQ0kuCgogIEV4dGVybmFsIFVSTDogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTU1NzgvaW5kZXguaHRtbAoKUG9zc2libGUgbmV3IGlzc3Vlcwot
LS0tLS0tLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBt
YXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE1NTc4OgoKIyMjIElHVCBjaGFu
Z2VzICMjIwoKIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjCgogICogaWd0QGk5MTVfc2Vs
ZnRlc3RAbGl2ZV9ibHQ6CiAgICAtIGZpLWhzdy00NzcwOiAgICAgICAgW1BBU1NdWzFdIC0+IFtE
TUVTRy1GQUlMXVsyXQogICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzc0ODAvZmktaHN3LTQ3NzAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ibHQu
aHRtbAogICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE1NTc4L2ZpLWhzdy00NzcwL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfYmx0Lmh0bWwK
CiAgCktub3duIGlzc3VlcwotLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91
bmQgaW4gUGF0Y2h3b3JrXzE1NTc4IHRoYXQgY29tZSBmcm9tIGtub3duIGlzc3VlczoKCiMjIyBJ
R1QgY2hhbmdlcyAjIyMKCiMjIyMgUG9zc2libGUgZml4ZXMgIyMjIwoKICAqIGlndEBnZW1fZXhl
Y19wYXJhbGxlbEBiYXNpYzoKICAgIC0ge2ZpLXRnbC11fTogICAgICAgICBbSU5DT01QTEVURV1b
M10gKFtpOTE1IzQ3Nl0pIC0+IFtQQVNTXVs0XQogICBbM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0ODAvZmktdGdsLXUvaWd0QGdlbV9leGVjX3Bh
cmFsbGVsQGJhc2ljLmh0bWwKICAgWzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNTU3OC9maS10Z2wtdS9pZ3RAZ2VtX2V4ZWNfcGFyYWxsZWxA
YmFzaWMuaHRtbAoKICAqIGlndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkOgogICAgLSBmaS1z
a2wtNjc3MGhxOiAgICAgIFtETUVTRy1XQVJOXVs1XSAoW2k5MTUjNTkyXSkgLT4gW1BBU1NdWzZd
CiAgIFs1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NzQ4MC9maS1za2wtNjc3MGhxL2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwKICAg
WzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NTU3OC9maS1za2wtNjc3MGhxL2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwKCiAg
KiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2dlbV9jb250ZXh0czoKICAgIC0gZmktc2tsLWxtZW06
ICAgICAgICBbSU5DT01QTEVURV1bN10gKFtpOTE1IzQyNF0pIC0+IFtQQVNTXVs4XQogICBbN106
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0ODAvZmkt
c2tsLWxtZW0vaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4dHMuaHRtbAogICBbOF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTc4
L2ZpLXNrbC1sbWVtL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ2VtX2NvbnRleHRzLmh0bWwKCiAg
KiBpZ3RAa21zX2NoYW1lbGl1bUBjb21tb24taHBkLWFmdGVyLXN1c3BlbmQ6CiAgICAtIGZpLWlj
bC11MjogICAgICAgICAgW0RNRVNHLVdBUk5dWzldIChbSUdUIzRdIC8gW2k5MTUjMjYzXSkgLT4g
W1BBU1NdWzEwXQogICBbOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzc0ODAvZmktaWNsLXUyL2lndEBrbXNfY2hhbWVsaXVtQGNvbW1vbi1ocGQtYWZ0
ZXItc3VzcGVuZC5odG1sCiAgIFsxMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE1NTc4L2ZpLWljbC11Mi9pZ3RAa21zX2NoYW1lbGl1bUBjb21t
b24taHBkLWFmdGVyLXN1c3BlbmQuaHRtbAoKICAqIGlndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBk
LWZhc3Q6CiAgICAtIGZpLWtibC03NTAwdTogICAgICAgW0ZBSUxdWzExXSAoW2ZkbyMxMTEwOTZd
IC8gW2k5MTUjMzIzXSkgLT4gW1BBU1NdWzEyXQogICBbMTFdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDgwL2ZpLWtibC03NTAwdS9pZ3RAa21zX2No
YW1lbGl1bUBoZG1pLWhwZC1mYXN0Lmh0bWwKICAgWzEyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU1NzgvZmkta2JsLTc1MDB1L2lndEBrbXNf
Y2hhbWVsaXVtQGhkbWktaHBkLWZhc3QuaHRtbAoKICAKIyMjIyBXYXJuaW5ncyAjIyMjCgogICog
aWd0QGk5MTVfcG1fcnBtQGJhc2ljLXBjaS1kMy1zdGF0ZToKICAgIC0gZmkta2JsLWd1YzogICAg
ICAgICBbU0tJUF1bMTNdIChbZmRvIzEwOTI3MV0pIC0+IFtGQUlMXVsxNF0gKFtpOTE1IzEzOF0p
CiAgIFsxM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
Xzc0ODAvZmkta2JsLWd1Yy9pZ3RAaTkxNV9wbV9ycG1AYmFzaWMtcGNpLWQzLXN0YXRlLmh0bWwK
ICAgWzE0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTU1NzgvZmkta2JsLWd1Yy9pZ3RAaTkxNV9wbV9ycG1AYmFzaWMtcGNpLWQzLXN0YXRlLmh0
bWwKCiAgKiBpZ3RAa21zX2N1cnNvcl9sZWdhY3lAYmFzaWMtYnVzeS1mbGlwLWJlZm9yZS1jdXJz
b3ItbGVnYWN5OgogICAgLSBmaS1rYmwteDEyNzU6ICAgICAgIFtETUVTRy1XQVJOXVsxNV0gKFtp
OTE1IzYyXSAvIFtpOTE1IzkyXSAvIFtpOTE1Izk1XSkgLT4gW0RNRVNHLVdBUk5dWzE2XSAoW2k5
MTUjNjJdIC8gW2k5MTUjOTJdKSArMyBzaW1pbGFyIGlzc3VlcwogICBbMTVdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDgwL2ZpLWtibC14MTI3NS9p
Z3RAa21zX2N1cnNvcl9sZWdhY3lAYmFzaWMtYnVzeS1mbGlwLWJlZm9yZS1jdXJzb3ItbGVnYWN5
Lmh0bWwKICAgWzE2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTU1NzgvZmkta2JsLXgxMjc1L2lndEBrbXNfY3Vyc29yX2xlZ2FjeUBiYXNpYy1i
dXN5LWZsaXAtYmVmb3JlLWN1cnNvci1sZWdhY3kuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBiYXNp
Yy1mbGlwLXZzLW1vZGVzZXQ6CiAgICAtIGZpLWtibC14MTI3NTogICAgICAgW0RNRVNHLVdBUk5d
WzE3XSAoW2k5MTUjNjJdIC8gW2k5MTUjOTJdKSAtPiBbRE1FU0ctV0FSTl1bMThdIChbaTkxNSM2
Ml0gLyBbaTkxNSM5Ml0gLyBbaTkxNSM5NV0pICs1IHNpbWlsYXIgaXNzdWVzCiAgIFsxN106IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0ODAvZmkta2Js
LXgxMjc1L2lndEBrbXNfZmxpcEBiYXNpYy1mbGlwLXZzLW1vZGVzZXQuaHRtbAogICBbMThdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTU3OC9m
aS1rYmwteDEyNzUvaWd0QGttc19mbGlwQGJhc2ljLWZsaXAtdnMtbW9kZXNldC5odG1sCgogIAog
IHtuYW1lfTogVGhpcyBlbGVtZW50IGlzIHN1cHByZXNzZWQuIFRoaXMgbWVhbnMgaXQgaXMgaWdu
b3JlZCB3aGVuIGNvbXB1dGluZwogICAgICAgICAgdGhlIHN0YXR1cyBvZiB0aGUgZGlmZmVyZW5j
ZSAoU1VDQ0VTUywgV0FSTklORywgb3IgRkFJTFVSRSkuCgogIFtJR1QjNF06IGh0dHBzOi8vZ2l0
bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaWd0LWdwdS10b29scy9pc3N1ZXMvNAogIFtmZG8jMTA5
MjcxXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5Mjcx
CiAgW2ZkbyMxMTEwOTZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMTEwOTYKICBbaTkxNSMxMzhdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcv
ZHJtL2ludGVsL2lzc3Vlcy8xMzgKICBbaTkxNSMyNjNdOiBodHRwczovL2dpdGxhYi5mcmVlZGVz
a3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy8yNjMKICBbaTkxNSMzMjNdOiBodHRwczovL2dpdGxh
Yi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy8zMjMKICBbaTkxNSM0MjRdOiBodHRw
czovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy80MjQKICBbaTkxNSM0
NzZdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy80NzYK
ICBbaTkxNSM1OTJdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lz
c3Vlcy81OTIKICBbaTkxNSM2Ml06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0v
aW50ZWwvaXNzdWVzLzYyCiAgW2k5MTUjOTJdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5v
cmcvZHJtL2ludGVsL2lzc3Vlcy85MgogIFtpOTE1Izk1XTogaHR0cHM6Ly9naXRsYWIuZnJlZWRl
c2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvOTUKCgpQYXJ0aWNpcGF0aW5nIGhvc3RzICg1MCAt
PiA0NykKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgogIEFkZGl0aW9uYWwgKDIpOiBm
aS1oc3ctNDc3MHIgZmktdGdsLWd1YyAKICBNaXNzaW5nICAgICg1KTogZmktaWxrLW01NDAgZmkt
Ynl0LXNxdWF3a3MgZmktYnN3LWN5YW4gZmktYnl0LWNsYXBwZXIgZmktYmR3LXNhbXVzIAoKCkJ1
aWxkIGNoYW5nZXMKLS0tLS0tLS0tLS0tLQoKICAqIENJOiBDSS0yMDE5MDUyOSAtPiBOb25lCiAg
KiBMaW51eDogQ0lfRFJNXzc0ODAgLT4gUGF0Y2h3b3JrXzE1NTc4CgogIENJLTIwMTkwNTI5OiAy
MDE5MDUyOQogIENJX0RSTV83NDgwOiBhY2Q0NjY0ZDg2NWZkZTQ2ZGNkMzJjNDhjY2FjMWIwNDhi
MzU1YmVhIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgSUdU
XzUzMjM6IGIwZjg3N2QwNmE3OGI5YzM4ZWQyNDZiZTI1MzdhMDQ1M2I2YzIxNGYgQCBnaXQ6Ly9h
bm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94b3JnL2FwcC9pbnRlbC1ncHUtdG9vbHMKICBQYXRjaHdv
cmtfMTU1Nzg6IGJjOTNlZDI1OGJlNDkyMDNlMmRlYmJlNzNlOTE1ZjdiOWUyNzZjMzggQCBnaXQ6
Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKCgo9PSBMaW51eCBjb21taXRz
ID09CgpiYzkzZWQyNThiZTQgZHJtL2k5MTUvcnBzOiBBZGQgZnJlcXVlbmN5IHRyYW5zbGF0aW9u
IGhlbHBlcnMKCj09IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTU3OC9pbmRleC5odG1sCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
