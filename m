Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36EFFE8AD4
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 15:34:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9DB96EB7E;
	Tue, 29 Oct 2019 14:34:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5F7B26EB7D;
 Tue, 29 Oct 2019 14:34:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 597A0A011B;
 Tue, 29 Oct 2019 14:34:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 29 Oct 2019 14:34:20 -0000
Message-ID: <20191029143420.12910.50959@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191029103947.7535-1-jani.nikula@intel.com>
In-Reply-To: <20191029103947.7535-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915/display=3A_only_include_intel=5Fdp=5Flink=5Ftraining=2Eh_w?=
 =?utf-8?q?here_needed?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZGlzcGxheTogb25seSBpbmNs
dWRlIGludGVsX2RwX2xpbmtfdHJhaW5pbmcuaCB3aGVyZSBuZWVkZWQKVVJMICAgOiBodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY4NzExLwpTdGF0ZSA6IGZhaWx1cmUK
Cj09IFN1bW1hcnkgPT0KCkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzcyMTAgLT4g
UGF0Y2h3b3JrXzE1MDQ4Cj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKkZBSUxVUkUqKgoKICBTZXJpb3VzIHVu
a25vd24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTUwNDggYWJzb2x1dGVseSBuZWVk
IHRvIGJlCiAgdmVyaWZpZWQgbWFudWFsbHkuCiAgCiAgSWYgeW91IHRoaW5rIHRoZSByZXBvcnRl
ZCBjaGFuZ2VzIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzCiAgaW50cm9kdWNl
ZCBpbiBQYXRjaHdvcmtfMTUwNDgsIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSB0byBhbGxv
dyB0aGVtCiAgdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJl
ZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuCgogIEV4dGVybmFsIFVSTDogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUwNDgvaW5kZXguaHRtbAoK
UG9zc2libGUgbmV3IGlzc3VlcwotLS0tLS0tLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSB1
bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3Jr
XzE1MDQ4OgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAj
IyMjCgogICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ibHQ6CiAgICAtIGZpLWJzdy1uMzA1MDog
ICAgICAgW1BBU1NdWzFdIC0+IFtETUVTRy1GQUlMXVsyXQogICBbMV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcyMTAvZmktYnN3LW4zMDUwL2lndEBp
OTE1X3NlbGZ0ZXN0QGxpdmVfYmx0Lmh0bWwKICAgWzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTA0OC9maS1ic3ctbjMwNTAvaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZV9ibHQuaHRtbAoKICAKS25vd24gaXNzdWVzCi0tLS0tLS0tLS0tLQoKICBI
ZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTUwNDggdGhhdCBjb21lIGZy
b20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBJc3N1ZXMgaGl0ICMj
IyMKCiAgKiBpZ3RAZ2VtX2ZsaW5rX2Jhc2ljQGRvdWJsZS1mbGluazoKICAgIC0gZmktaWNsLXUz
OiAgICAgICAgICBbUEFTU11bM10gLT4gW0RNRVNHLVdBUk5dWzRdIChbZmRvIzEwNzcyNF0pICsx
IHNpbWlsYXIgaXNzdWUKICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV83MjEwL2ZpLWljbC11My9pZ3RAZ2VtX2ZsaW5rX2Jhc2ljQGRvdWJsZS1m
bGluay5odG1sCiAgIFs0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTUwNDgvZmktaWNsLXUzL2lndEBnZW1fZmxpbmtfYmFzaWNAZG91YmxlLWZs
aW5rLmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2JsdDoKICAgIC0gZmktaWNsLXUz
OiAgICAgICAgICBbUEFTU11bNV0gLT4gW0lOQ09NUExFVEVdWzZdIChbZmRvIzEwNzcxM10pCiAg
IFs1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzIx
MC9maS1pY2wtdTMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ibHQuaHRtbAogICBbNl06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MDQ4L2ZpLWlj
bC11My9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2JsdC5odG1sCgogIAojIyMjIFBvc3NpYmxlIGZp
eGVzICMjIyMKCiAgKiBpZ3RAcHJpbWVfc2VsZl9pbXBvcnRAYmFzaWMtd2l0aF9vbmVfYm86CiAg
ICAtIGZpLWljbC11MzogICAgICAgICAgW0RNRVNHLVdBUk5dWzddIChbZmRvIzEwNzcyNF0pIC0+
IFtQQVNTXVs4XQogICBbN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzcyMTAvZmktaWNsLXUzL2lndEBwcmltZV9zZWxmX2ltcG9ydEBiYXNpYy13aXRo
X29uZV9iby5odG1sCiAgIFs4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTUwNDgvZmktaWNsLXUzL2lndEBwcmltZV9zZWxmX2ltcG9ydEBiYXNp
Yy13aXRoX29uZV9iby5odG1sCgogIAogIFtmZG8jMTA3NzEzXTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NzEzCiAgW2ZkbyMxMDc3MjRdOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDc3MjQKCgpQYXJ0aWNpcGF0
aW5nIGhvc3RzICg0OSAtPiA0MykKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgogIEFk
ZGl0aW9uYWwgKDEpOiBmaS1oc3ctcGVwcHkgCiAgTWlzc2luZyAgICAoNyk6IGZpLWlsay1tNTQw
IGZpLWhzdy00MjAwdSBmaS1ieXQtc3F1YXdrcyBmaS1ic3ctY3lhbiBmaS1pY2wteSBmaS1ieXQt
Y2xhcHBlciBmaS1iZHctc2FtdXMgCgoKQnVpbGQgY2hhbmdlcwotLS0tLS0tLS0tLS0tCgogICog
Q0k6IENJLTIwMTkwNTI5IC0+IE5vbmUKICAqIExpbnV4OiBDSV9EUk1fNzIxMCAtPiBQYXRjaHdv
cmtfMTUwNDgKCiAgQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5CiAgQ0lfRFJNXzcyMTA6IDJiOTFhMzAx
ZDE3YjdjNTI5YzkzYWVlZDdhYzZhNzc2MmZmZTlkNTYgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNr
dG9wLm9yZy9nZngtY2kvbGludXgKICBJR1RfNTI0OTogYWVlMDE5Y2VjOWQ3ZjMwMDIzNzFmNmRk
ZjEwMmNiNjdkOTk3NmI3MSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hvcmcvYXBw
L2ludGVsLWdwdS10b29scwogIFBhdGNod29ya18xNTA0ODogMWIyMjI4MzRjNTcyNGRhNzc5Yzk3
ZjAxY2UyN2ExYmQzYTA1MTllYiBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1j
aS9saW51eAoKCj09IExpbnV4IGNvbW1pdHMgPT0KCjFiMjIyODM0YzU3MiBkcm0vaTkxNS9kaXNw
bGF5OiBvbmx5IGluY2x1ZGUgaW50ZWxfZHBfbGlua190cmFpbmluZy5oIHdoZXJlIG5lZWRlZAoK
PT0gTG9ncyA9PQoKRm9yIG1vcmUgZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MDQ4L2luZGV4Lmh0bWwKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
