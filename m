Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF30EAD64
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 11:26:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4847D6EE17;
	Thu, 31 Oct 2019 10:26:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 977CC6EC01;
 Thu, 31 Oct 2019 10:26:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6F0E9A011B;
 Thu, 31 Oct 2019 10:26:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 31 Oct 2019 10:26:43 -0000
Message-ID: <20191031102643.29575.34599@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191031094212.22896-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191031094212.22896-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/?=
 =?utf-8?q?i915/selftests=3A_Assert_that_the_idle=5Fpulse_is_sent_=28rev2?=
 =?utf-8?q?=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvc2VsZnRlc3RzOiBBc3NlcnQg
dGhhdCB0aGUgaWRsZV9wdWxzZSBpcyBzZW50IChyZXYyKQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3
b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjg4MTEvClN0YXRlIDogc3VjY2VzcwoKPT0gU3Vt
bWFyeSA9PQoKQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNzIyOCAtPiBQYXRjaHdv
cmtfMTUwODMKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PQoKU3VtbWFyeQotLS0tLS0tCgogICoqU1VDQ0VTUyoqCgogIE5vIHJlZ3Jlc3Npb25zIGZv
dW5kLgoKICBFeHRlcm5hbCBVUkw6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE1MDgzL2luZGV4Lmh0bWwKCktub3duIGlzc3VlcwotLS0tLS0tLS0t
LS0KCiAgSGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzE1MDgzIHRoYXQg
Y29tZSBmcm9tIGtub3duIGlzc3VlczoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgUG9zc2li
bGUgZml4ZXMgIyMjIwoKICAqIGlndEBnZW1fY3R4X2NyZWF0ZUBiYXNpYy1maWxlczoKICAgIC0g
ZmktaWNsLXUzOiAgICAgICAgICBbSU5DT01QTEVURV1bMV0gKFtmZG8jMTA3NzEzXSAvIFtmZG8j
MTA5MTAwXSkgLT4gW1BBU1NdWzJdCiAgIFsxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNzIyOC9maS1pY2wtdTMvaWd0QGdlbV9jdHhfY3JlYXRlQGJh
c2ljLWZpbGVzLmh0bWwKICAgWzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNTA4My9maS1pY2wtdTMvaWd0QGdlbV9jdHhfY3JlYXRlQGJhc2lj
LWZpbGVzLmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2JsdDoKICAgIC0gZmktYnN3
LW4zMDUwOiAgICAgICBbRE1FU0ctRkFJTF1bM10gKFtmZG8jMTEyMTc2XSkgLT4gW1BBU1NdWzRd
CiAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NzIyOC9maS1ic3ctbjMwNTAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ibHQuaHRtbAogICBbNF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MDgz
L2ZpLWJzdy1uMzA1MC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2JsdC5odG1sCgogICogaWd0QGk5
MTVfc2VsZnRlc3RAbGl2ZV9oYW5nY2hlY2s6CiAgICAtIHtmaS1pY2wtdTR9OiAgICAgICAgW0lO
Q09NUExFVEVdWzVdIChbZmRvIzEwNzcxM10gLyBbZmRvIzEwODU2OV0pIC0+IFtQQVNTXVs2XQog
ICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcy
MjgvZmktaWNsLXU0L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfaGFuZ2NoZWNrLmh0bWwKICAgWzZd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTA4
My9maS1pY2wtdTQvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9oYW5nY2hlY2suaHRtbAoKICAqIGln
dEBrbXNfY2hhbWVsaXVtQGhkbWktZWRpZC1yZWFkOgogICAgLSBmaS1rYmwtNzUwMHU6ICAgICAg
IFtGQUlMXVs3XSAoW2ZkbyMxMDk0ODNdKSAtPiBbUEFTU11bOF0KICAgWzddOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MjI4L2ZpLWtibC03NTAwdS9p
Z3RAa21zX2NoYW1lbGl1bUBoZG1pLWVkaWQtcmVhZC5odG1sCiAgIFs4XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUwODMvZmkta2JsLTc1MDB1
L2lndEBrbXNfY2hhbWVsaXVtQGhkbWktZWRpZC1yZWFkLmh0bWwKCiAgCiAge25hbWV9OiBUaGlz
IGVsZW1lbnQgaXMgc3VwcHJlc3NlZC4gVGhpcyBtZWFucyBpdCBpcyBpZ25vcmVkIHdoZW4gY29t
cHV0aW5nCiAgICAgICAgICB0aGUgc3RhdHVzIG9mIHRoZSBkaWZmZXJlbmNlIChTVUNDRVNTLCBX
QVJOSU5HLCBvciBGQUlMVVJFKS4KCiAgW2ZkbyMxMDc3MTNdOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc3MTMKICBbZmRvIzEwODU2OV06IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwODU2OQogIFtmZG8jMTA5MTAw
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5MTAwCiAg
W2ZkbyMxMDk0ODNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMDk0ODMKICBbZmRvIzExMjE3Nl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTExMjE3NgoKClBhcnRpY2lwYXRpbmcgaG9zdHMgKDUwIC0+IDQzKQotLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgQWRkaXRpb25hbCAoMSk6IGZpLWtibC1zb3Jh
a2EgCiAgTWlzc2luZyAgICAoOCk6IGZpLWlsay1tNTQwIGZpLXRnbC11IGZpLWhzdy00MjAwdSBm
aS1ieXQtc3F1YXdrcyBmaS1ic3ctY3lhbiBmaS1pY2wteSBmaS1ieXQtY2xhcHBlciBmaS1iZHct
c2FtdXMgCgoKQnVpbGQgY2hhbmdlcwotLS0tLS0tLS0tLS0tCgogICogQ0k6IENJLTIwMTkwNTI5
IC0+IE5vbmUKICAqIExpbnV4OiBDSV9EUk1fNzIyOCAtPiBQYXRjaHdvcmtfMTUwODMKCiAgQ0kt
MjAxOTA1Mjk6IDIwMTkwNTI5CiAgQ0lfRFJNXzcyMjg6IDVlZmM1MDU0OThkMjYxMjQ1MWY2MjMw
YTYzNDdmNGUwZTE5NjBlNTAgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kv
bGludXgKICBJR1RfNTI1MzogZDQ2Y2NiMzJjZjY5M2U4ZDgyNTM1NDNlOWE0ZmJlNWVhZWY0YWE0
MSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hvcmcvYXBwL2ludGVsLWdwdS10b29s
cwogIFBhdGNod29ya18xNTA4MzogMTE3ZGZhNmE2NGQ0YjgxZmUxNjYyZjM4NGYxMjRmZGY3OWFh
Mjk3YyBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAoKCj09IExp
bnV4IGNvbW1pdHMgPT0KCjExN2RmYTZhNjRkNCBkcm0vaTkxNS9zZWxmdGVzdHM6IEFzc2VydCB0
aGF0IHRoZSBpZGxlX3B1bHNlIGlzIHNlbnQKCj09IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMg
c2VlOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NTA4My9pbmRleC5odG1sCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
