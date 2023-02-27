Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9146A3EFA
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Feb 2023 10:59:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBCA610E3A2;
	Mon, 27 Feb 2023 09:59:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17F8010E3A2;
 Mon, 27 Feb 2023 09:59:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677491956; x=1709027956;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=jR91B98qom+5gzYhQGkhIgN06B7vIdWxDnI3INGZGCs=;
 b=BsxIg7k0v3M1jV4470HDihWCqyLv1+MNESts87+xvkfr5e2cRoeHJCwe
 MRNQ2I8pB/1FTBFfhDUgcJEhsEkz/zrJKMmuDl/IgSxoq+GdftovZmJz5
 n8ZJ+L17wsawWJ0mTcKyMo9uLN4H0PkByBsTGCJL8feKkxYQFAVprxndW
 i4l3l759AA6UAPnOR99Q2S1Z4+/tTTDf3pdcrA1QXA26ORvF9LqTL0kuY
 SEowQ41opWvZ0vgamVTMUFLDTeomyRdeIqlKvYXrMBzCHENl9M11SiyOI
 LL3gnISY3ohq4bt4NZHeaMZgzTLXNYTxqKEzk7GIkSVH6Mp+A0OYMo3VN Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10633"; a="335304384"
X-IronPort-AV: E=Sophos;i="5.97,331,1669104000"; d="scan'208";a="335304384"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 01:59:15 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10633"; a="737604557"
X-IronPort-AV: E=Sophos;i="5.97,331,1669104000"; d="scan'208";a="737604557"
Received: from jrissane-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.249.41.42])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 01:59:08 -0800
Date: Mon, 27 Feb 2023 10:59:04 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y/x+6KutaJKGv+Zz@ashyti-mobl2.lan>
References: <20230118153529.57695-1-andrzej.hajda@intel.com>
 <20230118154450.73842-1-andrzej.hajda@intel.com>
 <20230118154450.73842-5-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230118154450.73842-5-andrzej.hajda@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 5/7] io_uring: use __xchg if possible
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 dri-devel@lists.freedesktop.org, linux-mips@vger.kernel.org,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-s390@vger.kernel.org, linux-hexagon@vger.kernel.org,
 linux-snps-arc@lists.infradead.org, Boqun Feng <boqun.feng@gmail.com>,
 linux-xtensa@linux-xtensa.org, Arnd Bergmann <arnd@arndb.de>,
 intel-gfx@lists.freedesktop.org, linux-m68k@lists.linux-m68k.org,
 openrisc@lists.librecores.org, loongarch@lists.linux.dev,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-alpha@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On Wed, Jan 18, 2023 at 04:44:48PM +0100, Andrzej Hajda wrote:
> Recently introduced helper simplifies the code.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
