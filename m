Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5DC233203
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jul 2020 14:28:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2B896E2B4;
	Thu, 30 Jul 2020 12:28:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se
 [213.80.101.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C89F56E8DF
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jul 2020 12:28:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id DE45A3F74A;
 Thu, 30 Jul 2020 14:28:26 +0200 (CEST)
Authentication-Results: ste-pvt-msa1.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=ZB2imiJU; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.911
X-Spam-Level: 
X-Spam-Status: No, score=-2.911 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.812,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from ste-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (ste-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lBzUOvvVu-e4; Thu, 30 Jul 2020 14:28:26 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 2BFE53F2DB;
 Thu, 30 Jul 2020 14:28:24 +0200 (CEST)
Received: from localhost.localdomain (jfdmzpr03-ext.jf.intel.com
 [134.134.139.72])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 086F3361FE2;
 Thu, 30 Jul 2020 14:28:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1596112104; bh=IFeJ3e9dK1lAB8JHkID70YGSR6T34uARErYCgWq0HVg=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=ZB2imiJUapfpOYDs/XNhXX4uogFaFJqAVTLuPYUa1pAfULA6bllgxuu+sbLqO4wWZ
 HC2mN9icRzy450/mxEYLwJFIHClwuor92Y1yODb2TwpNW/eMIyrYjv8F+aMBoY1Gea
 gK+6s9ANyVQd2o36Ne8M7vDE5M9Euzf3vx+g9tLk=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-11-chris@chris-wilson.co.uk>
 <dabc6756-3ba8-ee58-ca6c-e2ae2f0227ac@shipmail.org>
 <159594782797.665.3798858958968044733@build.alporthouse.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <1804e5f6-7a1a-999b-cdfd-50903cc3cc1d@shipmail.org>
Date: Thu, 30 Jul 2020 14:28:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <159594782797.665.3798858958968044733@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 11/66] drm/i915: Preallocate stashes for vma
 page-directories
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 7/28/20 4:50 PM, Chris Wilson wrote:
>
> It's in the user critical path (the shortest path to perform their
> sequence of operations), but it's before the dma-fence itself. I say
> that's a particularly nasty false claim that it is not on the critical
> path, but being where it is circumvents the whole argument.
>   

Couldn't the following situation happen?

1. CS spawns userptr pinning work.
2. CS creates and publishes a DMA-fence that depends on that pinning work.
3. Another driver CS creates and publishes a second DMA-fence that 
depends on that first DMA-fence.
4. userptr pinning starts pinning pages, triggers a shrinker on the 
other driver
5. Other driver shrinker blocks on the second DMA-fence,
6. Deadlock.

Or do I misread the i915 userptr code?

/Thomas


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
