Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68121108ECC
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 14:24:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 509CD6E140;
	Mon, 25 Nov 2019 13:24:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 65F2B6E13F;
 Mon, 25 Nov 2019 13:24:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3D084A432F;
 Mon, 25 Nov 2019 13:24:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 25 Nov 2019 13:24:15 -0000
Message-ID: <157468825522.15530.18028460957032914651@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191125105858.1718307-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191125105858.1718307-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5BCI=2C1/3=5D_drm/i915=3A_Serialise_with_engi?=
 =?utf-8?q?ne-pm_around_requests_on_the_kernel=5Fcontext?=
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
M10gZHJtL2k5MTU6IFNlcmlhbGlzZSB3aXRoIGVuZ2luZS1wbSBhcm91bmQgcmVxdWVzdHMgb24g
dGhlIGtlcm5lbF9jb250ZXh0ClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Au
b3JnL3Nlcmllcy82OTk3NS8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpDSSBCdWcg
TG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV83NDE2IC0+IFBhdGNod29ya18xNTQyMAo9PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CgpTdW1tYXJ5Ci0t
LS0tLS0KCiAgKipGQUlMVVJFKioKCiAgU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdp
dGggUGF0Y2h3b3JrXzE1NDIwIGFic29sdXRlbHkgbmVlZCB0byBiZQogIHZlcmlmaWVkIG1hbnVh
bGx5LgogIAogIElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcg
dG8gZG8gd2l0aCB0aGUgY2hhbmdlcwogIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE1NDIwLCBw
bGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cgdGhlbQogIHRvIGRvY3VtZW50IHRo
aXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGlu
IENJLgoKICBFeHRlcm5hbCBVUkw6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE1NDIwL2luZGV4Lmh0bWwKClBvc3NpYmxlIG5ldyBpc3N1ZXMKLS0t
LS0tLS0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5
IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNTQyMDoKCiMjIyBJR1QgY2hhbmdl
cyAjIyMKCiMjIyMgUG9zc2libGUgcmVncmVzc2lvbnMgIyMjIwoKICAqIGlndEBnZW1fZXhlY19z
dXNwZW5kQGJhc2ljLXMzOgogICAgLSBmaS1rYmwtODgwOWc6ICAgICAgIFtQQVNTXVsxXSAtPiBb
RE1FU0ctV0FSTl1bMl0KICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV83NDE2L2ZpLWtibC04ODA5Zy9pZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNp
Yy1zMy5odG1sCiAgIFsyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTU0MjAvZmkta2JsLTg4MDlnL2lndEBnZW1fZXhlY19zdXNwZW5kQGJhc2lj
LXMzLmh0bWwKCiAgCktub3duIGlzc3VlcwotLS0tLS0tLS0tLS0KCiAgSGVyZSBhcmUgdGhlIGNo
YW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzE1NDIwIHRoYXQgY29tZSBmcm9tIGtub3duIGlzc3Vl
czoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgUG9zc2libGUgZml4ZXMgIyMjIwoKICAqIGln
dEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkOgogICAgLSBmaS1za2wtNjc3MGhxOiAgICAgIFtG
QUlMXVszXSAoW2ZkbyMxMDg1MTFdKSAtPiBbUEFTU11bNF0KICAgWzNdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDE2L2ZpLXNrbC02NzcwaHEvaWd0
QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRtbAogICBbNF06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NDIwL2ZpLXNrbC02NzcwaHEvaWd0
QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRtbAoKICAqIGlndEBrbXNfY2hhbWVsaXVtQGhk
bWktaHBkLWZhc3Q6CiAgICAtIGZpLWtibC03NTAwdTogICAgICAgW0ZBSUxdWzVdIChbZmRvIzEx
MTQwN10pIC0+IFtQQVNTXVs2XQogICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzc0MTYvZmkta2JsLTc1MDB1L2lndEBrbXNfY2hhbWVsaXVtQGhk
bWktaHBkLWZhc3QuaHRtbAogICBbNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE1NDIwL2ZpLWtibC03NTAwdS9pZ3RAa21zX2NoYW1lbGl1bUBo
ZG1pLWhwZC1mYXN0Lmh0bWwKCiAgCiMjIyMgV2FybmluZ3MgIyMjIwoKICAqIGlndEBrbXNfY3Vy
c29yX2xlZ2FjeUBiYXNpYy1idXN5LWZsaXAtYmVmb3JlLWN1cnNvci1sZWdhY3k6CiAgICAtIGZp
LWtibC14MTI3NTogICAgICAgW0RNRVNHLVdBUk5dWzddIChbZmRvIzEwMzU1OF0gLyBbZmRvIzEw
NTYwMl0gLyBbZmRvIzEwNTc2M10pIC0+IFtETUVTRy1XQVJOXVs4XSAoW2ZkbyMxMDM1NThdIC8g
W2ZkbyMxMDU2MDJdKSArNCBzaW1pbGFyIGlzc3VlcwogICBbN106IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0MTYvZmkta2JsLXgxMjc1L2lndEBrbXNf
Y3Vyc29yX2xlZ2FjeUBiYXNpYy1idXN5LWZsaXAtYmVmb3JlLWN1cnNvci1sZWdhY3kuaHRtbAog
ICBbOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE1NDIwL2ZpLWtibC14MTI3NS9pZ3RAa21zX2N1cnNvcl9sZWdhY3lAYmFzaWMtYnVzeS1mbGlw
LWJlZm9yZS1jdXJzb3ItbGVnYWN5Lmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBAYmFzaWMtZmxpcC12
cy1tb2Rlc2V0OgogICAgLSBmaS1rYmwteDEyNzU6ICAgICAgIFtETUVTRy1XQVJOXVs5XSAoW2Zk
byMxMDM1NThdIC8gW2ZkbyMxMDU2MDJdKSAtPiBbRE1FU0ctV0FSTl1bMTBdIChbZmRvIzEwMzU1
OF0gLyBbZmRvIzEwNTYwMl0gLyBbZmRvIzEwNTc2M10pICs1IHNpbWlsYXIgaXNzdWVzCiAgIFs5
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQxNi9m
aS1rYmwteDEyNzUvaWd0QGttc19mbGlwQGJhc2ljLWZsaXAtdnMtbW9kZXNldC5odG1sCiAgIFsx
MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1
NDIwL2ZpLWtibC14MTI3NS9pZ3RAa21zX2ZsaXBAYmFzaWMtZmxpcC12cy1tb2Rlc2V0Lmh0bWwK
CiAgKiBpZ3RAcnVubmVyQGFib3J0ZWQ6CiAgICAtIGZpLWNmbC1ndWM6ICAgICAgICAgW0ZBSUxd
WzExXSAoW2ZkbyMxMTA5NDNdKSAtPiBbRkFJTF1bMTJdIChbZmRvIzExMDk0M10gLyBbZmRvIzEx
MjM4N10pCiAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzc0MTYvZmktY2ZsLWd1Yy9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICBbMTJdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTQyMC9m
aS1jZmwtZ3VjL2lndEBydW5uZXJAYWJvcnRlZC5odG1sCiAgICAtIGZpLWtibC14MTI3NTogICAg
ICAgW0ZBSUxdWzEzXSAoW2ZkbyMxMTIzODddKSAtPiBbRkFJTF1bMTRdIChbZmRvIzEwNTYwMl0p
CiAgIFsxM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
Xzc0MTYvZmkta2JsLXgxMjc1L2lndEBydW5uZXJAYWJvcnRlZC5odG1sCiAgIFsxNF06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NDIwL2ZpLWti
bC14MTI3NS9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICAgLSBmaS1rYmwtODgwOWc6ICAgICAg
IFtGQUlMXVsxNV0gKFtmZG8jMTEyMzg3XSkgLT4gW0ZBSUxdWzE2XSAoW2ZkbyMxMDkzODNdKQog
ICBbMTVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83
NDE2L2ZpLWtibC04ODA5Zy9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICBbMTZdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTQyMC9maS1rYmwt
ODgwOWcvaWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwKCiAgCiAgW2ZkbyMxMDM1NThdOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDM1NTgKICBbZmRvIzEwNTYw
Ml06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNTYwMgog
IFtmZG8jMTA1NzYzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9MTA1NzYzCiAgW2ZkbyMxMDg1MTFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3No
b3dfYnVnLmNnaT9pZD0xMDg1MTEKICBbZmRvIzEwOTM4M106IGh0dHBzOi8vYnVncy5mcmVlZGVz
a3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTM4MwogIFtmZG8jMTEwOTQzXTogaHR0cHM6Ly9i
dWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwOTQzCiAgW2ZkbyMxMTE0MDdd
OiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE0MDcKICBb
ZmRvIzExMjM4N106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lk
PTExMjM4NwoKClBhcnRpY2lwYXRpbmcgaG9zdHMgKDQ3IC0+IDQzKQotLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KCiAgQWRkaXRpb25hbCAoMyk6IGZpLXNrbC1ndWMgZmktZ2RnLTU1MSBm
aS1lbGstZTc1MDAgCiAgTWlzc2luZyAgICAoNyk6IGZpLWlsay1tNTQwIGZpLWJkdy01NTU3dSBm
aS1ic3ctY3lhbiBmaS1rYmwtZ3VjIGZpLWN0Zy1wODYwMCBmaS1ieXQtY2xhcHBlciBmaS1iZHct
c2FtdXMgCgoKQnVpbGQgY2hhbmdlcwotLS0tLS0tLS0tLS0tCgogICogQ0k6IENJLTIwMTkwNTI5
IC0+IE5vbmUKICAqIExpbnV4OiBDSV9EUk1fNzQxNiAtPiBQYXRjaHdvcmtfMTU0MjAKCiAgQ0kt
MjAxOTA1Mjk6IDIwMTkwNTI5CiAgQ0lfRFJNXzc0MTY6IDI3Yzc4MTA4ZWI0YWE3NDg3ODAxNTY2
NmE3OTZkY2ZlMDlkY2JkMDAgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kv
bGludXgKICBJR1RfNTMwNTogZWFmYWE3OWRmYjcxZjcyNTExMjZmMWMwMDBlMGNiZTk0NDI1Yzk1
YSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hvcmcvYXBwL2ludGVsLWdwdS10b29s
cwogIFBhdGNod29ya18xNTQyMDogNTcxMWMyMDE0ZmJkMTllODc5MGNjMjJiOWRiZTYxYWYwNWI0
MWQ1ZiBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAoKCj09IExp
bnV4IGNvbW1pdHMgPT0KCjU3MTFjMjAxNGZiZCBkcm0vaTkxNS9ndDogU2NoZWR1bGUgcmVxdWVz
dCByZXRpcmVtZW50IHdoZW4gdGltZWxpbmUgaWRsZXMKNmM1MzkxOWM4YTdiIGRybS9pOTE1L2d0
OiBBZGFwdCBlbmdpbmVfcGFyayBzeW5jaHJvbmlzYXRpb24gcnVsZXMgZm9yIGVuZ2luZV9yZXRp
cmUKYTM0OWRiYjI5ZGM3IGRybS9pOTE1OiBTZXJpYWxpc2Ugd2l0aCBlbmdpbmUtcG0gYXJvdW5k
IHJlcXVlc3RzIG9uIHRoZSBrZXJuZWxfY29udGV4dAoKPT0gTG9ncyA9PQoKRm9yIG1vcmUgZGV0
YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE1NDIwL2luZGV4Lmh0bWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
