Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A349A3E440
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2025 19:54:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66DBD10E9CF;
	Thu, 20 Feb 2025 18:53:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ae1+uZyK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65DC010E9CF;
 Thu, 20 Feb 2025 18:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740077639; x=1771613639;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to;
 bh=oQx9QhpZY+AGcsW9qTdURoOLa8KdhLWdTPUOCCaws9Q=;
 b=Ae1+uZyKKf559ojPvCSSh1RomJ420XiuDdce7KrAjHtH+KNW1vgazQ6l
 fkiKftYJ+g0j0BCeWXwQd/sSsjW1c704xTtFt0b7GJVji8RMAEcanaYv7
 o5TIQSHScisJ+qqCuYjp20SRVagmI4FwvhBwRQmX0+bE4tQtdOgvNVbWF
 X4iIORLSmZjHauSmK7Ga9s/mQHDD7CoGYUmtkzJvtKxum3YE/uTbdlt7U
 lQ7a2Scc0qqZgg5OKtjMZElvPT7kgDY+Gi4BU777QsPsv//xIPjIfkliH
 n4Ay0NSHHGuVEFi19OKo4mu2Bw1gTA3P0ZLLb3KfbbqCk5YFWy8hrGTB2 g==;
X-CSE-ConnectionGUID: 4V7fiTIVTV+2i/2iuYSoAg==
X-CSE-MsgGUID: dvRvQ4q7Tmyun6HV4V1pWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="40886230"
X-IronPort-AV: E=Sophos;i="6.13,302,1732608000"; d="scan'208";a="40886230"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 10:53:58 -0800
X-CSE-ConnectionGUID: tOtVFR+ISsOKunc7l+Qh+w==
X-CSE-MsgGUID: XrSqqQHuRQWv0eUVIw5XhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="120366371"
Received: from puneetse-mobl.amr.corp.intel.com (HELO [10.125.110.82])
 ([10.125.110.82])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 10:53:58 -0800
Content-Type: multipart/mixed; boundary="------------0kQnuKsAPFQNhFMA095Sb1SP"
Message-ID: <a68fd15d-8c76-4410-a3ee-3912dc134fe4@intel.com>
Date: Thu, 20 Feb 2025 10:53:59 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] perf/x86/rapl: Fix PP1 event for Intel Meteor/Lunar Lake
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: linux-perf-users@vger.kernel.org, x86@kernel.org,
 linux-kernel@vger.kernel.org, dave.hansen@linux.intel.com,
 Zhang Rui <rui.zhang@intel.com>, Kan Liang <kan.liang@linux.intel.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Ulisses Furquim <ulisses.furquim@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
References: <20250220153857.2593704-6-lucas.demarchi@intel.com>
 <d25ef356-3614-4e69-8cc1-d74dbbd2585f@intel.com>
 <nf6gbtgn7lu4pvewuhrwca2efaxrkdhxazw3oktaixn5q5yg5r@7y74irve5udw>
From: Dave Hansen <dave.hansen@intel.com>
Content-Language: en-US
Autocrypt: addr=dave.hansen@intel.com; keydata=
 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
In-Reply-To: <nf6gbtgn7lu4pvewuhrwca2efaxrkdhxazw3oktaixn5q5yg5r@7y74irve5udw>
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

This is a multi-part message in MIME format.
--------------0kQnuKsAPFQNhFMA095Sb1SP
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2/20/25 10:27, Lucas De Marchi wrote:
> On Thu, Feb 20, 2025 at 08:28:01AM -0800, Dave Hansen wrote:
>> On 2/20/25 07:36, Lucas De Marchi wrote:
>>> On some boots the read of MSR_PP1_ENERGY_STATUS msr returns 0, causing
>>> perf_msr_probe() to make the power/events/energy-gpu event non-visible.
>>> When that happens, the msr always read 0 until the graphics module (i915
>>> for Meteor Lake, xe for Lunar Lake) is loaded. Then it starts returning
>>> something different and re-loading the rapl module "fixes" it.
>>
>> What's the root cause here? Did the kernel do something funky? Or is
>> this a hardware bug?
> 
> From what I can see, the kernel is reading the value and deciding that "if
> it's 0, it doesn't really have that", which is not really true. For
> these platforms sometimes it keeps returning 0 until the gpu is
> later powered on, which only happens when xe / i915 probes.
> 
> But what I don't really understand is why the behavior changes from one
> boot to another. I'm assuming it depends on some funky firmware
> behavior.

Could we root cause this a _bit_ better, please?

Right now, it seems like you noted some weird behavior on one out of the
22 "model_skl" CPUs. You then tested on at least 4 of those CPUs and
found similar behavior. So, you copied, verbatim, the
intel_rapl_skl_msrs and model_skl structures. Then, flipped the
perf_msr->no_check bit for one of the 5 MSRs. There's no note on why the
one bit got flipped or that it's a presumed CPU issue.

To continue the trajectory that this patch sets us on, each CPU model
that comes out needs to be tested. When a new CPU shows up, which one is
it? "model_skl" with the (presumed) CPU bug fixed or "model_rpl"
without? How would someone even know how to test it? It's certainly not
documented in the code.

I don't think that's a sustainable trajectory.

We need to figure out whether the kernel is buggy or the hardware is buggy.

If the hardware is buggy, we need to go ask the hardware guys to publish
an erratum about the bug so there are *bounds* on where the issue shows
up. Basically make the hardware guys document the nasty behavior instead
of having us test every CPU.

Or, if we simply can't trust MSR_PP1_ENERGY_STATUS, let's just do the
attached patch. What's the downside on a non-buggy CPU of doing this?
--------------0kQnuKsAPFQNhFMA095Sb1SP
Content-Type: text/x-patch; charset=UTF-8; name="rapl.patch"
Content-Disposition: attachment; filename="rapl.patch"
Content-Transfer-Encoding: base64

ZGlmZiAtLWdpdCBhL2FyY2gveDg2L2V2ZW50cy9yYXBsLmMgYi9hcmNoL3g4Ni9ldmVudHMv
cmFwbC5jCmluZGV4IGQzYmIzODY1YzFiMWYuLjViZjdjNjg2OTZmMzMgMTAwNjQ0Ci0tLSBh
L2FyY2gveDg2L2V2ZW50cy9yYXBsLmMKKysrIGIvYXJjaC94ODYvZXZlbnRzL3JhcGwuYwpA
QCAtNTgwLDcgKzU4MCw3IEBAIHN0YXRpYyBzdHJ1Y3QgcGVyZl9tc3IgaW50ZWxfcmFwbF9t
c3JzW10gPSB7CiAJW1BFUkZfUkFQTF9QUDBdICA9IHsgTVNSX1BQMF9FTkVSR1lfU1RBVFVT
LCAgICAgICZyYXBsX2V2ZW50c19jb3Jlc19ncm91cCwgdGVzdF9tc3IsIGZhbHNlLCBSQVBM
X01TUl9NQVNLIH0sCiAJW1BFUkZfUkFQTF9QS0ddICA9IHsgTVNSX1BLR19FTkVSR1lfU1RB
VFVTLCAgICAgICZyYXBsX2V2ZW50c19wa2dfZ3JvdXAsICAgdGVzdF9tc3IsIGZhbHNlLCBS
QVBMX01TUl9NQVNLIH0sCiAJW1BFUkZfUkFQTF9SQU1dICA9IHsgTVNSX0RSQU1fRU5FUkdZ
X1NUQVRVUywgICAgICZyYXBsX2V2ZW50c19yYW1fZ3JvdXAsICAgdGVzdF9tc3IsIGZhbHNl
LCBSQVBMX01TUl9NQVNLIH0sCi0JW1BFUkZfUkFQTF9QUDFdICA9IHsgTVNSX1BQMV9FTkVS
R1lfU1RBVFVTLCAgICAgICZyYXBsX2V2ZW50c19ncHVfZ3JvdXAsICAgdGVzdF9tc3IsIGZh
bHNlLCBSQVBMX01TUl9NQVNLIH0sCisJW1BFUkZfUkFQTF9QUDFdICA9IHsgTVNSX1BQMV9F
TkVSR1lfU1RBVFVTLCAgICAgICZyYXBsX2V2ZW50c19ncHVfZ3JvdXAsICAgdGVzdF9tc3Is
IHRydWUsICBSQVBMX01TUl9NQVNLIH0sCiAJW1BFUkZfUkFQTF9QU1lTXSA9IHsgTVNSX1BM
QVRGT1JNX0VORVJHWV9TVEFUVVMsICZyYXBsX2V2ZW50c19wc3lzX2dyb3VwLCAgdGVzdF9t
c3IsIGZhbHNlLCBSQVBMX01TUl9NQVNLIH0sCiB9OwogCg==

--------------0kQnuKsAPFQNhFMA095Sb1SP--
