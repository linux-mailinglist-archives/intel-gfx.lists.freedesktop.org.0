Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE158A4F3A
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 14:39:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7F9111251B;
	Mon, 15 Apr 2024 12:39:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jRi0r9am";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF869112518
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Apr 2024 12:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713184794; x=1744720794;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=deC+wygDK265ak47ovWIFLiAMhnOPjfZOrFQkZWogS4=;
 b=jRi0r9amMK3zS0zg9xemQkLysxw9+U16P6vRyYNAY6OQCuMD8VEJfMBe
 csFqCGY6Ib0CAT3wLzuvHSuUyBL3SKItM49RKL7G+7Zoz/ursgNDPAFt+
 f39Lm8V8aOD9vxYPC4y7dtLyGPBncZBXH5J7CuboeDahACKsk2kQPVfKG
 yMQSWfoWj45V8wg6X+nAwVb4imKSy/eO5jiavBtXeNR92fd9gIaDK5qQK
 IofhKN+WhxeWwIh0GozC10Vo+aGX8GLsVksAQZH3nmZWPN+g5T5LEn3LE
 P3+GaehgdECbBo3xGL/NzAvoU99socI1SQptoUPWKK844TcXtqxR351Wc Q==;
X-CSE-ConnectionGUID: aZwuTwQrQp669sQMZaOOmA==
X-CSE-MsgGUID: BfY2LQLeQX+TP215XfhXWw==
X-IronPort-AV: E=McAfee;i="6600,9927,11044"; a="19283620"
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="19283620"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 05:39:54 -0700
X-CSE-ConnectionGUID: jTeEZy2LSyu9sMTP2tJteg==
X-CSE-MsgGUID: QNc8oodETu6WsxnC9T8Vwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="21812062"
Received: from lcariou-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.61.121])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 05:39:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 6/8] drm/i915/dpio: s/ddi/dpio/ for bxt/glk PHY stuff
In-Reply-To: <20240412175818.29217-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240412175818.29217-1-ville.syrjala@linux.intel.com>
 <20240412175818.29217-7-ville.syrjala@linux.intel.com>
Date: Mon, 15 Apr 2024 15:39:41 +0300
Message-ID: <87h6g23ilu.fsf@intel.com>
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
> Since all of this lives in intel_dpio_phy.c let's rename the
> bxt/glk functions to have bxt_dpio_phy_ namespace.

Seems like intel_dpio_phy.c could be split to vlv_dpio_phy.c and
bxt_dpio_phy.c after this. At a glance, there isn't really anything
shared between VLV/CHV and BXT/GLK code paths. They've just been thrown
in to the same file.


--=20
Jani Nikula, Intel
