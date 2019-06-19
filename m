Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 423144C17E
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 21:27:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BD816E459;
	Wed, 19 Jun 2019 19:27:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com
 [IPv6:2607:f8b0:4864:20::844])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9443E6E45B
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 19:27:47 +0000 (UTC)
Received: by mail-qt1-x844.google.com with SMTP id h21so354274qtn.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 12:27:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=VbHxdpO7Q2+DXgJDf4+Ks/YOti0Ci+NtrdzX5AEvrRk=;
 b=RdwcQVKTsVRgbOqUGl0s6UMuAdUy9XKtD/2Df7JpyiLoPfST1LokiVprxAOW6Rh1IH
 FzkpvSMm797kmhevywgYY02oXQxclLyQPVXKaPa59j2a+1yDZOD3jO871gCf1voOarCv
 pVOp9+M0Ox2qDg03NrscDPH+iW0RyiX5ml3441fvmFHcet2AfEqOpAO+ZozIS5t1KXyr
 hGb2rIAaUwbzE1WQ+Ex6E9m9wVEGNCdwndULUn9Z3+pO41+2ArXp5ofzv1LKuNa8g5T2
 gw6UvoDeqNa0LtAM7uCfZUHs3d9OBJDYWYeT9ZV+XC9ZVUs8hhwBaclL3YKf5qdHJtVt
 +KkQ==
X-Gm-Message-State: APjAAAUxBdrmzWPE5XQ3zfmcixLVxCEmJzV1duPjIVz8z1z1l/rqfLgq
 S77BN0/T7yGgmjx4T9Gjnsxo5w==
X-Google-Smtp-Source: APXvYqzxlR8S4IeyW9wtKYragnwYUBbUHU+6TEVShKU/NPOqaizYfIrRsJmOS+94BtC4eVBTr/bGxQ==
X-Received: by 2002:ac8:1978:: with SMTP id g53mr18415709qtk.3.1560972466705; 
 Wed, 19 Jun 2019 12:27:46 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id p37sm12023430qtc.35.2019.06.19.12.27.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 12:27:46 -0700 (PDT)
Date: Wed, 19 Jun 2019 15:27:45 -0400
From: Sean Paul <sean@poorly.run>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20190619192745.GA145841@art_vandelay>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent;
 bh=VbHxdpO7Q2+DXgJDf4+Ks/YOti0Ci+NtrdzX5AEvrRk=;
 b=O4zy4PcjlXR+Htqe1RlNSKJZqO+2RF5hnBUN/THcnHW7n8qk4GX+xXvyLshfrZHp1Z
 yQsO6ph0Ri4AFIN2aLPB0kDXCqlI/Nb/0Xy8lyl5uOaU+lJ2u4z1NL0BpOrd6KUEIMHQ
 t4nGptd4o+AgcwltLzVFL3Q7mJ8r7PKqINvUUJkUD0loQSOOHd79lqvvjzzwqnFWiwSk
 LAK8gwBKgN8b2amj8dMoZ9dlQl9mcwTvxZ9en5utADdGGO3eH7Avl7F1YVu1LLCZQIti
 TmbsLWti3xu1KaYv/GBZtNPj1B9utPJfs+yXM8UGbLVgN8muloQOaXMN4IOquVIvWw7o
 wqqg==
Subject: [Intel-gfx] [PULL] drm-misc-fixes
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
Cc: dim-tools@lists.freedesktop.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CkhleSB0ZWFtLAoyIGZpeGVzIHRoaXMgd2VlaywgdGhlIDUuMiB0cmlja2xlIGNvbnRpbnVlcy4K
Cgpkcm0tbWlzYy1maXhlcy0yMDE5LTA2LTE5OgpwYW5mcm9zdC0gT25seSB1bm1hcCBCTydzIGlm
IHRoZXkncmUgbWFwcGVkIChCb3JpcykKY29yZS0gSGFuZGxlIGJ1ZmZlciBkZXNjIGNvcHlfdG9f
dXNlciBmYWlsdXJlIHByb3Blcmx5IChEYW4pCgpDYzogQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5i
cmV6aWxsb25AY29sbGFib3JhLmNvbT4KQ2M6IERhbiBDYXJwZW50ZXIgPGRhbi5jYXJwZW50ZXJA
b3JhY2xlLmNvbT4KCkNoZWVycywgU2VhbgoKClRoZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBj
b21taXQgNDhlYWViNzY2NGM3NjEzOTQzODcyNGQ1MjBhMWVhNGE4NGEzZWQ5MjoKCiAgZHJtOiBh
ZGQgZmFsbGJhY2sgb3ZlcnJpZGUvZmlybXdhcmUgRURJRCBtb2RlcyB3b3JrYXJvdW5kICgyMDE5
LTA2LTEyIDEzOjI2OjI1ICswMzAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRv
cnkgYXQ6CgogIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2RybS9kcm0tbWlzYyB0YWdz
L2RybS1taXNjLWZpeGVzLTIwMTktMDYtMTkKCmZvciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1cCB0
byA3NGI2N2VmYThkN2I0ZjkwMTM3ZjBhYjlhODBkZDMxOWRhMDUwMzUwOgoKICBkcm06IHJldHVy
biAtRUZBVUxUIGlmIGNvcHlfdG9fdXNlcigpIGZhaWxzICgyMDE5LTA2LTE4IDEzOjA4OjQ4IC0w
NDAwKQoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQpwYW5mcm9zdC0gT25seSB1bm1hcCBCTydzIGlmIHRoZXkncmUgbWFwcGVk
IChCb3JpcykKY29yZS0gSGFuZGxlIGJ1ZmZlciBkZXNjIGNvcHlfdG9fdXNlciBmYWlsdXJlIHBy
b3Blcmx5IChEYW4pCgpDYzogQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFi
b3JhLmNvbT4KQ2M6IERhbiBDYXJwZW50ZXIgPGRhbi5jYXJwZW50ZXJAb3JhY2xlLmNvbT4KCi0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KQm9yaXMgQnJlemlsbG9uICgxKToKICAgICAgZHJtL3BhbmZyb3N0OiBNYWtlIHN1cmUg
YSBCTyBpcyBvbmx5IHVubWFwcGVkIHdoZW4gYXBwcm9wcmlhdGUKCkRhbiBDYXJwZW50ZXIgKDEp
OgogICAgICBkcm06IHJldHVybiAtRUZBVUxUIGlmIGNvcHlfdG9fdXNlcigpIGZhaWxzCgogZHJp
dmVycy9ncHUvZHJtL2RybV9idWZzLmMgICAgICAgICAgICAgIHwgNSArKysrLQogZHJpdmVycy9n
cHUvZHJtL2RybV9pb2MzMi5jICAgICAgICAgICAgIHwgNSArKysrLQogZHJpdmVycy9ncHUvZHJt
L3BhbmZyb3N0L3BhbmZyb3N0X2dlbS5jIHwgMyArKy0KIGRyaXZlcnMvZ3B1L2RybS9wYW5mcm9z
dC9wYW5mcm9zdF9nZW0uaCB8IDEgKwogZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0
X21tdS5jIHwgOCArKysrKysrKwogNSBmaWxlcyBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCAz
IGRlbGV0aW9ucygtKQoKLS0gClNlYW4gUGF1bCwgU29mdHdhcmUgRW5naW5lZXIsIEdvb2dsZSAv
IENocm9taXVtIE9TCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
