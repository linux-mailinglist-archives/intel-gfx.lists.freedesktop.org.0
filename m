Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5D697ADA
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 15:32:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE42A6E949;
	Wed, 21 Aug 2019 13:32:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 567486E345
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 13:32:26 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Aug 2019 15:32:20 +0200
Message-Id: <20190821133221.29456-10-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190821133221.29456-1-maarten.lankhorst@linux.intel.com>
References: <20190821133221.29456-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/10] drm/i915: Add debugfs entries for reading
 out DPCD DSC and FEC.
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RHVtcCB0aGUgRFNDIGFuZCBGRUMgaW4gaTkxNV9kcGNkIGFzIHdlbGwuIFRoaXMgaXMgdXNlZnVs
IHdoZW4KZGVidWdnaW5nIHRoZSBsaW5rIGNhcHMuCgpTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExh
bmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIHwgMiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdm
cy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKaW5kZXggNjEwYmM5YjVk
NzQwLi5jMmYxNWRlMDc0MjcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZGVidWdmcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCkBAIC00
Mzk2LDggKzQzOTYsMTAgQEAgc3RydWN0IGRwY2RfYmxvY2sgewogCiBzdGF0aWMgY29uc3Qgc3Ry
dWN0IGRwY2RfYmxvY2sgaTkxNV9kcGNkX2RlYnVnW10gPSB7CiAJeyAub2Zmc2V0ID0gRFBfRFBD
RF9SRVYsIC5zaXplID0gRFBfUkVDRUlWRVJfQ0FQX1NJWkUgfSwKKwl7IC5vZmZzZXQgPSBEUF9E
U0NfU1VQUE9SVCwgLmVuZCA9IERQX0RTQ19CSVRTX1BFUl9QSVhFTF9JTkMgfSwKIAl7IC5vZmZz
ZXQgPSBEUF9QU1JfU1VQUE9SVCwgLmVuZCA9IERQX1BTUl9DQVBTIH0sCiAJeyAub2Zmc2V0ID0g
RFBfRE9XTlNUUkVBTV9QT1JUXzAsIC5zaXplID0gMTYgfSwKKwl7IC5vZmZzZXQgPSBEUF9GRUNf
Q0FQQUJJTElUWSB9LAogCXsgLm9mZnNldCA9IERQX0xJTktfQldfU0VULCAuZW5kID0gRFBfRURQ
X0NPTkZJR1VSQVRJT05fU0VUIH0sCiAJeyAub2Zmc2V0ID0gRFBfU0lOS19DT1VOVCwgLmVuZCA9
IERQX0FESlVTVF9SRVFVRVNUX0xBTkUyXzMgfSwKIAl7IC5vZmZzZXQgPSBEUF9TRVRfUE9XRVIg
fSwKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
