Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4878249D570
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 23:31:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95B2210E386;
	Wed, 26 Jan 2022 22:31:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A9CE10E386
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 22:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643236279; x=1674772279;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=J7KTtklIypeJthQeu+SdKvY6DQ4zPwdwnSj4YtwnDVQ=;
 b=QJDM8dOqZq5MUrvtD73lTLaQDo4kqHRUxuiQF6KHFtlCGi16VjM9yW4C
 yu0+/h/d0zqM1hkXnVm9cdx2DfGBTicc6e2B4F8YwV3oDyTMmH6iRQNsn
 utngeHjWKcyH75ENFJ/yz2Zf/+8HwlfU+AEDWcB5eBxIhhYUlUCJJG69s
 Ba59xJT3Fhx8lblOWYUv5g6ztps/WMaSWsi+SEEaquottOH8qYMw5K9l4
 WxL2l5ocKdBE/tYsSEws/uTt488xcysloKsy84+ETYBALyltWFi9LZxdw
 iJBsS+H1y6hnAGoE9FJs98GOabe7NkuqojAlNzGcPHzLqtB9EeFeorpA6 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="309981022"
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600"; d="scan'208";a="309981022"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 14:31:18 -0800
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600"; d="scan'208";a="477628821"
Received: from richardt-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.143.219])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 14:31:18 -0800
Date: Wed, 26 Jan 2022 14:31:18 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20220126223118.pfyqalyg2g4azjnt@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220125020826.2693097-1-matthew.d.roper@intel.com>
 <20220125020826.2693097-6-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220125020826.2693097-6-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 5/6] drm/i915: Move GT registers to their
 own header file
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

On Mon, Jan 24, 2022 at 06:08:25PM -0800, Matt Roper wrote:
>+#define MEMSWCTL		_MMIO(0x11170) /* Ironlake only */
>+#define   MEMCTL_CMD_MASK	0xe000
>+#define   MEMCTL_CMD_SHIFT	13
>+#define   MEMCTL_CMD_RCLK_OFF	0
>+#define   MEMCTL_CMD_RCLK_ON	1
>+#define   MEMCTL_CMD_CHFREQ	2
>+#define   MEMCTL_CMD_CHVID	3
>+#define   MEMCTL_CMD_VMMOFF	4
>+#define   MEMCTL_CMD_VMMON	5
>+#define   MEMCTL_CMD_STS	(1 << 12) /* write 1 triggers command, clears
>+when command complete */

formatting issue here

>+#define GEN9_SLICE_PGCTL_ACK(slice)	_MMIO(0x804c + (slice) * 0x4)
>+#define GEN10_SLICE_PGCTL_ACK(slice)	_MMIO(0x804c + ((slice) / 3) * 0x34 + \
>+((slice) % 3) * 0x4)

and here

>+#define   GEN9_PGCTL_SLICE_ACK		(1 << 0)
>+#define   GEN9_PGCTL_SS_ACK(subslice)	(1 << (2 + (subslice) * 2))
>+#define   GEN10_PGCTL_VALID_SS_MASK(slice) ((slice) == 0 ? 0x7F : 0x1F)
>+
>+#define GEN9_SS01_EU_PGCTL_ACK(slice)	_MMIO(0x805c + (slice) * 0x8)
>+#define GEN10_SS01_EU_PGCTL_ACK(slice)	_MMIO(0x805c + ((slice) / 3) * 0x30 + \
>+((slice) % 3) * 0x8)

and here

>+#define GEN9_SS23_EU_PGCTL_ACK(slice)	_MMIO(0x8060 + (slice) * 0x8)
>+#define GEN10_SS23_EU_PGCTL_ACK(slice)	_MMIO(0x8060 + ((slice) / 3) * 0x30 + \
>+((slice) % 3) * 0x8)

and here.


Rest looks sane. There's already a conflict in this patch, although
following "this should be just code move",  it's easy to solve.


I wonder what is the strategy going to be for merging this because it
will conflict badly between drm-intel-next and drm-intel-gt-next.


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

