Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A811A104558
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 21:49:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 498646E7B2;
	Wed, 20 Nov 2019 20:49:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-xc43.google.com (mail-yw1-xc43.google.com
 [IPv6:2607:f8b0:4864:20::c43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E58F66E7B2
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 20:49:47 +0000 (UTC)
Received: by mail-yw1-xc43.google.com with SMTP id y18so500675ywk.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 12:49:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=WNeLavihiY35/Bti+M2/ppnGXPlLgOgcLTijhR7e7j4=;
 b=IWvAUBL0jzqPZDj8J3ju33HDAEn8I5fnwe1Nds3dTHXdJ0PiTbvyHHJTMR9eOfUe1X
 BMn2weMabZkRuuFOq1La0Sj68HYpU39CP19SKqVhdCCDOMP1K4kpGSHTEUWVldI6J+JE
 E94lyxvQFlIMvT1XSFOLrTkFklLRqNEonc0sTdaoV/YDLPFVu0/0XyqlK/LpiJM6ohYS
 KPdNyk8G/9UNUPeUI6wG5AQE5QMQy+clFC/7H8pWzaciY3WiTBYpEZbEHjQAF8vjnru6
 pWWJ82Ni99iZXsMvoT9A55HcrRLHLRAnfgb9xSIOrUyb1jxnLwinWR6V9mq5AS7sUU2t
 nvDw==
X-Gm-Message-State: APjAAAUPDWs+8IiyFpkHuPSmfUimzBwMib0jAXMoxGAhF99NkR0/DGyk
 ta6Yt4G43sCwZWyBazRn7sA8mw==
X-Google-Smtp-Source: APXvYqxJULa4u9zVjW13ZdKYjGU/GhRFefUGq/5gFIO5deiHXNLTrJDR3ETezg+m+f+K/yhG7xUWIw==
X-Received: by 2002:a81:3dd5:: with SMTP id k204mr3135454ywa.454.1574282987098; 
 Wed, 20 Nov 2019 12:49:47 -0800 (PST)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id 197sm264538ywf.42.2019.11.20.12.49.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 12:49:46 -0800 (PST)
Date: Wed, 20 Nov 2019 15:49:46 -0500
From: Sean Paul <sean@poorly.run>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20191120204946.GA120328@art_vandelay>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent;
 bh=WNeLavihiY35/Bti+M2/ppnGXPlLgOgcLTijhR7e7j4=;
 b=R/+NiXNhs2jyeuM/anmN8G+Fs9BhzkwBj95eNQiMM5w+jadzDNWWUlFjGEQJfomVkw
 WS/fVR95eryT64qjLHJ1KEz0JPjOGbxYEZ0feAy7xmxNYkR8uilfPsDVHjMlQTbyKs0x
 DjGUjcbXDsgPJ+1HCvFQkEllBPb4AXtSJzZpC6QTvnI2Yt0imy9IzYtsRZpFQ45C5pEA
 QdoEPD7HJIrCL8tYwxZIbRI/nPoDBtnuiSqlKn7VR5MXlCx4Tc6DIgwEeUt8ltwh/REF
 23Vatzce9F0jww+UomVJ4VXderGpgoKdc5NtIslfDcPcf4MejPPPmjG4xk4PxzwaXb34
 VfgQ==
Subject: [Intel-gfx] [PULL] drm-misc-next-fixes
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
Cc: dim-tools@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, intel-gfx@lists.freedesktop.org,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CkhpIERhdmUgJiBEYW5pZWwsCkp1c3Qgb25lIHBhdGNoIHRoaXMgd2VlayB3aGljaCBmaXhlcyB0
aGUgYm8gcmVmY291bnRzIHdoZW4gbW1hcCdpbmcgdHRtIGJ1ZmZlcnMKdXNpbmcgdGhlIG5ldyAt
Pm1tYXAoKSBob29rLgoKCmRybS1taXNjLW5leHQtZml4ZXMtMjAxOS0xMS0yMDoKLSBGaXggdHRt
IGJvIHJlZmNudCB3aGVuIHVzaW5nIHRoZSBuZXcgZ2VtIG9iaiBtbWFwIGhvb2sgKFRob21hcykK
CkNjOiBHZXJkIEhvZmZtYW5uIDxrcmF4ZWxAcmVkaGF0LmNvbT4KCkNoZWVycywgU2VhbgoKClRo
ZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBjb21taXQgYTY0ZmMxMWI5YTUyMGM1NWNhMzRkODJl
NWNhMzIyNzRmNDliNmIxNToKCiAgZHJtL21zbTogZml4IG1lbWxlYWsgb24gcmVsZWFzZSAoMjAx
OS0xMS0xMyAxNTozNDoxNSAtMDUwMCkKCmFyZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBvc2l0
b3J5IGF0OgoKICBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9kcm0vZHJtLW1pc2MgdGFn
cy9kcm0tbWlzYy1uZXh0LWZpeGVzLTIwMTktMTEtMjAKCmZvciB5b3UgdG8gZmV0Y2ggY2hhbmdl
cyB1cCB0byA5Nzg2YjY1YmM2MWFjZWM2M2Y5MjM5NzhjNzVlNzA3YWZiYjc0YmM3OgoKICBkcm0v
dHRtOiBmaXggbW1hcCByZWZjb3VudGluZyAoMjAxOS0xMS0xNSAwODowMDowOCArMDEwMCkKCi0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KLSBGaXggdHRtIGJvIHJlZmNudCB3aGVuIHVzaW5nIHRoZSBuZXcgZ2VtIG9iaiBtbWFw
IGhvb2sgKFRob21hcykKCkNjOiBHZXJkIEhvZmZtYW5uIDxrcmF4ZWxAcmVkaGF0LmNvbT4KCi0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KR2VyZCBIb2ZmbWFubiAoMSk6CiAgICAgIGRybS90dG06IGZpeCBtbWFwIHJlZmNvdW50
aW5nCgogZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYyAgICAgICAgICAgIHwgMjQgKysrKysrKysr
KysrKystLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV90dG1faGVscGVyLmMgfCAx
MyArKysrKysrKysrKystCiAyIGZpbGVzIGNoYW5nZWQsIDI2IGluc2VydGlvbnMoKyksIDExIGRl
bGV0aW9ucygtKQoKLS0gClNlYW4gUGF1bCwgU29mdHdhcmUgRW5naW5lZXIsIEdvb2dsZSAvIENo
cm9taXVtIE9TCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
