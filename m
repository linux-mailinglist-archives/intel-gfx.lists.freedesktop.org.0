Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 144269EDA4D
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 23:42:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F78D10E93A;
	Wed, 11 Dec 2024 22:42:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IEwt1VuS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5E2B10E93A
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 22:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733956969; x=1765492969;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=GHp8gKzlju5+t/8rxZn7k3szuHJiz8y39Kjsdgy1LBg=;
 b=IEwt1VuSzK6BeMB9CEAt35SnX1CTue+Pw6096IoWZmR3WkUOGM6pE36t
 0bnhjn1oBSaFry2A14tjFxNMTLkr4fL37y+UwaoW36guvS+4bJ4k77zid
 dvRZJScC+HS/VVs395wGwrDBXXTu6Hs/SYf2puNCFsKV9Mkc8USSXvMUQ
 eqjAaMkt6YbTIn+LoEk2eKOZpUqKYzbdlv9jgeDgnMwL8lEB45c1hg43L
 1KrqyghHcNyk+pB3vuUCPODKwO9eZJHRWU2xOwHfXgo94BQ2d2hvPgO0K
 +gmOOgOKp5e/4AQcycWerHOwtkHgNKefNaswwthHza/xGYMyHYTAb6WjR A==;
X-CSE-ConnectionGUID: z8iSylLcS5qZHziaJgGkQQ==
X-CSE-MsgGUID: j7Jazp7aTZ6EbgGB5bqgUg==
X-IronPort-AV: E=McAfee;i="6700,10204,11283"; a="34260415"
X-IronPort-AV: E=Sophos;i="6.12,226,1728975600"; d="scan'208";a="34260415"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 14:42:48 -0800
X-CSE-ConnectionGUID: AHfrj1FuQNG5X4o9bHfYCQ==
X-CSE-MsgGUID: bLwslWqUS/G+9jk/jlQ5Og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="119228408"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.26])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 14:42:46 -0800
Date: Wed, 11 Dec 2024 23:42:41 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Michal Wajdeczko <michal.wajdeczko@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>, Imre Deak <imre.deak@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v2] drm/display: use ERR_PTR on DP tunnel manager
 creation fail
Message-ID: <Z1oVYTZA3Ls0ApVd@ashyti-mobl2.lan>
References: <x46u4zhhpnxgohyguhqsc4d73sbjwipebxp5uiwkopejsy6dpz@v3eysonfbmk2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <x46u4zhhpnxgohyguhqsc4d73sbjwipebxp5uiwkopejsy6dpz@v3eysonfbmk2>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Krzysztof,

On Wed, Dec 11, 2024 at 02:52:20PM +0000, Krzysztof Karas wrote:
> Instead of returning a generic NULL on error from drm_dp_tunnel_mgr_create(),
> use error pointers with informative codes. This will also trigger IS_ERR() in
> current caller (intel_dp_tunnerl_mgr_init()) instead of bypassing it via NULL
> pointer.
> 
> v2: use error codes inside drm_dp_tunnel_mgr_create() instead of handling
>  on caller's side (Michal, Imre)
> 
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>

Please:

 1. run checkpatch.pl before sending patches.
 2. don't ignore previous reviews: I asked you to add the fixes
    tag and two Cc
 3. run checkpatch.pl before sending patches.
 4. Because this is a fix you should Cc also the stable mailing
    list (for real!).
 5. Find the proper maintainers to Cc, this patch is outside
    Intel's territory; consider using, but not strictly,
    get_maintainer.pl

And, in case you forget:

 6. run checkpatch.pl before sending patches.

Looking forward for a v3.

Andi
