Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65CC010EA03
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2019 13:22:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 286156E0F6;
	Mon,  2 Dec 2019 12:22:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6A9EA89B65;
 Mon,  2 Dec 2019 12:22:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5DCE3A00E8;
 Mon,  2 Dec 2019 12:22:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 02 Dec 2019 12:22:03 -0000
Message-ID: <157528932335.1067.10846362921924399191@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191202110812.2334138-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191202110812.2334138-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915/gt=3A_Remove_direct_invocation_of_breadcrumb_signaling_=28?=
 =?utf-8?q?rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3Q6IFJlbW92ZSBkaXJlY3Qg
aW52b2NhdGlvbiBvZiBicmVhZGNydW1iIHNpZ25hbGluZyAocmV2MikKVVJMICAgOiBodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzcwMjQ4LwpTdGF0ZSA6IGZhaWx1cmUK
Cj09IFN1bW1hcnkgPT0KCkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzc0NjAgLT4g
UGF0Y2h3b3JrXzE1NTM0Cj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKkZBSUxVUkUqKgoKICBTZXJpb3VzIHVu
a25vd24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTU1MzQgYWJzb2x1dGVseSBuZWVk
IHRvIGJlCiAgdmVyaWZpZWQgbWFudWFsbHkuCiAgCiAgSWYgeW91IHRoaW5rIHRoZSByZXBvcnRl
ZCBjaGFuZ2VzIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzCiAgaW50cm9kdWNl
ZCBpbiBQYXRjaHdvcmtfMTU1MzQsIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSB0byBhbGxv
dyB0aGVtCiAgdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJl
ZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuCgogIEV4dGVybmFsIFVSTDogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU1MzQvaW5kZXguaHRtbAoK
UG9zc2libGUgbmV3IGlzc3VlcwotLS0tLS0tLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSB1
bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3Jr
XzE1NTM0OgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAj
IyMjCgogICogaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkOgogICAgLSBmaS1id3ItMjE2MDog
ICAgICAgIFtQQVNTXVsxXSAtPiBbSU5DT01QTEVURV1bMl0KICAgWzFdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDYwL2ZpLWJ3ci0yMTYwL2lndEBp
OTE1X21vZHVsZV9sb2FkQHJlbG9hZC5odG1sCiAgIFsyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU1MzQvZmktYndyLTIxNjAvaWd0QGk5MTVf
bW9kdWxlX2xvYWRAcmVsb2FkLmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNs
aXN0czoKICAgIC0gZmktY2ZsLTg3MDBrOiAgICAgICBbUEFTU11bM10gLT4gW0RNRVNHLUZBSUxd
WzRdCiAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNzQ2MC9maS1jZmwtODcwMGsvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlzdHMuaHRt
bAogICBbNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE1NTM0L2ZpLWNmbC04NzAway9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0cy5o
dG1sCgogICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4dHM6CiAgICAtIGZpLWhz
dy1wZXBweTogICAgICAgW1BBU1NdWzVdIC0+IFtJTkNPTVBMRVRFXVs2XQogICBbNV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0NjAvZmktaHN3LXBl
cHB5L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ2VtX2NvbnRleHRzLmh0bWwKICAgWzZdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTUzNC9maS1o
c3ctcGVwcHkvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4dHMuaHRtbAoKICAKS25v
d24gaXNzdWVzCi0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQ
YXRjaHdvcmtfMTU1MzQgdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBjaGFu
Z2VzICMjIwoKIyMjIyBJc3N1ZXMgaGl0ICMjIyMKCiAgKiBpZ3RAZ2VtX2Jhc2ljQGNyZWF0ZS1j
bG9zZToKICAgIC0gZmktaWNsLWRzaTogICAgICAgICBbUEFTU11bN10gLT4gW0RNRVNHLVdBUk5d
WzhdIChbaTkxNSMxMDldKQogICBbN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzc0NjAvZmktaWNsLWRzaS9pZ3RAZ2VtX2Jhc2ljQGNyZWF0ZS1jbG9z
ZS5odG1sCiAgIFs4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTU1MzQvZmktaWNsLWRzaS9pZ3RAZ2VtX2Jhc2ljQGNyZWF0ZS1jbG9zZS5odG1s
CgogICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ibHQ6CiAgICAtIGZpLWl2Yi0zNzcwOiAgICAg
ICAgW1BBU1NdWzldIC0+IFtETUVTRy1GQUlMXVsxMF0gKFtpOTE1IzU2M10pCiAgIFs5XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQ2MC9maS1pdmIt
Mzc3MC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2JsdC5odG1sCiAgIFsxMF06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTM0L2ZpLWl2Yi0zNzcw
L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfYmx0Lmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBs
aXZlX2dlbV9jb250ZXh0czoKICAgIC0gZmktY2ZsLWd1YzogICAgICAgICBbUEFTU11bMTFdIC0+
IFtJTkNPTVBMRVRFXVsxMl0gKFtmZG8jMTA2MDcwXSAvIFtpOTE1IzQyNF0pCiAgIFsxMV06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0NjAvZmktY2Zs
LWd1Yy9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2dlbV9jb250ZXh0cy5odG1sCiAgIFsxMl06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTM0L2Zp
LWNmbC1ndWMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4dHMuaHRtbAoKICAqIGln
dEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3Q6CiAgICAtIGZpLWljbC11MjogICAgICAgICAg
W1BBU1NdWzEzXSAtPiBbRkFJTF1bMTRdIChbaTkxNSMyMTddKQogICBbMTNdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDYwL2ZpLWljbC11Mi9pZ3RA
a21zX2NoYW1lbGl1bUBoZG1pLWhwZC1mYXN0Lmh0bWwKICAgWzE0XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU1MzQvZmktaWNsLXUyL2lndEBr
bXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3QuaHRtbAoKICAKIyMjIyBQb3NzaWJsZSBmaXhlcyAj
IyMjCgogICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BiYXNpYzoKICAgIC0gZmktaWNs
LXUyOiAgICAgICAgICBbRkFJTF1bMTVdIChbaTkxNSM0OV0pIC0+IFtQQVNTXVsxNl0KICAgWzE1
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQ2MC9m
aS1pY2wtdTIvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BiYXNpYy5odG1sCiAgIFsxNl06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTM0
L2ZpLWljbC11Mi9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGJhc2ljLmh0bWwKCiAgCiMj
IyMgV2FybmluZ3MgIyMjIwoKICAqIGlndEBrbXNfZmxpcEBiYXNpYy1mbGlwLXZzLW1vZGVzZXQ6
CiAgICAtIGZpLWtibC14MTI3NTogICAgICAgW0RNRVNHLVdBUk5dWzE3XSAoW2k5MTUjNjJdIC8g
W2k5MTUjOTJdKSAtPiBbRE1FU0ctV0FSTl1bMThdIChbaTkxNSM2Ml0gLyBbaTkxNSM5Ml0gLyBb
aTkxNSM5NV0pICs1IHNpbWlsYXIgaXNzdWVzCiAgIFsxN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0NjAvZmkta2JsLXgxMjc1L2lndEBrbXNfZmxp
cEBiYXNpYy1mbGlwLXZzLW1vZGVzZXQuaHRtbAogICBbMThdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTUzNC9maS1rYmwteDEyNzUvaWd0QGtt
c19mbGlwQGJhc2ljLWZsaXAtdnMtbW9kZXNldC5odG1sCgogICogaWd0QGttc19mb3JjZV9jb25u
ZWN0b3JfYmFzaWNAZm9yY2UtY29ubmVjdG9yLXN0YXRlOgogICAgLSBmaS1rYmwteDEyNzU6ICAg
ICAgIFtETUVTRy1XQVJOXVsxOV0gKFtpOTE1IzYyXSAvIFtpOTE1IzkyXSAvIFtpOTE1Izk1XSkg
LT4gW0RNRVNHLVdBUk5dWzIwXSAoW2k5MTUjNjJdIC8gW2k5MTUjOTJdKSArMyBzaW1pbGFyIGlz
c3VlcwogICBbMTldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV83NDYwL2ZpLWtibC14MTI3NS9pZ3RAa21zX2ZvcmNlX2Nvbm5lY3Rvcl9iYXNpY0Bmb3Jj
ZS1jb25uZWN0b3Itc3RhdGUuaHRtbAogICBbMjBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTUzNC9maS1rYmwteDEyNzUvaWd0QGttc19mb3Jj
ZV9jb25uZWN0b3JfYmFzaWNAZm9yY2UtY29ubmVjdG9yLXN0YXRlLmh0bWwKCiAgCiAgW2ZkbyMx
MDYwNzBdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDYw
NzAKICBbaTkxNSMxMDldOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVs
L2lzc3Vlcy8xMDkKICBbaTkxNSMyMTddOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcv
ZHJtL2ludGVsL2lzc3Vlcy8yMTcKICBbaTkxNSM0MjRdOiBodHRwczovL2dpdGxhYi5mcmVlZGVz
a3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy80MjQKICBbaTkxNSM0OV06IGh0dHBzOi8vZ2l0bGFi
LmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzQ5CiAgW2k5MTUjNTYzXTogaHR0cHM6
Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNTYzCiAgW2k5MTUjNjJd
OiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy82MgogIFtp
OTE1IzkyXTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMv
OTIKICBbaTkxNSM5NV06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwv
aXNzdWVzLzk1CgoKUGFydGljaXBhdGluZyBob3N0cyAoNTAgLT4gNDQpCi0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQoKICBNaXNzaW5nICAgICg2KTogZmktaWxrLW01NDAgZmktaHN3LTQy
MDB1IGZpLWJzdy1jeWFuIGZpLWN0Zy1wODYwMCBmaS1ieXQtY2xhcHBlciBmaS1za2wtNjcwMGsy
IAoKCkJ1aWxkIGNoYW5nZXMKLS0tLS0tLS0tLS0tLQoKICAqIENJOiBDSS0yMDE5MDUyOSAtPiBO
b25lCiAgKiBMaW51eDogQ0lfRFJNXzc0NjAgLT4gUGF0Y2h3b3JrXzE1NTM0CgogIENJLTIwMTkw
NTI5OiAyMDE5MDUyOQogIENJX0RSTV83NDYwOiA5Y2Q2Mzk5MjliNmFkMWVmYjM1ZTkwZWU4NjJj
ZjM3YTliNmY2MzQ4IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4
CiAgSUdUXzUzMjA6IDA2ODMzZmZlYWY3NjIxYzNmZWYwOTcxNjY1MzliYmU5OTlhMzNlOWMgQCBn
aXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94b3JnL2FwcC9pbnRlbC1ncHUtdG9vbHMKICBQ
YXRjaHdvcmtfMTU1MzQ6IDlhZWVkOTkwYTJlMjMyZTJiYzI5M2UzMzQ3NmI3OWY5M2Q4OWRlN2Eg
QCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKCgo9PSBMaW51eCBj
b21taXRzID09Cgo5YWVlZDk5MGEyZTIgZHJtL2k5MTUvZ3Q6IFJlbW92ZSBkaXJlY3QgaW52b2Nh
dGlvbiBvZiBicmVhZGNydW1iIHNpZ25hbGluZwoKPT0gTG9ncyA9PQoKRm9yIG1vcmUgZGV0YWls
cyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE1NTM0L2luZGV4Lmh0bWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
