Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F72810455F
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 21:53:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B368B6E7AD;
	Wed, 20 Nov 2019 20:53:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D52896E7AB;
 Wed, 20 Nov 2019 20:53:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CC58AA0134;
 Wed, 20 Nov 2019 20:53:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 20 Nov 2019 20:53:29 -0000
Message-ID: <157428320981.19985.15953755895751693919@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191120155402.3870922-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191120155402.3870922-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915/selftests=3A_Always_hold_a_reference_on_a_waited_upon_requ?=
 =?utf-8?q?est?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvc2VsZnRlc3RzOiBBbHdheXMg
aG9sZCBhIHJlZmVyZW5jZSBvbiBhIHdhaXRlZCB1cG9uIHJlcXVlc3QKVVJMICAgOiBodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY5NzU5LwpTdGF0ZSA6IGZhaWx1cmUK
Cj09IFN1bW1hcnkgPT0KCkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzczOTAgLT4g
UGF0Y2h3b3JrXzE1MzQ4Cj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKkZBSUxVUkUqKgoKICBTZXJpb3VzIHVu
a25vd24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTUzNDggYWJzb2x1dGVseSBuZWVk
IHRvIGJlCiAgdmVyaWZpZWQgbWFudWFsbHkuCiAgCiAgSWYgeW91IHRoaW5rIHRoZSByZXBvcnRl
ZCBjaGFuZ2VzIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzCiAgaW50cm9kdWNl
ZCBpbiBQYXRjaHdvcmtfMTUzNDgsIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSB0byBhbGxv
dyB0aGVtCiAgdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJl
ZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuCgogIEV4dGVybmFsIFVSTDogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzNDgvaW5kZXguaHRtbAoK
UG9zc2libGUgbmV3IGlzc3VlcwotLS0tLS0tLS0tLS0tLS0tLS0tCgogIEhlcmUgYXJlIHRoZSB1
bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3Jr
XzE1MzQ4OgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAj
IyMjCgogICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlzdHM6CiAgICAtIGZpLWJzdy1u
aWNrOiAgICAgICAgW1BBU1NdWzFdIC0+IFtETUVTRy1XQVJOXVsyXQogICBbMV06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczOTAvZmktYnN3LW5pY2sv
aWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlzdHMuaHRtbAogICBbMl06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MzQ4L2ZpLWJzdy1uaWNr
L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXhlY2xpc3RzLmh0bWwKICAgIC0gZmktY2ZsLTg3MDBr
OiAgICAgICBbUEFTU11bM10gLT4gW0RNRVNHLVdBUk5dWzRdCiAgIFszXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM5MC9maS1jZmwtODcwMGsvaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlzdHMuaHRtbAogICBbNF06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MzQ4L2ZpLWNmbC04NzAway9p
Z3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0cy5odG1sCiAgICAtIGZpLWljbC11MjogICAg
ICAgICAgW1BBU1NdWzVdIC0+IFtETUVTRy1XQVJOXVs2XQogICBbNV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzczOTAvZmktaWNsLXUyL2lndEBpOTE1
X3NlbGZ0ZXN0QGxpdmVfZXhlY2xpc3RzLmh0bWwKICAgWzZdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTM0OC9maS1pY2wtdTIvaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZV9leGVjbGlzdHMuaHRtbAogICAgLSBmaS1za2wtZ3VjOiAgICAgICAgIFtQ
QVNTXVs3XSAtPiBbRE1FU0ctV0FSTl1bOF0KICAgWzddOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MzkwL2ZpLXNrbC1ndWMvaWd0QGk5MTVfc2VsZnRl
c3RAbGl2ZV9leGVjbGlzdHMuaHRtbAogICBbOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MzQ4L2ZpLXNrbC1ndWMvaWd0QGk5MTVfc2VsZnRl
c3RAbGl2ZV9leGVjbGlzdHMuaHRtbAogICAgLSBmaS1jZmwtZ3VjOiAgICAgICAgIFtQQVNTXVs5
XSAtPiBbRE1FU0ctV0FSTl1bMTBdCiAgIFs5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM5MC9maS1jZmwtZ3VjL2lndEBpOTE1X3NlbGZ0ZXN0QGxp
dmVfZXhlY2xpc3RzLmh0bWwKICAgWzEwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUzNDgvZmktY2ZsLWd1Yy9pZ3RAaTkxNV9zZWxmdGVzdEBs
aXZlX2V4ZWNsaXN0cy5odG1sCiAgICAtIGZpLWljbC11MzogICAgICAgICAgW1BBU1NdWzExXSAt
PiBbRE1FU0ctV0FSTl1bMTJdCiAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzczOTAvZmktaWNsLXUzL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVf
ZXhlY2xpc3RzLmh0bWwKICAgWzEyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTUzNDgvZmktaWNsLXUzL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVf
ZXhlY2xpc3RzLmh0bWwKICAgIC0gZmktd2hsLXU6ICAgICAgICAgICBbUEFTU11bMTNdIC0+IFtE
TUVTRy1XQVJOXVsxNF0KICAgWzEzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNzM5MC9maS13aGwtdS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNs
aXN0cy5odG1sCiAgIFsxNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE1MzQ4L2ZpLXdobC11L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXhlY2xp
c3RzLmh0bWwKICAgIC0gZmkta2JsLTc1MDB1OiAgICAgICBbUEFTU11bMTVdIC0+IFtETUVTRy1X
QVJOXVsxNl0KICAgWzE1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNzM5MC9maS1rYmwtNzUwMHUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlz
dHMuaHRtbAogICBbMTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNTM0OC9maS1rYmwtNzUwMHUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVj
bGlzdHMuaHRtbAogICAgLSBmaS1rYmwtc29yYWthOiAgICAgIFtQQVNTXVsxN10gLT4gW0RNRVNH
LVdBUk5dWzE4XQogICBbMTddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV83MzkwL2ZpLWtibC1zb3Jha2EvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVj
bGlzdHMuaHRtbAogICBbMThdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xNTM0OC9maS1rYmwtc29yYWthL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVf
ZXhlY2xpc3RzLmh0bWwKICAgIC0gZmkta2JsLWd1YzogICAgICAgICBbUEFTU11bMTldIC0+IFtE
TUVTRy1XQVJOXVsyMF0KICAgWzE5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNzM5MC9maS1rYmwtZ3VjL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXhl
Y2xpc3RzLmh0bWwKICAgWzIwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTUzNDgvZmkta2JsLWd1Yy9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4
ZWNsaXN0cy5odG1sCiAgICAtIGZpLWtibC04ODA5ZzogICAgICAgTk9UUlVOIC0+IFtETUVTRy1X
QVJOXVsyMV0KICAgWzIxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTUzNDgvZmkta2JsLTg4MDlnL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXhl
Y2xpc3RzLmh0bWwKICAgIC0gZmktZ2xrLWRzaTogICAgICAgICBbUEFTU11bMjJdIC0+IFtETUVT
Ry1XQVJOXVsyM10KICAgWzIyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNzM5MC9maS1nbGstZHNpL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXhlY2xp
c3RzLmh0bWwKICAgWzIzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTUzNDgvZmktZ2xrLWRzaS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNs
aXN0cy5odG1sCiAgICAtIGZpLWFwbC1ndWM6ICAgICAgICAgW1BBU1NdWzI0XSAtPiBbRE1FU0ct
V0FSTl1bMjVdCiAgIFsyNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzczOTAvZmktYXBsLWd1Yy9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0
cy5odG1sCiAgIFsyNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE1MzQ4L2ZpLWFwbC1ndWMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlz
dHMuaHRtbAogICAgLSBmaS1rYmwteDEyNzU6ICAgICAgIFtQQVNTXVsyNl0gLT4gW0RNRVNHLVdB
Uk5dWzI3XQogICBbMjZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV83MzkwL2ZpLWtibC14MTI3NS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0
cy5odG1sCiAgIFsyN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE1MzQ4L2ZpLWtibC14MTI3NS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNs
aXN0cy5odG1sCiAgICAtIGZpLXNrbC02NjAwdTogICAgICAgTk9UUlVOIC0+IFtETUVTRy1XQVJO
XVsyOF0KICAgWzI4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTUzNDgvZmktc2tsLTY2MDB1L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXhlY2xp
c3RzLmh0bWwKICAgIC0gZmktYnN3LW4zMDUwOiAgICAgICBbUEFTU11bMjldIC0+IFtETUVTRy1X
QVJOXVszMF0KICAgWzI5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNzM5MC9maS1ic3ctbjMwNTAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlz
dHMuaHRtbAogICBbMzBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNTM0OC9maS1ic3ctbjMwNTAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVj
bGlzdHMuaHRtbAogICAgLSBmaS1pY2wtZHNpOiAgICAgICAgIFtQQVNTXVszMV0gLT4gW0RNRVNH
LVdBUk5dWzMyXQogICBbMzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV83MzkwL2ZpLWljbC1kc2kvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlz
dHMuaHRtbAogICBbMzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNTM0OC9maS1pY2wtZHNpL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXhlY2xp
c3RzLmh0bWwKICAgIC0gZmktYnN3LWtlZmthOiAgICAgICBbUEFTU11bMzNdIC0+IFtETUVTRy1X
QVJOXVszNF0KICAgWzMzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNzM5MC9maS1ic3cta2Vma2EvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlz
dHMuaHRtbAogICBbMzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNTM0OC9maS1ic3cta2Vma2EvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVj
bGlzdHMuaHRtbAogICAgLSBmaS1ieHQtZHNpOiAgICAgICAgIFtQQVNTXVszNV0gLT4gW0RNRVNH
LVdBUk5dWzM2XQogICBbMzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV83MzkwL2ZpLWJ4dC1kc2kvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlz
dHMuaHRtbAogICBbMzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNTM0OC9maS1ieHQtZHNpL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXhlY2xp
c3RzLmh0bWwKICAgIC0gZmktc2tsLTY3MDBrMjogICAgICBbUEFTU11bMzddIC0+IFtETUVTRy1X
QVJOXVszOF0KICAgWzM3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNzM5MC9maS1za2wtNjcwMGsyL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXhlY2xp
c3RzLmh0bWwKICAgWzM4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTUzNDgvZmktc2tsLTY3MDBrMi9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4
ZWNsaXN0cy5odG1sCiAgICAtIGZpLWljbC15OiAgICAgICAgICAgW1BBU1NdWzM5XSAtPiBbRE1F
U0ctV0FSTl1bNDBdCiAgIFszOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzczOTAvZmktaWNsLXkvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlz
dHMuaHRtbAogICBbNDBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNTM0OC9maS1pY2wteS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2V4ZWNsaXN0
cy5odG1sCiAgICAtIGZpLWNtbC11MjogICAgICAgICAgW1BBU1NdWzQxXSAtPiBbRE1FU0ctV0FS
Tl1bNDJdCiAgIFs0MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzczOTAvZmktY21sLXUyL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXhlY2xpc3RzLmh0
bWwKICAgWzQyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTUzNDgvZmktY21sLXUyL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXhlY2xpc3RzLmh0
bWwKICAgIC0gZmktc2tsLTY3NzBocTogICAgICBOT1RSVU4gLT4gW0RNRVNHLVdBUk5dWzQzXQog
ICBbNDNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNTM0OC9maS1za2wtNjc3MGhxL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXhlY2xpc3RzLmh0
bWwKICAgIC0gZmktYmR3LTU1NTd1OiAgICAgICBOT1RSVU4gLT4gW0RNRVNHLVdBUk5dWzQ0XQog
ICBbNDRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNTM0OC9maS1iZHctNTU1N3UvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlzdHMuaHRt
bAogICAgLSBmaS1rYmwtcjogICAgICAgICAgIFtQQVNTXVs0NV0gLT4gW0RNRVNHLVdBUk5dWzQ2
XQogICBbNDVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV83MzkwL2ZpLWtibC1yL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXhlY2xpc3RzLmh0bWwKICAg
WzQ2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTUzNDgvZmkta2JsLXIvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlzdHMuaHRtbAogICAg
LSBmaS1za2wtbG1lbTogICAgICAgIFtQQVNTXVs0N10gLT4gW0RNRVNHLVdBUk5dWzQ4XQogICBb
NDddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83Mzkw
L2ZpLXNrbC1sbWVtL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXhlY2xpc3RzLmh0bWwKICAgWzQ4
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUz
NDgvZmktc2tsLWxtZW0vaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlzdHMuaHRtbAoKICAq
IGlndEBydW5uZXJAYWJvcnRlZDoKICAgIC0gZmkta2JsLTc1MDB1OiAgICAgICBOT1RSVU4gLT4g
W0ZBSUxdWzQ5XQogICBbNDldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xNTM0OC9maS1rYmwtNzUwMHUvaWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwK
ICAgIC0gZmktd2hsLXU6ICAgICAgICAgICBOT1RSVU4gLT4gW0ZBSUxdWzUwXQogICBbNTBdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTM0OC9m
aS13aGwtdS9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICAgLSBmaS1ieHQtZHNpOiAgICAgICAg
IE5PVFJVTiAtPiBbRkFJTF1bNTFdCiAgIFs1MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MzQ4L2ZpLWJ4dC1kc2kvaWd0QHJ1bm5lckBhYm9y
dGVkLmh0bWwKICAgIC0gZmktYnN3LW4zMDUwOiAgICAgICBOT1RSVU4gLT4gW0ZBSUxdWzUyXQog
ICBbNTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNTM0OC9maS1ic3ctbjMwNTAvaWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwKICAgIC0gZmkta2Js
LXgxMjc1OiAgICAgICBOT1RSVU4gLT4gW0ZBSUxdWzUzXQogICBbNTNdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTM0OC9maS1rYmwteDEyNzUv
aWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwKICAgIC0gZmktYnN3LW5pY2s6ICAgICAgICBOT1RSVU4g
LT4gW0ZBSUxdWzU0XQogICBbNTRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNTM0OC9maS1ic3ctbmljay9pZ3RAcnVubmVyQGFib3J0ZWQuaHRt
bAogICAgLSBmaS1rYmwtODgwOWc6ICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bNTVdCiAgIFs1NV06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MzQ4
L2ZpLWtibC04ODA5Zy9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICAgLSBmaS1rYmwtcjogICAg
ICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bNTZdCiAgIFs1Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MzQ4L2ZpLWtibC1yL2lndEBydW5uZXJA
YWJvcnRlZC5odG1sCiAgICAtIGZpLWJkdy01NTU3dTogICAgICAgTk9UUlVOIC0+IFtGQUlMXVs1
N10KICAgWzU3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTUzNDgvZmktYmR3LTU1NTd1L2lndEBydW5uZXJAYWJvcnRlZC5odG1sCgogIAojIyMj
IFN1cHByZXNzZWQgIyMjIwoKICBUaGUgZm9sbG93aW5nIHJlc3VsdHMgY29tZSBmcm9tIHVudHJ1
c3RlZCBtYWNoaW5lcywgdGVzdHMsIG9yIHN0YXR1c2VzLgogIFRoZXkgZG8gbm90IGFmZmVjdCB0
aGUgb3ZlcmFsbCByZXN1bHQuCgogICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlzdHM6
CiAgICAtIHtmaS10Z2wtdX06ICAgICAgICAgTk9UUlVOIC0+IFtETUVTRy1XQVJOXVs1OF0KICAg
WzU4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTUzNDgvZmktdGdsLXUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlzdHMuaHRtbAoKICAq
IGlndEBydW5uZXJAYWJvcnRlZDoKICAgIC0ge2ZpLXRnbC11fTogICAgICAgICBOT1RSVU4gLT4g
W0ZBSUxdWzU5XQogICBbNTldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xNTM0OC9maS10Z2wtdS9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAoKICAK
S25vd24gaXNzdWVzCi0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBp
biBQYXRjaHdvcmtfMTUzNDggdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOgoKIyMjIElHVCBj
aGFuZ2VzICMjIwoKIyMjIyBJc3N1ZXMgaGl0ICMjIyMKCiAgKiBpZ3RAa21zX2NoYW1lbGl1bUBo
ZG1pLWNyYy1mYXN0OgogICAgLSBmaS1rYmwtNzUwMHU6ICAgICAgIFtQQVNTXVs2MF0gLT4gW0ZB
SUxdWzYxXSAoW2ZkbyMxMDk2MzUgXSkKICAgWzYwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM5MC9maS1rYmwtNzUwMHUvaWd0QGttc19jaGFtZWxp
dW1AaGRtaS1jcmMtZmFzdC5odG1sCiAgIFs2MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MzQ4L2ZpLWtibC03NTAwdS9pZ3RAa21zX2NoYW1l
bGl1bUBoZG1pLWNyYy1mYXN0Lmh0bWwKCiAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5n
QGJhc2ljOgogICAgLSBmaS1pY2wtdTM6ICAgICAgICAgIFtQQVNTXVs2Ml0gLT4gW0ZBSUxdWzYz
XSAoW2ZkbyMxMDMxNjddKQogICBbNjJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV83MzkwL2ZpLWljbC11My9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNr
aW5nQGJhc2ljLmh0bWwKICAgWzYzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTUzNDgvZmktaWNsLXUzL2lndEBrbXNfZnJvbnRidWZmZXJfdHJh
Y2tpbmdAYmFzaWMuaHRtbAoKICAKIyMjIyBQb3NzaWJsZSBmaXhlcyAjIyMjCgogICogaWd0QGdl
bV9zeW5jQGJhc2ljLXN0b3JlLWVhY2g6CiAgICAtIHtmaS10Z2wtdX06ICAgICAgICAgW0lOQ09N
UExFVEVdWzY0XSAoW2ZkbyMxMTE3NDddIC8gW2ZkbyMxMTE4ODBdKSAtPiBbUEFTU11bNjVdCiAg
IFs2NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcz
OTAvZmktdGdsLXUvaWd0QGdlbV9zeW5jQGJhc2ljLXN0b3JlLWVhY2guaHRtbAogICBbNjVdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTM0OC9m
aS10Z2wtdS9pZ3RAZ2VtX3N5bmNAYmFzaWMtc3RvcmUtZWFjaC5odG1sCgogICogaWd0QHByaW1l
X3ZnZW1AYmFzaWMtZmVuY2UtZmxpcDoKICAgIC0gZmktaWNsLWRzaTogICAgICAgICBbRE1FU0ct
V0FSTl1bNjZdIChbZmRvIzEwNjEwN10pIC0+IFtQQVNTXVs2N10KICAgWzY2XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM5MC9maS1pY2wtZHNpL2ln
dEBwcmltZV92Z2VtQGJhc2ljLWZlbmNlLWZsaXAuaHRtbAogICBbNjddOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTM0OC9maS1pY2wtZHNpL2ln
dEBwcmltZV92Z2VtQGJhc2ljLWZlbmNlLWZsaXAuaHRtbAoKICAKIyMjIyBXYXJuaW5ncyAjIyMj
CgogICogaWd0QGttc19jaGFtZWxpdW1AaGRtaS1ocGQtZmFzdDoKICAgIC0gZmkta2JsLTc1MDB1
OiAgICAgICBbRkFJTF1bNjhdIChbZmRvIzExMTA0NV0gLyBbZmRvIzExMTA5Nl0pIC0+IFtGQUlM
XVs2OV0gKFtmZG8jMTExNDA3XSkKICAgWzY4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNzM5MC9maS1rYmwtNzUwMHUvaWd0QGttc19jaGFtZWxpdW1A
aGRtaS1ocGQtZmFzdC5odG1sCiAgIFs2OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MzQ4L2ZpLWtibC03NTAwdS9pZ3RAa21zX2NoYW1lbGl1
bUBoZG1pLWhwZC1mYXN0Lmh0bWwKCiAgCiAge25hbWV9OiBUaGlzIGVsZW1lbnQgaXMgc3VwcHJl
c3NlZC4gVGhpcyBtZWFucyBpdCBpcyBpZ25vcmVkIHdoZW4gY29tcHV0aW5nCiAgICAgICAgICB0
aGUgc3RhdHVzIG9mIHRoZSBkaWZmZXJlbmNlIChTVUNDRVNTLCBXQVJOSU5HLCBvciBGQUlMVVJF
KS4KCiAgW2ZkbyMxMDMxNjddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMDMxNjcKICBbZmRvIzEwNjEwN106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTEwNjEwNwogIFtmZG8jMTA5NjM1IF06IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTYzNSAKICBbZmRvIzEwOTk2NF06IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTk2NAogIFtmZG8j
MTExMDQ1XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEx
MDQ1CiAgW2ZkbyMxMTEwOTZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMTEwOTYKICBbZmRvIzExMTQwN106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTExMTQwNwogIFtmZG8jMTExNzQ3XTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNzQ3CiAgW2ZkbyMxMTE4ODBdOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE4ODAKICBbZmRvIzEx
MjI5OF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMjI5
OAoKClBhcnRpY2lwYXRpbmcgaG9zdHMgKDQ5IC0+IDQ1KQotLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KCiAgQWRkaXRpb25hbCAoMik6IGZpLWJkdy01NTU3dSBmaS1za2wtNjYwMHUgCiAg
TWlzc2luZyAgICAoNik6IGZpLWhzdy00MjAwdSBmaS1ieXQtc3F1YXdrcyBmaS1ic3ctY3lhbiBm
aS1jdGctcDg2MDAgZmktYnl0LWNsYXBwZXIgZmktYmR3LXNhbXVzIAoKCkJ1aWxkIGNoYW5nZXMK
LS0tLS0tLS0tLS0tLQoKICAqIENJOiBDSS0yMDE5MDUyOSAtPiBOb25lCiAgKiBMaW51eDogQ0lf
RFJNXzczOTAgLT4gUGF0Y2h3b3JrXzE1MzQ4CgogIENJLTIwMTkwNTI5OiAyMDE5MDUyOQogIENJ
X0RSTV83MzkwOiBhNWMzOGQzYzY0Njk4YTVjZmRiMTIzMGQ1YzNjNTllNzcxNDc0NmIxIEAgZ2l0
Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgSUdUXzUyOTk6IDY1ZmVk
NmE3OWFkZWExNGY3YmVmNmQ1NTUzMGRhNDdkNzczMWQzNzAgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVk
ZXNrdG9wLm9yZy94b3JnL2FwcC9pbnRlbC1ncHUtdG9vbHMKICBQYXRjaHdvcmtfMTUzNDg6IDll
YzRmMGRiMzdkZDIyMDY0ZWVkZDQ2N2Q2ZDQzMTIwNjgxMmRhODIgQCBnaXQ6Ly9hbm9uZ2l0LmZy
ZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgKCgo9PSBMaW51eCBjb21taXRzID09Cgo5ZWM0ZjBk
YjM3ZGQgZHJtL2k5MTUvc2VsZnRlc3RzOiBBbHdheXMgaG9sZCBhIHJlZmVyZW5jZSBvbiBhIHdh
aXRlZCB1cG9uIHJlcXVlc3QKCj09IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTM0OC9pbmRl
eC5odG1sCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
