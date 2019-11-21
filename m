Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8DF1050AB
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 11:38:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA8066ED74;
	Thu, 21 Nov 2019 10:38:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 456866ED74
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2019 10:38:15 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-389-v2KU_SL4M82QxEvfKpZ39A-1; Thu, 21 Nov 2019 05:38:12 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 53D8F5F9;
 Thu, 21 Nov 2019 10:38:11 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-67.ams2.redhat.com
 [10.36.116.67])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6ECD66CE6C;
 Thu, 21 Nov 2019 10:38:08 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 7201C1747D; Thu, 21 Nov 2019 11:38:07 +0100 (CET)
From: Gerd Hoffmann <kraxel@redhat.com>
To: dri-devel@lists.freedesktop.org
Date: Thu, 21 Nov 2019 11:38:05 +0100
Message-Id: <20191121103807.18424-1-kraxel@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: v2KU_SL4M82QxEvfKpZ39A-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1574332694;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=zey4EFc9y8GuASiUFG0DlVEVpg1oLNuBFXO0/QhaW4Q=;
 b=TfAXQGuKfYZEOGG8kArIolFBxFFmZbAYc2VQdyzh9tkb8bDWI7NqBKfoXJ2eAlW8xqGy9i
 Z179Na9abFdP8NMjvipHgny9sxqmMnnOlMT2bnzsnHT6RYLOUwTqSWPvkiJK1qYjlgHrg6
 J/I1gCFGM+c9k8CyQM5a7jUcgOvABgE=
Subject: [Intel-gfx] [PATCH 0/2] drm: mmap fixups
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
Cc: intel-gfx@lists.freedesktop.org, Gerd Hoffmann <kraxel@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGVzdGVkIG9uIHFlbXUsIHdpdGggYm9jaHMgKHZyYW0gaGVscGVycykgYW5kIGNpcnJ1cyAoc2ht
ZW0gaGVscGVycykuCkNjJ2luZyBpbnRlbC1nZnggZm9yIENJIGNvdmVyYWdlLgoKR2VyZCBIb2Zm
bWFubiAoMik6CiAgZHJtOiBjYWxsIGRybV9nZW1fb2JqZWN0X2Z1bmNzLm1tYXAgd2l0aCBmYWtl
IG9mZnNldAogIGRybTogc2hhcmUgYWRkcmVzcyBzcGFjZSBmb3IgZG1hIGJ1ZnMKCiBpbmNsdWRl
L2RybS9kcm1fZ2VtLmggICAgICAgICAgICAgICAgICB8IDQgKy0tLQogZHJpdmVycy9ncHUvZHJt
L2RybV9nZW0uYyAgICAgICAgICAgICAgfCAzIC0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9nZW1f
c2htZW1faGVscGVyLmMgfCAzICsrKwogZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jICAgICAg
ICAgICAgfCA3ICsrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvX3ZtLmMgICAgICAg
IHwgNyAtLS0tLS0tCiA1IGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDE0IGRlbGV0
aW9ucygtKQoKLS0gCjIuMTguMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
