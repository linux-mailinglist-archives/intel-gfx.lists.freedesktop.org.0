Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5732CDA806
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 11:06:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 976A26EA11;
	Thu, 17 Oct 2019 09:06:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E966B6E457;
 Thu, 17 Oct 2019 09:06:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E3786A41FB;
 Thu, 17 Oct 2019 09:06:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 17 Oct 2019 09:06:13 -0000
Message-ID: <20191017090613.5566.22625@emeril.freedesktop.org>
References: <20191017080144.16899-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191017080144.16899-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915/selftests=3A_Add_coverage_of_mocs_registers?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvc2VsZnRlc3RzOiBBZGQgY292
ZXJhZ2Ugb2YgbW9jcyByZWdpc3RlcnMKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVz
a3RvcC5vcmcvc2VyaWVzLzY4MTM1LwpTdGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkgPT0KCkNJ
IEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzcxMTQgLT4gUGF0Y2h3b3JrXzE0ODUyCj09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KClN1bW1h
cnkKLS0tLS0tLQoKICAqKkZBSUxVUkUqKgoKICBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21p
bmcgd2l0aCBQYXRjaHdvcmtfMTQ4NTIgYWJzb2x1dGVseSBuZWVkIHRvIGJlCiAgdmVyaWZpZWQg
bWFudWFsbHkuCiAgCiAgSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90
aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzCiAgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTQ4
NTIsIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSB0byBhbGxvdyB0aGVtCiAgdG8gZG9jdW1l
bnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2
ZXMgaW4gQ0kuCgogIEV4dGVybmFsIFVSTDogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4NTIvaW5kZXguaHRtbAoKUG9zc2libGUgbmV3IGlzc3Vl
cwotLS0tLS0tLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhh
dCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE0ODUyOgoKIyMjIElHVCBj
aGFuZ2VzICMjIwoKIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjCgogICogaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZV9leGVjbGlzdHM6CiAgICAtIGZpLWljbC11MjogICAgICAgICAgW1BBU1Nd
WzFdIC0+IFtETUVTRy1GQUlMXVsyXQogICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzcxMTQvZmktaWNsLXUyL2lndEBpOTE1X3NlbGZ0ZXN0QGxp
dmVfZXhlY2xpc3RzLmh0bWwKICAgWzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNDg1Mi9maS1pY2wtdTIvaWd0QGk5MTVfc2VsZnRlc3RAbGl2
ZV9leGVjbGlzdHMuaHRtbAogICAgLSBmaS1pY2wtdTM6ICAgICAgICAgIFtQQVNTXVszXSAtPiBb
RE1FU0ctRkFJTF1bNF0KICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV83MTE0L2ZpLWljbC11My9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNs
aXN0cy5odG1sCiAgIFs0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTQ4NTIvZmktaWNsLXUzL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXhlY2xp
c3RzLmh0bWwKICAgIC0gZmktYnh0LWRzaTogICAgICAgICBOT1RSVU4gLT4gW0RNRVNHLUZBSUxd
WzVdCiAgIFs1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTQ4NTIvZmktYnh0LWRzaS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0cy5o
dG1sCgogICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4dHM6CiAgICAtIGZpLWNm
bC04MTA5dTogICAgICAgW1BBU1NdWzZdIC0+IFtETUVTRy1GQUlMXVs3XSArMSBzaW1pbGFyIGlz
c3VlCiAgIFs2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNzExNC9maS1jZmwtODEwOXUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4dHMu
aHRtbAogICBbN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE0ODUyL2ZpLWNmbC04MTA5dS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2dlbV9jb250
ZXh0cy5odG1sCgogICoge2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfbW9jc30gKE5FVyk6CiAg
ICAtIGZpLWtibC04ODA5ZzogICAgICAgTk9UUlVOIC0+IFtETUVTRy1XQVJOXVs4XQogICBbOF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0ODUy
L2ZpLWtibC04ODA5Zy9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0X21vY3MuaHRtbAogICAgLSBm
aS1za2wtZ3VjOiAgICAgICAgIE5PVFJVTiAtPiBbRE1FU0ctV0FSTl1bOV0KICAgWzldOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDg1Mi9maS1z
a2wtZ3VjL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfbW9jcy5odG1sCiAgICAtIGZpLWtibC1y
OiAgICAgICAgICAgTk9UUlVOIC0+IFtETUVTRy1XQVJOXVsxMF0KICAgWzEwXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4NTIvZmkta2JsLXIv
aWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9tb2NzLmh0bWwKICAgIC0gZmkta2JsLXgxMjc1OiAg
ICAgICBOT1RSVU4gLT4gW0RNRVNHLVdBUk5dWzExXQogICBbMTFdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDg1Mi9maS1rYmwteDEyNzUvaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9tb2NzLmh0bWwKICAgIC0gZmkta2JsLWd1YzogICAgICAg
ICBOT1RSVU4gLT4gW0RNRVNHLVdBUk5dWzEyXQogICBbMTJdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDg1Mi9maS1rYmwtZ3VjL2lndEBpOTE1
X3NlbGZ0ZXN0QGxpdmVfZ3RfbW9jcy5odG1sCiAgICAtIGZpLXNrbC02MjYwdTogICAgICAgTk9U
UlVOIC0+IFtETUVTRy1XQVJOXVsxM10KICAgWzEzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4NTIvZmktc2tsLTYyNjB1L2lndEBpOTE1X3Nl
bGZ0ZXN0QGxpdmVfZ3RfbW9jcy5odG1sCiAgICAtIHtmaS1pY2wtdTR9OiAgICAgICAgTk9UUlVO
IC0+IFtETUVTRy1XQVJOXVsxNF0KICAgWzE0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4NTIvZmktaWNsLXU0L2lndEBpOTE1X3NlbGZ0ZXN0
QGxpdmVfZ3RfbW9jcy5odG1sCiAgICAtIGZpLXNrbC1sbWVtOiAgICAgICAgTk9UUlVOIC0+IFtE
TUVTRy1XQVJOXVsxNV0KICAgWzE1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTQ4NTIvZmktc2tsLWxtZW0vaWd0QGk5MTVfc2VsZnRlc3RAbGl2
ZV9ndF9tb2NzLmh0bWwKICAgIC0gZmktc2tsLTY3NzBocTogICAgICBOT1RSVU4gLT4gW0RNRVNH
LVdBUk5dWzE2XQogICBbMTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xNDg1Mi9maS1za2wtNjc3MGhxL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVf
Z3RfbW9jcy5odG1sCiAgICAtIHtmaS10Z2wtdTJ9OiAgICAgICAgTk9UUlVOIC0+IFtETUVTRy1X
QVJOXVsxN10KICAgWzE3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTQ4NTIvZmktdGdsLXUyL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfbW9j
cy5odG1sCiAgICAtIGZpLWljbC11MjogICAgICAgICAgTk9UUlVOIC0+IFtETUVTRy1XQVJOXVsx
OF0KICAgWzE4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTQ4NTIvZmktaWNsLXUyL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfbW9jcy5odG1s
CiAgICAtIGZpLWNmbC04MTA5dTogICAgICAgTk9UUlVOIC0+IFtETUVTRy1XQVJOXVsxOV0KICAg
WzE5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTQ4NTIvZmktY2ZsLTgxMDl1L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfbW9jcy5odG1sCiAg
ICAtIGZpLWtibC03NTAwdTogICAgICAgTk9UUlVOIC0+IFtETUVTRy1XQVJOXVsyMF0KICAgWzIw
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4
NTIvZmkta2JsLTc1MDB1L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfbW9jcy5odG1sCiAgICAt
IGZpLWljbC11MzogICAgICAgICAgTk9UUlVOIC0+IFtETUVTRy1XQVJOXVsyMV0KICAgWzIxXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4NTIv
ZmktaWNsLXUzL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfbW9jcy5odG1sCiAgICAtIGZpLWNt
bC11OiAgICAgICAgICAgTk9UUlVOIC0+IFtETUVTRy1XQVJOXVsyMl0KICAgWzIyXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4NTIvZmktY21s
LXUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9tb2NzLmh0bWwKICAgIC0gZmktZ2xrLWRzaTog
ICAgICAgICBOT1RSVU4gLT4gW0RNRVNHLVdBUk5dWzIzXQogICBbMjNdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDg1Mi9maS1nbGstZHNpL2ln
dEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfbW9jcy5odG1sCiAgICAtIHtmaS1jbWwtc306ICAgICAg
ICAgTk9UUlVOIC0+IFtETUVTRy1XQVJOXVsyNF0KICAgWzI0XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4NTIvZmktY21sLXMvaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZV9ndF9tb2NzLmh0bWwKICAgIC0ge2ZpLWljbC1ndWN9OiAgICAgICBOT1RS
VU4gLT4gW0RNRVNHLVdBUk5dWzI1XQogICBbMjVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDg1Mi9maS1pY2wtZ3VjL2lndEBpOTE1X3NlbGZ0
ZXN0QGxpdmVfZ3RfbW9jcy5odG1sCiAgICAtIHtmaS1rYmwtc29yYWthfTogICAgTk9UUlVOIC0+
IFtETUVTRy1XQVJOXVsyNl0KICAgWzI2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4NTIvZmkta2JsLXNvcmFrYS9pZ3RAaTkxNV9zZWxmdGVz
dEBsaXZlX2d0X21vY3MuaHRtbAogICAgLSBmaS1za2wtaW9tbXU6ICAgICAgIE5PVFJVTiAtPiBb
RE1FU0ctV0FSTl1bMjddCiAgIFsyN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE0ODUyL2ZpLXNrbC1pb21tdS9pZ3RAaTkxNV9zZWxmdGVzdEBs
aXZlX2d0X21vY3MuaHRtbAogICAgLSBmaS1jZmwtZ3VjOiAgICAgICAgIE5PVFJVTiAtPiBbRE1F
U0ctV0FSTl1bMjhdCiAgIFsyOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE0ODUyL2ZpLWNmbC1ndWMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9n
dF9tb2NzLmh0bWwKICAgIC0gZmktY21sLXUyOiAgICAgICAgICBOT1RSVU4gLT4gW0RNRVNHLVdB
Uk5dWzI5XQogICBbMjldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNDg1Mi9maS1jbWwtdTIvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9tb2Nz
Lmh0bWwKICAgIC0ge2ZpLWljbC1kc2l9OiAgICAgICBOT1RSVU4gLT4gW0RNRVNHLVdBUk5dWzMw
XQogICBbMzBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xNDg1Mi9maS1pY2wtZHNpL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfbW9jcy5odG1s
CiAgICAtIGZpLXdobC11OiAgICAgICAgICAgTk9UUlVOIC0+IFtETUVTRy1XQVJOXVszMV0KICAg
WzMxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTQ4NTIvZmktd2hsLXUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9tb2NzLmh0bWwKICAgIC0g
ZmktY2ZsLTg3MDBrOiAgICAgICBOT1RSVU4gLT4gW0RNRVNHLVdBUk5dWzMyXQogICBbMzJdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDg1Mi9m
aS1jZmwtODcwMGsvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9tb2NzLmh0bWwKICAgIC0gZmkt
Ynh0LWRzaTogICAgICAgICBOT1RSVU4gLT4gW0RNRVNHLVdBUk5dWzMzXQogICBbMzNdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDg1Mi9maS1i
eHQtZHNpL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfbW9jcy5odG1sCiAgICAtIGZpLXNrbC02
NjAwdTogICAgICAgTk9UUlVOIC0+IFtETUVTRy1XQVJOXVszNF0KICAgWzM0XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4NTIvZmktc2tsLTY2
MDB1L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfbW9jcy5odG1sCgogIApOZXcgdGVzdHMKLS0t
LS0tLS0tCgogIE5ldyB0ZXN0cyBoYXZlIGJlZW4gaW50cm9kdWNlZCBiZXR3ZWVuIENJX0RSTV83
MTE0IGFuZCBQYXRjaHdvcmtfMTQ4NTI6CgojIyMgTmV3IElHVCB0ZXN0cyAoMSkgIyMjCgogICog
aWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9tb2NzOgogICAgLSBTdGF0dXNlcyA6IDI3IGRtZXNn
LXdhcm4ocykgMTggcGFzcyhzKQogICAgLSBFeGVjIHRpbWU6IFswLjM4LCAxLjg5XSBzCgogIAoK
S25vd24gaXNzdWVzCi0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBp
biBQYXRjaHdvcmtfMTQ4NTIgdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBj
aGFuZ2VzICMjIwoKIyMjIyBJc3N1ZXMgaGl0ICMjIyMKCiAgKiBpZ3RAa21zX2FkZGZiX2Jhc2lj
QGJhZC1waXRjaC0yNTY6CiAgICAtIGZpLWljbC11MzogICAgICAgICAgW1BBU1NdWzM1XSAtPiBb
RE1FU0ctV0FSTl1bMzZdIChbZmRvIzEwNzcyNF0pCiAgIFszNV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxMTQvZmktaWNsLXUzL2lndEBrbXNfYWRk
ZmJfYmFzaWNAYmFkLXBpdGNoLTI1Ni5odG1sCiAgIFszNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0ODUyL2ZpLWljbC11My9pZ3RAa21zX2Fk
ZGZiX2Jhc2ljQGJhZC1waXRjaC0yNTYuaHRtbAoKICAKIyMjIyBQb3NzaWJsZSBmaXhlcyAjIyMj
CgogICogaWd0QGdlbV9jdHhfY3JlYXRlQGJhc2ljLWZpbGVzOgogICAgLSBmaS1iZHctZ3Z0ZHZt
OiAgICAgIFtETUVTRy1XQVJOXVszN10gLT4gW1BBU1NdWzM4XQogICBbMzddOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MTE0L2ZpLWJkdy1ndnRkdm0v
aWd0QGdlbV9jdHhfY3JlYXRlQGJhc2ljLWZpbGVzLmh0bWwKICAgWzM4XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4NTIvZmktYmR3LWd2dGR2
bS9pZ3RAZ2VtX2N0eF9jcmVhdGVAYmFzaWMtZmlsZXMuaHRtbAoKICAqIGlndEBnZW1fZmxpbmtf
YmFzaWNAZG91YmxlLWZsaW5rOgogICAgLSBmaS1pY2wtdTM6ICAgICAgICAgIFtETUVTRy1XQVJO
XVszOV0gKFtmZG8jMTA3NzI0XSkgLT4gW1BBU1NdWzQwXSArMiBzaW1pbGFyIGlzc3VlcwogICBb
MzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MTE0
L2ZpLWljbC11My9pZ3RAZ2VtX2ZsaW5rX2Jhc2ljQGRvdWJsZS1mbGluay5odG1sCiAgIFs0MF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0ODUy
L2ZpLWljbC11My9pZ3RAZ2VtX2ZsaW5rX2Jhc2ljQGRvdWJsZS1mbGluay5odG1sCgogICogaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlzdHM6CiAgICAtIGZpLWNmbC1ndWM6ICAgICAgICAg
W0RNRVNHLUZBSUxdWzQxXSAtPiBbUEFTU11bNDJdCiAgIFs0MV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxMTQvZmktY2ZsLWd1Yy9pZ3RAaTkxNV9z
ZWxmdGVzdEBsaXZlX2V4ZWNsaXN0cy5odG1sCiAgIFs0Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0ODUyL2ZpLWNmbC1ndWMvaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZV9leGVjbGlzdHMuaHRtbAogICAgLSBmaS1jbWwtdTogICAgICAgICAgIFtE
TUVTRy1GQUlMXVs0M10gLT4gW1BBU1NdWzQ0XQogICBbNDNdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MTE0L2ZpLWNtbC11L2lndEBpOTE1X3NlbGZ0
ZXN0QGxpdmVfZXhlY2xpc3RzLmh0bWwKICAgWzQ0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4NTIvZmktY21sLXUvaWd0QGk5MTVfc2VsZnRl
c3RAbGl2ZV9leGVjbGlzdHMuaHRtbAogICAgLSBmaS13aGwtdTogICAgICAgICAgIFtJTkNPTVBM
RVRFXVs0NV0gLT4gW1BBU1NdWzQ2XQogICBbNDVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MTE0L2ZpLXdobC11L2lndEBpOTE1X3NlbGZ0ZXN0QGxp
dmVfZXhlY2xpc3RzLmh0bWwKICAgWzQ2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4NTIvZmktd2hsLXUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2
ZV9leGVjbGlzdHMuaHRtbAogICAgLSBmaS1hcGwtZ3VjOiAgICAgICAgIFtETUVTRy1GQUlMXVs0
N10gLT4gW1BBU1NdWzQ4XQogICBbNDddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV83MTE0L2ZpLWFwbC1ndWMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9l
eGVjbGlzdHMuaHRtbAogICBbNDhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNDg1Mi9maS1hcGwtZ3VjL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVf
ZXhlY2xpc3RzLmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0dDoKICAgIC0ge2Zp
LWljbC1ndWN9OiAgICAgICBbSU5DT01QTEVURV1bNDldIChbZmRvIzEwNzcxM10pIC0+IFtQQVNT
XVs1MF0KICAgWzQ5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNzExNC9maS1pY2wtZ3VjL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3R0Lmh0bWwKICAg
WzUwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTQ4NTIvZmktaWNsLWd1Yy9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0dC5odG1sCgogICogaWd0
QGttc19jaGFtZWxpdW1AaGRtaS1ocGQtZmFzdDoKICAgIC0gZmkta2JsLTc1MDB1OiAgICAgICBb
RkFJTF1bNTFdIChbZmRvIzExMTQwN10pIC0+IFtQQVNTXVs1Ml0KICAgWzUxXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzExNC9maS1rYmwtNzUwMHUv
aWd0QGttc19jaGFtZWxpdW1AaGRtaS1ocGQtZmFzdC5odG1sCiAgIFs1Ml06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0ODUyL2ZpLWtibC03NTAw
dS9pZ3RAa21zX2NoYW1lbGl1bUBoZG1pLWhwZC1mYXN0Lmh0bWwKCiAgCiAge25hbWV9OiBUaGlz
IGVsZW1lbnQgaXMgc3VwcHJlc3NlZC4gVGhpcyBtZWFucyBpdCBpcyBpZ25vcmVkIHdoZW4gY29t
cHV0aW5nCiAgICAgICAgICB0aGUgc3RhdHVzIG9mIHRoZSBkaWZmZXJlbmNlIChTVUNDRVNTLCBX
QVJOSU5HLCBvciBGQUlMVVJFKS4KCiAgW2ZkbyMxMDI1MDVdOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDI1MDUKICBbZmRvIzEwNTYwMl06IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNTYwMgogIFtmZG8jMTA3NzEz
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NzEzCiAg
W2ZkbyMxMDc3MjRdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMDc3MjQKICBbZmRvIzEwODU2OV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTEwODU2OQogIFtmZG8jMTExMDQ1XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMDQ1CiAgW2ZkbyMxMTEwNDldOiBodHRwczovL2J1
Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEwNDkKICBbZmRvIzExMTQwN106
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTQwNwogIFtm
ZG8jMTExODg3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTExODg3CgoKUGFydGljaXBhdGluZyBob3N0cyAoNTIgLT4gNDYpCi0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQoKICBNaXNzaW5nICAgICg2KTogZmktaWxrLW01NDAgZmktaHN3LTQyMDB1
IGZpLWJ5dC1zcXVhd2tzIGZpLWljbC15IGZpLWJ5dC1jbGFwcGVyIGZpLWJkdy1zYW11cyAKCgpC
dWlsZCBjaGFuZ2VzCi0tLS0tLS0tLS0tLS0KCiAgKiBDSTogQ0ktMjAxOTA1MjkgLT4gTm9uZQog
ICogTGludXg6IENJX0RSTV83MTE0IC0+IFBhdGNod29ya18xNDg1MgoKICBDSS0yMDE5MDUyOTog
MjAxOTA1MjkKICBDSV9EUk1fNzExNDogZDllOTA5MjcyYTAyMjU5NzA2N2QzYWMyZGZjZWRhY2Q2
M2M2MWFmOSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIElH
VF81MjMxOiBlMjkzMDUxZjhmOTljNzJjYjAxZDIxZTRiNzNhNTkyOGVhMzUxZWIzIEAgZ2l0Oi8v
YW5vbmdpdC5mcmVlZGVza3RvcC5vcmcveG9yZy9hcHAvaW50ZWwtZ3B1LXRvb2xzCiAgUGF0Y2h3
b3JrXzE0ODUyOiBlNWZhZDk5NjdhMTU1MmM4OTZjODY0OGU3MjhkZjU3NzQ4YzZhZDgzIEAgZ2l0
Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CgoKPT0gTGludXggY29tbWl0
cyA9PQoKZTVmYWQ5OTY3YTE1IGRybS9pOTE1L3NlbGZ0ZXN0czogQWRkIGNvdmVyYWdlIG9mIG1v
Y3MgcmVnaXN0ZXJzCgo9PSBMb2dzID09CgpGb3IgbW9yZSBkZXRhaWxzIHNlZTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4NTIvaW5kZXguaHRt
bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
