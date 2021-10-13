Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9C742BDB4
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 12:47:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 396CC88549;
	Wed, 13 Oct 2021 10:47:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8035E6E86B
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 10:47:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="207514059"
X-IronPort-AV: E=Sophos;i="5.85,370,1624345200"; d="scan'208";a="207514059"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 03:47:14 -0700
X-IronPort-AV: E=Sophos;i="5.85,370,1624345200"; d="scan'208";a="491406485"
Received: from araghuw-mobl.gar.corp.intel.com (HELO localhost)
 ([10.251.208.234])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 03:47:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <YWa3QeJ3s0+9+fbH@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1634119597.git.jani.nikula@intel.com>
 <YWa3QeJ3s0+9+fbH@intel.com>
Date: Wed, 13 Oct 2021 13:47:09 +0300
Message-ID: <87sfx5xkuq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 0/1] drm/i915: vlv sideband
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

On Wed, 13 Oct 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Oct 13, 2021 at 01:11:58PM +0300, Jani Nikula wrote:
>> Three main ideas here:
>>=20
>> - vlv sideband only has the name "sideband" in common with the rest of
>>   intel_sideband.[ch]
>
> I wouldn't put it like that. There are two actual sideband=20
> implementtions in that file:
> - vlv/chv iosf sideband (vlv_sideband)
> - lpt/wpt iosf sideband (intel_sbi)
>
> And the third thing in that file is the snb+ pcode mailbox stuff,
> which has nothing to do with sideband.

Fair enough... but no opposition to the splitting out of vlv/chv iosf
sideband? vlv_sideband.[ch] like here? I'm fine with renaming too.

I can follow up with lpt/wpt iosf split out (intel_sbi.[ch]?) and snb+
pcode (intel_pcode.[ch]?).

I think we've just put all of them together way back when this was all
probably bundled in i915_drv.c or something...


BR,
Jani.



--=20
Jani Nikula, Intel Open Source Graphics Center
