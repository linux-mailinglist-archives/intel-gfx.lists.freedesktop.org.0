Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D35CA7EE013
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 12:45:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6179510E274;
	Thu, 16 Nov 2023 11:45:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9995910E274
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 11:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700135148; x=1731671148;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=kCvldvzK6L5LIyGm6rqfO1YNmpgjRxIBTqFUgdLPUZE=;
 b=cew53k/aNhRSSK1il/FZf8RVAwB7enkCbjVojaV55HQfEe9yJ6k14mgw
 kfZ6j29x2uqmsDp35dcIHL4dMN52r8Icm3DJ7niVO+TWoDqmivvLVuXXR
 AID8fykPb1YA6Oh/1xfAc2OKmmx2Id3ykGSOULCSRjG1Zr+XXgE+5hkXm
 nYvII0426/SjCxa3iuMDiPOu6xwqP/yUUz4IYWaKmsFQ0hrkS6J+uix/9
 sQNsLdMEsxbQhV6gcPGoW9zAveGbwNNaAPJVRUA/urkqJJBevk9Lqb9ZQ
 lrbwbzTqj4h6zsGj/FyF9bArVWb8FTe7rih81I35cT1j7qwU34qjrvWsz w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="370429448"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="370429448"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 03:45:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="800146197"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="800146197"
Received: from tcujba-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.219.83])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 03:45:45 -0800
Date: Thu, 16 Nov 2023 12:45:42 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZVYA5qOYQu39oPo-@ashyti-mobl2.lan>
References: <20231115-eols-v1-1-d47a2f52b807@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231115-eols-v1-1-d47a2f52b807@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: add missing new-line to
 GT_TRACE
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On Wed, Nov 15, 2023 at 01:10:33PM +0100, Andrzej Hajda wrote:
> Trace requires new-line at the end of message (in opposition to printk),
> otherwise trace dump becomes messy.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
