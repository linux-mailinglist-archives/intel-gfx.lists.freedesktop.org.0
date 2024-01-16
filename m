Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E62A82EB3A
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 10:02:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1661910E43C;
	Tue, 16 Jan 2024 09:02:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8CC210E43C
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jan 2024 09:02:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705395739; x=1736931739;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=gXSWEDqPQPyT6P9IjZduyrnL+d/p2RR58/u56sUeKR8=;
 b=imLM2D26+UZsMMlJT1BA0N6B1Hv9dBnNgaXyt5OqOnwNDBik9iLO9JpA
 BJqvtX35jPHw3SwnZZcvdT9BKXKCpuMfSZgjRlUd3IrczBKHQhmoqBnhx
 zLsx7DQnnVHYQid/v7Cvc0aDYBss9QOY5gB4uHippHSyvMujzRmH+7+KC
 vCWfjp8LQM/hykyJ2nsXgcpwwnmwS3YTXBpX0zUWMHpd9+tw678kZ9s76
 BdyxZ+8TUoTI9WbJhudfpzgH9ze2IjvjEvNsdFugVJDOLjHkFSQso+N0V
 akFLDPpgU6bvbbEVd5Q4CWa3/s9tSrly3RixTQ23jKgX5PN3GgeWrlIqW g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="21270940"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="21270940"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2024 01:01:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="907311632"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="907311632"
Received: from jfunnell-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.39.52])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2024 01:01:47 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Hellstrom, Thomas" <thomas.hellstrom@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: Re: [PATCH] drm/xe/display: Disable aux ccs framebuffers
In-Reply-To: <363d705ce20d85a749447d63809a7260a5ca7e34.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240102182422.3823394-1-juhapekka.heikkila@gmail.com>
 <87il4b1pvz.fsf@intel.com> <ZZx0qT4s3dmhIGAn@intel.com>
 <93230e22ede6467ef8930342afd439f7ce677790.camel@intel.com>
 <ZZ75ghR172WxYZiJ@intel.com>
 <2c82e0774c23cc640e565b1b5302e0e234eba036.camel@intel.com>
 <ZaGsIGTHVh_MCqKW@intel.com> <87h6jesqeg.fsf@intel.com>
 <363d705ce20d85a749447d63809a7260a5ca7e34.camel@intel.com>
Date: Tue, 16 Jan 2024 11:01:45 +0200
Message-ID: <87bk9lslc6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Cc: Dave Airlie <airlied@redhat.com>, "ogabbay@kernel.org" <ogabbay@kernel.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 15 Jan 2024, "Hellstrom, Thomas" <thomas.hellstrom@intel.com> wrote:
> I wonder if, moving forward, we should use a topic/display-for-xe
> branch (no force-push) that can be used for display commits that need
> to be in Xe during -next cycles. It could then be merged into xe and
> i915 as needed?

Topic branches have been discouraged lately, but it's really up to the
drm maintainers. Cc: Dave and Sima, thoughts?

It's also an additional point of confusion for committers to apply to a
topic branch. Deciding between drm-xe-next and drm-intel-next can
already go wrong...


BR,
Jani.


-- 
Jani Nikula, Intel
