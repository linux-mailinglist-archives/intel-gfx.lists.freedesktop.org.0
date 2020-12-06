Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E112D080C
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 00:38:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C4FC89E19;
	Sun,  6 Dec 2020 23:38:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E16689E19;
 Sun,  6 Dec 2020 23:38:31 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1607297908;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=bjqz+hjJciJbCQnVpiDKgr3Q9Y+jnybckoiwihl3Fcw=;
 b=adp/GKZCMZB6IC8fVFDIjpVFc+NIWzBbrXAvVBM3Odi9ixgNP/7nY9iRsLQN2oeHHSUug+
 IXEcqwuA6ApaFy5+0nutlp/1yqfzn5jUtEX1J9wQVB8zYOkNi0PWcpNlTBI+A0hL1ES75L
 tw6LVg482B4oO714qA45CXzifLXXBO1nDnmamsu4kdlVSFw2RNXDkyw37rm+fVFbr/uxZw
 wnXMK/GRmctfIITDAbYx8ZHrbflHFp+uS5Vh2GMjaMlXZGyy1Jjdo2Ogqrg3vI8W8NqTaa
 cJiQnxiIlejjh99QBZaIZWw8PqmQqm3urNznsyNFTPdYcOJ957mP5nPtGWj5yA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1607297908;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=bjqz+hjJciJbCQnVpiDKgr3Q9Y+jnybckoiwihl3Fcw=;
 b=hlJXpVRtWU+ZUH6w367giSLOzLiSRWaIHANcf2mEt885O1uQNeFIxATYOZxF/rkH0IxGTq
 2ts4xQm5vnLQYkAQ==
To: Jerry Snitselaar <jsnitsel@redhat.com>
In-Reply-To: <87im9ehaim.fsf@redhat.com>
References: <20201205014340.148235-1-jsnitsel@redhat.com>
 <20201205014340.148235-3-jsnitsel@redhat.com>
 <875z5e99ez.fsf@nanos.tec.linutronix.de> <87im9ehaim.fsf@redhat.com>
Date: Mon, 07 Dec 2020 00:38:28 +0100
Message-ID: <87im9e7bez.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 2/4] drm/i915/pmu: Use kstat_irqs to get
 interrupt count
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
Cc: Peter Zijlstra <peterz@infradead.org>, David Airlie <airlied@linux.ie>,
 Matthew Garrett <mjg59@google.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org,
 James Bottomley <James.Bottomley@HansenPartnership.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Jarkko Sakkinen <jarkko@kernel.org>,
 dri-devel@lists.freedesktop.org, linux-integrity@vger.kernel.org,
 Peter Huewe <peterhuewe@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Dec 06 2020 at 14:47, Jerry Snitselaar wrote:
> Thomas Gleixner @ 2020-12-06 09:38 MST:
>
> I don't know the history behind this bit. I stumbled across it in cscope
> when looking for places using kstat_irqs.

I'm not ranting at you. The i915 people are on Cc.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
