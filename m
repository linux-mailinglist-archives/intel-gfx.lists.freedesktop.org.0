Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6062C48BD
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 20:52:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 321956EA64;
	Wed, 25 Nov 2020 19:52:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1E8A6EA64
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 19:52:16 +0000 (UTC)
IronPort-SDR: CiEHJpuXkI1BYFwJdj6nZsMIDn21yXOI6MQ/YVQqIWHfAg521ZNv/GfX5oK+TNBdNIKuztlxR+
 x6/LkmS0eEDA==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="159960911"
X-IronPort-AV: E=Sophos;i="5.78,370,1599548400"; d="scan'208";a="159960911"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 11:52:16 -0800
IronPort-SDR: N0DkHN4zui6dGEYrqaXPkWtwNTledV0RljyDlzeSsk431+ytJBPeFNYZyLrgFqHGtzenCKwHYH
 /ky6+8jrSC2g==
X-IronPort-AV: E=Sophos;i="5.78,370,1599548400"; d="scan'208";a="333118098"
Received: from sowmyave-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.29.185])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 11:52:15 -0800
Date: Wed, 25 Nov 2020 11:52:15 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20201125195215.meyg57hozkhrnjrg@ldmartin-desk1>
References: <20201125003108.156110-1-aditya.swarup@intel.com>
 <87360xmzgr.fsf@intel.com>
 <160631840326.26272.537878967385128182@build.alporthouse.com>
 <61248f45-d8f1-edec-656a-6eaddefb3789@intel.com>
 <20201125191811.me6ha4kwhchohrez@ldmartin-desk1>
 <7ae29344-1312-929e-2ae4-decb54435010@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7ae29344-1312-929e-2ae4-decb54435010@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Fix REVID macros for TGL to
 fetch correct stepping
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 25, 2020 at 11:30:44AM -0800, Aditya Swarup wrote:
>> As I said in the other reply, sizeof does actually work here:
>
>The question is not about sizeof() not working but rather the usage of ARR=
AY_SIZE()
>macro in i915_drv.h with just extern declaration without size specified.

ARRAY_SIZE() is just sizeof(arr)/sizeof(*arr) with additional
shenanigans to check for misuse: when used with a pointer rather than an
array:

	int b[0];
	int *a =3D b;

	or

	void foo(int a[10])

In these cases 	ARRAY_SIZE(a) will not do what you expect and the macro
warns about it, because sizeof(a) will be sizeof(int *) instead of the
array size.


>
>>
>> =A0=A0=A0=A0$ cat /tmp/a.c
>> =A0=A0=A0=A0#include <stdio.h>
>>
>> =A0=A0=A0=A0#include "b.h"
>>
>> =A0=A0=A0=A0int main(int argc, const char *argv[])
>> =A0=A0=A0=A0{
>> =A0=A0=A0=A0=A0=A0=A0 printf("%zu", sizeof(tgl_uy_revids));
>> =A0=A0=A0=A0=A0=A0=A0 return 0;
>> =A0=A0=A0=A0}
>>
>> =A0=A0=A0=A0$ cat /tmp/b.h
>> =A0=A0=A0=A0#pragma once
>>
>> =A0=A0=A0=A0struct i915_rev_steppings { int a; };
>> =A0=A0=A0=A0extern const struct i915_rev_steppings tgl_uy_revids[4];
>
>You are specifying the size in the extern declaration which will make the =
ARRAY_SIZE()
>macro work if used in the header else it will complain.

as it should

Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
