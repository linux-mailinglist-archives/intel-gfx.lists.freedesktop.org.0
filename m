Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA9F5BB90
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 14:33:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C45489CDF;
	Mon,  1 Jul 2019 12:33:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 03D8E89CA0;
 Mon,  1 Jul 2019 12:33:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EAA80A008C;
 Mon,  1 Jul 2019 12:33:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kuoppala" <mika.kuoppala@linux.intel.com>
Date: Mon, 01 Jul 2019 12:33:41 -0000
Message-ID: <20190701123341.12147.79907@emeril.freedesktop.org>
References: <20190701104442.9319-1-mika.kuoppala@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190701104442.9319-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/?=
 =?utf-8?q?i915=3A_Fix_memleak_in_runtime_wakeref_tracking?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEZpeCBtZW1sZWFrIGluIHJ1
bnRpbWUgd2FrZXJlZiB0cmFja2luZwpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNr
dG9wLm9yZy9zZXJpZXMvNjMwMzEvClN0YXRlIDogc3VjY2VzcwoKPT0gU3VtbWFyeSA9PQoKQ0kg
QnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fNjM5MCAtPiBQYXRjaHdvcmtfMTM0NzkKPT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQoKU3VtbWFy
eQotLS0tLS0tCgogICoqU1VDQ0VTUyoqCgogIE5vIHJlZ3Jlc3Npb25zIGZvdW5kLgoKICBFeHRl
cm5hbCBVUkw6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEzNDc5LwoKS25vd24gaXNzdWVzCi0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgY2hh
bmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTM0NzkgdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVz
OgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBJc3N1ZXMgaGl0ICMjIyMKCiAgKiBpZ3RAZ2Vt
X2N0eF9jcmVhdGVAYmFzaWMtZmlsZXM6CiAgICAtIGZpLWljbC1kc2k6ICAgICAgICAgW1BBU1Nd
WzFdIC0+IFtJTkNPTVBMRVRFXVsyXSAoW2ZkbyMxMDc3MTNdIC8gW2ZkbyMxMDkxMDBdKQogICBb
MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzOTAv
ZmktaWNsLWRzaS9pZ3RAZ2VtX2N0eF9jcmVhdGVAYmFzaWMtZmlsZXMuaHRtbAogICBbMl06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNDc5L2Zp
LWljbC1kc2kvaWd0QGdlbV9jdHhfY3JlYXRlQGJhc2ljLWZpbGVzLmh0bWwKCiAgKiBpZ3RAZ2Vt
X21tYXBfZ3R0QGJhc2ljOgogICAgLSBmaS1pY2wtdTM6ICAgICAgICAgIFtQQVNTXVszXSAtPiBb
RE1FU0ctV0FSTl1bNF0gKFtmZG8jMTA3NzI0XSkKICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzkwL2ZpLWljbC11My9pZ3RAZ2VtX21tYXBf
Z3R0QGJhc2ljLmh0bWwKICAgWzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xMzQ3OS9maS1pY2wtdTMvaWd0QGdlbV9tbWFwX2d0dEBiYXNpYy5o
dG1sCgogIAojIyMjIFBvc3NpYmxlIGZpeGVzICMjIyMKCiAgKiBpZ3RAZ2VtX21tYXBfZ3R0QGJh
c2ljLWNvcHk6CiAgICAtIGZpLWljbC11MzogICAgICAgICAgW0RNRVNHLVdBUk5dWzVdIChbZmRv
IzEwNzcyNF0pIC0+IFtQQVNTXVs2XQogICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzYzOTAvZmktaWNsLXUzL2lndEBnZW1fbW1hcF9ndHRAYmFz
aWMtY29weS5odG1sCiAgIFs2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTM0NzkvZmktaWNsLXUzL2lndEBnZW1fbW1hcF9ndHRAYmFzaWMtY29w
eS5odG1sCgogICogaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQ6CiAgICAtIGZpLXNrbC02
NzcwaHE6ICAgICAgW0ZBSUxdWzddIChbZmRvIzEwODUxMV0pIC0+IFtQQVNTXVs4XQogICBbN106
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYzOTAvZmkt
c2tsLTY3NzBocS9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sCiAgIFs4XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0NzkvZmkt
c2tsLTY3NzBocS9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sCgogICogaWd0QGk5
MTVfc2VsZnRlc3RAbGl2ZV9ibHQ6CiAgICAtIGZpLXNrbC1pb21tdTogICAgICAgW0lOQ09NUExF
VEVdWzldIChbZmRvIzEwODYwMl0pIC0+IFtQQVNTXVsxMF0KICAgWzldOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzkwL2ZpLXNrbC1pb21tdS9pZ3RA
aTkxNV9zZWxmdGVzdEBsaXZlX2JsdC5odG1sCiAgIFsxMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNDc5L2ZpLXNrbC1pb21tdS9pZ3RAaTkx
NV9zZWxmdGVzdEBsaXZlX2JsdC5odG1sCgogICogaWd0QGttc19idXN5QGJhc2ljLWZsaXAtYzoK
ICAgIC0gZmktc2tsLTY3NzBocTogICAgICBbU0tJUF1bMTFdIChbZmRvIzEwOTI3MV0gLyBbZmRv
IzEwOTI3OF0pIC0+IFtQQVNTXVsxMl0gKzIgc2ltaWxhciBpc3N1ZXMKICAgWzExXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjM5MC9maS1za2wtNjc3
MGhxL2lndEBrbXNfYnVzeUBiYXNpYy1mbGlwLWMuaHRtbAogICBbMTJdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzQ3OS9maS1za2wtNjc3MGhx
L2lndEBrbXNfYnVzeUBiYXNpYy1mbGlwLWMuaHRtbAoKICAqIGlndEBrbXNfZmxpcEBiYXNpYy1m
bGlwLXZzLWRwbXM6CiAgICAtIGZpLXNrbC02NzcwaHE6ICAgICAgW1NLSVBdWzEzXSAoW2ZkbyMx
MDkyNzFdKSAtPiBbUEFTU11bMTRdICsyMyBzaW1pbGFyIGlzc3VlcwogICBbMTNdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MzkwL2ZpLXNrbC02Nzcw
aHEvaWd0QGttc19mbGlwQGJhc2ljLWZsaXAtdnMtZHBtcy5odG1sCiAgIFsxNF06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzNDc5L2ZpLXNrbC02
NzcwaHEvaWd0QGttc19mbGlwQGJhc2ljLWZsaXAtdnMtZHBtcy5odG1sCgogIAogIFtmZG8jMTA3
NzEzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NzEz
CiAgW2ZkbyMxMDc3MjRdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMDc3MjQKICBbZmRvIzEwODUxMV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTEwODUxMQogIFtmZG8jMTA4NjAyXTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4NjAyCiAgW2ZkbyMxMDkxMDBdOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkxMDAKICBbZmRvIzEwOTI3
MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI3MQog
IFtmZG8jMTA5Mjc4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9MTA5Mjc4CgoKUGFydGljaXBhdGluZyBob3N0cyAoNTIgLT4gNDUpCi0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQoKICBBZGRpdGlvbmFsICgxKTogZmkta2JsLTc1Njd1IAogIE1pc3Np
bmcgICAgKDgpOiBmaS1rYmwtc29yYWthIGZpLWlsay1tNTQwIGZpLWhzdy00MjAwdSBmaS1ieXQt
c3F1YXdrcyBmaS1ic3ctY3lhbiBmaS1pY2wteSBmaS1ieXQtY2xhcHBlciBmaS1iZHctc2FtdXMg
CgoKQnVpbGQgY2hhbmdlcwotLS0tLS0tLS0tLS0tCgogICogTGludXg6IENJX0RSTV82MzkwIC0+
IFBhdGNod29ya18xMzQ3OQoKICBDSV9EUk1fNjM5MDogNGM2YzIzZmRmNDUwYWI0M2JiNDA0NmFj
MWZiMTQzOWViZjE3NjU2NCBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9s
aW51eAogIElHVF81MDc1OiAwMzc3OWRkM2RlOGE1NzU0NGYxMjRkOTk1MmE2ZDJiM2UzNGUzNGNh
IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcveG9yZy9hcHAvaW50ZWwtZ3B1LXRvb2xz
CiAgUGF0Y2h3b3JrXzEzNDc5OiBmMTI4YjkwODI4MDI0ZGM5NjZkNjRhNmU4NDk2ZWQ3Yzg4ZjVj
MmY0IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CgoKPT0gS2Vy
bmVsIDMyYml0IGJ1aWxkID09CgpXYXJuaW5nOiBLZXJuZWwgMzJiaXQgYnVpbGR0ZXN0IGZhaWxl
ZDoKaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0
NzkvYnVpbGRfMzJiaXQubG9nCgogIENBTEwgICAgc2NyaXB0cy9jaGVja3N5c2NhbGxzLnNoCiAg
Q0FMTCAgICBzY3JpcHRzL2F0b21pYy9jaGVjay1hdG9taWNzLnNoCiAgQ0hLICAgICBpbmNsdWRl
L2dlbmVyYXRlZC9jb21waWxlLmgKS2VybmVsOiBhcmNoL3g4Ni9ib290L2J6SW1hZ2UgaXMgcmVh
ZHkgICgjMSkKICBCdWlsZGluZyBtb2R1bGVzLCBzdGFnZSAyLgogIE1PRFBPU1QgMTEyIG1vZHVs
ZXMKRVJST1I6ICJfX3VkaXZkaTMiIFtkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHUu
a29dIHVuZGVmaW5lZCEKRVJST1I6ICJfX2RpdmRpMyIgW2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdS5rb10gdW5kZWZpbmVkIQpzY3JpcHRzL01ha2VmaWxlLm1vZHBvc3Q6OTE6IHJl
Y2lwZSBmb3IgdGFyZ2V0ICdfX21vZHBvc3QnIGZhaWxlZAptYWtlWzFdOiAqKiogW19fbW9kcG9z
dF0gRXJyb3IgMQpNYWtlZmlsZToxMjg3OiByZWNpcGUgZm9yIHRhcmdldCAnbW9kdWxlcycgZmFp
bGVkCm1ha2U6ICoqKiBbbW9kdWxlc10gRXJyb3IgMgoKCj09IExpbnV4IGNvbW1pdHMgPT0KCmYx
MjhiOTA4MjgwMiBkcm0vaTkxNTogRml4IG1lbWxlYWsgaW4gcnVudGltZSB3YWtlcmVmIHRyYWNr
aW5nCgo9PSBMb2dzID09CgpGb3IgbW9yZSBkZXRhaWxzIHNlZTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM0NzkvCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
