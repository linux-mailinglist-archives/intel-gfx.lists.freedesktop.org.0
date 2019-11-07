Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B462F2459
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 02:37:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C9F16E343;
	Thu,  7 Nov 2019 01:37:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 525AF6E343;
 Thu,  7 Nov 2019 01:37:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 494B8A00E7;
 Thu,  7 Nov 2019 01:37:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alex Williamson" <alex.williamson@redhat.com>
Date: Thu, 07 Nov 2019 01:37:41 -0000
Message-ID: <157309066127.9302.9743424335221015758@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191106070548.18980-1-jasowang@redhat.com>
In-Reply-To: <20191106070548.18980-1-jasowang@redhat.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_md?=
 =?utf-8?q?ev_based_hardware_virtio_offloading_support_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogbWRldiBiYXNlZCBoYXJkd2FyZSB2aXJ0aW8g
b2ZmbG9hZGluZyBzdXBwb3J0IChyZXYyKQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVk
ZXNrdG9wLm9yZy9zZXJpZXMvNjkwMzUvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoK
QXBwbHlpbmc6IG1kZXY6IGNsYXNzIGlkIHN1cHBvcnQKQXBwbHlpbmc6IG1vZHBvc3Q6IGFkZCBz
dXBwb3J0IGZvciBtZGV2IGNsYXNzIGlkCkFwcGx5aW5nOiBtZGV2OiBpbnRyb2R1Y2UgZGV2aWNl
IHNwZWNpZmljIG9wcwpBcHBseWluZzogbWRldjogaW50cm9kdWNlIHZpcnRpbyBkZXZpY2UgYW5k
IGl0cyBkZXZpY2Ugb3BzCkFwcGx5aW5nOiB2aXJ0aW86IGludHJvZHVjZSBhIG1kZXYgYmFzZWQg
dHJhbnNwb3J0CkFwcGx5aW5nOiBkb2NzOiBzYW1wbGUgZHJpdmVyIHRvIGRlbW9uc3RyYXRlIGhv
dyB0byBpbXBsZW1lbnQgdmlydGlvLW1kZXYgZnJhbWV3b3JrCmVycm9yOiBwYXRjaCBmYWlsZWQ6
IHNhbXBsZXMvS2NvbmZpZzoxMzYKZXJyb3I6IHNhbXBsZXMvS2NvbmZpZzogcGF0Y2ggZG9lcyBu
b3QgYXBwbHkKZXJyb3I6IERpZCB5b3UgaGFuZCBlZGl0IHlvdXIgcGF0Y2g/Ckl0IGRvZXMgbm90
IGFwcGx5IHRvIGJsb2JzIHJlY29yZGVkIGluIGl0cyBpbmRleC4KaGludDogVXNlICdnaXQgYW0g
LS1zaG93LWN1cnJlbnQtcGF0Y2gnIHRvIHNlZSB0aGUgZmFpbGVkIHBhdGNoClVzaW5nIGluZGV4
IGluZm8gdG8gcmVjb25zdHJ1Y3QgYSBiYXNlIHRyZWUuLi4KTQlzYW1wbGVzL0tjb25maWcKUGF0
Y2ggZmFpbGVkIGF0IDAwMDYgZG9jczogc2FtcGxlIGRyaXZlciB0byBkZW1vbnN0cmF0ZSBob3cg
dG8gaW1wbGVtZW50IHZpcnRpby1tZGV2IGZyYW1ld29yawpXaGVuIHlvdSBoYXZlIHJlc29sdmVk
IHRoaXMgcHJvYmxlbSwgcnVuICJnaXQgYW0gLS1jb250aW51ZSIuCklmIHlvdSBwcmVmZXIgdG8g
c2tpcCB0aGlzIHBhdGNoLCBydW4gImdpdCBhbSAtLXNraXAiIGluc3RlYWQuClRvIHJlc3RvcmUg
dGhlIG9yaWdpbmFsIGJyYW5jaCBhbmQgc3RvcCBwYXRjaGluZywgcnVuICJnaXQgYW0gLS1hYm9y
dCIuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
