Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8257B54F
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 23:54:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DBED89803;
	Tue, 30 Jul 2019 21:54:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 15D048932D;
 Tue, 30 Jul 2019 21:54:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0FA76A0020;
 Tue, 30 Jul 2019 21:54:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Date: Tue, 30 Jul 2019 21:54:25 -0000
Message-ID: <20190730215425.20693.9482@emeril.freedesktop.org>
References: <20190730181903.17820-1-michal.wajdeczko@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190730181903.17820-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_Don=27t_sanitize_enable=5Fguc?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogRG9uJ3Qgc2FuaXRpemUgZW5hYmxlX2d1YwpV
UkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjQ0NDYvClN0
YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJt
LXRpcAoyNjA2MGRiNWUzODAgZHJtL2k5MTUvdWM6IENvbnNpZGVyIGVuYWJsZV9ndWMgbW9kcGFy
YW0gZHVyaW5nIGZ3IHNlbGVjdGlvbgotOjgxOiBDSEVDSzpVTk5FQ0VTU0FSWV9QQVJFTlRIRVNF
UzogVW5uZWNlc3NhcnkgcGFyZW50aGVzZXMgYXJvdW5kICdpOTE1X21vZHBhcmFtcy5lbmFibGVf
Z3VjIDwgMCcKIzgxOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19m
dy5jOjEzNzoKKwlpZiAoKGk5MTVfbW9kcGFyYW1zLmVuYWJsZV9ndWMgPCAwKSAmJiAocCA8IElO
VEVMX0lDRUxBS0UpKQoKLTo4MTogQ0hFQ0s6VU5ORUNFU1NBUllfUEFSRU5USEVTRVM6IFVubmVj
ZXNzYXJ5IHBhcmVudGhlc2VzIGFyb3VuZCAncCA8IElOVEVMX0lDRUxBS0UnCiM4MTogRklMRTog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYzoxMzc6CisJaWYgKChpOTE1
X21vZHBhcmFtcy5lbmFibGVfZ3VjIDwgMCkgJiYgKHAgPCBJTlRFTF9JQ0VMQUtFKSkKCi06ODU6
IEVSUk9SOlBPSU5URVJfTE9DQVRJT046ICJmb28qIGJhciIgc2hvdWxkIGJlICJmb28gKmJhciIK
Izg1OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jOjE0MToK
K3N0YXRpYyBjb25zdCBjaGFyKiBfX292ZXJyaWRlX2d1Y19maXJtd2FyZV9wYXRoKHZvaWQpCgot
Ojg4OiBDSEVDSzpVTk5FQ0VTU0FSWV9QQVJFTlRIRVNFUzogVW5uZWNlc3NhcnkgcGFyZW50aGVz
ZXMgYXJvdW5kICdpOTE1X21vZHBhcmFtcy5lbmFibGVfZ3VjIDwgMCcKIzg4OiBGSUxFOiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jOjE0NDoKKwlpZiAoKGk5MTVfbW9k
cGFyYW1zLmVuYWJsZV9ndWMgPCAwKSB8fAorCSAgICAoaTkxNV9tb2RwYXJhbXMuZW5hYmxlX2d1
YyAmIEVOQUJMRV9HVUNfTE9BRF9IVUMpKQoKLTo5NDogRVJST1I6UE9JTlRFUl9MT0NBVElPTjog
ImZvbyogYmFyIiBzaG91bGQgYmUgImZvbyAqYmFyIgojOTQ6IEZJTEU6IGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmM6MTUwOgorc3RhdGljIGNvbnN0IGNoYXIqIF9fb3Zl
cnJpZGVfaHVjX2Zpcm13YXJlX3BhdGgodm9pZCkKCi06OTY6IENIRUNLOlVOTkVDRVNTQVJZX1BB
UkVOVEhFU0VTOiBVbm5lY2Vzc2FyeSBwYXJlbnRoZXNlcyBhcm91bmQgJ2k5MTVfbW9kcGFyYW1z
LmVuYWJsZV9ndWMgPCAwJwojOTY6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2lu
dGVsX3VjX2Z3LmM6MTUyOgorCWlmICgoaTkxNV9tb2RwYXJhbXMuZW5hYmxlX2d1YyA8IDApIHx8
CisJICAgIChpOTE1X21vZHBhcmFtcy5lbmFibGVfZ3VjICYgRU5BQkxFX0dVQ19MT0FEX0hVQykp
Cgp0b3RhbDogMiBlcnJvcnMsIDAgd2FybmluZ3MsIDQgY2hlY2tzLCA3OSBsaW5lcyBjaGVja2Vk
CmI3M2Y3NDM2ZTkxOSBkcm0vaTkxNS9ndWM6IFVzZSBkZWRpY2F0ZWQgZmxhZyB0byB0cmFjayBz
dWJtaXNzaW9uIG1vZGUKOGI2MGMyZDhlNjU0IGRybS9pOTE1L3VjOiBTdG9wIHNhbml0aXppbmcg
ZW5hYmxlX2d1YyBtb2RwYXJhbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
