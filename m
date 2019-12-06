Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3620D114F90
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2019 12:02:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A18746F9D0;
	Fri,  6 Dec 2019 11:02:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1DB706F9CD;
 Fri,  6 Dec 2019 11:02:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 148BAA011B;
 Fri,  6 Dec 2019 11:02:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 06 Dec 2019 11:02:54 -0000
Message-ID: <157563017408.31671.17619380292568166059@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191206105527.1130413-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191206105527.1130413-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/5=5D_drm/i915/gem=3A_Flush_the_pwr?=
 =?utf-8?q?ite_through_the_chipset_before_signaling?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvNV0g
ZHJtL2k5MTUvZ2VtOiBGbHVzaCB0aGUgcHdyaXRlIHRocm91Z2ggdGhlIGNoaXBzZXQgYmVmb3Jl
IHNpZ25hbGluZwpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJp
ZXMvNzA1NjAvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRj
aCBvcmlnaW4vZHJtLXRpcApkMzA3MTZjYzMzMzEgZHJtL2k5MTUvZ2VtOiBGbHVzaCB0aGUgcHdy
aXRlIHRocm91Z2ggdGhlIGNoaXBzZXQgYmVmb3JlIHNpZ25hbGluZwowMzk3N2VjOTIxMTQgZHJt
L2k5MTU6IENsYWltIHZtYSB3aGlsZSB1bmRlciBjbG9zZWRfbG9jayBpbiBpOTE1X3ZtYV9wYXJr
ZWQoKQo0NTVhODY1ZTMwNGYgZHJtL2k5MTUvZ3Q6IEFjcXVpcmUgYSBHVCB3YWtlcmVmIGZvciB0
aGUgYnJlYWRjcnVtYiBpbnRlcnJ1cHQKLToxNDogV0FSTklORzpDT01NSVRfTE9HX0xPTkdfTElO
RTogUG9zc2libGUgdW53cmFwcGVkIGNvbW1pdCBkZXNjcmlwdGlvbiAocHJlZmVyIGEgbWF4aW11
bSA3NSBjaGFycyBwZXIgbGluZSkKIzE0OiAKPDQ+IFsxNTE4LjM1MDMyM10gV0FSTklORzogQ1BV
OiAyIFBJRDogMzY4NSBhdCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYzoxMTYz
IF9fdW5jbGFpbWVkX3JlZ19kZWJ1ZysweDQwLzB4NTAgW2k5MTVdCgp0b3RhbDogMCBlcnJvcnMs
IDEgd2FybmluZ3MsIDAgY2hlY2tzLCA3MCBsaW5lcyBjaGVja2VkCjI4MzE2MDNjNjk4YyBkcm0v
aTkxNS9nZW06IFBpbiBnZW42X3BwZ3R0IHByaW9yIHRvIGNvbnN0cnVjdGluZyB0aGUgcmVxdWVz
dAotOjIxOiBXQVJOSU5HOkNPTU1JVF9MT0dfTE9OR19MSU5FOiBQb3NzaWJsZSB1bndyYXBwZWQg
Y29tbWl0IGRlc2NyaXB0aW9uIChwcmVmZXIgYSBtYXhpbXVtIDc1IGNoYXJzIHBlciBsaW5lKQoj
MjE6IAo8ND4gWzQwMi4zNzc1MDddIGZmZmY4ODg0MDNjZGFjNzAgKCZrZXJuZWwjMil7Ky4rLn0s
IGF0OiBpOTE1X3JlcXVlc3RfY3JlYXRlKzB4MTYvMHgxYzAgW2k5MTVdCgp0b3RhbDogMCBlcnJv
cnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCAzMSBsaW5lcyBjaGVja2VkCmFhOTIzZDllZGJmZCBk
cm0vaTkxNTogQXZvaWQgY2FsbGluZyBpOTE1X2dlbV9vYmplY3RfdW5iaW5kIGhvbGRpbmcgb2Jq
ZWN0IGxvY2sKLToyMTogV0FSTklORzpDT01NSVRfTE9HX0xPTkdfTElORTogUG9zc2libGUgdW53
cmFwcGVkIGNvbW1pdCBkZXNjcmlwdGlvbiAocHJlZmVyIGEgbWF4aW11bSA3NSBjaGFycyBwZXIg
bGluZSkKIzIxOiAKPDQ+IFsxODYuODE2MzIyXSBmZmZmODg4NDk0ODdjNGQ4ICgmbW0tPm1tYXBf
c2VtIzIpeysrKyt9LCBhdDogX19taWdodF9mYXVsdCsweDM5LzB4OTAKCnRvdGFsOiAwIGVycm9y
cywgMSB3YXJuaW5ncywgMCBjaGVja3MsIDEyMiBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
