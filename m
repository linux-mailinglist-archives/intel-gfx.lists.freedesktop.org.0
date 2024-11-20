Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E2D9D3B1D
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 13:51:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE8A710E758;
	Wed, 20 Nov 2024 12:51:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nrhkBFcq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 596DB10E758;
 Wed, 20 Nov 2024 12:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732107112; x=1763643112;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=i2mkcmHRILzBcSkOPiXo6p93OVDTkA3cetr+GAvtIvI=;
 b=nrhkBFcqWLqdIrn6p7GwFU6+hyEh+MJElxYyr3RJkBtWd13sentDIs9I
 XtiToChgtyZy81Wzey/XkqH+//Z+HsuRTELY0cu8DukReaXA3DkaNyB7d
 5nQxAkKQManP8Q97lZ0o1ISwf3/UWDxqZQ0jdsO3XbLYzOQCHP/m9hA5h
 b4l0S2llWzaca+ssfjqKFS043iXYmbf9aqvvjFMUVvjbG6o7RodLS3QOP
 yKmHwjLineT8cvkXjFBJXSjlYXI/ldWaopgC8AppxbzvSYEgJugyWGhZH
 0FvX3vlehY2ZpIwa6p2tUVWO662yISRLj4Zf58pImmbLu+btvmfF4h0kC g==;
X-CSE-ConnectionGUID: vG/JiioSTs6VDiWNPC3+Xw==
X-CSE-MsgGUID: pVczd/acS7++Ea6jRTsgZg==
X-IronPort-AV: E=McAfee;i="6700,10204,11262"; a="32411999"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="32411999"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:51:52 -0800
X-CSE-ConnectionGUID: Bh7I1LebRGKFeuO9zgmlxg==
X-CSE-MsgGUID: OJbfanshSIGgjQHP88ReGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="94720719"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.54])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:51:50 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 imre.deak@intel.com
Subject: Re: [PATCH 03/12] drm/i915/dp: Separate out helper for compute
 fec_enable
In-Reply-To: <cfaf69de-4fa3-479d-bdba-252137cc98a7@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241120103802.134295-1-ankit.k.nautiyal@intel.com>
 <20241120103802.134295-4-ankit.k.nautiyal@intel.com>
 <871pz62kcn.fsf@intel.com>
 <cfaf69de-4fa3-479d-bdba-252137cc98a7@intel.com>
Date: Wed, 20 Nov 2024 14:51:47 +0200
Message-ID: <87r0761318.fsf@intel.com>
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

On Wed, 20 Nov 2024, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
>>> +static void intel_dp_compute_fec_config(struct intel_dp *intel_dp,
>>> +					struct intel_crtc_state *pipe_config)

PS. For new stuff please go with crtc_state instead of pipe_config.


-- 
Jani Nikula, Intel
