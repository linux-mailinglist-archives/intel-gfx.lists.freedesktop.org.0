Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9972DE5157
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 18:36:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B28CC6EAED;
	Fri, 25 Oct 2019 16:36:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EAA0E6EAED;
 Fri, 25 Oct 2019 16:36:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E411BA0091;
 Fri, 25 Oct 2019 16:36:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Fri, 25 Oct 2019 16:36:01 -0000
Message-ID: <20191025163601.29362.1436@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191025112442.2824-1-matthew.auld@intel.com>
In-Reply-To: <20191025112442.2824-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915/selftests/blt=3A_add_some_kthreads_into_the_mix?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvc2VsZnRlc3RzL2JsdDogYWRk
IHNvbWUga3RocmVhZHMgaW50byB0aGUgbWl4ClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJl
ZWRlc2t0b3Aub3JnL3Nlcmllcy82ODU2My8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09
CgpDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV83MTg2IC0+IFBhdGNod29ya18xNDk4
MQo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CgpT
dW1tYXJ5Ci0tLS0tLS0KCiAgKipGQUlMVVJFKioKCiAgU2VyaW91cyB1bmtub3duIGNoYW5nZXMg
Y29taW5nIHdpdGggUGF0Y2h3b3JrXzE0OTgxIGFic29sdXRlbHkgbmVlZCB0byBiZQogIHZlcmlm
aWVkIG1hbnVhbGx5LgogIAogIElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZl
IG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcwogIGludHJvZHVjZWQgaW4gUGF0Y2h3b3Jr
XzE0OTgxLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cgdGhlbQogIHRvIGRv
Y3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9z
aXRpdmVzIGluIENJLgoKICBFeHRlcm5hbCBVUkw6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0OTgxL2luZGV4Lmh0bWwKClBvc3NpYmxlIG5ldyBp
c3N1ZXMKLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2Vz
IHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNDk4MToKCiMjIyBJ
R1QgY2hhbmdlcyAjIyMKCiMjIyMgUG9zc2libGUgcmVncmVzc2lvbnMgIyMjIwoKICAqIGlndEBp
OTE1X3NlbGZ0ZXN0QGxpdmVfYmx0OgogICAgLSBmaS1ic3ctbjMwNTA6ICAgICAgIFtQQVNTXVsx
XSAtPiBbRE1FU0ctRkFJTF1bMl0KICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV83MTg2L2ZpLWJzdy1uMzA1MC9pZ3RAaTkxNV9zZWxmdGVzdEBs
aXZlX2JsdC5odG1sCiAgIFsyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTQ5ODEvZmktYnN3LW4zMDUwL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVf
Ymx0Lmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2dlbV9jb250ZXh0czoKICAgIC0g
ZmktYnN3LWtlZmthOiAgICAgICBbUEFTU11bM10gLT4gW0lOQ09NUExFVEVdWzRdCiAgIFszXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzE4Ni9maS1i
c3cta2Vma2EvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4dHMuaHRtbAogICBbNF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0OTgx
L2ZpLWJzdy1rZWZrYS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2dlbV9jb250ZXh0cy5odG1sCgog
IApLbm93biBpc3N1ZXMKLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5k
IGluIFBhdGNod29ya18xNDk4MSB0aGF0IGNvbWUgZnJvbSBrbm93biBpc3N1ZXM6CgojIyMgSUdU
IGNoYW5nZXMgIyMjCgojIyMjIElzc3VlcyBoaXQgIyMjIwoKICAqIGlndEBnZW1fZmxpbmtfYmFz
aWNAZmxpbmstbGlmZXRpbWU6CiAgICAtIGZpLWljbC11MzogICAgICAgICAgW1BBU1NdWzVdIC0+
IFtETUVTRy1XQVJOXVs2XSAoW2ZkbyMxMDc3MjRdKSArMSBzaW1pbGFyIGlzc3VlCiAgIFs1XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzE4Ni9maS1p
Y2wtdTMvaWd0QGdlbV9mbGlua19iYXNpY0BmbGluay1saWZldGltZS5odG1sCiAgIFs2XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ5ODEvZmkt
aWNsLXUzL2lndEBnZW1fZmxpbmtfYmFzaWNAZmxpbmstbGlmZXRpbWUuaHRtbAoKICAqIGlndEBr
bXNfY2hhbWVsaXVtQGRwLWVkaWQtcmVhZDoKICAgIC0gZmkta2JsLTc1MDB1OiAgICAgICBbUEFT
U11bN10gLT4gW1dBUk5dWzhdIChbZmRvIzEwOTQ4M10pCiAgIFs3XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzE4Ni9maS1rYmwtNzUwMHUvaWd0QGtt
c19jaGFtZWxpdW1AZHAtZWRpZC1yZWFkLmh0bWwKICAgWzhdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDk4MS9maS1rYmwtNzUwMHUvaWd0QGtt
c19jaGFtZWxpdW1AZHAtZWRpZC1yZWFkLmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3Ry
YWNraW5nQGJhc2ljOgogICAgLSBmaS1oc3ctcGVwcHk6ICAgICAgIFtQQVNTXVs5XSAtPiBbRE1F
U0ctV0FSTl1bMTBdIChbZmRvIzEwMjYxNF0pCiAgIFs5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzE4Ni9maS1oc3ctcGVwcHkvaWd0QGttc19mcm9u
dGJ1ZmZlcl90cmFja2luZ0BiYXNpYy5odG1sCiAgIFsxMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0OTgxL2ZpLWhzdy1wZXBweS9pZ3RAa21z
X2Zyb250YnVmZmVyX3RyYWNraW5nQGJhc2ljLmh0bWwKCiAgCiMjIyMgUG9zc2libGUgZml4ZXMg
IyMjIwoKICAqIHtpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0X2hlYXJ0YmVhdH06CiAgICAtIGZp
LWJ5dC1uMjgyMDogICAgICAgW0RNRVNHLUZBSUxdWzExXSAoW2ZkbyMxMTIwOTZdKSAtPiBbUEFT
U11bMTJdCiAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzcxODYvZmktYnl0LW4yODIwL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfaGVhcnRi
ZWF0Lmh0bWwKICAgWzEyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTQ5ODEvZmktYnl0LW4yODIwL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3Rf
aGVhcnRiZWF0Lmh0bWwKCiAgKiBpZ3RAa21zX2J1c3lAYmFzaWMtZmxpcC1hOgogICAgLSB7Zmkt
dGdsLXUyfTogICAgICAgIFtETUVTRy1XQVJOXVsxM10gKFtmZG8jMTExNjAwXSkgLT4gW1BBU1Nd
WzE0XQogICBbMTNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV83MTg2L2ZpLXRnbC11Mi9pZ3RAa21zX2J1c3lAYmFzaWMtZmxpcC1hLmh0bWwKICAgWzE0
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ5
ODEvZmktdGdsLXUyL2lndEBrbXNfYnVzeUBiYXNpYy1mbGlwLWEuaHRtbAoKICAqIGlndEBrbXNf
Y2hhbWVsaXVtQGhkbWktaHBkLWZhc3Q6CiAgICAtIGZpLWtibC03NTAwdTogICAgICAgW0ZBSUxd
WzE1XSAoW2ZkbyMxMTE0MDddKSAtPiBbUEFTU11bMTZdCiAgIFsxNV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxODYvZmkta2JsLTc1MDB1L2lndEBr
bXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3QuaHRtbAogICBbMTZdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDk4MS9maS1rYmwtNzUwMHUvaWd0
QGttc19jaGFtZWxpdW1AaGRtaS1ocGQtZmFzdC5odG1sCgogICogaWd0QHByaW1lX3ZnZW1AYmFz
aWMtd2FpdC1kZWZhdWx0OgogICAgLSBmaS1pY2wtdTM6ICAgICAgICAgIFtETUVTRy1XQVJOXVsx
N10gKFtmZG8jMTA3NzI0XSkgLT4gW1BBU1NdWzE4XSArMSBzaW1pbGFyIGlzc3VlCiAgIFsxN106
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxODYvZmkt
aWNsLXUzL2lndEBwcmltZV92Z2VtQGJhc2ljLXdhaXQtZGVmYXVsdC5odG1sCiAgIFsxOF06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0OTgxL2Zp
LWljbC11My9pZ3RAcHJpbWVfdmdlbUBiYXNpYy13YWl0LWRlZmF1bHQuaHRtbAoKICAKICB7bmFt
ZX06IFRoaXMgZWxlbWVudCBpcyBzdXBwcmVzc2VkLiBUaGlzIG1lYW5zIGl0IGlzIGlnbm9yZWQg
d2hlbiBjb21wdXRpbmcKICAgICAgICAgIHRoZSBzdGF0dXMgb2YgdGhlIGRpZmZlcmVuY2UgKFNV
Q0NFU1MsIFdBUk5JTkcsIG9yIEZBSUxVUkUpLgoKICBbZmRvIzEwMjYxNF06IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMjYxNAogIFtmZG8jMTA3NzEzXTog
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NzEzCiAgW2Zk
byMxMDc3MjRdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0x
MDc3MjQKICBbZmRvIzEwODU2OV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19i
dWcuY2dpP2lkPTEwODU2OQogIFtmZG8jMTA5NDgzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9w
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5NDgzCiAgW2ZkbyMxMTE0MDddOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE0MDcKICBbZmRvIzExMTYwMF06IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTYwMAogIFtmZG8j
MTExNzQ3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEx
NzQ3CiAgW2ZkbyMxMTIwOTZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMTIwOTYKCgpQYXJ0aWNpcGF0aW5nIGhvc3RzICg0OSAtPiA0MykKLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tCgogIE1pc3NpbmcgICAgKDYpOiBmaS1pbGstbTU0MCBmaS1o
c3ctNDIwMHUgZmktYnl0LXNxdWF3a3MgZmktYnN3LWN5YW4gZmktaWNsLXkgZmktYnl0LWNsYXBw
ZXIgCgoKQnVpbGQgY2hhbmdlcwotLS0tLS0tLS0tLS0tCgogICogQ0k6IENJLTIwMTkwNTI5IC0+
IE5vbmUKICAqIExpbnV4OiBDSV9EUk1fNzE4NiAtPiBQYXRjaHdvcmtfMTQ5ODEKCiAgQ0ktMjAx
OTA1Mjk6IDIwMTkwNTI5CiAgQ0lfRFJNXzcxODY6IGNlMDNlYzg2Nzg5ZWY4ZmM0MWE1NjE3NmU1
ZjJhOTI1MTE4MjE4M2MgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGlu
dXgKICBJR1RfNTI0MTogMTdiODdjMzc4ZmExNTUzOTBiMTNhNDNmMTQxMzcxZmQ4OTlkNTY3YiBA
IGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hvcmcvYXBwL2ludGVsLWdwdS10b29scwog
IFBhdGNod29ya18xNDk4MTogZjQzYTAxNDZiM2ZjMTdlZGUyYTdkNzY1Y2VkMzY4ZjQ5M2FlMjU4
NSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAoKCj09IExpbnV4
IGNvbW1pdHMgPT0KCmY0M2EwMTQ2YjNmYyBkcm0vaTkxNS9zZWxmdGVzdHMvYmx0OiBhZGQgc29t
ZSBrdGhyZWFkcyBpbnRvIHRoZSBtaXgKCj09IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2Vl
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDk4
MS9pbmRleC5odG1sCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
