Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43CF11164B5
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 02:07:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 389D289DED;
	Mon,  9 Dec 2019 01:07:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1552289D67;
 Mon,  9 Dec 2019 01:07:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 09613A00FD;
 Mon,  9 Dec 2019 01:07:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 09 Dec 2019 01:07:50 -0000
Message-ID: <157585367000.14782.12709480218149098916@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191208233456.3074345-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191208233456.3074345-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915/gt=3A_Suppress_unclaimed_mmio_warnings_for_irq_enabling?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3Q6IFN1cHByZXNzIHVuY2xh
aW1lZCBtbWlvIHdhcm5pbmdzIGZvciBpcnEgZW5hYmxpbmcKVVJMICAgOiBodHRwczovL3BhdGNo
d29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzcwNjAzLwpTdGF0ZSA6IGZhaWx1cmUKCj09IFN1
bW1hcnkgPT0KCkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzc1MTEgLT4gUGF0Y2h3
b3JrXzE1NjQ5Cj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKkZBSUxVUkUqKgoKICBTZXJpb3VzIHVua25vd24g
Y2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTU2NDkgYWJzb2x1dGVseSBuZWVkIHRvIGJl
CiAgdmVyaWZpZWQgbWFudWFsbHkuCiAgCiAgSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFu
Z2VzIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzCiAgaW50cm9kdWNlZCBpbiBQ
YXRjaHdvcmtfMTU2NDksIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSB0byBhbGxvdyB0aGVt
CiAgdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBm
YWxzZSBwb3NpdGl2ZXMgaW4gQ0kuCgogIEV4dGVybmFsIFVSTDogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU2NDkvaW5kZXguaHRtbAoKUG9zc2li
bGUgbmV3IGlzc3VlcwotLS0tLS0tLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSB1bmtub3du
IGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE1NjQ5
OgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjCgog
ICogaWd0QGRlYnVnZnNfdGVzdEByZWFkX2FsbF9lbnRyaWVzOgogICAgLSBmaS1oc3ctcGVwcHk6
ICAgICAgIE5PVFJVTiAtPiBbSU5DT01QTEVURV1bMV0KICAgWzFdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTY0OS9maS1oc3ctcGVwcHkvaWd0
QGRlYnVnZnNfdGVzdEByZWFkX2FsbF9lbnRyaWVzLmh0bWwKCiAgKiBpZ3RAZ2VtX2Nsb3NlX3Jh
Y2VAYmFzaWMtdGhyZWFkczoKICAgIC0gZmktaXZiLTM3NzA6ICAgICAgICBOT1RSVU4gLT4gW0lO
Q09NUExFVEVdWzJdCiAgIFsyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTU2NDkvZmktaXZiLTM3NzAvaWd0QGdlbV9jbG9zZV9yYWNlQGJhc2lj
LXRocmVhZHMuaHRtbAoKICAqIGlndEBnZW1fY3R4X2NyZWF0ZUBiYXNpYy1maWxlczoKICAgIC0g
ZmktYmR3LTU1NTd1OiAgICAgICBOT1RSVU4gLT4gW0lOQ09NUExFVEVdWzNdCiAgIFszXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU2NDkvZmkt
YmR3LTU1NTd1L2lndEBnZW1fY3R4X2NyZWF0ZUBiYXNpYy1maWxlcy5odG1sCgogICogaWd0QGdl
bV9leGVjX2ZlbmNlQG5iLWF3YWl0LWRlZmF1bHQ6CiAgICAtIGZpLWJ4dC1kc2k6ICAgICAgICAg
W1BBU1NdWzRdIC0+IFtUSU1FT1VUXVs1XQogICBbNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc1MTEvZmktYnh0LWRzaS9pZ3RAZ2VtX2V4ZWNfZmVu
Y2VAbmItYXdhaXQtZGVmYXVsdC5odG1sCiAgIFs1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU2NDkvZmktYnh0LWRzaS9pZ3RAZ2VtX2V4ZWNf
ZmVuY2VAbmItYXdhaXQtZGVmYXVsdC5odG1sCgogICogaWd0QGdlbV9yaW5nZmlsbEBiYXNpYy1k
ZWZhdWx0LWZvcmtlZDoKICAgIC0gZmkta2JsLWd1YzogICAgICAgICBbUEFTU11bNl0gLT4gW1RJ
TUVPVVRdWzddICs0IHNpbWlsYXIgaXNzdWVzCiAgIFs2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzUxMS9maS1rYmwtZ3VjL2lndEBnZW1fcmluZ2Zp
bGxAYmFzaWMtZGVmYXVsdC1mb3JrZWQuaHRtbAogICBbN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NjQ5L2ZpLWtibC1ndWMvaWd0QGdlbV9y
aW5nZmlsbEBiYXNpYy1kZWZhdWx0LWZvcmtlZC5odG1sCgogICogaWd0QGdlbV9yaW5nZmlsbEBi
YXNpYy1kZWZhdWx0LWludGVycnVwdGlibGU6CiAgICAtIGZpLWdsay1kc2k6ICAgICAgICAgW1BB
U1NdWzhdIC0+IFtUSU1FT1VUXVs5XSArNCBzaW1pbGFyIGlzc3VlcwogICBbOF06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc1MTEvZmktZ2xrLWRzaS9p
Z3RAZ2VtX3JpbmdmaWxsQGJhc2ljLWRlZmF1bHQtaW50ZXJydXB0aWJsZS5odG1sCiAgIFs5XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU2NDkv
ZmktZ2xrLWRzaS9pZ3RAZ2VtX3JpbmdmaWxsQGJhc2ljLWRlZmF1bHQtaW50ZXJydXB0aWJsZS5o
dG1sCiAgICAtIGZpLWtibC04ODA5ZzogICAgICAgTk9UUlVOIC0+IFtUSU1FT1VUXVsxMF0gKzIg
c2ltaWxhciBpc3N1ZXMKICAgWzEwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTU2NDkvZmkta2JsLTg4MDlnL2lndEBnZW1fcmluZ2ZpbGxAYmFz
aWMtZGVmYXVsdC1pbnRlcnJ1cHRpYmxlLmh0bWwKCiAgCktub3duIGlzc3VlcwotLS0tLS0tLS0t
LS0KCiAgSGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzE1NjQ5IHRoYXQg
Y29tZSBmcm9tIGtub3duIGlzc3VlczoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgUG9zc2li
bGUgZml4ZXMgIyMjIwoKICAqIGlndEBjb3JlX2F1dGhAYmFzaWMtYXV0aDoKICAgIC0gZmktcG52
LWQ1MTA6ICAgICAgICBbSU5DT01QTEVURV1bMTFdIChbaTkxNSMyOTldKSAtPiBbUEFTU11bMTJd
CiAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
Xzc1MTEvZmktcG52LWQ1MTAvaWd0QGNvcmVfYXV0aEBiYXNpYy1hdXRoLmh0bWwKICAgWzEyXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU2NDkv
ZmktcG52LWQ1MTAvaWd0QGNvcmVfYXV0aEBiYXNpYy1hdXRoLmh0bWwKCiAgKiBpZ3RAZGVidWdm
c190ZXN0QHJlYWRfYWxsX2VudHJpZXM6CiAgICAtIGZpLWFwbC1ndWM6ICAgICAgICAgW0lOQ09N
UExFVEVdWzEzXSAoW2ZkbyMxMDM5MjddKSAtPiBbUEFTU11bMTRdCiAgIFsxM106IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc1MTEvZmktYXBsLWd1Yy9p
Z3RAZGVidWdmc190ZXN0QHJlYWRfYWxsX2VudHJpZXMuaHRtbAogICBbMTRdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTY0OS9maS1hcGwtZ3Vj
L2lndEBkZWJ1Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50cmllcy5odG1sCgogIAogIFtmZG8jMTAzOTI3
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzOTI3CiAg
W2k5MTUjMjk5XTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1
ZXMvMjk5CgoKUGFydGljaXBhdGluZyBob3N0cyAoMjYgLT4gMjQpCi0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQoKICBBZGRpdGlvbmFsICg1KTogZmktYnl0LWoxOTAwIGZpLWhzdy1wZXBw
eSBmaS1nZGctNTUxIGZpLWtibC04ODA5ZyBmaS1ibGItZTY4NTAgCiAgTWlzc2luZyAgICAoNyk6
IGZpLWlsay1tNTQwIGZpLWJ5dC1zcXVhd2tzIGZpLWJzdy1jeWFuIGZpLWN0Zy1wODYwMCBmaS1i
eXQtbjI4MjAgZmktYnl0LWNsYXBwZXIgZmktYmR3LXNhbXVzIAoKCkJ1aWxkIGNoYW5nZXMKLS0t
LS0tLS0tLS0tLQoKICAqIENJOiBDSS0yMDE5MDUyOSAtPiBOb25lCiAgKiBMaW51eDogQ0lfRFJN
Xzc1MTEgLT4gUGF0Y2h3b3JrXzE1NjQ5CgogIENJLTIwMTkwNTI5OiAyMDE5MDUyOQogIENJX0RS
TV83NTExOiAwNGNhMmMwZmI0N2MzZDM5NGEzNjRmNWY3MTk0M2NhOWY0NDBkZGE3IEAgZ2l0Oi8v
YW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgSUdUXzUzMzk6IGQ0NWUxMWY4
ZTEwYTRjNTc3NTM3MjAwMmVjODk5NzRjZTNkOTdiMjcgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNr
dG9wLm9yZy94b3JnL2FwcC9pbnRlbC1ncHUtdG9vbHMKICBQYXRjaHdvcmtfMTU2NDk6IDU2MjZh
NTI0YjYwYmJkY2UzMGQxZWViYWJjNmViNTE4NTgxNzYxMzYgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVk
ZXNrdG9wLm9yZy9nZngtY2kvbGludXgKCgo9PSBMaW51eCBjb21taXRzID09Cgo1NjI2YTUyNGI2
MGIgZHJtL2k5MTUvZ3Q6IFN1cHByZXNzIHVuY2xhaW1lZCBtbWlvIHdhcm5pbmdzIGZvciBpcnEg
ZW5hYmxpbmcKCj09IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTY0OS9pbmRleC5odG1sCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
