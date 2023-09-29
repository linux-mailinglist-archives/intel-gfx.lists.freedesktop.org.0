Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B897B345B
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 16:11:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEB9610E139;
	Fri, 29 Sep 2023 14:11:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1561 seconds by postgrey-1.36 at gabe;
 Fri, 29 Sep 2023 14:11:13 UTC
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [80.237.130.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FA0210E140
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Sep 2023 14:11:13 +0000 (UTC)
Received: from [2a02:8108:8980:2478:8cde:aa2c:f324:937e]; authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1qmDnq-0008DL-36; Fri, 29 Sep 2023 15:45:10 +0200
Message-ID: <dc5e2e6b-f162-454a-b1f8-816c0d62401d@leemhuis.info>
Date: Fri, 29 Sep 2023 15:45:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US, de-DE
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <4857570.31r3eYUQgx@natalenko.name> <ZQmrR7FVKRdVP53q@debian.me>
From: "Linux regression tracking #update (Thorsten Leemhuis)"
 <regressions@leemhuis.info>
In-Reply-To: <ZQmrR7FVKRdVP53q@debian.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-bounce-key: webpack.hosteurope.de; regressions@leemhuis.info; 1695996673;
 8fa81c47; 
X-HE-SMSGID: 1qmDnq-0008DL-36
Subject: Re: [Intel-gfx] [REGRESSION] Panic in gen8_ggtt_insert_entries()
 with v6.5
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
Reply-To: Linux regressions mailing list <regressions@lists.linux.dev>
Cc: Linux Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Regressions <regressions@lists.linux.dev>,
 Linux DRI Development <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 19.09.23 16:08, Bagas Sanjaya wrote:
> On Sat, Sep 02, 2023 at 06:14:12PM +0200, Oleksandr Natalenko wrote:
>>
>> Since v6.5 kernel the following HW:
>>
>> * Lenovo T460s laptop with Skylake GT2 [HD Graphics 520] (rev 07)
>> * Lenovo T490s laptop with WhiskeyLake-U GT2 [UHD Graphics 620] (rev 02)
> 
> #regzbot ^introduced: 0b62af28f249b9
> #regzbot title: gen8_ggtt_insert_entries() panic on Lenovo T14s (Tiger Lake) due to folio_batch() on shmem_sg_free_table()
> #regzbot link: https://gitlab.freedesktop.org/drm/intel/-/issues/9256

#regzbot fix: i915: Limit the length of an sg list to the requested length
#regzbot ignore-activity

Ciao, Thorsten (wearing his 'the Linux kernel's regression tracker' hat)
--
Everything you wanna know about Linux kernel regression tracking:
https://linux-regtracking.leemhuis.info/about/#tldr
That page also explains what to do if mails like this annoy you.


