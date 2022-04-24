Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A9750D43C
	for <lists+intel-gfx@lfdr.de>; Sun, 24 Apr 2022 20:44:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAE9B10EEB2;
	Sun, 24 Apr 2022 18:44:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2470210EEB2
 for <intel-gfx@lists.freedesktop.org>; Sun, 24 Apr 2022 18:44:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650825855; x=1682361855;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=d4SFgy9oTjC7Kp0pzs1NzvUzciFU38UildT0WSz6U0Y=;
 b=Ocrl981nh78b62R9c0iW7XHxUs8vc24b31yPZFafKoQ5KmuqiMxWIhWS
 wY728P0IKpfPx4g6WqzCnK2pBZvf2NW0yc7YuVsHHmSYvTlVHorXCm9ix
 NmV533a6aLeiPZ/4ES5GAXKz2JtgBZigELzo4h2MFbC+BO0ftdSy8sV4x
 N8zmRnSsa9Ezft/NNkSiAaqfv64SVKR9Eb7B8qR256yGm4jcDGVTnoHKE
 xcg+x7rqO+yTK28Zei077Bt8NP53T24nlCBx1kHC2s3Wm+LgKs6GD8Uan
 81u1cEkav10Rjb5Hd8DUoCnsU6J6w67dN3pz/RDD8scgvLNq/ot7OjJIw A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10327"; a="265241183"
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="265241183"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2022 11:44:14 -0700
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="557348082"
Received: from fmihut-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.47.38])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2022 11:44:13 -0700
Date: Sun, 24 Apr 2022 20:44:10 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <YmWaesRqVrRRqObD@intel.intel>
References: <cover.1650435571.git.ashutosh.dixit@intel.com>
 <9432557dbc4629191884f5e85d6c8be92c2cc9e5.1650435571.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9432557dbc4629191884f5e85d6c8be92c2cc9e5.1650435571.git.ashutosh.dixit@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/i915: Introduce has_media_ratio_mode
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

Hi Ashutosh,

> Media ratio mode (the ability for media IP to work at a different frequency
> from the GT) is available for a subset of dGfx platforms supporting
> GuC/SLPC. Introduce 'has_media_ratio_mode' flag in intel_device_info to
> identify these platforms and set it for XEHPSDV and DG2/ATS-M.
> 
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
