Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 286A5DA25E
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 01:37:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72BB46E9DE;
	Wed, 16 Oct 2019 23:36:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0AB7E6E9DD;
 Wed, 16 Oct 2019 23:36:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 043C3A00EF;
 Wed, 16 Oct 2019 23:36:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Wed, 16 Oct 2019 23:36:57 -0000
Message-ID: <20191016233657.14699.49701@emeril.freedesktop.org>
References: <20191016144744.7073-1-tvrtko.ursulin@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20191016144744.7073-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_Make_for=5Feach=5Fengine=5Fmasked_work_on_intel=5Fgt?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IE1ha2UgZm9yX2VhY2hfZW5n
aW5lX21hc2tlZCB3b3JrIG9uIGludGVsX2d0ClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJl
ZWRlc2t0b3Aub3JnL3Nlcmllcy82ODExMS8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09
CgpDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV83MTEyIC0+IFBhdGNod29ya18xNDg0
MQo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CgpT
dW1tYXJ5Ci0tLS0tLS0KCiAgKipGQUlMVVJFKioKCiAgU2VyaW91cyB1bmtub3duIGNoYW5nZXMg
Y29taW5nIHdpdGggUGF0Y2h3b3JrXzE0ODQxIGFic29sdXRlbHkgbmVlZCB0byBiZQogIHZlcmlm
aWVkIG1hbnVhbGx5LgogIAogIElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZl
IG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcwogIGludHJvZHVjZWQgaW4gUGF0Y2h3b3Jr
XzE0ODQxLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cgdGhlbQogIHRvIGRv
Y3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9z
aXRpdmVzIGluIENJLgoKICBFeHRlcm5hbCBVUkw6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0ODQxL2luZGV4Lmh0bWwKCgpDaGFuZ2VzCi0tLS0t
LS0KCiAgTm8gY2hhbmdlcyBmb3VuZAoKClBhcnRpY2lwYXRpbmcgaG9zdHMgKDUyIC0+IDUpCi0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBFUlJPUjogSXQgYXBwZWFycyBhcyBpZiB0
aGUgY2hhbmdlcyBtYWRlIGluIFBhdGNod29ya18xNDg0MSBwcmV2ZW50ZWQgdG9vIG1hbnkgbWFj
aGluZXMgZnJvbSBib290aW5nLgoKICBNaXNzaW5nICAgICg0Nyk6IGZpLWtibC1zb3Jha2EgZmkt
c2tsLTY3NzBocSBmaS1iZHctZ3Z0ZHZtIGZpLWljbC11MiBmaS1za2wtNjI2MHUgZmktYXBsLWd1
YyBmaS1zbmItMjUyMG0gZmktaWNsLXUzIGZpLWljbC15IGZpLXNrbC1sbWVtIGZpLWJ5dC1uMjgy
MCBmaS1pY2wtZHNpIGZpLWljbC1ndWMgZmktc2tsLTY2MDB1IGZpLXNuYi0yNjAwIGZpLWhzdy00
NzcwciBmaS1jbWwtdTIgZmktY21sLXUgZmktYnh0LWRzaSBmaS1iZHctNTU1N3UgZmktdGdsLXUg
ZmktaWNsLXU0IGZpLWJzdy1uMzA1MCBmaS10Z2wtdTIgZmktYnl0LWoxOTAwIGZpLWNtbC1zIGZp
LWdsay1kc2kgZmkta2JsLTc1MDB1IGZpLWhzdy00NzcwIGZpLWl2Yi0zNzcwIGZpLWtibC1yIGZp
LWlsay1tNTQwIGZpLXNrbC1ndWMgZmktY2ZsLTg3MDBrIGZpLWhzdy00MjAwdSBmaS1oc3ctcGVw
cHkgZmktYnl0LXNxdWF3a3MgZmktY2ZsLWd1YyBmaS1rYmwtZ3VjIGZpLXdobC11IGZpLWtibC14
MTI3NSBmaS1jZmwtODEwOXUgZmktc2tsLWlvbW11IGZpLWtibC04ODA5ZyBmaS1ic3cta2Vma2Eg
ZmktYnl0LWNsYXBwZXIgZmktYmR3LXNhbXVzIAoKCkJ1aWxkIGNoYW5nZXMKLS0tLS0tLS0tLS0t
LQoKICAqIENJOiBDSS0yMDE5MDUyOSAtPiBOb25lCiAgKiBMaW51eDogQ0lfRFJNXzcxMTIgLT4g
UGF0Y2h3b3JrXzE0ODQxCgogIENJLTIwMTkwNTI5OiAyMDE5MDUyOQogIENJX0RSTV83MTEyOiBi
YjQwMzMwYzgyYjQ5ZDhkZWIwMDQwNTc0MTM5ZjdiYzgyODU3YmY4IEAgZ2l0Oi8vYW5vbmdpdC5m
cmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4CiAgSUdUXzUyMzE6IGUyOTMwNTFmOGY5OWM3MmNi
MDFkMjFlNGI3M2E1OTI4ZWEzNTFlYjMgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94
b3JnL2FwcC9pbnRlbC1ncHUtdG9vbHMKICBQYXRjaHdvcmtfMTQ4NDE6IGRmNTY3OTI1MDMzNWRl
MjY4ZTEyYzEzZjhlNTM1MDY0MzIyOTcwZmEgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9y
Zy9nZngtY2kvbGludXgKCgo9PSBMaW51eCBjb21taXRzID09CgpkZjU2NzkyNTAzMzUgZHJtL2k5
MTU6IE1ha2UgZm9yX2VhY2hfZW5naW5lX21hc2tlZCB3b3JrIG9uIGludGVsX2d0Cgo9PSBMb2dz
ID09CgpGb3IgbW9yZSBkZXRhaWxzIHNlZTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ4NDEvaW5kZXguaHRtbApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
