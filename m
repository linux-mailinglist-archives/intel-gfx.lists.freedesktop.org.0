Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D74A470C18B
	for <lists+intel-gfx@lfdr.de>; Mon, 22 May 2023 16:56:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46EA510E346;
	Mon, 22 May 2023 14:56:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD78310E346
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 May 2023 14:56:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684767373; x=1716303373;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=RBN21KroeKWRepaMEyxMNsJna6Qmy0lF6Yx4+ONExIo=;
 b=Un2m9WEJYwhdDIhBi1xDl1cFlJwYqAgPlGLqZLBQwFRrCAIp5A0R1hEy
 vnPABYf9Xe5P61m+TgQsk83gKa4J57cFgBzBPfzksMJ2mB3kf5MKAbLa6
 mA1mbau42vWwnU2foa5JMQ/WFkobUPVMNEuFNxzYhWfix1yF6/+nXGlhR
 70E2eUiryNQPF2Ke7i0hUg46Twze0fTC8lx9X4ykSYZzRzDHBC2Ik8n4h
 9uBSgUZlKP9+UB22yvr478zRXDBolTyO0FMo3XUBDenCS+jf+Oyo83/P2
 fysjEkhQafUozjfrM7k/yGrJxPr6Kr/pfCttG5H2tmhxIvLg7wMeZOr71 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="351790327"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="351790327"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 07:56:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="768555835"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="768555835"
Received: from baumgarp-mobl3.ger.corp.intel.com (HELO intel.com)
 ([10.252.55.129])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 07:56:04 -0700
Date: Mon, 22 May 2023 16:56:01 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <ZGuCgYSm5Q/s8pzU@ashyti-mobl2.lan>
References: <20230522124205.368-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230522124205.368-1-nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Wait for active retire before
 i915_active_fini()
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
Cc: intel-gfx@lists.freedesktop.org, chris.p.wilson@linux.intel.com,
 andrzej.hajda@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nirmoy,

On Mon, May 22, 2023 at 02:42:05PM +0200, Nirmoy Das wrote:
> i915_active_fini() finalizes the debug object, which can occur before
> the active retires and deactivates the debug object. Wait for one
> final time before calling i915_active_fini();
> 
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/8311
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>

does this need the Fixes: tag?

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
