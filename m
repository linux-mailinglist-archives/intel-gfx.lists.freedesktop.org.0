Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BCD910CFF4
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 00:26:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BEC16E405;
	Thu, 28 Nov 2019 23:26:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E75926E06D;
 Thu, 28 Nov 2019 23:26:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D7EFEA0099;
 Thu, 28 Nov 2019 23:26:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 28 Nov 2019 23:26:01 -0000
Message-ID: <157498356185.21455.10099024246041029984@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191128220759.408038-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191128220759.408038-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915/gen7=3A_Re-enable_full-ppgtt_for_ivb=2C_byt=2C_hsw_=28rev6?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ2VuNzogUmUtZW5hYmxlIGZ1
bGwtcHBndHQgZm9yIGl2YiwgYnl0LCBoc3cgKHJldjYpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdv
cmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy83MDA4OS8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1t
YXJ5ID09CgpDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV83NDM5IC0+IFBhdGNod29y
a18xNTUwMQo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09CgpTdW1tYXJ5Ci0tLS0tLS0KCiAgKipGQUlMVVJFKioKCiAgU2VyaW91cyB1bmtub3duIGNo
YW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzE1NTAxIGFic29sdXRlbHkgbmVlZCB0byBiZQog
IHZlcmlmaWVkIG1hbnVhbGx5LgogIAogIElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdl
cyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcwogIGludHJvZHVjZWQgaW4gUGF0
Y2h3b3JrXzE1NTAxLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cgdGhlbQog
IHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFs
c2UgcG9zaXRpdmVzIGluIENJLgoKICBFeHRlcm5hbCBVUkw6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTAxL2luZGV4Lmh0bWwKClBvc3NpYmxl
IG5ldyBpc3N1ZXMKLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUgdW5rbm93biBj
aGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNTUwMToK
CiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgUG9zc2libGUgcmVncmVzc2lvbnMgIyMjIwoKICAq
IGlndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZDoKICAgIC0gZmktYndyLTIxNjA6ICAgICAgICBb
UEFTU11bMV0gLT4gW0lOQ09NUExFVEVdWzJdCiAgIFsxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQzOS9maS1id3ItMjE2MC9pZ3RAaTkxNV9tb2R1
bGVfbG9hZEByZWxvYWQuaHRtbAogICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTAxL2ZpLWJ3ci0yMTYwL2lndEBpOTE1X21vZHVsZV9s
b2FkQHJlbG9hZC5odG1sCgogICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlzdHM6CiAg
ICAtIGZpLWljbC15OiAgICAgICAgICAgW1BBU1NdWzNdIC0+IFtETUVTRy1GQUlMXVs0XQogICBb
M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0Mzkv
ZmktaWNsLXkvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9leGVjbGlzdHMuaHRtbAogICBbNF06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTAxL2Zp
LWljbC15L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZXhlY2xpc3RzLmh0bWwKCiAgKiBpZ3RAaTkx
NV9zZWxmdGVzdEBsaXZlX3JlcXVlc3RzOgogICAgLSBmaS1oc3ctNDc3MHI6ICAgICAgIFtQQVNT
XVs1XSAtPiBbSU5DT01QTEVURV1bNl0KICAgWzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDM5L2ZpLWhzdy00Nzcwci9pZ3RAaTkxNV9zZWxmdGVz
dEBsaXZlX3JlcXVlc3RzLmh0bWwKICAgWzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTUwMS9maS1oc3ctNDc3MHIvaWd0QGk5MTVfc2VsZnRl
c3RAbGl2ZV9yZXF1ZXN0cy5odG1sCiAgICAtIGZpLWl2Yi0zNzcwOiAgICAgICAgTk9UUlVOIC0+
IFtJTkNPTVBMRVRFXVs3XQogICBbN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE1NTAxL2ZpLWl2Yi0zNzcwL2lndEBpOTE1X3NlbGZ0ZXN0QGxp
dmVfcmVxdWVzdHMuaHRtbAogICAgLSBmaS1oc3ctNDc3MDogICAgICAgIFtQQVNTXVs4XSAtPiBb
SU5DT01QTEVURV1bOV0KICAgWzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV83NDM5L2ZpLWhzdy00NzcwL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfcmVx
dWVzdHMuaHRtbAogICBbOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE1NTAxL2ZpLWhzdy00NzcwL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfcmVx
dWVzdHMuaHRtbAoKICAKS25vd24gaXNzdWVzCi0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0aGUg
Y2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTU1MDEgdGhhdCBjb21lIGZyb20ga25vd24gaXNz
dWVzOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBJc3N1ZXMgaGl0ICMjIyMKCiAgKiBpZ3RA
aTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZDoKICAgIC0gZmktc2tsLWxtZW06ICAgICAgICBbUEFT
U11bMTBdIC0+IFtETUVTRy1XQVJOXVsxMV0gKFtmZG8jMTEyMjYxXSkKICAgWzEwXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQzOS9maS1za2wtbG1l
bS9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sCiAgIFsxMV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTAxL2ZpLXNrbC1sbWVt
L2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxmdGVz
dEBsaXZlX2dlbV9jb250ZXh0czoKICAgIC0gZmktYnl0LW4yODIwOiAgICAgICBbUEFTU11bMTJd
IC0+IFtJTkNPTVBMRVRFXVsxM10gKFtmZG8jMTAyNjU3XSkKICAgWzEyXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQzOS9maS1ieXQtbjI4MjAvaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4dHMuaHRtbAogICBbMTNdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTUwMS9maS1ieXQtbjI4
MjAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4dHMuaHRtbAoKICAKIyMjIyBQb3Nz
aWJsZSBmaXhlcyAjIyMjCgogICogaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLXdpdGgtZmF1
bHQtaW5qZWN0aW9uOgogICAgLSBmaS1pY2wtZHNpOiAgICAgICAgIFtJTkNPTVBMRVRFXVsxNF0g
KFtmZG8jMTA3NzEzXSkgLT4gW1BBU1NdWzE1XQogICBbMTRdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDM5L2ZpLWljbC1kc2kvaWd0QGk5MTVfbW9k
dWxlX2xvYWRAcmVsb2FkLXdpdGgtZmF1bHQtaW5qZWN0aW9uLmh0bWwKICAgWzE1XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU1MDEvZmktaWNs
LWRzaS9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQtd2l0aC1mYXVsdC1pbmplY3Rpb24uaHRt
bAoKICAqIGlndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkOgogICAgLSBmaS1rYmwtZ3VjOiAg
ICAgICAgIFtTS0lQXVsxNl0gKFtmZG8jMTA5MjcxXSkgLT4gW1BBU1NdWzE3XQogICBbMTZdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDM5L2ZpLWti
bC1ndWMvaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRtbAogICBbMTddOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTUwMS9maS1rYmwt
Z3VjL2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxm
dGVzdEBsaXZlX2JsdDoKICAgIC0gZmktaHN3LXBlcHB5OiAgICAgICBbRE1FU0ctRkFJTF1bMThd
IC0+IFtQQVNTXVsxOV0KICAgWzE4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNzQzOS9maS1oc3ctcGVwcHkvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9i
bHQuaHRtbAogICBbMTldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNTUwMS9maS1oc3ctcGVwcHkvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ibHQu
aHRtbAoKICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfaGVhcnRiZWF0OgogICAgLSBmaS1z
a2wtNjc3MGhxOiAgICAgIFtETUVTRy1GQUlMXVsyMF0gLT4gW1BBU1NdWzIxXQogICBbMjBdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDM5L2ZpLXNr
bC02NzcwaHEvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ndF9oZWFydGJlYXQuaHRtbAogICBbMjFd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTUw
MS9maS1za2wtNjc3MGhxL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfaGVhcnRiZWF0Lmh0bWwK
CiAgCiMjIyMgV2FybmluZ3MgIyMjIwoKICAqIGlndEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXMz
OgogICAgLSBmaS1rYmwteDEyNzU6ICAgICAgIFtETUVTRy1XQVJOXVsyMl0gKFtmZG8jMTAzNTU4
XSAvIFtmZG8jMTA1NjAyXSkgLT4gW0RNRVNHLVdBUk5dWzIzXSAoW2ZkbyMxMDM1NThdIC8gW2Zk
byMxMDU2MDJdIC8gW2ZkbyMxMDU3NjNdKSArMyBzaW1pbGFyIGlzc3VlcwogICBbMjJdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDM5L2ZpLWtibC14
MTI3NS9pZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zMy5odG1sCiAgIFsyM106IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTAxL2ZpLWtibC14
MTI3NS9pZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zMy5odG1sCgogICogaWd0QGttc19jaGFt
ZWxpdW1AaGRtaS1ocGQtZmFzdDoKICAgIC0gZmkta2JsLTc1MDB1OiAgICAgICBbRkFJTF1bMjRd
IChbZmRvIzExMTQwN10pIC0+IFtGQUlMXVsyNV0gKFtmZG8jMTExMDQ1XSAvIFtmZG8jMTExMDk2
XSkKICAgWzI0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNzQzOS9maS1rYmwtNzUwMHUvaWd0QGttc19jaGFtZWxpdW1AaGRtaS1ocGQtZmFzdC5odG1s
CiAgIFsyNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE1NTAxL2ZpLWtibC03NTAwdS9pZ3RAa21zX2NoYW1lbGl1bUBoZG1pLWhwZC1mYXN0Lmh0
bWwKCiAgKiBpZ3RAa21zX2ZvcmNlX2Nvbm5lY3Rvcl9iYXNpY0BwcnVuZS1zdGFsZS1tb2RlczoK
ICAgIC0gZmkta2JsLXgxMjc1OiAgICAgICBbRE1FU0ctV0FSTl1bMjZdIChbZmRvIzEwMzU1OF0g
LyBbZmRvIzEwNTYwMl0gLyBbZmRvIzEwNTc2M10pIC0+IFtETUVTRy1XQVJOXVsyN10gKFtmZG8j
MTAzNTU4XSAvIFtmZG8jMTA1NjAyXSkgKzQgc2ltaWxhciBpc3N1ZXMKICAgWzI2XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQzOS9maS1rYmwteDEy
NzUvaWd0QGttc19mb3JjZV9jb25uZWN0b3JfYmFzaWNAcHJ1bmUtc3RhbGUtbW9kZXMuaHRtbAog
ICBbMjddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNTUwMS9maS1rYmwteDEyNzUvaWd0QGttc19mb3JjZV9jb25uZWN0b3JfYmFzaWNAcHJ1bmUt
c3RhbGUtbW9kZXMuaHRtbAoKICAKICB7bmFtZX06IFRoaXMgZWxlbWVudCBpcyBzdXBwcmVzc2Vk
LiBUaGlzIG1lYW5zIGl0IGlzIGlnbm9yZWQgd2hlbiBjb21wdXRpbmcKICAgICAgICAgIHRoZSBz
dGF0dXMgb2YgdGhlIGRpZmZlcmVuY2UgKFNVQ0NFU1MsIFdBUk5JTkcsIG9yIEZBSUxVUkUpLgoK
ICBbZmRvIzEwMjY1N106IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTEwMjY1NwogIFtmZG8jMTAzNTU4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTAzNTU4CiAgW2ZkbyMxMDU2MDJdOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDU2MDIKICBbZmRvIzEwNTc2M106IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNTc2MwogIFtmZG8jMTA3NzEz
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NzEzCiAg
W2ZkbyMxMDkyNzFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMDkyNzEKICBbZmRvIzExMTA0NV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTExMTA0NQogIFtmZG8jMTExMDk2XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMDk2CiAgW2ZkbyMxMTE0MDddOiBodHRwczovL2J1
Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE0MDcKICBbZmRvIzExMjI2MV06
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMjI2MQogIFtm
ZG8jMTEyMjY5XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTEyMjY5CgoKUGFydGljaXBhdGluZyBob3N0cyAoNTAgLT4gNDMpCi0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQoKICBBZGRpdGlvbmFsICgyKTogZmktaXZiLTM3NzAgZmktYXBsLWd1YyAK
ICBNaXNzaW5nICAgICg5KTogZmktaWxrLW01NDAgZmktaHN3LTQyMDB1IGZpLWJzdy1jeWFuIGZp
LXNuYi0yNTIwbSBmaS1jdGctcDg2MDAgZmktZ2RnLTU1MSBmaS1ieXQtY2xhcHBlciBmaS1iZHct
c2FtdXMgZmktc25iLTI2MDAgCgoKQnVpbGQgY2hhbmdlcwotLS0tLS0tLS0tLS0tCgogICogQ0k6
IENJLTIwMTkwNTI5IC0+IE5vbmUKICAqIExpbnV4OiBDSV9EUk1fNzQzOSAtPiBQYXRjaHdvcmtf
MTU1MDEKCiAgQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5CiAgQ0lfRFJNXzc0Mzk6IGJlYWE0YmZkOTI4
NmZiZTA0MmQ3NzA1YjAwMTQwZjIxOGRiMTQ4ZjggQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9w
Lm9yZy9nZngtY2kvbGludXgKICBJR1RfNTMxNTogNTg3MDVlYjFiZDI5NDE0MjQ0ZjRkMGNmYTA4
YTlmMGNlNDJkNjU0NSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hvcmcvYXBwL2lu
dGVsLWdwdS10b29scwogIFBhdGNod29ya18xNTUwMTogMDY0YWFiZGQ3MTkxOGI4YjE3MzNiZGM3
MWY2N2Y1NTAwNGYxMjk2YyBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9s
aW51eAoKCj09IExpbnV4IGNvbW1pdHMgPT0KCjA2NGFhYmRkNzE5MSBkcm0vaTkxNS9nZW43OiBS
ZS1lbmFibGUgZnVsbC1wcGd0dCBmb3IgaXZiLCBieXQsIGhzdwoKPT0gTG9ncyA9PQoKRm9yIG1v
cmUgZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE1NTAxL2luZGV4Lmh0bWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
