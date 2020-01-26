Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86160149A46
	for <lists+intel-gfx@lfdr.de>; Sun, 26 Jan 2020 11:54:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 649F36E96F;
	Sun, 26 Jan 2020 10:54:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 31C6D6E972;
 Sun, 26 Jan 2020 10:54:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2D8EFA0138;
 Sun, 26 Jan 2020 10:54:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 26 Jan 2020 10:54:45 -0000
Message-ID: <158003608518.5255.5583066570649395209@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200126102346.1877661-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200126102346.1877661-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiB3YXJuaW5nIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B1/6=5D_drm/i915=3A_Remove_=27prefault=5F?=
 =?utf-8?q?disable=27_modparam?=
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvNl0g
ZHJtL2k5MTU6IFJlbW92ZSAncHJlZmF1bHRfZGlzYWJsZScgbW9kcGFyYW0KVVJMICAgOiBodHRw
czovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzcyNTg2LwpTdGF0ZSA6IHdhcm5p
bmcKCj09IFN1bW1hcnkgPT0KCkNBTEwgICAgc2NyaXB0cy9jaGVja3N5c2NhbGxzLnNoCiAgQ0FM
TCAgICBzY3JpcHRzL2F0b21pYy9jaGVjay1hdG9taWNzLnNoCiAgQ0hLICAgICBpbmNsdWRlL2dl
bmVyYXRlZC9jb21waWxlLmgKICBDQyBbTV0gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyYy5vCkluIGZpbGUgaW5jbHVkZWQgZnJvbSAuL2luY2x1ZGUvbGludXgvcHJpbnRrLmg6Nzow
LAogICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L2tlcm5lbC5oOjE1LAogICAg
ICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L2ludGVycnVwdC5oOjYsCiAgICAgICAg
ICAgICAgICAgZnJvbSBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYzoxMzQ6CmRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5jOiBJbiBmdW5jdGlvbiDigJhsaXZl
X2Vycm9yX2ludGVycnVwdOKAmToKLi9pbmNsdWRlL2xpbnV4L2tlcm5fbGV2ZWxzLmg6NToxODog
ZXJyb3I6IGZvcm1hdCDigJglbGTigJkgZXhwZWN0cyBhcmd1bWVudCBvZiB0eXBlIOKAmGxvbmcg
aW504oCZLCBidXQgYXJndW1lbnQgMyBoYXMgdHlwZSDigJhpbnTigJkgWy1XZXJyb3I9Zm9ybWF0
PV0KICNkZWZpbmUgS0VSTl9TT0ggIlwwMDEiICAvKiBBU0NJSSBTdGFydCBPZiBIZWFkZXIgKi8K
ICAgICAgICAgICAgICAgICAgXgouL2luY2x1ZGUvbGludXgva2Vybl9sZXZlbHMuaDoxMToxODog
bm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvIOKAmEtFUk5fU09I4oCZCiAjZGVmaW5lIEtFUk5f
RVJSIEtFUk5fU09IICIzIiAvKiBlcnJvciBjb25kaXRpb25zICovCiAgICAgICAgICAgICAgICAg
IF5+fn5+fn5+Ci4vaW5jbHVkZS9saW51eC9wcmludGsuaDozMDQ6OTogbm90ZTogaW4gZXhwYW5z
aW9uIG9mIG1hY3JvIOKAmEtFUk5fRVJS4oCZCiAgcHJpbnRrKEtFUk5fRVJSIHByX2ZtdChmbXQp
LCAjI19fVkFfQVJHU19fKQogICAgICAgICBefn5+fn5+fgpkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9zZWxmdGVzdF9scmMuYzo1MjI6NTogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvIOKAmHBy
X2VycuKAmQogICAgIHByX2VycigiJXM6IGZhaWxlZCBhdCBwaGFzZVslbGRdIHsgJWQsICVkIH1c
biIsCiAgICAgXn5+fn5+CkluIGZpbGUgaW5jbHVkZWQgZnJvbSBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuYzo1Mjg0OjA6CmRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0
X2xyYy5jOjUyMjozNTogbm90ZTogZm9ybWF0IHN0cmluZyBpcyBkZWZpbmVkIGhlcmUKICAgICBw
cl9lcnIoIiVzOiBmYWlsZWQgYXQgcGhhc2VbJWxkXSB7ICVkLCAlZCB9XG4iLAogICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB+fl4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgJWQKY2MxOiBhbGwgd2FybmluZ3MgYmVpbmcgdHJlYXRlZCBhcyBlcnJvcnMKc2NyaXB0cy9N
YWtlZmlsZS5idWlsZDoyNjU6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMubycgZmFpbGVkCm1ha2VbNF06ICoqKiBbZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjLm9dIEVycm9yIDEKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo1MDM6IHJl
Y2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0vaTkxNScgZmFpbGVkCm1ha2VbM106ICoq
KiBbZHJpdmVycy9ncHUvZHJtL2k5MTVdIEVycm9yIDIKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo1
MDM6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0nIGZhaWxlZAptYWtlWzJdOiAq
KiogW2RyaXZlcnMvZ3B1L2RybV0gRXJyb3IgMgpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjUwMzog
cmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMvZ3B1JyBmYWlsZWQKbWFrZVsxXTogKioqIFtkcml2
ZXJzL2dwdV0gRXJyb3IgMgpNYWtlZmlsZToxNjkzOiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVy
cycgZmFpbGVkCm1ha2U6ICoqKiBbZHJpdmVyc10gRXJyb3IgMgoKPT0gTG9ncyA9PQoKRm9yIG1v
cmUgZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE2MjcwL2J1aWxkXzMyYml0LmxvZwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
