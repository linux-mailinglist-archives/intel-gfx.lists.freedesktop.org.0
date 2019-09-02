Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C08A593D
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2019 16:25:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4171189A9F;
	Mon,  2 Sep 2019 14:25:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A74C89A9F
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2019 14:25:35 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id g7so14263211wrx.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Sep 2019 07:25:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EnfTPecX2+db21ftY9+dO6dPyijct3K+JxguAwUnYG4=;
 b=O6SDl6dcYGHVEH03rSZ1Gh90prbsCngVhHUNsnkWkOsgPArAimk2kf43pNcd6yOddk
 El1bwQHP/G/ojmu7Jv5yHkjQfqBElT76eULzZioLhNt3iMgxw0ykfUOWSlBHd0O1a5xs
 AmCqNHa8l1oZC847ObhN+6KKgepUdouzwIjzRXVjOsmktBCo+EZbxhytFfkP7QN9HRQf
 saOLmH13puFr584A+BI4HrZi0ei/WH3klSDpdHetxW6zLZbualG1maRC4vh4GksQmU3W
 oGBk5U4TCVg08rChGULBPmuXgPmfUSiwrPKveAQe+44OTuxK3Q98g+cwj6WJzKdUhp0g
 Jbdw==
X-Gm-Message-State: APjAAAVuYXa/ofIvN32FYkylj/Db6ejrBsW52UC138aeILwZulPXXo5Y
 EX59yJq3Y/otuY7yeU+Tlr/Wkg==
X-Google-Smtp-Source: APXvYqwTgtUQQpLwiP0MCFol1mfNQcOQBzNT/JReW5BXzTA+iAvCB169+Tf/K8jzywqakkIWIFpSJg==
X-Received: by 2002:adf:ef12:: with SMTP id e18mr7704047wro.65.1567434333418; 
 Mon, 02 Sep 2019 07:25:33 -0700 (PDT)
Received: from HeinrichFink-DPT-IR1433.local ([213.86.25.14])
 by smtp.gmail.com with ESMTPSA id j1sm4509692wrg.24.2019.09.02.07.25.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 07:25:31 -0700 (PDT)
From: Heinrich Fink <heinrich.fink@daqri.com>
To: daniel.vetter@ffwll.ch
Date: Mon,  2 Sep 2019 16:24:11 +0200
Message-Id: <20190902142412.27846-1-heinrich.fink@daqri.com>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190814171518.GL7444@phenom.ffwll.local>
References: <20190814171518.GL7444@phenom.ffwll.local>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daqri.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EnfTPecX2+db21ftY9+dO6dPyijct3K+JxguAwUnYG4=;
 b=XEmtMZaVmj0Cj9s2cEhGOa5Z3ASvKoQ5iGYC/4kPwTghBEGW0GBV6Ydmb/a+wChC1j
 X9GJ7jpKXO7DR4x7cgqE6cA5gFGf6HizwVTvggWPt6pFR0RDPvLvFgcFA6QjpGAhFRn/
 g2snOFhHJ526OyCsH6au97a00ndysBtjoA8WU=
Subject: Re: [Intel-gfx] [PATCH] drm: Add high-precision time to vblank
 trace event
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhhbmtzIGZvciB0aGUgcmV2aWV3LCBEYW5pZWwuIEkgbm90aWNlZCB0aGF0IG15IGxhc3QgbmFt
ZSB3YXMgbWlzc2luZwppbiB0aGUgaW5pdGlhbCByZXZpc2lvbiAobXkgZ2l0IGNvbmZpZyB3YXMg
bWVzc2VkIHVwKS4gSSBhbSBzZW5kaW5nIHYyCm9mIHRoaXMgcGF0Y2ggdG8gZml4IHRoaXMsIGlu
Y2x1ZGluZyB5b3VyIHIvYiB0YWcuCgpDaGVlcnMsIEhlaW5yaWNoCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
