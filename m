Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 178B3AE79E
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 12:07:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C3326E83F;
	Tue, 10 Sep 2019 10:07:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail2.protonmail.ch (mail2.protonmail.ch [185.70.40.22])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C50576E83F
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 10:07:43 +0000 (UTC)
Date: Tue, 10 Sep 2019 10:07:26 +0000
To: intel-gfx@lists.freedesktop.org
From: Simon Ser <contact@emersion.fr>
Message-ID: <FP-q2bMX9wd_xahtrbX09Axlcfxg0hElk2Bs68pWgxpbwTHGKR3yAUIyWdjgqM8XSid0cM8JAtujhN3t_XGU_8yPqNAwhzCdZRc_80IwEk0=@emersion.fr>
Feedback-ID: FsVprHBOgyvh0T8bxcZ0CmvJCosWkwVUg658e_lOUQMnA9qynD8O1lGeniuBDfPSkDAUuhiKfOIXUZBfarMyvA==:Ext:ProtonMail
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=7.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.protonmail.ch
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=emersion.fr; s=protonmail; t=1568110061;
 bh=3FHoOw+08A/TgggjVI8UotCr2oaT4VMbCDSQg/cfq8k=;
 h=Date:To:From:Reply-To:Subject:Feedback-ID:From;
 b=sEe2D4YGydxzdQKlJkln+jBM4c7iZkQS59Rw+5zBeU02jffm5JitK/Bkmg6ia5imd
 hB8abnpiFIjNDTO3rRwhde9d8tuMSOpHCNqyT9v4t/xPDiZrC9deP+vVz37E5AKoov
 K1GPvRRN1k7Jecb8uqEslHlU9ZGs6n8Pg6IdNpdw=
Subject: [Intel-gfx] [PATCH] drm: two planes with the same zpos have
 undefined ordering
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
Reply-To: Simon Ser <contact@emersion.fr>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q3VycmVudGx5IHRoZSBwcm9wZXJ0eSBkb2NzIGRvbid0IHNwZWNpZnkgd2hldGhlciBpdCdzIG9r
YXkgZm9yIHR3byBwbGFuZXMgdG8KaGF2ZSB0aGUgc2FtZSB6cG9zIHZhbHVlIGFuZCB3aGF0IHVz
ZXItc3BhY2Ugc2hvdWxkIGV4cGVjdCBpbiB0aGlzIGNhc2UuCgpUaGUgcnVsZSBtZW50aW9ubmVk
IGluIHRoZSBwYXN0IHdhcyB0byBkaXNhbWJpZ3VhdGUgd2l0aCBvYmplY3QgSURzLiBIb3dldmVy
CnNvbWUgZHJpdmVycyBicmVhayB0aGlzIHJ1bGUgKHRoYXQncyB3aHkgdGhlIG9yZGVyaW5nIGlz
IGRvY3VtZW50ZWQgYXMKdW5zcGVjaWZpZWQgaW4gY2FzZSB0aGUgenBvcyBwcm9wZXJ0eSBpcyBt
aXNzaW5nKS4gQWRkaXRpb25hbGx5IGl0IGRvZXNuJ3QKcmVhbGx5IG1ha2Ugc2Vuc2UgZm9yIGEg
ZHJpdmVyIHRvIHVzZXIgaWRlbnRpY2FsIHpwb3MgdmFsdWVzIGlmIGl0IGtub3dzIHRoZWlyCnJl
bGF0aXZlIHBvc2l0aW9uOiB0aGUgZHJpdmVyIGNhbiBqdXN0IHBpY2sgZGlmZmVyZW50IHZhbHVl
cyBpbnN0ZWFkLgoKU28gdHdvIHNvbHV0aW9ucyB3b3VsZCBtYWtlIHNlbnNlOiBlaXRoZXIgZGlz
YWxsb3cgY29tcGxldGVseSBpZGVudGljYWwgenBvcwp2YWx1ZXMgZm9yIHR3byBkaWZmZXJlbnQg
cGxhbmVzLCBlaXRoZXIgbWFrZSB0aGUgb3JkZXJpbmcgdW5zcGVjaWZpZWQuIFRvIGFsbG93CmRy
aXZlcnMgdGhhdCBkb24ndCBrbm93IHRoZSByZWxhdGl2ZSBvcmRlcmluZyBiZXR3ZWVuIHR3byBw
bGFuZXMgdG8gc3RpbGwKZXhwb3NlIHRoZSB6cG9zIHByb3BlcnR5LCBjaG9vc2UgdGhlIGxhdHRl
ciBzb2x1dGlvbi4KClNpZ25lZC1vZmYtYnk6IFNpbW9uIFNlciA8Y29udGFjdEBlbWVyc2lvbi5m
cj4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2JsZW5kLmMgfCA4ICsrKystLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9kcm1fYmxlbmQuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fYmxlbmQuYwpp
bmRleCBkMDI3MDlkZDJkNGEuLjUxYmQ1NDU0ZTUwYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2RybV9ibGVuZC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fYmxlbmQuYwpAQCAtMTMy
LDEwICsxMzIsMTAgQEAKICAqCXBsYW5lcy4gV2l0aG91dCB0aGlzIHByb3BlcnR5IHRoZSBwcmlt
YXJ5IHBsYW5lIGlzIGFsd2F5cyBiZWxvdyB0aGUgY3Vyc29yCiAgKglwbGFuZSwgYW5kIG9yZGVy
aW5nIGJldHdlZW4gYWxsIG90aGVyIHBsYW5lcyBpcyB1bmRlZmluZWQuIFRoZSBwb3NpdGl2ZQog
ICoJWiBheGlzIHBvaW50cyB0b3dhcmRzIHRoZSB1c2VyLCBpLmUuIHBsYW5lcyB3aXRoIGxvd2Vy
IFogcG9zaXRpb24gdmFsdWVzCi0gKglhcmUgdW5kZXJuZWF0aCBwbGFuZXMgd2l0aCBoaWdoZXIg
WiBwb3NpdGlvbiB2YWx1ZXMuIE5vdGUgdGhhdCB0aGUgWgotICoJcG9zaXRpb24gdmFsdWUgY2Fu
IGFsc28gYmUgaW1tdXRhYmxlLCB0byBpbmZvcm0gdXNlcnNwYWNlIGFib3V0IHRoZQotICoJaGFy
ZC1jb2RlZCBzdGFja2luZyBvZiBvdmVybGF5IHBsYW5lcywgc2VlCi0gKglkcm1fcGxhbmVfY3Jl
YXRlX3pwb3NfaW1tdXRhYmxlX3Byb3BlcnR5KCkuCisgKglhcmUgdW5kZXJuZWF0aCBwbGFuZXMg
d2l0aCBoaWdoZXIgWiBwb3NpdGlvbiB2YWx1ZXMuIFR3byBwbGFuZXMgd2l0aCB0aGUKKyAqCXNh
bWUgWiBwb3NpdGlvbiB2YWx1ZSBoYXZlIHVuZGVmaW5lZCBvcmRlcmluZy4gTm90ZSB0aGF0IHRo
ZSBaIHBvc2l0aW9uCisgKgl2YWx1ZSBjYW4gYWxzbyBiZSBpbW11dGFibGUsIHRvIGluZm9ybSB1
c2Vyc3BhY2UgYWJvdXQgdGhlIGhhcmQtY29kZWQKKyAqCXN0YWNraW5nIG9mIG92ZXJsYXkgcGxh
bmVzLCBzZWUgZHJtX3BsYW5lX2NyZWF0ZV96cG9zX2ltbXV0YWJsZV9wcm9wZXJ0eSgpLgogICoK
ICAqIHBpeGVsIGJsZW5kIG1vZGU6CiAgKglQaXhlbCBibGVuZCBtb2RlIGlzIHNldCB1cCB3aXRo
IGRybV9wbGFuZV9jcmVhdGVfYmxlbmRfbW9kZV9wcm9wZXJ0eSgpLgotLSAKMi4yMy4wCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
