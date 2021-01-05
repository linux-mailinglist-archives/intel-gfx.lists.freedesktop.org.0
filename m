Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9DC42EA30B
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jan 2021 02:53:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E7F589350;
	Tue,  5 Jan 2021 01:53:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77DBA89350
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jan 2021 01:53:34 +0000 (UTC)
IronPort-SDR: t1UUYlz82yZAP3bhl0GxEbEa2ggOs/1A5CZ9lXBloPFxQw6CuePn9JEp3olLfgF2KL/gAQtd0f
 1OVhLToyCpQw==
X-IronPort-AV: E=McAfee;i="6000,8403,9854"; a="156230229"
X-IronPort-AV: E=Sophos;i="5.78,475,1599548400"; d="scan'208";a="156230229"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2021 17:53:34 -0800
IronPort-SDR: mjW+HEds1PC4fIJkNsyFYJDT3VNoyt3hslX4QPLruZh+Pu7O1Ua1y0y15JbjeehjUcoFwohyuf
 WSrw9tL0Jtzw==
X-IronPort-AV: E=Sophos;i="5.78,475,1599548400"; d="scan'208";a="378661440"
Received: from wburton-desk1.ger.corp.intel.com (HELO intel.com)
 ([10.252.28.225])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2021 17:53:32 -0800
Date: Tue, 5 Jan 2021 03:53:28 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <X/PGmKoXdt+z0RUg@intel.intel>
References: <20210104115145.24460-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210104115145.24460-1-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/selftests: Set error returns
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

On Mon, Jan 04, 2021 at 11:51:40AM +0000, Chris Wilson wrote:
> A few missed PTR_ERR() upon create_gang() errors.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Thanks,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
