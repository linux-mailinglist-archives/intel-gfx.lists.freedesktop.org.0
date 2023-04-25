Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D206EE8C2
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 22:01:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FA7E10E2D0;
	Tue, 25 Apr 2023 20:01:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A12110E1CB;
 Tue, 25 Apr 2023 20:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682452883; x=1713988883;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=S9HTOBEJkSIz8FjeW33+XABgFARQXXVWDKz7IsLj3Wc=;
 b=Fu1dhUWN5QaVu7/IHsrCnErWYnCaVL/uIYjRkMSYjA3QVeuw3jgQFEUZ
 NEH/s7+xMW709IqIt7fTeLdpgcDc9+G/Y7eCTs/mqLK6HEm6MqK/oKuzJ
 ohgQHfOHdFFLzPggeVv7mrmcp1xCqZAcWGWbkB2OQlDNvmpgHJC8+g4hi
 GbXFSMB6KpDkOuFLKO8eVwPhdm4Pi+SMQbB8Bdg+Zgqq9NreAxv5kKEtA
 9W1t9Rtevens4EjZ0sV9X2vnXLKfktEwifKzY4uiYohwx+SnEWmyiD0kF
 TijROMOWIK9FnfBFmNz/5IaPIcv/iPXD0N9Z3+9r50DTXPahkDgtKzbc4 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="345644820"
X-IronPort-AV: E=Sophos;i="5.99,226,1677571200"; d="scan'208";a="345644820"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 13:01:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="868009718"
X-IronPort-AV: E=Sophos;i="5.99,226,1677571200"; d="scan'208";a="868009718"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.59.107])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 13:01:17 -0700
Date: Tue, 25 Apr 2023 22:01:15 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZEgxi3+eaG5Xf6bl@ashyti-mobl2.lan>
References: <20230224-track_gt-v8-0-4b6517e61be6@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230224-track_gt-v8-0-4b6517e61be6@intel.com>
Subject: Re: [Intel-gfx] [PATCH v8 0/7] drm/i915: use ref_tracker library
 for tracking wakerefs
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
Cc: netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Eric Dumazet <edumazet@google.com>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, David Airlie <airlied@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Dmitry Vyukov <dvyukov@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

> Andrzej Hajda (7):
>       lib/ref_tracker: add unlocked leak print helper
>       lib/ref_tracker: improve printing stats
>       lib/ref_tracker: add printing to memory buffer
>       lib/ref_tracker: remove warnings in case of allocation failure
>       drm/i915: Correct type of wakeref variable
>       drm/i915: Replace custom intel runtime_pm tracker with ref_tracker library
>       drm/i915: Track gt pm wakerefs

where are we going to get this series merged? Should we merge it
in our intel repository? In the netdev repository? or do we split
it (which will cause some dependency delay)?

Andi
