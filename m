Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D388857401
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 00:01:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A86276E52D;
	Wed, 26 Jun 2019 22:00:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7BEDF6E52D;
 Wed, 26 Jun 2019 22:00:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 758F9A010A;
 Wed, 26 Jun 2019 22:00:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Wed, 26 Jun 2019 22:00:58 -0000
Message-ID: <20190626220058.9080.51297@emeril.freedesktop.org>
References: <20190620140600.11357-1-imre.deak@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190620140600.11357-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_Fix_TypeC_port_mode_switching_=28rev7=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEZpeCBUeXBlQyBwb3J0IG1v
ZGUgc3dpdGNoaW5nIChyZXY3KQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9w
Lm9yZy9zZXJpZXMvNjE1OTAvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQXBwbHlp
bmc6IGRybS9pOTE1L2ljbDogQWRkIHN1cHBvcnQgdG8gcmVhZCBvdXQgdGhlIFRCVCBQTEwgSFcg
c3RhdGUKQXBwbHlpbmc6IGRybS9pOTE1OiBUdW5lIGRvd24gV0FSTnMgYWJvdXQgVEJUIEFVWCBw
b3dlciB3ZWxsIGVuYWJsaW5nCkFwcGx5aW5nOiBkcm0vaTkxNTogTW92ZSB0aGUgVHlwZUMgcG9y
dCBoYW5kbGluZyBjb2RlIHRvIGEgc2VwYXJhdGUgZmlsZQpBcHBseWluZzogZHJtL2k5MTU6IFNh
bml0aXplIHRoZSB0ZXJtaW5vbG9neSB1c2VkIGZvciBUeXBlQyBwb3J0IG1vZGVzCkFwcGx5aW5n
OiBkcm0vaTkxNTogRG9uJ3QgZW5hYmxlIHRoZSBEREktSU8gcG93ZXIgaW4gdGhlIFR5cGVDIFRC
VC1hbHQgbW9kZQpBcHBseWluZzogZHJtL2k5MTU6IEZpeCB0aGUgVEJUIEFVWCBwb3dlciB3ZWxs
IGVuYWJsaW5nCkFwcGx5aW5nOiBkcm0vaTkxNTogVXNlIHRoZSBjb3JyZWN0IEFVWCBwb3dlciBk
b21haW4gaW4gVHlwZUMgVEJULWFsdCBtb2RlCkFwcGx5aW5nOiBkcm0vaTkxNTogVW5pZnkgdGhl
IFR5cGVDIHBvcnQgbm90YXRpb24gaW4gZGVidWcvZXJyb3IgbWVzc2FnZXMKQXBwbHlpbmc6IGRy
bS9pOTE1OiBBZGQgc3RhdGUgdmVyaWZpY2F0aW9uIGZvciB0aGUgVHlwZUMgcG9ydCBtb2RlCmVy
cm9yOiBzaGExIGluZm9ybWF0aW9uIGlzIGxhY2tpbmcgb3IgdXNlbGVzcyAoZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jKS4KZXJyb3I6IGNvdWxkIG5vdCBidWlsZCBmYWtl
IGFuY2VzdG9yCmhpbnQ6IFVzZSAnZ2l0IGFtIC0tc2hvdy1jdXJyZW50LXBhdGNoJyB0byBzZWUg
dGhlIGZhaWxlZCBwYXRjaApQYXRjaCBmYWlsZWQgYXQgMDAwOSBkcm0vaTkxNTogQWRkIHN0YXRl
IHZlcmlmaWNhdGlvbiBmb3IgdGhlIFR5cGVDIHBvcnQgbW9kZQpXaGVuIHlvdSBoYXZlIHJlc29s
dmVkIHRoaXMgcHJvYmxlbSwgcnVuICJnaXQgYW0gLS1jb250aW51ZSIuCklmIHlvdSBwcmVmZXIg
dG8gc2tpcCB0aGlzIHBhdGNoLCBydW4gImdpdCBhbSAtLXNraXAiIGluc3RlYWQuClRvIHJlc3Rv
cmUgdGhlIG9yaWdpbmFsIGJyYW5jaCBhbmQgc3RvcCBwYXRjaGluZywgcnVuICJnaXQgYW0gLS1h
Ym9ydCIuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
