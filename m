Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 630B7FE1CB
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 16:49:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C42E06E8FD;
	Fri, 15 Nov 2019 15:49:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1005 seconds by postgrey-1.36 at gabe;
 Fri, 15 Nov 2019 15:49:36 UTC
Received: from mail.lekensteyn.nl (mail.lekensteyn.nl
 [IPv6:2a02:2308::360:1:25])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1C7C6E902
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 15:49:36 +0000 (UTC)
Received: by lekensteyn.nl with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <peter@lekensteyn.nl>)
 id 1iVdaY-0006g7-MP; Fri, 15 Nov 2019 16:32:47 +0100
From: Peter Wu <peter@lekensteyn.nl>
To: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Date: Fri, 15 Nov 2019 16:32:47 +0100
Message-Id: <20191115153247.372989-1-peter@lekensteyn.nl>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Status: No, hits=-0.0 required=5.0 tests=NO_RELAYS=-0.001
 autolearn=unavailable autolearn_force=no
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lekensteyn.nl; s=s2048-2015-q1; 
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From;
 bh=w/nwO8JZ+MnwVvuCdNrlkjO9VC8WIK3U6NEujoCsXu0=; 
 b=szAEaFRAZK+zKev7j0g4AJx40XsuHJoyYGfp0gYzvzCCz6TBDO3pZAxKmVgMdHPiFPN6QH9+9ufPlDuOW3rwdHNoQhbh+YSqUDc4KqKkQrcq6r2kl1odQDtfgoH4gqtRBcz91oyi4Yz6fKlI1weXhJzzAs2XnZvLaTUivo0Dv903bBkhHKIQQDJUenA2UuvDowC3WSfQwArerdO8d0cxnmRK/8WrjkcOoMWpU1bVNsknvfFPWHf2K+PQte+EijPMbPzsepYINiqLsOBrQ0FSqw4h6ZqEcd54Hnu3220wVkUNU4keTWZJIl4EB1Jy0Id+D5m/zml4mZ/kiJM0cqqKlA==;
Subject: [Intel-gfx] [PATCH xf86-video-intel v2] SNA: fix PRIME output
 support since xserver 1.20
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2luY2UgIk1ha2UgUGl4bWFwRGlydHlVcGRhdGVSZWM6OnNyYyBhIERyYXdhYmxlUHRyIiBpbiB4
c2VydmVyLCB0aGUKInNyYyIgcG9pbnRlciBtaWdodCBwb2ludCB0byB0aGUgcm9vdCB3aW5kb3cg
KGNyZWF0ZWQgYnkgdGhlIHNlcnZlcikKaW5zdGVhZCBvZiBhIHBpeG1hcCAoYXMgY3JlYXRlZCBi
eSB4Zjg2LXZpZGVvLWludGVsKS4gVXNlCmdldF9kcmF3YWJsZV9waXhtYXAgdG8gaGFuZGxlIGJv
dGggY2FzZXMuCgpXaGVuIGJ1aWx0IHdpdGggLWZzYW5pdGl6ZT1hZGRyZXNzLCB0aGUgZm9sbG93
aW5nIHRlc3Qgb24gYSBoeWJyaWQKZ3JhcGhpY3MgbGFwdG9wIHdpbGwgdHJpZ2dlciBhIGhlYXAt
YnVmZmVyLW92ZXJmbG93IGVycm9yIGR1ZSB0bwp0b19zbmFfZnJvbV9waXhtYXAgcmVjZWl2aW5n
IGEgd2luZG93IGluc3RlYWQgb2YgYSBwaXhtYXA6CgogICAgeHJhbmRyIC0tc2V0cHJvdmlkZXJv
dXRwdXRzb3VyY2UgbW9kZXNldHRpbmcgSW50ZWwKICAgIHhyYW5kciAtLW91dHB1dCBEUC0xLTEg
LS1tb2RlIDI1NjB4MTQ0MCAgIyBzaG91bGQgbm90IGNyYXNoCiAgICBnbHhnZWFycyAgIyBzaG91
bGQgZGlzcGxheSBnZWFycyBvbiBib3RoIHNjcmVlbnMKCldpdGggbm91dmVhdSBpbnN0ZWFkIG9m
IG1vZGVzZXR0aW5nLCBpdCBkb2VzIG5vdCBjcmFzaCBidXQgdGhlIGV4dGVybmFsCm1vbml0b3Ig
cmVtYWlucyBibGFuayBhc2lkZSBmcm9tIGEgbW91c2UgY3Vyc29yLiBUaGlzIHBhdGNoIGZpeGVz
IGJvdGguCgpCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTAwMDg2ClNpZ25lZC1vZmYtYnk6IFBldGVyIFd1IDxwZXRlckBsZWtlbnN0ZXluLm5s
PgotLS0KdjE6IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL2FyY2hpdmVzL2ludGVsLWdm
eC8yMDE4LUF1Z3VzdC8xNzM1MjIuaHRtbAp2MjogcmViYXNlZCBvbiBjdXJyZW50IG1hc3RlciAo
Mi45OS45MTctODkzLWdiZmY1ZWNhNCksIHJld29yZGVkIGNvbW1pdC4KClRoaXMgcGF0Y2ggaGFz
IGJlZW4gdGVzdGVkIGF0IGh0dHBzOi8vYnVncy5hcmNobGludXgub3JnL3Rhc2svNjQyMzgsIEkK
aGF2ZSBhZGRpdGlvbmFsbHkgdGVzdGVkIGl0IHdpdGggYm90aCBtb2Rlc2V0dGluZyBhbmQgbm91
dmVhdSB1bmRlcgpBU0FOLCB0aGUgbW9kZXNldHRpbmcgQVNBTiB0cmFjZSBmb3IgdW5wYXRjaGVk
IGludGVsIGNhbiBiZSBmb3VuZCBhdDoKaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93
X2J1Zy5jZ2k/aWQ9MTAwMDg2I2MyNAoKY29tbWl0IDIuOTkuOTE3LTg5MS1nNTgxZGRjNWQgKCJz
bmE6IEZpeCBjb21waWxlciB3YXJuaW5ncyBkdWUgdG8KRHJhd2FibGVQdHIgdnMuIFBpeG1hcFB0
ciIpIGluY29ycG9yYXRlZCBhbGwgY29tcGlsZXIgd2FybmluZyBmaXhlcyBmcm9tCnYxIG9mIHRo
aXMgcGF0Y2gsIGJ1dCB1bmZvcnR1bmF0ZWx5IGxhY2tzIHRoaXMgY3J1Y2lhbCBidWdmaXguCi0t
LQogc3JjL3NuYS9zbmFfYWNjZWwuYyB8IDYgKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNl
cnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy9zbmEvc25hX2FjY2Vs
LmMgYi9zcmMvc25hL3NuYV9hY2NlbC5jCmluZGV4IGZhMzg2ZmY2Li5lZTg1N2ExNCAxMDA2NDQK
LS0tIGEvc3JjL3NuYS9zbmFfYWNjZWwuYworKysgYi9zcmMvc25hL3NuYV9hY2NlbC5jCkBAIC0x
NzY4NCwxMCArMTc2ODQsMTAgQEAgc3RhdGljIHZvaWQgc25hX2FjY2VsX3Bvc3RfZGFtYWdlKHN0
cnVjdCBzbmEgKnNuYSkKIAkJCWNvbnRpbnVlOwogCiAjaWZkZWYgSEFTX0RJUlRZVFJBQ0tJTkdf
RFJBV0FCTEVfU1JDCi0JCWFzc2VydChkaXJ0eS0+c3JjLT50eXBlID09IERSQVdBQkxFX1BJWE1B
UCk7CisJCXNyYyA9IGdldF9kcmF3YWJsZV9waXhtYXAoZGlydHktPnNyYyk7CisjZWxzZQorCQlz
cmMgPSBkaXJ0eS0+c3JjOwogI2VuZGlmCi0KLQkJc3JjID0gKFBpeG1hcFB0cilkaXJ0eS0+c3Jj
OwogCQlkc3QgPSBkaXJ0eS0+c2xhdmVfZHN0LT5tYXN0ZXJfcGl4bWFwOwogCiAJCXJlZ2lvbi5l
eHRlbnRzLngxID0gZGlydHktPng7Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
