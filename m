Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09BA4114536
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 17:56:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D22146F8A6;
	Thu,  5 Dec 2019 16:56:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C45996E98E;
 Thu,  5 Dec 2019 16:56:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BB0B7A363B;
 Thu,  5 Dec 2019 16:56:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 05 Dec 2019 16:56:29 -0000
Message-ID: <157556498974.19942.13499090066220253221@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191205145238.635670-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191205145238.635670-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5B1/4=5D_drm/i915/selftests=3A_Disable_heartb?=
 =?utf-8?q?eats_around_long_queues?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvNF0g
ZHJtL2k5MTUvc2VsZnRlc3RzOiBEaXNhYmxlIGhlYXJ0YmVhdHMgYXJvdW5kIGxvbmcgcXVldWVz
ClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy83MDQ5OS8K
U3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9t
IENJX0RSTV83NDkxIC0+IFBhdGNod29ya18xNTYwNgo9PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09CgpTdW1tYXJ5Ci0tLS0tLS0KCiAgKipGQUlMVVJF
KioKCiAgU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzE1NjA2
IGFic29sdXRlbHkgbmVlZCB0byBiZQogIHZlcmlmaWVkIG1hbnVhbGx5LgogIAogIElmIHlvdSB0
aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hh
bmdlcwogIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE1NjA2LCBwbGVhc2Ugbm90aWZ5IHlvdXIg
YnVnIHRlYW0gdG8gYWxsb3cgdGhlbQogIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9k
ZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLgoKICBFeHRlcm5hbCBV
Ukw6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1
NjA2L2luZGV4Lmh0bWwKClBvc3NpYmxlIG5ldyBpc3N1ZXMKLS0tLS0tLS0tLS0tLS0tLS0tLQoK
ICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1
Y2VkIGluIFBhdGNod29ya18xNTYwNjoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgUG9zc2li
bGUgcmVncmVzc2lvbnMgIyMjIwoKICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXhlY2xpc3Rz
OgogICAgLSBmaS1za2wtZ3VjOiAgICAgICAgIFtQQVNTXVsxXSAtPiBbRE1FU0ctRkFJTF1bMl0K
ICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83
NDkxL2ZpLXNrbC1ndWMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlzdHMuaHRtbAogICBb
Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1
NjA2L2ZpLXNrbC1ndWMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlzdHMuaHRtbAoKICAK
S25vd24gaXNzdWVzCi0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBp
biBQYXRjaHdvcmtfMTU2MDYgdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBj
aGFuZ2VzICMjIwoKIyMjIyBJc3N1ZXMgaGl0ICMjIyMKCiAgKiBpZ3RAaTkxNV9wbV9ycG1AbW9k
dWxlLXJlbG9hZDoKICAgIC0gZmktc2tsLTY3NzBocTogICAgICBbUEFTU11bM10gLT4gW0ZBSUxd
WzRdIChbaTkxNSMxNzhdKQogICBbM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzc0OTEvZmktc2tsLTY3NzBocS9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxl
LXJlbG9hZC5odG1sCiAgIFs0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTU2MDYvZmktc2tsLTY3NzBocS9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxl
LXJlbG9hZC5odG1sCgogICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ibHQ6CiAgICAtIGZpLWl2
Yi0zNzcwOiAgICAgICAgW1BBU1NdWzVdIC0+IFtETUVTRy1GQUlMXVs2XSAoW2k5MTUjNTYzXSkK
ICAgWzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83
NDkxL2ZpLWl2Yi0zNzcwL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfYmx0Lmh0bWwKICAgWzZdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTYwNi9m
aS1pdmItMzc3MC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2JsdC5odG1sCgogICogaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZV9leGVjbGlzdHM6CiAgICAtIGZpLWtibC03NTAwdTogICAgICAgW1BBU1Nd
WzddIC0+IFtJTkNPTVBMRVRFXVs4XSAoW2ZkbyMxMTIyNTldKQogICBbN106IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0OTEvZmkta2JsLTc1MDB1L2ln
dEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXhlY2xpc3RzLmh0bWwKICAgWzhdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTYwNi9maS1rYmwtNzUwMHUv
aWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlzdHMuaHRtbAogICAgLSBmaS1rYmwtc29yYWth
OiAgICAgIFtQQVNTXVs5XSAtPiBbSU5DT01QTEVURV1bMTBdIChbZmRvIzExMjI1OV0pCiAgIFs5
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQ5MS9m
aS1rYmwtc29yYWthL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXhlY2xpc3RzLmh0bWwKICAgWzEw
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU2
MDYvZmkta2JsLXNvcmFrYS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0cy5odG1sCiAg
ICAtIGZpLWJ4dC1kc2k6ICAgICAgICAgW1BBU1NdWzExXSAtPiBbSU5DT01QTEVURV1bMTJdIChb
ZmRvIzEwMzkyN10pCiAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzc0OTEvZmktYnh0LWRzaS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNs
aXN0cy5odG1sCiAgIFsxMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE1NjA2L2ZpLWJ4dC1kc2kvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVj
bGlzdHMuaHRtbAoKICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ2VtX2NvbnRleHRzOgogICAg
LSBmaS1ieXQtbjI4MjA6ICAgICAgIFtQQVNTXVsxM10gLT4gW0lOQ09NUExFVEVdWzE0XSAoW2k5
MTUjNDVdKQogICBbMTNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV83NDkxL2ZpLWJ5dC1uMjgyMC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2dlbV9jb250
ZXh0cy5odG1sCiAgIFsxNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE1NjA2L2ZpLWJ5dC1uMjgyMC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2dl
bV9jb250ZXh0cy5odG1sCgogICogaWd0QGttc19jaGFtZWxpdW1AaGRtaS1ocGQtZmFzdDoKICAg
IC0gZmkta2JsLTc1MDB1OiAgICAgICBbUEFTU11bMTVdIC0+IFtGQUlMXVsxNl0gKFtmZG8jMTEx
MDk2XSAvIFtpOTE1IzMyM10pCiAgIFsxNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzc0OTEvZmkta2JsLTc1MDB1L2lndEBrbXNfY2hhbWVsaXVtQGhk
bWktaHBkLWZhc3QuaHRtbAogICBbMTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNTYwNi9maS1rYmwtNzUwMHUvaWd0QGttc19jaGFtZWxpdW1A
aGRtaS1ocGQtZmFzdC5odG1sCgogIAojIyMjIFBvc3NpYmxlIGZpeGVzICMjIyMKCiAgKiBpZ3RA
Z2VtX2Nsb3NlX3JhY2VAYmFzaWMtdGhyZWFkczoKICAgIC0ge2ZpLXRnbC1ndWN9OiAgICAgICBb
SU5DT01QTEVURV1bMTddIChbaTkxNSM0MzVdKSAtPiBbUEFTU11bMThdCiAgIFsxN106IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0OTEvZmktdGdsLWd1
Yy9pZ3RAZ2VtX2Nsb3NlX3JhY2VAYmFzaWMtdGhyZWFkcy5odG1sCiAgIFsxOF06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NjA2L2ZpLXRnbC1n
dWMvaWd0QGdlbV9jbG9zZV9yYWNlQGJhc2ljLXRocmVhZHMuaHRtbAoKICAqIGlndEBpOTE1X3Nl
bGZ0ZXN0QGxpdmVfYmx0OgogICAgLSBmaS1ieXQtajE5MDA6ICAgICAgIFtETUVTRy1GQUlMXVsx
OV0gKFtpOTE1IzcyNV0pIC0+IFtQQVNTXVsyMF0KICAgWzE5XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQ5MS9maS1ieXQtajE5MDAvaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZV9ibHQuaHRtbAogICBbMjBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTYwNi9maS1ieXQtajE5MDAvaWd0QGk5MTVfc2Vs
ZnRlc3RAbGl2ZV9ibHQuaHRtbAogICAgLSBmaS1oc3ctNDc3MHI6ICAgICAgIFtETUVTRy1GQUlM
XVsyMV0gKFtpOTE1IzY4M10pIC0+IFtQQVNTXVsyMl0KICAgWzIxXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQ5MS9maS1oc3ctNDc3MHIvaWd0QGk5
MTVfc2VsZnRlc3RAbGl2ZV9ibHQuaHRtbAogICBbMjJdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTYwNi9maS1oc3ctNDc3MHIvaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZV9ibHQuaHRtbAoKICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ2VtX2Nv
bnRleHRzOgogICAgLSBmaS1oc3ctcGVwcHk6ICAgICAgIFtJTkNPTVBMRVRFXVsyM10gKFtpOTE1
IzY5NF0pIC0+IFtQQVNTXVsyNF0KICAgWzIzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQ5MS9maS1oc3ctcGVwcHkvaWd0QGk5MTVfc2VsZnRlc3RA
bGl2ZV9nZW1fY29udGV4dHMuaHRtbAogICBbMjRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTYwNi9maS1oc3ctcGVwcHkvaWd0QGk5MTVfc2Vs
ZnRlc3RAbGl2ZV9nZW1fY29udGV4dHMuaHRtbAoKICAKIyMjIyBXYXJuaW5ncyAjIyMjCgogICog
aWd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMtczQtZGV2aWNlczoKICAgIC0gZmkta2JsLXgxMjc1
OiAgICAgICBbRE1FU0ctV0FSTl1bMjVdIChbZmRvIzEwNzEzOV0gLyBbaTkxNSM2Ml0gLyBbaTkx
NSM5Ml0pIC0+IFtETUVTRy1XQVJOXVsyNl0gKFtmZG8jMTA3MTM5XSAvIFtpOTE1IzYyXSAvIFtp
OTE1IzkyXSAvIFtpOTE1Izk1XSkKICAgWzI1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQ5MS9maS1rYmwteDEyNzUvaWd0QGdlbV9leGVjX3N1c3Bl
bmRAYmFzaWMtczQtZGV2aWNlcy5odG1sCiAgIFsyNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NjA2L2ZpLWtibC14MTI3NS9pZ3RAZ2VtX2V4
ZWNfc3VzcGVuZEBiYXNpYy1zNC1kZXZpY2VzLmh0bWwKCiAgKiBpZ3RAa21zX2N1cnNvcl9sZWdh
Y3lAYmFzaWMtYnVzeS1mbGlwLWJlZm9yZS1jdXJzb3ItbGVnYWN5OgogICAgLSBmaS1rYmwteDEy
NzU6ICAgICAgIFtETUVTRy1XQVJOXVsyN10gKFtpOTE1IzYyXSAvIFtpOTE1IzkyXSAvIFtpOTE1
Izk1XSkgLT4gW0RNRVNHLVdBUk5dWzI4XSAoW2k5MTUjNjJdIC8gW2k5MTUjOTJdKSArOCBzaW1p
bGFyIGlzc3VlcwogICBbMjddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV83NDkxL2ZpLWtibC14MTI3NS9pZ3RAa21zX2N1cnNvcl9sZWdhY3lAYmFzaWMt
YnVzeS1mbGlwLWJlZm9yZS1jdXJzb3ItbGVnYWN5Lmh0bWwKICAgWzI4XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU2MDYvZmkta2JsLXgxMjc1
L2lndEBrbXNfY3Vyc29yX2xlZ2FjeUBiYXNpYy1idXN5LWZsaXAtYmVmb3JlLWN1cnNvci1sZWdh
Y3kuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBiYXNpYy1mbGlwLXZzLW1vZGVzZXQ6CiAgICAtIGZp
LWtibC14MTI3NTogICAgICAgW0RNRVNHLVdBUk5dWzI5XSAoW2k5MTUjNjJdIC8gW2k5MTUjOTJd
KSAtPiBbRE1FU0ctV0FSTl1bMzBdIChbaTkxNSM2Ml0gLyBbaTkxNSM5Ml0gLyBbaTkxNSM5NV0p
ICs0IHNpbWlsYXIgaXNzdWVzCiAgIFsyOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzc0OTEvZmkta2JsLXgxMjc1L2lndEBrbXNfZmxpcEBiYXNpYy1m
bGlwLXZzLW1vZGVzZXQuaHRtbAogICBbMzBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTYwNi9maS1rYmwteDEyNzUvaWd0QGttc19mbGlwQGJh
c2ljLWZsaXAtdnMtbW9kZXNldC5odG1sCgogIAogIHtuYW1lfTogVGhpcyBlbGVtZW50IGlzIHN1
cHByZXNzZWQuIFRoaXMgbWVhbnMgaXQgaXMgaWdub3JlZCB3aGVuIGNvbXB1dGluZwogICAgICAg
ICAgdGhlIHN0YXR1cyBvZiB0aGUgZGlmZmVyZW5jZSAoU1VDQ0VTUywgV0FSTklORywgb3IgRkFJ
TFVSRSkuCgogIFtmZG8jMTAzOTI3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93
X2J1Zy5jZ2k/aWQ9MTAzOTI3CiAgW2ZkbyMxMDcxMzldOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0
b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDcxMzkKICBbZmRvIzExMTA5Nl06IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTA5NgogIFtmZG8jMTExNzM1XTog
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNzM1CiAgW2Zk
byMxMTIyNTldOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0x
MTIyNTkKICBbaTkxNSMxNzhdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2lu
dGVsL2lzc3Vlcy8xNzgKICBbaTkxNSMzMjNdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5v
cmcvZHJtL2ludGVsL2lzc3Vlcy8zMjMKICBbaTkxNSM0MzVdOiBodHRwczovL2dpdGxhYi5mcmVl
ZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy80MzUKICBbaTkxNSM0NV06IGh0dHBzOi8vZ2l0
bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzQ1CiAgW2k5MTUjNTYzXTogaHR0
cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNTYzCiAgW2k5MTUj
NTkxXTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNTkx
CiAgW2k5MTUjNjJdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lz
c3Vlcy82MgogIFtpOTE1IzY4M106IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0v
aW50ZWwvaXNzdWVzLzY4MwogIFtpOTE1IzY5NF06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9w
Lm9yZy9kcm0vaW50ZWwvaXNzdWVzLzY5NAogIFtpOTE1IzcxMF06IGh0dHBzOi8vZ2l0bGFiLmZy
ZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzcxMAogIFtpOTE1IzcyNV06IGh0dHBzOi8v
Z2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzcyNQogIFtpOTE1IzkyXTog
aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvOTIKICBbaTkx
NSM5NV06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzk1
CgoKUGFydGljaXBhdGluZyBob3N0cyAoNTMgLT4gNDcpCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLQoKICBBZGRpdGlvbmFsICgxKTogZmktYmR3LTU1NTd1IAogIE1pc3NpbmcgICAgKDcp
OiBmaS1pbGstbTU0MCBmaS1oc3ctNDIwMHUgZmktYnl0LXNxdWF3a3MgZmktYnN3LWN5YW4gZmkt
Y3RnLXA4NjAwIGZpLWJ5dC1jbGFwcGVyIGZpLWJkdy1zYW11cyAKCgpCdWlsZCBjaGFuZ2VzCi0t
LS0tLS0tLS0tLS0KCiAgKiBDSTogQ0ktMjAxOTA1MjkgLT4gTm9uZQogICogTGludXg6IENJX0RS
TV83NDkxIC0+IFBhdGNod29ya18xNTYwNgoKICBDSS0yMDE5MDUyOTogMjAxOTA1MjkKICBDSV9E
Uk1fNzQ5MTogYWM1ZTU3MzIyNjE0ZjFjMDhiMDBlZDlmNTIxNTNjYTEyNjAzYzYzNyBAIGdpdDov
L2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIElHVF81MzMzOiBlMDg1MjJi
YjA5ZmYxYjk3MjAzNTliMzg2N2RhN2U0YWNhMGJkNWYxIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVz
a3RvcC5vcmcveG9yZy9hcHAvaW50ZWwtZ3B1LXRvb2xzCiAgUGF0Y2h3b3JrXzE1NjA2OiA4ZWE4
NGEwYzExYTg3MjkwYTMxOGFhZWI2ZGFjZDllZTc3ZWYzZTUxIEAgZ2l0Oi8vYW5vbmdpdC5mcmVl
ZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CgoKPT0gTGludXggY29tbWl0cyA9PQoKOGVhODRhMGMx
MWE4IGRybS9pOTE1OiBUd2VhayBzY2hlZHVsZXIncyBraWNrX3N1Ym1pc3Npb24oKQozNDY2Y2Q5
MTY4YjMgZHJtL2k5MTUvZXhlY2xpc3RzOiBUd2VhayBwcmlvcml0eSBoaW50IHRvIHVzZSBsYXN0
IHBvcnQgaWYgc2V0CmRmZmViMzJlZDAxNSBkcm0vaTkxNS9ndDogUmVtb3ZlIGRpcmVjdCBpbnZv
Y2F0aW9uIG9mIGJyZWFkY3J1bWIgc2lnbmFsaW5nCjI3NDcwOWM1MmM2OSBkcm0vaTkxNS9zZWxm
dGVzdHM6IERpc2FibGUgaGVhcnRiZWF0cyBhcm91bmQgbG9uZyBxdWV1ZXMKCj09IExvZ3MgPT0K
CkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNTYwNi9pbmRleC5odG1sCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
