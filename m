Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CFF0486D59
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jan 2022 23:45:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AA5510E4DB;
	Thu,  6 Jan 2022 22:45:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9495510E4DB
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jan 2022 22:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641509148; x=1673045148;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=2yKiysNW48zWRq0SqZnWVCLvA8i0IgkDGR/I+OUaIsk=;
 b=T5nhqUvAMH7l/zOKzc2a8INOep/rIeuKTA7ufpEU+pht+p5Rn48px8n3
 f/mc3x0sRCQ4YRpI/kyVh7r8VMXrtFP3XFIAVgntXxe69R0ExBTksMBdh
 JM+V0Sq9qeVC5AIeHOU/FYNAs5nr0FCgyi9UHcF5u3XfY+OxKp2g7/i8d
 4F9Q2W0iCH+kErkMKV5pOrjxTz0u6FHO++pSgzltS+UxdggDjJrkSGsRM
 p/iboHoQoAtxLDISezLLozjO190ia6yH0uh+QBArIKHifqHK8mt+d3Vse
 wOiptFNEbHBshJqyW7bsGyIe2wD63Dc981pnRU8XxfyqkoQIIq/a+Wn+9 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="329098098"
X-IronPort-AV: E=Sophos;i="5.88,268,1635231600"; d="scan'208";a="329098098"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 14:45:47 -0800
X-IronPort-AV: E=Sophos;i="5.88,268,1635231600"; d="scan'208";a="513566624"
Received: from sumedhrr-mobl2.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.102.95])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 14:45:46 -0800
Date: Thu, 6 Jan 2022 14:45:45 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Message-ID: <20220106224545.hfrxehkztm5eht7s@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220106003654.770316-2-lucas.demarchi@intel.com>
 <20220106222325.GA329826@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220106222325.GA329826@bhelgaas>
Subject: Re: [Intel-gfx] [PATCH v2 2/2] x86/quirks: better wrap quirk
 conditions
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
Cc: Dave Hansen <dave.hansen@linux.intel.com>, linux-pci@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, x86@kernel.org,
 Ingo Molnar <mingo@redhat.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Thomas Gleixner <tglx@linutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 06, 2022 at 04:23:25PM -0600, Bjorn Helgaas wrote:
>On Wed, Jan 05, 2022 at 04:36:54PM -0800, Lucas De Marchi wrote:
>> Remove extra parenthesis and wrap lines so it's easier to read what are
>> the conditions being checked. The call to the hook also had an extra
>> indentation: remove here to conform to coding style.
>
>It's nice when your subject lines are consistent.  These look like:
>
>  x86/quirks: Fix logic to apply quirk once
>  x86/quirks: better wrap quirk conditions
>
>The second isn't capitalized like the first.  Obviously if you split

trying to maintain the entropy from

	git log --oneline --no-merges -- arch/x86/kernel/early-quirks.c

:). Jokes aside, yeah, my bad.

>the first patch, you'll have three subject lines, and one will mention
>Alderlake.

See my reply to the first patch - Alderlake is only the reproducer, but
it's broken in other platforms as well, as long as it's paired with an
Intel discrete gpu in the "right" pci slot.

It would be weird to send a patch "Fix xyz in Alderlake" and then
telling people with the same problem in Icelake that they are
missing that fix. So I went with the approach: 1) what is the generic
problem; 2) where it was initially reproduced.

thanks
Lucas De Marchi

>
>Bjorn
