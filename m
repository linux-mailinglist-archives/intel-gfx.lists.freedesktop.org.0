Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F14805531
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Dec 2023 13:51:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F12FE10E51C;
	Tue,  5 Dec 2023 12:51:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59CA810E51C
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Dec 2023 12:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701780662; x=1733316662;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=r3YHsIMffIUb366nVcSWpoGB/SRr8aK/f7x2rfxg6k8=;
 b=KXXAq4RHsbUYz671efqmgZSjXj5jRFJKmQTh6LByQgWtKZCYGiBmw6gJ
 W/ymFlfZINf//+Wmd5vPCudrd1fAtvqPeAUhvYWA7Ed4QLPw/9/o/5I3g
 bhOXAPAR6aoOtdeUY3Nob92k5hTzV0nXttc92lp/609w5RNzAMMynhdIY
 dxf2dQy6r6ewLg6e5gabzcBdNVejpeDhJLPnxZapgQ2/tpfHf9GDFmhlA
 IxkhkhE65TNclg7HYhH4lscuQmMvQFcBPFLbsYjc50uAhMXIYdKs2Khp6
 krglTPcgw6A9RojLCIjvUjYDEPzA/wYhfKxfUIeOjqBGSL1QpDmXa9md2 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="458210415"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="458210415"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 04:51:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="18955879"
Received: from pesir-mobl.ger.corp.intel.com (HELO localhost) ([10.252.61.103])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 04:51:01 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
In-Reply-To: <CY5PR11MB63449F65F906172F1785515FF485A@CY5PR11MB6344.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231201134141.1569265-1-jani.nikula@intel.com>
 <ZWnwofolLechg_Dg@intel.com> <87wmtu2str.fsf@intel.com>
 <CY5PR11MB634479123D55A69917190B40F486A@CY5PR11MB6344.namprd11.prod.outlook.com>
 <87a5qp3oe1.fsf@intel.com>
 <CY5PR11MB6344014FD6FC06C85356DE48F486A@CY5PR11MB6344.namprd11.prod.outlook.com>
 <CY5PR11MB63449F65F906172F1785515FF485A@CY5PR11MB6344.namprd11.prod.outlook.com>
Date: Tue, 05 Dec 2023 14:50:57 +0200
Message-ID: <874jgw3j9q.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/edp: don't write to DP_LINK_BW_SET
 when using rate select
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 05 Dec 2023, "Shankar, Uma" <uma.shankar@intel.com> wrote:
>> Yeah, writing 0 is done with an intention to disable it but that=E2=80=
=99s not the way to
>> have this option disabled. Infact there is no reason to write to it for =
DP1.4+ if sink
>> is compliant.
>
> The change looks ok and aligns with spec, its
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>

Ville, any further objections or concerns? Okay to merge?

BR,
Jani.


--=20
Jani Nikula, Intel
