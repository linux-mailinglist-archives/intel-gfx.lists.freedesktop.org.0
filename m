Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D39B72EC2C3
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 18:53:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52CAF89DBF;
	Wed,  6 Jan 2021 17:53:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 671AB89DBF
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jan 2021 17:53:07 +0000 (UTC)
IronPort-SDR: piOFYZV6EjzP1vd1yLCI22QNhiCyEcjAD7/7xlao0J6gTOHVK8kQ5o14e9AOUhSVBZWQdTuGOQ
 Ukx2Ftzbhkww==
X-IronPort-AV: E=McAfee;i="6000,8403,9856"; a="173803122"
X-IronPort-AV: E=Sophos;i="5.79,327,1602572400"; d="scan'208";a="173803122"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2021 09:53:06 -0800
IronPort-SDR: I0l4BAY3WeUOzL+UWeX8h3xo+FzPDXemqAlVuKAqu0DgWIlcu3i9SgzP0pDccvPzuSdAQt7JVs
 GKyzkquUWVfw==
X-IronPort-AV: E=Sophos;i="5.79,327,1602572400"; d="scan'208";a="379367038"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2021 09:53:05 -0800
Date: Wed, 6 Jan 2021 19:53:01 +0200
From: Imre Deak <imre.deak@intel.com>
To: stable@vger.kernel.org
Message-ID: <20210106175301.GB202232@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-gfx] v5.10 stable backport request
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Stable team, please backport the upstream commit

8f329967d596 ("drm/i915/tgl: Fix Combo PHY DPLL fractional divider for 38.4MHz ref clock")

to the v5.10 stable kernel.

Thanks,
Imre
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
