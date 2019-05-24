Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B50FF29C46
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 18:30:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A8C76E120;
	Fri, 24 May 2019 16:30:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26F646E120;
 Fri, 24 May 2019 16:30:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8D8EBC062ECD;
 Fri, 24 May 2019 16:30:27 +0000 (UTC)
Received: from localhost.localdomain.com (ovpn-112-47.ams2.redhat.com
 [10.36.112.47])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 632D160610;
 Fri, 24 May 2019 16:30:23 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Daniel Vetter <daniel.vetter@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Fri, 24 May 2019 18:30:16 +0200
Message-Id: <20190524163020.17099-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Fri, 24 May 2019 16:30:32 +0000 (UTC)
Subject: [Intel-gfx] [[PATCH 0/4] drm/i915/dsi: Read back pclk set by GOP
 and use that as pclk (version 3)
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQWxsLAoKVGhpcyBpcyBhIHJlc2VuZCBvZiBteSAzdGggYXR0ZW1wdCB0byBmaXggdGhlIHBj
bGsgd2UgY2FsY3VsYXRlIGZvcgpEU0kgcGFuZWxzIGFuZCB0aGUgcGNsayB3aGljaCB0aGUgR09Q
IGhhcyBjb25maWd1cmVkLCBjYXVzaW5nIGZhc3Rib290CnRvIG5vdCB3b3JrLgoKQXMgcmVxdWVz
dGVkIGluIHRoZSByZXZpZXcgb2YgZWFybGllciB2ZXJzaW9ucywgdGhpcyB2ZXJzaW9uIG1vdmVz
IHRoZQpvdmVycmlkaW5nIG9mIHRoZSBwY2xrIG91dCBvZiBpbnRlbF9kc2lfdmJ0LmMgYW5kIGlu
dG8gdmx2X2RzaS5jLgoKVGhpcyBzZXJpZXMgd2FzIGZpcnN0IHBvc3RlZCBpbiBEZWNlbWJlciAy
MDE4LCBidXQgaGFzIGdvdHRlbiAwIGNvbW1lbnRzLgoKVGhpcyByZXNlbmQgaXMgcmViYXNlZCBv
biB0b3Agb2YgNC4xMi1yYzEgYW5kIGFwcGxpZXMgY2xlYW5seSB0byB0aGUKY3VycmVudCBkcm0t
dGlwLgoKUmVnYXJkcywKCkhhbnMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
