Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78FEFE99F2
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2019 11:25:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1665D6E917;
	Wed, 30 Oct 2019 10:25:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x834.google.com (mail-qt1-x834.google.com
 [IPv6:2607:f8b0:4864:20::834])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6338489338
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2019 10:25:27 +0000 (UTC)
Received: by mail-qt1-x834.google.com with SMTP id b10so665249qto.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2019 03:25:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=9hYolxApZ/voYxD7XS53KDc3a6r4YHM/nktkVUKF4bg=;
 b=WRJAOYLUnan/xvbNycuPU30TAL39mLyS6oenqTKv4zS55ILT0S42VVlgYHp0qCTm0v
 VJ07UU2aCSpjFKlz/Tb2HRzVIEwF8BHN658nP0dnJSQCLH5vOJCYOxUigb2jUCgwTerp
 GKbR0Y3050jFWmL6qbRkUZYb7WSbxdXEhjFo74mresk2MB1LAIr/OSr9DStLWZPYNQdp
 +Hv2c/SnJgtBfqUQqm4RNMP8Jn96LkGHcxtAEkR8FSXj1PEiZ189iYa5Sul1rNh1uvgO
 ige8ykGDM9DhUHEKE1X3WL4Wer48FG7NqB+SQk/W8knLDRw/O1nzc+cjV9+pKieOG+Y5
 XiUA==
X-Gm-Message-State: APjAAAWCqFZV4dxOvvLzznKmShffS0zZf1WQxtu2xW33TQsGwgPnR89o
 A5LvLe/HOuC2vSXCk1vt3KyIEb1MoO4yKcEERv0yhQ==
X-Google-Smtp-Source: APXvYqzNfLMLIkciJzW8nsmVfiUh78OIF1sL++gBSs7L09dwfMzhLoANZOYDahvQhclKEA2zZZCa7WDy2c6dLP7Vl2g=
X-Received: by 2002:a0c:b0fa:: with SMTP id p55mr28866680qvc.239.1572431126096; 
 Wed, 30 Oct 2019 03:25:26 -0700 (PDT)
MIME-Version: 1.0
From: Chris Chiu <chiu@endlessm.com>
Date: Wed, 30 Oct 2019 18:25:14 +0800
Message-ID: <CAB4CAwcMqyOLJFPcVyoGuiXo-ujeyzL2TJkpZ3qAc1HymJ2x7A@mail.gmail.com>
To: Jani Nikula <jani.nikula@intel.com>, joonas.lahtinen@linux.intel.com, 
 rodrigo.vivi@intel.com, David Airlie <airlied@linux.ie>, daniel@ffwll.ch, 
 intel-gfx@lists.freedesktop.org, dri-devel <dri-devel@lists.freedesktop.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=endlessm-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=9hYolxApZ/voYxD7XS53KDc3a6r4YHM/nktkVUKF4bg=;
 b=sqZ7uuLJqy730ZPYSTR3LHmqWEKUT8SAed5nP4lEaiR0imK6och+z0G4ydgFDSC4R8
 CNWFzVe4eXEN7/5UJawavpoFt20OD5sT6lGoWKWAzT20pqBI0EspLjYfGQ5u2cjXeyFB
 mVmfgG41vaTH+sG5M30eJrVnnTYMJ5BtCc7KLg2cLLeR7NaYyqI687dkc/3qWhT1JVt/
 zQnIy5qKzlC4yAenkBP77ubVrnfVPZltYQ1NTzPNoClZVq9BKJpGdWdgEvtJVyHSi4lX
 cx2FVaZcsh9EX9lQtuwmVSZ8I6AfgdBoHUU86wXoWPV7D6z743C9IdiQyOoaqLPRqti6
 lzWg==
Subject: [Intel-gfx] Unexpected screen flicker during i915 initialization
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
Cc: Linux Kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgZ3V5cywKICAgIFdlIGhhdmUgMiBsYXB0b3BzLCBBU1VTIFo0MDZNQSBhbmQgQWNlciBUcmF2
ZWxNYXRlIEIxMTgsIGJvdGgKcG93ZXJlZCBieSB0aGUgc2FtZSBJbnRlbCBONTAwMCBHZW1uaUxh
a2UgQ1BVLiBPbiB0aGUgQWNlciBsYXB0b3AsIHRoZQpwYW5lbCB3aWxsIGJsaW5rIG9uY2UgZHVy
aW5nIGJvb3Qgd2hpY2ggbmV2ZXIgaGFwcGVucyBvbiB0aGUgQVNVUwpsYXB0b3AuIEl0IGNhdWdo
dCBteSBhdHRlbnRpb24gYW5kIEkgZmluZCB0aGUgZGlmZmVyZW5jZSBiZXR3ZWVuIHRoZW0KYnV0
IEkgbmVlZCBoZWxwIGZvciBtb3JlIGluZm9ybWF0aW9uLAoKICAgIFRoZSBtYWpvciBkaWZmZXJl
bmNlIGhhcHBlbnMgaW4gYnh0X3Nhbml0aXplX2NkY2xrKCkgb24gdGhlCmZvbGxvd2luZyBjb25k
aXRpb24gY2hlY2suCiAgICAgICAgaWYgKGNkY3RsID09IGV4cGVjdGVkKQogICAgICAgICAgICAg
ICAgLyogQWxsIHdlbGw7IG5vdGhpbmcgdG8gc2FuaXRpemUgKi8KICAgICAgICAgICAgICAgIHJl
dHVybjsKCiAgICBPbiB0aGUgcHJvYmxlbWF0aWMgQWNlciBsYXB0b3AsIHRoZSB2YWx1ZSBvZiBj
ZGN0bCBpcyAweDI3YSB3aGlsZQp0aGUgc2FtZSBjZGN0bCBpcyAweDI3OCBvbiBBU1VTIG1hY2hp
bmUuIER1ZSB0byB0aGUgMHgyN2EgaXMgbm90IGVxdWFsCnRvIHRoZSBleHBlY3RlZCB2YWx1ZSAw
eDI3OCBzbyBpdCBuZWVkcyB0byBiZSBzYW5pdGl6ZWQgYnkgYXNzaWduaW5nCi0xIHRvICBkZXZf
cHJpdi0+Y2RjbGsuaHcudmNvLiBUaGVuIHRoZSBjb25zZXF1ZW50IGJ4dF9zZXRfY2RjbGsoKQp3
aWxsIGZvcmNlIHRoZSBmdWxsIFBMTCBkaXNhYmxlIGFuZCBlbmFibGUuIEFuZCB0aGF0J3MgdGhl
IGZsaWNrZXIKKGJsaW5rKSB3ZSBvYnNlcnZlZCBkdXJpbmcgYm9vdC4KCiAgICBBbHRob3VnaCBJ
IGNhbid0IGZpbmQgdGhlIGRlZmluaXRpb24gYWJvdXQgdGhlIEJJVCgyKSBvZiBDRENMS19DVEwK
d2hpY2ggY2F1c2UgdGhpcyBkaWZmZXJlbmNlLiBDYW4gYW55b25lIHN1Z2dlc3Qgd2hhdCBleGFj
dGx5IHRoZQpwcm9ibGVtIGlzIGFuZCBob3cgc2hvdWxkIHdlIGRlYWwgd2l0aCBpdD8gVGhhbmtz
LgoKQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
