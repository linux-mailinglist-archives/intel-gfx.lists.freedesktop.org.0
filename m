Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B1F47CDF0
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Dec 2021 09:19:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 947D31125ED;
	Wed, 22 Dec 2021 08:19:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43F1F1125ED
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Dec 2021 08:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640161146; x=1671697146;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=AxM0iuqtsU2/hVPFyjlPpeyZ5dEWkBuwE2Q0fJR/1i0=;
 b=Y/f4RGYYpjnB5xQEOqD1jJgFSSG0x0sIIC5mJBTGGQ9y0tNdEJf1QJpB
 WZe8ch8uofWJY14/7IqVfFNVm2Yz7oEhpnJYoOgV5cub6GVaP++EnUv4v
 wwyCka6z3t9FrOvpCYB4YL+hZxdomTaaMgfGlB7X3K7ndseP8pDtBA8xp
 XfZNTn87nJAdtwOM8P+jfI5miw/hquI+wsi9SSYuBXxLd3IHVHb7tCJ7o
 xAdQTgxcZJ0L40o0I3wmytCa52FWWmsdW9lEL3MLyaonWpU50w/g0AYnE
 DpFbj1xH/ymgmo90HbLHR+cNuXHq68EBUAp/JKm0LDxVSXTl70GlxH7eM g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="220585486"
X-IronPort-AV: E=Sophos;i="5.88,225,1635231600"; d="scan'208";a="220585486"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 00:19:05 -0800
X-IronPort-AV: E=Sophos;i="5.88,225,1635231600"; d="scan'208";a="468092941"
Received: from aravind2-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.9.217])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 00:19:01 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Borislav Petkov <bp@alien8.de>, Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <YcBqBgnRVgyzUqUE@zn.tnic>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211210051802.4063958-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <87r1ab1huq.fsf@intel.com>
 <20211219084921.lgd47srpzepspdpv@ldmartin-desk2>
 <YcBqBgnRVgyzUqUE@zn.tnic>
Date: Wed, 22 Dec 2021 10:18:58 +0200
Message-ID: <87r1a5yrv1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH V3] drm/i915/adl-n: Enable ADL-N platform
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
Cc: x86@kernel.org, linux-pci@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Dave Hansen <dave.hansen@linux.intel.com>, Ingo Molnar <mingo@redhat.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Thomas Gleixner <tglx@linutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 20 Dec 2021, Borislav Petkov <bp@alien8.de> wrote:
> On Sun, Dec 19, 2021 at 12:49:21AM -0800, Lucas De Marchi wrote:
>> > I note not all such changes in git log have your acks recorded, though
>> > most do. Do you want us to be more careful about Cc'ing you for acks on
>> > PCI ID changes every time going forward?
>> 
>> That's what Borislav asked in
>> https://lore.kernel.org/all/20200520093025.GD1457@zn.tnic/
>
> Right, I guess in the interest of not holding you guys up, if the patch
> is only a trivial oneliner like below adding a GPU generation to the
> list of quirks, you can only Cc x86@kernel.org so that we're aware and
> proceed with it further without our ACK.
>
> More involved stuff would need normal review, ofc.

Thanks, seems fair.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
