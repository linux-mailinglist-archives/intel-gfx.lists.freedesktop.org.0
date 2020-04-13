Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF281A6E8C
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2020 23:44:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 837828926A;
	Mon, 13 Apr 2020 21:44:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E795A89EA3
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Apr 2020 21:44:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586814263;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=KQIqrFGUphmuFkBfyVpa5uYKSuyV3byu56jJQa16wH8=;
 b=MxAQT7wIa7ybCkSrJEGseoKf/EUC+nvWVM3tjnAG5vY4S/EIXDG1XR6780hfuP9n90aAaL
 e8bK/N7uSO56BvY2XXUG0NjWWESCwAJAKGZiXRLvgjdm2+JPILao3i/1USY4y0v3CUQNBI
 JsjgMexpWfOaBHH18hBmhWrcpUqXV2c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-241-zHFU6IkTOpqpXbCPmWIjow-1; Mon, 13 Apr 2020 17:44:22 -0400
X-MC-Unique: zHFU6IkTOpqpXbCPmWIjow-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E10DB8010F1;
 Mon, 13 Apr 2020 21:44:18 +0000 (UTC)
Received: from Ruby.redhat.com (ovpn-119-134.rdu2.redhat.com [10.10.119.134])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C43D719C69;
 Mon, 13 Apr 2020 21:44:12 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Apr 2020 17:44:06 -0400
Message-Id: <20200413214407.1851002-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Subject: [Intel-gfx] [PATCH] drm/i915/dpcd_bl: Unbreak enable_dpcd_backlight
 modparam
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
Cc: David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>, Adam Jackson <ajax@redhat.com>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TG9va3MgbGlrZSBJIGFjY2lkZW50YWxseSBtYWRlIGl0IHNvIHlvdSBjb3VsZG4ndCBmb3JjZSBE
UENEIGJhY2tsaWdodApzdXBwb3J0IG9uLCB3aG9vcHMuIEZpeCB0aGF0LgoKU2lnbmVkLW9mZi1i
eTogTHl1ZGUgUGF1bCA8bHl1ZGVAcmVkaGF0LmNvbT4KRml4ZXM6IDE3ZjVkNTc5MTViZSAoImRy
bS9pOTE1OiBGb3JjZSBEUENEIGJhY2tsaWdodCBtb2RlIG9uIFgxIEV4dHJlbWUgMm5kIEdlbiA0
SyBBTU9MRUQgcGFuZWwiKQpDYzogQWRhbSBKYWNrc29uIDxhamF4QHJlZGhhdC5jb20+CkNjOiBK
YW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tPgpDYzogSm9vbmFzIExhaHRp
bmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgpDYzogIlZpbGxlIFN5cmrDpGzD
pCIgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4X2JhY2tsaWdodC5jIHwgMSArCiAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBfYXV4X2JhY2tsaWdodC5jCmluZGV4IDRiOTE2NDY4NTQwZi4uMDcyMjU0MGQ2
NGFkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1
eF9iYWNrbGlnaHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
X2F1eF9iYWNrbGlnaHQuYwpAQCAtMzU4LDYgKzM1OCw3IEBAIGludCBpbnRlbF9kcF9hdXhfaW5p
dF9iYWNrbGlnaHRfZnVuY3Moc3RydWN0IGludGVsX2Nvbm5lY3RvciAqaW50ZWxfY29ubmVjdG9y
KQogCSAqLwogCWlmIChpOTE1LT52YnQuYmFja2xpZ2h0LnR5cGUgIT0KIAkgICAgSU5URUxfQkFD
S0xJR0hUX1ZFU0FfRURQX0FVWF9JTlRFUkZBQ0UgJiYKKwkgICAgaTkxNV9tb2RwYXJhbXMuZW5h
YmxlX2RwY2RfYmFja2xpZ2h0ICE9IDEgJiYKIAkgICAgIWRybV9kcF9oYXNfcXVpcmsoJmludGVs
X2RwLT5kZXNjLCBpbnRlbF9kcC0+ZWRpZF9xdWlya3MsCiAJCQkgICAgICBEUF9RVUlSS19GT1JD
RV9EUENEX0JBQ0tMSUdIVCkpIHsKIAkJZHJtX2luZm8oJmk5MTUtPmRybSwKLS0gCjIuMjUuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
