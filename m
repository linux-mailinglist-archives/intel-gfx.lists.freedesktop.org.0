Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8354325E14
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 08:34:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 861E689760;
	Wed, 22 May 2019 06:34:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D218B89760;
 Wed, 22 May 2019 06:34:45 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 36259AE99;
 Wed, 22 May 2019 06:34:44 +0000 (UTC)
Date: Wed, 22 May 2019 08:34:42 +0200
From: Michal Hocko <mhocko@suse.com>
To: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Message-ID: <20190522063442.GZ32329@dhcp22.suse.cz>
References: <20190521100611.10089-1-daniel.vetter@ffwll.ch>
 <3bab9909-b32a-8cc6-df38-5afc2e7bff69@I-love.SAKURA.ne.jp>
 <20190521105126.GP32329@dhcp22.suse.cz>
 <cb86e2b2-7717-0d48-1fca-eba6cb975e96@i-love.sakura.ne.jp>
 <20190521111151.GS32329@dhcp22.suse.cz>
 <765bdfea-915d-ee86-f885-59b11f4c54db@i-love.sakura.ne.jp>
 <20190521144404.GO21222@phenom.ffwll.local>
 <24951d83-9476-98a6-ee45-484d4de07a52@i-love.sakura.ne.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <24951d83-9476-98a6-ee45-484d4de07a52@i-love.sakura.ne.jp>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] kernel.h: Add non_block_start/end()
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkIDIyLTA1LTE5IDA2OjA2OjMxLCBUZXRzdW8gSGFuZGEgd3JvdGU6ClsuLi5dCj4gU2lu
Y2UgT09NIG5vdGlmaWVyIHdpbGwgYmUgY2FsbGVkIGFmdGVyIHNocmlua2VycyBhcmUgYXR0ZW1w
dGVkLAo+IGNhbiBpOTE1IG1vdmUgZnJvbSBPT00gbm90aWZpZXIgdG8gc2hyaW5rZXI/CgpUaGF0
IHdvdWxkIGJlIGluZGVlZCBwcmVmZXJhYmxlLiBPT00gbm90aWZpZXIgaXMgYW4gQVBJIGZyb20g
aGVsbC4KCi0tIApNaWNoYWwgSG9ja28KU1VTRSBMYWJzCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
