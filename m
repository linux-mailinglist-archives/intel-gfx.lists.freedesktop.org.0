Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB5F7B60C1
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 08:27:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A607310E086;
	Tue,  3 Oct 2023 06:27:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DAE910E086
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Oct 2023 06:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696314422; x=1727850422;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=kMgoZCSi63G0FSrF69TGzCD7PiAnTO5hqszcucQ7iVY=;
 b=mnn+2wgldAD6MuKGflVI+ZwFIzzyFKbK3tSLg30snF7dBuZFrrKQheEL
 ZbSccM0Lmb+zMJb7zB9NDany8J6+4g6Wprmb3iFf02sVBWH2SS3Z7Qtpt
 lDJ3oCHQAM4sB90JTFj20UQ86TmE7p8CSbW1QjqCXAJCuYFFBUeZpGGZM
 vzOHMFGWNKM6CvlfMiPHKhfk+keMQGKFMW8J2irqkrK0FoZjqpuDZUyu1
 1/CK+taiC2c/EJnCGp6nm+OeqVpd7V5e9NSpgNBoD0ZRLgjHij47v1F9N
 Y0lR8l0WtnjfIqtz02lbaGmSLDUInTWng7BA8ZZkKuiBBLJeYcIThhCAr g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="449291231"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; d="scan'208";a="449291231"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 23:27:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="750810300"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; d="scan'208";a="750810300"
Received: from leejiahx-mobl.gar.corp.intel.com (HELO intel.com)
 ([10.214.172.202])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 23:26:58 -0700
Date: Tue, 3 Oct 2023 08:26:52 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZRu0LEx1BuxEAjUF@ashyti-mobl2.lan>
References: <cover.1696236329.git.jani.nikula@intel.com>
 <63e644f056c7745eb0e8e165c990c392a38ec85c.1696236329.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <63e644f056c7745eb0e8e165c990c392a38ec85c.1696236329.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/mocs: use to_gt() instead of
 direct &i915->gt
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

Hi Jani,

On Mon, Oct 02, 2023 at 11:47:02AM +0300, Jani Nikula wrote:
> Have to give up the const on i915 pointer, but it's not big of a deal
> considering non-const i915 gets passed all over the place.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Thanks,
Andi
