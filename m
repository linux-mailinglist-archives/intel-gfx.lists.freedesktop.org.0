Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C58743684
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 15:27:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C8C489A14;
	Thu, 13 Jun 2019 13:27:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2FB42899E9;
 Thu, 13 Jun 2019 13:27:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 27E08A011B;
 Thu, 13 Jun 2019 13:27:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 13 Jun 2019 13:27:53 -0000
Message-ID: <20190613132753.17469.49039@emeril.freedesktop.org>
References: <20190613115809.30156-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190613115809.30156-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_Refine_i915=5Freset=2Elock=5Fmap?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFJlZmluZSBpOTE1X3Jlc2V0
LmxvY2tfbWFwClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmll
cy82MjAxNy8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpDSSBCdWcgTG9nIC0gY2hh
bmdlcyBmcm9tIENJX0RSTV82MjU4IC0+IFBhdGNod29ya18xMzI2OQo9PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CgpTdW1tYXJ5Ci0tLS0tLS0KCiAg
KipGQUlMVVJFKioKCiAgU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdpdGggUGF0Y2h3
b3JrXzEzMjY5IGFic29sdXRlbHkgbmVlZCB0byBiZQogIHZlcmlmaWVkIG1hbnVhbGx5LgogIAog
IElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0
aCB0aGUgY2hhbmdlcwogIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzEzMjY5LCBwbGVhc2Ugbm90
aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cgdGhlbQogIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZh
aWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLgoKICBF
eHRlcm5hbCBVUkw6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzEzMjY5LwoKUG9zc2libGUgbmV3IGlzc3VlcwotLS0tLS0tLS0tLS0tLS0tLS0tCgog
IEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVj
ZWQgaW4gUGF0Y2h3b3JrXzEzMjY5OgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBQb3NzaWJs
ZSByZWdyZXNzaW9ucyAjIyMjCgogICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV93b3JrYXJvdW5k
czoKICAgIC0gZmktaXZiLTM3NzA6ICAgICAgICBbUEFTU11bMV0gLT4gW0RNRVNHLVdBUk5dWzJd
CiAgIFsxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NjI1OC9maS1pdmItMzc3MC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX3dvcmthcm91bmRzLmh0bWwK
ICAgWzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xMzI2OS9maS1pdmItMzc3MC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX3dvcmthcm91bmRzLmh0
bWwKICAgIC0gZmktaWxrLTY1MDogICAgICAgICBbUEFTU11bM10gLT4gW0RNRVNHLVdBUk5dWzRd
CiAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NjI1OC9maS1pbGstNjUwL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfd29ya2Fyb3VuZHMuaHRtbAog
ICBbNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzEzMjY5L2ZpLWlsay02NTAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV93b3JrYXJvdW5kcy5odG1s
CiAgICAtIGZpLWJzdy1uMzA1MDogICAgICAgW1BBU1NdWzVdIC0+IFtETUVTRy1XQVJOXVs2XQog
ICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYy
NTgvZmktYnN3LW4zMDUwL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfd29ya2Fyb3VuZHMuaHRtbAog
ICBbNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzEzMjY5L2ZpLWJzdy1uMzA1MC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX3dvcmthcm91bmRzLmh0
bWwKICAgIC0gZmktY2ZsLWd1YzogICAgICAgICBbUEFTU11bN10gLT4gW0RNRVNHLVdBUk5dWzhd
CiAgIFs3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NjI1OC9maS1jZmwtZ3VjL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfd29ya2Fyb3VuZHMuaHRtbAog
ICBbOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzEzMjY5L2ZpLWNmbC1ndWMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV93b3JrYXJvdW5kcy5odG1s
CiAgICAtIGZpLWNtbC11OiAgICAgICAgICAgW1BBU1NdWzldIC0+IFtETUVTRy1XQVJOXVsxMF0K
ICAgWzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82
MjU4L2ZpLWNtbC11L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfd29ya2Fyb3VuZHMuaHRtbAogICBb
MTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
MzI2OS9maS1jbWwtdS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX3dvcmthcm91bmRzLmh0bWwKICAg
IC0gZmktZ2xrLWRzaTogICAgICAgICBOT1RSVU4gLT4gW0RNRVNHLVdBUk5dWzExXQogICBbMTFd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI2
OS9maS1nbGstZHNpL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfd29ya2Fyb3VuZHMuaHRtbAogICAg
LSBmaS1ic3cta2Vma2E6ICAgICAgIFtQQVNTXVsxMl0gLT4gW0RNRVNHLVdBUk5dWzEzXQogICBb
MTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjU4
L2ZpLWJzdy1rZWZrYS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX3dvcmthcm91bmRzLmh0bWwKICAg
WzEzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTMyNjkvZmktYnN3LWtlZmthL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfd29ya2Fyb3VuZHMuaHRt
bAogICAgLSBmaS1ibGItZTY4NTA6ICAgICAgIFtQQVNTXVsxNF0gLT4gW0RNRVNHLVdBUk5dWzE1
XQogICBbMTRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV82MjU4L2ZpLWJsYi1lNjg1MC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX3dvcmthcm91bmRzLmh0
bWwKICAgWzE1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTMyNjkvZmktYmxiLWU2ODUwL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfd29ya2Fyb3Vu
ZHMuaHRtbAogICAgLSBmaS1rYmwtNzUwMHU6ICAgICAgIFtQQVNTXVsxNl0gLT4gW0RNRVNHLVdB
Uk5dWzE3XQogICBbMTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV82MjU4L2ZpLWtibC03NTAwdS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX3dvcmthcm91
bmRzLmh0bWwKICAgWzE3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTMyNjkvZmkta2JsLTc1MDB1L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfd29y
a2Fyb3VuZHMuaHRtbAogICAgLSBmaS1oc3ctNDc3MHI6ICAgICAgIFtQQVNTXVsxOF0gLT4gW0RN
RVNHLVdBUk5dWzE5XQogICBbMThdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV82MjU4L2ZpLWhzdy00Nzcwci9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX3dv
cmthcm91bmRzLmh0bWwKICAgWzE5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTMyNjkvZmktaHN3LTQ3NzByL2lndEBpOTE1X3NlbGZ0ZXN0QGxp
dmVfd29ya2Fyb3VuZHMuaHRtbAogICAgLSBmaS1jZmwtODEwOXU6ICAgICAgIFtQQVNTXVsyMF0g
LT4gW0RNRVNHLVdBUk5dWzIxXQogICBbMjBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV82MjU4L2ZpLWNmbC04MTA5dS9pZ3RAaTkxNV9zZWxmdGVzdEBs
aXZlX3dvcmthcm91bmRzLmh0bWwKICAgWzIxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMyNjkvZmktY2ZsLTgxMDl1L2lndEBpOTE1X3NlbGZ0
ZXN0QGxpdmVfd29ya2Fyb3VuZHMuaHRtbAogICAgLSBmaS1rYmwtZ3VjOiAgICAgICAgIFtQQVNT
XVsyMl0gLT4gW0RNRVNHLVdBUk5dWzIzXQogICBbMjJdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjU4L2ZpLWtibC1ndWMvaWd0QGk5MTVfc2VsZnRl
c3RAbGl2ZV93b3JrYXJvdW5kcy5odG1sCiAgIFsyM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMjY5L2ZpLWtibC1ndWMvaWd0QGk5MTVfc2Vs
ZnRlc3RAbGl2ZV93b3JrYXJvdW5kcy5odG1sCiAgICAtIGZpLXNrbC02NjAwdTogICAgICAgW1BB
U1NdWzI0XSAtPiBbRE1FU0ctV0FSTl1bMjVdCiAgIFsyNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyNTgvZmktc2tsLTY2MDB1L2lndEBpOTE1X3Nl
bGZ0ZXN0QGxpdmVfd29ya2Fyb3VuZHMuaHRtbAogICBbMjVdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI2OS9maS1za2wtNjYwMHUvaWd0QGk5
MTVfc2VsZnRlc3RAbGl2ZV93b3JrYXJvdW5kcy5odG1sCiAgICAtIGZpLXBudi1kNTEwOiAgICAg
ICAgW1BBU1NdWzI2XSAtPiBbRE1FU0ctV0FSTl1bMjddCiAgIFsyNl06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyNTgvZmktcG52LWQ1MTAvaWd0QGk5
MTVfc2VsZnRlc3RAbGl2ZV93b3JrYXJvdW5kcy5odG1sCiAgIFsyN106IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMjY5L2ZpLXBudi1kNTEwL2ln
dEBpOTE1X3NlbGZ0ZXN0QGxpdmVfd29ya2Fyb3VuZHMuaHRtbAogICAgLSBmaS1iZHctNTU1N3U6
ICAgICAgIFtQQVNTXVsyOF0gLT4gW0RNRVNHLVdBUk5dWzI5XQogICBbMjhdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjU4L2ZpLWJkdy01NTU3dS9p
Z3RAaTkxNV9zZWxmdGVzdEBsaXZlX3dvcmthcm91bmRzLmh0bWwKICAgWzI5XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMyNjkvZmktYmR3LTU1
NTd1L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfd29ya2Fyb3VuZHMuaHRtbAogICAgLSBmaS1rYmwt
NzU2N3U6ICAgICAgIFtQQVNTXVszMF0gLT4gW0RNRVNHLVdBUk5dWzMxXQogICBbMzBdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjU4L2ZpLWtibC03
NTY3dS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX3dvcmthcm91bmRzLmh0bWwKICAgWzMxXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMyNjkvZmkt
a2JsLTc1Njd1L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfd29ya2Fyb3VuZHMuaHRtbAogICAgLSBm
aS13aGwtdTogICAgICAgICAgIFtQQVNTXVszMl0gLT4gW0RNRVNHLVdBUk5dWzMzXQogICBbMzJd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjU4L2Zp
LXdobC11L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfd29ya2Fyb3VuZHMuaHRtbAogICBbMzNdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI2OS9m
aS13aGwtdS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX3dvcmthcm91bmRzLmh0bWwKICAgIC0gZmkt
aWNsLWRzaTogICAgICAgICBbUEFTU11bMzRdIC0+IFtETUVTRy1XQVJOXVszNV0KICAgWzM0XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI1OC9maS1p
Y2wtZHNpL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfd29ya2Fyb3VuZHMuaHRtbAogICBbMzVdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI2OS9m
aS1pY2wtZHNpL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfd29ya2Fyb3VuZHMuaHRtbAogICAgLSBm
aS1hcGwtZ3VjOiAgICAgICAgIFtQQVNTXVszNl0gLT4gW0RNRVNHLVdBUk5dWzM3XQogICBbMzZd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjU4L2Zp
LWFwbC1ndWMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV93b3JrYXJvdW5kcy5odG1sCiAgIFszN106
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMjY5
L2ZpLWFwbC1ndWMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV93b3JrYXJvdW5kcy5odG1sCiAgICAt
IGZpLWJ5dC1uMjgyMDogICAgICAgW1BBU1NdWzM4XSAtPiBbRE1FU0ctV0FSTl1bMzldCiAgIFsz
OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyNTgv
ZmktYnl0LW4yODIwL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfd29ya2Fyb3VuZHMuaHRtbAogICBb
MzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
MzI2OS9maS1ieXQtbjI4MjAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV93b3JrYXJvdW5kcy5odG1s
CiAgICAtIGZpLXNrbC02NzAwazI6ICAgICAgW1BBU1NdWzQwXSAtPiBbRE1FU0ctV0FSTl1bNDFd
CiAgIFs0MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzYyNTgvZmktc2tsLTY3MDBrMi9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX3dvcmthcm91bmRzLmh0
bWwKICAgWzQxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTMyNjkvZmktc2tsLTY3MDBrMi9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX3dvcmthcm91
bmRzLmh0bWwKICAgIC0gZmktZWxrLWU3NTAwOiAgICAgICBbUEFTU11bNDJdIC0+IFtETUVTRy1X
QVJOXVs0M10KICAgWzQyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNjI1OC9maS1lbGstZTc1MDAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV93b3JrYXJv
dW5kcy5odG1sCiAgIFs0M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzEzMjY5L2ZpLWVsay1lNzUwMC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX3dv
cmthcm91bmRzLmh0bWwKICAgIC0gZmktYnl0LWoxOTAwOiAgICAgICBbUEFTU11bNDRdIC0+IFtE
TUVTRy1XQVJOXVs0NV0KICAgWzQ0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNjI1OC9maS1ieXQtajE5MDAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV93
b3JrYXJvdW5kcy5odG1sCiAgIFs0NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzEzMjY5L2ZpLWJ5dC1qMTkwMC9pZ3RAaTkxNV9zZWxmdGVzdEBs
aXZlX3dvcmthcm91bmRzLmh0bWwKICAgIC0gZmktc2tsLWlvbW11OiAgICAgICBbUEFTU11bNDZd
IC0+IFtETUVTRy1XQVJOXVs0N10KICAgWzQ2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI1OC9maS1za2wtaW9tbXUvaWd0QGk5MTVfc2VsZnRlc3RA
bGl2ZV93b3JrYXJvdW5kcy5odG1sCiAgIFs0N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMjY5L2ZpLXNrbC1pb21tdS9pZ3RAaTkxNV9zZWxm
dGVzdEBsaXZlX3dvcmthcm91bmRzLmh0bWwKICAgIC0gZmktc2tsLWxtZW06ICAgICAgICBbUEFT
U11bNDhdIC0+IFtETUVTRy1XQVJOXVs0OV0KICAgWzQ4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI1OC9maS1za2wtbG1lbS9pZ3RAaTkxNV9zZWxm
dGVzdEBsaXZlX3dvcmthcm91bmRzLmh0bWwKICAgWzQ5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMyNjkvZmktc2tsLWxtZW0vaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZV93b3JrYXJvdW5kcy5odG1sCiAgICAtIGZpLXNuYi0yNjAwOiAgICAgICAg
W1BBU1NdWzUwXSAtPiBbRE1FU0ctV0FSTl1bNTFdCiAgIFs1MF06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyNTgvZmktc25iLTI2MDAvaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZV93b3JrYXJvdW5kcy5odG1sCiAgIFs1MV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMjY5L2ZpLXNuYi0yNjAwL2lndEBp
OTE1X3NlbGZ0ZXN0QGxpdmVfd29ya2Fyb3VuZHMuaHRtbAogICAgLSBmaS1za2wtNjc3MGhxOiAg
ICAgIFtQQVNTXVs1Ml0gLT4gW0RNRVNHLVdBUk5dWzUzXQogICBbNTJdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjU4L2ZpLXNrbC02NzcwaHEvaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZV93b3JrYXJvdW5kcy5odG1sCiAgIFs1M106IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMjY5L2ZpLXNrbC02Nzcw
aHEvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV93b3JrYXJvdW5kcy5odG1sCiAgICAtIGZpLWtibC14
MTI3NTogICAgICAgW1BBU1NdWzU0XSAtPiBbRE1FU0ctV0FSTl1bNTVdCiAgIFs1NF06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyNTgvZmkta2JsLXgx
Mjc1L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfd29ya2Fyb3VuZHMuaHRtbAogICBbNTVdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI2OS9maS1r
YmwteDEyNzUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV93b3JrYXJvdW5kcy5odG1sCiAgICAtIGZp
LWljbC11MzogICAgICAgICAgW1BBU1NdWzU2XSAtPiBbRE1FU0ctV0FSTl1bNTddCiAgIFs1Nl06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyNTgvZmkt
aWNsLXUzL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfd29ya2Fyb3VuZHMuaHRtbAogICBbNTddOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI2OS9m
aS1pY2wtdTMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV93b3JrYXJvdW5kcy5odG1sCiAgICAtIGZp
LWJ4dC1qNDIwNTogICAgICAgW1BBU1NdWzU4XSAtPiBbRE1FU0ctV0FSTl1bNTldCiAgIFs1OF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyNTgvZmkt
Ynh0LWo0MjA1L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfd29ya2Fyb3VuZHMuaHRtbAogICBbNTld
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI2
OS9maS1ieHQtajQyMDUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV93b3JrYXJvdW5kcy5odG1sCiAg
ICAtIGZpLXNrbC02MjYwdTogICAgICAgW1BBU1NdWzYwXSAtPiBbRE1FU0ctV0FSTl1bNjFdCiAg
IFs2MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYy
NTgvZmktc2tsLTYyNjB1L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfd29ya2Fyb3VuZHMuaHRtbAog
ICBbNjFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xMzI2OS9maS1za2wtNjI2MHUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV93b3JrYXJvdW5kcy5o
dG1sCiAgICAtIGZpLWtibC1yOiAgICAgICAgICAgTk9UUlVOIC0+IFtETUVTRy1XQVJOXVs2Ml0K
ICAgWzYyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTMyNjkvZmkta2JsLXIvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV93b3JrYXJvdW5kcy5odG1s
CiAgICAtIGZpLXNrbC1ndnRkdm06ICAgICAgW1BBU1NdWzYzXSAtPiBbRE1FU0ctV0FSTl1bNjRd
CiAgIFs2M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzYyNTgvZmktc2tsLWd2dGR2bS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX3dvcmthcm91bmRzLmh0
bWwKICAgWzY0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTMyNjkvZmktc2tsLWd2dGR2bS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX3dvcmthcm91
bmRzLmh0bWwKICAgIC0gZmkta2JsLTg4MDlnOiAgICAgICBbUEFTU11bNjVdIC0+IFtETUVTRy1X
QVJOXVs2Nl0KICAgWzY1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNjI1OC9maS1rYmwtODgwOWcvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV93b3JrYXJv
dW5kcy5odG1sCiAgIFs2Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzEzMjY5L2ZpLWtibC04ODA5Zy9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX3dv
cmthcm91bmRzLmh0bWwKICAgIC0gZmktaHN3LXBlcHB5OiAgICAgICBbUEFTU11bNjddIC0+IFtE
TUVTRy1XQVJOXVs2OF0KICAgWzY3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNjI1OC9maS1oc3ctcGVwcHkvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV93
b3JrYXJvdW5kcy5odG1sCiAgIFs2OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzEzMjY5L2ZpLWhzdy1wZXBweS9pZ3RAaTkxNV9zZWxmdGVzdEBs
aXZlX3dvcmthcm91bmRzLmh0bWwKICAgIC0gZmktYmR3LWd2dGR2bTogICAgICBbUEFTU11bNjld
IC0+IFtETUVTRy1XQVJOXVs3MF0KICAgWzY5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI1OC9maS1iZHctZ3Z0ZHZtL2lndEBpOTE1X3NlbGZ0ZXN0
QGxpdmVfd29ya2Fyb3VuZHMuaHRtbAogICBbNzBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI2OS9maS1iZHctZ3Z0ZHZtL2lndEBpOTE1X3Nl
bGZ0ZXN0QGxpdmVfd29ya2Fyb3VuZHMuaHRtbAogICAgLSBmaS1nZGctNTUxOiAgICAgICAgIFtQ
QVNTXVs3MV0gLT4gW0RNRVNHLVdBUk5dWzcyXQogICBbNzFdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjU4L2ZpLWdkZy01NTEvaWd0QGk5MTVfc2Vs
ZnRlc3RAbGl2ZV93b3JrYXJvdW5kcy5odG1sCiAgIFs3Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMjY5L2ZpLWdkZy01NTEvaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZV93b3JrYXJvdW5kcy5odG1sCiAgICAtIGZpLWJ3ci0yMTYwOiAgICAgICAg
W1BBU1NdWzczXSAtPiBbRE1FU0ctV0FSTl1bNzRdCiAgIFs3M106IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyNTgvZmktYndyLTIxNjAvaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZV93b3JrYXJvdW5kcy5odG1sCiAgIFs3NF06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMjY5L2ZpLWJ3ci0yMTYwL2lndEBp
OTE1X3NlbGZ0ZXN0QGxpdmVfd29ya2Fyb3VuZHMuaHRtbAogICAgLSBmaS1za2wtZ3VjOiAgICAg
ICAgIFtQQVNTXVs3NV0gLT4gW0RNRVNHLVdBUk5dWzc2XQogICBbNzVdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjU4L2ZpLXNrbC1ndWMvaWd0QGk5
MTVfc2VsZnRlc3RAbGl2ZV93b3JrYXJvdW5kcy5odG1sCiAgIFs3Nl06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMjY5L2ZpLXNrbC1ndWMvaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZV93b3JrYXJvdW5kcy5odG1sCiAgICAtIGZpLXNuYi0yNTIwbTog
ICAgICAgW1BBU1NdWzc3XSAtPiBbRE1FU0ctV0FSTl1bNzhdCiAgIFs3N106IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyNTgvZmktc25iLTI1MjBtL2ln
dEBpOTE1X3NlbGZ0ZXN0QGxpdmVfd29ya2Fyb3VuZHMuaHRtbAogICBbNzhdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI2OS9maS1zbmItMjUy
MG0vaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV93b3JrYXJvdW5kcy5odG1sCiAgICAtIGZpLWhzdy00
NzcwOiAgICAgICAgW1BBU1NdWzc5XSAtPiBbRE1FU0ctV0FSTl1bODBdCiAgIFs3OV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyNTgvZmktaHN3LTQ3
NzAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV93b3JrYXJvdW5kcy5odG1sCiAgIFs4MF06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMjY5L2ZpLWhz
dy00NzcwL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfd29ya2Fyb3VuZHMuaHRtbAogICAgLSBmaS1i
eHQtZHNpOiAgICAgICAgIE5PVFJVTiAtPiBbRE1FU0ctV0FSTl1bODFdCiAgIFs4MV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMjY5L2ZpLWJ4
dC1kc2kvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV93b3JrYXJvdW5kcy5odG1sCiAgICAtIGZpLWNm
bC04NzAwazogICAgICAgW1BBU1NdWzgyXSAtPiBbRE1FU0ctV0FSTl1bODNdCiAgIFs4Ml06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYyNTgvZmktY2Zs
LTg3MDBrL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfd29ya2Fyb3VuZHMuaHRtbAogICBbODNdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI2OS9m
aS1jZmwtODcwMGsvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV93b3JrYXJvdW5kcy5odG1sCiAgICAt
IGZpLWljbC11MjogICAgICAgICAgTk9UUlVOIC0+IFtETUVTRy1XQVJOXVs4NF0KICAgWzg0XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMyNjkv
ZmktaWNsLXUyL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfd29ya2Fyb3VuZHMuaHRtbAogICAgLSBm
aS1jbWwtdTI6ICAgICAgICAgIFtQQVNTXVs4NV0gLT4gW0RNRVNHLVdBUk5dWzg2XQogICBbODVd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MjU4L2Zp
LWNtbC11Mi9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX3dvcmthcm91bmRzLmh0bWwKICAgWzg2XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMyNjkv
ZmktY21sLXUyL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfd29ya2Fyb3VuZHMuaHRtbAoKICAqIGln
dEBydW5uZXJAYWJvcnRlZDoKICAgIC0gZmktaWxrLTY1MDogICAgICAgICBOT1RSVU4gLT4gW0ZB
SUxdWzg3XQogICBbODddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xMzI2OS9maS1pbGstNjUwL2lndEBydW5uZXJAYWJvcnRlZC5odG1sCiAgICAt
IGZpLXBudi1kNTEwOiAgICAgICAgTk9UUlVOIC0+IFtGQUlMXVs4OF0KICAgWzg4XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMyNjkvZmktcG52
LWQ1MTAvaWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwKICAgIC0gZmktYmR3LWd2dGR2bTogICAgICBO
T1RSVU4gLT4gW0ZBSUxdWzg5XQogICBbODldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI2OS9maS1iZHctZ3Z0ZHZtL2lndEBydW5uZXJAYWJv
cnRlZC5odG1sCiAgICAtIGZpLWNmbC04MTA5dTogICAgICAgTk9UUlVOIC0+IFtGQUlMXVs5MF0K
ICAgWzkwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTMyNjkvZmktY2ZsLTgxMDl1L2lndEBydW5uZXJAYWJvcnRlZC5odG1sCiAgICAtIGZpLWhz
dy1wZXBweTogICAgICAgTk9UUlVOIC0+IFtGQUlMXVs5MV0KICAgWzkxXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMyNjkvZmktaHN3LXBlcHB5
L2lndEBydW5uZXJAYWJvcnRlZC5odG1sCiAgICAtIGZpLWdkZy01NTE6ICAgICAgICAgTk9UUlVO
IC0+IFtGQUlMXVs5Ml0KICAgWzkyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTMyNjkvZmktZ2RnLTU1MS9pZ3RAcnVubmVyQGFib3J0ZWQuaHRt
bAogICAgLSBmaS1zbmItMjUyMG06ICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bOTNdCiAgIFs5M106
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMjY5
L2ZpLXNuYi0yNTIwbS9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICAgLSBmaS1oc3ctNDc3MDog
ICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bOTRdCiAgIFs5NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMjY5L2ZpLWhzdy00NzcwL2lndEBydW5u
ZXJAYWJvcnRlZC5odG1sCiAgICAtIGZpLWtibC03NTAwdTogICAgICAgTk9UUlVOIC0+IFtGQUlM
XVs5NV0KICAgWzk1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTMyNjkvZmkta2JsLTc1MDB1L2lndEBydW5uZXJAYWJvcnRlZC5odG1sCiAgICAt
IGZpLWJ4dC1qNDIwNTogICAgICAgTk9UUlVOIC0+IFtGQUlMXVs5Nl0KICAgWzk2XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMyNjkvZmktYnh0
LWo0MjA1L2lndEBydW5uZXJAYWJvcnRlZC5odG1sCiAgICAtIGZpLXdobC11OiAgICAgICAgICAg
Tk9UUlVOIC0+IFtGQUlMXVs5N10KICAgWzk3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMyNjkvZmktd2hsLXUvaWd0QHJ1bm5lckBhYm9ydGVk
Lmh0bWwKICAgIC0gZmktY21sLXUyOiAgICAgICAgICBOT1RSVU4gLT4gW0ZBSUxdWzk4XQogICBb
OThdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
MzI2OS9maS1jbWwtdTIvaWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwKICAgIC0gZmktY21sLXU6ICAg
ICAgICAgICBOT1RSVU4gLT4gW0ZBSUxdWzk5XQogICBbOTldOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI2OS9maS1jbWwtdS9pZ3RAcnVubmVy
QGFib3J0ZWQuaHRtbAogICAgLSBmaS1pdmItMzc3MDogICAgICAgIE5PVFJVTiAtPiBbRkFJTF1b
MTAwXQogICBbMTAwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTMyNjkvZmktaXZiLTM3NzAvaWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwKICAgIC0g
ZmktYnh0LWRzaTogICAgICAgICBOT1RSVU4gLT4gW0ZBSUxdWzEwMV0KICAgWzEwMV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMjY5L2ZpLWJ4
dC1kc2kvaWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwKICAgIC0gZmktYnl0LWoxOTAwOiAgICAgICBO
T1RSVU4gLT4gW0ZBSUxdWzEwMl0KICAgWzEwMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMjY5L2ZpLWJ5dC1qMTkwMC9pZ3RAcnVubmVyQGFi
b3J0ZWQuaHRtbAogICAgLSBmaS1jZmwtZ3VjOiAgICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bMTAz
XQogICBbMTAzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTMyNjkvZmktY2ZsLWd1Yy9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICAgLSBmaS1r
YmwtNzU2N3U6ICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bMTA0XQogICBbMTA0XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMyNjkvZmkta2JsLTc1
Njd1L2lndEBydW5uZXJAYWJvcnRlZC5odG1sCiAgICAtIGZpLWJsYi1lNjg1MDogICAgICAgTk9U
UlVOIC0+IFtGQUlMXVsxMDVdCiAgIFsxMDVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI2OS9maS1ibGItZTY4NTAvaWd0QHJ1bm5lckBhYm9y
dGVkLmh0bWwKICAgIC0gZmkta2JsLXgxMjc1OiAgICAgICBOT1RSVU4gLT4gW0ZBSUxdWzEwNl0K
ICAgWzEwNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEzMjY5L2ZpLWtibC14MTI3NS9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICAgLSBmaS1j
ZmwtODcwMGs6ICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bMTA3XQogICBbMTA3XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMyNjkvZmktY2ZsLTg3
MDBrL2lndEBydW5uZXJAYWJvcnRlZC5odG1sCiAgICAtIGZpLWhzdy00NzcwcjogICAgICAgTk9U
UlVOIC0+IFtGQUlMXVsxMDhdCiAgIFsxMDhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI2OS9maS1oc3ctNDc3MHIvaWd0QHJ1bm5lckBhYm9y
dGVkLmh0bWwKICAgIC0gZmkta2JsLTg4MDlnOiAgICAgICBOT1RSVU4gLT4gW0ZBSUxdWzEwOV0K
ICAgWzEwOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEzMjY5L2ZpLWtibC04ODA5Zy9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICAgLSBmaS1h
cGwtZ3VjOiAgICAgICAgIE5PVFJVTiAtPiBbRkFJTF1bMTEwXQogICBbMTEwXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMyNjkvZmktYXBsLWd1
Yy9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICAgLSBmaS1iZHctNTU1N3U6ICAgICAgIE5PVFJV
TiAtPiBbRkFJTF1bMTExXQogICBbMTExXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMyNjkvZmktYmR3LTU1NTd1L2lndEBydW5uZXJAYWJvcnRl
ZC5odG1sCiAgICAtIGZpLWJ5dC1uMjgyMDogICAgICAgTk9UUlVOIC0+IFtGQUlMXVsxMTJdCiAg
IFsxMTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xMzI2OS9maS1ieXQtbjI4MjAvaWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwKICAgIC0gZmkta2Js
LWd1YzogICAgICAgICBOT1RSVU4gLT4gW0ZBSUxdWzExM10KICAgWzExM106IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMjY5L2ZpLWtibC1ndWMv
aWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwKCiAgCiMjIyMgV2FybmluZ3MgIyMjIwoKICAqIGlndEBy
dW5uZXJAYWJvcnRlZDoKICAgIC0gZmkta2JsLXI6ICAgICAgICAgICBbRkFJTF1bMTE0XSAoW2Zk
byMxMDg5MDNdIC8gW2ZkbyMxMDg5MDRdIC8gW2ZkbyMxMDg5MDVdKSAtPiBbRkFJTF1bMTE1XQog
ICBbMTE0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
NjI1OC9maS1rYmwtci9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbAogICBbMTE1XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMyNjkvZmkta2JsLXIv
aWd0QHJ1bm5lckBhYm9ydGVkLmh0bWwKCiAgCktub3duIGlzc3VlcwotLS0tLS0tLS0tLS0KCiAg
SGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzEzMjY5IHRoYXQgY29tZSBm
cm9tIGtub3duIGlzc3VlczoKCiMjIyBJR1QgY2hhbmdlcyAjIyMKCiMjIyMgSXNzdWVzIGhpdCAj
IyMjCgogICogaWd0QGdlbV9jcHVfcmVsb2NAYmFzaWM6CiAgICAtIGZpLWljbC15OiAgICAgICAg
ICAgW1BBU1NdWzExNl0gLT4gW0lOQ09NUExFVEVdWzExN10gKFtmZG8jMTA3NzEzXSAvIFtmZG8j
MTEwMjQ2XSkKICAgWzExNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzYyNTgvZmktaWNsLXkvaWd0QGdlbV9jcHVfcmVsb2NAYmFzaWMuaHRtbAogICBb
MTE3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTMyNjkvZmktaWNsLXkvaWd0QGdlbV9jcHVfcmVsb2NAYmFzaWMuaHRtbAoKICAqIGlndEBwcmlt
ZV9zZWxmX2ltcG9ydEBiYXNpYy13aXRoX29uZV9ibzoKICAgIC0gZmktaWNsLXUzOiAgICAgICAg
ICBbUEFTU11bMTE4XSAtPiBbRE1FU0ctV0FSTl1bMTE5XSAoW2ZkbyMxMDc3MjRdKQogICBbMTE4
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI1OC9m
aS1pY2wtdTMvaWd0QHByaW1lX3NlbGZfaW1wb3J0QGJhc2ljLXdpdGhfb25lX2JvLmh0bWwKICAg
WzExOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzEzMjY5L2ZpLWljbC11My9pZ3RAcHJpbWVfc2VsZl9pbXBvcnRAYmFzaWMtd2l0aF9vbmVfYm8u
aHRtbAoKICAKIyMjIyBQb3NzaWJsZSBmaXhlcyAjIyMjCgogICogaWd0QGdlbV9tbWFwQGJhc2lj
LXNtYWxsLWJvOgogICAgLSBmaS1nbGstZHNpOiAgICAgICAgIFtJTkNPTVBMRVRFXVsxMjBdIChb
ZmRvIzEwMzM1OV0gLyBbZmRvIzExMDcxNV0gLyBbay5vcmcjMTk4MTMzXSkgLT4gW1BBU1NdWzEy
MV0KICAgWzEyMF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzYyNTgvZmktZ2xrLWRzaS9pZ3RAZ2VtX21tYXBAYmFzaWMtc21hbGwtYm8uaHRtbAogICBb
MTIxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTMyNjkvZmktZ2xrLWRzaS9pZ3RAZ2VtX21tYXBAYmFzaWMtc21hbGwtYm8uaHRtbAoKICAqIGln
dEBnZW1fbW1hcF9ndHRAYmFzaWMtc21hbGwtY29weToKICAgIC0gZmktYnh0LWRzaTogICAgICAg
ICBbSU5DT01QTEVURV1bMTIyXSAoW2ZkbyMxMDM5MjddKSAtPiBbUEFTU11bMTIzXQogICBbMTIy
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjI1OC9m
aS1ieHQtZHNpL2lndEBnZW1fbW1hcF9ndHRAYmFzaWMtc21hbGwtY29weS5odG1sCiAgIFsxMjNd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzI2
OS9maS1ieHQtZHNpL2lndEBnZW1fbW1hcF9ndHRAYmFzaWMtc21hbGwtY29weS5odG1sCgogICog
aWd0QGdlbV9tbWFwX2d0dEBiYXNpYy13cml0ZToKICAgIC0gZmktaWNsLXUzOiAgICAgICAgICBb
RE1FU0ctV0FSTl1bMTI0XSAoW2ZkbyMxMDc3MjRdKSAtPiBbUEFTU11bMTI1XSArMSBzaW1pbGFy
IGlzc3VlCiAgIFsxMjRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV82MjU4L2ZpLWljbC11My9pZ3RAZ2VtX21tYXBfZ3R0QGJhc2ljLXdyaXRlLmh0bWwK
ICAgWzEyNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEzMjY5L2ZpLWljbC11My9pZ3RAZ2VtX21tYXBfZ3R0QGJhc2ljLXdyaXRlLmh0bWwKCiAg
KiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGJhc2ljOgogICAgLSBmaS1oc3ctcGVwcHk6
ICAgICAgIFtETUVTRy1XQVJOXVsxMjZdIChbZmRvIzEwMjYxNF0pIC0+IFtQQVNTXVsxMjddCiAg
IFsxMjZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82
MjU4L2ZpLWhzdy1wZXBweS9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGJhc2ljLmh0bWwK
ICAgWzEyN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEzMjY5L2ZpLWhzdy1wZXBweS9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGJhc2lj
Lmh0bWwKCiAgCiMjIyMgV2FybmluZ3MgIyMjIwoKICAqCgo9PSBMb2dzID09CgpGb3IgbW9yZSBk
ZXRhaWxzIHNlZTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTMyNjkvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
