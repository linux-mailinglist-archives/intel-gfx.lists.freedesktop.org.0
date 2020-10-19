Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F465292D1B
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 19:51:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41D856E981;
	Mon, 19 Oct 2020 17:51:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 879616E981
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 17:51:30 +0000 (UTC)
IronPort-SDR: j5hrVATYaeg1XZpFD6ujk+vGhQwlmFL4M5xNLDoXfSf48zLxOVgWw8KdrTwoiCIK8N9sPqTHmx
 JQU6tPGMmYFg==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="154013057"
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="154013057"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 10:51:30 -0700
IronPort-SDR: 6HMczIp2XDC1IJv8SNTNoa5Y1xFtfnMI9KZHg2JEv/X9BQwfllCgnMN/OtO4QDMhjCaXLRNKHl
 L0eJBcSRZ31g==
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="358227566"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.201])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 10:51:29 -0700
Date: Mon, 19 Oct 2020 13:53:10 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@intel.com>
Message-ID: <20201019175310.GH2616619@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-gfx] Fixes that failed cherry-pick to 5.10
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris and Ville,

Failed to cherry-pick:
233c1ae3c83f ("drm/i915/gt: Wait for CSB entries on Tigerlake")
2c1e63bab430 ("drm/i915: Mark initial fb obj as WT on eLLC machines to avoid rcu lockup during fbdev init")

These patches look important to 5.10. If this is the case,
please consider providing a backported version.

Thanks,
Rodrigo.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
