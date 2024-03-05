Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB8A87211D
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 15:07:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6206B10FEF1;
	Tue,  5 Mar 2024 14:07:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P5UCmRFy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D48310FEF1
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 14:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709647672; x=1741183672;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=EI3CFKwThRGxEndL2214P+nabgHXBn1TI5divFt4vvI=;
 b=P5UCmRFyGOjyT0cXZdxfCn05894bmolmg2kpRPhcNCcxSvwmt0a05lfc
 NPNuT4ShAZ1BaQwaRQgK1ZK/fTYIaShLqad97V6mq5ycowrTDuYycG/O6
 VuyjgYaLJIgcEIlauJdIYwIuS1iiIibGCPu/0nx24UrN+8ksc2JibSP63
 TDCyt9gGEJ/LZTkWX/5mNkcqi8qXU9H6zT4HmR+MdJZKL7zX1IvlNbSMw
 0z2ez6HAidmfSDz8EtIceYYSBo3kkQzX8CXayHfqtj13PW+OjkGaV/6J4
 QfEzOgy9bs+TsHRDwk/pC0pGzToEXDRkpu0BnntF+oK2qFdg0b5q6WkaT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="21724817"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="21724817"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 06:07:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="40276983"
Received: from omakhlou-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.252.51.143])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 06:07:48 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/8] drm/i915: Rename the crtc/crtc_states in the top
 level DDI hooks/etc
In-Reply-To: <Zebcuecv8QHwm4AE@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240301143600.1334-1-ville.syrjala@linux.intel.com>
 <20240301143600.1334-2-ville.syrjala@linux.intel.com>
 <ZebazalH8c1j1GGH@intel.com> <Zebcuecv8QHwm4AE@intel.com>
Date: Tue, 05 Mar 2024 16:07:45 +0200
Message-ID: <87sf1422mm.fsf@intel.com>
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

On Tue, 05 Mar 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Mar 05, 2024 at 10:41:49AM +0200, Lisovskiy, Stanislav wrote:
>> I also wonder whether should we really emphasize things like "master"/"s=
lave"
>> in function names. I thought that one idea in our refactoring was to uni=
fy
>> joined pipes handling so that there are no(or at least almost no) explic=
it code
>> paths/function names for masters/slaves.
>
> There are no master vs. slave functions. The split is going to be
> transcoder/port vs. pipe.

Besides, for modern platforms the spec has already been changed to use
primary/secondary terminology. When renaming or refactoring stuff,
please switch to them instead of sticking with master/slave.

BR,
Jani.

--=20
Jani Nikula, Intel
