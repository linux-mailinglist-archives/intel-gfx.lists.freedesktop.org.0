Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6991DE040
	for <lists+intel-gfx@lfdr.de>; Sun, 20 Oct 2019 21:44:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4162389A35;
	Sun, 20 Oct 2019 19:44:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2E57889A1A;
 Sun, 20 Oct 2019 19:44:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 25F57A00EF;
 Sun, 20 Oct 2019 19:44:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi@etezian.org>
Date: Sun, 20 Oct 2019 19:44:14 -0000
Message-ID: <20191020194414.5310.83472@emeril.freedesktop.org>
References: <20191020184139.9145-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191020184139.9145-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_Extract_GT_ring_management_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEV4dHJhY3QgR1QgcmluZyBt
YW5hZ2VtZW50IChyZXYyKQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9y
Zy9zZXJpZXMvNjgyNzAvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQ0kgQnVnIExv
ZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNzEzNiAtPiBQYXRjaHdvcmtfMTQ4OTkKPT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQoKU3VtbWFyeQotLS0t
LS0tCgogICoqRkFJTFVSRSoqCgogIFNlcmlvdXMgdW5rbm93biBjaGFuZ2VzIGNvbWluZyB3aXRo
IFBhdGNod29ya18xNDg5OSBhYnNvbHV0ZWx5IG5lZWQgdG8gYmUKICB2ZXJpZmllZCBtYW51YWxs
eS4KICAKICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRv
IGRvIHdpdGggdGhlIGNoYW5nZXMKICBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNDg5OSwgcGxl
YXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIHRvIGFsbG93IHRoZW0KICB0byBkb2N1bWVudCB0aGlz
IG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0aXZlcyBpbiBD
SS4KCiAgRXh0ZXJuYWwgVVJMOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xNDg5OS9pbmRleC5odG1sCgpQb3NzaWJsZSBuZXcgaXNzdWVzCi0tLS0t
LS0tLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBo
YXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTQ4OTk6CgojIyMgSUdUIGNoYW5nZXMg
IyMjCgojIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMKCiAgKiBpZ3RAaTkxNV9zZWxmdGVz
dEBsaXZlX2V4ZWNsaXN0czoKICAgIC0gZmkta2JsLXNvcmFrYTogICAgICBOT1RSVU4gLT4gW0lO
Q09NUExFVEVdWzFdCiAgIFsxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTQ4OTkvZmkta2JsLXNvcmFrYS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZl
X2V4ZWNsaXN0cy5odG1sCgogIApLbm93biBpc3N1ZXMKLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJl
IHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNod29ya18xNDg5OSB0aGF0IGNvbWUgZnJvbSBrbm93
biBpc3N1ZXM6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIElzc3VlcyBoaXQgIyMjIwoKICAq
IGlndEBnZW1fYmFzaWNAY3JlYXRlLWZkLWNsb3NlOgogICAgLSBmaS1pY2wtdTM6ICAgICAgICAg
IFtQQVNTXVsyXSAtPiBbRE1FU0ctV0FSTl1bM10gKFtmZG8jMTA3NzI0XSkKICAgWzJdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MTM2L2ZpLWljbC11
My9pZ3RAZ2VtX2Jhc2ljQGNyZWF0ZS1mZC1jbG9zZS5odG1sCiAgIFszXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4OTkvZmktaWNsLXUzL2ln
dEBnZW1fYmFzaWNAY3JlYXRlLWZkLWNsb3NlLmh0bWwKCiAgKiBpZ3RAZ2VtX2N0eF9zd2l0Y2hA
bGVnYWN5LXJlbmRlcjoKICAgIC0gZmktYnh0LWRzaTogICAgICAgICBbUEFTU11bNF0gLT4gW0lO
Q09NUExFVEVdWzVdIChbZmRvIzEwMzkyN10gLyBbZmRvIzExMTM4MV0pCiAgIFs0XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzEzNi9maS1ieHQtZHNp
L2lndEBnZW1fY3R4X3N3aXRjaEBsZWdhY3ktcmVuZGVyLmh0bWwKICAgWzVdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDg5OS9maS1ieHQtZHNp
L2lndEBnZW1fY3R4X3N3aXRjaEBsZWdhY3ktcmVuZGVyLmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxm
dGVzdEBsaXZlX2V4ZWNsaXN0czoKICAgIC0gZmkta2JsLTc1MDB1OiAgICAgICBbUEFTU11bNl0g
LT4gW0lOQ09NUExFVEVdWzddIChbZmRvIzExMjA2NV0pCiAgIFs2XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzEzNi9maS1rYmwtNzUwMHUvaWd0QGk5
MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlzdHMuaHRtbAogICBbN106IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0ODk5L2ZpLWtibC03NTAwdS9pZ3RA
aTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0cy5odG1sCgogIAojIyMjIFBvc3NpYmxlIGZpeGVz
ICMjIyMKCiAgKiBpZ3RAZ2VtX2N0eF9jcmVhdGVAYmFzaWM6CiAgICAtIGZpLWljbC11MzogICAg
ICAgICAgW0RNRVNHLVdBUk5dWzhdIChbZmRvIzEwNzcyNF0pIC0+IFtQQVNTXVs5XQogICBbOF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxMzYvZmkt
aWNsLXUzL2lndEBnZW1fY3R4X2NyZWF0ZUBiYXNpYy5odG1sCiAgIFs5XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4OTkvZmktaWNsLXUzL2ln
dEBnZW1fY3R4X2NyZWF0ZUBiYXNpYy5odG1sCgogICogaWd0QGdlbV9jdHhfc3dpdGNoQGxlZ2Fj
eS1yZW5kZXI6CiAgICAtIGZpLWljbC11MzogICAgICAgICAgW0lOQ09NUExFVEVdWzEwXSAoW2Zk
byMxMDc3MTNdIC8gW2ZkbyMxMTEzODFdKSAtPiBbUEFTU11bMTFdCiAgIFsxMF06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxMzYvZmktaWNsLXUzL2ln
dEBnZW1fY3R4X3N3aXRjaEBsZWdhY3ktcmVuZGVyLmh0bWwKICAgWzExXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4OTkvZmktaWNsLXUzL2ln
dEBnZW1fY3R4X3N3aXRjaEBsZWdhY3ktcmVuZGVyLmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxmdGVz
dEBsaXZlX2NvaGVyZW5jeToKICAgIC0gZmkta2JsLXNvcmFrYTogICAgICBbVElNRU9VVF1bMTJd
IChbZmRvIzExMTk0NF0pIC0+IFtQQVNTXVsxM10KICAgWzEyXTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzEzNi9maS1rYmwtc29yYWthL2lndEBpOTE1
X3NlbGZ0ZXN0QGxpdmVfY29oZXJlbmN5Lmh0bWwKICAgWzEzXTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4OTkvZmkta2JsLXNvcmFrYS9pZ3RA
aTkxNV9zZWxmdGVzdEBsaXZlX2NvaGVyZW5jeS5odG1sCgogICogaWd0QGk5MTVfc2VsZnRlc3RA
bGl2ZV9oYW5nY2hlY2s6CiAgICAtIHtmaS1pY2wtdTR9OiAgICAgICAgW0lOQ09NUExFVEVdWzE0
XSAoW2ZkbyMxMDc3MTNdIC8gW2ZkbyMxMDg1NjldKSAtPiBbUEFTU11bMTVdCiAgIFsxNF06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxMzYvZmktaWNs
LXU0L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfaGFuZ2NoZWNrLmh0bWwKICAgWzE1XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4OTkvZmktaWNs
LXU0L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfaGFuZ2NoZWNrLmh0bWwKCiAgKiBpZ3RAa21zX2No
YW1lbGl1bUBoZG1pLWhwZC1mYXN0OgogICAgLSBmaS1rYmwtNzUwMHU6ICAgICAgIFtGQUlMXVsx
Nl0gKFtmZG8jMTExNDA3XSkgLT4gW1BBU1NdWzE3XQogICBbMTZdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MTM2L2ZpLWtibC03NTAwdS9pZ3RAa21z
X2NoYW1lbGl1bUBoZG1pLWhwZC1mYXN0Lmh0bWwKICAgWzE3XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4OTkvZmkta2JsLTc1MDB1L2lndEBr
bXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3QuaHRtbAoKICAKICB7bmFtZX06IFRoaXMgZWxlbWVu
dCBpcyBzdXBwcmVzc2VkLiBUaGlzIG1lYW5zIGl0IGlzIGlnbm9yZWQgd2hlbiBjb21wdXRpbmcK
ICAgICAgICAgIHRoZSBzdGF0dXMgb2YgdGhlIGRpZmZlcmVuY2UgKFNVQ0NFU1MsIFdBUk5JTkcs
IG9yIEZBSUxVUkUpLgoKICBbZmRvIzEwMzkyN106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTEwMzkyNwogIFtmZG8jMTA3NzEzXTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NzEzCiAgW2ZkbyMxMDc3MjRdOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc3MjQKICBbZmRvIzEw
ODU2OV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwODU2
OQogIFtmZG8jMTExMzgxXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTExMzgxCiAgW2ZkbyMxMTE0MDddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMTE0MDcKICBbZmRvIzExMTczNl06IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTczNgogIFtmZG8jMTExOTQ0XTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExOTQ0CiAgW2ZkbyMxMTIw
NjVdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTIwNjUK
CgpQYXJ0aWNpcGF0aW5nIGhvc3RzICg1MSAtPiA0MSkKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tCgogIE1pc3NpbmcgICAgKDEwKTogZmktaWxrLW01NDAgZmktaHN3LTQyMDB1IGZpLWJ5
dC1qMTkwMCBmaS1ieXQtc3F1YXdrcyBmaS1ic3ctY3lhbiBmaS1nZGctNTUxIGZpLWljbC15IGZp
LWJ5dC1jbGFwcGVyIGZpLWJkdy1zYW11cyBmaS1rYmwtciAKCgpCdWlsZCBjaGFuZ2VzCi0tLS0t
LS0tLS0tLS0KCiAgKiBDSTogQ0ktMjAxOTA1MjkgLT4gTm9uZQogICogTGludXg6IENJX0RSTV83
MTM2IC0+IFBhdGNod29ya18xNDg5OQoKICBDSS0yMDE5MDUyOTogMjAxOTA1MjkKICBDSV9EUk1f
NzEzNjogNmY3ZTY5MjZiYjA5YjFlYzgwYzVhM2Q0NGE5MzBkNjkwZGQwOWQ5YyBAIGdpdDovL2Fu
b25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAogIElHVF81MjM0OiAxMjA1NTUyMzk3
YmQ4YTE5ZGM2ZTVhYmRhYTcyN2NjMDkxZGFiYmZlIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3Rv
cC5vcmcveG9yZy9hcHAvaW50ZWwtZ3B1LXRvb2xzCiAgUGF0Y2h3b3JrXzE0ODk5OiBmMDEyNTYx
YTdiMTYyYTI3ZTYzNzI2MDY2OGZjMmY5YWM4MWE0YTBmIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVz
a3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CgoKPT0gTGludXggY29tbWl0cyA9PQoKZjAxMjU2MWE3YjE2
IGRybS9pOTE1OiBFeHRyYWN0IEdUIHJpbmcgbWFuYWdlbWVudAoKPT0gTG9ncyA9PQoKRm9yIG1v
cmUgZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE0ODk5L2luZGV4Lmh0bWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
