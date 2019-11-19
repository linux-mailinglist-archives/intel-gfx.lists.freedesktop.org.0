Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E196E100FC6
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 01:14:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7995A89815;
	Tue, 19 Nov 2019 00:14:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DEFCB89815;
 Tue, 19 Nov 2019 00:14:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D6CAAA0009;
 Tue, 19 Nov 2019 00:14:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Tue, 19 Nov 2019 00:14:39 -0000
Message-ID: <157412247985.32165.17988106590406552175@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191118235531.9353-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20191118235531.9353-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5BCI=2C1/5=5D_drm/i915/guc=3A_Drop_lef?=
 =?utf-8?q?tover_preemption_code?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDEv
NV0gZHJtL2k5MTUvZ3VjOiBEcm9wIGxlZnRvdmVyIHByZWVtcHRpb24gY29kZQpVUkwgICA6IGh0
dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjk2NTAvClN0YXRlIDogd2Fy
bmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcAplYjQw
Mjg4NzA2NjMgZHJtL2k5MTUvZ3VjOiBEcm9wIGxlZnRvdmVyIHByZWVtcHRpb24gY29kZQoxOTRi
N2Y0NTVkZDMgZHJtL2k5MTUvZ3VjOiBhZGQgYSBoZWxwZXIgdG8gYWxsb2NhdGUgYW5kIG1hcCBn
dWMgdm1hCmY4YWRhMDE3ZWQyNyBkcm0vaTkxNS9ndWM6IGtpbGwgZG9vcmJlbGwgY29kZSBhbmQg
c2VsZnRlc3RzCi06Njc5OiBXQVJOSU5HOkZJTEVfUEFUSF9DSEFOR0VTOiBhZGRlZCwgbW92ZWQg
b3IgZGVsZXRlZCBmaWxlKHMpLCBkb2VzIE1BSU5UQUlORVJTIG5lZWQgdXBkYXRpbmc/CiM2Nzk6
IApkZWxldGVkIGZpbGUgbW9kZSAxMDA2NDQKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywg
MCBjaGVja3MsIDYxNSBsaW5lcyBjaGVja2VkCjUxMDMyZmYyY2FlNSBkcm0vaTkxNS9ndWM6IGtp
bGwgdGhlIEd1QyBjbGllbnQKLTo2OTogQ0hFQ0s6VU5DT01NRU5URURfREVGSU5JVElPTjogc3Bp
bmxvY2tfdCBkZWZpbml0aW9uIHdpdGhvdXQgY29tbWVudAojNjk6IEZJTEU6IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5oOjUyOgorCXNwaW5sb2NrX3Qgd3FfbG9jazsKCnRv
dGFsOiAwIGVycm9ycywgMCB3YXJuaW5ncywgMSBjaGVja3MsIDU2NCBsaW5lcyBjaGVja2VkCmYz
YTYxZGZhOTViYyBIQVg6IGZvcmNlIGVuYWJsZV9ndWM9MgotOjc6IFdBUk5JTkc6Q09NTUlUX01F
U1NBR0U6IE1pc3NpbmcgY29tbWl0IGRlc2NyaXB0aW9uIC0gQWRkIGFuIGFwcHJvcHJpYXRlIG9u
ZQoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgOCBsaW5lcyBjaGVja2Vk
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
