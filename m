Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1575DA879F2
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 10:14:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9006A10E4CA;
	Mon, 14 Apr 2025 08:14:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a6gEhewS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 977C310E4CA;
 Mon, 14 Apr 2025 08:14:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744618468; x=1776154468;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=TRqcUUJvQsFHm6GbgqXly5t9vXRQVow+Ckf8tGcs/DY=;
 b=a6gEhewSTy/dYCXHmpoJjc/w8h2RVg5v4V7cV/X0PuSvujxIbdrGUNfn
 qZGIQvPHf8nX+tfzGcy7JpKamx8XDpg4ydZz33bk7EdOMfUo/LNbbgP/o
 oLa/+JE9NEBxfpwpPeLibq3zWQnKitTs7M+jSF16Wmeg28nGWniMwRfUJ
 pdgYTQ9RyHQ7IkKV7rCPuFVpud1zwdo/eqcvIH5CjBufyl0RKCe4qTkYq
 Ne3p5wcginswyv2QV/nI/QZ3eFHYTlVz/thcFCWBLGrzDsuSdPO6OIMR1
 s7TutqJMxY0zMEdBnUAXDvaupPlYi9a+NKXcnsH+xeGGii14NxuI84ijr A==;
X-CSE-ConnectionGUID: P6yxFWiCTiCikPWZlH+p3w==
X-CSE-MsgGUID: y6AU+O6LRw+GG450MHC6ew==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="63618577"
X-IronPort-AV: E=Sophos;i="6.15,211,1739865600"; d="scan'208";a="63618577"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 01:14:27 -0700
X-CSE-ConnectionGUID: 3hIIU+PSTUOoyrHkDII1UA==
X-CSE-MsgGUID: i+cAv3hrTKmJheRqnF5JXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,211,1739865600"; d="scan'208";a="133855228"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 01:14:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 rodrigo.vivi@intel.com, ville.syrjala@linux.intel.com
Subject: Re: [PATCH 2/4] drm/i915/display: Convert intel_pch towards
 intel_display
In-Reply-To: <dso7an5ln47xqjbhh5r7mighwt7fg3cooedxx46qi4ssde5qa5@qqka36ocja5i>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1744364975.git.jani.nikula@intel.com>
 <8ffe86eb2a02153e3f866a81fb6dc8a3327a0f25.1744364975.git.jani.nikula@intel.com>
 <dso7an5ln47xqjbhh5r7mighwt7fg3cooedxx46qi4ssde5qa5@qqka36ocja5i>
Date: Mon, 14 Apr 2025 11:14:22 +0300
Message-ID: <87r01vtb1d.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Fri, 11 Apr 2025, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> why not merging intel_pch and intel_pch_display? Now that both are
> under display/, there isn't much reason for the split, is there?

One is about identifying the PCH, and the other is about supporting
outputs on the south display, and not all of the PCHs even have
that. The former doesn't need register reads/writes, the latter does.

I think they should stay separate.

BR,
Jani.

-- 
Jani Nikula, Intel
