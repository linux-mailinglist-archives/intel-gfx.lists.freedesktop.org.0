Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5427610DBE5
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Nov 2019 01:11:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F39016E96D;
	Sat, 30 Nov 2019 00:11:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 68C276E96B;
 Sat, 30 Nov 2019 00:11:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5FBABA47E7;
 Sat, 30 Nov 2019 00:11:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 30 Nov 2019 00:11:04 -0000
Message-ID: <157507266436.2156.5887228334123371597@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191129201427.1398860-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191129201427.1398860-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5BCI=2C1/2=5D_drm/i915/dp=3A_Take_display_pow?=
 =?utf-8?q?erwell_before_intel=5Fdp=5Fdetect=5Fdpcd?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDEv
Ml0gZHJtL2k5MTUvZHA6IFRha2UgZGlzcGxheSBwb3dlcndlbGwgYmVmb3JlIGludGVsX2RwX2Rl
dGVjdF9kcGNkClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmll
cy83MDIyNi8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpDSSBCdWcgTG9nIC0gY2hh
bmdlcyBmcm9tIENJX0RSTV83NDQ3IC0+IFBhdGNod29ya18xNTUxOQo9PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CgpTdW1tYXJ5Ci0tLS0tLS0KCiAg
KipGQUlMVVJFKioKCiAgU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdpdGggUGF0Y2h3
b3JrXzE1NTE5IGFic29sdXRlbHkgbmVlZCB0byBiZQogIHZlcmlmaWVkIG1hbnVhbGx5LgogIAog
IElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0
aCB0aGUgY2hhbmdlcwogIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE1NTE5LCBwbGVhc2Ugbm90
aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cgdGhlbQogIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZh
aWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLgoKICBF
eHRlcm5hbCBVUkw6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE1NTE5L2luZGV4Lmh0bWwKClBvc3NpYmxlIG5ldyBpc3N1ZXMKLS0tLS0tLS0tLS0t
LS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVl
biBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNTUxOToKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMj
IyMgUG9zc2libGUgcmVncmVzc2lvbnMgIyMjIwoKICAqIGlndEBpOTE1X3BtX3JwbUBiYXNpYy1w
Y2ktZDMtc3RhdGU6CiAgICAtIGZpLWljbC11MzogICAgICAgICAgW1BBU1NdWzFdIC0+IFtETUVT
Ry1XQVJOXVsyXQogICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzc0NDcvZmktaWNsLXUzL2lndEBpOTE1X3BtX3JwbUBiYXNpYy1wY2ktZDMtc3Rh
dGUuaHRtbAogICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE1NTE5L2ZpLWljbC11My9pZ3RAaTkxNV9wbV9ycG1AYmFzaWMtcGNpLWQzLXN0
YXRlLmh0bWwKCiAgCktub3duIGlzc3VlcwotLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhlIGNo
YW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzE1NTE5IHRoYXQgY29tZSBmcm9tIGtub3duIGlzc3Vl
czoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgSXNzdWVzIGhpdCAjIyMjCgogICogaWd0QGk5
MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQ6CiAgICAtIGZpLXNrbC1sbWVtOiAgICAgICAgW1BBU1Nd
WzNdIC0+IFtETUVTRy1XQVJOXVs0XSAoW2ZkbyMxMTIyNjFdKQogICBbM106IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0NDcvZmktc2tsLWxtZW0vaWd0
QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRtbAogICBbNF06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTE5L2ZpLXNrbC1sbWVtL2lndEBp
OTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwKCiAgCiMjIyMgUG9zc2libGUgZml4ZXMgIyMj
IwoKICAqIGlndEBnZW1fc3luY0BiYXNpYy1hbGw6CiAgICAtIGZpLXRnbC15OiAgICAgICAgICAg
W0lOQ09NUExFVEVdWzVdIChbZmRvIzExMTg2N10pIC0+IFtQQVNTXVs2XQogICBbNV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0NDcvZmktdGdsLXkv
aWd0QGdlbV9zeW5jQGJhc2ljLWFsbC5odG1sCiAgIFs2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU1MTkvZmktdGdsLXkvaWd0QGdlbV9zeW5j
QGJhc2ljLWFsbC5odG1sCgogICogaWd0QGttc19jaGFtZWxpdW1AaGRtaS1ocGQtZmFzdDoKICAg
IC0gZmkta2JsLTc1MDB1OiAgICAgICBbRkFJTF1bN10gKFtmZG8jMTExNDA3XSkgLT4gW1BBU1Nd
WzhdCiAgIFs3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNzQ0Ny9maS1rYmwtNzUwMHUvaWd0QGttc19jaGFtZWxpdW1AaGRtaS1ocGQtZmFzdC5odG1s
CiAgIFs4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTU1MTkvZmkta2JsLTc1MDB1L2lndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3QuaHRt
bAoKICAKIyMjIyBXYXJuaW5ncyAjIyMjCgogICogaWd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMt
czQtZGV2aWNlczoKICAgIC0gZmkta2JsLXgxMjc1OiAgICAgICBbRE1FU0ctV0FSTl1bOV0gKFtm
ZG8jMTAzNTU4XSAvIFtmZG8jMTA1NjAyXSAvIFtmZG8jMTA3MTM5XSkgLT4gW0RNRVNHLVdBUk5d
WzEwXSAoW2ZkbyMxMDM1NThdIC8gW2ZkbyMxMDU2MDJdIC8gW2ZkbyMxMDU3NjNdIC8gW2ZkbyMx
MDcxMzldKQogICBbOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzc0NDcvZmkta2JsLXgxMjc1L2lndEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXM0LWRl
dmljZXMuaHRtbAogICBbMTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xNTUxOS9maS1rYmwteDEyNzUvaWd0QGdlbV9leGVjX3N1c3BlbmRAYmFz
aWMtczQtZGV2aWNlcy5odG1sCgogICogaWd0QGttc19idXN5QGJhc2ljLWZsaXAtcGlwZS1jOgog
ICAgLSBmaS1rYmwteDEyNzU6ICAgICAgIFtETUVTRy1XQVJOXVsxMV0gKFtmZG8jMTAzNTU4XSAv
IFtmZG8jMTA1NjAyXSAvIFtmZG8jMTA1NzYzXSkgLT4gW0RNRVNHLVdBUk5dWzEyXSAoW2ZkbyMx
MDM1NThdIC8gW2ZkbyMxMDU2MDJdKQogICBbMTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDQ3L2ZpLWtibC14MTI3NS9pZ3RAa21zX2J1c3lAYmFz
aWMtZmxpcC1waXBlLWMuaHRtbAogICBbMTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTUxOS9maS1rYmwteDEyNzUvaWd0QGttc19idXN5QGJh
c2ljLWZsaXAtcGlwZS1jLmh0bWwKCiAgKiBpZ3RAa21zX2N1cnNvcl9sZWdhY3lAYmFzaWMtYnVz
eS1mbGlwLWJlZm9yZS1jdXJzb3ItbGVnYWN5OgogICAgLSBmaS1rYmwteDEyNzU6ICAgICAgIFtE
TUVTRy1XQVJOXVsxM10gKFtmZG8jMTAzNTU4XSAvIFtmZG8jMTA1NjAyXSkgLT4gW0RNRVNHLVdB
Uk5dWzE0XSAoW2ZkbyMxMDM1NThdIC8gW2ZkbyMxMDU2MDJdIC8gW2ZkbyMxMDU3NjNdKSArMTAg
c2ltaWxhciBpc3N1ZXMKICAgWzEzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNzQ0Ny9maS1rYmwteDEyNzUvaWd0QGttc19jdXJzb3JfbGVnYWN5QGJh
c2ljLWJ1c3ktZmxpcC1iZWZvcmUtY3Vyc29yLWxlZ2FjeS5odG1sCiAgIFsxNF06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTE5L2ZpLWtibC14
MTI3NS9pZ3RAa21zX2N1cnNvcl9sZWdhY3lAYmFzaWMtYnVzeS1mbGlwLWJlZm9yZS1jdXJzb3It
bGVnYWN5Lmh0bWwKCiAgCiAge25hbWV9OiBUaGlzIGVsZW1lbnQgaXMgc3VwcHJlc3NlZC4gVGhp
cyBtZWFucyBpdCBpcyBpZ25vcmVkIHdoZW4gY29tcHV0aW5nCiAgICAgICAgICB0aGUgc3RhdHVz
IG9mIHRoZSBkaWZmZXJlbmNlIChTVUNDRVNTLCBXQVJOSU5HLCBvciBGQUlMVVJFKS4KCiAgW2Zk
byMxMDM1NThdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0x
MDM1NTgKICBbZmRvIzEwNTYwMl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19i
dWcuY2dpP2lkPTEwNTYwMgogIFtmZG8jMTA1NzYzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9w
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA1NzYzCiAgW2ZkbyMxMDcxMzldOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDcxMzkKICBbZmRvIzEwOTk2NF06IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTk2NAogIFtmZG8j
MTExNDA3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEx
NDA3CiAgW2ZkbyMxMTE4NjddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMTE4NjcKICBbZmRvIzExMjI2MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTExMjI2MQogIFtmZG8jMTEyMjk4XTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyMjk4CgoKUGFydGljaXBhdGluZyBob3N0
cyAoNTEgLT4gNDUpCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBNaXNzaW5nICAg
ICg2KTogZmktaWxrLW01NDAgZmktaHN3LTQyMDB1IGZpLWJzdy1jeWFuIGZpLWN0Zy1wODYwMCBm
aS1ieXQtY2xhcHBlciBmaS1iZHctc2FtdXMgCgoKQnVpbGQgY2hhbmdlcwotLS0tLS0tLS0tLS0t
CgogICogQ0k6IENJLTIwMTkwNTI5IC0+IE5vbmUKICAqIExpbnV4OiBDSV9EUk1fNzQ0NyAtPiBQ
YXRjaHdvcmtfMTU1MTkKCiAgQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5CiAgQ0lfRFJNXzc0NDc6IDhh
MDJkYTZlNWJlYTI4ODk0NWVkNDIyYmQ0MGFkOGM1YTI1NGU1MzkgQCBnaXQ6Ly9hbm9uZ2l0LmZy
ZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKICBJR1RfNTMxODogMjZhZTY1ODRhYzAzYWQ4NjJk
ODJmOTg2MzAyMjc1YTY4YmNjY2IyOSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hv
cmcvYXBwL2ludGVsLWdwdS10b29scwogIFBhdGNod29ya18xNTUxOTogMDYyZDY0ZDQyOWIyMGI3
YmZmMTA1MDdiM2MwZWNiMjM3MDI5YmIzNiBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3Jn
L2dmeC1jaS9saW51eAoKCj09IExpbnV4IGNvbW1pdHMgPT0KCjA2MmQ2NGQ0MjliMiBkcm0vaTkx
NTogU2VyaWFsaXNlIGk5MTVfYWN0aXZlX3dhaXQoKSB3aXRoIGl0cyByZXRpcmVtZW50CmVlNmUx
ODg2ZDRmYSBkcm0vaTkxNS9kcDogVGFrZSBkaXNwbGF5IHBvd2Vyd2VsbCBiZWZvcmUgaW50ZWxf
ZHBfZGV0ZWN0X2RwY2QKCj09IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTUxOS9pbmRleC5o
dG1sCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
