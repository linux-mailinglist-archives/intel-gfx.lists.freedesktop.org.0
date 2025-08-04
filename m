Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C10B6B1A639
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 17:43:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA96910E5A4;
	Mon,  4 Aug 2025 15:42:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fYNtQ7KF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3508710E5A4
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Aug 2025 15:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754322177; x=1785858177;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=JNxp3pi+uI13c5DAoeGf0TJzRlYSLGrLul3Wnr2aO+E=;
 b=fYNtQ7KFSZoev9g1nL3jYEetPg7zD8VUNu+LcsizZi+s0f1qtyjQwgRp
 VkZKULpf4hpHAKSZEEt3dJj5Rkmu/tCfXCR6R1k10laL5o9u4vMKN+N9g
 g+LvLH3rxlkLGiXp6irjn/EPsLsv6k8HDEYMn1cbW0Ctfex9g9D9wZjXz
 x07u9Ofj3umTmBoT+CwtSpC6TSVJsi49PLyZFv3dD9IwMQO+wyRLnvhMr
 II7iCLz/yPaY3pNldAbwu3QYaXk500Fpsai3P82hN2Axh4vUQLvg60Vac
 EBb6+MltYWiYgNpzVmpd1mDe2bVQebzMGvSqH1LTk+BZPFAAmCDlVKqXR A==;
X-CSE-ConnectionGUID: HrXqeWbYREue1UPr9WaRwg==
X-CSE-MsgGUID: BAWieZH9T3y+mzyH8h+SmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="56461757"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="56461757"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 08:42:56 -0700
X-CSE-ConnectionGUID: p69p2tiBQ/mKo9jIJv5nEQ==
X-CSE-MsgGUID: 8TpDTOgDTxWoppjm//3CUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="165002738"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.236])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 08:42:53 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?Q?Ren=C3=A9?= Herman <rene.herman@gmail.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>, Arun R Murthy <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: Issue or bug concerning DRRS on old i7-4980HQ
In-Reply-To: <9436a617-ae53-4702-9ac3-27d9c1267626@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <3aebffd3-b3b7-4c3c-a7ac-816965d0204d@gmail.com>
 <77f3386d-756b-4cca-b317-1b3c5ad725fb@gmail.com>
 <b2250460639d81b79f15995c9769eac21849766b@intel.com>
 <d9d1a7ff-307a-4964-98bf-209781ffc6fe@gmail.com>
 <f9b10acb19bbe19813b4bebd9ac666b397d9c7c0@intel.com>
 <9436a617-ae53-4702-9ac3-27d9c1267626@gmail.com>
Date: Mon, 04 Aug 2025 18:42:50 +0300
Message-ID: <57adde32e4fa7fc4c74d8cba39249af1399de609@intel.com>
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

On Mon, 04 Aug 2025, Ren=C3=A9 Herman <rene.herman@gmail.com> wrote:
> On 04-08-2025 10:21, Jani Nikula wrote:
>
>> On Sat, 02 Aug 2025, Ren=C3=A9 Herman <rene.herman@gmail.com> wrote:
>
>>> I.e., could while working with the person with the hardware not figure
>>> out what the point of that i915_drrs_ctl would be if the system
>>> immediately enabled it again anyway, so Arun's approach seems to make
>>> sense to me.
>>=20
>> Hacking debugfs is not a fix, it's a hack.
>
> So I take it that's a no then on looking at/fixing the DRRS bug?

All I'm saying is that any fix must not depend on the user having to use
a debugfs or a module parameter. It needs to work out of the box.

BR,
Jani.


> Please=20
> don't get me wrong; as said to Arun as well, I have no experience with=20
> either this code or really anything concerning this technology even: I=20
> am assuming I'm missing something when I couldn't figure out why the=20
> DRRS disable CTL existed when the system activated it again immediately=20
> anyway.
>
> I am/was trying that help that user, and maybe you guys as to having=20
> this issue on the map; that already reported bug is 4 year's old, so it=20
> didn't seem to otherwise have a lot of traction.
>
> Kind regards,
> Rene

--=20
Jani Nikula, Intel
