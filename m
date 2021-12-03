Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC711467B1B
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Dec 2021 17:15:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45E3D72C3F;
	Fri,  3 Dec 2021 16:15:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE3587346A
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Dec 2021 16:15:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10186"; a="217689712"
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="217689712"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 08:11:06 -0800
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="460917569"
Received: from chobbs-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.2.56])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 08:11:04 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <YaoD8J3CxqdPQPrj@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
 <20211124113652.22090-21-ville.syrjala@linux.intel.com>
 <YaoD8J3CxqdPQPrj@intel.com>
Date: Fri, 03 Dec 2021 18:11:01 +0200
Message-ID: <87a6hhhdnu.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 20/20] drm/i915/fbc: Pimp the FBC debugfs
 output
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

On Fri, 03 Dec 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Nov 24, 2021 at 01:36:52PM +0200, Ville Syrjala wrote:
>> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>=20
>> Now that each plane tracks its own no_fbc_reason we can print that
>> out in debugfs, and we can also show which plane is currently
>> selected for FBC duty.
>>=20
>> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> This one is still missing review.
>
> I've pushed everything else, thans for the reviews so far.

Seems fine.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>




--=20
Jani Nikula, Intel Open Source Graphics Center
