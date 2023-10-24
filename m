Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D3A7D4F0D
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 13:41:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5311210E34B;
	Tue, 24 Oct 2023 11:41:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 847A510E34B
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 11:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698147685; x=1729683685;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=cQaAsdFOVEJ4jZYBRFpXXROT9TA531eIbIZJLJE+df0=;
 b=nCTfqeTKsOZBZdgcn3OEEblIfwgkPf2pO0hJT2yNy1pbHlZpIJtL+MSS
 4kFJpN+MlqxmJ8/EGjbBw/pt6RFuethkOTKN/OgnprK5TAFjL920gw2ls
 ZexoKk3DWLml2uY6Ofbogv2ARBeC/lOktMr/xqqgOHpO6Xyzk5ed+YuAH
 7jYtrynOP6JYNBxexE+tGGOPEYPUq6nPDipRB4WQOLKqcVHzNAsL6dJ4e
 UEhKWr8SHoByL5YyOj0ssX/GxkaGMdMF4zuxO0+Xz7T7DieAUEzbqzU2R
 Ag4Iku17GDuf9cyL6UJGHCot9LfD9/NwD52XAhn+olO+eZRPDIJD0lXX7 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="384237662"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="384237662"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 04:41:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; 
   d="scan'208";a="6148353"
Received: from yaminehx-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.33.158])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 04:40:06 -0700
Date: Tue, 24 Oct 2023 13:41:16 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZTetXJIP3H-KPn3z@ashyti-mobl2.lan>
References: <20231023-wabb-v4-0-f75dec962b7d@intel.com>
 <20231023-wabb-v4-4-f75dec962b7d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231023-wabb-v4-4-f75dec962b7d@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 4/4] drm/i915: Set copy engine
 arbitration for Wa_16018031267 / Wa_16018063123
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
Cc: intel-gfx@lists.freedesktop.org,
 Jonathan Cavitt <jonathan.cavitt@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On Mon, Oct 23, 2023 at 10:21:48PM +0200, Andrzej Hajda wrote:
> From: Jonathan Cavitt <jonathan.cavitt@intel.com>
> 
> Set copy engine arbitration into round robin mode
> for part of Wa_16018031267 / Wa_16018063123 mitigation.
> 
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
