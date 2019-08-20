Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D02096760
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 19:25:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D904F6E849;
	Tue, 20 Aug 2019 17:25:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 587126E7E5
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 17:25:20 +0000 (UTC)
Received: from localhost (unknown [40.117.208.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 004A722DD3;
 Tue, 20 Aug 2019 17:25:19 +0000 (UTC)
Date: Tue, 20 Aug 2019 17:25:19 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
To: Ville Syrjälä <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20190820161657.9658-1-ville.syrjala@linux.intel.com>
References: <20190820161657.9658-1-ville.syrjala@linux.intel.com>
Message-Id: <20190820172520.004A722DD3@mail.kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1566321920;
 bh=8eV8OO49Ia0VhjfpfAoIZeoIA6mjMQiHcoDiMXsAp9k=;
 h=Date:From:To:To:To:To:Cc:Cc:Cc:Cc:Cc:Cc:Cc:Subject:In-Reply-To:
 References:From;
 b=tYwe4hkniCZdk5Nzz3nKjl5Uoo1z0g0F/0rVrMNGp4sXaRCkdcKBfg+XSSySNeiSS
 CQHzAYA3KIMz2AHD0HG+hIKwjPj4ErXOcfO217a03jbBsKekYWTJG9Kam34BI+zidp
 m6NH1SB/+kJl4glIggAsdqNtLCUIp8VyT8eKVBJc=
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Do not create a new max_bpc prop
 for MST connectors
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
Cc: , sunpeng.li@amd.com, Daniel Vetter <daniel.vetter@ffwll.ch>,
 stable@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpbVGhpcyBpcyBhbiBhdXRvbWF0ZWQgZW1haWxdCgpUaGlzIGNvbW1pdCBoYXMgYmVlbiBw
cm9jZXNzZWQgYmVjYXVzZSBpdCBjb250YWlucyBhICJGaXhlczoiIHRhZywKZml4aW5nIGNvbW1p
dDogNWNhMGVmOGE1NmI4IGRybS9pOTE1OiBBZGQgbWF4X2JwYyBwcm9wZXJ0eSBmb3IgRFAgTVNU
LgoKVGhlIGJvdCBoYXMgdGVzdGVkIHRoZSBmb2xsb3dpbmcgdHJlZXM6IHY1LjIuOS4KCnY1LjIu
OTogRmFpbGVkIHRvIGFwcGx5ISBQb3NzaWJsZSBkZXBlbmRlbmNpZXM6CiAgICBVbmFibGUgdG8g
Y2FsY3VsYXRlCgoKTk9URTogVGhlIHBhdGNoIHdpbGwgbm90IGJlIHF1ZXVlZCB0byBzdGFibGUg
dHJlZXMgdW50aWwgaXQgaXMgdXBzdHJlYW0uCgpIb3cgc2hvdWxkIHdlIHByb2NlZWQgd2l0aCB0
aGlzIHBhdGNoPwoKLS0KVGhhbmtzLApTYXNoYQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
