Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E70F910F3E1
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 01:22:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AC026E0DA;
	Tue,  3 Dec 2019 00:22:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 81E476E0DA;
 Tue,  3 Dec 2019 00:22:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7A0D6A0073;
 Tue,  3 Dec 2019 00:22:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Tue, 03 Dec 2019 00:22:26 -0000
Message-ID: <157533254647.4659.2874336088515981268@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191202171608.3361125-1-matthew.d.roper@intel.com>
In-Reply-To: <20191202171608.3361125-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/?=
 =?utf-8?q?i915/irq=3A_Refactor_gen11_display_interrupt_handling_=28rev2?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvaXJxOiBSZWZhY3RvciBnZW4x
MSBkaXNwbGF5IGludGVycnVwdCBoYW5kbGluZyAocmV2MikKVVJMICAgOiBodHRwczovL3BhdGNo
d29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzcwMzAzLwpTdGF0ZSA6IHN1Y2Nlc3MKCj09IFN1
bW1hcnkgPT0KCkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzc0NjcgLT4gUGF0Y2h3
b3JrXzE1NTQ2Cj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKlNVQ0NFU1MqKgoKICBObyByZWdyZXNzaW9ucyBm
b3VuZC4KCiAgRXh0ZXJuYWwgVVJMOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNTU0Ni9pbmRleC5odG1sCgpLbm93biBpc3N1ZXMKLS0tLS0tLS0t
LS0tCgogIEhlcmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNod29ya18xNTU0NiB0aGF0
IGNvbWUgZnJvbSBrbm93biBpc3N1ZXM6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMjIElzc3Vl
cyBoaXQgIyMjIwoKICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfYmx0OgogICAgLSBmaS1oc3ct
NDc3MHI6ICAgICAgIFtQQVNTXVsxXSAtPiBbRE1FU0ctRkFJTF1bMl0gKFtpOTE1IzU2M10pCiAg
IFsxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQ2
Ny9maS1oc3ctNDc3MHIvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ibHQuaHRtbAogICBbMl06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTQ2L2Zp
LWhzdy00Nzcwci9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2JsdC5odG1sCiAgICAtIGZpLWhzdy1w
ZXBweTogICAgICAgW1BBU1NdWzNdIC0+IFtETUVTRy1GQUlMXVs0XSAoW2k5MTUjNTUzXSkKICAg
WzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDY3
L2ZpLWhzdy1wZXBweS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2JsdC5odG1sCiAgIFs0XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU1NDYvZmkt
aHN3LXBlcHB5L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfYmx0Lmh0bWwKCiAgCiMjIyMgUG9zc2li
bGUgZml4ZXMgIyMjIwoKICAqIGlndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkOgogICAgLSBm
aS1za2wtNjc3MGhxOiAgICAgIFtETUVTRy1XQVJOXVs1XSAoW2k5MTUjNTkyXSkgLT4gW1BBU1Nd
WzZdCiAgIFs1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNzQ2Ny9maS1za2wtNjc3MGhxL2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwK
ICAgWzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNTU0Ni9maS1za2wtNjc3MGhxL2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwK
CiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2JsdDoKICAgIC0gZmktaXZiLTM3NzA6ICAgICAg
ICBbRE1FU0ctRkFJTF1bN10gKFtpOTE1IzU2M10pIC0+IFtQQVNTXVs4XQogICBbN106IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0NjcvZmktaXZiLTM3
NzAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ibHQuaHRtbAogICBbOF06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTQ2L2ZpLWl2Yi0zNzcwL2ln
dEBpOTE1X3NlbGZ0ZXN0QGxpdmVfYmx0Lmh0bWwKICAgIC0gZmktaHN3LTQ3NzA6ICAgICAgICBb
RE1FU0ctRkFJTF1bOV0gKFtpOTE1IzU2M10pIC0+IFtQQVNTXVsxMF0KICAgWzldOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDY3L2ZpLWhzdy00Nzcw
L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfYmx0Lmh0bWwKICAgWzEwXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU1NDYvZmktaHN3LTQ3NzAvaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZV9ibHQuaHRtbAoKICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVf
Z2VtX2NvbnRleHRzOgogICAgLSBmaS1za2wtbG1lbTogICAgICAgIFtJTkNPTVBMRVRFXVsxMV0g
KFtpOTE1IzQyNF0pIC0+IFtQQVNTXVsxMl0KICAgWzExXTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQ2Ny9maS1za2wtbG1lbS9pZ3RAaTkxNV9zZWxm
dGVzdEBsaXZlX2dlbV9jb250ZXh0cy5odG1sCiAgIFsxMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTQ2L2ZpLXNrbC1sbWVtL2lndEBpOTE1
X3NlbGZ0ZXN0QGxpdmVfZ2VtX2NvbnRleHRzLmh0bWwKICAgIC0gZmktaHN3LXBlcHB5OiAgICAg
ICBbRE1FU0ctRkFJTF1bMTNdIChbZmRvIzExMTY5Ml0pIC0+IFtQQVNTXVsxNF0KICAgWzEzXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQ2Ny9maS1o
c3ctcGVwcHkvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4dHMuaHRtbAogICBbMTRd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTU0
Ni9maS1oc3ctcGVwcHkvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4dHMuaHRtbAoK
ICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAYmFzaWM6CiAgICAtIGZpLWljbC1ndWM6
ICAgICAgICAgW0ZBSUxdWzE1XSAoW2k5MTUjNDldKSAtPiBbUEFTU11bMTZdCiAgIFsxNV06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0NjcvZmktaWNs
LWd1Yy9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGJhc2ljLmh0bWwKICAgWzE2XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU1NDYvZmkt
aWNsLWd1Yy9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGJhc2ljLmh0bWwKCiAgCiMjIyMg
V2FybmluZ3MgIyMjIwoKICAqIGlndEBrbXNfZmxpcEBiYXNpYy1mbGlwLXZzLW1vZGVzZXQ6CiAg
ICAtIGZpLWtibC14MTI3NTogICAgICAgW0RNRVNHLVdBUk5dWzE3XSAoW2k5MTUjNjJdIC8gW2k5
MTUjOTJdIC8gW2k5MTUjOTVdKSAtPiBbRE1FU0ctV0FSTl1bMThdIChbaTkxNSM2Ml0gLyBbaTkx
NSM5Ml0pICs2IHNpbWlsYXIgaXNzdWVzCiAgIFsxN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0NjcvZmkta2JsLXgxMjc1L2lndEBrbXNfZmxpcEBi
YXNpYy1mbGlwLXZzLW1vZGVzZXQuaHRtbAogICBbMThdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTU0Ni9maS1rYmwteDEyNzUvaWd0QGttc19m
bGlwQGJhc2ljLWZsaXAtdnMtbW9kZXNldC5odG1sCgogICogaWd0QGttc19waXBlX2NyY19iYXNp
Y0ByZWFkLWNyYy1waXBlLWE6CiAgICAtIGZpLWtibC14MTI3NTogICAgICAgW0RNRVNHLVdBUk5d
WzE5XSAoW2k5MTUjNjJdIC8gW2k5MTUjOTJdKSAtPiBbRE1FU0ctV0FSTl1bMjBdIChbaTkxNSM2
Ml0gLyBbaTkxNSM5Ml0gLyBbaTkxNSM5NV0pICs1IHNpbWlsYXIgaXNzdWVzCiAgIFsxOV06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0NjcvZmkta2Js
LXgxMjc1L2lndEBrbXNfcGlwZV9jcmNfYmFzaWNAcmVhZC1jcmMtcGlwZS1hLmh0bWwKICAgWzIw
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU1
NDYvZmkta2JsLXgxMjc1L2lndEBrbXNfcGlwZV9jcmNfYmFzaWNAcmVhZC1jcmMtcGlwZS1hLmh0
bWwKCiAgCiAgW2ZkbyMxMTE2OTJdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMTE2OTIKICBbaTkxNSM0MjRdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3Rv
cC5vcmcvZHJtL2ludGVsL2lzc3Vlcy80MjQKICBbaTkxNSM0OV06IGh0dHBzOi8vZ2l0bGFiLmZy
ZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzQ5CiAgW2k5MTUjNTUzXTogaHR0cHM6Ly9n
aXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNTUzCiAgW2k5MTUjNTYzXTog
aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNTYzCiAgW2k5
MTUjNTkyXTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMv
NTkyCiAgW2k5MTUjNjJdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVs
L2lzc3Vlcy82MgogIFtpOTE1IzkyXTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2Ry
bS9pbnRlbC9pc3N1ZXMvOTIKICBbaTkxNSM5NV06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9w
Lm9yZy9kcm0vaW50ZWwvaXNzdWVzLzk1CgoKUGFydGljaXBhdGluZyBob3N0cyAoNTAgLT4gNDQp
Ci0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBNaXNzaW5nICAgICg2KTogZmktaWxr
LW01NDAgZmktaHN3LTQyMDB1IGZpLWJzdy1jeWFuIGZpLWN0Zy1wODYwMCBmaS1ieXQtY2xhcHBl
ciBmaS1zbmItMjYwMCAKCgpCdWlsZCBjaGFuZ2VzCi0tLS0tLS0tLS0tLS0KCiAgKiBDSTogQ0kt
MjAxOTA1MjkgLT4gTm9uZQogICogTGludXg6IENJX0RSTV83NDY3IC0+IFBhdGNod29ya18xNTU0
NgoKICBDSS0yMDE5MDUyOTogMjAxOTA1MjkKICBDSV9EUk1fNzQ2NzogMTQ5NTRmMjRlNzI1MWIw
NjdiMjA4MWFhYTA5YTdkYTY4NDBkYTBkNSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3Jn
L2dmeC1jaS9saW51eAogIElHVF81MzIxOiA5ZGY1MGFlZjQ5ZTBkYTQ0MTM2MDlkOTg2NmI0MWI4
MmI3MjVmMmEwIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcveG9yZy9hcHAvaW50ZWwt
Z3B1LXRvb2xzCiAgUGF0Y2h3b3JrXzE1NTQ2OiA4YzkyMTI1NTQ5M2JlMGMwYzRkMzFlZjk2NWU0
YTY1MjAyMzU0YzE1IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4
CgoKPT0gTGludXggY29tbWl0cyA9PQoKOGM5MjEyNTU0OTNiIGRybS9pOTE1L2lycTogUmVmYWN0
b3IgZ2VuMTEgZGlzcGxheSBpbnRlcnJ1cHQgaGFuZGxpbmcKCj09IExvZ3MgPT0KCkZvciBtb3Jl
IGRldGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNTU0Ni9pbmRleC5odG1sCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
