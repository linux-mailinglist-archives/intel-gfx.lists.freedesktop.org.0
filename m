Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F0EF22F4
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 00:59:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D31E46E330;
	Wed,  6 Nov 2019 23:59:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 239776EE4A;
 Wed,  6 Nov 2019 23:59:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1D7A0A010F;
 Wed,  6 Nov 2019 23:59:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Wed, 06 Nov 2019 23:59:24 -0000
Message-ID: <157308476409.12034.9854325943436604793@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191106212636.502471-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20191106212636.502471-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_Split_a_setting_of_MSA_to_MST_and_SST?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFNwbGl0IGEgc2V0dGluZyBv
ZiBNU0EgdG8gTVNUIGFuZCBTU1QKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3Rv
cC5vcmcvc2VyaWVzLzY5MDkyLwpTdGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkgPT0KCkNJIEJ1
ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzcyNzYgLT4gUGF0Y2h3b3JrXzE1MTY0Cj09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KClN1bW1hcnkK
LS0tLS0tLQoKICAqKkZBSUxVUkUqKgoKICBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21pbmcg
d2l0aCBQYXRjaHdvcmtfMTUxNjQgYWJzb2x1dGVseSBuZWVkIHRvIGJlCiAgdmVyaWZpZWQgbWFu
dWFsbHkuCiAgCiAgSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90aGlu
ZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzCiAgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTUxNjQs
IHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSB0byBhbGxvdyB0aGVtCiAgdG8gZG9jdW1lbnQg
dGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMg
aW4gQ0kuCgogIEV4dGVybmFsIFVSTDogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTUxNjQvaW5kZXguaHRtbAoKUG9zc2libGUgbmV3IGlzc3Vlcwot
LS0tLS0tLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBt
YXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE1MTY0OgoKIyMjIElHVCBjaGFu
Z2VzICMjIwoKIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjCgogICogaWd0QGk5MTVfc2Vs
ZnRlc3RAbGl2ZV9odWdlcGFnZXM6CiAgICAtIGZpLWljbC11MzogICAgICAgICAgW1BBU1NdWzFd
IC0+IFtETUVTRy1XQVJOXVsyXQogICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzcyNzYvZmktaWNsLXUzL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVf
aHVnZXBhZ2VzLmh0bWwKICAgWzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNTE2NC9maS1pY2wtdTMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9o
dWdlcGFnZXMuaHRtbAoKICAKS25vd24gaXNzdWVzCi0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0
aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTUxNjQgdGhhdCBjb21lIGZyb20ga25vd24g
aXNzdWVzOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBJc3N1ZXMgaGl0ICMjIyMKCiAgKiBp
Z3RAaTkxNV9zZWxmdGVzdEBsaXZlX2JsdDoKICAgIC0gZmktaHN3LXBlcHB5OiAgICAgICBbUEFT
U11bM10gLT4gW0RNRVNHLUZBSUxdWzRdIChbZmRvIzExMjE0N10pCiAgIFszXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzI3Ni9maS1oc3ctcGVwcHkv
aWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ibHQuaHRtbAogICBbNF06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MTY0L2ZpLWhzdy1wZXBweS9pZ3RA
aTkxNV9zZWxmdGVzdEBsaXZlX2JsdC5odG1sCgogICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9n
ZW1fY29udGV4dHM6CiAgICAtIGZpLWJzdy1uMzA1MDogICAgICAgW1BBU1NdWzVdIC0+IFtJTkNP
TVBMRVRFXVs2XSAoW2ZkbyMgMTExNTQyXSkKICAgWzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83Mjc2L2ZpLWJzdy1uMzA1MC9pZ3RAaTkxNV9zZWxm
dGVzdEBsaXZlX2dlbV9jb250ZXh0cy5odG1sCiAgIFs2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUxNjQvZmktYnN3LW4zMDUwL2lndEBpOTE1
X3NlbGZ0ZXN0QGxpdmVfZ2VtX2NvbnRleHRzLmh0bWwKCiAgKiBpZ3RAa21zX2NoYW1lbGl1bUBk
cC1jcmMtZmFzdDoKICAgIC0gZmkta2JsLTc1MDB1OiAgICAgICBbUEFTU11bN10gLT4gW0ZBSUxd
WzhdIChbZmRvIzEwOTYzNSBdIC8gW2ZkbyMxMTAzODddKQogICBbN106IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcyNzYvZmkta2JsLTc1MDB1L2lndEBr
bXNfY2hhbWVsaXVtQGRwLWNyYy1mYXN0Lmh0bWwKICAgWzhdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTE2NC9maS1rYmwtNzUwMHUvaWd0QGtt
c19jaGFtZWxpdW1AZHAtY3JjLWZhc3QuaHRtbAoKICAqIGlndEBrbXNfY2hhbWVsaXVtQGhkbWkt
Y3JjLWZhc3Q6CiAgICAtIGZpLWljbC11MjogICAgICAgICAgW1BBU1NdWzldIC0+IFtGQUlMXVsx
MF0gKFtmZG8jMTA5NTcwXSkKICAgWzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV83Mjc2L2ZpLWljbC11Mi9pZ3RAa21zX2NoYW1lbGl1bUBoZG1pLWNy
Yy1mYXN0Lmh0bWwKICAgWzEwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTUxNjQvZmktaWNsLXUyL2lndEBrbXNfY2hhbWVsaXVtQGhkbWktY3Jj
LWZhc3QuaHRtbAoKICAqIGlndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3Q6CiAgICAtIGZp
LWtibC03NTAwdTogICAgICAgW1BBU1NdWzExXSAtPiBbRkFJTF1bMTJdIChbZmRvIzExMTA0NV0g
LyBbZmRvIzExMTA5Nl0pCiAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzcyNzYvZmkta2JsLTc1MDB1L2lndEBrbXNfY2hhbWVsaXVtQGhkbWkt
aHBkLWZhc3QuaHRtbAogICBbMTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNTE2NC9maS1rYmwtNzUwMHUvaWd0QGttc19jaGFtZWxpdW1AaGRt
aS1ocGQtZmFzdC5odG1sCgogIAogIFtmZG8jIDExMTU0Ml06IGh0dHBzOi8vYnVncy5mcmVlZGVz
a3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPSAxMTE1NDIKICBbZmRvIzEwOTU3MF06IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTU3MAogIFtmZG8jMTA5NjM1
IF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTYzNSAK
ICBbZmRvIzExMDM4N106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTExMDM4NwogIFtmZG8jMTExMDQ1XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTExMDQ1CiAgW2ZkbyMxMTEwOTZdOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEwOTYKICBbZmRvIzExMjE0N106IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMjE0NwoKClBhcnRpY2lwYXRp
bmcgaG9zdHMgKDUxIC0+IDQ1KQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgTWlz
c2luZyAgICAoNik6IGZpLWlsay1tNTQwIGZpLWhzdy00MjAwdSBmaS1ieXQtc3F1YXdrcyBmaS1i
c3ctY3lhbiBmaS1jdGctcDg2MDAgZmktYnl0LWNsYXBwZXIgCgoKQnVpbGQgY2hhbmdlcwotLS0t
LS0tLS0tLS0tCgogICogQ0k6IENJLTIwMTkwNTI5IC0+IE5vbmUKICAqIExpbnV4OiBDSV9EUk1f
NzI3NiAtPiBQYXRjaHdvcmtfMTUxNjQKCiAgQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5CiAgQ0lfRFJN
XzcyNzY6IGMzMWI1ZTY5NTVmZWViYzY4ZTFhYjg4ZmU2MzQzYjVlNWVlN2U5ZmUgQCBnaXQ6Ly9h
bm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKICBJR1RfNTI2NDogZjIxMjEzMDEy
MzkzYmQ4MDQxYWQ5MzA4NGNlMjlkYTA4OGVmODQyNiBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0
b3Aub3JnL3hvcmcvYXBwL2ludGVsLWdwdS10b29scwogIFBhdGNod29ya18xNTE2NDogYjk5ODBk
NTNhZmEyMDE3ODc1MTYzMmQ0Nzg2ODc2OWMzODA0Y2QyOSBAIGdpdDovL2Fub25naXQuZnJlZWRl
c2t0b3Aub3JnL2dmeC1jaS9saW51eAoKCj09IExpbnV4IGNvbW1pdHMgPT0KCmI5OTgwZDUzYWZh
MiBkcm0vaTkxNTogU3BsaXQgYSBzZXR0aW5nIG9mIE1TQSB0byBNU1QgYW5kIFNTVAoKPT0gTG9n
cyA9PQoKRm9yIG1vcmUgZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MTY0L2luZGV4Lmh0bWwKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
