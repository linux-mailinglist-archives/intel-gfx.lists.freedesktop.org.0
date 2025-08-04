Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C48C2B1A65C
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 17:46:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA47410E1F4;
	Mon,  4 Aug 2025 15:46:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="naFjh2CE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F297F10E1F4
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Aug 2025 15:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754322415; x=1785858415;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=7NLgNcctoySr9Xq/uQ4FS42hcyA1a298AW+JsRy+OvY=;
 b=naFjh2CE/QMgehFsvzQbVIhOSRCzFDuxa+u86rORdMeFPlAmbPoKzqIh
 oWSCDniVanyTcmoEr645MssbOmD1XLfnJHm8RvFR6ygKaR0wB9qfM5qj0
 NWUGhOtdR1mBIuis+ijYacmIhdGgzEVWPGHTLOeLxXJQK6FnDWqEGu0zM
 PoJth3l/7XyOzsGcQ4oiWN+SSe6Ux43QVGyAiadWXaF/WepTfU83xvFXb
 0345Oed+N/u35eUIzdYfWC128C29xiOmF/kERx7Cj4wsnHV5vJFtpet38
 9T7zHPgDI2js9ZOPi8vufoGlqz2jw3SIGPU/E7V5PEt0wwAwCwxKH1KYy A==;
X-CSE-ConnectionGUID: 8uLlspSISFKzaCKu1eQpGg==
X-CSE-MsgGUID: p4gnOlohTIGyvD4reDOj3g==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="82046810"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="82046810"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 08:46:54 -0700
X-CSE-ConnectionGUID: 4r+k44hAQGe0UuMVXyuajg==
X-CSE-MsgGUID: 9oIXnQWRQXeXG2joqcbBmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="201363515"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.236])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 08:46:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?Q?Ren=C3=A9?= Herman <rene.herman@gmail.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Ville
 =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: Issue or bug concerning DRRS on old i7-4980HQ
In-Reply-To: <b18e7718-95c4-4220-afd3-0bbde0fc21b1@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <3aebffd3-b3b7-4c3c-a7ac-816965d0204d@gmail.com>
 <77f3386d-756b-4cca-b317-1b3c5ad725fb@gmail.com>
 <b2250460639d81b79f15995c9769eac21849766b@intel.com>
 <d9d1a7ff-307a-4964-98bf-209781ffc6fe@gmail.com>
 <9fba1363-5c7d-4b2a-91e1-40bd0e6ac665@intel.com>
 <b18e7718-95c4-4220-afd3-0bbde0fc21b1@gmail.com>
Date: Mon, 04 Aug 2025 18:46:48 +0300
Message-ID: <3e6e7022aa88f8097b6176068cf8bbe28587cb10@intel.com>
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
> On 04-08-2025 10:48, Murthy, Arun R wrote:
>
>> On 02-08-2025 16:06, Ren=C3=A9 Herman wrote:
>
>>> Although I'm not a graphics/display person, seems to me it's more
>>> or less fixed by Arun Murthy (added to the To: list) in the last,
>>> still recent-ish comment on that bug?
>>=20
>> This was a debug patch provided to root case the issue and not a
>> proper fix!
> OK, but it's a real question I have, not meant flippantly or anythng:=20
> what is then the idea of the DRRS CTL when it's enable/activated again=20
> immediately anyway? I'm not at all familiar with this code or even=20
> technology; I assume I'm missing something.

The debugfs is mainly for testing, where the scenarios that re-enable
DRRS are under control.

BR,
Jani.


--=20
Jani Nikula, Intel
