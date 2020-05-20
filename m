Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 031F81DBBE7
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 19:50:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFD446E857;
	Wed, 20 May 2020 17:49:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28F496E857
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 May 2020 17:49:57 +0000 (UTC)
IronPort-SDR: VtgztlDMh78itA2IpVKpTrsbE3SPfoF1i7TgA+BgVRyeSh97nmsZzB6yisa4SgQoBCh8t23Oeq
 uA+rY87FtUlg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 10:49:56 -0700
IronPort-SDR: hWwPVUi/+44aInk9WPlWyDoZeIcCpLxICwcRC7yEzo4g4z6IpQYraZrObCqhgRZJ9L6IPb3iA6
 ly0pHU/otPFQ==
X-IronPort-AV: E=Sophos;i="5.73,414,1583222400"; d="scan'208";a="412103561"
Received: from ckosaraj-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.255.71.254])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 10:49:55 -0700
Date: Wed, 20 May 2020 10:49:54 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Borislav Petkov <bp@alien8.de>
Message-ID: <20200520174954.rtdp27brfpm4v4fv@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20200504225227.464666-1-matthew.d.roper@intel.com>
 <20200504225227.464666-3-matthew.d.roper@intel.com>
 <83F5C7385F545743AD4FB2A62F75B073482C132A@ORSMSX108.amr.corp.intel.com>
 <CAKi4VA+wnY7eY-fLxcfQ1x2nsxg2=z7MRetOF02djtDDo3ENxQ@mail.gmail.com>
 <20200520093025.GD1457@zn.tnic>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520093025.GD1457@zn.tnic>
Subject: Re: [Intel-gfx] [PATCH v2 02/22] x86/gpu: add RKL stolen memory
 support
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 x86@kernel.org, Ingo Molnar <mingo@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@suse.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 20, 2020 at 11:30:25AM +0200, Borislav Petkov wrote:
>On Tue, May 19, 2020 at 04:57:27PM -0700, Lucas De Marchi wrote:
>> The following files are outside of i915 maintenance scope:
>> arch/x86/kernel/early-quirks.c
>>
>> Can we get an ack?
>
>Acked-by: Borislav Petkov <bp@suse.de>
>
>> Going forward, for simple changes like this, do you prefer to still
>> ack on it or should we just apply to our tree?
>
>Well, we are very quickly to give an ACK for trivial stuff like that
>if we get CCed upfront on the patch. It keeps us aware of what's being
>changed outside of tip.

that works, thanks for quick reply and ack.

Lucas De Marchi

>
>Thx.
>
>-- 
>Regards/Gruss,
>    Boris.
>
>https://people.kernel.org/tglx/notes-about-netiquette
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
