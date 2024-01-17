Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A328305C3
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jan 2024 13:43:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A2B610E139;
	Wed, 17 Jan 2024 12:43:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAEFD10E139
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jan 2024 12:43:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705495391; x=1737031391;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=YkLYWBfxer2+azk2RF5Q+kmFeT/dTmzAB5LSx1TezcI=;
 b=SKKeGQR5nAZxWgw2vO0t6OBD4qE6NM72eBzkB8hZ0WY+4/bLooTcbtJf
 12BNDVcN4JBOHn7JJzocDwtGMnRgIoHHyii1eAuPMMH4pnX8/jwa1Prde
 kbabEeju3eXxDIQRYwbT3VP5LYztjMJXkOEhAm45KB2h6XX9HUxOQNntv
 PmCaXtfM2twg0jcpteoP3gR/6q//PnRZxHAIFtIp/HWthnWpYQ1sWnxMi
 cd8Xhkc7dul54x1Ac7jEMbPi5WqAimUmjZTg7KeL1GIDJt1PSHMSu2apJ
 2Y5XqxXjQM7dO2VaOo3LYmY2IFBsxGcY604wdE5VJX8NLhuLk2O7rDrAL g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10955"; a="403915514"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; d="scan'208";a="403915514"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2024 04:43:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; 
   d="scan'208";a="18912"
Received: from msznigir-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.38.230])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2024 04:43:08 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 6/6] drm/i915/opregion: make struct intel_opregion opaque
In-Reply-To: <Zae5IdwKzof84ae-@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1704992868.git.jani.nikula@intel.com>
 <3b68d7ff4b2930eaf15d9657618a738b9065f64b.1704992868.git.jani.nikula@intel.com>
 <Zae5IdwKzof84ae-@intel.com>
Date: Wed, 17 Jan 2024 14:43:06 +0200
Message-ID: <87a5p4qgf9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Wed, 17 Jan 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> lid_state is unused btw. Someone should throw a nuke at it.

Done.

https://patchwork.freedesktop.org/patch/msgid/20240117122546.1551400-1-jani=
.nikula@intel.com


--=20
Jani Nikula, Intel
