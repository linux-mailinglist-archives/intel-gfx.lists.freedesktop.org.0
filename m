Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F289649D563
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 23:23:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2ED6710E342;
	Wed, 26 Jan 2022 22:23:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 757FE10E342
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 22:23:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643235791; x=1674771791;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=jg4CbLDpJrYJ1jRL5L1CkIHxYgcdM6x8+L843NmOaQA=;
 b=dlDP7IMb2oUJ/Cj15yNtPfj+uOY7l4HqeVqdDz0jaGO8hOQbKZOBZSZr
 HvGM45kUj4WQn6BOARkCW0o289QsCIYD5+WCEtZzx/f2fu/1Mb9EFi64L
 bNwD70lzv10q4RGVA0ESVGHBEIwyZ2RqXv0t9roQwGKuUIuVoqwhZ7jI/
 MW8yFQGfdiTmE2ueOaOXaZtzcGYBmjiCSM3GG1qMgzoBuRyvpzVYn5F3K
 Hx4anGoUx5fegYavbzujmK6lP2M6QU4FIHTJYvwH61rQNDWvi95X8EaNI
 +H0Z+n7gEPBp3RY0tymjVwU0RvDHrTLQjS/Dpd9o7OBGRHi1d8QTGE3YA Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="245502834"
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600"; d="scan'208";a="245502834"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 14:23:10 -0800
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600"; d="scan'208";a="563555395"
Received: from richardt-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.143.219])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 14:23:10 -0800
Date: Wed, 26 Jan 2022 14:23:09 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20220126222309.aeiyj6iyrimbrycu@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220125020826.2693097-1-matthew.d.roper@intel.com>
 <20220125020826.2693097-5-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220125020826.2693097-5-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 4/6] drm/i915: Parameterize MI_PREDICATE
 registers
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 24, 2022 at 06:08:24PM -0800, Matt Roper wrote:
>The various MI_PREDICATE registers have per-engine instances.  Today we
>only utilize the RCS0 instance of each, but that will likely change in
>the future; switch to parameterized register definitions to make these
>easier to work with going forward.
>
>Of special note is MI_PREDICATE_RESULT_2; we only use it in one place in
>the driver today in HSW-specific code.  It turns out that the bspec
>(page 94) lists two different offsets for this register on HSW; one is
>in the standard location shared by all other platforms (base + 0x3bc)
>and the other is an unusual location (0x2214).  We're using the second,
>non-standard offset in i915 today; that offset doesn't exist on any
>other platforms (and it's not even 100% clear that it's correct for HSW)
>so I've renamed the current non-standard definition to
>HSW_MI_PREDICATE_RESULT_2; the new cross-platform parameterized macro
>(which is still unused at the moment) uses the standard offset.
>
>Cc: Jani Nikula <jani.nikula@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
