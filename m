Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C313C7BC503
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Oct 2023 08:31:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2A8210E58C;
	Sat,  7 Oct 2023 06:31:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E571F10E58C
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Oct 2023 06:31:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696660271; x=1728196271;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=p1pdxd/bMPB1QuQLzVpiV0YkGmce2YzzG8zhGfDJ/KE=;
 b=fWDCbi0tPdk+zBcuk1+TA8T1ssoAn10hn7TTY/F1J1GJK0/mAnIn6XxZ
 v4omJ7X5pKyW9iedlheVXeFEfqf39rZ2D8YdO0ECTv5TEzP4K2uq0HklZ
 VOdWgmVBQlgeXvBzGhBE6t/jc/MZmE7EZP1FetVr4d7TKo33GSOSGPm1J
 BYdk8Ahu0hobeXmNl8tQueISwQDw45Jdo+4HY9x/B2r7ymx7Yy7Dud8x6
 TIHhleL/ToFdvDCs1UOLnYSlaJGtFI9f67FLwUSUlAqZtMj19Haw5ftKV
 1ryv6gpb+b5ECPzSKuYyWkhbRxUBbeE1FAYujlvFCxeVlysWCuGcyYrXz g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="386737589"
X-IronPort-AV: E=Sophos;i="6.03,205,1694761200"; d="scan'208";a="386737589"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 23:31:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="868597113"
X-IronPort-AV: E=Sophos;i="6.03,205,1694761200"; d="scan'208";a="868597113"
Received: from pmanogar-mobl.gar.corp.intel.com (HELO intel.com)
 ([10.213.157.100])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 23:31:06 -0700
Date: Sat, 7 Oct 2023 08:31:00 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Message-ID: <ZSD7JAvNLJhUTzps@ashyti-mobl2.lan>
References: <20231005111040.578997-1-suraj.kandpal@intel.com>
 <20231006072830.581487-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231006072830.581487-1-suraj.kandpal@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ddi: Remove redundant
 intel_connector NULL check
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Suraj,

On Fri, Oct 06, 2023 at 12:58:31PM +0530, Suraj Kandpal wrote:
> Remove redundant intel_connector NULL check. Having it here just
> creates further confusion and also the variable already gets
> dereferenced before the aforementioned NULL check
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

pushed to drm-intel-next.

Thank you,
Andi
