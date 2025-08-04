Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA7BB1A6F9
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 18:03:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B46A10E5AF;
	Mon,  4 Aug 2025 16:03:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nhNQUQKq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE4D010E5AF
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Aug 2025 16:03:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754323393; x=1785859393;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=byP0bnfRQ3jGZAiIYVLiFQyE+cf7GgFhRX0GR9Jcl88=;
 b=nhNQUQKqAsF17yDY9urJLI26II15AWWec2W3jpW17B2F+TZlljRciqcg
 j4XHLqlBxPgTc/Mcoz2dXHR6fNADuiR0+lGjHyon02Muhi2rmkvrPsMfH
 cLt9QecDL657no0o/3BolO7Buu8BVQz5zltHUCjwWyHOCeyA82DxfwDM1
 TthWoLHi0IahLzavUcBLHjNezJn4kXBnaTnj8OqdwJ2qzpSxMx571f9mK
 03PJhSK3IV6eKoEAg3L9OdO/b90vxbD7EDo5kjrwPKxSeFM1A5ApV71AW
 KjmiFuPiD9X2yrKvED7KlViLkuV1bgzIB2Sb45jHLsjT254arp55jaT3m g==;
X-CSE-ConnectionGUID: CjOJGwz1THKosOXv5l+VUA==
X-CSE-MsgGUID: 4MLlZ5T5Qw6axIjnvp1xkg==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="56736394"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="56736394"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 09:03:12 -0700
X-CSE-ConnectionGUID: PZnptbIKRTuHLbH2tWatqA==
X-CSE-MsgGUID: /KFU3i2BTEO0rP4a0KPv8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="169591176"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.236])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 09:03:10 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?Q?Ren=C3=A9?= Herman <rene.herman@gmail.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>, Arun R Murthy <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: Issue or bug concerning DRRS on old i7-4980HQ
In-Reply-To: <6020c152-9de5-40cc-aedf-7024df45d27c@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <3aebffd3-b3b7-4c3c-a7ac-816965d0204d@gmail.com>
 <77f3386d-756b-4cca-b317-1b3c5ad725fb@gmail.com>
 <b2250460639d81b79f15995c9769eac21849766b@intel.com>
 <d9d1a7ff-307a-4964-98bf-209781ffc6fe@gmail.com>
 <f9b10acb19bbe19813b4bebd9ac666b397d9c7c0@intel.com>
 <9436a617-ae53-4702-9ac3-27d9c1267626@gmail.com>
 <57adde32e4fa7fc4c74d8cba39249af1399de609@intel.com>
 <6020c152-9de5-40cc-aedf-7024df45d27c@gmail.com>
Date: Mon, 04 Aug 2025 19:03:06 +0300
Message-ID: <2d1e5f5e70d67361e3415dbbd764bfc0a4ff5a17@intel.com>
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
> On 04-08-2025 17:42, Jani Nikula wrote:
>
>> On Mon, 04 Aug 2025, Ren=C3=A9 Herman <rene.herman@gmail.com> wrote:
>
>> All I'm saying is that any fix must not depend on the user having to use
>> a debugfs or a module parameter. It needs to work out of the box.
>
> Makes sense to me. Now, while repeating me being clueless about this=20
> code and even technology outright, I've wondered if the thing to do=20
> might even just be refusing to enable/use DRRS on this old Haswell-era=20
> hardware
>
> Probably not a theoretically/technically sound/interesting  plan -- but=20
> it sure would solve things for both me/us and the Ubuntu/freedesktop.org=
=20
> bug-reporter, and frankly, I don't think anyone on a system like that in=
=20
> 2025 would know or care in the first place. They just very much mind the=
=20
> flickering...
>
> Maybe stupid; maybe regresses a ton of Haswell-era systems on which it=20
> does work fine. No idea...

There's been a bunch of updates on DRRS in the past year, and I have yet
to see a dmesg with debugs enabled reproducing the issue on a recent
kernel. We need data before doing anything else. The discussion in this
thread is not actionable. For all I know the issue could've been fixed
already.

BR,
Jani.

--=20
Jani Nikula, Intel
