Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6DF4968E2
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Jan 2022 01:43:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7278610E25E;
	Sat, 22 Jan 2022 00:43:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 531F610E796
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Jan 2022 00:43:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642812181; x=1674348181;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=+6zycbdwUyEBJ9JzqFxLlPW6UmI3/D28UzO0J+Re68c=;
 b=jODhpPUuq0u/PTSNBCg18VZXqNVJQdfNw0rVomJ+hZXovEruCddlf31F
 sPOaomN5isN9EMdYNxcu1UXeCMIO1YXkm1aml/lC/A7JVzgQuTHkSkL9S
 /9SaBTRz8DFkXqZyLnoxJoOpnyrMqgtka0TCbMV3/m+BWjU6X67UljlF+
 uyS1cYPeoCtAu1CCj8dW8s0ID4KnzqO+lhZBLsbTwAwOl3a54pciv7mJ3
 DXUiBwi4JH/w3jIn9juZhbwO4QRoLagw9AKpFGQL0F5k1S9N+fLGbhMGA
 0L8rUrZ2VpNwtk0/nfUKFsCcgQ0pjQQrV1DmEcc5ho9SO2FKy0qiiJDrz g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10234"; a="244595510"
X-IronPort-AV: E=Sophos;i="5.88,306,1635231600"; d="scan'208";a="244595510"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 16:43:00 -0800
X-IronPort-AV: E=Sophos;i="5.88,306,1635231600"; d="scan'208";a="623490859"
Received: from wpracht-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.221.99])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 16:43:00 -0800
Date: Fri, 21 Jan 2022 16:42:59 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220122004259.sgd6ewxg6oll7tgi@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220121132957.3778555-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220121132957.3778555-1-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: nuke local versions of
 WARN_ON/WARN_ON_ONCE
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

On Fri, Jan 21, 2022 at 03:29:57PM +0200, Jani Nikula wrote:
>In general, we should avoid redefining kernel macros like this. It can
>get confusing, and what gets used will depend on whether the header is
>included or not. Moreover, we should prefer drm_WARN_ON() and
>drm_WARN_ON_ONCE() anyway, which include the stringified error condition
>in the message.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>


Lucas De Marchi
