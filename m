Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D71A75C6B
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 03:10:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 501386E854;
	Fri, 26 Jul 2019 01:10:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4FC776E846;
 Fri, 26 Jul 2019 01:10:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 44E81A00FD;
 Fri, 26 Jul 2019 01:10:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 26 Jul 2019 01:10:15 -0000
Message-ID: <20190726011015.29715.35374@emeril.freedesktop.org>
References: <57b95613f6cf4a0806baeb3d99790bd90b7615e4>
X-Patchwork-Hint: ignore
In-Reply-To: <57b95613f6cf4a0806baeb3d99790bd90b7615e4>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_Replace_hangcheck_by_heartbeats?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFJlcGxhY2UgaGFuZ2NoZWNr
IGJ5IGhlYXJ0YmVhdHMKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcv
c2VyaWVzLzY0MjY5LwpTdGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkgPT0KCkFwcGx5aW5nOiBk
cm0vaTkxNTogUmVwbGFjZSBoYW5nY2hlY2sgYnkgaGVhcnRiZWF0cwpVc2luZyBpbmRleCBpbmZv
IHRvIHJlY29uc3RydWN0IGEgYmFzZSB0cmVlLi4uCk0JZHJpdmVycy9ncHUvZHJtL2k5MTUvS2Nv
bmZpZy5wcm9maWxlCkZhbGxpbmcgYmFjayB0byBwYXRjaGluZyBiYXNlIGFuZCAzLXdheSBtZXJn
ZS4uLgpSZW1vdmluZyBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9oYW5nY2hlY2suYwpB
dXRvLW1lcmdpbmcgZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5wcm9maWxlCkNPTkZMSUNU
IChjb250ZW50KTogTWVyZ2UgY29uZmxpY3QgaW4gZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZp
Zy5wcm9maWxlCmVycm9yOiBGYWlsZWQgdG8gbWVyZ2UgaW4gdGhlIGNoYW5nZXMuCmhpbnQ6IFVz
ZSAnZ2l0IGFtIC0tc2hvdy1jdXJyZW50LXBhdGNoJyB0byBzZWUgdGhlIGZhaWxlZCBwYXRjaApQ
YXRjaCBmYWlsZWQgYXQgMDAwMSBkcm0vaTkxNTogUmVwbGFjZSBoYW5nY2hlY2sgYnkgaGVhcnRi
ZWF0cwpXaGVuIHlvdSBoYXZlIHJlc29sdmVkIHRoaXMgcHJvYmxlbSwgcnVuICJnaXQgYW0gLS1j
b250aW51ZSIuCklmIHlvdSBwcmVmZXIgdG8gc2tpcCB0aGlzIHBhdGNoLCBydW4gImdpdCBhbSAt
LXNraXAiIGluc3RlYWQuClRvIHJlc3RvcmUgdGhlIG9yaWdpbmFsIGJyYW5jaCBhbmQgc3RvcCBw
YXRjaGluZywgcnVuICJnaXQgYW0gLS1hYm9ydCIuCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
