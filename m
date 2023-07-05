Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C47A74891E
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jul 2023 18:22:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 812CD10E185;
	Wed,  5 Jul 2023 16:22:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CF2110E185
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jul 2023 16:22:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.de;
 s=s31663417; t=1688574164; x=1689178964; i=deller@gmx.de;
 bh=Hlber4Z7Cd3qr0L2Uhoc2fvca7T/yNNA9ie9vqfcvcg=;
 h=X-UI-Sender-Class:Date:Subject:To:Cc:References:From:In-Reply-To;
 b=HHpiJod8lIUM1nYnFzSr85XxN/f+IBdaxNXE7JfrN1JmwyQ6bV7eRAGjwk7Hn0jwrXbv69f
 /91fGDVcBJPk3s6A7fvG1ByfgCaSF0t8DoWbosXUtDs5X0U8e/45rqFiAyKj/o1ntTPVYMDIb
 j2Ri0CT0wHlesq5KtOAMgaoz++ki35qI6WLe8/32L6QLFBUapiBj+HOt1/aQTULW67kd/7Gir
 zwpRLRPoco7Ll6YyNMfYA9Hewaz2efHwpXslPkU8HWWvlb7wv2mSAhmG4kaq5zMpmaRdSwkfa
 SijXWpiuLiCfXMJWQ0sHt6dWzzZlqmTj9cjk8gsQmidsGBe21f0A==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.20.60] ([94.134.149.108]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MK3Rm-1qaOoU0OWk-00LSx0; Wed, 05
 Jul 2023 18:22:44 +0200
Message-ID: <17b4e65f-a140-8e4d-505b-f2f6f7d1a8c5@gmx.de>
Date: Wed, 5 Jul 2023 18:22:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
To: kernel test robot <lkp@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>
References: <202307060015.uSSLonkv-lkp@intel.com>
Content-Language: en-US
From: Helge Deller <deller@gmx.de>
In-Reply-To: <202307060015.uSSLonkv-lkp@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:JWzwb8Bva/UEgbtilJvt13AQt9pzz5xRYErsh3WY62+4pR/JSr7
 E/ZCgIGCfWrdxsdAhFANBDjvFgoalIGY6w7xXDDvVbo6bukUPeo3H0kPOGuGfEuEPW+hpci
 5yURWZq12WjOMTG4sxOTFyDeY6nqEQEW+JLLHm6PvKGEeuQtUcX+IqGGbdSuMFfQaX3tZ/X
 GoEZ2H3cKEEDXrgvGuj3g==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:S8CTIvuZ93Q=;Yy5kGFHKOIF64l/dJf6L9tVy8J1
 F9W0Dixe2+IK8eY7U+fy5r+gr5Z7DsLdmqZD9wUVe80JXUrFIjGe8+cpSdO5uqMn1jdSKQqT1
 duQOsmIvSS9J1BF5x7eK7c7f7YzTXH7R9Ca9x0l5U3h0/cl9qz3iIJM6u5IqSb68CUweB8D5t
 xQspgNRbIzAH3pm7gSyTMTVlw75mE358cIp+jQ5FFt4Og4NiejEzNxSww8Q3ONC3mAAvycbZU
 YVpyFtVW2bkh0FFPgKbVS64+ARCtNJ5ro3XzK4YnevLWgNcvpHQe8219vzx5nlWq0XyogFDEo
 9vPQF5UaGWPfv7Wsj226k2bTtCKlKtpSboIoyjizpulceSkWD9JCipY4RgPs+e+wJozuFqypQ
 Wz5uFxNK4TQ5l5zDSbpG6oEQlJtFwVPRjSyM3Z+/mTedJGd2820lI7IfMaRCMpcP6ubx2Uv2Y
 qtiYcTr6tQKiJz5NkE1AqJ03oTm5LcjvOt2IdiFrN1rEnrq++kG0t+ysXUfZHrHRMTFVZm1Sa
 qCJ0dRaRO9JccFTBTK1Gd3PFFyMSRRW4RS1hdu1QKieuqkRKqTlY/FOAQ2d4jROlTl0GlbbKi
 o2ps10rlSfUJJOtUVxCEfmJIE+SnsBgMxr0YbFGJKYds9ABZHri17Mr8eSAyAH61a2cb1D+HV
 YcZwSIeQVsnycKrL3o7nA+Lte5BshDpdg91Q5SiA3geQQA4rL5DVKiJ8zjbk1+6QWHr6YNNiS
 PQDFUy9enCi0YnwOVWO0kwztKDESTsmi9yLXT5PsgvmNykmAj0DKuRRxJ54XAk9XLzIeLEjq4
 cXKbOveLChOhfQsyMw2xVG1SW4221+M4AwacU90YTahWCAz+NPQKTf8JjLDnuadxFmaVXL2ga
 xM7TtHxhRd+SNNqUGhS1sEPgxbLC1iGmAPn79H9YZmKUBx+a65O2nsAs19qrUoCNRy9wViDu0
 FilYK2I9u34XYp7IBPL+4eEQKPU=
Subject: Re: [Intel-gfx] [linux-next:master] BUILD REGRESSION
 e1f6a8eaf1c271a0158114a03e3605f4fba059ad
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
Cc: linux-serial@vger.kernel.org, linux-parisc@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 linux-kselftest@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-trace-kernel@vger.kernel.org, kunit-dev@googlegroups.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 7/5/23 18:07, kernel test robot wrote:
> tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-=
next.git master
> branch HEAD: e1f6a8eaf1c271a0158114a03e3605f4fba059ad  Add linux-next sp=
ecific files for 20230705
>
> Error/Warning reports:
>
> https://lore.kernel.org/oe-kbuild-all/202306122223.HHER4zOo-lkp@intel.co=
m
> https://lore.kernel.org/oe-kbuild-all/202306260401.qZlYQpV2-lkp@intel.co=
m
> https://lore.kernel.org/oe-kbuild-all/202306291857.nyJjYwqk-lkp@intel.co=
m
> https://lore.kernel.org/oe-kbuild-all/202306301756.x8dgyYnL-lkp@intel.co=
m
>
> Error/Warning: (recently discovered and may have been fixed)
>
> arch/parisc/kernel/pdt.c:67:6: warning: no previous prototype for 'arch_=
report_meminfo' [-Wmissing-prototypes]

The arch/parisc/* warnings have been fixed a few days ago in for-next, and
the patches will most likely be merged upstream today...

Helge
