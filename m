Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F37978A4F20
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 14:35:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9085911250F;
	Mon, 15 Apr 2024 12:35:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="flam672D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F381311250F
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Apr 2024 12:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713184548; x=1744720548;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=upG6H1Hjsyed/yB3Qxh4h6prFEkcAr+AKNMe9gOTd4I=;
 b=flam672DszOSps4hVAE8GyYmEbWRWTSis8TS4PlvVMRggfx7Gsg0+2H/
 W3jeWZUtG9kwuIsruZfb532HNqJDKcpGbhzYh4tcqpNHJDk1H9pEmRL7o
 MGQTEJoIX2A86/2JMJQ71fhbcUQ9V+Q5zkVwLE4PK4ZpdLaTc2iBGkcKi
 R1refA77hmfUAxBHUXmd8pe2rWM63NopxYhpD2YMQUu4fxW3ZV4evHtAR
 tsn16tsYA2UvhimU31WHcDcRqshe6dfgbKWj4x28QXTvh/zR8DmMhe6Zw
 tmROH2yRzfPIVuK8bQFYvYyGVgxqFuKey0/OsDYK1s2G3/FL5oQGhaiGu g==;
X-CSE-ConnectionGUID: WsQmBr1MQzqYx50ZdiDMyA==
X-CSE-MsgGUID: yN6CyO0gRj68KwPvVamp1A==
X-IronPort-AV: E=McAfee;i="6600,9927,11044"; a="19173692"
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="19173692"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 05:35:47 -0700
X-CSE-ConnectionGUID: XKW/59uaRk2oS5BlvOjtjA==
X-CSE-MsgGUID: khv/f1JVRg2EI7Ta3XLljQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="21992163"
Received: from lcariou-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.61.121])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 05:35:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/8] drm/i915/dpio: Add per-lane PHY TX register
 definitons for bxt/glk
In-Reply-To: <20240412175818.29217-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240412175818.29217-1-ville.syrjala@linux.intel.com>
 <20240412175818.29217-3-ville.syrjala@linux.intel.com>
Date: Mon, 15 Apr 2024 15:35:35 +0300
Message-ID: <87mspu3iso.fsf@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 12 Apr 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Add consistent definitions for the per-lane PHY TX registers
> on bxt/glk. The current situation is a slight mess with some
> registers having a LN0 define, while others have a parametrized
> per-lane definition.

*definitions in the subject.


--=20
Jani Nikula, Intel
