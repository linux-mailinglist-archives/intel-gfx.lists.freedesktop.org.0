Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B272343E7
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 12:05:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E81666EA57;
	Fri, 31 Jul 2020 10:05:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa3.bahnhof.se (pio-pvt-msa3.bahnhof.se [79.136.2.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54D4D6EA57
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 10:05:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa3.bahnhof.se (Postfix) with ESMTP id B57863F5DF
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 12:05:12 +0200 (CEST)
Authentication-Results: pio-pvt-msa3.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=Xt5CLDUD; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.911
X-Spam-Level: 
X-Spam-Status: No, score=-2.911 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.812,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from pio-pvt-msa3.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa3.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6ZnVGZQlEuYs for <intel-gfx@lists.freedesktop.org>;
 Fri, 31 Jul 2020 12:05:11 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by pio-pvt-msa3.bahnhof.se (Postfix) with ESMTPA id DB8863F4F6
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 12:05:06 +0200 (CEST)
Received: from localhost.localdomain (unknown [134.134.137.77])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 8916F361FD5
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 12:05:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1596189906; bh=3LQjN825wAYRjE2vvXFdKTdztZYa0rtVDE/RfltwESI=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=Xt5CLDUDXMv9yUW2m8EvZG7RFw5Z6eP43YYJ3d4lQHrMbETq1fodtiOxJa405lnx8
 j39Bla/D0fD7648F1PS8fXpG2fnQrx4bF2CBDkDsFkTr/kX8QDAfJpKbYUkQ5O+vBH
 956ywWv6f5anAEc8YlvKCiTNkGmuFgaYIEn3AMsk=
To: intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-25-chris@chris-wilson.co.uk>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <56658c4b-5561-5fa4-c9fa-8f634d9cf3d4@shipmail.org>
Date: Fri, 31 Jul 2020 12:05:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200715115147.11866-25-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 25/66] drm/i915/gem: Reintroduce multiple
 passes for reloc processing
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


On 7/15/20 1:51 PM, Chris Wilson wrote:
> The prospect of locking the entire submission sequence under a wide
> ww_mutex re-imposes some key restrictions, in particular that we must
> not call copy_(from|to)_user underneath the mutex (as the faulthandlers
> themselves may need to take the ww_mutex). To satisfy this requirement,
> we need to split the relocation handling into multiple phases again.
> After dropping the reservations, we need to allocate enough buffer space
> to both copy the relocations from userspace into, and serve as the
> relocation command buffer. Once we have finished copying the
> relocations, we can then re-aquire all the objects for the execbuf and
> rebind them, including our new relocations objects. After we have bound
> all the new and old objects into their final locations, we can then
> convert the relocation entries into the GPU commands to update the
> relocated vma. Finally, once it is all over and we have dropped the
> ww_mutex for the last time, we can then complete the update of the user
> relocation entries.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Tvrtko had some issues with this patch when submitted as part of a 
previous series, and they don't seem addressed.

/Thomas


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
