Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30130BABE91
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Sep 2025 09:53:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4B9E10E51C;
	Tue, 30 Sep 2025 07:53:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q2ylDCql";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4062110E51C
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Sep 2025 07:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759218815; x=1790754815;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=wjfbLBEqJTcxeRLLAX4KqkZt3XLU86hL6lbgPCWRCgA=;
 b=Q2ylDCqlEuyizfgtXWBng/btkE8pHwEBbUA6tVl5oDXIFp6yBtJ4qIpn
 EMcq3II4+o8Hr5hBg/DKyQ9fYByJFWt1MNA7RWtJKDnHqtmfC7wmEpZ1H
 lWtY1l008x8MfJ2t/52+4C/Z8audutuHMtRkcgEbCOiv2ZbEySfIN7tnU
 dflSHSWmTVLZuRiC4F9h2YP3RPjCfgxW55mGe5fQtgL6oHo0KJajYdGDU
 Vn2DrDd2xYXEzaFGc9bcmVJXNGxpAqNhIgZIK2T+AHbuLI40Rxw44uec6
 Pl8dtNdrZG+CWkBFoHh9YqZGLk9KpK2OyNU+i/ps9HAGc8sBtC8yXp+tS A==;
X-CSE-ConnectionGUID: cIQIq+hyQEuuvliEkC60rw==
X-CSE-MsgGUID: 54Py8BjUT5qy/17FcKBPNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11568"; a="86911856"
X-IronPort-AV: E=Sophos;i="6.18,303,1751266800"; d="scan'208";a="86911856"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2025 00:53:31 -0700
X-CSE-ConnectionGUID: 3oimaHenRDW3Ma/TIhkI9g==
X-CSE-MsgGUID: wUA41nkKQLSPmrHvFtv5Eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,303,1751266800"; d="scan'208";a="215603468"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.152])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2025 00:53:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/irq: duplicate HAS_FBC() for irq error mask usage
In-Reply-To: <aNqNZwfs7SRRYaGd@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250929133418.2033006-1-jani.nikula@intel.com>
 <aNqNZwfs7SRRYaGd@intel.com>
Date: Tue, 30 Sep 2025 10:53:26 +0300
Message-ID: <1b42eb2946f189fd6a04824c88a92f3c6a95ccb5@intel.com>
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

On Mon, 29 Sep 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> Looks correct.
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks for the review, pushed to din.

BR,
Jani.


--=20
Jani Nikula, Intel
