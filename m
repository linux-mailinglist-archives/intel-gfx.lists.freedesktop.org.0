Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD05AF7792
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 16:24:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F0876E927;
	Mon, 11 Nov 2019 15:24:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 08D2F6E927;
 Mon, 11 Nov 2019 15:24:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0235DA00E7;
 Mon, 11 Nov 2019 15:24:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Mon, 11 Nov 2019 15:24:10 -0000
Message-ID: <157348585098.29960.2648579047514234844@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191111101845.11405-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20191111101845.11405-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_Remove_intel=5Ffronbuffer_forward_declaration_from_gem/?=
 =?utf-8?q?i915=5Fgem=5Fobject=5Ftypes=2Eh?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFJlbW92ZSBpbnRlbF9mcm9u
YnVmZmVyIGZvcndhcmQgZGVjbGFyYXRpb24gZnJvbSBnZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVz
LmgKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY5Mjg2
LwpTdGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkgPT0KCkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZy
b20gQ0lfRFJNXzczMDcgLT4gUGF0Y2h3b3JrXzE1MjExCj09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKkZBSUxV
UkUqKgoKICBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTUy
MTEgYWJzb2x1dGVseSBuZWVkIHRvIGJlCiAgdmVyaWZpZWQgbWFudWFsbHkuCiAgCiAgSWYgeW91
IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBj
aGFuZ2VzCiAgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTUyMTEsIHBsZWFzZSBub3RpZnkgeW91
ciBidWcgdGVhbSB0byBhbGxvdyB0aGVtCiAgdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBt
b2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuCgogIEV4dGVybmFs
IFVSTDogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTUyMTEvaW5kZXguaHRtbAoKUG9zc2libGUgbmV3IGlzc3VlcwotLS0tLS0tLS0tLS0tLS0tLS0t
CgogIEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJv
ZHVjZWQgaW4gUGF0Y2h3b3JrXzE1MjExOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBQb3Nz
aWJsZSByZWdyZXNzaW9ucyAjIyMjCgogICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29u
dGV4dHM6CiAgICAtIGZpLWNmbC1ndWM6ICAgICAgICAgW1BBU1NdWzFdIC0+IFtETUVTRy1GQUlM
XVsyXQogICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzczMDcvZmktY2ZsLWd1Yy9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2dlbV9jb250ZXh0cy5o
dG1sCiAgIFsyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTUyMTEvZmktY2ZsLWd1Yy9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2dlbV9jb250ZXh0
cy5odG1sCgogICogaWd0QGttc19zZXRtb2RlQGJhc2ljLWNsb25lLXNpbmdsZS1jcnRjOgogICAg
LSBmaS1za2wtNjc3MGhxOiAgICAgIFtQQVNTXVszXSAtPiBbV0FSTl1bNF0KICAgWzNdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MzA3L2ZpLXNrbC02
NzcwaHEvaWd0QGttc19zZXRtb2RlQGJhc2ljLWNsb25lLXNpbmdsZS1jcnRjLmh0bWwKICAgWzRd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTIx
MS9maS1za2wtNjc3MGhxL2lndEBrbXNfc2V0bW9kZUBiYXNpYy1jbG9uZS1zaW5nbGUtY3J0Yy5o
dG1sCgogIApLbm93biBpc3N1ZXMKLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSBjaGFuZ2Vz
IGZvdW5kIGluIFBhdGNod29ya18xNTIxMSB0aGF0IGNvbWUgZnJvbSBrbm93biBpc3N1ZXM6Cgoj
IyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIElzc3VlcyBoaXQgIyMjIwoKICAqIGlndEBrbXNfY2hh
bWVsaXVtQGhkbWktZWRpZC1yZWFkOgogICAgLSBmaS1pY2wtdTI6ICAgICAgICAgIFtQQVNTXVs1
XSAtPiBbRkFJTF1bNl0gKFtmZG8jMTA5NDgzXSkKICAgWzVdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MzA3L2ZpLWljbC11Mi9pZ3RAa21zX2NoYW1l
bGl1bUBoZG1pLWVkaWQtcmVhZC5odG1sCiAgIFs2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUyMTEvZmktaWNsLXUyL2lndEBrbXNfY2hhbWVs
aXVtQGhkbWktZWRpZC1yZWFkLmh0bWwKCiAgCiMjIyMgUG9zc2libGUgZml4ZXMgIyMjIwoKICAq
IGlndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3Q6CiAgICAtIGZpLWtibC03NTAwdTogICAg
ICAgW0ZBSUxdWzddIChbZmRvIzExMTA0NV0gLyBbZmRvIzExMTA5Nl0pIC0+IFtQQVNTXVs4XQog
ICBbN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcz
MDcvZmkta2JsLTc1MDB1L2lndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3QuaHRtbAogICBb
OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1
MjExL2ZpLWtibC03NTAwdS9pZ3RAa21zX2NoYW1lbGl1bUBoZG1pLWhwZC1mYXN0Lmh0bWwKCiAg
CiAgW2ZkbyMxMDk0ODNdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMDk0ODMKICBbZmRvIzExMTA0NV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTExMTA0NQogIFtmZG8jMTExMDk2XTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMDk2CgoKUGFydGljaXBhdGluZyBob3N0cyAo
NTIgLT4gNDYpCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBBZGRpdGlvbmFsICgx
KTogZmktdGdsLXUgCiAgTWlzc2luZyAgICAoNyk6IGZpLWlsay1tNTQwIGZpLWhzdy00MjAwdSBm
aS1ieXQtc3F1YXdrcyBmaS1ic3ctY3lhbiBmaS1jdGctcDg2MDAgZmktYnl0LWNsYXBwZXIgZmkt
YmR3LXNhbXVzIAoKCkJ1aWxkIGNoYW5nZXMKLS0tLS0tLS0tLS0tLQoKICAqIENJOiBDSS0yMDE5
MDUyOSAtPiBOb25lCiAgKiBMaW51eDogQ0lfRFJNXzczMDcgLT4gUGF0Y2h3b3JrXzE1MjExCgog
IENJLTIwMTkwNTI5OiAyMDE5MDUyOQogIENJX0RSTV83MzA3OiA5NmE4NmQ4YmZiNWY1YzBmMDlj
MDM0MTk5YzI0YTYwZDQxNzQwMWM1IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4
LWNpL2xpbnV4CiAgSUdUXzUyNjk6IGFkMmMxOGZlNDUwZTk5ZDk3MTEwZGIxM2VlYmYzMTJkYzBm
YTdiNGMgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94b3JnL2FwcC9pbnRlbC1ncHUt
dG9vbHMKICBQYXRjaHdvcmtfMTUyMTE6IDc0MGM0OTI3OGFlNTZhMTRlYjdlY2QyMTdiMzhlM2Iw
ZTg4ZDhjNjggQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKCgo9
PSBMaW51eCBjb21taXRzID09Cgo3NDBjNDkyNzhhZTUgZHJtL2k5MTU6IFJlbW92ZSBpbnRlbF9m
cm9uYnVmZmVyIGZvcndhcmQgZGVjbGFyYXRpb24gZnJvbSBnZW0vaTkxNV9nZW1fb2JqZWN0X3R5
cGVzLmgKCj09IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTIxMS9pbmRleC5odG1sCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
