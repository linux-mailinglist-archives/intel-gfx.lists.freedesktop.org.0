Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E816607E49
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 20:31:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FED510E5E0;
	Fri, 21 Oct 2022 18:31:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1061510E5E0
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 18:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666377085; x=1697913085;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=FqqUarkkDmkYP/m2/sdTqQrF3kfUIPhc4algADufAAI=;
 b=B2sHYgqTpA6XM5MFalvKN1IZBjK5it8VvxOr7Acxlm3I4FcXzRAi78gX
 dIvbNLkeMfFlEnDDjrE4eMXivAet6Y+LQxZvnevAsWe+SCudyrKWRpJIk
 ON8yRJg0/Pebrm4/AqVjonhBW7YOHNE/00spDqdw10o8Ti3S8yxNtfnFI
 PwzjNF/ozoPQLTiMMWDiOppTL3U1TtFOIPTEZpLbAMjjUjjdcw2NekNMM
 Rl9IykQJS2LKNcQKwVgzBDk70VbLxALUvSmcWZeff7EBs9ISA/qULcHNz
 +LkM13HOseXp8K7MWaEia0LQksOihWBS/jk/xbWDjOEbPT+4PkSnwm7xu g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="286793797"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="286793797"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 11:31:24 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="719835625"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="719835625"
Received: from apierro-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.249.37.148])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 11:31:21 -0700
Date: Fri, 21 Oct 2022 20:31:19 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y1Lldx9p5Fm5u0Oh@ashyti-mobl2.lan>
References: <20221019143818.244339-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221019143818.244339-1-andrzej.hajda@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: use intel_uncore_rmw when
 appropriate
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On Wed, Oct 19, 2022 at 04:38:17PM +0200, Andrzej Hajda wrote:
> This patch replaces all occurences of the form
> intel_uncore_write(reg, intel_uncore_read(reg) OP val)
> with intel_uncore_rmw.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

There are some lines that go over 80 characters... do you mind if I fix them
before pushing it?

Andi
