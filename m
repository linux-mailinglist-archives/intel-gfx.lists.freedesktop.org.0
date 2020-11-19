Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C452BB1C4
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Nov 2020 18:52:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51CC16E8E7;
	Fri, 20 Nov 2020 17:52:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56ABC6E505
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 08:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=jcbw/eyVfnbfdHJro1vHTXYTyRctErbkL+b276KdvN4=; b=IzeTUVpHy00R9lEekudlDEZQN7
 l76maYNe7DMK3exjc/lXmNMKHbBnJa1NQ4ndQXyljBuJNpfG8JvrymNCzwLlvc/gAG82vgstMMBX8
 RNIRnM8wfbpDTe0jvbe7ZWwf34t1Ow4NsQ9miK3RaSUwI35G83gVkq5Yog06+vEit/CFVWNc9oniX
 8CZinRo2FlWGiFEDl6WTJR6BWg/zDRnNXK1wh/xJuP5msx5A+V5aoVQg3xIWLyKNAPNbnPbsDUzR5
 JHuQXQu8EZiuvuFYYw7STBzSJA95NyZPBB26wRh98ZSUi/FCEM88V1W48fmzCtRipMG67sNCwV855
 Dh/jTnIQ==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1kff2h-0002GY-4f; Thu, 19 Nov 2020 08:11:47 +0000
Date: Thu, 19 Nov 2020 08:11:47 +0000
From: Christoph Hellwig <hch@infradead.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20201119081147.GA8577@infradead.org>
References: <20201118165320.26829-1-jani.nikula@intel.com>
 <20201119081120.GA6149@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201119081120.GA6149@infradead.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Approved-At: Fri, 20 Nov 2020 17:52:36 +0000
Subject: Re: [Intel-gfx] [PATCH 1/6] relay: allow the use of const callback
 structs
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
Cc: Jens Axboe <axboe@kernel.dk>, intel-gfx@lists.freedesktop.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org,
 QCA ath9k Development <ath9k-devel@qca.qualcomm.com>,
 linux-block@vger.kernel.org, ath11k@lists.infradead.org,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 19, 2020 at 08:11:20AM +0000, Christoph Hellwig wrote:
> Please also add a patch to mark all rchan_callbacks instances const
> while you're at it.

Oops, I just noticed you actually sent that one.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
