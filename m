Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F736E7C30
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 16:18:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9260210E1D3;
	Wed, 19 Apr 2023 14:18:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF09110E1D3
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 14:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681913922; x=1713449922;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=9vNF5VjskPvKOfY/eYLxRKOT3PEs9O6V5mtD4GWwWCQ=;
 b=KepVFEHmFn8Cx6AI78mJ7Fd9BHZxyhNRPUTa5/pQvfYiahSgj6f1/sXo
 xBtb5Ny/QWLzrApAjQDSDppgZJ+kRGWwSj+WrDYcbqJgRAYjRePNIrF5e
 0SZP7sw1mVNqBMHQzpT35D0KJnFL+VDb39b82yDsiPOVoXMgFY93Laktx
 7crmjQA5gzWs2pGh1OsRLgsMQgTGvnamOw21C5QKIs7lsMq+cGtCkAxB7
 pNe4R2PKf8DXITosvWsIn2+F6o4DutdEDsOtzG2Oej6Wlx7vX7wsGnQ5t
 I1LszcrnIqMeZS4Wk58hqqWKfmkhdhGNxSUx+2u/VR0lKMcphwmeiSEu5 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="329634527"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="329634527"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 07:18:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="815642973"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="815642973"
Received: from crijnder-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.249.35.137])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 07:18:39 -0700
Date: Wed, 19 Apr 2023 16:18:35 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
Message-ID: <ZD/4OzXKMhZaw1Qp@ashyti-mobl2.lan>
References: <20230419060036.3422635-1-tejas.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230419060036.3422635-1-tejas.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH 0/3] Consider multi-gt instead of to_gt()
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

Hi Tejas,

On Wed, Apr 19, 2023 at 11:30:33AM +0530, Tejas Upadhyay wrote:
> drm/i915/gt: drm/i915/gem: drm/i915/selftests:
> Consider multi-gt instead of to_gt()
> 
> In order to enable complete multi-GT, use the GT
> reference obtained directly from the engine, rather
> than relying on the to_gt(), which only provides a
> reference to the primary GT.
> 
> Problem appear when it runs on platform like MTL
> where different set of engines are possible on
> different GTs.
> 
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>

pushed to drm-intel-gt-next.

Thank you!
Andi
