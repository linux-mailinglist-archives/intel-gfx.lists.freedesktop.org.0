Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C9795D04
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 13:15:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 620E16E2AB;
	Tue, 20 Aug 2019 11:15:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D12886E2AB;
 Tue, 20 Aug 2019 11:15:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A6547A41FB;
 Tue, 20 Aug 2019 11:15:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Tue, 20 Aug 2019 11:15:48 -0000
Message-ID: <20190820111548.30808.35037@emeril.freedesktop.org>
References: <20190820081902.24815-1-daniel.vetter@ffwll.ch>
X-Patchwork-Hint: ignore
In-Reply-To: <20190820081902.24815-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_mmu_notifier_debug_annotations/checks?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogbW11IG5vdGlmaWVyIGRlYnVnIGFubm90YXRp
b25zL2NoZWNrcwpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJp
ZXMvNjU0NjUvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRj
aCBvcmlnaW4vZHJtLXRpcAplNjI1ZDAyZGIyN2QgbW0sIG5vdGlmaWVyOiBBZGQgYSBsb2NrZGVw
IG1hcCBmb3IgaW52YWxpZGF0ZV9yYW5nZV9zdGFydC9lbmQKLToxMjk6IFdBUk5JTkc6Tk9fQVVU
SE9SX1NJR05fT0ZGOiBNaXNzaW5nIFNpZ25lZC1vZmYtYnk6IGxpbmUgYnkgbm9taW5hbCBwYXRj
aCBhdXRob3IgJ0RhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+JwoKdG90YWw6
IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgNjAgbGluZXMgY2hlY2tlZAo1MzVlNGM1
YWIxYTIgbW0sIG5vdGlmaWVyOiBQcmltZSBsb2NrZGVwCi06NTA6IFdBUk5JTkc6Tk9fQVVUSE9S
X1NJR05fT0ZGOiBNaXNzaW5nIFNpZ25lZC1vZmYtYnk6IGxpbmUgYnkgbm9taW5hbCBwYXRjaCBh
dXRob3IgJ0RhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+JwoKdG90YWw6IDAg
ZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgMTMgbGluZXMgY2hlY2tlZAo4YWU4M2JiNzEz
ZGEga2VybmVsLmg6IEFkZCBub25fYmxvY2tfc3RhcnQvZW5kKCkKLTo5MzogV0FSTklORzpTSU5H
TEVfU1RBVEVNRU5UX0RPX1dISUxFX01BQ1JPOiBTaW5nbGUgc3RhdGVtZW50IG1hY3JvcyBzaG91
bGQgbm90IHVzZSBhIGRvIHt9IHdoaWxlICgwKSBsb29wCiM5MzogRklMRTogaW5jbHVkZS9saW51
eC9rZXJuZWwuaDoyNDg6CisjIGRlZmluZSBub25fYmxvY2tfc3RhcnQoKSBcCisJZG8geyBjdXJy
ZW50LT5ub25fYmxvY2tfY291bnQrKzsgfSB3aGlsZSAoMCkKCi06MTAwOiBXQVJOSU5HOlNJTkdM
RV9TVEFURU1FTlRfRE9fV0hJTEVfTUFDUk86IFNpbmdsZSBzdGF0ZW1lbnQgbWFjcm9zIHNob3Vs
ZCBub3QgdXNlIGEgZG8ge30gd2hpbGUgKDApIGxvb3AKIzEwMDogRklMRTogaW5jbHVkZS9saW51
eC9rZXJuZWwuaDoyNTU6CisjIGRlZmluZSBub25fYmxvY2tfZW5kKCkgXAorCWRvIHsgV0FSTl9P
TihjdXJyZW50LT5ub25fYmxvY2tfY291bnQtLSA9PSAwKTsgfSB3aGlsZSAoMCkKCi06MTQ3OiBX
QVJOSU5HOlBSRUZFUl9QUl9MRVZFTDogUHJlZmVyIFtzdWJzeXN0ZW0gZWc6IG5ldGRldl1fZXJy
KFtzdWJzeXN0ZW1dZGV2LCAuLi4gdGhlbiBkZXZfZXJyKGRldiwgLi4uIHRoZW4gcHJfZXJyKC4u
LiAgdG8gcHJpbnRrKEtFUk5fRVJSIC4uLgojMTQ3OiBGSUxFOiBrZXJuZWwvc2NoZWQvY29yZS5j
OjM3MTI6CisJCXByaW50ayhLRVJOX0VSUiAiQlVHOiBzY2hlZHVsaW5nIGluIGEgbm9uLWJsb2Nr
aW5nIHNlY3Rpb246ICVzLyVkLyVpXG4iLAoKLToxNDg6IENIRUNLOlBBUkVOVEhFU0lTX0FMSUdO
TUVOVDogQWxpZ25tZW50IHNob3VsZCBtYXRjaCBvcGVuIHBhcmVudGhlc2lzCiMxNDg6IEZJTEU6
IGtlcm5lbC9zY2hlZC9jb3JlLmM6MzcxMzoKKwkJcHJpbnRrKEtFUk5fRVJSICJCVUc6IHNjaGVk
dWxpbmcgaW4gYSBub24tYmxvY2tpbmcgc2VjdGlvbjogJXMvJWQvJWlcbiIsCisJCQlwcmV2LT5j
b21tLCBwcmV2LT5waWQsIHByZXYtPm5vbl9ibG9ja19jb3VudCk7CgotOjE4NTogV0FSTklORzpO
T19BVVRIT1JfU0lHTl9PRkY6IE1pc3NpbmcgU2lnbmVkLW9mZi1ieTogbGluZSBieSBub21pbmFs
IHBhdGNoIGF1dGhvciAnRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4nCgp0
b3RhbDogMCBlcnJvcnMsIDQgd2FybmluZ3MsIDEgY2hlY2tzLCAxMDIgbGluZXMgY2hlY2tlZAoy
YjYxNDA0NGExM2YgbW0sIG5vdGlmaWVyOiBDYXRjaCBzbGVlcGluZy9ibG9ja2luZyBmb3IgIWJs
b2NrYWJsZQotOjU3OiBXQVJOSU5HOk5PX0FVVEhPUl9TSUdOX09GRjogTWlzc2luZyBTaWduZWQt
b2ZmLWJ5OiBsaW5lIGJ5IG5vbWluYWwgcGF0Y2ggYXV0aG9yICdEYW5pZWwgVmV0dGVyIDxkYW5p
ZWwudmV0dGVyQGZmd2xsLmNoPicKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVj
a3MsIDE0IGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
