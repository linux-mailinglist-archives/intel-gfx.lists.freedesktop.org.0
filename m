Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C05B9C50D0
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 09:38:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A95C10E584;
	Tue, 12 Nov 2024 08:38:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gHEigwIO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A83F10E584;
 Tue, 12 Nov 2024 08:38:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731400683; x=1762936683;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=cvYhinKBeRf5FaUOuMeKpTNcTBz1x8dcvxkBi3hBqWg=;
 b=gHEigwIOS4/BTAHch5Ht1/deo7jhwUR246vC9ZPdVQZFHL8P07IwT/c+
 Zj7Tgp+RawHUS8C4oiqy23sqNGuIWWRcKKHy3h4l1lRLtiiMUKF+uo60E
 8+bG0X8UXu+ly/R5EcS5y/VoExI0qCCB0rRSflSNnECm5wMmqjNYL4ujS
 XFTuf1nO+NZy/67Klv1SNC/Wu3foraBwyxrWPLPmtIGXyw1LoAD4gJ10Z
 Pn8Mz8nVgItIX2gZE0D8xktja7CCWbLUi7e/yrCvsx0WoNVR3YmaJTs5f
 NF0e9q8vcPMCObDv3gpCynZCbVcOxjpLGuZGcsTpKB8EP4vHpAdkPzpbj w==;
X-CSE-ConnectionGUID: qPkyzAI3T3CGqR3hxtHjLg==
X-CSE-MsgGUID: sGTQai3kSY+QQW2IkQqXzQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="42604207"
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="42604207"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 00:37:45 -0800
X-CSE-ConnectionGUID: WBATlKPjQ36v/kETYPik4A==
X-CSE-MsgGUID: dXR+CqMUSpq0XkraJeYdKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="91360638"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.121])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 00:37:44 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [CI v3 00/15] drm/i915/display: convert display feature helpers
 to struct intel_display
In-Reply-To: <cover.1731321183.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1731321183.git.jani.nikula@intel.com>
Date: Tue, 12 Nov 2024 10:37:41 +0200
Message-ID: <87frnwdezu.fsf@intel.com>
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

On Mon, 11 Nov 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> Another rebase, v3 of [1].

Pushed to drm-intel-next.

BR,
Jani.


-- 
Jani Nikula, Intel
