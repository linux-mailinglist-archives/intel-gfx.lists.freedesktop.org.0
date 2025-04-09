Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93856A8284F
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 16:45:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 115A210E912;
	Wed,  9 Apr 2025 14:45:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metux.net header.i=info@metux.net header.b="iPuCFYkm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 309 seconds by postgrey-1.36 at gabe;
 Wed, 09 Apr 2025 14:44:54 UTC
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14BAD10E912
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Apr 2025 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=metux.net;
 s=s1-ionos; t=1744209891; x=1744814691; i=info@metux.net;
 bh=9rLIjMmZznBdEgEBJ68lq2Uhkn0tfr3N5y5YInTfPI4=;
 h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
 References:From:In-Reply-To:Content-Type:
 Content-Transfer-Encoding:cc:content-transfer-encoding:
 content-type:date:from:message-id:mime-version:reply-to:subject:
 to;
 b=iPuCFYkmsy97+vu36dF9Merx9K7vLKALtT4gD/4UBt+2s0fO6zql34iH+MJmXP3T
 l+ZV3Jdb0XDtxFqU8S2Y4qrXBHMR8y1EcgonTKj+6/Wpi+lHp134q9O7g1nMUW96R
 XaU9kR1IiXJkGPTqj6si/OUo0YGTiTYlbmjfOC+DFDCA37VRNQCrJjCxZdnFF+wJz
 z/XP/KYrMN9PTYrGKdUELujVkN4nboWraGPG5Sri7HHvXScatHngX7ySR/+2QMeA1
 KjvoU5QSF8BENNWLjdv0jw801daOhE5qwUQhbbw2+nkoacifVEy+DluhMlYcD8uot
 bgx3RTMsOeWDJf6stA==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from [192.168.1.132] ([77.2.135.41]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MPGmZ-1thzbO2ceb-00Tc6t; Wed, 09 Apr 2025 16:39:35 +0200
Message-ID: <24f4ffda-fd4f-4d9f-971a-803d79870a19@metux.net>
Date: Wed, 9 Apr 2025 16:41:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/16] stop using obsolete xf86BlockSIGIO() and
 xf86UnblockSIGIO()
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
References: <20250304155809.30399-1-info@metux.net>
 <20250304155809.30399-9-info@metux.net> <Z93jCRu-GEAz35_Z@intel.com>
Content-Language: tl
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
In-Reply-To: <Z93jCRu-GEAz35_Z@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:IpEPjq7cYStiF4siQB+K6JAwgYysyoRTzhBCSoROTvbkxo/6FKp
 YYcFaaiuH+129sfEQDP3yYGZQW6MObij/pq4GWGWD0Xf1GOiVM/RW5IjxS8rBBB61BzvhsK
 U8Zo1ceqD5CAX68wfjXbUK6yiCxyVD8FykC5Mr03uGlVCwpmU9ryIrYkjvF6JiEZA6iBkRv
 4R/NtHYbUKzX/ZLNQsQfw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:tO5rwy2SbrQ=;W5WAuBl5NBwELFEdY5b+ItKboEm
 Djz+jWWyJ4mtFd+Oyo5SwmDeOjeyVcQZeaf9AYPuG8ct5Kow+BcpqNPEL739t+BTK5bfpO4RW
 4n1dodC7j57pEJWGIXckZYMjdeCDT2Sa/mf4P1+SAWLz539RIfV6kSmPkQZGs1D7o+9skZ60c
 1jWE6Mf/zm3eeUJPUaAsZKqCoslRRlGJ8QlAJM9azlQQBQhywxGJEP3j72S6F80VNk9OnJYk5
 mKSUurVse8pCO8jTw39IvVBMd7HW2e6KXuY+3yOmDwPkD/TEmDlRbr2/rF6eLSjU63XM4wTMU
 UZF2SrFcY2BNhe9rPSGffEgtVSBCIv/KzWdPn2C81uUzHaCcjv93098mxoL92ceghh5+PweeX
 k1aI3UF2v3JurVlAqRNTMj9+1mccdQb8hID5W11YKzPSo9V6ecePANgvOlyXyJyms9cX2hkte
 YH5M3ygSbafTRUOCyfUUiVEhbeWST6OFjNF/V1dXoRzc9HPvFg4WK7KwTzX08/cGfuV0vopL1
 lVSBguRXPtfQzLHoyPnHw+TYoboU2LI4ofTUh+3sTtu9m+5Z6udZpDIx3eWjOUDryKfDDdZ+P
 aFmLuqYUELZF+sS2cgNB0g2qoebNHu7LMwd0FoCH6rTnlb84LYeMZSQUV+nfuVGv28tAa/wnB
 S/0tUr3IySaUzm2S040+bHh9WPCiXDUN3C1zq53SQndxnUTO9XJ65DYdjmDVY53ci7ggAWUXe
 TaGHaRZAhvvdtleXSDfNCFF0d2PGtRJGmmNVQswje/zvIm2ogb2EgsVbASZKMXXpRNiZ/ilR4
 Ob1BUCP70e9D3wQjwDjajg1oQVkFW0uQIjfFV6WjbFO4wZnDdvrmJdwbQzN5hRy7yVudssTKK
 V5i//9zL04+B7sbCNxnqTIlExJEXPAkQWWxSV5UL+H862TXe7/Add8jsSGsq9x6aA5PWWat9J
 rm39hYy9O+m+4fgQ6T+BqGukdPSonOV6Sa0AdoKKtenDQ5C3HqOCU/lSd84+Y458uz0nP9fgF
 5IHNqQPULgT7Le4tfYsPSKtmYitd+jYwfk91ArJESi+xFISfJp7RM1KqIQbodnH/tNL9dofwj
 AYDi+s8I+C8dUVM3F1rG5LEut5A5CrCtSX2UwUETSx8SdmncOS3jra1qfJ9dsOYF1ZqTjCndd
 spd75CqaQxNVJ1DOW99iW0d98+UuxioO3paBt4PHN6px7OlkE2WCSIJwAClgcpDnEBM49Fd4Y
 iHhBfAoVuuOK48YagtaVvN8xJC7OUkKFeuflEeK0sjZX1OmOEE38HHlYz1Mr8bB6SvIo1Qd4l
 uLwU2ANV1gjwUgV3gsPLuEzCzoSarRPb8OaafF1PBXMlmoAOG08vUYIL7N9zvaMCcdX2ehO17
 LEPXbwuFfXZnQxj6nBkmnz9Qf60gq7/rfU6sU=
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

On 21.03.25 23:07, Ville Syrj=C3=A4l=C3=A4 wrote:
> On Tue, Mar 04, 2025 at 04:58:01PM +0100, Enrico Weigelt, metux IT consu=
lt wrote:
>> These are just wrappers for calling input_lock()/input_unlock() and mar=
ked
>> deprecated for quite a while now.
>
> Listing the relevant xserver commit(s) would be nice here too.

28b2c880a9dbfd91e82397a0f22482d258a8b670

These only had been introduced for making transition easier for pre
input-thread drivers (so old source still compile).
Almost 10 years ago.

=2D-
=2D--
All racism is bad. All lives matter.
=2D--
Enrico Weigelt, metux IT consult
Free software and Linux embedded engineering
info@metux.net -- +49-151-27565287

