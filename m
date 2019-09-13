Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FEFCB2545
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2019 20:39:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A2806F438;
	Fri, 13 Sep 2019 18:39:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x943.google.com (mail-ua1-x943.google.com
 [IPv6:2607:f8b0:4864:20::943])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F41286F437;
 Fri, 13 Sep 2019 18:39:40 +0000 (UTC)
Received: by mail-ua1-x943.google.com with SMTP id z8so9490777uaq.11;
 Fri, 13 Sep 2019 11:39:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ldi0htX5f7wZiOw2Q4qLhS+PEYOSJ0rRwARnvGras4k=;
 b=QNNLMY9sYzmntQYB2kqerUDt4bd43QO8YRUtKp0/n2aHh1CcEPd7alG939VHJU3Krw
 QEGL+K5rbBo6/ldtCLOkNoWCKWso2yCv7Re9VyHszGzJrt/v10aWj5yBSRdse38nUC+s
 sWCZx8PGz7pSdY0K19ULjaMXRXhMnhOzMlPcj/HnXJ0gfz4lE0E117r1lb5uoP/wT1iJ
 iTIfEPV5bIQeXwW7uehMwErUSKlWdnpF+7fZcDyLaDTf47OGN4b84LmGWo/fDuT8u02G
 pMmHIwjoGh8cbKzM7tcWBcnVekuhFuD6fSeiwudIiOt8ggQQLE2yg+pxjkYTK2iuykIZ
 eIcQ==
X-Gm-Message-State: APjAAAVsSedZSrZi4L3NBbkdkdYSHc27aAbD7h+keSGaY4tNkM2BsE0P
 xNucABlAPlcSCiyUFCTyUhmQ3/Ov10vG+ZEzH8cBUrvZ
X-Google-Smtp-Source: APXvYqwePBUL9CsrXetcQYNETyBtqsc6JaBU6Et+vB+1Q77Xmk1TmEiHKLrMv575Pt94NWJSF7AcbMmjKM8WUjHsfa4=
X-Received: by 2002:ab0:2c13:: with SMTP id l19mr6047099uar.2.1568399979773;
 Fri, 13 Sep 2019 11:39:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190907115952.3227-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190907115952.3227-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 13 Sep 2019 19:39:13 +0100
Message-ID: <CAM0jSHMZgYp1=fQ6JZxmimhJcTmdweVSFnqgxYVvHXPkGcSRgg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=Ldi0htX5f7wZiOw2Q4qLhS+PEYOSJ0rRwARnvGras4k=;
 b=pifVcEpKIWS8hYLVwFbHtPJ7Yh6f62NjHXNPcJJcJ6qxFQPUY63WZXTOPWD+V2cjna
 nAEOv7p5onHZAzlf2BRaf4Pa5fOC3X3Tb1Uy5ti40e8VIlUgENFFju6cJbRa5cchh6YP
 zUToi26qeqkFcAj7MEDEgJQTT8l2l2ES8mQAEEFHJJEWa61IbK6UWnts7ZL5T2+Ew4MS
 b3fsusV6SFzToYzpx6DRSa2YBZVxNLUglK7hBYmsUXRtsLemR3X9qpwSAEQItTt9RgRB
 zV5j/Q7SjWudrp/EKF1HdzDv3RwdoeogQ0ONAkHaHzC9uIUv+TPWeXSuX7iaJeCwO8Qs
 jkVQ==
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/4] i915/gem_exec_balancer:
 Beware the migratory fence
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
Cc: igt-dev@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU2F0LCA3IFNlcCAyMDE5IGF0IDEzOjAwLCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBJZiB0aGUgb2JqZWN0IG5lZWRzIHRvIGJlIG1pZ3JhdGVk
LCBpdCBtYXkgd2lsbCBuZWVkIEdQVSByZWxvY3MgYW5kIHNvCj4gaGF2ZSBhbiBleGNsdXNpdmUg
ZmVuY2Ugc2hvd2luZyB1cCBpbiB0aGUgd3JpdGUgZG9tYWluLgo+Cj4gU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClJldmlld2VkLWJ5OiBNYXR0
aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
