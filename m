Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BBA2A32C55
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 17:49:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D56810E941;
	Wed, 12 Feb 2025 16:49:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RQ1el+tO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0522B10E95A;
 Wed, 12 Feb 2025 16:49:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739378983; x=1770914983;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=/1OvFVlvygrUxaW05G6hxVR3ddE9NBRZgMMQDlN4K10=;
 b=RQ1el+tOlMVb62KLSd/x/apjpbAq8wKdpKTKzM+/aIu3Cs8Kt5wTaUMV
 2hJGaeCe5KyZ57buVqckx2md5BSD40wtjo7I9oMlLPWDei8qDqQ3auAcc
 YmzHtG1F3MCQ0KIWoT04ZXoKp+16ovcJHSwh6Kj0FhymppsS72wzj//KY
 c7vtH4KBIk93W6h8/lNClmOuRpGSsilbCT+rpa5uhNaqbWJ5zTSSXyaqp
 nRnYnrLps3zWmHhbg1g34QA89+usEktIQXIqLjQZty3Th21IkgDmp3aVW
 r7hCOmXpe2m03FEBnxCp/9Gq5czcc2RGqo00pCt/yhuK4+79hGSYSPUHd Q==;
X-CSE-ConnectionGUID: 0PlZFs3USVKSqZuKBqdWJw==
X-CSE-MsgGUID: yTbZH6ZjRYuZ2N/SGFb2ZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="42885881"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="42885881"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:49:42 -0800
X-CSE-ConnectionGUID: uOo6+8I6QNWNcJ0kC2Xkiw==
X-CSE-MsgGUID: 2kSEOESiQ3KkqA8EU4fiMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118048079"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.167])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:49:40 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 imre.deak@intel.com
Subject: Re: [PATCH 3/3] drm/i915: split out display register macros to a
 separate file
In-Reply-To: <Z6y6cd1KeIR1_1lF@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1738935286.git.jani.nikula@intel.com>
 <f6ceecdab92d47e92700b19b278028f0773d71e5.1738935286.git.jani.nikula@intel.com>
 <Z6y0C3mX8XyIiZUa@intel.com> <Z6y6cd1KeIR1_1lF@intel.com>
Date: Wed, 12 Feb 2025 18:49:37 +0200
Message-ID: <87ed03yuou.fsf@intel.com>
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

On Wed, 12 Feb 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Feb 12, 2025 at 04:45:31PM +0200, Ville Syrj=C3=A4l=C3=A4 wrote:
>> On Fri, Feb 07, 2025 at 03:35:22PM +0200, Jani Nikula wrote:
>> >  #define _FPA0	0x6040
>> >  #define _FPA1	0x6044
>> >  #define _FPB0	0x6048
>
> These at least are only used by the display code, so the
> script seems to have some issues picking up everything.
>
>> ...
>> >  #define _PIPE_MISC2_A					0x7002C
>> >  #define _PIPE_MISC2_B					0x7102C
>> >  #define PIPE_MISC2(pipe)		_MMIO_PIPE(pipe, _PIPE_MISC2_A, _PIPE_MISC2=
_B)
>
> Those aren't used currently, so that explains why they
> got left behind.
>
>> ...
>> >  #define _PIPEA_FLIPCOUNT_G4X	0x70044
>> >  #define PIPE_FLIPCOUNT_G4X(dev_priv, pipe) _MMIO_PIPE2(dev_priv, pipe=
, _PIPEA_FLIPCOUNT_G4X)
>> ...
>> >  #define _PFA_VSCALE		0x68084
>> >  #define _PFB_VSCALE		0x68884
>> >  #define PF_VSCALE(pipe)		_MMIO_PIPE(pipe, _PFA_VSCALE, _PFB_VSCALE)
>> ...
>> >  #define HSW_PWR_WELL_CTL5			_MMIO(0x45410)
>> >  #define   HSW_PWR_WELL_ENABLE_SINGLE_STEP	(1 << 31)
>
> And these three seem to be used from gvt only atm.

Yeah, *sigh*.

I'm just weighing how much more effort I should put into a script that's
needed just once... :p

BR,
Jani.



--=20
Jani Nikula, Intel
