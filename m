Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D671AA6FC9
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 12:35:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCD2B10E176;
	Fri,  2 May 2025 10:35:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metux.net header.i=lkml@metux.net header.b="BSt7V2zy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7FB110E176
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 May 2025 10:35:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=metux.net;
 s=s1-ionos; t=1746182108; x=1746786908; i=lkml@metux.net;
 bh=yt14myksybm7tR48rAEE6PDu++cETn1tRHKYY+7RgvY=;
 h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
 References:From:In-Reply-To:Content-Type:
 Content-Transfer-Encoding:cc:content-transfer-encoding:
 content-type:date:from:message-id:mime-version:reply-to:subject:
 to;
 b=BSt7V2zyMKvUBxFvx53D/XPYhnZu24QdpyvJRx/Rai1R/S11Y4L6sC5Eg/3KV+Wn
 asg8BA+pW+e30aGHmDET8lvz4mUn97omR7JPwDaaFTZNctFuQMekCjC4GuD7JJS5D
 Wj/GMFPpv5M3GSW2xByJ8JLZazJD8uP/njm6vFl9RKT+wwF5Oo46P3QahzZNVH5DO
 9a5g4p6mcDmvdAUUWpnOCqvAwwD208MGE+Dex3pPH0+nBfIzjfYypzu7EpTymfbsU
 JJQarwmbfoHasP6hj6b6SuPOwpoyoMPr3GXokL33t2SBU0m16SGSwa7C9fiuuIcc+
 djTLuK40CitCTWcErQ==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from [192.168.1.132] ([95.117.7.27]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MwwuJ-1v07lP2K2V-011l2f; Fri, 02 May 2025 12:35:08 +0200
Message-ID: <92925d53-b46d-4254-a23e-829332deceeb@metux.net>
Date: Fri, 2 May 2025 12:37:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 14/16] Define __container_of only if not defined yet.
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "Enrico Weigelt, metux IT consult" <info@metux.net>
Cc: intel-gfx@lists.freedesktop.org
References: <20250304155809.30399-1-info@metux.net>
 <20250304155809.30399-15-info@metux.net> <Z93l9whslKC-KeTR@intel.com>
Content-Language: tl
From: "Enrico Weigelt, metux IT consult" <lkml@metux.net>
In-Reply-To: <Z93l9whslKC-KeTR@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:9Ix5ejz6FULVcdKOxyIgvxYgsSLexxXe1bbs0p41KadZM3L2W3L
 1ZJNJDZVG20Mv/ifbYhUoNNwyUfQAJUNqPyTWfqZAPR42Or6y/4cMiGmnvbAlaoNVgqMS8a
 2Y9+CxBD5p9iFVZXpsYct7hM853tgDicU12rfc2U1eDdPP20t6ZsTHVrk8QRqBKj5RQivoR
 JZukylBSKjlJYkhUKwp8A==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:0gOH0PjPc7c=;FMRRKVuWsj4sM3qkuFKWLfSen6P
 4JRtJyz9xtUUdZHDtk62llQalNIASXJtaDd5ShebNyUDMoRd4KdWZ9mqBCCXBxYgs/Bv4xAFD
 dn2V12n4eYgikGM8d8j6G2S4LFWfKiZCod587k4wOaXN1CQqkOZC+RSmGaH2vQ65gVGrHRgm/
 ccKuxhMwdozx8hjy3dncJ+4yCdiV/+jX5PWA8WH/UuAtrLbtKBGiaOg4JcD3XQNeFNip7W1FJ
 pbIaBDILFSGoKYeDBktucbJm3p3yQFhjMMt7mhgNKTC4xxa6aVM/ENznW+MUUGgvkezKkgdFW
 0nF5GsPCyBhtSDwBlJTtIuUNIMzPFWwXj+Xzz/37BfZIyU3jHMallwOdaXEfbu4EwqESzPznM
 IbVanL7pDQoiTR0RLllv0W3dPmqE38kPWfSuqAd8iDNYa+0NFpDwOUCnZWDuXo4Uy4xnE4UD3
 0D3FAw08bGX3pTs1hM6GDd5QUGYlh5PBnfn26xYpf/C37FItkoTeXqmeyLzg2pbO5/ultHoVj
 tFBwhgwLxK6ghFwWaZOSrWf/VZb6IeJKalEt/vWOKzDqBZcn++1EmPaF3vqUmsZL5bMYgo/3l
 OAgLnVB5cdgNSrvI3EQ/RKCYdnvxqLVzVcT+FFVQZ5i11l1zR9T2tGVeAz5MLawwfvjDZniXX
 3puGdhbX5wV5iDQbXyelQgzouVPUXQsQ/t7zBr8+qXdT0mv6NDYC88w9j2SzJwzhFvf6YNMTa
 nq8BajiIICpcQVQSKo6ClLdNIS9olss3bouAXfOICJkStW3d9pjvaKbJ1GJCebOZIjYETxXVd
 RmmT4qy5yvjB7D4hAh61taZHwYAoAhQw2YgMt1w6AYElYIUo1IPzwZJ9NBJaynFo86dkbZpJw
 6TH+rE+OBV4Yo3v4BodUyg7Xi+/+NjXyNmVR+KE9o1/bWzKfFQB4IwMD2/ylXKu1SGjjJLeSz
 FyIuRmF8hgCHWpS3KmoTCb7jRB03OWw9VFM286aN1ADMWGhW3VduvZuI2Y4PFgDuYi4EwqFq4
 3OkW7+JEKCTPT4G34uD45TPtO6ryIadBdFC3OwZTT/vnIFDk5ugu8fCFBEvzOmNHvceeiiaHe
 JB+2MDGwyVI6Uq4qz+8Zmv1cJqRUb4lBocWmMkSEF3fvisnC6ZK42l/MFgM95Sn46hqZmSnc8
 UVJRs6Pn2RrFSG2xvCVLwHZh0BYfSO9tobLZIBnvH/JqU4VPzp8Zds/rQGX2mtAWBitIN7bRu
 83cOlYNKMYz0Hh3OXyum9hDQi1T1pDae0IGlEHrWC+7Ube30+5d7yRO1eB/RSzoM3ekZlrHLL
 AzrbjO4RPMgTJ2USeeAeQdQvdRrhoXvw0Xz5qivyGLwLHnr4cx7/AXqa+UdR7QOvVK2mjHyz+
 linZjixYBdbMOdZivKlvKzK4HQtCJqXZ93+p+C9y9vWzlLottqrY9H5rKz
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 21.03.25 23:19, Ville Syrj=C3=A4l=C3=A4 wrote:

> Looks like I never added the benchmarks and tests to the meson
> build. So that could partially explain why I'm not seeing this.
> But intel_list.h is used for real so I'm confused as to why
> you are seeing some issues that I can't see.
>=20
> Who is defining this in your case?

Xorg headers.


=2D-mtx

=2D-=20
=2D--
All racism is bad. All lives matter.
=2D--
Enrico Weigelt, metux IT consult
Free software and Linux embedded engineering
info@metux.net -- +49-151-27565287

