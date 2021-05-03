Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 755CA371F7B
	for <lists+intel-gfx@lfdr.de>; Mon,  3 May 2021 20:22:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 450C66E8F0;
	Mon,  3 May 2021 18:21:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from srv6.fidu.org (srv6.fidu.org [IPv6:2a01:4f8:231:de0::2])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D583089B01;
 Mon,  3 May 2021 18:21:54 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by srv6.fidu.org (Postfix) with ESMTP id 9A563C800D2;
 Mon,  3 May 2021 20:21:53 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at srv6.fidu.org
Received: from srv6.fidu.org ([127.0.0.1])
 by localhost (srv6.fidu.org [127.0.0.1]) (amavisd-new, port 10026)
 with LMTP id 2roVKCChHMH2; Mon,  3 May 2021 20:21:53 +0200 (CEST)
Received: from wsembach-tuxedo.fritz.box
 (p200300E37f3986001A8B79e0b24CB29D.dip0.t-ipconnect.de
 [IPv6:2003:e3:7f39:8600:1a8b:79e0:b24c:b29d])
 (Authenticated sender: wse@tuxedocomputers.com)
 by srv6.fidu.org (Postfix) with ESMTPA id E2A21C800CE;
 Mon,  3 May 2021 20:21:52 +0200 (CEST)
From: Werner Sembach <wse@tuxedocomputers.com>
To: wse@tuxedocomputers.com, ville.syrjala@linux.intel.com, airlied@linux.ie,
 daniel@ffwll.ch, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Date: Mon,  3 May 2021 20:21:44 +0200
Message-Id: <20210503182148.851790-1-wse@tuxedocomputers.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/4] drm/i915/display Try YCbCr420 color when
 RGB fails
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2hlbiBlbmNvZGVyIHZhbGlkYXRpb24gb2YgYSBkaXNwbGF5IG1vZGUgZmFpbHMsIHJldHJ5IHdp
dGggbGVzcyBiYW5kd2lkdGgKaGVhdnkgWUNiQ3I0MjAgY29sb3IgbW9kZSwgaWYgYXZhaWxhYmxl
LiBUaGlzIGVuYWJsZXMgc29tZSBIRE1JIDEuNCBzZXR1cHMKdG8gc3VwcG9ydCA0azYwSHogb3V0
cHV0LCB3aGljaCBwcmV2aW91c2x5IGZhaWxlZCBzaWxlbnRseS4KCkFNREdQVSBoYWQgbmVhcmx5
IHRoZSBleGFjdCBzYW1lIGlzc3VlLiBUaGlzIHByb2JsZW0gZGVzY3JpcHRpb24gaXMKdGhlcmVm
b3JlIGNvcGllZCBmcm9tIG15IGNvbW1pdCBtZXNzYWdlIG9mIHRoZSBBTURHUFUgcGF0Y2guCgpP
biBzb21lIHNldHVwcywgd2hpbGUgdGhlIG1vbml0b3IgYW5kIHRoZSBncHUgc3VwcG9ydCBkaXNw
bGF5IG1vZGVzIHdpdGgKcGl4ZWwgY2xvY2tzIG9mIHVwIHRvIDYwME1IeiwgdGhlIGxpbmsgZW5j
b2RlciBtaWdodCBub3QuIFRoaXMgcHJldmVudHMKWUNiQ3I0NDQgYW5kIFJHQiBlbmNvZGluZyBm
b3IgNGs2MEh6LCBidXQgWUNiQ3I0MjAgZW5jb2RpbmcgbWlnaHQgc3RpbGwgYmUKcG9zc2libGUu
IEhvd2V2ZXIsIHdoaWNoIGNvbG9yIG1vZGUgaXMgdXNlZCBpcyBkZWNpZGVkIGJlZm9yZSB0aGUg
bGluawplbmNvZGVyIGNhcGFiaWxpdGllcyBhcmUgY2hlY2tlZC4gVGhpcyBwYXRjaCBmaXhlcyB0
aGUgcHJvYmxlbSBieSByZXRyeWluZwp0byBmaW5kIGEgZGlzcGxheSBtb2RlIHdpdGggWUNiQ3I0
MjAgZW5mb3JjZWQgYW5kIHVzaW5nIGl0LCBpZiBpdCBpcwp2YWxpZC4KClRoaXMgcGF0Y2hzZXQg
aXMgcmV2aXNpb24gMiwgbm93IHNwbGl0IHVwIGluIG11bHRpcGxlIHBhcnRzIHdpdGggc29tZQpt
aW5vciByZXN0cnVjdHVyaW5nIGFkZGVkIGbDvHIgYSBjbGVhbmVyIGltcGxlbWVudGF0aW9uLgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
