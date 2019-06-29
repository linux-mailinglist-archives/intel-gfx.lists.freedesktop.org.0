Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6B55ACF9
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Jun 2019 21:03:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B9976E9B4;
	Sat, 29 Jun 2019 19:03:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 381 seconds by postgrey-1.36 at gabe;
 Sat, 29 Jun 2019 19:03:17 UTC
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
 [66.63.167.143])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C21336E9B3
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Jun 2019 19:03:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id 5309A8EE0E3;
 Sat, 29 Jun 2019 11:56:54 -0700 (PDT)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id r28EQWhnDg8I; Sat, 29 Jun 2019 11:56:54 -0700 (PDT)
Received: from jarvis.lan (unknown [50.35.68.20])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id C2B608EE0C3;
 Sat, 29 Jun 2019 11:56:53 -0700 (PDT)
Message-ID: <1561834612.3071.6.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 29 Jun 2019 11:56:52 -0700
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=hansenpartnership.com; 
 s=20151216; t=1561834614;
 bh=1KZhaxtkJRxfrKc7nv1ygTJA0Gwrm6nucR5l2ijaXZs=;
 h=Subject:From:To:Cc:Date:From;
 b=BV1BIchaS2HhOPf7/TC81OlpMbroVdwNf6nyEYzDDBPpFxKfcFM1qhLYanlUeusAG
 0P354YaJYJQCZkC8CyKF2g7jru14prRaRIKx3QSJHIdjT6byIaG+nzhiWuGA9PMorG
 /q6P2/N6e7YiYztQ8VTsRe9WYO9+RyEc0dJmUOTQ=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=hansenpartnership.com; 
 s=20151216; t=1561834614;
 bh=1KZhaxtkJRxfrKc7nv1ygTJA0Gwrm6nucR5l2ijaXZs=;
 h=Subject:From:To:Cc:Date:From;
 b=BV1BIchaS2HhOPf7/TC81OlpMbroVdwNf6nyEYzDDBPpFxKfcFM1qhLYanlUeusAG
 0P354YaJYJQCZkC8CyKF2g7jru14prRaRIKx3QSJHIdjT6byIaG+nzhiWuGA9PMorG
 /q6P2/N6e7YiYztQ8VTsRe9WYO9+RyEc0dJmUOTQ=
Subject: [Intel-gfx] screen freeze with 5.2-rc6 Dell XPS-13 skylake  i915
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
Cc: linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIHN5bXB0b21zIGFyZSByZWFsbHkgd2VpcmQ6IHRoZSBzY3JlZW4gaW1hZ2UgaXMgbG9ja2Vk
IGluIHBsYWNlLiAKVGhlIG1hY2hpbmUgaXMgc3RpbGwgZnVuY3Rpb25hbCBhbmQgaWYgSSBsb2cg
aW4gb3ZlciB0aGUgbmV0d29yayBJIGNhbgpkbyBhbnl0aGluZyBJIGxpa2UsIGluY2x1ZGluZyBr
aWxsaW5nIHRoZSBYIHNlcnZlciBhbmQgdGhlIGRpc3BsYXkgd2lsbApuZXZlciBhbHRlci4gIEl0
IGFsc28gc2VlbXMgdGhhdCB0aGUgc3lzdGVtIGlzIGFjY2VwdGluZyBrZXlib2FyZCBpbnB1dApi
ZWNhdXNlIHdoZW4gaXQgZnJlZXplcyBJIGNhbiBjYXQgaW5mb3JtYXRpb24gdG8gYSBmaWxlIChp
ZiB0aGUgbW91c2UKd2FzIG92ZXIgYW4geHRlcm0pIGFuZCB2ZXJpZnkgb3ZlciB0aGUgbmV0d29y
ayB0aGUgZmlsZSBjb250ZW50cy4gCk5vdGhpbmcgdW51c3VhbCBhcHBlYXJzIGluIGRtZXNnIHdo
ZW4gdGhlIGxvY2t1cCBoYXBwZW5zLgoKVGhlIGxhc3Qga2VybmVsIEkgYm9vdGVkIHN1Y2Nlc3Nm
dWxseSBvbiB0aGUgc3lzdGVtIHdhcyA1LjAsIHNvIEknbGwKdHJ5IGNvbXBpbGluZyA1LjEgdG8g
bmFycm93IGRvd24gdGhlIGNoYW5nZXMuCgpKYW1lcwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
